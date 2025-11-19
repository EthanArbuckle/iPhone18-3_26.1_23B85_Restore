id AsynchronousOperation.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel;
  sub_1D0F19758();
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 1;
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_operationState;
  sub_1D0F19804();
  v8 = 0;
  swift_allocObject();
  *&v1[v4] = sub_1D0FF4938();
  v5 = OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_workLock;
  sub_1D0FF4548();
  swift_allocObject();
  *&v1[v5] = sub_1D0FF4538();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AsynchronousOperation();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1D0F19758()
{
  if (!qword_1EE06F970)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F970);
    }
  }
}

void sub_1D0F197B8(uint64_t a1, unint64_t *a2)
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

void sub_1D0F19804()
{
  if (!qword_1EE071230)
  {
    v0 = sub_1D0FF4928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE071230);
    }
  }
}

uint64_t type metadata accessor for SharingEntryProfileInformation()
{
  result = qword_1EE06FC28;
  if (!qword_1EE06FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static MedicalIDCache.primary.getter()
{
  if (qword_1EE0705E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0705F8;

  return v1;
}

void sub_1D0F19908()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v1 = _s16HealthExperience14MedicalIDCacheC11globalCache3forACSo13HKHealthStoreC_tFZ_0(v0);

  qword_1EE0705F8 = v1;
}

void sub_1D0F19954(void *a1)
{
  sub_1D0FF4548();
  sub_1D0F1A1E8();
  v2 = a1;

  sub_1D0FF49E8();
}

uint64_t sub_1D0F19A64(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D0FF43A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[17];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D0F19C1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D0FF43A8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

void sub_1D0F19DC0()
{
  sub_1D0FF4908();
  sub_1D0F1A194();
  v1 = sub_1D0FF5C68();
  v3 = v2;

  MEMORY[0x1D3880AC0](v1, v3);

  v4 = sub_1D0FF53E8();

  [v0 willChangeValueForKey_];

  v5 = sub_1D0FF5C68();
  v7 = v6;

  MEMORY[0x1D3880AC0](v5, v7);

  v8 = sub_1D0FF53E8();

  [v0 willChangeValueForKey_];

  MEMORY[0x1EEE9AC00]();
  sub_1D0FF4918();
  v9 = sub_1D0FF5C68();
  v11 = v10;

  MEMORY[0x1D3880AC0](v9, v11);

  v12 = sub_1D0FF53E8();

  [v0 didChangeValueForKey_];

  v13 = sub_1D0FF5C68();
  v15 = v14;

  MEMORY[0x1D3880AC0](v13, v15);

  v16 = sub_1D0FF53E8();

  [v0 didChangeValueForKey_];
}

unint64_t sub_1D0F1A194()
{
  result = qword_1EE0710D8;
  if (!qword_1EE0710D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0710D8);
  }

  return result;
}

unint64_t sub_1D0F1A1E8()
{
  result = qword_1EE070A38;
  if (!qword_1EE070A38)
  {
    sub_1D0FF4548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070A38);
  }

  return result;
}

char *_s16HealthExperience14MedicalIDCacheC11globalCache3forACSo13HKHealthStoreC_tFZ_0(void *a1)
{
  v2 = sub_1D0FF43A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 profileIdentifier];
  v7 = [v6 identifier];

  sub_1D0FF4388();
  if (qword_1EE071118 != -1)
  {
    swift_once();
  }

  sub_1D0FF4518();
  if (qword_1EE071160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EE071170;
  if (*(off_1EE071170 + 2) && (v9 = sub_1D0F1B60C(v5), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
    swift_endAccess();
    v12 = v11;
  }

  else
  {
    swift_endAccess();
    v13 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
    v14 = objc_allocWithZone(type metadata accessor for MedicalIDCache());
    v15 = MedicalIDCache.init(medicalIDStore:)(v13);
    swift_beginAccess();
    v12 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_1EE071170;
    off_1EE071170 = 0x8000000000000000;
    sub_1D0F1B440(v12, v5, isUniquelyReferenced_nonNull_native);
    off_1EE071170 = v18;
    swift_endAccess();
  }

  sub_1D0FF4528();
  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_1D0F1A4C0()
{
  sub_1D0FF4548();
  swift_allocObject();
  result = sub_1D0FF4538();
  qword_1EE071128 = result;
  return result;
}

void sub_1D0F1A538(char a1, void *a2, void (*a3)(void), uint64_t a4, char a5)
{
  if ((a1 & 1) == 0 || (sub_1D0FF4908(), v8 == 1) && ([a2 isFinished] & 1) == 0 && (objc_msgSend(a2, sel_isCancelled) & 1) == 0)
  {
    a3();
    if (a5)
    {
      sub_1D0F1CC18();
    }
  }
}

id sub_1D0F1A5E4(void *a1)
{
  result = [a1 isFinished];
  if ((result & 1) == 0)
  {
    result = [a1 isCancelled];
    if ((result & 1) == 0)
    {
      sub_1D0FF4918();
      sub_1D0F19DC0();

      return [a1 main];
    }
  }

  return result;
}

uint64_t sub_1D0F1A6CC()
{
  if (![v0 isCancelled])
  {
    goto LABEL_5;
  }

  sub_1D0FF4908();
  if (!v4)
  {
    v2 = 1;
LABEL_10:

    return v2 & 1;
  }

  v1 = sub_1D0FF6278();

  if ((v1 & 1) == 0)
  {
LABEL_5:
    sub_1D0FF4908();
    if (v5 && v5 != 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D0FF6278();
    }

    goto LABEL_10;
  }

  v2 = 1;
  return v2 & 1;
}

_BYTE *sub_1D0F1A874(_BYTE *result)
{
  v1 = result[2];
  *result = *result;
  result[1] = 1;
  result[2] = v1;
  return result;
}

char *MedicalIDCache.init(medicalIDStore:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D0FF4C18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDDataResultSubject;
  v32 = 0;
  sub_1D0F52FF4();
  swift_allocObject();
  *&v1[v9] = sub_1D0FF4F58();
  v10 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchOperation;
  v32 = 0;
  sub_1D0F1ABD4(0, &qword_1EE071228, sub_1D0F1AC38, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v1[v10] = sub_1D0FF4938();
  v11 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDChangeObserver;
  *&v2[v11] = [objc_allocWithZone(MedicalIDChangeObserver) init];
  v12 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
  sub_1D0F1ACD4(0, &qword_1EE0710D0);
  *&v2[v12] = sub_1D0FF5AB8();
  *&v2[OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDStore] = a1;
  v13 = type metadata accessor for MedicalIDCache();
  v31.receiver = v2;
  v31.super_class = v13;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDChangeObserver;
  v17 = *&v15[OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDChangeObserver];
  v18 = v15;
  [v17 setDelegate_];
  [*&v15[v16] startObservingChanges];
  sub_1D0FF4B78();
  v19 = sub_1D0FF4C08();
  v20 = sub_1D0FF5978();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v32 = ObjectType;
    swift_getMetatypeMetadata();
    v23 = sub_1D0FF5448();
    v25 = sub_1D0F1AE0C(v23, v24, &v30);
    v29 = v5;
    v26 = v25;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1D0F17000, v19, v20, "[%s] init()", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1D3882680](v22, -1, -1);
    MEMORY[0x1D3882680](v21, -1, -1);

    (*(v6 + 8))(v8, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return v18;
}

void sub_1D0F1ABD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D0F1ACD4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D0F1ADF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_1D0F1AE0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D0F1B19C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D0F1B398(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

_BYTE *sub_1D0F1AF78(_BYTE *result)
{
  v1 = result[1];
  *result = *result;
  result[1] = v1;
  result[2] = 1;
  return result;
}

void *sub_1D0F1AF94(uint64_t a1, uint64_t a2)
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

  sub_1D0F35A48(0, &qword_1EE071018, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D0F1B020(uint64_t a1, unint64_t a2)
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

  v6 = sub_1D0F1AF94(v5, 0);
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

  result = sub_1D0FF5E68();
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
        v10 = sub_1D0FF54C8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D0F1AF94(v10, 0);
        result = sub_1D0FF5DD8();
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

uint64_t sub_1D0F1B150(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D0F1B020(a1, a2);
  sub_1D0F1B2AC(&unk_1F4CF3CC8);
  return v3;
}

unint64_t sub_1D0F1B19C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D0F1B150(a5, a6);
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
    result = sub_1D0FF5E68();
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

uint64_t sub_1D0F1B2AC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D0F33E24(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D0F1B398(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1D0F1B440(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D0FF43A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D0F1B60C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D0FA4BFC();
      goto LABEL_7;
    }

    sub_1D0F1B8AC(v17, a3 & 1);
    v23 = sub_1D0F1B60C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1D0F1BD44(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1D0FF62B8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_1D0F1B60C(uint64_t a1)
{
  sub_1D0FF43A8();
  sub_1D0F1B6A4(&qword_1EE071250, MEMORY[0x1E69695A8]);
  v2 = sub_1D0FF5368();

  return sub_1D0F1B6EC(a1, v2);
}

uint64_t sub_1D0F1B6A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D0F1B6EC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1D0FF43A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1D0F1B6A4(&qword_1EE070D88, MEMORY[0x1E69695A8]);
      v15 = sub_1D0FF53D8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1D0F1B8AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D0FF43A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D0F1BC98(0, &qword_1EE071050, type metadata accessor for MedicalIDCache);
  v39 = a2;
  result = sub_1D0FF6008();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D0F1B6A4(&qword_1EE071250, MEMORY[0x1E69695A8]);
      result = sub_1D0FF5368();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1D0F1BC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D0FF43A8();
    a3(255);
    sub_1D0F1B6A4(&qword_1EE071250, MEMORY[0x1E69695A8]);
    v5 = sub_1D0FF6038();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D0F1BD44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D0FF43A8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_BYTE *sub_1D0F1BE30(_BYTE *result)
{
  v2 = *(v1 + 16);
  v3 = result[1];
  v4 = result[2];
  *result = *result;
  result[1] = v3;
  result[2] = v4;
  result[3] = v2;
  return result;
}

uint64_t sub_1D0F1BF1C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1D0FF4C18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B78();
  v5 = sub_1D0FF4C08();
  v6 = sub_1D0FF5978();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_1D0FF5448();
    v11 = sub_1D0F1AE0C(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D0F17000, v5, v6, "[%s] enqueueMedicalIDFetch()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3882680](v8, -1, -1);
    MEMORY[0x1D3882680](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_1D0F1C0E4() & 1;
}

uint64_t sub_1D0F1C0E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D0FF4C18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  sub_1D0FF4B78();
  v7 = sub_1D0FF4C08();
  v8 = sub_1D0FF5978();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v19 = ObjectType;
    swift_getMetatypeMetadata();
    v11 = sub_1D0FF5448();
    v16 = v3;
    v13 = sub_1D0F1AE0C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D0F17000, v7, v8, "[%s] startNewFetch()", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D3882680](v10, -1, -1);
    MEMORY[0x1D3882680](v9, -1, -1);

    v14 = (*(v4 + 8))(v6, v16);
  }

  else
  {

    v14 = (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v16 - 4) = v1;
  *(&v16 - 3) = &v18;
  *(&v16 - 2) = ObjectType;
  sub_1D0FF4918();
  return v18;
}

void sub_1D0F1C330()
{
  if (!qword_1EE06F980)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F980);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D0F1C500(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D0F1C540()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1D0F1C57C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_1D0FF4B78();
    v12 = sub_1D0FF4C08();
    v13 = sub_1D0FF5978();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      aBlock[0] = a4;
      *v14 = 136315138;
      swift_getMetatypeMetadata();
      v16 = sub_1D0FF5448();
      v18 = sub_1D0F1AE0C(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D0F17000, v12, v13, "[%s] fetch operation already enqueued. Not enqueuing another.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1D3882680](v15, -1, -1);
      MEMORY[0x1D3882680](v14, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v20 = *(a2 + OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDStore);
    v21 = type metadata accessor for MedicalIDFetchOperation();
    v22 = objc_allocWithZone(v21);
    v23 = OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_protectedState;
    sub_1D0F1C330();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *&v22[v23] = v24;
    *&v22[OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_medicalIDStore] = v20;
    v34.receiver = v22;
    v34.super_class = v21;
    v25 = v20;
    v26 = objc_msgSendSuper2(&v34, sel_init);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D0F1E230;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D0F1E1EC;
    aBlock[3] = &block_descriptor_1;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    sub_1D0F1C500(sub_1D0F1E230);

    [v29 setCompletionBlock_];
    _Block_release(v28);

    v30 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
    swift_beginAccess();
    result = [*(a2 + v30) addOperation_];
    *a1 = v29;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1D0F1C8D8()
{
  MEMORY[0x1D3882730](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t storeEnumTagSinglePayload for ImageRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1D0F1C9E8()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4BD8();
  v6 = sub_1D0FF4C08();
  v7 = sub_1D0FF5978();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D0F17000, v6, v7, "MedicalID Data fetch has begun", v8, 2u);
    MEMORY[0x1D3882680](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_medicalIDStore];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_1D0F1DC98;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1DC0C;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v9 fetchMedicalIDDataWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1D0F1CBE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D0F1CC18()
{
  sub_1D0FF4508();
  sub_1D0FF4908();
  if (v2 == 1 && (v3 & 1) == 0)
  {
    v1 = sub_1D0FF4918();
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v1);
  }

  sub_1D0F19DC0();
}

uint64_t sub_1D0F1CD3C()
{
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D0F1CDF0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  swift_getFunctionTypeMetadata1();
  sub_1D0F1CF04();
  swift_getTupleTypeMetadata2();
  *(v1 + 2) = sub_1D0FF5658();
  (*(*(v2 - 8) + 56))(&v1[*(*v1 + 96)], 1, 1, v2);
  v3 = *(*v1 + 104);
  sub_1D0FF4548();
  swift_allocObject();
  *&v1[v3] = sub_1D0FF4538();
  return v1;
}

void sub_1D0F1CF04()
{
  if (!qword_1EE06F9E8)
  {
    sub_1D0F1CF5C();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F9E8);
    }
  }
}

unint64_t sub_1D0F1CF5C()
{
  result = qword_1EE0710D0;
  if (!qword_1EE0710D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0710D0);
  }

  return result;
}

uint64_t ObservableConvertible.afterChange(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v8(&v9, a4, a5);
  sub_1D0F1D070();

  return (v8)(a4, a5);
}

uint64_t sub_1D0F1D070()
{
  sub_1D0FF4548();
  sub_1D0F1A1E8();

  sub_1D0FF49E8();
}

uint64_t sub_1D0F1D124(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v8 = *(*a1 + 80);
  v24 = sub_1D0FF5C38();
  v9 = *(v24 - 8);
  v10 = MEMORY[0x1EEE9AC00](v24);
  v12 = v22 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v22 - v14;
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = a2;
  v23 = a2;
  v16[4] = a3;
  v25 = sub_1D0F28AA0;
  v26 = v16;
  v27 = a4;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1D0F1CF04();
  v17 = a4;
  v22[1] = a3;

  swift_getTupleTypeMetadata2();
  sub_1D0FF56E8();
  sub_1D0FF56A8();
  swift_endAccess();
  v18 = *(*a1 + 96);
  swift_beginAccess();
  v19 = a1 + v18;
  v20 = v24;
  (*(v9 + 16))(v12, v19, v24);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v9 + 8))(v12, v20);
  }

  (*(v13 + 32))(v15, v12, v8);
  v23(v15);
  return (*(v13 + 8))(v15, v8);
}

uint64_t getEnumTagSinglePayload for ImageRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D0F1D4AC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v38 = *(v3 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v32 - v5;
  v45[4] = *(v1 + *(v6 + 104));
  v42 = v1;
  v43 = v4;
  v39 = v4;
  sub_1D0FF4548();
  v41 = v2;
  swift_getFunctionTypeMetadata1();
  sub_1D0F1CF04();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D0FF56E8();
  sub_1D0F1A1E8();
  sub_1D0FF49D8();

  v8 = aBlock[0];
  if (!sub_1D0FF5698())
  {
  }

  v9 = 0;
  v34 = v3 + 16;
  v36 = v3;
  v33 = v3 + 32;
  v32 = v45;
  v10 = (v8 + 48);
  v35 = v8;
  while (1)
  {
    v20 = sub_1D0FF5678();
    result = sub_1D0FF5628();
    if ((v20 & 1) == 0)
    {
      break;
    }

    v19 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_16;
    }

    v23 = *(v10 - 2);
    v22 = *(v10 - 1);
    v24 = *v10;
    v25 = swift_allocObject();
    v25[2] = v41;
    v25[3] = v23;
    v25[4] = v22;
    if (!v24)
    {
      swift_retain_n();
      v28 = 0;
      goto LABEL_13;
    }

    v40 = v9 + 1;
    v26 = objc_opt_self();
    v27 = v24;
    swift_retain_n();
    v28 = v27;
    v29 = [v26 currentQueue];
    if (v29)
    {
      v30 = v29;
      sub_1D0F1CF5C();
      v31 = sub_1D0FF5BF8();

      if (v31)
      {

        v19 = v40;
LABEL_13:
        v23(v39);

        goto LABEL_5;
      }
    }

    else
    {
    }

    v11 = v36;
    v12 = TupleTypeMetadata2;
    v13 = v37;
    v14 = v41;
    (*(v36 + 16))(v37, v39, v41);
    v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = v14;
    *(v16 + 3) = sub_1D0F28A78;
    *(v16 + 4) = v25;
    v17 = v13;
    TupleTypeMetadata2 = v12;
    (*(v11 + 32))(&v16[v15], v17, v14);
    v45[2] = sub_1D0F28A18;
    v45[3] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v45[0] = sub_1D0F1E1EC;
    v45[1] = &block_descriptor_7;
    v18 = _Block_copy(aBlock);

    [v28 addOperationWithBlock_];

    _Block_release(v18);

    v19 = v40;
LABEL_5:
    ++v9;
    v10 += 3;
    if (v19 == sub_1D0FF5698())
    {
    }
  }

  result = sub_1D0FF5DF8();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D0F1D95C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F1D994()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F1DA60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 80);
  v7 = sub_1D0FF5C38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *(v6 - 8);
  (*(v11 + 16))(&v14 - v9, a2, v6);
  (*(v11 + 56))(v10, 0, 1, v6);
  v12 = *(*a1 + 96);
  swift_beginAccess();
  (*(v8 + 40))(&a1[v12], v10, v7);
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a1 + 2);
}

void sub_1D0F1DC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D0F1DCBC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  v8 = (MEMORY[0x1EEE9AC00])();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  if (!a2)
  {
    sub_1D0FF4BD8();
    v27 = sub_1D0FF4C08();
    v28 = sub_1D0FF5978();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D0F17000, v27, v28, "MedicalID data was successfully fetched", v29, 2u);
      MEMORY[0x1D3882680](v29, -1, -1);
    }

    v30 = *(v7 + 8);
    v31 = v10;
    goto LABEL_8;
  }

  v13 = a2;
  sub_1D0FF4BD8();
  v14 = a2;
  v15 = sub_1D0FF4C08();
  v16 = sub_1D0FF5958();

  if (!os_log_type_enabled(v15, v16))
  {

    v30 = *(v7 + 8);
    v31 = v12;
LABEL_8:
    v26 = v30(v31, v6);
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v36 = a1;
  v18 = v17;
  v19 = swift_slowAlloc();
  v35 = v6;
  v20 = v19;
  v37 = a2;
  v38 = v19;
  *v18 = 136446210;
  v21 = a2;
  sub_1D0F1E940();
  v22 = sub_1D0FF5448();
  v24 = sub_1D0F1AE0C(v22, v23, &v38);

  *(v18 + 4) = v24;
  _os_log_impl(&dword_1D0F17000, v15, v16, "Medical ID Fetch failed with error %{public}s", v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  MEMORY[0x1D3882680](v20, -1, -1);
  v25 = v18;
  a1 = v36;
  MEMORY[0x1D3882680](v25, -1, -1);

  v26 = (*(v7 + 8))(v12, v35);
LABEL_9:
  v32 = MEMORY[0x1EEE9AC00](v26);
  *(&v35 - 4) = v3;
  *(&v35 - 3) = a1;
  *(&v35 - 2) = a2;
  v38 = *(v3 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_workLock);
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 48) = 1;
  *(&v35 - 5) = v3;
  *(&v35 - 4) = sub_1D0F1E0BC;
  *(&v35 - 3) = v33;
  *(&v35 - 16) = 1;
  sub_1D0FF4548();
  sub_1D0F1A1E8();

  sub_1D0FF49E8();
}

void sub_1D0F1E060(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_1D0F1E044(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_1D0F1E0C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = a2;

  *a1 = a2;
  v8 = *(a1 + 8);
  v9 = a3;

  *(a1 + 8) = a3;
}

uint64_t sub_1D0F1E1EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D0F1E238()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x1EEE9AC00](Strong);
    sub_1D0FF4918();
  }
}

void sub_1D0F1E2E8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_protectedState;
    v3 = *&v1[OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_protectedState];
    os_unfair_lock_lock((v3 + 32));
    v7 = *(v3 + 16);
    v4 = v7;
    os_unfair_lock_unlock((v3 + 32));
    v5 = *&v1[v2];
    os_unfair_lock_lock((v5 + 32));
    v1 = *(v5 + 24);
    v6 = v1;
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = 0;
  }

  sub_1D0F1E398(v7, v1);
}

void sub_1D0F1E398(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D0FF4C18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B78();
  v11 = a1;
  v12 = a2;
  v13 = sub_1D0FF4C08();
  v14 = sub_1D0FF5978();

  v15 = os_log_type_enabled(v13, v14);
  v50 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v48 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v49 = a1;
    v19 = v18;
    v51[0] = v18;
    *v17 = 136315650;
    v53 = ObjectType;
    swift_getMetatypeMetadata();
    v20 = sub_1D0FF5448();
    v22 = sub_1D0F1AE0C(v20, v21, v51);
    v47 = v7;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v53 = v49;
    sub_1D0F1E8D8(0, &qword_1EE0710B8, &unk_1EE0710C0, 0x1E696C648, MEMORY[0x1E69E6720]);
    v24 = v11;
    v25 = sub_1D0FF5448();
    v27 = sub_1D0F1AE0C(v25, v26, v51);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2082;
    v53 = a2;
    v28 = a2;
    sub_1D0F1ABD4(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
    v29 = sub_1D0FF5448();
    v31 = sub_1D0F1AE0C(v29, v30, v51);

    *(v17 + 24) = v31;
    _os_log_impl(&dword_1D0F17000, v13, v14, "[%s] medicalIDHasUpdated(): fetchedData: %s, fetchError: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    v32 = v19;
    a1 = v49;
    MEMORY[0x1D3882680](v32, -1, -1);
    v33 = v17;
    v3 = v48;
    MEMORY[0x1D3882680](v33, -1, -1);

    (*(v8 + 8))(v10, v47);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    if (a2)
    {
LABEL_3:
      sub_1D0F53064();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D0FFA320;
      v53 = 0x726F727265;
      v54 = 0xE500000000000000;
      v35 = a2;
      sub_1D0FF5D78();
      swift_getErrorValue();
      v36 = v51[1];
      v37 = v52;
      *(inited + 96) = v52;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
      (*(*(v37 - 8) + 16))(boxed_opaque_existential_0, v36, v37);
      v39 = sub_1D0F530CC(inited);
      swift_setDeallocating();
      sub_1D0F5321C(inited + 32);

      v40 = v50;
      if (!a1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v39 = 0;
  v40 = v50;
  if (!a1)
  {
LABEL_4:
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_10:
    v53 = 2;
    sub_1D0FF4F38();
    goto LABEL_12;
  }

LABEL_8:
  v41 = v40;
  if ([v41 isEmpty])
  {

    if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v53 = a1;
  v42 = v41;
  sub_1D0FF4F38();

LABEL_12:
  v43 = [objc_opt_self() defaultCenter];
  if (qword_1EE071080 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE071090;
  if (v39)
  {
    v45 = sub_1D0FF5328();
  }

  else
  {
    v45 = 0;
  }

  [v43 postNotificationName:v44 object:v3 userInfo:v45];
}

void sub_1D0F1E8D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D0F1ACD4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D0F1E940()
{
  result = qword_1EE071010;
  if (!qword_1EE071010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE071010);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience19MedicalIDDataResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D0F1E9E0()
{
  if (!qword_1EE06F8C8)
  {
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F8C8);
    }
  }
}

uint64_t (*_s16HealthExperience16LegacyObservableV6createACyxG10observable_yxc9fulfillertyFZ_0(uint64_t *a1))(uint64_t)
{
  type metadata accessor for ObservableBody();
  v2 = swift_allocObject();
  sub_1D0F1CDF0();
  *a1 = v2;

  return sub_1D0F1DA54;
}

uint64_t sub_1D0F1EA98()
{
  result = sub_1D0FF53E8();
  qword_1EE071090 = result;
  return result;
}

uint64_t HKDisplayCategory.objectTypes()()
{
  v1 = [v0 categoryID];
  v2 = MEMORY[0x1E69E7CC0];
  switch(v1)
  {
    case 1uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC40;
      v3 = objc_opt_self();
      v4 = [v3 dataTypeWithCode_];
      if (!v4)
      {
        goto LABEL_291;
      }

      *(v2 + 32) = v4;
      v5 = [v3 dataTypeWithCode_];
      if (!v5)
      {
        goto LABEL_312;
      }

      *(v2 + 40) = v5;
      v6 = [v3 dataTypeWithCode_];
      if (!v6)
      {
        goto LABEL_324;
      }

      *(v2 + 48) = v6;
      v7 = [v3 dataTypeWithCode_];
      if (!v7)
      {
        goto LABEL_338;
      }

      *(v2 + 56) = v7;
      v8 = [v3 dataTypeWithCode_];
      if (!v8)
      {
        goto LABEL_349;
      }

      *(v2 + 64) = v8;
      v9 = [v3 dataTypeWithCode_];
      if (!v9)
      {
        goto LABEL_362;
      }

      *(v2 + 72) = v9;
      v10 = [v3 dataTypeWithCode_];
      if (!v10)
      {
        goto LABEL_374;
      }

      *(v2 + 80) = v10;
      v11 = [v3 dataTypeWithCode_];
      if (!v11)
      {
        goto LABEL_385;
      }

      *(v2 + 88) = v11;
      return v2;
    case 2uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC50;
      v148 = objc_opt_self();
      v149 = [v148 dataTypeWithCode_];
      if (!v149)
      {
        goto LABEL_298;
      }

      *(v2 + 32) = v149;
      v150 = [v148 dataTypeWithCode_];
      if (!v150)
      {
        goto LABEL_314;
      }

      *(v2 + 40) = v150;
      v151 = [v148 dataTypeWithCode_];
      if (!v151)
      {
        goto LABEL_328;
      }

      *(v2 + 48) = v151;
      v152 = [v148 dataTypeWithCode_];
      if (!v152)
      {
        goto LABEL_342;
      }

      *(v2 + 56) = v152;
      v153 = [v148 dataTypeWithCode_];
      if (!v153)
      {
        goto LABEL_355;
      }

      *(v2 + 64) = v153;
      v154 = [v148 dataTypeWithCode_];
      if (!v154)
      {
        goto LABEL_368;
      }

      *(v2 + 72) = v154;
      v155 = [v148 dataTypeWithCode_];
      if (!v155)
      {
        goto LABEL_379;
      }

      *(v2 + 80) = v155;
      v156 = [v148 dataTypeWithCode_];
      if (!v156)
      {
        goto LABEL_390;
      }

      *(v2 + 88) = v156;
      v157 = [v148 dataTypeWithCode_];
      if (!v157)
      {
        goto LABEL_399;
      }

      *(v2 + 96) = v157;
      v158 = [v148 dataTypeWithCode_];
      if (!v158)
      {
        goto LABEL_408;
      }

      *(v2 + 104) = v158;
      v159 = [v148 dataTypeWithCode_];
      if (!v159)
      {
        goto LABEL_416;
      }

      *(v2 + 112) = v159;
      v160 = [v148 dataTypeWithCode_];
      if (!v160)
      {
        goto LABEL_423;
      }

      *(v2 + 120) = v160;
      v161 = [v148 dataTypeWithCode_];
      if (!v161)
      {
        goto LABEL_429;
      }

      *(v2 + 128) = v161;
      v162 = [v148 dataTypeWithCode_];
      if (!v162)
      {
        goto LABEL_435;
      }

      *(v2 + 136) = v162;
      v163 = [v148 dataTypeWithCode_];
      if (!v163)
      {
        goto LABEL_440;
      }

      *(v2 + 144) = v163;
      v164 = [v148 dataTypeWithCode_];
      if (!v164)
      {
        goto LABEL_445;
      }

      *(v2 + 152) = v164;
      v165 = [v148 dataTypeWithCode_];
      if (!v165)
      {
        goto LABEL_450;
      }

      *(v2 + 160) = v165;
      v166 = [v148 dataTypeWithCode_];
      if (!v166)
      {
        goto LABEL_454;
      }

      *(v2 + 168) = v166;
      v167 = [v148 dataTypeWithCode_];
      if (!v167)
      {
        goto LABEL_458;
      }

      *(v2 + 176) = v167;
      v168 = [v148 dataTypeWithCode_];
      if (!v168)
      {
        goto LABEL_462;
      }

      *(v2 + 184) = v168;
      v169 = [v148 dataTypeWithCode_];
      if (!v169)
      {
        goto LABEL_466;
      }

      *(v2 + 192) = v169;
      v170 = [v148 dataTypeWithCode_];
      if (!v170)
      {
        goto LABEL_470;
      }

      *(v2 + 200) = v170;
      v171 = [v148 dataTypeWithCode_];
      if (!v171)
      {
        goto LABEL_474;
      }

      *(v2 + 208) = v171;
      v172 = [v148 dataTypeWithCode_];
      if (!v172)
      {
        goto LABEL_478;
      }

      *(v2 + 216) = v172;
      v173 = [v148 dataTypeWithCode_];
      if (!v173)
      {
        goto LABEL_482;
      }

      *(v2 + 224) = v173;
      v174 = [v148 dataTypeWithCode_];
      if (!v174)
      {
        goto LABEL_486;
      }

      *(v2 + 232) = v174;
      v175 = [v148 dataTypeWithCode_];
      if (!v175)
      {
        goto LABEL_490;
      }

      *(v2 + 240) = v175;
      v176 = [v148 dataTypeWithCode_];
      if (!v176)
      {
        goto LABEL_494;
      }

      *(v2 + 248) = v176;
      v177 = [v148 dataTypeWithCode_];
      if (!v177)
      {
        goto LABEL_498;
      }

      *(v2 + 256) = v177;
      v178 = [v148 dataTypeWithCode_];
      if (!v178)
      {
        goto LABEL_502;
      }

      *(v2 + 264) = v178;
      v179 = [v148 dataTypeWithCode_];
      if (!v179)
      {
        goto LABEL_506;
      }

      *(v2 + 272) = v179;
      v180 = [v148 dataTypeWithCode_];
      if (!v180)
      {
        goto LABEL_510;
      }

      *(v2 + 280) = v180;
      v181 = [v148 dataTypeWithCode_];
      if (!v181)
      {
        goto LABEL_514;
      }

      *(v2 + 288) = v181;
      v182 = [v148 dataTypeWithCode_];
      if (!v182)
      {
        goto LABEL_518;
      }

      *(v2 + 296) = v182;
      v183 = [v148 dataTypeWithCode_];
      if (!v183)
      {
        goto LABEL_522;
      }

      *(v2 + 304) = v183;
      v184 = [v148 dataTypeWithCode_];
      if (!v184)
      {
        goto LABEL_526;
      }

      *(v2 + 312) = v184;
      v185 = [v148 dataTypeWithCode_];
      if (!v185)
      {
        goto LABEL_530;
      }

      *(v2 + 320) = v185;
      return v2;
    case 4uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBB0;
      v60 = objc_opt_self();
      v61 = [v60 dataTypeWithCode_];
      if (!v61)
      {
        goto LABEL_292;
      }

      *(v2 + 32) = v61;
      v62 = [v60 dataTypeWithCode_];
      if (!v62)
      {
        goto LABEL_307;
      }

      *(v2 + 40) = v62;
      v63 = [v60 dataTypeWithCode_];
      if (!v63)
      {
        goto LABEL_321;
      }

      *(v2 + 48) = v63;
      v64 = [v60 dataTypeWithCode_];
      if (!v64)
      {
        goto LABEL_335;
      }

      *(v2 + 56) = v64;
      v65 = [v60 dataTypeWithCode_];
      if (!v65)
      {
        goto LABEL_350;
      }

      *(v2 + 64) = v65;
      v66 = [v60 dataTypeWithCode_];
      if (!v66)
      {
        goto LABEL_363;
      }

      *(v2 + 72) = v66;
      v67 = [v60 dataTypeWithCode_];
      if (!v67)
      {
        goto LABEL_375;
      }

      *(v2 + 80) = v67;
      v68 = [v60 dataTypeWithCode_];
      if (!v68)
      {
        goto LABEL_386;
      }

      *(v2 + 88) = v68;
      v69 = [v60 dataTypeWithCode_];
      if (!v69)
      {
        goto LABEL_395;
      }

      *(v2 + 96) = v69;
      v70 = [v60 dataTypeWithCode_];
      if (!v70)
      {
        goto LABEL_404;
      }

      *(v2 + 104) = v70;
      v71 = [v60 dataTypeWithCode_];
      if (!v71)
      {
        goto LABEL_413;
      }

      *(v2 + 112) = v71;
      v72 = [v60 dataTypeWithCode_];
      if (!v72)
      {
        goto LABEL_421;
      }

      *(v2 + 120) = v72;
      v73 = [v60 dataTypeWithCode_];
      if (!v73)
      {
        goto LABEL_428;
      }

      *(v2 + 128) = v73;
      v74 = [v60 dataTypeWithCode_];
      if (!v74)
      {
        goto LABEL_434;
      }

      *(v2 + 136) = v74;
      v75 = [v60 dataTypeWithCode_];
      if (!v75)
      {
        goto LABEL_439;
      }

      *(v2 + 144) = v75;
      v76 = [v60 dataTypeWithCode_];
      if (!v76)
      {
        goto LABEL_444;
      }

      *(v2 + 152) = v76;
      v77 = [v60 dataTypeWithCode_];
      if (!v77)
      {
        goto LABEL_449;
      }

      *(v2 + 160) = v77;
      v78 = [v60 dataTypeWithCode_];
      if (!v78)
      {
        goto LABEL_453;
      }

      *(v2 + 168) = v78;
      v79 = [v60 dataTypeWithCode_];
      if (!v79)
      {
        goto LABEL_457;
      }

      *(v2 + 176) = v79;
      v80 = [v60 dataTypeWithCode_];
      if (!v80)
      {
        goto LABEL_461;
      }

      *(v2 + 184) = v80;
      v81 = [v60 dataTypeWithCode_];
      if (!v81)
      {
        goto LABEL_465;
      }

      *(v2 + 192) = v81;
      v82 = [v60 dataTypeWithCode_];
      if (!v82)
      {
        goto LABEL_469;
      }

      *(v2 + 200) = v82;
      v83 = [v60 dataTypeWithCode_];
      if (!v83)
      {
        goto LABEL_473;
      }

      *(v2 + 208) = v83;
      v84 = [v60 dataTypeWithCode_];
      if (!v84)
      {
        goto LABEL_477;
      }

      *(v2 + 216) = v84;
      v85 = [v60 dataTypeWithCode_];
      if (!v85)
      {
        goto LABEL_481;
      }

      *(v2 + 224) = v85;
      v86 = [v60 dataTypeWithCode_];
      if (!v86)
      {
        goto LABEL_485;
      }

      *(v2 + 232) = v86;
      v87 = [v60 dataTypeWithCode_];
      if (!v87)
      {
        goto LABEL_489;
      }

      *(v2 + 240) = v87;
      v88 = [v60 dataTypeWithCode_];
      if (!v88)
      {
        goto LABEL_493;
      }

      *(v2 + 248) = v88;
      v89 = [v60 dataTypeWithCode_];
      if (!v89)
      {
        goto LABEL_497;
      }

      *(v2 + 256) = v89;
      v90 = [v60 dataTypeWithCode_];
      if (!v90)
      {
        goto LABEL_501;
      }

      *(v2 + 264) = v90;
      v91 = [v60 dataTypeWithCode_];
      if (!v91)
      {
        goto LABEL_505;
      }

      *(v2 + 272) = v91;
      v92 = [v60 dataTypeWithCode_];
      if (!v92)
      {
        goto LABEL_509;
      }

      *(v2 + 280) = v92;
      v93 = [v60 dataTypeWithCode_];
      if (!v93)
      {
        goto LABEL_513;
      }

      *(v2 + 288) = v93;
      v94 = [v60 dataTypeWithCode_];
      if (!v94)
      {
        goto LABEL_517;
      }

      *(v2 + 296) = v94;
      v95 = [v60 dataTypeWithCode_];
      if (!v95)
      {
        goto LABEL_521;
      }

      *(v2 + 304) = v95;
      v96 = [v60 dataTypeWithCode_];
      if (!v96)
      {
        goto LABEL_525;
      }

      *(v2 + 312) = v96;
      v97 = [v60 dataTypeWithCode_];
      if (!v97)
      {
        goto LABEL_529;
      }

      *(v2 + 320) = v97;
      v98 = [v60 dataTypeWithCode_];
      if (!v98)
      {
        goto LABEL_533;
      }

      *(v2 + 328) = v98;
      v52 = [v60 dataTypeWithCode_];
      if (v52)
      {
        goto LABEL_103;
      }

      goto LABEL_535;
    case 5uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBC0;
      v143 = objc_opt_self();
      v144 = [v143 dataTypeWithCode_];
      if (!v144)
      {
        goto LABEL_297;
      }

      *(v2 + 32) = v144;
      v145 = [v143 dataTypeWithCode_];
      if (!v145)
      {
        goto LABEL_313;
      }

      *(v2 + 40) = v145;
      v146 = [v143 dataTypeWithCode_];
      if (!v146)
      {
        goto LABEL_327;
      }

      *(v2 + 48) = v146;
      v147 = [v143 dataTypeWithCode_];
      if (!v147)
      {
        goto LABEL_341;
      }

      *(v2 + 56) = v147;
      return v2;
    case 6uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC60;
      v99 = objc_opt_self();
      v100 = [v99 dataTypeWithCode_];
      if (!v100)
      {
        goto LABEL_293;
      }

      *(v2 + 32) = v100;
      v101 = [v99 dataTypeWithCode_];
      if (!v101)
      {
        goto LABEL_308;
      }

      *(v2 + 40) = v101;
      v102 = [v99 dataTypeWithCode_];
      if (!v102)
      {
        goto LABEL_322;
      }

      *(v2 + 48) = v102;
      v103 = [v99 dataTypeWithCode_];
      if (!v103)
      {
        goto LABEL_336;
      }

      *(v2 + 56) = v103;
      v104 = [v99 dataTypeWithCode_];
      if (!v104)
      {
        goto LABEL_351;
      }

      *(v2 + 64) = v104;
      v105 = [v99 dataTypeWithCode_];
      if (!v105)
      {
        goto LABEL_364;
      }

      *(v2 + 72) = v105;
      v106 = [v99 dataTypeWithCode_];
      if (!v106)
      {
        goto LABEL_376;
      }

      *(v2 + 80) = v106;
      v107 = [v99 dataTypeWithCode_];
      if (!v107)
      {
        goto LABEL_387;
      }

      *(v2 + 88) = v107;
      v108 = [v99 dataTypeWithCode_];
      if (!v108)
      {
        goto LABEL_396;
      }

      *(v2 + 96) = v108;
      v109 = [v99 dataTypeWithCode_];
      if (!v109)
      {
        goto LABEL_405;
      }

      *(v2 + 104) = v109;
      v110 = [v99 dataTypeWithCode_];
      if (!v110)
      {
        goto LABEL_414;
      }

      *(v2 + 112) = v110;
      return v2;
    case 7uLL:
      goto LABEL_133;
    case 8uLL:
      goto LABEL_198;
    case 9uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_241:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_243:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_245:
      sub_1D0F1E9E0();
      v230 = swift_allocObject();
      *(v230 + 16) = xmmword_1D0FFDC20;
      v231 = objc_opt_self();
      v232 = [v231 dataTypeWithCode_];
      if (!v232)
      {
        goto LABEL_301;
      }

      *(v230 + 32) = v232;
      v233 = [v231 dataTypeWithCode_];
      if (!v233)
      {
        goto LABEL_316;
      }

      *(v230 + 40) = v233;
      v234 = [v231 dataTypeWithCode_];
      if (!v234)
      {
        goto LABEL_330;
      }

      *(v230 + 48) = v234;
      v235 = [v231 dataTypeWithCode_];
      if (!v235)
      {
        goto LABEL_344;
      }

      *(v230 + 56) = v235;
      v236 = [v231 dataTypeWithCode_];
      if (!v236)
      {
        goto LABEL_357;
      }

      *(v230 + 64) = v236;
      v237 = [v231 dataTypeWithCode_];
      if (!v237)
      {
        goto LABEL_370;
      }

      *(v230 + 72) = v237;
      v238 = [v231 dataTypeWithCode_];
      if (!v238)
      {
        goto LABEL_381;
      }

      *(v230 + 80) = v238;
      v239 = [v231 dataTypeWithCode_];
      if (!v239)
      {
        goto LABEL_392;
      }

      *(v230 + 88) = v239;
      v240 = [v231 dataTypeWithCode_];
      if (!v240)
      {
        goto LABEL_401;
      }

      *(v230 + 96) = v240;
      v241 = [v231 dataTypeWithCode_];
      if (!v241)
      {
        goto LABEL_410;
      }

      *(v230 + 104) = v241;
      v242 = [v231 dataTypeWithCode_];
      if (!v242)
      {
        goto LABEL_418;
      }

      *(v230 + 112) = v242;
      v243 = [v231 dataTypeWithCode_];
      if (!v243)
      {
        goto LABEL_425;
      }

      *(v230 + 120) = v243;
      v244 = [v231 dataTypeWithCode_];
      if (!v244)
      {
        goto LABEL_431;
      }

      *(v230 + 128) = v244;
      v245 = [v231 dataTypeWithCode_];
      if (!v245)
      {
        goto LABEL_437;
      }

      *(v230 + 136) = v245;
      v268 = v230;
      if (![v231 dataTypeWithCode_])
      {
        goto LABEL_442;
      }

      sub_1D0F21588();
      if (![v231 dataTypeWithCode_])
      {
        goto LABEL_447;
      }

LABEL_261:
      sub_1D0F21588();
      return v268;
    case 0xAuLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC10;
      v246 = objc_opt_self();
      v247 = [v246 dataTypeWithCode_];
      if (!v247)
      {
        goto LABEL_302;
      }

      *(v2 + 32) = v247;
      v248 = [v246 dataTypeWithCode_];
      if (!v248)
      {
        goto LABEL_317;
      }

      *(v2 + 40) = v248;
      v249 = [v246 dataTypeWithCode_];
      if (!v249)
      {
        goto LABEL_331;
      }

      *(v2 + 48) = v249;
      v250 = [v246 dataTypeWithCode_];
      if (!v250)
      {
        goto LABEL_345;
      }

      *(v2 + 56) = v250;
      v251 = [v246 dataTypeWithCode_];
      if (!v251)
      {
        goto LABEL_358;
      }

      *(v2 + 64) = v251;
      v252 = [v246 dataTypeWithCode_];
      if (!v252)
      {
        goto LABEL_371;
      }

      *(v2 + 72) = v252;
      v131 = [v246 dataTypeWithCode_];
      if (v131)
      {
        goto LABEL_269;
      }

      goto LABEL_382;
    case 0xBuLL:
      goto LABEL_245;
    case 0xCuLL:
      goto LABEL_57;
    case 0xDuLL:
      goto LABEL_141;
    case 0xEuLL:
      goto LABEL_118;
    case 0x10uLL:
      goto LABEL_53;
    case 0x11uLL:
      goto LABEL_241;
    case 0x12uLL:
      goto LABEL_243;
    case 0x13uLL:
      goto LABEL_272;
    case 0x14uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_272:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      goto LABEL_303;
    case 0x15uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_13:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBB0;
      v13 = objc_opt_self();
      v14 = [v13 dataTypeWithCode_];
      if (!v14)
      {
        __break(1u);
        goto LABEL_290;
      }

      *(v2 + 32) = v14;
      v15 = [v13 dataTypeWithCode_];
      if (!v15)
      {
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
        goto LABEL_319;
      }

      *(v2 + 40) = v15;
      v16 = [v13 dataTypeWithCode_];
      if (!v16)
      {
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      *(v2 + 48) = v16;
      v17 = [v13 dataTypeWithCode_];
      if (!v17)
      {
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
        goto LABEL_347;
      }

      *(v2 + 56) = v17;
      v18 = [v13 dataTypeWithCode_];
      if (!v18)
      {
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      *(v2 + 64) = v18;
      v19 = [v13 dataTypeWithCode_];
      if (!v19)
      {
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
        goto LABEL_412;
      }

      *(v2 + 72) = v19;
      v20 = [v13 dataTypeWithCode_];
      if (!v20)
      {
        goto LABEL_373;
      }

      *(v2 + 80) = v20;
      v21 = [v13 dataTypeWithCode_];
      if (!v21)
      {
        goto LABEL_384;
      }

      *(v2 + 88) = v21;
      v22 = [v13 dataTypeWithCode_];
      if (!v22)
      {
        goto LABEL_394;
      }

      *(v2 + 96) = v22;
      v23 = [v13 dataTypeWithCode_];
      if (!v23)
      {
        goto LABEL_403;
      }

      *(v2 + 104) = v23;
      v24 = [v13 dataTypeWithCode_];
      if (!v24)
      {
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
LABEL_458:
        __break(1u);
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
LABEL_461:
        __break(1u);
LABEL_462:
        __break(1u);
LABEL_463:
        __break(1u);
LABEL_464:
        __break(1u);
LABEL_465:
        __break(1u);
LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
LABEL_490:
        __break(1u);
LABEL_491:
        __break(1u);
LABEL_492:
        __break(1u);
LABEL_493:
        __break(1u);
LABEL_494:
        __break(1u);
LABEL_495:
        __break(1u);
LABEL_496:
        __break(1u);
LABEL_497:
        __break(1u);
LABEL_498:
        __break(1u);
LABEL_499:
        __break(1u);
LABEL_500:
        __break(1u);
LABEL_501:
        __break(1u);
LABEL_502:
        __break(1u);
LABEL_503:
        __break(1u);
LABEL_504:
        __break(1u);
LABEL_505:
        __break(1u);
LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
LABEL_517:
        __break(1u);
LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
        goto LABEL_532;
      }

      *(v2 + 112) = v24;
      v25 = [v13 dataTypeWithCode_];
      if (!v25)
      {
        goto LABEL_420;
      }

      *(v2 + 120) = v25;
      v26 = [v13 dataTypeWithCode_];
      if (!v26)
      {
        goto LABEL_427;
      }

      *(v2 + 128) = v26;
      v27 = [v13 dataTypeWithCode_];
      if (!v27)
      {
        goto LABEL_433;
      }

      *(v2 + 136) = v27;
      v28 = [v13 dataTypeWithCode_];
      if (!v28)
      {
        goto LABEL_438;
      }

      *(v2 + 144) = v28;
      v29 = [v13 dataTypeWithCode_];
      if (!v29)
      {
        goto LABEL_443;
      }

      *(v2 + 152) = v29;
      v30 = [v13 dataTypeWithCode_];
      if (!v30)
      {
        goto LABEL_448;
      }

      *(v2 + 160) = v30;
      v31 = [v13 dataTypeWithCode_];
      if (!v31)
      {
        goto LABEL_452;
      }

      *(v2 + 168) = v31;
      v32 = [v13 dataTypeWithCode_];
      if (!v32)
      {
        goto LABEL_456;
      }

      *(v2 + 176) = v32;
      v33 = [v13 dataTypeWithCode_];
      if (!v33)
      {
        goto LABEL_460;
      }

      *(v2 + 184) = v33;
      v34 = [v13 dataTypeWithCode_];
      if (!v34)
      {
        goto LABEL_464;
      }

      *(v2 + 192) = v34;
      v35 = [v13 dataTypeWithCode_];
      if (!v35)
      {
        goto LABEL_468;
      }

      *(v2 + 200) = v35;
      v36 = [v13 dataTypeWithCode_];
      if (!v36)
      {
        goto LABEL_472;
      }

      *(v2 + 208) = v36;
      v37 = [v13 dataTypeWithCode_];
      if (!v37)
      {
        goto LABEL_476;
      }

      *(v2 + 216) = v37;
      v38 = [v13 dataTypeWithCode_];
      if (!v38)
      {
        goto LABEL_480;
      }

      *(v2 + 224) = v38;
      v39 = [v13 dataTypeWithCode_];
      if (!v39)
      {
        goto LABEL_484;
      }

      *(v2 + 232) = v39;
      v40 = [v13 dataTypeWithCode_];
      if (!v40)
      {
        goto LABEL_488;
      }

      *(v2 + 240) = v40;
      v41 = [v13 dataTypeWithCode_];
      if (!v41)
      {
        goto LABEL_492;
      }

      *(v2 + 248) = v41;
      v42 = [v13 dataTypeWithCode_];
      if (!v42)
      {
        goto LABEL_496;
      }

      *(v2 + 256) = v42;
      v43 = [v13 dataTypeWithCode_];
      if (!v43)
      {
        goto LABEL_500;
      }

      *(v2 + 264) = v43;
      v44 = [v13 dataTypeWithCode_];
      if (!v44)
      {
        goto LABEL_504;
      }

      *(v2 + 272) = v44;
      v45 = [v13 dataTypeWithCode_];
      if (!v45)
      {
        goto LABEL_508;
      }

      *(v2 + 280) = v45;
      v46 = [v13 dataTypeWithCode_];
      if (!v46)
      {
        goto LABEL_512;
      }

      *(v2 + 288) = v46;
      v47 = [v13 dataTypeWithCode_];
      if (!v47)
      {
        goto LABEL_516;
      }

      *(v2 + 296) = v47;
      v48 = [v13 dataTypeWithCode_];
      if (!v48)
      {
        goto LABEL_520;
      }

      *(v2 + 304) = v48;
      v49 = [v13 dataTypeWithCode_];
      if (!v49)
      {
        goto LABEL_524;
      }

      *(v2 + 312) = v49;
      v50 = [v13 dataTypeWithCode_];
      if (!v50)
      {
        goto LABEL_528;
      }

      *(v2 + 320) = v50;
      v51 = [v13 dataTypeWithCode_];
      if (!v51)
      {
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
LABEL_537:
        __break(1u);
        JUMPOUT(0x1D0F2150CLL);
      }

      *(v2 + 328) = v51;
      v52 = [v13 dataTypeWithCode_];
      if (v52)
      {
LABEL_103:
        *(v2 + 336) = v52;
        return v2;
      }

      __break(1u);
LABEL_53:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_55:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
LABEL_273:
        *(v2 + 32) = v12;
        return v2;
      }

      __break(1u);
LABEL_57:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC30;
      v53 = objc_opt_self();
      v54 = [v53 dataTypeWithCode_];
      if (!v54)
      {
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      *(v2 + 32) = v54;
      v55 = [v53 dataTypeWithCode_];
      if (!v55)
      {
        goto LABEL_306;
      }

      *(v2 + 40) = v55;
      v56 = [v53 dataTypeWithCode_];
      if (!v56)
      {
        goto LABEL_320;
      }

      *(v2 + 48) = v56;
      v57 = [v53 dataTypeWithCode_];
      if (!v57)
      {
        goto LABEL_334;
      }

      *(v2 + 56) = v57;
      v58 = [v53 dataTypeWithCode_];
      if (!v58)
      {
        goto LABEL_348;
      }

      *(v2 + 64) = v58;
      v59 = [v53 dataTypeWithCode_];
      if (!v59)
      {
        goto LABEL_361;
      }

      *(v2 + 72) = v59;
      return v2;
    case 0x16uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_133:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC10;
      v124 = objc_opt_self();
      v125 = [v124 dataTypeWithCode_];
      if (!v125)
      {
        goto LABEL_295;
      }

      *(v2 + 32) = v125;
      v126 = [v124 dataTypeWithCode_];
      if (!v126)
      {
        goto LABEL_310;
      }

      *(v2 + 40) = v126;
      v127 = [v124 dataTypeWithCode_];
      if (!v127)
      {
        goto LABEL_325;
      }

      *(v2 + 48) = v127;
      v128 = [v124 dataTypeWithCode_];
      if (!v128)
      {
        goto LABEL_339;
      }

      *(v2 + 56) = v128;
      v129 = [v124 dataTypeWithCode_];
      if (!v129)
      {
        goto LABEL_353;
      }

      *(v2 + 64) = v129;
      v130 = [v124 dataTypeWithCode_];
      if (!v130)
      {
        goto LABEL_366;
      }

      *(v2 + 72) = v130;
      v131 = [v124 dataTypeWithCode_];
      if (v131)
      {
LABEL_269:
        *(v2 + 80) = v131;
        return v2;
      }

      __break(1u);
LABEL_141:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBD0;
      v132 = objc_opt_self();
      v133 = [v132 dataTypeWithCode_];
      if (!v133)
      {
        goto LABEL_296;
      }

      *(v2 + 32) = v133;
      v134 = [v132 dataTypeWithCode_];
      if (!v134)
      {
        goto LABEL_311;
      }

      *(v2 + 40) = v134;
      v135 = [v132 dataTypeWithCode_];
      if (!v135)
      {
        goto LABEL_326;
      }

      *(v2 + 48) = v135;
      v136 = [v132 dataTypeWithCode_];
      if (!v136)
      {
        goto LABEL_340;
      }

      *(v2 + 56) = v136;
      v137 = [v132 dataTypeWithCode_];
      if (!v137)
      {
        goto LABEL_354;
      }

      *(v2 + 64) = v137;
      v138 = [v132 dataTypeWithCode_];
      if (!v138)
      {
        goto LABEL_367;
      }

      *(v2 + 72) = v138;
      v139 = [v132 dataTypeWithCode_];
      if (!v139)
      {
        goto LABEL_378;
      }

      *(v2 + 80) = v139;
      v140 = [v132 dataTypeWithCode_];
      if (!v140)
      {
        goto LABEL_389;
      }

      *(v2 + 88) = v140;
      v141 = [v132 dataTypeWithCode_];
      if (!v141)
      {
        goto LABEL_398;
      }

      *(v2 + 96) = v141;
      v142 = [v132 dataTypeWithCode_];
      if (!v142)
      {
        goto LABEL_407;
      }

      *(v2 + 104) = v142;
      return v2;
    case 0x17uLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDC00;
      v254 = objc_opt_self();
      v255 = [v254 dataTypeWithCode_];
      if (!v255)
      {
        goto LABEL_304;
      }

      *(v2 + 32) = v255;
      v256 = [v254 dataTypeWithCode_];
      if (!v256)
      {
        goto LABEL_318;
      }

      *(v2 + 40) = v256;
      v257 = [v254 dataTypeWithCode_];
      if (!v257)
      {
        goto LABEL_332;
      }

      *(v2 + 48) = v257;
      v258 = [v254 dataTypeWithCode_];
      if (!v258)
      {
        goto LABEL_346;
      }

      *(v2 + 56) = v258;
      v259 = [v254 dataTypeWithCode_];
      if (!v259)
      {
        goto LABEL_359;
      }

      *(v2 + 64) = v259;
      v260 = [v254 dataTypeWithCode_];
      if (!v260)
      {
        goto LABEL_372;
      }

      *(v2 + 72) = v260;
      v261 = [v254 dataTypeWithCode_];
      if (!v261)
      {
        goto LABEL_383;
      }

      *(v2 + 80) = v261;
      v262 = [v254 dataTypeWithCode_];
      if (!v262)
      {
        goto LABEL_393;
      }

      *(v2 + 88) = v262;
      v263 = [v254 dataTypeWithCode_];
      if (!v263)
      {
        goto LABEL_402;
      }

      *(v2 + 96) = v263;
      v264 = [v254 dataTypeWithCode_];
      if (!v264)
      {
        goto LABEL_411;
      }

      *(v2 + 104) = v264;
      v265 = [v254 dataTypeWithCode_];
      if (!v265)
      {
        goto LABEL_419;
      }

      *(v2 + 112) = v265;
      v266 = [v254 dataTypeWithCode_];
      if (!v266)
      {
        goto LABEL_426;
      }

      *(v2 + 120) = v266;
      v267 = [v254 dataTypeWithCode_];
      if (!v267)
      {
        goto LABEL_432;
      }

      *(v2 + 128) = v267;
      return v2;
    case 0x1AuLL:
      goto LABEL_13;
    case 0x1BuLL:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FF9980;
      v12 = [objc_opt_self() dataTypeWithCode_];
      if (v12)
      {
        goto LABEL_273;
      }

      __break(1u);
LABEL_118:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBF0;
      v111 = objc_opt_self();
      v112 = [v111 dataTypeWithCode_];
      if (!v112)
      {
        goto LABEL_294;
      }

      *(v2 + 32) = v112;
      v113 = [v111 dataTypeWithCode_];
      if (!v113)
      {
        goto LABEL_309;
      }

      *(v2 + 40) = v113;
      v114 = [v111 dataTypeWithCode_];
      if (!v114)
      {
        goto LABEL_323;
      }

      *(v2 + 48) = v114;
      v115 = [v111 dataTypeWithCode_];
      if (!v115)
      {
        goto LABEL_337;
      }

      *(v2 + 56) = v115;
      v116 = [v111 dataTypeWithCode_];
      if (!v116)
      {
        goto LABEL_352;
      }

      *(v2 + 64) = v116;
      v117 = [v111 dataTypeWithCode_];
      if (!v117)
      {
        goto LABEL_365;
      }

      *(v2 + 72) = v117;
      v118 = [v111 dataTypeWithCode_];
      if (!v118)
      {
        goto LABEL_377;
      }

      *(v2 + 80) = v118;
      v119 = [v111 dataTypeWithCode_];
      if (!v119)
      {
        goto LABEL_388;
      }

      *(v2 + 88) = v119;
      v120 = [v111 dataTypeWithCode_];
      if (!v120)
      {
        goto LABEL_397;
      }

      *(v2 + 96) = v120;
      v121 = [v111 dataTypeWithCode_];
      if (!v121)
      {
        goto LABEL_406;
      }

      *(v2 + 104) = v121;
      v122 = [v111 dataTypeWithCode_];
      if (!v122)
      {
        goto LABEL_415;
      }

      *(v2 + 112) = v122;
      v123 = [v111 dataTypeWithCode_];
      if (!v123)
      {
        goto LABEL_422;
      }

      *(v2 + 120) = v123;
      return v2;
    case 0x1EuLL:
      goto LABEL_55;
    case 0x1FuLL:
      sub_1D0F1E9E0();
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_1D0FF9980;
      v187 = objc_opt_self();
      v188 = [v187 dataTypeWithCode_];
      if (!v188)
      {
        goto LABEL_299;
      }

      *(v186 + 32) = v188;
      v268 = v186;
      if ([v187 dataTypeWithCode_])
      {
        goto LABEL_261;
      }

      __break(1u);
LABEL_198:
      sub_1D0F1E9E0();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D0FFDBE0;
      v189 = objc_opt_self();
      v190 = [v189 dataTypeWithCode_];
      if (!v190)
      {
        goto LABEL_300;
      }

      *(v2 + 32) = v190;
      v191 = [v189 dataTypeWithCode_];
      if (!v191)
      {
        goto LABEL_315;
      }

      *(v2 + 40) = v191;
      v192 = [v189 dataTypeWithCode_];
      if (!v192)
      {
        goto LABEL_329;
      }

      *(v2 + 48) = v192;
      v193 = [v189 dataTypeWithCode_];
      if (!v193)
      {
        goto LABEL_343;
      }

      *(v2 + 56) = v193;
      v194 = [v189 dataTypeWithCode_];
      if (!v194)
      {
        goto LABEL_356;
      }

      *(v2 + 64) = v194;
      v195 = [v189 dataTypeWithCode_];
      if (!v195)
      {
        goto LABEL_369;
      }

      *(v2 + 72) = v195;
      v196 = [v189 dataTypeWithCode_];
      if (!v196)
      {
        goto LABEL_380;
      }

      *(v2 + 80) = v196;
      v197 = [v189 dataTypeWithCode_];
      if (!v197)
      {
        goto LABEL_391;
      }

      *(v2 + 88) = v197;
      v198 = [v189 dataTypeWithCode_];
      if (!v198)
      {
        goto LABEL_400;
      }

      *(v2 + 96) = v198;
      v199 = [v189 dataTypeWithCode_];
      if (!v199)
      {
        goto LABEL_409;
      }

      *(v2 + 104) = v199;
      v200 = [v189 dataTypeWithCode_];
      if (!v200)
      {
        goto LABEL_417;
      }

      *(v2 + 112) = v200;
      v201 = [v189 dataTypeWithCode_];
      if (!v201)
      {
        goto LABEL_424;
      }

      *(v2 + 120) = v201;
      v202 = [v189 dataTypeWithCode_];
      if (!v202)
      {
        goto LABEL_430;
      }

      *(v2 + 128) = v202;
      v203 = [v189 dataTypeWithCode_];
      if (!v203)
      {
        goto LABEL_436;
      }

      *(v2 + 136) = v203;
      v204 = [v189 dataTypeWithCode_];
      if (!v204)
      {
        goto LABEL_441;
      }

      *(v2 + 144) = v204;
      v205 = [v189 dataTypeWithCode_];
      if (!v205)
      {
        goto LABEL_446;
      }

      *(v2 + 152) = v205;
      v206 = [v189 dataTypeWithCode_];
      if (!v206)
      {
        goto LABEL_451;
      }

      *(v2 + 160) = v206;
      v207 = [v189 dataTypeWithCode_];
      if (!v207)
      {
        goto LABEL_455;
      }

      *(v2 + 168) = v207;
      v208 = [v189 dataTypeWithCode_];
      if (!v208)
      {
        goto LABEL_459;
      }

      *(v2 + 176) = v208;
      v209 = [v189 dataTypeWithCode_];
      if (!v209)
      {
        goto LABEL_463;
      }

      *(v2 + 184) = v209;
      v210 = [v189 dataTypeWithCode_];
      if (!v210)
      {
        goto LABEL_467;
      }

      *(v2 + 192) = v210;
      v211 = [v189 dataTypeWithCode_];
      if (!v211)
      {
        goto LABEL_471;
      }

      *(v2 + 200) = v211;
      v212 = [v189 dataTypeWithCode_];
      if (!v212)
      {
        goto LABEL_475;
      }

      *(v2 + 208) = v212;
      v213 = [v189 dataTypeWithCode_];
      if (!v213)
      {
        goto LABEL_479;
      }

      *(v2 + 216) = v213;
      v214 = [v189 dataTypeWithCode_];
      if (!v214)
      {
        goto LABEL_483;
      }

      *(v2 + 224) = v214;
      v215 = [v189 dataTypeWithCode_];
      if (!v215)
      {
        goto LABEL_487;
      }

      *(v2 + 232) = v215;
      v216 = [v189 dataTypeWithCode_];
      if (!v216)
      {
        goto LABEL_491;
      }

      *(v2 + 240) = v216;
      v217 = [v189 dataTypeWithCode_];
      if (!v217)
      {
        goto LABEL_495;
      }

      *(v2 + 248) = v217;
      v218 = [v189 dataTypeWithCode_];
      if (!v218)
      {
        goto LABEL_499;
      }

      *(v2 + 256) = v218;
      v219 = [v189 dataTypeWithCode_];
      if (!v219)
      {
        goto LABEL_503;
      }

      *(v2 + 264) = v219;
      v220 = [v189 dataTypeWithCode_];
      if (!v220)
      {
        goto LABEL_507;
      }

      *(v2 + 272) = v220;
      v221 = [v189 dataTypeWithCode_];
      if (!v221)
      {
        goto LABEL_511;
      }

      *(v2 + 280) = v221;
      v222 = [v189 dataTypeWithCode_];
      if (!v222)
      {
        goto LABEL_515;
      }

      *(v2 + 288) = v222;
      v223 = [v189 dataTypeWithCode_];
      if (!v223)
      {
        goto LABEL_519;
      }

      *(v2 + 296) = v223;
      v224 = [v189 dataTypeWithCode_];
      if (!v224)
      {
        goto LABEL_523;
      }

      *(v2 + 304) = v224;
      v225 = [v189 dataTypeWithCode_];
      if (!v225)
      {
        goto LABEL_527;
      }

      *(v2 + 312) = v225;
      v226 = [v189 dataTypeWithCode_];
      if (!v226)
      {
        goto LABEL_531;
      }

      *(v2 + 320) = v226;
      v227 = [v189 dataTypeWithCode_];
      if (!v227)
      {
        goto LABEL_534;
      }

      *(v2 + 328) = v227;
      v228 = [v189 dataTypeWithCode_];
      if (!v228)
      {
        goto LABEL_536;
      }

      *(v2 + 336) = v228;
      v229 = [v189 dataTypeWithCode_];
      if (!v229)
      {
        goto LABEL_537;
      }

      *(v2 + 344) = v229;
      return v2;
    default:
      return v2;
  }
}

uint64_t sub_1D0F21588()
{
  MEMORY[0x1D3880BF0]();
  if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D0FF5638();
  }

  return sub_1D0FF5688();
}

void sub_1D0F21600()
{
  sub_1D0F216D8(319, &qword_1EE06FA58);
  if (v0 <= 0x3F)
  {
    sub_1D0F21788();
    if (v1 <= 0x3F)
    {
      sub_1D0F216D8(319, &qword_1EE070A58);
      if (v2 <= 0x3F)
      {
        sub_1D0F354A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D0F216D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D0F21730()
{
  if (!qword_1EE06FA78)
  {
    sub_1D0F217F4();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06FA78);
    }
  }
}

void sub_1D0F21788()
{
  if (!qword_1EE06FA60)
  {
    sub_1D0F21730();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06FA60);
    }
  }
}

void sub_1D0F217F4()
{
  if (!qword_1EE06FA80)
  {
    sub_1D0F1ACD4(255, &qword_1EE06F9C0);
    v0 = sub_1D0FF52E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06FA80);
    }
  }
}

uint64_t sub_1D0F2187C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0F218D4()
{
  result = type metadata accessor for HKObjectTypeColorProvider(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D0F21950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D0F1ACD4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D0F219B8()
{
  sub_1D0F21950(319, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for ImageRepresentation()
{
  result = qword_1EE070308;
  if (!qword_1EE070308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0F350EC(0, &qword_1EC5FC1F0, sub_1D0F34EE0, &type metadata for ImageRepresentation.IconFileCodingKeys, MEMORY[0x1E69E6F48]);
  v94 = v4;
  v99 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v87 - v5;
  sub_1D0F350EC(0, &qword_1EE06F920, sub_1D0F227A4, &type metadata for ImageRepresentation.PngDataCodingKeys, v3);
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v87 - v8;
  sub_1D0F350EC(0, &qword_1EE06F928, sub_1D0F228A8, &type metadata for ImageRepresentation.SymbolCodingKeys, v3);
  v10 = *(v9 - 8);
  v95 = v9;
  v96 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v87 - v11;
  sub_1D0F350EC(0, &qword_1EE06F930, sub_1D0F229AC, &type metadata for ImageRepresentation.BundleCodingKeys, v3);
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v87 - v13;
  sub_1D0F350EC(0, &qword_1EE06F938, sub_1D0F22AB0, &type metadata for ImageRepresentation.CodingKeys, v3);
  v107 = v14;
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  v101 = type metadata accessor for ImageRepresentation();
  v17 = MEMORY[0x1EEE9AC00](v101);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v87 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v87 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v87 - v29;
  v31 = a1;
  v32 = a1[3];
  v109 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1D0F22AB0();
  v33 = v108;
  sub_1D0FF6428();
  if (!v33)
  {
    v89 = v28;
    v90 = v22;
    v91 = v25;
    v88 = v19;
    v35 = v102;
    v34 = v103;
    v36 = v104;
    v108 = v30;
    v38 = v106;
    v37 = v107;
    v39 = sub_1D0FF6158();
    v40 = v39;
    if (*(v39 + 16) != 1 || (v41 = *(v39 + 32), v41 == 4))
    {
      v44 = v16;
      v45 = sub_1D0FF5E38();
      swift_allocError();
      v47 = v46;
      sub_1D0F35154();
      *v47 = v101;
      sub_1D0FF60B8();
      sub_1D0FF5E18();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v105 + 8))(v44, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v39 + 32) > 1u)
      {
        if (v41 == 2)
        {
          LOBYTE(v110) = 2;
          sub_1D0F227A4();
          sub_1D0FF60A8();
          v112 = 0;
          sub_1D0F35264();
          v48 = v97;
          sub_1D0FF6148();
          v64 = v16;
          v65 = v34;
          v67 = v110;
          v66 = v111;
          v112 = 1;
          v68 = sub_1D0FF6138();
          v82 = *(v98 + 8);
          v104 = v68;
          v82(v65, v48);
          (*(v105 + 8))(v64, v37);
          swift_unknownObjectRelease();
          v83 = v90;
          *v90 = v67;
          v83[1] = v66;
          v83[2] = v104;
          swift_storeEnumTagMultiPayload();
          v84 = v83;
        }

        else
        {
          LOBYTE(v110) = 3;
          sub_1D0F34EE0();
          sub_1D0FF60A8();
          LOBYTE(v110) = 0;
          v53 = v94;
          v54 = v36;
          v55 = sub_1D0FF6108();
          v56 = v105;
          v58 = v57;
          v102 = v55;
          v112 = 1;
          sub_1D0F35210();
          sub_1D0FF60F8();
          v103 = v40;
          v100 = v110;
          LODWORD(v98) = v111;
          v112 = 2;
          v85 = sub_1D0FF6118();
          (*(v99 + 8))(v54, v53);
          (*(v56 + 8))(v16, v37);
          swift_unknownObjectRelease();
          v86 = v88;
          *v88 = v102;
          v86[1] = v58;
          v86[2] = v100;
          *(v86 + 24) = v98;
          *(v86 + 25) = v85 & 1;
          swift_storeEnumTagMultiPayload();
          v84 = v86;
        }

        v80 = v108;
        sub_1D0F22FD4(v84, v108, type metadata accessor for ImageRepresentation);
        v81 = v38;
      }

      else if (*(v39 + 32))
      {
        LOBYTE(v110) = 1;
        sub_1D0F228A8();
        sub_1D0FF60A8();
        v49 = v38;
        v50 = v16;
        LOBYTE(v110) = 0;
        v51 = v95;
        v69 = sub_1D0FF6108();
        v71 = v70;
        sub_1D0F21788();
        v72 = v91;
        *v91 = v69;
        *(v72 + 8) = v71;
        sub_1D0F217F4();
        LOBYTE(v110) = 1;
        sub_1D0F22EF4(&qword_1EE06FA88, sub_1D0F217F4);
        v73 = v100;
        sub_1D0FF60F8();
        (*(v96 + 8))(v73, v51);
        (*(v105 + 8))(v50, v107);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v80 = v108;
        sub_1D0F22FD4(v72, v108, type metadata accessor for ImageRepresentation);
        v81 = v49;
      }

      else
      {
        LOBYTE(v110) = 0;
        sub_1D0F229AC();
        sub_1D0FF60A8();
        LOBYTE(v110) = 0;
        v42 = v93;
        v43 = sub_1D0FF6108();
        v103 = v40;
        v104 = v59;
        v60 = v35;
        v61 = v37;
        v100 = v43;
        LOBYTE(v110) = 1;
        v62 = sub_1D0FF6108();
        v63 = (v105 + 8);
        v105 = 0;
        v74 = v62;
        v76 = v75;
        (*(v92 + 8))(v60, v42);
        (*v63)(v16, v61);
        swift_unknownObjectRelease();
        v77 = v89;
        v78 = v104;
        *v89 = v100;
        v77[1] = v78;
        v77[2] = v74;
        v77[3] = v76;
        swift_storeEnumTagMultiPayload();
        v79 = v77;
        v80 = v108;
        sub_1D0F22FD4(v79, v108, type metadata accessor for ImageRepresentation);
        v81 = v106;
      }

      sub_1D0F22FD4(v80, v81, type metadata accessor for ImageRepresentation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v109);
}

unint64_t sub_1D0F227A4()
{
  result = qword_1EE070330;
  if (!qword_1EE070330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070330);
  }

  return result;
}

unint64_t sub_1D0F227FC()
{
  result = qword_1EE070320;
  if (!qword_1EE070320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070320);
  }

  return result;
}

unint64_t sub_1D0F22854()
{
  result = qword_1EE070328;
  if (!qword_1EE070328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070328);
  }

  return result;
}

unint64_t sub_1D0F228A8()
{
  result = qword_1EE070348;
  if (!qword_1EE070348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070348);
  }

  return result;
}

unint64_t sub_1D0F22900()
{
  result = qword_1EE070338;
  if (!qword_1EE070338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070338);
  }

  return result;
}

unint64_t sub_1D0F22958()
{
  result = qword_1EE070340;
  if (!qword_1EE070340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070340);
  }

  return result;
}

unint64_t sub_1D0F229AC()
{
  result = qword_1EE070360;
  if (!qword_1EE070360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070360);
  }

  return result;
}

unint64_t sub_1D0F22A04()
{
  result = qword_1EE070350;
  if (!qword_1EE070350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070350);
  }

  return result;
}

unint64_t sub_1D0F22A5C()
{
  result = qword_1EE070358;
  if (!qword_1EE070358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070358);
  }

  return result;
}

unint64_t sub_1D0F22AB0()
{
  result = qword_1EE070378[0];
  if (!qword_1EE070378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE070378);
  }

  return result;
}

unint64_t sub_1D0F22B08()
{
  result = qword_1EE070368;
  if (!qword_1EE070368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070368);
  }

  return result;
}

unint64_t sub_1D0F22B60()
{
  result = qword_1EE070370;
  if (!qword_1EE070370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070370);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D0F22BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F22C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F22C20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144676E70 && a2 == 0xE700000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C69466E6F6369 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D0FF6278();

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

uint64_t sub_1D0F22D7C()
{
  v1 = 0x656C646E7562;
  v2 = 0x61746144676E70;
  if (*v0 != 2)
  {
    v2 = 0x656C69466E6F6369;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

uint64_t sub_1D0F22DF0()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t storeEnumTagSinglePayload for AdvertisableFeature.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D0F22EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AdvertisableFeature.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D0F22FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static AnalyticsTransforming.deviceContextPayload(from:)(uint64_t a1)
{
  if (a1)
  {
    sub_1D0F1ACD4(0, &qword_1EE070DF0);
    v3 = sub_1D0FF5BD8();
    v4 = sub_1D0FF5428();
    v6 = v5;
    v7 = sub_1D0F232F4(v3, a1);
    if (!v7)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    v8 = v7;
    v9 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D0F233F0(v8, v4, v6, isUniquelyReferenced_nonNull_native);

    v11 = sub_1D0FF5BD8();
    v12 = sub_1D0FF5428();
    v14 = v13;
    v15 = sub_1D0F232F4(v11, a1);
    if (!v15)
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D0F233F0(v16, v12, v14, v17);

    v18 = sub_1D0FF5BD8();
    v19 = sub_1D0FF5428();
    v21 = v20;
    v22 = sub_1D0F232F4(v18, a1);
    if (!v22)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    v23 = v22;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D0F233F0(v23, v19, v21, v24);

    v25 = sub_1D0FF5BD8();
    v26 = sub_1D0FF5428();
    v28 = v27;
    v29 = sub_1D0F232F4(v25, a1);
    if (!v29)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    v30 = v29;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D0F233F0(v30, v26, v28, v31);

    return v9;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];

    return sub_1D0F53A28(v33);
  }
}

void *sub_1D0F2331C(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_1D0FF5F78();

    if (v6)
    {
      sub_1D0F1ACD4(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

uint64_t sub_1D0F233F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D0F23568(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D0F235E0(v16, a4 & 1);
      v11 = sub_1D0F23568(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D0FF62B8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1D0FA5464();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1D0F23568(uint64_t a1, uint64_t a2)
{
  sub_1D0FF6338();
  sub_1D0FF5488();
  v4 = sub_1D0FF6378();

  return sub_1D0F235FC(a1, a2, v4);
}

unint64_t sub_1D0F235FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D0FF6278())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1D0F236B4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F1ACD4(255, a3);
    v4 = sub_1D0FF6038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0F2371C(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  sub_1D0F236B4(0, a3, a4);
  v37 = a2;
  result = sub_1D0FF6008();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1D0FF6338();
      sub_1D0FF5488();
      result = sub_1D0FF6378();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1D0F239C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D0F23A10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D0F23A60(uint64_t a1, uint64_t a2)
{
  sub_1D0F239C0(0, &qword_1EE071000, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AnalyticsTransforming.valueOrNilString(for:)(uint64_t a1)
{
  sub_1D0F23A60(a1, &v3);
  if (v4)
  {
    sub_1D0F54254(&v3, v5);
    sub_1D0F1B398(v5, &v3);
    v1 = sub_1D0FF5448();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1D0F23B7C(&v3);
    return 7104878;
  }

  return v1;
}

uint64_t sub_1D0F23B7C(uint64_t a1)
{
  sub_1D0F239C0(0, &qword_1EE071000, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static FeatureStatusSupport.isHealthChecklistAvailable()()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isHealthChecklistAvailable];

  return v1;
}

uint64_t ColorRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0F24A18(0, &qword_1EE06F958, sub_1D0F24A80, &type metadata for ColorRepresentation.RgbCodingKeys, MEMORY[0x1E69E6F48]);
  v65 = v4;
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v56 - v5;
  sub_1D0F24A18(0, &qword_1EE06F950, sub_1D0F24EA0, &type metadata for ColorRepresentation.SemanticCodingKeys, v3);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v56 - v7;
  sub_1D0F24A18(0, &qword_1EE06F940, sub_1D0F25F80, &type metadata for ColorRepresentation.DisplayCategoryCodingKeys, v3);
  v63 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v56 - v9;
  sub_1D0F24A18(0, &qword_1EE06F948, sub_1D0F266B4, &type metadata for ColorRepresentation.ObjectTypeCodingKeys, v3);
  v62 = v10;
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - v11;
  sub_1D0F24A18(0, &qword_1EE06F960, sub_1D0F268F8, &type metadata for ColorRepresentation.CodingKeys, v3);
  v71 = v12;
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v70 = type metadata accessor for ColorRepresentation(0);
  v15 = MEMORY[0x1EEE9AC00](v70);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v56 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v56 - v27;
  v29 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D0F268F8();
  v30 = v77;
  sub_1D0FF6428();
  if (!v30)
  {
    v57 = v23;
    v60 = v26;
    v58 = v20;
    v59 = v17;
    v32 = v72;
    v31 = v73;
    v34 = v70;
    v33 = v71;
    v77 = v28;
    v36 = v74;
    v35 = v75;
    v37 = sub_1D0FF6158();
    v38 = (2 * *(v37 + 16)) | 1;
    v80 = v37;
    v81 = v37 + 32;
    v82 = 0;
    v83 = v38;
    v39 = sub_1D0F278A4();
    if (v39 != 4 && v82 == v83 >> 1)
    {
      if (v39 > 1u)
      {
        v46 = v35;
        if (v39 == 2)
        {
          LOBYTE(v78) = 2;
          sub_1D0F24EA0();
          sub_1D0FF60A8();
          sub_1D0F71BE4();
          v47 = v67;
          sub_1D0FF6148();
          (*(v66 + 8))(v31, v47);
          v35 = v46;
          (*(v76 + 8))(v14, v33);
          swift_unknownObjectRelease();
          v53 = v58;
          *v58 = v78;
        }

        else
        {
          LOBYTE(v78) = 3;
          sub_1D0F24A80();
          sub_1D0FF60A8();
          sub_1D0F71B90();
          v50 = v65;
          sub_1D0FF6148();
          (*(v68 + 8))(v36, v50);
          (*(v76 + 8))(v14, v33);
          swift_unknownObjectRelease();
          v54 = v79;
          v53 = v59;
          *v59 = v78;
          *(v53 + 1) = v54;
        }
      }

      else
      {
        if (!v39)
        {
          LOBYTE(v78) = 0;
          sub_1D0F266B4();
          v40 = v69;
          sub_1D0FF60A8();
          type metadata accessor for HKObjectTypeColorProvider(0);
          sub_1D0F279EC(&qword_1EE06FF50, type metadata accessor for HKObjectTypeColorProvider);
          v41 = v60;
          v42 = v62;
          sub_1D0FF6148();
          (*(v61 + 8))(v40, v42);
          (*(v76 + 8))(v14, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v41;
LABEL_14:
          v55 = v77;
          sub_1D0F2822C(v52, v77, type metadata accessor for ColorRepresentation);
          sub_1D0F2822C(v55, v35, type metadata accessor for ColorRepresentation);
          return __swift_destroy_boxed_opaque_existential_1Tm(v84);
        }

        LOBYTE(v78) = 1;
        sub_1D0F25F80();
        sub_1D0FF60A8();
        sub_1D0F71C38();
        v48 = v63;
        sub_1D0FF6148();
        v49 = v76;
        (*(v64 + 8))(v32, v48);
        (*(v49 + 8))(v14, v33);
        swift_unknownObjectRelease();
        v53 = v57;
        *v57 = v78;
      }

      swift_storeEnumTagMultiPayload();
      v52 = v53;
      goto LABEL_14;
    }

    v43 = sub_1D0FF5E38();
    swift_allocError();
    v45 = v44;
    sub_1D0F35154();
    *v45 = v34;
    sub_1D0FF60B8();
    sub_1D0FF5E18();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v76 + 8))(v14, v33);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v84);
}

uint64_t Publisher.share(replay:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReplaySubject();
  swift_getWitnessTable();
  sub_1D0FF5148();

  sub_1D0FF4D98();
  swift_getWitnessTable();
  v7 = sub_1D0FF4F68();

  return v7;
}

uint64_t sub_1D0F2494C()
{
  sub_1D0FF4DE8();
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D0F24A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D0F24A80()
{
  result = qword_1EE070480;
  if (!qword_1EE070480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070480);
  }

  return result;
}

unint64_t sub_1D0F24B00()
{
  result = qword_1EE070470;
  if (!qword_1EE070470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070470);
  }

  return result;
}

uint64_t sub_1D0F24B54(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReplaySubject();
  v2 = swift_allocObject();
  ReplaySubject.init(bufferSize:)(a1);
  return v2;
}

char *ReplaySubject.init(bufferSize:)(uint64_t a1)
{
  *(v1 + 3) = sub_1D0FF5308();
  sub_1D0FF4E78();
  swift_getWitnessTable();
  type metadata accessor for ReplaySubject.Subscription();
  *(v1 + 4) = sub_1D0FF5308();
  v3 = *(*v1 + 128);
  v4 = sub_1D0FF4DE8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = *(*v1 + 136);
  sub_1D0FF4828();
  swift_allocObject();
  *&v1[v5] = sub_1D0FF4818();
  *(v1 + 2) = a1;
  return v1;
}

unint64_t sub_1D0F24D94()
{
  result = qword_1EE070478;
  if (!qword_1EE070478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070478);
  }

  return result;
}

uint64_t sub_1D0F24E00()
{
  result = sub_1D0FF4C88();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D0F24EA0()
{
  result = qword_1EE070468;
  if (!qword_1EE070468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070468);
  }

  return result;
}

uint64_t ReplaySubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = a1;
  v6 = *v3;
  v7 = *(*v3 + 88);
  sub_1D0FF4DE8();
  v112 = sub_1D0FF5C38();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v96 - v8;
  v106 = v3;
  v120 = *(v6 + 80);
  v114 = v7;
  v9 = sub_1D0FF4E78();
  v99 = sub_1D0FF5C38();
  v98 = *(v99 - 8);
  v10 = MEMORY[0x1EEE9AC00](v99);
  v12 = &v96 - v11;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v96 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v96 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v100 = &v96 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = &v96 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v96 - v23;
  v101 = v25;
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v96 - v27;
  v113 = *(v9 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v97 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v96 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v115 = &v96 - v34;
  v109 = sub_1D0FF4C88();
  v117 = *(v109 - 8);
  v35 = MEMORY[0x1EEE9AC00](v109);
  v104 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v119 = a3;
  v116 = &v96 - v37;
  v38 = v118;
  sub_1D0FF4C58();
  v108 = v13;
  v39 = *(v13 + 16);
  v40 = v38;
  v41 = a2;
  v42 = v12;
  (v39)(v28, v40, v41);
  (v39)(v24, v28, v41);
  v43 = v113;
  v121 = v9;
  v122 = v41;
  v44 = swift_dynamicCast();
  v45 = *(v43 + 56);
  v107 = v28;
  if (!v44)
  {
    v45(v12, 1, 1, v121);
    v98[1](v12, v99);
    v53 = v122;
    sub_1D0FF4C58();
    v54 = v119;
    sub_1D0FF4EC8();
    (v39)(v103, v28, v53);
    v55 = sub_1D0FF4ED8();
    v99 = v33;
    *v33 = v55;
    v98 = v39;
    (v39)(v100, v28, v53);
    v100 = sub_1D0F25ECC(0, &qword_1EE06F8D8);
    v56 = v28;
    v57 = v54;
    if (swift_dynamicCast())
    {
      sub_1D0F25C68(&v123, &v126);
      sub_1D0F25C68(&v126, &v123);
      v58 = swift_allocObject();
      sub_1D0F25C68(&v123, v58 + 16);
      v59 = sub_1D0F82660;
    }

    else
    {
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      sub_1D0F82914(&v123, &qword_1EC5FCBF0, &qword_1EE06F8D8);
      swift_getDynamicType();
      v60 = sub_1D0FF6468();
      v62 = v61;
      v58 = swift_allocObject();
      *(v58 + 16) = v60;
      *(v58 + 24) = v62;
      v59 = sub_1D0F82448;
    }

    v52 = v108;
    v33 = v99;
    *(v99 + 8) = v59;
    *(v33 + 2) = v58;
    v63 = v103;
    v64 = v122;
    v65 = v98;
    (v98)(v103, v56, v122);
    v66 = (*(v52 + 80) + 48) & ~*(v52 + 80);
    v67 = v65;
    v68 = swift_allocObject();
    v69 = v114;
    *(v68 + 2) = v120;
    *(v68 + 3) = v69;
    *(v68 + 4) = v64;
    *(v68 + 5) = v57;
    (*(v52 + 32))(&v68[v66], v63, v64);
    *(v33 + 3) = sub_1D0F82478;
    *(v33 + 4) = v68;
    (v67)(v102, v56, v64);
    sub_1D0F25ECC(0, &unk_1EE06F8B8);
    if (swift_dynamicCast())
    {
      sub_1D0F25C68(&v123, &v126);
      sub_1D0F25C68(&v126, &v123);
      v70 = swift_allocObject();
      sub_1D0F25C68(&v123, v70 + 16);
      v71 = sub_1D0F82614;
    }

    else
    {
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      sub_1D0F82914(&v123, qword_1EC5FCBF8, &unk_1EE06F8B8);
      (v67)(v96, v56, v122);
      if (!swift_dynamicCast())
      {
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        sub_1D0F82914(&v123, &qword_1EC5FCBF0, &qword_1EE06F8D8);
        swift_getDynamicType();
        v72 = sub_1D0FF6468();
        v74 = v73;
        v75 = swift_allocObject();
        *(v75 + 16) = v72;
        *(v75 + 24) = v74;
        v33 = v99;
        *(v99 + 40) = sub_1D0F82510;
        *(v33 + 6) = v75;
        goto LABEL_12;
      }

      sub_1D0F25C68(&v123, &v126);
      sub_1D0F25C68(&v126, &v123);
      v70 = swift_allocObject();
      sub_1D0F25C68(&v123, v70 + 16);
      v71 = sub_1D0F825BC;
      v33 = v99;
    }

    *(v33 + 5) = v71;
    *(v33 + 6) = v70;
LABEL_12:
    v51 = v113;
    v50 = v114;
    goto LABEL_13;
  }

  v46 = v12;
  v47 = v121;
  v45(v46, 0, 1, v121);
  v48 = *(v43 + 32);
  v49 = v97;
  v48(v97, v42, v47);
  v48(v33, v49, v47);
  v50 = v114;
  v51 = v43;
  v52 = v108;
LABEL_13:
  v76 = v121;
  WitnessTable = swift_getWitnessTable();
  *&v126 = v120;
  *(&v126 + 1) = v50;
  v127 = v76;
  v128 = WitnessTable;
  v114 = type metadata accessor for ReplaySubject.Subscription();
  (*(v51 + 32))(v115, v33, v76);
  v78 = v122;
  (*(v52 + 8))(v107, v122);
  v79 = swift_allocObject();
  v80 = v106;
  swift_weakInit();
  v81 = v117;
  v82 = v104;
  v83 = v109;
  (*(v117 + 16))(v104, v116, v109);
  v84 = (*(v81 + 80) + 56) & ~*(v81 + 80);
  v85 = swift_allocObject();
  v86 = v119;
  *(v85 + 2) = v120;
  *(v85 + 3) = v50;
  *(v85 + 4) = v78;
  *(v85 + 5) = v86;
  *(v85 + 6) = v79;
  (*(v81 + 32))(&v85[v84], v82, v83);
  v87 = v114;
  swift_allocObject();
  v88 = v115;
  v89 = sub_1D0F25FD4(v115, sub_1D0F82528, v85);
  (*(v51 + 8))(v88, v121);
  sub_1D0FF47F8();
  *&v123 = v89;
  swift_beginAccess();
  sub_1D0FF56E8();

  sub_1D0FF56A8();
  swift_endAccess();
  swift_beginAccess();
  v90 = *(v80 + 3);
  v91 = *(*v80 + 128);
  swift_beginAccess();
  v92 = v111;
  v93 = v110;
  v94 = v112;
  (*(v111 + 16))(v110, &v80[v91], v112);

  sub_1D0FF4808();
  v128 = v87;
  v129 = swift_getWitnessTable();
  *&v126 = v89;

  sub_1D0FF4DB8();
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  sub_1D0F275E4(v90, v93);

  (*(v92 + 8))(v93, v94);
  return (*(v117 + 8))(v116, v83);
}

uint64_t sub_1D0F25C68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D0F25C80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F25CB8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D0F25D38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F25D70()
{
  v1 = sub_1D0FF4C88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F25E34()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1D0F25E78()
{
  result = qword_1EE070458;
  if (!qword_1EE070458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070458);
  }

  return result;
}

uint64_t sub_1D0F25ECC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D0F25F2C()
{
  result = qword_1EE070460;
  if (!qword_1EE070460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070460);
  }

  return result;
}

unint64_t sub_1D0F25F80()
{
  result = qword_1EE070438;
  if (!qword_1EE070438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070438);
  }

  return result;
}

void *sub_1D0F25FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  *&v20 = v8;
  v9 = sub_1D0FF4C88();
  v21 = *(v9 - 8);
  v22 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 96);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v20 - v15;
  v17 = *(v8 + 104);
  type metadata accessor for DemandBuffer();
  (*(v14 + 16))(v16, a1, v13);
  v18 = swift_allocObject();
  sub_1D0F26440(v16);
  v26 = v18;
  v27 = a2;
  v28 = a3;

  v20 = *(v20 + 80);
  sub_1D0F1C500(a2);
  v23 = v20;
  v24 = v13;
  v25 = v17;
  type metadata accessor for ReplaySubject.Subscription.SubscriptionState();
  v4[2] = sub_1D0F2670C();
  sub_1D0FF4C58();

  sub_1D0F2625C(a2);
  sub_1D0F2625C(a2);

  (*(v21 + 32))(v4 + qword_1EE0707D0, v12, v22);
  return v4;
}

uint64_t sub_1D0F2625C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D0F26288()
{
  result = qword_1EE070428;
  if (!qword_1EE070428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070428);
  }

  return result;
}

uint64_t sub_1D0F262DC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1D0FF4DE8();
    result = sub_1D0FF5C38();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_1D0F26440(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D0FF4828();
  swift_allocObject();
  *(v1 + 2) = sub_1D0FF4818();
  v5 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  *(v2 + 3) = sub_1D0FF5308();
  v6 = *(*v2 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1D0FF4DE8();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = &v2[*(*v2 + 128)];
  v9 = sub_1D0FF4E38();
  v10 = sub_1D0FF4E38();
  v11 = sub_1D0FF4E38();
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  (*(*(v5 - 8) + 32))(&v2[*(*v2 + 112)], a1, v5);
  return v2;
}

unint64_t sub_1D0F2660C()
{
  result = qword_1EE070430;
  if (!qword_1EE070430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070430);
  }

  return result;
}

uint64_t sub_1D0F26678()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D0F266B4()
{
  result = qword_1EE070450;
  if (!qword_1EE070450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070450);
  }

  return result;
}

uint64_t sub_1D0F2670C()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D0FF5E58();
  return sub_1D0FF5E48();
}

uint64_t sub_1D0F26788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

unint64_t sub_1D0F26820()
{
  result = qword_1EE070440;
  if (!qword_1EE070440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070440);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1D0F2688C()
{
  result = qword_1EE070448;
  if (!qword_1EE070448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070448);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D0F268F8()
{
  result = qword_1EE070498[0];
  if (!qword_1EE070498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE070498);
  }

  return result;
}

unint64_t sub_1D0F2696C()
{
  result = qword_1EE070488;
  if (!qword_1EE070488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070488);
  }

  return result;
}

void sub_1D0F269DC(uint64_t a1)
{
  v3 = v1[2];
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 104);
  v9[0] = *(*v1 + 80);
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  type metadata accessor for ReplaySubject.Subscription.SubscriptionState();
  type metadata accessor for DemandBuffer();
  sub_1D0FF5C38();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D0F26BE0((v3 + v4), v9);
  os_unfair_lock_unlock((v3 + v5));
  if (v9[0])
  {

    sub_1D0F26D6C(a1, 0);
  }
}

unint64_t sub_1D0F26B40()
{
  result = qword_1EE070490;
  if (!qword_1EE070490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070490);
  }

  return result;
}

uint64_t sub_1D0F26BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F26BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F26BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79547463656A626FLL && a2 == 0xEA00000000006570;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEF79726F67657461 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6449010 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D0FF6278();

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

uint64_t sub_1D0F26D6C(uint64_t a1, char a2)
{
  v3 = v2;
  v64 = a1;
  v5 = *(*v2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D0FF4DE8();
  v7 = sub_1D0FF5C38();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - v11;
  v62 = v6;
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v65 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v55 - v16;
  sub_1D0FF47F8();
  if ((a2 & 1) == 0)
  {
    v18 = v15;
    v19 = &v2[*(*v2 + 128)];
    swift_beginAccess();
    v20 = *(v19 + 1);
    sub_1D0FF4E48();
    if ((sub_1D0FF4E28() & 1) == 0)
    {
      sub_1D0FF4E48();
      v21 = sub_1D0FF4E28();
      v22 = sub_1D0FF4E48();
      if ((v21 & 1) == 0)
      {
        result = sub_1D0FF4E28();
        if (result)
        {
          goto LABEL_8;
        }

        if ((v20 | v64) < 0)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v22 = v20 + v64;
        if (__OFADD__(v20, v64))
        {
LABEL_8:
          v22 = sub_1D0FF4E48();
        }

        else if (v22 < 0)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }

      *(v19 + 1) = v22;
    }

    swift_endAccess();
    v15 = v18;
  }

  v24 = &v3[*(*v3 + 128)];
  swift_beginAccess();
  v25 = v24[1];
  sub_1D0FF4E48();
  result = sub_1D0FF4E28();
  if ((result & 1) == 0)
  {
    if (v25 < 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (!v25)
    {
      sub_1D0FF4E38();
      if ((a2 & 1) != 0 || (sub_1D0FF4E28() & 1) == 0)
      {
        v37 = sub_1D0FF4E38();
        goto LABEL_58;
      }
    }
  }

  v57 = v13;
  v26 = *(*v3 + 112);
  swift_beginAccess();
  sub_1D0FF56E8();
  v66 = *(v3 + 3);
  swift_getWitnessTable();
  v27 = sub_1D0FF58B8();
  v63 = v26;
  v64 = AssociatedTypeWitness;
  if ((v27 & 1) == 0)
  {
    v38 = (v15 + 8);
    do
    {
      v40 = *v24;
      v41 = v24[1];
      sub_1D0FF4E48();
      if (sub_1D0FF4E28())
      {
        sub_1D0FF4E48();
        if (sub_1D0FF4E28())
        {
          break;
        }
      }

      sub_1D0FF4E48();
      if (sub_1D0FF4E28())
      {
        break;
      }

      sub_1D0FF4E48();
      if ((sub_1D0FF4E28() & 1) == 0 && v40 >= v41)
      {
        break;
      }

      swift_beginAccess();
      sub_1D0FF56B8();
      swift_endAccess();
      v42 = sub_1D0FF4DC8();
      (*v38)(v17, AssociatedTypeWitness);
      swift_beginAccess();
      v43 = v24[1];
      sub_1D0FF4E48();
      if ((sub_1D0FF4E28() & 1) == 0)
      {
        sub_1D0FF4E48();
        v44 = sub_1D0FF4E28();
        v45 = sub_1D0FF4E48();
        if (v44)
        {
          AssociatedTypeWitness = v64;
        }

        else
        {
          result = sub_1D0FF4E28();
          AssociatedTypeWitness = v64;
          if (result)
          {
            goto LABEL_35;
          }

          if ((v43 | v42) < 0)
          {
            goto LABEL_61;
          }

          v45 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
LABEL_35:
            v45 = sub_1D0FF4E48();
          }

          else if (v45 < 0)
          {
            goto LABEL_62;
          }
        }

        v24[1] = v45;
      }

      v46 = *v24;
      sub_1D0FF4E48();
      result = sub_1D0FF4E28();
      if (result)
      {
        goto LABEL_21;
      }

      if (v46 < 0)
      {
        __break(1u);
        goto LABEL_60;
      }

      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
LABEL_21:
        v39 = sub_1D0FF4E48();
      }

      *v24 = v39;
      swift_endAccess();
      v66 = *(v3 + 3);
      swift_getWitnessTable();
    }

    while ((sub_1D0FF58B8() & 1) == 0);
  }

  v28 = *(*v3 + 120);
  swift_beginAccess();
  v30 = v60;
  v29 = v61;
  v31 = v58;
  (*(v60 + 16))(v58, &v3[v28], v61);
  v32 = v59;
  v33 = v62;
  if ((*(v59 + 48))(v31, 1, v62) != 1)
  {
    (*(v32 + 32))(v57, v31, v33);
    *(v3 + 3) = sub_1D0FF5658();

    v47 = sub_1D0FF4E38();
    v48 = sub_1D0FF4E38();
    v49 = sub_1D0FF4E38();
    *v24 = v47;
    v24[1] = v48;
    v24[2] = v49;
    v50 = v56;
    (*(v32 + 56))(v56, 1, 1, v33);
    swift_beginAccess();
    (*(v30 + 40))(&v3[v28], v50, v29);
    swift_endAccess();
    v51 = v57;
    sub_1D0FF4DA8();
    v37 = sub_1D0FF4E38();
    (*(v32 + 8))(v51, v33);
LABEL_58:
    sub_1D0FF4808();
    return v37;
  }

  (*(v30 + 8))(v31, v29);
  v34 = v24[1];
  v35 = v24[2];
  sub_1D0FF4E48();
  v36 = sub_1D0FF4E28();
  v37 = sub_1D0FF4E48();
  if ((v36 & 1) == 0)
  {
    result = sub_1D0FF4E28();
    if (result)
    {
      v37 = sub_1D0FF4E38();
      goto LABEL_48;
    }

    if (((v35 | v34) & 0x8000000000000000) == 0)
    {
      v37 = v34 - v35;
      if (v34 - v35 >= 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_48:
  swift_beginAccess();
  v52 = v24[2];
  sub_1D0FF4E48();
  if (sub_1D0FF4E28())
  {
LABEL_57:
    swift_endAccess();
    goto LABEL_58;
  }

  sub_1D0FF4E48();
  v53 = sub_1D0FF4E28();
  v54 = sub_1D0FF4E48();
  if (v53)
  {
LABEL_56:
    v24[2] = v54;
    goto LABEL_57;
  }

  result = sub_1D0FF4E28();
  if (result)
  {
LABEL_54:
    v54 = sub_1D0FF4E48();
    goto LABEL_56;
  }

  if ((v52 | v37) < 0)
  {
    goto LABEL_66;
  }

  v54 = v52 + v37;
  if (__OFADD__(v52, v37))
  {
    goto LABEL_54;
  }

  if ((v54 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1D0F275E4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D0FF4DE8();
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v14 - v11;
  v14[1] = a1;
  sub_1D0FF56E8();

  swift_getWitnessTable();
  sub_1D0FF5578();

  (*(v6 + 16))(v9, a2, v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v12, v9, v4);
  sub_1D0F819F0(v12);
  return (*(v10 + 8))(v12, v4);
}

uint64_t sub_1D0F278A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F278D8()
{
  v1 = 0x79547463656A626FLL;
  v2 = 0x6369746E616D6573;
  if (*v0 != 2)
  {
    v2 = 6449010;
  }

  if (*v0)
  {
    v1 = 0x4379616C70736964;
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

uint64_t sub_1D0F2795C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF4E48();
  return sub_1D0FF4E68();
}

id sub_1D0F279B8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  qword_1EE06FA30 = result;
  return result;
}

uint64_t sub_1D0F279EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CNContactStore.thumbnailImageAndImageDataAvailableKeys.getter()
{
  sub_1D0F1E9E0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1000CB0;
  v1 = *MEMORY[0x1E695C400];
  v2 = *MEMORY[0x1E695C270];
  *(v0 + 32) = *MEMORY[0x1E695C400];
  *(v0 + 40) = v2;
  v3 = v1;
  v4 = v2;
  return v0;
}

CNContact __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.meContact(keysToFetch:)(Swift::OpaquePointer keysToFetch)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    sub_1D0FCFB10();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return v1;
  }

  sub_1D0F27BD4();
  v2 = sub_1D0FF55F8();
  v5[0] = 0;
  v1 = [v1 _ios_meContactWithKeysToFetch_error_];

  if (!v1)
  {
    v1 = v5[0];
    sub_1D0FF4198();

    goto LABEL_6;
  }

  v3 = v5[0];
  return v1;
}

unint64_t sub_1D0F27BD4()
{
  result = qword_1EE06E390;
  if (!qword_1EE06E390)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE06E390);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for DefaultMedicalIDAvailabilityProvider(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DefaultMedicalIDAvailabilityProvider(unsigned int *a1, int a2)
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

uint64_t SectionedDataSourceItem.cellResolution.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 16))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  return result;
}

uint64_t HKObjectTypeColorProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v17 - v5;
  sub_1D0F24A18(0, &qword_1EE06F910, sub_1D0F2809C, &type metadata for HKObjectTypeColorProvider.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F2809C();
  v13 = v21;
  sub_1D0FF6428();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_1D0F281A0(&unk_1EE06FAC0);
    sub_1D0FF6148();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_1D0F2822C(v12, v17, type metadata accessor for HKObjectTypeColorProvider);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D0F2809C()
{
  result = qword_1EE06FF70;
  if (!qword_1EE06FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FF70);
  }

  return result;
}

unint64_t sub_1D0F280F4()
{
  result = qword_1EE06FF60;
  if (!qword_1EE06FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FF60);
  }

  return result;
}

unint64_t sub_1D0F2814C()
{
  result = qword_1EE06FF68;
  if (!qword_1EE06FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FF68);
  }

  return result;
}

uint64_t sub_1D0F281A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F21950(255, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D0F2822C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

UIColor __swiftcall HKObjectTypeColorProvider.uiColor(for:)(HealthExperience::ColorProviderContext a1)
{
  v3 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result.super.isa = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_12;
  }

  isa = result.super.isa;
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  v12 = sub_1D0FF52B8();
  v13 = [(objc_class *)isa displayTypeForObjectType:v12];

  if (!v13)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = [v13 displayCategory];

  v15 = [v14 color];
  if (v15)
  {
    return v15;
  }

  sub_1D0FF4BA8();
  sub_1D0F288C8(v1, v5, type metadata accessor for HKObjectTypeColorProvider);
  v16 = sub_1D0FF4C08();
  v17 = sub_1D0FF5958();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v7;
    v25 = v20;
    v21 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_1D0F1AE0C(0xD000000000000019, 0x80000001D0FFBB20, &v25);
    *(v18 + 12) = 2112;
    v22 = sub_1D0FF52B8();
    sub_1D0F72754(v5, type metadata accessor for HKObjectTypeColorProvider);
    *(v18 + 14) = v22;
    *v19 = v22;
    _os_log_impl(&dword_1D0F17000, v16, v17, "[%s]: Unable to resolve color for %@", v18, 0x16u);
    sub_1D0F3F9B4(v19);
    MEMORY[0x1D3882680](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D3882680](v21, -1, -1);
    MEMORY[0x1D3882680](v18, -1, -1);

    (*(v24 + 8))(v9, v6);
  }

  else
  {

    sub_1D0F72754(v5, type metadata accessor for HKObjectTypeColorProvider);
    (*(v7 + 8))(v9, v6);
  }

  v23 = [objc_opt_self() blackColor];

  return v23;
}

uint64_t sub_1D0F2867C(uint64_t *a1)
{
  v3 = *a1;
  v1.super.isa = HKObjectTypeColorProvider.uiColor(for:)(&v3).super.isa;

  return MEMORY[0x1EEDDC738](v1.super.isa);
}

uint64_t ColorRepresentation.color(for:)(uint64_t *a1)
{
  v3 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1D0F288C8(v1, v5, type metadata accessor for ColorRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v5;
      v9 = &type metadata for SemanticColorProvider;
      v19 = &type metadata for SemanticColorProvider;
      v10 = sub_1D0F6E118();
      v20 = v10;
      LOBYTE(v18[0]) = v11;
    }

    else
    {
      v9 = &type metadata for RGBColorProvider;
      v19 = &type metadata for RGBColorProvider;
      v10 = sub_1D0F6E0C4();
      v20 = v10;
      v13 = swift_allocObject();
      v18[0] = v13;
      v14 = *(v5 + 1);
      *(v13 + 16) = *v5;
      *(v13 + 32) = v14;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = *v5;
    v9 = &type metadata for DisplayCategoryColorProvider;
    v19 = &type metadata for DisplayCategoryColorProvider;
    v10 = sub_1D0F6E16C();
    v20 = v10;
    v18[0] = v12;
  }

  else
  {
    v19 = type metadata accessor for HKObjectTypeColorProvider(0);
    v20 = sub_1D0F279EC(qword_1EE06EEC0, type metadata accessor for HKObjectTypeColorProvider);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    sub_1D0F2822C(v5, boxed_opaque_existential_0, type metadata accessor for HKObjectTypeColorProvider);
    v9 = v19;
    v10 = v20;
  }

  __swift_project_boxed_opaque_existential_1(v18, v9);
  v17 = v6;
  v15 = (*(v10 + 24))(&v17, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t sub_1D0F288C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D0F28994(uint64_t a1)
{
  *(a1 + 8) = sub_1D0F279EC(&qword_1EE06FF50, type metadata accessor for HKObjectTypeColorProvider);
  result = sub_1D0F279EC(&qword_1EE06FF58, type metadata accessor for HKObjectTypeColorProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D0F28AEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001D1003180;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
      v4 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x64656C696166;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0x80000001D1003160;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001D1003180;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE900000000000064;
      if (v3 != 0x6574656C706D6F63)
      {
LABEL_26:
        v7 = sub_1D0FF6278();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001D1003160;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t AtomicLazy.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AtomicLazy.State();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v11 - v7);
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  v9 = sub_1D0F2670C();
  (*(v6 + 8))(v8, v5);
  *(v2 + 16) = v9;
  return v2;
}

unint64_t sub_1D0F28DD8()
{
  result = sub_1D0F28E50();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D0F28E50()
{
  result = qword_1EE06F8A8;
  if (!qword_1EE06F8A8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE06F8A8);
  }

  return result;
}

uint64_t sub_1D0F28EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F28EE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F28F08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_1D0F28F44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D0F28FD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D0FF5428();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D0F2900C()
{
  v1 = sub_1D0FF4678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F29110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF46B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D0F2917C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF46B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D0F29208()
{
  if (*(v0 + 56) <= 1u)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D0F29268(uint64_t a1, uint64_t a2, int *a3)
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

  sub_1D0F3B100();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1D0FF4B08();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1D0FF4B68();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_1D0F293D4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_1D0F3B100();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1D0FF4B08();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1D0FF4B68();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D0F295D4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for AggregatedDataTypeChangesPublisher() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F296DC()
{
  MEMORY[0x1D3882730](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F29714()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D0F2975C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D0F29794(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4;
}

void sub_1D0F297E4(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

uint64_t sub_1D0F29834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0FF4908();
  *a1 = v3;
  return result;
}

uint64_t sub_1D0F298B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2994C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SharingEntryProfileInformation() + 36));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D0F29998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SharingEntryProfileInformation.lastName.setter(v1, v2);
}

uint64_t sub_1D0F299D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v5 = (a1 + *(result + 72));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0F29A1C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = a2 + *(result + 72);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1D0F29A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v5 = (a1 + *(result + 76));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0F29AA8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = a2 + *(result + 76);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1D0F29AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v5 = (a1 + *(result + 80));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0F29B34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = a2 + *(result + 80);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1D0F29B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v5 = (a1 + *(result + 84));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0F29BC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = a2 + *(result + 84);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1D0F29C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v5 = (a1 + *(result + 88));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0F29C4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = a2 + *(result + 88);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

void *sub_1D0F29CE4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_1D0F29D04@<X0>(uint64_t a1@<X8>)
{
  result = CSSearchableItemAttributeSet.objectTypeCode.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D0F29D6C@<X0>(void *a1@<X8>)
{
  result = sub_1D0FF4F28();
  *a1 = v3;
  return result;
}

id sub_1D0F29DFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D0F29E68()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D0F29EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4238();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F29F24(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D0FF4238();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D0F29FA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F29FEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2A034@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D0F2A074()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2A0C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2A0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0FF43A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D0F2A1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D0FF43A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D0F2A274()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2A2BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2A2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  result = sub_1D0FF52B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D0F2A358(void **a1)
{
  v1 = *a1;
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  v2 = v1;
  return sub_1D0FF52C8();
}

uint64_t sub_1D0F2A3C8(uint64_t a1, uint64_t a2)
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D0F2A460(uint64_t a1, uint64_t a2)
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D0F2A4FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1D0F2A5AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1D0F2A5D0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D0F2A5E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D0F2A5F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D0F2A634@<X0>(void *a1@<X8>)
{
  result = sub_1D0F75BFC();
  *a1 = result;
  return result;
}

void sub_1D0F2A660(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

uint64_t sub_1D0F2A6A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1D0F2A6F4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1D0F2A74C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1D0F2A798(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1D0F2A7F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D0F2A840()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2A878()
{
  v1 = sub_1D0FF3D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F2A94C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2A98C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2A9E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2AA18()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2AA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D0F2ABEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 60);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D0F2AD48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2AD84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2ADBC()
{
  MEMORY[0x1D3882730](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2ADF4()
{
  v1 = sub_1D0FF43A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D0F2AECC()
{
  v1 = sub_1D0FF43A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D0F2AF98()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D0F2AFE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D0F2B090()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2B0C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D0F2B108()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2B148()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2B180()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2B1B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2B1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D0F2B23C()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D0F2B27C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_currentValue;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D0F2B2DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2B314()
{
  sub_1D0FA0AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F2B3A0()
{
  MEMORY[0x1D3882730](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2B3D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2B420()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1D0F2B454()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D0F2B4D4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1D0F2B580(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D0F2B590()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2B5C8()
{
  sub_1D0F3F904();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D0FF4348();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1D0F2B710()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(sub_1D0FF5C38() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(AssociatedTypeWitness - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, AssociatedTypeWitness))
  {
    (*(v10 + 8))(v0 + v5, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v0 + v8, v1);
  if (*(v0 + v9))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v4 | v7 | 7);
}

uint64_t sub_1D0F2B90C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1D0F2B950@<D0>(_OWORD *a1@<X8>)
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D0F2B9D0()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0F2BA50()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0F2BAD0()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0F2BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D0F2BCA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D0F2BE04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D0F2BE54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D0F2BEA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D0F2BEEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

id sub_1D0F2BF30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D0F2BF8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1D0F2BFDC(uint64_t a1, uint64_t a2)
{
  sub_1D0FC1EB8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F2C048(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  sub_1D0FC1EB8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D0F2C0CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D0F2C110()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2C150()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2C1B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2C1EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D0F2C23C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D0F2C294()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2C2CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2C340()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D0F2C398()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2C42C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2C46C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D0F2C4C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2C500()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D0F2C548()
{
  v1 = sub_1D0FF5AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F2C5D4()
{
  sub_1D0FD1EE4();
  v1 = sub_1D0FF5AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F2C670@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0FD4B40(0);
  result = sub_1D0FF52B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D0F2C6A4(void **a1)
{
  v1 = *a1;
  sub_1D0FD4B40(0);
  v2 = v1;
  return sub_1D0FF52C8();
}

uint64_t sub_1D0F2C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FD4B40(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_1D0FD4B0C(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_1D0F2C804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D0FD4B40(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1D0FD4B0C(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1D0F2C90C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2C944()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2C97C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D0F2C9C4()
{
  v1 = *(v0 + 16);
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1D0F2CAFC()
{
  MEMORY[0x1D3882730](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D0F2CB44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D0F2CBA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D0F2CC04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2CC3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2CC74()
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D0FF49A8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D0F2CDCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2CE0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F2CE54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D0F2CE64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D0F2CE74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  result = sub_1D0FF52B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D0F2CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D0F2D034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D0F2D18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D0F2D1D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2D214()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D0F2D24C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D0F2D2B4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0F2D394()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D0F2D3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4348();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D0F2D438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4348();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D0F2D4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D0F2D55C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D0F2D608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRepresentation();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D0F2D674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRepresentation();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D0F2D710(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D0F2DAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t Publisher<>.withDateRanges(from:healthStore:debugIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v9 = type metadata accessor for Publishers.BufferWithAggregator();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v28 = sub_1D0FF4868();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = sub_1D0FF4E58();
  WitnessTable = swift_getWitnessTable();
  v27 = WitnessTable;
  v26 = swift_getWitnessTable();
  v35 = v12;
  v36 = v9;
  v37 = WitnessTable;
  v38 = v26;
  v14 = sub_1D0FF4D48();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  Publisher.aggregate(aggregationHandler:)(sub_1D0F2DF14, 0, a6, v11);
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v19 = v30;
  v18[4] = v29;
  v18[5] = v19;
  v21 = v31;
  v20 = v32;
  v18[6] = v31;
  v18[7] = v20;
  v18[8] = v33;

  v22 = v21;
  sub_1D0FF5118();

  (*(v34 + 8))(v11, v9);
  swift_getWitnessTable();
  v23 = sub_1D0FF5098();
  (*(v15 + 8))(v17, v14);
  return v23;
}