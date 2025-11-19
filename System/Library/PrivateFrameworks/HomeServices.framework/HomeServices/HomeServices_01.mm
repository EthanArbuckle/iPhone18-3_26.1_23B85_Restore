uint64_t sub_1D20B77C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D20B7814(a1, a2);
  sub_1D20B7944(&unk_1F4D9E028);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D20B7814(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D20B7A30(v5, 0);
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

  result = sub_1D2113C5C();
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
        v10 = sub_1D21138CC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D20B7A30(v10, 0);
        result = sub_1D2113C0C();
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

uint64_t sub_1D20B7944(uint64_t result)
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

  result = sub_1D20B7AA4(result, v12, 1, v3);
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

void *sub_1D20B7A30(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D20B7AA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1D20B7B98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D20B7BA8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1D20B7C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B7C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20B7CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20B7D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B7DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D20B7E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1D20B7E6C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D20B829C(v5);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return a1;
  }

  (*(v7 + 32))(v10, v5, v6);
  v11 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v12 = sub_1D2112F2C();
  v13 = sub_1D21137BC();
  a1 = [v11 initWithURL:v12 statusCode:200 HTTPVersion:v13 headerFields:0];

  (*(v7 + 8))(v10, v6);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

id static MockURLResponder.urlResponse(to:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D20B829C(v5);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return a1;
  }

  (*(v7 + 32))(v10, v5, v6);
  v11 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v12 = sub_1D2112F2C();
  v13 = sub_1D21137BC();
  a1 = [v11 initWithURL:v12 statusCode:200 HTTPVersion:v13 headerFields:0];

  (*(v7 + 8))(v10, v6);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

uint64_t sub_1D20B829C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MockURLResponder.configResponse()()
{
  v0 = sub_1D211381C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211380C();
  v5 = sub_1D21137DC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1D20B840C()
{
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE0874C0);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A7C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "MockURLResponder default empty response being send. Check your code if this intentional!", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  return 0;
}

uint64_t static MockURLResponder.respond(to:)()
{
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE0874C0);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A7C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "MockURLResponder default empty response being send. Check your code if this intentional!", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  return 0;
}

uint64_t MockNetworkError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20B86C0()
{
  v0 = sub_1D2112B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ABC();
  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_1D20B878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2112B1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_1D20B87F8()
{
  v0 = sub_1D2112B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1D2112ABC();
  sub_1D20B878C(v5, v7);
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = sub_1D2112A9C();
  v8(v7, v0);

  return v9;
}

id sub_1D20B8928()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_1D2112B1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v41 - v16;
  result = [v1 client];
  if (result)
  {
    v19 = result;
    v45 = v2;
    v20 = [v1 request];
    sub_1D2112ABC();

    sub_1D2112ADC();
    v21 = v13;
    v22 = *(v4 + 8);
    v22(v21, v3);
    v23 = sub_1D2112F9C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v17, 1, v23) == 1)
    {
      sub_1D20B829C(v17);
    }

    else
    {
      v43 = v8;
      v44 = v22;
      v25 = sub_1D2112F1C();
      v27 = v26;
      (*(v24 + 8))(v17, v23);
      v48 = v25;
      v49 = v27;
      v46 = 0xD000000000000013;
      v47 = 0x80000001D211A9E0;
      sub_1D20B99F0();
      LOBYTE(v25) = sub_1D2113B6C();

      if ((v25 & 1) == 0 || (sub_1D20B8E80() & 1) == 0)
      {
        v28 = v45;
        v29 = *(v45 + 80);
        v30 = [v1 request];
        sub_1D2112ABC();

        v31 = *(v28 + 88);
        v42 = (*(v31 + 8))(v11, v29, v31);
        v45 = v32;
        v33 = v44;
        v44(v11, v3);
        v34 = [v1 &off_1E83F6278];
        v35 = v43;
        sub_1D2112ABC();

        v36 = (*(v31 + 16))(v35, v29, v31);
        v33(v35, v3);
        [v19 URLProtocol:v1 didReceiveResponse:v36 cacheStoragePolicy:2];
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          if ([v37 statusCode] == 304)
          {
            sub_1D20B98A4(v42, v45);
          }

          else
          {
            v38 = v42;
            v39 = v45;
            v40 = sub_1D2112FFC();
            [v19 URLProtocol:v1 didLoadData:v40];
            sub_1D20B98A4(v38, v39);
          }
        }

        else
        {

          sub_1D20B98A4(v42, v45);
        }
      }
    }

    [v19 URLProtocolDidFinishLoading_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D20B8E38(void *a1)
{
  v1 = a1;
  sub_1D20B8928();
}

uint64_t sub_1D20B8E80()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1D2112B1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2112F9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v3 & v2) + 0x50);
  v18 = (*(*((v3 & v2) + 0x58) + 24))();
  v20 = v19;
  v21 = [v1 request];
  sub_1D2112ABC();

  sub_1D2112ADC();
  (*(v9 + 8))(v12, v8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_1D20B98A4(v18, v20);
    sub_1D20B829C(v7);
  }

  else
  {
    v36 = v18;
    v37 = v20;
    v22 = v38;
    (*(v14 + 32))(v38, v7, v13);
    v23 = [v1 client];
    if (v23)
    {
      v24 = v23;
      v25 = objc_allocWithZone(MEMORY[0x1E696AC68]);
      v26 = sub_1D2112F2C();
      v27 = sub_1D21137BC();
      v28 = [v25 initWithURL:v26 statusCode:200 HTTPVersion:v27 headerFields:0];

      v29 = v36;
      if (v28)
      {
        [v24 URLProtocol:v1 didReceiveResponse:v28 cacheStoragePolicy:2];
        v30 = v22;
        v31 = v37;
        v32 = sub_1D2112FFC();
        [v24 URLProtocol:v1 didLoadData:v32];
        sub_1D20B98A4(v29, v31);

        swift_unknownObjectRelease();
        (*(v14 + 8))(v30, v13);
        return 1;
      }

      (*(v14 + 8))(v22, v13);
      swift_unknownObjectRelease();
      v34 = v29;
    }

    else
    {
      (*(v14 + 8))(v22, v13);
      v34 = v36;
    }

    sub_1D20B98A4(v34, v37);
  }

  return 0;
}

id sub_1D20B927C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1D2112B1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ABC();
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = sub_1D20B98F8(v10, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

id sub_1D20B9344()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MockURLProtocol();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id NSURLSession.init<A>(mockResponder:)()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7438, &qword_1D2115468);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D2114850;
  *(v1 + 32) = type metadata accessor for MockURLProtocol();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7440, &qword_1D2115470);
  v2 = sub_1D21139DC();

  [v0 setProtocolClasses_];

  v3 = [swift_getObjCClassFromMetadata() sessionWithConfiguration_];
  v4 = objc_opt_self();
  [v4 registerClass_];

  return v3;
}

uint64_t sub_1D20B94F0()
{
  v0 = sub_1D211381C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211380C();
  v5 = sub_1D21137DC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1D20B95F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1D20B9660()
{
  result = qword_1EC6C7448[0];
  if (!qword_1EC6C7448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC6C7448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockNetworkError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MockNetworkError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D20B98A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1D20B98F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1D2112A9C();
  v11 = *((v9 & v8) + 0x50);
  v12 = *((v9 & v8) + 0x58);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MockURLProtocol();
  v13 = objc_msgSendSuper2(&v16, sel_initWithRequest_cachedResponse_client_, v10, a2, a3);

  v14 = sub_1D2112B1C();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

unint64_t sub_1D20B99F0()
{
  result = qword_1EE084440;
  if (!qword_1EE084440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084440);
  }

  return result;
}

uint64_t sub_1D20B9AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_1D20C721C(a1, a2, 365, 30, &v15, &v14 - v8);
  v10 = sub_1D2112E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  (*(v11 + 32))(a3, v9, v10);
  return (v12)(a3, 0, 1, v10);
}

uint64_t sub_1D20B9DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20B9E08()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v8 = *v0;
    v9 = v0[1];

    MEMORY[0x1D38961A0](46, 0xE100000000000000);
    v3 = sub_1D20CF5BC();
    v4 = !v3;
    if (v3)
    {
      v5 = 1685025392;
    }

    else
    {
      v5 = 24945;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    MEMORY[0x1D38961A0](v5, v6);

    MEMORY[0x1D38961A0](46, 0xE100000000000000);
    MEMORY[0x1D38961A0](0x45687361686F6567, 0xEB00000000676174);
    v1 = v8;
    v0[2] = v8;
    v0[3] = v9;
  }

  return v1;
}

uint64_t sub_1D20B9EF4()
{
  if (v0[5])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = sub_1D20B9F58(v0);
    v0[4] = v1;
    v0[5] = v3;
  }

  return v1;
}

uint64_t sub_1D20B9F58(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v1 = sub_1D20CF5BC();
  v2 = !v1;
  if (v1)
  {
    v3 = 1685025392;
  }

  else
  {
    v3 = 24945;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v3, v4);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  MEMORY[0x1D38961A0](0xD000000000000011, 0x80000001D211AA00);
  return v6;
}

uint64_t sub_1D20BA004()
{
  v0 = sub_1D211319C();
  __swift_allocate_value_buffer(v0, qword_1EC6CE820);
  __swift_project_value_buffer(v0, qword_1EC6CE820);
  return sub_1D211313C();
}

uint64_t sub_1D20BA058()
{
  v0 = sub_1D211319C();
  __swift_allocate_value_buffer(v0, qword_1EC6CE838);
  v1 = __swift_project_value_buffer(v0, qword_1EC6CE838);
  if (qword_1EC6C7158 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC6CE820);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D20BA18C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v58 - v2;
  v4 = sub_1D211362C();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D211319C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  if (qword_1EC6C7160 != -1)
  {
    swift_once();
  }

  v61 = v3;
  v18 = __swift_project_value_buffer(v8, qword_1EC6CE838);
  v19 = *(v9 + 16);
  v64 = v18;
  v19(v17);
  if (qword_1EC6C7158 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_1EC6CE820);
  (v19)(v15, v20, v8);
  v21 = sub_1D211315C();
  v22 = v9 + 8;
  v23 = v15;
  v24 = *(v9 + 8);
  v24(v23, v8);
  v24(v17, v8);
  v62 = v8;
  v63 = v24;
  if (v21)
  {
    sub_1D211361C();
    v25 = sub_1D21135FC();
    v26 = sub_1D2113A7C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D209F000, v25, v26, "Mocked guidance forecast response time was not configured", v27, 2u);
      v28 = v27;
      v22 = v9 + 8;
      v8 = v62;
      MEMORY[0x1D3896EB0](v28, -1, -1);
    }

    (*(v59 + 8))(v7, v60);
    v24 = v63;
  }

  (v19)(v17, v64, v8);
  v29 = v61;
  sub_1D20FB87C(v61);
  v60 = v17;
  v64 = v22;
  v24(v17, v8);
  result = (*(v9 + 48))(v29, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v65, v29, v8);
    v31 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v31 setFormatOptions_];
    v32 = sub_1D21130EC();
    v33 = [v31 stringFromDate_];

    v61 = sub_1D21137CC();
    v35 = v34;

    v66 = MEMORY[0x1E69E7CC0];
    sub_1D20DC784(0, 48, 0);
    v36 = 0;
    v37 = v66;
    do
    {
      do
      {
        v72 = 0;
        MEMORY[0x1D3896EC0](&v72, 8);
      }

      while (0x20000000000001 * v72 < 0x1FFFFFFFFFF801);
      v38 = (v72 * 0x20000000000001uLL) >> 64;
      v66 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D20DC784((v39 > 1), v40 + 1, 1);
        v37 = v66;
      }

      ++v36;
      *(v37 + 16) = v40 + 1;
      *(v37 + 8 * v40 + 32) = vcvtd_n_f64_u64(v38, 0x35uLL) + 0.0;
    }

    while (v36 != 48);
    v41 = v35;
    v42 = v60;
    sub_1D211311C();
    v43 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v43 setFormatOptions_];
    v44 = sub_1D21130EC();
    v45 = [v43 stringFromDate_];

    v46 = sub_1D21137CC();
    v48 = v47;

    v49 = v42;
    v50 = v62;
    v51 = v63;
    v63(v49, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D8, &qword_1D2115680);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D2114850;
    v53 = v61;
    *(v52 + 32) = v61;
    *(v52 + 40) = v41;
    *(v52 + 48) = v46;
    *(v52 + 56) = v48;
    *(v52 + 64) = xmmword_1D2114860;
    v54 = sub_1D2112B7C();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();

    sub_1D2112B6C();
    v66 = 0x4D30335450;
    v67 = 0xE500000000000000;
    v68 = v53;
    v69 = v41;
    v70 = v37;
    v71 = v52;
    sub_1D20BAB1C();
    v57 = sub_1D2112B5C();

    v51(v65, v50);
    return v57;
  }

  return result;
}

id sub_1D20BA864(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  v7 = sub_1D2112F9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20CE7A8(&unk_1F4D9E5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
  swift_arrayDestroy();
  sub_1D2112ADC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1D20B829C(v6);
LABEL_4:
    sub_1D20B316C();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    return a1;
  }

  v18[1] = v1;
  (*(v8 + 32))(v11, v6, v7);
  v12 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v13 = sub_1D2112F2C();
  v14 = sub_1D21137BC();
  v15 = sub_1D21136FC();

  a1 = [v12 initWithURL:v13 statusCode:200 HTTPVersion:v14 headerFields:v15];

  (*(v8 + 8))(v11, v7);
  if (!a1)
  {
    goto LABEL_4;
  }

  return a1;
}

unint64_t sub_1D20BAB1C()
{
  result = qword_1EC6C74E0;
  if (!qword_1EC6C74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C74E0);
  }

  return result;
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

char *sub_1D20BABD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_9:
    v15 = sub_1D211384C();

    return v15;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D20DC7C4(0, v2, 0);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = *(v8 + v7);
      v10 = *(a2 + 32 + v7 % v6);
      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1D20DC7C4((v11 > 1), v13, 1);
        v13 = v12 + 1;
      }

      ++v7;
      *(v16 + 16) = v13;
      *(v16 + v12 + 32) = v10 ^ v9;
    }

    while (v2 != v7);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20BACF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74E8, &qword_1D2115690);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74F0, &qword_1D2115698);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74F8, &qword_1D21156A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7500, &qword_1D21156A8);
  sub_1D211341C();
  v17 = 0x1E83F6000uLL;
  v52 = v0;
  v18 = [v0 allHeaderFields];
  v19 = sub_1D211371C();

  strcpy(v53, "Cache-Control");
  v53[7] = -4864;
  sub_1D2113BCC();
  if (*(v19 + 16) && (v20 = sub_1D20E459C(v54), (v21 & 1) != 0))
  {
    sub_1D20B7E10(*(v19 + 56) + 32 * v20, v55);
    sub_1D20BC128(v54);

    if (swift_dynamicCast())
    {
      sub_1D211395C();
      v51 = v9;

      sub_1D20BC17C();
      sub_1D211340C();
      v9 = v51;
      sub_1D211342C();
      v48 = *(v10 + 8);
      v48(v14, v9);

      v41 = v49;
      v40 = v50;
      v42 = (*(v49 + 48))(v4, 1, v50);
      v17 = 0x1E83F6000;
      if (v42 == 1)
      {
        sub_1D20A862C(v4, &qword_1EC6C74E8, &qword_1D2115690);
      }

      else
      {
        v47 = v10 + 8;
        (*(v41 + 32))(v8, v4, v40);
        swift_getKeyPath();
        sub_1D211344C();

        v43 = MEMORY[0x1D3896140](v54[0], v54[1], v54[2], v54[3]);
        v45 = v44;

        v54[0] = 0;
        v46 = sub_1D20BC1E0(v43, v45);

        (*(v41 + 8))(v8, v40);
        if (v46)
        {
          v48(v16, v51);
          return v54[0];
        }

        v9 = v51;
        v17 = 0x1E83F6000;
      }
    }
  }

  else
  {

    sub_1D20BC128(v54);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D211362C();
  __swift_project_value_buffer(v22, qword_1EE0874C0);
  v23 = sub_1D21135FC();
  v24 = sub_1D2113A7C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v17;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D209F000, v23, v24, "Unable to generate max age value based on response.", v26, 2u);
    v27 = v26;
    v17 = v25;
    MEMORY[0x1D3896EB0](v27, -1, -1);
  }

  v28 = v52;
  v29 = sub_1D21135FC();
  v30 = sub_1D2113A7C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v51 = v9;
    v52 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136380675;
    v34 = [v28 *(v17 + 2216)];
    sub_1D211371C();

    v35 = sub_1D211372C();
    v37 = v36;

    v38 = sub_1D20B75F0(v35, v37, v54);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_1D209F000, v29, v30, "%{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1D3896EB0](v33, -1, -1);
    MEMORY[0x1D3896EB0](v32, -1, -1);

    (*(v10 + 8))(v52, v51);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

  return 0;
}

uint64_t sub_1D20BB444@<X0>(uint64_t a1@<X8>)
{
  sub_1D20BACF8();
  if (v2)
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D211362C();
    __swift_project_value_buffer(v3, qword_1EE0874C0);
    v4 = sub_1D21135FC();
    v5 = sub_1D2113A7C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D209F000, v4, v5, "Unable to retrieve max age value from response.", v6, 2u);
      MEMORY[0x1D3896EB0](v6, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    sub_1D211312C();
    v7 = 0;
  }

  v8 = sub_1D211319C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_1D20BB58C()
{
  v1 = v0;
  v2 = [v0 allHeaderFields];
  v3 = sub_1D211371C();

  sub_1D2113BCC();
  if (*(v3 + 16) && (v4 = sub_1D20E459C(v22), (v5 & 1) != 0))
  {
    sub_1D20B7E10(*(v3 + 56) + 32 * v4, v23);
    sub_1D20BC128(v22);

    if (swift_dynamicCast())
    {
      return 1734440005;
    }
  }

  else
  {

    sub_1D20BC128(v22);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D211362C();
  __swift_project_value_buffer(v7, qword_1EE0874C0);
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1D20B75F0(1734440005, 0xE400000000000000, v22);
    _os_log_impl(&dword_1D209F000, v8, v9, "Unable to retrieve %s header from response.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3896EB0](v11, -1, -1);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  v12 = v1;
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A7C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136380675;
    v17 = [v12 allHeaderFields];
    sub_1D211371C();

    v18 = sub_1D211372C();
    v20 = v19;

    v21 = sub_1D20B75F0(v18, v20, v22);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D209F000, v13, v14, "%{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D3896EB0](v16, -1, -1);
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  return 0;
}

void sub_1D20BB8E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_1D211319C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20BACF8();
  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1D3896910]();
    sub_1D20BBB90(a1, v6);
    if (v1)
    {
      objc_autoreleasePoolPop(v13);
      __break(1u);
      return;
    }

    objc_autoreleasePoolPop(v13);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v11, v6, v7);
      sub_1D21130DC();
      (*(v8 + 8))(v11, v7);
      return;
    }

    sub_1D20A862C(v6, &qword_1EC6C7248, &qword_1D2114A80);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D211362C();
  __swift_project_value_buffer(v14, qword_1EE0874C0);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A7C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  sub_1D211318C();
}

uint64_t sub_1D20BBB90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v40 - v10;
  v12 = [a1 allHeaderFields];
  v13 = sub_1D211371C();

  v40[1] = 1702125892;
  v40[2] = 0xE400000000000000;
  sub_1D2113BCC();
  if (*(v13 + 16) && (v14 = sub_1D20E459C(v41), (v15 & 1) != 0))
  {
    sub_1D20B7E10(*(v13 + 56) + 32 * v14, v42);
    sub_1D20BC128(v41);

    if (swift_dynamicCast())
    {
      v16 = sub_1D20D58E0();
      v17 = sub_1D21137BC();

      v18 = [v16 dateFromString_];

      v40[0] = v2;
      if (v18)
      {
        sub_1D211316C();

        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v37 = sub_1D211319C();
      v38 = *(v37 - 8);
      v39 = *(v38 + 56);
      v39(v9, v19, 1, v37);
      sub_1D20A84BC(v9, v11);
      if ((*(v38 + 48))(v11, 1, v37) != 1)
      {
        (*(v38 + 32))(a2, v11, v37);
        return (v39)(a2, 0, 1, v37);
      }

      sub_1D20A862C(v11, &qword_1EC6C7248, &qword_1D2114A80);
    }
  }

  else
  {

    sub_1D20BC128(v41);
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D211362C();
  __swift_project_value_buffer(v20, qword_1EE0874C0);
  v21 = sub_1D21135FC();
  v22 = sub_1D2113A7C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1D20B75F0(1702125892, 0xE400000000000000, v41);
    _os_log_impl(&dword_1D209F000, v21, v22, "Unable to retrieve %s header from response.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D3896EB0](v24, -1, -1);
    MEMORY[0x1D3896EB0](v23, -1, -1);
  }

  v25 = a1;
  v26 = sub_1D21135FC();
  v27 = sub_1D2113A7C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136380675;
    v30 = [v25 allHeaderFields];
    sub_1D211371C();
    v43 = a2;

    v31 = sub_1D211372C();
    v33 = v32;

    v34 = sub_1D20B75F0(v31, v33, v41);

    *(v28 + 4) = v34;
    a2 = v43;
    _os_log_impl(&dword_1D209F000, v26, v27, "%{private}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D3896EB0](v29, -1, -1);
    MEMORY[0x1D3896EB0](v28, -1, -1);
  }

  v35 = sub_1D211319C();
  return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
}

unint64_t sub_1D20BC17C()
{
  result = qword_1EE084488;
  if (!qword_1EE084488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C74F8, &qword_1D21156A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084488);
  }

  return result;
}

BOOL sub_1D20BC1E0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D2113C1C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_1D20BC2D8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D20BC358@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v18);
  if (*(&v18[0] + 1) != 1)
  {
    v19 = v18[1];
    sub_1D20BD1B0(&v19, v17);
    sub_1D20A862C(v18, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v19 + 1))
    {
      sub_1D210CA58(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_1D2112F3C();
        sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
        (*(v7 + 8))(v10, v6);
        v15 = 0;
        return (*(v7 + 56))(a1, v15, 1, v6);
      }

      sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D211362C();
  __swift_project_value_buffer(v11, qword_1EE0874C0);
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A7C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Unable to compute API Path for energy windows.", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = 1;
  return (*(v7 + 56))(a1, v15, 1, v6);
}

uint64_t sub_1D20BC64C@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a3;
  v94 = a4;
  v90 = a1;
  v91 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v83 - v8;
  v9 = sub_1D2112B1C();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v83 - v21;
  v23 = sub_1D2112F9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v89 = &v83 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v83 - v33;
  sub_1D20BC358(v22);
  v35 = *(v24 + 48);
  if (v35(v22, 1, v23) != 1)
  {
    v84 = a5;
    v83 = *(v24 + 32);
    v83(v34, v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x644964697267;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v90;
    *(inited + 56) = v91;

    v91 = v34;
    sub_1D2112F1C();
    sub_1D2112F7C();
    if (v35(v18, 1, v23) == 1)
    {

      sub_1D20A862C(v18, &qword_1EC6C7250, &qword_1D21149C0);
      v47 = v92;
      (*(v24 + 56))(v92, 1, 1, v23);
      v48 = v94;
    }

    else
    {
      v83(v30, v18, v23);
      v49 = v92;
      sub_1D20F108C(inited, 1, 0, v92);
      v47 = v49;

      v50 = *(v24 + 8);
      v50(v30, v23);
      v51 = v35(v49, 1, v23);
      v48 = v94;
      if (v51 != 1)
      {
        v90 = v50;
        v64 = v89;
        v83(v89, v49, v23);
        (*(v24 + 16))(v86, v64, v23);
        v65 = v88;
        sub_1D2112ACC();
        sub_1D2112A8C();
        if (sub_1D20CF7E0())
        {
          v66 = &unk_1F4D9E0E0;
        }

        else
        {
          v66 = &unk_1F4D9E120;
        }

        v67 = sub_1D20BABD4(v66, &unk_1F4D9E080);
        v69 = v68;
        sub_1D20CF7E0();
        v70 = v67;
        v71 = v87;
        sub_1D20D94F0(v70, v69, 49, 0xE100000000000000, v87);

        v54 = v95;
        v53 = v96;
        if ((*(v95 + 48))(v71, 1, v96) != 1)
        {
          v79 = v85;
          (*(v54 + 16))(v85, v71, v53);
          sub_1D2112AEC();
          sub_1D2112AEC();
          v80 = *(v54 + 8);
          v80(v71, v53);
          v81 = v84;
          (*(v54 + 32))(v84, v79, v53);
          sub_1D2112B0C();
          v80(v65, v53);
          v82 = v90;
          v90(v89, v23);
          v82(v91, v23);
          return (*(v54 + 56))(v81, 0, 1, v53);
        }

        v72 = v23;
        sub_1D20A862C(v71, &qword_1EC6C7508, &unk_1D2116AA0);
        v59 = v84;
        if (qword_1EE083DE8 != -1)
        {
          swift_once();
        }

        v73 = sub_1D211362C();
        __swift_project_value_buffer(v73, qword_1EE0874C0);

        v74 = sub_1D21135FC();
        v75 = sub_1D2113A7C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v97[0] = v77;
          *v76 = 136315138;
          *(v76 + 4) = sub_1D20B75F0(v93, v48, v97);
          _os_log_impl(&dword_1D209F000, v74, v75, "Unable to create signed Energy Interval request | traceId: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          MEMORY[0x1D3896EB0](v77, -1, -1);
          MEMORY[0x1D3896EB0](v76, -1, -1);
        }

        (*(v54 + 8))(v88, v53);
        v78 = v90;
        v90(v89, v72);
        v78(v91, v72);
        return (*(v54 + 56))(v59, 1, 1, v53);
      }
    }

    v52 = v24;
    sub_1D20A862C(v47, &qword_1EC6C7250, &qword_1D21149C0);
    v54 = v95;
    v53 = v96;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D211362C();
    __swift_project_value_buffer(v55, qword_1EE0874C0);

    v56 = sub_1D21135FC();
    v57 = sub_1D2113A7C();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v84;
    v60 = v91;
    if (v58)
    {
      v61 = swift_slowAlloc();
      v94 = v23;
      v62 = v61;
      v63 = swift_slowAlloc();
      v97[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1D20B75F0(v93, v48, v97);
      _os_log_impl(&dword_1D209F000, v56, v57, "Unable to create Energy Interval URL with required query parameters | traceId: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D3896EB0](v63, -1, -1);
      MEMORY[0x1D3896EB0](v62, -1, -1);

      (*(v52 + 8))(v60, v94);
    }

    else
    {

      (*(v52 + 8))(v60, v23);
    }

    return (*(v54 + 56))(v59, 1, 1, v53);
  }

  sub_1D20A862C(v22, &qword_1EC6C7250, &qword_1D21149C0);
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D211362C();
  __swift_project_value_buffer(v36, qword_1EE0874C0);
  v37 = v94;

  v38 = sub_1D21135FC();
  v39 = sub_1D2113A7C();

  v40 = os_log_type_enabled(v38, v39);
  v42 = v95;
  v41 = v96;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v97[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_1D20B75F0(v93, v37, v97);
    _os_log_impl(&dword_1D209F000, v38, v39, "Request URL for EnergyWindows API not found | traceId: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D3896EB0](v44, -1, -1);
    MEMORY[0x1D3896EB0](v43, -1, -1);
  }

  return (*(v42 + 56))(a5, 1, 1, v41);
}

uint64_t sub_1D20BD1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7510, &unk_1D2115710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t HSGuidanceForecast.MockType.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 != 6)
  {
    v3 = 0xD000000000000029;
  }

  v4 = 0xD000000000000042;
  if (v2 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 2)
  {
    v5 = 0xD000000000000026;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t HSGuidanceForecast.MockType.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

unint64_t sub_1D20BD38C()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 != 6)
  {
    v3 = 0xD000000000000029;
  }

  v4 = 0xD000000000000042;
  if (v2 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 2)
  {
    v5 = 0xD000000000000026;
  }

  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t static HSGuidanceForecast.mockEnergyGuidanceFromDefaults(_:_:_:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v128 = a3;
  v5 = type metadata accessor for HSGuidanceValue(0);
  v145 = *(v5 - 8);
  v146 = v5;
  v6 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v8 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v119 - v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v10 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v157 = (&v119 - v11);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v12 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v148 = &v119 - v13;
  v121 = type metadata accessor for HSGuidanceError(0);
  v14 = *(*(v121 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v121);
  v122 = (&v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v158 = (&v119 - v17);
  v125 = sub_1D2112C2C();
  v124 = *(v125 - 8);
  v18 = *(v124 + 64);
  v19 = MEMORY[0x1EEE9AC00](v125);
  v126 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v119 - v21;
  v127 = type metadata accessor for HSGuidanceForecast(0);
  v22 = *(v127 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v147 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v119 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v129 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v119 - v34;
  v36 = sub_1D211319C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v160 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v159 = &v119 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v152 = &v119 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v142 = &v119 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v155 = &v119 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v153 = &v119 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v119 - v51;
  v53 = *a1;
  v54 = qword_1D2115AF0[v53];
  v137 = *(&off_1E83F6718 + v53);
  sub_1D20A8580(a2, v35, &qword_1EC6C7248, &qword_1D2114A80);
  v55 = *(v37 + 48);
  v56 = v55(v35, 1, v36);
  v149 = v55;
  v150 = v37 + 48;
  if (v56 == 1)
  {
    sub_1D211317C();
    if (v55(v35, 1, v36) != 1)
    {
      sub_1D20A862C(v35, &qword_1EC6C7248, &qword_1D2114A80);
    }
  }

  else
  {
    (*(v37 + 32))(v52, v35, v36);
  }

  v57 = *(v37 + 56);
  v58 = v129;
  v57(v129, 1, 1, v36);
  sub_1D20FE6E4(v158, v130);
  v143 = v57;
  v133 = v52;
  sub_1D20A8580(v58, v31, &qword_1EC6C7248, &qword_1D2114A80);
  v59 = v149(v31, 1, v36);
  v120 = v22;
  v144 = v37 + 56;
  if (v59 == 1)
  {
    sub_1D20A862C(v31, &qword_1EC6C7248, &qword_1D2114A80);
    v60 = v133;
    v61 = v157;
LABEL_10:
    v65 = *(v37 + 16);
    v158 = ((v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v151 = v65;
    v65(v155, v60, v36);
    sub_1D2112BFC();
    goto LABEL_11;
  }

  v62 = v153;
  (*(v37 + 32))(v153, v31, v36);
  v60 = v133;
  v63 = sub_1D211310C();
  v61 = v157;
  if ((v63 & 1) == 0)
  {
    (*(v37 + 8))(v62, v36);
    goto LABEL_10;
  }

  v64 = *(v37 + 16);
  v158 = ((v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  v64(v155, v60, v36);
  v151 = v64;
  v64(v142, v62, v36);
  sub_1D2112BEC();
  (*(v37 + 8))(v62, v36);
LABEL_11:
  v66 = v148;
  v67 = v137;
  v141 = v53;
  sub_1D2112C0C();
  v68 = *(v154 + 36);
  sub_1D2112BDC();
  v69 = v156;
  v70 = v66 + *(v156 + 44);
  v71 = *(v135 + 48);
  v73 = *(v37 + 32);
  v72 = v37 + 32;
  (v73)(v70 + v71, v61, v36);
  v142 = *(v69 + 36);
  v153 = v73;
  (v73)(&v142[v66], v61 + v68, v36);
  v132 = *(v69 + 40);
  *(v66 + v132) = v54;
  v74 = v158;
  v151(v66, v70 + v71, v36);
  v75 = 0;
  *v70 = 0;
  v156 = v72 - 24;
  v154 = v72;
  v131 = (v72 + 8);
  v138 = v67 + 32;
  v157 = MEMORY[0x1E69E7CC0];
  *(v70 + 8) = 0;
  v76 = v136;
  v140 = v70;
  v139 = v71;
  v158 = v74;
  while (1)
  {
    v78 = v151;
    v77 = v152;
    v151(v152, v70 + v71, v36);
    sub_1D20C0CAC(&qword_1EE0843E0, MEMORY[0x1E6969530]);
    if (sub_1D211378C())
    {
      v79 = *v156;
      (*v156)(v77, v36);
      v80 = v147;
      v81 = v149;
      v143(v147, 1, 1, v36);
    }

    else
    {
      v82 = v134;
      sub_1D20A8580(v70, v134, &qword_1EC6C7278, &unk_1D2115720);
      v83 = *v82;
      v84 = *(v82 + 8);
      v85 = *(v135 + 48);
      sub_1D20C0CAC(&qword_1EC6C7288, MEMORY[0x1E6969530]);
      v86 = v155;
      v87 = sub_1D2113B1C();
      LOBYTE(v83) = v88;
      v79 = *v156;
      v89 = v82 + v85;
      v67 = v137;
      v76 = v136;
      (*v156)(v89, v36);
      *v70 = v87;
      *(v70 + 8) = v83 & 1;
      v90 = v86;
      v78 = v151;
      (*v131)(v70 + v71, v90, v36);
      v80 = v147;
      v91 = v143;
      (v153)(v147, v152, v36);
      v81 = v149;
      v91(v80, 0, 1, v36);
    }

    if (v81(v80, 1, v36) == 1)
    {
      sub_1D20A862C(v148, &qword_1EC6C7280, &qword_1D21149E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
      v102 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
      v103 = *(*v102 + 72);
      v104 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D2114850;
      v106 = v105 + v104;
      v107 = v124;
      v108 = v130;
      v109 = v125;
      (*(v124 + 16))(v106, v130, v125);
      *(v106 + v102[7]) = 0x3FE199999999999ALL;
      *(v106 + v102[8]) = 0x3FEC7AE147AE147BLL;

      sub_1D20A862C(v129, &qword_1EC6C7248, &qword_1D2114A80);
      v79(v133, v36);
      v110 = v127;
      v111 = *(v107 + 32);
      v112 = v123;
      v111(&v123[*(v127 + 24)], v108, v109);
      v111((v112 + *(v110 + 32)), v126, v109);
      *v112 = 0;
      *(v112 + 8) = v105;
      *(v112 + *(v110 + 28)) = v157;
      v113 = v128;
      sub_1D20BF464(v112, v128, type metadata accessor for HSGuidanceForecast);
      v114 = 0;
      v115 = v120;
      return (*(v115 + 56))(v113, v114, 1, v110);
    }

    v92 = v159;
    (v153)(v159, v80, v36);
    result = sub_1D20FDFE4(v92);
    if (v94)
    {

      v116 = v122;
      *v122 = 0xD00000000000001BLL;
      v116[1] = 0x80000001D211A5C0;
      swift_storeEnumTagMultiPayload();
      sub_1D20C0CAC(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
      swift_willThrowTypedImpl();

      v79(v159, v36);
      v117 = *(v124 + 8);
      v118 = v125;
      v117(v126, v125);
      v117(v130, v118);
      sub_1D20A862C(v129, &qword_1EC6C7248, &qword_1D2114A80);
      v79(v133, v36);
      sub_1D20A862C(v148, &qword_1EC6C7280, &qword_1D21149E0);
      v158 = v116;
      v113 = v128;
      v110 = v127;
      v115 = v120;
      sub_1D20BF408(v116);
      v114 = 1;
      return (*(v115 + 56))(v113, v114, 1, v110);
    }

    v95 = *(v67 + 16);
    if (!v95)
    {
      break;
    }

    v78(v160, v159, v36);
    if (v141 == 5 && !v75)
    {
      v96 = v155;
      sub_1D21130DC();
      v97 = v160;
      v79(v160, v36);
      (v153)(v97, v96, v36);
    }

    v78(v155, v160, v36);
    sub_1D2112BFC();
    *(v76 + *(v146 + 20)) = *(v138 + 8 * (v75 % v95));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = sub_1D20B720C(0, v157[2] + 1, 1, v157);
    }

    v99 = v157[2];
    v98 = v157[3];
    if (v99 >= v98 >> 1)
    {
      v157 = sub_1D20B720C(v98 > 1, v99 + 1, 1, v157);
    }

    v79(v160, v36);
    v79(v159, v36);
    v100 = v157;
    v157[2] = v99 + 1;
    result = sub_1D20BF464(v76, v100 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v99, type metadata accessor for HSGuidanceValue);
    v101 = __OFADD__(v75++, 1);
    v70 = v140;
    v71 = v139;
    if (v101)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t static HSGuidanceForecast.generateGuidanceValues(from:calendar:intervalLength:date:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v7 = sub_1D2112E7C();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v11 = sub_1D21132CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D2115280;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A58], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A88], v11);
  sub_1D20BFD3C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  v18 = v10;
  v19 = sub_1D2112DCC();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_1D2112E1C();
  v24 = 60 * v21;
  if ((v21 * 60) >> 64 != (60 * v21) >> 63)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v22;
  }

  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    goto LABEL_31;
  }

  if ((a3 + 59) < 0x77)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((a3 + 119) <= 0x3B && v27 == 0x8000000000000000)
  {
    goto LABEL_35;
  }

  v28 = 86400 / a3;
  if (!(86400 / a3))
  {
    goto LABEL_33;
  }

  v29 = v27 / (a3 / 60);
  if (v29 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_36;
  }

  v31 = *(a1 + 16);
  if (!v31)
  {
    (*(v41 + 8))(v10, v42);
    return MEMORY[0x1E69E7CC0];
  }

  v32 = v29 % v28 % v31;
  if (v32 < 0)
  {
    goto LABEL_34;
  }

  v44 = a1;
  v45 = a1 + 32;
  v33 = (2 * v32) | 1;
  v46 = v32;
  v47 = (2 * v31) | 1;

  sub_1D20C036C(v34, a1 + 32, 0, v33);
  v18 = v44;
  a1 = v45;
  a3 = v46;
  a2 = v47;
  if ((v47 & 1) == 0)
  {
LABEL_20:
    sub_1D20BF4CC(v18, a1, a3, a2);
    v36 = v35;
    swift_unknownObjectRelease();
    (*(v41 + 8))(v10, v42);
    return v36;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v37 + 16);

  if (__OFSUB__(a2 >> 1, a3))
  {
    goto LABEL_37;
  }

  if (v38 != (a2 >> 1) - a3)
  {
LABEL_38:
    swift_unknownObjectRelease_n();
    goto LABEL_20;
  }

  v36 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  (*(v41 + 8))(v10, v42);
  swift_unknownObjectRelease();
  return v36;
}

uint64_t HSGuidanceForecast.MockInputs.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HSGuidanceForecast.MockInputs.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.values.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.interval.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.interval.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t HSGuidanceForecast.MockInputs.IntervalDuration.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 3599)
  {
    if (result != 43200)
    {
      if (result == 3600)
      {
        *a2 = 2;
        return result;
      }

      goto LABEL_8;
    }

    *a2 = 3;
  }

  else
  {
    if (result != 900)
    {
      if (result == 1800)
      {
        *a2 = 1;
        return result;
      }

LABEL_8:
      *a2 = 4;
      return result;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D20BEBC4()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](qword_1D2115B30[v1]);
  return sub_1D2113F1C();
}

uint64_t sub_1D20BEC4C()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](qword_1D2115B30[v1]);
  return sub_1D2113F1C();
}

uint64_t sub_1D20BED68()
{
  v1 = 0x696669746E656469;
  v2 = 0x6C61767265746E69;
  if (*v0 != 2)
  {
    v2 = 0x746E4964696C6176;
  }

  if (*v0)
  {
    v1 = 0x7365756C6176;
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

uint64_t sub_1D20BEDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20C0AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20BEE18(uint64_t a1)
{
  v2 = sub_1D20C05A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20BEE54(uint64_t a1)
{
  v2 = sub_1D20C05A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceForecast.MockInputs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7520, &unk_1D2115740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  LODWORD(v10) = *(v1 + 32);
  v16 = *(v1 + 33);
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20C05A8();
  sub_1D2113F3C();
  v26 = 0;
  v12 = v20;
  sub_1D2113DBC();
  if (!v12)
  {
    v13 = v16;
    v21 = v19;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538);
    sub_1D2113DEC();
    v24 = 2;
    sub_1D2113D9C();
    v23 = v13;
    v22 = 3;
    sub_1D20C05FC();
    sub_1D2113DAC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t HSGuidanceForecast.MockInputs.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7548, &qword_1D2115750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20C05A8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1D2113D4C();
  v13 = v12;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v29 = 1;
  sub_1D20C0650(&qword_1EE083DB8);
  sub_1D2113D7C();
  v23 = v25;
  v28 = 2;
  v14 = sub_1D2113D2C();
  v21 = v15;
  v22 = v14;
  v26 = 3;
  sub_1D20C06BC();
  sub_1D2113D3C();
  (*(v6 + 8))(v9, v5);
  v17 = v27;
  v18 = v23;
  *a2 = v24;
  *(a2 + 8) = v13;
  v19 = v22;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21 & 1;
  *(a2 + 33) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D20BF408(uint64_t a1)
{
  v2 = type metadata accessor for HSGuidanceError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20BF464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D20BF4CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1D20BF59C(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1D20DC700(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 8 * v14), 8 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                v19 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D20BF714(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v37 = v10;
  v38 = (v19 + 8 * a3);
  result = sub_1D20BFBDC(result);
  if (result)
  {
    v20 = result;
    v36 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 8 * a2);
    }

    v36(v19, a3);
    v24 = &v23[8 * v39];
    if (v38 != v24 || v38 >= &v24[8 * v14])
    {
      memmove(v38, v24, 8 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 8 * v21), 8 * a2);
    result = (a4)(&v18[8 * a2], a3);
    v28 = v26 + v39;
    if (__OFADD__(v26, v39))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v38, (v27 + 8 * v28), 8 * v32);
  }

  v33 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v37;
  v34 = *(v37 + 16);
  v30 = __OFADD__(v21, v34);
  v35 = v21 + v34;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v35 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v35 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v37;
  v4[1] = &v18[-8 * v21];
  v4[2] = v21;
  v4[3] = (2 * v35) | 1;
}

uint64_t sub_1D20BF948(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_1D20BFA00(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1D20DC700(v6, v25);
}

uint64_t sub_1D20BFBDC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 8 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v10 + 8 * v8 != v11 + 8 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_1D2113E3C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v17 = v10 - result - 25;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 3);
  v6 = v8 + (v17 >> 3);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_1D20F2770(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_1D20BFD3C(uint64_t a1)
{
  v2 = sub_1D21132CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7590, &unk_1D2115AE0);
    v10 = sub_1D2113BFC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D20C0CAC(&qword_1EE083D90, MEMORY[0x1E6969AD0]);
      v18 = sub_1D211373C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D20C0CAC(&qword_1EE083D88, MEMORY[0x1E6969AD0]);
          v25 = sub_1D21137AC();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void *sub_1D20C005C(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v36 = result[3] >> 1;
  if (v5 == v36)
  {
    return result;
  }

  v31 = result[2];
  if (v5 < v31 || v5 >= v36)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(result[1] + 8 * v5);
  v30 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v37 = sub_1D20BFA00(v4, v4 + 1, *v7, v7[1], v3, v2);
    v11 = sub_1D20BFBC0();
    v12 = v7;
    sub_1D20BF714(&v37, v4, 0, v11);

    v3 = v7[2];
    v2 = v7[3];
    v13 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v33 = v2 >> 1;
    v32 = v7[1];
    v14 = v32 + 8 * v3;
    v34 = *v7;
    if (v2)
    {
      v35 = v7[3];
      sub_1D2113E3C();
      swift_unknownObjectRetain();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);
      if (v14 + 8 * v13 == v15 + 8 * v16 + 32)
      {
        v18 = *(v15 + 24);

        v19 = (v18 >> 1) - v16;
        v20 = __OFADD__(v13, v19);
        v17 = v13 + v19;
        if (v20)
        {
          goto LABEL_48;
        }

        v7 = v12;
      }

      else
      {

        v17 = v13;
      }

      v2 = v35;
      if (v4 >= v17)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = (v2 >> 1) - v3;
      if (v4 >= v13)
      {
        goto LABEL_33;
      }
    }

    *(v14 + 8 * v4) = v9;
    v21 = v4 + 1;
    if (v8 != v36)
    {
      v22 = 0;
      while (1)
      {
        if (v8 < v31)
        {
          goto LABEL_42;
        }

        v23 = v22;
        if (v8 + v22 >= v36)
        {
          goto LABEL_42;
        }

        v9 = *(v30 + 8 * v8 + 8 * v22);
        if (!(v21 - v17 + v22))
        {
          break;
        }

        *(v32 + 8 * v4 + 8 * v3 + 8 + 8 * v22++) = v9;
        if (!(v8 - v36 + v23 + 1))
        {
          v9 = 0;
          v4 = v21 + v22;
          v8 = v36;
LABEL_31:
          v10 = v21 + v23 < v17;
          goto LABEL_34;
        }
      }

      v8 += v22 + 1;
      v4 = v17;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v36;
    ++v4;
LABEL_34:
    v24 = v4 - v13;
    if (__OFSUB__(v4, v13))
    {
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = v10;
      v26 = v2;
      sub_1D2113E3C();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v27 = result[2];
      v20 = __OFADD__(v27, v24);
      v28 = v27 + v24;
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v28;

      v29 = v33 + v24;
      if (__OFADD__(v33, v24))
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v26 & 1 | (2 * v29);
      v7[3] = v2;
      v10 = v25;
    }

    if (v10)
    {
      return result;
    }
  }

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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1D20C036C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v14 + 8 * v15 + 32)
  {

    goto LABEL_8;
  }

  v17 = *(v14 + 24);

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_1D20BF59C(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = (v4[1] + 8 * v22 + 8 * v23);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  sub_1D2113E3C();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v26 + 16);
  if (v24 != (v26 + 8 * v27 + 32))
  {

    goto LABEL_21;
  }

  v29 = *(v26 + 24);

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v31 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v24, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1D20BF948(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_1D20C005C(v34);
  }

  return result;
}

unint64_t sub_1D20C05A8()
{
  result = qword_1EC6C7528;
  if (!qword_1EC6C7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7528);
  }

  return result;
}

unint64_t sub_1D20C05FC()
{
  result = qword_1EC6C7540;
  if (!qword_1EC6C7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7540);
  }

  return result;
}

uint64_t sub_1D20C0650(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7530, &qword_1D2117B10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20C06BC()
{
  result = qword_1EC6C7550;
  if (!qword_1EC6C7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7550);
  }

  return result;
}

unint64_t sub_1D20C0714()
{
  result = qword_1EC6C7558;
  if (!qword_1EC6C7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7558);
  }

  return result;
}

unint64_t sub_1D20C076C()
{
  result = qword_1EC6C7560;
  if (!qword_1EC6C7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7560);
  }

  return result;
}

uint64_t _s8MockTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8MockTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D20C0924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1D20C096C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D20C09E4()
{
  result = qword_1EC6C7568;
  if (!qword_1EC6C7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7568);
  }

  return result;
}

unint64_t sub_1D20C0A3C()
{
  result = qword_1EC6C7570;
  if (!qword_1EC6C7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7570);
  }

  return result;
}

unint64_t sub_1D20C0A94()
{
  result = qword_1EC6C7578;
  if (!qword_1EC6C7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7578);
  }

  return result;
}

uint64_t sub_1D20C0AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

unint64_t sub_1D20C0C58()
{
  result = qword_1EC6C7580;
  if (!qword_1EC6C7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7580);
  }

  return result;
}

uint64_t sub_1D20C0CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20C0CFC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a3;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v10 = type metadata accessor for HSGuidanceValue(0);
  *(v7 + 136) = v10;
  v11 = *(v10 - 8);
  *(v7 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v13 = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v7 + 160) = v13;
  v14 = *(v13 - 8);
  *(v7 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v17 = sub_1D211319C();
  *(v7 + 208) = v17;
  v18 = *(v17 - 8);
  *(v7 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z") - 8) + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v21 = type metadata accessor for NetworkError(0);
  *(v7 + 304) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A8, &qword_1D2115B80) - 8) + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v25 = sub_1D21131DC();
  *(v7 + 352) = v25;
  v26 = *(v25 - 8);
  *(v7 + 360) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 432) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D20C10BC, 0, 0);
}

uint64_t sub_1D20C10BC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_1D21131CC();
  sub_1D21131AC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1D211382C();
  v6 = v5;

  v0[47] = v4;
  v0[48] = v6;
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_1D20C11C8;
  v8 = v0[14];

  return sub_1D20EF460(v8);
}

uint64_t sub_1D20C11C8()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D20C12C4, 0, 0);
}

uint64_t sub_1D20C12C4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  v18 = *(v0 + 336);
  v5 = *(v0 + 96);
  v6 = *(v0 + 88);
  sub_1D20A8580(*(v0 + 104), v4, &qword_1EC6C75A8, &qword_1D2115B80);
  v7 = type metadata accessor for GuidanceForecastRequestBuilder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v0 + 400) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v3;
  sub_1D20B7DA8(v4, v10 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
  v11 = (v10 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId);
  *v11 = v2;
  v11[1] = v1;
  v12 = sub_1D2112B1C();
  (*(*(v12 - 8) + 56))(v18, 1, 1, v12);

  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  v13[1] = sub_1D20C1468;
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 112);

  return sub_1D20C2DAC(v0 + 16, v16, v14, v15);
}

uint64_t sub_1D20C1468(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  sub_1D20A862C(*(v3 + 336), &qword_1EC6C7508, &unk_1D2116AA0);
  if (v1)
  {
    v7 = sub_1D20C295C;
  }

  else
  {
    v7 = sub_1D20C15B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D20C15B4()
{
  v220 = v0;
  v1 = *(v0 + 37);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = *(v0 + 6);
  v6 = *(v0 + 7);

  sub_1D20B9AB8(v2, v3, v1);

  v8 = sub_1D2112E7C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v1, 1, v8);
  v213 = v0;
  v11 = *(v0 + 37);
  if (v10 == 1)
  {

    v12 = &qword_1EC6C74D0;
    v13 = ".z";
    v14 = v11;
LABEL_3:
    sub_1D20A862C(v14, v12, v13);
LABEL_6:
    v18 = *(v0 + 52);
    v19 = *(v0 + 38);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    v20 = swift_allocError();
    *v21 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_7;
  }

  v204 = v7;
  v15 = sub_1D2112E1C();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  if (v17)
  {

    goto LABEL_6;
  }

  v51 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v52 = [v51 init];
  [v52 setFormatOptions_];
  v53 = sub_1D21137BC();

  v54 = [v52 dateFromString_];

  if (v54)
  {
    v55 = *(v0 + 24);
    sub_1D211316C();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v58 = *(v0 + 26);
  v57 = *(v0 + 27);
  v60 = *(v0 + 24);
  v59 = *(v0 + 25);
  (*(v57 + 56))(v60, v56, 1, v58);
  sub_1D20B7DA8(v60, v59, &qword_1EC6C7248, &qword_1D2114A80);
  v61 = *(v57 + 48);
  if (v61(v59, 1, v58) == 1)
  {
    v62 = *(v0 + 25);

    v12 = &qword_1EC6C7248;
    v13 = &qword_1D2114A80;
    v14 = v62;
    goto LABEL_3;
  }

  v173 = v61;
  v63 = *(*(v0 + 27) + 32);
  (v63)(*(v0 + 36), *(v0 + 25), *(v0 + 26));
  v64 = 60 * v15;
  v65 = v204;
  if ((v15 * 60) >> 64 != (60 * v15) >> 63)
  {
    goto LABEL_63;
  }

  v66 = *(v0 + 35);
  v67 = *(v0 + 36);
  v58 = *(v0 + 13);
  v68 = v64 * *(v204 + 16);
  sub_1D21130DC();
  v69 = type metadata accessor for HSRatePlan(0);
  v172 = v63;
  if ((*(*(v69 - 8) + 48))(v58, 1, v69) == 1 && v6)
  {
    v70 = *(v6 + 2);
    if (v70)
    {
      v71 = *(v0 + 21);
      v214 = MEMORY[0x1E69E7CC0];

      v209 = v70;
      sub_1D20DC8A8(0, v70, 0);
      if (!*(v6 + 2))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v72 = v214;
      v73 = *(v0 + 53);
      v74 = *(v0 + 22);
      v75 = *(v6 + 5);
      v76 = *(v6 + 6);
      v77 = *(v6 + 7);
      v215 = *(v6 + 4);
      v216 = v75;
      v217 = v76;
      v218 = v77;
      v219 = *(v6 + 4);

      sub_1D20C68A4(&v215, v0 + 9, v74);
      if (v73)
      {
        v78 = *(v0 + 52);
        v210 = *(v0 + 36);
        v199 = *(v0 + 35);
        v79 = *(v0 + 26);
        v80 = *(v0 + 27);
        swift_bridgeObjectRelease_n();

        v81 = *(v80 + 8);
        v81(v199, v79);

        v20 = *(v0 + 9);
        v81(v210, v79);
        goto LABEL_7;
      }

      v58 = *(v214 + 16);
      v124 = *(v214 + 24);
      v17 = v58 + 1;
      if (v58 >= v124 >> 1)
      {
        sub_1D20DC8A8(v124 > 1, v58 + 1, 1);
        v72 = v214;
      }

      v125 = *(v0 + 22);
      *(v72 + 16) = v17;
      v126 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v127 = v71;
      v82 = v72;
      v202 = v126;
      v196 = *(v127 + 72);
      sub_1D20C6FB0(v125, v72 + v126 + v196 * v58, type metadata accessor for HSCleanGuidanceThresholds);
      if (v209 != 1)
      {
        v139 = v6 + 112;
        v140 = 1;
        while (v140 < *(v6 + 2))
        {
          v141 = *(v0 + 22);
          v142 = *(v139 - 3);
          v143 = *(v139 - 2);
          v144 = *(v139 - 1);
          v215 = *(v139 - 4);
          v216 = v142;
          v217 = v143;
          v218 = v144;
          v219 = *v139;

          sub_1D20C68A4(&v215, v0 + 9, v141);

          v145 = v82;
          v58 = *(v82 + 16);
          v146 = *(v82 + 24);
          v17 = v58 + 1;
          if (v58 >= v146 >> 1)
          {
            sub_1D20DC8A8(v146 > 1, v58 + 1, 1);
            v145 = v82;
          }

          ++v140;
          v147 = *(v0 + 22);
          *(v145 + 16) = v17;
          v82 = v145;
          sub_1D20C6FB0(v147, v145 + v202 + v196 * v58, type metadata accessor for HSCleanGuidanceThresholds);
          v139 += 3;
          if (v209 == v140)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_62;
      }

LABEL_50:
      v65 = v204;

      v83 = 0;
    }

    else
    {
      v83 = *(v0 + 53);
      v82 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v82 = 0;
    v83 = *(v0 + 53);
  }

  v200 = v83;
  v196 = v82;

  v84 = *(v65 + 16);
  if (v84)
  {
    v6 = v0;
    v85 = *(v0 + 27);
    v86 = *(v0 + 21);
    v182 = *(v0 + 17);
    v185 = *(v0 + 18);
    v215 = MEMORY[0x1E69E7CC0];
    sub_1D20DC864(0, v84, 0);
    v87 = 0;
    v17 = v215;
    v175 = (v86 + 48);
    v88 = v196;
    v89 = *(v65 + 16);
    v180 = (v85 + 16);
    if (v89 >= v84)
    {
      v89 = v84;
    }

    v191 = (v85 + 8);
    v194 = v89;
    v188 = v84;
    while (v194 != v87)
    {
      if (v87 >= *(v65 + 16))
      {
        goto LABEL_61;
      }

      v211 = v17;
      v90 = *(v6 + 36);
      v92 = *(v6 + 32);
      v91 = *(v6 + 33);
      v93 = *(v65 + 8 * v87 + 32);
      sub_1D21130DC();
      sub_1D21130DC();
      if (v88)
      {
        v94 = *(v6 + 20);
        v95 = *(v6 + 16);
        *(swift_task_alloc() + 16) = vextq_s8(*(v6 + 16), *(v6 + 16), 8uLL);
        sub_1D20F9D84(sub_1D20C7200, v88, v95);

        if ((*v175)(v95, 1, v94) == 1)
        {
          v116 = *(v6 + 52);
          v117 = *(v6 + 38);
          v201 = *(v6 + 35);
          v206 = *(v6 + 36);
          v118 = *(v6 + 33);
          v119 = *(v213 + 32);
          v120 = *(v213 + 26);
          v121 = *(v213 + 16);
          sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
          v20 = swift_allocError();
          *v122 = 2;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D20A862C(v121, &qword_1EC6C7598, &qword_1D2115B60);
          v123 = *v191;
          v0 = v213;
          (*v191)(v119, v120);
          v123(v118, v120);

          v123(v201, v120);

          v123(v206, v120);
          goto LABEL_7;
        }

        sub_1D20A862C(*(v6 + 16), &qword_1EC6C7598, &qword_1D2115B60);
      }

      v97 = *(v6 + 32);
      v96 = *(v6 + 33);
      v98 = *(v6 + 30);
      v99 = *(v6 + 26);
      v58 = v6;
      v100 = *(v6 + 19);
      v101 = *v180;
      (*v180)(*(v6 + 31), v96, v99);
      v101(v98, v97, v99);
      sub_1D2112BEC();
      *(v100 + *(v182 + 20)) = v93;
      v102 = *v191;
      (*v191)(v97, v99);
      v102(v96, v99);
      v17 = v211;
      v215 = v211;
      v104 = *(v211 + 16);
      v103 = *(v211 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1D20DC864(v103 > 1, v104 + 1, 1);
        v17 = v215;
      }

      ++v87;
      v105 = *(v6 + 19);
      *(v17 + 16) = v104 + 1;
      sub_1D20C6FB0(v105, v17 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v104, type metadata accessor for HSGuidanceValue);
      v65 = v204;
      v88 = v196;
      if (v188 == v87)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v6 = v0;
LABEL_42:
  v107 = *(v6 + 52);
  v108 = *(v6 + 34);
  v109 = MEMORY[0x1D3896910](v106);
  v58 = v200;
  sub_1D20BB8E8(v107);
  objc_autoreleasePoolPop(v109);
  v6 = v173;
  if (!v200)
  {
    if (qword_1EE084040 == -1)
    {
LABEL_44:
      v110 = *(v213 + 52);
      v111 = *(v213 + 34);
      v112 = *(v213 + 29);
      v113 = *(v213 + 23);
      sub_1D20CFDF8(600, qword_1EE0874E0, *algn_1EE0874E8);
      v114 = sub_1D21130DC();
      v115 = MEMORY[0x1D3896910](v114);
      sub_1D20BBB90(v110, v113);
      objc_autoreleasePoolPop(v115);
      if (v58)
      {
        return;
      }

      v212 = v17;
      v128 = *(v213 + 26);
      v129 = *(v213 + 23);
      v130 = (v6)(v129, 1, v128);
      v207 = *(v213 + 52);
      if (v130 != 1)
      {
        v148 = *(v213 + 50);
        v166 = v213[432];
        v167 = *(v213 + 46);
        v168 = *(v213 + 43);
        v169 = *(v213 + 42);
        v170 = *(v213 + 41);
        v171 = *(v213 + 40);
        v149 = *(v213 + 36);
        v150 = *(v213 + 35);
        v165 = *(v213 + 34);
        v176 = *(v213 + 33);
        v178 = *(v213 + 32);
        v152 = *(v213 + 30);
        v151 = *(v213 + 31);
        v164 = *(v213 + 29);
        v203 = *(v213 + 28);
        v153 = *(v213 + 27);
        v183 = *(v213 + 25);
        v186 = *(v213 + 24);
        v189 = *(v213 + 22);
        v192 = *(v213 + 19);
        v195 = *(v213 + 16);
        v163 = *(v213 + 10);
        v172();
        v154 = *(v153 + 16);
        v154(v151, v149, v128);
        v154(v152, v150, v128);
        v155 = type metadata accessor for HSGuidanceForecast(0);
        v156 = v163 + v155[6];
        sub_1D2112BEC();
        v154(v151, v203, v128);
        v154(v152, v164, v128);
        v157 = v163 + v155[8];
        sub_1D2112BEC();

        swift_setDeallocating();
        v158 = v148[3];

        sub_1D20A862C(v148 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
        v159 = *(v148 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

        v160 = *(*v148 + 48);
        v161 = *(*v148 + 52);
        swift_deallocClassInstance();
        v162 = *(v153 + 8);
        v162(v203, v128);
        v162(v164, v128);
        v162(v165, v128);
        v162(v150, v128);
        *v163 = v166;
        *(v163 + 8) = v196;
        *(v163 + v155[7]) = v212;
        v162(v149, v128);

        v50 = *(v213 + 1);
LABEL_11:

        v50();
        return;
      }

      v131 = *(v213 + 38);
      v132 = *(v213 + 36);
      v133 = *(v213 + 35);
      v134 = *(v213 + 34);
      v135 = *(v213 + 29);
      v136 = *(v213 + 27);

      sub_1D20A862C(v129, &qword_1EC6C7248, &qword_1D2114A80);
      sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
      v20 = swift_allocError();
      *v137 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v138 = *(v136 + 8);
      v138(v135, v128);
      v138(v134, v128);
      v138(v133, v128);
      v0 = v213;
      v138(v132, v128);
LABEL_7:
      v22 = *(v0 + 40);
      v23 = *(v0 + 38);
      *(v0 + 8) = v20;
      v24 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
      v25 = swift_dynamicCast();
      v26 = *(v0 + 50);
      if (v25)
      {
        v27 = *(v0 + 39);
        v28 = *(v0 + 40);
        v29 = *(v0 + 15);

        sub_1D20C6FB0(v28, v27, type metadata accessor for NetworkError);
        sub_1D20AB1E4(v29);
        type metadata accessor for HSGuidanceError(0);
        sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
        swift_willThrowTypedImpl();
        swift_setDeallocating();
        v30 = v26[3];

        sub_1D20A862C(v26 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
        v31 = *(v26 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

        v32 = *(*v26 + 48);
        v33 = *(*v26 + 52);
        swift_deallocClassInstance();
        sub_1D20C6F38(v27);
        v34 = *(v0 + 8);
      }

      else
      {
        v35 = *(v0 + 15);

        *v35 = 0xD000000000000037;
        v35[1] = 0x80000001D211ACB0;
        type metadata accessor for HSGuidanceError(0);
        swift_storeEnumTagMultiPayload();
        sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
        swift_willThrowTypedImpl();
        swift_setDeallocating();
        v36 = v26[3];

        sub_1D20A862C(v26 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
        v37 = *(v26 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

        v38 = *(*v26 + 48);
        v39 = *(*v26 + 52);
        swift_deallocClassInstance();
        v34 = v20;
      }

      v40 = *(v0 + 46);
      v42 = *(v0 + 42);
      v41 = *(v0 + 43);
      v44 = *(v0 + 40);
      v43 = *(v0 + 41);
      v45 = *(v0 + 39);
      v47 = *(v0 + 36);
      v46 = *(v0 + 37);
      v48 = *(v0 + 34);
      v49 = *(v0 + 35);
      v174 = *(v0 + 33);
      v177 = *(v0 + 32);
      v179 = *(v0 + 31);
      v181 = *(v0 + 30);
      v184 = *(v0 + 29);
      v187 = *(v0 + 28);
      v190 = *(v0 + 25);
      v193 = *(v0 + 24);
      v197 = *(v0 + 23);
      v198 = *(v0 + 22);
      v205 = *(v0 + 19);
      v208 = *(v0 + 16);

      v50 = *(v0 + 1);
      goto LABEL_11;
    }

LABEL_64:
    swift_once();
    goto LABEL_44;
  }
}

uint64_t sub_1D20C295C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
  v3 = swift_allocError();
  sub_1D20C6FB0(v1, v4, type metadata accessor for NetworkError);
  *(v0 + 64) = v3;
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v8 = swift_dynamicCast();
  v9 = *(v0 + 400);
  if (v8)
  {
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 120);

    sub_1D20C6FB0(v11, v10, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v12);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v13 = v9[3];

    sub_1D20A862C(v9 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
    v14 = *(v9 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

    v15 = *(*v9 + 48);
    v16 = *(*v9 + 52);
    swift_deallocClassInstance();
    sub_1D20C6F38(v10);
    v17 = *(v0 + 64);
  }

  else
  {
    v18 = *(v0 + 120);

    *v18 = 0xD000000000000037;
    v18[1] = 0x80000001D211ACB0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v19 = v9[3];

    sub_1D20A862C(v9 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
    v20 = *(v9 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

    v21 = *(*v9 + 48);
    v22 = *(*v9 + 52);
    swift_deallocClassInstance();
    v17 = v3;
  }

  v23 = *(v0 + 368);
  v25 = *(v0 + 336);
  v24 = *(v0 + 344);
  v27 = *(v0 + 320);
  v26 = *(v0 + 328);
  v28 = *(v0 + 312);
  v30 = *(v0 + 288);
  v29 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 280);
  v35 = *(v0 + 264);
  v36 = *(v0 + 256);
  v37 = *(v0 + 248);
  v38 = *(v0 + 240);
  v39 = *(v0 + 232);
  v40 = *(v0 + 224);
  v41 = *(v0 + 200);
  v42 = *(v0 + 192);
  v43 = *(v0 + 184);
  v44 = *(v0 + 176);
  v45 = *(v0 + 152);
  v46 = *(v0 + 128);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D20C2DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_1D2112B1C();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C2EC4, 0, 0);
}

uint64_t sub_1D20C2EC4()
{
  v44 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  sub_1D20A8580(v0[10], v3, &qword_1EC6C7508, &unk_1D2116AA0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[13];
    v7 = v0[11];
    sub_1D20F6D64(v0[14]);
    if (v4(v6, 1, v5) != 1)
    {
      sub_1D20A862C(v0[13], &qword_1EC6C7508, &unk_1D2116AA0);
    }
  }

  else
  {
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];
    (*(v9 + 32))(v10, v0[13], v8);
    (*(v9 + 56))(v10, 0, 1, v8);
  }

  v12 = v0[14];
  v11 = v0[15];
  if (v4(v12, 1, v11) == 1)
  {
    v13 = v0[12];
    sub_1D20A862C(v12, &qword_1EC6C7508, &unk_1D2116AA0);
    *v13 = 0;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[13];
    v16 = v0[14];

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v12, v11);
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v20 = v0[17];
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[16];
    v24 = sub_1D211362C();
    v0[19] = __swift_project_value_buffer(v24, qword_1EE0874A8);
    (*(v23 + 16))(v20, v21, v22);
    v25 = sub_1D21135FC();
    v26 = sub_1D2113A9C();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v31 = 136315138;
      sub_1D20C710C(&qword_1EE0843F0, MEMORY[0x1E6967EC8]);
      v32 = sub_1D2113E0C();
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = sub_1D20B75F0(v32, v34, &v43);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1D209F000, v25, v26, "Fetching request %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3896EB0](v42, -1, -1);
      MEMORY[0x1D3896EB0](v31, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    v0[20] = v35;
    v37 = v0[18];
    sub_1D20DB540(0xD00000000000001CLL, 0x80000001D211AC50, 0xD00000000000001DLL, 0x80000001D211AC70);
    v38 = *(MEMORY[0x1E6969EC0] + 4);
    v39 = swift_task_alloc();
    v0[21] = v39;
    *v39 = v0;
    v39[1] = sub_1D20C3384;
    v40 = v0[18];
    v41 = v0[9];

    return MEMORY[0x1EEDC6260](v40, 0);
  }
}

uint64_t sub_1D20C3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 168);
  v10 = *v4;
  *(*v4 + 176) = v3;

  if (v3)
  {
    v11 = sub_1D20C71FC;
  }

  else
  {
    v8[23] = a3;
    v8[24] = a2;
    v8[25] = a1;
    v11 = sub_1D20C34C0;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D20C34C0()
{
  v1 = v0[23];
  v2 = v0[19];
  sub_1D20C7064(v0[25], v0[24]);
  v83 = v1;
  v3 = v1;
  v4 = sub_1D21135FC();
  v5 = sub_1D2113A9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D209F000, v4, v5, "Successfully fetched response", v6, 2u);
    MEMORY[0x1D3896EB0](v6, -1, -1);
  }

  v7 = v0[23];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v27 = v0[19];
    v28 = sub_1D21135FC();
    v29 = sub_1D2113A7C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D209F000, v28, v29, "Unable to cast response to HTTPURLResponse", v30, 2u);
      MEMORY[0x1D3896EB0](v30, -1, -1);
    }

    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[23];
    v34 = v0[20];
    v35 = v0[18];
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[12];

    *v38 = 2;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();
    sub_1D20B98A4(v31, v32);
    sub_1D20C7018(v31, v32, v83, 0);

    v34(v35, v37);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = v0[18];
  sub_1D20DBA60(0xD000000000000011, 0x80000001D211AC90, [v8 statusCode], &unk_1F4D9F1A8);
  if ([v9 statusCode] != 200)
  {
    v40 = v0[24];
    v39 = v0[25];
    v41 = v0[23];
    v82 = v0[20];
    v42 = v0[18];
    v43 = v0[15];
    v44 = v0[16];
    v45 = v0[12];
    *v45 = [v9 statusCode];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v39, v40);
    sub_1D20C7018(v39, v40, v1, 0);
    v82(v42, v43);
LABEL_14:
    v47 = v0[17];
    v46 = v0[18];
    v49 = v0[13];
    v48 = v0[14];

    v50 = v0[1];

    return v50();
  }

  v11 = v0[19];
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Decoding response...", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = v0[24];
  v16 = v0[25];
  v17 = v0[22];

  v18 = sub_1D2112B4C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20C71A8();
  sub_1D2112B2C();
  if (v17)
  {
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[23];
    v79 = v0[18];
    v81 = v0[20];
    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[12];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v21, v22);

    sub_1D20C7018(v21, v22, v83, 0);

    v81(v79, v24);
    goto LABEL_14;
  }

  v52 = v0[19];
  v53 = v0[3];
  v80 = v0[2];
  v54 = v0[5];
  v77 = v0[4];
  v55 = v0[6];
  v74 = v0[7];

  v78 = v53;

  v76 = v54;

  v75 = v55;

  v56 = sub_1D21135FC();
  v57 = sub_1D2113A9C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1D209F000, v56, v57, "Successfully decoded response", v58, 2u);
    MEMORY[0x1D3896EB0](v58, -1, -1);
  }

  v59 = v0[19];

  v60 = sub_1D21135FC();
  v61 = sub_1D2113A9C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1D209F000, v60, v61, "==== EK Fetching request complete ====", v62, 2u);
    MEMORY[0x1D3896EB0](v62, -1, -1);
  }

  v64 = v0[24];
  v63 = v0[25];
  v65 = v0[18];
  v70 = v0[20];
  v71 = v0[17];
  v66 = v0[15];
  v67 = v0[16];
  v72 = v0[14];
  v73 = v0[13];
  v68 = v0[8];
  sub_1D20B98A4(v63, v64);

  sub_1D20C7018(v63, v64, v1, 0);

  v70(v65, v66);
  *v68 = v80;
  v68[1] = v78;
  v68[2] = v77;
  v68[3] = v76;
  v68[4] = v75;
  v68[5] = v74;

  v69 = v0[1];

  return v69(v9);
}

uint64_t sub_1D20C3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_1D2112B1C();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C3D24, 0, 0);
}

uint64_t sub_1D20C3D24()
{
  v44 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  sub_1D20A8580(v0[10], v3, &qword_1EC6C7508, &unk_1D2116AA0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[13];
    v7 = v0[11];
    sub_1D20F2B0C(v0[14]);
    if (v4(v6, 1, v5) != 1)
    {
      sub_1D20A862C(v0[13], &qword_1EC6C7508, &unk_1D2116AA0);
    }
  }

  else
  {
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];
    (*(v9 + 32))(v10, v0[13], v8);
    (*(v9 + 56))(v10, 0, 1, v8);
  }

  v12 = v0[14];
  v11 = v0[15];
  if (v4(v12, 1, v11) == 1)
  {
    v13 = v0[12];
    sub_1D20A862C(v12, &qword_1EC6C7508, &unk_1D2116AA0);
    *v13 = 0;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[13];
    v16 = v0[14];

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v12, v11);
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v20 = v0[17];
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[16];
    v24 = sub_1D211362C();
    v0[19] = __swift_project_value_buffer(v24, qword_1EE0874A8);
    (*(v23 + 16))(v20, v21, v22);
    v25 = sub_1D21135FC();
    v26 = sub_1D2113A9C();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v31 = 136315138;
      sub_1D20C710C(&qword_1EE0843F0, MEMORY[0x1E6967EC8]);
      v32 = sub_1D2113E0C();
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = sub_1D20B75F0(v32, v34, &v43);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1D209F000, v25, v26, "Fetching request %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3896EB0](v42, -1, -1);
      MEMORY[0x1D3896EB0](v31, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    v0[20] = v35;
    v37 = v0[18];
    sub_1D20DB540(0xD00000000000001CLL, 0x80000001D211AC50, 0xD00000000000001DLL, 0x80000001D211AC70);
    v38 = *(MEMORY[0x1E6969EC0] + 4);
    v39 = swift_task_alloc();
    v0[21] = v39;
    *v39 = v0;
    v39[1] = sub_1D20C41E4;
    v40 = v0[18];
    v41 = v0[9];

    return MEMORY[0x1EEDC6260](v40, 0);
  }
}

uint64_t sub_1D20C41E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 168);
  v10 = *v4;
  *(*v4 + 176) = v3;

  if (v3)
  {
    v11 = sub_1D20C4A68;
  }

  else
  {
    v8[23] = a3;
    v8[24] = a2;
    v8[25] = a1;
    v11 = sub_1D20C4320;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D20C4320()
{
  v1 = v0[23];
  v2 = v0[19];
  sub_1D20C7064(v0[25], v0[24]);
  v83 = v1;
  v3 = v1;
  v4 = sub_1D21135FC();
  v5 = sub_1D2113A9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D209F000, v4, v5, "Successfully fetched response", v6, 2u);
    MEMORY[0x1D3896EB0](v6, -1, -1);
  }

  v7 = v0[23];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v27 = v0[19];
    v28 = sub_1D21135FC();
    v29 = sub_1D2113A7C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D209F000, v28, v29, "Unable to cast response to HTTPURLResponse", v30, 2u);
      MEMORY[0x1D3896EB0](v30, -1, -1);
    }

    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[23];
    v34 = v0[20];
    v35 = v0[18];
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[12];

    *v38 = 2;
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();
    sub_1D20B98A4(v31, v32);
    sub_1D20C7018(v31, v32, v83, 0);

    v34(v35, v37);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = v0[18];
  sub_1D20DBA60(0xD000000000000011, 0x80000001D211AC90, [v8 statusCode], &unk_1F4D9F1D0);
  if ([v9 statusCode] != 200)
  {
    v40 = v0[24];
    v39 = v0[25];
    v41 = v0[23];
    v82 = v0[20];
    v42 = v0[18];
    v43 = v0[15];
    v44 = v0[16];
    v45 = v0[12];
    *v45 = [v9 statusCode];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v39, v40);
    sub_1D20C7018(v39, v40, v1, 0);
    v82(v42, v43);
LABEL_14:
    v47 = v0[17];
    v46 = v0[18];
    v49 = v0[13];
    v48 = v0[14];

    v50 = v0[1];

    return v50();
  }

  v11 = v0[19];
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Decoding response...", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = v0[24];
  v16 = v0[25];
  v17 = v0[22];

  v18 = sub_1D2112B4C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20C70B8();
  sub_1D2112B2C();
  if (v17)
  {
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[23];
    v79 = v0[18];
    v81 = v0[20];
    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[12];
    type metadata accessor for NetworkError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_willThrowTypedImpl();

    sub_1D20B98A4(v21, v22);

    sub_1D20C7018(v21, v22, v83, 0);

    v81(v79, v24);
    goto LABEL_14;
  }

  v52 = v0[19];
  v78 = v0[3];
  v80 = v0[2];
  v53 = v0[5];
  v77 = v0[4];
  v54 = v0[6];
  v55 = v0[7];

  v76 = v53;

  v75 = v54;

  v74 = v55;

  v56 = sub_1D21135FC();
  v57 = sub_1D2113A9C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1D209F000, v56, v57, "Successfully decoded response", v58, 2u);
    MEMORY[0x1D3896EB0](v58, -1, -1);
  }

  v59 = v0[19];

  v60 = sub_1D21135FC();
  v61 = sub_1D2113A9C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1D209F000, v60, v61, "==== EK Fetching request complete ====", v62, 2u);
    MEMORY[0x1D3896EB0](v62, -1, -1);
  }

  v64 = v0[24];
  v63 = v0[25];
  v65 = v0[18];
  v70 = v0[20];
  v71 = v0[17];
  v66 = v0[15];
  v67 = v0[16];
  v72 = v0[14];
  v73 = v0[13];
  v68 = v0[8];
  sub_1D20B98A4(v63, v64);

  sub_1D20C7018(v63, v64, v1, 0);

  v70(v65, v66);
  *v68 = v80;
  v68[1] = v78;
  v68[2] = v77;
  v68[3] = v76;
  v68[4] = v75;
  v68[5] = v74;

  v69 = v0[1];

  return v69(v9);
}

uint64_t sub_1D20C4A68()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  sub_1D20F5FDC(v1, v0[12]);
  type metadata accessor for NetworkError(0);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
  swift_willThrowTypedImpl();
  sub_1D20C7018(v1, 0, 0, 1);
  v2(v3, v4);
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D20C4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for HSGuidanceValue(0);
  v6[17] = v8;
  v9 = *(v8 - 8);
  v6[18] = v9;
  v10 = *(v9 + 64) + 15;
  v6[19] = swift_task_alloc();
  v11 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v6[20] = v11;
  v12 = *(v11 - 8);
  v6[21] = v12;
  v13 = *(v12 + 64) + 15;
  v6[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C74D0, ".z") - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v16 = sub_1D211319C();
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v19 = type metadata accessor for NetworkError(0);
  v6[34] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v22 = sub_1D2112C2C();
  v6[39] = v22;
  v23 = *(v22 - 8);
  v6[40] = v23;
  v24 = *(v23 + 64) + 15;
  v6[41] = swift_task_alloc();
  v25 = sub_1D21131DC();
  v6[42] = v25;
  v26 = *(v25 - 8);
  v6[43] = v26;
  v27 = *(v26 + 64) + 15;
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20C4F44, 0, 0);
}

uint64_t sub_1D20C4F44()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_1D21131CC();
  sub_1D21131AC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1D211382C();
  v6 = v5;

  v0[45] = v4;
  v0[46] = v6;
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_1D20C5050;
  v8 = v0[14];

  return sub_1D20EF460(v8);
}

uint64_t sub_1D20C5050()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D20C514C, 0, 0);
}

uint64_t sub_1D20C514C()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[12];
  v8 = v0[11];
  (*(v4 + 16))(v3, v0[13], v6);
  v9 = type metadata accessor for GuidanceHistoryRequestBuilder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[48] = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  (*(v4 + 32))(v12 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v3, v6);
  v13 = (v12 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId);
  *v13 = v2;
  v13[1] = v1;
  v14 = sub_1D2112B1C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);

  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_1D20C52EC;
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[14];

  return sub_1D20C3C0C((v0 + 2), v18, v16, v17);
}

uint64_t sub_1D20C52EC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  v7 = *(v4 + 304);
  if (v1)
  {
    sub_1D20A862C(v7, &qword_1EC6C7508, &unk_1D2116AA0);
    v8 = sub_1D20C6484;
  }

  else
  {

    sub_1D20A862C(v7, &qword_1EC6C7508, &unk_1D2116AA0);
    v8 = sub_1D20C5454;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D20C5454()
{
  v187 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v8 = [v7 init];
  [v8 setFormatOptions_];
  v9 = sub_1D21137BC();

  v10 = [v8 dateFromString_];

  if (v10)
  {
    v11 = *(v0 + 192);
    sub_1D211316C();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  (*(v13 + 56))(v16, v12, 1, v14);
  sub_1D20B7DA8(v16, v15, &qword_1EC6C7248, &qword_1D2114A80);
  if ((*(v13 + 48))(v15, 1, v14) != 1)
  {
    v18 = *(v0 + 184);
    (*(*(v0 + 216) + 32))(*(v0 + 264), *(v0 + 200), *(v0 + 208));

    sub_1D20B9AB8(v3, v4, v18);

    v19 = sub_1D2112E7C();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v18, 1, v19);
    v22 = *(v0 + 184);
    if (v21 == 1)
    {

      sub_1D20A862C(v22, &qword_1EC6C74D0, ".z");
LABEL_10:
      (*(*(v0 + 216) + 8))(*(v0 + 264), *(v0 + 208));
      goto LABEL_11;
    }

    v23 = sub_1D2112E1C();
    v25 = v24;
    (*(v20 + 8))(v22, v19);
    if (v25)
    {

      goto LABEL_10;
    }

    if ((v23 * 60) >> 64 != (60 * v23) >> 63)
    {
      goto LABEL_56;
    }

    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v63 = (60 * v23) * *(v6 + 16);
    sub_1D21130DC();
    v64 = *(v5 + 16);
    v167 = v6;
    if (v64)
    {
      v65 = *(v0 + 168);
      v181 = MEMORY[0x1E69E7CC0];

      sub_1D20DC8A8(0, v64, 0);
      if (*(v5 + 16))
      {
        v177 = v64;
        v66 = v181;
        v67 = *(v0 + 400);
        v68 = *(v0 + 176);
        v69 = *(v5 + 40);
        v70 = *(v5 + 48);
        v71 = *(v5 + 56);
        v182 = *(v5 + 32);
        v183 = v69;
        v184 = v70;
        v185 = v71;
        v186 = *(v5 + 64);

        sub_1D20C68A4(&v182, (v0 + 72), v68);
        if (v67)
        {
          v72 = *(v0 + 256);
          v178 = *(v0 + 264);
          v74 = *(v0 + 208);
          v73 = *(v0 + 216);
          swift_bridgeObjectRelease_n();

          v75 = *(v73 + 8);
          v75(v72, v74);

          v27 = *(v0 + 72);
          v75(v178, v74);
          goto LABEL_12;
        }

        v78 = *(v181 + 16);
        v77 = *(v181 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1D20DC8A8(v77 > 1, v78 + 1, 1);
          v66 = v181;
        }

        v79 = *(v0 + 176);
        *(v66 + 16) = v78 + 1;
        v172 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v174 = v66;
        v80 = v66 + v172;
        v81 = *(v65 + 72);
        sub_1D20C6FB0(v79, v80 + v81 * v78, type metadata accessor for HSCleanGuidanceThresholds);
        v6 = v167;
        if (v177 == 1)
        {
LABEL_28:

          goto LABEL_29;
        }

        v132 = (v5 + 112);
        v133 = 1;
        while (v133 < *(v5 + 16))
        {
          v134 = *(v0 + 176);
          v135 = *(v132 - 3);
          v136 = *(v132 - 2);
          v137 = *(v132 - 1);
          v182 = *(v132 - 4);
          v183 = v135;
          v184 = v136;
          v185 = v137;
          v186 = *v132;

          sub_1D20C68A4(&v182, (v0 + 72), v134);

          v138 = v174;
          v140 = *(v174 + 16);
          v139 = *(v174 + 24);
          if (v140 >= v139 >> 1)
          {
            sub_1D20DC8A8(v139 > 1, v140 + 1, 1);
            v138 = v174;
          }

          ++v133;
          v141 = *(v0 + 176);
          *(v138 + 16) = v140 + 1;
          v174 = v138;
          sub_1D20C6FB0(v141, v138 + v172 + v81 * v140, type metadata accessor for HSCleanGuidanceThresholds);
          v132 += 3;
          v6 = v167;
          if (v177 == v133)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
LABEL_43:
      v114 = sub_1D211362C();
      __swift_project_value_buffer(v114, qword_1EE0874A8);

      v115 = sub_1D21135FC();
      v116 = sub_1D2113A9C();
      v180 = v4;
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 134217984;
        *(v117 + 4) = *(v4 + 16);

        _os_log_impl(&dword_1D209F000, v115, v116, "Number of Guidance points: %ld", v117, 0xCu);
        MEMORY[0x1D3896EB0](v117, -1, -1);
      }

      else
      {
      }

      v118 = *(v0 + 384);
      v145 = *(v0 + 352);
      v146 = *(v0 + 328);
      v142 = *(v0 + 320);
      v143 = *(v0 + 312);
      v147 = *(v0 + 304);
      v148 = *(v0 + 296);
      v150 = *(v0 + 288);
      v152 = *(v0 + 280);
      v119 = *(v0 + 256);
      v144 = *(v0 + 264);
      v154 = *(v0 + 248);
      v156 = *(v0 + 240);
      v120 = *(v0 + 224);
      v122 = *(v0 + 208);
      v121 = *(v0 + 216);
      v159 = *(v0 + 200);
      v162 = *(v0 + 192);
      v165 = *(v0 + 184);
      v168 = *(v0 + 176);
      v123 = *(v0 + 152);
      v173 = *(v0 + 128);
      v124 = *(v0 + 80);
      v125 = *(v121 + 16);
      (v125)(*(v0 + 232));
      v125(v120, v119, v122);
      sub_1D2112BEC();
      swift_setDeallocating();
      v126 = v118[3];

      (*(v142 + 8))(v118 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v143);
      v127 = *(v118 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);

      v128 = *(*v118 + 48);
      v129 = *(*v118 + 52);
      swift_deallocClassInstance();
      v130 = *(v121 + 8);
      v130(v119, v122);
      v131 = type metadata accessor for HSHistoricalGuidance(0);
      *(v124 + *(v131 + 20)) = v180;
      *(v124 + *(v131 + 24)) = v174;
      v130(v144, v122);

      v59 = *(v0 + 8);
      goto LABEL_16;
    }

    v76 = *(v0 + 400);
    v174 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v82 = *(v6 + 16);
    if (!v82)
    {

      v4 = MEMORY[0x1E69E7CC0];
LABEL_42:
      if (qword_1EE083DD8 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_57;
    }

    v83 = *(v0 + 216);
    v84 = *(v0 + 168);
    v151 = *(v0 + 136);
    v153 = *(v0 + 144);
    v182 = MEMORY[0x1E69E7CC0];
    sub_1D20DC864(0, v82, 0);
    v85 = 0;
    v4 = v182;
    v86 = *(v6 + 16);
    v149 = (v83 + 16);
    v158 = (v84 + 48);
    v161 = (v83 + 8);
    if (v86 >= v82)
    {
      v86 = v82;
    }

    v164 = v86;
    v155 = v82;
    while (v164 != v85)
    {
      if (v85 >= *(v6 + 16))
      {
        goto LABEL_54;
      }

      v179 = v4;
      v87 = *(v0 + 264);
      v88 = v6;
      v89 = *(v0 + 240);
      v90 = *(v0 + 248);
      v91 = *(v0 + 160);
      v92 = *(v0 + 128);
      v93 = *(v88 + 8 * v85 + 32);
      sub_1D21130DC();
      sub_1D21130DC();
      v94 = swift_task_alloc();
      *(v94 + 16) = v90;
      *(v94 + 24) = v89;
      sub_1D20F9D84(sub_1D20C6F94, v174, v92);

      if ((*v158)(v92, 1, v91) == 1)
      {
        v106 = *(v0 + 264);
        v105 = *(v0 + 272);
        v107 = *(v0 + 248);
        v108 = *(v0 + 256);
        v109 = *(v0 + 240);
        v110 = *(v0 + 208);
        v111 = *(v0 + 128);
        sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
        v27 = swift_allocError();
        *v112 = 2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D20A862C(v111, &qword_1EC6C7598, &qword_1D2115B60);
        v113 = *v161;
        (*v161)(v109, v110);
        v113(v107, v110);

        v113(v108, v110);

        v113(v106, v110);
        goto LABEL_12;
      }

      v96 = *(v0 + 240);
      v95 = *(v0 + 248);
      v97 = *(v0 + 224);
      v98 = *(v0 + 208);
      v99 = *(v0 + 152);
      v170 = *(v0 + 128);
      v100 = *v149;
      (*v149)(*(v0 + 232), v95, v98);
      v100(v97, v96, v98);
      sub_1D2112BEC();
      *(v99 + *(v151 + 20)) = v93;
      sub_1D20A862C(v170, &qword_1EC6C7598, &qword_1D2115B60);
      v101 = *v161;
      (*v161)(v96, v98);
      v101(v95, v98);
      v4 = v179;
      v182 = v179;
      v103 = *(v179 + 16);
      v102 = *(v179 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1D20DC864(v102 > 1, v103 + 1, 1);
        v4 = v182;
      }

      ++v85;
      v104 = *(v0 + 152);
      *(v4 + 16) = v103 + 1;
      sub_1D20C6FB0(v104, v4 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v103, type metadata accessor for HSGuidanceValue);
      v6 = v167;
      if (v155 == v85)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = *(v0 + 200);

  sub_1D20A862C(v17, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_11:
  v26 = *(v0 + 272);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
  v27 = swift_allocError();
  *v28 = 1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_12:
  v29 = *(v0 + 288);
  v30 = *(v0 + 272);
  *(v0 + 64) = v27;
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v32 = swift_dynamicCast();
  v33 = *(v0 + 384);
  v34 = *(v0 + 312);
  v35 = *(v0 + 320);
  if (v32)
  {
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v38 = *(v0 + 120);

    sub_1D20C6FB0(v37, v36, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v38);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v39 = v33[3];

    (*(v35 + 8))(v33 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v34);
    v40 = *(v33 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);

    v41 = *(*v33 + 48);
    v42 = *(*v33 + 52);
    swift_deallocClassInstance();
    sub_1D20C6F38(v36);
    v43 = *(v0 + 64);
  }

  else
  {
    v44 = *(v0 + 120);

    *v44 = 0xD000000000000039;
    v44[1] = 0x80000001D211AC10;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v45 = v33[3];

    (*(v35 + 8))(v33 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v34);
    v46 = *(v33 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);

    v47 = *(*v33 + 48);
    v48 = *(*v33 + 52);
    swift_deallocClassInstance();
    v43 = v27;
  }

  v49 = *(v0 + 352);
  v50 = *(v0 + 328);
  v52 = *(v0 + 296);
  v51 = *(v0 + 304);
  v54 = *(v0 + 280);
  v53 = *(v0 + 288);
  v55 = *(v0 + 256);
  v56 = *(v0 + 264);
  v58 = *(v0 + 240);
  v57 = *(v0 + 248);
  v157 = *(v0 + 232);
  v160 = *(v0 + 224);
  v163 = *(v0 + 200);
  v166 = *(v0 + 192);
  v169 = *(v0 + 184);
  v171 = *(v0 + 176);
  v175 = *(v0 + 152);
  v176 = *(v0 + 128);

  v59 = *(v0 + 8);
LABEL_16:

  return v59();
}

uint64_t sub_1D20C6484()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
  v3 = swift_allocError();
  sub_1D20C6FB0(v1, v4, type metadata accessor for NetworkError);
  *(v0 + 64) = v3;
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v8 = swift_dynamicCast();
  v9 = *(v0 + 384);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  if (v8)
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 288);
    v14 = *(v0 + 120);

    sub_1D20C6FB0(v13, v12, type metadata accessor for NetworkError);
    sub_1D20AB1E4(v14);
    type metadata accessor for HSGuidanceError(0);
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v15 = v9[3];

    (*(v11 + 8))(v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v10);
    v16 = *(v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);

    v17 = *(*v9 + 48);
    v18 = *(*v9 + 52);
    swift_deallocClassInstance();
    sub_1D20C6F38(v12);
    v19 = *(v0 + 64);
  }

  else
  {
    v20 = *(v0 + 120);

    *v20 = 0xD000000000000039;
    v20[1] = 0x80000001D211AC10;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20C710C(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    swift_setDeallocating();
    v21 = v9[3];

    (*(v11 + 8))(v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval, v10);
    v22 = *(v9 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);

    v23 = *(*v9 + 48);
    v24 = *(*v9 + 52);
    swift_deallocClassInstance();
    v19 = v3;
  }

  v25 = *(v0 + 352);
  v26 = *(v0 + 328);
  v28 = *(v0 + 296);
  v27 = *(v0 + 304);
  v30 = *(v0 + 280);
  v29 = *(v0 + 288);
  v31 = *(v0 + 256);
  v32 = *(v0 + 264);
  v34 = *(v0 + 240);
  v33 = *(v0 + 248);
  v37 = *(v0 + 232);
  v38 = *(v0 + 224);
  v39 = *(v0 + 200);
  v40 = *(v0 + 192);
  v41 = *(v0 + 184);
  v42 = *(v0 + 176);
  v43 = *(v0 + 152);
  v44 = *(v0 + 128);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1D20C68A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v52 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  v16 = sub_1D211319C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v55 = &v52 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v58 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v52 - v25;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  v59 = a1[3];
  v60 = v28;
  v30 = a1[4];
  v29 = a1[5];
  v31 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v31 setFormatOptions_];
  v32 = sub_1D21137BC();
  v33 = [v31 dateFromString_];

  if (v33)
  {
    sub_1D211316C();

    v34 = v17[7];
    v34(v13, 0, 1, v16);
  }

  else
  {
    v34 = v17[7];
    v34(v13, 1, 1, v16);
  }

  sub_1D20B7DA8(v13, v15, &qword_1EC6C7248, &qword_1D2114A80);
  v35 = v17[6];
  if (v35(v15, 1, v16) == 1)
  {
    goto LABEL_10;
  }

  v53 = a2;
  v54 = v17;
  v52 = v17[4];
  v52(v63, v15, v16);
  v36 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v36 setFormatOptions_];
  v37 = sub_1D21137BC();
  v38 = [v36 dateFromString_];

  if (v38)
  {
    v39 = v61;
    sub_1D211316C();

    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v61;
  }

  v15 = v62;
  v41 = v54;
  v34(v39, v40, 1, v16);
  sub_1D20B7DA8(v39, v15, &qword_1EC6C7248, &qword_1D2114A80);
  if (v35(v15, 1, v16) == 1)
  {
    (v41[1])(v63, v16);
    a2 = v53;
LABEL_10:
    sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
    type metadata accessor for NetworkError(0);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    v42 = swift_allocError();
    *v43 = 1;
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_11:
    *a2 = v42;
    return result;
  }

  v45 = v58;
  v52(v58, v15, v16);
  v46 = v63;
  if (sub_1D21130FC())
  {
    type metadata accessor for NetworkError(0);
    sub_1D20C710C(qword_1EE0841B0, type metadata accessor for NetworkError);
    v42 = swift_allocError();
    *v47 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v48 = v41[1];
    v48(v45, v16);
    result = (v48)(v46, v16);
    a2 = v53;
    goto LABEL_11;
  }

  v49 = v41[2];
  v49(v55, v46, v16);
  v49(v56, v45, v16);
  v50 = v57;
  sub_1D2112BEC();
  v51 = v41[1];
  v51(v45, v16);
  v51(v46, v16);
  result = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v50 + *(result + 20)) = v30;
  *(v50 + *(result + 24)) = v29;
  return result;
}

void *sub_1D20C6EE8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D20C6F08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D20C6F38(uint64_t a1)
{
  v2 = type metadata accessor for NetworkError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20C6FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D20C7018(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1D20B98A4(a1, a2);
    a1 = a3;
  }
}

uint64_t sub_1D20C7064(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D20C70B8()
{
  result = qword_1EE0837C0;
  if (!qword_1EE0837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837C0);
  }

  return result;
}

uint64_t sub_1D20C710C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20C7154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (sub_1D2112C1C())
  {
    return sub_1D2112C1C() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D20C71A8()
{
  result = qword_1EE083EE0;
  if (!qword_1EE083EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EE0);
  }

  return result;
}

uint64_t sub_1D20C721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v144 = a5;
  v142 = a4;
  v141 = a3;
  v154 = a2;
  v152 = a1;
  v151 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75B8, &qword_1D2115C40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v139[-v8];
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75C0, &qword_1D2115C48);
  v147 = *(v148 - 8);
  v9 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v156 = &v139[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75C8, &qword_1D2115C50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v139[-v13];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75D0, &unk_1D2115C58);
  v159 = *(v153 - 8);
  v15 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v143 = &v139[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v139[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75D8, &qword_1D2115C68);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v139[-v23];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75E0, &qword_1D2115C70);
  v150 = *(v157 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v27 = &v139[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75E8, &qword_1D2115C78);
  v149 = *(v28 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v139[-v30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75F0, &qword_1D2115C80);
  sub_1D211341C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75F8, &qword_1D2115C88);
  v32 = v151;
  v158 = v27;
  v33 = v152;
  sub_1D211341C();
  v34 = sub_1D21132EC();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  v35 = sub_1D211335C();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  v36 = v28;
  v37 = v154;
  sub_1D2112E6C();
  v38 = v155;
  sub_1D211343C();
  v146 = v31;
  if (v38)
  {

    (*(v159 + 56))(v14, 1, 1, v153);
    goto LABEL_4;
  }

  v39 = v159;
  v40 = v153;
  if ((*(v159 + 48))(v14, 1, v153) == 1)
  {
LABEL_4:
    v41 = v36;
    sub_1D20A862C(v14, &qword_1EC6C75C8, &qword_1D2115C50);
    v42 = v145;
    v43 = v157;
    v44 = v158;
    sub_1D211343C();
    v155 = 0;
    v45 = v147;
    v46 = v148;
    if ((*(v147 + 48))(v42, 1, v148) == 1)
    {
      sub_1D20A862C(v42, &qword_1EC6C75B8, &qword_1D2115C40);
      *&v167 = v33;
      *(&v167 + 1) = v37;
      sub_1D20C8704();
      swift_willThrowTypedImpl();
      v47 = sub_1D2112E7C();
      (*(*(v47 - 8) + 8))(v32, v47);
      (*(v150 + 8))(v44, v43);
      (*(v149 + 8))(v146, v41);

      v49 = v144;
      *v144 = v33;
      v49[1] = v37;
      return result;
    }

    (*(v45 + 32))(v156, v42, v46);
    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    v60 = v46;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v61 = sub_1D2113B2C();
      v63 = v62;

      LODWORD(v164) = 0;
      v64 = v155;
      v65 = sub_1D20C87AC(v61, v63);
      v155 = v64;

      v66 = v164;
      if (!v65)
      {
        v66 = 0;
      }

      LODWORD(v154) = v66;
      v67 = !v65;
    }

    else
    {
      LODWORD(v154) = 0;
      v67 = 1;
    }

    LODWORD(v153) = v67;
    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v68 = sub_1D2113B2C();
      v70 = v69;

      LODWORD(v164) = 0;
      v71 = v155;
      v72 = sub_1D20C87AC(v68, v70);
      v155 = v71;

      v73 = v164;
      if (!v72)
      {
        v73 = 0;
      }

      LODWORD(v152) = v73;
      v74 = !v72;
    }

    else
    {
      LODWORD(v152) = 0;
      v74 = 1;
    }

    LODWORD(v145) = v74;
    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v75 = sub_1D2113B2C();
      v77 = v76;

      LODWORD(v164) = 0;
      v78 = v155;
      v79 = sub_1D20C87AC(v75, v77);
      v155 = v78;

      if (v79)
      {
        v80 = *&v164;
      }

      else
      {
        v80 = 0.0;
      }

      v81 = !v79;
    }

    else
    {
      v80 = 0.0;
      v81 = 1;
    }

    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v82 = sub_1D2113B2C();
      v84 = v83;

      LODWORD(v164) = 0;
      v85 = v155;
      v86 = sub_1D20C87AC(v82, v84);
      v155 = v85;

      if (v86)
      {
        v87 = *&v164;
      }

      else
      {
        v87 = 0.0;
      }

      v88 = !v86;
    }

    else
    {
      v87 = 0.0;
      v88 = 1;
    }

    LODWORD(v144) = v88;
    v159 = v41;
    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v89 = sub_1D2113B2C();
      v91 = v90;

      LODWORD(v164) = 0;
      v92 = v155;
      v93 = sub_1D20C87AC(v89, v91);
      v155 = v92;

      if (v93)
      {
        v94 = *&v164;
      }

      else
      {
        v94 = 0.0;
      }

      v95 = !v93;
    }

    else
    {
      v94 = 0.0;
      v95 = 1;
    }

    LODWORD(v143) = v95;
    swift_getKeyPath();
    sub_1D211344C();

    v164 = v167;
    v165 = v168;
    v166 = v169;
    if (v169)
    {
      v162 = 44;
      v163 = 0xE100000000000000;
      v160 = 46;
      v161 = 0xE100000000000000;
      sub_1D20C8758();
      sub_1D20B99F0();
      v96 = sub_1D2113B2C();
      v98 = v97;

      LODWORD(v164) = 0;
      v99 = v155;
      v100 = sub_1D20C87AC(v96, v98);
      v155 = v99;

      v101 = *&v164;
      if (!v100)
      {
        v101 = 0.0;
      }

      v140 = v101;
      v102 = !v100;
      if (v153)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v140 = 0.0;
      v102 = 1;
      if (v153)
      {
LABEL_46:
        v103 = sub_1D2112DDC();
        v103(&v167, 0);
        goto LABEL_57;
      }
    }

    v104 = *&v154;
    v105 = sub_1D20C85EC(*&v154);
    v107 = sub_1D2112DDC();
    if (v105)
    {
      *v106 = v105;
      *(v106 + 8) = 0;
    }

    v107(&v167, 0);
    v108 = v104 - truncf(v104);
    if ((~v154 & 0x7F800000) == 0)
    {
      v108 = 0.0;
    }

    v109 = v108 * v141;
    if (v109 != 0.0)
    {
      if (v81)
      {
        v80 = v109;
      }

      v81 = 0;
    }

    v60 = v148;
LABEL_57:
    if (v145)
    {
      v110 = sub_1D2112DEC();
      v110(&v167, 0);
    }

    else
    {
      v111 = *&v152;
      v112 = sub_1D20C85EC(*&v152);
      v114 = sub_1D2112DEC();
      if (v112)
      {
        *v113 = v112;
        *(v113 + 8) = 0;
      }

      v114(&v167, 0);
      v115 = v111 - truncf(v111);
      if ((~v152 & 0x7F800000) == 0)
      {
        v115 = 0.0;
      }

      v116 = v115 * v142;
      v60 = v148;
      if (v116 != 0.0)
      {
        if (v81)
        {
          v80 = v116;
        }

        goto LABEL_68;
      }
    }

    if (v81)
    {
      v117 = sub_1D2112DAC();
      v118 = 1;
      v117(&v167, 0);
      goto LABEL_71;
    }

LABEL_68:
    v119 = sub_1D20C85EC(v80);
    v121 = sub_1D2112DAC();
    v118 = 0;
    if (v119)
    {
      *v120 = v119;
      *(v120 + 8) = 0;
    }

    v121(&v167, 0);
LABEL_71:
    if ((v118 & 1) != 0 || (LODWORD(v80) & 0x7F800000) == 0x7F800000 || (v122 = (v80 - truncf(v80)) * 24.0, v122 == 0.0))
    {
      if (v144)
      {
        v123 = sub_1D2112DBC();
        v124 = 1;
        v55 = v158;
        v123(&v167, 0);
        goto LABEL_81;
      }
    }

    else if (v144)
    {
      v87 = v122;
    }

    v55 = v158;
    v125 = sub_1D20C85EC(v87);
    v127 = sub_1D2112DBC();
    v124 = 0;
    if (v125)
    {
      *v126 = v125;
      *(v126 + 8) = 0;
    }

    v127(&v167, 0);
LABEL_81:
    if ((v124 & 1) != 0 || (LODWORD(v87) & 0x7F800000) == 0x7F800000 || (v128 = (v87 - truncf(v87)) * 60.0, v128 == 0.0))
    {
      if (v143)
      {
        v129 = sub_1D2112E0C();
        v130 = 1;
        v129(&v167, 0);
        goto LABEL_91;
      }
    }

    else if (v143)
    {
      v94 = v128;
    }

    v131 = sub_1D20C85EC(v94);
    v133 = sub_1D2112E0C();
    v130 = 0;
    if (v131)
    {
      *v132 = v131;
      *(v132 + 8) = 0;
    }

    v133(&v167, 0);
LABEL_91:
    if ((v130 & 1) != 0 || (LODWORD(v94) & 0x7F800000) == 0x7F800000 || (v134 = (v94 - truncf(v94)) * 60.0, v134 == 0.0))
    {
      if (v102)
      {
        v135 = sub_1D2112E3C();
        v59 = v157;
        v36 = v159;
LABEL_102:
        v31 = v146;
        v135(&v167, 0);
        (*(v147 + 8))(v156, v60);
LABEL_103:
        (*(v150 + 8))(v55, v59);
        return (*(v149 + 8))(v31, v36);
      }
    }

    else
    {
      v136 = v140;
      if (v102)
      {
        v136 = v134;
      }

      v140 = v136;
    }

    v137 = sub_1D20C85EC(roundf(v140));
    v135 = sub_1D2112E3C();
    v36 = v159;
    if (v137)
    {
      *v138 = v137;
      *(v138 + 8) = 0;
    }

    v59 = v157;
    goto LABEL_102;
  }

  (*(v39 + 32))(v143, v14, v40);
  swift_getKeyPath();
  v50 = v40;
  sub_1D211344C();

  v164 = v167;
  v165 = v168;
  v166 = v169;
  v162 = 44;
  v163 = 0xE100000000000000;
  v160 = 46;
  v161 = 0xE100000000000000;
  sub_1D20C8758();
  sub_1D20B99F0();
  v51 = sub_1D2113B2C();
  v53 = v52;

  LODWORD(v164) = 0;
  LOBYTE(v51) = sub_1D20C87AC(v51, v53);
  v155 = 0;

  v54 = 0.0;
  if (v51)
  {
    v54 = *&v164;
    if ((v164 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_105;
    }
  }

  v55 = v158;
  if (v54 <= -9.2234e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v54 >= 9.2234e18)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v56 = 7 * v54;
  if ((v54 * 7) >> 64 == v56 >> 63)
  {
    v58 = sub_1D2112DAC();
    if (v56)
    {
      *v57 = v56;
      *(v57 + 8) = 0;
    }

    v58(&v167, 0);
    (*(v159 + 8))(v143, v50);
    v59 = v157;
    goto LABEL_103;
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1D20C85EC(float a1)
{
  v1 = truncf(a1);
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v2 = a1 + 0.0;
  }

  else
  {
    v2 = v1;
  }

  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 9.2234e18)
  {
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1D20C8654()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D2113C2C();

  MEMORY[0x1D38961A0](v1, v2);
  return 0xD000000000000022;
}

uint64_t sub_1D20C86D0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2113E2C();
  }
}

unint64_t sub_1D20C8704()
{
  result = qword_1EC6C75B0;
  if (!qword_1EC6C75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C75B0);
  }

  return result;
}

unint64_t sub_1D20C8758()
{
  result = qword_1EE083DD0;
  if (!qword_1EE083DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083DD0);
  }

  return result;
}

BOOL sub_1D20C87AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D2113C1C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_1D20C88A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D20C8930(uint64_t a1, int a2)
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

uint64_t sub_1D20C8978(uint64_t result, int a2, int a3)
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

uint64_t GridLookupError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

unint64_t sub_1D20C8A50()
{
  result = qword_1EC6C7600;
  if (!qword_1EC6C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7600);
  }

  return result;
}

uint64_t sub_1D20C8AB4(uint64_t a1, double a2, double a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *(v3 + 440) = a1;
  *(v3 + 424) = a2;
  *(v3 + 432) = a3;
  v4 = sub_1D2112F9C();
  *(v3 + 448) = v4;
  v5 = *(v4 - 8);
  *(v3 + 456) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0) - 8) + 64) + 15;
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  *(v3 + 504) = swift_task_alloc();
  v9 = sub_1D211319C();
  *(v3 + 512) = v9;
  v10 = *(v9 - 8);
  *(v3 + 520) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D20C8CA0, 0, 0);
}

uint64_t sub_1D20C8CA0()
{
  v165 = v0;
  v164 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  *(v0 + 400) = 0;
  MEMORY[0x1D3896EC0](v0 + 400, 8);
  v3 = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E76D8];
  *(v4 + 16) = xmmword_1D2114850;
  v6 = MEMORY[0x1E69E7738];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_1D21137FC();
  v9 = v8;
  *(v0 + 544) = v7;
  *(v0 + 552) = v8;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_1D20E2D48(12, v2, v1);
  swift_setDeallocating();
  v11 = *(inited + 16);

  v12 = *(inited + 24);

  v13 = sub_1D20E4A3C(2);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1D3896140](v13, v15, v17, v19);
  v22 = v21;

  *(v0 + 560) = v20;
  *(v0 + 568) = v22;
  if (qword_1EE083D48 != -1)
  {
    swift_once();
  }

  v160 = qword_1EE087480;
  v161 = *algn_1EE087488;

  v23 = sub_1D20CF5BC();
  v24 = !v23;
  if (v23)
  {
    v25 = 1685025392;
  }

  else
  {
    v25 = 24945;
  }

  if (v24)
  {
    v26 = 0xE200000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v25, v26);

  MEMORY[0x1D38961A0](47, 0xE100000000000000);
  MEMORY[0x1D38961A0](v20, v22);
  *(v0 + 304) = v20;
  *(v0 + 312) = v22;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 624) = 1;
  v27 = objc_opt_self();

  v28 = [v27 defaultManager];
  v29 = sub_1D21137BC();

  v30 = [v28 fileExistsAtPath:v29 isDirectory:v0 + 624];

  if (!v30)
  {

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v71 = sub_1D211362C();
    __swift_project_value_buffer(v71, qword_1EE087438);

    v72 = sub_1D21135FC();
    v73 = sub_1D2113A7C();

    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_36;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v160 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1D20B75F0(v7, v9, &v160);
    v76 = "Unable to find GeoHash 2 folder on disk. Proceed to fetch new file. | traceId: %s";
    goto LABEL_35;
  }

  sub_1D20B9EF4();
  v31 = sub_1D21137BC();

  v32 = sub_1D21137BC();
  v33 = CFPreferencesCopyAppValue(v31, v32);

  v34 = *(v0 + 520);
  v35 = *(v0 + 504);
  v36 = *(v0 + 512);
  if (!v33)
  {
    (*(v34 + 56))(v35, 1, 1, *(v0 + 512));
    goto LABEL_27;
  }

  *(v0 + 416) = v33;
  v37 = v35;
  v38 = swift_dynamicCast();
  (*(v34 + 56))(v37, v38 ^ 1u, 1, v36);
  if ((*(v34 + 48))(v37, 1, v36) == 1)
  {
LABEL_27:
    sub_1D20A862C(*(v0 + 504), &qword_1EC6C7248, &qword_1D2114A80);
    goto LABEL_28;
  }

  v39 = *(v0 + 528);
  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  (*(v40 + 32))(*(v0 + 536), *(v0 + 504), v41);
  sub_1D211317C();
  v42 = sub_1D21130FC();
  v43 = v39;
  v44 = *(v40 + 8);
  v44(v43, v41);
  if ((v42 & 1) == 0)
  {
    v44(*(v0 + 536), *(v0 + 512));
LABEL_28:
    sub_1D20B9E08();

    v77 = *(v0 + 328);

    v78 = *(v0 + 344);

    v79 = sub_1D21137BC();

    v80 = sub_1D21137BC();
    v81 = CFPreferencesCopyAppValue(v79, v80);

    if (v81)
    {
      *(v0 + 408) = v81;
      if (swift_dynamicCast())
      {
        v82 = *(v0 + 384);
        v83 = *(v0 + 392);
        v84 = 1;
LABEL_37:
        *(v0 + 584) = v83;
        *(v0 + 576) = v82;
        *(v0 + 625) = v84;
        v94 = swift_task_alloc();
        *(v0 + 592) = v94;
        *v94 = v0;
        v94[1] = sub_1D20C9D64;
        v95 = *(v0 + 440);
        v96 = *MEMORY[0x1E69E9840];

        return sub_1D20EF460(v95);
      }
    }

    v85 = MEMORY[0x1E69E6158];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v86 = swift_initStackObject();
    *(v86 + 32) = 0x64496563617274;
    *(v86 + 16) = xmmword_1D2114850;
    *(v86 + 72) = v85;
    *(v86 + 40) = 0xE700000000000000;
    *(v86 + 48) = v7;
    *(v86 + 56) = v9;

    v87 = sub_1D20CE8BC(v86);
    swift_setDeallocating();
    sub_1D20A862C(v86 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v88 = [objc_opt_self() processInfo];
    v89 = [v88 processName];

    v90 = sub_1D21137CC();
    v92 = v91;

    LOWORD(v160) = 514;
    BYTE2(v160) = 6;
    v161 = v90;
    v162 = v92;
    v163 = v87;
    static AutoBugCaptureManager.sendIssue(_:)(&v160);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v93 = sub_1D211362C();
    __swift_project_value_buffer(v93, qword_1EE087438);

    v72 = sub_1D21135FC();
    v73 = sub_1D2113A7C();

    if (!os_log_type_enabled(v72, v73))
    {
LABEL_36:

      v84 = 0;
      v82 = 0;
      v83 = 0;
      goto LABEL_37;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v160 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1D20B75F0(v7, v9, &v160);
    v76 = "Geohash folder exist, but no ETag for geohash stored in disk. | traceId: %s";
LABEL_35:
    _os_log_impl(&dword_1D209F000, v72, v73, v76, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1D3896EB0](v75, -1, -1);
    MEMORY[0x1D3896EB0](v74, -1, -1);
    goto LABEL_36;
  }

  v158 = v44;

  v45 = *(v0 + 344);

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v46 = sub_1D211362C();
  __swift_project_value_buffer(v46, qword_1EE087438);

  v47 = sub_1D21135FC();
  v48 = sub_1D2113A9C();

  v49 = os_log_type_enabled(v47, v48);
  v157 = *(v0 + 536);
  v50 = *(v0 + 512);
  if (v49)
  {
    v156 = v46;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v160 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1D20B75F0(v7, v9, &v160);
    _os_log_impl(&dword_1D209F000, v47, v48, "Geohash folder exist, and valid. Use local geohash tiles. Skipping fetching | traceId: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D3896EB0](v52, -1, -1);
    v53 = v51;
    v46 = v156;
    MEMORY[0x1D3896EB0](v53, -1, -1);
  }

  v158(v157, v50);
  v54 = *(v0 + 424);
  v55 = *(v0 + 432);
  v56 = sub_1D20E26DC();
  if (v57)
  {
    v58 = v57;
    v159 = v56;
LABEL_19:
    v59 = *(v0 + 552);
    v60 = *(v0 + 536);
    v61 = *(v0 + 528);
    v63 = *(v0 + 496);
    v62 = *(v0 + 504);
    v65 = *(v0 + 480);
    v64 = *(v0 + 488);
    v66 = *(v0 + 464);
    v67 = *(v0 + 472);

    v68 = *(v0 + 8);
    v69 = *MEMORY[0x1E69E9840];

    return v68(v159, v58);
  }

  v97 = *(v0 + 480);
  v98 = *(v0 + 448);
  v99 = *(v0 + 456);
  sub_1D20E9C08(v97, *(v0 + 424), *(v0 + 432));
  v100 = (*(v99 + 48))(v97, 1, v98);
  v101 = *(v0 + 480);
  if (v100 == 1)
  {
    sub_1D20A862C(*(v0 + 480), &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v102 = *(v0 + 552);
    __swift_project_value_buffer(v46, qword_1EE087438);

    v103 = sub_1D21135FC();
    v104 = sub_1D2113A6C();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = *(v0 + 552);
      v106 = *(v0 + 544);
      v108 = *(v0 + 424);
      v107 = *(v0 + 432);
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v160 = v110;
      *v109 = 134218498;
      *(v109 + 4) = v108;
      *(v109 + 12) = 2048;
      *(v109 + 14) = v107;
      *(v109 + 22) = 2080;
      *(v109 + 24) = sub_1D20B75F0(v106, v105, &v160);
      _os_log_impl(&dword_1D209F000, v103, v104, "Unable to locate matching geohash tile for coordinate %f:%f)\n| traceId: %s", v109, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x1D3896EB0](v110, -1, -1);
      MEMORY[0x1D3896EB0](v109, -1, -1);
    }

    v111 = *(v0 + 552);

    v112 = sub_1D21135FC();
    v113 = sub_1D2113A7C();

    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 552);
    if (v114)
    {
      v116 = *(v0 + 544);
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v160 = v118;
      *v117 = 136315138;
      v119 = sub_1D20B75F0(v116, v115, &v160);

      *(v117 + 4) = v119;
      _os_log_impl(&dword_1D209F000, v112, v113, "Returning no grid information. This could be intentional as the region is not supported\n| traceId: %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x1D3896EB0](v118, -1, -1);
      MEMORY[0x1D3896EB0](v117, -1, -1);
    }

    else
    {
    }

    sub_1D20CB890();
    swift_allocError();
    *v124 = 2;
    swift_willThrow();
  }

  else
  {
    v121 = *(v0 + 424);
    v120 = *(v0 + 432);
    (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 480), *(v0 + 448));
    v122 = sub_1D20EAE00(v121, v120);
    if (v123)
    {
      v58 = v123;
      v159 = v122;
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
      goto LABEL_19;
    }

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v125 = *(v0 + 552);
    __swift_project_value_buffer(v46, qword_1EE087438);

    v126 = sub_1D21135FC();
    v127 = sub_1D2113A7C();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = *(v0 + 552);
      v129 = *(v0 + 544);
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v160 = v131;
      *v130 = 136315138;
      *(v130 + 4) = sub_1D20B75F0(v129, v128, &v160);
      _os_log_impl(&dword_1D209F000, v126, v127, "No Grid found for provided coordinates | traceId: %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      MEMORY[0x1D3896EB0](v131, -1, -1);
      MEMORY[0x1D3896EB0](v130, -1, -1);
    }

    v132 = *(v0 + 552);

    v133 = sub_1D21135FC();
    v134 = sub_1D2113A6C();

    v135 = os_log_type_enabled(v133, v134);
    v136 = *(v0 + 552);
    if (v135)
    {
      v137 = *(v0 + 544);
      v139 = *(v0 + 424);
      v138 = *(v0 + 432);
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v160 = v141;
      *v140 = 134218498;
      *(v140 + 4) = v139;
      *(v140 + 12) = 2048;
      *(v140 + 14) = v138;
      *(v140 + 22) = 2080;
      v142 = sub_1D20B75F0(v137, v136, &v160);

      *(v140 + 24) = v142;
      _os_log_impl(&dword_1D209F000, v133, v134, "Grid not found for coordinate %f:%f | traceId: %s", v140, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x1D3896EB0](v141, -1, -1);
      MEMORY[0x1D3896EB0](v140, -1, -1);
    }

    else
    {
    }

    v144 = *(v0 + 456);
    v143 = *(v0 + 464);
    v145 = *(v0 + 448);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v144 + 8))(v143, v145);
  }

  v146 = *(v0 + 536);
  v147 = *(v0 + 528);
  v149 = *(v0 + 496);
  v148 = *(v0 + 504);
  v151 = *(v0 + 480);
  v150 = *(v0 + 488);
  v153 = *(v0 + 464);
  v152 = *(v0 + 472);

  v154 = *(v0 + 8);
  v155 = *MEMORY[0x1E69E9840];

  return v154();
}

uint64_t sub_1D20C9D64()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[75] = v4;
  *v4 = v3;
  v4[1] = sub_1D20C9F60;
  v5 = v1[73];
  v6 = v1[72];
  v7 = v1[71];
  v8 = v1[70];
  v9 = v1[69];
  v10 = v1[68];
  v11 = v1[62];
  v12 = v1[55];
  v13 = *MEMORY[0x1E69E9840];

  return sub_1D20DFABC(v11, v8, v7, v12, v6, v5, v10, v9);
}

uint64_t sub_1D20C9F60(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 600);
  v12 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
    v5 = v3[73];
    v6 = v3[71];
    v7 = v3[69];

    v8 = sub_1D20CB738;
  }

  else
  {
    v8 = sub_1D20CA0CC;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D20CA0CC()
{
  v209 = v0;
  v208 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 608);
  if (!v1)
  {
    v13 = *(v0 + 584);
    v14 = *(v0 + 568);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v16;
    *(inited + 56) = v15;

    v18 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v19 = [objc_opt_self() processInfo];
    v20 = [v19 processName];

    v21 = sub_1D21137CC();
    v23 = v22;

    LOWORD(v204) = 258;
    BYTE2(v204) = 7;
    v205 = v21;
    v206 = v23;
    v207 = v18;
    static AutoBugCaptureManager.sendIssue(_:)(&v204);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 552);
    v25 = sub_1D211362C();
    __swift_project_value_buffer(v25, qword_1EE087438);

    v26 = sub_1D21135FC();
    v27 = sub_1D2113A7C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 552);
    if (v28)
    {
      v30 = *(v0 + 544);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v204 = v32;
      *v31 = 136315138;
      v33 = sub_1D20B75F0(v30, v29, &v204);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D209F000, v26, v27, "Unknown error occurred while fetching geohash tile from server. | traceId: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D3896EB0](v32, -1, -1);
      MEMORY[0x1D3896EB0](v31, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 496);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    *v74 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_56;
  }

  v2 = v1;
  v3 = [v2 statusCode];
  if (v3 == 304)
  {
    if (*(v0 + 625) == 1)
    {
      if (*(v0 + 584))
      {
        v34 = *(v0 + 584);

        if (qword_1EE0836C8 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 552);
        v36 = sub_1D211362C();
        __swift_project_value_buffer(v36, qword_1EE087438);

        v37 = sub_1D21135FC();
        v38 = sub_1D2113A9C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 552);
          v40 = *(v0 + 544);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v204 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1D20B75F0(v40, v39, &v204);
          _os_log_impl(&dword_1D209F000, v37, v38, "Geohash file unmodified. Continue using locally stored geohash tile | traceId: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1D3896EB0](v42, -1, -1);
          MEMORY[0x1D3896EB0](v41, -1, -1);
        }

        sub_1D20E1E64(v2, *(v0 + 560), *(v0 + 568));

        goto LABEL_27;
      }

      v147 = *(v0 + 568);
    }

    else
    {
      v106 = *(v0 + 568);
    }

    v148 = *(v0 + 552);
    v149 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v150 = swift_allocObject();
    *(v150 + 32) = 0x64496563617274;
    *(v150 + 16) = xmmword_1D2115280;
    v151 = MEMORY[0x1E69E6158];
    *(v150 + 40) = 0xE700000000000000;
    *(v150 + 48) = v149;
    *(v150 + 56) = v148;
    *(v150 + 72) = v151;
    *(v150 + 80) = 0x737574617473;
    *(v150 + 88) = 0xE600000000000000;

    v152 = [v2 statusCode];
    *(v150 + 120) = MEMORY[0x1E69E6530];
    *(v150 + 96) = v152;
    v153 = sub_1D20CE8BC(v150);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v154 = [objc_opt_self() processInfo];
    v155 = [v154 processName];

    v156 = sub_1D21137CC();
    v158 = v157;

    LOWORD(v204) = 258;
    BYTE2(v204) = 9;
    v205 = v156;
    v206 = v158;
    v207 = v153;
    static AutoBugCaptureManager.sendIssue(_:)(&v204);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v159 = *(v0 + 552);
    v160 = sub_1D211362C();
    __swift_project_value_buffer(v160, qword_1EE087438);

    v161 = sub_1D21135FC();
    v162 = sub_1D2113A7C();

    v163 = os_log_type_enabled(v161, v162);
    v164 = *(v0 + 552);
    if (v163)
    {
      v165 = *(v0 + 544);
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v204 = v167;
      *v166 = 136315138;
      v168 = sub_1D20B75F0(v165, v164, &v204);

      *(v166 + 4) = v168;
      _os_log_impl(&dword_1D209F000, v161, v162, "Error while trying to fetch new Geohash tile from server | traceId: %s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v167);
      MEMORY[0x1D3896EB0](v167, -1, -1);
      MEMORY[0x1D3896EB0](v166, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 496);
    sub_1D20CB890();
    swift_allocError();
    *v169 = 1;
    goto LABEL_55;
  }

  if (v3 != 200)
  {
    v43 = *(v0 + 584);
    v44 = *(v0 + 568);
    v45 = *(v0 + 552);
    v46 = *(v0 + 544);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v47 = swift_initStackObject();
    *(v47 + 32) = 0x64496563617274;
    *(v47 + 16) = xmmword_1D2115280;
    v48 = MEMORY[0x1E69E6158];
    *(v47 + 40) = 0xE700000000000000;
    *(v47 + 48) = v46;
    *(v47 + 56) = v45;
    *(v47 + 72) = v48;
    *(v47 + 80) = 0x737574617473;
    *(v47 + 88) = 0xE600000000000000;

    v49 = [v2 statusCode];
    *(v47 + 120) = MEMORY[0x1E69E6530];
    *(v47 + 96) = v49;
    v50 = sub_1D20CE8BC(v47);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    v51 = [objc_opt_self() processInfo];
    v52 = [v51 processName];

    v53 = sub_1D21137CC();
    v55 = v54;

    LOWORD(v204) = 258;
    BYTE2(v204) = 5;
    v205 = v53;
    v206 = v55;
    v207 = v50;
    static AutoBugCaptureManager.sendIssue(_:)(&v204);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 552);
    v57 = sub_1D211362C();
    __swift_project_value_buffer(v57, qword_1EE087438);

    v58 = sub_1D21135FC();
    v59 = sub_1D2113A7C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 552);
      v61 = *(v0 + 544);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v204 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1D20B75F0(v61, v60, &v204);
      _os_log_impl(&dword_1D209F000, v58, v59, "Unknown error occurred while fetching geohash tile from server | traceId: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D3896EB0](v63, -1, -1);
      MEMORY[0x1D3896EB0](v62, -1, -1);
    }

    v64 = *(v0 + 552);

    v2 = v2;
    v65 = sub_1D21135FC();
    v66 = sub_1D2113A7C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 552);
    if (v67)
    {
      v69 = *(v0 + 544);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v204 = v71;
      *v70 = 134218242;
      *(v70 + 4) = [v2 statusCode];

      *(v70 + 12) = 2080;
      v72 = sub_1D20B75F0(v69, v68, &v204);

      *(v70 + 14) = v72;
      _os_log_impl(&dword_1D209F000, v65, v66, "Status Code returned %ld | traceId %s", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1D3896EB0](v71, -1, -1);
      MEMORY[0x1D3896EB0](v70, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 496);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    *v107 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_55;
  }

  v4 = *(v0 + 584);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 456);

  sub_1D20CB8E4(v5, v6);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 568);
  if (v9 == 1)
  {
    v11 = *(v0 + 488);
    v12 = *(v0 + 568);

    sub_1D20A862C(v11, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_42:
    v125 = *(v0 + 552);
    v126 = *(v0 + 544);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v127 = swift_allocObject();
    *(v127 + 32) = 0x64496563617274;
    *(v127 + 16) = xmmword_1D2115280;
    v128 = MEMORY[0x1E69E6158];
    *(v127 + 40) = 0xE700000000000000;
    *(v127 + 48) = v126;
    *(v127 + 56) = v125;
    *(v127 + 72) = v128;
    *(v127 + 80) = 0x737574617473;
    *(v127 + 88) = 0xE600000000000000;

    v129 = [v2 statusCode];
    *(v127 + 120) = MEMORY[0x1E69E6530];
    *(v127 + 96) = v129;
    v130 = sub_1D20CE8BC(v127);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v131 = [objc_opt_self() processInfo];
    v132 = [v131 processName];

    v133 = sub_1D21137CC();
    v135 = v134;

    LOWORD(v204) = 514;
    BYTE2(v204) = 8;
    v205 = v133;
    v206 = v135;
    v207 = v130;
    static AutoBugCaptureManager.sendIssue(_:)(&v204);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v136 = *(v0 + 552);
    v137 = sub_1D211362C();
    __swift_project_value_buffer(v137, qword_1EE087438);

    v138 = sub_1D21135FC();
    v139 = sub_1D2113A7C();

    v140 = os_log_type_enabled(v138, v139);
    v141 = *(v0 + 552);
    if (v140)
    {
      v142 = *(v0 + 544);
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v204 = v144;
      *v143 = 136315138;
      v145 = sub_1D20B75F0(v142, v141, &v204);

      *(v143 + 4) = v145;
      _os_log_impl(&dword_1D209F000, v138, v139, "Error while creating geoHash tiles. | traceId: %s", v143, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v144);
      MEMORY[0x1D3896EB0](v144, -1, -1);
      MEMORY[0x1D3896EB0](v143, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 496);
    sub_1D20CB890();
    swift_allocError();
    *v146 = 0;
LABEL_55:
    swift_willThrow();

LABEL_56:
    sub_1D20A862C(v73, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_57:
    swift_willThrow();
LABEL_58:
    v170 = *(v0 + 536);
    v171 = *(v0 + 528);
    v173 = *(v0 + 496);
    v172 = *(v0 + 504);
    v175 = *(v0 + 480);
    v174 = *(v0 + 488);
    v177 = *(v0 + 464);
    v176 = *(v0 + 472);

    v178 = *(v0 + 8);
    v179 = *MEMORY[0x1E69E9840];

    return v178();
  }

  v75 = *(v0 + 560);
  v76 = *(v0 + 472);
  (*(*(v0 + 456) + 32))(v76, *(v0 + 488), *(v0 + 448));
  sub_1D20E0ED4(v76, v75, v10);
  v77 = *(v0 + 568);
  if ((v78 & 1) == 0)
  {
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));

    goto LABEL_42;
  }

  v79 = *(v0 + 472);
  v80 = *(v0 + 448);
  v81 = *(v0 + 456);
  sub_1D20E1E64(v2, *(v0 + 560), *(v0 + 568));

  (*(v81 + 8))(v79, v80);
LABEL_27:
  sub_1D20A862C(*(v0 + 496), &qword_1EC6C7250, &qword_1D21149C0);
  v82 = *(v0 + 480);
  v83 = *(v0 + 448);
  v84 = *(v0 + 456);
  sub_1D20E9C08(v82, *(v0 + 424), *(v0 + 432));
  v85 = (*(v84 + 48))(v82, 1, v83);
  v86 = *(v0 + 480);
  if (v85 == 1)
  {
    sub_1D20A862C(*(v0 + 480), &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v87 = *(v0 + 552);
    v88 = sub_1D211362C();
    __swift_project_value_buffer(v88, qword_1EE087438);

    v89 = sub_1D21135FC();
    v90 = sub_1D2113A6C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = *(v0 + 552);
      v92 = *(v0 + 544);
      v94 = *(v0 + 424);
      v93 = *(v0 + 432);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v204 = v96;
      *v95 = 134218498;
      *(v95 + 4) = v94;
      *(v95 + 12) = 2048;
      *(v95 + 14) = v93;
      *(v95 + 22) = 2080;
      *(v95 + 24) = sub_1D20B75F0(v92, v91, &v204);
      _os_log_impl(&dword_1D209F000, v89, v90, "Unable to locate matching geohash tile for coordinate %f:%f)\n| traceId: %s", v95, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x1D3896EB0](v96, -1, -1);
      MEMORY[0x1D3896EB0](v95, -1, -1);
    }

    v97 = *(v0 + 552);

    v98 = sub_1D21135FC();
    v99 = sub_1D2113A7C();

    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 552);
    if (v100)
    {
      v102 = *(v0 + 544);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v204 = v104;
      *v103 = 136315138;
      v105 = sub_1D20B75F0(v102, v101, &v204);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_1D209F000, v98, v99, "Returning no grid information. This could be intentional as the region is not supported\n| traceId: %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x1D3896EB0](v104, -1, -1);
      MEMORY[0x1D3896EB0](v103, -1, -1);
    }

    else
    {
    }

    sub_1D20CB890();
    swift_allocError();
    *v180 = 2;
    goto LABEL_57;
  }

  v109 = *(v0 + 424);
  v108 = *(v0 + 432);
  (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 480), *(v0 + 448));
  v110 = sub_1D20EAE00(v109, v108);
  if (!v111)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v181 = *(v0 + 552);
    v182 = sub_1D211362C();
    __swift_project_value_buffer(v182, qword_1EE087438);

    v183 = sub_1D21135FC();
    v184 = sub_1D2113A7C();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = *(v0 + 552);
      v186 = *(v0 + 544);
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v204 = v188;
      *v187 = 136315138;
      *(v187 + 4) = sub_1D20B75F0(v186, v185, &v204);
      _os_log_impl(&dword_1D209F000, v183, v184, "No Grid found for provided coordinates | traceId: %s", v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v188);
      MEMORY[0x1D3896EB0](v188, -1, -1);
      MEMORY[0x1D3896EB0](v187, -1, -1);
    }

    v189 = *(v0 + 552);

    v190 = sub_1D21135FC();
    v191 = sub_1D2113A6C();

    v192 = os_log_type_enabled(v190, v191);
    v193 = *(v0 + 552);
    if (v192)
    {
      v194 = *(v0 + 544);
      v196 = *(v0 + 424);
      v195 = *(v0 + 432);
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v204 = v198;
      *v197 = 134218498;
      *(v197 + 4) = v196;
      *(v197 + 12) = 2048;
      *(v197 + 14) = v195;
      *(v197 + 22) = 2080;
      v199 = sub_1D20B75F0(v194, v193, &v204);

      *(v197 + 24) = v199;
      _os_log_impl(&dword_1D209F000, v190, v191, "Grid not found for coordinate %f:%f | traceId: %s", v197, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v198);
      MEMORY[0x1D3896EB0](v198, -1, -1);
      MEMORY[0x1D3896EB0](v197, -1, -1);
    }

    else
    {
    }

    v201 = *(v0 + 456);
    v200 = *(v0 + 464);
    v202 = *(v0 + 448);
    type metadata accessor for NetworkError(0);
    sub_1D20CB838();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v201 + 8))(v200, v202);
    goto LABEL_58;
  }

  v112 = v111;
  v203 = v110;
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  v113 = *(v0 + 552);
  v114 = *(v0 + 536);
  v115 = *(v0 + 528);
  v117 = *(v0 + 496);
  v116 = *(v0 + 504);
  v119 = *(v0 + 480);
  v118 = *(v0 + 488);
  v120 = *(v0 + 464);
  v121 = *(v0 + 472);

  v122 = *(v0 + 8);
  v123 = *MEMORY[0x1E69E9840];

  return v122(v203, v112);
}

uint64_t sub_1D20CB738()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[77];
  swift_willThrow();
  v2 = v0[67];
  v3 = v0[66];
  v5 = v0[62];
  v4 = v0[63];
  v7 = v0[60];
  v6 = v0[61];
  v9 = v0[58];
  v8 = v0[59];

  v10 = v0[1];
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

unint64_t sub_1D20CB838()
{
  result = qword_1EE0841B0[0];
  if (!qword_1EE0841B0[0])
  {
    type metadata accessor for NetworkError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0841B0);
  }

  return result;
}

unint64_t sub_1D20CB890()
{
  result = qword_1EE083C10;
  if (!qword_1EE083C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083C10);
  }

  return result;
}

uint64_t sub_1D20CB8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20CB954()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  type metadata accessor for AppleAccountManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EE0874D8 = result;
  return result;
}

uint64_t sub_1D20CB9A8()
{
  v1 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D21137CC();

      return v5;
    }
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D211362C();
    __swift_project_value_buffer(v7, qword_1EE0874C0);
    v2 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v2, v8, "Unable to retrieve User Primary Apple Account information", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D20CBAE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D20CBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[57] = a1;
  v4[58] = a2;
  v5 = type metadata accessor for NetworkError(0);
  v4[61] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v7 = type metadata accessor for GridGuidance();
  v4[64] = v7;
  v8 = *(v7 - 8);
  v4[65] = v8;
  v9 = *(v8 + 64) + 15;
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v10 = sub_1D211319C();
  v4[68] = v10;
  v11 = *(v10 - 8);
  v4[69] = v11;
  v12 = *(v11 + 64) + 15;
  v4[70] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v4[71] = swift_task_alloc();
  v14 = sub_1D2112B1C();
  v4[72] = v14;
  v15 = *(v14 - 8);
  v4[73] = v15;
  v16 = *(v15 + 64) + 15;
  v4[74] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20CBD3C, 0, 0);
}

uint64_t sub_1D20CBD3C()
{
  v0[54] = 0;
  MEMORY[0x1D3896EC0](v0 + 54, 8);
  v1 = v0[54];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E76D8];
  *(v2 + 16) = xmmword_1D2114850;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v0[75] = sub_1D21137FC();
  v0[76] = v5;
  v6 = swift_task_alloc();
  v0[77] = v6;
  *v6 = v0;
  v6[1] = sub_1D20CBE58;
  v7 = v0[60];

  return sub_1D20EF460(v7);
}

uint64_t sub_1D20CBE58()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D20CBF54, 0, 0);
}

uint64_t sub_1D20CBF54()
{
  v43 = v0;
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v7 = v0[58];
  v6 = v0[59];
  type metadata accessor for GridGuidanceSignalRequest();
  swift_initStackObject();
  sub_1D20DEF68(v7, v6, v2, v1, v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v8 = v0[76];
    v9 = v0[75];
    sub_1D20A862C(v0[71], &qword_1EC6C7508, &unk_1D2116AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v11 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_1D21137CC();
    v16 = v15;

    LOWORD(v42[0]) = 0;
    BYTE2(v42[0]) = 1;
    v42[1] = v14;
    v42[2] = v16;
    v42[3] = v11;
    static AutoBugCaptureManager.sendIssue(_:)(v42);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v17 = v0[76];
    v18 = sub_1D211362C();
    __swift_project_value_buffer(v18, qword_1EE0874C0);

    v19 = sub_1D21135FC();
    v20 = sub_1D2113A7C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[76];
    if (v21)
    {
      v23 = v0[75];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      v26 = sub_1D20B75F0(v23, v22, v42);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1D209F000, v19, v20, "Unable generate request URL for Grid Guidance Signal. | traceId: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3896EB0](v25, -1, -1);
      MEMORY[0x1D3896EB0](v24, -1, -1);
    }

    else
    {
    }

    v31 = v0[61];
    sub_1D20CB838();
    swift_allocError();
    *v32 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v33 = v0[74];
    v34 = v0[71];
    v35 = v0[70];
    v36 = v0[67];
    v37 = v0[66];
    v39 = v0[62];
    v38 = v0[63];

    v40 = v0[1];

    return v40();
  }

  else
  {
    (*(v0[73] + 32))(v0[74], v0[71], v0[72]);
    v27 = *(MEMORY[0x1E6969EC0] + 4);
    v28 = swift_task_alloc();
    v0[78] = v28;
    *v28 = v0;
    v28[1] = sub_1D20CC3C4;
    v29 = v0[74];
    v30 = v0[60];

    return MEMORY[0x1EEDC6260](v29, 0);
  }
}

uint64_t sub_1D20CC3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 624);
  v9 = *v4;
  v5[79] = a1;
  v5[80] = a2;
  v5[81] = a3;
  v5[82] = v3;

  if (v3)
  {
    v7 = sub_1D20CD9DC;
  }

  else
  {
    v7 = sub_1D20CC4E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D20CC4E4()
{
  v222 = v0;
  v1 = *(v0 + 648);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x1E69E6158];
  v4 = 0x1E696A000uLL;
  v5 = 0x1E83F6000uLL;
  if (!v2)
  {
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x64496563617274;
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 72) = v3;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v25;
    *(inited + 56) = v24;

    v27 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v28 = [objc_opt_self() processInfo];
    v29 = [v28 processName];

    v30 = sub_1D21137CC();
    v32 = v31;

    LOWORD(v218) = 256;
    BYTE2(v218) = 2;
    v219 = v30;
    v220 = v32;
    v221 = v27;
    static AutoBugCaptureManager.sendIssue(_:)(&v218);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 608);
    v34 = sub_1D211362C();
    __swift_project_value_buffer(v34, qword_1EE0874C0);

    v35 = sub_1D21135FC();
    v36 = sub_1D2113A7C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 608);
      v38 = *(v0 + 600);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v218 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1D20B75F0(v38, v37, &v218);
      _os_log_impl(&dword_1D209F000, v35, v36, "Unable to process Grid Guidance Signal Response. | traceId: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v41 = v40;
      v4 = 0x1E696A000;
      MEMORY[0x1D3896EB0](v41, -1, -1);
      MEMORY[0x1D3896EB0](v39, -1, -1);
    }

    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    v44 = *(v0 + 632);
    v45 = *(v0 + 488);
    sub_1D20CB838();
    v15 = swift_allocError();
    *v46 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v44, v43);
    v23 = &loc_1D2114000;
    goto LABEL_23;
  }

  v6 = v2;
  v7 = *(v0 + 648);
  if ([v6 statusCode] != 200)
  {
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1D2115280;
    *(v49 + 32) = 0x64496563617274;
    *(v49 + 40) = 0xE700000000000000;
    *(v49 + 48) = v48;
    *(v49 + 56) = v47;
    *(v49 + 72) = v3;
    strcpy((v49 + 80), "responseStatus");
    *(v49 + 95) = -18;

    v50 = [v6 statusCode];
    *(v49 + 120) = MEMORY[0x1E69E6530];
    *(v49 + 96) = v50;
    v51 = sub_1D20CE8BC(v49);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
    swift_arrayDestroy();
    v52 = [objc_opt_self() processInfo];
    v53 = [v52 processName];

    v54 = sub_1D21137CC();
    v56 = v55;

    LOWORD(v218) = 256;
    BYTE2(v218) = 4;
    v219 = v54;
    v220 = v56;
    v221 = v51;
    static AutoBugCaptureManager.sendIssue(_:)(&v218);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 648);
    v58 = *(v0 + 608);
    v59 = sub_1D211362C();
    __swift_project_value_buffer(v59, qword_1EE0874C0);
    v60 = v57;

    v61 = sub_1D21135FC();
    v62 = sub_1D2113A7C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 648);
      v64 = *(v0 + 608);
      v65 = *(v0 + 600);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v218 = v68;
      *v66 = 136315394;
      *(v66 + 4) = sub_1D20B75F0(v65, v64, &v218);
      *(v66 + 12) = 2112;
      *(v66 + 14) = v6;
      *v67 = v6;
      v69 = v63;
      _os_log_impl(&dword_1D209F000, v61, v62, "Unhandled response code received for Grid Guidance Request. | traceId: %s, %@", v66, 0x16u);
      sub_1D20A862C(v67, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v70 = v68;
      v3 = MEMORY[0x1E69E6158];
      MEMORY[0x1D3896EB0](v70, -1, -1);
      MEMORY[0x1D3896EB0](v66, -1, -1);
    }

    v71 = *(v0 + 648);
    v72 = *(v0 + 640);
    v73 = *(v0 + 632);
    v74 = *(v0 + 488);
    sub_1D20CB838();
    v15 = swift_allocError();
    *v75 = [v6 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v73, v72);
    v5 = 0x1E83F6000;
    v4 = 0x1E696A000;
    v23 = &loc_1D2114000;
    goto LABEL_23;
  }

  v8 = *(v0 + 656);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = sub_1D2112B4C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20CEB28();
  v14 = &loc_1D2114000;
  sub_1D2112B2C();
  v15 = v8;

  v5 = 0x1E83F6000uLL;
  if (v8)
  {
LABEL_4:
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    *(v0 + 448) = v15;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 648);
      v20 = *(v0 + 640);
      v21 = *(v0 + 632);
      sub_1D20CEBE0(*(v0 + 496), type metadata accessor for NetworkError);
      swift_willThrow();

      v22 = v21;
      v23 = &loc_1D2114000;
      sub_1D20B98A4(v22, v20);
    }

    else
    {
      v76 = *(v0 + 608);
      v77 = *(v0 + 600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
      v78 = swift_allocObject();
      v79 = v14[133];
      *(v78 + 32) = 0x64496563617274;
      *(v78 + 16) = v79;
      *(v78 + 72) = v3;
      *(v78 + 40) = 0xE700000000000000;
      *(v78 + 48) = v77;
      *(v78 + 56) = v76;

      v80 = sub_1D20CE8BC(v78);
      swift_setDeallocating();
      sub_1D20A862C(v78 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
      swift_deallocClassInstance();
      v81 = *(v4 + 3632);
      v82 = [objc_opt_self() processInfo];
      v83 = [v82 processName];

      v84 = sub_1D21137CC();
      v86 = v85;

      LOWORD(v218) = 256;
      BYTE2(v218) = 3;
      v219 = v84;
      v220 = v86;
      v221 = v80;
      static AutoBugCaptureManager.sendIssue(_:)(&v218);

      if (qword_1EE083DE8 != -1)
      {
        swift_once();
      }

      v87 = *(v0 + 608);
      v88 = sub_1D211362C();
      __swift_project_value_buffer(v88, qword_1EE0874C0);

      v89 = sub_1D21135FC();
      v90 = sub_1D2113A7C();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = *(v0 + 608);
        v92 = *(v0 + 600);
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v218 = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_1D20B75F0(v92, v91, &v218);
        _os_log_impl(&dword_1D209F000, v89, v90, "Error while decoding Grid Guidance response from server | traceId: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x1D3896EB0](v94, -1, -1);
        MEMORY[0x1D3896EB0](v93, -1, -1);
      }

      v95 = *(v0 + 648);
      v96 = sub_1D21135FC();
      v97 = sub_1D2113A7C();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = *(v0 + 648);
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v218 = v100;
        *v99 = 136315138;
        v101 = [v98 description];
        v102 = sub_1D21137CC();
        v104 = v103;

        v105 = sub_1D20B75F0(v102, v104, &v218);

        *(v99 + 4) = v105;
        _os_log_impl(&dword_1D209F000, v96, v97, "URL Response %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x1D3896EB0](v100, -1, -1);
        MEMORY[0x1D3896EB0](v99, -1, -1);
      }

      v106 = *(v0 + 648);
      v107 = *(v0 + 640);
      v108 = *(v0 + 632);
      v109 = *(v0 + 488);
      sub_1D20CB838();
      v110 = swift_allocError();
      *v111 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D20B98A4(v108, v107);
      v15 = v110;
      v4 = 0x1E696A000uLL;
      v3 = MEMORY[0x1E69E6158];
      v23 = &loc_1D2114000;
      v5 = 0x1E83F6000uLL;
    }

LABEL_23:
    v112 = *(v0 + 608);
    v113 = *(v0 + 600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v114 = swift_initStackObject();
    v115 = v23[133];
    *(v114 + 32) = 0x64496563617274;
    *(v114 + 16) = v115;
    *(v114 + 72) = v3;
    *(v114 + 40) = 0xE700000000000000;
    *(v114 + 48) = v113;
    *(v114 + 56) = v112;

    v116 = v15;
    v117 = sub_1D20CE8BC(v114);
    swift_setDeallocating();
    sub_1D20A862C(v114 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v118 = *(v4 + 3632);
    v119 = [objc_opt_self() *(v5 + 2096)];
    v120 = [v119 processName];

    v121 = sub_1D21137CC();
    v123 = v122;

    LOWORD(v218) = 256;
    BYTE2(v218) = 5;
    v219 = v121;
    v220 = v123;
    v221 = v117;
    static AutoBugCaptureManager.sendIssue(_:)(&v218);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v124 = *(v0 + 608);
    v125 = sub_1D211362C();
    __swift_project_value_buffer(v125, qword_1EE0874C0);

    v126 = v15;
    v127 = sub_1D21135FC();
    v128 = sub_1D2113A7C();

    v129 = os_log_type_enabled(v127, v128);
    v130 = *(v0 + 608);
    if (v129)
    {
      v131 = *(v0 + 600);
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v218 = v134;
      *v132 = 136315394;
      v135 = sub_1D20B75F0(v131, v130, &v218);

      *(v132 + 4) = v135;
      *(v132 + 12) = 2112;
      v136 = v15;
      v137 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 14) = v137;
      *v133 = v137;
      _os_log_impl(&dword_1D209F000, v127, v128, "URLSession Error while trying to fetch Grid Guidance. | traceId: %s, %@", v132, 0x16u);
      sub_1D20A862C(v133, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v133, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x1D3896EB0](v134, -1, -1);
      MEMORY[0x1D3896EB0](v132, -1, -1);
    }

    else
    {
    }

    v138 = *(v0 + 504);
    v139 = *(v0 + 488);
    *(v0 + 440) = v15;
    v140 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    v141 = swift_dynamicCast();
    v142 = *(v0 + 592);
    v143 = *(v0 + 584);
    v144 = *(v0 + 576);
    if (v141)
    {
      v145 = *(v0 + 504);

      sub_1D20CEBE0(v145, type metadata accessor for NetworkError);
      swift_willThrow();
    }

    else
    {
      v146 = *(v0 + 488);
      sub_1D20CB838();
      swift_allocError();
      sub_1D20F5FDC(v15, v147);
      swift_willThrow();
    }

    (*(v143 + 8))(v142, v144);
    v148 = *(v0 + 592);
    v149 = *(v0 + 568);
    v150 = *(v0 + 560);
    v151 = *(v0 + 536);
    v152 = *(v0 + 528);
    v154 = *(v0 + 496);
    v153 = *(v0 + 504);

    v155 = *(v0 + 8);
    goto LABEL_32;
  }

  v157 = *(v0 + 392);
  v158 = *(v0 + 408);
  v159 = *(v0 + 608);
  if (!*(v158 + 16))
  {
    v182 = *(v0 + 600);
    v183 = *(v0 + 408);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v184 = swift_allocObject();
    *(v184 + 32) = 0x64496563617274;
    *(v184 + 16) = xmmword_1D2114850;
    *(v184 + 72) = v3;
    *(v184 + 40) = 0xE700000000000000;
    *(v184 + 48) = v182;
    *(v184 + 56) = v159;

    v185 = sub_1D20CE8BC(v184);
    swift_setDeallocating();
    sub_1D20A862C(v184 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    swift_deallocClassInstance();
    v186 = [objc_opt_self() processInfo];
    v187 = [v186 processName];

    v188 = sub_1D21137CC();
    v190 = v189;

    LOWORD(v218) = 256;
    BYTE2(v218) = 0;
    v219 = v188;
    v220 = v190;
    v221 = v185;
    static AutoBugCaptureManager.sendIssue(_:)(&v218);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v191 = *(v0 + 608);
    v192 = sub_1D211362C();
    __swift_project_value_buffer(v192, qword_1EE087438);

    v193 = sub_1D21135FC();
    v194 = sub_1D2113A7C();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = *(v0 + 608);
      v196 = *(v0 + 600);
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v218 = v198;
      *v197 = 136315138;
      *(v197 + 4) = sub_1D20B75F0(v196, v195, &v218);
      _os_log_impl(&dword_1D209F000, v193, v194, "No Guidance returned in response | traceId: %s", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v198);
      v199 = v198;
      v4 = 0x1E696A000;
      MEMORY[0x1D3896EB0](v199, -1, -1);
      MEMORY[0x1D3896EB0](v197, -1, -1);
    }

    v14 = &loc_1D2114000;
    v200 = *(v0 + 488);
    sub_1D20CB838();
    v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_4;
  }

  v210 = *(v0 + 392);
  v209 = *(v0 + 384);
  v160 = *(v0 + 400);

  v161 = *(v158 + 16);
  if (v161)
  {
    v162 = *(v0 + 552);
    v214 = *(v0 + 512);
    v216 = *(v0 + 520);
    v211 = (v162 + 8);
    v212 = (v162 + 16);

    v163 = (v158 + 48);
    v164 = MEMORY[0x1E69E7CC0];
    do
    {
      v165 = *(v163 - 2);
      v166 = *(v163 - 1);
      v167 = *v163;
      v168 = objc_allocWithZone(MEMORY[0x1E696AC80]);

      v169 = [v168 init];
      [v169 setFormatOptions_];

      v170 = sub_1D21137BC();

      v171 = [v169 dateFromString_];

      if (v171)
      {
        v172 = *(v0 + 560);
        v173 = *(v0 + 544);
        v174 = *(v0 + 536);
        v175 = *(v0 + 528);
        sub_1D211316C();

        (*v212)(v174, v172, v173);
        v176 = v174 + *(v214 + 20);
        sub_1D21130DC();

        *(v174 + *(v214 + 24)) = v167;
        sub_1D20CEB7C(v174, v175);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v164 = sub_1D20B7368(0, v164[2] + 1, 1, v164);
        }

        v178 = v164[2];
        v177 = v164[3];
        if (v178 >= v177 >> 1)
        {
          v164 = sub_1D20B7368(v177 > 1, v178 + 1, 1, v164);
        }

        v179 = *(v0 + 560);
        v180 = *(v0 + 544);
        v181 = *(v0 + 528);
        sub_1D20CEBE0(*(v0 + 536), type metadata accessor for GridGuidance);
        (*v211)(v179, v180);
        v164[2] = v178 + 1;
        sub_1D20CEC40(v181, v164 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v178);
      }

      else
      {
      }

      v163 += 6;
      --v161;
    }

    while (v161);
  }

  else
  {

    v164 = MEMORY[0x1E69E7CC0];
  }

  v201 = *(v0 + 648);
  v202 = *(v0 + 592);
  v203 = *(v0 + 584);
  v204 = *(v0 + 576);
  v205 = *(v0 + 568);
  v206 = *(v0 + 560);
  v207 = *(v0 + 536);
  v213 = *(v0 + 528);
  v215 = *(v0 + 504);
  v217 = *(v0 + 496);
  v208 = *(v0 + 456);
  sub_1D20B98A4(*(v0 + 632), *(v0 + 640));

  (*(v203 + 8))(v202, v204);

  *v208 = v209;
  *(v208 + 8) = v210;
  *(v208 + 16) = 1;
  *(v208 + 24) = v164;

  v155 = *(v0 + 8);
LABEL_32:

  return v155();
}