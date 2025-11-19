void CSLogInitIfNeededWithSubsystemType(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CSLogInitIfNeededWithSubsystemType_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CSLogInitIfNeededWithSubsystemType_once != -1)
  {
    dispatch_once(&CSLogInitIfNeededWithSubsystemType_once, block);
  }
}

void sub_1DDA4F9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDA502C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDA50D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDA510D4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDA53AA8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t __CSIsIPad_block_invoke()
{
  result = MGGetSInt32Answer();
  CSIsIPad_isIPad = result == 3;
  return result;
}

uint64_t __CSIsHorseman_block_invoke()
{
  result = MGGetBoolAnswer();
  CSIsHorseman_isHorseman = result;
  return result;
}

void sub_1DDA541BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CSIsInternalBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  CSIsInternalBuild_isInternal = [v0 BOOLValue];
}

uint64_t __CSHasAOP_block_invoke()
{
  result = MGGetBoolAnswer();
  CSHasAOP_hasAOP = result;
  return result;
}

id sub_1DDA557AC(void *a1)
{
  v2 = [a1 toFeatureArray];
  sub_1DDA5594C();
  v3 = sub_1DDB10E60();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DDB10E90())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E12B8F30](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [objc_msgSend(v1 modelType)];
      swift_unknownObjectRelease();
      if (v5 < v9)
      {
        v10 = [v1 multiArray];
        [v10 setObject:v7 atIndexedSubscript:v5];

        v7 = v10;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v11 = [v1 multiArray];

  return v11;
}

unint64_t sub_1DDA5594C()
{
  result = qword_1EDC0A910;
  if (!qword_1EDC0A910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0A910);
  }

  return result;
}

uint64_t CSHasAOP()
{
  if (CSHasAOP_onceToken != -1)
  {
    dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
  }

  return CSHasAOP_hasAOP;
}

void *std::unique_ptr<corespeech::CSAudioCircularBufferImpl<unsigned short>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      v2[7] = v3;
      operator delete(v3);
    }

    v4 = v2[5];
    v2[5] = 0;
    if (v4)
    {
      MEMORY[0x1E12B9880](v4, 0x1000C80BDFB0063);
    }

    JUMPOUT(0x1E12B98A0);
  }

  return result;
}

void sub_1DDA56AAC(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

double CSMachAbsoluteTimeGetTimeInterval(unint64_t a1)
{
  if (_CSMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
  }

  return *&_CSMachAbsoluteTimeRate_rate * a1 / 1000000000.0;
}

void _CSPreferencesSetValueForKey(void *a1, const __CFString *a2)
{
  value = a1;
  if (+[CSUtils deviceRequirePowerAssertionHeld])
  {
  }

  CFPreferencesSetAppValue(a2, value, @"com.apple.voicetrigger");
}

uint64_t CSIsHorseman()
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

void sub_1DDA57FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DDA58BB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1DDA58C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1DDA58C60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1DDA58CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1DDA58CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1DDA58D34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

void type metadata accessor for CSEndpointerType()
{
  if (!qword_1ECDA2E30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECDA2E30);
    }
  }
}

uint64_t sub_1DDA58E1C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DDA58F38(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1DDA58FFC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t CSEnhancedEndpointerModelTypeDefault.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t CSEnhancedEndpointerModelTypeDefault.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

id sub_1DDA590E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);

  v4 = sub_1DDB10E20();

  return v4;
}

uint64_t sub_1DDA5915C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DDA591A8(uint64_t a1)
{
  v2 = sub_1DDB10E30();
  v4 = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

uint64_t sub_1DDA59208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1DDA5925C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1DDA592BC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 40);
  return swift_getObjCClassFromMetadata();
}

uint64_t sub_1DDA59300(uint64_t a1)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  result = swift_beginAccess();
  *(a1 + 40) = ObjCClassMetadata;
  return result;
}

id sub_1DDA59434(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_modelType;
  type metadata accessor for CSEnhancedEndpointerModelTypeDefault();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DDB1F350;
  *(v9 + 32) = 0xE700000000000000;
  *(v9 + 40) = ObjectType;
  *(v9 + 48) = 2;
  *&v4[v8] = v9;
  v10 = objc_allocWithZone(MEMORY[0x1E695FEC8]);
  v11 = sub_1DDA59E4C(a1, a2);
  if (v3)
  {
    v12 = *&v4[v8];
    swift_unknownObjectRelease();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v4[OBJC_IVAR____TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorDefault_multiArray] = v11;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_init);
  }
}

uint64_t sub_1DDA5962C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_1DDA596B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_modelType;
  type metadata accessor for CSEnhancedEndpointerModelTypeAcoustic();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DDB1F360;
  *(v9 + 32) = 0xE800000000000000;
  *(v9 + 40) = ObjectType;
  *(v9 + 48) = 3;
  *&v4[v8] = v9;
  v10 = objc_allocWithZone(MEMORY[0x1E695FEC8]);
  v11 = sub_1DDA59E4C(a1, a2);
  if (v3)
  {
    v12 = *&v4[v8];
    swift_unknownObjectRelease();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v4[OBJC_IVAR____TtC20CoreSpeechFoundation39CSEnhancedEndpointerInputVectorAcoustic_multiArray] = v11;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_init);
  }
}

uint64_t sub_1DDA597C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1DDA5594C();
  v8 = sub_1DDB10E60();
  return a6(v8, a4);
}

id sub_1DDA598E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DDA5996C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDA2EC0, &unk_1DDB1F580);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DDB1F370;
  type metadata accessor for CSEnhancedEndpointerModelTypeDefault();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DDB1F350;
  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = type metadata accessor for CSEnhancedEndpointerInputVectorDefault();
  *(v1 + 48) = 2;
  *(v0 + 32) = v1;
  type metadata accessor for CSEnhancedEndpointerModelTypeAcoustic();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DDB1F360;
  *(v2 + 32) = 0xE800000000000000;
  result = type metadata accessor for CSEnhancedEndpointerInputVectorAcoustic();
  *(v2 + 40) = result;
  *(v2 + 48) = 3;
  *(v0 + 40) = v2;
  qword_1EDC0AF68 = v0;
  return result;
}

id CSEnhancedEndpointerInputVectorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSEnhancedEndpointerInputVectorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSEnhancedEndpointerInputVectorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CSEnhancedEndpointerInputVectorFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSEnhancedEndpointerInputVectorFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DDA59BF4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1DDB10E70();

    v2 = sub_1DDB10EA0();
    MEMORY[0x1E12B8EF0](v2);

    MEMORY[0x1E12B8EF0](544370464, 0xE400000000000000);
    sub_1DDB10E70();
    v3 = sub_1DDB10EA0();
    v5 = v4;

    MEMORY[0x1E12B8EF0](0x616574736E69202CLL, 0xEE0020746F672064);
    v6 = sub_1DDB10EA0();
    MEMORY[0x1E12B8EF0](v6);

    MEMORY[0x1E12B8EF0](0xD000000000000013, 0x80000001DDB20750);
    v9 = 0xD000000000000020;

    MEMORY[0x1E12B8EF0](v3, v5);
  }

  else
  {
    sub_1DDB10E70();

    v9 = 0xD000000000000017;
    v7 = sub_1DDB10EA0();
    MEMORY[0x1E12B8EF0](v7);

    MEMORY[0x1E12B8EF0](0xD000000000000013, 0x80000001DDB20790);
  }

  return v9;
}

id sub_1DDA59E4C(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1DDA5594C();
  v4 = sub_1DDB10E50();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1DDB10E10();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

id sub_1DDA59F38(unint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 == 2)
    {
      goto LABEL_3;
    }

LABEL_26:
    sub_1DDA5A714();
    swift_allocError();
    *v17 = v2;
    *(v17 + 8) = 0;
LABEL_30:
    swift_willThrow();
    goto LABEL_31;
  }

  while (2)
  {
    v14 = a1;
    v15 = a2;
    v16 = sub_1DDB10E90();
    a2 = v15;
    v2 = v16;
    a1 = v14;
    if (v2 != 2)
    {
      goto LABEL_26;
    }

LABEL_3:
    v21 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1E12B8F30](1, a1);
    }

    else
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
      }

      v3 = *(a1 + 40);
    }

    v4 = v3;
    v5 = [v3 integerValue];

    if (qword_1EDC0A918 != -1)
    {
      a1 = swift_once();
    }

    v6 = qword_1EDC0AF68;
    if (qword_1EDC0AF68 >> 62)
    {
      a1 = sub_1DDB10E90();
      v7 = a1;
      if (a1)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

    v7 = *((qword_1EDC0AF68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_29:
      sub_1DDA5A714();
      swift_allocError();
      *v18 = v5;
      *(v18 + 8) = 1;
      goto LABEL_30;
    }

LABEL_10:
    v8 = 0;
    v2 = (v6 & 0xFFFFFFFFFFFFFF8);
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12B8F30](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

LABEL_14:
      if ([v9 featureCount] == v5)
      {
        goto LABEL_20;
      }

      a1 = swift_unknownObjectRelease();
      ++v8;
      if (v10 == v7)
      {
        goto LABEL_29;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v9 = *(v6 + 8 * v8 + 32);
  swift_unknownObjectRetain();
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  [v9 inputVector];
  swift_getObjCClassMetadata();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DDA5594C();
  v12 = sub_1DDB10E50();
  v22[0] = 0;
  v2 = [v11 initWithShape:v12 dataType:v21 error:v22];

  if (v2)
  {
    v13 = v22[0];
  }

  else
  {
    v2 = v22[0];
    sub_1DDB10E10();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

unint64_t sub_1DDA5A714()
{
  result = qword_1ECDA2EB8;
  if (!qword_1ECDA2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDA2EB8);
  }

  return result;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CSEnhancedEndpointerInputVectorError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CSEnhancedEndpointerInputVectorError(uint64_t result, unsigned int a2, unsigned int a3)
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

void CSModelEngineCacheLookUpHandler(const char *a1, const char *a2, char *a3, size_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v9 = [v8 stringByStandardizingPath];

  if (v9 && [v9 length])
  {
    v10 = [CSMil2BnnsUtils readBnnsIrFromCacheMapWithMilFile:v9];
    v11 = [v10 stringByStandardizingPath];

    bzero(a3, a4);
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = v12;
    if (!v11 || ([v12 fileExistsAtPath:v11] & 1) == 0)
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 136315394;
        *&v29[4] = "CSModelEngineCacheLookUpHandler";
        *&v29[12] = 2112;
        *&v29[14] = v11;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s bnnsIr cache path: %@ file does not exist", v29, 0x16u);
      }

      v15 = v9;
      if (!+[CSUtils isBridgeOS])
      {
        *v29 = MEMORY[0x1E69E9820];
        *&v29[8] = 3221225472;
        *&v29[16] = ___ZL35sendAnalyticsEventBnnsIrFileMissingP8NSString_block_invoke;
        v30 = &unk_1E865A720;
        v31 = v15;
        AnalyticsSendEventLazy();
      }
    }

    v16 = [v11 pathExtension];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      v19 = v11;
      v20 = [v11 UTF8String];
      v21 = v11;
      v22 = strlen([v11 UTF8String]);
      strncpy(a3, v20, v22);
      v23 = v11;
      a3[strlen([v11 UTF8String])] = 0;
      v24 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 136315650;
        *&v29[4] = "CSModelEngineCacheLookUpHandler";
        *&v29[12] = 2080;
        *&v29[14] = a3;
        *&v29[22] = 2080;
        v30 = a1;
        _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s Caching bnnsIr %s to mil path %s", v29, 0x20u);
      }
    }

    else
    {
      v26 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
        *v29 = 136315394;
        *&v29[4] = "CSModelEngineCacheLookUpHandler";
        *&v29[12] = 2112;
        *&v29[14] = v27;
        _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s invalid for milPath: %@", v29, 0x16u);
      }
    }
  }

  else
  {
    v25 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 136315138;
      *&v29[4] = "CSModelEngineCacheLookUpHandler";
      _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s compute Engine caching Input Mil path invalid or empty", v29, 0xCu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

id ___ZL35sendAnalyticsEventBnnsIrFileMissingP8NSString_block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"MissingIrFileCount";
  v5[1] = @"MissingIrFileForMilFileName";
  v1 = *(a1 + 32);
  v6[0] = &unk_1F5916760;
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

Class __getCLFSystemShellSwitcherClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ClarityFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ClarityFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E865A740;
    v7 = 0;
    ClarityFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ClarityFoundationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLFSystemShellSwitcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCLFSystemShellSwitcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ClarityFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ClarityFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DDA5DB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AudioInjectionXPCGetInterface()
{
  v54[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F593D468];
  v1 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_pingpong_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_pingpong_completion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_completion_ argumentIndex:1 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_completion_ argumentIndex:2 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v50[0] = objc_opt_class();
  v50[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_completion_ argumentIndex:3 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v49[0] = objc_opt_class();
  v49[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_completion_ argumentIndex:2 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v48[0] = objc_opt_class();
  v48[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_injectAudio_toDeviceWithUUID_withScaleFactor_completion_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x1E695DFD8];
  v47[0] = objc_opt_class();
  v47[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_injectAudio_toDeviceWithUUID_withScaleFactor_completion_ argumentIndex:1 ofReply:0];

  v25 = MEMORY[0x1E695DFD8];
  v46[0] = objc_opt_class();
  v46[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_injectAudio_toDeviceWithUUID_withScaleFactor_withNumChannels_completion_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x1E695DFD8];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_injectAudio_toDeviceWithUUID_withScaleFactor_withNumChannels_completion_ argumentIndex:1 ofReply:0];

  v31 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v33 = [v31 setWithArray:v32];
  [v0 setClasses:v33 forSelector:sel_connectDeviceWithUUID_completion_ argumentIndex:0 ofReply:0];

  v34 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v36 = [v34 setWithArray:v35];
  [v0 setClasses:v36 forSelector:sel_disconnectDeviceWithUUID_completion_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v39 = [v37 setWithArray:v38];
  [v0 setClasses:v39 forSelector:sel_primaryInputDeviceUUIDWithCompletion_ argumentIndex:2 ofReply:1];

  v40 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t _AssistantPrefsChangedNotification(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFPreferencesAssistantEnabled();
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Disabled";
    if (v3)
    {
      v5 = @"Enabled";
    }

    v8 = 136315394;
    v9 = "_AssistantPrefsChangedNotification";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Siri Enabled = %{public}@", &v8, 0x16u);
  }

  result = [a2 _didReceiveSiriSettingChanged:v3 != 0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__309(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDA60D1C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E865A7B0;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DDA62390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterFillComplexBuffer_BlockInvoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E12BA300](a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

void __CSLogInitIfNeededWithSubsystemType_block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = CSLoggingSubsystem;
  v1 = os_log_create(CSLoggingSubsystem, kCSLoggingContextFramework);
  v2 = CSLogContextFacilityCoreSpeech;
  CSLogContextFacilityCoreSpeech = v1;

  v3 = os_log_create(v0, kCSLoggingCategoryVT);
  v4 = CSLogCategoryVT;
  CSLogCategoryVT = v3;

  v5 = os_log_create(v0, kCSLoggingCategoryEP);
  v6 = CSLogCategoryEP;
  CSLogCategoryEP = v5;

  v7 = os_log_create(v0, kCSLoggingCategorySDSD);
  v8 = CSLogCategorySDSD;
  CSLogCategorySDSD = v7;

  v9 = os_log_create(v0, kCSLoggingCategoryAsset);
  v10 = CSLogCategoryAsset;
  CSLogCategoryAsset = v9;

  v11 = os_log_create(v0, kCSLoggingCategoryRequest);
  v12 = CSLogCategoryRequest;
  CSLogCategoryRequest = v11;

  v13 = os_log_create(v0, kCSLoggingCategoryAudio);
  v14 = CSLogCategoryAudio;
  CSLogCategoryAudio = v13;

  v15 = os_log_create(v0, kCSLoggingCategoryASV);
  v16 = CSLogCategoryASV;
  CSLogCategoryASV = v15;

  v17 = os_log_create(v0, kCSLoggingCategoryAdBlocker);
  v18 = CSLogCategoryAdBlocker;
  CSLogCategoryAdBlocker = v17;

  v19 = os_log_create(v0, kCSLoggingCategorySpkrId);
  v20 = CSLogCategorySpkrId;
  CSLogCategorySpkrId = v19;

  v21 = os_log_create(v0, kCSLoggingCategoryAttending);
  v22 = CSLogCategoryAttending;
  CSLogCategoryAttending = v21;

  v23 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v24 = _dateFormatter;
  _dateFormatter = v23;

  v25 = _dateFormatter;
  v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v25 setLocale:v26];

  [_dateFormatter setDateFormat:@"yyyyMMdd-HHmmss"];
  v27 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315394;
    v30 = "CSLogInitIfNeededWithSubsystemType_block_invoke";
    v31 = 2080;
    v32 = "Unknown";
    _os_log_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_DEFAULT, "%s ::: CoreSpeech logging initialized (%s)", &v29, 0x16u);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void SSRLogInitIfNeeded()
{
  if (SSRLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SSRLogInitIfNeeded_once, &__block_literal_global_730);
  }

  CSLogInitIfNeededWithSubsystemType(0);
}

void __SSRLogInitIfNeeded_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = os_log_create(SSRLoggingSubsystem, kSSRLoggingContextFramework);
  v1 = SSRLogContextFacilityCoreSpeech;
  SSRLogContextFacilityCoreSpeech = v0;

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = _ssrDateFormatter;
  _ssrDateFormatter = v2;

  v4 = _ssrDateFormatter;
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [_ssrDateFormatter setDateFormat:@"yyyyMMdd-HHmmss"];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "SSRLogInitIfNeeded_block_invoke";
    v10 = 2080;
    v11 = "Unknown";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s ::: SSR logging initialized (%s)", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

CSAudioSpectralMeterImpl *std::unique_ptr<CSAudioSpectralMeterImpl>::reset[abi:ne200100](CSAudioSpectralMeterImpl **a1, CSAudioSpectralMeterImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CSAudioSpectralMeterImpl::~CSAudioSpectralMeterImpl(result);

    JUMPOUT(0x1E12B98A0);
  }

  return result;
}

void sub_1DDA6310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDA631C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDA6323C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E865A5D8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1DDA64BB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1382(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getSecureAssetTypeUtilsClass_block_invoke(uint64_t a1)
{
  CoreSpeechUtilsLibraryCore();
  result = objc_getClass("SecureAssetTypeUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecureAssetTypeUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreSpeechUtilsLibraryCore()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!CoreSpeechUtilsLibraryCore_frameworkLibrary)
  {
    CoreSpeechUtilsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

Class __getSecureAssetsPreinstalledBundleClass_block_invoke(uint64_t a1)
{
  CoreSpeechUtilsLibraryCore();
  result = objc_getClass("SecureAssetsPreinstalledBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecureAssetsPreinstalledBundleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechUtilsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechUtilsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id CSSiriUserSupportBaseURL()
{
  if (CSSiriUserSupportBaseURL_once != -1)
  {
    dispatch_once(&CSSiriUserSupportBaseURL_once, &__block_literal_global_1522);
  }

  v1 = CSSiriUserSupportBaseURL_sUserSupportBaseURL;

  return v1;
}

void __CSSiriUserSupportBaseURL_block_invoke()
{
  v3 = AFUserSupportDirectoryPath();
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3 isDirectory:1];
  v1 = CSSiriUserSupportBaseURL_sUserSupportBaseURL;
  CSSiriUserSupportBaseURL_sUserSupportBaseURL = v0;

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 createDirectoryAtURL:CSSiriUserSupportBaseURL_sUserSupportBaseURL withIntermediateDirectories:1 attributes:0 error:0];
}

uint64_t CSSiriRefreshDeviceExperimentGroup()
{
  if (AFIsInternalInstall())
  {
    v0 = +[CSSiriPreferences sharedPreferences];
    v1 = [v0 internalUserClassification];

    if (v1)
    {
      _sIsCarryDevice = v1 == 1;
    }

    else
    {
      v2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v3 = [v2 persistentDomainForName:@"com.apple.da"];
      v4 = [v3 objectForKey:@"ExperimentGroup"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v4 isEqualToString:@"walkabout"])
        {
          v5 = 1;
        }

        else
        {
          v5 = [v4 isEqualToString:@"carry"];
        }
      }

      else
      {
        v5 = 0;
      }

      _sIsCarryDevice = v5;
    }
  }

  return _sIsCarryDevice;
}

void sub_1DDA6A48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDA6B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1665(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDA6B858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchCarPlayCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CarKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E865A910;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = CarKitLibraryCore_frameworkLibrary;
    if (CarKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = CarKitLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DDA6BE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCRCapabilitiesUserInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRCapabilitiesUserInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRCapabilitiesUserInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CRSessionStatusCapabilitiesUpdatedNotificationCallback()
{
  v0 = +[CSCarKitUtils sharedInstance];
  [v0 handleCarCapabilitiesUpdatedWithCompletion:0];
}

void std::default_delete<CSAudioZeroFilterImpl<unsigned short>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12B98A0);
}

void sub_1DDA6EA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CSAudioZeroFilterImpl<unsigned short>::ZeroRun>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1DDA6EE24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1DDA792DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2230(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDA796F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDA7B7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = bnnsIrMappedWeight;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DDA7C174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CSFMil2bnnsComputeBackend;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DDA7C76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *std::vector<char const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDA7C968(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1DDA7D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1DDA7F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2649(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CSResourcePathInSystemDomainMaskByAppending(void *a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = a1;
  NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v22 + 1) + 8 * i);
      if (a2)
      {
        v10 = @"/";
        if (!+[CSUtils isDarwinOS])
        {
          v10 = CPSystemRootDirectory();
        }

        v11 = [(__CFString *)v10 stringByAppendingPathComponent:v9];
      }

      else
      {
        v11 = v9;
      }

      v12 = [v11 stringByAppendingPathComponent:v21];
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v13 fileExistsAtPath:v12];

      if (v14)
      {
        v15 = v12;

        ++v5;
        v6 = v15;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  }

  while (v4);
  if (v5 != 1)
  {
    if (v5)
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      *buf = 136315394;
      v27 = "CSResourcePathInSystemDomainMaskByAppending";
      v28 = 2112;
      v29 = v21;
      v17 = "%s More than 1 path %@ are founded in system domain mask, returning the last one as default";
LABEL_25:
      _os_log_fault_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_FAULT, v17, buf, 0x16u);
      goto LABEL_21;
    }

LABEL_20:
    v16 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v27 = "CSResourcePathInSystemDomainMaskByAppending";
    v28 = 2112;
    v29 = v21;
    v17 = "%s Resource path %@ is not founded in system domain mask, returning nil path";
    goto LABEL_25;
  }

LABEL_21:

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

void __CSIsVirtualMachine_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      CSIsVirtualMachine_isVM = CFBooleanGetValue(v1) == 1;
    }

    CFRelease(v1);
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    if (CSIsVirtualMachine_isVM)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 136315394;
    v7 = "CSIsVirtualMachine_block_invoke";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s isVirtualMachine ? %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

BOOL CSIsGibraltarMac()
{
  result = +[CSUtils hasRemoteCoreSpeech];
  if (result)
  {

    return +[CSUtils hasRemoteBuiltInMic];
  }

  return result;
}

uint64_t CSIsTorpedo()
{
  if (CSIsTorpedo_onceToken != -1)
  {
    dispatch_once(&CSIsTorpedo_onceToken, &__block_literal_global_3140);
  }

  return CSIsTorpedo_isTorpedo;
}

uint64_t __CSIsTorpedo_block_invoke()
{
  result = MGGetBoolAnswer();
  CSIsTorpedo_isTorpedo = result;
  return result;
}

uint64_t CSIsHorsemanLiveOn()
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    return 0;
  }

  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isEqualToString:@"walkabout"];

  return v2;
}

uint64_t CSIsHorsemanJunior()
{
  if (CSIsHorsemanJunior_onceToken != -1)
  {
    dispatch_once(&CSIsHorsemanJunior_onceToken, &__block_literal_global_20);
  }

  return CSIsHorsemanJunior_isHorsemanJunior;
}

unint64_t __CSIsHorsemanJunior_block_invoke()
{
  result = +[CSUtils horsemanDeviceType];
  CSIsHorsemanJunior_isHorsemanJunior = result == 2;
  return result;
}

uint64_t CSIsCommunalDevice()
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

uint64_t CSIsIPad()
{
  if (CSIsIPad_onceToken != -1)
  {
    dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
  }

  return CSIsIPad_isIPad;
}

uint64_t CSIsVirtualMachine()
{
  if (CSIsVirtualMachine_onceToken != -1)
  {
    dispatch_once(&CSIsVirtualMachine_onceToken, &__block_literal_global_27);
  }

  return CSIsVirtualMachine_isVM;
}

uint64_t CSSupportsVibrator()
{
  if (CSSupportsVibrator_onceToken != -1)
  {
    dispatch_once(&CSSupportsVibrator_onceToken, &__block_literal_global_43);
  }

  return CSSupportsVibrator_hasHaptic;
}

uint64_t __CSSupportsVibrator_block_invoke()
{
  result = MGGetBoolAnswer();
  CSSupportsVibrator_hasHaptic = result;
  return result;
}

uint64_t CSSupportsUSBTypeC()
{
  if (CSSupportsUSBTypeC_onceToken != -1)
  {
    dispatch_once(&CSSupportsUSBTypeC_onceToken, &__block_literal_global_48);
  }

  return CSSupportsUSBTypeC_supportsUSBTypeC;
}

uint64_t __CSSupportsUSBTypeC_block_invoke()
{
  result = MGGetBoolAnswer();
  CSSupportsUSBTypeC_supportsUSBTypeC = result;
  return result;
}

uint64_t CSIsInternalBuild()
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  return CSIsInternalBuild_isInternal;
}

uint64_t CSUsesExplicitContentAllowedForCensorSetting()
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  return CSIsHorseman_isHorseman;
}

BOOL CSShouldCensorSpeech()
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  v0 = CSIsHorseman_isHorseman;
  v1 = [MEMORY[0x1E69ADFC0] sharedConnection];
  v2 = v1;
  if (v0 == 1)
  {
    v3 = [v1 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE70]] != 1;
  }

  else
  {
    v3 = [v1 effectiveBoolValueForSetting:*MEMORY[0x1E69ADDB0]] == 1;
  }

  return v3;
}

__CFString *CSSystemRootDirectory()
{
  if (+[CSUtils isDarwinOS])
  {
    v0 = @"/";
  }

  else
  {
    v0 = CPSystemRootDirectory();
  }

  return v0;
}

uint64_t CSMachAbsoluteTimeAddTimeInterval(uint64_t a1, double a2)
{
  if (_CSMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
  }

  return (a2 * 1000000000.0 / *&_CSMachAbsoluteTimeRate_rate) + a1;
}

uint64_t CSMachAbsoluteTimeSubtractTimeInterval(uint64_t a1, double a2)
{
  if (_CSMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
  }

  return a1 - (a2 * 1000000000.0 / *&_CSMachAbsoluteTimeRate_rate);
}

void CSSafeSetOutErrorWithNSError(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    *a1 = v4;
  }

  else if (v3)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CSSafeSetOutErrorWithNSError";
      v10 = 2114;
      v11 = v4;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DDA8AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3412(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDA8D93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4952(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void NonlinearBeepCanceller::NonlinearBeepCanceller(NonlinearBeepCanceller *this)
{
  *this = 4;
  *(this + 4) = xmmword_1DDB1F770;
  *(this + 20) = xmmword_1DDB1F780;
  *(this + 36) = xmmword_1DDB1F790;
  *(this + 52) = xmmword_1DDB1F7A0;
  *(this + 68) = 0x4000000001;
  *(this + 19) = 16000;
  *(this + 84) = xmmword_1DDB1F7B0;
  *(this + 100) = 0x3F0000003B000000;
  *(this + 108) = 0x1E3CE50800000000;
  bzero(this + 116, 0x2E4uLL);
}

{
  *this = 4;
  *(this + 4) = xmmword_1DDB1F770;
  *(this + 20) = xmmword_1DDB1F780;
  *(this + 36) = xmmword_1DDB1F790;
  *(this + 52) = xmmword_1DDB1F7A0;
  *(this + 68) = 0x4000000001;
  *(this + 19) = 16000;
  *(this + 84) = xmmword_1DDB1F7B0;
  *(this + 100) = 0x3F0000003B000000;
  *(this + 108) = 0x1E3CE50800000000;
  bzero(this + 116, 0x2E4uLL);
}

void NonlinearBeepCanceller::nl_init(NonlinearBeepCanceller *this, int a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, int a11, int a12, int a13, int a14, int a15, int a16, float a17, unsigned int a18)
{
  v30 = this;
  *this = a2;
  *(this + 6) = __exp10f(a5 / 10.0);
  *(v30 + 7) = a6;
  *(v30 + 8) = a7;
  *(v30 + 9) = a8;
  *(v30 + 10) = __exp10f(a9 / 10.0);
  v31 = __exp10f(a17 / 10.0);
  *(v30 + 14) = 507307272;
  *(v30 + 13) = a11;
  *(v30 + 14) = a12;
  *(v30 + 15) = a13 & 0xFFFFFFFE;
  *(v30 + 16) = a14;
  *(v30 + 17) = a15;
  *(v30 + 18) = a16;
  *(v30 + 19) = a18;
  v32 = (a13 & 0xFFFFFFFE) * a16;
  *(v30 + 21) = v32;
  *(v30 + 22) = v32;
  *(v30 + 23) = v32 >> 1;
  *(v30 + 24) = (v32 >> 1) + 1;
  *(v30 + 27) = 0;
  *(v30 + 11) = a10;
  *(v30 + 12) = v31;
  *(v30 + 105) = vDSP_DFT_zrop_CreateSetup(*(v30 + 105), v32, vDSP_DFT_FORWARD);
  *(v30 + 106) = vDSP_DFT_zrop_CreateSetup(*(v30 + 106), *(v30 + 22), vDSP_DFT_INVERSE);
  *(v30 + 25) = 2.0 / (*(v30 + 22) * *(v30 + 15));
  *(v30 + 26) = 1056964608;
  v33 = (*(v30 + 18) / *(v30 + 19));
  if (a3 <= 0.0)
  {
    *(v30 + 1) = 0;
    *(v30 + 5) = -1082130432;
    v36 = 0.0;
  }

  else
  {
    v34 = -v33 / a3;
    v35 = expf(v34);
    *(v30 + 1) = v35;
    *(v30 + 5) = -(1.0 - v35);
    v36 = 0.0;
    if (v35 > 0.0)
    {
      v36 = sqrtf(v35);
    }
  }

  *(v30 + 4) = v36;
  v37 = 0.0;
  if (a4 > 0.0)
  {
    v38 = -v33 / a4;
    v37 = expf(v38);
  }

  *(v30 + 2) = v37;
  *(v30 + 3) = 1.0 - v37;
  v39 = *(v30 + 17);
  v163 = *(v30 + 14);
  v161 = *(v30 + 13);
  v170 = *(v30 + 168);
  *(v30 + 21) = 0;
  *(v30 + 22) = 0;
  v171 = *(v30 + 23);
  *(v30 + 23) = 0;
  v172 = &v170;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v172);
  v41 = *(v30 + 21);
  v42 = *(v30 + 22);
  v43 = 0xAAAAAAAAAAAAAAABLL * (&v42[-v41] >> 3);
  v168 = v39;
  v44 = v39 - v43;
  if (v39 <= v43)
  {
    if (v39 < v43)
    {
      v49 = (v41 + 24 * v39);
      if (v42 != v49)
      {
        v50 = *(v30 + 22);
        do
        {
          v52 = *(v50 - 3);
          v50 -= 24;
          v51 = v52;
          if (v52)
          {
            *(v42 - 2) = v51;
            operator delete(v51);
          }

          v42 = v50;
        }

        while (v50 != v49);
      }

      *(v30 + 22) = v49;
    }
  }

  else
  {
    v45 = *(v30 + 23);
    if (0xAAAAAAAAAAAAAAABLL * ((v45 - v42) >> 3) < v44)
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v41) >> 3);
      v47 = 2 * v46;
      if (2 * v46 <= v39)
      {
        v47 = v39;
      }

      if (v46 >= 0x555555555555555)
      {
        v48 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v48 = v47;
      }

      if (v48 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(v42, 24 * ((24 * v44 - 24) / 0x18) + 24);
    *(v30 + 22) = &v42[24 * ((24 * v44 - 24) / 0x18) + 24];
  }

  if (v168)
  {
    v53 = 0;
    v54 = v30;
    do
    {
      if ((v161 >> v53))
      {
        v55 = v163;
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        for (i = 1; i <= v55; i += 2)
        {
          v57 = *(v30 + 21) + 24 * v53;
          v59 = *(v57 + 8);
          v58 = *(v57 + 16);
          if (v59 >= v58)
          {
            v61 = *v57;
            v62 = v59 - *v57;
            v63 = v62 >> 2;
            v64 = (v62 >> 2) + 1;
            if (v64 >> 62)
            {
              goto LABEL_98;
            }

            v65 = v58 - v61;
            if (v65 >> 1 > v64)
            {
              v64 = v65 >> 1;
            }

            if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v66 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v64;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v66);
            }

            *(4 * v63) = i;
            v60 = 4 * v63 + 4;
            memcpy(0, v61, v62);
            v67 = *v57;
            *v57 = 0;
            *(v57 + 8) = v60;
            *(v57 + 16) = 0;
            if (v67)
            {
              operator delete(v67);
            }

            v30 = v54;
          }

          else
          {
            *v59 = i;
            v60 = (v59 + 1);
          }

          *(v57 + 8) = v60;
        }
      }

      ++v53;
    }

    while (v53 != v168);
  }

  *(v30 + 20) = 0;
  v69 = *(v30 + 21);
  v68 = *(v30 + 22);
  v70 = v68 - v69;
  if (v68 != v69)
  {
    v71 = 0;
    v72 = 0xAAAAAAAAAAAAAAABLL * (v70 >> 3);
    v73 = (v69 + 8);
    v74 = 1;
    do
    {
      v71 += (*v73 - *(v73 - 1)) >> 2;
      v73 += 3;
    }

    while (v72 > v74++);
    *(v30 + 20) = v71;
  }

  v77 = (v30 + 192);
  v76 = *(v30 + 24);
  v78 = *v30;
  v79 = *(v30 + 26);
  if (v78 > (v79 - v76) >> 2)
  {
    if (v76)
    {
      *(v30 + 25) = v76;
      operator delete(v76);
      v79 = 0;
      *v77 = 0;
      *(v30 + 25) = 0;
      *(v30 + 26) = 0;
    }

    v80 = v79 >> 1;
    if (v79 >> 1 <= v78)
    {
      v80 = v78;
    }

    if (v79 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v81 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v81 = v80;
    }

    if (!(v81 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v81);
    }

LABEL_98:
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v82 = *(v30 + 25);
  v83 = (v82 - v76) >> 2;
  if (v83 >= v78)
  {
    v84 = *v30;
  }

  else
  {
    v84 = (v82 - v76) >> 2;
  }

  if (v84)
  {
    v85 = (v84 + 3) & 0x1FFFFFFFCLL;
    v40 = vdupq_n_s64(v84 - 1);
    v86 = v76 + 2;
    v87 = 3;
    do
    {
      v88 = vdupq_n_s64(v87 - 3);
      v89 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v88, xmmword_1DDB1F760)));
      if (vuzp1_s16(v89, *v40.i8).u8[0])
      {
        *(v86 - 2) = 0;
      }

      if (vuzp1_s16(v89, *&v40).i8[2])
      {
        *(v86 - 1) = 0;
      }

      if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v88, xmmword_1DDB1F750)))).i32[1])
      {
        *v86 = 0;
        v86[1] = 0;
      }

      v87 += 4;
      v86 += 4;
      v85 -= 4;
    }

    while (v85);
  }

  _CF = v78 >= v83;
  v91 = v78 - v83;
  if (v91 != 0 && _CF)
  {
    v92 = (4 * v78 - (v82 - v76) - 4) >> 2;
    v93 = (v92 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v40 = vdupq_n_s64(v92);
    v94 = (v82 + 8);
    v95 = 3;
    do
    {
      v96 = vdupq_n_s64(v95 - 3);
      v97 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v96, xmmword_1DDB1F760)));
      if (vuzp1_s16(v97, *v40.i8).u8[0])
      {
        *(v94 - 2) = 0;
      }

      if (vuzp1_s16(v97, *&v40).i8[2])
      {
        *(v94 - 1) = 0;
      }

      if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v96, xmmword_1DDB1F750)))).i32[1])
      {
        *v94 = 0;
        v94[1] = 0;
      }

      v95 += 4;
      v94 += 4;
      v93 -= 4;
    }

    while (v93);
    v98 = (v82 + 4 * v91);
  }

  else
  {
    v98 = &v76[v78];
  }

  *(v30 + 25) = v98;
  v99 = *(v30 + 20);
  LODWORD(v170) = 0;
  std::vector<float>::assign(v30 + 27, v99, &v170, *v40.i8);
  v100 = *(v30 + 22);
  LODWORD(v170) = 0;
  std::vector<float>::assign(v30 + 30, v100, &v170, v101);
  v102 = *(v30 + 22);
  LODWORD(v170) = 0;
  std::vector<float>::assign(v30 + 33, v102, &v170, v103);
  v104 = *(v30 + 22);
  LODWORD(v170) = 0;
  std::vector<float>::assign(v30 + 36, v104, &v170, v105);
  v106 = *(v30 + 16);
  LODWORD(v170) = 0;
  std::vector<float>::assign(v30 + 39, v106, &v170, v107);
  NonlinearBeepCanceller::fcn_vector_init(v30 + 42, *(v30 + 20), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 45, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 48, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 51, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 54, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 57, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 60, *(v30 + 20), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 63, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 66, *(v30 + 16), *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 69, *(v30 + 16), *(v30 + 24));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 72, *(v30 + 16), *(v30 + 24));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 102, *(v30 + 16), *(v30 + 24));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 600, *(v30 + 20), *v30, *(v30 + 22));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 624, *(v30 + 20), *v30, *(v30 + 24));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 81, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 22), 0.0);
  NonlinearBeepCanceller::fcn_vector_init(v30 + 84, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 24), *(v30 + 12));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 87, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 22), 0.0);
  NonlinearBeepCanceller::fcn_vector_init(v30 + 90, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 24), *(v30 + 12));
  NonlinearBeepCanceller::fcn_vector_init(v30 + 93, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 22), 0.0);
  NonlinearBeepCanceller::fcn_vector_init(v30 + 96, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 24), 0.0);
  NonlinearBeepCanceller::fcn_vector_init(v30 + 99, *(v30 + 16), *(v30 + 20), *v30, *(v30 + 24), 0.0);
  if (*v30 != 1)
  {
    v109 = 0;
    v110 = *v77;
    do
    {
      *(v110 + 4 * v109) = v109 + 1;
      ++v109;
    }

    while (v109 < (*v30 - 1));
  }

  v111 = *(v30 + 22);
  if (v111)
  {
    v112 = *(v30 + 30);
    *v108.i32 = v111;
    v113 = (v111 + 3) & 0x1FFFFFFFCLL;
    v154 = vdupq_lane_s32(v108, 0);
    v155 = vdupq_n_s64(v111 - 1);
    v114 = xmmword_1DDB1F750;
    v115 = xmmword_1DDB1F760;
    v116 = xmmword_1DDB1F7C0;
    v117 = (v112 + 8);
    __asm
    {
      FMOV            V4.4S, #4.0
      FMOV            V1.4S, #1.0
    }

    v162 = _Q1;
    __asm { FMOV            V1.4S, #3.0 }

    v152 = _Q1;
    v153 = _Q4;
    v150 = vdupq_n_s32(0x3FC90FDBu);
    v151 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v149 = vdupq_n_s64(4uLL);
    do
    {
      v159 = v115;
      v160 = v114;
      v124 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v155, v115), vcgeq_u64(v155, v114)));
      v158 = v116;
      v125 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v116), v153), v154);
      v126 = vmovn_s32(vcgtq_f32(v162, v125));
      v127 = vbic_s8(v124, v126);
      v128.i64[0] = 0x4000000040000000;
      v128.i64[1] = 0x4000000040000000;
      v129 = vmovn_s32(vcgtq_f32(v128, v125));
      v130 = vbic_s8(v127, v129);
      v131 = vmovn_s32(vcgtq_f32(v152, v125));
      v132 = vbic_s8(v130, v131);
      v133 = vsubq_f32(v128, v125);
      v134 = vand_s8(v130, v131);
      v135.i64[0] = 0xC0000000C0000000;
      v135.i64[1] = 0xC0000000C0000000;
      v136 = vand_s8(v127, v129);
      v157 = vorr_s8(vorr_s8(v132, vorr_s8(vand_s8(v124, v126), v136)), v134);
      v137 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v132), 0x1FuLL)), vaddq_f32(v133, v128), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v134), 0x1FuLL)), vaddq_f32(v125, v135), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v136), 0x1FuLL)), v133, v125)));
      v156 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v132, vorr_s8(v134, v136))), 0x1FuLL));
      v169 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v137.f32), v151)), vmulq_f64(vcvt_hight_f64_f32(v137), v151)), v150);
      v164 = cosf(v169.f32[1]);
      v138.f32[0] = cosf(v169.f32[0]);
      v138.f32[1] = v164;
      v165 = v138;
      v139 = cosf(v169.f32[2]);
      v140 = v165;
      v140.f32[2] = v139;
      v166 = v140;
      v141 = cosf(v169.f32[3]);
      v142 = v166;
      v142.f32[3] = v141;
      v143.i64[0] = 0x3F0000003F000000;
      v143.i64[1] = 0x3F0000003F000000;
      v144.i64[0] = 0xBF000000BF000000;
      v144.i64[1] = 0xBF000000BF000000;
      v145 = vmlaq_f32(v143, v144, v142);
      v146 = vmulq_f32(v145, v145);
      v147 = vsqrtq_f32(vbslq_s8(v156, v146, vsubq_f32(v162, v146)));
      if (v157.i8[0])
      {
        *(v117 - 2) = v147.i32[0];
      }

      if (v157.i8[2])
      {
        *(v117 - 1) = v147.i32[1];
      }

      if (v157.i8[4])
      {
        *v117 = v147.i32[2];
      }

      if (v157.i8[6])
      {
        v117[1] = v147.i32[3];
      }

      v114 = vaddq_s64(v160, v149);
      v115 = vaddq_s64(v159, v149);
      v148.i64[0] = 0x400000004;
      v148.i64[1] = 0x400000004;
      v116 = vaddq_s32(v158, v148);
      v117 += 4;
      v113 -= 4;
    }

    while (v113);
  }
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<float>::__vallocate[abi:ne200100](a1, v9);
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DDB1F760)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DDB1F750)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DDB1F760)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DDB1F750)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

void NonlinearBeepCanceller::fcn_vector_init(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v22 = 0;
  v5 = a2;
  std::vector<float>::vector[abi:ne200100](&__p, a3);
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    if (v7 <= v5)
    {
      v7 = v5;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v8);
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, __p, v21, (v21 - __p) >> 2);
    }

    v6 += 3;
  }

  if (v5 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * v5;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (v5 - v10)];
    v14 = 24 * v5 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, __p, v21, (v21 - __p) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_1DDA99DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NonlinearBeepCanceller::fcn_vector_init(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v22 = 0;
  v6 = a3;
  std::vector<float>::vector[abi:ne200100](__p, a4);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v20, v6);
  v7 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::vector<std::vector<float>>>::__vdeallocate(a1);
    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](a1, v10);
  }

  v11 = (*(a1 + 8) - v8) >> 3;
  v12 = 0xAAAAAAAAAAAAAAABLL * v11;
  if (0xAAAAAAAAAAAAAAABLL * v11 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * v11;
  }

  for (; v13; --v13)
  {
    if (v8 != &v20)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v8, v20, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
    }

    v8 += 3;
  }

  if (v7 <= v12)
  {
    v17 = *(a1 + 8);
    v18 = *a1 + 24 * v7;
    while (v17 != v18)
    {
      v17 -= 3;
      v23 = v17;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v14 = *(a1 + 8);
    v15 = &v14[3 * (v7 - v12)];
    v16 = 24 * v7 - 24 * v12;
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, v20, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
      v14 += 3;
      v16 -= 24;
    }

    while (v16);
    *(a1 + 8) = v15;
  }

  v23 = &v20;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDA99FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  a16 = &a12;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void NonlinearBeepCanceller::fcn_vector_init(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, float a6)
{
  v41 = a6;
  v9 = a4;
  std::vector<float>::vector[abi:ne200100](__p, a5);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v37, v9);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v42 = &v38;
  v43 = 0;
  if (a3)
  {
    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](&v38, a3);
  }

  v10 = a2;
  v11 = a1[2];
  v12 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - *a1) >> 3) < v10)
  {
    if (v12)
    {
      v13 = a1[1];
      v14 = *a1;
      if (v13 != v12)
      {
        do
        {
          v13 -= 3;
          v42 = v13;
          std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
        }

        while (v13 != v12);
        v14 = *a1;
      }

      a1[1] = v12;
      operator delete(v14);
      v11 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v10)
    {
      v16 = v10;
    }

    if (v15 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v16;
    }

    if (v17 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v34 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v12) >> 3);
  v35 = a1;
  if (v34 >= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v12) >> 3);
  }

  for (; v18; --v18)
  {
    if (v12 != &v38)
    {
      v20 = v38;
      v19 = v39;
      v21 = v39 - v38;
      v22 = *v12;
      if (*(v12 + 16) - *v12 < (v39 - v38))
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
        std::vector<std::vector<std::vector<float>>>::__vdeallocate(v12);
        if (v23 <= 0xAAAAAAAAAAAAAAALL)
        {
          v24 = 0x5555555555555556 * ((*(v12 + 16) - *v12) >> 3);
          if (v24 <= v23)
          {
            v24 = v23;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(v12 + 16) - *v12) >> 3) >= 0x555555555555555)
          {
            v25 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v25 = v24;
          }

          std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](v12, v25);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v26 = *(v12 + 8) - v22;
      if (v26 >= v21)
      {
        v27 = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(v38, v39, v22);
        v28 = *(v12 + 8);
        while (v28 != v27)
        {
          v28 -= 3;
          v42 = v28;
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v42);
        }

        *(v12 + 8) = v27;
      }

      else
      {
        std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(v38, (v38 + v26), v22);
        *(v12 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v12, (v20 + v26), v19, *(v12 + 8));
      }
    }

    v12 += 24;
  }

  if (v10 <= v34)
  {
    v32 = v35[1];
    v33 = *v35 + 24 * v10;
    while (v32 != v33)
    {
      v32 -= 3;
      v42 = v32;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    v35[1] = v33;
  }

  else
  {
    v29 = v35[1];
    v30 = &v29[3 * (v10 - v34)];
    v31 = 24 * v10 - 24 * v34;
    do
    {
      *v29 = 0;
      v29[1] = 0;
      v29[2] = 0;
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v29, v38, v39, 0xAAAAAAAAAAAAAAABLL * (v39 - v38));
      v29 += 3;
      v31 -= 24;
    }

    while (v31);
    v35[1] = v30;
  }

  v42 = &v38;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = &v37;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDA9A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a14;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DDA9A5B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDA9A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDA9A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(char ***a1, char ***a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, a3, v8);
    v13 = a1[1];
    if (v13 != v12)
    {
      v14 = a1[1];
      do
      {
        v16 = *(v14 - 3);
        v14 -= 3;
        v15 = v16;
        if (v16)
        {
          *(v13 - 2) = v15;
          operator delete(v15);
        }

        v13 = v14;
      }

      while (v14 != v12);
    }

    a1[1] = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t NonlinearBeepCanceller::nl_proc(NonlinearBeepCanceller *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7)
{
  v11 = *(this + 20);
  if (v11)
  {
    v12 = *(this + 19);
    do
    {
      --v11;
      *(this + 19) = ++v12;
      *(this + 20) = v11;
      if (v12 >= 0x800)
      {
        operator delete(**(this + 16));
        *(this + 16) += 8;
        v11 = *(this + 20);
        v12 = *(this + 19) - 1024;
        *(this + 19) = v12;
      }
    }

    while (v11);
  }

  __C = 0;
  v174 = 0.0;
  if (!*(this + 17))
  {
    v171 = (this + 64);
    if (!*(this + 16))
    {
      goto LABEL_99;
    }

    v44 = 0;
    goto LABEL_40;
  }

  v162 = a2;
  v13 = 0.0;
  v14 = 0;
  mBuffers = a6->mBuffers;
  do
  {
    __src = a3->mBuffers[v14].mData;
    MEMORY[0x1E12BA960](__src, 1, __src, 1, *(this + 33), 1, *(this + 18));
    if (*(*(this + 21) + 24 * v14 + 8) != *(*(this + 21) + 24 * v14))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v170 = v17;
        v18 = *(*(this + 42) + 24 * LODWORD(v13));
        memmove(v18, &v18[4 * *(this + 18)], 4 * (*(this + 22) - *(this + 18)));
        memcpy((*(*(this + 42) + 24 * LODWORD(v13)) + 4 * (*(this + 22) - *(this + 18))), __src, 4 * *(this + 18));
        v19 = *(*(*(this + 21) + 24 * v14) + 4 * v16);
        if (v19 >= 2)
        {
          v20 = v19 >> 1;
          do
          {
            v21 = *(*(this + 42) + 24 * LODWORD(v13)) + 4 * (*(this + 22) - *(this + 18));
            MEMORY[0x1E12BA960](v21, 1, *(this + 33), 1, v21, 1);
            --v20;
          }

          while (v20);
        }

        NonlinearBeepCanceller::fcn_wola_analysis(*(this + 105), *(*(this + 42) + 24 * LODWORD(v13)), *(this + 30), this + 36, *(*(*(this + 75) + 24 * LODWORD(v13)) + 24 * *(this + 27)), *(this + 22), *(this + 23), *(this + 26));
        v22 = *(*(*(this + 75) + 24 * LODWORD(v13)) + 24 * *(this + 27));
        v23 = *(*(*(this + 78) + 24 * LODWORD(v13)) + 24 * *(this + 27));
        v24 = *(this + 23);
        __A.realp = v22 + 1;
        __A.imagp = &v22[(v24 + 1)];
        vDSP_zvmags(&__A, 1, v23 + 1, 1, (v24 - 1));
        *v23 = *v22 * *v22;
        v23[v24] = v22[v24] * v22[v24];
        v25 = *(this + 27);
        *(v25 + 4 * LODWORD(v13)) = 0;
        LODWORD(v26) = *this;
        if (*this)
        {
          v27 = 0;
          v28 = 0;
          do
          {
            vDSP_meanv(*(*(*(this + 78) + 24 * LODWORD(v13)) + v27), 1, &__C + 1, *(this + 24));
            v25 = *(this + 27);
            v29 = *(v25 + 4 * LODWORD(v13)) + *(&__C + 1);
            *(v25 + 4 * LODWORD(v13)) = v29;
            ++v28;
            v26 = *this;
            v27 += 24;
          }

          while (v28 < v26);
        }

        else
        {
          v29 = 0.0;
        }

        v30 = *(this + 28) + (v29 / (*(this + 22) * v26));
        *(v25 + 4 * LODWORD(v13)) = v30;
        if ((log10f(v30) * 10.0) > *(this + 11))
        {
          v15 = *(this + 8);
          v31 = *(this + 17);
          v32 = *(this + 16);
          if (v31 == v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = ((v31 - v32) << 7) - 1;
          }

          v35 = *(this + 19);
          v34 = *(this + 20);
          v36 = v34 + v35;
          if (v33 == v34 + v35)
          {
            if (v35 < 0x400)
            {
              v37 = *(this + 18);
              v38 = *(this + 15);
              if (v31 - v32 < (v37 - v38))
              {
                operator new();
              }

              if (v37 == v38)
              {
                v39 = 1;
              }

              else
              {
                v39 = (v37 - v38) >> 2;
              }

              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(v39);
            }

            *(this + 19) = v35 - 1024;
            __A.realp = *v32;
            *(this + 16) = v32 + 1;
            std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(this + 15, &__A);
            v32 = *(this + 16);
            v34 = *(this + 20);
            v36 = *(this + 19) + v34;
          }

          (*(v32 + ((v36 >> 7) & 0x1FFFFFFFFFFFFF8)))[v36 & 0x3FF] = v13;
          *(this + 20) = v34 + 1;
        }

        v40 = *(this + 21);
        v41 = *(v40 + 24 * v14);
        if (*(v41 + 4 * v16) == 1)
        {
          LODWORD(v15) = *(this + 25);
          NonlinearBeepCanceller::fcn_wola_synthesis(*(this + 106), *(*(*(this + 75) + 24 * LODWORD(v13)) + 24 * *(this + 27)), this + 30, (*(this + 60) + 24 * LODWORD(v13)), this + 36, mBuffers[v14].mData, *(this + 18), *(this + 22), *&v15, *(this + 23));
          v40 = *(this + 21);
          v41 = *(v40 + 24 * v14);
        }

        v16 = (v170 + 1);
        ++LODWORD(v13);
        v42 = *(v40 + 24 * v14 + 8) - v41;
        v17 = v170 + 1;
      }

      while (v16 < v42 >> 2);
    }

    ++v14;
  }

  while (v14 < *(this + 17));
  v171 = (this + 64);
  v43 = *(this + 40);
  if (*(this + 16))
  {
    v44 = *(this + 40);
    a2 = v162;
LABEL_40:
    v45 = 0;
    v46 = 0;
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      v48 = *p_mData;
      p_mData += 2;
      memmove(*(*(this + 45) + v45), (*(*(this + 45) + v45) + 4 * *(this + 18)), 4 * (*(this + 22) - *(this + 18)));
      memcpy((*(*(this + 45) + v45) + 4 * (*(this + 22) - *(this + 18))), v48, 4 * *(this + 18));
      NonlinearBeepCanceller::fcn_wola_analysis(*(this + 105), *(*(this + 45) + v45), *(this + 30), this + 36, *(*(this + 66) + v45), *(this + 22), *(this + 23), *(this + 26));
      ++v46;
      v49 = *(this + 16);
      v45 += 24;
    }

    while (v46 < v49);
    if (v44)
    {
      v43 = v44;
      if (v49)
      {
        for (i = 0; i < v49; ++i)
        {
          vDSP_vclr(*(*(this + 72) + 24 * i), 1, *(this + 24));
          vDSP_vclr(*(*(this + 48) + 24 * i), 1, *(this + 22));
          v51 = 0;
          v52 = *(*(this + 48) + 24 * i);
          v53 = (v52 + 4);
          v54 = (v52 + 4 * (*(this + 23) + 1));
          __D.realp = v53;
          __D.imagp = v54;
          do
          {
            if (*(this + 20) <= v51)
            {
LABEL_109:
              std::__throw_out_of_range[abi:ne200100]();
            }

            if (*this)
            {
              v55 = 0;
              v56 = 0;
              v57 = 3 * *(*(*(this + 16) + (((*(this + 19) + v51) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 19) + v51) & 0x3FF));
              do
              {
                v58 = *(*(this + 24) + 4 * v56);
                v59 = *(*(*(*(this + 81) + 24 * i) + 8 * v57) + v55);
                MEMORY[0x1E12BA990](v59, 1, this + 16, v59, 1, *(this + 22));
                v58 *= 3;
                v60 = *(*(*(this + 75) + 8 * v57) + 8 * v58);
                v61 = *(this + 23);
                v180.realp = (v60 + 4);
                v180.imagp = (v60 + 4 * (v61 + 1));
                v62 = *(*(*(*(this + 81) + 24 * i) + 8 * v57) + v55);
                __B.realp = (v62 + 4);
                __B.imagp = (v62 + 4 * (v61 + 1));
                vDSP_zvma(&v180, 1, &__B, 1, &__D, 1, &__D, 1, (v61 - 1));
                v63 = *(*(*(this + 75) + 8 * v57) + 8 * v58);
                v64 = *(*(*(*(this + 81) + 24 * i) + 8 * v57) + v55);
                v65 = *(*(this + 48) + 24 * i);
                *v65 = *v65 + (*v63 * *v64);
                v65[*(this + 23)] = v65[*(this + 23)] + (v63[*(this + 23)] * v64[*(this + 23)]);
                NonlinearBeepCanceller::fcn_smooth_psd(*(*(*(*(this + 84) + 24 * i) + 8 * v57) + v55), *(*(*(*(this + 90) + 24 * i) + 8 * v57) + v55), *(this + 1), *(this + 5), 1, *(this + 10), *(this + 24));
                MEMORY[0x1E12BA960](*(*(*(this + 78) + 8 * v57) + 8 * v58), 1, *(*(*(*(this + 84) + 24 * i) + 8 * v57) + v55), 1, *(*(*(*(this + 99) + 24 * i) + 8 * v57) + v55), 1, *(this + 24));
                MEMORY[0x1E12BA8E0](*(*(this + 72) + 24 * i), 1, *(*(*(*(this + 99) + 24 * i) + 8 * v57) + v55), 1, *(*(this + 72) + 24 * i), 1, *(this + 24));
                NonlinearBeepCanceller::fcn_complex_mult_by_psd(*(*(*(this + 75) + 8 * v57) + 8 * v58), *(*(*(*(this + 84) + 24 * i) + 8 * v57) + v55), *(*(*(*(this + 87) + 24 * i) + 8 * v57) + v55), *(this + 23));
                ++v56;
                v55 += 24;
              }

              while (v56 < *this);
            }

            ++v51;
          }

          while (v51 != v44);
          MEMORY[0x1E12BA9A0](*(*(this + 48) + 24 * i), 1, *(*(this + 66) + 24 * i), 1, *(*(this + 63) + 24 * i), 1, *(this + 22));
          v66 = *(*(this + 63) + 24 * i);
          v67 = *(*(this + 69) + 24 * i);
          v68 = *(this + 23);
          __A.realp = v66 + 1;
          __A.imagp = &v66[(v68 + 1)];
          vDSP_zvmags(&__A, 1, v67 + 1, 1, (v68 - 1));
          *v67 = *v66 * *v66;
          v67[v68] = v66[v68] * v66[v68];
          vDSP_meanv(*(*(this + 69) + 24 * i), 1, (*(this + 39) + 4 * i), *(this + 24));
          *(*(this + 39) + 4 * i) = *(this + 6) + (*(*(this + 39) + 4 * i) * *(this + 7));
          v49 = *(this + 16);
        }

        v43 = v44;
      }

      goto LABEL_59;
    }

    if (v49)
    {
      v69 = 0;
      v70 = 0;
      v71 = &a5->mBuffers[0].mData;
      v72 = &a4->mBuffers[0].mData;
      v73 = &a7->mBuffers[0].mData;
      do
      {
        v75 = *v73;
        v73 += 2;
        v74 = v75;
        v77 = *v72;
        v72 += 2;
        v76 = v77;
        v78 = *v71;
        v71 += 2;
        LODWORD(v15) = *(this + 25);
        NonlinearBeepCanceller::fcn_wola_synthesis(*(this + 106), *(*(this + 66) + v69), this + 30, (*(this + 57) + v69), this + 36, v74, *(this + 18), *(this + 22), *&v15, *(this + 23));
        memcpy(v76, v74, 4 * *(this + 18));
        vDSP_vclr(v78, 1, *(this + 18));
        vDSP_vclr(*(*(this + 51) + v69), 1, *(this + 22));
        vDSP_vclr(*(*(this + 54) + v69), 1, *(this + 22));
        ++v70;
        v69 += 24;
      }

      while (v70 < *(this + 16));
    }

LABEL_99:
    v154 = *this;
    v155 = *(this + 27);
    if (v155 + 1 == v154)
    {
      v156 = 0;
    }

    else
    {
      v156 = v155 + 1;
    }

    *(this + 27) = v156;
    if (v154)
    {
      v157 = 0;
      do
      {
        v158 = *(this + 24);
        v159 = *(v158 + v157);
        if (v159 + 1 == v154)
        {
          v160 = 0;
        }

        else
        {
          v160 = v159 + 1;
        }

        *(v158 + v157) = v160;
        v157 += 4;
      }

      while (4 * v154 != v157);
    }

    return 0;
  }

  if (!v43)
  {
    goto LABEL_99;
  }

  LODWORD(v49) = 0;
LABEL_59:
  v79 = *(this + 8);
  v167 = v43;
  if (v79 > 0.0)
  {
    v80 = 0;
    v81 = 0.0;
    v82 = v49;
    v83 = v43;
    do
    {
      if (v82)
      {
        __srca = v80;
        v84 = 0;
        v85 = *(this + 39);
        do
        {
          v86 = 3 * v84;
          v172 = v84;
          MEMORY[0x1E12BA970](*(*(this + 72) + 24 * v84), 1, v85 + 4 * v84, *(*(this + 102) + 24 * v84), 1, *(this + 24));
          v87 = *(*(this + 102) + 24 * v84);
          vDSP_svdiv(this + 9, v87, 1, v87, 1, *(this + 24));
          NonlinearBeepCanceller::fcn_complex_mult_by_psd(*(*(this + 63) + 24 * v84), *(*(this + 102) + 24 * v84), *(*(this + 63) + 24 * v84), *(this + 23));
          vDSP_vclr(*(*(this + 48) + 24 * v84), 1, *(this + 22));
          v88 = 0;
          v89 = *(*(this + 48) + 24 * v84);
          v90 = (v89 + 4);
          v91 = (v89 + 4 * (*(this + 23) + 1));
          __D.realp = v90;
          __D.imagp = v91;
          do
          {
            if (*(this + 20) <= v88)
            {
              goto LABEL_109;
            }

            if (*this)
            {
              v92 = 0;
              v93 = 0;
              v94 = *(*(*(this + 16) + (((*(this + 19) + v88) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 19) + v88) & 0x3FF));
              do
              {
                v95 = *(*(this + 24) + 4 * v93);
                v96 = *(*(*(*(this + 87) + 8 * v86) + 24 * v94) + v92);
                v97 = *(this + 23);
                v180.realp = (v96 + 4);
                v180.imagp = (v96 + 4 * (v97 + 1));
                v98 = *(*(this + 63) + 8 * v86);
                v176.realp = (v98 + 4);
                v176.imagp = (v98 + 4 * (v97 + 1));
                v99 = *(*(*(*(this + 81) + 8 * v86) + 24 * v94) + v92);
                __B.realp = (v99 + 4);
                __B.imagp = (v99 + 4 * (v97 + 1));
                vDSP_zvcma(&v180, 1, &v176, 1, &__B, 1, &__B, 1, (v97 - 1));
                v100 = *(*(*(*(this + 87) + 8 * v86) + 24 * v94) + v92);
                v101 = *(*(this + 63) + 8 * v86);
                v102 = *(this + 81);
                v103 = *(*(*(v102 + 8 * v86) + 24 * v94) + v92);
                *v103 = *v103 + (*v100 * *v101);
                v104 = *(this + 23);
                v103[v104] = v103[v104] + (v100[v104] * v101[v104]);
                v105 = *(*(*(this + 75) + 24 * v94) + 24 * v95);
                v106 = (v104 + 1);
                v180.realp = (v105 + 4);
                v180.imagp = (v105 + 4 * v106);
                v107 = *(*(*(v102 + 8 * v86) + 24 * v94) + v92);
                __B.realp = (v107 + 4);
                __B.imagp = (v107 + 4 * v106);
                if ((*(this + 8) + -1.0) == v81)
                {
                  v108 = *(*(*(*(this + 93) + 8 * v86) + 24 * v94) + v92);
                  v178.realp = (v108 + 4);
                  v178.imagp = (v108 + 4 * v106);
                  vDSP_zvmul(&v180, 1, &__B, 1, &v178, 1, (v104 - 1), 1);
                  v109 = *(*(*(this + 75) + 24 * v94) + 24 * v95);
                  v110 = *(*(*(*(this + 81) + 8 * v86) + 24 * v94) + v92);
                  v111 = *(*(*(*(this + 93) + 8 * v86) + 24 * v94) + v92);
                  *v111 = *v109 * *v110;
                  v111[*(this + 23)] = v109[*(this + 23)] * v110[*(this + 23)];
                  v112 = *(*(this + 48) + 8 * v86);
                  v113 = *(this + 22);
                  MEMORY[0x1E12BA8E0]();
                }

                else
                {
                  v114 = *(*(*(v102 + 8 * v86) + 24 * v94) + v92);
                  MEMORY[0x1E12BA990](v114, 1, this + 16, v114, 1, *(this + 22));
                  vDSP_zvma(&v180, 1, &__B, 1, &__D, 1, &__D, 1, (*(this + 23) - 1));
                  v115 = *(*(*(this + 75) + 24 * v94) + 24 * v95);
                  v116 = *(*(*(*(this + 81) + 8 * v86) + 24 * v94) + v92);
                  v117 = *(*(this + 48) + 8 * v86);
                  *v117 = *v117 + (*v115 * *v116);
                  v117[*(this + 23)] = v117[*(this + 23)] + (v115[*(this + 23)] * v116[*(this + 23)]);
                }

                ++v93;
                v92 += 24;
              }

              while (v93 < *this);
            }

            ++v88;
          }

          while (v88 != v83);
          MEMORY[0x1E12BA9A0](*(*(this + 48) + 8 * v86), 1, *(*(this + 66) + 8 * v86), 1, *(*(this + 63) + 8 * v86), 1, *(this + 22));
          v118 = *(*(this + 63) + 8 * v86);
          v119 = *(*(this + 69) + 8 * v86);
          v120 = *(this + 23);
          __A.realp = v118 + 1;
          __A.imagp = &v118[(v120 + 1)];
          vDSP_zvmags(&__A, 1, v119 + 1, 1, (v120 - 1));
          *v119 = *v118 * *v118;
          v119[v120] = v118[v120] * v118[v120];
          vDSP_meanv(*(*(this + 69) + 8 * v86), 1, (*(this + 39) + 4 * v172), *(this + 24));
          v85 = *(this + 39);
          *(v85 + 4 * v172) = *(this + 6) + (*(v85 + 4 * v172) * *(this + 7));
          v84 = v172 + 1;
          v49 = *(this + 16);
        }

        while (v172 + 1 < v49);
        v79 = *(this + 8);
        v82 = *(this + 16);
        v80 = __srca;
      }

      v81 = ++v80;
    }

    while (v79 > v80);
  }

  if (v49)
  {
    v121 = 0;
    do
    {
      v122 = 0;
      v173 = v121;
      v123 = 3 * v121;
      do
      {
        if (*(this + 20) <= v122)
        {
          goto LABEL_109;
        }

        if (*this)
        {
          v124 = 0;
          v125 = 0;
          v126 = 3 * *(*(*(this + 16) + (((*(this + 19) + v122) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 19) + v122) & 0x3FF));
          do
          {
            v127 = *(*(this + 24) + 4 * v125);
            MEMORY[0x1E12BA960](*(*(*(*(this + 99) + 8 * v123) + 8 * v126) + v124), 1, *(*(this + 102) + 8 * v123), 1, *(*(*(*(this + 99) + 8 * v123) + 8 * v126) + v124), 1, *(this + 24));
            MEMORY[0x1E12BA960](*(*(*(*(this + 99) + 8 * v123) + 8 * v126) + v124), 1, *(*(*(*(this + 84) + 8 * v123) + 8 * v126) + v124), 1, *(*(*(*(this + 99) + 8 * v123) + 8 * v126) + v124), 1, *(this + 24));
            v128 = *(*(*(*(this + 84) + 8 * v123) + 8 * v126) + v124);
            MEMORY[0x1E12BA9A0](*(*(*(*(this + 99) + 8 * v123) + 8 * v126) + v124), 1, v128, 1, v128, 1, *(this + 24));
            v129 = *(*(*(*(this + 84) + 8 * v123) + 8 * v126) + v124);
            vDSP_vabs(v129, 1, v129, 1, *(this + 24));
            v130 = *(*(this + 63) + 8 * v123);
            v131 = *(*(*(*(this + 93) + 8 * v123) + 8 * v126) + v124);
            vDSP_vmma((v130 + 4), 1, (v131 + 4), 1, (v130 + 4 * (*(this + 23) + 1)), 1, (v131 + 4 * (*(this + 23) + 1)), 1, (*(*(*(*(this + 96) + 8 * v123) + 8 * v126) + v124) + 4), 1, (*(this + 23) - 1));
            v132 = *(*(this + 63) + 8 * v123);
            v133 = *(*(*(*(this + 93) + 8 * v123) + 8 * v126) + v124);
            v134 = *(*(*(*(this + 96) + 8 * v123) + 8 * v126) + v124);
            *v134 = *v132 * *v133;
            v134[*(this + 23)] = v132[*(this + 23)] * v133[*(this + 23)];
            MEMORY[0x1E12BA970](*(*(*(this + 78) + 8 * v126) + 24 * v127), 1, this + 24, *(*(this + 69) + 8 * v123), 1, *(this + 24));
            v135 = *(*(*(*(this + 96) + 8 * v123) + 8 * v126) + v124);
            vDSP_vdiv(*(*(this + 69) + 8 * v123), 1, v135, 1, v135, 1, *(this + 24));
            NonlinearBeepCanceller::fcn_smooth_psd(*(*(*(*(this + 90) + 8 * v123) + 8 * v126) + v124), *(*(*(*(this + 96) + 8 * v123) + 8 * v126) + v124), *(this + 2), *(this + 3), 0, *(this + 29), *(this + 24));
            ++v125;
            v124 += 24;
          }

          while (v125 < *this);
        }

        ++v122;
      }

      while (v122 != v167);
      v121 = v173 + 1;
      v136 = *v171;
    }

    while (v173 + 1 < v136);
    if (v136)
    {
      v137 = 0;
      v138 = 0;
      v139 = &a5->mBuffers[0].mData;
      v140 = &a4->mBuffers[0].mData;
      v141 = &a7->mBuffers[0].mData;
      do
      {
        v142 = *v141;
        v143 = *v140;
        v144 = *v139;
        LODWORD(v15) = *(this + 25);
        NonlinearBeepCanceller::fcn_wola_synthesis(*(this + 106), *(*(this + 66) + v137), this + 30, (*(this + 57) + v137), this + 36, *v141, *(this + 18), *(this + 22), *&v15, *(this + 23));
        v145.i32[0] = *(this + 25);
        NonlinearBeepCanceller::fcn_wola_synthesis(*(this + 106), *(*(this + 63) + v137), this + 30, (*(this + 51) + v137), this + 36, v143, *(this + 18), *(this + 22), v145, *(this + 23));
        v146.i32[0] = *(this + 25);
        NonlinearBeepCanceller::fcn_wola_synthesis(*(this + 106), *(*(this + 48) + v137), this + 30, (*(this + 54) + v137), this + 36, v144, *(this + 18), *(this + 22), v146, *(this + 23));
        vDSP_svesq(v142, 1, &__C, *(this + 18));
        vDSP_svesq(v143, 1, &v174, *(this + 18));
        if (v174 > (*&__C * 3.0))
        {
          memcpy(v143, v142, 4 * *(this + 18));
        }

        ++v138;
        v137 += 24;
        v139 += 2;
        v140 += 2;
        v141 += 2;
      }

      while (v138 < *v171);
    }
  }

  v147 = *this;
  v148 = *(this + 27);
  if (v148 + 1 == v147)
  {
    v149 = 0;
  }

  else
  {
    v149 = v148 + 1;
  }

  *(this + 27) = v149;
  if (v147)
  {
    v150 = 0;
    do
    {
      v151 = *(this + 24);
      v152 = *(v151 + v150);
      if (v152 + 1 == v147)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152 + 1;
      }

      *(v151 + v150) = v153;
      v150 += 4;
    }

    while (4 * v147 != v150);
  }

  return 0;
}

void sub_1DDA9C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  operator delete(v25);
  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t NonlinearBeepCanceller::fcn_wola_analysis(const vDSP_DFT_SetupStruct *a1, uint64_t a2, uint64_t a3, const DSPComplex **a4, float *a5, unsigned int a6, unsigned int a7, float a8)
{
  v11 = a7;
  __Z.realp = a5;
  __Z.imagp = &a5[a7];
  MEMORY[0x1E12BA960](a2, 1, a3, 1, *a4, 1, a6);
  v12 = *a4;
  v15 = a8;
  vDSP_ctoz(v12, 2, &__Z, 1, v11);
  vDSP_DFT_Execute(a1, __Z.realp, __Z.imagp, __Z.realp, __Z.imagp);
  MEMORY[0x1E12BA990](__Z.realp, 1, &v15, __Z.realp, 1, v11);
  return MEMORY[0x1E12BA990](__Z.imagp, 1, &v15, __Z.imagp, 1, v11);
}

void NonlinearBeepCanceller::fcn_wola_synthesis(const vDSP_DFT_SetupStruct *a1, const float *a2, void *a3, const void **a4, DSPComplex **a5, void *a6, unsigned int a7, unsigned int a8, int16x4_t a9, unsigned int a10)
{
  v16 = *a5;
  v24 = a9.i32[0];
  memset(__Or, 0, sizeof(__Or));
  v17 = a8;
  LODWORD(__Z.realp) = 0;
  std::vector<float>::assign(__Or, a8, &__Z, a9);
  v18 = __Or[0];
  __Z.realp = __Or[0];
  __Z.imagp = &__Or[0][a10];
  vDSP_DFT_Execute(a1, a2, &a2[a10], __Or[0], __Z.imagp);
  vDSP_ztoc(&__Z, 1, v16, 2, a10);
  MEMORY[0x1E12BA990](v16, 1, &v24, v16, 1, v17);
  if (v18)
  {
    operator delete(v18);
  }

  MEMORY[0x1E12BA940](*a3, 1, *a5, 1, *a4, 1, *a4, 1, v17);
  memcpy(a6, *a4, 4 * a7);
  v19 = a8 - a7;
  memmove(*a4, *a4 + 4 * a7, 4 * v19);
  vDSP_vclr(*a4 + v19, 1, a7);
}

void sub_1DDA9C928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_1E865A5E0, MEMORY[0x1E69E5280]);
}

void NonlinearBeepCanceller::fcn_smooth_psd(NonlinearBeepCanceller *this, float *a2, float a3, float a4, float *a5, float a6, unsigned int a7)
{
  v7 = a5;
  v13 = a4;
  v14 = a3;
  v12 = a6;
  v11 = a7;
  MEMORY[0x1E12BA990](this, 1, &v14, this, 1, a7);
  MEMORY[0x1E12BA980](a2, 1, &v13, this, 1, this, 1, v11);
  if (v7)
  {
    vDSP_vabs(this, 1, this, 1, v11);
  }

  if (a6 > 0.0)
  {
    MEMORY[0x1E12BA970](this, 1, &v12, this, 1, v11);
  }
}

float NonlinearBeepCanceller::fcn_complex_mult_by_psd(NonlinearBeepCanceller *this, float *a2, float *a3, float *a4)
{
  v4 = a4;
  MEMORY[0x1E12BA960](this, 1, a2, 1, a3, 1, a4);
  MEMORY[0x1E12BA960](this + 4 * v4 + 4, 1, a2 + 1, 1, &a3[v4 + 1], 1, v4 - 1);
  result = *(this + v4) * a2[v4];
  a3[v4] = result;
  return result;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "deque");
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void *std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1DDA9D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDA9DEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDAA0EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5792(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDAA188C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAA22E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void corespeech::CSAudioCircularBufferImpl<unsigned short>::copySamples(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = a2[4];
  if (v8 >= v7)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= a3 && a4 > a3 && v8 >= a4 && v8 > a3 && v9 < a4)
  {
    *a2;
    operator new[]();
  }

  v14 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v17 = "copySamples";
    v18 = 2050;
    v19 = a3;
    v20 = 2050;
    v21 = a4;
    v22 = 2050;
    v23 = v9;
    v24 = 2050;
    v25 = v8;
    _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Invalid request: reqStartSample=%{public}lu, reqEndSample=%{public}lu, oldestSampleInBuffer: %{public}lu, latestSampleInBuffer=%{public}lu", buf, 0x34u);
  }

  *a1 = 0;
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DDAA40C0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12B98A0](v3, 0x1090C40431A8F44);

  _Unwind_Resume(a1);
}

void sub_1DDAA4EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6202(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDAA5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAA7748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDAA8640(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAAC648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterFillComplexBuffer_BlockInvoke_7321(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E12BA300](a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

void sub_1DDAAE1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDAB4D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAB5680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAB5868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAB621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7916(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDAB681C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DDAB6A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DDAB901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAC0654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDAC0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void _CSNotBackedupPreferencesSetValueForKey(void *a1, const __CFString *a2)
{
  value = a1;
  if (+[CSUtils deviceRequirePowerAssertionHeld])
  {
  }

  CFPreferencesSetAppValue(a2, value, @"com.apple.voicetrigger.notbackedup");
}

uint64_t __Block_byref_object_copy__8198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _CSPreferencesSetValueForKeyFromRoot(void *a1, const __CFString *a2)
{
  value = a1;
  if (+[CSUtils deviceRequirePowerAssertionHeld])
  {
  }

  CFPreferencesSetValue(a2, value, @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);
}

void sub_1DDAC5ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CSPreferencesValueForKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.voicetrigger");

  return v1;
}

id _CSNotBackedupPreferencesValueForKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.voicetrigger.notbackedup");

  return v1;
}

id _CSPreferencesValueForKeyFromRoot(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.voicetrigger", @"mobile", *MEMORY[0x1E695E898]);

  return v1;
}

id _CSNotBackedupPreferencesValueForKeyFromRoot(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.voicetrigger.notbackedup", @"mobile", *MEMORY[0x1E695E898]);

  return v1;
}

uint64_t *std::unique_ptr<BatchBeepCanceller>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v15 = (v2 + 600);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v15 = (v2 + 576);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v15 = (v2 + 552);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v15 = (v2 + 528);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v3 = *(v2 + 440);
    if (v3)
    {
      *(v2 + 448) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 416);
    if (v4)
    {
      *(v2 + 424) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 392);
    if (v5)
    {
      *(v2 + 400) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 368);
    if (v6)
    {
      *(v2 + 376) = v6;
      operator delete(v6);
    }

    std::unique_ptr<NonlinearBeepCanceller>::reset[abi:ne200100]((v2 + 360), 0);
    v7 = *(v2 + 192);
    if (v7)
    {
      *(v2 + 200) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 160);
    if (v8)
    {
      *(v2 + 168) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 136);
    if (v9)
    {
      *(v2 + 144) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 112);
    if (v10)
    {
      *(v2 + 120) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 88);
    if (v11)
    {
      *(v2 + 96) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 48);
    if (v12)
    {
      *(v2 + 56) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 24);
    if (v13)
    {
      *(v2 + 32) = v13;
      operator delete(v13);
    }

    v14 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v14;
      operator delete(v14);
    }

    JUMPOUT(0x1E12B98A0);
  }

  return result;
}

uint64_t *std::unique_ptr<NonlinearBeepCanceller>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 840);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 848);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    v19 = (v2 + 816);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 792);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 768);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 744);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 720);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 696);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 672);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 648);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 624);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 600);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 576);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 552);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 528);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 504);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 480);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 456);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 432);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 408);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 384);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 360);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v19 = (v2 + 336);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v5 = *(v2 + 312);
    if (v5)
    {
      *(v2 + 320) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 288);
    if (v6)
    {
      *(v2 + 296) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 264);
    if (v7)
    {
      *(v2 + 272) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 240);
    if (v8)
    {
      *(v2 + 248) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 216);
    if (v9)
    {
      *(v2 + 224) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 192);
    if (v10)
    {
      *(v2 + 200) = v10;
      operator delete(v10);
    }

    v19 = (v2 + 168);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v11 = *(v2 + 128);
    v12 = *(v2 + 136);
    *(v2 + 160) = 0;
    v13 = v12 - v11;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v11);
        v12 = *(v2 + 136);
        v11 = (*(v2 + 128) + 8);
        *(v2 + 128) = v11;
        v13 = v12 - v11;
      }

      while (v13 > 2);
    }

    if (v13 == 1)
    {
      v14 = 512;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_26:
        if (v11 != v12)
        {
          do
          {
            v15 = *v11++;
            operator delete(v15);
          }

          while (v11 != v12);
          v17 = *(v2 + 128);
          v16 = *(v2 + 136);
          if (v16 != v17)
          {
            *(v2 + 136) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        v18 = *(v2 + 120);
        if (v18)
        {
          operator delete(v18);
        }

        JUMPOUT(0x1E12B98A0);
      }

      v14 = 1024;
    }

    *(v2 + 152) = v14;
    goto LABEL_26;
  }

  return result;
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t __Block_byref_object_copy__8647(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void BatchBeepCanceller::reset(BatchBeepCanceller *this)
{
  *(this + 23) = 0;
  *(this + 228) = 0;
  *(this + 27) = 0;
  *(this + 31) = 0;
  if (*(this + 45))
  {
    std::unique_ptr<NonlinearBeepCanceller>::reset[abi:ne200100](this + 45, 0);
  }

  operator new();
}

uint64_t BatchBeepCanceller::feedFloat(BatchBeepCanceller *this, const float *a2, uint64_t a3, const float **a4)
{
  if (!a2)
  {
    *(this + 56) = 0;
    BatchBeepCanceller::reset(this);
  }

  v6 = a3;
  if (*(this + 20) >= a3)
  {
    v8 = *(this + 56);
    if (v8)
    {
      v9 = v8 >= a3;
      v10 = v8 - a3;
      if (v10 != 0 && v9)
      {
        *(this + 56) = v10;
      }

      else
      {
        *(this + 56) = 0;
        *(this + 228) = 1;
        *(this + 65) = -2;
        *(this + 71) = 0;
        *(this + 276) = 0;
        *(this + 268) = 0;
      }
    }

    if (*(this + 228))
    {
      if (a3)
      {
        memmove((*(this + 20) + 4 * *(this + 46)), a2, 4 * a3);
      }

      v11 = *(this + 46);
      v12 = v11 + v6;
      *(this + 46) = v12;
      BatchBeepCanceller::updateCrossCorrelation(this, v11, v12);
      CrossCorrelationPeak = BatchBeepCanceller::findCrossCorrelationPeak(this, v11, v12);
      if (CrossCorrelationPeak)
      {
        v14 = CrossCorrelationPeak;
        kdebug_trace();
        BatchBeepCanceller::doAdaptiveCancel(this, v14);
        kdebug_trace();
        v15 = *(this + 47);
        v16 = (*(this + 46) - v15);
        *a4 = (*(this + 20) + 4 * v15);
        BatchBeepCanceller::reset(this);
      }

      v17 = *(this + 20);
      if ((*(this + 20) + *(this + 46)) > ((*(this + 21) - v17) >> 2))
      {
        *a4 = &v17[*(this + 47)];
        BatchBeepCanceller::reset(this);
      }

      v6 = 0;
      *a4 = v17;
    }

    else
    {
      *a4 = a2;
    }
  }

  else
  {
    v6 = 0;
    *a4 = 0;
  }

  return v6;
}

BatchBeepCanceller *BatchBeepCanceller::updateCrossCorrelation(BatchBeepCanceller *this, unsigned int a2, unsigned int a3)
{
  v6 = *this;
  v7 = *(this + 1) - *this;
  v8 = v7 >> 2;
  if (v7 >> 2 <= a3)
  {
    v17 = v3;
    v18 = v4;
    v9 = this;
    v10 = v7 >> 2;
    if (v10 <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    if (v10 > a3)
    {
      a3 = v10;
    }

    v12 = v11 - v10;
    v13 = 1.0 / v8;
    v16 = v13;
    v14 = a3 - v11;
    vDSP_conv((*(this + 20) + 4 * v12), 1, v6, 1, (*(this + 24) + 4 * v12), 1, v14, v8);
    v15 = *(v9 + 24) + 4 * v12;
    return MEMORY[0x1E12BA990](v15, 1, &v16, v15, 1, v14);
  }

  return this;
}

uint64_t BatchBeepCanceller::findCrossCorrelationPeak(BatchBeepCanceller *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1) - *this;
  v4 = v3 >> 2;
  if (a2 >= (v3 >> 2))
  {
    v5 = a2 - (v3 >> 2);
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = a3 - v4;
  if (a3 >= v4)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  if (v4 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v4;
  }

  if (v7 > a2)
  {
    v8 = *(this + 31);
    v9 = v7 - a2;
    v10 = (*(this + 20) + 4 * a2);
    do
    {
      v11 = *v10++;
      v8 = v8 + (v11 * v11);
      --v9;
    }

    while (v9);
    *(this + 31) = v8;
  }

  if (v5 >= v6)
  {
    v17 = *(this + 54);
    v13 = *(this + 20);
  }

  else
  {
    v12 = 1.0 / v4;
    v13 = *(this + 20);
    v14 = *(this + 61);
    v15 = *(this + 31);
    v16 = v6 - v5;
    v17 = *(this + 54);
    v18 = (*(this + 24) + 4 * v5);
    v19 = (v13 + 4 * v5);
    do
    {
      v20 = v15;
      v21 = v12 * v20;
      if (v21 < 1.1755e-38)
      {
        v21 = 1.1755e-38;
      }

      v22 = sqrtf(v21);
      v23 = *(v19 + v3);
      v24 = *v19;
      v25 = fabsf(*v18 / (v22 * v14));
      if (v25 > v17)
      {
        *(this + 54) = v25;
        *(this + 55) = v5;
        v17 = v25;
      }

      v15 = v15 + ((v23 * v23) - (v24 * v24));
      ++v5;
      ++v18;
      ++v19;
      --v16;
    }

    while (v16);
    *(this + 31) = v15;
  }

  v26 = *(this + 46);
  v27 = *(this + 55);
  v28 = v6 - v27;
  if (((*(this + 21) - v13) >> 2 < (*(this + 20) + v26) || v17 > *(this + 64)) && v28 >= *(this + 60) && v26 > *(this + 59))
  {
    return v27;
  }

  else
  {
    return 0;
  }
}

BatchBeepCanceller *BatchBeepCanceller::doAdaptiveCancel(BatchBeepCanceller *this, unsigned int a2)
{
  v4 = *(this + 84) * *(this + 119) * *(this + 87);
  v5 = v4 - a2;
  if (v4 <= a2)
  {
    v10 = *(this + 52);
    v11 = *(this + 53) - v10;
    v12 = a2 - v4;
    v13 = *(this + 20);
    v35 = v12;
    v36 = v11 >> 2;
    if (((*(this + 21) - v13) >> 2) - v12 >= (v11 >> 2))
    {
      memcpy(v10, (v13 + 4 * v12), v11 << 30 >> 30);
    }

    v5 = 0;
  }

  else
  {
    v6 = *(this + 52);
    v7 = ((*(this + 53) - v6) >> 2) - v5;
    vDSP_vclr(v6, 1, v5);
    v8 = *(this + 20);
    v9 = *(this + 52);
    LODWORD(v36) = v7;
    if (((*(this + 53) - v9) >> 2) - v5 <= ((*(this + 21) - v8) >> 2))
    {
      memcpy((v9 + 4 * v5), v8, 4 * v7);
    }

    v35 = 0;
  }

  v14 = *(this + 84);
  v15 = *(this + 87);
  v16 = *(this + 119);
  vDSP_svesq((*(this + 46) + 4 * (v15 * v14 * v16 - *(this + 118))), 1, this + 116, (*(this + 1) - *this) >> 2);
  vDSP_svesq((*(this + 52) + 4 * (*(this + 84) * *(this + 119) * *(this + 87))), 1, this + 117, (*(this + 1) - *this) >> 2);
  v37 = sqrtf(*(this + 117) / *(this + 116));
  v17 = *(this + 49);
  v18 = *(this + 47) - *(this + 46);
  MEMORY[0x1E12BA990]();
  v19 = (*(this + 53) - *(this + 52)) >> 2;
  v20 = *(this + 87);
  if (v20 <= v19)
  {
    v21 = 0;
    LODWORD(v22) = *(this + 85);
    v23 = v19 / v20;
    do
    {
      if (v22)
      {
        v24 = 0;
        v25 = 16;
        do
        {
          memcpy(*(*(this + 63) + v25), (*(this + 52) + 4 * *(this + 87) * v21), 4 * *(this + 87));
          ++v24;
          v25 += 16;
        }

        while (v24 < *(this + 85));
      }

      if (*(this + 86))
      {
        v26 = 0;
        v27 = 16;
        do
        {
          memcpy(*(*(this + 65) + v27), (*(this + 49) + 4 * *(this + 87) * v21), 4 * *(this + 87));
          ++v26;
          v27 += 16;
        }

        while (v26 < *(this + 86));
      }

      NonlinearBeepCanceller::nl_proc(*(this + 45), *(this + 63), *(this + 65), *(this + 60), *(this + 61), *(this + 64), *(this + 62));
      LODWORD(v22) = *(this + 85);
      if (v22)
      {
        v28 = 0;
        v29 = 16;
        do
        {
          memcpy((*(this + 55) + 4 * *(this + 87) * v21), *(*(this + 60) + v29), 4 * *(this + 87));
          ++v28;
          v22 = *(this + 85);
          v29 += 16;
        }

        while (v28 < v22);
      }

      ++v21;
    }

    while (v21 < v23);
  }

  v30 = (v16 - 1) * v14;
  v31 = v30 * v15 + v35;
  v32 = v30 * v15 + v5;
  v33 = v36 - (v14 + v30 - 1) * v15;
  *(this + 71) = 0;
  *(this + 276) = 0;
  *(this + 268) = 0;
  *(this + 65) = a2;
  BatchBeepCanceller::storeReportPart1(this, a2);
  memcpy((*(this + 20) + 4 * v31), (*(this + 55) + 4 * (v32 + (*(this + 84) - 1) * *(this + 87))), 4 * v33);
  return BatchBeepCanceller::storeReportPart2(this, a2);
}

BatchBeepCanceller *BatchBeepCanceller::storeReportPart1(BatchBeepCanceller *this, unsigned int a2)
{
  v2 = *(this + 66);
  if ((v2 & 4) != 0)
  {
    v3 = (*(this + 18) - *(this + 17)) >> 2;
    v4 = v3 + a2;
    v5 = 0.0;
    if (v4 > a2)
    {
      v6 = v4 - a2;
      v7 = (*(this + 20) + 4 * a2);
      do
      {
        v8 = *v7++;
        v5 = v5 + (v8 * v8);
        --v6;
      }

      while (v6);
      v5 = sqrtf(v5 / v3);
    }

    *(this + 69) = v5;
  }

  if ((v2 & 0x18) != 0)
  {
    v9 = ((*(this + 18) - *(this + 17)) >> 2) + a2;
    v10 = 0.0;
    if (v9 > a2)
    {
      v11 = v9 - a2;
      v12 = (*(this + 20) + 4 * a2);
      do
      {
        v13 = *v12++;
        v14 = fabsf(v13);
        if (v10 < v14)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }

    *(this + 70) = v10;
  }

  if ((v2 & 0x10) != 0)
  {
    v15 = (*(this + 18) - *(this + 17)) >> 2;
    v16 = v15 + a2;
    v17 = 0.0;
    if (v16 > a2)
    {
      v18 = 0;
      v20 = v16 - a2;
      v21 = (*(this + 20) + 4 * a2);
      do
      {
        v22 = *v21++;
        v19 = *(this + 70) * 0.95;
        if (fabsf(v22) > v19)
        {
          ++v18;
        }

        --v20;
      }

      while (v20);
      v17 = v18 / v15;
    }

    *(this + 71) = v17;
  }

  return this;
}

BatchBeepCanceller *BatchBeepCanceller::storeReportPart2(BatchBeepCanceller *this, unsigned int a2)
{
  v2 = *(this + 66);
  if (v2)
  {
    v3 = *(this + 17);
    v4 = *(this + 18) - v3;
    v5 = v4 >> 2;
    if ((v4 >> 2))
    {
      v6 = (v4 >> 2);
      v7 = 0.0;
      do
      {
        v8 = *v3++;
        v7 = v7 + (v8 * v8);
        --v6;
      }

      while (v6);
      v9 = sqrtf(v7 / v5);
    }

    else
    {
      v9 = 0.0;
    }

    *(this + 67) = v9;
    if ((v2 & 2) == 0)
    {
      return this;
    }
  }

  else if ((v2 & 2) == 0)
  {
    return this;
  }

  v10 = (*(this + 18) - *(this + 17)) >> 2;
  v11 = v10 + a2;
  v12 = 0.0;
  if (v11 > a2)
  {
    v13 = v11 - a2;
    v14 = (*(this + 20) + 4 * a2);
    do
    {
      v15 = *v14++;
      v12 = v12 + (v15 * v15);
      --v13;
    }

    while (v13);
    v12 = sqrtf(v12 / v10);
  }

  *(this + 68) = v12;
  return this;
}

void BatchBeepCanceller::BatchBeepCanceller(BatchBeepCanceller *this)
{
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 213) = 0u;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 64) = 0;
  *(this + 72) = 4;
  *(this + 292) = xmmword_1DDB1F7D0;
  *(this + 77) = 2;
  *(this + 312) = xmmword_1DDB1F7E0;
  *(this + 328) = xmmword_1DDB1F7A0;
  *(this + 43) = 0x4000000001;
  *(this + 88) = 16000;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
}

{
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 213) = 0u;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 64) = 0;
  *(this + 72) = 4;
  *(this + 292) = xmmword_1DDB1F7D0;
  *(this + 77) = 2;
  *(this + 312) = xmmword_1DDB1F7E0;
  *(this + 328) = xmmword_1DDB1F7A0;
  *(this + 43) = 0x4000000001;
  *(this + 88) = 16000;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
}

uint64_t BatchBeepCanceller::initialize(BatchBeepCanceller *this, char **a2, char *a3, unsigned int *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10)
{
  v18 = *a4;
  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (BatchBeepCanceller::updateLDL(this, a4, a3))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *a2;
  v21 = a2[1] - *a2;
  v22 = v21 >> 2;
  if ((v21 >> 2))
  {
    v23 = (v21 >> 2);
    v24 = 0.0;
    do
    {
      v25 = *v20;
      v20 += 4;
      v24 = v24 + (v25 * v25);
      --v23;
    }

    while (v23);
    v26 = sqrtf(v24 / v22);
    *(this + 61) = v26;
    if (v26 >= 1.1755e-38)
    {
      *(this + 20) = *a5;
      *(this + 59) = *a6;
      *(this + 58) = *a9;
      v27 = *a8;
      if (*a8 <= *a4)
      {
        v27 = *a4;
      }

      *(this + 60) = v27;
      *(this + 64) = *a10;
      std::vector<float>::resize(this + 11, v18);
      std::vector<float>::resize(this + 14, v18);
      std::vector<float>::resize(this + 17, v18 + ((*(this + 1) - *this) >> 2));
      std::vector<float>::resize(this + 20, *a5 + *a7 + ((*(this + 1) - *this) >> 2));
      std::vector<float>::resize(this + 24, (*a7 + *a5 + 1));
      *(this + 56) = 0;
      BatchBeepCanceller::reset(this);
    }
  }

  else
  {
    *(this + 61) = 0;
  }

  return 4294967294;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v10);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t BatchBeepCanceller::updateLDL(BatchBeepCanceller *this, const unsigned int *a2, const char *a3)
{
  if (a3 && *a3)
  {
    return 0xFFFFFFFFLL;
  }

  std::vector<float>::vector[abi:ne200100](v31, *a2);
  v6 = *a2;
  if (v6)
  {
    v7 = 0;
    v8 = *this;
    v9 = (*(this + 1) - *this) >> 2;
    v10 = 1;
    v11 = v31[0];
    do
    {
      v12 = 0.0;
      if (v9 > v7)
      {
        v13 = v8;
        v14 = v10;
        v15 = v7;
        do
        {
          v16 = *v13++;
          v12 = v12 + (v8[v15] * v16);
          v15 = v14;
        }

        while (v9 > v14++);
      }

      v18 = 1.0 / v9 * v12;
      v11[v7++] = v18;
      ++v10;
    }

    while (v7 != v6);
  }

  std::vector<float>::vector[abi:ne200100](__p, (v6 * v6));
  v19 = *a2;
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = v31[0];
    v23 = v19 + 1;
    v24 = __p[0];
    v25 = *a2;
    v26 = *a2;
    do
    {
      v24[(v23 * v21++)] = *v22;
      if (v21 < v19)
      {
        v27 = v25;
        v28 = 1;
        do
        {
          v29 = v22[v28];
          v24[(v20 + v28)] = v29;
          v24[v27] = v29;
          ++v28;
          v27 += v19;
        }

        while (v26 != v28);
      }

      --v26;
      v25 += v23;
      v20 += v23;
    }

    while (v21 != v19);
  }

  LDLDecomposition::decompose(this + 24, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  return 0;
}

void sub_1DDACBFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void BatchBeepCanceller::initNonlinearBeepCanceller(BatchBeepCanceller *this)
{
  if (*(this + 45))
  {
    std::unique_ptr<NonlinearBeepCanceller>::reset[abi:ne200100](this + 45, 0);
  }

  operator new();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDACC6E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t LDLDecomposition::decompose(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  v4 = a2[1] - *a2;
  v5 = v4 >> 2;
  LODWORD(v6) = -1;
  do
  {
    v6 = (v6 + 1);
  }

  while (v6 * v6 < v5);
  result = 0xFFFFFFFFLL;
  if (v6 && v6 * v6 == v5)
  {
    std::vector<float>::resize(a1, (v4 >> 2));
    std::vector<float>::resize((a1 + 24), v6);
    v8 = 0;
    v9 = 0;
    *(a1 + 48) = v6;
    v10 = *a2;
    v11 = *(a1 + 24);
    v12 = 1;
    v13 = v6;
    v14 = *a1;
    do
    {
      v15 = v9 + v6 * v9;
      v16 = *(v10 + 4 * v15);
      v11[v9] = v16;
      v17 = v8;
      v18 = v11;
      for (i = v9; i; --i)
      {
        v20 = *v18++;
        v16 = v16 + (-(*(v14 + 4 * v17) * *(v14 + 4 * v17)) * v20);
        v11[v9] = v16;
        ++v17;
      }

      v21 = v9 + 1;
      v22 = v13;
      v23 = v12;
      if (v9 + 1 < v6)
      {
        do
        {
          v24 = (v9 + v6 * v23);
          v25 = *(v10 + 4 * v24);
          v26 = v22;
          v27 = v8;
          v28 = v11;
          for (j = v9; j; --j)
          {
            v30 = *v28++;
            v25 = v25 + (-(*(v14 + 4 * v26++) * *(v14 + 4 * v27++)) * v30);
          }

          *(v14 + 4 * v24) = v25 / v11[v9];
          ++v23;
          v22 += v6;
        }

        while (v23 != v6);
      }

      *(v14 + 4 * v15) = 1065353216;
      ++v12;
      v8 += v6;
      v13 += v6;
      ++v9;
    }

    while (v21 != v6);
    return 0;
  }

  return result;
}

void LDLDecomposition::LDLDecomposition(LDLDecomposition *this)
{
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

uint64_t LDLDecomposition::wholeSquareRoot(LDLDecomposition *this, unsigned int a2)
{
  v2 = -1;
  do
  {
    ++v2;
  }

  while (v2 * v2 < a2);
  if (v2 * v2 == a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t LDLDecomposition::ldl_solve(uint64_t *a1, uint64_t *a2, float **a3)
{
  if (!*(a1 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  v4 = a2[1] - *a2;
  v5 = *a3;
  if ((v4 & 0x3FFFFFFFCLL) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 >> 2;
    v9 = *a1;
    v10 = (v4 >> 2);
    do
    {
      v11 = *(v3 + 4 * v7);
      v5[v7] = v11;
      v12 = v6;
      v13 = v5;
      for (i = v7; i; --i)
      {
        v15 = *v13++;
        v11 = v11 - (*(v9 + 4 * v12) * v15);
        v5[v7] = v11;
        ++v12;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v10);
  }

  v16 = a3[1] - v5;
  if (v16)
  {
    v17 = 0;
    v18 = a1[3];
    do
    {
      v5[v17] = v5[v17] / *(v18 + 4 * v17);
      ++v17;
    }

    while (v16 >> 2 > v17);
  }

  v19 = v16 >> 2;
  if (v19)
  {
    v20 = 0;
    v21 = v19 - 1;
    v22 = *a1;
    v23 = v19 - 1 + v19 * v19;
    v24 = v19;
    do
    {
      if (v24 < v19)
      {
        v25 = v5[v21];
        v26 = v23;
        v27 = v20;
        v28 = &v5[v24];
        do
        {
          v29 = *v28++;
          v25 = v25 - (*(v22 + 4 * v26) * v29);
          v5[v21] = v25;
          v26 += v19;
          --v27;
        }

        while (v27);
      }

      --v21;
      --v24;
      ++v20;
      v23 += ~v19;
    }

    while (v21 < v19);
  }

  return 0;
}

double BatchBeepCanceller::rms(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = v2 - a2;
  if (v2 <= a2)
  {
    return 0.0;
  }

  v4 = a2 - v2;
  v5 = (*a1 + 4 * a2);
  result = 0.0;
  do
  {
    v7 = *v5++;
    *&result = *&result + (v7 * v7);
  }

  while (!__CFADD__(v4++, 1));
  *&result = sqrtf(*&result / v3);
  return result;
}

BatchBeepCanceller *BatchBeepCanceller::resetBeepInfo(BatchBeepCanceller *this, int a2)
{
  *(this + 65) = a2;
  *(this + 71) = 0;
  *(this + 276) = 0;
  *(this + 268) = 0;
  return this;
}

BatchBeepCanceller *BatchBeepCanceller::beepComing(BatchBeepCanceller *this, int a2)
{
  if ((*(this + 228) & 1) == 0)
  {
    *(this + 65) = -3;
    *(this + 71) = 0;
    *(this + 276) = 0;
    *(this + 268) = 0;
  }

  *(this + 56) = a2 + 1;
  return this;
}

BatchBeepCanceller *BatchBeepCanceller::recordBeepInfo(BatchBeepCanceller *this, char a2)
{
  *(this + 65) = -4;
  *(this + 71) = 0;
  *(this + 276) = 0;
  *(this + 268) = 0;
  *(this + 66) = a2 & 0x1F;
  return this;
}

uint64_t BatchBeepCanceller::lastBeepInfo(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = *(a1 + 260);
    *(a2 + 12) = *(a1 + 272);
    *a2 = v2;
  }

  return *(a1 + 260);
}

BatchBeepCanceller *BatchBeepCanceller::doBatchCancel(BatchBeepCanceller *this, unsigned int a2)
{
  v5 = this + 112;
  v4 = *(this + 14);
  v6 = *(v5 + 30);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 1);
  if (v10 != v4)
  {
    memmove(v4, (*(v5 + 10) + 4 * v9), v10 - v4);
  }

  LDLDecomposition::ldl_solve(this + 3, v5, this + 11);
  *(this + 276) = 0;
  *(this + 268) = 0;
  *(this + 71) = 0;
  *(this + 65) = a2;
  BatchBeepCanceller::storeReportPart1(this, v9);
  BatchBeepCanceller::convolve(this + 17, this, this + 11);
  v11 = *(this + 17);
  v12 = *(this + 18);
  v13 = v12 - v11;
  if (v12 != v11)
  {
    v14 = 0;
    v15 = v13 >> 2;
    v16 = *(this + 20);
    do
    {
      *(v16 + 4 * (v9 + v14)) = *(v16 + 4 * (v9 + v14)) - *(v11 + 4 * v14);
      ++v14;
    }

    while (v15 > v14);
  }

  return BatchBeepCanceller::storeReportPart2(this, v9);
}

uint64_t *BatchBeepCanceller::convolve(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = result[1] - *result;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 2;
    v7 = *a2;
    v8 = (a2[1] - *a2) >> 2;
    v9 = *a3;
    v10 = (a3[1] - *a3) >> 2;
    v11 = 1;
    do
    {
      if (v11 >= v8)
      {
        result = (v11 - v8);
      }

      else
      {
        result = 0;
      }

      v12 = v5 + 1;
      if (v5 + 1 >= v8)
      {
        v13 = v5 + 1 - v8;
      }

      else
      {
        v13 = 0;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = 0.0;
      if (v13 < v14)
      {
        result = (v5 - result);
        LODWORD(v16) = v11 - v8;
        if (v11 >= v8)
        {
          v16 = v16;
        }

        else
        {
          v16 = 0;
        }

        do
        {
          v15 = v15 + (*(v9 + 4 * v16++) * *(v7 + 4 * result));
          result = (result - 1);
        }

        while (v16 < v14);
      }

      *(v3 + 4 * v5) = v15;
      ++v11;
      ++v5;
    }

    while (v6 > v12);
  }

  return result;
}

double BatchBeepCanceller::rms(void *a1, unsigned int a2, unsigned int a3)
{
  if (a3 <= a2)
  {
    return 0.0;
  }

  v3 = a3 - a2;
  v4 = (*a1 + 4 * a2);
  result = 0.0;
  do
  {
    v6 = *v4++;
    *&result = *&result + (v6 * v6);
    --v3;
  }

  while (v3);
  *&result = sqrtf(*&result / (a3 - a2));
  return result;
}

void *BatchBeepCanceller::maxabs(void *result, unsigned int a2, unsigned int a3)
{
  v3 = 0.0;
  if (a2 < a3)
  {
    v4 = a3 - a2;
    v5 = (*result + 4 * a2);
    do
    {
      v6 = *v5++;
      v7 = fabsf(v6);
      if (v3 < v7)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

float BatchBeepCanceller::proportionAbsAboveBound(void *a1, unsigned int a2, unsigned int a3, float a4)
{
  v4 = 0.0;
  if (a3 > a2)
  {
    v5 = 0;
    v6 = a3 - a2;
    v7 = (*a1 + 4 * a2);
    do
    {
      v8 = *v7++;
      if (fabsf(v8) > a4)
      {
        ++v5;
      }

      --v6;
    }

    while (v6);
    return v5 / (a3 - a2);
  }

  return v4;
}

void sub_1DDACEA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDACEE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAD1B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9405(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getkSymptomDiagnosticReplySuccess()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  v8 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySuccessSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v6[3] = dlsym(v1, "kSymptomDiagnosticReplySuccess");
    getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSymptomDiagnosticReplySessionID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr;
  v8 = getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v6[3] = dlsym(v1, "kSymptomDiagnosticReplySessionID");
    getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSymptomDiagnosticReplyReason()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  v8 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplyReasonSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v6[3] = dlsym(v1, "kSymptomDiagnosticReplyReason");
    getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSymptomDiagnosticReplyReasonString()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr;
  v8 = getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v6[3] = dlsym(v1, "kSymptomDiagnosticReplyReasonString");
    getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getkSymptomDiagnosticReplyReasonStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplyReasonString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SymptomDiagnosticReporterLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E865B910;
    v6 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
    if (SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkSymptomDiagnosticReplyReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticReplySessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSDRDiagnosticReporterClass_block_invoke(uint64_t a1)
{
  SymptomDiagnosticReporterLibrary();
  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSDRDiagnosticReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(CSDiagnosticReporter *)v3];
  }

  return result;
}

void sub_1DDAD4B18(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDADBA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDADEA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAE0F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 136));
  _Unwind_Resume(a1);
}

void *createFloatArray(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Length must be > 0");
    __cxa_throw(exception, off_1E865A5E8, MEMORY[0x1E69E5298]);
  }

  v1 = 4 * a1;
  v2 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v2)
  {
    v6 = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(v6);
    __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v3 = v2;
  bzero(v2, v1);
  return v3;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

uint64_t nextPowerOf2(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  if ((result & (result - 1)) != 0)
  {
    return 2 * (1 << log2f(result));
  }

  return result;
}

void CSAudioSpectralMeterImpl::CSAudioSpectralMeterImpl(CSAudioSpectralMeterImpl *this, float a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *(this + 13) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  operator new();
}

void sub_1DDAE4DCC(_Unwind_Exception *a1)
{
  MEMORY[0x1E12B98A0](v3, 0x1080C402C641090);
  v6 = v1[21];
  if (v6)
  {
    v1[22] = v6;
    operator delete(v6);
  }

  v7 = v1[18];
  if (v7)
  {
    v1[19] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[16] = v8;
    operator delete(v8);
  }

  std::unique_ptr<corespeech::CSAudioCircularBufferImpl<float>>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<corespeech::CSAudioCircularBufferImpl<float>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      v2[7] = v3;
      operator delete(v3);
    }

    v4 = v2[5];
    v2[5] = 0;
    if (v4)
    {
      MEMORY[0x1E12B9880](v4, 0x1000C8052888210);
    }

    JUMPOUT(0x1E12B98A0);
  }

  return result;
}

void CSAudioSpectralMeterImpl::~CSAudioSpectralMeterImpl(CSAudioSpectralMeterImpl *this)
{
  std::unique_ptr<corespeech::CSAudioCircularBufferImpl<float>>::reset[abi:ne200100](this + 13, 0);
  v2 = *(this + 10);
  if (v2)
  {
    vDSP_destroy_fftsetup(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    free(v3);
    *(this + 7) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    free(v4);
    *(this + 8) = 0;
  }

  v5 = *(this + 11);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    free(v7);
    *(this + 9) = 0;
  }

  v8 = (this + 120);
  *(this + 16) = *(this + 15);
  std::vector<unsigned int>::shrink_to_fit(this + 5);
  v9 = (this + 144);
  *(this + 19) = *(this + 18);
  std::vector<float>::shrink_to_fit(this + 144);
  *(this + 22) = *(this + 21);
  std::vector<float>::shrink_to_fit(this + 168);
  v10 = *(this + 21);
  if (v10)
  {
    *(this + 22) = v10;
    operator delete(v10);
  }

  v11 = *v9;
  if (*v9)
  {
    *(this + 19) = v11;
    operator delete(v11);
  }

  v12 = *v8;
  if (*v8)
  {
    *(this + 16) = v12;
    operator delete(v12);
  }

  std::unique_ptr<corespeech::CSAudioCircularBufferImpl<float>>::reset[abi:ne200100](this + 13, 0);
}

void std::vector<unsigned int>::shrink_to_fit(std::vector<unsigned int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<float>::shrink_to_fit(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = 4 * (v4 >> 2);
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void CSAudioSpectralMeterImpl::setOutputFrequencyBandsInHz(std::vector<unsigned int> *this, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2[1] == *a2)
  {
    v26 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v29 = "setOutputFrequencyBandsInHz";
      _os_log_fault_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_FAULT, "%s Number of Output Frequency Bands must be > 0.", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "CSAudioSpectralMeterImpl: Number of Output Frequency Bands must be > 0.");
    __cxa_throw(exception, off_1E865A5E8, MEMORY[0x1E69E5298]);
  }

  LOBYTE(this->__begin_) = 1;
  v4 = this + 5;
  this[5].__end_ = this[5].__begin_;
  std::vector<unsigned int>::shrink_to_fit(this + 5);
  v5 = a2[1] - *a2;
  if ((this[5].__end_cap_.__value_ - v4->__begin_) < v5)
  {
    if (!((v5 >> 2) >> 62))
    {
      v6 = (this[5].__end_ - v4->__begin_);
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v5 >> 2);
    }

LABEL_24:
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  this[6].__end_ = this[6].__begin_;
  std::vector<float>::shrink_to_fit(&this[6]);
  std::vector<float>::reserve(&this[6].__begin_, (a2[1] - *a2) >> 2);
  this[7].__end_ = this[7].__begin_;
  std::vector<float>::shrink_to_fit(&this[7]);
  std::vector<float>::reserve(&this[7].__begin_, (a2[1] - *a2) >> 2);
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    end = this->__end_;
    v10 = *(&this->__begin_ + 1) / end;
    v11 = end / 2;
    v12 = 1;
    do
    {
      v13 = vcvtps_u32_f32(*(v7 + 4 * v8) / v10);
      if (v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v16 = this[5].__end_;
      value = this[5].__end_cap_.__value_;
      if (v16 >= value)
      {
        begin = v4->__begin_;
        v19 = v16 - v4->__begin_;
        v20 = v19 >> 2;
        v21 = (v19 >> 2) + 1;
        if (v21 >> 62)
        {
          goto LABEL_24;
        }

        v22 = value - begin;
        if (v22 >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v23);
        }

        *(4 * v20) = v14;
        v17 = (4 * v20 + 4);
        memcpy(0, begin, v19);
        v24 = this[5].__begin_;
        this[5].__begin_ = 0;
        this[5].__end_ = v17;
        this[5].__end_cap_.__value_ = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v16 = v14;
        v17 = v16 + 1;
      }

      this[5].__end_ = v17;
      *buf = 0;
      std::vector<float>::push_back[abi:ne200100](&this[6], buf);
      *buf = 0;
      std::vector<float>::push_back[abi:ne200100](&this[7], buf);
      v8 = v12;
      v7 = *a2;
      ++v12;
    }

    while (v8 < (a2[1] - *a2) >> 2);
  }

  LOBYTE(this->__begin_) = 0;
  v25 = *MEMORY[0x1E69E9840];
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

CSAudioSpectralMeterImpl *CSAudioSpectralMeterImpl::setSmoothingFactor(CSAudioSpectralMeterImpl *this, float a2)
{
  if (a2 > 0.99)
  {
    a2 = 0.99;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *(this + 12) = a2;
  return this;
}

CSAudioSpectralMeterImpl *CSAudioSpectralMeterImpl::reset(CSAudioSpectralMeterImpl *this)
{
  *(this + 14) = 0;
  *(this + 5) = 0;
  v1 = *(this + 13);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  return this;
}

void CSAudioSpectralMeterImpl::processFloatBuffer(CSAudioSpectralMeterImpl *this, float *a2, unint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((*this & 1) == 0)
  {
    v5 = *(this + 13);
    v6 = v5[2];
    if (*v5)
    {
      v7 = 0;
      v41 = a3 - v6;
      __n = 4 * a3;
      do
      {
        v8 = v5[3];
        v9 = *(v5[6] + 8 * v7);
        v10 = &a2[v7 * a3];
        v11 = v6 - v8;
        v12 = a3 - (v6 - v8);
        if (a3 <= v6 - v8)
        {
          memcpy(&v9[4 * v8], &a2[v7 * a3], __n);
          v12 = v8 + a3;
        }

        else
        {
          if (a3 >= v6)
          {
            v12 = (v8 + v41) % v6;
            v16 = &v10[v41];
            memcpy(&v9[4 * v12], v16, 4 * (v6 - v12));
            v14 = &v16[v6 - v12];
            v15 = v9;
            v13 = 4 * v12;
          }

          else
          {
            memcpy(&v9[4 * v8], &a2[v7 * a3], 4 * v11);
            v13 = 4 * v12;
            v14 = &v10[v11];
            v15 = v9;
          }

          memcpy(v15, v14, v13);
        }

        ++v7;
      }

      while (v7 < *v5);
    }

    else
    {
      v12 = v5[3];
    }

    v17 = v5[4] + a3;
    v5[3] = v12 % v6;
    v5[4] = v17;
    v18 = *(this + 5) + a3;
    *(this + 5) = v18;
    v19 = *(this + 1);
    if (v18 >= v19)
    {
      v20 = *(this + 14);
      do
      {
        v21 = *(this + 13);
        v22 = v20 + v19;
        v23 = *(v21 + 16);
        v24 = *(v21 + 32);
        if (v24 >= v23)
        {
          v25 = v24 - v23;
        }

        else
        {
          v25 = 0;
        }

        if (v25 > v20 || v20 >= v22 || v24 < v22 || v24 <= v20 || v25 >= v22)
        {
          v30 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v45 = "readBuffer";
            v46 = 2050;
            v47 = v20;
            v48 = 2050;
            v49 = v20 + v19;
            v50 = 2050;
            v51 = v25;
            v52 = 2050;
            v53 = v24;
            _os_log_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_DEFAULT, "%s Invalid request: reqStartSample=%{public}lu, reqEndSample=%{public}lu, oldestSampleInBuffer: %{public}lu, latestSampleInBuffer=%{public}lu", buf, 0x34u);
          }
        }

        else
        {
          v31 = *(this + 8);
          v32 = v20 % v23;
          v33 = **(v21 + 48);
          v34 = &v33[4 * v32];
          if (v32 >= v22 % v23)
          {
            v37 = v23 - v32;
            memcpy(*(this + 8), v34, 4 * (v23 - v32));
            v36 = (v31 + 4 * v37);
            v35 = 4 * (v19 - v37);
            v34 = v33;
          }

          else
          {
            v35 = 4 * v19;
            v36 = *(this + 8);
          }

          memcpy(v36, v34, v35);
        }

        MEMORY[0x1E12BA960](*(this + 8), 1, *(this + 7), 1, *(this + 8), 1, *(this + 1));
        vDSP_ctoz(*(this + 8), 2, (this + 88), 1, *(this + 1) >> 1);
        vDSP_fft_zrip(*(this + 10), (this + 88), 1, *(this + 3), 1);
        MEMORY[0x1E12BA990](*(this + 11), 1, this + 32, *(this + 11), 1, *(this + 1) >> 1);
        MEMORY[0x1E12BA990](*(this + 12), 1, this + 32, *(this + 12), 1, *(this + 1) >> 1);
        vDSP_zvabs((this + 88), 1, *(this + 9), 1, *(this + 1) >> 1);
        v19 = *(this + 1);
        v38 = *(this + 2);
        v39 = v38 - v19 + *(this + 5);
        *(this + 5) = v39;
        v20 = v19 - v38 + *(this + 14);
        *(this + 14) = v20;
      }

      while (v39 >= v19);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t CSAudioSpectralMeterImpl::getFrequencyMagnitudesResult(CSAudioSpectralMeterImpl *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(this + 15);
  v2 = *(this + 16);
  if (v1 == v2)
  {
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "getFrequencyMagnitudesResult";
      _os_log_fault_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_FAULT, "%s Output Frequency Band Limits are nil. setOutputFrequencyBands() must be called first.", &v18, 0xCu);
    }

    result = 0;
  }

  else
  {
    v4 = 0;
    v5 = (v2 - v1) >> 2;
    v8 = *(this + 18);
    result = this + 144;
    v7 = v8;
    v9 = *(result + 24);
    v10 = 1;
    do
    {
      v11 = *(v1 + 4 * v4);
      v12 = 0.0;
      if (v10 < v11)
      {
        v13 = v11 - v10;
        v14 = (*(this + 9) + 4 * v10);
        do
        {
          v15 = *v14++;
          v12 = v12 + v15;
          --v13;
        }

        while (v13);
        v10 = *(v1 + 4 * v4);
      }

      *(v9 + 4 * v4) = v12;
      *(v7 + 4 * v4) = (v12 * (1.0 - *(this + 12))) + (*(this + 12) * *(v7 + 4 * v4));
      ++v4;
    }

    while (v5 > v4);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAASystemStateMonitorClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AudioAccessoryServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E865C140;
    v7 = 0;
    AudioAccessoryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AudioAccessoryServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AASystemStateMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAASystemStateMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AudioAccessoryServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioAccessoryServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DDAE709C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CSHearstRouteStatusGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E865C1A8[a1];
  }
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_1DDA4B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_1DDA4B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DDAE82A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDAE83E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CSAdamSpeechMetricsManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DDAE85A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DDAE8888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

unint64_t isDNSAvailable()
{
  if (!nwi_state_copy())
  {
    return 0;
  }

  if (nwi_state_get_first_ifstate() && (nwi_ifstate_get_flags() & 4) != 0)
  {
    v0 = 1;
  }

  else if (nwi_state_get_first_ifstate())
  {
    v0 = (nwi_ifstate_get_flags() >> 2) & 1;
  }

  else
  {
    v0 = 0;
  }

  nwi_state_release();
  return v0;
}

BOOL isAudioQueueRecording(OpaqueAudioQueue *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(a1, 0x6171726Eu, &outData, &ioDataSize);
  if (Property)
  {
    v4 = Property;
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "isAudioQueueRecording";
      v12 = 1024;
      v13 = v4;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Error reading AudioQueue property : %d", buf, 0x12u);
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (a2)
    {
LABEL_4:
      *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
    }
  }

LABEL_5:
  result = outData == 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void isRunningListenerCallback(void *a1, OpaqueAudioQueue *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "isRunningListenerCallback";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Received isRunningListenerCallback from Audio Queue", buf, 0xCu);
  }

  v7 = a1;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ZL25isRunningListenerCallbackPvP16OpaqueAudioQueuej_block_invoke;
  v25[3] = &unk_1E865C2D8;
  v8 = v7;
  v26 = v8;
  v9 = MEMORY[0x1E12BA300](v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL25isRunningListenerCallbackPvP16OpaqueAudioQueuej_block_invoke_2;
  v23[3] = &unk_1E865C2D8;
  v10 = v8;
  v24 = v10;
  v11 = MEMORY[0x1E12BA300](v23);
  v12 = [v10 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL25isRunningListenerCallbackPvP16OpaqueAudioQueuej_block_invoke_3;
  block[3] = &unk_1E865C3A0;
  v22 = a3;
  v20 = v11;
  v21 = a2;
  v18 = v10;
  v19 = v9;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, block);

  v16 = *MEMORY[0x1E69E9840];
}

void ___ZL25isRunningListenerCallbackPvP16OpaqueAudioQueuej_block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 == 1634824814)
  {
    v3 = *(a1 + 56);
    v13 = 0;
    v4 = isAudioQueueRecording(v3, &v13);
    v5 = v13;
    if (v5)
    {
      v6 = v5;
      (*(*(a1 + 40) + 16))();
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v9 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v4)
        {
          v10 = @"YES";
        }

        *buf = 136315394;
        v15 = "isRunningListenerCallback_block_invoke";
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s isRecording: %{public}@", buf, 0x16u);
      }

      if ([*(a1 + 32) recordingAudioQueue])
      {
        v11 = 48;
        if (v4)
        {
          v11 = 40;
        }

        v6 = 0;
        (*(*(a1 + v11) + 16))();
      }

      else
      {
        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2061 userInfo:0];
        (*(*(a1 + 40) + 16))();
        (*(*(a1 + 48) + 16))();

        v6 = 0;
      }
    }
  }

  else
  {
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "isRunningListenerCallback_block_invoke_3";
      v16 = 1024;
      LODWORD(v17) = v2;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s AudioQueue listener property %d not match", buf, 0x12u);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2056 userInfo:0];
    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void handleInputBuffer(void *a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, const AudioTimeStamp *a4, unsigned int a5, const AudioStreamPacketDescription *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a1;
  if (a3 && a3->mAudioData && a3->mAudioDataByteSize)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3->mAudioData length:a3->mAudioDataByteSize];
    mHostTime = a4->mHostTime;
    v11 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL17handleInputBufferPvP16OpaqueAudioQueueP16AudioQueueBufferPK14AudioTimeStampjPK28AudioStreamPacketDescription_block_invoke;
    block[3] = &unk_1E865C350;
    v12 = v9;
    v17 = v12;
    v13 = v8;
    v18 = v13;
    v19 = mHostTime;
    dispatch_async(v11, block);

    AudioQueueEnqueueBuffer([v13 recordingAudioQueue], a3, 0, 0);
  }

  else
  {
    v14 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "handleInputBuffer";
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_INFO, "%s Received invalid Audio Queue buffer, ignore", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void ___ZL17handleInputBufferPvP16OpaqueAudioQueueP16AudioQueueBufferPK14AudioTimeStampjPK28AudioStreamPacketDescription_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) length];
  v3 = +[CSConfig inputRecordingSampleByteDepth];
  v4 = [*(a1 + 40) processedSampleCount];
  v5 = [*(a1 + 40) circularBuffer];
  v6 = v2 / v3;

  if (v5)
  {
    v7 = [*(a1 + 40) circularBuffer];
    [v7 addSamples:objc_msgSend(*(a1 + 32) numSamples:"bytes") atHostTime:{v6, *(a1 + 48)}];
  }

  v8 = [CSAudioChunk alloc];
  v9 = *(a1 + 32);
  v10 = +[CSConfig inputRecordingSampleByteDepth];
  v11 = *(a1 + 48);
  LOBYTE(v26) = +[CSConfig inputRecordingIsFloat];
  v12 = [(CSAudioChunk *)v8 initWithData:v9 numChannels:1 numSamples:v6 sampleByteDepth:v10 startSampleCount:v4 hostTime:v11 remoteVAD:0 isFloat:v26];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [*(a1 + 40) startPendingStreams];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v35 + 1) + 8 * v16++) audioStreamProvider:*(a1 + 40) audioBufferAvailable:v12];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = [*(a1 + 40) streams];
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v18)
  {
    v19 = *v32;
    do
    {
      v20 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v31 + 1) + 8 * v20++) audioStreamProvider:*(a1 + 40) audioBufferAvailable:v12];
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v18);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [*(a1 + 40) stopPendingStreams];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v27 + 1) + 8 * v24++) audioStreamProvider:*(a1 + 40) audioBufferAvailable:v12];
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  [*(a1 + 40) setProcessedSampleCount:v4 + v6];
  [*(a1 + 40) setAudioPacketDeliveryCount:{objc_msgSend(*(a1 + 40), "audioPacketDeliveryCount") + 1}];

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1DDAEF3F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DDAF059C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF2784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDAF5EA8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF61B4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF64E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAF67C8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF6F58(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAF9078(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF92E0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAF9E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAFA1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAFA540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAFA7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAFAA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DDAFAC30(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1DDAFB3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDAFB764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1DDAFC7D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[CSKeywordAnalyzerQuasar _recognizeWavData:length:]";
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s recognizeWavData failed", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDAFC7ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DDAFC9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDAFCBD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[CSKeywordAnalyzerQuasar endAudio]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s endAudio failed", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDAFCBA8);
  }

  _Unwind_Resume(a1);
}

void sub_1DDAFE2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14137(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDB04CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDB05270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDB068BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14709(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDB090A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDB0B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DDB0BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _BTSessionEventCallback(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ((a2 - 2) < 2)
  {
    v8 = v7;
    [v7 _sessionTerminated:a1];
  }

  else if (a2 == 1)
  {
    v8 = v7;
    [v7 _sessionDetached:a1];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v8 = v7;
    [v7 _sessionAttached:a1 result:a3];
  }

  v7 = v8;
LABEL_8:
}

void sub_1DDB0F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15706(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}