uint64_t sub_1B00F9A6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00E8C18;

  return sub_1B00F96E0(a1, v5);
}

uint64_t sub_1B00F9B24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00DCFAC;

  return sub_1B00F96E0(a1, v5);
}

uint64_t sub_1B00F9BDC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;

    v2 = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v37 = v8;
    v38 = v1;
    while (v7)
    {
      v11 = v3;
LABEL_12:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v1 + 56) + 8 * v12);
      v17 = *v13 == 0x656C7469743ALL && v15 == 0xE600000000000000;
      if (v17 || (v18 = *v13, v19 = v13[1], (sub_1B014D25C() & 1) != 0))
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v34 = v14 == 0x616572613ALL && v15 == 0xE500000000000000;
        if (v34 || (sub_1B014D25C() & 1) != 0)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          v35 = v14 == 0x706972637365643ALL && v15 == 0xEC0000006E6F6974;
          if (v35 || (sub_1B014D25C() & 1) != 0)
          {
            v14 = 0;
            v15 = 2;
          }

          else if (v14 == 0x657275746165663ALL && v15 == 0xEF6E69616D6F645FLL || (sub_1B014D25C() & 1) != 0)
          {
            v14 = 0;
            v15 = 3;
          }

          else if (v14 == 0x6165665F6275733ALL && v15 == 0xEC00000065727574 || (sub_1B014D25C() & 1) != 0)
          {
            v14 = 0;
            v15 = 4;
          }

          else if (v14 == 0xD000000000000012 && 0x80000001B015C080 == v15 || (sub_1B014D25C() & 1) != 0)
          {
            v14 = 0;
            v15 = 5;
          }

          else
          {
          }
        }
      }

      v20 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1B013E148(v14, v15);
      v24 = v2[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        result = sub_1B014D28C();
        __break(1u);
        return result;
      }

      v27 = v22;
      if (v2[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B013F46C();
        }
      }

      else
      {
        sub_1B013EAE4(v26, isUniquelyReferenced_nonNull_native);
        v28 = sub_1B013E148(v14, v15);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_59;
        }

        v23 = v28;
      }

      v7 &= v7 - 1;
      if (v27)
      {
        sub_1B00D2010(v14, v15);
        v9 = v2[7];
        v10 = *(v9 + 8 * v23);
        *(v9 + 8 * v23) = v20;
      }

      else
      {
        v2[(v23 >> 6) + 8] |= 1 << v23;
        v30 = (v2[6] + 16 * v23);
        *v30 = v14;
        v30[1] = v15;
        *(v2[7] + 8 * v23) = v20;
        v31 = v2[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_58;
        }

        v2[2] = v33;
      }

      v3 = v11;
      v8 = v37;
      v1 = v38;
    }

    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v11);
      ++v3;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    if (v2[2])
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_1B00FA01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B00FA08C()
{
  result = qword_1EB6C4108;
  if (!qword_1EB6C4108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6C4108);
  }

  return result;
}

uint64_t sub_1B00FA0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B00FA138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B00FA1A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B00FA208()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EDAE70E8);
  __swift_project_value_buffer(v0, qword_1EDAE70E8);
  return sub_1B014CB4C();
}

id sub_1B00FA288()
{
  result = [objc_allocWithZone(type metadata accessor for CFBDaemonConnection()) init];
  qword_1EDAE7108 = result;
  return result;
}

id static CFBDaemonConnection.shared.getter()
{
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAE7108;

  return v1;
}

id sub_1B00FA360()
{
  v1 = OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService19CFBDaemonConnection____lazy_storage___xpcConnection);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_1B00FA3D0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B00FA3D0(uint64_t a1)
{
  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B014CB5C();
  __swift_project_value_buffer(v2, qword_1EDAE70E8);
  v3 = sub_1B014CB3C();
  v4 = sub_1B014CF6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = sub_1B00CF694();
    v9 = sub_1B00E6C2C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B00C4000, v3, v4, "%s: Setting up connection to centralized feedback daemon", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B271F750](v6, -1, -1);
    MEMORY[0x1B271F750](v5, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v11 = sub_1B014CC0C();
  v12 = [v10 initWithMachServiceName:v11 options:0];

  v13 = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemonInterface()) init];
  [v12 setRemoteObjectInterface_];

  [v12 setExportedObject_];
  v21 = sub_1B00FA6F4;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor_8_0;
  v14 = _Block_copy(&v17);
  [v12 setInterruptionHandler_];
  _Block_release(v14);
  v21 = sub_1B00FA850;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor_11;
  v15 = _Block_copy(&v17);
  [v12 setInvalidationHandler_];
  _Block_release(v15);
  [v12 resume];
  return v12;
}

id CentralizedFeedbackDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00FA6F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C7B0;
  sub_1B014D2EC();

  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE70E8);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00FA850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C770;
  sub_1B014D2EC();

  if (qword_1EDAE70E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE70E8);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00FA9AC(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for FeedbackFeatureFlags;
  v17 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v4 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v4)
  {
    v5 = sub_1B00FA360();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v17 = sub_1B00FAE44;
    v18 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00FA1A0;
    v16 = &block_descriptor_5;
    v7 = _Block_copy(aBlock);

    v8 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_1B014CFFC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4110, &qword_1B0151268);
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_1EDAE70E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1B014CB5C();
    __swift_project_value_buffer(v10, qword_1EDAE70E8);
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Centralized Feedback feature disabled", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    return 0;
  }
}

void sub_1B00FABEC(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B014F1E0;
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](0xD000000000000032, 0x80000001B015CEF0);
  swift_getErrorValue();
  v4 = sub_1B014D29C();
  MEMORY[0x1B271E7F0](v4);

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1B014D2EC();

  v5 = sub_1B014C9BC();
  a2();
}

id CentralizedFeedbackDaemonInterface.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CentralizedFeedbackDaemonInterface();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setProtocol_];
  return v1;
}

id sub_1B00FAE0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:sceneID:bundleID:associateWithAppleAccount:showFeedbackForm:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 16) = v7;
  *(v8 + 42) = a7;
  *(v8 + 41) = a6;
  *(v8 + 43) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00FAF38, 0, 0);
}

uint64_t sub_1B00FAF38()
{
  v12 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000053, 0x80000001B015CE00, &v11);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = *(v0 + 43);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B00FB0FC;
  v7 = *(v0 + 16);
  v8 = *(v0 + 42);
  v9 = *(v0 + 41);

  return sub_1B00FBB5C((v0 + 40), v8, v9);
}

uint64_t sub_1B00FB0FC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FB230, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

unint64_t FBKSEvaluation.Subject.Failure.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v1, v2);
  return 0xD00000000000001ELL;
}

unint64_t sub_1B00FB2C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v1, v2);
  return 0xD00000000000001ELL;
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.init(action:subject:showFeedbackForm:associateWithAppleAccount:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  result = sub_1B00DC300(a2, &a5[v9[5]]);
  a5[v9[6]] = a3;
  a5[v9[7]] = a4;
  return result;
}

unint64_t sub_1B00FB450()
{
  v1 = 0x6E6F69746361;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7463656A627573;
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

uint64_t sub_1B00FB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B00FE0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B00FB4F8(uint64_t a1)
{
  v2 = sub_1B00FDEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00FB534(uint64_t a1)
{
  v2 = sub_1B00FDEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4128, &qword_1B0151310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00FDEFC();
  sub_1B014D35C();
  v16[15] = *v3;
  v16[14] = 0;
  sub_1B00DCAC0();
  sub_1B014D21C();
  if (!v2)
  {
    v11 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
    v12 = v11[5];
    v16[13] = 1;
    type metadata accessor for FBKSEvaluation.Subject(0);
    sub_1B00FE954(&qword_1EB6C3C50, type metadata accessor for FBKSEvaluation.Subject);
    sub_1B014D21C();
    v13 = v3[v11[6]];
    v16[12] = 2;
    sub_1B014D1EC();
    v14 = v3[v11[7]];
    v16[11] = 3;
    sub_1B014D1BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4138, &qword_1B0151318);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B00FDEFC();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v25 = v12;
  v18 = v15;
  v19 = v27;
  v33 = 0;
  sub_1B00DCBAC();
  v20 = v28;
  sub_1B014D17C();
  *v18 = v34;
  v32 = 1;
  sub_1B00FE954(&qword_1EB6C3C70, type metadata accessor for FBKSEvaluation.Subject);
  sub_1B014D17C();
  v21 = v25;
  sub_1B00DC300(v7, &v18[*(v25 + 20)]);
  v31 = 2;
  v18[*(v21 + 24)] = sub_1B014D14C() & 1;
  v30 = 3;
  v23 = sub_1B014D11C();
  (*(v19 + 8))(v11, v20);
  v18[*(v21 + 28)] = v23;
  sub_1B00FDF50(v18, v26, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_1B00FDFB8(v18, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
}

uint64_t sub_1B00FBB5C(_BYTE *a1, char a2, char a3)
{
  *(v4 + 72) = v3;
  *(v4 + 137) = a3;
  *(v4 + 136) = a2;
  v6 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  *(v4 + 80) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 138) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B00FBC04, 0, 0);
}

uint64_t sub_1B00FBC04()
{
  v37 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000043, 0x80000001B015D080, v36);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v6 & 1) == 0)
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v15 = 0;
LABEL_11:
    swift_willThrow();
    v16 = *(v0 + 88);

    v17 = *(v0 + 8);

    return v17();
  }

  if (byte_1EB6C4120)
  {
    v7 = sub_1B014CB3C();
    v8 = sub_1B014CF6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B00E6C2C(0xD000000000000070, 0x80000001B015D0D0, v36);
      _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B271F750](v10, -1, -1);
      MEMORY[0x1B271F750](v9, -1, -1);
    }

    *(v0 + 56) = 0xD000000000000070;
    *(v0 + 64) = 0x80000001B015D0D0;
    v11 = sub_1B014CD9C();
    v13 = v12;
    sub_1B00FE99C();
    swift_allocError();
    *v14 = v11;
    v14[1] = v13;
    goto LABEL_11;
  }

  v19 = *(v0 + 138);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 72);
  v23 = *(v0 + 137);
  v24 = *(v0 + 136);
  byte_1EB6C4120 = 1;
  sub_1B00FDF50(v22, &v20[v21[5]], type metadata accessor for FBKSEvaluation.Subject);
  *v20 = v19;
  v20[v21[6]] = v24;
  v20[v21[7]] = v23;
  v25 = sub_1B014C88C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  v28 = sub_1B014C86C();
  *(v0 + 96) = v28;
  *(v0 + 104) = v29;
  v30 = v28;
  v31 = v29;

  v32 = swift_task_alloc();
  *(v0 + 112) = v32;
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = *(MEMORY[0x1E69E8920] + 4);
  v34 = swift_task_alloc();
  *(v0 + 120) = v34;
  *v34 = v0;
  v34[1] = sub_1B00FC0E0;
  v35 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v34, 0, 0, 0xD000000000000043, 0x80000001B015D080, sub_1B00FEA58, v32, v35);
}

uint64_t sub_1B00FC0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {
    v6 = sub_1B00FC2A0;
  }

  else
  {
    v6 = sub_1B00FC214;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B00FC214()
{
  v1 = v0[11];
  sub_1B00D2024(v0[12], v0[13]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B00FC2A0()
{
  v1 = v0[11];
  sub_1B00D2024(v0[12], v0[13]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  v2 = v0[16];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:showFeedbackForm:)(_BYTE *a1, char a2)
{
  *(v2 + 32) = *a1;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00FC3EC;

  return sub_1B00FE220((v2 + 32), a2);
}

uint64_t sub_1B00FC3EC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FC528, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:showFeedbackForm:associateWithAppleAccount:)(_BYTE *a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00DF2E8;

  return sub_1B00FE220(a1, a2);
}

uint64_t FBKSEvaluation.Subject._remoteEvaluate(action:showFeedbackForm:)(_BYTE *a1, char a2)
{
  *(v2 + 32) = *a1;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00FC6A8;

  return sub_1B00FBB5C((v2 + 32), a2, 2);
}

uint64_t sub_1B00FC6A8()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FC528, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_1B00FC7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v17 = *(v5 + 16);
  v17(v8, a1, v4);
  v16 = a1;
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v8, v4);
  v12 = sub_1B00FA9AC(sub_1B00FEA60, v10);

  if (v12)
  {
    v13 = sub_1B014CA7C();
    v17(v8, v16, v4);
    v14 = swift_allocObject();
    v11(v14 + v9, v8, v4);
    aBlock[4] = sub_1B00FEB68;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0145D1C;
    aBlock[3] = &block_descriptor_36;
    v15 = _Block_copy(aBlock);

    [v12 remoteEvaluateWithRequest:v13 sceneID:0 bundleID:0 completion:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
  }
}

void sub_1B00FCA6C(uint64_t a1, unint64_t a2, void *a3)
{
  byte_1EB6C4120 = 0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF3C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B00C4000, v7, v8, "Returned from remote evaluation", v9, 2u);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  if (a3)
  {
    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE7C();
  }

  else if (a2 >> 60 == 15)
  {
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Remote evaluation finished. No FBKSInteraction", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE8C();
  }

  else
  {
    v14 = sub_1B014C82C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    sub_1B014C80C();

    if (v27)
    {
      v17 = v27;
      v18 = sub_1B014CB3C();
      v19 = sub_1B014CF6C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543362;
        *(v20 + 4) = v17;
        *v21 = v27;
        v22 = v17;
        _os_log_impl(&dword_1B00C4000, v18, v19, "Remote evaluation finished with evaluation %{public}@", v20, 0xCu);
        sub_1B00FE9F0(v21);
        MEMORY[0x1B271F750](v21, -1, -1);
        MEMORY[0x1B271F750](v20, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE8C();
      sub_1B00DE9AC(a1, a2);
    }

    else
    {
      v23 = sub_1B014CB3C();
      v24 = sub_1B014CF4C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B00C4000, v23, v24, "Remote evaluation finished bad JSON FBKEvaluation", v25, 2u);
        MEMORY[0x1B271F750](v25, -1, -1);
      }

      sub_1B00FE99C();
      swift_allocError();
      *v26 = 0xD000000000000020;
      v26[1] = 0x80000001B015CFB0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE7C();
      sub_1B00DE9AC(a1, a2);
    }
  }
}

uint64_t FBKSEvaluation.Subject._remoteEvaluate(action:sceneID:bundleID:showFeedbackForm:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 152) = a6;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 56) = a2;
  v9 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  *(v7 + 96) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 153) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B00FCF8C, 0, 0);
}

uint64_t sub_1B00FCF8C()
{
  v30 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000054, 0x80000001B015CF50, &v29);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 153);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 152);
    sub_1B00FDF50(*(v0 + 88), &v8[v9[5]], type metadata accessor for FBKSEvaluation.Subject);
    *v8 = v7;
    v8[v9[6]] = v10;
    v8[v9[7]] = 2;
    v11 = sub_1B014C88C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1B014C87C();
    sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
    v14 = sub_1B014C86C();
    *(v0 + 112) = v14;
    *(v0 + 120) = v15;
    v20 = v14;
    v21 = v15;
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v28 = *(v0 + 56);

    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = v28;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;
    v25 = *(MEMORY[0x1E69E8920] + 4);
    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = sub_1B00FD348;
    v27 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v26, 0, 0, 0xD000000000000054, 0x80000001B015CF50, sub_1B00FE654, v24, v27);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 104);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B00FD348()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);

  if (v0)
  {
    v6 = sub_1B00FD508;
  }

  else
  {
    v6 = sub_1B00FD47C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B00FD47C()
{
  v1 = v0[13];
  sub_1B00D2024(v0[14], v0[15]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B00FD508()
{
  v1 = v0[13];
  sub_1B00D2024(v0[14], v0[15]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  v2 = v0[18];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

void sub_1B00FD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v23 = *(v9 + 16);
  v23(v12, a1, v8);
  v22 = a1;
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = *(v9 + 32);
  v15(v14 + v13, v12, v8);
  v16 = sub_1B00FA9AC(sub_1B00FEC30, v14);

  if (v16)
  {
    v25 = sub_1B014CA7C();
    v27 = sub_1B014CC0C();
    v17 = sub_1B014CC0C();
    v23(v12, v22, v8);
    v18 = swift_allocObject();
    v15(v18 + v13, v12, v8);
    aBlock[4] = sub_1B00FE924;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0145D1C;
    aBlock[3] = &block_descriptor_6;
    v19 = _Block_copy(aBlock);

    v20 = v25;
    v21 = v27;
    [v16 remoteEvaluateWithRequest:v25 sceneID:v27 bundleID:v17 completion:v19];
    swift_unknownObjectRelease();
    _Block_release(v19);
  }
}

uint64_t sub_1B00FD854(void *a1)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v2 = sub_1B014CB5C();
  __swift_project_value_buffer(v2, qword_1EDAE7828);
  v3 = a1;
  v4 = sub_1B014CB3C();
  v5 = sub_1B014CF4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v9 = sub_1B014CC6C();
    v11 = sub_1B00E6C2C(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B00C4000, v4, v5, "Failed to connect to daemon: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B271F750](v7, -1, -1);
    MEMORY[0x1B271F750](v6, -1, -1);
  }

  if (a1)
  {
    v16 = v3;
    v12 = v3;
  }

  else
  {
    sub_1B00FE99C();
    v13 = swift_allocError();
    *v14 = 0xD000000000000044;
    v14[1] = 0x80000001B015CFE0;
    v16 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  return sub_1B014CE7C();
}

void sub_1B00FDA44(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF3C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B00C4000, v7, v8, "Returned from remote evaluation", v9, 2u);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  if (a3)
  {
    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE7C();
  }

  else if (a2 >> 60 == 15)
  {
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Remote evaluation finished. No FBKSInteraction", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE8C();
  }

  else
  {
    v14 = sub_1B014C82C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    sub_1B014C80C();

    if (v27)
    {
      v17 = v27;
      v18 = sub_1B014CB3C();
      v19 = sub_1B014CF6C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543362;
        *(v20 + 4) = v17;
        *v21 = v27;
        v22 = v17;
        _os_log_impl(&dword_1B00C4000, v18, v19, "Remote evaluation finished with evaluation %{public}@", v20, 0xCu);
        sub_1B00FE9F0(v21);
        MEMORY[0x1B271F750](v21, -1, -1);
        MEMORY[0x1B271F750](v20, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE8C();
      sub_1B00DE9AC(a1, a2);
    }

    else
    {
      v23 = sub_1B014CB3C();
      v24 = sub_1B014CF4C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B00C4000, v23, v24, "Remote evaluation finished bad JSON FBKEvaluation", v25, 2u);
        MEMORY[0x1B271F750](v25, -1, -1);
      }

      sub_1B00FE99C();
      swift_allocError();
      *v26 = 0xD000000000000020;
      v26[1] = 0x80000001B015CFB0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE7C();
      sub_1B00DE9AC(a1, a2);
    }
  }
}

uint64_t type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation()
{
  result = qword_1EB6C4140;
  if (!qword_1EB6C4140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B00FDEFC()
{
  result = qword_1EB6C4130;
  if (!qword_1EB6C4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4130);
  }

  return result;
}

uint64_t sub_1B00FDF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B00FDFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B00FE040(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B00FE0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015CCD0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015CCF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

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

uint64_t sub_1B00FE220(_BYTE *a1, char a2)
{
  *(v3 + 80) = v2;
  *(v3 + 105) = a2;
  *(v3 + 106) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00FE24C, 0, 0);
}

uint64_t sub_1B00FE24C()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000042, 0x80000001B015D030, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v6 & 1) == 0)
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v8 = 0;
    goto LABEL_9;
  }

  if (*(v0 + 105))
  {
    sub_1B00FE99C();
    swift_allocError();
    strcpy(v7, "Unimplemented");
    *(v7 + 7) = -4864;
LABEL_9:
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }

  *(v0 + 104) = *(v0 + 106);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1B00FE500;
  v12 = *(v0 + 80);

  return FBKSEvaluation.Subject.evaluate(action:formResponse:)((v0 + 104), v0 + 56);
}

uint64_t sub_1B00FE500(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(v5 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FE63C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1B00FE664(uint64_t a1)
{
  *(a1 + 8) = sub_1B00FE954(&qword_1EB6C3E38, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  result = sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  *(a1 + 16) = result;
  return result;
}

void sub_1B00FE720()
{
  type metadata accessor for FBKSEvaluation.Subject(319);
  if (v0 <= 0x3F)
  {
    sub_1B00FE7BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B00FE7BC()
{
  if (!qword_1EB6C4150)
  {
    v0 = sub_1B014CFBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6C4150);
    }
  }
}

unint64_t sub_1B00FE820()
{
  result = qword_1EB6C4158;
  if (!qword_1EB6C4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4158);
  }

  return result;
}

unint64_t sub_1B00FE878()
{
  result = qword_1EB6C4160;
  if (!qword_1EB6C4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4160);
  }

  return result;
}

unint64_t sub_1B00FE8D0()
{
  result = qword_1EB6C4168;
  if (!qword_1EB6C4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4168);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00FE954(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B00FE99C()
{
  result = qword_1EB6C4170;
  if (!qword_1EB6C4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4170);
  }

  return result;
}

uint64_t sub_1B00FE9F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F28, &qword_1B0150488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00FEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v17 = 0;
  v17[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v18 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v19 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v20 = *(*(v19 - 8) + 56);
  v20(&v12[v18], 1, 1, v19);
  v20(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v19);
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v22 = type metadata accessor for FBKSInteraction.Content(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v12[v21], 1, 1, v22);
  v23(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v22);
  v24 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v25 = 0;
  v25[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v26 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v27 = sub_1B014CB1C();
  (*(*(v27 - 8) + 56))(&v12[v26], 1, 1, v27);
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v28 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v28 = v16;
  v28[1] = v15;
  v60.receiver = v12;
  v60.super_class = type metadata accessor for FBKSInteraction(0);
  v29 = objc_msgSendSuper2(&v60, sel_init);
  v30 = v29;
  if (a3)
  {
    v31 = &v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v32 = *&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v31 = a2;
    *(v31 + 1) = a3;
    v33 = v29;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = v30;
    v36 = [v34 mainBundle];
    v37 = [v36 bundleIdentifier];

    if (v37)
    {
      v38 = sub_1B014CC1C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = &v35[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v42 = *&v35[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v41 = v38;
    v41[1] = v40;
  }

  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v44 = *&v30[v43];
  *&v30[v43] = a4;

  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v30[v45], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v30[v46], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v47 = &v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v48 = *(v47 + 1);
  *v47 = a7;
  *(v47 + 1) = a8;

  v49 = &v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v50 = *(v49 + 1);
  *v49 = a9;
  *(v49 + 1) = a10;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v52 = *&v30[v51];
  *&v30[v51] = a11;

  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v30[v53] = a12 & 1;

  return v30;
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v18 = 0;
  v18[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v21 = *(*(v20 - 8) + 56);
  v21(&v13[v19], 1, 1, v20);
  v21(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v20);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v23 = type metadata accessor for FBKSInteraction.Content(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v13[v22], 1, 1, v23);
  v24(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v23);
  v25 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v26 = 0;
  v26[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v28 = sub_1B014CB1C();
  (*(*(v28 - 8) + 56))(&v13[v27], 1, 1, v28);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v29 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v29 = v16;
  v29[1] = v17;
  v62.receiver = v13;
  v62.super_class = type metadata accessor for FBKSInteraction(0);
  v30 = objc_msgSendSuper2(&v62, sel_init);
  v31 = v30;
  if (a3)
  {
    v32 = &v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v33 = *&v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v32 = a2;
    *(v32 + 1) = a3;
    v34 = v30;
  }

  else
  {
    v35 = objc_opt_self();
    v36 = v31;
    v37 = [v35 mainBundle];
    v38 = [v37 bundleIdentifier];

    if (v38)
    {
      v39 = sub_1B014CC1C();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = &v36[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v43 = *&v36[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v42 = v39;
    v42[1] = v41;
  }

  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v45 = *&v31[v44];
  *&v31[v44] = a4;

  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v31[v46], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v31[v47], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v48 = &v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v49 = *(v48 + 1);
  *v48 = a7;
  *(v48 + 1) = a8;

  v50 = &v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v51 = *(v50 + 1);
  *v50 = a9;
  *(v50 + 1) = a10;

  v52 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v53 = *&v31[v52];
  *&v31[v52] = a11;

  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v31[v54] = a12 & 1;
  v55 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(a13, &v31[v55], &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  return v31;
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *a1;
  v16 = a1[1];
  v18 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v18 = 0;
  v18[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v21 = *(*(v20 - 8) + 56);
  v21(&v13[v19], 1, 1, v20);
  v21(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v20);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v23 = type metadata accessor for FBKSInteraction.Content(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v13[v22], 1, 1, v23);
  v24(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v23);
  v25 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v26 = 0;
  v26[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v28 = sub_1B014CB1C();
  (*(*(v28 - 8) + 56))(&v13[v27], 1, 1, v28);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v29 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v29 = v17;
  v29[1] = v16;
  v63.receiver = v13;
  v63.super_class = type metadata accessor for FBKSInteraction(0);
  v30 = objc_msgSendSuper2(&v63, sel_init);
  v31 = v30;
  if (a3)
  {
    v32 = &v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v33 = *&v30[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v32 = a2;
    *(v32 + 1) = a3;
    v34 = v30;
  }

  else
  {
    v35 = objc_opt_self();
    v36 = v31;
    v37 = [v35 mainBundle];
    v38 = [v37 bundleIdentifier];

    if (v38)
    {
      v39 = sub_1B014CC1C();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = &v36[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v43 = *&v36[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v42 = v39;
    v42[1] = v41;
  }

  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v45 = *&v31[v44];
  *&v31[v44] = a4;

  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v31[v46], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v31[v47], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v49 = *&v31[v48];
  *&v31[v48] = a7;

  v50 = &v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v51 = *(v50 + 1);
  *v50 = a8;
  *(v50 + 1) = a9;

  v52 = &v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v53 = *(v52 + 1);
  *v52 = a10;
  *(v52 + 1) = a11;

  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v55 = *&v31[v54];
  *&v31[v54] = a12;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v31[v56] = a13 & 1;

  return v31;
}

void *FBKSInteraction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v106 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v99 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A0, &qword_1B01515D8);
  v109 = *(v110 - 8);
  v16 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v135 = &v99 - v17;
  v18 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v18 = 0;
  v18[1] = 0;
  v123 = v18;
  v124 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v21 = *(*(v20 - 8) + 56);
  v121 = v19;
  v21(&v1[v19], 1, 1, v20);
  v120 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  v107 = v20;
  v21(&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v20);
  v122 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v23 = type metadata accessor for FBKSInteraction.Content(0);
  v24 = *(*(v23 - 8) + 56);
  v119 = v22;
  v24(&v1[v22], 1, 1, v23);
  v118 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  v24(&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v23);
  v25 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v25 = 0;
  v25[1] = 0;
  v117 = v25;
  v26 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v26 = 0;
  v26[1] = 0;
  v116 = v26;
  v115 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v29 = sub_1B014CB1C();
  v30 = *(*(v29 - 8) + 56);
  v114 = v28;
  v30(&v1[v28], 1, 1, v29);
  v31 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v32 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  v111 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter;
  v125 = v1;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v33 = a1[3];
  v34 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1B01009E8();
  v35 = v112;
  sub_1B014D34C();
  if (v35)
  {
    v36 = v121;
    v38 = v123;
    __swift_destroy_boxed_opaque_existential_0(v113);
    v39 = v120;
    v40 = v119;
    v41 = v118;
    v42 = v125;
    v43 = v38[1];

    v44 = *(v42 + v124);

    sub_1B00DE9C0(v42 + v36, &qword_1EB6C3D68, &unk_1B0151240);
    sub_1B00DE9C0(v42 + v39, &qword_1EB6C3D68, &unk_1B0151240);
    v45 = *(v42 + v122);

    sub_1B00DE9C0(v42 + v40, &qword_1EB6C3C28, &qword_1B01515D0);
    sub_1B00DE9C0(v42 + v41, &qword_1EB6C3C28, &qword_1B01515D0);
    v46 = v117[1];

    v47 = v116[1];

    v48 = *(v42 + v115);

    sub_1B00DE9C0(v42 + v114, &qword_1EB6C3B98, &qword_1B014F360);

    type metadata accessor for FBKSInteraction(0);
    v49 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x30);
    v50 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v102 = v27;
    v112 = v29;
    v101 = v31;
    LOBYTE(v133) = 0;
    sub_1B0100A50();
    sub_1B014D17C();
    v37 = v121;
    v100 = v32;
    *(v125 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain) = v134;
    LOBYTE(v134) = 1;
    v52 = sub_1B014D10C();
    v53 = v123;
    v54 = v123[1];
    *v123 = v52;
    v53[1] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    LOBYTE(v134) = 2;
    sub_1B00DC504();
    sub_1B014D12C();
    v56 = v133;
    v57 = v124;
    v58 = v125;
    swift_beginAccess();
    v59 = *(v58 + v57);
    *(v58 + v57) = v56;

    LOBYTE(v133) = 3;
    sub_1B0100AA4(&qword_1EDAE6B38, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v60 = v108;
    sub_1B014D12C();
    v61 = v125;
    swift_beginAccess();
    sub_1B00DE71C(v60, v61 + v37, &qword_1EB6C3D68, &unk_1B0151240);
    swift_endAccess();
    LOBYTE(v133) = 4;
    v62 = v106;
    sub_1B014D12C();
    v63 = v120;
    v64 = v125;
    swift_beginAccess();
    sub_1B00DE71C(v62, v64 + v63, &qword_1EB6C3D68, &unk_1B0151240);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A8, &qword_1B01515E0);
    LOBYTE(v133) = 5;
    sub_1B011A9E0(&qword_1EDAE6AF8, &qword_1EDAE6B38);
    sub_1B014D17C();
    v65 = v119;
    v66 = v132;
    v67 = v122;
    v68 = v125;
    swift_beginAccess();
    v69 = *(v68 + v67);
    *(v68 + v67) = v66;

    LOBYTE(v132) = 6;
    sub_1B0100AA4(&qword_1EDAE6B28, type metadata accessor for FBKSInteraction.Content);
    v70 = v105;
    sub_1B014D12C();
    v71 = v125;
    swift_beginAccess();
    sub_1B00DE71C(v70, v71 + v65, &qword_1EB6C3C28, &qword_1B01515D0);
    swift_endAccess();
    LOBYTE(v132) = 7;
    v72 = v104;
    sub_1B014D12C();
    v73 = v72;
    v74 = v118;
    v75 = v125;
    swift_beginAccess();
    sub_1B00DE71C(v73, v75 + v74, &qword_1EB6C3C28, &qword_1B01515D0);
    swift_endAccess();
    LOBYTE(v132) = 8;
    v76 = sub_1B014D10C();
    v78 = v77;
    v79 = v117;
    swift_beginAccess();
    v80 = v79[1];
    *v79 = v76;
    v79[1] = v78;

    v131 = 9;
    v81 = sub_1B014D10C();
    v83 = v82;
    v84 = v116;
    swift_beginAccess();
    v85 = v84[1];
    *v84 = v81;
    v84[1] = v83;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B0, &qword_1B01515E8);
    v130 = 10;
    sub_1B011AA7C(&qword_1EDAE6B00);
    sub_1B014D12C();
    v86 = v129;
    v87 = v115;
    v88 = v125;
    swift_beginAccess();
    v89 = *(v88 + v87);
    *(v88 + v87) = v86;

    LOBYTE(v129) = 11;
    LOBYTE(v86) = sub_1B014D14C();
    v90 = v102;
    v91 = v125;
    swift_beginAccess();
    *(v91 + v90) = v86 & 1;
    v128 = 12;
    sub_1B0100AA4(&qword_1EDAE6EA8, MEMORY[0x1E69695A8]);
    sub_1B014D12C();
    v92 = v114;
    v93 = v125;
    swift_beginAccess();
    sub_1B00DE71C(v103, v93 + v92, &qword_1EB6C3B98, &qword_1B014F360);
    swift_endAccess();
    v128 = 13;
    LOBYTE(v92) = sub_1B014D14C();
    v94 = v101;
    v95 = v125;
    swift_beginAccess();
    *(v95 + v94) = v92 & 1;
    v127 = 14;
    LOBYTE(v92) = sub_1B014D14C();
    v96 = v100;
    v97 = v125;
    swift_beginAccess();
    v97[v96] = v92 & 1;
    v98 = type metadata accessor for FBKSInteraction(0);
    v126.receiver = v97;
    v126.super_class = v98;
    v42 = objc_msgSendSuper2(&v126, sel_init);
    (*(v109 + 8))(v135, v110);
    __swift_destroy_boxed_opaque_existential_0(v113);
  }

  return v42;
}

unint64_t sub_1B01009E8()
{
  result = qword_1EDAE7618;
  if (!qword_1EDAE7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7618);
  }

  return result;
}

uint64_t sub_1B0100A3C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

unint64_t sub_1B0100A50()
{
  result = qword_1EDAE6DD8;
  if (!qword_1EDAE6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DD8);
  }

  return result;
}

uint64_t sub_1B0100AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B0100AEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1B0100B40(v4, v5);
}

uint64_t sub_1B0100B40(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

uint64_t sub_1B0100B54(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1B0100A3C(v5, v6);
}

uint64_t sub_1B0100C10()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  if (*(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8))
  {

    if ((sub_1B01154BC() & 1) == 0)
    {

      return 0x6170206472696854;
    }
  }

  return v1;
}

uint64_t sub_1B0100C9C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  v4 = *(v2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_1B0100CB8(uint64_t *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    v7 = v4[1];

    if ((sub_1B01154BC() & 1) == 0)
    {

      v6 = 0xEB00000000797472;
      v5 = 0x6170206472696854;
    }
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B0100D6C;
}

uint64_t sub_1B0100D6C(uint64_t a1)
{
  v1 = *(a1 + 16) + *(a1 + 24);
  v2 = *(v1 + 8);
  *v1 = *a1;
}

uint64_t sub_1B0100EB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1B00DE660(v4 + v8, a4, a2, a3);
}

uint64_t sub_1B0100F3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1B00DE71C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B0101010()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B0101058(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B010133C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1B010138C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1B0101440()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B0101484(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B0101534(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1B014CB1C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v6, v1 + v9, &qword_1EB6C3B98, &qword_1B014F360);
  return swift_endAccess();
}

uint64_t sub_1B0101690()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B01016D4(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B0101784()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B01017C8(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B0101878(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xED0000293A5F2864, aBlock);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  v37 = &type metadata for FeedbackFeatureFlags;
  v38 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v11 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v11 & 1) == 0)
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a1();

    return;
  }

  v12 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  if (*(v2 + v12))
  {
    v13 = sub_1B014CB3C();
    v14 = sub_1B014CF6C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B00C4000, v13, v14, "Ignoring .presented(), sentPresented already set", v15, 2u);
      MEMORY[0x1B271F750](v15, -1, -1);
    }

    (a1)(0);
    return;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    v20 = 0x3E6C696E3CLL;
    v22 = 0xE500000000000000;
    goto LABEL_16;
  }

  v20 = sub_1B014CC1C();
  v22 = v21;

  if (v20 != 0xD00000000000001ALL || 0x80000001B015C960 != v22)
  {
LABEL_16:
    if (sub_1B014D25C())
    {
      v23 = 0;
    }

    else if (v20 == 0xD000000000000025 && 0x80000001B015C910 == v22)
    {
      v23 = 0;
      v20 = 0xD000000000000025;
    }

    else
    {
      v23 = sub_1B014D25C() ^ 1;
    }

    goto LABEL_22;
  }

  v23 = 0;
  v20 = 0xD00000000000001ALL;
LABEL_22:

  v24 = sub_1B014CB3C();
  v25 = sub_1B014CF3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_1B00E6C2C(v20, v22, aBlock);

    *(v26 + 4) = v28;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v23 & 1;
    _os_log_impl(&dword_1B00C4000, v24, v25, "Presented interaction from %s. Is presented inline: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B271F750](v27, -1, -1);
    MEMORY[0x1B271F750](v26, -1, -1);
  }

  else
  {
  }

  FBKSInteraction.CAPayload(_:)();
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;

  v30 = sub_1B00FA9AC(sub_1B011835C, v29);

  if (v30)
  {
    sub_1B00DC12C();
    v31 = sub_1B014CB9C();

    _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(v3);
    v32 = sub_1B014CC0C();

    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = a1;
    v33[4] = a2;
    v38 = sub_1B011A88C;
    v39 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00DFB7C;
    v37 = &block_descriptor_7;
    v34 = _Block_copy(aBlock);

    v35 = v3;

    [v30 presentedInteractionWithAnalyticsPayload:v31 featureDomainEventName:v32 completion:v34];
    swift_unknownObjectRelease();
    _Block_release(v34);
  }

  else
  {
  }
}

uint64_t sub_1B0101ED0()
{
  v15 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xEB00000000292864, &v14);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[7];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1B00E4A7C;

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

void sub_1B0102174(unsigned __int8 *a1, uint64_t *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v32 = a3;
  v7 = type metadata accessor for FBKSEvaluation.Subject(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  HIDWORD(v30) = *a1;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v14 = sub_1B014CB5C();
  __swift_project_value_buffer(v14, qword_1EDAE7828);
  v15 = sub_1B014CB3C();
  v16 = sub_1B014CF6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1B00E6C2C(0xD000000000000029, 0x80000001B015D150, v34);
    _os_log_impl(&dword_1B00C4000, v15, v16, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B271F750](v18, -1, -1);
    MEMORY[0x1B271F750](v17, -1, -1);
  }

  v34[3] = &type metadata for FeedbackFeatureFlags;
  v34[4] = sub_1B00DC988();
  LOBYTE(v34[0]) = 0;
  v19 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v34);
  if (v19)
  {
    v20 = v31;
    *v10 = v31;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for FBKSEvaluation(0);
    v22 = objc_allocWithZone(v21);
    sub_1B011A8C4(v10, &v22[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject], type metadata accessor for FBKSEvaluation.Subject);
    v22[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = BYTE4(v30);
    v23 = &v22[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
    *v23 = v11;
    v23[1] = v12;
    v23[2] = v13;
    v24 = v20;
    sub_1B00DB7AC(v11, v12);
    v33.receiver = v22;
    v33.super_class = v21;
    v25 = objc_msgSendSuper2(&v33, sel_init);
    sub_1B011A92C(v10, type metadata accessor for FBKSEvaluation.Subject);
    v26 = v24;

    v27 = v25;
    sub_1B00DDCC0(v27, v26, v32, a4, v27);
  }

  else
  {
    sub_1B00DC9DC();
    v28 = swift_allocError();
    *v29 = 0;
    v32(v28, 1);
  }
}

uint64_t sub_1B01024A8(_BYTE *a1, uint64_t a2)
{
  *(v3 + 64) = v2;
  *(v3 + 120) = *a1;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B01024E0, 0, 0);
}

uint64_t sub_1B01024E0()
{
  v19 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD00000000000001ELL, 0x80000001B015D180, &v18);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 88);
    v17 = *(v0 + 72);
    v8 = *(v0 + 120);
    v9 = *(v0 + 64);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v10 + 32) = v17;
    *(v10 + 48) = v7;
    v11 = *(MEMORY[0x1E69E8920] + 4);
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    v13 = type metadata accessor for FBKSEvaluation(0);
    *v12 = v0;
    v12[1] = sub_1B010279C;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD00000000000001ELL, 0x80000001B015D180, sub_1B011A8B0, v10, v13);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B010279C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B01028B8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1B00D90D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B01028B8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B010291C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v153 = (&v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v146 - v5;
  v7 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v156 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v158 = &v146 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v146 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = &v146 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v157 = &v146 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  *&v151 = &v146 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v146 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v146 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v146 - v28;
  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  v152 = v0;
  sub_1B00DE660(&v0[v30], v6, &qword_1EB6C3D68, &unk_1B0151240);
  *&v150 = v8;
  v31 = *(v8 + 48);
  v155 = v7;
  if (v31(v6, 1, v7) == 1)
  {
    sub_1B00DE9C0(v6, &qword_1EB6C3D68, &unk_1B0151240);
    goto LABEL_16;
  }

  sub_1B00FA138(v6, v29, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v32 = sub_1B010F40C();
  if ((v33 & 1) == 0)
  {
    v45 = v32;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v46 = sub_1B014CB5C();
    __swift_project_value_buffer(v46, qword_1EDAE7828);
    sub_1B011A8C4(v29, v27, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v47 = v152;
    v48 = sub_1B014CB3C();
    v49 = sub_1B014CF2C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v146 = v45;
      v51 = v50;
      v52 = swift_slowAlloc();
      v147 = v49;
      v53 = v52;
      v161[0] = v52;
      *v51 = 136446466;
      v54 = &v27[*(v155 + 28)];
      v55 = *v54;
      v56 = v54[1];

      v148 = v31;
      sub_1B011A92C(v27, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v57 = sub_1B00E6C2C(v55, v56, v161);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2082;
      v58 = sub_1B010392C();
      v59 = [v58 stringFromByteCount_];

      v60 = sub_1B014CC1C();
      v62 = v61;

      v63 = sub_1B00E6C2C(v60, v62, v161);

      *(v51 + 14) = v63;
      _os_log_impl(&dword_1B00C4000, v48, v147, "Original Content: %{public}s size: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v53, -1, -1);
      MEMORY[0x1B271F750](v51, -1, -1);

      v44 = v29;
      v31 = v148;
      goto LABEL_15;
    }

    v64 = v27;
LABEL_14:
    sub_1B011A92C(v64, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v44 = v29;
    goto LABEL_15;
  }

  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v34 = sub_1B014CB5C();
  __swift_project_value_buffer(v34, qword_1EDAE7828);
  sub_1B011A8C4(v29, v24, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v35 = sub_1B014CB3C();
  v36 = sub_1B014CF2C();
  if (!os_log_type_enabled(v35, v36))
  {

    v64 = v24;
    goto LABEL_14;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v161[0] = v38;
  *v37 = 136446210;
  v39 = &v24[*(v155 + 28)];
  v40 = v31;
  v41 = *v39;
  v42 = v39[1];

  sub_1B011A92C(v24, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v43 = sub_1B00E6C2C(v41, v42, v161);
  v31 = v40;

  *(v37 + 4) = v43;
  _os_log_impl(&dword_1B00C4000, v35, v36, "Original Content: %{public}s", v37, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B271F750](v38, -1, -1);
  MEMORY[0x1B271F750](v37, -1, -1);

  v44 = v29;
LABEL_15:
  sub_1B011A92C(v44, type metadata accessor for FBKSInteraction.AnnotatedContent);
LABEL_16:
  v66 = v152;
  v65 = v153;
  v67 = v157;
  v68 = v158;
  v69 = v154;
  v70 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE660(&v66[v70], v65, &qword_1EB6C3D68, &unk_1B0151240);
  v71 = &qword_1EDAE7000;
  if (v31(v65, 1, v155) == 1)
  {
    sub_1B00DE9C0(v65, &qword_1EB6C3D68, &unk_1B0151240);
    v72 = v156;
  }

  else
  {
    v73 = v151;
    sub_1B00FA138(v65, v151, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v74 = sub_1B010F40C();
    v72 = v156;
    if (v75)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v76 = sub_1B014CB5C();
      __swift_project_value_buffer(v76, qword_1EDAE7828);
      v77 = v149;
      sub_1B011A8C4(v73, v149, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v78 = v73;
      v79 = sub_1B014CB3C();
      v80 = sub_1B014CF2C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v160[0] = v82;
        *v81 = 136446210;
        v83 = (v77 + *(v155 + 28));
        v84 = *v83;
        v85 = v83[1];

        sub_1B011A92C(v77, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v86 = sub_1B00E6C2C(v84, v85, v160);

        *(v81 + 4) = v86;
        v68 = v158;
        _os_log_impl(&dword_1B00C4000, v79, v80, "Generated Content: %{public}s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        v87 = v82;
        v69 = v154;
        MEMORY[0x1B271F750](v87, -1, -1);
        MEMORY[0x1B271F750](v81, -1, -1);

        v88 = v151;
      }

      else
      {

        sub_1B011A92C(v77, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v88 = v78;
      }

      sub_1B011A92C(v88, type metadata accessor for FBKSInteraction.AnnotatedContent);
    }

    else
    {
      v89 = v74;
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v90 = sub_1B014CB5C();
      __swift_project_value_buffer(v90, qword_1EDAE7828);
      sub_1B011A8C4(v73, v67, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v91 = v66;
      v92 = sub_1B014CB3C();
      v93 = sub_1B014CF2C();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v160[0] = v95;
        *v94 = 136446466;
        v96 = (v67 + *(v155 + 28));
        v97 = *v96;
        v98 = v96[1];

        sub_1B011A92C(v67, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v99 = sub_1B00E6C2C(v97, v98, v160);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2082;
        v100 = sub_1B010392C();
        v101 = [v100 stringFromByteCount_];

        v102 = sub_1B014CC1C();
        v104 = v103;

        v105 = sub_1B00E6C2C(v102, v104, v160);
        v68 = v158;

        *(v94 + 14) = v105;
        _os_log_impl(&dword_1B00C4000, v92, v93, "Generated Content: %{public}s size: %{public}s", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B271F750](v95, -1, -1);
        MEMORY[0x1B271F750](v94, -1, -1);

        v106 = v151;
        v66 = v152;
      }

      else
      {

        sub_1B011A92C(v67, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v106 = v73;
      }

      sub_1B011A92C(v106, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v69 = v154;
      v71 = &qword_1EDAE7000;
    }
  }

  v107 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  result = *&v66[v107];
  v109 = *(result + 16);
  if (v109)
  {
    v110 = result + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v157 = *(v150 + 72);
    v149 = result;

    *&v111 = 136446210;
    v151 = v111;
    *&v111 = 136446466;
    v150 = v111;
    do
    {
      sub_1B011A8C4(v110, v69, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v113 = sub_1B010F40C();
      v114 = v71[14];
      if (v115)
      {
        if (v114 != -1)
        {
          swift_once();
        }

        v116 = sub_1B014CB5C();
        __swift_project_value_buffer(v116, qword_1EDAE7828);
        sub_1B011A8C4(v69, v72, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v117 = sub_1B014CB3C();
        v118 = sub_1B014CF2C();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v159 = v120;
          *v119 = v151;
          v121 = (v72 + *(v155 + 28));
          v122 = *v121;
          v123 = v121[1];

          sub_1B011A92C(v156, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v124 = sub_1B00E6C2C(v122, v123, &v159);
          v72 = v156;

          *(v119 + 4) = v124;
          v68 = v158;
          _os_log_impl(&dword_1B00C4000, v117, v118, "Extra Content: %{public}s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          v125 = v120;
          v69 = v154;
          MEMORY[0x1B271F750](v125, -1, -1);
          MEMORY[0x1B271F750](v119, -1, -1);

          v112 = v69;
          v71 = &qword_1EDAE7000;
        }

        else
        {

          sub_1B011A92C(v72, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v112 = v69;
        }

        sub_1B011A92C(v112, type metadata accessor for FBKSInteraction.AnnotatedContent);
      }

      else
      {
        v126 = v113;
        if (v114 != -1)
        {
          swift_once();
        }

        v127 = sub_1B014CB5C();
        __swift_project_value_buffer(v127, qword_1EDAE7828);
        sub_1B011A8C4(v69, v68, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v128 = v66;
        v129 = v69;
        v130 = sub_1B014CB3C();
        v131 = sub_1B014CF2C();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v159 = v133;
          *v132 = v150;
          v134 = (v158 + *(v155 + 28));
          v135 = *v134;
          v136 = v134[1];

          v153 = type metadata accessor for FBKSInteraction.AnnotatedContent;
          sub_1B011A92C(v158, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v137 = sub_1B00E6C2C(v135, v136, &v159);

          *(v132 + 4) = v137;
          *(v132 + 12) = 2082;
          v138 = sub_1B010392C();
          v139 = [v138 stringFromByteCount_];

          v140 = sub_1B014CC1C();
          v142 = v141;

          v143 = sub_1B00E6C2C(v140, v142, &v159);
          v72 = v156;

          *(v132 + 14) = v143;
          _os_log_impl(&dword_1B00C4000, v130, v131, "Extra Content: %{public}s size: %{public}s", v132, 0x16u);
          swift_arrayDestroy();
          v144 = v133;
          v68 = v158;
          MEMORY[0x1B271F750](v144, -1, -1);
          v145 = v132;
          v66 = v152;
          MEMORY[0x1B271F750](v145, -1, -1);

          v69 = v154;
          sub_1B011A92C(v154, v153);
        }

        else
        {

          sub_1B011A92C(v68, type metadata accessor for FBKSInteraction.AnnotatedContent);
          sub_1B011A92C(v129, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v69 = v129;
        }

        v71 = &qword_1EDAE7000;
      }

      v110 += v157;
      --v109;
    }

    while (v109);
  }

  return result;
}

id sub_1B010392C()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    [v4 setAllowedUnits_];
    [v4 setCountStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1B01039C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B8, &qword_1B0151600);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B01009E8();
  sub_1B014D35C();
  v72 = v2;
  v24 = (v2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v25 = v24[1];
  v87 = *v24;
  v88 = v25;
  LOBYTE(v86) = 0;
  sub_1B0100B40(v87, v25);
  sub_1B011A98C();
  v89 = v18;
  v26 = v22;
  v27 = v73;
  sub_1B014D21C();
  if (v27)
  {
    sub_1B0100A3C(v87, v88);
    return (*(v19 + 8))(v22, v89);
  }

  else
  {
    v73 = v19;
    sub_1B0100A3C(v87, v88);
    v29 = v72;
    v30 = *(v72 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    v31 = *(v72 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8);
    LOBYTE(v87) = 1;

    sub_1B014D1AC();

    v32 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
    swift_beginAccess();
    v86 = *(v29 + v32);
    v85 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC3B8();
    sub_1B014D1CC();
    v33 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
    swift_beginAccess();
    sub_1B00DE660(v29 + v33, v17, &qword_1EB6C3D68, &unk_1B0151240);
    v85 = 3;
    type metadata accessor for FBKSInteraction.AnnotatedContent();
    sub_1B0100AA4(&qword_1EDAE7118, type metadata accessor for FBKSInteraction.AnnotatedContent);
    sub_1B014D1CC();
    sub_1B00DE9C0(v17, &qword_1EB6C3D68, &unk_1B0151240);
    v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
    swift_beginAccess();
    v35 = v29 + v34;
    v36 = v71;
    sub_1B00DE660(v35, v71, &qword_1EB6C3D68, &unk_1B0151240);
    v84 = 4;
    sub_1B014D1CC();
    sub_1B00DE9C0(v36, &qword_1EB6C3D68, &unk_1B0151240);
    v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
    swift_beginAccess();
    v83 = *(v29 + v37);
    v82 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A8, &qword_1B01515E0);
    sub_1B011A9E0(&qword_1EDAE7050, &qword_1EDAE7118);
    sub_1B014D21C();
    v38 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
    swift_beginAccess();
    v39 = v29 + v38;
    v40 = v70;
    sub_1B00DE660(v39, v70, &qword_1EB6C3C28, &qword_1B01515D0);
    v82 = 6;
    type metadata accessor for FBKSInteraction.Content(0);
    sub_1B0100AA4(&qword_1EDAE7230, type metadata accessor for FBKSInteraction.Content);
    v71 = v26;
    sub_1B014D1CC();
    sub_1B00DE9C0(v40, &qword_1EB6C3C28, &qword_1B01515D0);
    v41 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
    v42 = v72;
    swift_beginAccess();
    v43 = v42 + v41;
    v44 = v69;
    sub_1B00DE660(v43, v69, &qword_1EB6C3C28, &qword_1B01515D0);
    v81 = 7;
    sub_1B014D1CC();
    sub_1B00DE9C0(v44, &qword_1EB6C3C28, &qword_1B01515D0);
    v45 = v72;
    v46 = (v72 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v80 = 8;

    sub_1B014D1AC();

    v49 = (v45 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    v79 = 9;

    sub_1B014D1AC();

    v52 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
    swift_beginAccess();
    v78 = *(v45 + v52);
    v77 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B0, &qword_1B01515E8);
    sub_1B011AA7C(&qword_1EDAE7058);
    sub_1B014D1CC();
    v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
    v54 = v72;
    swift_beginAccess();
    v55 = *(v54 + v53);
    v77 = 11;
    sub_1B014D1EC();
    v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    v57 = v72;
    swift_beginAccess();
    v58 = v57 + v56;
    v59 = v68;
    sub_1B00DE660(v58, v68, &qword_1EB6C3B98, &qword_1B014F360);
    v76 = 12;
    sub_1B014CB1C();
    sub_1B0100AA4(&qword_1EDAE7200, MEMORY[0x1E69695A8]);
    sub_1B014D1CC();
    sub_1B00DE9C0(v59, &qword_1EB6C3B98, &qword_1B014F360);
    v60 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
    v61 = v72;
    swift_beginAccess();
    v62 = *(v61 + v60);
    v75 = 13;
    sub_1B014D1EC();
    v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
    v64 = v72;
    swift_beginAccess();
    v65 = *(v64 + v63);
    v74 = 14;
    v66 = v89;
    v67 = v71;
    sub_1B014D1EC();
    return (*(v73 + 8))(v67, v66);
  }
}

void sub_1B0104478(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B014C9BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = v13;
  v17 = objc_allocWithZone(v13);
  v18 = *a1;
  v19 = a1[1];
  v20 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v20 = 0;
  v20[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v22 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v23 = *(*(v22 - 8) + 56);
  v23(&v17[v21], 1, 1, v22);
  v23(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v22);
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v25 = type metadata accessor for FBKSInteraction.Content(0);
  v26 = *(*(v25 - 8) + 56);
  v26(&v17[v24], 1, 1, v25);
  v26(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v25);
  v27 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v28 = 0;
  v28[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v30 = sub_1B014CB1C();
  (*(*(v30 - 8) + 56))(&v17[v29], 1, 1, v30);
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v31 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v31 = v18;
  v31[1] = v19;
  v66.receiver = v17;
  v66.super_class = v14;
  v32 = objc_msgSendSuper2(&v66, sel_init);
  v33 = v32;
  if (a3)
  {
    v34 = &v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v35 = *&v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v34 = a2;
    *(v34 + 1) = a3;
    v36 = v32;
  }

  else
  {
    v37 = objc_opt_self();
    v38 = v33;
    v39 = [v37 mainBundle];
    v40 = [v39 bundleIdentifier];

    if (v40)
    {
      v41 = sub_1B014CC1C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = &v38[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v45 = *&v38[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v44 = v41;
    v44[1] = v43;
  }

  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v47 = *&v33[v46];
  *&v33[v46] = a4;

  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v33[v48], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v33[v49], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v51 = *&v33[v50];
  *&v33[v50] = a7;

  v52 = &v33[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v53 = *(v52 + 1);
  *v52 = a8;
  *(v52 + 1) = a9;

  v54 = &v33[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v55 = *(v54 + 1);
  *v54 = a10;
  *(v54 + 1) = a11;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v57 = *&v33[v56];
  *&v33[v56] = a12;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v33[v58] = a13 & 1;

  return v33;
}

unint64_t FBKSInteraction.InteractionError.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD00000000000001BLL;
  }

  v2 = *v0;
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v2, v1);
  return 0xD000000000000012;
}

unint64_t sub_1B0104A34()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD00000000000001BLL;
  }

  v2 = *v0;
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v2, v1);
  return 0xD000000000000012;
}

unint64_t FBKSInteraction.FeatureDomain.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x432079726F6D654DLL;
  switch(v2)
  {
    case 0uLL:
      v3 = 0xD000000000000010;
      break;
    case 1uLL:
      break;
    case 2uLL:
      v3 = 0x74697277646E6148;
      break;
    case 3uLL:
      v3 = 0xD000000000000010;
      break;
    case 4uLL:
      v3 = 0x4520656369766544;
      break;
    case 5uLL:
      v3 = 0x20676E6974697257;
      break;
    case 6uLL:
      v3 = 0x6552207472616D53;
      break;
    case 7uLL:
      v3 = 0xD000000000000010;
      break;
    case 8uLL:
    case 0x18uLL:
      v3 = 0xD000000000000012;
      break;
    case 9uLL:
      v3 = 0x676948206C69614DLL;
      break;
    case 0xAuLL:
      v3 = 0xD000000000000016;
      break;
    case 0xBuLL:
      v4 = 11;
      goto LABEL_21;
    case 0xCuLL:
    case 0x13uLL:
      v3 = 0xD000000000000018;
      break;
    case 0xDuLL:
      v4 = 10;
LABEL_21:
      v3 = v4 | 0xD000000000000010;
      break;
    case 0xEuLL:
      v3 = 0x615020636967614DLL;
      break;
    case 0xFuLL:
      v3 = 0x7341207466697753;
      break;
    case 0x10uLL:
      v3 = 0x4320736F746F6850;
      break;
    case 0x11uLL:
    case 0x15uLL:
      v3 = 0xD000000000000013;
      break;
    case 0x12uLL:
      v3 = 1769105747;
      break;
    case 0x14uLL:
      v3 = 0x6C616E6F73726550;
      break;
    case 0x16uLL:
      v3 = 0x5320736F746F6850;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x19uLL:
      v3 = 0x4D4C4C206B7341;
      break;
    case 0x1AuLL:
      v3 = 0x6341207472616D53;
      break;
    case 0x1BuLL:
      v3 = 0x68432065646F6358;
      break;
    case 0x1CuLL:
      v3 = 0x65746F6E79654BLL;
      break;
    case 0x1DuLL:
      v3 = 0x7365676150;
      break;
    case 0x1EuLL:
      v3 = 0x737265626D754ELL;
      break;
    case 0x1FuLL:
      v3 = 0x6D726F6665657246;
      break;
    case 0x20uLL:
    case 0x21uLL:
      v3 = 0xD000000000000017;
      break;
    case 0x22uLL:
      v3 = 0x756E452070696B53;
      break;
    case 0x23uLL:
      v3 = 1953719636;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1B0100B40(v1, v2);
  return v3;
}

uint64_t static FBKSInteraction.FeatureDomain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB6C4178 = a1;
}

uint64_t sub_1B0104FE4(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EB6C4178 = v1;
}

unint64_t sub_1B0105040(char a1)
{
  result = 0x6E65476567616D69;
  switch(a1)
  {
    case 1:
      result = 0x724379726F6D656DLL;
      break;
    case 2:
      result = 0x74697277646E6168;
      break;
    case 3:
      result = 0x73416D6574737973;
      break;
    case 4:
      result = 0x7845656369766564;
      break;
    case 5:
      result = 0x54676E6974697277;
      break;
    case 6:
      result = 0x7065527472616D73;
      break;
    case 7:
      result = 0x6E6547696A6F6D65;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x686769486C69616DLL;
      break;
    case 10:
    case 33:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
    case 23:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x706150636967616DLL;
      break;
    case 15:
      result = 0x7373417466697773;
      break;
    case 16:
      result = 0x6C43736F746F6870;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6874695769726973;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x41515069726973;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x6553736F746F6870;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x4D4C4C6B7361;
      break;
    case 26:
      result = 0x7463417472616D73;
      break;
    case 27:
      result = 0x61684365646F6378;
      break;
    case 28:
      result = 0x65746F6E79656BLL;
      break;
    case 29:
      result = 0x7365676170;
      break;
    case 30:
      result = 0x737265626D756ELL;
      break;
    case 31:
      result = 0x6D726F6665657266;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 34:
      result = 0x6D756E4570696B73;
      break;
    case 35:
      result = 0x7261726F706D6574;
      break;
    case 36:
      result = 1953719668;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0105474(uint64_t a1)
{
  v2 = sub_1B011AEDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01054B0(uint64_t a1)
{
  v2 = sub_1B011AEDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01054F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0122E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0105528(uint64_t a1)
{
  v2 = sub_1B011AAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105564(uint64_t a1)
{
  v2 = sub_1B011AAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01055A0(uint64_t a1)
{
  v2 = sub_1B011B5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01055DC(uint64_t a1)
{
  v2 = sub_1B011B5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105618(uint64_t a1)
{
  v2 = sub_1B011B4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105654(uint64_t a1)
{
  v2 = sub_1B011B4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105690(uint64_t a1)
{
  v2 = sub_1B011ACE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01056CC(uint64_t a1)
{
  v2 = sub_1B011ACE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105708(uint64_t a1)
{
  v2 = sub_1B011B668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105744(uint64_t a1)
{
  v2 = sub_1B011B668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105780(uint64_t a1)
{
  v2 = sub_1B011B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01057BC(uint64_t a1)
{
  v2 = sub_1B011B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01057F8(uint64_t a1)
{
  v2 = sub_1B011AF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105834(uint64_t a1)
{
  v2 = sub_1B011AF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105870(uint64_t a1)
{
  v2 = sub_1B011ADE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01058AC(uint64_t a1)
{
  v2 = sub_1B011ADE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01058E8(uint64_t a1)
{
  v2 = sub_1B011B278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105924(uint64_t a1)
{
  v2 = sub_1B011B278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105960(uint64_t a1)
{
  v2 = sub_1B011B41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010599C(uint64_t a1)
{
  v2 = sub_1B011B41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01059D8(uint64_t a1)
{
  v2 = sub_1B011B470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105A14(uint64_t a1)
{
  v2 = sub_1B011B470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105A50(uint64_t a1)
{
  v2 = sub_1B011B6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105A8C(uint64_t a1)
{
  v2 = sub_1B011B6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105AC8(uint64_t a1)
{
  v2 = sub_1B011B3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105B04(uint64_t a1)
{
  v2 = sub_1B011B3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105B40(uint64_t a1)
{
  v2 = sub_1B011AF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105B7C(uint64_t a1)
{
  v2 = sub_1B011AF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105BB8(uint64_t a1)
{
  v2 = sub_1B011B17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105BF4(uint64_t a1)
{
  v2 = sub_1B011B17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105C30(uint64_t a1)
{
  v2 = sub_1B011B2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105C6C(uint64_t a1)
{
  v2 = sub_1B011B2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105CA8(uint64_t a1)
{
  v2 = sub_1B011B320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105CE4(uint64_t a1)
{
  v2 = sub_1B011B320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105D20(uint64_t a1)
{
  v2 = sub_1B011B374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105D5C(uint64_t a1)
{
  v2 = sub_1B011B374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105D98(uint64_t a1)
{
  v2 = sub_1B011AD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105DD4(uint64_t a1)
{
  v2 = sub_1B011AD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105E10(uint64_t a1)
{
  v2 = sub_1B011AD8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105E4C(uint64_t a1)
{
  v2 = sub_1B011AD8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105E88(uint64_t a1)
{
  v2 = sub_1B011B1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105EC4(uint64_t a1)
{
  v2 = sub_1B011B1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105F00(uint64_t a1)
{
  v2 = sub_1B011AFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105F3C(uint64_t a1)
{
  v2 = sub_1B011AFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105F78(uint64_t a1)
{
  v2 = sub_1B011B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105FB4(uint64_t a1)
{
  v2 = sub_1B011B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105FF0(uint64_t a1)
{
  v2 = sub_1B011B128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010602C(uint64_t a1)
{
  v2 = sub_1B011B128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106068(uint64_t a1)
{
  v2 = sub_1B011ABE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01060A4(uint64_t a1)
{
  v2 = sub_1B011ABE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01060E0(uint64_t a1)
{
  v2 = sub_1B011AE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010611C(uint64_t a1)
{
  v2 = sub_1B011AE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106158(uint64_t a1)
{
  v2 = sub_1B011B518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106194(uint64_t a1)
{
  v2 = sub_1B011B518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01061D0(uint64_t a1)
{
  v2 = sub_1B011B224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010620C(uint64_t a1)
{
  v2 = sub_1B011B224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106248(uint64_t a1)
{
  v2 = sub_1B011B614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106284(uint64_t a1)
{
  v2 = sub_1B011B614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01062D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0106358(uint64_t a1)
{
  v2 = sub_1B011AB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106394(uint64_t a1)
{
  v2 = sub_1B011AB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01063D0(uint64_t a1)
{
  v2 = sub_1B011AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010640C(uint64_t a1)
{
  v2 = sub_1B011AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106448(uint64_t a1)
{
  v2 = sub_1B011AC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106484(uint64_t a1)
{
  v2 = sub_1B011AC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01064C0(uint64_t a1)
{
  v2 = sub_1B011B02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01064FC(uint64_t a1)
{
  v2 = sub_1B011B02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106538(uint64_t a1)
{
  v2 = sub_1B011AC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106574(uint64_t a1)
{
  v2 = sub_1B011AC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01065B0(uint64_t a1)
{
  v2 = sub_1B011B56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01065EC(uint64_t a1)
{
  v2 = sub_1B011B56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106628(uint64_t a1)
{
  v2 = sub_1B011B0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106664(uint64_t a1)
{
  v2 = sub_1B011B0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01066A0(uint64_t a1)
{
  v2 = sub_1B011AE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01066DC(uint64_t a1)
{
  v2 = sub_1B011AE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.FeatureDomain.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41C0, &qword_1B0151608);
  v244 = *(v4 - 8);
  v245 = v4;
  v5 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v243 = &v137 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41C8, &qword_1B0151610);
  v241 = *(v7 - 8);
  v242 = v7;
  v8 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v240 = &v137 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41D0, &qword_1B0151618);
  v238 = *(v10 - 8);
  v239 = v10;
  v11 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v237 = &v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41D8, &qword_1B0151620);
  v235 = *(v13 - 8);
  v236 = v13;
  v14 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v234 = &v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41E0, &qword_1B0151628);
  v232 = *(v16 - 8);
  v233 = v16;
  v17 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v231 = &v137 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41E8, &qword_1B0151630);
  v229 = *(v19 - 8);
  v230 = v19;
  v20 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v228 = &v137 - v21;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41F0, &qword_1B0151638);
  v226 = *(v227 - 8);
  v22 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v137 - v23;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41F8, &qword_1B0151640);
  v223 = *(v224 - 8);
  v24 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v137 - v25;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4200, &qword_1B0151648);
  v220 = *(v221 - 8);
  v26 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v137 - v27;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4208, &qword_1B0151650);
  v217 = *(v218 - 8);
  v28 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v137 - v29;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4210, &qword_1B0151658);
  v214 = *(v215 - 8);
  v30 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v137 - v31;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4218, &qword_1B0151660);
  v211 = *(v212 - 8);
  v32 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v137 - v33;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4220, &qword_1B0151668);
  v208 = *(v209 - 8);
  v34 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v207 = &v137 - v35;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4228, &qword_1B0151670);
  v205 = *(v206 - 8);
  v36 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v137 - v37;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4230, &qword_1B0151678);
  v202 = *(v203 - 8);
  v38 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v137 - v39;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4238, &qword_1B0151680);
  v199 = *(v200 - 8);
  v40 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v137 - v41;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4240, &qword_1B0151688);
  v196 = *(v197 - 8);
  v42 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v137 - v43;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4248, &qword_1B0151690);
  v193 = *(v194 - 8);
  v44 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v137 - v45;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4250, &qword_1B0151698);
  v190 = *(v191 - 8);
  v46 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v137 - v47;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4258, &qword_1B01516A0);
  v187 = *(v188 - 8);
  v48 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v137 - v49;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4260, &qword_1B01516A8);
  v184 = *(v185 - 8);
  v50 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v137 - v51;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4268, &qword_1B01516B0);
  v181 = *(v182 - 8);
  v52 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v137 - v53;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4270, &qword_1B01516B8);
  v178 = *(v179 - 8);
  v54 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v137 - v55;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4278, &qword_1B01516C0);
  v175 = *(v176 - 8);
  v56 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v137 - v57;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4280, &qword_1B01516C8);
  v172 = *(v173 - 8);
  v58 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v137 - v59;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4288, &qword_1B01516D0);
  v169 = *(v170 - 8);
  v60 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v137 - v61;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4290, &qword_1B01516D8);
  v166 = *(v167 - 8);
  v62 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v137 - v63;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4298, &qword_1B01516E0);
  v163 = *(v164 - 8);
  v64 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v137 - v65;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42A0, &qword_1B01516E8);
  v160 = *(v161 - 8);
  v66 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v137 - v67;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42A8, &qword_1B01516F0);
  v157 = *(v158 - 8);
  v68 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v137 - v69;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42B0, &qword_1B01516F8);
  v154 = *(v155 - 8);
  v70 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v137 - v71;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42B8, &qword_1B0151700);
  v151 = *(v152 - 8);
  v72 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v137 - v73;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42C0, &qword_1B0151708);
  v148 = *(v149 - 8);
  v74 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v137 - v75;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42C8, &qword_1B0151710);
  v145 = *(v146 - 8);
  v76 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v137 - v77;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42D0, &qword_1B0151718);
  v142 = *(v143 - 8);
  v78 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v137 - v79;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42D8, &qword_1B0151720);
  v139 = *(v140 - 8);
  v80 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v82 = &v137 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42E0, &qword_1B0151728);
  v138 = *(v83 - 8);
  v84 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v137 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42E8, &qword_1B0151730);
  v88 = *(v87 - 8);
  v247 = v87;
  v248 = v88;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v137 - v90;
  v92 = *v2;
  v93 = v2[1];
  v94 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011AAEC();
  v246 = v91;
  sub_1B014D35C();
  switch(v93)
  {
    case 0:
      v250 = 0;
      sub_1B011B710();
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      (*(v138 + 8))(v86, v83);
      goto LABEL_40;
    case 1:
      v250 = 1;
      sub_1B011B6BC();
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v139 + 8);
      v102 = v82;
      v103 = &v172;
      goto LABEL_39;
    case 2:
      v250 = 2;
      sub_1B011B668();
      v112 = v141;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v142 + 8);
      v102 = v112;
      v103 = &v175;
      goto LABEL_39;
    case 3:
      v250 = 3;
      sub_1B011B614();
      v114 = v144;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v145 + 8);
      v102 = v114;
      v103 = &v178;
      goto LABEL_39;
    case 4:
      v250 = 4;
      sub_1B011B5C0();
      v107 = v147;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v148 + 8);
      v102 = v107;
      v103 = &v181;
      goto LABEL_39;
    case 5:
      v250 = 5;
      sub_1B011B56C();
      v118 = v150;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v151 + 8);
      v102 = v118;
      v103 = &v184;
      goto LABEL_39;
    case 6:
      v250 = 6;
      sub_1B011B518();
      v121 = v153;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v154 + 8);
      v102 = v121;
      v103 = &v187;
      goto LABEL_39;
    case 7:
      v250 = 7;
      sub_1B011B4C4();
      v115 = v156;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v157 + 8);
      v102 = v115;
      v103 = &v190;
      goto LABEL_39;
    case 8:
      v250 = 8;
      sub_1B011B470();
      v124 = v159;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v160 + 8);
      v102 = v124;
      v103 = &v193;
      goto LABEL_39;
    case 9:
      v250 = 9;
      sub_1B011B41C();
      v109 = v162;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v163 + 8);
      v102 = v109;
      v103 = &v196;
      goto LABEL_39;
    case 10:
      v250 = 10;
      sub_1B011B3C8();
      v123 = v165;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v166 + 8);
      v102 = v123;
      v103 = &v199;
      goto LABEL_39;
    case 11:
      v250 = 11;
      sub_1B011B374();
      v106 = v168;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v169 + 8);
      v102 = v106;
      v103 = &v202;
      goto LABEL_39;
    case 12:
      v250 = 12;
      sub_1B011B320();
      v108 = v171;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v172 + 8);
      v102 = v108;
      v103 = &v205;
      goto LABEL_39;
    case 13:
      v250 = 13;
      sub_1B011B2CC();
      v120 = v174;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v175 + 8);
      v102 = v120;
      v103 = &v208;
      goto LABEL_39;
    case 14:
      v250 = 14;
      sub_1B011B278();
      v105 = v177;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v178 + 8);
      v102 = v105;
      v103 = &v211;
      goto LABEL_39;
    case 15:
      v250 = 15;
      sub_1B011B224();
      v113 = v180;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v181 + 8);
      v102 = v113;
      v103 = &v214;
      goto LABEL_39;
    case 16:
      v250 = 16;
      sub_1B011B1D0();
      v104 = v183;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v184 + 8);
      v102 = v104;
      v103 = &v217;
      goto LABEL_39;
    case 17:
      v250 = 17;
      sub_1B011B17C();
      v116 = v186;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v187 + 8);
      v102 = v116;
      v103 = &v220;
      goto LABEL_39;
    case 18:
      v250 = 18;
      sub_1B011B128();
      v122 = v189;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v190 + 8);
      v102 = v122;
      v103 = &v223;
      goto LABEL_39;
    case 19:
      v250 = 19;
      sub_1B011B0D4();
      v127 = v192;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v193 + 8);
      v102 = v127;
      v103 = &v226;
      goto LABEL_39;
    case 20:
      v250 = 20;
      sub_1B011B080();
      v117 = v195;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v196 + 8);
      v102 = v117;
      v103 = &v229;
      goto LABEL_39;
    case 21:
      v250 = 21;
      sub_1B011B02C();
      v119 = v198;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v199 + 8);
      v102 = v119;
      v103 = &v232;
      goto LABEL_39;
    case 22:
      v250 = 22;
      sub_1B011AFD8();
      v126 = v201;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v202 + 8);
      v102 = v126;
      v103 = &v235;
      goto LABEL_39;
    case 23:
      v250 = 23;
      sub_1B011AF84();
      v128 = v204;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v205 + 8);
      v102 = v128;
      v103 = &v238;
      goto LABEL_39;
    case 24:
      v250 = 24;
      sub_1B011AF30();
      v111 = v207;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v208 + 8);
      v102 = v111;
      v103 = &v241;
      goto LABEL_39;
    case 25:
      v250 = 25;
      sub_1B011AEDC();
      v110 = v210;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v211 + 8);
      v102 = v110;
      v103 = &v244;
      goto LABEL_39;
    case 26:
      v250 = 26;
      sub_1B011AE88();
      v131 = v213;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v214 + 8);
      v102 = v131;
      v103 = &v247;
      goto LABEL_39;
    case 27:
      v250 = 27;
      sub_1B011AE34();
      v100 = v216;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v217 + 8);
      v102 = v100;
      v103 = &v249;
      goto LABEL_39;
    case 28:
      v250 = 28;
      sub_1B011ADE0();
      v129 = v219;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v220 + 8);
      v102 = v129;
      v103 = &v251;
      goto LABEL_39;
    case 29:
      v250 = 29;
      sub_1B011AD8C();
      v130 = v222;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v223 + 8);
      v102 = v130;
      v103 = &v252;
      goto LABEL_39;
    case 30:
      v250 = 30;
      sub_1B011AD38();
      v125 = v225;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v101 = *(v226 + 8);
      v102 = v125;
      v103 = &v253;
LABEL_39:
      v101(v102, *(v103 - 32));
      goto LABEL_40;
    case 31:
      v250 = 31;
      sub_1B011ACE4();
      v97 = v228;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v99 = v229;
      v98 = v230;
      goto LABEL_32;
    case 32:
      v250 = 32;
      sub_1B011AC90();
      v97 = v231;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v99 = v232;
      v98 = v233;
      goto LABEL_32;
    case 33:
      v250 = 33;
      sub_1B011AC3C();
      v97 = v234;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v99 = v235;
      v98 = v236;
      goto LABEL_32;
    case 34:
      v250 = 34;
      sub_1B011ABE8();
      v97 = v237;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v99 = v238;
      v98 = v239;
      goto LABEL_32;
    case 35:
      v250 = 36;
      sub_1B011AB40();
      v97 = v243;
      v96 = v246;
      v95 = v247;
      sub_1B014D19C();
      v99 = v244;
      v98 = v245;
LABEL_32:
      (*(v99 + 8))(v97, v98);
LABEL_40:
      result = (*(v248 + 8))(v96, v95);
      break;
    default:
      v250 = 35;
      sub_1B011AB94();
      v133 = v240;
      v135 = v246;
      v134 = v247;
      sub_1B014D19C();
      v136 = v242;
      sub_1B014D1DC();
      (*(v241 + 8))(v133, v136);
      result = (*(v248 + 8))(v135, v134);
      break;
  }

  return result;
}

uint64_t FBKSInteraction.FeatureDomain.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_38;
    case 1:
      v1 = 1;
      goto LABEL_38;
    case 2:
      v1 = 2;
      goto LABEL_38;
    case 3:
      v1 = 3;
      goto LABEL_38;
    case 4:
      v1 = 4;
      goto LABEL_38;
    case 5:
      v1 = 5;
      goto LABEL_38;
    case 6:
      v1 = 6;
      goto LABEL_38;
    case 7:
      v1 = 7;
      goto LABEL_38;
    case 8:
      v1 = 8;
      goto LABEL_38;
    case 9:
      v1 = 9;
      goto LABEL_38;
    case 10:
      v1 = 10;
      goto LABEL_38;
    case 11:
      v1 = 11;
      goto LABEL_38;
    case 12:
      v1 = 12;
      goto LABEL_38;
    case 13:
      v1 = 13;
      goto LABEL_38;
    case 14:
      v1 = 14;
      goto LABEL_38;
    case 15:
      v1 = 15;
      goto LABEL_38;
    case 16:
      v1 = 16;
      goto LABEL_38;
    case 17:
      v1 = 17;
      goto LABEL_38;
    case 18:
      v1 = 18;
      goto LABEL_38;
    case 19:
      v1 = 19;
      goto LABEL_38;
    case 20:
      v1 = 20;
      goto LABEL_38;
    case 21:
      v1 = 21;
      goto LABEL_38;
    case 22:
      v1 = 22;
      goto LABEL_38;
    case 23:
      v1 = 23;
      goto LABEL_38;
    case 24:
      v1 = 24;
      goto LABEL_38;
    case 25:
      v1 = 25;
      goto LABEL_38;
    case 26:
      v1 = 26;
      goto LABEL_38;
    case 27:
      v1 = 27;
      goto LABEL_38;
    case 28:
      v1 = 28;
      goto LABEL_38;
    case 29:
      v1 = 29;
      goto LABEL_38;
    case 30:
      v1 = 30;
      goto LABEL_38;
    case 31:
      v1 = 31;
      goto LABEL_38;
    case 32:
      v1 = 32;
      goto LABEL_38;
    case 33:
      v1 = 33;
      goto LABEL_38;
    case 34:
      v1 = 34;
      goto LABEL_38;
    case 35:
      v1 = 36;
LABEL_38:
      result = MEMORY[0x1B271EE00](v1);
      break;
    default:
      v3 = *v0;
      MEMORY[0x1B271EE00](35);

      result = sub_1B014CCAC();
      break;
  }

  return result;
}

uint64_t FBKSInteraction.FeatureDomain.hashValue.getter()
{
  v2 = *v0;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)();
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.FeatureDomain.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v293 = a2;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43E8, &qword_1B0151738);
  v255 = *(v292 - 8);
  v3 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v288 = &v181 - v4;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43F0, &qword_1B0151740);
  v254 = *(v256 - 8);
  v5 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v287 = &v181 - v6;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43F8, &qword_1B0151748);
  v252 = *(v253 - 8);
  v7 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v286 = &v181 - v8;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4400, &qword_1B0151750);
  v250 = *(v251 - 8);
  v9 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v285 = &v181 - v10;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4408, &qword_1B0151758);
  v248 = *(v249 - 8);
  v11 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v284 = &v181 - v12;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4410, &qword_1B0151760);
  v246 = *(v247 - 8);
  v13 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v283 = &v181 - v14;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4418, &qword_1B0151768);
  v244 = *(v245 - 8);
  v15 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v282 = &v181 - v16;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4420, &qword_1B0151770);
  v242 = *(v243 - 8);
  v17 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v281 = &v181 - v18;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4428, &qword_1B0151778);
  v240 = *(v241 - 8);
  v19 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v280 = &v181 - v20;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4430, &qword_1B0151780);
  v238 = *(v239 - 8);
  v21 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v279 = &v181 - v22;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4438, &qword_1B0151788);
  v236 = *(v237 - 8);
  v23 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v278 = &v181 - v24;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4440, &qword_1B0151790);
  v234 = *(v235 - 8);
  v25 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v277 = &v181 - v26;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4448, &qword_1B0151798);
  v232 = *(v233 - 8);
  v27 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v276 = &v181 - v28;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4450, &qword_1B01517A0);
  v230 = *(v231 - 8);
  v29 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v275 = &v181 - v30;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4458, &qword_1B01517A8);
  v228 = *(v229 - 8);
  v31 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v274 = &v181 - v32;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4460, &qword_1B01517B0);
  v226 = *(v227 - 8);
  v33 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v273 = &v181 - v34;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4468, &qword_1B01517B8);
  v224 = *(v225 - 8);
  v35 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v272 = &v181 - v36;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4470, &qword_1B01517C0);
  v222 = *(v223 - 8);
  v37 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v271 = &v181 - v38;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4478, &qword_1B01517C8);
  v220 = *(v221 - 8);
  v39 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v270 = &v181 - v40;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4480, &qword_1B01517D0);
  v218 = *(v219 - 8);
  v41 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v269 = &v181 - v42;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4488, &qword_1B01517D8);
  v216 = *(v217 - 8);
  v43 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v268 = &v181 - v44;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4490, &qword_1B01517E0);
  v214 = *(v215 - 8);
  v45 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v267 = &v181 - v46;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4498, &qword_1B01517E8);
  v212 = *(v213 - 8);
  v47 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v266 = &v181 - v48;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44A0, &qword_1B01517F0);
  v210 = *(v211 - 8);
  v49 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v265 = &v181 - v50;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44A8, &qword_1B01517F8);
  v208 = *(v209 - 8);
  v51 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v264 = &v181 - v52;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44B0, &qword_1B0151800);
  v206 = *(v207 - 8);
  v53 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v263 = &v181 - v54;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44B8, &qword_1B0151808);
  v204 = *(v205 - 8);
  v55 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v262 = &v181 - v56;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44C0, &qword_1B0151810);
  v202 = *(v203 - 8);
  v57 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v291 = &v181 - v58;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44C8, &qword_1B0151818);
  v200 = *(v201 - 8);
  v59 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v290 = &v181 - v60;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44D0, &qword_1B0151820);
  v199 = *(v194 - 8);
  v61 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v261 = &v181 - v62;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44D8, &qword_1B0151828);
  v197 = *(v198 - 8);
  v63 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v260 = &v181 - v64;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44E0, &qword_1B0151830);
  v195 = *(v196 - 8);
  v65 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v289 = &v181 - v66;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44E8, &qword_1B0151838);
  v192 = *(v193 - 8);
  v67 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v259 = &v181 - v68;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44F0, &qword_1B0151840);
  v190 = *(v191 - 8);
  v69 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v258 = &v181 - v70;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44F8, &qword_1B0151848);
  v188 = *(v189 - 8);
  v71 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v257 = &v181 - v72;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4500, &qword_1B0151850);
  v186 = *(v187 - 8);
  v73 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v75 = &v181 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4508, &qword_1B0151858);
  v185 = *(v76 - 8);
  v77 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v181 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4510, &unk_1B0151860);
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v181 - v83;
  v85 = a1[3];
  v86 = a1[4];
  v295 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v85);
  sub_1B011AAEC();
  v87 = v294;
  sub_1B014D34C();
  if (v87)
  {
LABEL_8:
    v104 = v295;
    return __swift_destroy_boxed_opaque_existential_0(v104);
  }

  v182 = v79;
  v181 = v76;
  v183 = v75;
  v88 = v289;
  v89 = v290;
  v90 = v291;
  v184 = 0;
  v92 = v292;
  v91 = v293;
  v294 = v81;
  v93 = sub_1B014D18C();
  v94 = (2 * *(v93 + 16)) | 1;
  v296 = v93;
  v297 = v93 + 32;
  v298 = 0;
  v299 = v94;
  v95 = sub_1B00D4A68();
  if (v298 != v299 >> 1)
  {
LABEL_6:
    v100 = sub_1B014D05C();
    swift_allocError();
    v102 = v101;
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
    *v102 = &type metadata for FBKSInteraction.FeatureDomain;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v100 - 8) + 104))(v102, *MEMORY[0x1E69E6AF8], v100);
    swift_willThrow();
LABEL_7:
    (*(v294 + 8))(v84, v80);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v95)
  {
    case 0:
      v300 = 0;
      sub_1B011B710();
      v96 = v182;
      v97 = v184;
      sub_1B014D0EC();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v185 + 8))(v96, v181);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 0;
      goto LABEL_82;
    case 1:
      v300 = 1;
      sub_1B011B6BC();
      v144 = v183;
      v145 = v184;
      sub_1B014D0EC();
      if (v145)
      {
        goto LABEL_7;
      }

      (*(v186 + 8))(v144, v187);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 1;
      goto LABEL_82;
    case 2:
      v300 = 2;
      sub_1B011B668();
      v136 = v257;
      v137 = v184;
      sub_1B014D0EC();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v188 + 8))(v136, v189);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 2;
      goto LABEL_82;
    case 3:
      v300 = 3;
      sub_1B011B614();
      v140 = v258;
      v141 = v184;
      sub_1B014D0EC();
      if (v141)
      {
        goto LABEL_7;
      }

      (*(v190 + 8))(v140, v191);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 3;
      goto LABEL_82;
    case 4:
      v300 = 4;
      sub_1B011B5C0();
      v127 = v259;
      v128 = v184;
      sub_1B014D0EC();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v192 + 8))(v127, v193);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 4;
      goto LABEL_82;
    case 5:
      v300 = 5;
      sub_1B011B56C();
      v152 = v184;
      sub_1B014D0EC();
      if (v152)
      {
        goto LABEL_7;
      }

      (*(v195 + 8))(v88, v196);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 5;
      goto LABEL_82;
    case 6:
      v300 = 6;
      sub_1B011B518();
      v157 = v260;
      v158 = v184;
      sub_1B014D0EC();
      if (v158)
      {
        goto LABEL_7;
      }

      (*(v197 + 8))(v157, v198);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 6;
      goto LABEL_82;
    case 7:
      v300 = 7;
      sub_1B011B4C4();
      v142 = v261;
      v143 = v184;
      sub_1B014D0EC();
      if (v143)
      {
        goto LABEL_7;
      }

      (*(v199 + 8))(v142, v194);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 7;
      goto LABEL_82;
    case 8:
      v300 = 8;
      sub_1B011B470();
      v163 = v184;
      sub_1B014D0EC();
      if (v163)
      {
        goto LABEL_7;
      }

      (*(v200 + 8))(v89, v201);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 8;
      goto LABEL_82;
    case 9:
      v300 = 9;
      sub_1B011B41C();
      v131 = v184;
      sub_1B014D0EC();
      if (v131)
      {
        goto LABEL_7;
      }

      (*(v202 + 8))(v90, v203);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 9;
      goto LABEL_82;
    case 10:
      v300 = 10;
      sub_1B011B3C8();
      v161 = v262;
      v162 = v184;
      sub_1B014D0EC();
      if (v162)
      {
        goto LABEL_7;
      }

      (*(v204 + 8))(v161, v205);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 10;
      goto LABEL_82;
    case 11:
      v300 = 11;
      sub_1B011B374();
      v125 = v263;
      v126 = v184;
      sub_1B014D0EC();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v206 + 8))(v125, v207);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 11;
      goto LABEL_82;
    case 12:
      v300 = 12;
      sub_1B011B320();
      v129 = v264;
      v130 = v184;
      sub_1B014D0EC();
      if (v130)
      {
        goto LABEL_7;
      }

      (*(v208 + 8))(v129, v209);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 12;
      goto LABEL_82;
    case 13:
      v300 = 13;
      sub_1B011B2CC();
      v155 = v265;
      v156 = v184;
      sub_1B014D0EC();
      if (v156)
      {
        goto LABEL_7;
      }

      (*(v210 + 8))(v155, v211);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 13;
      goto LABEL_82;
    case 14:
      v300 = 14;
      sub_1B011B278();
      v121 = v266;
      v122 = v184;
      sub_1B014D0EC();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v212 + 8))(v121, v213);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 14;
      goto LABEL_82;
    case 15:
      v300 = 15;
      sub_1B011B224();
      v138 = v267;
      v139 = v184;
      sub_1B014D0EC();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v214 + 8))(v138, v215);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 15;
      goto LABEL_82;
    case 16:
      v300 = 16;
      sub_1B011B1D0();
      v119 = v268;
      v120 = v184;
      sub_1B014D0EC();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v216 + 8))(v119, v217);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 16;
      goto LABEL_82;
    case 17:
      v300 = 17;
      sub_1B011B17C();
      v148 = v269;
      v149 = v184;
      sub_1B014D0EC();
      if (v149)
      {
        goto LABEL_7;
      }

      (*(v218 + 8))(v148, v219);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 17;
      goto LABEL_82;
    case 18:
      v300 = 18;
      sub_1B011B128();
      v159 = v270;
      v160 = v184;
      sub_1B014D0EC();
      if (v160)
      {
        goto LABEL_7;
      }

      (*(v220 + 8))(v159, v221);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 18;
      goto LABEL_82;
    case 19:
      v300 = 19;
      sub_1B011B0D4();
      v170 = v271;
      v171 = v184;
      sub_1B014D0EC();
      if (v171)
      {
        goto LABEL_7;
      }

      (*(v222 + 8))(v170, v223);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 19;
      goto LABEL_82;
    case 20:
      v300 = 20;
      sub_1B011B080();
      v150 = v272;
      v151 = v184;
      sub_1B014D0EC();
      if (v151)
      {
        goto LABEL_7;
      }

      (*(v224 + 8))(v150, v225);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 20;
      goto LABEL_82;
    case 21:
      v300 = 21;
      sub_1B011B02C();
      v153 = v273;
      v154 = v184;
      sub_1B014D0EC();
      if (v154)
      {
        goto LABEL_7;
      }

      (*(v226 + 8))(v153, v227);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 21;
      goto LABEL_82;
    case 22:
      v300 = 22;
      sub_1B011AFD8();
      v168 = v274;
      v169 = v184;
      sub_1B014D0EC();
      if (v169)
      {
        goto LABEL_7;
      }

      (*(v228 + 8))(v168, v229);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 22;
      goto LABEL_82;
    case 23:
      v300 = 23;
      sub_1B011AF84();
      v172 = v275;
      v173 = v184;
      sub_1B014D0EC();
      if (v173)
      {
        goto LABEL_7;
      }

      (*(v230 + 8))(v172, v231);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 23;
      goto LABEL_82;
    case 24:
      v300 = 24;
      sub_1B011AF30();
      v134 = v276;
      v135 = v184;
      sub_1B014D0EC();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v232 + 8))(v134, v233);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 24;
      goto LABEL_82;
    case 25:
      v300 = 25;
      sub_1B011AEDC();
      v132 = v277;
      v133 = v184;
      sub_1B014D0EC();
      if (v133)
      {
        goto LABEL_7;
      }

      (*(v234 + 8))(v132, v235);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 25;
      goto LABEL_82;
    case 26:
      v300 = 26;
      sub_1B011AE88();
      v178 = v278;
      v179 = v184;
      sub_1B014D0EC();
      if (v179)
      {
        goto LABEL_7;
      }

      (*(v236 + 8))(v178, v237);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 26;
      goto LABEL_82;
    case 27:
      v300 = 27;
      sub_1B011AE34();
      v115 = v279;
      v116 = v184;
      sub_1B014D0EC();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v238 + 8))(v115, v239);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 27;
      goto LABEL_82;
    case 28:
      v300 = 28;
      sub_1B011ADE0();
      v174 = v280;
      v175 = v184;
      sub_1B014D0EC();
      if (v175)
      {
        goto LABEL_7;
      }

      (*(v240 + 8))(v174, v241);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 28;
      goto LABEL_82;
    case 29:
      v300 = 29;
      sub_1B011AD8C();
      v176 = v281;
      v177 = v184;
      sub_1B014D0EC();
      if (v177)
      {
        goto LABEL_7;
      }

      (*(v242 + 8))(v176, v243);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 29;
      goto LABEL_82;
    case 30:
      v300 = 30;
      sub_1B011AD38();
      v164 = v282;
      v165 = v184;
      sub_1B014D0EC();
      if (v165)
      {
        goto LABEL_7;
      }

      (*(v244 + 8))(v164, v245);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 30;
      goto LABEL_82;
    case 31:
      v300 = 31;
      sub_1B011ACE4();
      v146 = v283;
      v147 = v184;
      sub_1B014D0EC();
      if (v147)
      {
        goto LABEL_7;
      }

      (*(v246 + 8))(v146, v247);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 31;
      goto LABEL_82;
    case 32:
      v300 = 32;
      sub_1B011AC90();
      v166 = v284;
      v167 = v184;
      sub_1B014D0EC();
      if (v167)
      {
        goto LABEL_7;
      }

      (*(v248 + 8))(v166, v249);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 32;
      goto LABEL_82;
    case 33:
      v300 = 33;
      sub_1B011AC3C();
      v123 = v285;
      v124 = v184;
      sub_1B014D0EC();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v250 + 8))(v123, v251);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 33;
      goto LABEL_82;
    case 34:
      v300 = 34;
      sub_1B011ABE8();
      v117 = v286;
      v118 = v184;
      sub_1B014D0EC();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v252 + 8))(v117, v253);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 34;
      goto LABEL_82;
    case 35:
      v300 = 35;
      sub_1B011AB94();
      v106 = v287;
      v107 = v184;
      sub_1B014D0EC();
      if (v107)
      {
        goto LABEL_7;
      }

      v108 = v256;
      v109 = sub_1B014D13C();
      v110 = v106;
      v112 = v294;
      v111 = v295;
      v98 = v109;
      v99 = v180;
      (*(v254 + 8))(v110, v108);
      (*(v112 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v104 = v111;
      goto LABEL_83;
    case 36:
      v300 = 36;
      sub_1B011AB40();
      v113 = v288;
      v114 = v184;
      sub_1B014D0EC();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v255 + 8))(v113, v92);
      (*(v294 + 8))(v84, v80);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 35;
LABEL_82:
      v104 = v295;
LABEL_83:
      *v91 = v98;
      v91[1] = v99;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v104);
}

uint64_t sub_1B010B860@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C4178;
}

uint64_t sub_1B010B8B4()
{
  v2 = *v0;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)();
  return sub_1B014D33C();
}

uint64_t sub_1B010B904()
{
  v2 = *v0;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)();
  return sub_1B014D33C();
}

double FBKSInteraction.StructuredValue.init(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  static FBKSInteraction.StructuredValue.wrap(_:)(a1, &v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (!v2)
  {
    v6 = v8;
    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t static FBKSInteraction.StructuredValue.wrap(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = LOBYTE(v54[0]);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v54[0];
    *(a2 + 8) = 0;
    v6 = 1;
LABEL_37:
    *(a2 + 16) = v6;
    return result;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v54[0];
    *(a2 + 8) = 0;
    v6 = 2;
    goto LABEL_37;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v54[1];
    *a2 = v54[0];
    *(a2 + 8) = v7;
    v6 = 3;
    goto LABEL_37;
  }

  sub_1B00D20D0(a1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4518, &qword_1B0151870);
  if (swift_dynamicCast())
  {
    v8 = v54[0];
    v9 = *(v54[0] + 16);
    if (!v9)
    {

      v11 = MEMORY[0x1E69E7CC0];
LABEL_36:
      *a2 = v11;
      *(a2 + 8) = 0;
      v6 = 4;
      goto LABEL_37;
    }

    v56 = MEMORY[0x1E69E7CC0];
    result = sub_1B00D1718(0, v9, 0);
    v10 = 0;
    v11 = v56;
    v12 = v54[0] + 32;
    while (v10 < *(v8 + 16))
    {
      sub_1B00D20D0(v12, v55);
      sub_1B00D20D0(v55, v54);
      static FBKSInteraction.StructuredValue.wrap(_:)(&v52, v54);
      if (v2)
      {

        __swift_destroy_boxed_opaque_existential_0(v54);
        __swift_destroy_boxed_opaque_existential_0(v55);
      }

      __swift_destroy_boxed_opaque_existential_0(v54);
      result = __swift_destroy_boxed_opaque_existential_0(v55);
      v13 = v52;
      v14 = v53;
      v56 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v49 = v52;
        result = sub_1B00D1718((v15 > 1), v16 + 1, 1);
        v13 = v49;
        v17 = v16 + 1;
        v11 = v56;
      }

      ++v10;
      *(v11 + 16) = v17;
      v18 = v11 + 24 * v16;
      *(v18 + 32) = v13;
      *(v18 + 48) = v14;
      v12 += 32;
      if (v9 == v10)
      {

        goto LABEL_36;
      }
    }

    goto LABEL_40;
  }

  sub_1B00D20D0(a1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4520, &qword_1B0151878);
  if (!swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v55[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4528, &qword_1B0151880);
    v40 = sub_1B014CC6C();
    v42 = v41;
    sub_1B00D20D0(a1, v55);
    v43 = sub_1B014CC6C();
    v45 = v44;
    sub_1B011B764();
    swift_allocError();
    *v46 = v40;
    v46[1] = v42;
    v46[2] = v43;
    v46[3] = v45;
    return swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4538, &qword_1B0151888);
  result = sub_1B014D0AC();
  v19 = 0;
  v21 = v54[0] + 64;
  v20 = *(v54[0] + 64);
  v51 = v54[0];
  v22 = 1 << *(v54[0] + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v48 = result + 64;
  v50 = result;
  if ((v23 & v20) == 0)
  {
LABEL_23:
    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v25)
      {
        v47 = result;

        *a2 = v47;
        *(a2 + 8) = 0;
        v6 = 5;
        goto LABEL_37;
      }

      v28 = *(v21 + 8 * v19);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  while (1)
  {
    v26 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_28:
    v29 = v26 | (v19 << 6);
    v30 = (*(v51 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_1B00D20D0(*(v51 + 56) + 32 * v29, v55);
    sub_1B00D20D0(v55, v54);

    static FBKSInteraction.StructuredValue.wrap(_:)(&v52, v54);
    if (v2)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v33 = v53;
    v34 = v52;
    result = v50;
    *(v48 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v35 = (v50[6] + 16 * v29);
    *v35 = v31;
    v35[1] = v32;
    v36 = v50[7] + 24 * v29;
    *v36 = v34;
    *(v36 + 16) = v33;
    v37 = v50[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_41;
    }

    v50[2] = v39;
    if (!v24)
    {
      goto LABEL_23;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v54);
  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t FBKSInteraction.StructuredValue.jsonDescription.getter()
{
  v1 = sub_1B014CC5C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1B014C84C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = sub_1B014C88C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B014C83C();
  sub_1B014C85C();
  sub_1B011B7B8();
  v11 = sub_1B014C86C();
  v13 = v12;
  sub_1B014CC4C();
  v14 = sub_1B014CC3C();
  if (!v15)
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v16 = sub_1B014CB5C();
    __swift_project_value_buffer(v16, qword_1EDAE7828);
    v17 = sub_1B014CB3C();
    v18 = sub_1B014CF4C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B00C4000, v17, v18, "Failed to encode. Will use default description", v19, 2u);
      MEMORY[0x1B271F750](v19, -1, -1);
    }

    sub_1B00DE580(v5, v6, v7);
    v14 = sub_1B014CC6C();
  }

  v20 = v14;
  sub_1B00D2024(v11, v13);

  return v20;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FBKSInteraction.StructuredValue.toSerializedJson()()
{
  v33[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B014CC5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  *&v30 = *v0;
  *(&v30 + 1) = v7;
  v31 = v8;
  v9 = &v30;
  FBKSInteraction.StructuredValue.unwrap()(v33);
  if (!v1)
  {
    v13 = sub_1B011BEB4(MEMORY[0x1E69E7CC0]);
    v32 = MEMORY[0x1E69E6530];
    *&v30 = 2;
    sub_1B00D20C0(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v13;
    sub_1B01185F4(v29, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v28;
    sub_1B00D20D0(v33, &v30);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = v15;
    sub_1B01185F4(&v30, 1635017060, 0xE400000000000000, v16);
    v17 = objc_opt_self();
    v18 = sub_1B014CB9C();

    *&v30 = 0;
    v19 = [v17 dataWithJSONObject:v18 options:1 error:&v30];

    v20 = v30;
    if (v19)
    {
      v21 = sub_1B014CA8C();
      v23 = v22;

      sub_1B014CC4C();
      v24 = sub_1B014CC3C();
      if (v25)
      {
        v5 = v24;
        v9 = v25;
        __swift_destroy_boxed_opaque_existential_0(v33);
        sub_1B00D2024(v21, v23);
      }

      else
      {
        *&v30 = v6;
        *(&v30 + 1) = v7;
        v31 = v8;
        v5 = FBKSInteraction.StructuredValue.jsonDescription.getter();
        v9 = v26;
        sub_1B00D2024(v21, v23);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }
    }

    else
    {
      v5 = v20;
      v9 = sub_1B014C9CC();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v33);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  v11 = v5;
  v12 = v9;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void FBKSInteraction.StructuredValue.unwrap()(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v4 == 1)
      {
        v5 = MEMORY[0x1E69E6530];
      }

      else
      {
        v5 = MEMORY[0x1E69E63B0];
      }

      a1[3] = v5;
      *a1 = v3;
    }

    else
    {
      a1[3] = MEMORY[0x1E69E6370];
      *a1 = v3 & 1;
    }

    return;
  }

  if (v4 == 3)
  {
    v13 = v1[1];
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = v3;
    a1[1] = v13;

    return;
  }

  v43 = *v1;
  if (v4 == 4)
  {
    v6 = *(v3 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_33:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4518, &qword_1B0151870);
      *a1 = v7;
      return;
    }

    v48 = MEMORY[0x1E69E7CC0];
    sub_1B00D1738(0, v6, 0);
    v8 = 0;
    v7 = v48;
    v9 = (v3 + 48);
    while (v8 < *(v3 + 16))
    {
      v44 = *(v9 - 2);
      v45 = *(v9 - 1);
      v46 = *v9;
      v10 = sub_1B00DE580(v44, v45, *v9);
      FBKSInteraction.StructuredValue.unwrap()(v47, v10);
      if (v2)
      {
        sub_1B00DE5AC(v44, v45, v46);

        return;
      }

      sub_1B00DE5AC(v44, v45, v46);
      v48 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B00D1738((v11 > 1), v12 + 1, 1);
        v7 = v48;
      }

      ++v8;
      *(v7 + 16) = v12 + 1;
      sub_1B00D20C0(v47, (v7 + 32 * v12 + 32));
      v9 += 24;
      v3 = v43;
      if (v6 == v8)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
  v14 = sub_1B014D0AC();
  v15 = v14;
  v16 = 0;
  v37 = v3 + 64;
  v17 = 1 << *(v3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v3 + 64);
  v20 = (v17 + 63) >> 6;
  v40 = v14 + 64;
  v41 = v14;
  v39 = v20;
  if (!v19)
  {
LABEL_23:
    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4520, &qword_1B0151878);
        *a1 = v15;
        return;
      }

      v23 = *(v37 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v42 = (v23 - 1) & v23;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v19));
    v42 = (v19 - 1) & v19;
LABEL_28:
    v24 = v21 | (v16 << 6);
    v25 = (*(v3 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v3 + 56) + 24 * v24;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);

    v32 = sub_1B00DE580(v29, v30, v31);
    FBKSInteraction.StructuredValue.unwrap()(v47, v32);
    if (v2)
    {
      break;
    }

    sub_1B00DE5AC(v29, v30, v31);
    v15 = v41;
    *(v40 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v33 = (v41[6] + 16 * v24);
    *v33 = v27;
    v33[1] = v26;
    sub_1B00D20C0(v47, (v41[7] + 32 * v24));
    v34 = v41[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_38;
    }

    v41[2] = v36;
    v19 = v42;
    v3 = v43;
    v20 = v39;
    if (!v42)
    {
      goto LABEL_23;
    }
  }

  sub_1B00DE5AC(v29, v30, v31);
}

uint64_t sub_1B010C968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v13 = *(v3 - 2);
    v14 = *(v3 - 1);
    v15 = *v3;
    if (v12 <= 2)
    {
      if (*i)
      {
        if (v12 == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_35;
          }

          sub_1B00DE5AC(*(i - 2), *(i - 1), 1);
          sub_1B00DE5AC(v13, v14, 1);
          if (v10 != v13)
          {
            return 0;
          }
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_35;
          }

          v17 = *(v3 - 2);
          sub_1B00DE5AC(*(i - 2), *(i - 1), 2);
          sub_1B00DE5AC(v13, v14, 2);
          if (*&v10 != *&v13)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_35;
        }

        sub_1B00DE5AC(*(i - 2), *(i - 1), 0);
        sub_1B00DE5AC(v13, v14, 0);
        if ((v13 ^ v10))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      if (v15 != 4)
      {
        goto LABEL_32;
      }

      sub_1B00DE580(*(v3 - 2), *(v3 - 1), 4);
      sub_1B00DE580(v10, v11, 4);
      sub_1B00DE580(v13, v14, 4);
      sub_1B00DE580(v10, v11, 4);
      v16 = sub_1B010C968(v10, v13);
      sub_1B00DE5AC(v10, v11, 4);
      sub_1B00DE5AC(v13, v14, 4);
      sub_1B00DE5AC(v13, v14, 4);
      sub_1B00DE5AC(v10, v11, 4);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15 != 5)
      {
LABEL_32:
        v20 = *(i - 2);
        goto LABEL_34;
      }

      sub_1B00DE580(*(v3 - 2), *(v3 - 1), 5);
      sub_1B00DE580(v10, v11, 5);
      sub_1B00DE580(v13, v14, 5);
      sub_1B00DE580(v10, v11, 5);
      v18 = sub_1B00D5754(v10, v13);
      sub_1B00DE5AC(v10, v11, 5);
      sub_1B00DE5AC(v13, v14, 5);
      sub_1B00DE5AC(v13, v14, 5);
      sub_1B00DE5AC(v10, v11, 5);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v15 == 3)
  {
    if (v10 == v13 && v11 == v14)
    {
      sub_1B00DE580(*(i - 2), *(i - 1), 3);
      sub_1B00DE580(v10, v11, 3);
      sub_1B00DE5AC(v10, v11, 3);
      sub_1B00DE5AC(v10, v11, 3);
    }

    else
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = sub_1B014D25C();
      sub_1B00DE580(v13, v14, 3);
      sub_1B00DE580(v10, v11, 3);
      sub_1B00DE5AC(v10, v11, 3);
      sub_1B00DE5AC(v13, v14, 3);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_6;
  }

  v21 = *(i - 1);
LABEL_34:
  sub_1B00DE580(*(i - 2), *(i - 1), *i);

LABEL_35:
  sub_1B00DE580(v13, v14, v15);
  sub_1B00DE5AC(v10, v11, v12);
  sub_1B00DE5AC(v13, v14, v15);
  sub_1B00DE5AC(v10, v11, v12);
  return 0;
}

uint64_t sub_1B010CD30(uint64_t a1)
{
  v2 = sub_1B011C08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CD6C(uint64_t a1)
{
  v2 = sub_1B011C08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CDA8(uint64_t a1)
{
  v2 = sub_1B011C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CDE4(uint64_t a1)
{
  v2 = sub_1B011C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CE20()
{
  v1 = *v0;
  v2 = 1819242338;
  v3 = 0x676E69727473;
  v4 = 0x7961727261;
  if (v1 != 4)
  {
    v4 = 0x616E6F6974636964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656765746E69;
  if (v1 != 1)
  {
    v5 = 0x656C62756F64;
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

uint64_t sub_1B010CECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0123980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B010CF00(uint64_t a1)
{
  v2 = sub_1B011BFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CF3C(uint64_t a1)
{
  v2 = sub_1B011BFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CF78(uint64_t a1)
{
  v2 = sub_1B011C038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CFB4(uint64_t a1)
{
  v2 = sub_1B011C038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CFF0(uint64_t a1)
{
  v2 = sub_1B011C134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D02C(uint64_t a1)
{
  v2 = sub_1B011C134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010D068(uint64_t a1)
{
  v2 = sub_1B011C188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D0A4(uint64_t a1)
{
  v2 = sub_1B011C188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010D0E0(uint64_t a1)
{
  v2 = sub_1B011C0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D11C(uint64_t a1)
{
  v2 = sub_1B011C0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.StructuredValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4548, &qword_1B01518A0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4550, &qword_1B01518A8);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4558, &qword_1B01518B0);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4560, &qword_1B01518B8);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4568, &qword_1B01518C0);
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4570, &qword_1B01518C8);
  v39 = *(v19 - 8);
  v20 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4578, &qword_1B01518D0);
  v55 = *(v23 - 8);
  v56 = v23;
  v24 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - v25;
  v27 = v1[1];
  v54 = *v1;
  v38 = v27;
  v28 = *(v1 + 16);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011BFE4();
  sub_1B014D35C();
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v57) = 3;
      sub_1B011C0E0();
      v35 = v45;
      v31 = v56;
      v30 = v26;
      sub_1B014D19C();
      v32 = v47;
      sub_1B014D1DC();
      v36 = v46;
    }

    else
    {
      v30 = v26;
      if (v28 == 4)
      {
        LOBYTE(v57) = 4;
        sub_1B011C08C();
        v35 = v48;
        v31 = v56;
        sub_1B014D19C();
        v57 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4588, &qword_1B01518E0);
        sub_1B011C308(&qword_1EDAE6EE0, sub_1B011B7B8);
        v32 = v50;
        sub_1B014D21C();
        v36 = v49;
      }

      else
      {
        LOBYTE(v57) = 5;
        sub_1B011C038();
        v35 = v51;
        v31 = v56;
        sub_1B014D19C();
        v57 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4580, &qword_1B01518D8);
        sub_1B011C230(&qword_1EDAE7060, sub_1B011B7B8);
        v32 = v53;
        sub_1B014D21C();
        v36 = v52;
      }
    }

    goto LABEL_12;
  }

  if (v28)
  {
    v30 = v26;
    if (v28 == 1)
    {
      LOBYTE(v57) = 1;
      sub_1B011C188();
      v31 = v56;
      sub_1B014D19C();
      v32 = v41;
      sub_1B014D20C();
      v33 = *(v40 + 8);
      v34 = v18;
LABEL_13:
      v33(v34, v32);
      return (*(v55 + 8))(v30, v31);
    }

    LOBYTE(v57) = 2;
    sub_1B011C134();
    v35 = v42;
    v31 = v56;
    sub_1B014D19C();
    v32 = v44;
    sub_1B014D1FC();
    v36 = v43;
LABEL_12:
    v33 = *(v36 + 8);
    v34 = v35;
    goto LABEL_13;
  }

  LOBYTE(v57) = 0;
  sub_1B011C1DC();
  v31 = v56;
  v30 = v26;
  sub_1B014D19C();
  sub_1B014D1EC();
  (*(v39 + 8))(v22, v19);
  return (*(v55 + 8))(v30, v31);
}

uint64_t FBKSInteraction.StructuredValue.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = *(v1 + 8);
      MEMORY[0x1B271EE00](3);

      return sub_1B014CCAC();
    }

    else if (v4 == 4)
    {
      MEMORY[0x1B271EE00](4);

      return sub_1B0118D5C(a1, v3);
    }

    else
    {
      MEMORY[0x1B271EE00](5);

      return sub_1B0118B04(a1, v3);
    }
  }

  else if (*(v1 + 16))
  {
    if (v4 == 1)
    {
      MEMORY[0x1B271EE00](1);
      return MEMORY[0x1B271EE00](v3);
    }

    else
    {
      MEMORY[0x1B271EE00](2);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      return MEMORY[0x1B271EE20](v7);
    }
  }

  else
  {
    MEMORY[0x1B271EE00](0);
    return sub_1B014D31C();
  }
}

uint64_t FBKSInteraction.StructuredValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v3);
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.StructuredValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45A8, &qword_1B01518E8);
  v78 = *(v76 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v82 = &v64[-v4];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45B0, &qword_1B01518F0);
  v77 = *(v75 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v64[-v6];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45B8, &qword_1B01518F8);
  v74 = *(v71 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v81 = &v64[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45C0, &qword_1B0151900);
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v64[-v11];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45C8, &qword_1B0151908);
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v14 = &v64[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45D0, &qword_1B0151910);
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45D8, &qword_1B0151918);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v64[-v22];
  v24 = a1[3];
  v25 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B011BFE4();
  v26 = v84;
  sub_1B014D34C();
  v27 = v26;
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v28 = v18;
  v66 = v15;
  v29 = v14;
  v30 = v81;
  v31 = v82;
  v67 = v20;
  v32 = v83;
  v84 = v23;
  v33 = sub_1B014D18C();
  v34 = (2 * *(v33 + 16)) | 1;
  v87 = v33;
  v88 = v33 + 32;
  v89 = 0;
  v90 = v34;
  v35 = sub_1B00D4A9C();
  if (v35 == 6 || v89 != v90 >> 1)
  {
    v37 = sub_1B014D05C();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
    *v39 = &type metadata for FBKSInteraction.StructuredValue;
    v41 = v84;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v67 + 8))(v41, v19);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v65 = v35;
  if (v35 > 2u)
  {
    v43 = v32;
    if (v35 == 3)
    {
      LOBYTE(v86) = 3;
      sub_1B011C0E0();
      v49 = v84;
      sub_1B014D0EC();
      v50 = v71;
      v51 = sub_1B014D13C();
      v68 = 0;
      v63 = v51;
      v27 = v60;
      (*(v74 + 8))(v30, v50);
      (*(v67 + 8))(v49, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v84;
      if (v35 == 4)
      {
        LOBYTE(v86) = 4;
        sub_1B011C08C();
        v45 = v79;
        sub_1B014D0EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4588, &qword_1B01518E0);
        sub_1B011C308(&qword_1EDAE6AB0, sub_1B011C2B4);
        v46 = v75;
        sub_1B014D17C();
        v68 = 0;
        (*(v77 + 8))(v45, v46);
      }

      else
      {
        LOBYTE(v86) = 5;
        sub_1B011C038();
        sub_1B014D0EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4580, &qword_1B01518D8);
        sub_1B011C230(&qword_1EDAE6B08, sub_1B011C2B4);
        v56 = v76;
        sub_1B014D17C();
        v68 = 0;
        (*(v78 + 8))(v31, v56);
      }

      (*(v67 + 8))(v44, v19);
      swift_unknownObjectRelease();
      v63 = v86;
    }

    v32 = v43;
  }

  else if (v35)
  {
    if (v35 == 1)
    {
      LOBYTE(v86) = 1;
      sub_1B011C188();
      sub_1B014D0EC();
      v36 = v67;
      v59 = v70;
      v27 = 0;
      v63 = sub_1B014D16C();
      v68 = 0;
      (*(v69 + 8))(v29, v59);
      (*(v36 + 8))(v84, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v86) = 2;
      sub_1B011C134();
      v52 = v80;
      v53 = v84;
      sub_1B014D0EC();
      v54 = v67;
      v55 = v73;
      sub_1B014D15C();
      v27 = 0;
      v62 = v61;
      v68 = 0;
      (*(v72 + 8))(v52, v55);
      (*(v54 + 8))(v53, v19);
      swift_unknownObjectRelease();
      v63 = v62;
    }
  }

  else
  {
    LOBYTE(v86) = 0;
    sub_1B011C1DC();
    v47 = v28;
    v48 = v84;
    sub_1B014D0EC();
    v57 = v66;
    v58 = sub_1B014D14C();
    v27 = 0;
    (*(v68 + 8))(v47, v57);
    (*(v67 + 8))(v48, v19);
    swift_unknownObjectRelease();
    v68 = 0;
    v63 = v58 & 1;
  }

  *v32 = v63;
  *(v32 + 8) = v27;
  *(v32 + 16) = v65;
  return __swift_destroy_boxed_opaque_existential_0(v85);
}

uint64_t sub_1B010E660()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v3);
  return sub_1B014D33C();
}

uint64_t sub_1B010E6B8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v3);
  return sub_1B014D33C();
}

unint64_t FBKSInteraction.Content.description.getter()
{
  v1 = v0;
  v2 = sub_1B014CA4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKSInteraction.Content(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B011A8C4(v1, v10, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v10;
      v14 = v10[1];
      sub_1B00D2024(v10[2], v10[3]);
      result = v13;
      break;
    case 2u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 1954047316;
      break;
    case 3u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x6567616D49;
      break;
    case 4u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x6F69647541;
      break;
    case 5u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x74697277646E6148;
      break;
    case 6u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x686374656B53;
      break;
    case 7u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x65542B6567616D49;
      break;
    case 8u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x542B686374656B53;
      break;
    case 9u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x6F65646956;
      break;
    case 0xAu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x6320656372756F53;
      break;
    case 0xBu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x7275746375727453;
      break;
    case 0xCu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0xD000000000000010;
      break;
    case 0xDu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0xD000000000000011;
      break;
    case 0xEu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x6163696669746F4ELL;
      break;
    case 0xFu:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x73656D206C69614DLL;
      break;
    case 0x10u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 0x696A6F6D45;
      break;
    case 0x11u:
      sub_1B011A92C(v10, type metadata accessor for FBKSInteraction.Content);
      result = 1280136264;
      break;
    default:
      (*(v3 + 32))(v6, v10, v2);
      v11 = sub_1B014C9EC();
      (*(v3 + 8))(v6, v2);
      result = v11;
      break;
  }

  return result;
}

uint64_t FBKSInteraction.Content.debugDescription.getter()
{
  v3 = type metadata accessor for FBKSInteraction.Content(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v0, v6, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *(v6 + 8);
      v12 = *(v6 + 16);
      v13 = *(v6 + 24);

      v69 = FBKSInteraction.Content.description.getter();
      v70 = v28;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v24 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_80;
      }

      if (!v24)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      __break(1u);
      goto LABEL_39;
    case 2u:
      goto LABEL_21;
    case 3u:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v22;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v17 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_72;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_28:
      v12 = *v6;
      v13 = *(v6 + 8);
      v2 = *(v6 + 16);
      v1 = *(v6 + 24);
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1B014D01C();

      v69 = 0x7A69532061746144;
      v70 = 0xEB00000000203A65;
      v23 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_76;
      }

      if (!v23)
      {
        goto LABEL_55;
      }

      LODWORD(v24) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_109;
      }

      __break(1u);
LABEL_33:
      v25 = FBKSInteraction.Content.description.getter();
      v26 = sub_1B014CA4C();
      (*(*(v26 - 8) + 8))(v6, v26);
      return v25;
    case 4u:
      goto LABEL_8;
    case 5u:
LABEL_39:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v29;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v17 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_84;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_44:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v30;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v17 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_88;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_49:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v31;
      result = MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v17 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_92;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      goto LABEL_115;
    case 6u:
      goto LABEL_49;
    case 7u:
      goto LABEL_28;
    case 8u:
      v12 = *v6;
      v13 = *(v6 + 8);
      v2 = *(v6 + 16);
      v1 = *(v6 + 24);
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1B014D01C();

      v69 = 0x7A69532061746144;
      v70 = 0xEB00000000203A65;
      v39 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        v24 = 0;
        if (v39 == 2)
        {
          v60 = *(v12 + 16);
          v59 = *(v12 + 24);
          v42 = __OFSUB__(v59, v60);
          v24 = v59 - v60;
          if (v42)
          {
            __break(1u);
            goto LABEL_101;
          }
        }

        goto LABEL_110;
      }

      if (!v39)
      {
LABEL_55:
        v24 = BYTE6(v13);
        goto LABEL_110;
      }

      LODWORD(v24) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
LABEL_109:
        v24 = v24;
        goto LABEL_110;
      }

      goto LABEL_116;
    case 9u:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v20;
      MEMORY[0x1B271E7F0](0x203A657A695320, 0xE700000000000000);
      v15 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_68;
      }

      if (!v15)
      {
        goto LABEL_51;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_21:
      v7 = *v6;
      v8 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v21;
      v10 = 0x3A65756C6176203ALL;
      v11 = 0xE900000000000020;
LABEL_22:
      MEMORY[0x1B271E7F0](v10, v11);
      MEMORY[0x1B271E7F0](v7, v8);

      return v69;
    case 0xAu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
      v7 = *v6;
      v8 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v9;
      v10 = 8250;
      v11 = 0xE200000000000000;
      goto LABEL_22;
    case 0xBu:
      v32 = *v6;
      v33 = *(v6 + 8);
      v34 = *(v6 + 16);
      v72 = FBKSInteraction.Content.description.getter();
      v73 = v35;
      MEMORY[0x1B271E7F0](8250, 0xE200000000000000);
      v69 = v32;
      v70 = v33;
      v71 = v34;
      v36 = FBKSInteraction.StructuredValue.jsonDescription.getter();
      v38 = v37;
      sub_1B00DE5AC(v32, v33, v34);
      MEMORY[0x1B271E7F0](v36, v38);

      return v72;
    case 0xCu:
      v12 = *v6;
      v13 = *(v6 + 8);
      v1 = *(v6 + 16);
      v2 = *(v6 + 24);
      v6 = *(v6 + 32);
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1B014D01C();

      v72 = 0x7A69532061746144;
      v73 = 0xEB00000000203A65;
      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        v15 = 0;
        if (v14 != 2 || (v41 = *(v12 + 16), v40 = *(v12 + 24), v42 = __OFSUB__(v40, v41), v15 = v40 - v41, !v42))
        {
LABEL_103:
          v69 = v15;
          v61 = sub_1B014D22C();
          MEMORY[0x1B271E7F0](v61);

          MEMORY[0x1B271E7F0](0x746375727453202CLL, 0xEE00203A64657275);
          v69 = v1;
          v70 = v2;
          v71 = v6;
          v62 = FBKSInteraction.StructuredValue.jsonDescription.getter();
          v64 = v63;
          sub_1B00DE5AC(v1, v2, v6);
          MEMORY[0x1B271E7F0](v62, v64);

          sub_1B00D2024(v12, v13);
          return v72;
        }

        __break(1u);
        goto LABEL_60;
      }

      if (!v14)
      {
LABEL_15:
        v15 = BYTE6(v13);
        goto LABEL_103;
      }

      LODWORD(v15) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_102;
      }

      __break(1u);
LABEL_8:
      v12 = *v6;
      v13 = *(v6 + 8);
      v69 = FBKSInteraction.Content.description.getter();
      v70 = v16;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v15 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
LABEL_60:
        if (v15 != 2)
        {
LABEL_96:
          v17 = 0;
          goto LABEL_107;
        }

        v19 = *(v12 + 16);
        v43 = *(v12 + 24);
        v42 = __OFSUB__(v43, v19);
        v17 = v43 - v19;
        if (!v42)
        {
          goto LABEL_107;
        }

        __break(1u);
LABEL_64:
        v15 = 0;
        if (v19 != 2)
        {
          goto LABEL_103;
        }

        v45 = *(v12 + 16);
        v44 = *(v12 + 24);
        v42 = __OFSUB__(v44, v45);
        v15 = v44 - v45;
        if (!v42)
        {
          goto LABEL_103;
        }

        __break(1u);
LABEL_68:
        if (v15 == 2)
        {
          v47 = *(v12 + 16);
          v46 = *(v12 + 24);
          v42 = __OFSUB__(v46, v47);
          v17 = v46 - v47;
          if (!v42)
          {
            goto LABEL_107;
          }

          __break(1u);
LABEL_72:
          if (v17 == 2)
          {
            v23 = *(v12 + 16);
            v48 = *(v12 + 24);
            v42 = __OFSUB__(v48, v23);
            v17 = v48 - v23;
            if (!v42)
            {
              goto LABEL_107;
            }

            __break(1u);
LABEL_76:
            v24 = 0;
            if (v23 != 2 || (v50 = *(v12 + 16), v49 = *(v12 + 24), v42 = __OFSUB__(v49, v50), v24 = v49 - v50, !v42))
            {
LABEL_110:
              v72 = v24;
              v67 = sub_1B014D22C();
              MEMORY[0x1B271E7F0](v67);

              MEMORY[0x1B271E7F0](0x203A74786554202CLL, 0xE800000000000000);
              v65 = v2;
              v66 = v1;
LABEL_111:
              MEMORY[0x1B271E7F0](v65, v66);

              sub_1B00D2024(v12, v13);
              return v69;
            }

            __break(1u);
LABEL_80:
            if (v24 == 2)
            {
              v52 = *(v12 + 16);
              v51 = *(v12 + 24);
              v42 = __OFSUB__(v51, v52);
              v17 = v51 - v52;
              if (!v42)
              {
                goto LABEL_107;
              }

              __break(1u);
LABEL_84:
              if (v17 == 2)
              {
                v54 = *(v12 + 16);
                v53 = *(v12 + 24);
                v42 = __OFSUB__(v53, v54);
                v17 = v53 - v54;
                if (!v42)
                {
                  goto LABEL_107;
                }

                __break(1u);
LABEL_88:
                if (v17 == 2)
                {
                  v56 = *(v12 + 16);
                  v55 = *(v12 + 24);
                  v42 = __OFSUB__(v55, v56);
                  v17 = v55 - v56;
                  if (!v42)
                  {
                    goto LABEL_107;
                  }

                  __break(1u);
LABEL_92:
                  if (v17 == 2)
                  {
                    v58 = *(v12 + 16);
                    v57 = *(v12 + 24);
                    v42 = __OFSUB__(v57, v58);
                    v17 = v57 - v58;
                    if (!v42)
                    {
                      goto LABEL_107;
                    }

                    __break(1u);
                  }
                }
              }
            }
          }
        }

        goto LABEL_96;
      }

      if (!v15)
      {
LABEL_51:
        v17 = BYTE6(v13);
LABEL_107:
        v72 = v17;
        v65 = sub_1B014D22C();
        goto LABEL_111;
      }

      LODWORD(v17) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
LABEL_106:
        v17 = v17;
        goto LABEL_107;
      }

      __break(1u);
LABEL_13:
      v12 = *v6;
      v13 = *(v6 + 8);
      v1 = *(v6 + 16);
      v2 = *(v6 + 24);
      LOBYTE(v6) = *(v6 + 32);
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1B014D01C();

      v72 = 0x7A69532061746144;
      v73 = 0xEB00000000203A65;
      v19 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        goto LABEL_64;
      }

      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_101:
      LODWORD(v15) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
LABEL_102:
        v15 = v15;
        goto LABEL_103;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      return result;
    case 0xDu:
      goto LABEL_13;
    case 0x10u:
      goto LABEL_44;
    default:
      goto LABEL_33;
  }
}

uint64_t sub_1B010F40C()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.Content(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v1, v5, type metadata accessor for FBKSInteraction.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload <= 11)
    {
      if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

      v8 = *v5;
      v9 = *(v5 + 1);
      v10 = *(v5 + 3);
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 12 || EnumCaseMultiPayload == 13)
    {
      v8 = *v5;
      v9 = *(v5 + 1);
      sub_1B00DE5AC(*(v5 + 2), *(v5 + 3), v5[32]);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 16)
    {
      goto LABEL_9;
    }

LABEL_16:
    v8 = *v5;
    v9 = *(v5 + 1);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 3)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 3)
    {
LABEL_9:
      sub_1B011A92C(v5, type metadata accessor for FBKSInteraction.Content);
      return 0;
    }

    goto LABEL_16;
  }

  v11 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
LABEL_20:

LABEL_21:
  v12 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v12)
    {
      sub_1B00D2024(v8, v9);
      return BYTE6(v9);
    }

    goto LABEL_28;
  }

  if (v12 != 2)
  {
    sub_1B00D2024(v8, v9);
    return 0;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  sub_1B00D2024(v8, v9);
  result = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_28:
    result = sub_1B00D2024(v8, v9);
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v8) - v8;
    }
  }

  return result;
}

uint64_t sub_1B010F60C()
{
  v0 = sub_1B014C9DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B50, &qword_1B014F330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49F0, &qword_1B0156530);
  v9 = *(type metadata accessor for FBKSInteraction.Content(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B01515B0;
  v13 = v12 + v11;
  v14 = sub_1B014CA4C();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1B014CA3C();
  swift_storeEnumTagMultiPayload();
  v15 = (v13 + v10);
  *v15 = 1954047348;
  v15[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v35[0] = xmmword_1B0150250;
  *(v13 + 2 * v10) = xmmword_1B0150250;
  swift_storeEnumTagMultiPayload();
  *(v13 + 3 * v10) = v35[0];
  swift_storeEnumTagMultiPayload();
  *(v13 + 4 * v10) = v35[0];
  swift_storeEnumTagMultiPayload();
  *(v13 + 5 * v10) = v35[0];
  swift_storeEnumTagMultiPayload();
  v16 = v13 + 6 * v10;
  *v16 = v35[0];
  *(v16 + 16) = 1954047348;
  *(v16 + 24) = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v17 = v13 + 7 * v10;
  *v17 = v35[0];
  *(v17 + 16) = 1954047348;
  *(v17 + 24) = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *(v13 + 8 * v10) = v35[0];
  swift_storeEnumTagMultiPayload();
  v18 = (v13 + 9 * v10);
  *v18 = 1954047348;
  v18[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1B0122CF0(&unk_1F25D5CF0);
  sub_1B00DE9C0(&unk_1F25D5D10, &qword_1EB6C49F8, &qword_1B0156538);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A00, &qword_1B0156540);
  v39 = v20;
  v38[0] = v19;
  static FBKSInteraction.StructuredValue.wrap(_:)(v38, &v36);
  v21 = v13 + 10 * v10;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v22 = v37;
  *v21 = v36;
  *(v21 + 16) = v22;
  swift_storeEnumTagMultiPayload();
  v23 = sub_1B0122CF0(&unk_1F25D5D30);
  sub_1B00DE9C0(&unk_1F25D5D50, &qword_1EB6C49F8, &qword_1B0156538);
  v39 = v20;
  v38[0] = v23;
  static FBKSInteraction.StructuredValue.wrap(_:)(v38, &v36);
  v24 = v13 + 11 * v10;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v25 = v37;
  v26 = v36;
  *v24 = v35[0];
  *(v24 + 16) = v26;
  *(v24 + 32) = v25;
  swift_storeEnumTagMultiPayload();
  v27 = sub_1B0122CF0(&unk_1F25D5D70);
  sub_1B00DE9C0(&unk_1F25D5D90, &qword_1EB6C49F8, &qword_1B0156538);
  v39 = v20;
  v38[0] = v27;
  static FBKSInteraction.StructuredValue.wrap(_:)(v38, &v36);
  v28 = v13 + 12 * v10;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v29 = v37;
  v30 = v36;
  *v28 = v35[0];
  *(v28 + 16) = v30;
  *(v28 + 32) = v29;
  swift_storeEnumTagMultiPayload();
  v31 = (v13 + 13 * v10);
  *v31 = 1954047348;
  v31[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v32 = (v13 + 14 * v10);
  *v32 = 1954047348;
  v32[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *(v13 + 15 * v10) = v35[0];
  swift_storeEnumTagMultiPayload();
  v33 = (v13 + 16 * v10);
  *v33 = 1954047348;
  v33[1] = 0xE400000000000000;
  result = swift_storeEnumTagMultiPayload();
  qword_1EB6C4180 = v12;
  return result;
}

uint64_t static FBKSInteraction.Content.allCases.getter()
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static FBKSInteraction.Content.allCases.setter(uint64_t a1)
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB6C4180 = a1;
}

uint64_t (*static FBKSInteraction.Content.allCases.modify())()
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B010FD30@<X0>(void *a1@<X8>)
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB6C4180;
}

uint64_t sub_1B010FDB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB6C3A90;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB6C4180 = v1;
}

unint64_t sub_1B010FE3C(char a1)
{
  result = 1701603686;
  switch(a1)
  {
    case 1:
      result = 0x656C69665FLL;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x6567616D69;
      break;
    case 4:
      result = 0x6F69647561;
      break;
    case 5:
      result = 0x74697277646E6168;
      break;
    case 6:
      result = 0x686374656B73;
      break;
    case 7:
      result = 0x7865546567616D69;
      break;
    case 8:
      result = 0x6554686374656B73;
      break;
    case 9:
      result = 0x6F65646976;
      break;
    case 10:
      result = 0x6F43656372756F73;
      break;
    case 11:
      result = 0x7275746375727473;
      break;
    case 12:
      result = 0x7274536567616D69;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6163696669746F6ELL;
      break;
    case 15:
      result = 0x7373654D6C69616DLL;
      break;
    case 16:
      result = 0x696A6F6D65;
      break;
    case 17:
      result = 1819112552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0110014(uint64_t a1)
{
  v2 = sub_1B011C86C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110050(uint64_t a1)
{
  v2 = sub_1B011C86C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0123B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B01100C8(uint64_t a1)
{
  v2 = sub_1B011C380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110104(uint64_t a1)
{
  v2 = sub_1B011C380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110140(uint64_t a1)
{
  v2 = sub_1B011C428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011017C(uint64_t a1)
{
  v2 = sub_1B011C428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01101C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0110250(uint64_t a1)
{
  v2 = sub_1B011C9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011028C(uint64_t a1)
{
  v2 = sub_1B011C9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01102C8(uint64_t a1)
{
  v2 = sub_1B011C818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110304(uint64_t a1)
{
  v2 = sub_1B011C818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110340(uint64_t a1)
{
  v2 = sub_1B011C3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011037C(uint64_t a1)
{
  v2 = sub_1B011C3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01103B8(uint64_t a1)
{
  v2 = sub_1B011C8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01103F4(uint64_t a1)
{
  v2 = sub_1B011C8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110430()
{
  if (*v0)
  {
    result = 0x7275746375727473;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_1B011046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B011054C(uint64_t a1)
{
  v2 = sub_1B011C5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110588(uint64_t a1)
{
  v2 = sub_1B011C5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01105C4()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_1B01105F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B01106CC(uint64_t a1)
{
  v2 = sub_1B011C770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110708(uint64_t a1)
{
  v2 = sub_1B011C770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110744(uint64_t a1)
{
  v2 = sub_1B011C4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110780(uint64_t a1)
{
  v2 = sub_1B011C4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01107BC(uint64_t a1)
{
  v2 = sub_1B011C524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01107F8(uint64_t a1)
{
  v2 = sub_1B011C524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110834(uint64_t a1)
{
  v2 = sub_1B011C7C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110870(uint64_t a1)
{
  v2 = sub_1B011C7C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01108AC()
{
  if (*v0)
  {
    result = 0x7275746375727473;
  }

  else
  {
    result = 0x686374656B73;
  }

  *v0;
  return result;
}

uint64_t sub_1B01108E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374656B73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B01109C8(uint64_t a1)
{
  v2 = sub_1B011C578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110A04(uint64_t a1)
{
  v2 = sub_1B011C578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110A40()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x686374656B73;
  }

  *v0;
  return result;
}

uint64_t sub_1B0110A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374656B73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0110B48(uint64_t a1)
{
  v2 = sub_1B011C71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110B84(uint64_t a1)
{
  v2 = sub_1B011C71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110BC0(uint64_t a1)
{
  v2 = sub_1B011C674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110BFC(uint64_t a1)
{
  v2 = sub_1B011C674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110C38(uint64_t a1)
{
  v2 = sub_1B011C620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110C74(uint64_t a1)
{
  v2 = sub_1B011C620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110CB0(uint64_t a1)
{
  v2 = sub_1B011C914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110CEC(uint64_t a1)
{
  v2 = sub_1B011C914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110D28(uint64_t a1)
{
  v2 = sub_1B011C6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110D64(uint64_t a1)
{
  v2 = sub_1B011C6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110DA0()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B0110DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0110EA0(uint64_t a1)
{
  v2 = sub_1B011C968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110EDC(uint64_t a1)
{
  v2 = sub_1B011C968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.Content.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45E0, &qword_1B0151920);
  v177 = *(v2 - 8);
  v178 = v2;
  v3 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v176 = &v124 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45E8, &qword_1B0151928);
  v174 = *(v5 - 8);
  v175 = v5;
  v6 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v124 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45F0, &qword_1B0151930);
  v169 = *(v171 - 8);
  v8 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v124 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45F8, &qword_1B0151938);
  v163 = *(v165 - 8);
  v10 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v124 - v11;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4600, &qword_1B0151940);
  v170 = *(v172 - 8);
  v12 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v124 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4608, &qword_1B0151948);
  v164 = *(v166 - 8);
  v14 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v124 - v15;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4610, &qword_1B0151950);
  v159 = *(v160 - 8);
  v16 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v124 - v17;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4618, &qword_1B0151958);
  v154 = *(v156 - 8);
  v18 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v153 = &v124 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4620, &qword_1B0151960);
  v149 = *(v151 - 8);
  v20 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v124 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4628, &qword_1B0151968);
  v155 = *(v157 - 8);
  v22 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v152 = &v124 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4630, &qword_1B0151970);
  v148 = *(v150 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v124 - v25;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4638, &qword_1B0151978);
  v144 = *(v145 - 8);
  v26 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v124 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4640, &qword_1B0151980);
  v141 = *(v142 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v124 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4648, &qword_1B0151988);
  v138 = *(v139 - 8);
  v30 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v124 - v31;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4650, &qword_1B0151990);
  v135 = *(v136 - 8);
  v32 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v124 - v33;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4658, &qword_1B0151998);
  v130 = *(v131 - 8);
  v34 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v124 - v35;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4660, &qword_1B01519A0);
  v132 = *(v133 - 8);
  v36 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v124 - v37;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4668, &qword_1B01519A8);
  v126 = *(v127 - 8);
  v38 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v40 = &v124 - v39;
  v41 = sub_1B014CA4C();
  v125 = *(v41 - 8);
  v42 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FBKSInteraction.Content(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v124 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4670, &qword_1B01519B0);
  v50 = *(v49 - 8);
  v182 = v49;
  v183 = v50;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v124 - v52;
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011C380();
  v181 = v53;
  sub_1B014D35C();
  sub_1B011A8C4(v179, v48, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v109 = *v48;
      v108 = *(v48 + 1);
      v100 = *(v48 + 2);
      v99 = *(v48 + 3);
      LOBYTE(v184) = 1;
      sub_1B011C968();
      v110 = v129;
      v112 = v181;
      v111 = v182;
      sub_1B014D19C();
      LOBYTE(v184) = 0;
      v113 = v133;
      v114 = v180;
      sub_1B014D1DC();
      if (!v114)
      {

        v184 = v100;
        v185 = v99;
        v188 = 1;
        sub_1B011C47C();
        sub_1B014D21C();
        (*(v132 + 8))(v110, v113);
        (*(v183 + 8))(v112, v111);
        return sub_1B00D2024(v100, v99);
      }

      sub_1B00D2024(v100, v99);
      (*(v132 + 8))(v110, v113);
      return (*(v183 + 8))(v112, v111);
    case 2u:
      v95 = *v48;
      v94 = *(v48 + 1);
      LOBYTE(v184) = 2;
      sub_1B011C914();
      v69 = v128;
      v71 = v181;
      v70 = v182;
      sub_1B014D19C();
      v72 = v131;
      sub_1B014D1DC();

      v73 = &v162;
      goto LABEL_26;
    case 3u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 3;
      sub_1B011C8C0();
      v62 = v134;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v136;
      sub_1B014D21C();
      v84 = &v167;
      goto LABEL_23;
    case 4u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 4;
      sub_1B011C86C();
      v62 = v137;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v139;
      sub_1B014D21C();
      v84 = &v170;
      goto LABEL_23;
    case 5u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 5;
      sub_1B011C818();
      v62 = v140;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v142;
      sub_1B014D21C();
      v84 = &v173;
      goto LABEL_23;
    case 6u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 6;
      sub_1B011C7C4();
      v62 = v143;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v145;
      sub_1B014D21C();
      v84 = &v176;
      goto LABEL_23;
    case 7u:
      v100 = *v48;
      v99 = *(v48 + 1);
      v101 = *(v48 + 3);
      v179 = *(v48 + 2);
      LOBYTE(v184) = 7;
      sub_1B011C770();
      v102 = v146;
      v104 = v181;
      v103 = v182;
      sub_1B014D19C();
      v184 = v100;
      v185 = v99;
      v188 = 0;
      sub_1B011C47C();
      v105 = v150;
      v106 = v180;
      sub_1B014D21C();
      if (v106)
      {

        v107 = &v180;
        goto LABEL_31;
      }

      LOBYTE(v184) = 1;
      sub_1B014D1DC();
      sub_1B00D2024(v100, v99);

      v123 = &v180;
      goto LABEL_41;
    case 8u:
      v100 = *v48;
      v99 = *(v48 + 1);
      v120 = *(v48 + 3);
      v179 = *(v48 + 2);
      LOBYTE(v184) = 8;
      sub_1B011C71C();
      v102 = v152;
      v104 = v181;
      v103 = v182;
      sub_1B014D19C();
      v184 = v100;
      v185 = v99;
      v188 = 0;
      sub_1B011C47C();
      v105 = v157;
      v121 = v180;
      sub_1B014D21C();
      if (v121)
      {

        v107 = &v187;
LABEL_31:
        (*(*(v107 - 32) + 8))(v102, v105);
        (*(v183 + 8))(v104, v103);
        return sub_1B00D2024(v100, v99);
      }

      else
      {
        LOBYTE(v184) = 1;
        sub_1B014D1DC();
        sub_1B00D2024(v100, v99);

        v123 = &v187;
LABEL_41:
        (*(*(v123 - 32) + 8))(v102, v105);
        return (*(v183 + 8))(v104, v103);
      }

    case 9u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 9;
      sub_1B011C6C8();
      v62 = v147;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v151;
      sub_1B014D21C();
      v84 = &v181;
LABEL_23:
      v66 = *(v84 - 32);
      goto LABEL_24;
    case 0xAu:
      v119 = *v48;
      v118 = *(v48 + 1);
      LOBYTE(v184) = 10;
      sub_1B011C674();
      v69 = v153;
      v71 = v181;
      v70 = v182;
      sub_1B014D19C();
      v72 = v156;
      sub_1B014D1DC();

      v73 = &v186;
      goto LABEL_26;
    case 0xBu:
      v74 = *v48;
      v75 = *(v48 + 1);
      v76 = v48[16];
      LOBYTE(v184) = 11;
      sub_1B011C620();
      v77 = v158;
      v79 = v181;
      v78 = v182;
      sub_1B014D19C();
      v184 = v74;
      v185 = v75;
      v186 = v76;
      sub_1B011B7B8();
      v80 = v160;
      sub_1B014D21C();
      (*(v159 + 8))(v77, v80);
      (*(v183 + 8))(v79, v78);
      v81 = v74;
      v82 = v75;
      v83 = v76;
      return sub_1B00DE5AC(v81, v82, v83);
    case 0xCu:
      v86 = *v48;
      v85 = *(v48 + 1);
      v87 = *(v48 + 2);
      v178 = *(v48 + 3);
      LODWORD(v179) = v48[32];
      LOBYTE(v184) = 12;
      sub_1B011C5CC();
      v88 = v162;
      v90 = v181;
      v89 = v182;
      sub_1B014D19C();
      v184 = v86;
      v185 = v85;
      v188 = 0;
      sub_1B011C47C();
      v91 = v166;
      v92 = v180;
      sub_1B014D21C();
      if (v92)
      {
        sub_1B00DE5AC(v87, v178, v179);
        v93 = v164;
        goto LABEL_21;
      }

      v184 = v87;
      v185 = v178;
      v186 = v179;
      v188 = 1;
      sub_1B011B7B8();
      sub_1B014D21C();
      sub_1B00D2024(v86, v85);
      v122 = v164;
      goto LABEL_37;
    case 0xDu:
      v86 = *v48;
      v85 = *(v48 + 1);
      v87 = *(v48 + 2);
      v178 = *(v48 + 3);
      LODWORD(v179) = v48[32];
      LOBYTE(v184) = 13;
      sub_1B011C578();
      v88 = v168;
      v90 = v181;
      v89 = v182;
      sub_1B014D19C();
      v184 = v86;
      v185 = v85;
      v188 = 0;
      sub_1B011C47C();
      v91 = v172;
      v117 = v180;
      sub_1B014D21C();
      if (v117)
      {
        sub_1B00DE5AC(v87, v178, v179);
        v93 = v170;
LABEL_21:
        (*(v93 + 8))(v88, v91);
        (*(v183 + 8))(v90, v89);
        return sub_1B00D2024(v86, v85);
      }

      else
      {
        v184 = v87;
        v185 = v178;
        v186 = v179;
        v188 = 1;
        sub_1B011B7B8();
        sub_1B014D21C();
        sub_1B00D2024(v86, v85);
        v122 = v170;
LABEL_37:
        (*(v122 + 8))(v88, v91);
        (*(v183 + 8))(v90, v89);
        v81 = v87;
        v82 = v178;
        v83 = v179;
        return sub_1B00DE5AC(v81, v82, v83);
      }

    case 0xEu:
      v68 = *v48;
      v67 = *(v48 + 1);
      LOBYTE(v184) = 14;
      sub_1B011C524();
      v69 = v161;
      v71 = v181;
      v70 = v182;
      sub_1B014D19C();
      v72 = v165;
      sub_1B014D1DC();

      v73 = &v189;
LABEL_26:
      v98 = *(v73 - 32);
      goto LABEL_27;
    case 0xFu:
      v97 = *v48;
      v96 = *(v48 + 1);
      LOBYTE(v184) = 15;
      sub_1B011C4D0();
      v69 = v167;
      v71 = v181;
      v70 = v182;
      sub_1B014D19C();
      v72 = v171;
      sub_1B014D1DC();

      v98 = v169;
      goto LABEL_27;
    case 0x10u:
      v60 = *v48;
      v61 = *(v48 + 1);
      LOBYTE(v184) = 16;
      sub_1B011C428();
      v62 = v173;
      v64 = v181;
      v63 = v182;
      sub_1B014D19C();
      v184 = v60;
      v185 = v61;
      sub_1B011C47C();
      v65 = v175;
      sub_1B014D21C();
      v66 = v174;
LABEL_24:
      (*(v66 + 8))(v62, v65);
      (*(v183 + 8))(v64, v63);
      return sub_1B00D2024(v60, v61);
    case 0x11u:
      v116 = *v48;
      v115 = *(v48 + 1);
      LOBYTE(v184) = 17;
      sub_1B011C3D4();
      v69 = v176;
      v71 = v181;
      v70 = v182;
      sub_1B014D19C();
      v72 = v178;
      sub_1B014D1DC();

      v98 = v177;
LABEL_27:
      (*(v98 + 8))(v69, v72);
      return (*(v183 + 8))(v71, v70);
    default:
      v55 = v125;
      (*(v125 + 32))(v44, v48, v41);
      LOBYTE(v184) = 0;
      sub_1B011C9BC();
      v57 = v181;
      v56 = v182;
      sub_1B014D19C();
      sub_1B0100AA4(&qword_1EB6C46F0, MEMORY[0x1E6968FB0]);
      v58 = v127;
      sub_1B014D21C();
      (*(v126 + 8))(v40, v58);
      (*(v55 + 8))(v44, v41);
      return (*(v183 + 8))(v57, v56);
  }
}

uint64_t FBKSInteraction.Content.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B014CA4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSInteraction.Content(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v2, v12, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *v12;
      v39 = *(v12 + 1);
      v40 = *(v12 + 2);
      v41 = *(v12 + 3);
      MEMORY[0x1B271EE00](1);
      sub_1B014CCAC();

      sub_1B014CA9C();
      return sub_1B00D2024(v40, v41);
    case 2u:
      v29 = *v12;
      v30 = *(v12 + 1);
      v19 = 2;
      goto LABEL_21;
    case 3u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 3;
      goto LABEL_19;
    case 4u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 4;
      goto LABEL_19;
    case 5u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 5;
      goto LABEL_19;
    case 6u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 6;
      goto LABEL_19;
    case 7u:
      v33 = *v12;
      v34 = *(v12 + 1);
      v35 = *(v12 + 2);
      v36 = *(v12 + 3);
      v37 = 7;
      goto LABEL_23;
    case 8u:
      v33 = *v12;
      v34 = *(v12 + 1);
      v46 = *(v12 + 2);
      v47 = *(v12 + 3);
      v37 = 8;
LABEL_23:
      MEMORY[0x1B271EE00](v37);
      sub_1B014CA9C();
      sub_1B014CCAC();
      sub_1B00D2024(v33, v34);
      goto LABEL_24;
    case 9u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 9;
      goto LABEL_19;
    case 0xAu:
      v44 = *v12;
      v45 = *(v12 + 1);
      v19 = 10;
      goto LABEL_21;
    case 0xBu:
      v20 = *v12;
      v21 = *(v12 + 1);
      v22 = v12[16];
      MEMORY[0x1B271EE00](11);
      v49 = v20;
      v50 = v21;
      v51 = v22;
      FBKSInteraction.StructuredValue.hash(into:)(a1);
      return sub_1B00DE5AC(v20, v21, v22);
    case 0xCu:
      v23 = *v12;
      v24 = *(v12 + 1);
      v25 = *(v12 + 2);
      v26 = *(v12 + 3);
      v27 = v12[32];
      v28 = 12;
      goto LABEL_17;
    case 0xDu:
      v23 = *v12;
      v24 = *(v12 + 1);
      v25 = *(v12 + 2);
      v26 = *(v12 + 3);
      v27 = v12[32];
      v28 = 13;
LABEL_17:
      MEMORY[0x1B271EE00](v28);
      sub_1B014CA9C();
      v49 = v25;
      v50 = v26;
      v51 = v27;
      FBKSInteraction.StructuredValue.hash(into:)(a1);
      sub_1B00D2024(v23, v24);
      return sub_1B00DE5AC(v25, v26, v27);
    case 0xEu:
      v17 = *v12;
      v18 = *(v12 + 1);
      v19 = 14;
      goto LABEL_21;
    case 0xFu:
      v31 = *v12;
      v32 = *(v12 + 1);
      v19 = 15;
      goto LABEL_21;
    case 0x10u:
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = 16;
LABEL_19:
      MEMORY[0x1B271EE00](v16);
      sub_1B014CA9C();
      return sub_1B00D2024(v14, v15);
    case 0x11u:
      v42 = *v12;
      v43 = *(v12 + 1);
      v19 = 17;
LABEL_21:
      MEMORY[0x1B271EE00](v19);
      sub_1B014CCAC();
LABEL_24:

      break;
    default:
      (*(v5 + 32))(v8, v12, v4);
      MEMORY[0x1B271EE00](0);
      sub_1B0100AA4(&qword_1EB6C46F8, MEMORY[0x1E6968FB0]);
      sub_1B014CBCC();
      result = (*(v5 + 8))(v8, v4);
      break;
  }

  return result;
}

uint64_t FBKSInteraction.Content.hashValue.getter()
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v1);
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v296 = a2;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4700, &qword_1B01519B8);
  v280 = *(v279 - 8);
  v3 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v294 = &v227 - v4;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4708, &qword_1B01519C0);
  v277 = *(v278 - 8);
  v5 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v301 = &v227 - v6;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4710, &qword_1B01519C8);
  v273 = *(v276 - 8);
  v7 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v276);
  v295 = &v227 - v8;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4718, &qword_1B01519D0);
  v269 = *(v272 - 8);
  v9 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v293 = &v227 - v10;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4720, &qword_1B01519D8);
  v274 = *(v275 - 8);
  v11 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v300 = &v227 - v12;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4728, &qword_1B01519E0);
  v270 = *(v271 - 8);
  v13 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v292 = &v227 - v14;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4730, &qword_1B01519E8);
  v267 = *(v268 - 8);
  v15 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v291 = &v227 - v16;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4738, &qword_1B01519F0);
  v265 = *(v266 - 8);
  v17 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v290 = &v227 - v18;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4740, &qword_1B01519F8);
  v262 = *(v263 - 8);
  v19 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v288 = &v227 - v20;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4748, &qword_1B0151A00);
  v260 = *(v264 - 8);
  v21 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v289 = &v227 - v22;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4750, &qword_1B0151A08);
  v259 = *(v261 - 8);
  v23 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v287 = &v227 - v24;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4758, &qword_1B0151A10);
  v257 = *(v258 - 8);
  v25 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v286 = &v227 - v26;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4760, &qword_1B0151A18);
  v255 = *(v256 - 8);
  v27 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v285 = &v227 - v28;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4768, &qword_1B0151A20);
  v253 = *(v254 - 8);
  v29 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v284 = &v227 - v30;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4770, &qword_1B0151A28);
  v252 = *(v251 - 8);
  v31 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v299 = &v227 - v32;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4778, &qword_1B0151A30);
  v248 = *(v249 - 8);
  v33 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v282 = &v227 - v34;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4780, &qword_1B0151A38);
  v250 = *(v298 - 8);
  v35 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v283 = &v227 - v36;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4788, &qword_1B0151A40);
  v246 = *(v247 - 8);
  v37 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v281 = &v227 - v38;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4790, &qword_1B0151A48);
  v302 = *(v297 - 8);
  v39 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v306 = &v227 - v40;
  v303 = type metadata accessor for FBKSInteraction.Content(0);
  v41 = *(*(v303 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v303);
  v245 = (&v227 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x1EEE9AC00](v42);
  v244 = (&v227 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v243 = (&v227 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v242 = (&v227 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v236 = (&v227 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v235 = (&v227 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v241 = (&v227 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v240 = (&v227 - v57);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v239 = (&v227 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v234 = (&v227 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v233 = (&v227 - v63);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v238 = (&v227 - v65);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v237 = (&v227 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v70 = &v227 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68);
  v73 = &v227 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71);
  v76 = &v227 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74);
  v79 = &v227 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77);
  v82 = &v227 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v227 - v83;
  v85 = a1[3];
  v86 = a1[4];
  v305 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v85);
  sub_1B011C380();
  v87 = v304;
  sub_1B014D34C();
  if (v87)
  {
LABEL_9:
    v107 = v305;
    return __swift_destroy_boxed_opaque_existential_0(v107);
  }

  v228 = v76;
  v231 = v82;
  v229 = v73;
  v230 = v70;
  v227 = v79;
  v89 = v298;
  v88 = v299;
  v90 = v300;
  v91 = v301;
  v304 = 0;
  v232 = v84;
  v92 = v297;
  v93 = v306;
  v94 = sub_1B014D18C();
  v95 = (2 * *(v94 + 16)) | 1;
  v311 = v94;
  v312 = v94 + 32;
  v313 = 0;
  v314 = v95;
  v96 = sub_1B00D4AD0();
  if (v313 != v314 >> 1)
  {
LABEL_6:
    v103 = sub_1B014D05C();
    swift_allocError();
    v105 = v104;
    v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
    *v105 = v303;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v103 - 8) + 104))(v105, *MEMORY[0x1E69E6AF8], v103);
    swift_willThrow();
LABEL_7:
    (*(v302 + 8))(v93, v92);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v97 = v296;
  switch(v96)
  {
    case 0:
      LOBYTE(v307) = 0;
      sub_1B011C9BC();
      v98 = v281;
      v99 = v92;
      v100 = v304;
      sub_1B014D0EC();
      if (v100)
      {
        goto LABEL_42;
      }

      sub_1B014CA4C();
      sub_1B0100AA4(&qword_1EB6C4798, MEMORY[0x1E6968FB0]);
      v101 = v231;
      v102 = v247;
      sub_1B014D17C();
      (*(v246 + 8))(v98, v102);
      (*(v302 + 8))(v93, v99);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v208 = v101;
      goto LABEL_51;
    case 1:
      LOBYTE(v307) = 1;
      sub_1B011C968();
      v153 = v283;
      v99 = v92;
      v154 = v304;
      sub_1B014D0EC();
      if (v154)
      {
        goto LABEL_42;
      }

      LOBYTE(v307) = 0;
      v155 = v89;
      v156 = sub_1B014D13C();
      v157 = v302;
      v209 = v153;
      v210 = v156;
      v212 = v211;
      LOBYTE(v309) = 1;
      sub_1B011CA10();
      sub_1B014D17C();
      (*(v250 + 8))(v209, v155);
      (*(v157 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v203 = v227;
      *v227 = v210;
      v203[1] = v212;
      *(v203 + 1) = v307;
LABEL_50:
      swift_storeEnumTagMultiPayload();
      v208 = v203;
      goto LABEL_51;
    case 2:
      LOBYTE(v307) = 2;
      sub_1B011C914();
      v134 = v282;
      v99 = v92;
      v135 = v304;
      sub_1B014D0EC();
      if (v135)
      {
        goto LABEL_42;
      }

      v125 = v97;
      v136 = v249;
      v137 = sub_1B014D13C();
      v138 = v302;
      v195 = v137;
      v197 = v196;
      (*(v248 + 8))(v134, v136);
      (*(v138 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v198 = v228;
      *v228 = v195;
      v198[1] = v197;
      swift_storeEnumTagMultiPayload();
      v199 = v198;
      goto LABEL_54;
    case 3:
      LOBYTE(v307) = 3;
      sub_1B011C8C0();
      v144 = v88;
      v145 = v304;
      sub_1B014D0EC();
      if (v145)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v146 = v251;
      sub_1B014D17C();
      v147 = v302;
      (*(v252 + 8))(v144, v146);
      (*(v147 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v203 = v229;
      *v229 = v307;
      goto LABEL_50;
    case 4:
      LOBYTE(v307) = 4;
      sub_1B011C86C();
      v121 = v284;
      v122 = v304;
      sub_1B014D0EC();
      if (v122)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v182 = v254;
      sub_1B014D17C();
      v183 = v302;
      (*(v253 + 8))(v121, v182);
      (*(v183 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v189 = v230;
      *v230 = v307;
      goto LABEL_48;
    case 5:
      LOBYTE(v307) = 5;
      sub_1B011C818();
      v164 = v285;
      v165 = v304;
      sub_1B014D0EC();
      if (v165)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v166 = v256;
      sub_1B014D17C();
      v167 = v302;
      (*(v255 + 8))(v164, v166);
      (*(v167 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v189 = v237;
      *v237 = v307;
      goto LABEL_48;
    case 6:
      LOBYTE(v307) = 6;
      sub_1B011C7C4();
      v174 = v286;
      v175 = v304;
      sub_1B014D0EC();
      if (v175)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v176 = v258;
      sub_1B014D17C();
      v177 = v302;
      (*(v257 + 8))(v174, v176);
      (*(v177 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v189 = v238;
      *v238 = v307;
      goto LABEL_48;
    case 7:
      LOBYTE(v307) = 7;
      sub_1B011C770();
      v148 = v287;
      v149 = v92;
      v150 = v304;
      sub_1B014D0EC();
      if (v150)
      {
        goto LABEL_44;
      }

      LOBYTE(v309) = 0;
      sub_1B011CA10();
      v151 = v261;
      sub_1B014D17C();
      v152 = v302;
      v204 = v307;
      LOBYTE(v309) = 1;
      v301 = sub_1B014D13C();
      v304 = 0;
      v206 = v205;
      (*(v259 + 8))(v148, v151);
      (*(v152 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v207 = v233;
      *v233 = v204;
      *(v207 + 2) = v301;
      *(v207 + 3) = v206;
      goto LABEL_55;
    case 8:
      LOBYTE(v307) = 8;
      sub_1B011C71C();
      v180 = v289;
      v149 = v92;
      v181 = v304;
      sub_1B014D0EC();
      if (v181)
      {
LABEL_44:
        (*(v302 + 8))(v93, v149);
        swift_unknownObjectRelease();
        v107 = v305;
        return __swift_destroy_boxed_opaque_existential_0(v107);
      }

      LOBYTE(v309) = 0;
      sub_1B011CA10();
      v187 = v264;
      sub_1B014D17C();
      v188 = v302;
      v218 = v307;
      LOBYTE(v309) = 1;
      v301 = sub_1B014D13C();
      v304 = 0;
      v225 = v224;
      (*(v260 + 8))(v180, v187);
      (*(v188 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v207 = v234;
      *v234 = v218;
      *(v207 + 2) = v301;
      *(v207 + 3) = v225;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      v226 = v207;
      v221 = v232;
      sub_1B00FA138(v226, v232, type metadata accessor for FBKSInteraction.Content);
      v222 = v305;
      v97 = v296;
      goto LABEL_52;
    case 9:
      LOBYTE(v307) = 9;
      sub_1B011C6C8();
      v130 = v288;
      v131 = v304;
      sub_1B014D0EC();
      if (v131)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v132 = v263;
      sub_1B014D17C();
      v133 = v302;
      (*(v262 + 8))(v130, v132);
      (*(v133 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v189 = v239;
      *v239 = v307;
      goto LABEL_48;
    case 10:
      LOBYTE(v307) = 10;
      sub_1B011C674();
      v178 = v290;
      v99 = v92;
      v179 = v304;
      sub_1B014D0EC();
      if (v179)
      {
        goto LABEL_42;
      }

      v184 = v266;
      v185 = sub_1B014D13C();
      v186 = v302;
      v215 = v185;
      v217 = v216;
      (*(v265 + 8))(v178, v184);
      (*(v186 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v193 = v240;
      *v240 = v215;
      v193[1] = v217;
      goto LABEL_49;
    case 11:
      LOBYTE(v307) = 11;
      sub_1B011C620();
      v117 = v291;
      v118 = v304;
      sub_1B014D0EC();
      if (v118)
      {
        goto LABEL_7;
      }

      sub_1B011C2B4();
      v119 = v268;
      sub_1B014D17C();
      v120 = v302;
      (*(v267 + 8))(v117, v119);
      (*(v120 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v194 = v308;
      v189 = v241;
      *v241 = v307;
      *(v189 + 16) = v194;
      goto LABEL_48;
    case 12:
      LOBYTE(v307) = 12;
      sub_1B011C5CC();
      v123 = v292;
      v99 = v92;
      v124 = v304;
      sub_1B014D0EC();
      if (v124)
      {
        goto LABEL_42;
      }

      v125 = v97;
      LOBYTE(v307) = 0;
      sub_1B011CA10();
      v126 = v271;
      sub_1B014D17C();
      v127 = v302;
      v129 = v309;
      v128 = v310;
      v315 = 1;
      sub_1B011C2B4();
      sub_1B014D17C();
      (*(v270 + 8))(v123, v126);
      (*(v127 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v219 = v308;
      v220 = v235;
      *v235 = v129;
      v220[1] = v128;
      *(v220 + 1) = v307;
      *(v220 + 32) = v219;
      goto LABEL_53;
    case 13:
      LOBYTE(v307) = 13;
      sub_1B011C578();
      v168 = v90;
      v99 = v92;
      v169 = v304;
      sub_1B014D0EC();
      if (v169)
      {
        goto LABEL_42;
      }

      v125 = v97;
      LOBYTE(v307) = 0;
      sub_1B011CA10();
      v170 = v275;
      sub_1B014D17C();
      v171 = v302;
      v173 = v309;
      v172 = v310;
      v315 = 1;
      sub_1B011C2B4();
      sub_1B014D17C();
      (*(v274 + 8))(v168, v170);
      (*(v171 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v223 = v308;
      v220 = v236;
      *v236 = v173;
      v220[1] = v172;
      *(v220 + 1) = v307;
      *(v220 + 32) = v223;
LABEL_53:
      swift_storeEnumTagMultiPayload();
      v199 = v220;
LABEL_54:
      v221 = v232;
      sub_1B00FA138(v199, v232, type metadata accessor for FBKSInteraction.Content);
      v222 = v305;
      v97 = v125;
      goto LABEL_52;
    case 14:
      LOBYTE(v307) = 14;
      sub_1B011C524();
      v112 = v293;
      v99 = v92;
      v113 = v304;
      sub_1B014D0EC();
      if (v113)
      {
        goto LABEL_42;
      }

      v114 = v272;
      v115 = sub_1B014D13C();
      v116 = v302;
      v190 = v115;
      v192 = v191;
      (*(v269 + 8))(v112, v114);
      (*(v116 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v193 = v242;
      *v242 = v190;
      v193[1] = v192;
      goto LABEL_49;
    case 15:
      LOBYTE(v307) = 15;
      sub_1B011C4D0();
      v139 = v295;
      v99 = v92;
      v140 = v304;
      sub_1B014D0EC();
      if (v140)
      {
        goto LABEL_42;
      }

      v141 = v276;
      v142 = sub_1B014D13C();
      v143 = v302;
      v200 = v142;
      v202 = v201;
      (*(v273 + 8))(v139, v141);
      (*(v143 + 8))(v93, v99);
      swift_unknownObjectRelease();
      v193 = v243;
      *v243 = v200;
      v193[1] = v202;
      goto LABEL_49;
    case 16:
      LOBYTE(v307) = 16;
      sub_1B011C428();
      v99 = v92;
      v109 = v304;
      sub_1B014D0EC();
      if (v109)
      {
LABEL_42:
        (*(v302 + 8))(v93, v99);
        goto LABEL_8;
      }

      sub_1B011CA10();
      v110 = v278;
      sub_1B014D17C();
      v111 = v302;
      (*(v277 + 8))(v91, v110);
      (*(v111 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v189 = v244;
      *v244 = v307;
LABEL_48:
      swift_storeEnumTagMultiPayload();
      v208 = v189;
LABEL_51:
      v221 = v232;
      sub_1B00FA138(v208, v232, type metadata accessor for FBKSInteraction.Content);
      v222 = v305;
LABEL_52:
      sub_1B00FA138(v221, v97, type metadata accessor for FBKSInteraction.Content);
      result = __swift_destroy_boxed_opaque_existential_0(v222);
      break;
    case 17:
      LOBYTE(v307) = 17;
      sub_1B011C3D4();
      v158 = v294;
      v159 = v304;
      sub_1B014D0EC();
      if (v159)
      {
        goto LABEL_7;
      }

      v160 = v279;
      v161 = sub_1B014D13C();
      v162 = v158;
      v163 = v302;
      v214 = v213;
      (*(v280 + 8))(v162, v160);
      (*(v163 + 8))(v93, v92);
      swift_unknownObjectRelease();
      v193 = v245;
      *v245 = v161;
      v193[1] = v214;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      v208 = v193;
      goto LABEL_51;
    default:
      goto LABEL_6;
  }

  return result;
}