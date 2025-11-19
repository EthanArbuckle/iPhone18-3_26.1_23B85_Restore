BOOL sub_24FF4C1E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_24FF62088();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_24FF4C2F8()
{
  result = qword_280B163D0;
  if (!qword_280B163D0)
  {
    type metadata accessor for JsonTokenStream();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B163D0);
  }

  return result;
}

uint64_t sub_24FF4C350()
{
  sub_24FF2BC7C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_24FF2C5C0;
  sub_24FF4CB7C();

  return sub_24FF4801C();
}

uint64_t sub_24FF4C3F0(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B42E0, qword_24FF63700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF4C458(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24FF4C474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_24FF4C4B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24FF4C4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF4C524()
{

  return swift_once();
}

uint64_t sub_24FF4C560(uint64_t a1)
{
  *(a1 + 8) = sub_24FF465D8;
  v2 = *(v1 + 64);
  return 34;
}

uint64_t sub_24FF4C668@<X0>(int a1@<W8>)
{
  *(v2 + 24) = ((v1 + a1) + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v1 + a1) >> 3))));

  return sub_24FF61D78();
}

uint64_t sub_24FF4C6BC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

uint64_t sub_24FF4C78C(uint64_t result)
{
  *(result + 8) = sub_24FF48348;
  v2 = *(v1 + 192);
  v3 = *(v1 + 176);
  return result;
}

uint64_t sub_24FF4C7B4(uint64_t result)
{
  *(result + 8) = sub_24FF4A7B0;
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  return result;
}

uint64_t sub_24FF4C7DC(uint64_t result)
{
  *(result + 8) = sub_24FF455A0;
  v2 = *(v1 + 16);
  return result;
}

uint64_t sub_24FF4C804(uint64_t result)
{
  *(result + 8) = sub_24FF47A6C;
  v2 = *(v1 + 24);
  return result;
}

void sub_24FF4C82C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_24FF4C84C()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF4C8C8()
{

  return sub_24FF62158();
}

uint64_t sub_24FF4C8E4()
{

  return sub_24FF61E48();
}

void sub_24FF4C90C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_24FF4C92C()
{

  return sub_24FF62158();
}

BOOL sub_24FF4C944(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_24FF4CA64()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
}

uint64_t sub_24FF4CA88()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF4CAA0()
{
}

uint64_t sub_24FF4CABC()
{

  return swift_beginAccess();
}

uint64_t sub_24FF4CAD8(float a1)
{
  *v3 = a1;
  *(v2 + 32) = v1;
}

uint64_t sub_24FF4CAF4()
{

  return sub_24FF61E48();
}

void sub_24FF4CB28()
{
  *(v3 + 64) = v0;
  *(v0 + 16) = v2;
  v6 = v0 + 16 * v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v1;
}

void sub_24FF4CBB0()
{
  v3 = *v0;
  v4 = *(v1 + 40);

  JUMPOUT(0x25305C910);
}

uint64_t sub_24FF4CBD0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_24FF4CBF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
}

BOOL sub_24FF4CC08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_24FF4CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_24FF3AFC8(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56);
    v8 = type metadata accessor for FieldStreamingSupport(0);
    v9 = *(*(v8 - 8) + 72);
    sub_24FF5C0FC();
    v10 = a4;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for FieldStreamingSupport(0);
    v10 = a4;
    v11 = 1;
  }

  return sub_24FF24B98(v10, v11, 1, v12);
}

uint64_t sub_24FF4CCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_24FF3B064(a1), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56);
    v7 = type metadata accessor for ObjectStreamingSupport(0);
    v8 = *(*(v7 - 8) + 72);
    sub_24FF5C0FC();
    v9 = a3;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = type metadata accessor for ObjectStreamingSupport(0);
    v9 = a3;
    v10 = 1;
  }

  return sub_24FF24B98(v9, v10, 1, v11);
}

uint64_t sub_24FF4CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_24FF61898();
    sub_24FF26754(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    sub_24FF5F6C4();
    v11 = v6;
  }

  else
  {
    sub_24FF61898();
    sub_24FF5F4D8();
  }

  return sub_24FF24B98(v8, v9, v10, v11);
}

uint64_t sub_24FF4CE74@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v3 = sub_24FF61F68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_24FF4CF18()
{
  sub_24FF277EC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v8);
  v10 = *(v9 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  sub_24FF5F6A8();
  sub_24FF5EB34(v14, v15, v16, &qword_24FF63C20);
  v17 = sub_24FF61EC8();
  v18 = sub_24FF5F81C();
  v20 = sub_24FF24B70(v18, v19, v17);

  if (v20 == 1)
  {
    sub_24FF37EE0(v13, &qword_27F3B4360, &qword_24FF63C20);
  }

  else
  {
    sub_24FF61EB8();
    v21 = *(*(v17 - 8) + 8);
    v22 = sub_24FF5F810();
    v23(v22);
  }

  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v25)
  {
    swift_getObjectType();
    v26 = sub_24FF61E98();
    v28 = v27;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v29 = sub_24FF61D68() + 32;
      sub_24FF5F914();
      v30 = swift_allocObject();
      *(v30 + 16) = v3;
      *(v30 + 24) = v1;

      if (v28 | v26)
      {
        v34[0] = 0;
        v34[1] = 0;
        v31 = v34;
        v34[2] = v26;
        v34[3] = v28;
      }

      else
      {
        v31 = 0;
      }

      v33[1] = 7;
      v33[2] = v31;
      v33[3] = v29;
      sub_24FF5F908();
      swift_task_create();

      sub_24FF37EE0(v5, &qword_27F3B4360, &qword_24FF63C20);

      goto LABEL_14;
    }
  }

  else
  {
    v26 = 0;
    v28 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_24FF37EE0(v5, &qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F914();
  v32 = swift_allocObject();
  *(v32 + 16) = v3;
  *(v32 + 24) = v1;
  if (v28 | v26)
  {
    v34[4] = 0;
    v34[5] = 0;
    v34[6] = v26;
    v34[7] = v28;
  }

  sub_24FF5F908();
  swift_task_create();
LABEL_14:
  sub_24FF277D4();
}

uint64_t sub_24FF4D1C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF4D200()
{
  sub_24FF2BC70();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  sub_24FF3B644(v1, v2, v4);
  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF4D268(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24FF2C5C0;

  return sub_24FF4D1C8(a1, a2);
}

uint64_t StreamingObjectTokenStreamProcessor.__allocating_init()()
{
  v6 = &type metadata for NoOpStreamSanitizer;
  v7 = &off_28628C2B8;
  v0 = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  StreamingObjectTokenStreamProcessor.init(_:)(v5);
  return v3;
}

uint64_t StreamingObjectTokenStreamProcessor.__allocating_init(_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_24FF4C8BC();
  StreamingObjectTokenStreamProcessor.init(_:)(v3);
  return v0;
}

uint64_t StreamingObjectTokenStreamProcessor.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF5F4D8();
  sub_24FF24B98(v3, v4, v5, v6);
  sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF5F4D8();
  sub_24FF24B98(v7, v8, v9, v10);
  v11 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap;
  type metadata accessor for StreamSupport();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = MEMORY[0x277D84F98];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor) = 0;
  sub_24FF5EB34(a1, &v14, &qword_27F3B4390, &unk_24FF63D50);
  if (v15)
  {
    sub_24FF37EE0(a1, &qword_27F3B4390, &unk_24FF63D50);
    sub_24FF23620(&v14, &v16);
  }

  else
  {
    v17 = &type metadata for NoOpStreamSanitizer;
    v18 = &off_28628C2B8;
    sub_24FF37EE0(a1, &qword_27F3B4390, &unk_24FF63D50);
    if (v15)
    {
      sub_24FF37EE0(&v14, &qword_27F3B4390, &unk_24FF63D50);
    }
  }

  sub_24FF23620(&v16, v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_sanitizer);
  return v1;
}

uint64_t sub_24FF4D560()
{
  v0 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24FF25460(&qword_27F3B4398, &qword_24FF63D60);
  swift_allocBox();
  sub_24FF25460(&qword_27F3B43A0, &qword_24FF63D68);
  sub_24FF61ED8();

  sub_24FF61FE8();
  sub_24FF4D980(v7);
  (*(v2 + 8))(v7, v0);
}

uint64_t sub_24FF4D6B8(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_24FF25460(&qword_27F3B4398, &qword_24FF63D60);
  v1[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF4D744, 0, 0);
}

uint64_t sub_24FF4D744()
{
  sub_24FF2BC70();
  v1 = v0[9];
  sub_24FF5F6D0();
  swift_beginAccess();
  v2 = *(MEMORY[0x277D857A0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v3;
  *v3 = v4;
  v3[1] = sub_24FF4D7E8;
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822003F0](v0 + 5, v5);
}

uint64_t sub_24FF4D7E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = v1;
  sub_24FF2BB08();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v0;
  sub_24FF2BACC();
  *v7 = v6;

  swift_endAccess();
  v8 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24FF4D8CC()
{
  **(v0 + 56) = *(v0 + 40);
  sub_24FF321B0();
  return v1();
}

uint64_t sub_24FF4D8F8()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321C0(v0);
  *v1 = v2;
  v3 = sub_24FF5F8A0(v1);

  return sub_24FF4D6B8(v3);
}

uint64_t sub_24FF4D980(uint64_t a1)
{
  v93 = a1;
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C(v2);
  v95 = v3;
  v5 = *(v4 + 64);
  sub_24FF26800();
  v92 = v6;
  MEMORY[0x28223BE20](v7);
  sub_24FF5F938();
  v94 = v8;
  v9 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v9);
  v11 = *(v10 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v12);
  sub_24FF5F938();
  v96 = v13;
  v14 = sub_24FF25460(&qword_27F3B43A8, &qword_24FF63D88);
  sub_24FF5F494(v14);
  v16 = *(v15 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v17);
  sub_24FF5F938();
  v90 = v18;
  v19 = sub_24FF25460(&qword_27F3B43B0, &qword_24FF63D90);
  sub_24FF5F494(v19);
  v21 = *(v20 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  v25 = sub_24FF25460(&qword_27F3B43B8, &qword_24FF63D98);
  sub_24FF2552C(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  v98 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  v33 = sub_24FF2552C(v98);
  v91 = v34;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v33);
  v89 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v97 = &v82 - v38;
  v39 = sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF2552C(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_24FF26800();
  v45 = MEMORY[0x28223BE20](v44);
  if (*(v1 + 16))
  {
    sub_24FF4EC68();
    sub_24FF5F44C();
    swift_allocError();
    *v47 = xmmword_24FF635F0;
    sub_24FF5F488(v47, 3);
    return swift_willThrow();
  }

  else
  {
    v87 = v41;
    v88 = v45;
    v49 = &v82 - v46;
    type metadata accessor for JsonStreamEvent(0);
    v85 = v2;
    (*(v27 + 104))(v32, *MEMORY[0x277D858A0], v25);
    v86 = v49;
    sub_24FF61F38();
    (*(v27 + 8))(v32, v25);
    v50 = v88;
    (*(v41 + 16))(v24, v49, v88);
    sub_24FF5F6C4();
    sub_24FF24B98(v51, v52, v53, v50);
    v54 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream;
    sub_24FF5F6D0();
    swift_beginAccess();
    v55 = v1;
    v84 = v1;
    sub_24FF4DF78(v24, v1 + v54, &qword_27F3B43B0, &qword_24FF63D90);
    swift_endAccess();
    v56 = v90;
    v57 = v91;
    v83 = *(v91 + 16);
    v58 = v97;
    v59 = v98;
    v83(v90, v97, v98);
    sub_24FF5F6C4();
    sub_24FF24B98(v60, v61, v62, v59);
    v63 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStreamContinuation;
    sub_24FF5F6D0();
    swift_beginAccess();
    sub_24FF4DF78(v56, v55 + v63, &qword_27F3B43A8, &qword_24FF63D88);
    swift_endAccess();
    sub_24FF61EC8();
    sub_24FF5F4D8();
    sub_24FF24B98(v64, v65, v66, v67);
    v69 = v94;
    v68 = v95;
    v70 = v85;
    (*(v95 + 16))(v94, v93, v85);
    v71 = v89;
    v83(v89, v58, v98);
    v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v73 = (v92 + *(v57 + 80) + v72) & ~*(v57 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    (*(v68 + 32))(v74 + v72, v69, v70);
    v75 = v74 + v73;
    v76 = v98;
    (*(v57 + 32))(v75, v71, v98);
    v77 = sub_24FF5F60C();
    v80 = sub_24FF4E9D8(v77, v78, v96, v79, v74);
    (*(v57 + 8))(v97, v76);
    (*(v87 + 8))(v86, v88);
    v81 = *(v84 + 16);
    *(v84 + 16) = v80;
  }
}

uint64_t sub_24FF4DF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_24FF5FB5C(a1, a2, a3, a4);
  sub_24FF26754(v5);
  v7 = *(v6 + 40);
  v8 = sub_24FF4259C();
  v9(v8);
  return v4;
}

uint64_t sub_24FF4DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4E0F8, 0, 0);
}

uint64_t sub_24FF4E0F8()
{
  sub_24FF2BC30();
  if (qword_280B15CC8 != -1)
  {
    swift_once();
  }

  v1 = sub_24FF61BC8();
  v0[11] = sub_24FF278EC(v1, qword_280B16948);
  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();
  if (sub_24FF4C944(v3))
  {
    *sub_24FF5F98C() = 0;
    sub_24FF4C868();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_24FF42670();
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[3];

  (*(v10 + 16))(v9, v12, v11);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_24FF4E254;
  v14 = v0[10];

  return sub_24FF44540();
}

uint64_t sub_24FF4E254()
{
  sub_24FF2BC7C();
  v3 = v2;
  sub_24FF2BC88();
  v5 = v4;
  sub_24FF2BB08();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  sub_24FF2BACC();
  *v10 = v9;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF4E360()
{
  sub_24FF2BC30();
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for JsonStreamParser();
  v5 = swift_allocObject();
  v6 = *(v2 + 16);
  v7 = sub_24FF5F648();
  v8(v7);
  v9 = sub_24FF5FB3C(dword_24FF64208);
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_24FF4E444;
  v10 = v0[14];
  v11 = v0[7];

  return v13(v10, v11, v5);
}

uint64_t sub_24FF4E444()
{
  sub_24FF2BC70();
  v2 = v1;
  sub_24FF2BC88();
  v4 = v3;
  sub_24FF2BB08();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v0;
  sub_24FF2BACC();
  *v9 = v8;
  *(v4 + 128) = v2;

  v10 = swift_task_alloc();
  *(v4 + 136) = v10;
  *v10 = v8;
  v10[1] = sub_24FF4E55C;

  return sub_24FF3D988();
}

uint64_t sub_24FF4E55C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 136);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF4E640()
{
  sub_24FF2BC7C();
  v1 = v0[11];
  v2 = sub_24FF61BA8();
  sub_24FF62008();
  sub_24FF5F968();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  if (v4)
  {
    *sub_24FF5F98C() = 0;
    sub_24FF5F298();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_24FF42634();
  }

  v11 = v0[10];
  v12 = v0[7];

  sub_24FF321B0();

  return v13();
}

uint64_t sub_24FF4E708()
{
  sub_24FF2BC30();
  v3 = v1[11];
  MEMORY[0x25305D050](v1[13]);
  v4 = sub_24FF61BA8();
  sub_24FF62018();

  if (os_log_type_enabled(v4, v0))
  {
    v5 = v1[13];
    sub_24FF42770();
    v6 = sub_24FF5F5E0();
    *v2 = 138412290;
    MEMORY[0x25305D050](v5);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v7);
    _os_log_impl(&dword_24FF22000, v4, v0, "Finished streaming task with error %@", v2, 0xCu);
    sub_24FF37EE0(v6, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  v8 = v1[13];
  v10 = v1[4];
  v9 = v1[5];

  v1[2] = v8;
  sub_24FF61F88();
  v11 = v1[10];
  v12 = v1[7];

  sub_24FF321B0();

  return v13();
}

uint64_t sub_24FF4E840()
{
  sub_24FF2BC30();
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2BA9C(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF5F494(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_24FF32090;
  v13 = sub_24FF5FA9C();

  return sub_24FF4DFC4(v13, v10, v11, v14, v15);
}

uint64_t AsyncThrowingStream.Continuation<>.completeWithError(_:)()
{
  MEMORY[0x25305D050]();
  sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  return sub_24FF61F88();
}

uint64_t sub_24FF4E9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_24FF5EB34(a3, v23 - v10, &qword_27F3B4360, &qword_24FF63C20);
  v12 = sub_24FF61EC8();
  v13 = sub_24FF24B70(v11, 1, v12);

  if (v13 == 1)
  {
    sub_24FF37EE0(v11, &qword_27F3B4360, &qword_24FF63C20);
  }

  else
  {
    sub_24FF61EB8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24FF61E98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24FF61D68() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_24FF37EE0(a3, &qword_27F3B4360, &qword_24FF63C20);

      return v21;
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

  sub_24FF37EE0(a3, &qword_27F3B4360, &qword_24FF63C20);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_24FF4EC68()
{
  result = qword_27F3B43C0;
  if (!qword_27F3B43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B43C0);
  }

  return result;
}

void sub_24FF4ECBC()
{
  sub_24FF277EC();
  v1 = v0;
  v2 = sub_24FF25460(&qword_27F3B43B0, &qword_24FF63D90);
  sub_24FF5F494(v2);
  v4 = *(v3 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v5);
  v7 = v54 - v6;
  v8 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF2552C(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v13);
  v14 = sub_24FF25460(&qword_27F3B43A8, &qword_24FF63D88);
  v15 = sub_24FF5F494(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v54 - v21;
  v23 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v23);
  v25 = *(v24 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v26);
  sub_24FF61EC8();
  sub_24FF5F4D8();
  sub_24FF24B98(v27, v28, v29, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v0;

  sub_24FF5F60C();
  sub_24FF4CF18();

  if (*(v0 + 24))
  {
    v32 = *(v0 + 24);

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();

    v33 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  if (*(v0 + 16))
  {
    v34 = *(v0 + 16);

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();
  }

  v35 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStreamContinuation;
  sub_24FF5FA14();
  swift_beginAccess();
  sub_24FF5EB34(v0 + v35, v22, &qword_27F3B43A8, &qword_24FF63D88);
  if (sub_24FF24B70(v22, 1, v8))
  {
    sub_24FF37EE0(v22, &qword_27F3B43A8, &qword_24FF63D88);
  }

  else
  {
    v36 = *(v10 + 16);
    v37 = sub_24FF5F810();
    v38(v37);
    sub_24FF37EE0(v22, &qword_27F3B43A8, &qword_24FF63D88);
    v54[0] = 0;
    sub_24FF61F88();
    v39 = *(v10 + 8);
    v40 = sub_24FF5F648();
    v41(v40);
  }

  sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF5F4D8();
  sub_24FF24B98(v42, v43, v44, v45);
  v46 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream;
  sub_24FF5F6D0();
  swift_beginAccess();
  sub_24FF4DF78(v7, v1 + v46, &qword_27F3B43B0, &qword_24FF63D90);
  swift_endAccess();
  sub_24FF5F4D8();
  sub_24FF24B98(v47, v48, v49, v8);
  sub_24FF5F6D0();
  swift_beginAccess();
  sub_24FF4DF78(v20, v1 + v35, &qword_27F3B43A8, &qword_24FF63D88);
  swift_endAccess();
  v50 = *(v1 + 16);
  *(v1 + 16) = 0;

  v51 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor;
  if (*(v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor))
  {
    v52 = *(v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor);

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();

    v53 = *(v1 + v51);
  }

  *(v1 + v51) = 0;

  sub_24FF277D4();
}

uint64_t sub_24FF4F14C()
{
  sub_24FF2BC70();
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);
  sub_24FF5F8CC();
  v1 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24FF4F1B8()
{
  sub_24FF2BC70();
  v1 = *(v0 + 24);
  sub_24FF5B164(0);

  sub_24FF24BC0();

  return v2();
}

uint64_t sub_24FF4F21C()
{
  sub_24FF2BC7C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_24FF321C0(v4);
  *v5 = v6;
  v7 = sub_24FF5F8A0(v5);

  return sub_24FF4F12C(v7, v1, v2, v3);
}

uint64_t sub_24FF4F2FC()
{
  sub_24FF2BC7C();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 168) = v5;
  *(v1 + 16) = v6;
  v7 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = sub_24FF2BE24();
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF5FADC();
  v10 = sub_24FF61F68();
  *(v1 + 64) = v10;
  sub_24FF2BA9C(v10);
  *(v1 + 72) = v11;
  v13 = *(v12 + 64);
  *(v1 + 80) = sub_24FF2BE24();
  sub_24FF5FADC();
  v14 = sub_24FF61F98();
  *(v1 + 88) = v14;
  sub_24FF2BA9C(v14);
  *(v1 + 96) = v15;
  *(v1 + 104) = *(v16 + 64);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v17 = sub_24FF61B88();
  *(v1 + 128) = v17;
  sub_24FF2BA9C(v17);
  *(v1 + 136) = v18;
  *(v1 + 144) = *(v19 + 64);
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v20 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24FF4F4D4()
{
  if (*(*(v0 + 48) + 24))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    sub_24FF4EC68();
    sub_24FF5F44C();
    swift_allocError();
    *v7 = xmmword_24FF635F0;
    sub_24FF5F488(v7, 3);
    swift_willThrow();

    sub_24FF24BC0();
  }

  else
  {
    v74 = *(v0 + 48);
    v9 = *(v0 + 160);
    v10 = *(v0 + 120);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v71 = *(v0 + 64);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v69 = *(v0 + 168);
    v15 = *(v0 + 16);
    sub_24FF5F920();
    swift_getAssociatedTypeWitness();
    sub_24FF5F944();
    swift_getAssociatedConformanceWitness();
    sub_24FF61B98();
    sub_24FF4CE74(v11);
    sub_24FF61F38();
    (*(v12 + 8))(v11, v71);
    if ((v69 & 1) == 0)
    {
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);
      v18 = *(v0 + 96);
      v19 = *(v0 + 104);
      v20 = *(v0 + 88);
      v22 = *(v0 + 48);
      v21 = *(v0 + 56);
      v23 = *(v0 + 24);
      sub_24FF61EC8();
      v72 = *(v0 + 32);
      sub_24FF5F4D8();
      sub_24FF24B98(v24, v25, v26, v27);
      v28 = *(v18 + 16);
      v29 = sub_24FF5F870();
      v30(v29);
      v31 = (v19 + ((*(v18 + 80) + 56) & ~*(v18 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v72;
      *(v32 + 48) = v23;
      v33 = *(v18 + 32);
      sub_24FF5FA2C();
      v34();
      *(v32 + v31) = v22;

      v35 = sub_24FF5F60C();
      v38 = sub_24FF4E9D8(v35, v36, v21, v37, v32);
      v39 = *(v22 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor);
      *(v22 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor) = v38;
    }

    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 136);
    v44 = *(v0 + 120);
    v43 = *(v0 + 128);
    v45 = *(v0 + 112);
    v64 = v45;
    v66 = *(v0 + 144);
    v47 = *(v0 + 88);
    v46 = *(v0 + 96);
    v70 = v40;
    v73 = *(v0 + 80);
    v68 = *(v0 + 56);
    v67 = *(v0 + 48);
    sub_24FF61EC8();
    v65 = *(v0 + 32);
    sub_24FF5F4D8();
    sub_24FF24B98(v48, v49, v50, v51);
    (*(v42 + 16))(v41, v40, v43);
    (*(v46 + 16))(v45, v44, v47);
    v52 = (*(v42 + 80) + 56) & ~*(v42 + 80);
    v53 = (v66 + *(v46 + 80) + v52) & ~*(v46 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    *(v54 + 32) = v65;
    *(v54 + 48) = v67;
    (*(v42 + 32))(v54 + v52, v41, v43);
    (*(v46 + 32))(v54 + v53, v64, v47);

    v55 = sub_24FF5F60C();
    v58 = sub_24FF4E9D8(v55, v56, v68, v57, v54);
    v59 = *(v46 + 8);
    v60 = sub_24FF5FA44();
    v61(v60);
    (*(v42 + 8))(v70, v43);
    v62 = *(v74 + 24);
    *(v74 + 24) = v58;

    sub_24FF321B0();
  }

  return v8();
}

uint64_t sub_24FF4F94C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a1;
  v8 = *(*(sub_24FF25460(&qword_27F3B4438, &qword_24FF64180) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v9 = sub_24FF618F8();
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  *(v7 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v12 = sub_24FF620C8();
  *(v7 + 88) = v12;
  v13 = *(v12 - 8);
  *(v7 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4FAA8, 0, 0);
}

uint64_t sub_24FF4FAA8()
{
  sub_24FF2BC7C();
  v1 = v0[13];
  v2 = v0[3];
  sub_24FF62258();
  sub_24FF621A8();
  v3 = sub_24FF5FB3C(&unk_24FF64188);
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_24FF4FB68;
  v4 = v0[13];
  sub_24FF32440();
  sub_24FF5FA14();

  return v6();
}

uint64_t sub_24FF4FB68()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v9 + 120) = v0;

  v10 = *(v5 + 8);
  v11 = sub_24FF32440();
  v12(v11);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24FF4FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v13 = v12[13];
  v15 = v12[9];
  v14 = v12[10];
  v16 = v12[7];
  v17 = v12[8];
  v18 = v12[5];
  v19 = v12[6];
  v20 = v12[4];
  sub_24FF61858();
  sub_24FF5F4D8();
  sub_24FF24B98(v21, v22, v23, v24);
  sub_24FF618E8();
  (*(v15 + 104))(v14, *MEMORY[0x277D0DAF0], v17);
  sub_24FF61918();
  sub_24FF5E51C(&qword_27F3B4440, MEMORY[0x277D0DBB0]);
  sub_24FF5F44C();
  v25 = swift_allocError();
  sub_24FF61908();
  (*(v15 + 8))(v14, v17);
  v12[2] = v25;
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF61F98();
  sub_24FF61F88();
  sub_24FF4ECBC();

  sub_24FF321B0();
  sub_24FF2BCF4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_24FF4FE50()
{
  sub_24FF2BC70();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  sub_24FF24BC0();
  v5 = v0[15];

  return v4();
}

uint64_t sub_24FF4FEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v10 = sub_24FF25460(&qword_27F3B4448, &qword_24FF64190);
  v8[38] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v12 = type metadata accessor for JsonFieldValueEvent(0);
  v8[40] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v14 = type metadata accessor for JsonObjectFieldContainer();
  v8[45] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v16 = sub_24FF25460(&qword_27F3B4450, &qword_24FF64198);
  v8[48] = v16;
  v17 = *(v16 - 8);
  v8[49] = v17;
  v18 = *(v17 + 64) + 15;
  v8[50] = swift_task_alloc();
  v19 = *(*(sub_24FF25460(&qword_27F3B43C8, &qword_24FF63DF8) - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v20 = type metadata accessor for FieldStreamingSupport(0);
  v8[53] = v20;
  v21 = *(v20 - 8);
  v8[54] = v21;
  v22 = *(v21 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v23 = *(*(sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00) - 8) + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v24 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  v8[62] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v26 = *(*(a7 - 8) + 64) + 15;
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v27 = sub_24FF61F48();
  v8[77] = v27;
  v28 = *(v27 - 8);
  v8[78] = v28;
  v29 = *(v28 + 64) + 15;
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v30 = type metadata accessor for ObjectStreamingSupport(0);
  v8[81] = v30;
  v31 = *(v30 - 8);
  v8[82] = v31;
  v32 = *(v31 + 64) + 15;
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v33 = sub_24FF61898();
  v8[95] = v33;
  v34 = *(v33 - 8);
  v8[96] = v34;
  v35 = *(v34 + 64) + 15;
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v8[107] = swift_task_alloc();
  v8[108] = swift_task_alloc();
  v8[109] = swift_task_alloc();
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v8[113] = swift_task_alloc();
  v8[114] = swift_task_alloc();
  v8[115] = swift_task_alloc();
  v8[116] = swift_task_alloc();
  v8[117] = swift_task_alloc();
  v8[118] = swift_task_alloc();
  v8[119] = swift_task_alloc();
  v8[120] = swift_task_alloc();
  v36 = type metadata accessor for JsonStreamEvent(0);
  v8[121] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  v8[125] = swift_task_alloc();
  v38 = *(*(sub_24FF25460(&qword_27F3B4458, &qword_24FF641A8) - 8) + 64) + 15;
  v8[126] = swift_task_alloc();
  v39 = sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  v8[127] = v39;
  v40 = *(v39 - 8);
  v8[128] = v40;
  v41 = *(v40 + 64) + 15;
  v8[129] = swift_task_alloc();
  v42 = sub_24FF25460(&qword_27F3B4460, &qword_24FF641B0);
  v8[130] = v42;
  v43 = *(v42 - 8);
  v8[131] = v43;
  v44 = *(v43 + 64) + 15;
  v8[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF506A0, 0, 0);
}

uint64_t sub_24FF506A0()
{
  sub_24FF2BC30();
  v1 = v0[132];
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  v5 = MEMORY[0x277D84F90];
  v6 = v0[33];
  v7 = MEMORY[0x277D84FA0];
  v0[24] = MEMORY[0x277D84F90];
  v0[25] = v7;
  v0[26] = v5;
  sub_24FF571FC(v2);
  sub_24FF61ED8();
  v8 = *(v3 + 8);
  v9 = sub_24FF427BC();
  v10(v9);
  v0[133] = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_sanitizer;
  v0[134] = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap;
  v11 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[135] = v12;
  *v12 = v13;
  v14 = sub_24FF5F0D4(v12);

  return MEMORY[0x2822005A8](v14);
}

uint64_t sub_24FF50790()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 1080);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 200);

    v10 = *(v3 + 208);
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF50894()
{
  v1560 = v0;
  v4 = v0;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 968);
  v7 = sub_24FF5F81C();
  v10 = 0x280B15000uLL;
  v1521 = v4;
  if (sub_24FF24B70(v7, v8, v9) == 1)
  {
    (*(*(v4 + 1048) + 8))(*(v4 + 1056), *(v4 + 1040));
    v11 = *(v4 + 200);

    v12 = *(v4 + 208);

    v13 = *(v4 + 192);
    if (!*(v13 + 16))
    {
      *(v4 + 1264) = *(*(v4 + 264) + *(v4 + 1072));
LABEL_157:

      sub_24FF5F288();
      sub_24FF5FB04();

      return MEMORY[0x2822009F8](v1102, v1103, v1104);
    }

    if (qword_280B15CC0 != -1)
    {
      sub_24FF5F0B4();
    }

    v14 = sub_24FF61BC8();
    sub_24FF278EC(v14, qword_280B16930);
    v15 = sub_24FF61BA8();
    v16 = sub_24FF62018();
    if (os_log_type_enabled(v15, v16))
    {
      sub_24FF42770();
      sub_24FF5F6F4();
      *v2 = 136315138;
      v17 = *(v13 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        v1364 = v16;
        v1400 = v2;
        v1436 = v15;
        v19 = v1521[96];
        v1558 = MEMORY[0x277D84F90];

        sub_24FF5CA04(0, v17, 0);
        v18 = v1558;
        v20 = v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v21 = *(v19 + 72);
        v22 = *(v19 + 16);
        do
        {
          v23 = v1521[96];
          v22(v1521[107], v20, v1521[95]);
          v24 = sub_24FF61868();
          v26 = v25;
          v27 = *(v23 + 8);
          v28 = sub_24FF5F688();
          v29(v28);
          v1558 = v18;
          v31 = *(v18 + 16);
          v30 = *(v18 + 24);
          if (v31 >= v30 >> 1)
          {
            v33 = sub_24FF5F8F0(v30);
            sub_24FF5CA04(v33, v31 + 1, 1);
            v18 = v1558;
          }

          *(v18 + 16) = v31 + 1;
          v32 = v18 + 16 * v31;
          *(v32 + 32) = v24;
          *(v32 + 40) = v26;
          v20 += v21;
          --v17;
        }

        while (v17);

        v10 = 0x280B15000;
        v2 = v1400;
        v15 = v1436;
        v16 = v1364;
      }

      v4 = v1521;
      v1521[29] = v18;
      v82 = sub_24FF5F648();
      sub_24FF25460(v82, v83);
      sub_24FF5E61C(&qword_27F3B4470, &qword_27F3B4468, &qword_24FF641B8);
      sub_24FF61D28();

      v84 = sub_24FF5F648();
      v87 = sub_24FF5BBE0(v84, v85, v86);

      *(v2 + 4) = v87;
      _os_log_impl(&dword_24FF22000, v15, v16, "An object remained incomplete in the stack, object_id=%s", v2, 0xCu);
      sub_24FF5F654();
      sub_24FF4C84C();
    }

    sub_24FF4EC68();
    sub_24FF5F44C();
    v38 = swift_allocError();
    *v88 = xmmword_24FF63610;
    sub_24FF5F488(v88, 3);
    swift_willThrow();
LABEL_152:
    *(v4 + 1272) = v38;
    if (*(v10 + 3264) != -1)
    {
      sub_24FF5F0B4();
    }

    v1090 = sub_24FF61BC8();
    sub_24FF278EC(v1090, qword_280B16930);
    v1091 = sub_24FF4C8BC();
    MEMORY[0x25305D050](v1091);
    v1092 = sub_24FF61BA8();
    sub_24FF62018();
    sub_24FF5F9BC();
    if (sub_24FF4CC08())
    {
      sub_24FF42770();
      v1093 = sub_24FF5F5E0();
      sub_24FF5F9A4(5.7779e-34);
      v1094 = _swift_stdlib_bridgeErrorToNSError();
      sub_24FF5F834(v1094);
      sub_24FF5F298();
      _os_log_impl(v1095, v1096, v1097, v1098, v1099, 0xCu);
      sub_24FF37EE0(v1093, &qword_27F3B42E0, qword_24FF63700);
      sub_24FF4C84C();
      sub_24FF42634();
    }

    v1100 = *(v4 + 1072);
    v1101 = *(v4 + 264);

    *(v4 + 1280) = *(v1101 + v1100);
    MEMORY[0x25305D050](v38);
    goto LABEL_157;
  }

  v34 = *(v4 + 1000);
  sub_24FF57D68();
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v35 = *(v4 + 1000);
  v36 = *(v4 + 992);
  v37 = sub_24FF61BC8();
  v38 = sub_24FF278EC(v37, qword_280B16930);
  sub_24FF5F140();
  sub_24FF5F648();
  sub_24FF5C0FC();
  v39 = sub_24FF61BA8();
  sub_24FF62008();
  sub_24FF5F968();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v4 + 992);
  if (v41)
  {
    v3 = *(v4 + 984);
    v4 = *(v4 + 968);
    v1 = sub_24FF42770();
    v43 = sub_24FF4CA88();
    v1558 = v43;
    *v1 = 136315138;
    sub_24FF5F140();
    sub_24FF5F61C();
    sub_24FF5C0FC();
    sub_24FF5F628();
    sub_24FF61D48();
    sub_24FF5FA7C();
    sub_24FF5F03C();
    sub_24FF58FDC(v42, v44);
    v45 = sub_24FF5F628();
    v42 = sub_24FF5BBE0(v45, v46, v47);
    sub_24FF5F54C();

    *(v1 + 4) = v42;
    sub_24FF5F298();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    sub_24FF25A6C(v43);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  else
  {

    sub_24FF5F03C();
    sub_24FF58FDC(v42, v53);
  }

  v54 = *(v4 + 1000);
  v55 = *(v4 + 976);
  v56 = *(v4 + 968);
  sub_24FF5F140();
  sub_24FF5C0FC();
  sub_24FF5F648();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = *(v4 + 976);
  v59 = *(v4 + 768);
  v60 = *(v4 + 760);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v238 = *(v4 + 928);
      v163 = *(v4 + 584);
      v165 = *(v59 + 32);
      sub_24FF5F6A8();
      v165();
      sub_24FF55C78(v163);
      sub_24FF5F598(v163);
      if (v383)
      {
        sub_24FF5F474();
        v239 = *(v4 + 928);
        v168 = *(v4 + 768);
        v240 = *(v4 + 760);
        v38 = *(v4 + 584);
        v241 = *(v4 + 200);

        v242 = *(v4 + 208);

        sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v175 = v243 + 29;
        goto LABEL_48;
      }

      v343 = *(v4 + 928);
      (v165)(*(v4 + 920), *(v4 + 584), *(v4 + 760));
      sub_24FF5F8FC();
      v344 = sub_24FF61878();
      if ((v344 & 1) == 0)
      {
        sub_24FF5F17C();
        v751 = *(v4 + 928);
        v752 = *(v4 + 920);
        goto LABEL_135;
      }

      v345 = *(v4 + 648);
      v1 = *(v4 + 488);
      sub_24FF55E4C(v1);
      sub_24FF5F6DC(v1, 1, v345);
      if (v383)
      {
        sub_24FF5F17C();
        v346 = *(v4 + 928);
        v347 = *(v4 + 920);
        v348 = *(v4 + 768);
        sub_24FF5F220(v349, v350, v351, v352, v353, v354, v355, v356, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v358 = *(v357 + 488);
        v367 = sub_24FF5F71C(v359, v360, v361, v362, v363, v364, v365, v366, v1248, v1277, v1307, v1338, v1371, v1407, v1445, v1488, v1529);
        sub_24FF5F7DC(v367, v368, v369, v370, v371, v372, v373, v374, v1249, v1278, v1308, v1339, v1372, v1408, v1446, v1489, v1530);
        sub_24FF37EE0(v358, &qword_27F3B43D0, &qword_24FF63E00);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1558 = v376 + 3;
        v1559 = v375;
        sub_24FF5F054();
        sub_24FF5E51C(v377, v378);
        sub_24FF62148();
        sub_24FF5F974();

        v379 = v1559;
        sub_24FF4EC68();
        sub_24FF5F44C();
        v38 = swift_allocError();
        *v380 = v1558;
        *(v380 + 8) = v379;
        *(v380 + 16) = 1;
        goto LABEL_137;
      }

      v940 = *(v4 + 928);
      v941 = *(v4 + 912);
      v942 = *(v4 + 768);
      v943 = *(v4 + 760);
      v944 = *(v4 + 728);
      v945 = *(v4 + 488);
      sub_24FF5F128();
      sub_24FF57D68();
      v946 = *(v942 + 16);
      v947 = sub_24FF5F8FC();
      v948(v947);
      v949 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F968();
      v951 = os_log_type_enabled(v949, v950);
      v952 = *(v4 + 912);
      v953 = *(v4 + 768);
      v954 = *(v4 + 760);
      if (v951)
      {
        v955 = sub_24FF42770();
        v956 = sub_24FF4CA88();
        v1558 = v956;
        *v955 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v957, v958);
        sub_24FF62148();
        sub_24FF5FA7C();
        v959 = *(v953 + 8);
        v960 = sub_24FF5F740();
        v959(v960);
        v961 = sub_24FF5F628();
        v964 = sub_24FF5BBE0(v961, v962, v963);
        sub_24FF5F54C();

        *(v955 + 4) = v964;
        sub_24FF5F4E4();
        _os_log_impl(v965, v966, v967, v968, v969, 0xCu);
        sub_24FF25A6C(v956);
        sub_24FF4C84C();
        sub_24FF42634();
      }

      else
      {

        v959 = *(v953 + 8);
        v1115 = sub_24FF5F740();
        v959(v1115);
      }

      v308 = *(v4 + 1000);
      v1116 = *(v4 + 928);
      v1117 = *(v4 + 920);
      v1118 = *(v4 + 760);
      v1119 = *(v4 + 728);
      v1120 = *(v4 + 768) + 8;
      sub_24FF55FF4(0);
      sub_24FF5F084();
      sub_24FF58FDC(v1119, v1121);
      v1122 = sub_24FF5F734();
      v959(v1122);
      (v959)(v1116, v1118);
      goto LABEL_168;
    case 2:
      v109 = *(v4 + 904);
      v110 = (v58 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
      v112 = *v110;
      v111 = v110[1];
      v113 = *(v59 + 32);
      sub_24FF5F6A8();
      v115 = v114();
      v123 = *(v4 + 192);
      *(v4 + 1144) = v123;
      if (!*(v123 + 16))
      {
        v538 = *(v4 + 1056);
        v539 = v1521[131];
        v540 = v1521[130];
        v541 = v1521[125];
        v542 = v1521[113];
        v543 = v1521[96];
        sub_24FF5F4C8(v115, v116, v117, v118, v119, v120, v121, v122, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v38 = *(v544 + 576);
        sub_24FF5F4D8();
        v548 = sub_24FF24B98(v545, v546, v547, v3);
        sub_24FF5F71C(v548, v549, v550, v551, v552, v553, v554, v555, v1256, v1285, v1315, v1348, v1381, v1417, v1457, v1499, v1538);

        v556 = sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v556, v557, v558, v559, v560, v561, v562, v563, v1257, v1286, v1316, v1349, v1382, v1418, v1458, v1500, v1539);
        sub_24FF4EC68();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v564 = v565;
        *(v564 + 8) = 0x800000024FF67A50;
        *(v564 + 16) = 1;
        swift_willThrow();
        v566 = *(v543 + 8);
        v567 = sub_24FF5F61C();
        v568(v567);
        sub_24FF5F03C();
        sub_24FF58FDC(v541, v569);
        v570 = *(v539 + 8);
        v571 = sub_24FF5F688();
        v572(v571);
        v4 = v1540;
        goto LABEL_151;
      }

      v1440 = v112;
      v1482 = v123;
      v124 = *(v4 + 904);
      v125 = *(v4 + 896);
      v126 = *(v4 + 768);
      v127 = *(v4 + 760);
      v128 = *(v4 + 576);
      v131 = *(v126 + 16);
      v129 = v126 + 16;
      v130 = v131;
      *(v4 + 116) = *(v129 + 64);
      sub_24FF5F76C();
      v1302 = v132;
      v134 = *(v129 + 56);
      *(v4 + 1152) = v134;
      v1333 = v134;
      *(v4 + 1160) = v131;
      *(v4 + 1168) = v129 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (v131)(v128, v133 + v132 + v134 * v135, v127);
      sub_24FF5F6C4();
      sub_24FF24B98(v136, v137, v138, v127);
      sub_24FF37EE0(v128, &qword_27F3B42C8, &qword_24FF641A0);
      (v131)(v125, v124, v127);

      v139 = sub_24FF61BA8();
      v140 = sub_24FF62008();

      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v4 + 896);
      v143 = *(v4 + 768);
      v144 = *(v4 + 760);
      v1366 = v131;
      v1402 = v129;
      if (v141)
      {
        v4 = sub_24FF5FBCC();
        v1271 = sub_24FF5FBB4();
        v1558 = v1271;
        *v4 = 136315394;
        v129 = v111;
        v145 = sub_24FF61868();
        v130 = v146;
        v147 = *(v143 + 8);
        v148 = sub_24FF5F688();
        v150 = v149;
        (v149)(v148);
        v151 = v145;
        v111 = v129;
        v152 = sub_24FF5BBE0(v151, v130, &v1558);

        *(v4 + 4) = v152;
        *(v4 + 12) = 2080;

        v153 = sub_24FF5BBE0(v1440, v129, &v1558);

        *(v4 + 14) = v153;
        _os_log_impl(&dword_24FF22000, v139, v140, "Starting a child object with object id=%s for field=%s", v4, 0x16u);
        swift_arrayDestroy();
        sub_24FF42670();
        sub_24FF5F54C();
        sub_24FF42670();
      }

      else
      {

        v646 = *(v143 + 8);
        v647 = sub_24FF5F688();
        v150 = v648;
        v154 = (v648)(v647);
      }

      *(v4 + 1176) = v150;
      v649 = *(v4 + 208);
      *(v4 + 1184) = v649;
      if (!*(v649 + 16))
      {
        if (*(v1482 + 16) != 1)
        {
          v1516 = *(v4 + 1056);
          v1051 = *(v4 + 1048);
          v1052 = *(v4 + 1040);
          v1053 = *(v4 + 1000);
          v1054 = *(v4 + 904);
          v1055 = *(v4 + 768);
          v1056 = v1521[95];
          sub_24FF5F71C(v154, v155, v156, v157, v158, v159, v160, v161, v1242, v1271, v1302, v1333, v1366, v1402, v1440, v1516, v1521);

          sub_24FF5F840();
          sub_24FF5F44C();
          swift_allocError();
          sub_24FF5F1B8();
          *v1057 = v1058;
          v1057[1] = v111;
          sub_24FF426C0(v1059, v1057);
          v1060 = sub_24FF5F628();
          v4 = v1556;
          (v150)(v1060);
          sub_24FF5F03C();
          sub_24FF58FDC(v1053, v1061);
          (*(v1051 + 8))(v1517);
          goto LABEL_151;
        }

        v824 = sub_24FF61BA8();
        v825 = sub_24FF62008();
        if (sub_24FF4C944(v825))
        {
          *sub_24FF5F98C() = 0;
          sub_24FF4C868();
          _os_log_impl(v826, v827, v828, v829, v830, 2u);
          sub_24FF42670();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1234 = *(v1482 + 16);
          v1235 = sub_24FF4C6AC();
          v1482 = sub_24FF4B31C(v1235, v1236, v1237, v1238);
        }

        v831 = v1482;
        v833 = *(v1482 + 16);
        v832 = *(v1482 + 24);
        if (v833 >= v832 >> 1)
        {
          v1239 = sub_24FF5F8F0(v832);
          v831 = sub_24FF4B31C(v1239, v833 + 1, 1, v1240);
        }

        v1547 = *(v4 + 1072);
        v834 = *(v4 + 904);
        v835 = *(v4 + 760);
        v836 = *(v4 + 720);
        v837 = v4;
        v838 = *(v4 + 648);
        v840 = v837[33];
        v839 = v837[34];
        *(v831 + 16) = v833 + 1;
        v841 = v831;
        v1366(v831 + v1302 + v833 * v1333, v834, v835);
        v837[24] = v841;
        sub_24FF61B58();
        sub_24FF5694C();
        v843 = v842;

        v1366(v836, v834, v835);
        *(v836 + *(v838 + 20)) = v843;
        v837[149] = *(v840 + v1547);
        goto LABEL_157;
      }

      v650 = *(v4 + 704);
      v651 = *(v4 + 656);
      v652 = *(v4 + 272);
      *(v4 + 140) = *(v651 + 80);
      *(v4 + 1224) = *(v651 + 72);
      sub_24FF5F158();

      v653 = sub_24FF5F828();
      v38 = sub_24FF24BCC(v653, v654);

      if (v38)
      {
        v655 = *(*(v4 + 704) + *(*(v4 + 648) + 20));
        if (*(v655 + 16))
        {

          v656 = sub_24FF5F828();
          sub_24FF3AFC8(v656, v657);
          if (v658)
          {
            v659 = *(v4 + 416);
            v660 = *(v655 + 56);
            v661 = *(*(v4 + 432) + 72);
            sub_24FF5F248();
            sub_24FF5C0FC();
          }

          v1071 = *(v4 + 416);
          v1070 = *(v4 + 424);
          sub_24FF5F558();
          sub_24FF24B98(v1072, v1073, v1074, v1075);

          sub_24FF5F6DC(v1071, 1, v1070);
          if (!v383)
          {
            v1106 = *(v4 + 1072);
            v1107 = *(v4 + 904);
            v1108 = *(v4 + 760);
            v1109 = *(v4 + 696);
            v1110 = *(v4 + 648);
            v1111 = *(v4 + 464);
            v1112 = *(v4 + 416);
            v1113 = v4;
            v1114 = *(v4 + 264);

            sub_24FF5F110();
            sub_24FF57D68();
            v1366(v1109, v1107, v1108);
            sub_24FF5694C();
            sub_24FF4C8BC();

            *(v1109 + *(v1110 + 20)) = v1107;
            *(v1113 + 1232) = *(v1114 + v1106);
            goto LABEL_157;
          }
        }

        else
        {
          v1064 = *(v4 + 416);
          v1065 = *(v4 + 424);
          sub_24FF5F4D8();
          sub_24FF24B98(v1066, v1067, v1068, v1069);
        }

        sub_24FF5F564();
        v1076 = *(v4 + 416);
        sub_24FF5F71C(v1077, v1078, v1079, v1080, v1081, v1082, v1083, v1084, v1242, v1271, v1302, v1333, v1366, v1402, v1440, v1482, v1521);

        sub_24FF37EE0(v1076, &qword_27F3B43C8, &qword_24FF63DF8);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v922 = v1085 + 4;
      }

      else
      {
        sub_24FF5F564();
        sub_24FF5F71C(v912, v913, v914, v915, v916, v917, v918, v919, v1242, v1271, v1302, v1333, v1366, v1402, v1440, v1482, v1521);

        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v922 = v921 + 1;
      }

      v1558 = v922;
      v1559 = v920;
      v1086 = sub_24FF5F828();
      MEMORY[0x25305C910](v1086);

      sub_24FF4EC68();
      sub_24FF5F44C();
      v1087 = swift_allocError();
      sub_24FF5F274(v1087, v1088);
      swift_willThrow();
      v130(v129, v140);
      v4 = v1551;
      sub_24FF5F03C();
      sub_24FF58FDC(v1391, v1089);
      v150[1](v1469, v1427);
      v939 = type metadata accessor for ObjectStreamingSupport;
      goto LABEL_149;
    case 3:
      v162 = *(v4 + 880);
      v163 = *(v4 + 568);
      v164 = *(v58 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48) + 8);

      v165 = *(v59 + 32);
      v166 = sub_24FF4259C();
      (v165)(v166);
      sub_24FF55C78(v163);
      sub_24FF5F598(v163);
      if (v383)
      {
        sub_24FF5F474();
        v167 = *(v4 + 880);
        v168 = *(v4 + 768);
        v169 = *(v4 + 760);
        v38 = *(v4 + 568);
        v170 = *(v4 + 200);

        v171 = *(v4 + 208);

        sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v175 = v174 + 25;
        goto LABEL_48;
      }

      v306 = *(v4 + 880);
      v38 = *(v4 + 872);
      (v165)(v38, *(v4 + 568), *(v4 + 760));
      sub_24FF4259C();
      v307 = sub_24FF61878();
      if ((v307 & 1) == 0)
      {
        sub_24FF5F474();
        v716 = *(v4 + 880);
        v717 = *(v4 + 872);
        v718 = *(v4 + 768);
        sub_24FF5F220(v719, v720, v721, v722, v723, v724, v725, v726, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v728 = *(v727 + 200);

        sub_24FF5F7DC(v729, v730, v731, v732, v733, v734, v735, v736, v1260, v1289, v1319, v1352, v1386, v1422, v1464, v1504, v1543);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v738 = v737 - 18;
        v738[1] = v163;
        sub_24FF426C0(v739, v738);
        v740 = *(v718 + 8);
        v741 = sub_24FF5F628();
        v740(v741);
        v742 = sub_24FF5FA38();
        v4 = v1544;
        v740(v742);
        goto LABEL_49;
      }

      if (*(*(v4 + 208) + 16) == 1 && *(*(v4 + 192) + 16) == 1)
      {
        v308 = *(v4 + 648);
        v381 = *(v4 + 480);
        sub_24FF55E4C(v381);
        v309 = sub_24FF5F710();
        sub_24FF5F6DC(v309, v310, v308);
        if (v383)
        {
          v311 = *(v4 + 1056);
          v312 = *(v4 + 1048);
          sub_24FF5F694();
          v313 = *(v4 + 768);
          sub_24FF5F220(v314, v315, v316, v317, v318, v319, v320, v321, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
          v38 = *(v322 + 480);
          v331 = sub_24FF5F71C(v323, v324, v325, v326, v327, v328, v329, v330, v1246, v1275, v1305, v1336, v1369, v1405, v1443, v1486, v1526);
          sub_24FF5F7DC(v331, v332, v333, v334, v335, v336, v337, v338, v1247, v1276, v1306, v1337, v1370, v1406, v1444, v1487, v1527);
          sub_24FF37EE0(v38, &qword_27F3B43D0, &qword_24FF63E00);
          sub_24FF5F840();
          sub_24FF5F44C();
          swift_allocError();
          sub_24FF5F1B8();
          v342 = v341 + 5;
          goto LABEL_117;
        }

        sub_24FF5F950();
        v1184 = *(v4 + 680);
        v1185 = *(v4 + 480);
      }

      else
      {
        v308 = *(v4 + 648);
        v381 = *(v4 + 472);
        sub_24FF55E4C(v381);
        v844 = sub_24FF5F710();
        sub_24FF5F6DC(v844, v845, v308);
        if (v383)
        {
          v846 = *(v4 + 1056);
          v312 = *(v4 + 1048);
          sub_24FF5F694();
          v313 = *(v4 + 768);
          sub_24FF5F220(v847, v848, v849, v850, v851, v852, v853, v854, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
          v38 = *(v855 + 472);
          v864 = sub_24FF5F71C(v856, v857, v858, v859, v860, v861, v862, v863, v1262, v1291, v1321, v1354, v1388, v1425, v1467, v1507, v1548);
          sub_24FF5F7DC(v864, v865, v866, v867, v868, v869, v870, v871, v1263, v1292, v1322, v1355, v1389, v1426, v1468, v1508, v1549);
          sub_24FF37EE0(v38, &qword_27F3B43D0, &qword_24FF63E00);
          sub_24FF5F840();
          sub_24FF5F44C();
          swift_allocError();
          sub_24FF5F1B8();
          v342 = v872 - 9;
          goto LABEL_117;
        }

        sub_24FF5F950();
        v1062 = *(v4 + 672);
        v1063 = *(v4 + 472);
      }

      sub_24FF57D68();
      sub_24FF55FF4(0);
      v1186 = sub_24FF5F740();
      sub_24FF58FDC(v1186, v1187);
      v1188 = *(v165 + 1);
      v1189 = sub_24FF5F734();
      v1188(v1189);
      (v1188)(v381, v60);
      goto LABEL_168;
    case 4:
      v89 = *(v4 + 864);
      v90 = *(v4 + 352);
      v91 = sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
      v92 = *(v59 + 32);
      v93 = *(v91 + 48);
      sub_24FF5F6A8();
      v1439 = v94;
      v94();
      sub_24FF57D68();
      v95 = *(v4 + 768);
      v96 = *(v4 + 760);
      v97 = *(v4 + 560);
      v1481 = *(v4 + 192);
      if (*(v1481 + 16))
      {
        v100 = *(v95 + 16);
        v98 = v95 + 16;
        v99 = v100;
        v101 = *(v98 + 64);
        sub_24FF5F76C();
        v100(v97, v103 + v102 + *(v98 + 56) * v104, v96);
        sub_24FF5F558();
        sub_24FF24B98(v105, v106, v107, v108);
      }

      else
      {
        sub_24FF5F4D8();
        sub_24FF24B98(v477, v478, v479, v96);
        v99 = *(v95 + 16);
      }

      v480 = *(v4 + 760);
      v481 = *(v4 + 560);
      v482 = *(v4 + 552);
      v484 = *(v4 + 304);
      v483 = *(v4 + 312);
      v485 = *(v4 + 768) + 16;
      v99(v482, *(v4 + 352), v480);
      sub_24FF5F6C4();
      sub_24FF24B98(v486, v487, v488, v480);
      v489 = *(v484 + 48);
      sub_24FF5EB34(v481, v483, &qword_27F3B42C8, &qword_24FF641A0);
      v490 = v1521;
      sub_24FF5EB34(v482, v483 + v489, &qword_27F3B42C8, &qword_24FF641A0);
      v491 = sub_24FF5F81C();
      v493 = sub_24FF24B70(v491, v492, v480);
      v494 = v1521[95];
      if (v493 == 1)
      {
        v495 = v1521[70];
        sub_24FF37EE0(v1521[69], &qword_27F3B42C8, &qword_24FF641A0);
        v496 = sub_24FF5F944();
        sub_24FF37EE0(v496, v497, &qword_24FF641A0);
        sub_24FF5F6DC(v483 + v489, 1, v494);
        if (!v383)
        {
          goto LABEL_78;
        }

        v498 = sub_24FF37EE0(v1521[39], &qword_27F3B42C8, &qword_24FF641A0);
      }

      else
      {
        sub_24FF5EB34(v1521[39], v1521[68], &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F6DC(v483 + v489, 1, v494);
        if (v383)
        {
          v506 = v1521[96];
          v507 = v1521[95];
          v508 = v1521[70];
          v509 = v1521[69];
          v510 = v1521[68];
          sub_24FF5F920();
          sub_24FF37EE0(v511, v512, v513);
          sub_24FF5F920();
          sub_24FF37EE0(v514, v515, v516);
          (*(v506 + 8))(v510, v507);
LABEL_78:
          v498 = sub_24FF37EE0(v1521[39], &qword_27F3B4448, &qword_24FF64190);
LABEL_79:
          v517 = v490[131];
          v1414 = v490[130];
          v1454 = v490[132];
          v1345 = v490[108];
          v1378 = v490[125];
          v518 = v1521[96];
          v519 = v1521[95];
          v38 = v1521[67];
          v520 = v1521[62];
          v521 = v1521[44];
          v522 = sub_24FF5F71C(v498, v499, v500, v501, v502, v503, v504, v505, v1242, v1271, v1300, v1345, v1378, v1414, v1454, v1481, v1521);
          sub_24FF5F7DC(v522, v523, v524, v525, v526, v527, v528, v529, v1255, v1284, v1314, v1346, v1379, v1415, v1455, v1497, v1536);
          sub_24FF5F1E0();
          sub_24FF62098();
          sub_24FF5F7B4();
          sub_24FF5F5FC();
          sub_24FF5F858();
          sub_24FF5F054();
          sub_24FF5E51C(v530, v531);
          v532 = sub_24FF62148();
          MEMORY[0x25305C910](v532);

          sub_24FF5F858();
          sub_24FF4CDBC(v1498, v38);
          sub_24FF61D48();
          sub_24FF5F974();

          sub_24FF4EC68();
          sub_24FF5F44C();
          v533 = swift_allocError();
          sub_24FF5F274(v533, v534);
          swift_willThrow();
          (*(v518 + 8))(v1347, v519);
          v4 = v1537;
          sub_24FF5F03C();
          sub_24FF58FDC(v1380, v535);
          (*(v517 + 8))(v1456, v1416);
          sub_24FF5F1F0();
          v537 = v521;
          goto LABEL_150;
        }

        v662 = v1521[96];
        v663 = v1521[95];
        v664 = v1521[70];
        v665 = v1521[69];
        v490 = v1521[68];
        v1399 = v1521[39];
        (v1439)(v1521[107], v483 + v489, v663);
        sub_24FF5F054();
        sub_24FF5E51C(v666, v667);
        v668 = sub_24FF61D38();
        v669 = *(v662 + 8);
        v670 = sub_24FF5F734();
        v669(v670);
        sub_24FF37EE0(v665, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF37EE0(v664, &qword_27F3B42C8, &qword_24FF641A0);
        v671 = sub_24FF5F54C();
        (v669)(v671, v663);
        v498 = sub_24FF37EE0(v1399, &qword_27F3B42C8, &qword_24FF641A0);
        if ((v668 & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      v672 = v490[26];
      v490[155] = v672;
      if (*(v672 + 16))
      {
        v673 = v490[83];
        v674 = v490[82];
        v676 = v490[43];
        v675 = v490[44];
        v678 = v490[41];
        v677 = v490[42];
        v679 = *(v674 + 80);
        v680 = *(v674 + 72);
        sub_24FF5F158();
        sub_24FF5C0FC();
        sub_24FF5C0FC();
        sub_24FF5C0FC();
        v681 = sub_24FF61BA8();
        v682 = sub_24FF62008();
        v683 = os_log_type_enabled(v681, v682);
        if (v683)
        {
          sub_24FF5F220(v683, v684, v685, v686, v687, v688, v689, v690, v1242, v1271, v1300, v1331, v1363, v1399, v1439, v1481, v1521);
          v692 = *(v691 + 344);
          v693 = v1542[42];
          v1463 = v1542[41];
          v694 = v1542[40];
          v695 = sub_24FF4CA88();
          v1558 = swift_slowAlloc();
          *v695 = 136315650;
          sub_24FF5F054();
          sub_24FF5E51C(v696, v697);
          v698 = sub_24FF62148();
          v700 = v699;
          sub_24FF58FDC(v692, type metadata accessor for JsonFieldValueEvent);
          v701 = sub_24FF5BBE0(v698, v700, &v1558);

          *(v695 + 4) = v701;
          *(v695 + 12) = 2080;
          v702 = (v693 + *(v694 + 20));
          v703 = *v702;
          v490 = v702[1];

          sub_24FF58FDC(v693, type metadata accessor for JsonFieldValueEvent);
          v704 = sub_24FF5FA38();
          v707 = sub_24FF5BBE0(v704, v705, v706);
          sub_24FF5F54C();

          *(v695 + 14) = v707;
          *(v695 + 22) = 2080;
          v708 = v1463 + *(v694 + 24);
          v709 = *v708;
          v710 = *(v708 + 8);
          v711 = *(v708 + 16);
          v490[21] = *v708;
          v490[22] = v710;
          *(v490 + 184) = v711;
          sub_24FF3B644(v709, v710, v711);
          sub_24FF61D48();
          sub_24FF58FDC(v1463, type metadata accessor for JsonFieldValueEvent);
          v712 = sub_24FF5F61C();
          v715 = sub_24FF5BBE0(v712, v713, v714);

          *(v695 + 24) = v715;
          _os_log_impl(&dword_24FF22000, v681, v682, "Field value for object id=%s field=%s value=%s", v695, 0x20u);
          swift_arrayDestroy();
          sub_24FF42670();
          sub_24FF42670();
        }

        else
        {
          v1032 = v490[42];
          v1031 = v490[43];
          v1033 = v490[41];

          sub_24FF58FDC(v1033, type metadata accessor for JsonFieldValueEvent);
          v1034 = sub_24FF32270();
          sub_24FF58FDC(v1034, v1035);
          v1036 = sub_24FF4C758();
          sub_24FF58FDC(v1036, v1037);
        }

        v1038 = v490[44];
        v1039 = v490[40];
        v1040 = (v490[33] + v490[133]);
        v1041 = v1040[4];
        sub_24FF257B8(v1040, v1040[3]);
        v1042 = v1038 + *(v1039 + 24);
        v1043 = *v1042;
        v1044 = *(v1042 + 8);
        v1045 = *(v1042 + 16);
        v490[15] = *v1042;
        v490[16] = v1044;
        *(v490 + 136) = v1045;
        v1046 = *(v1041 + 8);
        sub_24FF3B644(v1043, v1044, v1045);
        v1515 = v1046 + *v1046;
        v1047 = v1046[1];
        v1048 = swift_task_alloc();
        v490[156] = v1048;
        *v1048 = v490;
        v1048[1] = sub_24FF54AB0;
        sub_24FF5FB04();

        __asm { BRAA            X4, X16 }
      }

      v923 = v490[132];
      v924 = v490[131];
      v925 = v490[130];
      v926 = v490[125];
      v4 = v1521[108];
      v927 = v1521[96];
      v928 = v1521[95];
      sub_24FF5F71C(v498, v499, v500, v501, v502, v503, v504, v505, v1242, v1271, v1300, v1331, v1363, v1399, v923, v1521[44], v1521);

      sub_24FF5F1E0();
      sub_24FF62098();

      sub_24FF5F260();
      v1558 = v930 - 10;
      v1559 = v929;
      sub_24FF5F054();
      sub_24FF5E51C(v931, v932);
      sub_24FF62148();
      sub_24FF5F974();

      sub_24FF4EC68();
      sub_24FF5F44C();
      v933 = swift_allocError();
      sub_24FF5F274(v933, v934);
      swift_willThrow();
      v935 = *(v927 + 8);
      v936 = sub_24FF5F54C();
      v937(v936, v928);
      sub_24FF5F03C();
      sub_24FF58FDC(v926, v938);
      (*(v924 + 8))(v1470, v925);
      v939 = type metadata accessor for JsonFieldValueEvent;
LABEL_149:
      v536 = v939;
      v537 = v1509;
LABEL_150:
      sub_24FF58FDC(v537, v536);
      goto LABEL_151;
    case 5:
      v244 = *(v4 + 848);
      v42 = *(v59 + 32);
      sub_24FF5F6A8();
      v42();
      v245 = *(v4 + 192);
      if (*(v245 + 16))
      {
        sub_24FF5F17C();
        v246 = *(v4 + 848);
        v63 = *(v4 + 768);
        sub_24FF5F220(v247, v248, v249, v250, v251, v252, v253, v254, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v256 = *(v255 + 200);

        sub_24FF5F7DC(v257, v258, v259, v260, v261, v262, v263, v264, v1245, v1274, v1304, v1335, v1368, v1404, v1442, v1484, v1524);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        goto LABEL_44;
      }

      v630 = v4;
      v1462 = *(*(v4 + 768) + 16);
      v1462(*(v4 + 840), *(v4 + 848), *(v4 + 760));
      v631 = sub_24FF61BA8();
      v632 = sub_24FF62008();
      v633 = os_log_type_enabled(v631, v632);
      v634 = v630[105];
      v635 = v630[96];
      v636 = v630[95];
      v1503 = v42;
      if (v633)
      {
        sub_24FF42770();
        v1558 = sub_24FF5F6F4();
        *v60 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v637, v638);
        sub_24FF62148();
        v639 = *(v635 + 8);
        v640 = sub_24FF5F92C();
        v1385 = v641;
        (v641)(v640);
        v642 = sub_24FF5FA44();
        v645 = sub_24FF5BBE0(v642, v643, v644);

        *(v60 + 4) = v645;
        _os_log_impl(&dword_24FF22000, v631, v632, "Root array starts with id=%s", v60, 0xCu);
        sub_24FF5F654();
        sub_24FF4C84C();
      }

      else
      {

        v897 = *(v635 + 8);
        v898 = sub_24FF5F92C();
        v1385 = v899;
        (v899)(v898);
      }

      v900 = v1521[107];
      v901 = v1521[106];
      v902 = v1521[104];
      v1323 = v1521[103];
      v903 = v1521[95];
      v904 = v1521[96] + 8;
      v1462(v902, v901, v903);
      sub_24FF5CCD8(v900, v902);
      v1385(v900, v903);
      v1462(v1323, v901, v903);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1218 = *(v245 + 16);
        v1219 = sub_24FF4C6AC();
        v245 = sub_24FF4B31C(v1219, v1220, v1221, v245);
      }

      v906 = *(v245 + 16);
      v905 = *(v245 + 24);
      v4 = v1521;
      if (v906 >= v905 >> 1)
      {
        v1222 = sub_24FF5F8F0(v905);
        v245 = sub_24FF4B31C(v1222, v906 + 1, 1, v245);
      }

      v907 = v1521[125];
      v908 = v1521[103];
      v909 = v1521[96];
      v1385(v1521[106], v1521[95]);
      sub_24FF5F03C();
      sub_24FF58FDC(v907, v910);
      *(v245 + 16) = v906 + 1;
      v911 = v245 + ((*(v909 + 80) + 32) & ~*(v909 + 80)) + *(v909 + 72) * v906;
      sub_24FF5FA2C();
      v1503();
      v1521[24] = v245;
      goto LABEL_170;
    case 6:
      v275 = *(v4 + 816);
      v163 = *(v4 + 528);
      v165 = *(v59 + 32);
      sub_24FF5F6A8();
      v165();
      sub_24FF55C78(v163);
      sub_24FF5F598(v163);
      if (v383)
      {
        sub_24FF5F474();
        v276 = *(v4 + 816);
        v168 = *(v4 + 768);
        v277 = *(v4 + 760);
        v38 = *(v4 + 528);
        v278 = *(v4 + 200);

        v279 = *(v4 + 208);

        sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v175 = v280 + 28;
LABEL_48:
        *v173 = v175;
        v173[1] = v163;
        sub_24FF426C0(v172, v173);
        v281 = *(v168 + 8);
        v282 = sub_24FF5F61C();
        v283(v282);
LABEL_49:
        sub_24FF58FDC(v60, type metadata accessor for JsonStreamEvent);
        v284 = *(v165 + 1);
        v285 = sub_24FF5F688();
        v286(v285);
LABEL_151:
        v10 = 0x280B15000uLL;
        goto LABEL_152;
      }

      v381 = *(v4 + 816);
      v1 = *(v4 + 760);
      v382 = *(v4 + 520);
      (v165)(*(v4 + 808), *(v4 + 528), v1);
      sub_24FF5CFA0(v381, v382);
      v384 = sub_24FF5F6DC(v382, 1, v1);
      if (v383)
      {
        v392 = *(v4 + 1056);
        v312 = *(v4 + 1048);
        v393 = *(v4 + 1040);
        v60 = *(v4 + 1000);
        v394 = *(v4 + 816);
        v395 = *(v4 + 808);
        v313 = *(v4 + 768);
        sub_24FF5F220(v384, v385, v386, v387, v388, v389, v390, v391, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v38 = *(v396 + 520);
        sub_24FF5F71C(v397, v398, v399, v400, v401, v402, v403, v404, v1250, v1279, v1309, v1340, v1373, v1409, v1448, v1491, v1532);
        v405 = sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v405, v406, v407, v408, v409, v410, v411, v412, v1251, v1280, v1310, v1341, v1374, v1410, v1449, v1492, v1533);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v342 = v413 - 2;
LABEL_117:
        *v340 = v342;
        v340[1] = v381;
        sub_24FF426C0(v339, v340);
        v873 = *(v313 + 8);
        v874 = sub_24FF5F628();
        v873(v874);
        v875 = sub_24FF5FA38();
        v4 = v1528;
        v873(v875);
        sub_24FF5F03C();
        sub_24FF58FDC(v60, v876);
        v877 = *(v312 + 8);
        v878 = sub_24FF5F688();
        v879(v878);
        goto LABEL_151;
      }

      v753 = *(v4 + 816);
      v754 = *(v4 + 808);
      sub_24FF37EE0(*(v4 + 520), &qword_27F3B42C8, &qword_24FF641A0);
      sub_24FF5F8FC();
      v755 = sub_24FF61878();
      if ((v755 & 1) == 0)
      {
        sub_24FF5F17C();
        v970 = *(v4 + 816);
        v971 = *(v4 + 808);
LABEL_135:
        v348 = *(v4 + 768);
        sub_24FF5F220(v743, v744, v745, v746, v747, v748, v749, v750, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v973 = *(v972 + 200);

        sub_24FF5F7DC(v974, v975, v976, v977, v978, v979, v980, v981, v1264, v1293, v1324, v1356, v1392, v1428, v1471, v1510, v1552);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        sub_24FF5F054();
        v38 = sub_24FF5E51C(v982, v983);
        v984 = sub_24FF62148();
        MEMORY[0x25305C910](v984);

        sub_24FF5F858();
        sub_24FF62148();
        sub_24FF5F974();

        goto LABEL_136;
      }

      v756 = *(v4 + 208);
      if (*(v756 + 16))
      {
        sub_24FF5F17C();
        v757 = *(v4 + 816);
        v758 = *(v4 + 808);
        v348 = *(v4 + 768);
        sub_24FF5F220(v759, v760, v761, v762, v763, v764, v765, v766, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v768 = *(v767 + 200);

        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        v769 = *(v756 + 16);

        *(v1531 + 256) = v769;
        sub_24FF62148();
        sub_24FF5F974();

        sub_24FF5F858();
LABEL_136:
        sub_24FF4EC68();
        sub_24FF5F44C();
        v985 = swift_allocError();
        sub_24FF5F274(v985, v986);
LABEL_137:
        swift_willThrow();
        v987 = *(v348 + 8);
        v988 = sub_24FF5FA5C();
        v987(v988);
        v989 = sub_24FF5F628();
        v4 = v1531;
        v987(v989);
        sub_24FF5F03C();
        sub_24FF58FDC(v42, v990);
        (*(v1 + 8))(v1490, v1447);
        goto LABEL_151;
      }

      (*(*(v4 + 768) + 16))(*(v4 + 800), *(v4 + 816), *(v4 + 760));
      v1123 = sub_24FF61BA8();
      v1124 = sub_24FF62008();
      v1125 = os_log_type_enabled(v1123, v1124);
      v308 = *(v4 + 1000);
      v1126 = *(v4 + 816);
      v1127 = *(v4 + 808);
      v1128 = *(v4 + 800);
      v1129 = *(v4 + 768);
      v1130 = *(v4 + 760);
      if (v1125)
      {
        v4 = sub_24FF42770();
        v1518 = v1127;
        v1131 = sub_24FF4CA88();
        v1558 = v1131;
        *v4 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v1132, v1133);
        sub_24FF62148();
        v1134 = *(v1129 + 8);
        v1135 = sub_24FF5F688();
        v1134(v1135);
        v1136 = sub_24FF32440();
        v1139 = sub_24FF5BBE0(v1136, v1137, v1138);

        *(v4 + 4) = v1139;
        _os_log_impl(&dword_24FF22000, v1123, v1124, "Root array ended with id=%s", v4, 0xCu);
        sub_24FF25A6C(v1131);
        sub_24FF42670();
        sub_24FF5F54C();
        sub_24FF42670();

        (v1134)(v1518, v1130);
        (v1134)(v1126, v1130);
        sub_24FF5F03C();
        v1141 = v308;
      }

      else
      {

        v1197 = *(v1129 + 8);
        v1198 = sub_24FF5F688();
        v1197(v1198);
        (v1197)(v1127, v1130);
        v1199 = sub_24FF427BC();
        v1197(v1199);
LABEL_168:
        v1140 = type metadata accessor for JsonStreamEvent;
        v1141 = v308;
      }

      sub_24FF58FDC(v1141, v1140);
LABEL_170:
      v1190 = *(MEMORY[0x277D858B8] + 4);
      v1191 = swift_task_alloc();
      *(v4 + 1080) = v1191;
      *v1191 = v4;
      v1191[1] = sub_24FF50790;
      v1192 = *(v4 + 1056);
      v1193 = *(v4 + 1040);
      v1194 = *(v4 + 1008);
      sub_24FF2BBD4();
      sub_24FF5FB04();

      return MEMORY[0x2822005A8](v1195);
    case 7:
      v176 = *(v4 + 792);
      v177 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v178 = (v58 + *(v177 + 64));
      v179 = *v178;
      v38 = v178[1];
      v180 = (*(v59 + 32))(v176, v58 + *(v177 + 48), v60);
      v188 = *(v4 + 208);
      if (!*(v188 + 16))
      {
        v573 = *(v4 + 1056);
        v574 = *(v4 + 1048);
        v575 = *(v4 + 1040);
        sub_24FF5F458(v180, v181, v182, v183, v184, v185, v186, v187, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
        v577 = *(v576 + 792);
        v578 = *(v1541 + 768);
        sub_24FF5F4C8(v579, v580, v581, v582, v583, v584, v585, v586, v1258, v1287, v1317, v1350, v1383, v1419, v1459, v1501, v1541);
        v588 = *(v587 + 200);

        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v589 = v590;
        v589[1] = v179;
        sub_24FF426C0(v591, v589);
        v592 = *(v578 + 8);
        v593 = sub_24FF5FA50();
        v592(v593);
        sub_24FF5F03C();
        v594 = sub_24FF5F54C();
        sub_24FF58FDC(v594, v595);
        v596 = *(v574 + 8);
        v597 = sub_24FF5F944();
        v599 = v598(v597);
        v607 = sub_24FF5FA08(v599, v600, v601, v602, v603, v604, v605, v606, v1259, v1288, v1318, v1351, v1384, v1420, v1460, v1502);
        v592(v607);
        goto LABEL_151;
      }

      v189 = *(v4 + 656);
      v190 = *(v4 + 648);
      sub_24FF5FAF0();
      v203 = *(v188 + v199 + *(v200 + 72) * v201 + *(v202 + 20));
      if (!*(v203 + 16) || (, v204 = sub_24FF4C758(), sub_24FF3AFC8(v204, v205), v207 = v206, v191 = , (v207 & 1) == 0))
      {
        v445 = *(v4 + 1048);
        sub_24FF5F458(v191, v192, v193, v194, v195, v196, v197, v198, v1242, v1271, v1300, v1331, v1363, *(v4 + 1040), *(v4 + 1056), v1478, v1521);
        v447 = *(v446 + 792);
        v448 = *(v1535 + 768);
        sub_24FF5F4C8(v449, v450, v451, v452, v453, v454, v455, v456, v1253, v1282, v1312, v1343, v1376, v1412, v1452, v1495, v1535);
        v458 = *(v457 + 200);

        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1558 = v460 + 4;
        v1559 = v459;
        v461 = sub_24FF4C758();
        MEMORY[0x25305C910](v461);

        v462 = v1559;
        sub_24FF4EC68();
        sub_24FF5F44C();
        v38 = swift_allocError();
        *v463 = v1558;
        v463[1] = v462;
        v10 = 0x280B15000uLL;
        sub_24FF426C0(v38, v463);
        v464 = *(v448 + 8);
        v465 = sub_24FF5FA50();
        v464(v465);
        sub_24FF5F03C();
        v466 = sub_24FF5F54C();
        sub_24FF58FDC(v466, v467);
        v468 = (*(v445 + 8))(v1453, v1413);
        v476 = sub_24FF5FA08(v468, v469, v470, v471, v472, v473, v474, v475, v1254, v1283, v1313, v1344, v1377, v1413, v1453, v1496);
        v464(v476);
        goto LABEL_152;
      }

      v208 = *(v4 + 856);
      v209 = *(v4 + 832);
      v1483 = *(v4 + 792);
      v210 = *(v4 + 768);
      v211 = *(v4 + 760);
      v212 = v1521[57];
      v213 = v1521[56];
      v214 = *(v203 + 56);
      v215 = *(v1521[54] + 72);
      sub_24FF5F248();
      sub_24FF5C0FC();

      sub_24FF5F110();
      sub_24FF5FA5C();
      sub_24FF57D68();
      v216 = *(v210 + 16);
      v216(v209, v1483, v211);
      v217 = sub_24FF427BC();
      sub_24FF5CCD8(v217, v218);
      v219 = *(v210 + 8);
      v219(v208, v211);
      v220 = v1521[24];
      v1441 = v219;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1223 = sub_24FF5F1C8();
        v220 = sub_24FF4B31C(v1223, v1224, v1225, v1226);
      }

      v222 = *(v220 + 16);
      v221 = *(v220 + 24);
      v223 = v222 + 1;
      v1403 = v216;
      if (v222 >= v221 >> 1)
      {
        sub_24FF5F8F0(v221);
        v1228 = v1227;
        sub_24FF5F558();
        v1233 = sub_24FF4B31C(v1229, v1230, v1231, v1232);
        v223 = v1228;
        v220 = v1233;
      }

      v1334 = v1521[125];
      v1367 = v1521[122];
      v224 = v1521[99];
      v225 = v1521[96];
      v226 = v1521[95];
      v1244 = v1521[53];
      v1273 = v1521[57];
      v227 = v1521[50];
      v228 = v1521[49];
      v1303 = v1521[48];
      v229 = v1521[47];
      v230 = v1521[46];
      v231 = v1521[45];
      *(v220 + 16) = v223;
      sub_24FF5F4B0(v225);
      v1403(v233 + v232 * v222, v224, v226);
      v1521[24] = v220;
      v1403(v229, v224, v226);
      swift_storeEnumTagMultiPayload();
      v234 = *(v1244 + 20);
      sub_24FF5F09C();
      sub_24FF5C0FC();
      sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
      sub_24FF61F78();
      v4 = v1521;
      (*(v228 + 8))(v227, v1303);
      sub_24FF5F06C();
      sub_24FF58FDC(v229, v235);
      sub_24FF5F230();
      sub_24FF58FDC(v1273, v236);
      v1441(v224, v226);
      sub_24FF5F03C();
      sub_24FF58FDC(v1334, v237);
      v1441(v1367, v226);
      goto LABEL_170;
    case 8:
      v287 = *(v4 + 784);
      v288 = *(v4 + 512);
      v289 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v290 = *(v59 + 32);
      v291 = (v58 + *(v289 + 64));
      v293 = *v291;
      v292 = v291[1];
      v290(v287, v58 + *(v289 + 48), v60);
      sub_24FF55C78(v288);
      sub_24FF5F598(v288);
      if (v383)
      {
        sub_24FF5F7C0();
        v1485 = v295;
        v1525 = v294;
        v296 = *(v4 + 784);
        v297 = *(v4 + 768);
        v298 = *(v4 + 760);
        v38 = *(v4 + 512);
        v299 = *(v4 + 200);

        v300 = *(v4 + 208);

        sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v302 = v301 + 28;
        *(v302 + 8) = v292;
        *(v302 + 16) = v293;
        swift_willThrow();
        v303 = *(v297 + 8);
        v304 = sub_24FF5FA44();
        v303(v304);
        sub_24FF5F03C();
        sub_24FF58FDC(v288, v305);
        (*(v4 + 200))(v1485, v60);
        (v303)(v1525, v298);
        goto LABEL_151;
      }

      v414 = *(v4 + 784);
      v415 = *(v4 + 760);
      v416 = *(v4 + 504);
      v290(*(v4 + 776), *(v4 + 512), v415);
      v417 = v4 + 200;
      sub_24FF5CFA0(v414, v416);
      sub_24FF5F6DC(v416, 1, v415);
      if (v418)
      {
        sub_24FF5F7C0();
        v4 = v1521[98];
        v419 = v1521[97];
        v420 = v1521[96];
        v421 = v1521[95];
        v38 = v1521[63];
        sub_24FF5F71C(v422, v423, v424, v425, v426, v427, v428, v429, v1242, v1271, v1300, v1331, v1363, v1399, v431, v430, v1521);

        v432 = sub_24FF37EE0(v38, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v432, v433, v434, v435, v436, v437, v438, v439, v1252, v1281, v1311, v1342, v1375, v1411, v1450, v1493, v1534);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v441 = v440 - 2;
        *(v441 + 8) = v292;
        *(v441 + 16) = v293;
        swift_willThrow();
        v442 = *(v420 + 8);
        v442(v419, v421);
        v443 = sub_24FF5F54C();
        v442(v443, v421);
        sub_24FF5F03C();
        sub_24FF58FDC(v416, v444);
        (*(v417 + 8))(v1451, v414);
        v442(v1494, v421);
        goto LABEL_151;
      }

      v770 = *(v4 + 784);
      v771 = *(v4 + 776);
      sub_24FF37EE0(*(v4 + 504), &qword_27F3B42C8, &qword_24FF641A0);
      v772 = sub_24FF61878();
      if ((v772 & 1) == 0)
      {
        v991 = *(v4 + 1048);
        sub_24FF5F458(v772, v773, v774, v775, v776, v777, v778, v779, v1242, v1271, v1300, v1331, v1363, *(v4 + 1040), *(v4 + 1056), v1478, v1521);
        sub_24FF5FA68(v992, v1265, v1294, v1325, v1357, v1393, v1429, v1472, v1511, v1553);
        v994 = *(v993 + 768);
        sub_24FF5F4C8(v995, v996, v997, v998, v999, v1000, v1001, v1002, v1266, v1295, v1326, v1358, v1394, v1430, v1473, v1512, v1554);
        v1004 = *(v1003 + 200);

        sub_24FF5F7DC(v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1267, v1296, v1327, v1359, v1395, v1431, v1474, v1513, v1555);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        sub_24FF5F054();
        v38 = sub_24FF5E51C(v1013, v1014);
        v1015 = sub_24FF62148();
        MEMORY[0x25305C910](v1015);

        sub_24FF5F858();
        sub_24FF62148();
        sub_24FF5F974();

        sub_24FF4EC68();
        sub_24FF5F44C();
        v1016 = swift_allocError();
        sub_24FF5F274(v1016, v1017);
        swift_willThrow();
        v1018 = *(v994 + 8);
        (v1018)(v290, v416);
        v1019 = sub_24FF5FA50();
        v1018(v1019);
        sub_24FF5F03C();
        v1020 = sub_24FF5F54C();
        sub_24FF58FDC(v1020, v1021);
        v1022 = (*(v991 + 8))(v1475, v1432);
        v1030 = sub_24FF5FA08(v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1029, v1268, v1297, v1328, v1360, v1396, v1432, v1475, v1514);
        v1018(v1030);
        goto LABEL_151;
      }

      v780 = *(v4 + 208);
      if (!*(v780 + 16))
      {
        v1142 = *(v4 + 1056);
        v1143 = *(v4 + 1048);
        v1144 = *(v4 + 1040);
        v4 = v1521[125];
        sub_24FF5FA68(v1521, v1242, v1271, v1300, v1331, v1363, v1399, v1142, v1521[122], v1521);
        v1146 = *(v1145 + 768);
        sub_24FF5F4C8(v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1269, v1298, v1329, v1361, v1397, v1433, v1476, v1519, v1557);
        v1156 = *(v1155 + 200);

        sub_24FF4EC68();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v1157 = v1158;
        v1157[1] = 0x800000024FF67800;
        sub_24FF426C0(v1159, v1157);
        v1160 = *(v1146 + 8);
        (v1160)(v290, v416);
        v1161 = sub_24FF5FA50();
        v1160(v1161);
        sub_24FF5F03C();
        v1162 = sub_24FF5F54C();
        sub_24FF58FDC(v1162, v1163);
        v1164 = (*(v1143 + 8))(v1477, v1144);
        v1172 = sub_24FF5FA08(v1164, v1165, v1166, v1167, v1168, v1169, v1170, v1171, v1270, v1299, v1330, v1362, v1398, v1434, v1477, v1520);
        v1160(v1172);
        goto LABEL_151;
      }

      v781 = *(v4 + 656);
      v782 = *(v4 + 648);
      v783 = *(v4 + 424);
      v784 = *(v4 + 408);
      sub_24FF5FAF0();
      v789 = *(v780 + v785 + *(v786 + 72) * v787 + *(v788 + 20));

      v790 = sub_24FF5F828();
      sub_24FF4CC34(v790, v791, v789, v792);

      v793 = sub_24FF5F598(v784);
      if (v383)
      {
        v801 = *(v4 + 1048);
        v802 = *(v4 + 976);
        v803 = *(v4 + 784);
        v804 = *(v4 + 776);
        v805 = *(v4 + 768);
        sub_24FF5F220(v793, v794, v795, v796, v797, v798, v799, v800, v1242, v1271, v1300, v1331, v1363, *(v4 + 1000), *(v4 + 1040), *(v4 + 1056), v1521);
        v38 = *(v806 + 408);
        sub_24FF5F71C(v807, v808, v809, v810, v811, v812, v813, v814, v1261, v1290, v1320, v1353, v1387, v1423, v1465, v1505, v1545);

        sub_24FF37EE0(v38, &qword_27F3B43C8, &qword_24FF63DF8);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1558 = v816 + 4;
        v1559 = v815;
        v817 = sub_24FF5F828();
        MEMORY[0x25305C910](v817);

        sub_24FF4EC68();
        sub_24FF5F44C();
        v818 = swift_allocError();
        sub_24FF5F274(v818, v819);
        swift_willThrow();
        v820 = *(v805 + 8);
        v821 = sub_24FF5FA38();
        v820(v821);
        (v820)(v803, v4);
        sub_24FF5F03C();
        sub_24FF58FDC(v1424, v822);
        (*(v801 + 8))(v1506, v1466);
        v823 = v4;
        v4 = v1546;
        (v820)(v802, v823);
        goto LABEL_151;
      }

      v1173 = *(v4 + 440);
      v1174 = *(v4 + 408);
      sub_24FF5F110();
      sub_24FF57D68();

      v1175 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F8E4();

      if (sub_24FF5FBE4())
      {
        sub_24FF42770();
        v1177 = sub_24FF5F6F4();
        v1558 = v1177;
        *v783 = 136315138;
        v1178 = sub_24FF5F828();
        v1181 = sub_24FF5BBE0(v1178, v1179, v1180);

        *(v783 + 4) = v1181;
        sub_24FF5F778(&dword_24FF22000, v1182, v1183, "Array %s ended, completing the stream for the field");
        sub_24FF25A6C(v1177);
        sub_24FF42670();
        sub_24FF4C84C();
      }

      else
      {
      }

      v1200 = *(v4 + 1000);
      v1201 = *(v4 + 976);
      v1202 = *(v4 + 784);
      v1203 = *(v4 + 776);
      v1204 = *(v4 + 768);
      v1205 = *(v4 + 760);
      v1206 = *(v4 + 440);
      v1207 = *(*(v4 + 424) + 20);
      *(v4 + 248) = 0;
      sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
      sub_24FF61F88();
      sub_24FF5F230();
      sub_24FF58FDC(v1206, v1208);
      v1209 = *(v1204 + 8);
      v1210 = sub_24FF5F944();
      v1209(v1210);
      v1211 = sub_24FF5FA44();
      v1209(v1211);
      sub_24FF5F03C();
      sub_24FF58FDC(v1200, v1212);
      (v1209)(v1201, v1205);
      goto LABEL_170;
    default:
      v61 = *(v4 + 960);
      v1 = *(v59 + 32);
      sub_24FF5F6A8();
      (v1)();
      if (!*(*(v4 + 192) + 16))
      {
        v1421 = v1;
        v608 = *(v4 + 960);
        v609 = *(v4 + 952);
        v610 = *(v4 + 768);
        v611 = *(v4 + 760);
        v612 = *(v610 + 16);
        *(v4 + 1088) = v612;
        *(v4 + 1096) = (v610 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v612(v609, v608, v611);
        v613 = sub_24FF61BA8();
        sub_24FF62008();
        sub_24FF5F968();
        v615 = os_log_type_enabled(v613, v614);
        v616 = *(v4 + 952);
        v617 = *(v4 + 768);
        v618 = *(v4 + 760);
        v1461 = v612;
        if (v615)
        {
          v619 = sub_24FF42770();
          v1558 = sub_24FF4CA88();
          *v619 = 136315138;
          sub_24FF5F054();
          sub_24FF5E51C(v620, v621);
          sub_24FF62148();
          sub_24FF5FA7C();
          v622 = *(v617 + 8);
          v623 = sub_24FF5F740();
          v622(v623);
          v624 = sub_24FF5BBE0(v612, v4, &v1558);
          sub_24FF5F54C();

          *(v619 + 4) = v624;
          sub_24FF5F4E4();
          _os_log_impl(v625, v626, v627, v628, v629, 0xCu);
          sub_24FF5F654();
          sub_24FF42670();
        }

        else
        {

          v622 = *(v617 + 8);
          v880 = sub_24FF5F740();
          v622(v880);
        }

        *(v4 + 1104) = v622;
        v612(*(v4 + 944), *(v4 + 960), *(v4 + 760));
        v881 = *(v4 + 192);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1213 = *(v881 + 16);
          v1214 = sub_24FF4C6AC();
          v881 = sub_24FF4B31C(v1214, v1215, v1216, v881);
        }

        v883 = *(v881 + 16);
        v882 = *(v881 + 24);
        if (v883 >= v882 >> 1)
        {
          v1217 = sub_24FF5F8F0(v882);
          v881 = sub_24FF4B31C(v1217, v883 + 1, 1, v881);
        }

        v1550 = *(v4 + 1072);
        v1390 = *(v4 + 960);
        v884 = *(v4 + 944);
        v885 = *(v4 + 768);
        v886 = *(v4 + 760);
        v887 = *(v4 + 752);
        v888 = v4;
        v889 = *(v4 + 648);
        v891 = v888[33];
        v890 = v888[34];
        *(v881 + 16) = v883 + 1;
        v892 = *(v885 + 80);
        sub_24FF5F76C();
        v1421(v881 + v893 + *(v894 + 72) * v883);
        v888[24] = v881;
        sub_24FF61B58();
        sub_24FF5694C();
        v896 = v895;

        v1461(v887, v1390, v886);
        *(v887 + *(v889 + 20)) = v896;
        v888[139] = *(v891 + v1550);
        goto LABEL_157;
      }

      sub_24FF5F17C();
      v62 = *(v4 + 960);
      v63 = *(v4 + 768);
      sub_24FF5F220(v64, v65, v66, v67, v68, v69, v70, v71, v1242, v1271, v1300, v1331, v1363, v1399, v1435, v1478, v1521);
      v73 = *(v72 + 200);

      sub_24FF5F7DC(v74, v75, v76, v77, v78, v79, v80, v81, v1243, v1272, v1301, v1332, v1365, v1401, v1437, v1479, v1522);
      sub_24FF5F1E0();
      sub_24FF62098();
      sub_24FF5F7B4();
LABEL_44:
      sub_24FF5F858();

      v266 = MEMORY[0x25305C9D0](v265, v4);
      v268 = v267;

      MEMORY[0x25305C910](v266, v268);

      v269 = v1559;
      sub_24FF4EC68();
      sub_24FF5F44C();
      v38 = swift_allocError();
      *v270 = v1558;
      v270[1] = v269;
      v10 = 0x280B15000uLL;
      sub_24FF426C0(v38, v270);
      v271 = *(v63 + 8);
      v272 = sub_24FF5F628();
      v4 = v1523;
      v273(v272);
      sub_24FF5F03C();
      sub_24FF58FDC(v42, v274);
      (*(v1 + 8))(v1480, v1438);
      goto LABEL_152;
  }
}

uint64_t sub_24FF53F38()
{
  sub_24FF2BC70();
  v1 = v0[139];
  v2 = v0[94];
  v3 = v0[93];
  sub_24FF5A95C(v0[120]);

  sub_24FF5F084();
  sub_24FF58FDC(v3, v4);
  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF53FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v13 = v12[94];
  v14 = v12[92];
  sub_24FF5F158();
  v15 = v12[26];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_24FF5F1C8();
    v15 = sub_24FF4B430(v43, v44, v45, v46);
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_24FF5F558();
    v15 = sub_24FF4B430(v47, v48, v49, v50);
  }

  v12[140] = v15;
  v17 = v12[137];
  v18 = v12[136];
  v19 = v12[120];
  v20 = v12[117];
  v21 = v12[95];
  v22 = v12[92];
  v23 = v12[82];
  v24 = v12[33];
  *(v15 + 16) = v16 + 1;
  sub_24FF5F4B0(v23);
  sub_24FF5F128();
  sub_24FF57D68();
  v12[26] = v15;
  v25 = sub_24FF5F870();
  v18(v25);
  v12[10] = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  sub_24FF5F208();
  v12[11] = sub_24FF5E51C(v26, v27);
  v12[7] = v24;
  v28 = *(MEMORY[0x277D0DCB8] + 4);

  swift_task_alloc();
  sub_24FF2BC3C();
  v12[141] = v29;
  *v29 = v30;
  v29[1] = sub_24FF5413C;
  v31 = v12[117];
  v32 = v12[75];
  v33 = v12[36];
  v34 = v12[37];
  sub_24FF5F890();
  sub_24FF2BCF4();

  return MEMORY[0x282165FE0](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_24FF5413C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 1128);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  v3[142] = v0;

  if (v0)
  {
    v9 = v3[140];
    v10 = v3[25];
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF54248()
{
  sub_24FF5F8B0();
  sub_24FF5F9FC();
  v24 = v0[138];
  v25 = v0[125];
  v1 = v0[120];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[80];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[96] + 8;
  v11 = v0[35];
  v10 = v0[36];
  sub_24FF61F98();
  sub_24FF61F78();
  v12 = *(v5 + 8);
  v13 = sub_24FF5F61C();
  v14(v13);
  sub_24FF5F084();
  sub_24FF58FDC(v3, v15);
  v16 = sub_24FF427BC();
  v24(v16);
  sub_24FF5F03C();
  sub_24FF58FDC(v25, v17);
  v18 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[135] = v19;
  *v19 = v20;
  sub_24FF5F0D4();
  sub_24FF5F798();

  return MEMORY[0x2822005A8](v21);
}

uint64_t sub_24FF54358()
{
  sub_24FF2BC70();
  v1 = v0[149];
  v2 = v0[93];
  v3 = v0[90];
  sub_24FF5A95C(v0[113]);

  sub_24FF5F084();
  sub_24FF58FDC(v2, v4);
  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF543D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v13 = v12[148];
  v14 = v12[90];
  v15 = v12[89];
  sub_24FF5F158();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v12[148];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_24FF5F1C8();
    v17 = sub_24FF4B430(v45, v46, v47, v48);
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_24FF5F558();
    v17 = sub_24FF4B430(v49, v50, v51, v52);
  }

  v12[150] = v17;
  v19 = v12[146];
  v20 = v12[145];
  v21 = v12[113];
  v22 = v12[111];
  v23 = v12[95];
  v24 = v12[89];
  v25 = v12[82];
  v26 = v12[33];
  *(v17 + 16) = v18 + 1;
  sub_24FF5F4B0(v25);
  sub_24FF5F128();
  sub_24FF57D68();
  v12[26] = v17;
  v27 = sub_24FF5F870();
  v20(v27);
  v12[5] = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  sub_24FF5F208();
  v12[6] = sub_24FF5E51C(v28, v29);
  v12[2] = v26;
  v30 = *(MEMORY[0x277D0DCB8] + 4);

  swift_task_alloc();
  sub_24FF2BC3C();
  v12[151] = v31;
  *v31 = v32;
  v31[1] = sub_24FF54560;
  v33 = v12[111];
  v34 = v12[74];
  v35 = v12[36];
  v36 = v12[37];
  sub_24FF5F890();
  sub_24FF2BCF4();

  return MEMORY[0x282165FE0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_24FF54560()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 1208);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  v3[152] = v0;

  if (v0)
  {
    v9 = v3[150];
    v10 = v3[25];
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF5466C()
{
  sub_24FF5F8B0();
  sub_24FF5F9FC();
  v24 = v0[147];
  v25 = v0[125];
  v1 = v0[113];
  v2 = v0[95];
  v3 = v0[90];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[96] + 8;
  v11 = v0[35];
  v10 = v0[36];
  sub_24FF61F98();
  sub_24FF61F78();
  v12 = *(v5 + 8);
  v13 = sub_24FF5F61C();
  v14(v13);
  sub_24FF5F084();
  sub_24FF58FDC(v3, v15);
  v16 = sub_24FF427BC();
  v24(v16);
  sub_24FF5F03C();
  sub_24FF58FDC(v25, v17);
  v18 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[135] = v19;
  *v19 = v20;
  sub_24FF5F0D4();
  sub_24FF5F798();

  return MEMORY[0x2822005A8](v21);
}

uint64_t sub_24FF5477C()
{
  sub_24FF2BC70();
  v1 = v0[154];
  v2 = v0[93];
  v3 = v0[87];
  sub_24FF5A95C(v0[113]);

  sub_24FF5F084();
  sub_24FF58FDC(v2, v4);
  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF547FC()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  sub_24FF5F158();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 1184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_24FF5F1C8();
    v5 = sub_24FF4B430(v32, v33, v34, v35);
  }

  v6 = *(v5 + 16);
  if (v6 >= *(v5 + 24) >> 1)
  {
    sub_24FF5F558();
    v5 = sub_24FF4B430(v36, v37, v38, v39);
  }

  v7 = *(v0 + 1224);
  v8 = *(v0 + 140);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 688);
  sub_24FF5F76C();
  *(v5 + 16) = v6 + 1;
  sub_24FF5F128();
  sub_24FF57D68();
  *(v0 + 208) = v5;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 1144);
  if ((v11 & 1) == 0)
  {
    v40 = sub_24FF5F1C8();
    v12 = sub_24FF4B31C(v40, v41, v42, v43);
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    sub_24FF5F558();
    v12 = sub_24FF4B31C(v44, v45, v46, v47);
  }

  v14 = *(v0 + 1168);
  v15 = *(v0 + 1160);
  v54 = *(v0 + 1000);
  v55 = *(v0 + 1176);
  v16 = *(v0 + 904);
  v17 = *(v0 + 760);
  v56 = *(v0 + 704);
  v52 = *(v0 + 696);
  v51 = *(v0 + 464);
  v18 = *(v0 + 424);
  v19 = *(v0 + 392);
  v50 = *(v0 + 400);
  v53 = *(v0 + 768) + 8;
  v20 = *(v0 + 376);
  v49 = *(v0 + 384);
  v21 = *(v0 + 360);
  v22 = v12 + ((*(v0 + 116) + 32) & ~*(v0 + 116)) + *(v0 + 1152) * v13;
  *(v12 + 16) = v13 + 1;
  v23 = v16;
  v24 = v17;
  v15(v22);
  *(v0 + 192) = v12;
  v25 = *(v18 + 20);
  (v15)(v20, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
  sub_24FF61F78();
  (*(v19 + 8))(v50, v49);
  sub_24FF58FDC(v52, type metadata accessor for ObjectStreamingSupport);
  sub_24FF5F230();
  sub_24FF58FDC(v51, v26);
  v55(v23, v24);
  sub_24FF5F03C();
  sub_24FF58FDC(v54, v27);
  sub_24FF58FDC(v56, type metadata accessor for ObjectStreamingSupport);
  v28 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 1080) = v29;
  *v29 = v30;
  v31 = sub_24FF5F0D4();

  return MEMORY[0x2822005A8](v31);
}

uint64_t sub_24FF54AB0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 1248);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 1256) = v0;

  if (v0)
  {
    v9 = *(v3 + 1240);
    sub_24FF3B658(*(v3 + 120), *(v3 + 128), *(v3 + 136));
    v10 = *(v3 + 200);
  }

  else
  {
    sub_24FF3B658(*(v3 + 120), *(v3 + 128), *(v3 + 136));
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF54BD4()
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v1 = *(v0 + 1000);
  v2 = *(v0 + 864);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 664);
  v6 = *(v0 + 352);
  v7 = *(v0 + 104);
  v8 = (v6 + *(*(v0 + 320) + 20));
  v9 = *v8;
  v10 = v8[1];
  *(v0 + 144) = *(v0 + 96);
  *(v0 + 152) = v7;
  v11 = *(v0 + 112);
  *(v0 + 160) = v11;
  sub_24FF56568(v9, v10, v0 + 144);
  sub_24FF5F084();
  sub_24FF58FDC(v5, v12);
  v13 = *(v3 + 8);
  v14 = sub_24FF427BC();
  v15(v14);
  sub_24FF5F03C();
  sub_24FF58FDC(v1, v16);
  sub_24FF5F1F0();
  sub_24FF58FDC(v6, v17);
  v18 = sub_24FF5F61C();
  sub_24FF3B658(v18, v19, v11);
  v20 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 1080) = v21;
  *v21 = v22;
  sub_24FF5F0D4();
  sub_24FF2BCF4();

  return MEMORY[0x2822005A8](v23);
}

uint64_t sub_24FF54CD4()
{
  sub_24FF2BC70();
  v1 = *(v0 + 1264);
  sub_24FF5B164(0);

  v2 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF54D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v12[30] = 0;
  v13 = v12[76];
  v15 = v12[35];
  v14 = v12[36];
  sub_24FF61F98();
  sub_24FF61F88();
  v16 = v12[33];
  if (*(v16 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor))
  {
    v17 = v12[76];
    v18 = *(v16 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor);

    sub_24FF61EF8();
  }

  sub_24FF5F2A8();

  sub_24FF321B0();
  sub_24FF2BCF4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_24FF55068()
{
  sub_24FF2BC70();
  v1 = *(v0 + 1280);
  sub_24FF5B164(*(v0 + 1272));

  v2 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF550D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v13 = v12[159];
  v12[28] = v13;
  v14 = v12[76];
  v16 = v12[35];
  v15 = v12[36];
  sub_24FF61F98();
  sub_24FF61F88();

  v17 = v12[33];
  if (*(v17 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor))
  {
    v18 = v12[76];
    v19 = *(v17 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor);

    sub_24FF61EF8();
  }

  sub_24FF5F2A8();

  sub_24FF321B0();
  sub_24FF2BCF4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_24FF55408()
{
  sub_24FF2BC30();
  (*(v0[131] + 8))(v0[132], v0[130]);
  v0[159] = v0[27];
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v1 = sub_24FF61BC8();
  sub_24FF278EC(v1, qword_280B16930);
  v2 = sub_24FF4C8BC();
  MEMORY[0x25305D050](v2);
  sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF5F9BC();
  if (sub_24FF4CC08())
  {
    sub_24FF42770();
    v3 = sub_24FF5F5E0();
    sub_24FF5F9A4(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v4);
    sub_24FF5F298();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_24FF37EE0(v3, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  sub_24FF5FB9C();
  sub_24FF5F7F4();
  sub_24FF5F194();
  v10 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF55544()
{
  sub_24FF32434();
  v2 = v1[138];
  sub_24FF5F634();
  v3 = v1[120];
  v4 = v1[95];
  v5 = v1[94];
  v6 = v1[96] + 8;
  sub_24FF5F084();
  sub_24FF58FDC(v7, v8);
  v9 = sub_24FF5F734();
  v2(v9);
  sub_24FF5F03C();
  sub_24FF58FDC(v0, v10);
  v11 = sub_24FF5F6B4();
  v12(v11);
  v1[159] = v1[142];
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v13 = sub_24FF61BC8();
  sub_24FF278EC(v13, qword_280B16930);
  v14 = sub_24FF4C8BC();
  MEMORY[0x25305D050](v14);
  sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF5F9BC();
  if (sub_24FF4CC08())
  {
    sub_24FF42770();
    v15 = sub_24FF5F5E0();
    sub_24FF5F9A4(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v16);
    sub_24FF5F298();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_24FF37EE0(v15, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  sub_24FF5FB9C();
  sub_24FF5F7F4();
  sub_24FF5F194();
  v22 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF556BC()
{
  sub_24FF32434();
  v2 = v1[147];
  sub_24FF5F634();
  v3 = v1[113];
  v4 = v1[95];
  v5 = v1[90];
  v6 = v1[96] + 8;
  sub_24FF5F084();
  sub_24FF58FDC(v7, v8);
  v9 = sub_24FF5F734();
  v2(v9);
  sub_24FF5F03C();
  sub_24FF58FDC(v0, v10);
  v11 = sub_24FF5F6B4();
  v12(v11);
  v1[159] = v1[152];
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v13 = sub_24FF61BC8();
  sub_24FF278EC(v13, qword_280B16930);
  v14 = sub_24FF4C8BC();
  MEMORY[0x25305D050](v14);
  sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF5F9BC();
  if (sub_24FF4CC08())
  {
    sub_24FF42770();
    v15 = sub_24FF5F5E0();
    sub_24FF5F9A4(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v16);
    sub_24FF5F298();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_24FF37EE0(v15, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  sub_24FF5FB9C();
  sub_24FF5F7F4();
  sub_24FF5F194();
  v22 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF55834()
{
  sub_24FF32434();
  sub_24FF5F634();
  v2 = v1[108];
  v3 = v1[96];
  v4 = v1[95];
  v5 = v1[83];
  v6 = v1[44];
  sub_24FF5F084();
  sub_24FF58FDC(v7, v8);
  v9 = *(v3 + 8);
  v10 = sub_24FF5F734();
  v11(v10);
  sub_24FF5F03C();
  sub_24FF58FDC(v0, v12);
  v13 = sub_24FF5F6B4();
  v14(v13);
  sub_24FF5F1F0();
  sub_24FF58FDC(v6, v15);
  v1[159] = v1[157];
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v16 = sub_24FF61BC8();
  sub_24FF278EC(v16, qword_280B16930);
  v17 = sub_24FF4C8BC();
  MEMORY[0x25305D050](v17);
  sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF5F9BC();
  if (sub_24FF4CC08())
  {
    sub_24FF42770();
    v18 = sub_24FF5F5E0();
    sub_24FF5F9A4(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v19);
    sub_24FF5F298();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_24FF37EE0(v18, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  sub_24FF5FB9C();
  sub_24FF5F7F4();
  sub_24FF5F194();
  v25 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24FF559B8()
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_24FF61B88();
  sub_24FF2BA9C(v4);
  v7 = ((*(v5 + 80) + 56) & ~*(v5 + 80)) + *(v6 + 64);
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v8 = sub_24FF61F98();
  sub_24FF5F494(v8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[6];
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_24FF32090;
  sub_24FF5FA9C();
  sub_24FF5F920();
  sub_24FF2BCF4();

  return sub_24FF4FEC4(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_24FF55B20()
{
  sub_24FF2C098();
  v3 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v4 = sub_24FF61F98();
  sub_24FF2BA9C(v4);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = v0[6];
  v10 = *(v0 + ((*(v6 + 64) + ((*(v5 + 80) + 56) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_24FF32090;
  sub_24FF5FA9C();
  sub_24FF5F920();

  return sub_24FF4F94C(v9, v12, v13, v14, v15, v10, v3);
}

uint64_t sub_24FF55C78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_24FF61898();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    sub_24FF5E920(v6);
    if (sub_24FF24B70(v6, 1, v7) == 1)
    {
      sub_24FF37EE0(v6, &qword_27F3B42C8, &qword_24FF641A0);
      sub_24FF5E6EC(*(*v1 + 16) - 1, a1);
    }

    else
    {
      v13 = *(v8 + 32);
      v13(v11, v6, v7);
      v13(a1, v11, v7);
    }

    return sub_24FF24B98(a1, 0, 1, v7);
  }

  else
  {

    return sub_24FF24B98(a1, 1, 1, v7);
  }
}

uint64_t sub_24FF55E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ObjectStreamingSupport(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  if (*(*v1 + 16))
  {
    sub_24FF5E9F0(v6);
    if (sub_24FF24B70(v6, 1, v7) == 1)
    {
      sub_24FF37EE0(v6, &qword_27F3B43D0, &qword_24FF63E00);
      sub_24FF5E7C0(*(*v1 + 16) - 1);
    }

    else
    {
      sub_24FF57D68();
      sub_24FF57D68();
    }

    return sub_24FF24B98(a1, 0, 1, v7);
  }

  else
  {

    return sub_24FF24B98(a1, 1, 1, v7);
  }
}

uint64_t sub_24FF55FF4(void *a1)
{
  v3 = type metadata accessor for FieldStreamingSupport(0);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v50 - v8;
  v9 = sub_24FF25460(&qword_27F3B4400, &qword_24FF64130);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v50 - v14);
  v16 = *(v1 + *(type metadata accessor for ObjectStreamingSupport(0) + 20));
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v58 = (v18 + 63) >> 6;
  v55 = v16;

  v22 = 0;
  *&v23 = 136315394;
  v50 = v23;
  v59 = v15;
  v60 = a1;
  v56 = v17;
  v57 = v13;
  v51 = v7;
  v52 = v3;
  while (v20)
  {
    v24 = v7;
    v25 = v3;
    v26 = v22;
LABEL_10:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v27 | (v26 << 6);
    v29 = (*(v55 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v55 + 56) + *(v54 + 72) * v28;
    sub_24FF5C0FC();
    v33 = sub_24FF25460(&qword_27F3B4408, &unk_24FF64138);
    v34 = *(v33 + 48);
    *v13 = v31;
    v13[1] = v30;
    sub_24FF57D68();
    sub_24FF24B98(v13, 0, 1, v33);

    v3 = v25;
    v7 = v24;
    v15 = v59;
    a1 = v60;
LABEL_11:
    sub_24FF5C974(v13, v15);
    v35 = sub_24FF25460(&qword_27F3B4408, &unk_24FF64138);
    if (sub_24FF24B70(v15, 1, v35) == 1)
    {
    }

    v37 = *v15;
    v36 = v15[1];
    v38 = *(v35 + 48);
    sub_24FF57D68();
    if (qword_280B15CC0 != -1)
    {
      swift_once();
    }

    v39 = sub_24FF61BC8();
    sub_24FF278EC(v39, qword_280B16930);

    MEMORY[0x25305D050](a1);
    v40 = sub_24FF61BA8();
    v41 = sub_24FF62008();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v61 = v44;
      *v42 = v50;
      v45 = sub_24FF5BBE0(v37, v36, &v61);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2112;
      if (a1)
      {
        MEMORY[0x25305D050](a1);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        v47 = v46;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      v13 = v57;
      *(v42 + 14) = v46;
      *v43 = v47;
      _os_log_impl(&dword_24FF22000, v40, v41, "Terminating stream for %s with error=%@", v42, 0x16u);
      sub_24FF37EE0(v43, &qword_27F3B42E0, qword_24FF63700);
      MEMORY[0x25305D1B0](v43, -1, -1);
      sub_24FF25A6C(v44);
      MEMORY[0x25305D1B0](v44, -1, -1);
      MEMORY[0x25305D1B0](v42, -1, -1);

      v15 = v59;
      a1 = v60;
      v7 = v51;
      v3 = v52;
    }

    else
    {

      v13 = v57;
    }

    v49 = *(v3 + 20);
    v61 = a1;
    MEMORY[0x25305D050](a1);
    sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    sub_24FF61F88();
    result = sub_24FF58FDC(v7, type metadata accessor for FieldStreamingSupport);
    v17 = v56;
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v58)
    {
      v48 = sub_24FF25460(&qword_27F3B4408, &unk_24FF64138);
      sub_24FF24B98(v13, 1, 1, v48);
      v20 = 0;
      goto LABEL_11;
    }

    v20 = *(v17 + 8 * v26);
    ++v22;
    if (v20)
    {
      v24 = v7;
      v25 = v3;
      v22 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FF56568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FF25460(&qword_27F3B4450, &qword_24FF64198);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = type metadata accessor for JsonObjectFieldContainer();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_24FF25460(&qword_27F3B43C8, &qword_24FF63DF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for FieldStreamingSupport(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 8);
  v31 = *a3;
  v32 = v23;
  v24 = *(a3 + 16);
  v25 = *(v30 + *(type metadata accessor for ObjectStreamingSupport(0) + 20));
  v30 = a1;
  sub_24FF4CC34(a1, a2, v25, v18);
  if (sub_24FF24B70(v18, 1, v19) == 1)
  {
    sub_24FF37EE0(v18, &qword_27F3B43C8, &qword_24FF63DF8);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_24FF62098();
    v38 = v35;
    v39 = v36;
    MEMORY[0x25305C910](0xD00000000000001ALL, 0x800000024FF67BB0);
    MEMORY[0x25305C910](v30, a2);
    MEMORY[0x25305C910](0x2065756C617620, 0xE700000000000000);
    v35 = v31;
    v36 = v32;
    v37 = v24;
    sub_24FF620E8();
    result = sub_24FF62118();
    __break(1u);
  }

  else
  {
    sub_24FF57D68();
    v27 = v31;
    v26 = v32;
    *v14 = v31;
    *(v14 + 1) = v26;
    v14[16] = v24;
    swift_storeEnumTagMultiPayload();
    v28 = *(v19 + 20);
    sub_24FF5C0FC();
    sub_24FF3B644(v27, v26, v24);
    sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    sub_24FF61F78();
    (*(v33 + 8))(v9, v34);
    sub_24FF58FDC(v14, type metadata accessor for JsonObjectFieldContainer);
    return sub_24FF58FDC(v22, type metadata accessor for FieldStreamingSupport);
  }

  return result;
}

void sub_24FF5694C()
{
  sub_24FF277EC();
  v1 = v0;
  v70 = type metadata accessor for FieldStreamingSupport(0);
  v2 = sub_24FF2552C(v70);
  v66 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = v60 - v9;
  v68 = sub_24FF25460(&qword_27F3B4418, &qword_24FF64158);
  sub_24FF2552C(v68);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v14);
  sub_24FF5F938();
  v67 = v15;
  v16 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
  sub_24FF2552C(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v21);
  sub_24FF5F938();
  v74 = v22;
  v73 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v23 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v72 = v60 - v25;
  v26 = *(v1 + 16);
  if (!v26)
  {
LABEL_16:
    sub_24FF277D4();
    return;
  }

  v65 = *MEMORY[0x277D858A0];
  v63 = (v11 + 8);
  v64 = (v11 + 104);
  v61 = (v18 + 16);
  v62 = (v24 + 16);
  v60[0] = v24 + 8;
  v60[1] = v18 + 8;
  v27 = MEMORY[0x277D84F98];
  v28 = (v1 + 40);
  v60[2] = v8;
  while (1)
  {
    v30 = *(v28 - 1);
    v29 = *v28;
    v31 = *(v27 + 16);

    if (v31)
    {

      sub_24FF3AFC8(v30, v29);
      v33 = v32;

      if (v33)
      {

        goto LABEL_15;
      }
    }

    v71 = v26;
    type metadata accessor for JsonObjectFieldContainer();
    v35 = v67;
    v34 = v68;
    (*v64)(v67, v65, v68);
    v36 = v16;
    v37 = v74;
    sub_24FF61F38();
    (*v63)(v35, v34);
    sub_24FF5F914();
    v38 = swift_allocObject();
    *(v38 + 16) = v30;
    *(v38 + 24) = v29;

    sub_24FF5F6A8();
    sub_24FF61F58();
    v39 = *v62;
    v40 = v69;
    v41 = sub_24FF5F688();
    v42(v41);
    v43 = v37;
    v16 = v36;
    v44 = v36;
    v45 = v30;
    (*v61)(&v40[*(v70 + 20)], v43, v44);
    sub_24FF5F110();
    sub_24FF57D68();
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v27;
    v46 = sub_24FF3AFC8(v30, v29);
    if (__OFADD__(*(v27 + 16), (v47 & 1) == 0))
    {
      break;
    }

    v48 = v46;
    v49 = v47;
    sub_24FF25460(&qword_27F3B4420, &unk_24FF64160);
    if (sub_24FF620F8())
    {
      v50 = sub_24FF3AFC8(v45, v29);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_19;
      }

      v48 = v50;
    }

    if (v49)
    {

      v27 = v75;
      sub_24FF5F9E8();
      sub_24FF5E56C();
      v52 = sub_24FF5F9D4();
      v53(v52);
      (*v60[0])(v72, v73);
    }

    else
    {
      v27 = v75;
      *(v75 + 8 * (v48 >> 6) + 64) |= 1 << v48;
      v54 = (*(v27 + 48) + 16 * v48);
      *v54 = v45;
      v54[1] = v29;
      sub_24FF5F9E8();
      sub_24FF5F110();
      sub_24FF57D68();
      v55 = sub_24FF5F9D4();
      v56(v55);
      (*v60[0])(v72, v73);
      v57 = *(v27 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_18;
      }

      *(v27 + 16) = v59;
    }

    v26 = v71;
LABEL_15:
    v28 += 2;
    if (!--v26)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_24FF62178();
  __break(1u);
}

void sub_24FF56EB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_280B15CC0 != -1)
  {
    swift_once();
  }

  v5 = sub_24FF61BC8();
  sub_24FF278EC(v5, qword_280B16930);

  oslog = sub_24FF61BA8();
  v6 = sub_24FF62008();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24FF5BBE0(a2, a3, &v10);
    _os_log_impl(&dword_24FF22000, oslog, v6, "Terminating stream for %s", v7, 0xCu);
    sub_24FF25A6C(v8);
    MEMORY[0x25305D1B0](v8, -1, -1);
    MEMORY[0x25305D1B0](v7, -1, -1);
  }
}

uint64_t sub_24FF57010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ObjectStreamingSupport(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24FF24B70(a1, 1, v14) == 1)
  {
    sub_24FF37EE0(a1, &qword_27F3B43D0, &qword_24FF63E00);
    sub_24FF5E0B4(a2, v9);
    v15 = sub_24FF61898();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_24FF37EE0(v9, &qword_27F3B43D0, &qword_24FF63E00);
  }

  else
  {
    sub_24FF57D68();
    v17 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24FF5E264(v13, a2);
    *v3 = v20;
    v18 = sub_24FF61898();
    return (*(*(v18 - 8) + 8))(a2, v18);
  }
}

uint64_t sub_24FF571FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FF427BC();
  v5 = sub_24FF25460(v3, v4);
  sub_24FF5F494(v5);
  v7 = *(v6 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream;
  sub_24FF5FA14();
  swift_beginAccess();
  sub_24FF5EB34(v1 + v11, v10, &qword_27F3B43B0, &qword_24FF63D90);
  v12 = sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF5F6DC(v10, 1, v12);
  if (!v13)
  {
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  sub_24FF37EE0(v10, &qword_27F3B43B0, &qword_24FF63D90);
  type metadata accessor for JsonStreamEvent(0);
  return sub_24FF61FE8();
}

uint64_t sub_24FF5736C()
{
  sub_24FF2BC7C();
  sub_24FF4EC68();
  sub_24FF5F44C();
  swift_allocError();
  *v0 = 0;
  v0[1] = 0;
  sub_24FF5F488(v0, 3);
  swift_willThrow();
  sub_24FF24BC0();

  return v1();
}

uint64_t StreamingObjectTokenStreamProcessor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_24FF37EE0(v0 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream, &qword_27F3B43B0, &qword_24FF63D90);
  sub_24FF37EE0(v0 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStreamContinuation, &qword_27F3B43A8, &qword_24FF63D88);
  v3 = *(v0 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);

  sub_24FF25A6C((v0 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_sanitizer));
  v4 = *(v0 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor);

  return v0;
}

uint64_t StreamingObjectTokenStreamProcessor.__deallocating_deinit()
{
  StreamingObjectTokenStreamProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24FF5754C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF32090;

  return sub_24FF4F2FC();
}

uint64_t StreamingObjectTokenStreamProcessor.stream<A>(parentObjectID:field:of:)()
{
  sub_24FF2BC70();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = sub_24FF61898();
  v1[12] = v8;
  sub_24FF2BA9C(v8);
  v1[13] = v9;
  v1[14] = *(v10 + 64);
  v1[15] = sub_24FF2BE24();
  v11 = sub_24FF25460(&qword_27F3B43C8, &qword_24FF63DF8);
  sub_24FF5F494(v11);
  v13 = *(v12 + 64);
  v1[16] = sub_24FF2BE24();
  v14 = type metadata accessor for FieldStreamingSupport(0);
  v1[17] = v14;
  sub_24FF2BA9C(v14);
  v1[18] = v15;
  v1[19] = *(v16 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v17 = sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  sub_24FF5F494(v17);
  v19 = *(v18 + 64);
  v1[22] = sub_24FF2BE24();
  v20 = type metadata accessor for ObjectStreamingSupport(0);
  v1[23] = v20;
  sub_24FF5F494(v20);
  v22 = *(v21 + 64);
  v1[24] = sub_24FF2BE24();
  v23 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_24FF577B4()
{
  sub_24FF2BC70();
  *(v0 + 200) = *(*(v0 + 88) + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);
  sub_24FF5F8CC();
  v1 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24FF57820()
{
  sub_24FF2BC70();
  v1 = *(v0 + 200);
  sub_24FF5FA14();
  swift_beginAccess();
  *(v0 + 208) = *(v1 + 112);

  v2 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF5789C()
{
  v1 = *(v0 + 184);
  sub_24FF4CCF8(*(v0 + 48), *(v0 + 208), *(v0 + 176));

  v2 = sub_24FF5F710();
  sub_24FF5F6DC(v2, v3, v1);
  if (v4)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 48);
    sub_24FF37EE0(*(v0 + 176), &qword_27F3B43D0, &qword_24FF63E00);
    sub_24FF62098();
    MEMORY[0x25305C910](0xD000000000000035, 0x800000024FF67460);
    sub_24FF5F054();
    sub_24FF5E51C(v7, v8);
    v9 = sub_24FF62148();
    MEMORY[0x25305C910](v9);

    sub_24FF4EC68();
    sub_24FF5F44C();
    v10 = swift_allocError();
    sub_24FF5FB7C(v10, v11);
LABEL_6:
    v29 = *(v0 + 192);
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v32 = *(v0 + 160);
    v34 = *(v0 + 120);
    v33 = *(v0 + 128);

    sub_24FF24BC0();
    goto LABEL_8;
  }

  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 176);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  sub_24FF5F128();
  sub_24FF57D68();
  sub_24FF4CC34(v18, v17, *(v12 + *(v13 + 20)), v16);
  v19 = sub_24FF5F710();
  v21 = sub_24FF24B70(v19, v20, v15);
  v22 = *(v0 + 192);
  if (v21 == 1)
  {
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    sub_24FF37EE0(*(v0 + 128), &qword_27F3B43C8, &qword_24FF63DF8);
    sub_24FF62098();

    v25 = sub_24FF4C758();
    MEMORY[0x25305C910](v25);
    sub_24FF4EC68();
    sub_24FF5F44C();
    v26 = swift_allocError();
    sub_24FF5FB7C(v26, v27);
    sub_24FF5F084();
    sub_24FF58FDC(v22, v28);
    goto LABEL_6;
  }

  v36 = *(v0 + 168);
  v37 = *(v0 + 160);
  v38 = *(v0 + 120);
  v59 = *(v0 + 128);
  v60 = *(v0 + 176);
  v51 = *(v0 + 112);
  v58 = *(v0 + 192);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v54 = *(v0 + 152);
  v55 = *(v0 + 64);
  v41 = *(v0 + 48);
  v52 = *(v0 + 144);
  v53 = *(v0 + 56);
  v56 = *(v0 + 88);
  v57 = *(v0 + 40);
  v61 = *(v0 + 72);
  sub_24FF5F110();
  sub_24FF57D68();
  sub_24FF25460(&qword_27F3B43D8, &qword_24FF63E08);
  v42 = swift_allocBox();
  sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  sub_24FF61ED8();
  (*(v39 + 16))(v38, v41, v40);
  sub_24FF5F248();
  sub_24FF5C0FC();
  v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
  v44 = (v51 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v52 + 80) + v44 + 8) & ~*(v52 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v61;
  *(v46 + 32) = v42;
  *(v46 + 40) = v53;
  *(v46 + 48) = v55;
  (*(v39 + 32))(v46 + v43, v38, v40);
  *(v46 + v44) = v56;
  sub_24FF57D68();

  sub_24FF61FE8();
  v47 = sub_24FF5F810();
  sub_24FF58FDC(v47, v48);
  sub_24FF5F084();
  sub_24FF58FDC(v58, v49);

  sub_24FF321B0();
LABEL_8:

  return v35();
}

uint64_t sub_24FF57D68()
{
  v1 = sub_24FF266C4();
  v3 = v2(v1);
  sub_24FF26754(v3);
  v5 = *(v4 + 32);
  v6 = sub_24FF4259C();
  v7(v6);
  return v0;
}

uint64_t sub_24FF57DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v17;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v8[16] = a1;
  v8[17] = a3;
  v9 = sub_24FF61898();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v12 = *(*(sub_24FF25460(&qword_27F3B4428, &qword_24FF64170) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v13 = type metadata accessor for JsonObjectFieldContainer();
  v8[32] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = sub_24FF25460(&qword_27F3B43D8, &qword_24FF63E08);
  v8[38] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF57F74, 0, 0);
}

uint64_t sub_24FF57F74()
{
  sub_24FF2BC70();
  v1 = *(v0 + 304);
  sub_24FF5F6D0();
  swift_beginAccess();
  v2 = *(MEMORY[0x277D858C0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 312) = v3;
  *v3 = v4;
  v5 = sub_24FF5F520(v3);

  return MEMORY[0x2822005B0](v5);
}

uint64_t sub_24FF57FF4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF580F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v195 = v12;
  v15 = *(v12 + 248);
  v14 = *(v12 + 256);
  v16 = sub_24FF5F81C();
  sub_24FF5F6DC(v16, v17, v18);
  if (v19)
  {
    sub_24FF37EE0(v15, &qword_27F3B4428, &qword_24FF64170);
    if (qword_280B15CC0 != -1)
    {
      sub_24FF5F0B4();
    }

    v21 = *(v12 + 200);
    v20 = *(v12 + 208);
    v22 = *(v12 + 192);
    v24 = *(v12 + 144);
    v23 = *(v12 + 152);
    v25 = sub_24FF61BC8();
    sub_24FF278EC(v25, qword_280B16930);
    v26 = *(v21 + 16);
    v27 = sub_24FF5F648();
    v28(v27);

    v29 = sub_24FF61BA8();
    LOBYTE(v23) = sub_24FF62008();

    v30 = os_log_type_enabled(v29, v23);
    v32 = *(v12 + 200);
    v31 = *(v12 + 208);
    v33 = *(v12 + 192);
    if (v30)
    {
      v35 = *(v12 + 136);
      v34 = *(v12 + 144);
      v36 = sub_24FF5FBCC();
      v193 = sub_24FF5FBB4();
      *v36 = 136315394;
      v37 = sub_24FF5BBE0(v35, v34, &v193);
      sub_24FF5F880(v37);
      sub_24FF5F054();
      sub_24FF5E51C(v38, v39);
      sub_24FF62148();
      sub_24FF5FA7C();
      v40 = *(v32 + 8);
      v41 = sub_24FF5F740();
      v42(v41);
      v43 = sub_24FF5F628();
      v46 = sub_24FF5BBE0(v43, v44, v45);

      *(v36 + 14) = v46;
      sub_24FF5F4E4();
      _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
      sub_24FF5F908();
      swift_arrayDestroy();
      sub_24FF4C84C();
      sub_24FF42634();
    }

    else
    {

      v75 = *(v32 + 8);
      v76 = sub_24FF5F740();
      v77(v76);
    }

LABEL_25:
    v138 = *(v12 + 280);
    v139 = *(v12 + 288);
    sub_24FF5F4A0();
    v140 = *(v12 + 216);
    v192 = *(v12 + 208);
    v141 = *(v12 + 176);
    v142 = *(v12 + 128);
    sub_24FF5F4D8();
    sub_24FF24B98(v143, v144, v145, v146);

    sub_24FF321B0();
LABEL_26:
    sub_24FF5FB20();

    __asm { BRAA            X1, X16 }
  }

  v52 = *(v12 + 288);
  sub_24FF5F5B8();
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v54 = *(v12 + 280);
  v53 = *(v12 + 288);
  v55 = *(v12 + 144);
  v56 = sub_24FF61BC8();
  sub_24FF278EC(v56, qword_280B16930);
  sub_24FF5F09C();
  sub_24FF32440();
  sub_24FF5C0FC();

  v57 = sub_24FF61BA8();
  LOBYTE(v54) = sub_24FF62008();

  v58 = os_log_type_enabled(v57, v54);
  v59 = *(v12 + 280);
  if (v58)
  {
    v60 = *(v12 + 272);
    v190 = *(v12 + 256);
    v61 = *(v12 + 136);
    v62 = *(v12 + 144);
    v63 = sub_24FF5FBCC();
    v193 = sub_24FF5FBB4();
    v13 = v193;
    *v63 = 136315394;
    v64 = sub_24FF5BBE0(v61, v62, &v193);
    sub_24FF5F880(v64);
    sub_24FF5F09C();
    sub_24FF5F61C();
    sub_24FF5C0FC();
    sub_24FF61D48();
    sub_24FF5F06C();
    sub_24FF58FDC(v59, v65);
    v66 = sub_24FF5F92C();
    v69 = sub_24FF5BBE0(v66, v67, v68);

    *(v63 + 14) = v69;
    sub_24FF5F4E4();
    _os_log_impl(v70, v71, v72, v73, v74, 0x16u);
    sub_24FF5F908();
    swift_arrayDestroy();
    sub_24FF42670();
    sub_24FF42634();
  }

  else
  {

    sub_24FF5F06C();
    sub_24FF58FDC(v59, v78);
  }

  v79 = *(v12 + 288);
  v80 = *(v12 + 256);
  v81 = *(v12 + 264);
  sub_24FF5F09C();
  sub_24FF5C0FC();
  sub_24FF4C758();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(*(v12 + 200) + 32))(*(v12 + 240), *(v12 + 264), *(v12 + 192));
      v155 = sub_24FF61BA8();
      v156 = sub_24FF62008();
      if (sub_24FF4C944(v156))
      {
        *sub_24FF5F98C() = 0;
        sub_24FF4C868();
        _os_log_impl(v157, v158, v159, v160, v161, 2u);
        sub_24FF42670();
      }

      v163 = *(v12 + 232);
      v162 = *(v12 + 240);
      v164 = *(v12 + 192);
      v165 = *(v12 + 200);
      v166 = *(v12 + 160);

      v167 = *(v165 + 16);
      v168 = sub_24FF4C758();
      v169(v168);
      *(v12 + 40) = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
      sub_24FF5F208();
      *(v12 + 48) = sub_24FF5E51C(v170, v171);
      *(v12 + 16) = v166;
      v172 = *(MEMORY[0x277D0DCB8] + 4);

      swift_task_alloc();
      sub_24FF2BC3C();
      *(v12 + 328) = v173;
      *v173 = v174;
      v173[1] = sub_24FF58AF0;
      v175 = *(v12 + 232);
      v176 = *(v12 + 176);
      v177 = *(v12 + 184);
      v178 = *(v12 + 128);
      sub_24FF5F890();
      sub_24FF5FB20();

      return MEMORY[0x282165FE0](v179, v180, v181, v182, v183, v184, v185, v186, a9, a10, a11, a12);
    case 2u:
      v108 = *(v12 + 216);
      v109 = *(v12 + 224);
      v110 = *(v12 + 192);
      v111 = *(v12 + 200);
      (*(v111 + 32))(v109, *(v12 + 264), v110);
      (*(v111 + 16))(v108, v109, v110);
      v112 = sub_24FF61BA8();
      v113 = sub_24FF62008();
      v114 = os_log_type_enabled(v112, v113);
      v115 = *(v12 + 288);
      v116 = *(v12 + 216);
      v117 = *(v12 + 224);
      v119 = *(v12 + 192);
      v118 = *(v12 + 200);
      if (v114)
      {
        v191 = *(v12 + 288);
        v120 = sub_24FF42770();
        v193 = sub_24FF4CA88();
        *v120 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v121, v122);
        v123 = sub_24FF62148();
        v125 = v124;
        v126 = *(v118 + 8);
        v127 = sub_24FF5F810();
        v126(v127);
        sub_24FF5BBE0(v123, v125, &v193);
        sub_24FF4C8BC();

        *(v120 + 4) = v116;
        _os_log_impl(&dword_24FF22000, v112, v113, "Top level array start marker received with id=%s", v120, 0xCu);
        sub_24FF5F654();
        sub_24FF42670();

        (v126)(v117, v119);
        sub_24FF5F06C();
        v129 = v191;
      }

      else
      {

        v187 = *(v118 + 8);
        v188 = sub_24FF5F810();
        v187(v188);
        (v187)(v117, v119);
        sub_24FF5F06C();
        v129 = v115;
      }

      goto LABEL_24;
    case 3u:
      v130 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F968();
      v132 = os_log_type_enabled(v130, v131);
      v105 = *(v12 + 288);
      if (v132)
      {
        *sub_24FF5F98C() = 0;
        sub_24FF5F298();
        _os_log_impl(v133, v134, v135, v136, v137, 2u);
        sub_24FF42634();
      }

      goto LABEL_23;
    case 4u:
      v98 = *(v12 + 144);

      v99 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F8E4();

      if (sub_24FF5FBE4())
      {
        v101 = *(v12 + 136);
        v100 = *(v12 + 144);
        sub_24FF42770();
        v102 = sub_24FF5F6F4();
        v193 = v102;
        *v13 = 136315138;
        *(v13 + 4) = sub_24FF5BBE0(v101, v100, &v193);
        sub_24FF5F778(&dword_24FF22000, v103, v104, "Top level array END marker received, will terminate stream for field %s");
        sub_24FF25A6C(v102);
        sub_24FF42670();
        sub_24FF4C84C();
      }

      v105 = *(v12 + 288);
      v106 = *(v12 + 168);
      v107 = *(type metadata accessor for FieldStreamingSupport(0) + 20);
      *(v12 + 120) = 0;
      sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
      sub_24FF61F88();
LABEL_23:
      v128 = type metadata accessor for JsonObjectFieldContainer;
      v129 = v105;
LABEL_24:
      sub_24FF58FDC(v129, v128);
      if (sub_24FF61F08())
      {
        goto LABEL_25;
      }

      v149 = *(v12 + 304);
      sub_24FF5F6D0();
      swift_beginAccess();
      v150 = *(MEMORY[0x277D858C0] + 4);
      swift_task_alloc();
      sub_24FF2BC3C();
      *(v12 + 312) = v151;
      *v151 = v152;
      sub_24FF5F520();
      sub_24FF5FB20();

      return MEMORY[0x2822005B0](v153);
    default:
      v82 = *(v12 + 288);
      v83 = *(v12 + 264);
      v84 = *v83;
      v85 = v83[1];
      v86 = *(v83 + 16);
      v193 = 0;
      v194 = 0xE000000000000000;
      sub_24FF62098();
      v87 = v194;
      *(v12 + 104) = v193;
      *(v12 + 112) = v87;
      MEMORY[0x25305C910](0xD00000000000001ALL, 0x800000024FF676C0);
      *(v12 + 80) = v84;
      *(v12 + 88) = v85;
      *(v12 + 96) = v86;
      sub_24FF620E8();
      v88 = sub_24FF427BC();
      sub_24FF3B658(v88, v89, v86);
      MEMORY[0x25305C910](0xD000000000000012, 0x800000024FF676E0);
      v90 = *(v12 + 104);
      v91 = *(v12 + 112);
      sub_24FF4EC68();
      sub_24FF5F44C();
      swift_allocError();
      *v92 = v90;
      v92[1] = v91;
      sub_24FF5F488(v92, 2);
      swift_willThrow();
      sub_24FF5F06C();
      sub_24FF58FDC(v82, v93);
      v95 = *(v12 + 280);
      v94 = *(v12 + 288);
      sub_24FF5F4A0();
      v96 = *(v12 + 208);
      v97 = *(v12 + 216);

      sub_24FF24BC0();
      goto LABEL_26;
  }
}

uint64_t sub_24FF58AF0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 328);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF58BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v14 = sub_24FF5FAC8();
  v15(v14);
  sub_24FF5F06C();
  sub_24FF58FDC(v12, v16);
  v17 = v13[35];
  v18 = v13[36];
  sub_24FF5F4A0();
  v19 = v13[27];
  v35 = v13[26];
  v20 = v13[22];
  v21 = v13[16];
  sub_24FF5F6C4();
  sub_24FF24B98(v22, v23, v24, v25);

  sub_24FF321B0();
  sub_24FF2BCF4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_24FF58CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  swift_endAccess();
  v26 = v12[40];
  v14 = v12[35];
  v13 = v12[36];
  sub_24FF5F4A0();
  v15 = v12[26];
  v16 = v12[27];

  sub_24FF24BC0();
  sub_24FF2BCF4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_24FF58D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v14 = sub_24FF5FAC8();
  v15(v14);
  sub_24FF5F06C();
  sub_24FF58FDC(v12, v16);
  v30 = v13[42];
  v18 = v13[35];
  v17 = v13[36];
  sub_24FF5F4A0();
  v19 = v13[26];
  v20 = v13[27];

  sub_24FF24BC0();
  sub_24FF2BCF4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_24FF58E70()
{
  sub_24FF2C098();
  v2 = v0[3];
  v25 = v0[2];
  v3 = sub_24FF61898();
  sub_24FF2BA9C(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 56) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for FieldStreamingSupport(0);
  sub_24FF5F494(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = *(v0 + v6);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_24FF32090;
  sub_24FF5FA9C();
  sub_24FF5FA2C();
  sub_24FF2BCF4();

  return sub_24FF57DBC(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_24FF58FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_24FF26754(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t StreamingObjectTokenStreamProcessor.stream<A>(objectID:field:of:)()
{
  sub_24FF2BC70();
  sub_24FF5FA88(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF61898();
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = sub_24FF2BE24();
  v11 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v0[12] = v11;
  sub_24FF2BA9C(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = sub_24FF2BE24();
  v15 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24FF59130()
{
  sub_24FF2BC70();
  *(v0 + 120) = *(*(v0 + 64) + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);
  sub_24FF5F8CC();
  v1 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24FF5919C()
{
  sub_24FF2BC7C();
  v1 = v0[15];
  sub_24FF5AAF4(v0[3], v0[4], v0[5], v0[14]);
  v0[16] = 0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF59230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_24FF5F8B0();
  a21 = v23;
  a22 = v24;
  sub_24FF5F9FC();
  a20 = v22;
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v26 = v22[10];
  v25 = v22[11];
  v27 = v22[9];
  v28 = v22[5];
  v29 = v22[3];
  v30 = sub_24FF61BC8();
  sub_24FF278EC(v30, qword_280B16930);
  v31 = *(v26 + 16);
  v32 = sub_24FF5F648();
  v33(v32);

  v34 = sub_24FF61BA8();
  LOBYTE(v29) = sub_24FF62008();

  v35 = os_log_type_enabled(v34, v29);
  v37 = v22[10];
  v36 = v22[11];
  v38 = v22[9];
  if (v35)
  {
    v39 = v22[5];
    v87 = v22[6];
    v40 = v22[4];
    v41 = sub_24FF4CA88();
    a11 = swift_slowAlloc();
    *v41 = 136315650;
    v42 = sub_24FF5FA5C();
    v45 = sub_24FF5BBE0(v42, v43, v44);
    sub_24FF5F880(v45);
    sub_24FF5F054();
    sub_24FF5E51C(v46, v47);
    v48 = sub_24FF62148();
    v50 = v49;
    v51 = *(v37 + 8);
    v52 = sub_24FF5F92C();
    v53(v52);
    v54 = sub_24FF5BBE0(v48, v50, &a11);

    *(v41 + 14) = v54;
    *(v41 + 22) = 2080;
    v55 = sub_24FF62288();
    v57 = sub_24FF5BBE0(v55, v56, &a11);

    *(v41 + 24) = v57;
    sub_24FF5F4E4();
    _os_log_impl(v58, v59, v60, v61, v62, 0x20u);
    sub_24FF5F908();
    swift_arrayDestroy();
    sub_24FF4C84C();
    sub_24FF42634();
  }

  else
  {

    v63 = *(v37 + 8);
    v64 = sub_24FF5F92C();
    v65(v64);
  }

  v67 = v22[13];
  v66 = v22[14];
  v68 = v22[12];
  v88 = v22[11];
  v69 = v22[7];
  v70 = v22[4];
  v71 = v22[5];
  v72 = v22[2];
  sub_24FF25460(&qword_27F3B43D8, &qword_24FF63E08);
  v73 = swift_allocBox();
  sub_24FF61ED8();
  sub_24FF5FA20();
  v74 = swift_allocObject();
  v74[2] = v69;
  v74[3] = v73;
  v74[4] = v70;
  v74[5] = v71;

  sub_24FF61FE8();
  v75 = *(v67 + 8);
  v76 = sub_24FF5F648();
  v77(v76);

  sub_24FF321B0();
  sub_24FF5F798();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, v88, a11, a12, a13, a14);
}

uint64_t sub_24FF59518()
{
  sub_24FF2BC70();
  v1 = v0[14];
  v2 = v0[11];

  sub_24FF24BC0();
  v4 = v0[16];

  return v3();
}

uint64_t sub_24FF59580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a1;
  v5[12] = a3;
  v6 = sub_24FF62028();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(sub_24FF25460(&qword_27F3B4428, &qword_24FF64170) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = type metadata accessor for JsonObjectFieldContainer();
  v5[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = sub_24FF25460(&qword_27F3B43D8, &qword_24FF63E08);
  v5[25] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF596FC, 0, 0);
}

uint64_t sub_24FF596FC()
{
  sub_24FF2BC70();
  v1 = *(v0 + 200);
  sub_24FF5F6D0();
  swift_beginAccess();
  v2 = *(MEMORY[0x277D858C0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 208) = v3;
  *v3 = v4;
  v5 = sub_24FF5F4F4(v3);

  return MEMORY[0x2822005B0](v5);
}

uint64_t sub_24FF5977C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF5987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_24FF5F8B0();
  a21 = v24;
  a22 = v25;
  sub_24FF5F9FC();
  a20 = v22;
  v27 = *(v22 + 144);
  v26 = *(v22 + 152);
  v28 = sub_24FF5F81C();
  sub_24FF5F6DC(v28, v29, v30);
  if (v31)
  {
    sub_24FF37EE0(v27, &qword_27F3B4428, &qword_24FF64170);
    if (qword_280B15CC0 != -1)
    {
      sub_24FF5F0B4();
    }

    v32 = *(v22 + 104);
    v33 = sub_24FF61BC8();
    sub_24FF278EC(v33, qword_280B16930);

    v34 = sub_24FF61BA8();
    sub_24FF62008();
    sub_24FF5F8E4();

    if (sub_24FF5FBE4())
    {
      v36 = *(v22 + 96);
      v35 = *(v22 + 104);
      sub_24FF42770();
      v37 = sub_24FF5F6F4();
      a9 = v37;
      *v23 = 136315138;
      *(v23 + 4) = sub_24FF5BBE0(v36, v35, &a9);
      sub_24FF5F778(&dword_24FF22000, v38, v39, "Field Stream %s is terminating");
      sub_24FF25A6C(v37);
      sub_24FF42670();
      sub_24FF4C84C();
    }

    goto LABEL_15;
  }

  v40 = *(v22 + 184);
  sub_24FF5F5B8();
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4();
  }

  v41 = *(v22 + 176);
  v42 = *(v22 + 184);
  v43 = *(v22 + 104);
  v44 = sub_24FF61BC8();
  sub_24FF278EC(v44, qword_280B16930);
  sub_24FF5F09C();
  sub_24FF32270();
  sub_24FF5C0FC();

  v45 = sub_24FF61BA8();
  sub_24FF62008();
  sub_24FF5F8E4();

  v46 = sub_24FF5FBE4();
  v47 = *(v22 + 176);
  if (v46)
  {
    v48 = *(v22 + 168);
    v49 = *(v22 + 152);
    v51 = *(v22 + 96);
    v50 = *(v22 + 104);
    v52 = sub_24FF5FBCC();
    a9 = sub_24FF5FBB4();
    *v52 = 136315394;
    v53 = sub_24FF5FA5C();
    *(v52 + 4) = sub_24FF5BBE0(v53, v54, v55);
    *(v52 + 12) = 2080;
    sub_24FF5F09C();
    sub_24FF5F944();
    sub_24FF5C0FC();
    sub_24FF5F61C();
    v56 = sub_24FF61D48();
    v58 = v57;
    sub_24FF5F06C();
    sub_24FF58FDC(v47, v59);
    v60 = sub_24FF5BBE0(v56, v58, &a9);

    *(v52 + 14) = v60;
    sub_24FF4C868();
    _os_log_impl(v61, v62, v63, v64, v65, 0x16u);
    swift_arrayDestroy();
    sub_24FF42634();
    sub_24FF42670();
  }

  else
  {

    sub_24FF5F06C();
    sub_24FF58FDC(v47, v66);
  }

  v67 = *(v22 + 184);
  v68 = *(v22 + 152);
  v69 = *(v22 + 160);
  sub_24FF5F09C();
  sub_24FF5C0FC();
  sub_24FF32270();
  if (!swift_getEnumCaseMultiPayload())
  {
    v89 = *(v22 + 160);
    v90 = *v89;
    v91 = v89[1];
    switch(*(v89 + 16))
    {
      case 1:
        *(v22 + 40) = MEMORY[0x277D839B0];
        *(v22 + 16) = v90 & 1;
        break;
      case 2:
        v98 = MEMORY[0x277D83B88];
        goto LABEL_28;
      case 3:
        v98 = MEMORY[0x277D839F8];
LABEL_28:
        *(v22 + 40) = v98;
        *(v22 + 16) = v90;
        break;
      case 4:
        *(v22 + 40) = &type metadata for JsonNull;
        break;
      default:
        *(v22 + 40) = MEMORY[0x277D837D0];
        *(v22 + 16) = v90;
        *(v22 + 24) = v91;
        break;
    }

    v99 = *(v22 + 136);
    v100 = *(v22 + 112);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v113 = *(v22 + 184);
      v114 = *(v22 + 152);
      v116 = *(v22 + 128);
      v115 = *(v22 + 136);
      v117 = *(v22 + 112);
      v118 = *(v22 + 120);
      sub_24FF5F4D8();
      sub_24FF24B98(v119, v120, v121, v117);
      v122 = *(v116 + 8);
      v123 = sub_24FF5F810();
      v124(v123);
      a9 = 0;
      a10 = 0xE000000000000000;
      sub_24FF62098();
      v125 = a10;
      *(v22 + 72) = a9;
      *(v22 + 80) = v125;
      MEMORY[0x25305C910](0x742064656C696146, 0xEF2074736163206FLL);
      sub_24FF4259C();
      sub_24FF620E8();
      MEMORY[0x25305C910](0xD000000000000014, 0x800000024FF67670);
      v126 = sub_24FF62288();
      MEMORY[0x25305C910](v126);

      v127 = *(v22 + 72);
      v128 = *(v22 + 80);
      sub_24FF4EC68();
      sub_24FF5F44C();
      swift_allocError();
      *v129 = v127;
      v129[1] = v128;
      sub_24FF5F488(v129, 2);
      swift_willThrow();
      sub_24FF5F06C();
      sub_24FF58FDC(v113, v130);
      v132 = *(v22 + 176);
      v131 = *(v22 + 184);
      v134 = *(v22 + 160);
      v133 = *(v22 + 168);
      v136 = *(v22 + 136);
      v135 = *(v22 + 144);

      sub_24FF24BC0();
      goto LABEL_17;
    }

    v101 = *(v22 + 184);
    v102 = *(v22 + 136);
    v103 = *(v22 + 112);
    v104 = *(v22 + 88);
    sub_24FF5F06C();
    sub_24FF58FDC(v105, v106);
    sub_24FF5F6C4();
    sub_24FF24B98(v107, v108, v109, v103);
    v110 = *(*(v103 - 8) + 32);
    v111 = sub_24FF5F8FC();
    v112(v111);
    v73 = 0;
LABEL_16:
    v74 = *(v22 + 176);
    v75 = *(v22 + 184);
    v77 = *(v22 + 160);
    v76 = *(v22 + 168);
    v79 = *(v22 + 136);
    v78 = *(v22 + 144);
    sub_24FF24B98(*(v22 + 88), v73, 1, *(v22 + 112));

    sub_24FF321B0();
LABEL_17:
    sub_24FF5F798();

    return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
  }

  v70 = *(v22 + 160);
  sub_24FF58FDC(*(v22 + 184), type metadata accessor for JsonObjectFieldContainer);
  v71 = sub_24FF32270();
  sub_24FF58FDC(v71, v72);
  if (sub_24FF61F08())
  {
LABEL_15:
    v73 = 1;
    goto LABEL_16;
  }

  v92 = *(v22 + 200);
  sub_24FF5F6D0();
  swift_beginAccess();
  v93 = *(MEMORY[0x277D858C0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v22 + 208) = v94;
  *v94 = v95;
  sub_24FF5F4F4();
  sub_24FF5F798();

  return MEMORY[0x2822005B0](v96);
}

uint64_t sub_24FF59E80()
{
  sub_24FF2BC30();
  swift_endAccess();
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[17];
  v6 = v0[18];

  sub_24FF24BC0();

  return v8();
}

uint64_t StreamingObjectTokenStreamProcessor.enumStream<A>(objectID:field:)()
{
  sub_24FF2BC70();
  sub_24FF5FA88(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF59FD4()
{
  sub_24FF2BC70();
  *(v0 + 96) = *(*(v0 + 64) + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);
  sub_24FF5F8CC();
  v1 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24FF5A040()
{
  sub_24FF2BC7C();
  v1 = v0[12];
  sub_24FF5AAF4(v0[3], v0[4], v0[5], v0[11]);
  v0[13] = 0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF5A0D4()
{
  sub_24FF2C098();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  sub_24FF5FA20();
  v7 = swift_allocObject();
  v13 = *(v0 + 48);
  *(v7 + 16) = v13;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v8 = sub_24FF5E61C(&qword_27F3B43F0, &qword_27F3B43E0, &qword_24FF63E10);

  sub_24FF242B0(sub_24FF5C0DC, v7, v3, v13, v8, v6);

  v9 = sub_24FF5F6B4();
  v10(v9);

  sub_24FF321B0();

  return v11();
}

uint64_t sub_24FF5A1FC()
{
  sub_24FF2BC70();
  v1 = *(v0 + 88);

  sub_24FF24BC0();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_24FF5A258@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a2;
  v26 = a4;
  v27 = a1;
  v5 = sub_24FF62028();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for JsonObjectFieldContainer();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FF5C0FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_24FF4EC68();
      swift_allocError();
      *v14 = 0xD000000000000029;
      *(v14 + 8) = 0x800000024FF675D0;
      *(v14 + 16) = 2;
      swift_willThrow();
      return sub_24FF58FDC(v13, type metadata accessor for JsonObjectFieldContainer);
    case 3u:
    case 4u:
      sub_24FF4EC68();
      swift_allocError();
      *v16 = 0xD000000000000029;
      *(v16 + 8) = 0x800000024FF675D0;
      goto LABEL_16;
    default:
      v17 = *v13;
      v18 = *(v13 + 1);
      switch(v13[16])
      {
        case 1:
          v32 = MEMORY[0x277D839B0];
          LOBYTE(v30) = v17 & 1;
          break;
        case 2:
          v19 = MEMORY[0x277D83B88];
          goto LABEL_9;
        case 3:
          v19 = MEMORY[0x277D839F8];
LABEL_9:
          v32 = v19;
          v30 = v17;
          break;
        case 4:
          v32 = &type metadata for JsonNull;
          break;
        default:
          v32 = MEMORY[0x277D837D0];
          v30 = v17;
          v31 = v18;
          break;
      }

      if (swift_dynamicCast())
      {
        v20 = v28;
        v21 = v29;
        v30 = v28;
        v31 = v29;

        sub_24FF61E78();
        if (sub_24FF24B70(v9, 1, a3) != 1)
        {

          return (*(*(a3 - 8) + 32))(v26, v9, a3);
        }

        (*(v6 + 8))(v9, v5);
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_24FF62098();
        MEMORY[0x25305C910](0x617620646C656946, 0xEC0000002065756CLL);
        MEMORY[0x25305C910](v20, v21);

        MEMORY[0x25305C910](0xD000000000000029, 0x800000024FF67640);
        v22 = v27;
        v23 = v33;
      }

      else
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_24FF62098();

        v30 = 0xD000000000000015;
        v31 = 0x800000024FF67600;
        MEMORY[0x25305C910](v27, v33);
        v22 = 0xD000000000000010;
        v23 = 0x800000024FF67620;
      }

      MEMORY[0x25305C910](v22, v23);
      v24 = v30;
      v25 = v31;
      sub_24FF4EC68();
      swift_allocError();
      *v16 = v24;
      *(v16 + 8) = v25;
LABEL_16:
      *(v16 + 16) = 2;
      return swift_willThrow();
  }
}

uint64_t sub_24FF5A6C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF32090;

  return StreamingObjectTokenStreamProcessor.stream<A>(parentObjectID:field:of:)();
}

uint64_t sub_24FF5A7A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF32090;

  return StreamingObjectTokenStreamProcessor.enumStream<A>(objectID:field:)();
}

uint64_t sub_24FF5A880()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF32090;

  return StreamingObjectTokenStreamProcessor.stream<A>(objectID:field:of:)();
}

uint64_t sub_24FF5A95C(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_24FF61898();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  sub_24FF5C0FC();
  v11 = type metadata accessor for ObjectStreamingSupport(0);
  sub_24FF24B98(v5, 0, 1, v11);
  swift_beginAccess();
  sub_24FF57010(v5, v9);
  swift_endAccess();
  return sub_24FF5C0FC();
}

uint64_t sub_24FF5AAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v54 = a2;
  v55 = a3;
  v50 = a4;
  v7 = type metadata accessor for ObjectStreamingSupport(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v51 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = sub_24FF25460(&qword_27F3B43C8, &qword_24FF63DF8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  swift_beginAccess();
  v52 = v5;
  v28 = *(v5 + 112);

  v53 = a1;
  sub_24FF4CCF8(a1, v28, v18);
  v29 = v7;

  if (sub_24FF24B70(v18, 1, v7))
  {
    sub_24FF37EE0(v18, &qword_27F3B43D0, &qword_24FF63E00);
    v31 = v54;
    v30 = v55;
  }

  else
  {
    v32 = v24;
    v33 = v50;
    sub_24FF5C0FC();
    sub_24FF37EE0(v18, &qword_27F3B43D0, &qword_24FF63E00);
    v34 = *&v12[*(v7 + 20)];

    sub_24FF58FDC(v12, type metadata accessor for ObjectStreamingSupport);
    v31 = v54;
    v35 = v55;
    sub_24FF4CC34(v54, v55, v34, v22);

    v36 = type metadata accessor for FieldStreamingSupport(0);
    if (sub_24FF24B70(v22, 1, v36) != 1)
    {
      (*(v32 + 16))(v27, v22, v23);
      sub_24FF58FDC(v22, type metadata accessor for FieldStreamingSupport);
      return (*(v32 + 32))(v33, v27, v23);
    }

    v30 = v35;
    sub_24FF37EE0(v22, &qword_27F3B43C8, &qword_24FF63DF8);
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_24FF62098();
  MEMORY[0x25305C910](0xD000000000000021, 0x800000024FF67690);
  sub_24FF61898();
  sub_24FF5E51C(&qword_27F3B42D0, MEMORY[0x277CC95F0]);
  v37 = v53;
  v38 = sub_24FF62148();
  MEMORY[0x25305C910](v38);

  MEMORY[0x25305C910](0x3D646C656966202CLL, 0xE800000000000000);
  MEMORY[0x25305C910](v31, v30);
  MEMORY[0x25305C910](0x6461682074756220, 0xE900000000000020);
  v39 = *(v52 + 112);

  v40 = v51;
  sub_24FF4CCF8(v37, v39, v51);

  if (sub_24FF24B70(v40, 1, v29))
  {
    sub_24FF37EE0(v40, &qword_27F3B43D0, &qword_24FF63E00);
    v41 = 0;
  }

  else
  {
    v42 = v49;
    sub_24FF5C0FC();
    sub_24FF37EE0(v40, &qword_27F3B43D0, &qword_24FF63E00);
    v41 = *(v42 + *(v29 + 20));

    sub_24FF58FDC(v42, type metadata accessor for ObjectStreamingSupport);
  }

  v58 = v41;
  sub_24FF25460(&qword_27F3B4430, &qword_24FF64178);
  v43 = sub_24FF61D48();
  MEMORY[0x25305C910](v43);

  v44 = v56;
  v45 = v57;
  sub_24FF4EC68();
  swift_allocError();
  *v46 = v44;
  *(v46 + 8) = v45;
  *(v46 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_24FF5B0BC()
{
  sub_24FF2BC30();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  *v6 = v7;
  sub_24FF5F8A0(v6);
  sub_24FF5FA2C();

  return sub_24FF59580(v8, v9, v10, v3, v1);
}

uint64_t sub_24FF5B164(void *a1)
{
  v3 = type metadata accessor for ObjectStreamingSupport(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 112);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v1 + 112);

  v15 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 64 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      do
      {
LABEL_9:
        v11 &= v11 - 1;
        v17 = *(v8 + 56);
        v18 = *(v4 + 72);
        sub_24FF5C0FC();
        sub_24FF55FF4(a1);
        result = sub_24FF58FDC(v7, type metadata accessor for ObjectStreamingSupport);
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FF5B314()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AsyncThrowingStream.Continuation<>.emit(_:)()
{
  v0 = type metadata accessor for JsonStreamEvent(0);
  v1 = sub_24FF5F494(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = sub_24FF25460(&qword_27F3B43F8, &qword_24FF63E50);
  sub_24FF2552C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_24FF5F140();
  sub_24FF32440();
  sub_24FF5C0FC();
  sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF61F78();
  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_24FF5B488(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24FF5B580;

  return v7(a1);
}

uint64_t sub_24FF5B580()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF5B660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24FF620B8();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24FF5B760, 0, 0);
}

uint64_t sub_24FF5B760()
{
  sub_24FF32434();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24FF620C8();
  v7 = sub_24FF5E51C(&qword_280B15C60, MEMORY[0x277D85928]);
  sub_24FF32440();
  sub_24FF62188();
  sub_24FF5E51C(&qword_280B15C68, MEMORY[0x277D858F8]);
  sub_24FF620D8();
  v0[12] = *(v4 + 8);
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_24FF5F734();
  v9(v8);
  v10 = *(MEMORY[0x277D85A58] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_24FF5B8E4;
  v12 = v0[11];
  v13 = v0[7];

  return MEMORY[0x2822008C8](v12, v0 + 2, v6, v7);
}

uint64_t sub_24FF5B8E4()
{
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_24FF2BACC();
  *v12 = v11;
  v3[15] = v0;

  v13 = sub_24FF427BC();
  v8(v13);
  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v3[10];
    v17 = v3[11];

    sub_24FF321B0();

    return v19();
  }
}

uint64_t sub_24FF5BA78()
{
  sub_24FF2BC70();
  v2 = v0[10];
  v1 = v0[11];

  sub_24FF24BC0();
  v4 = v0[15];

  return v3();
}

uint64_t sub_24FF5BB0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_24FF5BB98(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_24FF5BBE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_24FF2BBD4();
  v9 = sub_24FF5BCA0(v6, v7, v8, 1, a1, a2);
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
    sub_24FF5E5C0(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_24FF25A6C(v14);
  return v10;
}

unint64_t sub_24FF5BCA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24FF5BDA0(a5, a6);
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
    result = sub_24FF620A8();
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

uint64_t sub_24FF5BDA0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24FF5BDEC(a1, a2);
  sub_24FF5BF04(&unk_28628B498);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24FF5BDEC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_24FF61DE8())
  {
    result = sub_24FF4B774(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24FF62078();
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
          result = sub_24FF620A8();
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

uint64_t sub_24FF5BF04(uint64_t result)
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

    result = sub_24FF5BFE8(result, v8, 1, v3);
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

char *sub_24FF5BFE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_24FF25460(&qword_27F3B4330, &qword_24FF63BB8);
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

uint64_t sub_24FF5C0FC()
{
  v1 = sub_24FF266C4();
  v3 = v2(v1);
  sub_24FF26754(v3);
  v5 = *(v4 + 16);
  v6 = sub_24FF4259C();
  v7(v6);
  return v0;
}

uint64_t dispatch thunk of _StreamSanitizer._sanitize(_:)()
{
  sub_24FF32434();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 8);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = sub_24FF321C0(v10);
  *v11 = v12;
  v11[1] = sub_24FF2C5C0;

  return v14(v7, v5, v3, v1);
}

void sub_24FF5C280()
{
  sub_24FF5C5CC(319, &qword_280B15C88, &qword_27F3B4380, &qword_24FF63D40);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24FF5C5CC(319, &qword_280B15CA0, &qword_27F3B4388, &qword_24FF63D48);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of StreamingObjectTokenStreamProcessor.startStreaming(_:)()
{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

uint64_t dispatch thunk of StreamingObjectTokenStreamProcessor.stream<A>(timeout:_:)()
{
  sub_24FF2C098();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*v0 + 312);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = sub_24FF321C0(v15);
  *v16 = v17;
  v16[1] = sub_24FF32090;

  return (v19)(v12, v10, v8 & 1, v6, v4, v2);
}

void sub_24FF5C5CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_24FF4AF68(a3, a4);
    v5 = sub_24FF62028();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24FF5C648()
{
  sub_24FF61898();
  if (v0 <= 0x3F)
  {
    sub_24FF5C6CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FF5C6CC()
{
  if (!qword_280B15CB0)
  {
    type metadata accessor for FieldStreamingSupport(255);
    v0 = sub_24FF61CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280B15CB0);
    }
  }
}

void sub_24FF5C75C()
{
  sub_24FF5C818(319, &qword_280B15C80, MEMORY[0x277D858D8]);
  if (v0 <= 0x3F)
  {
    sub_24FF5C818(319, &qword_280B15C98, MEMORY[0x277D858B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FF5C818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for JsonObjectFieldContainer();
    v7 = sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24FF5C89C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24FF5C8B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_24FF5C8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_24FF5C93C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF5C974(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B4400, &qword_24FF64130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_24FF5C9E4(size_t a1, int64_t a2, char a3)
{
  result = sub_24FF5CA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24FF5CA04(uint64_t a1, int64_t a2, char a3)
{
  result = sub_24FF5CBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24FF5CA24(size_t result, int64_t a2, char a3, uint64_t a4)
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

  sub_24FF25460(&qword_27F3B4478, &qword_24FF641D8);
  v10 = *(sub_24FF61968() - 8);
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
  v15 = *(sub_24FF61968() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_24FF4B66C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24FF5CBD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24FF25460(&qword_27F3B3E18, &qword_24FF62758);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_24FF4B640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL sub_24FF5CCD8(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_24FF61898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
  v30 = a2;
  v11 = sub_24FF61CD8();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_24FF5DE28(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_24FF5E51C(&qword_280B16628, MEMORY[0x277CC95F0]);
    v17 = sub_24FF61D38();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_24FF5CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_24FF61898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
  v28 = a1;
  v11 = sub_24FF61CD8();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_24FF24B98(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_24FF5E51C(&qword_280B16628, MEMORY[0x277CC95F0]);
    v15 = sub_24FF61D38();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24FF5D214();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_24FF5DAB8(v13);
  v16 = 0;
  *v18 = v29;
  return sub_24FF24B98(v17, v16, 1, v4);
}

void *sub_24FF5D214()
{
  v1 = v0;
  v2 = sub_24FF61898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FF25460(qword_27F3B4480, &unk_24FF641E0);
  v7 = *v0;
  v8 = sub_24FF62058();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_24FF5D448(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24FF61898();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24FF25460(qword_27F3B4480, &unk_24FF641E0);
  v10 = sub_24FF62068();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
        result = sub_24FF61CD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24FF5D760(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24FF61898();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24FF25460(qword_27F3B4480, &unk_24FF641E0);
  result = sub_24FF62068();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_24FF5DDC4(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
    result = sub_24FF61CD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24FF5DAB8(int64_t a1)
{
  v3 = sub_24FF61898();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_24FF62048();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
        v27 = sub_24FF61CD8();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_24FF5DDC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_24FF63D20;
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

uint64_t sub_24FF5DE28(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_24FF61898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24FF5D760(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_24FF5D448(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
      v15 = sub_24FF61CD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_24FF5E51C(&qword_280B16628, MEMORY[0x277CC95F0]);
        v17 = sub_24FF61D38();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_24FF5D214();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_24FF62168();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_24FF5E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24FF3B064(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    v10 = *(*v3 + 24);
    sub_24FF25460(&qword_27F3B4410, &qword_24FF64148);
    sub_24FF620F8();
    v11 = *(v20 + 48);
    v12 = sub_24FF61898();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v20 + 56);
    v14 = type metadata accessor for ObjectStreamingSupport(0);
    v15 = *(*(v14 - 8) + 72);
    sub_24FF57D68();
    sub_24FF5E51C(&qword_280B16630, MEMORY[0x277CC95F0]);
    sub_24FF62108();
    *v3 = v20;
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v18 = type metadata accessor for ObjectStreamingSupport(0);
    v16 = a2;
    v17 = 1;
  }

  return sub_24FF24B98(v16, v17, 1, v18);
}

uint64_t sub_24FF5E264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24FF61898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_24FF3B064(a2);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_24FF25460(&qword_27F3B4410, &qword_24FF64148);
  if ((sub_24FF620F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_24FF3B064(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_24FF62178();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(*(type metadata accessor for ObjectStreamingSupport(0) - 8) + 72);
    return sub_24FF5E56C();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_24FF5E42C(v14, v10, a1, v19);
  }
}

uint64_t sub_24FF5E42C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = sub_24FF61898();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  v9 = a4[7];
  v10 = *(*(type metadata accessor for ObjectStreamingSupport(0) - 8) + 72);
  result = sub_24FF57D68();
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24FF5E51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FF5E56C()
{
  v1 = sub_24FF266C4();
  v3 = v2(v1);
  sub_24FF26754(v3);
  v5 = *(v4 + 40);
  v6 = sub_24FF4259C();
  v7(v6);
  return v0;
}

uint64_t sub_24FF5E5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24FF5E61C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24FF4AF68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FF5E664(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EAF8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_24FF4B640((v8 + 48), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

size_t sub_24FF5E6EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EB0C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_24FF61898();
    sub_24FF26754(v8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    (*(v9 + 32))(a2, v11);
    result = sub_24FF4B684(v11 + v10, v7 - 1 - a1, v11);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

size_t sub_24FF5E7C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EB20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(type metadata accessor for ObjectStreamingSupport(0) - 8);
    v7 = *(v6 + 72);
    v8 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v7 * a1;
    sub_24FF57D68();
    result = sub_24FF4B69C(v8 + v7, v5 - 1 - a1, v8);
    *(v3 + 16) = v5 - 1;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_24FF5E8C4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EAF8(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = v1 + 16 * v4;
    result = *(v5 + 32);
    v6 = *(v5 + 40);
    *(v1 + 16) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FF5E920@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EB0C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = sub_24FF61898();
    sub_24FF26754(v7);
    (*(v8 + 32))(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    sub_24FF5F6C4();

    return sub_24FF24B98(v9, v10, v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FF5E9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24FF5EB20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = type metadata accessor for ObjectStreamingSupport(0);
    v8 = v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
    v9 = *(*(v7 - 8) + 72);
    sub_24FF57D68();
    *(v3 + 16) = v6;
    *v1 = v3;

    return sub_24FF24B98(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FF5EB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_24FF5FB5C(a1, a2, a3, a4);
  sub_24FF26754(v5);
  v7 = *(v6 + 16);
  v8 = sub_24FF4259C();
  v9(v8);
  return v4;
}

uint64_t sub_24FF5EB80()
{
  sub_24FF2BC7C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_24FF321C0(v3);
  *v4 = v5;
  v6 = sub_24FF5F74C(v4);

  return v7(v6);
}

uint64_t sub_24FF5EC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v5 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  v3[5] = v5;
  v3[6] = &off_28628C1E8;
  v6 = sub_24FF2D6D8(v3 + 2);
  (*(*(v5 - 8) + 32))(v6, a2, v5);

  return MEMORY[0x2822009F8](sub_24FF5ECD8, 0, 0);
}

uint64_t sub_24FF5ECD8()
{
  sub_24FF2BC70();
  v2 = v0[7];
  v1 = v0[8];
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = -1;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 120) = v3;
  *(v1 + 128) = v3;
  *(v1 + 136) = sub_24FF3D564;
  *(v1 + 144) = 0;
  *(v1 + 16) = v2;
  sub_24FF420F4((v0 + 2), v1 + 24);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_24FF5EDBC;
  v5 = v0[8];

  return sub_24FF3D568();
}

uint64_t sub_24FF5EDBC()
{
  sub_24FF2BC7C();
  v1 = *v0;
  v2 = *v0;
  sub_24FF2BACC();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v5;
  v6[1] = sub_24FF5EEF0;
  v7 = *(v1 + 64);

  return sub_24FF3D568();
}

uint64_t sub_24FF5EEF0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF5EFD4()
{
  sub_24FF2BC70();
  v1 = v0[7];

  sub_24FF25A6C(v0 + 2);
  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

uint64_t sub_24FF5F0B4()
{

  return swift_once();
}

uint64_t sub_24FF5F0D4(uint64_t a1)
{
  *(a1 + 8) = sub_24FF50790;
  v2 = v1[132];
  v3 = v1[130];
  return v1[126];
}

uint64_t sub_24FF5F158()
{

  return sub_24FF5C0FC();
}

void sub_24FF5F17C()
{
  v1 = v0[131];
  v2 = v0[130];
  v4 = v0[132];
  v3 = v0[125];
}

uint64_t sub_24FF5F194()
{
}

void sub_24FF5F274(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
}

uint64_t sub_24FF5F2A8()
{
  v3 = v0[132];
  v4 = v0[129];
  v5 = v0[126];
  v6 = v0[125];
  v7 = v0[124];
  v8 = v0[123];
  v9 = v0[122];
  v10 = v0[120];
  v11 = v0[119];
  v32 = v0[118];
  v33 = v0[117];
  v34 = v0[116];
  v35 = v0[115];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];
  v44 = v0[106];
  v45 = v0[105];
  v46 = v0[104];
  v47 = v0[103];
  v48 = v0[102];
  v49 = v0[101];
  v50 = v0[100];
  v51 = v0[99];
  v52 = v0[98];
  v53 = v0[97];
  v54 = v0[94];
  v55 = v0[93];
  v56 = v0[92];
  v57 = v0[91];
  v58 = v0[90];
  v59 = v0[89];
  v60 = v0[88];
  v61 = v0[87];
  v62 = v0[86];
  v63 = v0[85];
  v64 = v0[84];
  v65 = v0[83];
  v66 = v0[80];
  v67 = v0[79];
  v68 = v0[75];
  v69 = v0[74];
  v70 = v0[73];
  v71 = v0[72];
  v72 = v0[71];
  v73 = v0[70];
  v74 = v0[69];
  v75 = v0[68];
  v12 = v0[66];
  *(v1 - 256) = v0[67];
  *(v1 - 248) = v12;
  v14 = v0[63];
  v13 = v0[64];
  *(v1 - 240) = v0[65];
  *(v1 - 232) = v13;
  v16 = v0[60];
  v15 = v0[61];
  *(v1 - 224) = v14;
  *(v1 - 216) = v15;
  v18 = v0[58];
  v17 = v0[59];
  *(v1 - 208) = v16;
  *(v1 - 200) = v17;
  v20 = v0[56];
  v19 = v0[57];
  *(v1 - 192) = v18;
  *(v1 - 184) = v19;
  v21 = v0[55];
  *(v1 - 176) = v20;
  *(v1 - 168) = v21;
  v22 = v0[51];
  *(v1 - 160) = v0[52];
  *(v1 - 152) = v22;
  v24 = v0[46];
  v23 = v0[47];
  *(v1 - 144) = v0[50];
  *(v1 - 136) = v23;
  v26 = v0[43];
  v25 = v0[44];
  *(v1 - 128) = v24;
  *(v1 - 120) = v25;
  v28 = v0[41];
  v27 = v0[42];
  *(v1 - 112) = v26;
  *(v1 - 104) = v27;
  v29 = v0[39];
  *(v1 - 96) = v28;
  *(v1 - 88) = v29;
  v30 = v0[24];
}

void sub_24FF5F474()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[125];
}

void sub_24FF5F4A0()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
}

uint64_t sub_24FF5F4F4(uint64_t a1)
{
  *(a1 + 8) = sub_24FF5977C;
  v2 = v1[24];
  v3 = v1[25];
  return v1[18];
}

uint64_t sub_24FF5F520(uint64_t a1)
{
  *(a1 + 8) = sub_24FF57FF4;
  v2 = v1[37];
  v3 = v1[38];
  return v1[31];
}

void sub_24FF5F564()
{
  v1 = v0[131];
  v6 = v0[130];
  v7 = v0[132];
  v5 = v0[125];
  v2 = v0[113];
  v3 = v0[96];
  v4 = v0[95];
  v8 = v0[88];
}

uint64_t sub_24FF5F5B8()
{

  return sub_24FF57D68();
}

uint64_t sub_24FF5F5E0()
{

  return swift_slowAlloc();
}

void sub_24FF5F634()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[125];
}

void sub_24FF5F654()
{
  sub_24FF25A6C(v0);

  JUMPOUT(0x25305D1B0);
}

void sub_24FF5F694()
{
  v1 = v0[130];
  v2 = v0[125];
  v3 = v0[110];
  v4 = v0[109];
}

uint64_t sub_24FF5F6F4()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF5F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a17 + 200);
}

uint64_t sub_24FF5F74C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_24FF5F778(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_24FF5F7C0()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[125];
  v5 = v0[122];
}

uint64_t sub_24FF5F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a17 + 208);
}

void sub_24FF5F7F4()
{
  *(v1 + 1280) = *(v2 + v0);

  JUMPOUT(0x25305D050);
}

uint64_t sub_24FF5F834(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

unint64_t sub_24FF5F840()
{

  return sub_24FF4EC68();
}

void sub_24FF5F858()
{

  JUMPOUT(0x25305C910);
}

uint64_t sub_24FF5F880(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_24FF5F8CC()
{
}

void sub_24FF5F950()
{
  v1 = v0[125];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[96];
  v5 = v0[95];
}

void sub_24FF5F974()
{

  JUMPOUT(0x25305C910);
}

uint64_t sub_24FF5F98C()
{

  return swift_slowAlloc();
}

void sub_24FF5F9A4(float a1)
{
  *v1 = a1;

  JUMPOUT(0x25305D050);
}

void sub_24FF5F9BC()
{
}

uint64_t sub_24FF5FA88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t sub_24FF5FAC8()
{
  v1 = v0[36];
  result = v0[30];
  v3 = v0[24];
  v4 = *(v0[25] + 8);
  return result;
}

uint64_t sub_24FF5FB3C@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_24FF5FB5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_24FF25460(a3, a4);
}

uint64_t sub_24FF5FB7C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return swift_willThrow();
}

void sub_24FF5FB9C()
{
  v3 = *(v1 + 1072);
  v4 = *(v1 + 264);
}

uint64_t sub_24FF5FBB4()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF5FBCC()
{

  return swift_slowAlloc();
}

BOOL sub_24FF5FBE4()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t StreamSignal.valueOrThrow()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = *(a1 + 16);
  if (sub_24FF24B70(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  (*(v4 + 8))(v7, a1);
  type metadata accessor for StreamSignal.StreamSignalError();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_24FF5FD98(uint64_t a1)
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

uint64_t sub_24FF5FDF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v14 = sub_24FF24B70(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_24FF5FF6C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

            sub_24FF24B98(a1, v20, v9, v7);
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

_BYTE *sub_24FF601A4(_BYTE *result, int a2, int a3)
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

uint64_t sub_24FF60274(uint64_t a1, uint64_t a2)
{
  sub_24FF621F8();
  v3 = *(a2 + 16);
  sub_24FF23218();
  return sub_24FF62218();
}

uint64_t sub_24FF602C0()
{
  sub_24FF621F8();
  sub_24FF23218();
  return sub_24FF62218();
}

uint64_t static GenerativeStream.makeStream(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return sub_24FF320C8();
}

uint64_t sub_24FF60314()
{
  sub_24FF2BC70();
  sub_24FF61504();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[11] = v1;
  *v1 = v2;
  v1[1] = sub_24FF603A8;
  v3 = v0[9];
  v4 = v0[10];
  sub_24FF61538();

  return static GenerativeStream.makeStream(_:timeout:sanitizer:)();
}

uint64_t sub_24FF603A8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 96) = v0;

  sub_24FF608A4(v3 + 16);
  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF24BC0();

    return v12();
  }
}

uint64_t static GenerativeStream.makeStream(_:timeout:sanitizer:)()
{
  sub_24FF2BC70();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  *(v0 + 136) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF6154C();
  v8 = *(*(sub_24FF61FF8() - 8) + 64);
  *(v0 + 104) = sub_24FF2BE24();
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF60578()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 64);
  sub_24FF6090C(*(v0 + 80), v0 + 16);
  v2 = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 112) = StreamingObjectTokenStreamProcessor.init(_:)(v0 + 16);
  sub_24FF4D980(v1);
  LOBYTE(v1) = *(v0 + 136);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 120) = v5;
  *v5 = v6;
  v5[1] = sub_24FF606AC;
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);

  return sub_24FF4F2FC();
}

uint64_t sub_24FF606AC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3A134();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF607A8()
{
  sub_24FF2BC7C();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[7];
  sub_24FF61928();
  v7 = v0[13];

  sub_24FF24BC0();

  return v8();
}

uint64_t sub_24FF60840()
{
  sub_24FF2BC70();
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[13];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF608A4(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B4390, &unk_24FF63D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF6090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B4390, &unk_24FF63D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeStream.makeSingleElementStream(_:produces:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return sub_24FF320C8();
}

uint64_t sub_24FF6099C()
{
  sub_24FF2BC70();
  sub_24FF61504();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[12] = v1;
  *v1 = v2;
  v1[1] = sub_24FF60A30;
  v3 = v0[10];
  v4 = v0[11];
  sub_24FF61538();

  return static GenerativeStream.makeSingleElementStream(_:timeout:produces:sanitizer:)();
}

uint64_t sub_24FF60A30()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 104) = v0;

  sub_24FF608A4(v3 + 16);
  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF24BC0();

    return v12();
  }
}

uint64_t sub_24FF60B50()
{
  sub_24FF24BC0();
  v1 = *(v0 + 104);
  return v2();
}

uint64_t static GenerativeStream.makeSingleElementStream(_:timeout:produces:sanitizer:)()
{
  sub_24FF2BC7C();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 208) = v3;
  *(v0 + 80) = v4;
  *(v0 + 88) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *(*(sub_24FF62028() - 8) + 64);
  *(v0 + 112) = sub_24FF2BE24();
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF6154C();
  v9 = sub_24FF61FF8();
  *(v0 + 120) = v9;
  v10 = *(v9 - 8);
  *(v0 + 128) = v10;
  v11 = *(v10 + 64);
  *(v0 + 136) = sub_24FF2BE24();
  sub_24FF6154C();
  v12 = sub_24FF61FD8();
  *(v0 + 144) = v12;
  v13 = *(v12 - 8);
  *(v0 + 152) = v13;
  v14 = *(v13 + 64);
  *(v0 + 160) = sub_24FF2BE24();
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24FF60CE8()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 72);
  sub_24FF6090C(*(v0 + 88), v0 + 16);
  v2 = type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 168) = StreamingObjectTokenStreamProcessor.init(_:)(v0 + 16);
  sub_24FF4D980(v1);
  LOBYTE(v1) = *(v0 + 208);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 176) = v5;
  *v5 = v6;
  v5[1] = sub_24FF60E34;
  v7 = *(v0 + 136);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 80);

  return sub_24FF4F2FC();
}

uint64_t sub_24FF60E34()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3A134();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF60F30()
{
  sub_24FF2BC7C();
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_24FF61ED8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[24] = v6;
  *v6 = v7;
  v6[1] = sub_24FF61004;
  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[14];
  sub_24FF2BBD4();

  return MEMORY[0x2822005A8](v11);
}

uint64_t sub_24FF61004()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3A134();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF61100()
{
  v1 = v0[14];
  v2 = v0[12];
  if (sub_24FF24B70(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    v4 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
    sub_24FF6154C();
    _s21GenerativeStreamErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

LABEL_5:
    sub_24FF6151C();

    sub_24FF24BC0();
    goto LABEL_6;
  }

  v5 = v0[25];
  v6 = *(v2 - 8);
  (*(v6 + 32))(v0[8], v1, v2);
  sub_24FF61F18();
  v7 = v5;
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  if (v7)
  {
    v12 = v0[12];
    v13 = v0[8];
    v14 = v0[21];

    (*(v6 + 8))(v13, v12);
    (*(v11 + 8))(v8, v10);
    goto LABEL_5;
  }

  v17 = v0[17];
  v18 = v0[14];
  (*(v11 + 8))(v0[20], v0[18]);

  sub_24FF24BC0();
LABEL_6:

  return v15();
}

uint64_t sub_24FF61320()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);
  sub_24FF6151C();

  sub_24FF24BC0();

  return v3();
}

uint64_t sub_24FF61398()
{
  sub_24FF2BC7C();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[7];
  sub_24FF6151C();

  sub_24FF24BC0();

  return v6();
}

_BYTE *sub_24FF6144C(_BYTE *result, int a2, int a3)
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

double sub_24FF61504()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_24FF6151C()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
}

uint64_t sub_24FF61538()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

Swift::Void __swiftcall TokenStreamProcessorCloser.stopStream()()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_24FF257B8(v0, v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t dispatch thunk of TokenStreamProcessor.startStreaming(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t dispatch thunk of TokenStreamProcessor.stream<A>(timeout:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_24FF3A81C;

  return (v21)(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
}

__n128 sub_24FF6177C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FF61790(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_24FF617D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}