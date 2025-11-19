uint64_t sub_24F24C4A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v64 = a3;
  v58[1] = a1;
  v10 = sub_24F92BEE8();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F92BE88();
  MEMORY[0x28223BE20](v59);
  v58[2] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v58 - v15;
  v58[0] = v58 - v15;
  v17 = (v5 + qword_27F39DFB0);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_27F39DFB8);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + qword_27F39DFC0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 3;
  *(v5 + qword_27F39DFE8) = 0;
  *(v5 + qword_27F39DFC8) = 0;
  *(v5 + qword_27F23CC40) = 0;
  *(v5 + qword_27F39DFD0) = 0;
  v20 = (v5 + qword_27F23CC28);
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_27F39DFD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CC68);
  swift_allocObject();
  *(v5 + v21) = sub_24F92ADA8();
  v22 = qword_27F39DFE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v5 + v22) = sub_24F92ADA8();
  *(v5 + qword_27F23CC38) = 0;
  v23 = qword_27F23CC30;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23CC70);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = MEMORY[0x277D84FA0];
  *(v6 + v23) = v24;
  *(v6 + qword_27F23CC18) = a2;
  *(v6 + qword_27F23CC48) = a5;
  v25 = &a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v26 = *v25;
  v27 = v6 + qword_27F23CC20;
  v28 = v25[8];
  *v27 = *v25;
  *(v27 + 8) = v28;
  v63 = a4;
  sub_24F24D9B4(a4, v6 + qword_27F23CC10);
  v29 = sub_24F91F4A8();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  *(v6 + qword_27F39CC00) = 0;
  *(v6 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v6 + qword_27F2326C8) = 0;
  v30 = *(*v6 + 640);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD20);
  v32 = *(*(v31 - 8) + 56);
  v32(v6 + v30, 1, 1, v31);
  v33 = *(*v6 + 648);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v34 - 8) + 56))(v6 + v33, 1, 1, v34);
  v35 = *(*v6 + 656);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD10);
  (*(*(v36 - 8) + 56))(v6 + v35, 1, 1, v36);
  v32(v6 + *(*v6 + 664), 1, 1, v31);
  v37 = *(*v6 + 672);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v38 - 8) + 56))(v6 + v37, 1, 1, v38);
  v39 = *(*v6 + 680);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v40 - 8) + 56))(v6 + v39, 1, 1, v40);
  v41 = *(*v6 + 688);
  sub_24E74EC40();

  v42 = a2;

  sub_24EB6CE50(v26, v28);
  sub_24F927DA8();
  v66 = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v61 + 104))(v60, *MEMORY[0x277D85260], v62);
  *(v6 + v41) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v43 = (v6 + *(*v6 + 704));
  *v43 = 0u;
  v43[1] = 0u;
  *(v43 + 25) = 0u;
  v44 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v6 + v44) = sub_24F92ADA8();
  v45 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v6 + v45) = sub_24F92ADA8();
  v46 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v46) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v47 = (v6 + *(*v6 + 752));
  *v47 = 0;
  v47[1] = 0;
  v48 = v58[0];
  sub_24E60169C(v58[0], v6 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v67, v6 + *(*v6 + 744), &qword_27F229490);
  v49 = type metadata accessor for InlineUnifiedMessagePresenter();
  v65.receiver = objc_allocWithZone(v49);
  v65.super_class = v49;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v65, sel_init);

  v51 = sub_24EBBA1D0(v50, 0, 0, 0);
  v52 = *(*v51 + 1112);

  *(v51 + qword_27F39CC00) = v52(v64);

  sub_24EBC1940(0);

  sub_24E601704(v67, &qword_27F229490);
  sub_24E601704(v48, &qword_27F228530);
  v53 = objc_opt_self();
  swift_retain_n();
  v54 = [v53 defaultCenter];
  if (qword_27F210FF0 != -1)
  {
    swift_once();
  }

  [v54 addObserver:v51 selector:? name:? object:?];

  v55 = [v53 defaultCenter];
  v56 = qword_27F2103B8;

  if (v56 != -1)
  {
    swift_once();
  }

  [v55 addObserver:v51 selector:sel_onScrollToShelfNotification_ name:qword_27F22B070 object:0];

  sub_24F24CFC8(v63);
  return v51;
}

uint64_t sub_24F24CFC8(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageUrls();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F24D05C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DFE8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for ArcadeDiffablePagePresenter()
{
  result = qword_27F23CC50;
  if (!qword_27F23CC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F24D104()
{
  result = type metadata accessor for ArcadePageUrls();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *sub_24F24D234(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = result;

    return sub_24E5FCA4C(a2);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t sub_24F24D308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F24D424()
{

  return swift_deallocObject();
}

uint64_t sub_24F24D478()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24F24D968(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_24F24D9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadePageUrls();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F24DA18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_41Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t Queue.contents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Queue.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F92AE18();
  *a1 = result;
  return result;
}

uint64_t Queue.enqueue(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_24F92B6E8();
  return sub_24F92B658();
}

uint64_t Queue.dequeue()()
{
  v1 = v0;
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92BC48();

  sub_24F92BC68();
  sub_24F92C658();
  swift_getWitnessTable();
  v2 = sub_24F92B738();

  *v1 = v2;
  return result;
}

uint64_t sub_24F24DE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  return a3(v4, WitnessTable);
}

uint64_t sub_24F24DED8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int64x2_t sub_24F24DF2C(uint64_t a1)
{
  v2 = sub_24E6B00B4(*a1);
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v4 = swift_allocObject();
  if (v3 == 1)
  {
    v5 = qword_24F9D8CD0[v2];
    v6 = *(a1 + 16);
    *(v4 + 16) = xmmword_24F93DE60;
    *(v4 + 32) = xmmword_24F944DE0;
    *(v4 + 48) = vdupq_n_s64(0x4077F00000000000uLL);
    *(v4 + 64) = 0;
    *(v4 + 72) = vdupq_n_s64(0xC0C81C8000000000);
    __asm { FMOV            V1.2D, #1.0 }

    *(v4 + 88) = _Q1;
    *(v4 + 104) = v5;
    *(v4 + 112) = v5;
    *(v4 + 120) = v5;
    *(v4 + 128) = v5;
    *(v4 + 136) = v6;
    *(v4 + 144) = v6;
    *(v4 + 152) = 0;
    result = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 16);
    *(v4 + 160) = *MEMORY[0x277D768C8];
    *(v4 + 176) = v13;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    *(v4 + 16) = xmmword_24F93A400;
    *(v4 + 32) = xmmword_24F9D8CB0;
    result = vdupq_n_s64(0xC0C81C8000000000);
    *(v4 + 48) = result;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    __asm { FMOV            V5.2D, #1.0 }

    *(v4 + 88) = _Q5;
    *&_Q5 = qword_24F9D8CD0[v2];
    *(v4 + 104) = _Q5;
    *(v4 + 112) = _Q5;
    *(v4 + 120) = _Q5;
    *(v4 + 128) = _Q5;
    *(v4 + 136) = v14;
    *(v4 + 144) = v14;
    *(v4 + 152) = 1;
    *(v4 + 160) = v15;
    *(v4 + 168) = v16;
    *(v4 + 176) = v17;
    *(v4 + 184) = v18;
    *(v4 + 192) = xmmword_24F9D8CC0;
    *(v4 + 208) = result;
    *(v4 + 224) = 0;
    *(v4 + 232) = 0;
    *(v4 + 240) = 0;
    *(v4 + 248) = v3;
    *(v4 + 256) = v3;
    *(v4 + 264) = _Q5;
    *(v4 + 272) = _Q5;
    *(v4 + 280) = _Q5;
    *(v4 + 288) = _Q5;
    *(v4 + 296) = v14;
    *(v4 + 304) = v14;
    *(v4 + 312) = 1;
    *(v4 + 320) = v15;
    *(v4 + 328) = v16;
    *(v4 + 336) = v17;
    *(v4 + 344) = v18;
  }

  return result;
}

uint64_t static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F928328();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static TodayCardOverlay.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

unint64_t sub_24F24E2D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F252D28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TodayCardOverlay.__allocating_init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E60169C(a1, &v15, &qword_27F235830);
  if (*(&v16 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v15, &qword_27F235830);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t TodayCardOverlay.init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v16, &qword_27F235830);
  if (*(&v17 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v16, &qword_27F235830);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t static TodayCardOverlay.kind(from:)()
{
  v1 = v0;
  v2 = sub_24F92AC38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12)
  {

    v13 = sub_24F252A4C(v10, v12);
    if (v14)
    {
      *v5 = v10;
      v5[1] = v12;
      v5[2] = v1;
      v15 = *MEMORY[0x277D22528];
      v22 = *(v3 + 104);
      v22(v5, v15, v2);
      sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24F93DE60;
      *(v6 + 32) = swift_allocError();
      (*(v3 + 16))(v18, v5, v2);
      *v17 = 1684957547;
      v17[1] = 0xE400000000000000;
      v17[2] = v1;
      v17[3] = v6;
      v22(v17, *MEMORY[0x277D22540], v2);
      swift_willThrow();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v6 = v13;
    }
  }

  else
  {
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = v1;
    (*(v3 + 104))(v19, *MEMORY[0x277D22530], v2);
    swift_willThrow();
  }

  return v6;
}

uint64_t TodayCardOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a2;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_24F928398();
  v15 = sub_24F928348();
  if (v16)
  {
    v29 = v15;
    v30 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v29 = v18;
    v30 = v20;
    v4 = v3;
  }

  sub_24F92C7F8();
  v17 = *(v12 + 8);
  v17(v14, v11);
  v21 = v32;
  *(v5 + 24) = v31;
  *(v5 + 40) = v21;
  *(v5 + 56) = v33;
  type metadata accessor for TodayCardOverlay();
  v22 = v28;
  v23 = static TodayCardOverlay.kind(from:)();
  if (v4)
  {
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v34, v24);
    v17(v22, v11);
    sub_24E6585F8(v5 + 24);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    v26 = sub_24F9285B8();
    (*(*(v26 - 8) + 8))(v34, v26);
    v17(v22, v11);
    *(v5 + 16) = v25;
  }

  return v5;
}

uint64_t static TodayCardOverlay.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_24F9285B8();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v67[1] = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = v67 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = v67 - v8;
  MEMORY[0x28223BE20](v9);
  v71 = v67 - v10;
  MEMORY[0x28223BE20](v11);
  v77 = v67 - v12;
  MEMORY[0x28223BE20](v13);
  v70 = v67 - v14;
  MEMORY[0x28223BE20](v15);
  v68 = v67 - v16;
  MEMORY[0x28223BE20](v17);
  v69 = v67 - v18;
  MEMORY[0x28223BE20](v19);
  v76 = v67 - v20;
  v75 = sub_24F928388();
  v81 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67[0] = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v67 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v67 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v67 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v67 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v67 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v67 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v67 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v67 - v43;
  v45 = a1;
  v46 = v82;
  v47 = v83;
  v48 = static TodayCardOverlay.kind(from:)();
  if (v47)
  {
    return v46;
  }

  v50 = v44;
  v51 = v41;
  v53 = v76;
  v52 = v77;
  v54 = v78;
  if (v48 > 3)
  {
    v56 = v78;
    if (v48 <= 5)
    {
      if (v48 == 4)
      {
        (*(v81 + 16))(v32, v45, v75);
        (*(v79 + 16))(v52, v56, v80);
        type metadata accessor for TodayCardActionOverlay();
        v46 = swift_allocObject();
        TodayCardActionOverlay.init(deserializing:using:)(v32, v52);
      }

      else
      {
        (*(v81 + 16))(v29, v45, v75);
        v62 = v71;
        (*(v79 + 16))(v71, v56, v80);
        type metadata accessor for TodayCardThreeLineOverlay();
        v46 = swift_allocObject();
        TodayCardThreeLineOverlay.init(deserializing:using:)(v29, v62);
      }

      return v46;
    }

    if (v48 == 6)
    {
      (*(v81 + 16))(v26, v45, v75);
      v58 = v72;
      (*(v79 + 16))(v72, v56, v80);
      type metadata accessor for TodayCardArcadeLockupOverlay();
      v46 = swift_allocObject();
      TodayCardArcadeLockupOverlay.init(deserializing:using:)(v26, v58);
      return v46;
    }

    if (v48 == 7)
    {
      v65 = v74;
      v83 = *(v81 + 16);
      v81 += 16;
      v83(v74);
      v66 = v73;
      v82 = *(v79 + 16);
      v82(v73, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v65, v66);
      return v46;
    }
  }

  else
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        (*(v81 + 16))(v38, v45, v75);
        v57 = v68;
        (*(v79 + 16))(v68, v54, v80);
        type metadata accessor for TodayCardLockupListOverlay();
        v46 = swift_allocObject();
        TodayCardLockupListOverlay.init(deserializing:using:)(v38, v57);
      }

      else
      {
        v63 = v78;
        (*(v81 + 16))(v35, v45, v75);
        v64 = v70;
        (*(v79 + 16))(v70, v63, v80);
        type metadata accessor for TodayCardParagraphOverlay();
        v46 = swift_allocObject();
        TodayCardParagraphOverlay.init(deserializing:using:)(v35, v64);
      }

      return v46;
    }

    if (!v48)
    {
      v55 = v50;
      (*(v81 + 16))(v50, v45, v75);
      (*(v79 + 16))(v53, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v55, v53);
      return v46;
    }

    if (v48 == 1)
    {
      v59 = v78;
      v60 = v51;
      (*(v81 + 16))(v51, v45, v75);
      v61 = v69;
      (*(v79 + 16))(v69, v59, v80);
      type metadata accessor for TodayCardMarketingLockupOverlay();
      v46 = swift_allocObject();
      TodayCardMarketingLockupOverlay.init(deserializing:using:)(v60, v61);
      return v46;
    }
  }

  v84 = v48;
  result = sub_24F92CF48();
  __break(1u);
  return result;
}

uint64_t TodayCardLockupOverlay.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMarketingLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardLockupListOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupListOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardParagraphOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardActionOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardActionOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardThreeLineOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardThreeLineOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardArcadeLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardArcadeLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardAppEventLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24F24F8EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *TodayCardLockupOverlay.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v62 = a2;
  v59 = v2;
  v5 = *v2;
  v57 = v3;
  v58 = v5;
  v6 = sub_24F9285B8();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v49[-v9];
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v53 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v49[-v23];
  sub_24F928398();
  v25 = sub_24F928328();
  v55 = v12;
  v26 = *(v12 + 8);
  v27 = v24;
  v28 = v11;
  v26(v27, v11);
  if (v25)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x70756B636F6CLL;
    v32 = 0xE600000000000000;
LABEL_5:
    v34 = v58;
    v30[1] = v32;
    v30[2] = v34;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_24F928398();
  v50 = sub_24F928278();
  v33 = v50;
  v26(v21, v11);
  if (v33 == 2)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x7379616C70736964;
    v32 = 0xEC0000006E6F6349;
    goto LABEL_5;
  }

  v51 = v26;
  v52 = v11;
  sub_24F928398();
  v37 = *(v60 + 16);
  v37(v10, v62, v61);
  type metadata accessor for Lockup();
  swift_allocObject();
  v38 = v57;
  v39 = Lockup.init(deserializing:using:)(v18, v10);
  if (!v38)
  {
    v57 = v37;
    v40 = a1;
    v35 = v59;
    v59[8] = v39;
    v41 = v53;
    sub_24F928398();
    v42 = sub_24F928278();
    v43 = v52;
    v51(v41, v52);
    *(v35 + 73) = (v42 == 2) | v42 & 1;
    *(v35 + 72) = v50 & 1;
    v44 = v54;
    v45 = *(v55 + 16);
    v58 = v40;
    v45(v54, v40, v43);
    v46 = v56;
    v47 = v62;
    v48 = v61;
    v57(v56, v62, v61);
    TodayCardOverlay.init(deserializing:using:)(v44, v46);
    (*(v60 + 8))(v47, v48);
    v51(v58, v52);
    return v35;
  }

  v26 = v51;
  v28 = v52;
LABEL_6:
  (*(v60 + 8))(v62, v61);
  v26(a1, v28);
  v35 = v59;
  swift_deallocPartialClassInstance();
  return v35;
}

uint64_t TodayCardLockupOverlay.__allocating_init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 73) = a3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 0);
  return v6;
}

uint64_t TodayCardLockupOverlay.init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 73) = a3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 0);
  return v3;
}

void *TodayCardMarketingLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v73 = v2;
  v5 = *v2;
  v71 = v3;
  v72 = v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v63 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v63 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = v63 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = v63 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v63 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v63 - v25;
  sub_24F928398();
  v27 = sub_24F928328();
  v69 = v15;
  v28 = *(v15 + 8);
  v77 = v14;
  v75 = v28;
  v28(v26, v14);
  v74 = v7;
  if (v27)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v30 = 0x70756B636F6CLL;
    v31 = v72;
    v30[1] = 0xE600000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    v32 = a1;
    v33 = v76;
    v34 = v6;
LABEL_4:
    (*(v74 + 8))(v33, v34);
    v75(v32, v77);
    v40 = v73;
    swift_deallocPartialClassInstance();
    return v40;
  }

  sub_24F928398();
  v32 = a1;
  v36 = v7 + 16;
  v35 = *(v7 + 16);
  v37 = v76;
  v64 = v35;
  v35(v13, v76, v6);
  type metadata accessor for Lockup();
  swift_allocObject();
  v38 = v71;
  v39 = Lockup.init(deserializing:using:)(v23, v13);
  v33 = v37;
  v34 = v6;
  if (v38)
  {
    goto LABEL_4;
  }

  v42 = v37;
  v43 = v34;
  v44 = v73;
  v73[8] = v39;
  v63[1] = type metadata accessor for Paragraph();
  sub_24F928398();
  v45 = v42;
  v71 = v36;
  v72 = v43;
  v40 = v44;
  v64(v66, v45, v43);
  sub_24F252EF8(&qword_27F214718, 255, type metadata accessor for Paragraph);
  sub_24F929548();
  v44[9] = v78;
  v46 = v65;
  sub_24F928398();
  v47 = sub_24F928278();
  v48 = v46;
  v49 = v32;
  v50 = v77;
  v51 = v75;
  v75(v48, v77);
  *(v40 + 80) = v47 & 1;
  v52 = v67;
  sub_24F928398();
  sub_24F928348();
  v54 = v53;
  v51(v52, v50);
  v55 = v49;
  v56 = 0;
  if (v54)
  {
    sub_24E77ACC8();
    v56 = sub_24F92C398();
    v57 = v74;
    v58 = v76;
    v59 = v72;
  }

  else
  {
    v58 = v76;
    v59 = v72;
    v57 = v74;
  }

  v60 = v77;
  v40[11] = v56;
  v61 = v68;
  (*(v69 + 16))(v68, v55, v60);
  v62 = v70;
  v64(v70, v58, v59);
  TodayCardOverlay.init(deserializing:using:)(v61, v62);
  (*(v57 + 8))(v58, v59);
  v75(v55, v77);
  return v40;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  TodayCardOverlay.init(id:kind:)(v10, 1);
  return v8;
}

uint64_t TodayCardMarketingLockupOverlay.init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, 1);
  return v4;
}

void *TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_24F250800()
{

  v1 = *(v0 + 88);
}

uint64_t TodayCardMarketingLockupOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t TodayCardMarketingLockupOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t TodayCardLockupListOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_24F928388();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  sub_24F928398();
  v23 = v4;
  v13 = *(v4 + 16);
  v13(v8, a2, v3);
  type metadata accessor for Lockup();
  sub_24F252EF8(&qword_27F221FB8, 255, type metadata accessor for Lockup);
  v14 = v21;
  v15 = v19;
  *(v14 + 64) = sub_24F92B698();
  v16 = *(v24 + 16);
  v22 = v9;
  v16(v11, v15, v9);
  v17 = v20;
  v13(v20, a2, v3);
  TodayCardOverlay.init(deserializing:using:)(v11, v17);
  (*(v23 + 8))(a2, v3);
  (*(v24 + 8))(v15, v22);
  return v14;
}

char *TodayCardLockupListOverlay.offerAdamIds.getter()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardLockupListOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

void *TodayCardParagraphOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v41 = v2;
  v44 = *v2;
  v45 = a2;
  v4 = sub_24F9285B8();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_24F928398();
  v18 = sub_24F928328();
  v19 = *(v10 + 8);
  v40 = v9;
  v42 = v19;
  v19(v17, v9);
  if (v18)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v21 = 0x7061726761726170;
    v21[1] = 0xE900000000000068;
    v21[2] = v44;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
    v22 = v45;
    v23 = v43;
  }

  else
  {
    v36 = v10;
    sub_24F928398();
    v24 = a1;
    v25 = v43;
    v22 = v45;
    v35 = *(v43 + 16);
    v35(v8, v45, v4);
    v26 = v39;
    v27 = sub_24F0151C0(v14, v8);
    v23 = v25;
    a1 = v24;
    if (!v26)
    {
      v28 = v41;
      v41[8] = v27;
      sub_24F928398();
      sub_24F2239E8();
      sub_24F928248();
      v30 = v17;
      v31 = v40;
      v42(v30, v40);
      *(v28 + 72) = v46;
      v32 = v37;
      (*(v36 + 16))(v37, v24, v31);
      v33 = v38;
      v44 = v4;
      v35(v38, v45, v4);
      TodayCardOverlay.init(deserializing:using:)(v32, v33);
      (*(v43 + 8))(v45, v44);
      v42(a1, v31);
      return v28;
    }
  }

  (*(v23 + 8))(v22, v4);
  v42(a1, v40);
  v28 = v41;
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(paragraph:style:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v5;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  TodayCardOverlay.init(id:kind:)(v7, 3);
  return v4;
}

uint64_t TodayCardParagraphOverlay.init(paragraph:style:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 3);
  return v2;
}

uint64_t *TodayCardActionOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v36 = v2;
  v37 = a2;
  v6 = *v4;
  v33 = v3;
  v34 = v6;
  v35 = sub_24F9285B8();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v38 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v19 = *(v10 + 8);
  v19(v18, v9);
  if (a1)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v21 = 0x6E6F69746361;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
  }

  else
  {
    type metadata accessor for Action();
    sub_24F928398();
    v23 = v33;
    v24 = static Action.makeInstance(byDeserializing:using:)(v15, v37);
    if (!v23)
    {
      v27 = v24;
      v19(v15, v9);
      v25 = v36;
      v36[8] = v27;
      (*(v10 + 16))(v12, v38, v9);
      v28 = v7;
      v29 = *(v7 + 16);
      v30 = v32;
      v31 = v35;
      v29(v32, v37, v35);
      TodayCardOverlay.init(deserializing:using:)(v12, v30);
      (*(v28 + 8))(v37, v31);
      v19(v38, v9);
      return v25;
    }

    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
    v19(v15, v9);
  }

  v25 = v36;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t TodayCardActionOverlay.init(action:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 4);
  return v1;
}

uint64_t TodayCardActionOverlay.offerAdamIds.getter()
{
  type metadata accessor for OfferAction();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

uint64_t TodayCardActionOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t sub_24F251928()
{
  type metadata accessor for OfferAction();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

void *TodayCardThreeLineOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v13, v8);
  v3[8] = v14;
  v3[9] = v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v17(v13, v8);
  v3[10] = v18;
  v3[11] = v20;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v13;
  v25 = v35;
  v33 = v17;
  v17(v24, v8);
  v3[12] = v21;
  v3[13] = v23;
  v26 = a1;
  v27 = v32;
  (*(v9 + 16))(v32, a1, v8);
  v28 = v37;
  v29 = v36;
  v30 = v34;
  (*(v36 + 16))(v34, v37, v25);
  TodayCardOverlay.init(deserializing:using:)(v27, v30);
  (*(v29 + 8))(v28, v25);
  v33(v26, v8);
  return v3;
}

void *TodayCardThreeLineOverlay.__allocating_init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[8] = a1;
  v12[9] = a2;
  v12[10] = a3;
  v12[11] = a4;
  v12[12] = a5;
  v12[13] = a6;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  TodayCardOverlay.init(id:kind:)(v14, 3);
  return v12;
}

void *TodayCardThreeLineOverlay.init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  v6[13] = a6;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 3);
  return v6;
}

uint64_t TodayCardThreeLineOverlay.heading.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.description.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_24F251E48()
{
}

uint64_t TodayCardThreeLineOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t TodayCardThreeLineOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

void *TodayCardArcadeLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v40 = v3;
  v38 = *v3;
  v42 = sub_24F9285B8();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v37 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v20 = *(v11 + 8);
  v41 = v10;
  v36 = v20;
  v20(v19, v10);
  v39 = v5;
  if (a1)
  {
    v21 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v22, "arcadeLockup");
    v23 = v38;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v24 = v37;
  }

  else
  {
    type metadata accessor for ArcadeLockup();
    v24 = v37;
    sub_24F928398();
    v33 = *(v5 + 16);
    v33(v9, v43, v42);
    v25 = v35;
    v26 = ArcadeLockup.__allocating_init(deserializing:using:)(v16, v9);
    if (!v25)
    {
      v27 = v40;
      v29 = v41;
      v40[8] = v26;
      (*(v11 + 16))(v13, v24, v29);
      v30 = v34;
      v31 = v43;
      v32 = v42;
      v33(v34, v43, v42);
      TodayCardOverlay.init(deserializing:using:)(v13, v30);
      (*(v39 + 8))(v31, v32);
      v36(v24, v41);
      return v27;
    }
  }

  (*(v39 + 8))(v43, v42);
  v36(v24, v41);
  v27 = v40;
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t TodayCardArcadeLockupOverlay.init(arcadeLockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 6);
  return v1;
}

uint64_t *TodayCardAppEventLockupOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = v2;
  v36 = a2;
  v34 = *v3;
  v37 = sub_24F9285B8();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v38 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v33 = *(v11 + 8);
  v33(v19, v10);
  if (a1)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v21 = 0x70756B636F6CLL;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
  }

  else
  {
    sub_24F928398();
    v30 = *(v5 + 16);
    v30(v9, v36, v37);
    type metadata accessor for Lockup();
    swift_allocObject();
    v23 = v32;
    v24 = Lockup.init(deserializing:using:)(v16, v9);
    if (!v23)
    {
      v25 = v35;
      v35[8] = v24;
      (*(v11 + 16))(v13, v38, v10);
      v27 = v31;
      v28 = v36;
      v30(v31, v36, v37);
      TodayCardOverlay.init(deserializing:using:)(v13, v27);
      v29 = v38;
      (*(v5 + 8))(v28, v37);
      v33(v29, v10);
      return v25;
    }
  }

  (*(v5 + 8))(v36, v37);
  v33(v38, v10);
  v25 = v35;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_24F252824(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.init(lockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 7);
  return v1;
}

uint64_t _s12GameStoreKit22TodayCardActionOverlayC11clickSenderypSgvg_0@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t _s12GameStoreKit22TodayCardLockupOverlayC12offerAdamIdsSayAA0I2IdVGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + 64);
  v3 = *(v2 + 24);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_24F25298C(void (*a1)(void))
{
  sub_24E6585F8(v1 + 24);
  a1(*(v1 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_24F2529E8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + 64);
  v4 = *(v3 + 24);
  *(v2 + 32) = *(v3 + 16);
  *(v2 + 40) = v4;

  return v2;
}

uint64_t sub_24F252A4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756B636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xEF70756B636F4C67 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C70756B636F6CLL && a2 == 0xEA00000000007473 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E694C6565726874 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F4C656461637261 && a2 == 0xEC00000070756B63 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xEE0070756B636F4CLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_24F252D28(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24F252E5C()
{
  result = qword_27F23CCF8;
  if (!qword_27F23CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CCF8);
  }

  return result;
}

uint64_t sub_24F252EF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FamilyMember.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *FamilyMember.artwork.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_24F25321C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for FamilyMember();
  *a1 = v1;
}

uint64_t type metadata accessor for FamilyMember()
{
  result = qword_27F23CD10;
  if (!qword_27F23CD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FamilyMember.__allocating_init(id:name:artwork:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a5;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  sub_24E60169C(a1, &v28, &qword_27F235830);
  if (*(&v29 + 1))
  {
    v15 = v29;
    *(v14 + 48) = v28;
    *(v14 + 64) = v15;
    *(v14 + 80) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v23 = a3;
    v17 = a6;
    v18 = a1;
    v19 = a2;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v26 = v16;
    v27 = v21;
    a2 = v19;
    a1 = v18;
    a6 = v17;
    a3 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  sub_24E60169C(a6, v14 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68);
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  sub_24E601704(a6, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = v24;
  swift_beginAccess();
  *(v14 + 40) = v25;
  return v14;
}

uint64_t FamilyMember.init(id:name:artwork:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v25 = a4;
  v26 = a5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 40) = 0;
  sub_24E60169C(a1, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24 = a3;
    v17 = a6;
    v18 = a1;
    v19 = a2;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v27 = v16;
    v28 = v21;
    a2 = v19;
    a1 = v18;
    a6 = v17;
    a3 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  v22 = v33;
  *(v7 + 48) = v32;
  *(v7 + 64) = v22;
  *(v7 + 80) = v34;
  sub_24E60169C(a6, v7 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68);
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  sub_24E601704(a6, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v25;
  swift_beginAccess();
  *(v7 + 40) = v26;

  return v7;
}

void FamilyMember.init(deserializing:using:)()
{
  *(v0 + 40) = 0;
  sub_24F92CA88();
  __break(1u);
}

uint64_t FamilyMember.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t FamilyMember.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

unint64_t sub_24F253920()
{
  result = qword_27F23CD08;
  if (!qword_27F23CD08)
  {
    type metadata accessor for FamilyMember();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD08);
  }

  return result;
}

uint64_t sub_24F2539E4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for FamilyMember();
  *a1 = v3;
}

uint64_t sub_24F253A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

void sub_24F253AC0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F253C78(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F253E30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F253FD4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SocialSuggestionLockup.Accessory(319);
    if (v1 <= 0x3F)
    {
      sub_24E7CA640();
      if (v2 <= 0x3F)
      {
        sub_24F254198(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F254150(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F254198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F2541FC(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEA0);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEA8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v30 = &v28 - v3;
  v4 = sub_24F9289E8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEB0);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEB8);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F258F80();
  sub_24F92D128();
  sub_24F258DFC(v37, v12, type metadata accessor for SocialSuggestionLockup.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v31;
      v17 = v32;
      (*(v31 + 32))(v6, v12, v32);
      v42 = 1;
      sub_24F259028();
      v19 = v30;
      v20 = v39;
      sub_24F92CC98();
      sub_24F254150(&qword_27F214060, MEMORY[0x277D21C48]);
      v21 = v36;
      sub_24F92CD48();
      (*(v34 + 8))(v19, v21);
      (*(v18 + 8))(v6, v17);
      return (*(v38 + 8))(v15, v20);
    }

    else
    {
      v43 = 2;
      sub_24F258FD4();
      v25 = v29;
      v26 = v39;
      sub_24F92CC98();
      v27 = v35;
      sub_24F92CD08();

      (*(v33 + 8))(v25, v27);
      return (*(v38 + 8))(v15, v26);
    }
  }

  else
  {
    v23 = *v12;
    v41 = 0;
    sub_24F25907C();
    v24 = v39;
    sub_24F92CC98();
    v40 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    sub_24F2590D0(&qword_27F218A30, &qword_27F218A38);
    sub_24F92CD48();
    (*(v28 + 8))(v9, v7);
    (*(v38 + 8))(v15, v24);
  }
}

uint64_t sub_24F254820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE60);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE68);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE70);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE78);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F258F80();
  v24 = v68;
  sub_24F92D108();
  if (!v24)
  {
    v53 = v13;
    v54 = v19;
    v55 = v16;
    v25 = v63;
    v26 = v64;
    v68 = v22;
    v27 = v11;
    v28 = v65;
    v29 = v67;
    v30 = sub_24F92CC78();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_24E643434();
    if (v32 != 3 && v72 == v73 >> 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          LOBYTE(v74) = 1;
          sub_24F259028();
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F254150(&qword_27F214018, MEMORY[0x277D21C48]);
          v33 = v55;
          v34 = v60;
          sub_24F92CC68();
          v35 = v26;
          v36 = v66;
          (*(v59 + 8))(v35, v34);
          (*(v36 + 8))(v10, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v33;
LABEL_12:
          v52 = v68;
          sub_24F258E64(v49, v68, type metadata accessor for SocialSuggestionLockup.Accessory);
          sub_24F258E64(v52, v28, type metadata accessor for SocialSuggestionLockup.Accessory);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        LOBYTE(v74) = 2;
        sub_24F258FD4();
        v44 = v62;
        sub_24F92CBA8();
        v45 = v44;
        v46 = v56;
        v47 = sub_24F92CC28();
        v64 = v48;
        v50 = v47;
        (*(v61 + 8))(v45, v46);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v53;
        v51 = v64;
        *v53 = v50;
        v43[1] = v51;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_24F25907C();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
        sub_24F2590D0(&qword_27F218598, &qword_27F2185A0);
        v42 = v58;
        sub_24F92CC68();
        (*(v57 + 8))(v25, v42);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v54;
        *v54 = v74;
      }

      swift_storeEnumTagMultiPayload();
      v49 = v43;
      goto LABEL_12;
    }

    v37 = v29;
    v38 = sub_24F92C918();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v40 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v66 + 8))(v10, v37);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_24F255048(uint64_t a1)
{
  v2 = sub_24F259028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255084(uint64_t a1)
{
  v2 = sub_24F259028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2550C0()
{
  v1 = 0x6B726F77747261;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7641726579616C70;
  }
}

uint64_t sub_24F255124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F2598B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F25514C(uint64_t a1)
{
  v2 = sub_24F258F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255188(uint64_t a1)
{
  v2 = sub_24F258F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2551C4(uint64_t a1)
{
  v2 = sub_24F25907C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255200(uint64_t a1)
{
  v2 = sub_24F25907C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F25523C(uint64_t a1)
{
  v2 = sub_24F258FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255278(uint64_t a1)
{
  v2 = sub_24F258FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2552E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F258F2C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SocialSuggestionLockup(0);
    LOBYTE(v12) = 1;
    type metadata accessor for SocialSuggestionLockup.Accessory(0);
    sub_24F254150(&qword_27F23CE58, type metadata accessor for SocialSuggestionLockup.Accessory);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    LOBYTE(v12) = 3;
    sub_24F92CCB8();
    LOBYTE(v12) = 4;
    sub_24F929608();
    sub_24F254150(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 44));
    v11[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E7AA500();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F2556F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v44);
  v45 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE38);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SocialSuggestionLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v52 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[*(v12 + 36)];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v51 = v19;
  sub_24E61DA68(&v55, v19, qword_27F21B590);
  v20 = *(v12 + 40);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v54 = v14;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F258F2C();
  v49 = v11;
  v24 = v50;
  sub_24F92D108();
  if (v24)
  {
    v26 = v51;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v27 = v54;
    sub_24E601704(v54 + v52, &qword_27F213E68);
    sub_24E601704(v26, qword_27F24EC90);
    return sub_24E601704(v27 + v20, &qword_27F215440);
  }

  else
  {
    v50 = v6;
    v42 = v12;
    v25 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v28 = v56;
    v29 = v54;
    *v54 = v55;
    v29[1] = v28;
    *(v29 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24F254150(&qword_27F23CE48, type metadata accessor for SocialSuggestionLockup.Accessory);
    sub_24F92CC68();
    v30 = v42;
    sub_24F258E64(v8, v29 + *(v42 + 20), type metadata accessor for SocialSuggestionLockup.Accessory);
    LOBYTE(v55) = 2;
    v31 = sub_24F92CC28();
    v32 = v29;
    v33 = (v29 + *(v30 + 24));
    *v33 = v31;
    v33[1] = v34;
    LOBYTE(v55) = 3;
    v35 = sub_24F92CBD8();
    v50 = 0;
    *(v29 + *(v30 + 28)) = v35;
    LOBYTE(v55) = 4;
    sub_24F254150(&qword_27F213F48, MEMORY[0x277D21F70]);
    v36 = v46;
    sub_24F92CC18();
    sub_24E61DA68(v36, v32 + v52, &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v58 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v51, qword_27F24EC90);
    LOBYTE(v55) = 6;
    sub_24E65CAA0();
    v37 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v37, v54 + v20, &qword_27F215440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    v58 = 7;
    sub_24E7AA3E4();
    sub_24F92CC68();
    v38 = *(v42 + 44);
    (*(v25 + 8))(v49, v48);
    v39 = v54;
    *(v54 + v38) = v55;
    sub_24F258DFC(v39, v43, type metadata accessor for SocialSuggestionLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F258ECC(v39, type metadata accessor for SocialSuggestionLockup);
  }
}

uint64_t sub_24F255F9C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 1970169197;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F256094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F2599D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F2560BC(uint64_t a1)
{
  v2 = sub_24F258F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2560F8(uint64_t a1)
{
  v2 = sub_24F258F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F256134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24F256264()
{
  result = qword_27F23CD40;
  if (!qword_27F23CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD40);
  }

  return result;
}

double sub_24F2562B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24F3E5448(MEMORY[0x277D84F90]);
  sub_24F928948();
  v14 = type metadata accessor for PlayerAvatar(0);
  sub_24E60169C(a1 + *(v14 + 20), v9, &qword_27F22DF80);
  sub_24E60169C(a1 + *(v14 + 24), v29, qword_27F24EC90);
  (*(v11 + 32))(a2, v13, v10);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for PlayerAvatarView(0);
  v16 = v15[5];
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    sub_24E601704(v9, &qword_27F22DF80);
    v18 = 1;
  }

  else
  {
    sub_24F258E64(v9, v6, type metadata accessor for PlayerAvatar.Overlay);
    v19 = &v6[*(v4 + 20)];
    *v19 = 0x4030000000000000;
    v19[8] = 0;
    __asm { FMOV            V0.2D, #2.0 }

    *&v6[*(v4 + 24)] = _Q0;
    sub_24F258E64(v6, a2 + v16, type metadata accessor for PlayerAvatarView.Overlay);
    v18 = 0;
  }

  (*(v28 + 56))(a2 + v16, v18, 1, v4);
  v25 = a2 + v15[6];
  result = *v29;
  v27 = v29[1];
  *v25 = v29[0];
  *(v25 + 16) = v27;
  *(v25 + 32) = v30;
  *(a2 + v15[7]) = 7;
  return result;
}

uint64_t sub_24F256618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD58) - 8;
  MEMORY[0x28223BE20](v57);
  v4 = &v55 - v3;
  v59 = sub_24F9248C8();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223598);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223588);
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD68);
  MEMORY[0x28223BE20](v58);
  v18 = &v55 - v17;
  *v10 = sub_24F924C88();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD70);
  sub_24F256C4C(a1, &v10[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235C0) + 36)];
  v21 = v62;
  *v20 = v61;
  *(v20 + 1) = v21;
  *(v20 + 2) = v63;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235B0) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99BF58();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v59);
  sub_24E601704(v10, &qword_27F223598);
  v22 = type metadata accessor for SocialSuggestionLockup(0);
  v23 = *(v22 + 44);
  v59 = a1;
  sub_24E994078(*(a1 + v23));
  (*(v11 + 8))(v13, v56);
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v32 = &v4[*(type metadata accessor for AsymmetricalInsetRoundedRectangle() + 20)];
  __asm { FMOV            V0.2D, #-5.0 }

  *v32 = _Q0;
  *(v32 + 1) = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v34 = sub_24F926D08();

  *&v4[*(v57 + 60)] = v34;
  sub_24E60169C(v4, v18, &qword_27F23CD58);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD78);
  sub_24E60169C(v16, &v18[v35[9]], &qword_27F23CD60);
  v36 = &v18[v35[10]];
  *v36 = sub_24F923398() & 1;
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v39 = &v18[v35[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v40 = qword_27F24E488;
  v41 = sub_24F923398();
  v43 = v42;
  v45 = v44;
  v46 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD80) + 36)];
  *v46 = v40;
  v46[8] = v41 & 1;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  LOBYTE(v40) = sub_24F923398();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_24E601704(v4, &qword_27F23CD58);
  sub_24E601704(v16, &qword_27F23CD60);
  v50 = &v18[*(v58 + 36)];
  *v50 = v40 & 1;
  *(v50 + 1) = v48;
  v50[16] = v43 & 1;
  v51 = *(v59 + *(v22 + 28));
  if (v51 == 2 || (v52 = 0.0, (v51 & 1) == 0))
  {
    v52 = 1.0;
  }

  v53 = v60;
  sub_24E6009C8(v18, v60, &qword_27F23CD68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD88);
  *(v53 + *(result + 36)) = v52;
  return result;
}

uint64_t sub_24F256C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD90);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD98);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v13);
  v55 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  *v20 = sub_24F9249A8();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDA8);
  sub_24F2571D4(a1, &v20[*(v21 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v22 = &v20[*(v16 + 44)];
  v23 = v59;
  *v22 = v58;
  *(v22 + 1) = v23;
  *(v22 + 2) = v60;
  v24 = (a1 + *(type metadata accessor for SocialSuggestionLockup(0) + 24));
  v25 = v24[1];
  *&v61 = *v24;
  *(&v61 + 1) = v25;
  sub_24E600AEC();

  v26 = sub_24F925E18();
  v28 = v27;
  *&v61 = v26;
  *(&v61 + 1) = v27;
  v30 = v29 & 1;
  LOBYTE(v62) = v29 & 1;
  *(&v62 + 1) = v31;
  sub_24F926B88();
  sub_24E600B40(v26, v28, v30);

  KeyPath = swift_getKeyPath();
  v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDB0) + 36)];
  *v33 = KeyPath;
  v33[8] = 1;
  v34 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDB8) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0) + 28);
  v36 = *MEMORY[0x277CE0B28];
  v37 = sub_24F925C38();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = sub_24F925A08();
  v39 = swift_getKeyPath();
  v40 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC8) + 36)];
  *v40 = v39;
  v40[1] = v38;
  *&v6[*(v4 + 44)] = sub_24F925198();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v12, &qword_27F23CD90);
  v41 = &v12[*(v8 + 44)];
  v42 = v66;
  *(v41 + 4) = v65;
  *(v41 + 5) = v42;
  *(v41 + 6) = v67;
  v43 = v62;
  *v41 = v61;
  *(v41 + 1) = v43;
  v44 = v64;
  *(v41 + 2) = v63;
  *(v41 + 3) = v44;
  v45 = v12;
  v46 = v55;
  sub_24E6009C8(v45, v55, &qword_27F23CD98);
  v47 = v54;
  sub_24E60169C(v20, v54, &qword_27F23CDA0);
  v48 = v56;
  sub_24E60169C(v46, v56, &qword_27F23CD98);
  v49 = v57;
  sub_24E60169C(v47, v57, &qword_27F23CDA0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDD0);
  v51 = v49 + *(v50 + 48);
  *v51 = 0x4000000000000000;
  *(v51 + 8) = 0;
  sub_24E60169C(v48, v49 + *(v50 + 64), &qword_27F23CD98);
  sub_24E601704(v46, &qword_27F23CD98);
  sub_24E601704(v20, &qword_27F23CDA0);
  sub_24E601704(v48, &qword_27F23CD98);
  return sub_24E601704(v47, &qword_27F23CDA0);
}

uint64_t sub_24F2571D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a1;
  v145 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00);
  MEMORY[0x28223BE20](v146);
  v150 = v127 - v2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDD8);
  MEMORY[0x28223BE20](v140);
  v151 = v127 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDE0);
  v159 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v158 = v127 - v4;
  v161 = sub_24F9289E8();
  v152 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v160 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDE8);
  MEMORY[0x28223BE20](v143);
  v144 = v127 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDF0);
  MEMORY[0x28223BE20](v137);
  v138 = v127 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDF8);
  MEMORY[0x28223BE20](v142);
  v139 = v127 - v8;
  v156 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v148 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v147 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v10 - 8);
  v155 = v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v163 = v127 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v135);
  v131 = v127 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF70);
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = v127 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF78);
  MEMORY[0x28223BE20](v132);
  v134 = v127 - v16;
  v157 = type metadata accessor for PlayerAvatarView(0);
  v154 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v153 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (v127 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = v127 - v22;
  v24 = type metadata accessor for PlayerAvatar(0);
  v149 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v127 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v127 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v127 - v34;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF88);
  MEMORY[0x28223BE20](v136);
  v37 = v127 - v36;
  v38 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v38);
  v40 = v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SocialSuggestionLockup(0);
  sub_24F258DFC(v162 + *(v41 + 20), v40, type metadata accessor for SocialSuggestionLockup.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v162 = v29;
    v150 = v26;
    v151 = v24;
    v152 = v20;
    v128 = v37;
    v70 = *v40;
    v71 = *(*v40 + 16);
    if (v71)
    {
      if (v71 == 1)
      {
        sub_24F258DFC(v70 + ((*(v149 + 80) + 32) & ~*(v149 + 80)), v32, type metadata accessor for PlayerAvatar);

        sub_24F258E64(v32, v35, type metadata accessor for PlayerAvatar);
        sub_24F2562B8(v35, v23);
        sub_24F258DFC(v23, v134, type metadata accessor for PlayerAvatarView);
        swift_storeEnumTagMultiPayload();
        sub_24F254150(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
        v72 = sub_24ECFF4A4();
        v73 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
        *&v167 = &type metadata for GroupedPlayerAvatarView;
        *(&v167 + 1) = v135;
        *&v168 = v72;
        *(&v168 + 1) = v73;
        swift_getOpaqueTypeConformance2();
        v74 = v128;
        sub_24F924E28();
        sub_24F258ECC(v23, type metadata accessor for PlayerAvatarView);
        sub_24F258ECC(v35, type metadata accessor for PlayerAvatar);
        goto LABEL_21;
      }

      v85 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v127[1] = *v40;
      v86 = v70 + v85;
      v149 = *(v149 + 72);
      v148 += 7;
      v84 = MEMORY[0x277D84F90];
      v88 = v162;
      v87 = v163;
      do
      {
        v160 = v71;
        v161 = v84;
        v159 = v86;
        sub_24F258DFC(v86, v88, type metadata accessor for PlayerAvatar);
        v89 = *v88;
        v90 = v162[1];
        v91 = type metadata accessor for PlayerAvatar.Overlay(0);
        v92 = *(v91 - 8);
        v93 = *(v92 + 56);
        v158 = v91;
        v93(v87, 1, 1, v91);
        *&v169 = 0;
        v167 = 0u;
        v168 = 0u;
        v94 = v151;
        v95 = *(v151 + 5);
        v96 = v150;
        v93(&v150[v95], 1, 1, v91);
        v97 = v96 + *(v94 + 6);
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
        *v97 = 0u;
        *(v97 + 16) = 0u;
        *(v97 + 32) = 0;

        sub_24E61DA68(&v164, v97, qword_27F21B590);
        *v96 = v89;
        v96[1] = v90;

        sub_24E61DA68(v163, v96 + v95, &qword_27F22DF80);
        sub_24E61DA68(&v167, v97, qword_27F21B590);
        v98 = v153;
        v88 = v162;
        sub_24F928948();
        sub_24F258ECC(v88, type metadata accessor for PlayerAvatar);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v99 = v155;
        sub_24E60169C(v96 + v95, v155, &qword_27F22DF80);
        v100 = v157;
        v101 = *(v157 + 20);
        if ((*(v92 + 48))(v99, 1, v158) == 1)
        {
          sub_24E601704(v99, &qword_27F22DF80);
          v102 = 1;
          v103 = v156;
        }

        else
        {
          v104 = v99;
          v105 = v147;
          sub_24F258E64(v104, v147, type metadata accessor for PlayerAvatar.Overlay);
          v103 = v156;
          v106 = v105 + *(v156 + 20);
          *v106 = 0;
          *(v106 + 8) = 1;
          v107 = (v105 + *(v103 + 24));
          *v107 = 0;
          v107[1] = 0;
          sub_24F258E64(v105, v98 + v101, type metadata accessor for PlayerAvatarView.Overlay);
          v102 = 0;
        }

        (*v148)(v98 + v101, v102, 1, v103);
        v108 = v98 + *(v100 + 24);
        sub_24E60169C(v97, &v167, qword_27F24EC90);
        sub_24F258ECC(v96, type metadata accessor for PlayerAvatar);
        v109 = v168;
        *v108 = v167;
        *(v108 + 16) = v109;
        *(v108 + 32) = v169;
        *(v98 + *(v100 + 28)) = 7;
        v110 = v152;
        sub_24F258E64(v98, v152, type metadata accessor for PlayerAvatarView);
        v84 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_24E619074(0, v84[2] + 1, 1, v84);
        }

        v87 = v163;
        v111 = v154;
        v113 = v84[2];
        v112 = v84[3];
        if (v113 >= v112 >> 1)
        {
          v84 = sub_24E619074(v112 > 1, v113 + 1, 1, v84);
        }

        v84[2] = v113 + 1;
        sub_24F258E64(v110, v84 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v113, type metadata accessor for PlayerAvatarView);
        v86 = v159 + v149;
        v71 = v160 - 1;
      }

      while (v160 != 1);
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
    }

    v114 = v131;
    *&v167 = v84;
    *(&v167 + 1) = 0x404A800000000000;
    v115 = *MEMORY[0x277CDFA10];
    v116 = sub_24F923E98();
    (*(*(v116 - 8) + 104))(v114, v115, v116);
    sub_24F254150(&qword_27F22DF90, MEMORY[0x277CDFA28]);
    result = sub_24F92AFF8();
    v117 = v135;
    v118 = v134;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v119 = sub_24ECFF4A4();
    v120 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v121 = v129;
    sub_24F9263F8();
    sub_24E601704(v114, &qword_27F21CCC8);

    v122 = v130;
    v123 = v133;
    (*(v130 + 16))(v118, v121, v133);
    swift_storeEnumTagMultiPayload();
    sub_24F254150(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    *&v167 = &type metadata for GroupedPlayerAvatarView;
    *(&v167 + 1) = v117;
    *&v168 = v119;
    *(&v168 + 1) = v120;
    swift_getOpaqueTypeConformance2();
    v74 = v128;
    sub_24F924E28();
    (*(v122 + 8))(v121, v123);
LABEL_21:
    sub_24E60169C(v74, v138, &qword_27F22DF88);
    swift_storeEnumTagMultiPayload();
    sub_24ECFF540();
    v124 = sub_24F258BA8();
    v125 = sub_24F258DA8();
    *&v167 = v140;
    *(&v167 + 1) = &type metadata for ClearPlaceholderMediaArtworkStyle;
    *&v168 = v124;
    *(&v168 + 1) = v125;
    swift_getOpaqueTypeConformance2();
    v126 = v139;
    sub_24F924E28();
    sub_24E60169C(v126, v144, &qword_27F23CDF8);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    sub_24E601704(v126, &qword_27F23CDF8);
    return sub_24E601704(v74, &qword_27F22DF88);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v43 = v152;
    v44 = v160;
    v45 = v161;
    v152[4](v160, v40, v161);
    v46 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    v48 = v141;
    v49 = KeyPath;
    v50 = v151;
    (*(v43 + 16))(v151, v44, v45);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE28) + 36));
    *v51 = v49;
    v51[1] = v46;
    LOBYTE(v46) = sub_24F925808();
    sub_24F923318();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE18) + 36);
    *v60 = v46;
    *(v60 + 8) = v53;
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    *(v60 + 32) = v59;
    *(v60 + 40) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v61 = v140;
    v62 = (v50 + *(v140 + 36));
    v63 = v168;
    *v62 = v167;
    v62[1] = v63;
    v62[2] = v169;
    v64 = sub_24F258BA8();
    v65 = sub_24F258DA8();
    v66 = v158;
    sub_24F925ED8();
    sub_24E601704(v50, &qword_27F23CDD8);
    v67 = v159;
    (*(v159 + 16))(v138, v66, v48);
    swift_storeEnumTagMultiPayload();
    sub_24ECFF540();
    *&v164 = v61;
    *(&v164 + 1) = &type metadata for ClearPlaceholderMediaArtworkStyle;
    *&v165 = v64;
    *(&v165 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    v68 = v139;
    sub_24F924E28();
    sub_24E60169C(v68, v144, &qword_27F23CDF8);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    sub_24E601704(v68, &qword_27F23CDF8);
    (*(v67 + 8))(v66, v48);
    return (*(v43 + 8))(v160, v161);
  }

  else
  {
    v75 = sub_24F926E48();
    v76 = sub_24F925898();
    v77 = swift_getKeyPath();
    v78 = sub_24F9251C8();
    v79 = v150;
    v80 = &v150[*(v146 + 36)];
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v82 = *MEMORY[0x277CE13B8];
    v83 = sub_24F927748();
    (*(*(v83 - 8) + 104))(&v80[v81], v82, v83);
    *v80 = v78;
    *v79 = v75;
    v79[1] = v77;
    v79[2] = v76;
    sub_24E60169C(v79, v144, &qword_27F216C00);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    return sub_24E601704(v79, &qword_27F216C00);
  }
}

uint64_t sub_24F258808()
{
  sub_24F256264();

  return sub_24F9218E8();
}

unint64_t sub_24F258898()
{
  result = qword_27F23CD50;
  if (!qword_27F23CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD50);
  }

  return result;
}

uint64_t sub_24F2589F0(uint64_t a1)
{
  v2 = sub_24F925C38();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924578();
}

unint64_t sub_24F258AC4()
{
  result = qword_27F23CE00;
  if (!qword_27F23CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDF8);
    sub_24ECFF540();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDD8);
    sub_24F258BA8();
    sub_24F258DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE00);
  }

  return result;
}

unint64_t sub_24F258BA8()
{
  result = qword_27F23CE08;
  if (!qword_27F23CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDD8);
    sub_24F258C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE08);
  }

  return result;
}

unint64_t sub_24F258C34()
{
  result = qword_27F23CE10;
  if (!qword_27F23CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CE18);
    sub_24F258CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE10);
  }

  return result;
}

unint64_t sub_24F258CC0()
{
  result = qword_27F23CE20;
  if (!qword_27F23CE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CE28);
    sub_24F254150(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE20);
  }

  return result;
}

unint64_t sub_24F258DA8()
{
  result = qword_27F23CE30;
  if (!qword_27F23CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE30);
  }

  return result;
}

uint64_t sub_24F258DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F258E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F258ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F258F2C()
{
  result = qword_27F23CE40;
  if (!qword_27F23CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE40);
  }

  return result;
}

unint64_t sub_24F258F80()
{
  result = qword_27F23CE80;
  if (!qword_27F23CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE80);
  }

  return result;
}

unint64_t sub_24F258FD4()
{
  result = qword_27F23CE88;
  if (!qword_27F23CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE88);
  }

  return result;
}

unint64_t sub_24F259028()
{
  result = qword_27F23CE90;
  if (!qword_27F23CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE90);
  }

  return result;
}

unint64_t sub_24F25907C()
{
  result = qword_27F23CE98;
  if (!qword_27F23CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE98);
  }

  return result;
}

uint64_t sub_24F2590D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590);
    sub_24F254150(a2, type metadata accessor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F2591C0()
{
  result = qword_27F23CEC0;
  if (!qword_27F23CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD88);
    sub_24F25924C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEC0);
  }

  return result;
}

unint64_t sub_24F25924C()
{
  result = qword_27F23CEC8;
  if (!qword_27F23CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD68);
    sub_24F2592D8();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEC8);
  }

  return result;
}

unint64_t sub_24F2592D8()
{
  result = qword_27F23CED0;
  if (!qword_27F23CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD80);
    sub_24E602068(&qword_27F23CED8, &qword_27F23CD78);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CED0);
  }

  return result;
}

unint64_t sub_24F259394()
{
  result = qword_27F23CEE0;
  if (!qword_27F23CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEE0);
  }

  return result;
}

unint64_t sub_24F2593EC()
{
  result = qword_27F23CEE8;
  if (!qword_27F23CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEE8);
  }

  return result;
}

unint64_t sub_24F259444()
{
  result = qword_27F23CEF0;
  if (!qword_27F23CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEF0);
  }

  return result;
}

unint64_t sub_24F25949C()
{
  result = qword_27F23CEF8;
  if (!qword_27F23CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEF8);
  }

  return result;
}

unint64_t sub_24F2594F4()
{
  result = qword_27F23CF00;
  if (!qword_27F23CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF00);
  }

  return result;
}

unint64_t sub_24F25954C()
{
  result = qword_27F23CF08;
  if (!qword_27F23CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF08);
  }

  return result;
}

unint64_t sub_24F2595A4()
{
  result = qword_27F23CF10;
  if (!qword_27F23CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF10);
  }

  return result;
}

unint64_t sub_24F2595FC()
{
  result = qword_27F23CF18;
  if (!qword_27F23CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF18);
  }

  return result;
}

unint64_t sub_24F259654()
{
  result = qword_27F23CF20;
  if (!qword_27F23CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF20);
  }

  return result;
}

unint64_t sub_24F2596AC()
{
  result = qword_27F23CF28;
  if (!qword_27F23CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF28);
  }

  return result;
}

unint64_t sub_24F259704()
{
  result = qword_27F23CF30;
  if (!qword_27F23CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF30);
  }

  return result;
}

unint64_t sub_24F25975C()
{
  result = qword_27F23CF38;
  if (!qword_27F23CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF38);
  }

  return result;
}

unint64_t sub_24F2597B4()
{
  result = qword_27F23CF40;
  if (!qword_27F23CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF40);
  }

  return result;
}

unint64_t sub_24F25980C()
{
  result = qword_27F23CF48;
  if (!qword_27F23CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF48);
  }

  return result;
}

unint64_t sub_24F259864()
{
  result = qword_27F23CF50;
  if (!qword_27F23CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF50);
  }

  return result;
}

uint64_t sub_24F2598B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641726579616C70 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F2599D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA70A70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F259C70@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

id DynamicTypeTextView.__allocating_init(useCase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(v1) initWithFrame_];
  v7 = sub_24F922378();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  v10 = v6;
  sub_24E61DA68(v5, v6 + v9, &qword_27F222038);
  swift_endAccess();

  return v10;
}

id DynamicTypeTextView.__allocating_init(textStyle:)(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  sub_24E612C80(a1, v7);
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  v5 = v3;
  sub_24E61DA68(v7, v3 + v4, &qword_27F22E6E8);
  swift_endAccess();

  return v5;
}

id DynamicTypeTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeTextView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  v10 = sub_24F922378();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DynamicTypeTextView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, 0, a1, a2, a3, a4);
  sub_24F25A180();

  return v13;
}

uint64_t type metadata accessor for DynamicTypeTextView()
{
  result = qword_27F23CF78;
  if (!qword_27F23CF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DynamicTypeTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_24F25A180()
{
  swift_getObjectType();
  [v0 setTextContainerInset_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E720);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = sub_24F922E88();
  v4 = MEMORY[0x277D74DB8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24F922D78();
  v7 = MEMORY[0x277D74B90];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v0 selector:sel_buttonShapesDidChange name:*MEMORY[0x277D76450] object:0];
}

id sub_24F25A344()
{
  result = [v0 text];
  if (result)
  {

    result = [v0 text];
    if (result)
    {
      v2 = result;
      sub_24F92B0D8();

      v3 = sub_24F92B228();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_24F25A3EC(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a1 = v4;
  return sub_24F25A468;
}

void sub_24F25A474(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 textContainer];
  [v7 *a5];
}

id sub_24F25A4E8(SEL *a1)
{
  v3 = [v1 textContainer];
  v4 = [v3 *a1];

  return v4;
}

void sub_24F25A544(uint64_t a1, SEL *a2)
{
  v5 = [v2 textContainer];
  [v5 *a2];
}

void (*sub_24F25A5B4(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 lineBreakMode];

  *a1 = v4;
  return sub_24F25A630;
}

void sub_24F25A63C(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = [a1[1] textContainer];
  [v5 *a3];
}

uint64_t sub_24F25A6A4()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F92B0D8();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    sub_24F91EA78();
    sub_24E600AEC();
    sub_24F92C508();
    LOBYTE(v7) = v11;
    (*(v2 + 8))(v5, v1);

    v12 = v7 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_24F25A7EC()
{
  v1 = [v0 font];
  if (!v1)
  {
    return *MEMORY[0x277D768C8];
  }

  v2 = v1;
  sub_24F92C278();
  v4 = v3;

  return v4;
}

uint64_t sub_24F25A874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F222038);
  return sub_24F25A988(v4);
}

uint64_t sub_24F25A920@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222038);
}

uint64_t sub_24F25A988(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F222038);
  swift_endAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F222038);
  v7 = sub_24F922378();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_24E601704(a1, &qword_27F222038);
    a1 = v5;
  }

  else
  {
    sub_24E601704(v5, &qword_27F222038);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
    swift_beginAccess();
    sub_24E9CBF30(v12, v1 + v8, &qword_27F22E6E8);
    swift_endAccess();
    sub_24F25B25C();
    v9 = sub_24E601704(v12, &qword_27F22E6E8);
    (*((*MEMORY[0x277D85000] & *v1) + 0x208))(v9);
  }

  return sub_24E601704(a1, &qword_27F222038);
}

void (*sub_24F25AB94(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  swift_beginAccess();
  return sub_24F25AC60;
}

void sub_24F25AC60(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    sub_24E60169C(v3[11] + v3[13], v4, &qword_27F222038);
    v5 = sub_24F922378();
    v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_24E601704(v4, &qword_27F222038);
    if (v6 != 1)
    {
      v7 = v3[11];
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v3[4] = 0;
      v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
      swift_beginAccess();
      sub_24E9CBF30(v3, v7 + v8, &qword_27F22E6E8);
      swift_endAccess();
      sub_24F25B25C();
      v9 = sub_24E601704(v3, &qword_27F22E6E8);
      (*((*MEMORY[0x277D85000] & *v7) + 0x208))(v9);
    }
  }

  free(v3[12]);

  free(v3);
}

uint64_t sub_24F25ADF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24F25EE50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24F25AE94(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E94DFEC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = (v7 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v9 = *v8;
  *v8 = v6;
  v8[1] = v5;
  sub_24E5FCA4C(v3);
  sub_24E5FCA4C(v6);
  v10 = sub_24E824448(v9);
  (*((*MEMORY[0x277D85000] & *v7) + 0x208))(v10);
  return sub_24E824448(v6);
}

uint64_t sub_24F25AFC0()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1);
  return v2;
}

uint64_t sub_24F25B01C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_24E5FCA4C(a1);
  v7 = sub_24E824448(v6);
  (*((*MEMORY[0x277D85000] & *v2) + 0x208))(v7);
  return sub_24E824448(a1);
}

uint64_t (*sub_24F25B0EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25B150;
}

uint64_t sub_24F25B150(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x208))(result);
  }

  return result;
}

uint64_t sub_24F25B1BC(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F22E6E8);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(v6, v3 + v4, &qword_27F22E6E8);
  swift_endAccess();
  sub_24F25B25C();
  return sub_24E601704(v6, &qword_27F22E6E8);
}

uint64_t sub_24F25B25C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E60169C(v0 + v7, &v19, &qword_27F22E6E8);
  v8 = *(&v20 + 1);
  result = sub_24E601704(&v19, &qword_27F22E6E8);
  if (v8)
  {
    v10 = sub_24F922378();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
    swift_beginAccess();
    sub_24E9CBF30(v6, v0 + v12, &qword_27F222038);
    swift_endAccess();
    sub_24E60169C(v0 + v12, v3, &qword_27F222038);
    v13 = (*(v11 + 48))(v3, 1, v10);
    v14 = MEMORY[0x277D85000];
    if (v13 == 1)
    {
      sub_24E601704(v6, &qword_27F222038);
      v15 = sub_24E601704(v3, &qword_27F222038);
    }

    else
    {
      sub_24E601704(v3, &qword_27F222038);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      swift_beginAccess();
      sub_24E9CBF30(&v19, v0 + v7, &qword_27F22E6E8);
      v16 = swift_endAccess();
      sub_24F25B25C(v16);
      v17 = sub_24E601704(&v19, &qword_27F22E6E8);
      (*((*v14 & *v0) + 0x208))(v17);
      v15 = sub_24E601704(v6, &qword_27F222038);
    }

    return (*((*v14 & *v0) + 0x208))(v15);
  }

  return result;
}

uint64_t sub_24F25B590@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22E6E8);
}

uint64_t sub_24F25B5F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v3, &qword_27F22E6E8);
  swift_endAccess();
  sub_24F25B25C();
  return sub_24E601704(a1, &qword_27F22E6E8);
}

uint64_t (*sub_24F25B68C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25B6F0;
}

float sub_24F25B770()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor;
  swift_beginAccess();
  return *v1;
}

void sub_24F25B7B8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor);
  swift_beginAccess();
  *v3 = a1;
  sub_24F25C664();
}

uint64_t (*sub_24F25B810(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25EEF8;
}

id sub_24F25B92C(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeTextView();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

uint64_t sub_24F25BA0C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F25BA50(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24F25C664();
}

uint64_t (*sub_24F25BAA4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25BB08;
}

uint64_t sub_24F25BB20(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24F25BD94@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_24F25BDE8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v2 != v5)
  {
    return sub_24F25BF34();
  }

  return result;
}

void (*sub_24F25BE48(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F25BEDC;
}

void sub_24F25BEDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_24F25BF34();
  }

  free(v1);
}

void *sub_24F25BF34()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [v0 traitCollection];
      v4 = sub_24F92BF88();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = v1;
      v9.super_class = type metadata accessor for DynamicTypeTextView();
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [v0 traitCollection];
      v7 = sub_24F92BF88();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = v1;
      v10.super_class = type metadata accessor for DynamicTypeTextView();
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_24F25C058()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_24F922378();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v0 setAdjustsFontForContentSizeCategory_];
  v11 = (*((*MEMORY[0x277D85000] & *v0) + 0x138))(v10);
  v20 = v1;
  v12 = sub_24F92BFB8();

  v13 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E60169C(&v1[v13], v23, &qword_27F22E6E8);
  if (v24)
  {
    sub_24E615E00(v23, v21);
    sub_24E601704(v23, &qword_27F22E6E8);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v14 = sub_24F9225B8();
    __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_6:
    v16 = v14;
    goto LABEL_7;
  }

  sub_24E601704(v23, &qword_27F22E6E8);
  v15 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(&v1[v15], v4, &qword_27F222038);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_24E69A5C4(0, &qword_27F217E58);
    v14 = MEMORY[0x253051BF0](v9, v12);
    (*(v6 + 8))(v9, v5);
    goto LABEL_6;
  }

  sub_24E601704(v4, &qword_27F222038);
  v14 = 0;
LABEL_7:
  v17 = type metadata accessor for DynamicTypeTextView();
  v22.receiver = v1;
  v22.super_class = v17;
  objc_msgSendSuper2(&v22, sel_setFont_, v14);
  v18 = *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = v14;

  sub_24F25C664();
}

uint64_t sub_24F25C3C0(uint64_t a1, void *a2)
{
  v4 = (a2 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *((*MEMORY[0x277D85000] & *a2) + 0x138);

    v9 = v7(v8);
    v10 = [v9 preferredContentSizeCategory];

    v6(v10);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F922D48();
    return sub_24E824448(v6);
  }

  return result;
}

void sub_24F25C4D8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x277D741F0];
      if (v3)
      {
        v5 = sub_24F92BB08();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

void sub_24F25C664()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = [v1 textColor];
    if (*(v1 + v3) == 1)
    {
      v16.receiver = v1;
      v16.super_class = type metadata accessor for DynamicTypeTextView();
      v5 = objc_msgSendSuper2(&v16, sel_font);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor);
    v6 = v4;
  }

  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont);
  v7 = v5;
LABEL_6:
  v8 = [v1 attributedText];
  if (!v8)
  {
    v9 = [v1 text];
    if (v9)
    {
      v10 = v9;
      sub_24F92B0D8();
    }

    v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v12 = sub_24F92B098();

    v8 = [v11 initWithString_];
  }

  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x158))();
  v14 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_24F25D170(v4, v5, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  [v1 setAttributedText_];
  [v1 setNeedsLayout];

  *(v1 + v2) = 0;
}

void sub_24F25C904(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v5 = sub_24F92B098();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x277D741F0];
      v8 = sub_24F92BB08();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_24F92B098();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_24F25CA44(void *a1)
{
  v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x277D741F0];
    v7 = sub_24F92BB08();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id DynamicTypeTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_24F25CD48(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F25A3EC(v2);
  return sub_24F25EEFC;
}

id sub_24F25CDC8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 textContainer];
  v6 = [v5 *a3];

  return v6;
}

void sub_24F25CE24(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [*v4 textContainer];
  [v7 *a4];
}

void (*sub_24F25CE94(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F25A5B4(v2);
  return sub_24EA092C8;
}

id sub_24F25CF08()
{
  v1 = [*v0 font];

  return v1;
}

void sub_24F25CF40(void *a1)
{
  [*v1 setFont_];
}

void (*sub_24F25CF88(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 font];
  return sub_24F25CFE4;
}

void sub_24F25CFE4(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

double sub_24F25D054()
{
  v1 = [*v0 font];
  if (!v1)
  {
    return *MEMORY[0x277D768C8];
  }

  v2 = v1;
  sub_24F92C278();
  v4 = v3;

  return v4;
}

id sub_24F25D0DC()
{
  v1 = *v0;
  result = [*v0 text];
  if (result)
  {

    result = [v1 text];
    if (result)
    {
      v3 = result;
      sub_24F92B0D8();

      v4 = sub_24F92B228();

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_24F25D170(void *a1, void *a2, float a3)
{
  [v3 beginEditing];
  *&v51 = MEMORY[0x277D84F90];
  v8 = *MEMORY[0x277D74118];
  v9 = [v3 length];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = &v51;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F25EE94;
  *(v11 + 24) = v10;
  v57 = sub_24F25EEA0;
  v58 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EA259AC;
  v56 = &block_descriptor_131;
  v12 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_42;
  }

  v43 = a2;
  v14 = v51;

  *&v45 = v14;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    v47 = v3;
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      if ([v3 attribute:v8 atIndex:v19 effectiveRange:{0, v43}])
      {
        sub_24F92C648();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51 = v49;
      v52 = v50;
      if (*(&v50 + 1))
      {
        sub_24E69A5C4(0, &qword_27F221898);
        if (swift_dynamicCast())
        {
          [v48 mutableCopy];

          sub_24F92C648();
          swift_unknownObjectRelease();
          sub_24E69A5C4(0, &qword_27F2254C8);
          if (swift_dynamicCast())
          {
            v17 = v51;
            v3 = v47;
            goto LABEL_6;
          }

          v3 = v47;
        }
      }

      else
      {
        sub_24E601704(&v51, &qword_27F2129B0);
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
LABEL_6:
      v16 += 2;
      *&v18 = a3;
      [v17 setHyphenationFactor_];
      [v3 addAttribute:v8 value:v17 range:{v19, v20}];

      --v15;
    }

    while (v15);
  }

  v4 = &selRef_systemBackgroundColor;
  v5 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (!a1)
  {
    goto LABEL_27;
  }

  v8 = *MEMORY[0x277D740C0];
  *&v49 = MEMORY[0x277D84F90];
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  isEscapingClosureAtFileLocation = a1;
  v21 = [v3 length];
  v22 = swift_allocObject();
  *(v22 + 16) = &v51;
  *(v22 + 24) = &v49;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24F25EED4;
  *(v23 + 24) = v22;
  v57 = sub_24F25EED0;
  v58 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EA259AC;
  v56 = &block_descriptor_59_0;
  v24 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v52 & 1) == 0)
  {
    v45 = v51;
    v11 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

  for (i = v49; ; *(i + 16 * v28 + 32) = v45)
  {

    v29 = *(i + 16);
    if (v29)
    {
      v30 = (i + 40);
      do
      {
        [v3 v4[181]];
        v30 += 2;
        --v29;
      }

      while (v29);
    }

LABEL_27:
    if (!v43)
    {
      break;
    }

    isEscapingClosureAtFileLocation = *MEMORY[0x277D740A8];
    *&v49 = MEMORY[0x277D84F90];
    v51 = 0uLL;
    LOBYTE(v52) = 1;
    v31 = v43;
    v32 = [v3 v5[84]];
    v8 = swift_allocObject();
    *(v8 + 16) = &v51;
    *(v8 + 24) = &v49;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24F25EEC0;
    *(v33 + 24) = v8;
    v57 = sub_24F25EED0;
    v58 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24EA259AC;
    v56 = &block_descriptor_48;
    v34 = _Block_copy(&aBlock);

    [v3 enumerateAttribute:isEscapingClosureAtFileLocation inRange:0 options:v32 usingBlock:{0, v34}];
    _Block_release(v34);
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      if (v52)
      {

        v35 = v49;
      }

      else
      {
        v46 = v51;
        v36 = v49;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v36;
        if ((v37 & 1) == 0)
        {
          v36 = sub_24E616164(0, *(v36 + 2) + 1, 1, v36);
          *&v49 = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          *&v49 = sub_24E616164((v38 > 1), v39 + 1, 1, v36);
        }

        v35 = v49;
        *(v49 + 16) = v39 + 1;
        *(v35 + 16 * v39 + 32) = v46;
      }

      v40 = *(v35 + 16);
      if (v40)
      {
        v41 = (v35 + 40);
        do
        {
          [v3 v4[181]];
          v41 += 2;
          --v40;
        }

        while (v40);
      }

      return [v3 endEditing];
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v11 = sub_24E616164(0, *(v11 + 16) + 1, 1, v11);
    *&v49 = v11;
LABEL_20:
    v28 = *(v11 + 16);
    v27 = *(v11 + 24);
    if (v28 >= v27 >> 1)
    {
      *&v49 = sub_24E616164((v27 > 1), v28 + 1, 1, v11);
    }

    i = v49;
    *(v49 + 16) = v28 + 1;
  }

  return [v3 endEditing];
}

uint64_t sub_24F25D9CC(uint64_t result, NSRange range2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(result + 24))
  {
    if ((*(a4 + 16) & 1) == 0)
    {
      length = range2.length;
      v6 = a4;
      location = range2.location;
      if (vaddvq_s64(*a4) == range2.location)
      {
        v21.location = range2.location;
        v21.length = length;
        v8 = NSUnionRange(*a4, v21);
        result = v8.location;
        range2 = v8;
        a4 = v6;
      }

      else
      {
        v20 = *a4;
        v9 = *a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v9;
        if (result)
        {
          v11 = a5;
        }

        else
        {
          result = sub_24E616164(0, *(v9 + 16) + 1, 1, v9);
          v11 = a5;
          v9 = result;
          *a5 = result;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = v12 + 1;
        v15 = v20;
        if (v12 >= v13 >> 1)
        {
          v16 = v9;
          v17 = v11;
          v18 = v12 + 1;
          v19 = v12;
          result = sub_24E616164((v13 > 1), v12 + 1, 1, v16);
          v15 = v20;
          v12 = v19;
          v14 = v18;
          range2.location = location;
          range2.length = length;
          a4 = v6;
          v9 = result;
          *v17 = result;
        }

        else
        {
          a4 = v6;
          range2.length = length;
          range2.location = location;
        }

        *(v9 + 16) = v14;
        *(v9 + 16 * v12 + 32) = v15;
      }
    }

    *a4 = range2;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_24F25DB20(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, char **a6)
{
  sub_24E60169C(a1, v22, &qword_27F2129B0);
  if (!v23)
  {
    sub_24E601704(v22, &qword_27F2129B0);
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F221898);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v11 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_24E616164(0, *(v11 + 2) + 1, 1, v11);
      *a6 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_24E616164((v13 > 1), v14 + 1, 1, v11);
      *a6 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    goto LABEL_11;
  }

  [v21 hyphenationFactor];
  if (v10 == a4)
  {

    return;
  }

  v16 = *a6;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_24E616164(0, *(v16 + 2) + 1, 1, v16);
    *a6 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    *a6 = sub_24E616164((v18 > 1), v19 + 1, 1, v16);
  }

  v20 = *a6;
  *(v20 + 2) = v19 + 1;
  v15 = &v20[16 * v19];
LABEL_11:
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
}

uint64_t sub_24F25DD00(void *a1)
{
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  }

  return result;
}

void _s12GameStoreKit19DynamicTypeTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  v2 = sub_24F922378();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes) = 1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment) = 0;
  sub_24F92CA88();
  __break(1u);
}

void *sub_24F25DE9C(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [a1 traitCollection];
      v4 = sub_24F92BF88();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = a1;
      v9.super_class = type metadata accessor for DynamicTypeTextView();
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [a1 traitCollection];
      v7 = sub_24F92BF88();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeTextView();
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_24F25DFC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = type metadata accessor for DynamicTypeTextView();
  v14.receiver = v1;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_setFont_, a1);
  v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = a1;
  v8 = a1;

  v9 = sub_24F922378();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_24F25A988(v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(v12, &v1[v10], &qword_27F22E6E8);
  swift_endAccess();
  sub_24F25B25C();
  sub_24E601704(v12, &qword_27F22E6E8);
  [v1 setAdjustsFontForContentSizeCategory_];
  sub_24F25C664();
}

void sub_24F25E154(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a2 = v4;
}

void sub_24F25E1D0(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 lineBreakMode];

  *a2 = v4;
}

uint64_t sub_24F25E24C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F222038);
}

uint64_t sub_24F25E2C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22E6E8);
}

uint64_t sub_24F25E3F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24F25E450(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_24F25C664();
}

void *sub_24F25E4A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1E8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_24F25E51C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x1F0))(&v4);
}

void sub_24F25E594()
{
  sub_24E935B08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F25EE18()
{

  return swift_deallocObject();
}

uint64_t sub_24F25EE50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double UpsellGridLayout.init(metrics:icons:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

double UpsellGridLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

double UpsellGridLayout.metrics.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 16) = result;
  return result;
}

uint64_t UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t static UpsellGridLayout.iconCount(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_24F260590(a1, a2, a3);
}

double sub_24F25F078@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v17 = *a1;
  v18 = 7 * *a1;
  if ((*a1 * 7) >> 64 != v18 >> 63)
  {
    goto LABEL_109;
  }

  v19 = a3;
  if (a4 < a3)
  {
    a3 = a4;
  }

  if (v19 > a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = a4;
  }

  if (v17 <= 1)
  {
    v17 = 1;
  }

  v21 = v17 - 1;
  if (!*(a1 + 8))
  {
    a3 = v20;
  }

  v10 = a3 / (v18 + v21);
  v267 = *(a1 + 2) * (v10 * 7.0);
  v22 = v10 + v267 + v267;
  if (!*(a1 + 8))
  {
    a5 = 0.0;
  }

  if (!*(a1 + 8))
  {
    a6 = 0.0;
  }

  v272.origin.x = a5;
  v272.origin.y = a6;
  v272.size.width = v19;
  v272.size.height = a4;
  v26 = CGRectGetMidX(v272) - v22 * 0.5;
  v273.origin.x = a5;
  v273.origin.y = a6;
  v273.size.width = v19;
  v273.size.height = a4;
  v9 = a5;
  v266 = a6;
  v11 = a4;
  v253 = CGRectGetMidY(v273) - v22 * 0.5;
  v254 = v26;
  rect = v10 + v267 + v267;
  sub_24F92C1D8();
  v14 = v27;
  v15 = v28;
  v12 = v29;
  v13 = v30;
  v6 = sub_24E617B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v17 = *(v6 + 3);
  v7 = v8 + 1;
  v257 = v19;
  if (v8 >= v17 >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    *(v6 + 2) = v7;
    v31 = &v6[32 * v8];
    *(v31 + 4) = v14;
    *(v31 + 5) = v15;
    *(v31 + 6) = v12;
    *(v31 + 7) = v13;
    v274.origin.y = v253;
    v274.origin.x = v254;
    v274.size.width = rect;
    v274.size.height = rect;
    v32 = CGRectGetMinY(v274) - v10;
    v268 = v9;
    v275.origin.x = v9;
    v33 = v266;
    v275.origin.y = v266;
    v275.size.width = v257;
    v34 = v11;
    v275.size.height = v11;
    v264 = v10 + v267;
    v252 = v10;
    if (CGRectGetMinY(v275) < v32)
    {
      v63 = v257;
      v64 = v268;
      do
      {
        v277.origin.y = v253;
        v277.origin.x = v254;
        v277.size.width = rect;
        v277.size.height = rect;
        v35 = v34;
        MinX = CGRectGetMinX(v277);
        v278.origin.x = v64;
        v278.origin.y = v33;
        v278.size.width = v63;
        v278.size.height = v35;
        v327.origin.x = MinX;
        v327.origin.y = v32 - v267;
        v327.size.width = v267;
        v327.size.height = v267;
        if (CGRectIntersectsRect(v278, v327))
        {
          sub_24F92C1D8();
          v42 = *(v6 + 2);
          v41 = *(v6 + 3);
          v43 = MinX;
          if (v42 >= v41 >> 1)
          {
            v262 = v37;
            v54 = v38;
            v55 = v39;
            v56 = v40;
            v57 = sub_24E617B8C((v41 > 1), v42 + 1, 1, v6);
            v40 = v56;
            v39 = v55;
            v38 = v54;
            v37 = v262;
            v6 = v57;
          }

          *(v6 + 2) = v42 + 1;
          v44 = &v6[32 * v42];
          *(v44 + 4) = v37;
          *(v44 + 5) = v38;
          *(v44 + 6) = v39;
          *(v44 + 7) = v40;
        }

        else
        {
          v43 = MinX;
        }

        v34 = v35;
        v279.origin.y = v253;
        v279.origin.x = v254;
        v279.size.width = rect;
        v279.size.height = rect;
        v45 = CGRectGetMaxX(v279) - v267;
        v280.origin.x = v43;
        v280.origin.y = v32 - v267;
        v280.size.width = v267;
        v280.size.height = v267;
        MinY = CGRectGetMinY(v280);
        v281.origin.x = v268;
        v33 = v266;
        v281.origin.y = v266;
        v281.size.width = v257;
        v281.size.height = v35;
        v328.origin.x = v45;
        v328.origin.y = MinY;
        v328.size.width = v267;
        v328.size.height = v267;
        if (CGRectIntersectsRect(v281, v328))
        {
          sub_24F92C1D8();
          v52 = *(v6 + 2);
          v51 = *(v6 + 3);
          if (v52 >= v51 >> 1)
          {
            v58 = v47;
            v59 = v48;
            v60 = v49;
            v61 = v50;
            v62 = sub_24E617B8C((v51 > 1), v52 + 1, 1, v6);
            v50 = v61;
            v49 = v60;
            v48 = v59;
            v47 = v58;
            v6 = v62;
          }

          v10 = v252;
          *(v6 + 2) = v52 + 1;
          v53 = &v6[32 * v52];
          *(v53 + 4) = v47;
          *(v53 + 5) = v48;
          *(v53 + 6) = v49;
          *(v53 + 7) = v50;
          v64 = v268;
        }

        else
        {
          v10 = v252;
          v64 = v268;
        }

        v32 = v32 - v264;
        v276.origin.x = v64;
        v276.origin.y = v266;
        v63 = v257;
        v276.size.width = v257;
        v276.size.height = v35;
      }

      while (CGRectGetMinY(v276) < v32);
    }

    else
    {
      v63 = v257;
      v64 = v268;
    }

    v282.origin.y = v253;
    v282.origin.x = v254;
    v65 = rect;
    v282.size.width = rect;
    v282.size.height = rect;
    v66 = v10 + CGRectGetMaxY(v282);
    v283.origin.x = v64;
    v283.origin.y = v33;
    v283.size.width = v63;
    v283.size.height = v34;
    v67 = v63;
    v265 = v34;
    if (v66 >= CGRectGetMaxY(v283))
    {
      v9 = v268;
    }

    else
    {
      v9 = v268;
      do
      {
        v285.origin.y = v253;
        v285.origin.x = v254;
        v285.size.width = v65;
        v285.size.height = v65;
        v68 = v34;
        v69 = CGRectGetMinX(v285);
        v286.origin.x = v9;
        v286.origin.y = v33;
        v286.size.width = v67;
        v286.size.height = v68;
        v329.origin.x = v69;
        v329.origin.y = v66;
        v329.size.width = v267;
        v329.size.height = v267;
        if (CGRectIntersectsRect(v286, v329))
        {
          sub_24F92C1D8();
          v75 = *(v6 + 2);
          v74 = *(v6 + 3);
          if (v75 >= v74 >> 1)
          {
            v86 = v70;
            v87 = v71;
            v88 = v72;
            v89 = v73;
            v90 = sub_24E617B8C((v74 > 1), v75 + 1, 1, v6);
            v73 = v89;
            v72 = v88;
            v71 = v87;
            v70 = v86;
            v6 = v90;
          }

          *(v6 + 2) = v75 + 1;
          v76 = &v6[32 * v75];
          *(v76 + 4) = v70;
          *(v76 + 5) = v71;
          *(v76 + 6) = v72;
          *(v76 + 7) = v73;
        }

        v287.origin.y = v253;
        v287.origin.x = v254;
        v287.size.width = rect;
        v287.size.height = rect;
        v77 = CGRectGetMaxX(v287) - v267;
        v288.origin.x = v69;
        v288.origin.y = v66;
        v288.size.width = v267;
        v288.size.height = v267;
        v78 = CGRectGetMinY(v288);
        v289.origin.x = v268;
        v34 = v265;
        v33 = v266;
        v289.origin.y = v266;
        v289.size.width = v67;
        v289.size.height = v265;
        v330.origin.x = v77;
        v330.origin.y = v78;
        v330.size.width = v267;
        v330.size.height = v267;
        if (CGRectIntersectsRect(v289, v330))
        {
          sub_24F92C1D8();
          v84 = *(v6 + 2);
          v83 = *(v6 + 3);
          if (v84 >= v83 >> 1)
          {
            v91 = v79;
            v92 = v80;
            v93 = v81;
            v94 = v82;
            v95 = sub_24E617B8C((v83 > 1), v84 + 1, 1, v6);
            v82 = v94;
            v67 = v257;
            v81 = v93;
            v80 = v92;
            v79 = v91;
            v6 = v95;
          }

          *(v6 + 2) = v84 + 1;
          v85 = &v6[32 * v84];
          *(v85 + 4) = v79;
          *(v85 + 5) = v80;
          *(v85 + 6) = v81;
          *(v85 + 7) = v82;
          v9 = v268;
          v65 = rect;
        }

        else
        {
          v65 = rect;
          v9 = v268;
        }

        v66 = v264 + v66;
        v284.origin.x = v9;
        v284.origin.y = v266;
        v284.size.width = v67;
        v284.size.height = v265;
      }

      while (v66 < CGRectGetMaxY(v284));
    }

    v290.origin.x = v254;
    v96 = v65;
    v290.origin.y = v253;
    v290.size.width = v65;
    v290.size.height = v65;
    v97 = v252 + CGRectGetMaxX(v290);
    v291.origin.x = v254;
    v291.origin.y = v253;
    v291.size.width = v65;
    v291.size.height = v65;
    v98 = CGRectGetMaxY(v291) - v264;
    v292.origin.x = v9;
    v292.origin.y = v33;
    v292.size.width = v67;
    v292.size.height = v34;
    v270.x = v97;
    v270.y = v98;
    if (!CGRectContainsPoint(v292, v270))
    {
      break;
    }

    v251 = v252 + v96;
    v8 = 1;
    while (1)
    {
      v250 = v98;
      v99 = rect;
      v293.origin.x = v254;
      v293.origin.y = v253;
      v293.size.width = rect;
      v293.size.height = rect;
      v258 = CGRectGetMinX(v293);
      v294.origin.x = v254;
      v294.origin.y = v253;
      v12 = v257;
      v294.size.width = rect;
      v294.size.height = rect;
      MaxY = CGRectGetMaxY(v294);
      v260 = v98 - rect;
      sub_24F92C1D8();
      v105 = *(v6 + 2);
      v104 = *(v6 + 3);
      if (v105 >= v104 >> 1)
      {
        v239 = v100;
        v240 = v101;
        v241 = v102;
        v242 = v103;
        v243 = sub_24E617B8C((v104 > 1), v105 + 1, 1, v6);
        v103 = v242;
        v12 = v257;
        v102 = v241;
        v101 = v240;
        v100 = v239;
        v9 = v268;
        v99 = rect;
        v6 = v243;
      }

      *(v6 + 2) = v105 + 1;
      v106 = &v6[32 * v105];
      *(v106 + 4) = v100;
      *(v106 + 5) = v101;
      *(v106 + 6) = v102;
      *(v106 + 7) = v103;
      v263 = v97;
      v295.origin.x = v97;
      v295.origin.y = v260;
      v295.size.width = v99;
      v295.size.height = v99;
      for (i = CGRectGetMinY(v295) - v252; ; i = i - v264)
      {
        v296.origin.x = v9;
        v296.origin.y = v33;
        v296.size.width = v12;
        v296.size.height = v34;
        if (CGRectGetMinY(v296) >= i)
        {
          break;
        }

        v297.origin.y = v260;
        v297.origin.x = v97;
        v297.size.width = v99;
        v297.size.height = v99;
        v108 = v12;
        v109 = v34;
        v110 = CGRectGetMinX(v297);
        v298.origin.x = v9;
        v298.origin.y = v33;
        v298.size.width = v108;
        v298.size.height = v109;
        v331.origin.x = v110;
        v331.origin.y = i - v267;
        v331.size.width = v267;
        v331.size.height = v267;
        if (CGRectIntersectsRect(v298, v331))
        {
          sub_24F92C1D8();
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v119 = *(v6 + 2);
          v118 = *(v6 + 3);
          v120 = v110;
          if (v119 >= v118 >> 1)
          {
            v131 = v111;
            v132 = sub_24E617B8C((v118 > 1), v119 + 1, 1, v6);
            v111 = v131;
            v6 = v132;
          }

          *(v6 + 2) = v119 + 1;
          v121 = &v6[32 * v119];
          *(v121 + 4) = v113;
          *(v121 + 5) = v111;
          *(v121 + 6) = v115;
          *(v121 + 7) = v117;
          v34 = v265;
          v12 = v257;
        }

        else
        {
          v120 = v110;
          v34 = v109;
          v12 = v108;
        }

        v299.size.width = rect;
        v299.origin.y = v260;
        v299.origin.x = v97;
        v299.size.height = rect;
        v122 = CGRectGetMaxX(v299) - v267;
        v300.origin.x = v120;
        v300.origin.y = i - v267;
        v300.size.width = v267;
        v300.size.height = v267;
        v123 = CGRectGetMinY(v300);
        v301.origin.x = v268;
        v33 = v266;
        v301.origin.y = v266;
        v301.size.width = v12;
        v301.size.height = v34;
        v332.origin.x = v122;
        v332.origin.y = v123;
        v332.size.width = v267;
        v332.size.height = v267;
        if (CGRectIntersectsRect(v301, v332))
        {
          sub_24F92C1D8();
          v129 = *(v6 + 2);
          v128 = *(v6 + 3);
          if (v129 >= v128 >> 1)
          {
            v133 = v124;
            v134 = v125;
            v135 = v126;
            v136 = v127;
            v137 = sub_24E617B8C((v128 > 1), v129 + 1, 1, v6);
            v127 = v136;
            v126 = v135;
            v125 = v134;
            v12 = v257;
            v124 = v133;
            v6 = v137;
          }

          *(v6 + 2) = v129 + 1;
          v130 = &v6[32 * v129];
          *(v130 + 4) = v124;
          *(v130 + 5) = v125;
          *(v130 + 6) = v126;
          *(v130 + 7) = v127;
          v9 = v268;
          v99 = rect;
        }

        else
        {
          v99 = rect;
          v9 = v268;
        }
      }

      v302.origin.y = v260;
      v302.origin.x = v97;
      v302.size.width = v99;
      v302.size.height = v99;
      v138 = v252 + CGRectGetMaxY(v302);
      v303.origin.x = v9;
      v303.origin.y = v33;
      v303.size.width = v12;
      v303.size.height = v34;
      if (v138 >= CGRectGetMaxY(v303))
      {
        v139 = v267;
      }

      else
      {
        v139 = v267;
        do
        {
          v305.origin.y = v260;
          v305.origin.x = v263;
          v305.size.width = v99;
          v140 = v99;
          v305.size.height = v99;
          v141 = v12;
          v142 = v34;
          v143 = CGRectGetMinX(v305);
          v306.origin.x = v9;
          v306.origin.y = v33;
          v306.size.width = v141;
          v306.size.height = v142;
          v333.origin.x = v143;
          v333.origin.y = v138;
          v333.size.width = v139;
          v333.size.height = v139;
          if (CGRectIntersectsRect(v306, v333))
          {
            sub_24F92C1D8();
            v149 = *(v6 + 2);
            v148 = *(v6 + 3);
            if (v149 >= v148 >> 1)
            {
              v160 = v144;
              v161 = v145;
              v162 = v146;
              v163 = v147;
              v164 = sub_24E617B8C((v148 > 1), v149 + 1, 1, v6);
              v147 = v163;
              v141 = v257;
              v146 = v162;
              v140 = rect;
              v145 = v161;
              v144 = v160;
              v6 = v164;
            }

            *(v6 + 2) = v149 + 1;
            v150 = &v6[32 * v149];
            *(v150 + 4) = v144;
            *(v150 + 5) = v145;
            *(v150 + 6) = v146;
            *(v150 + 7) = v147;
          }

          v307.origin.y = v260;
          v307.origin.x = v263;
          v307.size.width = v140;
          v307.size.height = v140;
          v151 = CGRectGetMaxX(v307) - v139;
          v308.origin.x = v143;
          v308.origin.y = v138;
          v308.size.width = v139;
          v308.size.height = v139;
          v152 = CGRectGetMinY(v308);
          v309.origin.x = v268;
          v33 = v266;
          v309.origin.y = v266;
          v309.size.width = v141;
          v309.size.height = v265;
          v334.origin.x = v151;
          v334.origin.y = v152;
          v334.size.width = v139;
          v334.size.height = v139;
          if (CGRectIntersectsRect(v309, v334))
          {
            sub_24F92C1D8();
            v158 = *(v6 + 2);
            v157 = *(v6 + 3);
            if (v158 >= v157 >> 1)
            {
              v165 = v153;
              v166 = v154;
              v167 = v155;
              v168 = v156;
              v169 = sub_24E617B8C((v157 > 1), v158 + 1, 1, v6);
              v156 = v168;
              v12 = v257;
              v155 = v167;
              v154 = v166;
              v153 = v165;
              v6 = v169;
            }

            else
            {
              v12 = v141;
            }

            *(v6 + 2) = v158 + 1;
            v159 = &v6[32 * v158];
            *(v159 + 4) = v153;
            *(v159 + 5) = v154;
            *(v159 + 6) = v155;
            *(v159 + 7) = v156;
            v9 = v268;
            v99 = rect;
            v34 = v265;
            v139 = v267;
          }

          else
          {
            v9 = v268;
            v34 = v265;
            v12 = v141;
            v99 = rect;
          }

          v138 = v264 + v138;
          v304.origin.x = v9;
          v304.origin.y = v266;
          v304.size.width = v12;
          v304.size.height = v34;
        }

        while (v138 < CGRectGetMaxY(v304));
      }

      v170 = v258 - v251 * v8;
      v259 = v264 * (v8 - 1) + MaxY - v139;
      v261 = v170;
      sub_24F92C1D8();
      v176 = *(v6 + 2);
      v175 = *(v6 + 3);
      v7 = v176 + 1;
      if (v176 >= v175 >> 1)
      {
        v244 = v171;
        v245 = v172;
        v246 = v173;
        v247 = v174;
        v248 = sub_24E617B8C((v175 > 1), v176 + 1, 1, v6);
        v174 = v247;
        v12 = v257;
        v173 = v246;
        v172 = v245;
        v177 = v252;
        v171 = v244;
        v9 = v268;
        v99 = rect;
        v6 = v248;
      }

      else
      {
        v177 = v252;
      }

      *(v6 + 2) = v7;
      v178 = &v6[32 * v176];
      *(v178 + 4) = v171;
      *(v178 + 5) = v172;
      *(v178 + 6) = v173;
      *(v178 + 7) = v174;
      v310.origin.y = v259;
      v310.origin.x = v261;
      v310.size.width = v99;
      v310.size.height = v99;
      v11 = CGRectGetMinY(v310) - v177;
      v311.origin.x = v9;
      v311.origin.y = v33;
      v311.size.width = v12;
      v311.size.height = v34;
      v179 = CGRectGetMinY(v311) < v11;
      v180 = v34;
      v15 = v33;
      v13 = v180;
      if (v179)
      {
        do
        {
          v256 = v11;
          v181 = v11 - v267;
          v315.origin.y = v259;
          v315.origin.x = v261;
          v315.size.width = v99;
          v315.size.height = v99;
          v182 = CGRectGetMinX(v315);
          v316.origin.x = v9;
          v316.origin.y = v15;
          v316.size.width = v12;
          v316.size.height = v13;
          v335.origin.x = v182;
          v335.origin.y = v181;
          v335.size.width = v267;
          v335.size.height = v267;
          if (CGRectIntersectsRect(v316, v335))
          {
            sub_24F92C1D8();
            v188 = *(v6 + 2);
            v187 = *(v6 + 3);
            v7 = v188 + 1;
            v189 = v182;
            if (v188 >= v187 >> 1)
            {
              v201 = v183;
              v202 = v184;
              v203 = v185;
              v204 = v186;
              v205 = sub_24E617B8C((v187 > 1), v188 + 1, 1, v6);
              v186 = v204;
              v185 = v203;
              v99 = rect;
              v184 = v202;
              v183 = v201;
              v6 = v205;
            }

            v190 = v256;
            *(v6 + 2) = v7;
            v191 = &v6[32 * v188];
            *(v191 + 4) = v183;
            *(v191 + 5) = v184;
            *(v191 + 6) = v185;
            *(v191 + 7) = v186;
          }

          else
          {
            v189 = v182;
            v190 = v256;
          }

          v317.origin.y = v259;
          v317.origin.x = v261;
          v317.size.width = v99;
          v317.size.height = v99;
          v192 = CGRectGetMaxX(v317) - v267;
          v318.origin.x = v189;
          v318.origin.y = v181;
          v318.size.width = v267;
          v318.size.height = v267;
          v193 = CGRectGetMinY(v318);
          v319.origin.x = v268;
          v13 = v265;
          v15 = v266;
          v319.origin.y = v266;
          v12 = v257;
          v319.size.width = v257;
          v319.size.height = v265;
          v336.origin.x = v192;
          v336.origin.y = v193;
          v336.size.width = v267;
          v336.size.height = v267;
          if (CGRectIntersectsRect(v319, v336))
          {
            sub_24F92C1D8();
            v199 = *(v6 + 2);
            v198 = *(v6 + 3);
            v7 = v199 + 1;
            if (v199 >= v198 >> 1)
            {
              v206 = v194;
              v207 = v195;
              v208 = v196;
              v209 = v197;
              v210 = sub_24E617B8C((v198 > 1), v199 + 1, 1, v6);
              v197 = v209;
              v13 = v265;
              v196 = v208;
              v195 = v207;
              v12 = v257;
              v194 = v206;
              v6 = v210;
            }

            *(v6 + 2) = v7;
            v200 = &v6[32 * v199];
            *(v200 + 4) = v194;
            *(v200 + 5) = v195;
            *(v200 + 6) = v196;
            *(v200 + 7) = v197;
            v9 = v268;
            v99 = rect;
          }

          else
          {
            v99 = rect;
            v9 = v268;
          }

          v11 = v190 - v264;
          v314.origin.x = v9;
          v314.origin.y = v266;
          v314.size.width = v12;
          v314.size.height = v13;
        }

        while (CGRectGetMinY(v314) < v11);
      }

      v312.origin.y = v259;
      v312.origin.x = v261;
      v312.size.width = v99;
      v312.size.height = v99;
      v10 = v252 + CGRectGetMaxY(v312);
      v313.origin.x = v9;
      v313.origin.y = v15;
      v313.size.width = v12;
      v313.size.height = v13;
      if (v10 < CGRectGetMaxY(v313))
      {
        v13 = v265;
        v11 = v266;
        do
        {
          v321.origin.y = v259;
          v321.origin.x = v261;
          v321.size.width = rect;
          v321.size.height = rect;
          v212 = CGRectGetMinX(v321);
          v322.origin.x = v9;
          v322.origin.y = v11;
          v322.size.width = v12;
          v322.size.height = v13;
          v337.origin.x = v212;
          v337.origin.y = v10;
          v337.size.width = v267;
          v337.size.height = v267;
          if (CGRectIntersectsRect(v322, v337))
          {
            sub_24F92C1D8();
            v218 = *(v6 + 2);
            v217 = *(v6 + 3);
            v7 = v218 + 1;
            if (v218 >= v217 >> 1)
            {
              v233 = v213;
              v234 = v214;
              v235 = v215;
              v236 = v216;
              v237 = sub_24E617B8C((v217 > 1), v218 + 1, 1, v6);
              v216 = v236;
              v215 = v235;
              v214 = v234;
              v219 = v267;
              v213 = v233;
              v6 = v237;
            }

            else
            {
              v219 = v267;
            }

            *(v6 + 2) = v7;
            v220 = &v6[32 * v218];
            *(v220 + 4) = v213;
            *(v220 + 5) = v214;
            *(v220 + 6) = v215;
            *(v220 + 7) = v216;
          }

          else
          {
            v219 = v267;
          }

          v323.origin.y = v259;
          v323.origin.x = v261;
          v323.size.width = rect;
          v323.size.height = rect;
          v15 = CGRectGetMaxX(v323) - v219;
          v324.origin.x = v212;
          v324.origin.y = v10;
          v324.size.width = v219;
          v324.size.height = v219;
          v221 = CGRectGetMinY(v324);
          v9 = v268;
          v325.origin.x = v268;
          v325.origin.y = v266;
          v325.size.width = v257;
          v325.size.height = v265;
          v338.origin.x = v15;
          v338.origin.y = v221;
          v338.size.width = v219;
          v338.size.height = v219;
          if (CGRectIntersectsRect(v325, v338))
          {
            sub_24F92C1D8();
            v227 = *(v6 + 2);
            v226 = *(v6 + 3);
            v7 = v227 + 1;
            if (v227 >= v226 >> 1)
            {
              v228 = v222;
              v229 = v223;
              v230 = v224;
              v231 = v225;
              v232 = sub_24E617B8C((v226 > 1), v227 + 1, 1, v6);
              v225 = v231;
              v224 = v230;
              v223 = v229;
              v222 = v228;
              v6 = v232;
            }

            *(v6 + 2) = v7;
            v211 = &v6[32 * v227];
            *(v211 + 4) = v222;
            *(v211 + 5) = v223;
            *(v211 + 6) = v224;
            *(v211 + 7) = v225;
            v9 = v268;
          }

          v13 = v265;
          v10 = v264 + v10;
          v320.origin.x = v9;
          v11 = v266;
          v320.origin.y = v266;
          v12 = v257;
          v320.size.width = v257;
          v320.size.height = v265;
        }

        while (v10 < CGRectGetMaxY(v320));
      }

      v238 = __OFADD__(v8++, 1);
      v14 = v263;
      if (v238)
      {
        break;
      }

      v34 = v265;
      v98 = v250 - v264;
      v97 = v251 + v263;
      v326.origin.x = v9;
      v33 = v266;
      v326.origin.y = v266;
      v326.size.width = v12;
      v326.size.height = v265;
      v271.x = v251 + v263;
      v271.y = v250 - v264;
      if (!CGRectContainsPoint(v326, v271))
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    v6 = sub_24E617B8C((v17 > 1), v7, 1, v6);
  }

LABEL_107:
  *a2 = v6;
  *(a2 + 8) = v252;
  *(a2 + 16) = v267;
  result = rect;
  *(a2 + 24) = v267;
  *(a2 + 32) = rect;
  *(a2 + 40) = rect;
  return result;
}

uint64_t static UpsellGridLayout.iconSizes(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_24F260478(a1, a2, a3);
}

void UpsellGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *&v15 = *v4;
  BYTE8(v15) = v6;
  v16 = v7;
  sub_24F25F078(&v15, v17, a3, a4, a1, a2);
  v9 = v17[0];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    v13 = v17[0] + 56;
    while (v11 < *(v8 + 16))
    {
      sub_24E615E00(v12, &v15);
      v14 = *(v9 + 16);
      if (v11 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_9;
      }

      if (v11 >= v14)
      {
        goto LABEL_11;
      }

      ++v11;
      sub_24E612E28(&v15, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(v17);
      v12 += 40;
      v13 += 32;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    sub_24F922128();
  }
}

uint64_t sub_24F260478(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v14 = *a1;
  v15 = v3;
  v16 = v4;
  sub_24F25F078(&v14, v17, a2, a3, 0.0, 0.0);
  v5 = v17[0];
  v6 = *(v17[0] + 16);
  if (v6)
  {
    v17[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v6, 0);
    v7 = v17[0];
    v8 = *(v17[0] + 16);
    v9 = 48;
    do
    {
      v10 = *(v5 + v9);
      v17[0] = v7;
      v11 = *(v7 + 24);
      if (v8 >= v11 >> 1)
      {
        v13 = v10;
        sub_24F4587DC((v11 > 1), v8 + 1, 1);
        v10 = v13;
        v7 = v17[0];
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 16 * v8 + 32) = v10;
      v9 += 32;
      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_24F260590(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  sub_24F25F078(&v7, v10, a2, a3, 0.0, 0.0);
  v5 = *(v10[0] + 16);

  return v5;
}

uint64_t *_s12GameStoreKit16UpsellGridLayoutV13largeIconSize7fitting5using2inSo6CGSizeVAI_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *result)
{
  if ((*result * 7) >> 64 != (7 * *result) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t SystemImage.rawValue.getter()
{
  result = 7630433;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
    case 0x11:
    case 0x1F:
      return 0xD000000000000017;
    case 3:
      return 0x746177656C707061;
    case 4:
      return 0x65726F7473707061;
    case 5:
    case 0x4A:
      return 0xD000000000000011;
    case 6:
      return 0x6C632E776F727261;
    case 7:
    case 0xA:
    case 0x50:
      return 0xD000000000000010;
    case 8:
    case 0x3E:
      return 0xD000000000000022;
    case 9:
      return 0x72616D6B63656863;
    case 0xB:
    case 0x27:
    case 0x4C:
      return 0xD000000000000014;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      return 0x2E6E6F7276656863;
    case 0x10:
      return 0x2E6E6F7276656863;
    case 0x12:
      return 0x747865742E636F64;
    case 0x13:
      return 0x73697370696C6C65;
    case 0x14:
      return 0xD000000000000016;
    case 0x15:
      return 0xD00000000000001DLL;
    case 0x16:
      return 0x73616C732E657965;
    case 0x17:
      return 0x632E322E67616C66;
    case 0x18:
      return 0xD000000000000013;
    case 0x19:
      return 0x72656D6D6168;
    case 0x1A:
      v5 = 0x72656D6D6168;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x1B:
      return 0x69662E6573756F68;
    case 0x1C:
    case 0x2B:
    case 0x38:
    case 0x49:
      return 0xD000000000000015;
    case 0x1D:
      return 0xD000000000000028;
    case 0x1E:
    case 0x32:
    case 0x33:
    case 0x42:
      return 0xD000000000000012;
    case 0x20:
      return 0x6C2E6C657275616CLL;
    case 0x21:
      return 0x742E6C657275616CLL;
    case 0x22:
    case 0x48:
      return 0xD00000000000001ALL;
    case 0x23:
      return 0xD000000000000021;
    case 0x24:
      return 0xD000000000000026;
    case 0x25:
      return 1802398060;
    case 0x26:
      return 0x6C75622E7473696CLL;
    case 0x28:
      return 0x697966696E67616DLL;
    case 0x29:
      return 0x6567617373656DLL;
    case 0x2A:
      return 0x6F68706F7263696DLL;
    case 0x2C:
      return 0x757262746E696170;
    case 0x2D:
      return 0x757262746E696170;
    case 0x2E:
      return 0x616C707265706170;
    case 0x2F:
      return 0x616C707265706170;
    case 0x30:
      v4 = 1937072496;
      goto LABEL_61;
    case 0x31:
      return 0x332E6E6F73726570;
    case 0x34:
      v5 = 0x6E6F73726570;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x35:
      return 0x656E6F6870;
    case 0x36:
      return 0x6F642E656E6F6870;
    case 0x37:
      v4 = 1852794992;
LABEL_61:
      v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x2E6500000000;
      goto LABEL_62;
    case 0x39:
      v3 = 2036427888;
      goto LABEL_49;
    case 0x3A:
      return 1937075312;
    case 0x3B:
      return 0xD000000000000013;
    case 0x3C:
      return 0x6C632E65746F7571;
    case 0x3D:
      return 0x706F2E65746F7571;
    case 0x3F:
      return 0x74656B636F72;
    case 0x40:
      v5 = 0x74656B636F72;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x41:
      return 0x697261666173;
    case 0x43:
      return 0xD000000000000013;
    case 0x44:
      return 1918989427;
    case 0x45:
      v3 = 1918989427;
      goto LABEL_49;
    case 0x46:
      v3 = 1886352499;
LABEL_49:
      result = v3 | 0x6C69662E00000000;
      break;
    case 0x47:
      result = 0xD000000000000013;
      break;
    case 0x4B:
      result = 0x672E657261757173;
      break;
    case 0x4D:
      result = 0x6873617274;
      break;
    case 0x4E:
      result = 0x6F65646976;
      break;
    case 0x4F:
      v2 = 0x2E6F65646976;
LABEL_62:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      break;
    case 0x51:
      result = 0x6B72616D78;
      break;
    default:
      return result;
  }

  return result;
}

id static SystemImage.load(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_24F92B098();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  if (v9)
  {
    return v9;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v11 init];
}

id static SystemImage.load(artwork:with:includePrivateImages:)(uint64_t a1, void *a2, char a3)
{
  _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(a1);
  if (!v6)
  {
    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
LABEL_13:
      v13 = a2;
      goto LABEL_14;
    }

    v7 = 3;
  }

  else if (*(a1 + 96))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v9 = [objc_opt_self() configurationWithScale_];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  if (!a2)
  {

    goto LABEL_13;
  }

  v11 = a2;
  v12 = [v10 configurationByApplyingConfiguration_];

  v13 = v12;
LABEL_14:
  v14 = v13;
  v15 = sub_24F92B098();

  v16 = objc_opt_self();
  v17 = &selRef__systemImageNamed_withConfiguration_;
  if ((a3 & 1) == 0)
  {
    v17 = &selRef_systemImageNamed_withConfiguration_;
  }

  v8 = [v16 *v17];

  return v8;
}

uint64_t SystemImage.isPublic.getter()
{
  v1 = *v0;
  v2 = v1 - 65 < 0x11;
  v3 = v1 > 0x3E;
  v4 = (1 << v1) & 0x7FFFFDFF3FFFFFEDLL;
  return !v3 && v4 != 0 || v2;
}

id static SystemImage.load(_:with:)(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = v3 > 0x3E || ((1 << v3) & 0x7FFFFDFF3FFFFFEDLL) == 0;
  if (v4 && v3 - 65 >= 0x11)
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_24F92B098();

    v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];
  }

  else
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_24F92B098();

    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];
  }

  v8 = v7;

  if (v8)
  {
    return v8;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v10 init];
}

id static SystemImage.loadIfExists(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_24F92B098();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  return v9;
}

GameStoreKit::SystemImage_optional __swiftcall SystemImage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 0;
  v6 = 64;
  switch(v3)
  {
    case 0:
      goto LABEL_80;
    case 1:
      v5 = 1;
      goto LABEL_80;
    case 2:
      v5 = 2;
      goto LABEL_80;
    case 3:
      v5 = 3;
      goto LABEL_80;
    case 4:
      v5 = 4;
      goto LABEL_80;
    case 5:
      v5 = 5;
      goto LABEL_80;
    case 6:
      v5 = 6;
      goto LABEL_80;
    case 7:
      v5 = 7;
      goto LABEL_80;
    case 8:
      v5 = 8;
      goto LABEL_80;
    case 9:
      v5 = 9;
      goto LABEL_80;
    case 10:
      v5 = 10;
      goto LABEL_80;
    case 11:
      v5 = 11;
      goto LABEL_80;
    case 12:
      v5 = 12;
      goto LABEL_80;
    case 13:
      v5 = 13;
      goto LABEL_80;
    case 14:
      v5 = 14;
      goto LABEL_80;
    case 15:
      v5 = 15;
      goto LABEL_80;
    case 16:
      v5 = 16;
      goto LABEL_80;
    case 17:
      v5 = 17;
      goto LABEL_80;
    case 18:
      v5 = 18;
      goto LABEL_80;
    case 19:
      v5 = 19;
      goto LABEL_80;
    case 20:
      v5 = 20;
      goto LABEL_80;
    case 21:
      v5 = 21;
      goto LABEL_80;
    case 22:
      v5 = 22;
      goto LABEL_80;
    case 23:
      v5 = 23;
      goto LABEL_80;
    case 24:
      v5 = 24;
      goto LABEL_80;
    case 25:
      v5 = 25;
      goto LABEL_80;
    case 26:
      v5 = 26;
      goto LABEL_80;
    case 27:
      v5 = 27;
      goto LABEL_80;
    case 28:
      v5 = 28;
      goto LABEL_80;
    case 29:
      v5 = 29;
      goto LABEL_80;
    case 30:
      v5 = 30;
      goto LABEL_80;
    case 31:
      v5 = 31;
      goto LABEL_80;
    case 32:
      v5 = 32;
      goto LABEL_80;
    case 33:
      v5 = 33;
      goto LABEL_80;
    case 34:
      v5 = 34;
      goto LABEL_80;
    case 35:
      v5 = 35;
      goto LABEL_80;
    case 36:
      v5 = 36;
      goto LABEL_80;
    case 37:
      v5 = 37;
      goto LABEL_80;
    case 38:
      v5 = 38;
      goto LABEL_80;
    case 39:
      v5 = 39;
      goto LABEL_80;
    case 40:
      v5 = 40;
      goto LABEL_80;
    case 41:
      v5 = 41;
      goto LABEL_80;
    case 42:
      v5 = 42;
      goto LABEL_80;
    case 43:
      v5 = 43;
      goto LABEL_80;
    case 44:
      v5 = 44;
      goto LABEL_80;
    case 45:
      v5 = 45;
      goto LABEL_80;
    case 46:
      v5 = 46;
      goto LABEL_80;
    case 47:
      v5 = 47;
      goto LABEL_80;
    case 48:
      v5 = 48;
      goto LABEL_80;
    case 49:
      v5 = 49;
      goto LABEL_80;
    case 50:
      v5 = 50;
      goto LABEL_80;
    case 51:
      v5 = 51;
      goto LABEL_80;
    case 52:
      v5 = 52;
      goto LABEL_80;
    case 53:
      v5 = 53;
      goto LABEL_80;
    case 54:
      v5 = 54;
      goto LABEL_80;
    case 55:
      v5 = 55;
      goto LABEL_80;
    case 56:
      v5 = 56;
      goto LABEL_80;
    case 57:
      v5 = 57;
      goto LABEL_80;
    case 58:
      v5 = 58;
      goto LABEL_80;
    case 59:
      v5 = 59;
      goto LABEL_80;
    case 60:
      v5 = 60;
      goto LABEL_80;
    case 61:
      v5 = 61;
      goto LABEL_80;
    case 62:
      v5 = 62;
      goto LABEL_80;
    case 63:
      v5 = 63;
LABEL_80:
      v6 = v5;
      break;
    case 64:
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    default:
      v6 = 82;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24F261914()
{
  v0 = SystemImage.rawValue.getter();
  v2 = v1;
  if (v0 == SystemImage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24F2619B0()
{
  sub_24F92D068();
  SystemImage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F261A18()
{
  SystemImage.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24F261A7C()
{
  sub_24F92D068();
  SystemImage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F261AEC@<X0>(uint64_t *a1@<X8>)
{
  result = SystemImage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24E70E058(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_24F91F438();
    if (v10)
    {
      v11 = v9;
      v12 = *(a1 + 24);
      v15[0] = *(a1 + 16);
      v15[1] = v12;
      v13 = Artwork.URLTemplate.isSystemImage.getter();
      (*(v6 + 8))(v8, v5);
      if (v13)
      {
        return v11;
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

unint64_t sub_24F261DA8()
{
  result = qword_27F23CF88;
  if (!qword_27F23CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemImage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAF)
  {
    goto LABEL_17;
  }

  if (a2 + 81 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 81) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 81;
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

      return (*a1 | (v4 << 8)) - 81;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 81;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x52;
  v8 = v6 - 82;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 81 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 81) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAF)
  {
    v4 = 0;
  }

  if (a2 > 0xAE)
  {
    v5 = ((a2 - 175) >> 8) + 1;
    *result = a2 + 81;
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
    *result = a2 + 81;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F261F4C()
{
  result = qword_27F23CF90;
  if (!qword_27F23CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF90);
  }

  return result;
}

JSValue __swiftcall MetricsFieldLintingIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F2620D0()
{
  result = qword_27F23CF98;
  if (!qword_27F23CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF98);
  }

  return result;
}

void sub_24F262170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

UIImage __swiftcall UIImage.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  height = _.height;
  width = _.width;
  [v2 size];
  v6 = CGSize.fitting(_:mode:)(__PAIR128__(*&height, *&width), mode);
  v7 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24F2623C4;
  *(v9 + 24) = v8;
  v14[4] = sub_24F2623F0;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24F262170;
  v14[3] = &block_descriptor_132;
  v10 = _Block_copy(v14);
  v11 = v2;

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F26238C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OfferConfirmationAction.__allocating_init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a4, v14);
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v22 = v33;
    *v21 = v32;
    *(v21 + 16) = v22;
    *(v21 + 32) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v28 + 8))(v10, v29);
    v30 = v23;
    v31 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830);
  sub_24E65E0D4(v13, v18 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v18;
}

uint64_t OfferConfirmationAction.init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v39, &qword_27F235830);
  v25 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

char *OfferConfirmationAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = *v3;
  v79 = sub_24F9285B8();
  v78 = *(v79 - 8);
  v6 = MEMORY[0x28223BE20](v79);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v69 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v71 = &v58 - v11;
  v75 = sub_24F928388();
  v12 = *(v75 - 8);
  v13 = MEMORY[0x28223BE20](v75);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v70 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v26 = type metadata accessor for Action();
  v77 = a1;
  sub_24F928398();
  v76 = a2;
  v27 = v73;
  v28 = static Action.makeInstance(byDeserializing:using:)(v25, a2);
  if (v27)
  {
    (*(v78 + 8))(v76, v79);
    v29 = *(v12 + 8);
    v30 = v75;
    v29(v77, v75);
    v29(v25, v30);
    v31 = v74;
  }

  else
  {
    v32 = v28;
    v62 = v26;
    v63 = v18;
    v64 = v15;
    v65 = v8;
    v33 = *(v12 + 8);
    v67 = 0;
    v68 = v33;
    v34 = v75;
    v73 = v12 + 8;
    v33(v25, v75);
    v66 = OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction;
    *&v74[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction] = v32;
    v35 = v70;
    sub_24F928398();
    v37 = v78 + 16;
    v36 = *(v78 + 16);
    v38 = v71;
    v39 = v79;
    v36(v71, v76, v79);
    type metadata accessor for BlankAction();
    swift_allocObject();
    v59 = *(v12 + 16);
    v59(v21, v35, v34);
    v40 = v69;
    v60 = v36;
    v61 = v37;
    v36(v69, v38, v39);
    v41 = v67;
    v42 = Action.init(deserializing:using:)(v21, v40);
    v31 = v74;
    if (!v41)
    {
      v48 = v42;
      v49 = *(v78 + 8);
      v78 += 8;
      v72 = v49;
      v49(v71, v79);
      v50 = v75;
      v51 = v68;
      v68(v70, v75);
      *&v31[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction] = v48;
      v52 = v63;
      v53 = v77;
      sub_24F928398();
      v54 = v76;
      v55 = static Action.tryToMakeInstance(byDeserializing:using:)(v52, v76);
      v51(v52, v50);
      *&v31[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction] = v55;
      v56 = v64;
      v59(v64, v53, v50);
      v57 = v65;
      v60(v65, v54, v79);
      v31 = Action.init(deserializing:using:)(v56, v57);
      v72(v76, v79);
      v68(v77, v50);
      return v31;
    }

    v43 = *(v78 + 8);
    v44 = v79;
    v43(v76, v79);
    v45 = v75;
    v46 = v68;
    v68(v77, v75);
    v43(v71, v44);
    v46(v70, v45);
  }

  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t sub_24F2631EC()
{
}

uint64_t OfferConfirmationAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t OfferConfirmationAction.__deallocating_deinit()
{
  OfferConfirmationAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferConfirmationAction()
{
  result = qword_27F23CFA0;
  if (!qword_27F23CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F26348C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E635714;

  return (sub_24F263544)(a2, a3);
}

uint64_t sub_24F263544(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v2[23] = swift_task_alloc();
  v6 = sub_24F91F648();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F263774, 0, 0);
}

uint64_t sub_24F263774()
{
  v43 = v0;
  v1 = objc_opt_self();
  *(v0 + 224) = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F006288();
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_24F008BB0(v5);

    if (qword_27F211430 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = [v1 standardUserDefaults];
    v11 = sub_24F006288();

    *(v9 + 4) = v11;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Increased the friend profile page visit count to %ld", v9, 0xCu);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 184);

  sub_24F91F638();
  v17 = [v1 standardUserDefaults];
  v18 = *(v15 + 16);
  v18(v16, v12, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  sub_24F0088C8(v16);

  v18(v13, v12, v14);
  v19 = sub_24F9220B8();
  v20 = sub_24F92BD98();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  if (v21)
  {
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136315138;
    sub_24EC05C80();
    v26 = sub_24F92CD88();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = sub_24E7620D4(v26, v28, &v42);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_24E5DD000, v19, v20, "Last friend profile page visit is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x2530542D0](v41, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
  }

  *(v0 + 232) = v29;
  sub_24EC05C10(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_24F263C14;
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);

    return MEMORY[0x28217F228](v32, v33, v33);
  }

  else
  {
    sub_24EA418B4(v0 + 56);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = [*(v0 + 224) standardUserDefaults];
    v38 = sub_24F006288();

    v34(v35, v36);

    v39 = *(v0 + 8);

    return v39(v38, 0);
  }
}

uint64_t sub_24F263C14()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC05A20;
  }

  else
  {
    v2 = sub_24F263D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F263D28()
{
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D21E18], v0[14]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24F263DF4;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x28217F468](v2, v0 + 2, v4, v5, v3);
}

uint64_t sub_24F263DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC05B0C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v6 = sub_24F263F84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F263F84()
{
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = [*(v0 + 224) standardUserDefaults];
  v5 = sub_24F006288();

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6(v5, 0);
}

uint64_t sub_24F2640C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F264208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SignInMoltresView()
{
  result = qword_27F23CFB0;
  if (!qword_27F23CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F264384()
{
  sub_24F264544();
  if (v0 <= 0x3F)
  {
    sub_24F2645E8(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          sub_24F928818();
          if (v4 <= 0x3F)
          {
            sub_24E6D753C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24F2645E8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24E6D753C(319, &qword_27F22CC10, &unk_27F237670, &unk_24F989C80, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F264544()
{
  if (!qword_27F23CFC0)
  {
    sub_24F26459C();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23CFC0);
    }
  }
}

unint64_t sub_24F26459C()
{
  result = qword_27F23CFC8;
  if (!qword_27F23CFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23CFC8);
  }

  return result;
}

void sub_24F2645E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_24F264654()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E040 = xmmword_24F947C50;
  *algn_27F39E050 = xmmword_24F9DA310;
  *&xmmword_27F39E060 = 0;
  *(&xmmword_27F39E060 + 1) = v0;
  qword_27F39E070 = v2;
  unk_27F39E078 = v3;
  return result;
}

double sub_24F2646A4()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E080 = xmmword_24F947C70;
  *algn_27F39E090 = xmmword_24F9DA310;
  *&xmmword_27F39E0A0 = 0;
  *(&xmmword_27F39E0A0 + 1) = v0;
  qword_27F39E0B0 = v2;
  unk_27F39E0B8 = v3;
  return result;
}

uint64_t sub_24F2646F4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v57 - v3;
  v74 = sub_24F929158();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v57 - v6;
  v7 = type metadata accessor for SignInMoltresView();
  v62 = *(v7 - 8);
  v61 = *(v62 + 64);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFD8);
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - v14;
  v15 = v1[12];
  v65 = v1[11];
  v64 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  sub_24E615E00((v1 + 6), v16 + 32);
  v69 = v8;
  v17 = v1 + *(v8 + 64);
  v18 = *v17;
  v63 = *(v17 + 1);
  LOBYTE(v81) = v18;
  v82 = v63;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v59 = *(&v79 + 1);
  v60 = v79;
  v58 = v80;
  v19 = (v1 + *(v8 + 68));
  v20 = *v19;
  v67 = v19[1];
  v68 = v20;
  v81 = v20;
  v82 = v67;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
  sub_24F926F58();
  v57 = v79;
  v21 = v80;
  *(v13 + 6) = type metadata accessor for ProgressPerformAction();
  *(v13 + 7) = sub_24F26784C(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 3);
  sub_24F928A98();
  v23 = v60;
  *boxed_opaque_existential_1 = v16;
  boxed_opaque_existential_1[1] = v23;
  boxed_opaque_existential_1[2] = v59;
  *(boxed_opaque_existential_1 + 24) = v58;
  *(boxed_opaque_existential_1 + 2) = v57;
  boxed_opaque_existential_1[6] = v21;
  *(v13 + 15) = 0;
  *(v13 + 104) = 0u;
  *(v13 + 88) = 0u;
  LOBYTE(v79) = v18;
  *(&v79 + 1) = v63;
  sub_24F926F38();
  LODWORD(v63) = v81;
  v24 = v1[13];
  v25 = v1;
  sub_24F265868(v1, v10);
  v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v27 = swift_allocObject();
  sub_24F2658D0(v10, v27 + v26);
  sub_24F265868(v25, v10);
  v28 = swift_allocObject();
  sub_24F2658D0(v10, v28 + v26);
  sub_24F265868(v25, v10);
  v29 = swift_allocObject();
  sub_24F2658D0(v10, v29 + v26);
  v30 = v11[34];
  v31 = type metadata accessor for HeaderPresentation(0);
  (*(*(v31 - 8) + 56))(&v13[v30], 1, 1, v31);
  v32 = &v13[v11[37]];
  LOBYTE(v81) = 0;

  sub_24F926F28();
  v33 = *(&v79 + 1);
  *v32 = v79;
  *(v32 + 1) = v33;
  v34 = &v13[v11[38]];
  LOBYTE(v81) = 0;
  sub_24F926F28();
  v35 = *(&v79 + 1);
  *v34 = v79;
  *(v34 + 1) = v35;
  v36 = &v13[v11[39]];
  v81 = 0;
  sub_24F926F28();
  v37 = *(&v79 + 1);
  *v36 = v79;
  *(v36 + 1) = v37;
  v38 = v11[40];
  *&v13[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v39 = v11[41];
  *&v13[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v40 = v11[42];
  *&v13[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v41 = &v13[v11[43]];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = v64;
  *v13 = v65;
  *(v13 + 1) = v44;
  *(v13 + 2) = 0;
  v13[128] = 0;
  *(v13 + 9) = 0;
  *(v13 + 10) = 0;
  *(v13 + 8) = 0;
  v13[129] = v63;
  *(v13 + 17) = v24;
  *(v13 + 9) = xmmword_24F9DA320;
  *(v13 + 20) = sub_24F265934;
  *(v13 + 21) = v27;
  *(v13 + 22) = sub_24F2659B4;
  *(v13 + 23) = v28;
  *(v13 + 24) = sub_24F265CE8;
  *(v13 + 25) = v29;
  *(v13 + 26) = CGSizeMake;
  *(v13 + 27) = 0;
  v13[v11[35]] = 7;
  v13[v11[36]] = 0;
  v78 = v25;
  sub_24F928FD8();
  sub_24E602068(&qword_27F23CFE0, &qword_27F23CFD0);
  v45 = v70;
  sub_24F925EB8();
  sub_24E601704(v13, &qword_27F23CFD0);
  v81 = v68;
  v82 = v67;
  sub_24F926F58();
  v46 = v80;
  v47 = v45 + *(v71 + 36);
  *v47 = v79;
  *(v47 + 16) = v46;
  v48 = *(v69 + 52);
  v49 = sub_24F928818();
  v50 = *(v49 - 8);
  v51 = v72;
  (*(v50 + 16))(v72, v25 + v48, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  v53 = v73;
  v52 = v74;
  sub_24F928F28();
  v54 = sub_24F921B48();
  v55 = v75;
  (*(*(v54 - 8) + 56))(v75, 1, 1, v54);
  sub_24F265D78();
  sub_24F925E58();
  sub_24E601704(v55, &qword_27F2157E8);
  (*(v76 + 8))(v53, v52);
  sub_24E601704(v51, &qword_27F2157F0);
  return sub_24E601704(v45, &qword_27F23CFD8);
}

void *sub_24F265080@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24F265130(a1, __src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v8, __src, 0x121uLL);
  sub_24E60169C(__dst, &v5, &qword_27F23D010);
  sub_24E601704(v8, &qword_27F23D010);
  return memcpy((a2 + 24), __dst, 0x121uLL);
}

uint64_t sub_24F265130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];

  sub_24F266F68(v54);
  v50 = v54[0];
  v51 = v54[1];
  v52 = v54[2];
  v53 = v54[3];
  KeyPath = swift_getKeyPath();
  v58 = 0;
  sub_24F267814(v54, v72);
  v5 = sub_24F925818();
  sub_24F266F68(&v55);
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v58;
  v29 = v58;
  LOBYTE(v72[0]) = 0;
  v15 = a1[3];
  v16 = a1[5];
  v27 = a1[4];
  v28 = a1[2];

  sub_24F266F68(v56);
  v46 = v56[0];
  v47 = v56[1];
  v48 = v56[2];
  v49 = v56[3];
  sub_24F267814(v56, v72);
  v17 = sub_24F925818();
  sub_24F266F68(&v57);
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&v59 = KeyPath;
  BYTE8(v59) = v14;
  *v60 = v3;
  *&v60[8] = v50;
  *&v60[24] = v51;
  *&v60[40] = v52;
  *&v60[56] = v53;
  v60[72] = v5;
  *&v61 = v7;
  *(&v61 + 1) = v9;
  *&v62 = v11;
  *(&v62 + 1) = v13;
  __src[6] = v61;
  __src[7] = v62;
  __src[4] = *&v60[48];
  __src[5] = *&v60[64];
  __src[2] = *&v60[16];
  __src[3] = *&v60[32];
  __src[0] = v59;
  __src[1] = *v60;
  *&v64 = v28;
  *(&v64 + 1) = v15;
  *&v65 = v27;
  *(&v65 + 1) = v16;
  v66 = v46;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  LOBYTE(v70) = v17;
  *(&v70 + 1) = v18;
  *v71 = v20;
  *&v71[8] = v22;
  *&v71[16] = v24;
  v71[24] = 0;
  *(&__src[16] + 1) = *&v71[9];
  *(&__src[9] + 8) = v65;
  v63 = 0;
  LOBYTE(__src[8]) = 0;
  *(&__src[12] + 8) = v48;
  *(&__src[11] + 8) = v47;
  *(&__src[8] + 8) = v64;
  *(&__src[15] + 8) = *v71;
  *(&__src[14] + 8) = v70;
  *(&__src[13] + 8) = v49;
  *(&__src[10] + 8) = v46;
  v44 = 0;
  memcpy(a2, __src, 0x118uLL);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v72[0] = v28;
  v72[1] = v15;
  v72[2] = v27;
  v72[3] = v16;
  v73 = v46;
  v74 = v47;
  v75 = v48;
  v76 = v49;
  v77 = v17;
  v78 = v19;
  v79 = v21;
  v80 = v23;
  v81 = v25;
  v82 = 0;
  sub_24E60169C(&v59, &v31, &qword_27F23D018);
  sub_24E60169C(&v64, &v31, &qword_27F23D020);
  sub_24E601704(v72, &qword_27F23D020);
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v31 = KeyPath;
  v32 = v29;
  v33 = v3;
  v38 = v5;
  v39 = v7;
  v40 = v9;
  v41 = v11;
  v42 = v13;
  v43 = 0;
  return sub_24E601704(&v31, &qword_27F23D018);
}

uint64_t sub_24F265490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);

  sub_24F266F68(v9);
  KeyPath = swift_getKeyPath();
  v10 = 0;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  v5 = v9[1];
  *(a2 + 24) = v9[0];
  *(a2 + 40) = v5;
  v6 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v6;
  return sub_24F267814(v9, v8);
}

uint64_t sub_24F265520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];

  sub_24F266F68(v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  v7 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v7;
  v8 = v11[3];
  *(a2 + 64) = v11[2];
  *(a2 + 80) = v8;
  return sub_24F267814(v11, &v10);
}

uint64_t sub_24F2655A0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  swift_unknownObjectWeakInit();
  v15 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFF8)) init];
  swift_unknownObjectWeakAssign();
  v13[0] = sub_24F928FD8();
  sub_24F929298();
  v8 = *(v2 + 16);
  v8(v7, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D000);
  sub_24E602068(&qword_27F23D008, &qword_27F23D000);
  sub_24F929238();
  v9 = *(v2 + 8);
  v9(v4, v1);
  sub_24E601704(v14, &qword_27F23D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  v8((v11 + v10), v7, v1);
  sub_24F929298();
  v8(v4, (v11 + v10), v1);
  swift_setDeallocating();
  v9((v11 + v10), v1);
  swift_deallocClassInstance();
  sub_24F929228();
  v9(v4, v1);
  return (v9)(v7, v1);
}

uint64_t sub_24F265868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInMoltresView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2658D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInMoltresView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F265934@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInMoltresView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F265080(v4, a1);
}

uint64_t sub_24F2659B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInMoltresView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F265490(v4, a1);
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for SignInMoltresView();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_1((v2 + 6));

  v3 = v1[11];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F265CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInMoltresView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F265520(v4, a1);
}

unint64_t sub_24F265D78()
{
  result = qword_27F23CFE8;
  if (!qword_27F23CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CFD0);
    sub_24F928FD8();
    sub_24E602068(&qword_27F23CFE0, &qword_27F23CFD0);
    swift_getOpaqueTypeConformance2();
    sub_24F265E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CFE8);
  }

  return result;
}

unint64_t sub_24F265E8C()
{
  result = qword_27F23CFF0;
  if (!qword_27F23CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CFF0);
  }

  return result;
}

uint64_t sub_24F265EE0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D028);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D030);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v28[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D038) + 44);
  v32 = *(v1 + 16);
  v30 = v32;
  swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = *(v1 + 80);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  sub_24E60169C(&v32, v31, &unk_27F2285F0);
  sub_24F2679FC(v1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D040);
  sub_24E602068(&qword_27F2181D8, &unk_27F2285F0);
  sub_24F267A34();
  sub_24F927228();
  sub_24F9242E8();
  sub_24E6009C8(v4, v8, &qword_27F23D028);
  v12 = &v8[*(v6 + 44)];
  v13 = v31[5];
  *(v12 + 4) = v31[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v31[6];
  v14 = v31[1];
  *v12 = v31[0];
  *(v12 + 1) = v14;
  v15 = v31[3];
  *(v12 + 2) = v31[2];
  *(v12 + 3) = v15;
  v16 = sub_24F925838();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v29;
  sub_24E6009C8(v8, v29, &qword_27F23D030);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D050);
  v27 = v25 + *(result + 36);
  *v27 = v16;
  *(v27 + 8) = v18;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_24F266230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_24F929888();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24F926E08();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218200);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v30 - v11;
  v12 = sub_24F924848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v33 = *a1;
  v32 = v16;
  static SystemAppIcon.from(iconName:)(v33, v16, &v47);
  v17 = v47;
  if (v47 == 4 || ((v53 = *(a2 + 8), v18 = *a2, v52 = *a2, v53 != 1) ? (v30 = a2, , sub_24F92BDC8(), v31 = v10, v20 = sub_24F9257A8(), v10 = v31, sub_24F921FD8(), v20, sub_24F924838(), swift_getAtKeyPath(), sub_24E601704(&v52, &qword_27F218208), (*(v13 + 8))(v15, v12), a2 = v30, v19 = *v42) : (v19 = v18), v21 = *(a2 + 48), LOBYTE(v42[0]) = v17, !sub_24EFFE798(v42, 0, v21, v21, v19)))
  {
    v28 = 1;
    v27 = v38;
  }

  else
  {
    sub_24F926DE8();
    v22 = v35;
    v23 = v34;
    v24 = v36;
    (*(v35 + 104))(v34, *MEMORY[0x277CE0FE0], v36);
    v25 = sub_24F926E88();
    (*(v22 + 8))(v23, v24);
    sub_24F927618();
    sub_24F9238C8();
    v42[0] = v25;
    v42[1] = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    memset(v41, 0, sizeof(v41));
    memset(v40, 0, sizeof(v40));
    sub_24F9297A8();
    sub_24E601704(v40, &qword_27F2129B0);
    sub_24E601704(v41, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338);
    sub_24E6A6234();
    v26 = v37;
    sub_24F925EE8();

    (*(v6 + 8))(v8, v5);

    v27 = v38;
    (*(v38 + 32))(v39, v26, v10);
    v28 = 0;
  }

  return (*(v27 + 56))(v39, v28, 1, v10);
}

__n128 sub_24F26681C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 5);
  v32 = *(v1 + 4);
  v33 = v6;
  v38 = v32;
  v39 = v6;
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 2);
  v31[0] = v4;
  v31[1] = v7;
  v10 = v7;
  v30 = 0;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v36 = v4;
  v37 = v7;
  *&v34[0] = v13;
  *(&v34[0] + 1) = v14;
  v15 = *(v1 + 5);
  v34[1] = v9;
  v34[2] = v5;
  v34[3] = v8;
  v34[4] = v15;
  v27 = v5;
  v28 = v8;
  v29 = v15;
  v25 = v34[0];
  v26 = v9;
  v35[0] = v13;
  v35[1] = v14;

  sub_24F267814(v31, v24);

  sub_24F267940(v34, v24);
  sub_24F267978(v35);

  v16 = v30;
  sub_24F927628();
  sub_24F9242E8();
  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v16;
  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  v17 = v25;
  *(a1 + 56) = v26;
  v18 = v28;
  *(a1 + 72) = v27;
  *(a1 + 88) = v18;
  *(a1 + 104) = v29;
  *(a1 + 40) = v17;
  v19 = v24[0];
  v20 = v24[1];
  v21 = v24[3];
  *(a1 + 152) = v24[2];
  *(a1 + 136) = v20;
  *(a1 + 120) = v19;
  result = v24[4];
  v23 = v24[5];
  *(a1 + 216) = v24[6];
  *(a1 + 200) = v23;
  *(a1 + 184) = result;
  *(a1 + 168) = v21;
  return result;
}

uint64_t sub_24F2669DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v17 & 1;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0);
  sub_24E601704(&v31, &qword_27F2129B0);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24E601704(v7, &qword_27F215110);
}

uint64_t sub_24F266C9C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[1];
  v30 = *v1;
  v31 = v4;
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  sub_24E600B40(v5, v7, v9 & 1);

  LODWORD(v30) = sub_24F9251C8();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v15;
  v31 = v17;
  v32 = v19 & 1;
  v33 = v21;
  v34 = KeyPath;
  v35 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0);
  sub_24E601704(v29, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v25 + 8))(v3, v27);
  sub_24E600B40(v15, v17, v19 & 1);
}

double sub_24F266F68@<D0>(__int128 *a1@<X8>)
{
  v68 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v60 = type metadata accessor for SignInMoltresView();
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v59 = *MEMORY[0x277CE0560];
  v58 = v25;
  v56 = v3 + 13;
  v25(v20);
  v57 = v3[7];
  v57(v20, 0, 1, v2);
  v61 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v66 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v67, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v65 = v27;
      v53 = v24;
      v29 = v55;
      (v66[4])(v55, &v9[v26], v2);
      sub_24F26784C(&qword_27F215650, MEMORY[0x277CE0570]);
      v30 = v67;
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v66[1])(v67, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20);
    goto LABEL_15;
  }

  v53 = v24;
  v65 = v27;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v65(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v32 = v63;
  sub_24F769764(v63);
  v33 = v62;
  v58(v62, v59, v2);
  v57(v33, 0, 1, v2);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_24E60169C(v32, v64, &qword_27F215598);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598);
  v36 = v65;
  if (v65(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598);
LABEL_20:
      if (qword_27F211028 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39E080;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_24E60169C(v35, v54, &qword_27F215598);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v33;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v55;
  (v66[4])(v55, v47, v2);
  sub_24F26784C(&qword_27F215650, MEMORY[0x277CE0570]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v45, &qword_27F215598);
  sub_24E601704(v32, &qword_27F215598);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F211020 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39E040;
LABEL_18:
  v39 = v38[1];
  v69 = *v38;
  v70 = v39;
  v40 = v38[3];
  v71 = v38[2];
  v72 = v40;
  v41 = v70;
  v42 = v68;
  *v68 = v69;
  v42[1] = v41;
  result = *&v71;
  v44 = v72;
  v42[2] = v71;
  v42[3] = v44;
  return result;
}

uint64_t sub_24F26784C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2679A8()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_24F267A34()
{
  result = qword_27F23D048;
  if (!qword_27F23D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217338);
    sub_24E6A6234();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D048);
  }

  return result;
}

unint64_t sub_24F267B18()
{
  result = qword_27F23D058;
  if (!qword_27F23D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D060);
    sub_24E602068(&qword_27F23D068, &qword_27F23D070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D058);
  }

  return result;
}

unint64_t sub_24F267BD4()
{
  result = qword_27F23D078;
  if (!qword_27F23D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D050);
    sub_24F267C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D078);
  }

  return result;
}

unint64_t sub_24F267C60()
{
  result = qword_27F23D080;
  if (!qword_27F23D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D030);
    sub_24E602068(&qword_27F23D088, &qword_27F23D028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D080);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E11pageMetrics_8pipeline7tracker26clickLocationConfigurationQr0dE004PageG0VSg_AI0G8PipelineVAI18ImpressionsTracker_pSgAD05ClickkL0VSgtFQOyAA15ModifiedContentVyAcDE16actionDispatcher4with15implementationsQrqd___AI06ActionU0Vyqd__GyXEtAI15BaseObjectGraphCRbd__lFQOy12GameStoreKit013GSKOnboardingC0VyAA6VStackVyAA05TupleC0VyAUyA2_6Header33_19D11E5C555F1138A9978CFAF74389B6LLVAA14_PaddingLayoutVG_AUyA2_0sC0A10_LLVA13_GAA6SpacerVtGGA11_A16_AA05EmptyC0VG_A1_Qo_A2_016SignInErrorAlertC8Modifier33_01D15633BC9F85C0F699400E92596DFBLLVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = a1 + qword_27F39DFC0;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_24ED21BB0(v6, v7, v8, v9, v10, v5);

  *(v2 + 16) = v6;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  *(v2 + 48) = v10;
  *(v2 + 56) = v5;
  return v2;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.init(presenter:)(uint64_t a1)
{
  *(v1 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = a1 + qword_27F39DFC0;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_24ED21BB0(v6, v7, v8, v9, v10, v5);

  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = v10;
  *(v1 + 56) = v5;
  return v1;
}

void *sub_24F2680AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24 = *(a1 + 41);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v20 = *a1;
  v21 = *(a1 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  *(a2 + 16) = *a1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v13 = *(a2 + 56);
  *(a2 + 56) = v7;
  v18 = v4;
  v19 = v3;
  sub_24ED21BB0(v20, v3, v4, v5, v6, v7);
  sub_24EF43964(v8, v9, v10, v11, v12, v13);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    v25 = v20;
    v26 = v19;
    v27 = v18;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v17 = *(v15 + 8);
    sub_24ED21BB0(v20, v19, v18, v5, v6, v7);
    v17(&v25, v24, v23, v22, v21, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_24EF43964(v25, v26, v27, v28, v29, v30);
  }

  return result;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.reconfigureArcadeHeaderView(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  return swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall ArcadeTitleEffectCollectionElementsObserver.prepareForReuse()()
{
  swift_beginAccess();
  *(v0 + 72) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.deinit()
{
  sub_24EF43964(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_24E883630(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_27F23D0A0);
  return v0;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__deallocating_deinit()
{
  sub_24EF43964(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_24E883630(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_27F23D0A0);

  return swift_deallocClassInstance();
}

uint64_t _s12GameStoreKit43ArcadeTitleEffectCollectionElementsObserverC15willDisplayCell_2in14collectionView8asPartOfySo012UICollectionoL0C_AA17ItemLayoutContextVSo0sO0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v48 = a1;
  sub_24E8E7C80();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0C0);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v44, v49);
    v15 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
    swift_beginAccess();
    sub_24F268C70(v2 + v15, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E601704(v9, &qword_27F23D0A0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v17 = v50;
      v18 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v18 + 16))(v17, v18);
      sub_24F92AD78();

      (*(v11 + 8))(v13, v10);
    }

    v19 = v50;
    v20 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v20 + 16))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0D0);
    sub_24F268CE0();
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v44);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_24F268D44(v6, v2 + v15);
    swift_endAccess();
    v21 = v50;
    v22 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v22 + 8))(&v44, v21, v22);
    v23 = v47;
    if (v47 == 255)
    {
      v27 = *(v2 + 16);
      v42 = *(v2 + 32);
      v43 = v27;
      v26 = *(v2 + 48);
      v23 = *(v2 + 56);
      sub_24ED21BB0(v27, *(&v27 + 1), v42, *(&v42 + 1), v26, v23);
      v25 = v43;
      v24 = v42;
    }

    else
    {
      v25 = v44;
      v24 = v45;
      v26 = v46;
    }

    v28 = *(v2 + 16);
    v29 = *(v2 + 24);
    v30 = *(v2 + 32);
    v31 = *(v2 + 40);
    v32 = *(v2 + 48);
    *(v2 + 16) = v25;
    *(v2 + 32) = v24;
    *(v2 + 48) = v26;
    v33 = *(v2 + 56);
    *(v2 + 56) = v23;
    sub_24EF43964(v28, v29, v30, v31, v32, v33);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      v36 = *(v2 + 24);
      v37 = *(v2 + 32);
      v38 = *(v2 + 40);
      v39 = *(v2 + 48);
      v40 = *(v2 + 56);
      *&v44 = *(v2 + 16);
      *(&v44 + 1) = v36;
      *&v45 = v37;
      *(&v45 + 1) = v38;
      v46 = v39;
      v47 = v40;
      v41 = *(v34 + 8);
      sub_24ED21BB0(v44, v36, v37, v38, v39, v40);
      v41(&v44, 0, 0, 1, 0, ObjectType, v34);
      swift_unknownObjectRelease();
      sub_24EF43964(v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47);
    }

    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    return sub_24E601704(&v44, &qword_27F23D0C8);
  }
}