void sub_243888638(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_2438885CC(v6, a2);
}

void sub_2438886B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_2438869E4();
  if (v14)
  {
    v15 = v14;
    sub_243885FF8(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888754(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = a1;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_2438886B0(v15, v12, v14, a5, v18, v20, a7);
  sub_243873E40(v18, v20);
}

id CKCodeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_243888934()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v3 = sub_24388A4D4();
  v6.receiver = v0;
  v6.super_class = v4(v3);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_2438889AC(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v6 = type metadata accessor for Optional();
  sub_243876174(v6);
  (*(v7 + 8))(&a1[v4]);
  sub_24388A3BC();
  v9 = *(v8 + 120);
  v10 = *((v3 & v2) + 0x58);
  v11 = type metadata accessor for Optional();
  sub_243876174(v11);
  (*(v12 + 8))(&a1[v9]);
  sub_24388A3BC();
  v14 = *&a1[*(v13 + 128) + 8];

  sub_24388A3BC();

  sub_24388A3BC();
  v17 = *&a1[*(v16 + 144)];

  sub_24388A3BC();
  v19 = *&a1[*(v18 + 152)];

  sub_24388A3BC();

  sub_24388A3BC();
  v22 = sub_24388A658(*(v21 + 168));
  sub_243880F5C(v22, v24, *(v23 + 16), *(v23 + 24), *(v23 + 32));
  sub_24388A3BC();

  sub_24388A3BC();
  v27 = *&a1[*(v26 + 192)];

  sub_24388A3BC();
  v29 = sub_24388A658(*(v28 + 200));
  sub_243871FB4(v29);
  sub_24388A3BC();
  v31 = sub_24388A658(*(v30 + 208));
  sub_243871FB4(v31);
  sub_24388A3BC();
  v33 = sub_24388A658(*(v32 + 216));
  sub_243871FB4(v33);
  sub_24388A3BC();
  v35 = sub_24388A658(*(v34 + 240));
  sub_243871FB4(v35);
  sub_24388A3BC();
  v37 = sub_24388A658(*(v36 + 248));

  return sub_243871FB4(v37);
}

char *sub_243888BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_243873884(&qword_27ED94B18, &qword_24389DF48);
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

uint64_t sub_243888CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243888D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243888DA8(uint64_t *a1, uint64_t *a2)
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

size_t sub_243888DF0(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_243888EEC(v8, v7);
  v10 = *(*(type metadata accessor for Ckcode_RecordTransport() - 8) + 80);
  sub_24388A634();
  if (v5)
  {
    sub_243889018(a4 + v11, v8, v9 + v11, type metadata accessor for Ckcode_RecordTransport);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_243888EEC(uint64_t a1, uint64_t a2)
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

  sub_243873884(&unk_27ED94AE0, &unk_24389E3D0);
  v4 = *(type metadata accessor for Ckcode_RecordTransport() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

uint64_t sub_243889018(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_243876174(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_24388A774();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_24388A774();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

uint64_t sub_2438890D8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CKCodeOperation.request.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 264))();
}

uint64_t dispatch thunk of CKCodeOperation.request.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 272))();
}

uint64_t dispatch thunk of CKCodeOperation.codeService.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 336))();
}

uint64_t dispatch thunk of CKCodeOperation.codeService.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 344))();
}

uint64_t dispatch thunk of CKCodeOperation.dataProtectionType.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 432))();
}

uint64_t dispatch thunk of CKCodeOperation.dataProtectionType.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 440))();
}

uint64_t dispatch thunk of CKCodeOperation.permittedRemoteMeasurement.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 456))();
}

uint64_t dispatch thunk of CKCodeOperation.permittedRemoteMeasurement.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 464))();
}

uint64_t dispatch thunk of CKCodeOperation.shouldSendRecordPCSKeys.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 480))();
}

uint64_t dispatch thunk of CKCodeOperation.shouldSendRecordPCSKeys.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 488))();
}

uint64_t dispatch thunk of CKCodeOperation.perRecordResultBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 560))();
}

uint64_t dispatch thunk of CKCodeOperation.perRecordResultBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 568))();
}

uint64_t dispatch thunk of CKCodeOperation.perRecordProgressBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 584))();
}

uint64_t dispatch thunk of CKCodeOperation.perRecordProgressBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 592))();
}

uint64_t dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 608))();
}

uint64_t dispatch thunk of CKCodeOperation.codeOperationResultBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 616))();
}

uint64_t dispatch thunk of CKCodeOperation.dropInMemoryAssetContentASAP.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 632))();
}

uint64_t dispatch thunk of CKCodeOperation.dropInMemoryAssetContentASAP.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 640))();
}

uint64_t dispatch thunk of CKCodeOperation.shouldFetchAssetContentInMemory.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 656))();
}

uint64_t dispatch thunk of CKCodeOperation.shouldFetchAssetContentInMemory.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 664))();
}

uint64_t dispatch thunk of CKCodeOperation.incompleteResponsePreviewBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 680))();
}

uint64_t dispatch thunk of CKCodeOperation.incompleteResponsePreviewBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 688))();
}

uint64_t sub_243889AEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243889B28(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_243889B44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243889B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_243889B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_243889BE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_243889C58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243889CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243889CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243889D64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243889E0C;
  v5 = sub_243876224();

  return v6(v5);
}

uint64_t sub_243889E0C()
{
  sub_24388A7BC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_24388A7B0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_243889EF8()
{
  _Block_release(*(v0 + 16));

  v1 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_243889F30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24388A37C;
  v5 = sub_243876224();

  return v6(v5);
}

unint64_t sub_243889FD8()
{
  result = qword_27ED94B00;
  if (!qword_27ED94B00)
  {
    sub_24388A094(255, &unk_27ED94AF0, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94B00);
  }

  return result;
}

uint64_t sub_24388A094(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_24388A0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_243876174(v4);
  v6 = *(v5 + 16);
  v7 = sub_243876224();
  v8(v7);
  return a2;
}

uint64_t sub_24388A130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_243876174(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24388A1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_243876174(v4);
  v6 = *(v5 + 32);
  v7 = sub_243876224();
  v8(v7);
  return a2;
}

void *sub_24388A220(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24388A264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_24388EE08(a1, *(v1 + 48));
}

uint64_t sub_24388A274(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_24388EDE0(a1, *(v1 + 48));
}

uint64_t sub_24388A284()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_24388A2AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_24388A2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24388EDA8();
}

uint64_t sub_24388A2E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a1;
  v7 = a2;
  v8 = a3 & 1;
  return v4(&v9, &v7);
}

uint64_t sub_24388A32C(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, *(a2 + 8));
}

uint64_t sub_24388A3F4()
{

  return swift_beginAccess();
}

uint64_t sub_24388A434()
{

  return swift_beginAccess();
}

uint64_t sub_24388A458()
{
  v2 = *v0;
  v1 = v0[1];
  sub_243871FA4(v2);
  return v2;
}

uint64_t sub_24388A480()
{

  return swift_beginAccess();
}

uint64_t sub_24388A4B4()
{

  return swift_beginAccess();
}

uint64_t sub_24388A580(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t sub_24388A590()
{

  return swift_beginAccess();
}

uint64_t sub_24388A61C()
{

  return swift_beginAccess();
}

uint64_t sub_24388A658@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_24388A6A4@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x282200288](v1, 0xD000000000000026, v2 | 0x8000000000000000, a1 + 8);
}

void sub_24388A744(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_24388A750()
{

  JUMPOUT(0x245D42E40);
}

uint64_t sub_24388A788()
{
  v2 = *(v0 + 96);
  *(v1 - 144) = *(v0 + 80);
  *(v1 - 128) = v2;
  return 0;
}

uint64_t sub_24388A824()
{
  v4 = *v1;
  v5 = v1[1];
  *v1 = v2;
  v1[1] = v0;

  return sub_243871FB4(v4);
}

id CKCodeService.databaseScope.getter()
{
  v1 = [v0 implementation];
  v2 = [v1 boxedDatabaseScope];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  return v3;
}

void CKCodeService.add<A, B>(_:)(void *a1)
{
  v3 = [v1 implementation];
  v4 = [v1 container];
  v5 = [v4 convenienceConfiguration];

  sub_24388A970(a1, v1, v5);
}

id sub_24388A970(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = a2;
  sub_243880AAC(a2);
  [a1 applyConvenienceConfiguration_];

  return [v4 _addPreparedOperation_];
}

void sub_24388AA00()
{
  sub_24388BC94();
  sub_24388A094(0, &unk_27ED94CC0, 0x277CBC668);

  v12 = CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)(v3, v0);

  v4 = CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v2, v1);
  sub_24388BD00(v4, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKDatabase.serializedModifications(recordsToSave:recordIDsToDelete:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388AACC()
{
  sub_24388BCF4();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 container];
  v0[6] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v4 = sub_24388BCB4(v3);

  return sub_24388AD54(v4, v5, v6, v7);
}

uint64_t sub_24388ABB8()
{
  sub_24388BCF4();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_24388BC74();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24388ACF0, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    v10 = sub_24388BCD0();

    return v11(v10);
  }
}

uint64_t sub_24388ACF0()
{
  sub_24388A7BC();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_24388AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388AD70()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_24388AE80;
  v8 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000055, 0x80000002438A1C20, sub_24388BAC4, v4, v8);
}

uint64_t sub_24388AE80()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_24388BC74();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = sub_24388BC40;
  }

  else
  {
    v10 = *(v3 + 72);

    v9 = sub_24388AF84;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_24388AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *, id, uint64_t, uint64_t))
{
  v11 = [v5 implementation];
  v12 = [v5 container];
  v13 = [v12 convenienceConfiguration];

  a5(a1, a2, v5, v13, a3, a4);
}

void sub_24388B080()
{
  sub_24388BC94();
  sub_24388A094(0, &qword_27ED94CB0, 0x277CBC2A8);
  sub_243873DE8(v3, v0);
  v12 = sub_24388B80C(v3, v0);

  v4 = CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v2, v1);
  sub_24388BD00(v4, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t CKDatabase.deserializedModifications(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388B14C()
{
  sub_24388BCF4();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 container];
  v0[6] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v4 = sub_24388BCB4(v3);

  return sub_24388B370(v4, v5, v6, v7);
}

uint64_t sub_24388B238()
{
  sub_24388BCF4();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_24388BC74();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24388BC44, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    v10 = sub_24388BCD0();

    return v11(v10);
  }
}

uint64_t sub_24388B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_24388BC48();
}

uint64_t sub_24388B38C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v9 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_243873884(&qword_27ED94CA0, &qword_24389DF78);
  *v6 = v0;
  v6[1] = sub_24388B4B4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000004FLL, 0x80000002438A1BD0, sub_24388B9F8, v4, v7);
}

uint64_t sub_24388B4B4()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v3 = v2;
  sub_24388BC84();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_24388BC74();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = sub_24388B5B8;
  }

  else
  {
    v10 = *(v3 + 72);

    v9 = sub_24388AF84;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24388B5B8()
{
  sub_24388A7BC();
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_24388B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v7 = sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  sub_24388AA00();
}

uint64_t sub_24388B78C(void *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_243873DE8(a1, a2);
    sub_243873884(&qword_27ED94CB8, &qword_24389DF88);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_24388B80C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithSerializedModifications_];

  sub_243873E40(a1, a2);
  return v6;
}

uint64_t sub_24388B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v7 = sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  sub_24388B080();
}

uint64_t sub_24388BA10(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_243873884(&qword_27ED94CA8, &qword_24389DF80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_24388BAF4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_243873884(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24388BBA0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  v10 = *(sub_243873884(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3 & 1, v11);
}

uint64_t sub_24388BCB4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

id sub_24388BD00(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

id CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_24388C1B0;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388C1B8;
    v9[3] = &unk_28569B550;
    v7 = _Block_copy(v9);

    [v3 setDeserializeCompletionBlock_];
    _Block_release(v7);
    return sub_243871FB4(a1);
  }

  else
  {

    return [v2 setDeserializeCompletionBlock_];
  }
}

uint64_t (*CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 deserializeCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24388C2B0;
    *(v4 + 24) = v3;
    return sub_24388C2B8;
  }

  return result;
}

uint64_t sub_24388BEF4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_24388C3F4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_24388BF64(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24388C3B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_243871FA4(v3);
  return CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v6, v5);
}

void sub_24388BFF4(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

void sub_24388C0D8(void *a1, uint64_t a2, id a3, void (*a4)(id, uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    a4(a3, 0, 1);
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    a4(v7, v8, 0);
  }
}

uint64_t sub_24388C1B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_24388C298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24388C2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a3)
  {
    a1 = 0;
    a2 = 0;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, v7);
}

id (*CKDeserializeRecordModificationsOperation.deserializeResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDeserializeRecordModificationsOperation.deserializeResultBlock.getter();
  a1[1] = v3;
  return sub_24388C348;
}

id sub_24388C348(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_24388C428();
    sub_243871FA4(v5);
    v6 = sub_24388C428();
    CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v6, v7);
    v8 = sub_24388C428();

    return sub_243871FB4(v8);
  }

  else
  {
    v10 = sub_24388C428();
    return CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter(v10, v11);
  }
}

uint64_t sub_24388C3B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_24388C3F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

void CKMergeable.merge(_:)(void *a1, uint64_t a2, void (**a3)(unint64_t, void))
{
  v5 = v4;
  v97 = a3;
  v105 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for Logger();
  sub_24387C120();
  v98 = v9;
  v99 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v93 = &v87[-v16];
  MEMORY[0x28223BE20](v17);
  v94 = &v87[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v87[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v87[-v23];
  sub_24387C120();
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v87[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *(v31 + 16);
  v95 = v3;
  v32(v30, v3, a2, v28);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  v96 = a2;
  if (swift_dynamicCast())
  {
    sub_24388DB40(v100, v102);
    CKLogDistributedSync.getter();
    v92 = a1;
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      swift_slowAlloc();
      v94 = v14;
      v36 = sub_24388DE98();
      *v8 = 138412290;
      *(v8 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      _os_log_impl(&dword_243870000, v34, v35, "Merging record value into versioned mergeable %@", v8, 0xCu);
      sub_24388DA9C(v36, qword_27ED949D0, ":\x1B");
      v5 = v4;
      sub_24388A750();
      v8 = v14;
      v14 = v94;
      sub_24388A750();
    }

    v38 = v99[1];
    v39 = v8;
    v38(v24, v8);
    v40 = v103;
    v41 = v104;
    sub_24388A220(v102, v103);
    v42 = (*(v41 + 16))(v40, v41);
    v43 = v103;
    v44 = v104;
    sub_24388A220(v102, v103);
    v45 = [v33 deliverableDeltasWithCurrentStateVector:v42 usingDeliveryRequirements:{(*(v44 + 24))(v43, v44)}];

    if (v45)
    {
      sub_24388DAFC();
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (sub_24387233C(v46))
      {
        v97[2](v46, v96);

        if (v5)
        {

          sub_24387E12C(v102);
LABEL_26:
          v77 = *MEMORY[0x277D85DE8];
          return;
        }

        v8 = v39;
        [v33 didMergeDeltas_];
      }

      else
      {

        v8 = v39;
      }

      a1 = v92;
    }

    else
    {
      v8 = v39;
      a1 = v92;
    }

    sub_24387E12C(v102);
LABEL_23:
    CKLogDistributedSync.getter();
    v71 = a1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&dword_243870000, v72, v73, "Done merging record value %@", v74, 0xCu);
      sub_24388DA9C(v75, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    v38(v14, v8);
    goto LABEL_26;
  }

  v91 = v4;
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  sub_24388DA9C(v100, &unk_27ED94CD8, &unk_24389DFA8);
  CKLogDistributedSync.getter();
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    swift_slowAlloc();
    v50 = sub_24388DE98();
    *v8 = 138412290;
    *(v8 + 4) = v47;
    *v50 = v47;
    v51 = v47;
    _os_log_impl(&dword_243870000, v48, v49, "Merging record value into non-versioned mergeable %@", v8, 0xCu);
    sub_24388DA9C(v50, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    v8 = v14;
    sub_24388A750();
  }

  v52 = v21;
  v38 = v99[1];
  v38(v52, v8);
  v53 = v47;
  v54 = [v47 multiValueRegister];
  v55 = [v54 stateVector];
  v56 = [v54 deltaDeliveryRequirements];
  v99 = v53;
  v57 = [v53 deliverableDeltasWithCurrentStateVector:v55 usingDeliveryRequirements:v56];

  if (!v57)
  {

    goto LABEL_23;
  }

  v58 = sub_24388DAFC();
  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!sub_24387233C(v59))
  {

    goto LABEL_23;
  }

  v92 = v8;
  v102[0] = 0;
  if (![v54 mergeDeltas:v57 error:v102])
  {
    v70 = v102[0];

    _convertNSErrorToError(_:)();
    swift_willThrow();

    goto LABEL_26;
  }

  v90 = v58;
  v60 = v102[0];
  CKLogDistributedSync.getter();

  v61 = v54;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v89 = v62;
    v65 = v64;
    v66 = swift_slowAlloc();
    v88 = v63;
    v67 = v61;
    v68 = v66;
    *v65 = 134218242;
    *(v65 + 4) = sub_24387233C(v59);

    *(v65 + 12) = 2112;
    *(v65 + 14) = v67;
    *v68 = v67;
    v69 = v67;
    _os_log_impl(&dword_243870000, v89, v88, "Merged %ld deltas into multi-value register %@", v65, 0x16u);
    sub_24388DA9C(v68, qword_27ED949D0, ":\x1B");
    v61 = v67;
    sub_24388A750();
    sub_24388A750();
  }

  else
  {
  }

  v8 = v92;
  v92 = a1;
  v38(v94, v8);
  v78 = [v61 contents];
  if (v78)
  {
    v79 = v78;

    v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v91;
    v97[2](v80, v96);
    if (v81)
    {

      goto LABEL_26;
    }

    CKLogDistributedSync.getter();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v97 = v61;
      *v84 = 0;
      _os_log_impl(&dword_243870000, v82, v83, "Merged multi-value register changes into mergeable", v84, 2u);
      v61 = v97;
      sub_24388A750();
    }

    v38(v93, v8);
    v85 = [v61 persistedState];
    v86 = v99;
    [v99 setMultiValueRegisterState_];

    [v86 didMergeDeltas_];
    a1 = v92;
    goto LABEL_23;
  }

  __break(1u);
}

id CKMergeable.merge(_:)(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([a1 mergeIntoMergeable:v1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id CKMergeableRecordValue.addDeltasToSave(from:)(void *a1)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  v4 = a1[4];
  sub_24388A220(a1, v3);
  v5 = sub_24388CFF0(v3, v4);
  v9[0] = 0;
  LODWORD(v2) = [v2 addDeltasToSaveFromMergeable:v5 error:v9];

  if (v2)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24388CFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24387C120();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = *(v7 + 16);
  v15(v21 - v16, v3, a1, v14);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  if (swift_dynamicCast())
  {
    sub_24388DB40(v21, v23);
    sub_24388DDFC(v23, v21);
    v17 = objc_allocWithZone(type metadata accessor for BoxedCKVersionedMergeable());
    v18 = sub_24388D708(v21);
    sub_24387E12C(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_24388DA9C(v21, &unk_27ED94CD8, &unk_24389DFA8);
    v19 = type metadata accessor for BoxedCKMergeable();
    (v15)(v12, v3, a1);
    return sub_24388DD18(v12, v19, a1, a2);
  }

  return v18;
}

void *CKMergeableDelta.data.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 dataWithError_];
  v2 = v6[0];
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_24388D26C()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v8);
  v2 = v8[4];
  sub_24388A220(v8, v8[3]);
  v3 = *(v2 + 8);
  v4 = sub_24388DE84();
  v6 = v5(v4);
  sub_24387E12C(v8);
  return v6;
}

uint64_t sub_24388D3F0()
{
  v1 = v0 + OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_24388DC18(v1, *(v1 + 24));
  v3 = *(v2 + 16);
  v4 = sub_24388DE84();
  v5(v4);
  return swift_endAccess();
}

uint64_t sub_24388D598()
{
  v11 = 0x203A6465786F42;
  v12 = 0xE700000000000000;
  v1 = (v0 + OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable);
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A220(v1, v1[3]);
  sub_24387C120();
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - v6, v5);
  v8 = String.init<A>(describing:)();
  MEMORY[0x245D42450](v8);

  return v11;
}

id sub_24388D708(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_24388A220(a1, v4);
  sub_24387C120();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = *(v7 + 16);
  v14 = v13(&v18 - v12, v11);
  v15 = MEMORY[0x28223BE20](v14);
  (v13)(&v18 - v12, &v18 - v12, v4, v15);
  v16 = sub_24388DC68(&v18 - v12, v2, v4, *(v5 + 8));
  (*(v7 + 8))(&v18 - v12, v4);
  sub_24387E12C(a1);
  return v16;
}

uint64_t sub_24388D854()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v9);
  sub_243873884(&qword_27ED94DC8, &unk_24389E040);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  sub_24388DE60();
  v2 = v7;
  v3 = v8;
  sub_24388A220(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_24387E12C(v6);
  return v4;
}

uint64_t sub_24388D958()
{
  v1 = OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable;
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388DDFC(v0 + v1, v9);
  sub_243873884(&qword_27ED94DC8, &unk_24389E040);
  sub_243873884(&qword_27ED94CD0, &qword_24389DFA0);
  sub_24388DE60();
  v2 = v7;
  v3 = v8;
  sub_24388A220(v6, v7);
  v4 = (*(v3 + 24))(v2, v3);
  sub_24387E12C(v6);
  return v4;
}

id sub_24388DA64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24388DA9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_243873884(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24388DAFC()
{
  result = qword_27ED94CE8;
  if (!qword_27ED94CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED94CE8);
  }

  return result;
}

uint64_t sub_24388DB40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24388DC18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_24388DC68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_24387FE78(v11);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  sub_24388DDFC(v11, a2 + OBJC_IVAR____TtC12CloudKitCode16BoxedCKMergeable_mergeable);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for BoxedCKMergeable();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_24387E12C(v11);
  return v8;
}

id sub_24388DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for BoxedCKMergeable());
  (*(v7 + 32))(v10, a1, a3);
  return sub_24388DC68(v10, v11, a3, a4);
}

uint64_t sub_24388DDFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24388DE60()
{

  return swift_dynamicCast();
}

uint64_t sub_24388DE98()
{

  return swift_slowAlloc();
}

void Ckcode_RecordTransport.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = xmmword_24389D0D0;
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = a2 + *(v4 + 20);
  UnknownStorage.init()();
  *(a2 + *(v4 + 24)) = xmmword_24389CB00;
  v6 = [a1 valueStore];
  sub_243873884(&qword_27ED94DD0, &qword_24389E060);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24389E050;
  *(v7 + 32) = sub_24388E154();
  sub_243873884(&qword_27ED94DD8, &unk_24389E068);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19[4] = sub_24388E21C;
  v19[5] = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24388E220;
  v19[3] = &unk_28569B578;
  v9 = _Block_copy(v19);

  v10 = [v6 containsValueOfClasses:isa options:1 passingTest:v9];

  _Block_release(v9);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (v10)
  {
    v11 = *MEMORY[0x277CBE660];
    v12 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v13 = sub_24388E3C4(v11, 0xD000000000000045, 0x80000002438A1DC0, 0);
    [v13 raise];
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeWithCoder_];
    v15 = [v14 encodedData];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_243879A04(*a2, a2[1]);
    *a2 = v16;
    a2[1] = v18;
  }
}

unint64_t sub_24388E154()
{
  result = qword_280D49520;
  if (!qword_280D49520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D49520);
  }

  return result;
}

id sub_24388E198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243889CD8(a3, v6);
  sub_24388E154();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = [v5 shouldReadAssetContentUsingClientProxy];

  return v3;
}

uint64_t sub_24388E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v10[3] = swift_getObjectType();
  v10[0] = a3;
  swift_unknownObjectRetain();
  LOBYTE(a3) = v5(v6, v8, v10);

  sub_24387E12C(v10);
  return a3 & 1;
}

uint64_t sub_24388E2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CKRecord.init(_:)(uint64_t *a1)
{
  v2 = a1[1];
  if ((~v2 & 0x3000000000000000) == 0 || (v2 & 0x2000000000000000) != 0)
  {
    sub_24388E48C(a1);
  }

  else
  {
    v3 = *a1;
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v5 = sub_243879908();
    sub_2438799B4(v5, v6);
    v7 = sub_243879908();
    sub_2438799C8(v7, v8);
    v9 = sub_243879908();
    v11 = sub_24388E4E8(v9, v10);
    v14 = v11;
    if (v11)
    {
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

      v15 = sub_243879908();
      sub_243879A04(v15, v16);
      sub_24388E48C(a1);
      if (v12)
      {
        return v12;
      }
    }

    else
    {
      sub_24388E48C(a1);
      v17 = sub_243879908();
      sub_243879A04(v17, v18);
    }
  }

  return 0;
}

id sub_24388E3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8.super.isa = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x245D42400](a2, a3);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_24388E48C(uint64_t a1)
{
  v2 = type metadata accessor for Ckcode_RecordTransport();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24388E4E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:isa error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_243873E40(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void *CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (a1)
  {
    sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
    v6 = v5;
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8 = v4;
    v7.super.isa = 0;
  }

  [v5 setRecordsToSave_];

  if (a2)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  [v5 setRecordIDsToDelete_];

  return v5;
}

id CKSerializeRecordModificationsOperation.serializeResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_24388EACC;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388EAD4;
    v9[3] = &unk_28569B5A0;
    v7 = _Block_copy(v9);

    [v3 setSerializeCompletionBlock_];
    _Block_release(v7);
    return sub_243871FB4(a1);
  }

  else
  {

    return [v2 setSerializeCompletionBlock_];
  }
}

uint64_t (*CKSerializeRecordModificationsOperation.serializeResultBlock.getter())(uint64_t a1, unint64_t a2, char a3)
{
  result = [v0 serializeCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24388EB98;
    *(v4 + 24) = v3;
    return sub_24388EBA0;
  }

  return result;
}

uint64_t sub_24388E8A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKSerializeRecordModificationsOperation.serializeResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_24388C3F4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_24388E914(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24388C3B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_243871FA4(v3);
  return CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v6, v5);
}

void sub_24388E9A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_24388EA3C(uint64_t a1, unint64_t a2, id a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a3;
    (a4)(a3, 0, 1);
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      a1 = 0;
      a2 = 0xC000000000000000;
    }

    a4(a1, a2);
  }
}

uint64_t sub_24388EAD4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_2438729FC(v4, v9);
}

uint64_t sub_24388EB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24388EBA0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a3)
  {
    a1 = 0;
    a2 = 0xF000000000000000;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, v7);
}

id (*CKSerializeRecordModificationsOperation.serializeResultBlock.modify(uint64_t (**a1)(uint64_t a1, unint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKSerializeRecordModificationsOperation.serializeResultBlock.getter();
  a1[1] = v3;
  return sub_24388EC30;
}

id sub_24388EC30(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_24388C428();
    sub_243871FA4(v5);
    v6 = sub_24388C428();
    CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v6, v7);
    v8 = sub_24388C428();

    return sub_243871FB4(v8);
  }

  else
  {
    v10 = sub_24388C428();
    return CKSerializeRecordModificationsOperation.serializeResultBlock.setter(v10, v11);
  }
}

void CodeOperation.__allocating_init(service:functionName:request:destinationServer:)()
{
  sub_243899BAC();
  v1 = v0;
  sub_243899AD8();
  v2 = sub_243899AA0();
  CodeOperation.init(service:functionName:request:destinationServer:)(v2, v3, v4, v5, v6, v1);
  sub_243899B78();
}

uint64_t sub_24388ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2438999B0();
  v7 = sub_243898F0C(v4, v5, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a3 + 56) + 8 * v7);
}

void *sub_24388ED30(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_243898EB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_24388EE3C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for Ckcode_RecordTransport();
      sub_243876218();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      v7 = *(v6 + 80);
      sub_24388A634();
      for (i = v8 + v9; ; i += *(v6 + 72))
      {
        --v2;
        sub_24388A538();
        sub_24389955C();
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_24388A130(v3, type metadata accessor for Ckcode_RecordTransport);
    return v5;
  }

  return result;
}

void sub_24388EF18(uint64_t a1, void *a2)
{
  sub_24388A220((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_24388EFA4();
  }

  else
  {

    sub_24388EFF0();
  }
}

uint64_t sub_24388F02C()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94E78, &qword_24389E340);
  sub_243876184(v2);
  v4 = *(v3 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  type metadata accessor for TaskPriority();
  sub_243899A50();
  sub_243873554(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v0;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24389E350;
  v13[5] = v12;
  sub_2438979EC(0, 0, v7, &unk_24389E360, v13);
}

void sub_24388F12C(uint64_t a1)
{
  sub_243899BE0(a1);
  v2;
  v4 = v1;
  v3(v2, v1);

  sub_243899C30();
}

void sub_24388F1A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_243899A18();
  v3(v2);
}

void sub_24388F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_243899BAC();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_243873884(&qword_27ED94E68, &qword_24389E328);
  sub_243876184(v28);
  v30 = *(v29 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v35 = *(v27 + 32);
  v34 = *(v27 + 40);
  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = type metadata accessor for URL();
    v37 = 0;
  }

  else
  {
    v36 = type metadata accessor for URL();
    v37 = 1;
  }

  sub_243873554(v33, v37, 1, v36);

  v38 = v23;
  v39 = v21;
  v35(v33, v23, v21);

  sub_24387605C(v33, &qword_27ED94E68, &qword_24389E328);
  sub_243899B78();
}

void sub_24388F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_243899BAC();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  sub_243899B18();
  v23 = sub_243873884(&qword_27ED94E68, &qword_24389E328);
  sub_243876184(v23);
  v25 = *(v24 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  sub_2438994F8();
  v29 = type metadata accessor for URL();
  v31 = 0;
  if (sub_243873AA4(v28, 1, v29) != 1)
  {
    URL._bridgeToObjectiveC()(v30);
    v31 = v32;
    (*(*(v29 - 8) + 8))(v28, v29);
  }

  if (v22)
  {
    v22 = _convertErrorToNSError(_:)();
  }

  v33 = sub_243899AC8();
  v34(v33, v31, v18, v22);

  sub_243899B78();
}

void sub_24388F450(uint64_t a1)
{
  sub_243899BE0(a1);
  v7 = v2;
  v4 = v1;
  v3(v7, v1);

  sub_243899C30();
}

void sub_24388F4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
LABEL_3:
    _convertErrorToNSError(_:)();
  }

LABEL_5:
  v5 = sub_243899A18();
  v6(v5);
}

void sub_24388F550(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v3.super.isa = 0;
  if (a2)
  {
LABEL_3:
    _convertErrorToNSError(_:)();
  }

LABEL_5:
  v4 = sub_243899A18();
  v5(v4);
}

uint64_t sub_24388F5D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v9);
  v13 = *a2;
  return sub_24388F74C(v11);
}

uint64_t sub_24388F6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 112);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Optional();
  sub_243899A04(v9);
  return (*(v10 + 16))(a1, &v1[v6]);
}

uint64_t sub_24388F74C(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 112);
  sub_24388A800();
  sub_24388A61C();
  sub_24388A608();
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Optional();
  sub_243899A04(v9);
  (*(v10 + 40))(&v1[v6], a1);
  return swift_endAccess();
}

uint64_t sub_24388F7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 120);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Optional();
  sub_243899A04(v9);
  return (*(v10 + 16))(a1, &v1[v6]);
}

uint64_t sub_24388F898(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 120);
  sub_24388A800();
  sub_24388A61C();
  sub_24388A608();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Optional();
  sub_243899A04(v9);
  (*(v10 + 40))(&v1[v6], a1);
  return swift_endAccess();
}

uint64_t sub_24388F940()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = (v0 + *(v3 + 136));
  v5 = *v4;
  v6 = v4[1];

  return sub_243876224();
}

uint64_t sub_24388F990@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  sub_24388A4D4();
  v6 = type metadata accessor for CodeOperation.DestinationServer();
  sub_243899A04(v6);
  return (*(v7 + 16))(a1, &v1[v3]);
}

uint64_t sub_24388FA40()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return sub_24388A614(*(v3 + 160));
}

uint64_t sub_24388FA74()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 160);
  return sub_24388A580(v5);
}

void *sub_24388FAA8()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA8));
  v2 = v1;
  return v1;
}

void sub_24388FAF8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 168);
  v5 = *(v0 + v4);
  *(v0 + v4) = v6;
}

double sub_24388FB38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24388FBD0(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_24388FB7C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v9 = v6;
  sub_243880E88(v8[0], v2, v3, v4, v6);
  return sub_24388FC48(v8);
}

uint64_t sub_24388FBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = v1 + *(v5 + 176);
  sub_24388A4E4();
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 2);
  v10 = *(v6 + 3);
  *a1 = *v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  v11 = v6[32];
  *(a1 + 32) = v11;
  return sub_243880E88(v7, v8, v9, v10, v11);
}

uint64_t sub_24388FC48(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  sub_24388A768();
  v7 = *(v6 + 176);
  sub_24388A434();
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v12;
  v13 = *(v1 + 32);
  *(v1 + 32) = v3;
  return sub_243880F5C(v8, v9, v10, v11, v13);
}

double sub_24388FCBC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_24388FD3C(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24388FCF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v5[0] = *a1;
  v5[1] = v2;
  sub_2438764C4(v5[0], v2);
  return sub_24388FD8C(v5);
}

uint64_t sub_24388FD3C@<X0>(uint64_t *a1@<X8>)
{
  sub_24388FBD0(&v4);
  result = v4;
  v3 = v5;
  if (v8)
  {
    sub_243880F5C(v4, v5, v6, v7, v8);
    result = 0;
    v3 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24388FD8C(void *a1)
{
  v1 = a1[1];
  if (v1 >> 60 == 15)
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 2;
    return sub_24388FC48(&v7);
  }

  else
  {
    *&v7 = *a1;
    *(&v7 + 1) = v1;
    v8 = 0uLL;
    v9 = 0;
    v3 = sub_24388A708();
    sub_243873DE8(v3, v4);
    sub_24388FC48(&v7);
    v5 = sub_24388A708();
    return sub_2438729FC(v5, v6);
  }
}

uint64_t (*sub_24388FE0C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  sub_24388FD3C(a1);
  return sub_24388FE54;
}

uint64_t sub_24388FE54(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v10 = *a1;
    v11 = v2;
    v5 = sub_24388A708();
    sub_2438764C4(v5, v6);
    sub_24388FD8C(&v10);
    v7 = sub_24388A708();

    return sub_2438729FC(v7, v8);
  }

  else
  {
    v10 = *a1;
    v11 = v2;
    return sub_24388FD8C(&v10);
  }
}

uint64_t sub_24388FED4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 184);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v4);
}

uint64_t sub_24388FF2C(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 184);
  result = sub_24388A590();
  *(v1 + v6) = a1;
  return result;
}

uint64_t sub_24388FF84()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 184);
  sub_24388A3F4();
  return sub_24388A5D4();
}

void *sub_24388FFE4()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xC0));
  v2 = v1;
  return v1;
}

void sub_243890030()
{
  sub_243899BAC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2438819B4(v7, *v0);
  if (!v9 || (v10 = v9, v11 = sub_243876218(), v13 = sub_24388ECDC(v11, v12, v10), , !v13) || (v14 = sub_24388ED30(v2, v13), , !v14))
  {
    v15 = objc_allocWithZone(MEMORY[0x277CBC510]);
    v16 = v8;

    sub_24389015C([v15 init], v16, v6, v4, v2);
    v14 = 0;
  }

  v17 = sub_2438819B4(v8, *v0);
  if (!v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  v19 = sub_243876218();
  v21 = sub_24388ECDC(v19, v20, v18);
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = sub_24388ED30(v2, v21);

  if (v22)
  {

    sub_243899B78();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_24389015C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *v5;
  v10 = a2;
  v11 = sub_2438819B4(v10, v9);

  if (v11)
  {
  }

  else
  {
    v12 = v10;
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v86 = *v6;
    sub_243899208(MEMORY[0x277D84F98], v12, isUniquelyReferenced_nonNull_native);

    v9 = *v86;
    *v6 = *v86;
  }

  v15 = v10;

  v16 = sub_2438819B4(v15, v9);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = v16;
  v80 = a1;

  v18 = sub_243899A7C();
  v20 = sub_24388ECDC(v18, v19, v17);

  v82 = a5;
  if (v20)
  {
  }

  else
  {
    v21 = v15;
    swift_bridgeObjectRetain_n();
    v22 = v21;
    v23 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    *v87 = *v6;
    sub_243898F8C();
    sub_243899A30();
    if (__OFADD__(v26, v27))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v28 = v24;
    v29 = v25;
    v30 = sub_243873884(&unk_27ED94E80, &unk_24389E390);
    if (sub_243899BC0(v30, v31, v32, v33, v34, v35, v36, v37, v79, v80, a5, v83, v84, v87[0]))
    {
      v38 = sub_243898F8C();
      if ((v29 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v28 = v38;
    }

    if ((v29 & 1) == 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v40 = *(*(*v88 + 56) + 8 * v28);

    swift_isUniquelyReferenced_nonNull_native();
    v84 = v40;
    sub_2438990D8();

    if (v40)
    {
      *(*(*v88 + 56) + 8 * v28) = v40;
    }

    else
    {

      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();
    }

    *v6 = *v88;
  }

  v41 = v15;
  swift_bridgeObjectRetain_n();
  v42 = v41;
  v43 = *v6;
  swift_isUniquelyReferenced_nonNull_native();
  *v89 = *v6;
  sub_243898F8C();
  sub_243899A30();
  if (__OFADD__(v46, v47))
  {
    __break(1u);
    goto LABEL_31;
  }

  v48 = v44;
  v49 = v45;
  v50 = sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (sub_243899BC0(v50, v51, v52, v53, v54, v55, v56, v57, v79, v80, v82, v83, v84, v89[0]))
  {
    v58 = sub_243898F8C();
    if ((v49 & 1) == (v59 & 1))
    {
      v48 = v58;
      goto LABEL_20;
    }

LABEL_37:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    goto LABEL_38;
  }

LABEL_20:
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = *(*(*v90 + 56) + 8 * v48);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v60;
  sub_2438999B0();
  v62 = sub_243899A7C();
  sub_243898F0C(v62, v63, v64);
  sub_243899A30();
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v70 = v65;
  v71 = v66;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v69))
  {
    sub_2438999B0();
    v72 = sub_243899A7C();
    v75 = sub_243898F0C(v72, v73, v74);
    if ((v71 & 1) != (v76 & 1))
    {
LABEL_38:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v70 = v75;
  }

  if ((v71 & 1) == 0)
  {
    goto LABEL_33;
  }

  v77 = *(*(v60 + 56) + 8 * v70);

  v78 = v81;
  swift_isUniquelyReferenced_nonNull_native();
  sub_243898FCC();
  if (v77)
  {

    *(*(v85 + 56) + 8 * v70) = v77;
  }

  else
  {

    sub_24388A040(*(v85 + 48) + 16 * v70);
    sub_243873884(&qword_27ED94B10, &qword_24389DF40);
    sub_243899B8C();
    _NativeDictionary._delete(at:)();
  }

  *(*(*v90 + 56) + 8 * v48) = v85;

  *v6 = *v90;
}

void sub_243890608(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_243899208(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
LABEL_5:
    sub_243899C30();
    return;
  }

  v7 = *v2;
  v8 = sub_243898F8C();
  if (v9)
  {
    v10 = v8;
    v11 = *v3;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v13 = *(*v3 + 24);
    sub_243873884(&unk_27ED94E80, &unk_24389E390);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);

    v14 = *(*(v19 + 56) + 8 * v10);
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    sub_243873884(&unk_27ED94E90, &unk_24389DF30);
    sub_243889FD8();
    _NativeDictionary._delete(at:)();

    *v3 = v19;
    goto LABEL_5;
  }

  sub_243899C30();
}

uint64_t sub_243890778()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 200);
  sub_24388A4E4();
  swift_beginAccess();
  v5 = *(v0 + v4);
}

void *CodeOperation.init(service:functionName:request:destinationServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = MEMORY[0x277D85000];
  v11 = *MEMORY[0x277D85000];
  v12 = *MEMORY[0x277D85000] & *v6;
  v13 = *(v12 + 0x70);
  v14 = *(v12 + 0x50);
  sub_243899A50();
  sub_243873554(v15, v16, v17, v14);
  sub_2438999DC();
  v19 = *(v18 + 120);
  v20 = *((v11 & v9) + 0x58);
  sub_243899A50();
  sub_243873554(v21, v22, v23, v20);
  sub_2438999DC();
  v25 = MEMORY[0x277D84F90];
  *(v6 + *(v24 + 152)) = MEMORY[0x277D84F90];
  *(v6 + *((*v10 & *v6) + 0xA0)) = v25;
  sub_2438999DC();
  *(v6 + *(v26 + 168)) = 0;
  sub_2438999DC();
  v28 = v6 + *(v27 + 176);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 2;
  sub_2438999DC();
  *(v6 + *(v29 + 184)) = 0;
  sub_2438999DC();
  *(v6 + *(v30 + 192)) = 0;
  *&v31 = v14;
  *(&v31 + 1) = v20;
  v57 = v31;
  v62 = *(v12 + 96);
  *(v6 + *((*v10 & *v6) + 0xC8)) = MEMORY[0x277D84F98];
  sub_2438999DC();
  sub_24388A744(*(v32 + 208));
  sub_2438999DC();
  sub_24388A744(*(v33 + 216));
  sub_2438999DC();
  sub_24388A744(*(v34 + 224));
  sub_2438999DC();
  sub_24388A744(*(v35 + 248));
  sub_2438999DC();
  sub_24388A744(*(v36 + 256));
  sub_24388A61C();
  v37 = type metadata accessor for Optional();
  sub_24387993C(v37);
  v39 = v38;
  (*(v38 + 24))(v6 + v13, a5, v37);
  swift_endAccess();
  sub_2438999DC();
  v41 = (v6 + *(v40 + 128));
  *v41 = a1;
  v41[1] = a2;
  sub_2438999DC();
  v43 = (v6 + *(v42 + 136));
  *v43 = a3;
  v43[1] = a4;
  sub_2438999DC();
  v45 = *(v44 + 144);
  v64 = v57;
  v65 = v62;
  v46 = type metadata accessor for CodeOperation.DestinationServer();
  sub_24387993C(v46);
  v48 = v47;
  (*(v47 + 16))(v6 + v45, a6, v46);
  sub_2438999DC();
  *(v6 + *(v49 + 240)) = 0;
  sub_2438999DC();
  *(v6 + *(v50 + 232)) = 1;
  sub_243899B60();
  v63.receiver = v6;
  v63.super_class = type metadata accessor for CodeOperation();
  v51 = objc_msgSendSuper2(&v63, sel_init);
  sub_243899B60();
  type metadata accessor for CodeOperation.CallbackRelay();
  v52 = v51;
  v53 = sub_243890C34(v52);
  (*(v48 + 8))(a6, v46);
  (*(v39 + 8))(a5, v37);
  v54 = *((*v10 & *v52) + 0xC0);
  v55 = *(v52 + v54);
  *(v52 + v54) = v53;

  return v52;
}

void CodeOperation.__allocating_init(serviceName:functionName:request:local:)()
{
  sub_243899BAC();
  sub_243899AD8();
  sub_243899AA0();
  CodeOperation.init(serviceName:functionName:request:local:)();
  sub_243899B78();
}

void CodeOperation.init(serviceName:functionName:request:local:)()
{
  sub_24388A664();
  v76 = v1;
  v3 = v2;
  v74 = v4;
  v75 = v5;
  v71 = v6;
  v72 = v7;
  v8 = *v0;
  v9 = MEMORY[0x277D85000];
  v10 = *MEMORY[0x277D85000];
  sub_243899B48();
  v12 = *(v11 + 80);
  sub_243899B48();
  v14 = *(v13 + 88);
  sub_243899B48();
  v77 = *(v15 + 96);
  sub_243899B48();
  v70 = *(v16 + 104);
  v79 = v12;
  v80 = v14;
  v81 = v17;
  v82 = v70;
  v73 = type metadata accessor for CodeOperation.DestinationServer();
  sub_243876204(v73);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  sub_243899B48();
  v26 = *(v25 + 112);
  sub_243899A50();
  sub_243873554(v27, v28, v29, v12);
  sub_2438999C8();
  v31 = *(v30 + 120);
  sub_243899A50();
  sub_243873554(v32, v33, v34, v14);
  sub_2438999C8();
  v36 = MEMORY[0x277D84F90];
  *(v0 + *(v35 + 152)) = MEMORY[0x277D84F90];
  *(v0 + *((*v9 & *v0) + 0xA0)) = v36;
  sub_2438999C8();
  *(v0 + *(v37 + 168)) = 0;
  sub_2438999C8();
  v39 = v0 + *(v38 + 176);
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[32] = 2;
  sub_2438999C8();
  *(v0 + *(v40 + 184)) = 0;
  sub_2438999C8();
  *(v0 + *(v41 + 192)) = 0;
  sub_2438999C8();
  *(v0 + *(v42 + 200)) = MEMORY[0x277D84F98];
  sub_2438999C8();
  sub_24388A744(*(v43 + 208));
  sub_2438999C8();
  sub_24388A744(*(v44 + 216));
  sub_2438999C8();
  sub_24388A744(*(v45 + 224));
  sub_2438999C8();
  sub_24388A744(*(v46 + 248));
  sub_2438999C8();
  sub_24388A744(*(v47 + 256));
  sub_24388A61C();
  sub_243899B54();
  v48 = type metadata accessor for Optional();
  sub_24387993C(v48);
  v50 = v49;
  (*(v49 + 24))(v0 + v26, v3, v48);
  swift_endAccess();
  sub_2438999C8();
  v52 = (v0 + *(v51 + 128));
  v53 = v72;
  *v52 = v71;
  v52[1] = v53;
  sub_2438999C8();
  v55 = (v0 + *(v54 + 136));
  v56 = v75;
  *v55 = v74;
  v55[1] = v56;
  v57 = type metadata accessor for URL();
  if (v76)
  {
    v58 = 2;
  }

  else
  {
    v58 = 1;
  }

  sub_243873554(v24, v58, 2, v57);
  sub_2438999C8();
  (*(v19 + 32))(v0 + *(v59 + 144), v24, v73);
  sub_2438999C8();
  *(v0 + *(v60 + 240)) = 0;
  sub_2438999C8();
  *(v0 + *(v61 + 232)) = 1;
  v79 = v12;
  v80 = v14;
  v62 = v77;
  v63 = v70;
  v81 = v77;
  v82 = v70;
  v64 = type metadata accessor for CodeOperation();
  v78.receiver = v0;
  v78.super_class = v64;
  v65 = objc_msgSendSuper2(&v78, sel_init);
  v79 = v12;
  v80 = v14;
  v81 = v62;
  v82 = v63;
  type metadata accessor for CodeOperation.CallbackRelay();
  v66 = v65;
  v67 = sub_243890C34(v66);
  (*(v50 + 8))(v3, v48);
  v68 = *((*v9 & *v66) + 0xC0);
  v69 = *(v66 + v68);
  *(v66 + v68) = v67;

  sub_24388A67C();
}

uint64_t sub_2438910D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_243882320();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_243899934;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_243891148(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_243871FA4(v3);
  return sub_24388236C();
}

uint64_t sub_2438911D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_24389121C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_243882548();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_2438998FC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_24389128C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_243871FA4(v3);
  return sub_243882594();
}

uint64_t sub_24389131C()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 216);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_24389137C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  result = sub_2438914A4();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 32) = v11;
    *(result + 48) = v8;
    *(result + 56) = v9;
    v10 = sub_24389989C;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_243891408(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  v10 = *a2;
  sub_243871FA4(v5);
  return sub_2438914F0();
}

uint64_t sub_2438914A4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 224);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_2438914F0()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 224);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_243891544()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 224);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438915A4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 232);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v4);
}

uint64_t sub_2438915FC()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 240);
  sub_24388A4E4();
  swift_beginAccess();
  return *(v0 + v4);
}

uint64_t sub_243891654(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 240);
  result = sub_24388A590();
  *(v1 + v6) = a1;
  return result;
}

uint64_t sub_2438916AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  result = sub_2438917D4();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 32) = v11;
    *(result + 48) = v8;
    *(result + 56) = v9;
    v10 = sub_24388A2AC;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_243891738(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  v10 = *a2;
  sub_243871FA4(v5);
  return sub_243891820();
}

uint64_t sub_2438917D4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 248);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_243891820()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 248);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_243891874()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 248);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438918D4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = (v0 + *(v3 + 256));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_243876224();
  sub_243871FA4(v7);
  return sub_243876224();
}

uint64_t sub_243891924()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  sub_24388A4D4();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CodeOperation();
  if (objc_msgSendSuper2(&v4, sel_hasCKOperationCallbacksSet))
  {
    return 1;
  }

  result = sub_243882320();
  if (result || (result = sub_2438914A4()) != 0 || (result = sub_243882548()) != 0 || (result = sub_2438917D4()) != 0)
  {
    sub_243871FB4(result);
    return 1;
  }

  return result;
}

uint64_t sub_2438919C0(void *a1)
{
  v1 = a1;
  v2 = sub_243891924();

  return v2 & 1;
}

id sub_2438919F4()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = v3;
  v7 = *((v6 & v5) + 0x50);
  v8 = type metadata accessor for Optional();
  sub_243876204(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_24388F6A8(&v24 - v14);
  v16 = sub_243873AA4(v15, 1, v7);
  (*(v10 + 8))(v15, v8);
  if (v16 == 1 || (v17 = [v0 resolvedConfiguration], v18 = objc_msgSend(v17, sel_isLongLived), v17, (v18 & 1) != 0))
  {
    sub_24388A714();
    related decl 'e' for CKErrorCode.init(_:description:)();
  }

  else
  {
    v25[0] = 0;
    v25[1] = v7;
    v21 = *(v4 + 104);
    v26 = *(v4 + 88);
    v27 = v21;
    v22 = type metadata accessor for CodeOperation();
    v24.receiver = v0;
    v24.super_class = v22;
    if (objc_msgSendSuper2(&v24, sel_CKOperationShouldRun_, v25))
    {
      result = v25[0];
      goto LABEL_5;
    }

    v23 = v25[0];
    _convertNSErrorToError(_:)();
  }

  result = swift_willThrow();
LABEL_5:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243891C30(void *a1)
{
  v1 = a1;
  sub_2438919F4();

  return 1;
}

void sub_243891CC4()
{
  sub_24388A664();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v112 = type metadata accessor for Google_Protobuf_Any();
  v4 = sub_243876204(v112);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24388A424();
  v111 = v10 - v9;
  v11 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v12 = sub_243876184(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_24388A414();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v118 = &v101 - v19;
  v20 = type metadata accessor for Ckcode_ProtectedEnvelope(0);
  v21 = sub_243876204(v20);
  v117 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_24388A424();
  v116 = v26 - v25;
  v27 = *((v2 & v1) + 0x50);
  sub_243899B54();
  v28 = type metadata accessor for Optional();
  sub_243876184(v28);
  v30 = *(v29 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v31);
  v33 = &v101 - v32;
  sub_24387C120();
  v35 = v34;
  v37 = *(v36 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v38);
  v40 = &v101 - v39;
  sub_24388F6A8(v33);
  if (sub_243873AA4(v33, 1, v27) == 1)
  {
    goto LABEL_30;
  }

  v115 = v20;
  v113 = v6;
  v109 = v17;
  v110 = v0;
  v103 = v35;
  (*(v35 + 32))(v40, v33, v27);
  v41 = type metadata accessor for Ckcode_RecordTransport();
  v102 = v3;
  v42 = *(v3 + 96);
  sub_24388A3D0();
  v45 = sub_243897EA4(v43, v44);
  v106 = v27;
  v104 = v42;
  v105 = v40;
  v46 = sub_24387BBC4(v41, v27, v41, v42, v45);
  v47 = 0;
  v48 = *(v46 + 16);
  v49 = v41 - 8;
  v50 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v48 == v47)
    {

      sub_24388A508();
      v70 = sub_243897EA4(v68, v69);
      v71 = sub_24387BBC4(v115, v106, v115, v104, v70);
      v73 = v109;
      v72 = v110;
      v115 = *(v71 + 16);
      if (!v115)
      {
LABEL_26:

        sub_243880CB4();
        sub_24388FA74();
        v98 = *(v102 + 88);
        v99 = *(v102 + 104);
        v97 = v106;
        v119 = v106;
        v120 = v98;
        v121 = v104;
        v122 = v99;
        v100 = type metadata accessor for CodeOperation();
        v123.receiver = v72;
        v123.super_class = v100;
        objc_msgSendSuper2(&v123, sel_performCKOperation);
LABEL_27:
        (*(v103 + 8))(v105, v97);
        sub_24388A67C();
        return;
      }

      v74 = 0;
      v75 = *(v117 + 80);
      sub_24388A634();
      v114 = v71 + v76;
      v107 = (v113 + 8);
      v108 = (v113 + 32);
      v77 = MEMORY[0x277D84F90];
      v113 = "localSerialization";
      while (1)
      {
        if (v74 >= *(v71 + 16))
        {
          goto LABEL_29;
        }

        v78 = v116;
        v79 = *(v117 + 72);
        sub_24389955C();
        v80 = v118;
        sub_2438994F8();
        sub_24388A130(v78, type metadata accessor for Ckcode_ProtectedEnvelope);
        v81 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
        if (sub_243873AA4(v80, 1, v81) != 1)
        {
          sub_2438994F8();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            (*v108)(v111, v73, v112);
            sub_243897EA4(qword_280D49098, MEMORY[0x277D215C8]);
            v82 = Message.serializedData(partial:)();
            v84 = v83;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = *(v77 + 2);
              v91 = sub_24388A5C4();
              v77 = sub_243888BE8(v91, v92, v93, v77);
            }

            v86 = *(v77 + 2);
            v85 = *(v77 + 3);
            if (v86 >= v85 >> 1)
            {
              v94 = sub_243899ABC(v85);
              v77 = sub_243888BE8(v94, v86 + 1, 1, v77);
            }

            (*v107)(v111, v112);
            *(v77 + 2) = v86 + 1;
            v87 = &v77[16 * v86];
            *(v87 + 4) = v82;
            *(v87 + 5) = v84;
            v73 = v109;
            v72 = v110;
            goto LABEL_23;
          }

          sub_24388A130(v73, type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents);
        }

        sub_24388A714();
        v88 = related decl 'e' for CKErrorCode.init(_:description:)();
        v89 = _convertErrorToNSError(_:)();

        [v72 finishWithError_];
LABEL_23:
        ++v74;
        sub_24387605C(v118, &qword_27ED94960, &qword_24389CB10);
        if (v115 == v74)
        {
          goto LABEL_26;
        }
      }
    }

    if (v47 >= *(v46 + 16))
    {
      break;
    }

    v51 = (v46 + ((*(*v49 + 80) + 32) & ~*(*v49 + 80)) + *(*v49 + 72) * v47);
    v52 = v51[1];
    if ((v52 & 0x2000000000000000) != 0)
    {

      sub_24388A714();
      v95 = related decl 'e' for CKErrorCode.init(_:description:)();
      v96 = _convertErrorToNSError(_:)();

      [v110 finishWithError_];
      v97 = v106;
      goto LABEL_27;
    }

    v53 = *v51;
    v54 = sub_243899B30();
    sub_2438799C8(v54, v55);
    v56 = sub_243899B30();
    sub_243873DE8(v56, v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = *(v50 + 2);
      v64 = sub_24388A5C4();
      v50 = sub_243888BE8(v64, v65, v66, v50);
    }

    v59 = *(v50 + 2);
    v58 = *(v50 + 3);
    if (v59 >= v58 >> 1)
    {
      v67 = sub_243899ABC(v58);
      v50 = sub_243888BE8(v67, v59 + 1, 1, v50);
    }

    v60 = sub_243899B30();
    sub_243879A04(v60, v61);
    *(v50 + 2) = v59 + 1;
    v62 = &v50[16 * v59];
    *(v62 + 4) = v53;
    *(v62 + 5) = v52;
    ++v47;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  sub_243899A40();
  swift_unexpectedError();
  __break(1u);
}

void sub_2438924EC(void *a1)
{
  v1 = a1;
  sub_243891CC4();
}

uint64_t sub_243892534()
{
  sub_2438836CC();

  return swift_getObjCClassFromMetadata();
}

id sub_24389255C()
{
  v0 = sub_243883720();

  return v0;
}

void sub_24389259C(void *a1)
{
  v1 = a1;
  sub_243892584();
}

void sub_243892600(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_2438925E4(a3);
}

id sub_243892658(void *a1)
{
  v1 = a1;
  v2 = sub_243883828();

  return v2;
}

void sub_24389269C()
{
  sub_24388A664();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x277D85000];
  v7 = type metadata accessor for URL();
  v8 = sub_243876204(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_24388A424();
  v14 = v13 - v12;
  v15 = *((v6 & v5) + 0x50);
  v16 = *((v6 & v5) + 0x60);
  v17 = *((v6 & v5) + 0x68);
  v59 = *((v6 & v5) + 0x58);
  v60 = v15;
  v63 = v15;
  v64 = v59;
  v57 = v17;
  v58 = v16;
  v65 = v16;
  v66 = v17;
  v18 = type metadata accessor for CodeOperation.DestinationServer();
  sub_243876184(v18);
  v20 = *(v19 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  objc_opt_self();
  v61 = v4;
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = sub_243880940();
  MEMORY[0x245D42400](v25);
  v26 = sub_243899C18();
  sub_243899C00(v26, sel_setServiceName_);

  v27 = sub_24388F940();
  MEMORY[0x245D42400](v27);
  v28 = sub_243899C18();
  sub_243899C00(v28, sel_setFunctionName_);

  sub_243880C80();
  v29 = MEMORY[0x277CC9318];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setRequestLocalSerializations_];

  sub_24388FA40();
  Array._bridgeToObjectiveC()();
  v31 = sub_243899C18();
  sub_243899C00(v31, sel_setRequestLocalEnvelopes_);

  sub_24388FBD0(&v63);
  v33 = v65;
  v32 = v66;
  if (v67)
  {
    if (v67 == 1)
    {
      [v24 setDataProtectionType_];
      v34 = sub_243899B3C();
      v35 = MEMORY[0x245D42400](v34);

      [v24 setTrustedTargetDomain_];

      MEMORY[0x245D42400](v33, v32);
      v36 = sub_243899C18();
      sub_243899C00(v36, sel_setTrustedTargetOID_);
    }

    else
    {
      [v24 setDataProtectionType_];
    }
  }

  else
  {
    v37 = sub_243899B3C();
    sub_243873DE8(v37, v38);
    sub_243899B3C();
    v39 = Data._bridgeToObjectiveC()().super.isa;
    v40 = sub_243899B3C();
    sub_243880F5C(v40, v41, v33, v32, 0);
    [v24 setPermittedRemoteMeasurement_];

    [v24 setDataProtectionType_];
    v42 = sub_243899B3C();
    sub_243880F5C(v42, v43, v33, v32, 0);
  }

  v44 = v57;
  [v24 setShouldSendRecordPCSKeys_];
  sub_24388F990(v23);
  v45 = sub_243873AA4(v23, 2, v7);
  if (v45)
  {
    if (v45 == 1)
    {
      [v24 setLegacyIsLocalBit_];
    }

    else
    {
      [v24 setLegacyIsLocalBit_];
    }
  }

  else
  {
    v46 = v56;
    (*(v56 + 32))(v14, v23, v7);
    [v24 setLegacyIsLocalBit_];
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    [v24 setClientRuntimeProvidedServiceURL_];

    (*(v46 + 8))(v14, v7);
  }

  v51 = v60;
  v50 = v61;
  v53 = v58;
  v52 = v59;
  [v24 setShouldFetchAssetContentInMemory_];
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v44;
  v54 = type metadata accessor for CodeOperation();
  v62.receiver = v2;
  v62.super_class = v54;
  objc_msgSendSuper2(&v62, sel_fillOutOperationInfo_, v50);
  sub_24388A67C();
}

void sub_243892AFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24389269C();
}

id sub_243892BD0(uint64_t a1)
{
  sub_24388A094(0, &qword_280D49658, 0x277CBC7B0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  sub_24388A094(0, &qword_280D49670, 0x277CBC3E0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  sub_24388A4D4();
  v6 = (*MEMORY[0x277D85000] & *type metadata accessor for CodeOperation());
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_applyDaemonCallbackInterfaceTweaks_, a1);
}

void sub_243892CB4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_243892BD0(v4);
}

void sub_243892D04()
{
  sub_24388A664();
  v107 = v1;
  v3 = v2;
  v5 = v4;
  v116 = v6;
  v114 = v7;
  v8 = *v0;
  v9 = *MEMORY[0x277D85000];
  v111 = *MEMORY[0x277D85000] & *v0;
  v10 = type metadata accessor for Ckcode_ProtectedEnvelope(0);
  v11 = sub_243876204(v10);
  v112 = v12;
  v113 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24388A424();
  v103 = v16 - v15;
  v117 = type metadata accessor for Ckcode_RecordTransport();
  v17 = sub_243876204(v117);
  v115 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_24388A424();
  v21 = *((v9 & v8) + 0x50);
  v22 = type metadata accessor for Optional();
  sub_243876184(v22);
  v24 = *(v23 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v25);
  v27 = &v99 - v26;
  sub_24387C120();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  sub_24388A414();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  v104 = &v99 - v37;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v38);
  v40 = &v99 - v39;
  v105 = v0;
  sub_24388F6A8(v27);
  if (sub_243873AA4(v27, 1, v21) == 1)
  {
    __break(1u);
  }

  else
  {
    v106 = v3;
    v41 = *(v29 + 32);
    v101 = v29 + 32;
    v102 = v35;
    v100 = v41;
    v41(v40, v27, v21);
    v42 = v114;
    v43 = *(v114 + 16);
    v44 = MEMORY[0x277D84F90];
    v109 = v29;
    v110 = v21;
    v108 = v40;
    if (v43)
    {
      v99 = v5;
      sub_24388A6CC(MEMORY[0x277D84F90]);
      sub_243899608();
      v46 = 0;
      v47 = v118;
      v114 = v42 + 32;
      do
      {
        v48 = *(v114 + 16 * v46);
        *&v49 = MEMORY[0x28223BE20](v45);
        *(&v99 - 2) = v49;
        v50 = v116;
        *(&v99 - 2) = v46;
        *(&v99 - 1) = v50;
        v51 = sub_24388A80C();
        sub_243873DE8(v51, v52);
        sub_24388A3D0();
        v54 = sub_243897EA4(qword_280D49750, v53);
        static Message.with(_:)();
        v55 = sub_24388A80C();
        sub_243873E40(v55, v56);
        v118 = v47;
        v58 = v47[2];
        v57 = v47[3];
        if (v58 >= v57 >> 1)
        {
          sub_243899ABC(v57);
          sub_243899608();
          v47 = v118;
        }

        ++v46;
        v47[2] = v58 + 1;
        v59 = *(v115 + 80);
        sub_24388A634();
        v61 = *(v60 + 72);
        sub_24388A4F0();
        v45 = sub_243899660();
      }

      while (v43 != v46);
      v62 = v110;
      v63 = v104;
      v64 = v108;
      sub_24387C358(v47, v110, v117, *(v111 + 96), v54, v104);
      v29 = v109;
      v65 = *(v109 + 8);
      v66 = sub_24388A640();
      v67(v66);

      v100(v64, v63, v62);
      if (*MEMORY[0x277CBC810] == 1)
      {
        v68 = sub_2438918D4();
        v5 = v99;
        if (v68)
        {
          v68(v64);
          v69 = sub_243876224();
          sub_243871FB4(v69);
        }
      }

      else
      {
        v5 = v99;
      }

      v44 = MEMORY[0x277D84F90];
    }

    v70 = *(v5 + 16);
    if (v70)
    {
      sub_24388A6CC(v44);
      sub_2438995B0();
      v72 = v118;
      v73 = (v5 + 32);
      do
      {
        v74 = *v73;
        *&v75 = MEMORY[0x28223BE20](v71);
        *(&v99 - 1) = v75;
        v76 = sub_24388A80C();
        sub_243873DE8(v76, v77);
        sub_24388A508();
        v117 = sub_243897EA4(&qword_280D496C0, v78);
        static Message.with(_:)();
        v79 = sub_24388A80C();
        sub_243873E40(v79, v80);
        v118 = v72;
        v82 = v72[2];
        v81 = v72[3];
        if (v82 >= v81 >> 1)
        {
          sub_243899ABC(v81);
          sub_2438995B0();
          v72 = v118;
        }

        v72[2] = v82 + 1;
        v83 = *(v112 + 80);
        sub_24388A634();
        v85 = *(v84 + 72);
        v71 = sub_243899660();
        ++v73;
        --v70;
      }

      while (v70);
      v86 = v110;
      v87 = v102;
      v88 = v108;
      sub_24387C358(v72, v110, v113, *(v111 + 96), v117, v102);
      v29 = v109;
      v90 = *(v109 + 8);
      v91 = sub_24388A640();
      v92(v91);

      v100(v88, v87, v86);
    }

    else
    {
      v89 = *(v111 + 96);
    }

    v93 = Message.serializedData(partial:)();
    v95 = v94;
    sub_243873DE8(v93, v94);
    v106(v93, v95, 0);
    sub_243873E40(v93, v95);
    sub_243873E40(v93, v95);
    v96 = *(v29 + 8);
    v97 = sub_24388A640();
    v98(v97);
    sub_24388A67C();
  }
}

void sub_243893470()
{
  sub_24388A664();
  v104 = v2;
  v105 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *MEMORY[0x277D85000];
  v9 = type metadata accessor for Ckcode_RecordTransport();
  v10 = sub_243876204(v9);
  v108 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_24388A414();
  v109 = v14 - v15;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v16);
  v102 = (&v93 - v17);
  v18 = *((v8 & v7) + 0x58);
  v19 = type metadata accessor for Optional();
  v20 = sub_243876204(v19);
  v110 = v21;
  v111 = v20;
  v23 = *(v22 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  v27 = type metadata accessor for BinaryDecodingOptions();
  v28 = sub_243876184(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_24388A424();
  sub_24387C120();
  v103 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  sub_24388A414();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v115 = v6;
  v116 = v4;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v39 = v8 & v7;
  v41 = &v93 - v40;
  v42 = v4;
  v43 = *(v39 + 104);
  sub_243873DE8(v6, v42);
  BinaryDecodingOptions.init()();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v107 = v37;
  v44 = *(v103 + 16);
  v95 = v103 + 16;
  v94 = v44;
  v44(v26, v41, v18);
  sub_243873554(v26, 0, 1, v18);
  v100 = v0;
  sub_24388F898(v26);
  sub_24388A3D0();
  v47 = sub_243897EA4(v45, v46);
  v101 = v18;
  v98 = v43;
  v97 = v47;
  v99 = v41;
  v48 = sub_24387BBC4(v9, v18, v9, v43, v47);
  v96 = 0;
  v49 = v48;
  v50 = v26;
  v51 = 0;
  v106 = *(v48 + 16);
  v52 = MEMORY[0x277D84F90];
  v54 = v110;
  v53 = v111;
  while (1)
  {
    v55 = v107;
    v56 = v109;
    if (v106 == v51)
    {
      break;
    }

    v57 = *(v49 + 16);
    if (v51 >= v57)
    {
      __break(1u);
      v92 = *(v57 - 256);
      goto LABEL_20;
    }

    v58 = v9;
    v59 = v50;
    v60 = *(v108 + 80);
    sub_24388A634();
    v63 = (v49 + v61 + *(v62 + 72) * v51);
    v64 = v63[1];
    if ((~v64 & 0x3000000000000000) == 0 || (v64 & 0x2000000000000000) == 0)
    {

      sub_24388A714();
      v89 = related decl 'e' for CKErrorCode.init(_:description:)();
      v90 = _convertErrorToNSError(_:)();

      [v100 finishWithError_];
      v91 = v89;
      v105(0, v89);

      (*(v103 + 8))(v99, v101);
LABEL_17:
      sub_24388A67C();
      return;
    }

    v65 = *v63;
    sub_2438799C8(*v63, v63[1]);
    sub_243873DE8(v65, v64 & 0xDFFFFFFFFFFFFFFFLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = *(v52 + 2);
      v70 = sub_24388A5C4();
      v52 = sub_243888BE8(v70, v71, v72, v52);
    }

    v67 = *(v52 + 2);
    v66 = *(v52 + 3);
    if (v67 >= v66 >> 1)
    {
      v73 = sub_243899ABC(v66);
      v52 = sub_243888BE8(v73, v67 + 1, 1, v52);
    }

    sub_243879A04(v65, v64);
    *(v52 + 2) = v67 + 1;
    v68 = &v52[16 * v67];
    *(v68 + 4) = v65;
    *(v68 + 5) = v64 & 0xDFFFFFFFFFFFFFFFLL;
    ++v51;
    v54 = v110;
    v53 = v111;
    v50 = v59;
    v9 = v58;
  }

  v74 = v102;
  *v102 = xmmword_24389D0D0;
  v75 = v74 + *(v9 + 20);
  UnknownStorage.init()();
  *(v74 + *(v9 + 24)) = xmmword_24389CB00;
  sub_24388A538();
  sub_24389955C();
  v76 = *(v52 + 2);

  v77 = sub_24388EE3C(v56, v76);
  v78 = v55;
  v79 = v99;
  v80 = v96;
  sub_24387C358(v77, v101, v9, v98, v97, v78);
  if (!v80)
  {

    v81 = v103;
    if (*(v52 + 2))
    {
      v82 = sub_2438917D4();
      if (v82)
      {
        v83 = v82;
        v84 = v101;
        v94(v50, v107, v101);
        sub_243873554(v50, 0, 1, v84);
        v83(v50);
        v85 = sub_243876224();
        sub_243871FB4(v85);
        (*(v54 + 8))(v50, v53);
      }
    }

    v105(v52, 0);

    v86 = *(v81 + 8);
    v87 = v101;
    v86(v107, v101);
    sub_24388A520();
    sub_24388A130(v74, v88);
    v86(v79, v87);
    goto LABEL_17;
  }

  sub_243899A40();
LABEL_20:
  swift_unexpectedError();
  __break(1u);
}

void sub_243893B74()
{
  sub_24388A664();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v68 = v5;
  v79 = v0;
  v8 = *((v7 & v6) + 0x58);
  sub_24387C120();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  sub_243899B00(v14, v65);
  v15 = type metadata accessor for Optional();
  v16 = sub_243876204(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_24388A414();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v73 = &v65 - v25;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  v67 = type metadata accessor for Ckcode_RecordTransport();
  v29 = sub_243876204(v67);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_24388A414();
  v35.n128_f64[0] = MEMORY[0x28223BE20](v34);
  v37 = (&v65 - v36);
  if (v2 >> 62)
  {
LABEL_21:
    if (v2 < 0)
    {
      v64 = v2;
    }

    else
    {
      v64 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = MEMORY[0x245D42700](v64, v35);
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v38 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  v65 = v10;
  v66 = v23;
  v71 = v8;
  v72 = v28;
  v69 = v18;
  v70 = v15;
  v10 = 0;
  v18 = 0;
  v78 = v2 & 0xC000000000000001;
  v75 = v2 & 0xFFFFFFFFFFFFFF8;
  v28 = MEMORY[0x277D84F90];
  v76 = v38;
  v77 = v2;
  do
  {
    if (v78)
    {
      v39 = MEMORY[0x245D426C0](v10, v2, v35);
    }

    else
    {
      if (v10 >= *(v75 + 16))
      {
        goto LABEL_20;
      }

      v39 = *(v2 + 8 * v10 + 32);
    }

    v8 = v39;
    v23 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_2438940C8(v39);
    v15 = v8;
    Ckcode_RecordTransport.init(_:)(v15, v37);
    sub_24388A538();
    sub_24389955C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = *(v28 + 2);
      v46 = sub_24388A5C4();
      v28 = sub_243888DF0(v46, v47, v48, v28);
    }

    v41 = *(v28 + 2);
    v40 = *(v28 + 3);
    v8 = (v41 + 1);
    if (v41 >= v40 >> 1)
    {
      v49 = sub_243899ABC(v40);
      v28 = sub_243888DF0(v49, v41 + 1, 1, v28);
    }

    sub_24388A520();
    sub_24388A130(v37, v42);
    *(v28 + 2) = v8;
    v43 = *(v31 + 80);
    sub_24388A634();
    v44 = *(v31 + 72);
    sub_24388A4F0();
    sub_243899660();
    ++v10;
    v2 = v77;
  }

  while (v23 != v76);
  v50 = v73;
  sub_24388F7F4(v73);
  v51 = v71;
  if (sub_243873AA4(v50, 1, v71))
  {

    v53 = v69;
    v52 = v70;
    v54 = *(v69 + 8);
    v54(v50, v70);
    v55 = 1;
  }

  else
  {
    v58 = v65;
    (*(v65 + 16))(v74, v50, v51);
    v53 = v69;
    v52 = v70;
    v54 = *(v69 + 8);
    v54(v50, v70);
    v59 = *(v68 + 104);
    sub_24388A3D0();
    v62 = sub_243897EA4(v60, v61);
    v63 = v74;
    sub_24387C358(v28, v51, v67, v59, v62, v72);
    (*(v58 + 8))(v63, v51);

    v55 = 0;
  }

  v56 = v72;
  sub_243873554(v72, v55, 1, v51);
  v57 = v66;
  (*(v53 + 16))(v66, v56, v52);
  sub_24388F898(v57);
  v54(v56, v52);
LABEL_18:
  sub_24388A67C();
}

void sub_2438940C8(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [a1 recordID];
  v58 = v1;
  sub_243890778();
  v3 = sub_243899B30();
  v5 = sub_2438819B4(v3, v4);

  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v57 = v5;
  v55 = v11;
  v56 = v5 + 64;
  if (!v10)
  {
LABEL_7:
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_47;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

LABEL_6:
  v12 = v6;
LABEL_10:
  v13 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v14 = v13 | (v12 << 6);
  v15 = *(v5 + 56);
  v16 = (*(v5 + 48) + 16 * v14);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v15 + 8 * v14);

  v54 = v17;
  v20 = MEMORY[0x245D42640](v17, v18);
  v21 = v20;
  v22 = 0;
  v23 = v19 + 64;
  v24 = 1 << *(v19 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 64);
  v27 = (v24 + 63) >> 6;
  v60 = v19;
  v61 = v20;
  v59 = v27;
  if (!v26)
  {
LABEL_15:
    while (1)
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        swift_unknownObjectRelease();

        v6 = v12;
        v5 = v57;
        v11 = v55;
        v7 = v56;
        if (!v10)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v26 = *(v23 + 8 * v28);
      ++v22;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v28 = v22;
LABEL_18:
    v29 = (v28 << 9) | (8 * __clz(__rbit64(v26)));
    v30 = *(*(v19 + 56) + v29);
    if (!v21)
    {
LABEL_46:
      v52 = v30;
      _StringGuts.grow(_:)(46);

      MEMORY[0x245D42450](v54, v18);

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();
      swift_unknownObjectRelease();

      goto LABEL_47;
    }

    v31 = *(*(v19 + 48) + v29);
    objc_opt_self();
    sub_243899B24();
    v32 = swift_dynamicCastObjCClass();
    v62 = v30;
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      if (v31 < 0)
      {
      }

      else
      {
        swift_unknownObjectRetain();
        if (v31 < [v33 count])
        {
          v35 = [v33 objectAtIndexedSubscript_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_24388A094(0, &qword_280D49520, 0x277CBC190);
          swift_dynamicCast();
          v36 = v63;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    objc_opt_self();
    sub_243899B24();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
      goto LABEL_46;
    }

    v36 = v37;
    swift_unknownObjectRetain_n();
    v38 = v30;
LABEL_25:
    if (*MEMORY[0x277CBC810] == 1)
    {
      v39 = MEMORY[0x245D42400](0xD000000000000018, 0x80000002438A1B50);
      v40 = [v58 _BOOLForUnitTestOverride_defaultValue_];

      if (v40)
      {
        break;
      }
    }

    sub_24388A4E4();
    v43 = [v41 v42];
    v44 = 0;
    if (!v43)
    {
      v51 = v44;

      _convertNSErrorToError(_:)();

      goto LABEL_44;
    }

    v26 &= v26 - 1;
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    switch(v47 >> 62)
    {
      case 1uLL:
        v48 = v45;
        v49 = v45 >> 32;
        goto LABEL_32;
      case 2uLL:
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        goto LABEL_32;
      case 3uLL:
        goto LABEL_51;
      default:
        v48 = 0;
        v49 = BYTE6(v47);
LABEL_32:
        if (v48 == v49)
        {
LABEL_51:
          __break(1u);
          return;
        }

        isa = Data._bridgeToObjectiveC()().super.isa;
        [v36 setAssetContent_];

        sub_243873E40(v45, v47);
        v22 = v28;
        v19 = v60;
        v21 = v61;
        v27 = v59;
        if (!v26)
        {
          goto LABEL_15;
        }

        break;
    }
  }

  [v36 setAssetContent_];
  type metadata accessor for CKError(0);
  sub_2438975D8(MEMORY[0x277D84F90]);
  sub_243897EA4(&qword_27ED94718, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_44:
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_45:

LABEL_47:

LABEL_48:
  v53 = *MEMORY[0x277D85DE8];
}

void sub_243894738()
{
  sub_24388A664();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277D85000];
  v9 = *v0;
  v10 = *MEMORY[0x277D85000];
  sub_24388A768();
  v12 = v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_243876204(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24388A424();
  v21 = v20 - v19;
  if (v7)
  {
    v22 = sub_243882320();
    if (v22)
    {
      v23 = v22;
      v24 = v7;
      if (v5)
      {
        v40 = v12;
        v25 = v5;
        sub_2438940C8(v25);

        v35 = v3;
        v12 = v40;
      }

      else
      {
        v34 = v3;
      }

      v23(v5, v24, v3);
      v36 = sub_24388A80C();
      sub_243871FB4(v36);
      v8 = MEMORY[0x277D85000];
    }

    else
    {
      v32 = v7;
      v33 = v3;
    }

    if (sub_2438915FC() & 1) != 0 && (sub_2438915A4())
    {
      v37 = *((*v8 & *v1) + 0xC8);
      sub_24388A61C();
      v7;
      v41 = *(v12 + 80);
      v42 = *(v12 + 96);
      type metadata accessor for CodeOperation.AssetInfo();
      v38 = sub_243899B54();
      sub_243890608(v38, v39);
      swift_endAccess();
    }

    if (v3)
    {
      sub_24388FAF8();
    }
  }

  else
  {
    CKLog.getter();
    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v1;
      v31 = v26;
      _os_log_impl(&dword_243870000, v27, v28, "Ignoring handleFetch with nil recordID %@", v29, 0xCu);
      sub_24387605C(v30, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    (*(v16 + 8))(v21, v13);
  }

  sub_24388A67C();
}

void (*sub_243894A0C(uint64_t a1, double a2))(uint64_t, double)
{
  result = sub_243882548();
  if (result)
  {
    result(a1, a2);
    v5 = sub_243876224();

    return sub_243871FB4(v5);
  }

  return result;
}

void sub_243894A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v10 = *MEMORY[0x277D85000];
  sub_24388A768();
  v12 = v11;
  sub_24388A768();
  v14 = *(v13 + 200);
  sub_24388A61C();
  v15 = *(v12 + 80);
  v16 = *(v12 + 96);
  sub_24388A4D4();
  type metadata accessor for CodeOperation.AssetInfo();
  sub_243890030();
  v18 = v17;
  swift_endAccess();
  sub_243876218();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v18 writeData:isa atOffset:a7];
}

void sub_243894B98()
{
  sub_24388A664();
  v1 = v0;
  v84 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for Optional();
  v8 = sub_243876204(v7);
  v81 = v9;
  v82 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_24388A414();
  v80 = v12 - v13;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  sub_24387C120();
  v79 = v17;
  v19 = *(v18 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v20);
  sub_243899B00(v21, v77);
  v22 = type metadata accessor for Logger();
  v23 = sub_243876204(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_24388A414();
  v83 = v28 - v29;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  CKLog.getter();
  v33 = v1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v77 = v22;
    v37 = v16;
    v38 = v36;
    v39 = v6;
    v40 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v33;
    *v40 = v1;
    v41 = v33;
    _os_log_impl(&dword_243870000, v34, v35, "In CodeOperation._finishOnCallbackQueueWithError() for %@", v38, 0xCu);
    sub_24387605C(v40, qword_27ED949D0, ":\x1B");
    v6 = v39;
    sub_24388A750();
    v16 = v37;
    v22 = v77;
    sub_24388A750();
  }

  v42 = *(v25 + 8);
  v42(v32, v22);
  v43 = sub_2438914A4();
  if (v43)
  {
    v44 = v43;
    v45 = v84;
    v46 = v84;
    if (v84 || (v46 = sub_24388FAA8()) != 0)
    {
      v47 = v45;
      v48 = v46;
      v49 = _convertErrorToNSError(_:)();

      v50 = v80;
      sub_243899A50();
      sub_243873554(v51, v52, v53, v6);
      v54 = [v49 CKClientSuitableError];
      v44(v50, v54);
      v55 = sub_243899B8C();
      sub_243871FB4(v55);

      (*(v81 + 8))(v50, v82);
    }

    else
    {
      sub_24388F7F4(v16);
      if (sub_243873AA4(v16, 1, v6) == 1)
      {
        v64 = *(v81 + 8);
        v65 = v6;
        v66 = v82;
        v64(v16, v82);
        v67 = v80;
        sub_243899A50();
        sub_243873554(v68, v69, v70, v65);
        v71 = related decl 'e' for CKErrorCode.init(_:description:)();
        v44(v67, v71);
        v72 = sub_243899B8C();
        sub_243871FB4(v72);

        v64(v67, v66);
      }

      else
      {
        v74 = v78;
        v73 = v79;
        (*(v79 + 32))(v78, v16, v6);
        v75 = v80;
        (*(v73 + 16))(v80, v74, v6);
        sub_243873554(v75, 0, 1, v6);
        v44(v75, 0);
        v76 = sub_243899B8C();
        sub_243871FB4(v76);
        (*(v81 + 8))(v75, v82);
        (*(v73 + 8))(v74, v6);
      }
    }
  }

  else
  {
    CKLog.getter();
    v56 = v33;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v1;
      v61 = v56;
      _os_log_impl(&dword_243870000, v57, v58, "In CodeOperation._finishOnCallbackQueueWithError(), no completion block set for %@", v59, 0xCu);
      sub_24387605C(v60, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    v42(v83, v22);
  }

  v62 = sub_24388A708();
  sub_24389514C(v62, v63);
  sub_24388A67C();
}

void sub_24389514C(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 80);
  v6 = *(v3 + 96);
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CodeOperation();
  objc_msgSendSuper2(&v7, sel__finishOnCallbackQueueWithError_, v4, v5, v6);
}

void sub_2438951FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_243894B98();
}

uint64_t sub_243895254@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  result = sub_24388FFE4();
  v5 = result;
  if (result)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 96);
    sub_24388A4D4();
    result = type metadata accessor for CodeOperation.CallbackRelay();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  return result;
}

id sub_2438952E4()
{
  sub_243895254(v9);
  v0 = v10;
  if (v10)
  {
    v1 = sub_24388A220(v9, v10);
    v2 = *(v0 - 8);
    v3 = *(v2 + 64);
    v4 = MEMORY[0x28223BE20](v1);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v6, v4);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v2 + 8))(v6, v0);
    sub_24387E12C(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_243895428(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CodeOperation.CallbackRelay();
  v4 = objc_msgSendSuper2(&v8, sel_init, v6, v7);

  return v4;
}

uint64_t sub_2438954E4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2438955B0, 0, 0);
}

uint64_t sub_2438955B0()
{
  v1 = v0[18];
  v2 = sub_243895418();
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243895724;
    swift_continuation_init();
    v0[17] = v6;
    sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v7 = sub_24388A6E4();
    v8(v7);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v3 handleWillStart_];
    v9 = *(v5 + 8);
    v10 = sub_243899A7C();
    v11(v10);
    v2 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243895724()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_2438999A0;
  }

  else
  {
    v5 = sub_2438999A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24389584C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243899988;

  return sub_2438954E4();
}

uint64_t sub_2438958F4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2438959C0, 0, 0);
}

uint64_t sub_2438959C0()
{
  v1 = v0[18];
  v2 = sub_243895418();
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243895B34;
    swift_continuation_init();
    v0[17] = v6;
    sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v7 = sub_24388A6E4();
    v8(v7);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v3 handleDidStart_];
    v9 = *(v5 + 8);
    v10 = sub_243899A7C();
    v11(v10);
    v2 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243895B34()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_243895CA0;
  }

  else
  {
    v5 = sub_243895C3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_243895C3C()
{
  sub_24388A7BC();
  v1 = *(v0 + 168);

  sub_243899A94();

  return v2();
}

uint64_t sub_243895CA0()
{
  sub_24388BCF4();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  sub_243899A94();
  v5 = v0[23];

  return v4();
}

uint64_t sub_243895D34(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243895DDC;

  return sub_2438958F4();
}

uint64_t sub_243895DDC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_24388BC74();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_243899AC8();
    v12(v11, v10);
  }

  else
  {
    v13 = sub_243899AC8();
    v14(v13, 0);
  }

  _Block_release(v4[3]);
  v15 = v8[1];

  return v15();
}

void sub_243895F54(void *a1)
{
  v1 = a1;
  sub_243895F48();
}

void sub_243895FA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243895F9C(v4);
}

void sub_24389601C(uint64_t a1, SEL *a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243896010(v4);
}

void sub_2438960E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F12C;
    v9[3] = &unk_28569B410;
    v8 = _Block_copy(v9);

    [v7 openFileWithOpenInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_2438961F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F204;
    v9[3] = &unk_28569B460;
    v8 = _Block_copy(v9);

    [v7 handleFinishWithAssetDownloadStagingInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896308(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_243899B30();
  a7(v13);
}

void sub_2438963AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v5 handleOperationDidCompleteWithMetrics:a1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896438(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_2438963AC(a3, a4);
}

void sub_2438964B4(char a1, char a2, uint64_t a3)
{
  v6 = sub_243895418();
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 handleDiscretionaryOperationShouldStart:a1 & 1 nonDiscretionary:a2 & 1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896550(void *a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  sub_2438964B4(a3, a4, a5);
}

void sub_2438965D0(SEL *a1)
{
  v2 = sub_243895418();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_243896624(void *a1)
{
  v1 = a1;
  sub_2438965C4();
}

void sub_24389666C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_243895418();
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x245D42400](a1, a2);
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2438999A8;
    v14[3] = &unk_28569B4B0;
    v13 = _Block_copy(v14);

    [v11 handleDaemonOperationWillStartWithClassName:v12 isTopLevelDaemonOperation:a3 & 1 replyBlock:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896770(void *a1, int a2, int a3, char a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a1;
  sub_24389666C(v8, v10, a4, sub_243898A60, v11);
}

void sub_243896890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v14 = sub_243895418();
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x245D42400](a1, a2);
    v18[4] = a4;
    v18[5] = a5;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2438999A8;
    v18[3] = a6;
    v17 = _Block_copy(v18);

    [v15 *a7];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2438969CC()
{
  sub_243899BAC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = _Block_copy(v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = v5;
  v15 = v7;
  v1(v10, v12, v14, v3, v13);

  sub_243899B78();
}

void sub_243896A98()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243892D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896B24(void *a1, int a2, int a3, int a4, int a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a1;
  sub_243896A98();
}

void sub_243896C30()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243893470();
  }

  else
  {
    __break(1u);
  }
}

void sub_243896CB4(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_243896C30();

  sub_243873E40(v8, v10);
}

void sub_243896D8C()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243893B74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243896DE8(void *a1)
{
  sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = a1;
  sub_243896D8C();
}

void sub_243896E5C()
{
  v0 = sub_243895418();
  if (v0)
  {
    v1 = v0;
    sub_243894738();
  }

  else
  {
    __break(1u);
  }
}

void sub_243896ED0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  sub_243896E5C();
}

void sub_243896F68(uint64_t a1, double a2)
{
  v4 = sub_243895418();
  if (v4)
  {
    v5 = v4;
    sub_243894A0C(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_243896FD4(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_243896F68(v6, a2);
}

void sub_24389704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_243895418();
  if (v14)
  {
    v15 = v14;
    sub_243894A88(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2438970F0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = a1;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_24389704C(v15, v12, v14, a5, v18, v20, a7);
  sub_243873E40(v18, v20);
}

id CodeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2438972A0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v3 = sub_24388A4D4();
  v6.receiver = v0;
  v6.super_class = v4(v3);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_243897318(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *a1;
  v5 = *(v4 + 0x70);
  v6 = *(v4 + 0x50);
  sub_243899B54();
  v7 = type metadata accessor for Optional();
  sub_243876174(v7);
  (*(v8 + 8))(&a1[v5]);
  sub_2438999F0();
  v10 = *(v9 + 120);
  v11 = *((v3 & v2) + 0x58);
  v12 = type metadata accessor for Optional();
  sub_243876174(v12);
  (*(v13 + 8))(&a1[v10]);
  sub_2438999F0();
  v15 = *&a1[*(v14 + 128) + 8];

  sub_2438999F0();
  v17 = *&a1[*(v16 + 136) + 8];

  sub_2438999F0();
  v19 = *(v18 + 144);
  v45 = *(v4 + 96);
  v20 = type metadata accessor for CodeOperation.DestinationServer();
  sub_243876174(v20);
  (*(v21 + 8))(&a1[v19]);
  sub_2438999F0();
  v23 = *&a1[*(v22 + 152)];

  sub_2438999F0();
  v25 = *&a1[*(v24 + 160)];

  sub_2438999F0();

  sub_2438999F0();
  v28 = sub_24388A658(*(v27 + 176));
  sub_243880F5C(v28, v30, *(v29 + 16), *(v29 + 24), *(v29 + 32));
  sub_2438999F0();

  sub_2438999F0();
  v33 = *&a1[*(v32 + 200)];

  sub_2438999F0();
  v35 = sub_24388A658(*(v34 + 208));
  sub_243871FB4(v35);
  sub_2438999F0();
  v37 = sub_24388A658(*(v36 + 216));
  sub_243871FB4(v37);
  sub_2438999F0();
  v39 = sub_24388A658(*(v38 + 224));
  sub_243871FB4(v39);
  sub_2438999F0();
  v41 = sub_24388A658(*(v40 + 248));
  sub_243871FB4(v41);
  sub_2438999F0();
  v43 = sub_24388A658(*(v42 + 256));
  return sub_243871FB4(v43);
}

unint64_t sub_2438975D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  sub_243873884(&qword_27ED94EB8, &qword_24389E3B8);
  sub_243899B24();
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2438994F8();
    result = sub_243898F0C(v13, v14, sub_24389998C);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_24389954C(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24389773C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_243899980;

  return v7();
}

uint64_t sub_243897824(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24389790C;

  return v8();
}

uint64_t sub_24389790C()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_24388BC74();
  *v4 = v3;

  sub_243899A94();

  return v5();
}

uint64_t sub_2438979EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_243873884(&qword_27ED94E78, &qword_24389E340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2438994F8();
  v13 = type metadata accessor for TaskPriority();
  if (sub_243873AA4(v12, 1, v13) == 1)
  {
    sub_24387605C(v12, &qword_27ED94E78, &qword_24389E340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24387605C(a3, &qword_27ED94E78, &qword_24389E340);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24387605C(a3, &qword_27ED94E78, &qword_24389E340);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243897CC8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243897DC0;

  return v7(a1);
}

uint64_t sub_243897DC0()
{
  sub_24388A7BC();
  sub_24388BCE8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_24388BC74();
  *v4 = v3;

  sub_243899A94();

  return v5();
}

uint64_t sub_243897EA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_243899B24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243897EE8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v8 = *(a1 + 96);
      result = type metadata accessor for CodeOperation.DestinationServer();
      if (v7 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of CodeOperation.request.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 272))();
}

uint64_t dispatch thunk of CodeOperation.request.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 280))();
}

uint64_t dispatch thunk of CodeOperation.dataProtectionType.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 464))();
}

uint64_t dispatch thunk of CodeOperation.dataProtectionType.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 472))();
}

uint64_t dispatch thunk of CodeOperation.permittedRemoteMeasurement.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 488))();
}

uint64_t dispatch thunk of CodeOperation.permittedRemoteMeasurement.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 496))();
}

uint64_t dispatch thunk of CodeOperation.shouldSendRecordPCSKeys.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 512))();
}

uint64_t dispatch thunk of CodeOperation.shouldSendRecordPCSKeys.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 520))();
}

uint64_t dispatch thunk of CodeOperation.perRecordCompletionBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 600))();
}

uint64_t dispatch thunk of CodeOperation.perRecordCompletionBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 608))();
}

uint64_t dispatch thunk of CodeOperation.perRecordProgressBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 624))();
}

uint64_t dispatch thunk of CodeOperation.perRecordProgressBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 632))();
}

uint64_t dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 648))();
}

uint64_t dispatch thunk of CodeOperation.codeOperationCompletionBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 656))();
}

uint64_t dispatch thunk of CodeOperation.dropInMemoryAssetContentASAP.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 672))();
}

uint64_t dispatch thunk of CodeOperation.dropInMemoryAssetContentASAP.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 680))();
}

uint64_t dispatch thunk of CodeOperation.shouldFetchAssetContentInMemory.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 696))();
}

uint64_t dispatch thunk of CodeOperation.shouldFetchAssetContentInMemory.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 704))();
}

uint64_t dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 720))();
}

uint64_t dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return (*(v3 + 728))();
}

uint64_t sub_2438988A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2438988DC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_243898918()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2438989DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243898A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243898A7C()
{
  sub_24388BCF4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_243899A88(v3);
  *v4 = v5;
  v4[1] = sub_24389790C;
  v6 = sub_243876224();

  return v7(v6);
}

uint64_t sub_243898B1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_243899A88(v5);
  *v6 = v7;
  v6[1] = sub_243899980;

  return sub_24389773C(v1, v2, v4);
}

uint64_t sub_243898BD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243898C18(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_243899A88(v7);
  *v8 = v9;
  v8[1] = sub_243899980;

  return sub_243897824(a1, v3, v4, v6);
}

uint64_t sub_243898CE0()
{
  sub_24388BCF4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_243899A88(v3);
  *v4 = v5;
  v6 = sub_243899A5C(v4);

  return v7(v6);
}

uint64_t sub_243898D78()
{
  sub_24388BCF4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_243899A88(v3);
  *v4 = v5;
  v6 = sub_243899A5C(v4);

  return v7(v6);
}

uint64_t sub_243898E10()
{
  sub_24388BCF4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_243899A88(v3);
  *v4 = v5;
  v4[1] = sub_243899980;
  v6 = sub_243876224();

  return v7(v6);
}

unint64_t sub_243898EB0(uint64_t a1)
{
  v3 = MEMORY[0x245D427E0](*(v1 + 40), a1);

  return sub_2438993C0(a1, v3);
}

uint64_t sub_243898F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v5 = sub_243876218();

  return a3(v5);
}

unint64_t sub_243898F8C()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_243899B24();

  return sub_243899420(v1, v2);
}

void sub_243898FCC()
{
  sub_243899BAC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  sub_243898EB0(v4);
  sub_243899A30();
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_243873884(&qword_27ED94EB0, &qword_24389E3B0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v1;
  v17 = sub_243898EB0(v5);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    v19 = *(*v1 + 56);
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = v7;
    sub_243899B78();
  }

  else
  {
    sub_243899A7C();
    sub_243899B78();

    sub_243899334(v23, v24, v25, v26);
  }
}

uint64_t sub_2438990D8()
{
  sub_243899BAC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  sub_2438999B0();
  sub_243898F0C(v11, v5, v12);
  sub_243899A30();
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v1;
  sub_2438999B0();
  v22 = sub_243898F0C(v7, v5, v21);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v22;
LABEL_5:
  v24 = *v1;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v18);
    *(v25 + 8 * v18) = v9;
    sub_243899B78();
  }

  else
  {
    sub_243899378(v18, v7, v5, v9, v24);
    sub_243899B78();
  }
}

id sub_243899208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  sub_243898F8C();
  sub_243899A30();
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v9;
  sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = *v4;
  v16 = sub_243898F8C();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
    sub_243899C30();
  }

  else
  {
    sub_243899334(v13, a2, a1, v18);
    sub_243899C30();

    return v23;
  }
}

unint64_t sub_243899334(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_243899378(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2438993C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_243899420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2438994F8()
{
  sub_243899B18();
  v3 = sub_243873884(v1, v2);
  sub_243899A04(v3);
  v5 = *(v4 + 16);
  v6 = sub_243876224();
  v7(v6);
  return v0;
}

_OWORD *sub_24389954C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24389955C()
{
  sub_243899B18();
  v2 = v1(0);
  sub_243899A04(v2);
  v4 = *(v3 + 16);
  v5 = sub_243876224();
  v6(v5);
  return v0;
}

void sub_2438995B0()
{
  v1 = *v0;
  sub_2438996B4();
  *v0 = v2;
}

void sub_243899608()
{
  v1 = *v0;
  sub_2438996B4();
  *v0 = v2;
}

uint64_t sub_243899660()
{
  sub_243899B18();
  v2 = v1(0);
  sub_243899A04(v2);
  v4 = *(v3 + 32);
  v5 = sub_243876224();
  v6(v5);
  return v0;
}

void sub_2438996B4()
{
  sub_24388A664();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
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

  sub_243873884(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = v7(0);
  sub_24387993C(v22);
  v24 = *(v23 + 80);
  sub_24388A634();
  if (v10)
  {
    v5(v8 + v25, v14, v19 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_24388A67C();
}

uint64_t sub_243899864(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_24389989C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return v3(a1, *a2);
}

uint64_t sub_2438998C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_243899B98();
  return v3();
}

uint64_t sub_2438998FC(void *a1, double *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_243899934(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_243899A5C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_243899A94()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_243899AD8()
{

  return objc_allocWithZone(v0);
}

BOOL sub_243899BC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
}

uint64_t sub_243899BE0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
}

id sub_243899C00(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_243899C18()
{
}

uint64_t RemoteMeasurement.data.getter()
{
  v1 = *v0;
  sub_243873DE8(*v0, *(v0 + 8));
  return v1;
}

uint64_t RemoteMeasurement.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, __int128 a11)
{
  sub_243873884(&qword_27ED94ED0, &qword_24389E3F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24389E3E0;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  *(v17 + 35) = a4;
  *(v17 + 36) = a5;
  *(v17 + 37) = a6;
  *(v17 + 38) = a7;
  *(v17 + 39) = a8;
  *(v17 + 40) = a10;
  *(v17 + 48) = a11;
  result = sub_243899D58(v17);
  *a9 = result;
  a9[1] = v19;
  return result;
}

uint64_t sub_243899D58(uint64_t a1)
{
  v7 = sub_243873884(&qword_27ED94ED8, &qword_24389E4A8);
  v8 = sub_243899F30();
  v6[0] = a1;
  v2 = sub_24388A220(v6, v7);
  sub_243899F94(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_24387E12C(v6);
  return v3;
}

uint64_t RemoteMeasurement.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v4 = v4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 != 32)
      {
LABEL_7:
        sub_243873E40(result, a2);
        result = 0;
        a2 = 0xF000000000000000;
      }

      *a3 = result;
      a3[1] = a2;
      break;
  }

  return result;
}

uint64_t sub_243899E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_243899ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_243899F30()
{
  result = qword_280D49090;
  if (!qword_280D49090)
  {
    sub_243888DA8(&qword_27ED94ED8, &qword_24389E4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D49090);
  }

  return result;
}

uint64_t sub_243899F94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x245D420C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x245D420D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id CKRecordChange.changeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 changeType];
  if (v3 == 3)
  {
    result = 0;
    v5 = 2;
    goto LABEL_9;
  }

  if (v3 == 2)
  {
    result = [v1 record];
    if (result)
    {
      v5 = 1;
LABEL_9:
      *a1 = result;
      *(a1 + 8) = v5;
      return result;
    }
  }

  else if (v3 == 1)
  {
    result = [v1 record];
    if (result)
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CKRecordObserver.RecordChanges.Iterator.next()()
{
  v1 = *(MEMORY[0x277D857A0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  *v2 = v0;
  v2[1] = sub_24389A1B8;

  return MEMORY[0x2822003F0](v0 + 16, v3);
}

uint64_t sub_24389A1B8()
{
  sub_24388BCE8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_24388BC74();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_24389B1AC, 0, 0);
}

uint64_t sub_24389A2A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24389A338;

  return CKRecordObserver.RecordChanges.Iterator.next()();
}

uint64_t sub_24389A338(uint64_t a1)
{
  sub_24388BCE8();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  sub_24388BC74();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24389A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_24389A4F8;

  return sub_24389A614();
}

uint64_t sub_24389A4F8(uint64_t a1)
{
  sub_24388BCE8();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v2;
  sub_24388BC74();
  *v8 = v7;

  if (v1)
  {
    **(v5 + 24) = v1;
  }

  else
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24389A614()
{
  v1 = *(MEMORY[0x277D857A0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  *v2 = v0;
  v2[1] = sub_24389A6C4;

  return MEMORY[0x2822003F0](v0 + 16, v3);
}

uint64_t sub_24389A6C4()
{
  sub_24388BCE8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_24388BC74();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_24389A7B4, 0, 0);
}

uint64_t CKRecordObserver.RecordChanges.makeAsyncIterator()()
{
  v0 = sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);

  return MEMORY[0x2822003E0](v0);
}

uint64_t sub_24389A818()
{
  CKRecordObserver.RecordChanges.makeAsyncIterator()();

  return sub_24389AF44(v0);
}

id CKRecordObserver.init(container:recordType:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = a1;
    v7 = MEMORY[0x245D42400](a2, a3);
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainer:a1 recordType:v7];

  return v9;
}

uint64_t CKRecordObserver.recordChanges.getter()
{
  v1 = sub_243873884(&qword_27ED94EF0, qword_24389E4C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v8 = v0;
  sub_24388A094(0, &qword_27ED94EF8, 0x277CBC5B0);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_24389A9FC(uint64_t a1, void *a2)
{
  v4 = sub_243873884(&qword_27ED94F38, &qword_24389E628);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &aBlock[-1] - v8;
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_24388A094(0, &qword_27ED94F40, 0x277CBC5D8);
  swift_dynamicCast();
  v10 = aBlock[6];
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_24389B0A0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24389B11C;
  aBlock[3] = &unk_28569B5F0;
  v13 = _Block_copy(aBlock);

  [v10 registerWithBlock_];
  _Block_release(v13);
  *(swift_allocObject() + 16) = v10;
  return AsyncStream.Continuation.onTermination.setter();
}

unint64_t sub_24389AC5C()
{
  result = qword_27ED94F00;
  if (!qword_27ED94F00)
  {
    type metadata accessor for CKRecordObserver.RecordChanges.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94F00);
  }

  return result;
}

uint64_t sub_24389ACD4(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24389ACF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24389AD04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_24389AD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24389AD88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_24389AE60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_24389AED4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24389AED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_24388A094(255, &qword_27ED94EF8, 0x277CBC5B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24389AF44(uint64_t a1)
{
  v2 = type metadata accessor for CKRecordObserver.RecordChanges(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24389AFA0(void *a1)
{
  v2 = sub_243873884(&qword_27ED94F48, qword_24389E630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  v9[1] = a1;
  v7 = a1;
  sub_243873884(&qword_27ED94F38, &qword_24389E628);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24389B0A0(void *a1)
{
  v2 = *(*(sub_243873884(&qword_27ED94F38, &qword_24389E628) - 8) + 80);

  return sub_24389AFA0(a1);
}

void sub_24389B11C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24389B184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}