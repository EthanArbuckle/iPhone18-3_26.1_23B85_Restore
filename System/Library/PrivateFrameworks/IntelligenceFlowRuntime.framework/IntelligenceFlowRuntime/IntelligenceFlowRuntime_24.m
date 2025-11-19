unint64_t sub_22BD843D0()
{
  result = qword_27D8E68A8;
  if (!qword_27D8E68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E68A8);
  }

  return result;
}

unint64_t sub_22BD8446C()
{
  v1 = *(v0 + 40);
  sub_22BDBB814();
  sub_22BDBAC54();
  sub_22BDBB834();
  v2 = sub_22BB3AC54();

  return sub_22BD847E4(v2, v3, v4);
}

unint64_t sub_22BD844E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v4, v5);
  sub_22BDBABB4();
  v6 = sub_22BDBB834();

  return sub_22BD84898(a1, v6);
}

void sub_22BD84584()
{
  sub_22BB32888();
  sub_22BDB7B44();
  sub_22BB3CC18(&qword_27D8E3070, MEMORY[0x277D1D608]);
  sub_22BB69BE0();
  sub_22BB38850();
}

void sub_22BD84660()
{
  sub_22BB32888();
  sub_22BDB43E4();
  sub_22BB3CC18(&qword_28142DD50, MEMORY[0x277CC95F0]);
  sub_22BB69BE0();
  sub_22BB38850();
}

void sub_22BD84710()
{
  v1 = *(v0 + 40);
  sub_22BDB57A4();
  sub_22BB3CC18(&qword_28142DCC8, MEMORY[0x277D1CE90]);
  sub_22BDBABA4();
  sub_22BD85028();
}

unint64_t sub_22BD847E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22BDBB6D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22BD84898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BDB5AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = ~(-1 << *(v3 + 32));
  for (i = a2 & v8; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    v10 = *(v3 + 48);
    v11 = *(v6 + 72);
    sub_22BB67A00();
    sub_22BDB43E4();
    sub_22BB3CC18(&unk_28142DD40, MEMORY[0x277CC95F0]);
    v12 = sub_22BDBABD4();
    sub_22BB67E48();
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22BD84A44()
{
  result = qword_27D8E68C0;
  if (!qword_27D8E68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E68C0);
  }

  return result;
}

unint64_t sub_22BD84A98(uint64_t a1, uint64_t a2)
{
  v46 = sub_22BDB4C34();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E45D0, &qword_22BDCFC80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v19 = v2 + 64;
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  if ((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v48 = v18;
    v49 = ~v20;
    v50 = *(v17 + 72);
    v44 = (v5 + 8);
    v40 = (v5 + 32);
    v41 = v8;
    v47 = v2 + 64;
    while (1)
    {
      v22 = *(v2 + 48);
      sub_22BB67A00();
      v23 = &v11[*(v8 + 48)];
      sub_22BB67A00();
      sub_22BB67A00();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v25 = a1;
          v26 = v45;
          sub_22BB67A00();
          v27 = *v26;
          v28 = v26[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_22BB67E48();

            a1 = v25;
            v19 = v47;
            goto LABEL_18;
          }

          v29 = *v23;
          v30 = *(v23 + 1);
          if (v27 == v29 && v28 == v30)
          {

            sub_22BB67E48();
          }

          else
          {
            v32 = sub_22BDBB6D4();

            sub_22BB67E48();
            a1 = v25;
            v19 = v47;
            if ((v32 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_24;
        case 2u:
          sub_22BB67E48();
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        case 3u:
          sub_22BB67E48();
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        default:
          v24 = v48;
          sub_22BB67A00();
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22BB67E48();
            (*v44)(v24, v46);
LABEL_18:
            sub_22BB58728(v11, &qword_27D8E45D0, &qword_22BDCFC80);
          }

          else
          {
            v33 = v42;
            v34 = v46;
            (*v40)(v42, v23, v46);
            v43 = sub_22BDB4C04();
            v35 = *v44;
            v36 = v33;
            v8 = v41;
            (*v44)(v36, v34);
            sub_22BB67E48();
            v37 = v34;
            v19 = v47;
            v35(v48, v37);
            if (v43)
            {
LABEL_24:
              sub_22BB67E48();
              return v21;
            }

LABEL_20:
            sub_22BB67E48();
          }

          v21 = (v21 + 1) & v49;
          if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            return v21;
          }

          break;
      }
    }
  }

  return v21;
}

void sub_22BD85028()
{
  sub_22BB30F94();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  sub_22BB30444(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_22BB3CC18(v21, v22);
    v18 = sub_22BDBABD4();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  sub_22BB314EC();
}

uint64_t sub_22BD851DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v15 = *v8;
  v16 = sub_22BD8446C();
  sub_22BB363BC(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  sub_22BBE6DE0(a5, a6);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = *v11;
  sub_22BB52D78();
  v24 = sub_22BD8446C();
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v11;
  if (v22)
  {
    v27 = *(v26 + 56);
    v28 = a7(0);
    v29 = sub_22BB2F330(v28);
    v31 = *(v30 + 40);
    v32 = v29;
    v33 = v27 + *(v30 + 72) * v21;

    return v31(v33, a1, v32);
  }

  else
  {
    a8(v21, a2, a3, a1, v26);
  }
}

uint64_t sub_22BD85364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_22BB72B1C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_22BBE6DE0(&qword_27D8E68E8, &qword_22BDCFBF8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  sub_22BB72B1C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_22BB9703C(v11, a2, a3, a1, v16);
  }
}

void sub_22BD854A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BDB43E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22BD84660();
  if (__OFADD__(*(v10 + 16), (v11 & 1) == 0))
  {
    __break(1u);
LABEL_9:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v12 = v11;
  sub_22BBE6DE0(&qword_27D8E68F0, &unk_22BDCFC10);
  if (sub_22BDBB4A4())
  {
    v13 = *v3;
    sub_22BD84660();
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    v15 = *(*v3 + 56);
    v16 = *(*(type metadata accessor for SessionCoordinatorInjectionRequest(0) - 8) + 72);
    sub_22BD85988();
  }

  else
  {
    (*(v6 + 16))(v9, a2, v5);
    sub_22BD7DD0C();
  }
}

void sub_22BD85668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BDB5AB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_22BD844E0(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_22BD844E0(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(*(type metadata accessor for SnippetStreamingRouter.Entry(0) - 8) + 72);
    sub_22BD85988();
  }

  else
  {
    sub_22BB67A00();
    sub_22BD7DDCC(v13, v9, a1, v18);
  }
}

void sub_22BD85808()
{
  sub_22BB30F94();
  v3 = v1;
  v5 = v4;
  sub_22BB35760();
  v6 = sub_22BDB43E4();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB345CC();
  v12 = *v1;
  sub_22BD84660();
  sub_22BB363BC(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  sub_22BBE6DE0(&qword_27D8E68F8, &unk_22BDCFC20);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v3;
  sub_22BD84660();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  if (v19)
  {
    v23 = *(*v3 + 56);
    v24 = *(v23 + 8 * v18);
    *(v23 + 8 * v18) = v0;
    sub_22BB314EC();
  }

  else
  {
    (*(v9 + 16))(v2, v5, v6);
    sub_22BD7DE20();
    sub_22BB314EC();
  }
}

uint64_t sub_22BD85988()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

unint64_t sub_22BD85A3C()
{
  result = qword_27D8E6928;
  if (!qword_27D8E6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingRouter.ScopeID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BD85B40()
{
  result = qword_27D8E6950;
  if (!qword_27D8E6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6950);
  }

  return result;
}

unint64_t sub_22BD85B98()
{
  result = qword_27D8E6958;
  if (!qword_27D8E6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6958);
  }

  return result;
}

unint64_t sub_22BD85BF0()
{
  result = qword_27D8E6960;
  if (!qword_27D8E6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6960);
  }

  return result;
}

uint64_t SnippetStreamingRouter.Scoped.__allocating_init(base:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SnippetStreamingRouter.Scoped.init(base:)(a1);
  return v5;
}

uint64_t SnippetStreamingRouter.Scoped.allocateContext()()
{
  v1 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v1);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = *(v0 + 16);
  sub_22BBB74FC(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, &v14 - v5);
  v8 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  sub_22BB35DC4(v6, v9, v10, v8);
  sub_22BD82268();
  v12 = v11;
  sub_22BBB7914(v6);
  return v12;
}

void SnippetStreamingRouter.Scoped.deallocateContext(_:)(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32D6C();
  sub_22BBB74FC(v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, v2);
  v8 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v11 = sub_22BB35DC4(v2, v9, v10, v8);
  v12 = sub_22BD83520(v11, v2);
  sub_22BBB7914(v2);
  if (v12)
  {
    SnippetStreamingRouter.deallocateContext(_:)(a1);
  }
}

uint64_t SnippetStreamingRouter.Scoped.contextIsCheckedIn(_:)(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32D6C();
  sub_22BBB74FC(v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, v2);
  v8 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v11 = sub_22BB35DC4(v2, v9, v10, v8);
  v12 = sub_22BD83520(v11, v2);
  sub_22BBB7914(v2);
  if (v12)
  {
    return SnippetStreamingRouter.contextIsCheckedIn(_:)(a1);
  }

  else
  {
    return 2;
  }
}

uint64_t SnippetStreamingRouter.Scoped.deinit()
{
  v1 = *(v0 + 16);

  sub_22BBB9714(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  return v0;
}

unint64_t sub_22BD85F10()
{
  result = qword_27D8E6888;
  if (!qword_27D8E6888)
  {
    type metadata accessor for SnippetStreamingStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6888);
  }

  return result;
}

uint64_t sub_22BD85F68(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  result = SnippetStreamingRouter.Scoped.allocateContext()();
  *a2 = result;
  return result;
}

uint64_t sub_22BD86008()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD860D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(MEMORY[0x277D857A0] + 4);
  v15 = swift_task_alloc();
  *(v12 + 16) = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);
  *v15 = v12;
  v15[1] = sub_22BD86CE8;

  return MEMORY[0x2822003F0](a1, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t SnippetStreamingStream.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(MEMORY[0x277D857A0] + 4);
  v15 = swift_task_alloc();
  *(v12 + 16) = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);
  *v15 = v12;
  v15[1] = sub_22BD8624C;

  return MEMORY[0x2822003F0](a1, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_22BD8624C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22BB3052C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BD86338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_22BD863D0;

  return SnippetStreamingStream.Iterator.next()(a1, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_22BD863D0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22BB3052C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BD864C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_22BD8658C;

  return (sub_22BD860D4)(a1, a2, a3, v3 + 16);
}

uint64_t sub_22BD8658C()
{
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_22BB3052C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BD86680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_22BD86C84(a2, v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id);
  v5 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_stream;
  v6 = sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  (*(*(v6 - 8) + 32))(v3 + v5, a3, v6);
  return v3;
}

uint64_t SnippetStreamingStream.deinit()
{
  v1 = v0;
  v2 = sub_22BDB5AB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id;
  sub_22BD86870(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_id, v5);

  SnippetStreamingRouter.deallocateContext(_:)(v5);

  sub_22BD868D4(v5);
  v8 = *(v1 + 16);

  sub_22BD868D4(v1 + v7);
  v9 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingStream_stream;
  v10 = sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t sub_22BD86870(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5AB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD868D4(uint64_t a1)
{
  v2 = sub_22BDB5AB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnippetStreamingStream.__deallocating_deinit()
{
  SnippetStreamingStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_22BD8698C()
{
  result = qword_27D8E6980;
  if (!qword_27D8E6980)
  {
    type metadata accessor for SnippetStreamingStream.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6980);
  }

  return result;
}

uint64_t sub_22BD86A04()
{
  v1 = *v0;
  SnippetStreamingStream.makeAsyncIterator()();
}

void sub_22BD86A64()
{
  v0 = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22BD86C24(319, &qword_27D8E6998, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22BD86B9C()
{
  sub_22BD86C24(319, &qword_27D8E69B0, MEMORY[0x277D857A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22BD86C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22BDB59D4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22BD86C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5AB4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD86CEC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

void sub_22BD86D1C()
{
  sub_22BB30F94();
  v76 = v0;
  v3 = v2;
  v75 = sub_22BBE6DE0(&qword_27D8E6A40, &qword_22BDD0190);
  sub_22BB30474(v75);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v74 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB77D4();
  v9 = sub_22BB30444(v8);
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v77 = v17;
  v18 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v19 = sub_22BB2F0C8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v28 = sub_22BDB9B14();
  v29 = sub_22BB30444(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  v73 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  sub_22BB34360();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v69 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v69 - v41;
  v43 = v3;
  sub_22BD39594(v3);
  v44 = sub_22BDB9B54();
  if (sub_22BB3AA28(v27, 1, v44) == 1)
  {
    sub_22BB6B75C(v27, &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BDB6354();
    v45 = sub_22BDB77C4();
    v46 = sub_22BDBB104();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = sub_22BB37F30();
      sub_22BB360F0(v47);
      sub_22BB38F24(&dword_22BB2C000, v45, v46, "SpeechHandler interestedIn; false");
      sub_22BB30AF0();
    }

    (*(v78 + 8))(v15, v79);
  }

  else
  {
    sub_22BDB9B24();
    sub_22BB30474(v44);
    v49 = *(v48 + 8);
    v72 = v48 + 8;
    v49(v27, v44);
    (*(v31 + 32))(v42, v40, v28);
    (*(v31 + 16))(v1, v42, v28);
    if ((*(v31 + 88))(v1, v28) == *MEMORY[0x277D1E758])
    {
      v70 = v49;
      v50 = v77;
      sub_22BDB6354();

      v51 = sub_22BDB77C4();
      v52 = sub_22BDBB104();

      v71 = v52;
      if (os_log_type_enabled(v51, v52))
      {
        v69 = v51;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v80 = v54;
        *v53 = 136315138;
        sub_22BD39594(v43);
        v55 = sub_22BB2F3FC();
        if (sub_22BB3AA28(v55, v56, v44) == 1)
        {
          sub_22BB6B75C(v24, &unk_27D8E69E0, &qword_22BDC1660);
          v57 = 1;
          v58 = v74;
        }

        else
        {
          v60 = v73;
          sub_22BDB9B24();
          v70(v24, v44);
          v58 = v74;
          sub_22BDB9AC4();
          (*(v31 + 8))(v60, v28);
          v57 = 0;
        }

        v61 = sub_22BDB9254();
        sub_22BB336D0(v58, v57, 1, v61);
        v62 = sub_22BDBAC14();
        v64 = sub_22BB32EE0(v62, v63, &v80);

        *(v53 + 4) = v64;
        v65 = v69;
        _os_log_impl(&dword_22BB2C000, v69, v71, "SpeechHandler is interestedIn lastPayload: %s", v53, 0xCu);
        sub_22BB32FA4(v54);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*(v78 + 8))(v77, v79);
      }

      else
      {

        (*(v78 + 8))(v50, v79);
      }

      v66 = *(v76 + 112);
      v67 = *(v76 + 120);
      v68 = *(v31 + 8);

      v68(v42, v28);
      v68(v1, v28);
    }

    else
    {
      v59 = *(v31 + 8);
      v59(v42, v28);
      v59(v1, v28);
    }
  }

  sub_22BB314EC();
}

uint64_t SpeechHandler.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SpeechHandler.__deallocating_deinit()
{
  SpeechHandler.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BD873DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *v4;
  v10 = *sub_22BB69FEC(a4, a4[3]);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22BB6A0B4;

  return sub_22BD89BB0(a1, a2, a3, v10, v9);
}

void sub_22BD874FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_22BDB77D4();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  v98 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  sub_22BB2F39C();
  v92 = v18;
  sub_22BB2F120();
  v19 = sub_22BDB9B14();
  v20 = sub_22BB30444(v19);
  v86 = v21;
  v87 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v85 = v24;
  sub_22BB2F120();
  v96 = sub_22BDB9B54();
  v25 = sub_22BB30444(v96);
  v89 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  v95 = v29;
  sub_22BB2F120();
  v99 = sub_22BDB4EB4();
  v30 = sub_22BB30444(v99);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v37 = v36 - v35;
  v94 = sub_22BDB8D34();
  v38 = sub_22BB30444(v94);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BB30C74();
  v88 = v43 - v44;
  MEMORY[0x28223BE20](v45);
  sub_22BB2F39C();
  v90 = v6;
  v91 = v46;
  v47 = *&v6[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId];
  v48 = *&v6[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId + 8];
  v93 = a2;
  v49 = v47 == a2 && v48 == a3;
  if (v49 || (sub_22BDBB6D4() & 1) != 0)
  {
    v50 = sub_22BBC20A8(a6);
    v51 = MEMORY[0x277D84F90];
    v84 = v9;
    v83 = v12;
    if (v50)
    {
      v52 = v50;
      v103[0] = MEMORY[0x277D84F90];
      sub_22BD286C0();
      if ((v52 & 0x8000000000000000) == 0)
      {
        v53 = 0;
        v51 = v103[0];
        v97 = v40;
        while (1)
        {
          v54 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if ((a6 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x2318A5340](v53, a6);
          }

          else
          {
            if (v53 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v55 = *(a6 + 8 * v53 + 32);
          }

          v56 = v55;
          sub_22BD8ADBC(v55);
          if (!v57)
          {
            goto LABEL_27;
          }

          [v56 confidenceScore];
          [v56 startTime];
          [v56 silenceStartTime];
          [v56 endTime];
          sub_22BDB4EA4();

          v103[0] = v51;
          v58 = *(v51 + 16);
          if (v58 >= *(v51 + 24) >> 1)
          {
            sub_22BD286C0();
            v51 = v103[0];
          }

          *(v51 + 16) = v58 + 1;
          (*(v32 + 32))(v51 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v58, v37, v99);
          ++v53;
          v40 = v97;
          if (v54 == v52)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
LABEL_18:

      MEMORY[0x2318A2CF0](a2, a3, v51);
      v59 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
      v101 = *(v40 + 16);
      v101(v85, v91, v94);
      (*(v86 + 104))(v85, *MEMORY[0x277D1E7B0], v87);
      v60 = &v90[v59];
      sub_22BDB9714();
      (*(v86 + 8))(v85, v87);
      v61 = sub_22BB69FEC(&v90[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback], *&v90[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24]);
      sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
      v62 = *(v89 + 72);
      v63 = *(v89 + 80);
      v64 = sub_22BB36904();
      *(v64 + 16) = xmmword_22BDBCBD0;
      (*(v89 + 16))(&v60[v64], v95, v96);
      v65 = *v61;
      sub_22BB30A2C();
      sub_22BD790CC(v64, v66, 0);

      sub_22BDB6354();
      v101(v88, v91, v94);
      v67 = sub_22BDB77C4();
      v68 = sub_22BDBB104();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103[0] = v102;
        *v69 = 136315138;
        sub_22BD898D0();
        v70 = sub_22BDBB684();
        v71 = v40;
        v73 = v72;
        v74 = *(v71 + 8);
        v74(v88, v94);
        v75 = sub_22BB32EE0(v70, v73, v103);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_22BB2C000, v67, v68, "Received speech partial result: %s", v69, 0xCu);
        sub_22BB32FA4(v102);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*(v83 + 8))(v92, v84);
        (*(v89 + 8))(v95, v96);
        v74(v91, v94);
      }

      else
      {

        v76 = *(v40 + 8);
        v76(v88, v94);
        (*(v83 + 8))(v92, v84);
        (*(v89 + 8))(v95, v96);
        v76(v91, v94);
      }
    }
  }

  else
  {
    v77 = v12;
    v78 = v9;
    sub_22BDB6354();

    v79 = v6;
    v80 = sub_22BDB77C4();
    v81 = sub_22BDBB114();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v82 = 136315394;
      *(v82 + 4) = sub_22BB32EE0(v93, a3, v103);
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_22BB32EE0(v47, v48, v103);
      _os_log_impl(&dword_22BB2C000, v80, v81, "SpeechPartialResult requestId = %s does not match current turnId = %s", v82, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    (*(v77 + 8))(v98, v78);
  }
}

void sub_22BD87EBC()
{
  sub_22BB30F94();
  v163 = v0;
  v170 = v2;
  v3 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v162 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB9B14();
  v9 = sub_22BB30444(v8);
  v158 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v157 = v13;
  sub_22BB2F120();
  v14 = sub_22BDB9B54();
  v15 = sub_22BB30444(v14);
  v160 = v16;
  v161 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v159 = v19;
  v20 = sub_22BBE6DE0(&unk_27D8E69F0, &qword_22BDCDD08);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB30BA8();
  v156 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB30BA8();
  v153 = v29;
  v30 = sub_22BBE6DE0(&unk_27D8E6A00, &qword_22BDCFFE8);
  sub_22BB2F0C8(v30);
  v32 = *(v31 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB30BA8();
  v151 = v34;
  v35 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v35);
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB30BA8();
  v150 = v39;
  v40 = sub_22BBE6DE0(&qword_27D8E6A10, &qword_22BDCDD10);
  sub_22BB2F0C8(v40);
  v42 = *(v41 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v43);
  sub_22BB30BA8();
  v149 = v44;
  sub_22BB2F120();
  v147 = sub_22BDB8634();
  v45 = sub_22BB30444(v147);
  v146 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  v148 = v49;
  sub_22BB2F120();
  v50 = sub_22BDB9624();
  v51 = sub_22BB30444(v50);
  v154 = v52;
  v155 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BB305A8();
  v152 = v55;
  sub_22BB2F120();
  v56 = sub_22BDB4C34();
  v57 = sub_22BB2F0C8(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BB305A8();
  v145 = v60;
  v61 = sub_22BBE6DE0(&qword_27D8E6A18, &unk_22BDCFFF0);
  v62 = sub_22BB2F0C8(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v65);
  v67 = &v145 - v66;
  v68 = sub_22BDB85B4();
  v69 = sub_22BB30444(v68);
  v168 = v70;
  v169 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BB305A8();
  v166 = v73;
  sub_22BB2F120();
  v167 = sub_22BDB4EF4();
  v74 = sub_22BB30444(v167);
  v165 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BB305A8();
  v164 = v78;
  sub_22BB2F120();
  v79 = sub_22BDB77D4();
  v80 = sub_22BB30444(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v85);
  sub_22BDB6354();
  v86 = sub_22BDB77C4();
  v87 = sub_22BDBB104();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = sub_22BB37F30();
    sub_22BB360F0(v88);
    sub_22BB38F24(&dword_22BB2C000, v86, v87, "SpeechHandler received TRP candidate package");
    sub_22BB30AF0();
  }

  v89 = *(v82 + 8);
  v90 = sub_22BB2F324();
  v89(v90);
  sub_22BD888B0();
  if (!v91)
  {
    goto LABEL_8;
  }

  v92 = v91;
  v93 = [v91 recognition];
  if (v93)
  {
    sub_22BD8978C(v93);
    if (v94)
    {
      v170 = v92;
      v95 = v164;
      sub_22BD8A650(v170);
      v96 = v95;
      v97 = v167;
      (*(v165 + 16))(v67, v96, v167);
      sub_22BB336D0(v67, 0, 1, v97);
      sub_22BB30B28();
      sub_22BB336D0(v98, v99, v100, v97);
      sub_22BDB4C14();
      v101 = v166;
      sub_22BDB85A4();
      v102 = v148;
      (*(v168 + 16))(v148, v101, v169);
      (*(v146 + 104))(v102, *MEMORY[0x277D1DDD8], v147);
      sub_22BDB8FB4();
      sub_22BB30B28();
      sub_22BB336D0(v103, v104, v105, v106);
      sub_22BDB43E4();
      sub_22BB30B28();
      sub_22BB336D0(v107, v108, v109, v110);
      sub_22BDB9464();
      sub_22BB30B28();
      sub_22BB336D0(v111, v112, v113, v114);
      sub_22BDB6204();
      sub_22BB30B28();
      sub_22BB336D0(v115, v116, v117, v118);
      sub_22BDB92B4();
      sub_22BB30B28();
      sub_22BB336D0(v119, v120, v121, v122);
      v123 = v152;
      sub_22BDB9604();
      v124 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
      v126 = v154;
      v125 = v155;
      v127 = v157;
      (*(v154 + 16))(v157, v123, v155);
      v128 = v158;
      (*(v158 + 104))(v127, *MEMORY[0x277D1E858], v8);
      v129 = v163;
      v130 = v163 + v124;
      v131 = v159;
      sub_22BDB96F4();
      (*(v128 + 8))(v127, v8);
      v132 = sub_22BB69FEC((v129 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback), *(v129 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24));
      sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
      v133 = v160;
      v134 = *(v160 + 72);
      v135 = *(v160 + 80);
      v136 = sub_22BB36904();
      *(v136 + 16) = xmmword_22BDBCBD0;
      v137 = v161;
      (*(v133 + 16))(v136 + v130, v131, v161);
      v138 = *v132;
      sub_22BB30A2C();
      sub_22BD790CC(v136, v139, 0);

      (*(v126 + 8))(v123, v125);
      (*(v168 + 8))(v166, v169);
      (*(v165 + 8))(v164, v167);
      v140 = v162;
      (*(v133 + 32))(v162, v131, v137);
      sub_22BB336D0(v140, 0, 1, v137);
      v141 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
      swift_beginAccess();
      sub_22BD897FC(v140, v129 + v141);
      swift_endAccess();
LABEL_11:
      sub_22BB314EC();
      return;
    }

LABEL_8:
    sub_22BDB6354();
    v142 = sub_22BDB77C4();
    v143 = sub_22BDBB114();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = sub_22BB37F30();
      *v144 = 0;
      _os_log_impl(&dword_22BB2C000, v142, v143, "No speech package found from TRP candidate package or utterance found in that package", v144, 2u);
      sub_22BB30AF0();
    }

    (v89)(v1, v79);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_22BD888B0()
{
  sub_22BB30F94();
  v1 = sub_22BDB77D4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = sub_22BD8971C(v0);
  if (v7)
  {
    v8 = v7;
    if (sub_22BBC20A8(v7))
    {
      sub_22BD72584(0, (v8 & 0xC000000000000001) == 0, v8);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2318A5340](0, v8);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 speechPackage];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_22BDB6354();
    v12 = v0;
    v13 = sub_22BDB77C4();
    v14 = sub_22BDBB114();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_22BD8986C(v12);
    v19 = v18;

    if (v19)
    {
      v20 = sub_22BB32EE0(v17, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22BB2C000, v13, v14, "Could not extract speech package from TRP ID: %s", v15, 0xCu);
      sub_22BB32FA4(v16);
      sub_22BB30AF0();
      sub_22BB30AF0();

LABEL_12:
      v21 = *(v4 + 8);
      v22 = sub_22BB2F324();
      v23(v22);
LABEL_13:
      sub_22BB314EC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22BD88BBC()
{
  sub_22BB30F94();
  v2 = v0;
  v50 = sub_22BDB9B14();
  v3 = sub_22BB30444(v50);
  v48 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v47 = v7;
  v8 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = sub_22BDB9B54();
  v15 = sub_22BB30444(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v20);
  sub_22BB2F39C();
  v49 = v21;
  sub_22BB2F120();
  v22 = sub_22BDB77D4();
  v23 = sub_22BB30444(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v30 = v29 - v28;
  sub_22BDB6354();
  v31 = sub_22BDB77C4();
  v32 = sub_22BDBB104();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_22BB37F30();
    v46 = v17;
    sub_22BB360F0(v33);
    sub_22BB38F24(&dword_22BB2C000, v31, v32, "SpeechHandler received continuity end");
    v17 = v46;
    sub_22BB30AF0();
  }

  (*(v25 + 8))(v30, v22);
  v34 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
  swift_beginAccess();
  sub_22BD892C0(v2 + v34, v13);
  if (sub_22BB3AA28(v13, 1, v14) == 1)
  {
    sub_22BB6B75C(v13, &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    v35 = v49;
    (*(v17 + 32))(v49, v13, v14);
    v36 = v47;
    sub_22BDB8BD4();
    v37 = v48;
    v38 = v50;
    (*(v48 + 104))(v36, *MEMORY[0x277D1E790], v50);
    sub_22BDB9A54();
    (*(v37 + 8))(v36, v38);
    v39 = sub_22BB69FEC((v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback), *(v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback + 24));
    sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
    v40 = *(v17 + 72);
    v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22BDBCBD0;
    (*(v17 + 16))(v42 + v41, v1, v14);
    v43 = *v39;
    sub_22BB30A2C();
    sub_22BD790CC(v42, v44, 0);

    v45 = *(v17 + 8);
    v45(v1, v14);
    v45(v35, v14);
  }

  sub_22BB314EC();
}

id sub_22BD8905C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate()
{
  result = qword_27D8E69C8;
  if (!qword_27D8E69C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BD89188()
{
  v0 = sub_22BDB9774();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22BD89268();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22BD89268()
{
  if (!qword_27D8E69D8)
  {
    sub_22BDB9B54();
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E69D8);
    }
  }
}

uint64_t sub_22BD892C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22BD89330(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, char a17, uint64_t a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v62 = sub_22BDBABE4();

  v60 = sub_22BDBABE4();

  v59 = sub_22BDBAD54();

  if (a11)
  {
    v58 = sub_22BDBABE4();
  }

  else
  {
    v58 = 0;
  }

  if (a13)
  {
    v57 = sub_22BDBABE4();
  }

  else
  {
    v57 = 0;
  }

  if (a18)
  {
    v56 = sub_22BDBAAD4();
  }

  else
  {
    v56 = 0;
  }

  if (a23)
  {
    v55 = sub_22BDBABE4();
  }

  else
  {
    v55 = 0;
  }

  if (a26)
  {
    v54 = sub_22BDBABE4();
  }

  else
  {
    v54 = 0;
  }

  if (a27)
  {
    sub_22BBED848(0, &qword_27D8E6A48, 0x277CEF130);
    v53 = sub_22BDBAD54();
  }

  else
  {
    v53 = 0;
  }

  if (a29)
  {
    v68 = sub_22BDBABE4();
  }

  else
  {
    v68 = 0;
  }

  if (a31)
  {
    v69 = sub_22BDBABE4();
  }

  else
  {
    v69 = 0;
  }

  if (a33)
  {
    v67 = sub_22BDBABE4();
  }

  else
  {
    v67 = 0;
  }

  v40 = a37;
  v41 = a21;
  v42 = a20;
  v43 = a17;
  v44 = a16;
  v45 = a15;
  v46 = a14;
  if (a39)
  {
    v47 = sub_22BDBABE4();

    v40 = a37;
    v42 = a20;
    v41 = a21;
    v43 = a17;
    v44 = a16;
    v45 = a15;
    v46 = a14;
  }

  else
  {
    v47 = 0;
  }

  LOBYTE(v52) = a35 & 1;
  LOBYTE(v51) = a24 & 1;
  BYTE3(v50) = v41 & 1;
  BYTE2(v50) = v42 & 1;
  LOWORD(v50) = a19 & 0x101;
  BYTE3(v49) = v43 & 1;
  BYTE2(v49) = v44 & 1;
  BYTE1(v49) = v45 & 1;
  LOBYTE(v49) = v46 & 1;
  v65 = [v61 initWithRequestId:v62 inputOrigin:v60 speechRecognitionTaskName:a6 speechRecognitionMode:a7 location:a8 jitGrammar:v59 overrideModelPath:a1 applicationName:v58 detectUtterances:v57 continuousListening:v49 shouldHandleCapitalization:v56 secureOfflineOnly:v50 maximumRecognitionDuration:v55 recognitionOverrides:v51 shouldStoreAudioOnDevice:v54 deliverEagerPackage:v53 enableEmojiRecognition:v68 enableAutoPunctuation:v69 UILanguage:v67 enableVoiceCommands:a34 dictationUIInteractionId:v52 sharedUserInfos:a36 prefixText:v40 postfixText:v47 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

  return v65;
}

uint64_t sub_22BD8971C(void *a1)
{
  v1 = [a1 tcuList];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22BBED848(0, &qword_27D8E6A20, 0x277D5D2F0);
  v3 = sub_22BDBAD64();

  return v3;
}

uint64_t sub_22BD8978C(void *a1)
{
  v2 = [a1 oneBestTranscript];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22BDBABF4();

  return v3;
}

uint64_t sub_22BD897FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD8986C(void *a1)
{
  v1 = [a1 trpCandidateId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDBABF4();

  return v3;
}

unint64_t sub_22BD898D0()
{
  result = qword_27D8E6A28;
  if (!qword_27D8E6A28)
  {
    sub_22BDB8D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6A28);
  }

  return result;
}

id sub_22BD89928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[3] = type metadata accessor for SessionCoordinatorResponseCallback();
  v19[4] = &off_283F80930;
  v19[0] = a4;
  v10 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_latestRequestEvent;
  v11 = sub_22BDB9B54();
  sub_22BB336D0(&a5[v10], 1, 1, v11);
  v12 = &a5[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_turnId];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_transcript;
  v14 = sub_22BDB9774();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a5[v13], a3, v14);
  sub_22BB69088(v19, &a5[OBJC_IVAR____TtC23IntelligenceFlowRuntime48SpeechHandlerLocalSpeechRecognizerClientDelegate_spanResponseCallback]);
  v18.receiver = a5;
  v18.super_class = type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a3, v14);
  sub_22BB32FA4(v19);
  return v16;
}

id sub_22BD89A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v17[3] = v7;
  v17[4] = &off_283F80930;
  v17[0] = a4;
  v8 = objc_allocWithZone(type metadata accessor for SpeechHandlerLocalSpeechRecognizerClientDelegate());
  v9 = sub_22BB8D7AC(v17, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17[-1] - v11);
  (*(v13 + 16))(&v17[-1] - v11);
  v14 = sub_22BD89928(a1, a2, a3, *v12, v8);
  sub_22BB32FA4(v17);
  return v14;
}

uint64_t sub_22BD89BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a1;
  v5[14] = a5;
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = sub_22BDB9C84();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = sub_22BDB9B14();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v15 = sub_22BDB8934();
  v5[23] = v15;
  v16 = *(v15 - 8);
  v5[24] = v16;
  v17 = *(v16 + 64) + 15;
  v5[25] = swift_task_alloc();
  v18 = sub_22BDB9774();
  v5[26] = v18;
  v19 = *(v18 - 8);
  v5[27] = v19;
  v20 = *(v19 + 64) + 15;
  v5[28] = swift_task_alloc();
  v21 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v22 = sub_22BDB9B54();
  v5[30] = v22;
  v23 = *(v22 - 8);
  v5[31] = v23;
  v24 = *(v23 + 64) + 15;
  v5[32] = swift_task_alloc();
  v25 = sub_22BDB77D4();
  v5[33] = v25;
  v26 = *(v25 - 8);
  v5[34] = v26;
  v27 = *(v26 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback();
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BD89EF8, a5, 0);
}

uint64_t sub_22BD89EF8()
{
  v1 = v0[36];
  sub_22BDB6354();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB38F24(&dword_22BB2C000, v2, v3, "SpeechHandler accept");
    sub_22BB30AF0();
  }

  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[29];
  v110 = v0[30];
  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[26];
  v12 = v0[13];

  v13 = *(v7 + 8);
  v13(v5, v6);
  sub_22BDB96A4();
  v14 = sub_22BDB9744();
  (*(v9 + 8))(v10, v11);
  v0[12] = v14;
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  sub_22BDB9144();

  v15 = sub_22BB2F3FC();
  if (sub_22BB3AA28(v15, v16, v110) != 1)
  {
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];
    (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
    sub_22BDB9B24();
    if ((*(v18 + 88))(v17, v19) != *MEMORY[0x277D1E758])
    {
      v36 = v0[21];
      v35 = v0[22];
      v37 = v0[20];
      (*(v0[31] + 8))(v0[32], v0[30]);
      v38 = *(v36 + 8);
      v39 = sub_22BB2F324();
      v40(v39);
      goto LABEL_11;
    }

    v21 = v0[24];
    v20 = v0[25];
    v23 = v0[22];
    v22 = v0[23];
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[17];
    (*(v0[21] + 96))(v23, v0[20]);
    (*(v21 + 32))(v20, v23, v22);
    sub_22BDB8904();
    if ((*(v25 + 88))(v24, v26) != *MEMORY[0x277D1E8F8])
    {
      v42 = v0[31];
      v41 = v0[32];
      v43 = v0[30];
      v45 = v0[18];
      v44 = v0[19];
      v46 = v0[17];
      (*(v0[24] + 8))(v0[25], v0[23]);
      v47 = *(v42 + 8);
      v48 = sub_22BB2F324();
      v49(v48);
      (*(v45 + 8))(v44, v46);
      goto LABEL_11;
    }

    v27 = v0[25];
    v28 = v0[16];
    (*(v0[18] + 8))(v0[19], v0[17]);
    v29 = sub_22BDB8924();
    v31 = v30;
    sub_22BDB88F4();
    v32 = sub_22BDB6204();
    v33 = sub_22BB2F3FC();
    if (sub_22BB3AA28(v33, v34, v32) == 1)
    {
      sub_22BB6B75C(v0[16], &qword_27D8E2F40, &qword_22BDCFFE0);
    }

    else
    {
      v71 = sub_22BDB61E4();
      v73 = v72;
      sub_22BB30474(v32);
      v75 = *(v74 + 8);
      v76 = sub_22BB2F324();
      v77(v76);
      if (v73)
      {
LABEL_19:
        v78 = v0[25];
        v79 = v0[15];
        sub_22BDB88F4();
        v80 = sub_22BB2F3FC();
        v82 = sub_22BB3AA28(v80, v81, v32);
        v83 = v0[15];
        if (v82 == 1)
        {
          sub_22BB6B75C(v0[15], &qword_27D8E2F40, &qword_22BDCFFE0);
          v84 = 0;
        }

        else
        {
          v85 = v0[15];
          v84 = sub_22BDB61B4();
          sub_22BB30474(v32);
          (*(v86 + 8))(v83, v32);
        }

        v109 = v0[30];
        v112 = v0[32];
        v87 = v0[28];
        v107 = v0[25];
        v108 = v0[31];
        v105 = v0[24];
        v106 = v0[23];
        v88 = v0[13];
        v89 = v0[14];
        v90 = *MEMORY[0x277D24258];
        v91 = objc_allocWithZone(MEMORY[0x277D24248]);
        v92 = sub_22BD89330(v90, v29, v31, v71, v73, 0, 0, v84, MEMORY[0x277D84F90], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);
        v93 = [v92 requestId];
        v94 = sub_22BDBABF4();
        v96 = v95;

        sub_22BDB96A4();
        sub_22BB69088((v0 + 2), (v0 + 7));
        v97 = v0[10];
        v98 = sub_22BB8D7AC((v0 + 7), v97);
        v99 = *(v97 - 8);
        v100 = *(v99 + 64) + 15;
        v101 = swift_task_alloc();
        (*(v99 + 16))(v101, v98, v97);
        v102 = sub_22BD89A70(v94, v96, v87, *v101);
        sub_22BB32FA4(v0 + 7);

        v103 = *(v89 + 136);
        *(v89 + 136) = v102;
        swift_unknownObjectRelease();
        v104 = *(v89 + 128);
        [v104 setLocalSpeechRecognizerClientDelegate_];
        [v104 startSpeechRecognitionResultsWithSettings_];

        (*(v105 + 8))(v107, v106);
        (*(v108 + 8))(v112, v109);
        goto LABEL_14;
      }
    }

    v71 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_19;
  }

  sub_22BB6B75C(v0[29], &unk_27D8E69E0, &qword_22BDC1660);
LABEL_11:
  v50 = v0[35];
  sub_22BDB6354();
  v51 = sub_22BDB77C4();
  v52 = sub_22BDBB114();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = sub_22BB37F30();
    sub_22BB360F0(v53);
    sub_22BB38F24(&dword_22BB2C000, v51, v52, "No userTurnStarted event found in transcript, or turn is not speech");
    sub_22BB30AF0();
  }

  v55 = v0[34];
  v54 = v0[35];
  v56 = v0[33];

  v13(v54, v56);
  v57 = *sub_22BB69FEC(v0 + 2, v0[5]);
  sub_22BB30A2C();
  sub_22BD790CC(v58, v59, 0);
LABEL_14:
  v60 = v0[35];
  v61 = v0[36];
  v62 = v0[32];
  v64 = v0[28];
  v63 = v0[29];
  v65 = v0[25];
  v66 = v0[22];
  v67 = v0[19];
  v68 = v0[16];
  v111 = v0[15];
  sub_22BB32FA4(v0 + 2);

  v69 = v0[1];

  return v69();
}

void sub_22BD8A650(void *a1)
{
  v2 = sub_22BDB4EB4();
  v68 = sub_22BB30444(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB4E94();
  v64 = sub_22BB30444(v8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BB30574();
  v13 = v12 - v11;
  v55 = sub_22BDB4ED4();
  v14 = sub_22BB30444(v55);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v19 = v18 - v17;
  v52 = a1;
  v20 = [a1 recognition];
  if (!v20)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = sub_22BD8AE20(v20);
  if (!v21)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = sub_22BD6F19C(v21);
  if (!v23)
  {
    goto LABEL_47;
  }

  v71 = MEMORY[0x277D84F90];
  v57 = v23;
  sub_22BD28718();
  if (v57 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v24 = 0;
  v56 = v22 & 0xC000000000000001;
  v60 = v71;
  v54 = v22 & 0xFFFFFFFFFFFFFF8;
  v53 = v22 + 32;
  v62 = v19;
  v63 = v13;
  while (1)
  {
    if (__OFADD__(v24, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v59 = v24 + 1;
    if (v56)
    {
      v25 = MEMORY[0x2318A5340]();
    }

    else
    {
      if (v24 >= *(v54 + 16))
      {
        goto LABEL_56;
      }

      v25 = *(v53 + 8 * v24);
    }

    v58 = v25;
    v26 = sub_22BD8AE98(v25, &selRef_interpretations, &qword_27D8E6A50, 0x277CEF458);
    if (!v26)
    {
      goto LABEL_59;
    }

    v27 = v26;
    v61 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      break;
    }

    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_14;
    }

LABEL_44:

    sub_22BDB4E84();

    v47 = v60;
    v48 = *(v60 + 16);
    if (v48 >= *(v60 + 24) >> 1)
    {
      sub_22BD28718();
      v47 = v60;
    }

    *(v47 + 16) = v48 + 1;
    sub_22BB2F374();
    v60 = v49;
    (*(v51 + 32))(v49 + v50 + *(v51 + 72) * v48, v19, v55);
    v24 = v59;
    if (v59 == v57)
    {
      goto LABEL_47;
    }
  }

  v28 = sub_22BDBB4F4();
  if (!v28)
  {
    goto LABEL_44;
  }

LABEL_14:
  v70 = MEMORY[0x277D84F90];
  sub_22BD28770();
  if (v28 < 0)
  {
    goto LABEL_54;
  }

  v29 = 0;
  v65 = v28;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x2318A5340]();
    }

    else
    {
      if (v29 >= *(v61 + 16))
      {
        goto LABEL_52;
      }

      v31 = *(v27 + 32 + 8 * v29);
    }

    v32 = v31;
    v33 = sub_22BD8AE98(v31, &selRef_tokens, &qword_27D8E6A38, 0x277CEF4B0);
    if (!v33)
    {
      goto LABEL_58;
    }

    v34 = v33;
    v67 = v33 & 0xFFFFFFFFFFFFFF8;
    v35 = v33 >> 62 ? sub_22BDBB4F4() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      break;
    }

LABEL_38:
    sub_22BDB4E84();

    v44 = *(v70 + 16);
    if (v44 >= *(v70 + 24) >> 1)
    {
      sub_22BD28770();
    }

    *(v70 + 16) = v44 + 1;
    sub_22BB2F374();
    (*(v46 + 32))(v70 + v45 + *(v46 + 72) * v44, v13);
    v29 = v30;
    if (v30 == v65)
    {
      goto LABEL_44;
    }
  }

  v69 = MEMORY[0x277D84F90];
  sub_22BD286C0();
  if (v35 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v66 = v32;
  v36 = 0;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x2318A5340](v36, v34);
    }

    else
    {
      if (v36 >= *(v67 + 16))
      {
        goto LABEL_49;
      }

      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    sub_22BD8ADBC(v38);
    if (!v40)
    {
      goto LABEL_55;
    }

    [v39 confidenceScore];
    [v39 startTime];
    [v39 silenceStartTime];
    [v39 endTime];
    sub_22BDB4EA4();

    v41 = *(v69 + 16);
    if (v41 >= *(v69 + 24) >> 1)
    {
      sub_22BD286C0();
    }

    *(v69 + 16) = v41 + 1;
    sub_22BB2F374();
    (*(v43 + 32))(v69 + v42 + *(v43 + 72) * v41, v7);
    ++v36;
    if (v37 == v35)
    {

      v19 = v62;
      v13 = v63;
      v32 = v66;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_47:

  sub_22BDB4E84();
}

uint64_t sub_22BD8ADBC(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDBABF4();

  return v3;
}

uint64_t sub_22BD8AE20(void *a1)
{
  v2 = [a1 phrases];

  if (!v2)
  {
    return 0;
  }

  sub_22BBED848(0, &unk_27D8E6A58, 0x277CEF478);
  v3 = sub_22BDBAD64();

  return v3;
}

uint64_t sub_22BD8AE98(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_22BBED848(0, a3, a4);
  v8 = sub_22BDBAD64();

  return v8;
}

uint64_t StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v41[1] = a6;
  v41[2] = a5;
  v44 = a1;
  v9 = sub_22BDB9C14();
  v10 = sub_22BB2F0C8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v14 = sub_22BB2F0C8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v41 - v17;
  sub_22BB30418();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v26 = v25 - v24;
  sub_22BB30418();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v34 = v33 - v32;
  v35 = *v6;
  v36 = *(v28 + 16);
  v37 = v44;
  v44 = a3;
  v36(v34, v37, a3);
  (*(v20 + 16))(v26, v42, a4);
  v38 = sub_22BDB4254();
  sub_22BB336D0(v18, 1, 1, v38);
  v45 = v35;
  v39 = v43;
  sub_22BB69D0C();
  if (v39)
  {
    sub_22BD8B1B8(v18);
    (*(v20 + 8))(v26, a4);
    return (*(v28 + 8))(v34, v44);
  }

  else
  {
    sub_22BDB8534();
    return sub_22BDB8514();
  }
}

uint64_t sub_22BD8B1B8(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)(void *a1, void *a2)
{
  v5 = sub_22BDB9C14();
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v11 = v10 - v9;
  v12 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v40 - v16;
  v42 = *v2;
  v18 = a1[3];
  v40[2] = a1[4];
  v19 = sub_22BB69FEC(a1, v18);
  v20 = a2[3];
  v40[1] = a2[4];
  v41 = sub_22BB69FEC(a2, v20);
  sub_22BB30418();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v28 = v27 - v26;
  (*(v22 + 16))(v27 - v26, v19, v18);
  sub_22BB30418();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30574();
  v36 = v35 - v34;
  (*(v30 + 16))(v35 - v34, v41, v20);
  v37 = sub_22BDB4254();
  sub_22BB336D0(v17, 1, 1, v37);
  v38 = v43;
  v44 = v42;
  v42 = v11;
  sub_22BB69D0C();
  if (v38)
  {
    sub_22BD8B1B8(v17);
    (*(v30 + 8))(v36, v20);
    return (*(v22 + 8))(v28, v18);
  }

  else
  {
    sub_22BDB8AF4();
    return sub_22BDB8AB4();
  }
}

uint64_t static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[6] = MEMORY[0x277D84F90];
  v16[3] = a3;
  v16[4] = a5;
  v11 = sub_22BB8B8A0(v16);
  (*(*(a3 - 8) + 16))(v11, a1, a3);
  v15[3] = a4;
  v15[4] = a6;
  v12 = sub_22BB8B8A0(v15);
  (*(*(a4 - 8) + 16))(v12, a2, a4);
  v13 = StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)(v16, v15);

  sub_22BB32FA4(v15);
  sub_22BB32FA4(v16);
  return v13;
}

uint64_t static StandardToolboxConfiguration.makeMutableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_22BD8B66C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark;
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark) = 0;
  v25 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_transaction;
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_transaction) = 0;
  v11 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_id;
  v12 = sub_22BDB43E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5 + v11, a1, v12);
  v14 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_query;
  v15 = sub_22BDB5EA4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a2, v15);
  *(v5 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_publisher) = a3;
  *(v5 + v10) = a4;
  swift_unknownObjectRetain();
  v23 = a3;
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD000000000000031, 0x800000022BDD48F0);
  sub_22BB32D80();
  sub_22BD8D7EC(v17, v18);
  v19 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v19);

  sub_22BDBAC24();

  v20 = os_transaction_create();

  swift_unknownObjectRelease();
  (*(v16 + 8))(a2, v15);
  (*(v13 + 8))(a1, v12);

  v21 = *(v5 + v25);
  *(v5 + v25) = v20;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22BD8B8C4()
{
  v1 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_id;
  v2 = sub_22BDB43E4();
  sub_22BB31F70(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_query;
  v5 = sub_22BDB5EA4();
  sub_22BB31F70(v5);
  (*(v6 + 8))(v0 + v4);

  v7 = *(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_transaction);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_22BD8B97C()
{
  sub_22BD8B8C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_22BD8B9D4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[14] = a1;
  v2[15] = a2;
  sub_22BDB43E4();
  type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState();
  sub_22BB32D80();
  sub_22BD8D7EC(v5, v6);
  v2[16] = sub_22BDBAB14();
  return v2;
}

void sub_22BD8BA68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_22BDB5EA4();
  v4 = sub_22BB30444(v3);
  v48 = v5;
  v49 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v47 = v9 - v8;
  v46 = sub_22BDB43E4();
  v10 = sub_22BB30444(v46);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  sub_22BDB43D4();
  v25 = [BiomeLibrary() Sage];
  swift_unknownObjectRelease();
  v26 = [v25 Transcript];
  swift_unknownObjectRelease();
  sub_22BDB5E94();
  v27 = sub_22BDB4354();
  sub_22BB336D0(v24, 1, 1, v27);
  v28 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22BB31B88();
  v33 = sub_22BD8D64C(v29, v30, v31, v32, 0);
  v34 = [v26 publisherWithOptions_];

  v35 = *(v12 + 16);
  v36 = v45;
  v37 = v46;
  v35(v19, v45, v46);
  v35(v17, v36, v37);
  v38 = v47;
  (*(v48 + 16))(v47, a1, v49);
  active = type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState();
  v40 = *(active + 48);
  v41 = *(active + 52);
  swift_allocObject();
  v42 = v34;
  sub_22BD8B66C(v17, v38, v42, 0);
  v43 = v50;
  swift_beginAccess();
  v44 = *(v43 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v43 + 128);
  sub_22BD85808();
  *(v43 + 128) = v51;
  (*(v12 + 8))(v19, v37);
  swift_endAccess();
}

uint64_t sub_22BD8BDF0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22BDB77D4();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v13 = v12 - v11;
  sub_22BB31B88();
  swift_beginAccess();
  v14 = v1[16];

  v15 = sub_22BD8135C(a1, v14);

  if (v15)
  {
    v42 = v8;
    v43 = v5;
    sub_22BB366B8();
    v16 = swift_allocObject();
    *(v16 + 16) = MEMORY[0x277D84F90];
    sub_22BB366B8();
    v45 = v4;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = v2[15];
    v44 = v2[14];
    v19 = *(v15 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_publisher);
    v20 = *(v15 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark);
    v51 = sub_22BD8D630;
    v52 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22BD8C3E0;
    v50 = &unk_283F810D8;
    v46 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v21 = v19;

    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v44;
    v22[4] = v18;
    v22[5] = v2;
    v22[6] = v16;
    v22[7] = v17;
    v22[8] = v45;
    v51 = sub_22BD8D638;
    v52 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22BD8CF70;
    v50 = &unk_283F81128;
    v23 = _Block_copy(&aBlock);

    v24 = [v21 drivableSinkWithBookmark:v20 completion:v46 shouldContinue:v23];
    _Block_release(v23);
    _Block_release(v46);

    swift_unknownObjectRelease();
    sub_22BB31B88();
    swift_beginAccess();
    v25 = *(v17 + 16);
    if (v25)
    {
      v26 = v25;
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
      v27 = v25;
      v28 = sub_22BDB77C4();
      v29 = sub_22BDBB114();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = v25;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&dword_22BB2C000, v28, v29, "Failed to read transcript: %@", v30, 0xCu);
        sub_22BB325EC(v31, &unk_27D8E6A70, &unk_22BDBCDB0);
        MEMORY[0x2318A6080](v31, -1, -1);
        MEMORY[0x2318A6080](v30, -1, -1);
      }

      (*(v42 + 8))(v13, v43);
      v34 = sub_22BDB5E74();
      sub_22BB33ED0();
      sub_22BD8D7EC(v35, v36);
      sub_22BB3289C();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D1D270], v34);
      swift_willThrow();
    }

    else
    {

      sub_22BB31B88();
      swift_beginAccess();
      v34 = *(v16 + 16);
    }
  }

  else
  {
    v34 = sub_22BDB5E74();
    sub_22BB33ED0();
    sub_22BD8D7EC(v38, v39);
    sub_22BB3289C();
    (*(*(v34 - 8) + 104))(v40, *MEMORY[0x277D1D278], v34);
    swift_willThrow();
  }

  return v34;
}

uint64_t sub_22BD8C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark);
  *(a3 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31TranscriptEntityQueryingService16ActiveQueryState_bookmark) = a2;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

void sub_22BD8C3E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

BOOL sub_22BD8C468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a7;
  v87 = a6;
  v89 = a4;
  v85 = a3;
  v95 = a2;
  v8 = sub_22BDB77D4();
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8);
  v93 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4354();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22BDB9D54();
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB43E4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BDB58D4();
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v19);
  v79 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v86 = &v70 - v24;
  v90 = sub_22BDBA594();
  v78 = *(v90 - 8);
  v25 = *(v78 + 64);
  v26 = MEMORY[0x28223BE20](v90);
  v74 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v75 = &v70 - v28;
  v29 = sub_22BDB6054();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_22BDB8E84();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v70 - v37;
  v91 = sub_22BDB9B54();
  v88 = *(v91 - 8);
  v39 = *(v88 + 64);
  v40 = MEMORY[0x28223BE20](v91);
  v42 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v70 - v43;
  v45 = [a1 eventBody];
  if (!v45)
  {
    return 1;
  }

  v46 = v45;
  v47 = sub_22BD8D788(v45);
  if (v48 >> 60 == 15)
  {

    return 1;
  }

  v49 = v48;
  v71 = v46;
  v70 = v8;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v50 = v47;
  sub_22BB352C4(v47, v48);
  sub_22BDB6044();
  sub_22BD8D7EC(&qword_281428A70, MEMORY[0x277D1E148]);
  v72 = v50;
  v73 = v49;
  sub_22BDB6074();
  (*(v32 + 16))(v36, v38, v31);
  sub_22BDB99A4();
  (*(v32 + 8))(v38, v31);
  v52 = v88;
  v53 = v44;
  v54 = v91;
  (*(v88 + 32))(v44, v42, v91);
  v55 = v89;
  v56 = v90;
  if (v89)
  {
    v57 = sub_22BDB99F4();
    if (!v58)
    {
LABEL_13:

      sub_22BB94C90(v72, v73);
      (*(v52 + 8))(v44, v54);
      return 1;
    }

    if (v57 == v85 && v58 == v55)
    {
    }

    else
    {
      v60 = sub_22BDBB6D4();

      if ((v60 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v61 = v86;
  sub_22BD8CFC8(v86);
  if (sub_22BB3AA28(v61, 1, v56) == 1)
  {
    (*(v52 + 8))(v44, v54);

    sub_22BB94C90(v72, v73);
    sub_22BB325EC(v61, &qword_27D8E2668, &unk_22BDBCCD0);
    v62 = v87;
  }

  else
  {
    v63 = v52;
    v64 = v78;
    v65 = v75;
    (*(v78 + 32))(v75, v61, v56);
    sub_22BDB8F24();
    v66 = v77;
    sub_22BDB9B44();
    sub_22BDB9D44();
    (*(v80 + 8))(v66, v81);
    (*(v64 + 16))(v74, v65, v56);
    v67 = v79;
    sub_22BDB58C4();
    v62 = v87;
    swift_beginAccess();
    sub_22BD7DB1C();
    v68 = *(*(v62 + 16) + 16);
    sub_22BD7DB4C(v68);
    v69 = *(v62 + 16);
    *(v69 + 16) = v68 + 1;
    (*(v82 + 32))(v69 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v68, v67, v83);
    *(v62 + 16) = v69;
    swift_endAccess();

    sub_22BB94C90(v72, v73);
    (*(v64 + 8))(v65, v56);
    (*(v63 + 8))(v53, v91);
  }

  swift_beginAccess();
  return *(*(v62 + 16) + 16) < 0xFuLL;
}

uint64_t sub_22BD8CF70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_22BD8CFC8@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22BDB5404();
  v2 = sub_22BB30444(v1);
  v51 = v3;
  v52 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB90B4();
  v10 = sub_22BB30444(v9);
  v49 = v11;
  v50 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB4E24();
  v18 = sub_22BB30444(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v24 = v23 - v22;
  v25 = sub_22BDB9B14();
  v26 = sub_22BB30444(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v33 = v32 - v31;
  v34 = sub_22BDB87F4();
  v35 = sub_22BB30444(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB30574();
  v42 = v41 - v40;
  sub_22BDB9B24();
  if ((*(v28 + 88))(v33, v25) != *MEMORY[0x277D1E798])
  {
    (*(v28 + 8))(v33, v25);
LABEL_6:
    v44 = 1;
    v43 = a1;
    goto LABEL_7;
  }

  (*(v28 + 96))(v33, v25);
  (*(v37 + 32))(v42, v33, v34);
  sub_22BDB87E4();
  sub_22BDB9094();
  (*(v49 + 8))(v16, v50);
  if ((*(v51 + 88))(v8, v52) != *MEMORY[0x277D1CBF0])
  {
    (*(v37 + 8))(v42, v34);
    (*(v51 + 8))(v8, v52);
    goto LABEL_6;
  }

  (*(v51 + 96))(v8, v52);
  (*(v47 + 32))(v24, v8, v48);
  v43 = a1;
  sub_22BDB4DF4();
  (*(v47 + 8))(v24, v48);
  (*(v37 + 8))(v42, v34);
  v44 = 0;
LABEL_7:
  v45 = sub_22BDBA594();
  return sub_22BB336D0(v43, v44, 1, v45);
}

uint64_t sub_22BD8D3C4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BD8D3F4()
{
  sub_22BD8D3C4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState()
{
  result = qword_2814291C8;
  if (!qword_2814291C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD8D498()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22BDB5EA4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD8D57C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BD8D5D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_22BD8D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22BDB4354();
  v13 = 0;
  if (sub_22BB3AA28(a1, 1, v12) != 1)
  {
    v13 = sub_22BDB4314();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22BB3AA28(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22BDB4314();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22BD8D788(void *a1)
{
  v1 = [a1 eventPayload];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDB4304();

  return v3;
}

uint64_t sub_22BD8D7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BD8D83C(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = sub_22BB30444(v2);
  v37 = v4;
  v38 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v39 = sub_22BBE6DE0(&qword_27D8E6A40, &qword_22BDD0190);
  v13 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  v16 = sub_22BDB77D4();
  v17 = sub_22BB30444(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6344();

  v24 = sub_22BDB77C4();
  v25 = sub_22BDBB104();

  if (os_log_type_enabled(v24, v25))
  {
    v36 = v16;
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v26 = 136315138;
    sub_22BD39594(a1);
    v27 = sub_22BDB9B54();
    if (sub_22BB3AA28(v12, 1, v27) == 1)
    {
      sub_22BD8DD90(v12);
      v28 = 1;
    }

    else
    {
      sub_22BDB9B24();
      (*(*(v27 - 8) + 8))(v12, v27);
      sub_22BDB9AC4();
      (*(v37 + 8))(v8, v38);
      v28 = 0;
    }

    v29 = sub_22BDB9254();
    sub_22BB336D0(v15, v28, 1, v29);
    v30 = sub_22BDBAC14();
    v32 = sub_22BB32EE0(v30, v31, &v40);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_22BB2C000, v24, v25, "TurnManager interestedIn; lastPayload: %s", v26, 0xCu);
    v33 = v35;
    sub_22BB32FA4(v35);
    MEMORY[0x2318A6080](v33, -1, -1);
    MEMORY[0x2318A6080](v26, -1, -1);

    (*(v19 + 8))(v23, v36);
  }

  else
  {

    (*(v19 + 8))(v23, v16);
  }

  return 0;
}

uint64_t TurnManager.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TurnManager.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BD8DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22BB6A0B4;

  return (sub_22BD8DDF8)(a1, a2, a3, v8);
}

uint64_t sub_22BD8DD90(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD8DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22BDB77D4();
  v4[2] = v6;
  v7 = *(v6 - 8);
  v4[3] = v7;
  v8 = *(v7 + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD8DEB8, a4, 0);
}

uint64_t sub_22BD8DEB8()
{
  v1 = v0[4];
  sub_22BDB6344();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "TurnManager accept", v4, 2u);
    MEMORY[0x2318A6080](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22BD8DFB8()
{
  result = sub_22BDBABE4();
  qword_28142F260 = result;
  return result;
}

uint64_t static RuntimeNumericError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_22BDBB6D4();
        sub_22BB3AC54();
        sub_22BB2F6B4();
        sub_22BB2F6B4();
        sub_22BD8E170();
        sub_22BB3AC54();
        goto LABEL_16;
      }

      sub_22BB2F6B4();
      sub_22BB2F6B4();
      sub_22BD8E170();
      sub_22BD8E170();
      return 1;
    }

LABEL_9:
    sub_22BB3AC54();
    sub_22BB2F6B4();
    sub_22BB2F6B4();
    sub_22BD8E170();
    sub_22BB3AC54();
    sub_22BD8E170();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    sub_22BB38C24();
    sub_22BD8E168();
    sub_22BB38C24();
    sub_22BD8E168();
    sub_22BB38C24();
    sub_22BD8E170();
    sub_22BB38C24();
    sub_22BD8E170();
    return v10;
  }

  v8 = *a1;
  v9 = sub_22BDBB6D4();
  sub_22BB3AC54();
  sub_22BD8E168();
  sub_22BB38C24();
  sub_22BD8E168();
  sub_22BB38C24();
  sub_22BD8E170();
  sub_22BB3AC54();
LABEL_16:
  sub_22BD8E170();
  return v9 & 1;
}

Swift::String __swiftcall Float.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_22BB94F30();
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](102, 0xE100000000000000);
  sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83A90];
  *(v4 + 16) = xmmword_22BDBCBD0;
  v6 = MEMORY[0x277D83B08];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_22BDBAC04();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Double.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_22BB94F30();
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  MEMORY[0x2318A4C40](102, 0xE100000000000000);
  sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_22BDBCBD0;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_22BDBAC04();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void Array<A>.dotProduct(with:)(uint64_t a1, uint64_t a2)
{
  sub_22BB3886C(a1, a2);
  if (v2)
  {
    sub_22BB53E70();
    sub_22BD8E78C(v3, v5, v4);
  }

  else
  {
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD00000000000004DLL, 0x800000022BDD49A0);
    v6 = sub_22BB39294();
    MEMORY[0x2318A4C40](v6);

    sub_22BB3713C();
    v7 = sub_22BB39294();
    MEMORY[0x2318A4C40](v7);

    sub_22BD8E478();
    v8 = sub_22BB31A08();
    sub_22BB54328(v8, v9);
  }
}

unint64_t sub_22BD8E478()
{
  result = qword_27D8E6A88;
  if (!qword_27D8E6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6A88);
  }

  return result;
}

void Array<A>.cosineSimilarity(with:)(uint64_t a1, uint64_t a2)
{
  __C[2] = *MEMORY[0x277D85DE8];
  v3 = sub_22BB3886C(a1, a2);
  if (v5)
  {
    v6 = v4;
    v7 = v3;
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v4 + 32), 1, __C, v2);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v7 + 32), 1, __C, v2);
    sub_22BB53E70();
    sub_22BD8E78C(v6, v7, v8);
  }

  else
  {
    __C[0] = 0;
    __C[1] = 0xE000000000000000;
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD000000000000053, 0x800000022BDD49F0);
    v9 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v9);

    sub_22BB3713C();
    v10 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v10);

    sub_22BD8E478();
    v11 = sub_22BB31A08();
    sub_22BB54328(v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void Array<A>.euclideanDistance(with:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BB3886C(a1, a2);
  if (v4)
  {
    v5 = sub_22BD8E78C(v3, v2, MEMORY[0x277CB8748]);
    sqrtf(v5);
  }

  else
  {
    sub_22BDBB334();
    MEMORY[0x2318A4C40](0xD000000000000054, 0x800000022BDD4A50);
    v6 = sub_22BB39294();
    MEMORY[0x2318A4C40](v6);

    sub_22BB3713C();
    v7 = sub_22BB39294();
    MEMORY[0x2318A4C40](v7);

    sub_22BD8E478();
    v8 = sub_22BB31A08();
    sub_22BB54328(v8, v9);
  }
}

float sub_22BD8E78C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, float *))
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != *(a2 + 16))
  {
    __break(1u);
  }

  v5 = NAN;
  a3(a1 + 32, 1, a2 + 32, 1, &v5);
  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Array<A>.padding(totalSize:padValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  v6 = a1 - v5;
  if (a1 <= v5)
  {

    return v4;
  }

  if (a1 - v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  sub_22BD916F8();
  v4 = v10;
LABEL_4:
  v7 = *(v4 + 16);
  do
  {
    if (v7 >= *(v4 + 24) >> 1)
    {
      sub_22BD916F8();
      v4 = v8;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7++ + 32) = v3;
    --v6;
  }

  while (v6);
  return v4;
}

void Array<A>.to2D(numRows:numColumns:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = a2;
  v5 = *(a3 + 16);
  if (v5 != a1 * a2)
  {
    sub_22BDBB334();

    v19 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v19);

    MEMORY[0x2318A4C40](540877088, 0xE400000000000000);
    v20 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v20);

    MEMORY[0x2318A4C40](2107936, 0xE300000000000000);
    v21 = sub_22BB52F20();
    MEMORY[0x2318A4C40](v21);

    sub_22BD8E478();
    sub_22BB31A08();
    *v22 = 0xD000000000000025;
    *(v22 + 8) = 0x800000022BDD4AB0;
    *(v22 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (a1 < 0)
  {
    goto LABEL_25;
  }

  if (a1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22BD287C8();
    if (v4 < 0)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = 0;
    v8 = v28;
    v9 = a1;
    v10 = MEMORY[0x277D84F90];
    v23 = v4;
    while (!v4)
    {
      v11 = v10;
LABEL_16:
      v29 = v8;
      v17 = *(v8 + 16);
      if (v17 >= *(v8 + 24) >> 1)
      {
        v18 = v6;
        sub_22BD287C8();
        v6 = v18;
        v10 = MEMORY[0x277D84F90];
        v9 = a1;
        v8 = v29;
      }

      ++v7;
      *(v8 + 16) = v17 + 1;
      *(v8 + 8 * v17 + 32) = v11;
      v6 += v4;
      if (v7 == v9)
      {
        return;
      }
    }

    v25 = v8;
    v26 = v6;
    v27 = v10;
    sub_22BD28808(0, v4, 0);
    if ((v7 * v4) >> 64 == (v7 * v4) >> 63)
    {
      v6 = v26;
      v11 = v27;
      v12 = v4;
      v13 = v26;
      v9 = a1;
      v8 = v25;
      v10 = MEMORY[0x277D84F90];
      while (v13 < v5)
      {
        v14 = *(a3 + 32 + 4 * v13);
        v16 = *(v27 + 16);
        v15 = *(v27 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_22BD28808((v15 > 1), v16 + 1, 1);
          v8 = v25;
          v6 = v26;
          v10 = MEMORY[0x277D84F90];
          v9 = a1;
        }

        *(v27 + 16) = v16 + 1;
        *(v27 + 4 * v16 + 32) = v14;
        ++v13;
        if (!--v12)
        {
          v4 = v23;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_22BD8EBF4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, qword_27D8E2550, &unk_22BDBCC10);
  sub_22BB38F5C();
  v9 = sub_22BDBA594();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD272F0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8ECBC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B20, &qword_22BDD03A8);
  sub_22BB38F5C();
  v9 = sub_22BDB44A4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27308(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8ED84()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B18, &qword_22BDD03A0);
  sub_22BB38F5C();
  v9 = sub_22BDB4484();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD273DC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EE4C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B10, &qword_22BDD0398);
  sub_22BB38F5C();
  v9 = sub_22BDB4524();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD273F4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EF14()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B08, &qword_22BDD0390);
  sub_22BB38F5C();
  v9 = sub_22BDB4584();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2740C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8EFDC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B00, &qword_22BDD0388);
  sub_22BB38F5C();
  v9 = sub_22BDB44B4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27444(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F0A4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6AF8, &qword_22BDD0380);
  sub_22BB38F5C();
  v9 = sub_22BDB4474();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2745C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F16C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B28, &qword_22BDD03B0);
  sub_22BB38F5C();
  v9 = sub_22BDB4464();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27474(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F234()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E6AE8, &unk_22BDD0368);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2748C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F300()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B30, &qword_22BDD03B8);
  sub_22BB38F5C();
  v9 = sub_22BDB4B34();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD274A0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F3C8()
{
  sub_22BB69BFC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22BB31E6C(v6);
    if (v3)
    {
      sub_22BBE6DE0(&qword_27D8E6A98, &unk_22BDD02C8);
      v9 = swift_allocObject();
      sub_22BB3A7D8(v9);
      sub_22BB37430(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_22BB328BC();
        sub_22BD27424(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v7)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD8F488()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E6078, &qword_22BDCD5B0);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD274B8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F554()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6AF0, &qword_22BDD0378);
  sub_22BB38F5C();
  v9 = sub_22BDB44D4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD274CC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F61C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6A90, &qword_22BDD02C0);
  sub_22BB38F5C();
  v9 = sub_22BDB87F4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD274E4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F6E4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E5FD0, &unk_22BDCEA40);
  sub_22BB38F5C();
  v9 = sub_22BDB9B54();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD274FC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F7AC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6BD0, qword_22BDD04C0);
  sub_22BB38F5C();
  v9 = sub_22BDB7444();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27514(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F874()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E3DC0, &qword_22BDC1158);
      v8 = swift_allocObject();
      sub_22BB3A7D8(v8);
      sub_22BB37430(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2752C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD8F934()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6BC0, &qword_22BDD04B0);
  sub_22BB38F5C();
  v9 = sub_22BDB6984();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2754C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8F9FC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6BC8, &qword_22BDD04B8);
  sub_22BB38F5C();
  v9 = sub_22BDB69D4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27564(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FAC4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E5ED0, &unk_22BDCD5E0);
  sub_22BB38F5C();
  v9 = sub_22BDB7B44();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2757C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FB8C()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6BB0, &qword_22BDD04A0);
      v8 = sub_22BB58BA4();
      v9 = j__malloc_size(v8);
      sub_22BB37908(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2F748(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E6BB8, &qword_22BDD04A8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD8FC50()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6BA8, &qword_22BDD0498);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27594(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FD18()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6B68, &qword_22BDD0428);
      v8 = sub_22BB58BA4();
      v9 = j__malloc_size(v8);
      sub_22BB37908(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2F748(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD8FDDC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E3EB8, &unk_22BDC3000);
  sub_22BB38F5C();
  v9 = _s15CandidateResultVMa();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD275DC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FEA4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E6180, &unk_22BDCD6F0);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD275F4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD8FF70()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E3F00, &unk_22BDCD700);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27608(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD9003C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E6BA0, &qword_22BDD0490);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27634(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90108()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B38, &unk_22BDD03C8);
  sub_22BB38F5C();
  v9 = sub_22BDB8E14();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27648(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD901D0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E3E88, &qword_22BDC1358);
  sub_22BB38F5C();
  v9 = sub_22BDBA994();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27660(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90298()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6AE0, &unk_22BDD0350);
  v9 = sub_22BB38F5C();
  v10 = _s20StatementResultEventVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27690(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90360()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B70, &qword_22BDD0458);
  v9 = sub_22BB38F5C();
  v10 = _s23StatementStepEvaluationOMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD276A8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90428()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B90, &qword_22BDD0478);
  sub_22BB38F5C();
  v9 = sub_22BDB8624();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD276C0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD904F0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B88, &qword_22BDD0470);
  v9 = sub_22BB38F5C();
  v10 = _s19SystemResponseEventVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD276D8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD905B8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B80, &qword_22BDD0468);
  v9 = sub_22BB38F5C();
  v10 = _s9PlanEventVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD276F0(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90680()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B78, &qword_22BDD0460);
  sub_22BB38F5C();
  v9 = sub_22BDB9954();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27720(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90748()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E3F88, &qword_22BDC1790);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27738(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90814()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E61B0, &qword_22BDCD740);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2774C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD908E0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6188, &unk_22BDD0440);
  v9 = sub_22BB38F5C();
  v10 = _s18ToolStepEvaluationVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27760(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD909A8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6198, &unk_22BDCD720);
  v9 = sub_22BB38F5C();
  v10 = _s23ParameterStepEvaluationVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD275C4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90A70()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E61A0, &qword_22BDD0450);
  v9 = sub_22BB38F5C();
  v10 = _s19ValueStepEvaluationVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27678(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90B38()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B98, &unk_22BDD0480);
  v9 = sub_22BB38F5C();
  v10 = _s13ValueExecutedVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27778(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90C00()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E6158, &qword_22BDD0420);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27790(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90CCC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B48, &qword_22BDD03E0);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.FlowTask(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD277E4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90D94()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E60B8, &qword_22BDCD600);
      v8 = sub_22BB58BA4();
      v9 = j__malloc_size(v8);
      sub_22BB37908(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2F748(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E6B40, &qword_22BDD03D8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD90E58()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E60C0, &qword_22BDCD608);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.FlowExpression(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD277FC(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90F20()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E60A8, &qword_22BDCD5F0);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.CandidateEvaluation(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27814(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD90FE8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E4330, &qword_22BDD03C0);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.TaskEvaluation(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD2782C(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD910B0()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E60C8, &qword_22BDCD610);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD277D0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD9117C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6B50, &qword_22BDD03E8);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.FlowActionEvent(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD27844(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD91244()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6B58, &qword_22BDD0400);
      v8 = sub_22BB58BA4();
      v9 = j__malloc_size(v8);
      sub_22BB37908(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2F748(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E6B60, &qword_22BDD0408);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD91308()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6000, &qword_22BDCD530);
  sub_22BB38F5C();
  v9 = sub_22BDB43E4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD27874(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD913D0()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6AC8, &unk_22BDD0320);
      v8 = sub_22BB3A348();
      sub_22BB3A7D8(v8);
      sub_22BB3B4C4(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BBE410C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E6608, &qword_22BDCE580);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD91498()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6AB0, &unk_22BDD02F0);
      v8 = swift_allocObject();
      sub_22BB3A7D8(v8);
      sub_22BB37430(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD278BC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E6578, &qword_22BDCE478);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BD91568()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6AA8, &unk_22BDD02E0);
  sub_22BB38F5C();
  v9 = sub_22BDB52C4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD279D0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD91630()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6AD8, &unk_22BDD0340);
  sub_22BB38F5C();
  v9 = sub_22BDB58D4();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD279E8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BD916F8()
{
  sub_22BB69BFC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22BB31E6C(v6);
    if (v3)
    {
      sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
      v9 = sub_22BB58BA4();
      v10 = j__malloc_size(v9);
      sub_22BB37908(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_22BB328BC();
        sub_22BB8E2F8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v7)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_22BD91824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BBE6DE0(a3, a4);
  v10 = *(sub_22BBE6DE0(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_22BD9194C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BBE6DE0(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD91A54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_22BD91A94(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VectorSimilarity(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD91BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_22BD92878(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

uint64_t PerURLSingletonLockBox.__allocating_init()()
{
  v0 = swift_allocObject();
  PerURLSingletonLockBox.init()();
  return v0;
}

uint64_t *PerURLSingletonLockBox.init()()
{
  v1 = *v0;
  sub_22BDB4254();
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  sub_22BDBADB4();
  sub_22BD926FC();
  v5 = sub_22BDBAB14();
  v3 = sub_22BDBAB44();
  v0[2] = sub_22BD91BA0(&v5, v3);
  return v0;
}

uint64_t sub_22BD91D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_22BDBB254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  sub_22BB336D0(&v20[-v13], 1, 1, v6);
  v15 = v5;
  v16 = v2[2];
  v21 = v6;
  v22 = *(v15 + 88);
  v23 = a1;
  v24 = v14;
  sub_22BDB4254();
  sub_22BD926FC();
  v17 = sub_22BDBAB44();
  sub_22BD929BC(sub_22BD92AD0, v20, v16, v17, MEMORY[0x277D84F78] + 8);
  if (v3)
  {
    return (*(v8 + 8))(v14, v7);
  }

  v18 = v25;
  (*(v8 + 16))(v12, v14, v7);
  if (sub_22BB3AA28(v12, 1, v6) != 1)
  {
    (*(*(v6 - 8) + 32))(v18, v12, v6);
    return (*(v8 + 8))(v14, v7);
  }

  (*(v8 + 8))(v12, v7);
  result = sub_22BDBB4D4();
  __break(1u);
  return result;
}

uint64_t sub_22BD9201C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v41 = a5;
  v8 = sub_22BDB4254();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v47 = sub_22BDBB254();
  v46 = *(v47 - 8);
  v14 = *(v46 + 64);
  v15 = MEMORY[0x28223BE20](v47);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v43 = &v37 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v26 = *a1;
  v37 = sub_22BD926FC();
  sub_22BDBAB54();
  if (sub_22BB3AA28(v21, 1, a4) == 1)
  {
    v27 = v44;
    (*(v46 + 8))(v21, v47);
    v28 = *(v42 + 16);
    v28(v13, a2, v8);
    v29 = v45;
    result = (*(v41 + 16))(v13, a4);
    if (!v29)
    {
      v31 = v43;
      sub_22BB336D0(v43, 0, 1, a4);
      v32 = v46;
      v33 = v31;
      v34 = v47;
      (*(v46 + 40))(v27, v33, v47);
      v28(v40, a2, v8);
      (*(v32 + 16))(v38, v27, v34);
      sub_22BDBAB44();
      return sub_22BDBAB64();
    }
  }

  else
  {
    v35 = *(v22 + 32);
    v35(v25, v21, a4);
    v36 = v44;
    (*(v46 + 8))(v44, v47);
    v35(v36, v25, a4);
    return sub_22BB336D0(v36, 0, 1, a4);
  }

  return result;
}

void sub_22BD92408(uint64_t a1)
{
  v2 = v1[2];
  v5 = *(*v1 + 80);
  v6 = a1;
  sub_22BDB4254();
  sub_22BD926FC();
  v3 = sub_22BDBAB44();
  sub_22BD929BC(sub_22BD92858, v4, v2, v3, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_22BD924C8()
{
  v0 = sub_22BDBB254();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_22BDB4254();
  sub_22BD926FC();
  sub_22BDBAB44();
  sub_22BDBAB04();
  return (*(v1 + 8))(v4, v0);
}

uint64_t PerURLSingletonLockBox.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PerURLSingletonLockBox.__deallocating_deinit()
{
  PerURLSingletonLockBox.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t static PerURLSingletonDatabase.sharedDatabase(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_22BB35DF4(a1, a2, a3);
  v7(v6);
  sub_22BD91D88(a1, a4);
}

uint64_t static PerURLSingletonDatabase.deinitDatabase(url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22BB35DF4(a1, a2, a3);
  v5(v4);
  sub_22BD92408(a1);
}

unint64_t sub_22BD926FC()
{
  result = qword_27D8E6BD8[0];
  if (!qword_27D8E6BD8[0])
  {
    sub_22BDB4254();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8E6BD8);
  }

  return result;
}

uint64_t sub_22BD92858()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_22BD924C8();
}

uint64_t sub_22BD92878(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_22BDBB3C4();
  v4 = sub_22BDBB3B4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_22BD92928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_22BD92A48(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_22BD92B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_22BDBA684();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v82 - v12;
  v14 = sub_22BDB5194();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22BB30574();
  v82[1] = v17 - v16;
  v83 = sub_22BDB51F4();
  v18 = sub_22BB30444(v83);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = sub_22BDBA694();
  v27 = sub_22BB30444(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v34 = (v33 - v32);
  (*(v29 + 16))(v33 - v32, v2, v26);
  v35 = *(v29 + 88);
  v36 = sub_22BB31DF8();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D72DB8])
  {
    v39 = *(v29 + 96);
    v40 = sub_22BB31DF8();
    v41(v40);
    v42 = *v34;
    v43 = [*v34 viewSnippetOptions];
    if (v43)
    {
      v44 = v43;
      [v43 canReplacePrintableText];
    }

    v60 = sub_22BD9321C(v42);
    if (v61 >> 60 == 15)
    {
      v62 = [v42 viewData];
      sub_22BDB4304();

      sub_22BCA6E3C(v42, &selRef_containerBundleIdentifier);
      sub_22BCA6E3C(v42, &selRef_targetBundleIdentifier);
      sub_22BDB51D4();
      v63 = *MEMORY[0x277D1CA20];
      v64 = sub_22BB33EF8();
      v65 = v83;
      v66(v64);
      sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
      sub_22BB32DA8();
      v67 = swift_allocObject();
      v68 = sub_22BB30A54(v67, xmmword_22BDBCBD0);
      v69(v68);
      sub_22BDB5184();
      sub_22BDB51A4();
    }

    else
    {
      v70 = v60;
      v71 = v61;
      v72 = sub_22BCA6E3C(v42, &selRef_snippetModelBundleIdentifier);
      if (v73)
      {
        v74 = v72;
      }

      else
      {
        v74 = 0xD00000000000001ALL;
      }

      if (v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0x800000022BDD4B70;
      }

      sub_22BB352C4(v70, v71);
      MEMORY[0x23189F1B0](v70, v71, v74, v75);
      v76 = *MEMORY[0x277D1CA30];
      v77 = sub_22BB33EF8();
      v65 = v83;
      v78(v77);
      sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
      sub_22BB32DA8();
      v79 = swift_allocObject();
      v80 = sub_22BB30A54(v79, xmmword_22BDBCBD0);
      v81(v80);
      sub_22BDB5184();
      sub_22BDB51A4();

      sub_22BB94C90(v70, v71);
    }

    return (*(v20 + 8))(v25, v65);
  }

  else if (v38 == *MEMORY[0x277D72DB0])
  {
    v45 = *(v29 + 96);
    v46 = sub_22BB31DF8();
    v47(v46);
    (*(v6 + 32))(v13, v34, v3);
    (*(v6 + 16))(v11, v13, v3);
    sub_22BDB51C4();
    v48 = *MEMORY[0x277D1CA80];
    v49 = sub_22BB33EF8();
    v50 = v83;
    v51(v49);
    sub_22BBE6DE0(&qword_27D8E6C60, &qword_22BDD0538);
    sub_22BB32DA8();
    v54 = v53 & ~v52;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_22BDBCBD0;
    (*(v20 + 16))(v55 + v54, v25, v50);
    sub_22BDB51B4();
    (*(v20 + 8))(v25, v50);
    return (*(v6 + 8))(v13, v3);
  }

  else
  {
    sub_22BDB5234();
    v57 = *(v29 + 8);
    v58 = sub_22BB31DF8();
    return v59(v58);
  }
}

uint64_t sub_22BD93114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22BD9321C(v1);
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_22BCA6E3C(v2, &selRef_snippetModelBundleIdentifier);
    if (v9)
    {
      MEMORY[0x23189F1B0](v6, v7, v8, v9);
      v10 = *MEMORY[0x277D1CA30];
      v11 = sub_22BDB51F4();
      (*(*(v11 - 8) + 104))(a1, v10, v11);
      v12 = a1;
      v13 = 0;
      v14 = v11;
      goto LABEL_6;
    }

    sub_22BB94C90(v6, v7);
  }

  v14 = sub_22BDB51F4();
  v12 = a1;
  v13 = 1;
LABEL_6:

  return sub_22BB336D0(v12, v13, 1, v14);
}

uint64_t sub_22BD9321C(void *a1)
{
  v1 = [a1 snippetModelData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22BDB4304();

  return v3;
}

uint64_t sub_22BD93280(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_22BD9456C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_22BD463E0(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TextChunker.getTextChunks(text:chunkTokenSize:maxChunkSizeChars:maxNumChunks:minChunkTokensToEmbed:nonOverlappingChunks:)(unint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v192 = a6;
  v186 = a5;
  v203 = a4;
  v196 = a3;
  v10 = sub_22BDB4184();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = a1;
  v207 = a2;
  sub_22BDB4174();
  v198 = sub_22BD94264();
  v15 = sub_22BDBB264();
  v17 = v16;
  v18 = *(v11 + 8);
  v199 = v14;
  v200 = v11 + 8;
  v201 = v10;
  v197 = v18;
  v18(v14, v10);

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v185 = a7;
  v20 = &off_278723000;
  v21 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  sub_22BD94468(a1, a2, v21);
  v184[1] = v21;
  v22 = sub_22BDBB0E4();
  v23 = v22;
  v193 = *(v22 + 16);
  if (!v193)
  {

    v25 = MEMORY[0x277D84F90];
    v204 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v24 = 0;
  v191 = v22 + 32;
  v25 = MEMORY[0x277D84F90];
  v204 = MEMORY[0x277D84F90];
  v188 = a1;
  v189 = a2;
  v187 = v22;
  do
  {
    if (v24 >= *(v23 + 16))
    {
      goto LABEL_144;
    }

    v195 = v24;
    v26 = (v191 + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    sub_22BB30E10();
    v29 = sub_22BDBACE4();
    v30 = MEMORY[0x2318A4C00](v29);
    v32 = v31;

    v33 = [objc_allocWithZone(MEMORY[0x277CD89E0]) v20[140]];
    sub_22BD94468(v30, v32, v33);
    v194 = v33;
    v21 = sub_22BDBB0E4();
    v202 = v30;
    if (sub_22BDBAC64() <= v203)
    {
      v71 = v21;

      sub_22BB30E10();
      v72 = sub_22BDBACE4();
      v73 = MEMORY[0x2318A4C00](v72);
      v75 = v74;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = *(v25 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
      }

      sub_22BB37920();
      if (v77)
      {
        sub_22BB35E08(v76);
        sub_22BB8C414();
        v205 = v95;
      }

      sub_22BB36778(v205);
      *(v78 + 32) = v73;
      *(v78 + 40) = v75;
      v21 = v71[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = *(v204 + 16);
        sub_22BB305BC();
        sub_22BD916F8();
        v204 = v80;
      }
    }

    else
    {
      v205 = v25;
      v34 = v21[2];
      v190 = v21;
      if (v34)
      {
        v25 = 0;
        v35 = v21 + 5;
        v36 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = *(v35 - 1);
          v38 = *v35;
          v39 = sub_22BDBACE4();
          v21 = v40;
          v41 = MEMORY[0x2318A4C00](v39);
          v43 = v42;

          sub_22BB30E10();
          v44 = sub_22BDBAC64();
          if (__OFADD__(v44, v25))
          {
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            swift_unknownObjectRelease();
LABEL_123:
            sub_22BD94398(v21, v25, a2, a1);
            v100 = v179;

            swift_unknownObjectRelease();
            sub_22BB37440();
            goto LABEL_133;
          }

          if (v44 + v25 > v203)
          {
            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_23:
          a2 = *(v36 + 16);
          v60 = *(v36 + 24);
          if (a2 >= v60 >> 1)
          {
            sub_22BB2F158(v60);
            sub_22BB8C414();
            v36 = v64;
          }

          *(v36 + 16) = a2 + 1;
          v61 = v36 + 16 * a2;
          *(v61 + 32) = v41;
          *(v61 + 40) = v43;
          sub_22BB30E10();
          v21 = sub_22BDBAC64();

          v62 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_137;
          }

          v63 = __OFADD__(v25, v62);
          v25 += v62;
          if (v63)
          {
            goto LABEL_138;
          }

          v35 += 2;
          if (!--v34)
          {
            goto LABEL_36;
          }
        }

        v206 = v36;

        sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
        sub_22BB8E600();
        sub_22BB3130C();
        v206 = sub_22BDBABC4();
        v207 = v45;
        v46 = v199;
        sub_22BDB4174();
        v47 = sub_22BDBB264();
        a1 = v48;
        v197(v46, v201);

        v49 = v205;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v49 + 16);
          sub_22BB305BC();
          sub_22BB8C414();
          v49 = v66;
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        v205 = v49;
        if (v51 >= v50 >> 1)
        {
          sub_22BB35E08(v50);
          sub_22BB8C414();
          v205 = v67;
        }

        v52 = v205;
        *(v205 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v47;
        *(v53 + 40) = a1;

        v54 = *(v36 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = *(v204 + 16);
          sub_22BB305BC();
          sub_22BD916F8();
          v204 = v69;
        }

        v56 = *(v204 + 16);
        v55 = *(v204 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22BB2F158(v55);
          sub_22BD916F8();
          v204 = v70;
        }

        v57 = v204;
        *(v204 + 16) = v56 + 1;
        *(v57 + 8 * v56 + 32) = v54;

        v25 = 0;
        v36 = MEMORY[0x277D84F90];
LABEL_21:
        v58 = *(v36 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
        v36 = v59;
        goto LABEL_23;
      }

      v36 = MEMORY[0x277D84F90];
LABEL_36:

      if (!*(v36 + 16))
      {

        a1 = v188;
        a2 = v189;
        v20 = &off_278723000;
        v23 = v187;
        v89 = v195;
        goto LABEL_47;
      }

      v206 = v36;

      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB3130C();
      v206 = sub_22BDBABC4();
      v207 = v81;
      v82 = v199;
      sub_22BDB4174();
      v83 = sub_22BDBB264();
      v85 = v84;
      v197(v82, v201);

      v86 = v205;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = *(v86 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
      }

      sub_22BB37920();
      if (v77)
      {
        sub_22BB35E08(v87);
        sub_22BB8C414();
        v205 = v97;
      }

      sub_22BB36778(v205);
      *(v88 + 32) = v83;
      *(v88 + 40) = v85;

      v21 = *(v36 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = *(v204 + 16);
        sub_22BB305BC();
        sub_22BD916F8();
        v204 = v99;
      }

      a1 = v188;
      a2 = v189;
      v20 = &off_278723000;
      v23 = v187;
    }

    v89 = v195;
    v91 = *(v204 + 16);
    v90 = *(v204 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_22BB2F158(v90);
      sub_22BD916F8();
      v204 = v93;
    }

    v92 = v204;
    *(v204 + 16) = v91 + 1;
    *(v92 + 8 * v91 + 32) = v21;
LABEL_47:
    v24 = v89 + 1;
    v25 = v205;
  }

  while (v24 != v193);

LABEL_52:
  v101 = *(v25 + 16);
  if (!v101)
  {
    goto LABEL_149;
  }

  v102 = 0;
  v189 = (v101 - 1);
  v202 = v204 + 32;
  v103 = MEMORY[0x277D84F90];
  v104 = (v25 + 40);
  v100 = MEMORY[0x277D84F90];
  v195 = MEMORY[0x277D84F90];
  v205 = v25;
  v190 = v101;
  do
  {
    v193 = v104;
    v194 = v102;
    if (v102 < v101)
    {
      v188 = v103;
      v191 = v100;
      v105 = 0;
      v106 = 0;
      v107 = v102;
      a2 = MEMORY[0x277D84F90];
      while (v107 < *(v25 + 16))
      {
        if (v107 >= *(v204 + 16))
        {
          goto LABEL_140;
        }

        v108 = *(v104 - 1);
        v21 = *v104;
        a1 = *(v202 + 8 * v107);

        v109 = sub_22BDBAC64();
        v25 = *(a2 + 16);
        if (v25)
        {
          if (__OFADD__(v105, a1))
          {
            goto LABEL_143;
          }

          if ((v105 + a1) > v196)
          {
            goto LABEL_71;
          }
        }

        v63 = __OFADD__(v106, v109);
        v106 += v109;
        if (v63)
        {
          goto LABEL_141;
        }

        if (v106 > v203)
        {
LABEL_71:

          v206 = a2;
          sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
          sub_22BB8E600();
          v116 = sub_22BB31E7C();
          v118 = v117;

          v206 = v116;
          v207 = v118;
          sub_22BDB4174();
          v21 = &v206;
          sub_22BDBB264();
          v119 = sub_22BB32DB8();
          v120(v119);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = *(v195 + 16);
            sub_22BB305BC();
            sub_22BB8C414();
            v195 = v155;
          }

          v103 = v188;
          sub_22BB328CC();
          if (v77)
          {
            sub_22BB35E08(v121);
            sub_22BB8C414();
            v195 = v156;
          }

          sub_22BB36778(v195);
          *(v122 + 32) = a2;
          *(v122 + 40) = &v206;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v157 = *(v103 + 16);
            sub_22BB305BC();
            sub_22BD916F8();
            v103 = v158;
          }

          v124 = *(v103 + 16);
          v123 = *(v103 + 24);
          sub_22BB325B4();
          if (v77)
          {
            sub_22BB35E08(v125);
            sub_22BD916F8();
            v103 = v159;
          }

          *(v103 + 16) = v118;
          *(v103 + 8 * v124 + 32) = v107;
          if (v105 <= v192)
          {

            a2 = MEMORY[0x277D84F90];
            v25 = v205;
            v100 = v191;
          }

          else
          {
            v100 = v191;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = *(v100 + 16);
              sub_22BB305BC();
              sub_22BB8C414();
              v100 = v161;
            }

            v127 = *(v100 + 16);
            v126 = *(v100 + 24);
            sub_22BB325B4();
            if (v77)
            {
              sub_22BB35E08(v128);
              sub_22BB8C414();
              v100 = v162;
            }

            *(v100 + 16) = v118;
            v129 = v100 + 16 * v127;
            *(v129 + 32) = a2;
            *(v129 + 40) = &v206;
            a2 = MEMORY[0x277D84F90];
            v25 = v205;
          }

          goto LABEL_86;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB8C414();
          a2 = v114;
        }

        v111 = *(a2 + 16);
        v110 = *(a2 + 24);
        sub_22BB325B4();
        if (v77)
        {
          sub_22BB35E08(v112);
          sub_22BB8C414();
          a2 = v115;
        }

        *(a2 + 16) = v25;
        v113 = a2 + 16 * v111;
        *(v113 + 32) = v108;
        *(v113 + 40) = v21;
        v63 = __OFADD__(v105, a1);
        v105 += a1;
        if (v63)
        {
          goto LABEL_142;
        }

        ++v107;
        v25 = v205;
        v104 += 2;
        if (v107 >= *(v205 + 16))
        {
          v100 = v191;
          v103 = v188;
          goto LABEL_86;
        }
      }

      goto LABEL_139;
    }

    v105 = 0;
    a2 = MEMORY[0x277D84F90];
LABEL_86:
    if (*(a2 + 16))
    {
      v206 = a2;
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      v130 = sub_22BB31E7C();
      v132 = v131;

      v206 = v130;
      v207 = v132;
      sub_22BDB4174();
      v21 = &v206;
      sub_22BDBB264();
      v133 = sub_22BB32DB8();
      v134(v133);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = *(v195 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
        v195 = v146;
      }

      sub_22BB328CC();
      if (v77)
      {
        sub_22BB35E08(v135);
        sub_22BB8C414();
        v195 = v147;
      }

      sub_22BB36778(v195);
      *(v136 + 32) = a2;
      *(v136 + 40) = &v206;
      v137 = *(v205 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = *(v103 + 16);
        sub_22BB305BC();
        sub_22BD916F8();
        v103 = v149;
      }

      v139 = *(v103 + 16);
      v138 = *(v103 + 24);
      sub_22BB325B4();
      if (v77)
      {
        sub_22BB35E08(v140);
        sub_22BD916F8();
        v103 = v150;
      }

      *(v103 + 16) = v132;
      *(v103 + 8 * v139 + 32) = v137;
      if (v105 <= v192)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = *(v100 + 16);
          sub_22BB305BC();
          sub_22BB8C414();
          v100 = v152;
        }

        v142 = *(v100 + 16);
        v141 = *(v100 + 24);
        sub_22BB325B4();
        if (v77)
        {
          sub_22BB35E08(v143);
          sub_22BB8C414();
          v100 = v153;
        }

        *(v100 + 16) = v132;
        v144 = v100 + 16 * v142;
        *(v144 + 32) = a2;
        *(v144 + 40) = &v206;
      }

      v25 = v205;
    }

    else
    {
    }

    v104 = v193 + 2;
    v102 = v194 + 1;
    v101 = v190;
  }

  while (v194 != v189);
  if ((v185 & 1) == 0 && *(v100 + 16) <= v186)
  {

    sub_22BB37440();
    v204 = v195;
    goto LABEL_134;
  }

  v163 = *(v25 + 16);
  v191 = v100;
  if (v163)
  {
    v164 = 0;
    v165 = v195 + 32;
    v166 = v103;
    v167 = v103 + 32;
    v21 = MEMORY[0x277D84F90];
    while ((v164 & 0x8000000000000000) == 0)
    {
      if (v164 >= *(v195 + 16))
      {
        goto LABEL_146;
      }

      v168 = (v165 + 16 * v164);
      v169 = *v168;
      a2 = v168[1];

      v25 = sub_22BDBAC64();

      if (v25 > v192)
      {
        if (v164 >= *(v195 + 16))
        {
          goto LABEL_148;
        }

        a1 = *v168;
        v25 = v168[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = v21[2];
          sub_22BB305BC();
          sub_22BB8C414();
          v21 = v174;
        }

        v171 = v21[2];
        v170 = v21[3];
        a2 = v171 + 1;
        if (v171 >= v170 >> 1)
        {
          sub_22BB2F158(v170);
          sub_22BB8C414();
          v21 = v175;
        }

        v21[2] = a2;
        v172 = &v21[2 * v171];
        v172[4] = a1;
        v172[5] = v25;
      }

      if (v164 >= *(v166 + 16))
      {
        goto LABEL_147;
      }

      v164 = *(v167 + 8 * v164);
      if (v164 >= v163)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_145;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_122:
  v21 = sub_22BD93280(v186, v21);
  v25 = v176;
  a2 = v177;
  a1 = v178;
  if ((v178 & 1) == 0)
  {
    goto LABEL_123;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v180 = swift_dynamicCastClass();
  if (!v180)
  {
    swift_unknownObjectRelease();
    v180 = MEMORY[0x277D84F90];
  }

  v181 = *(v180 + 16);

  if (__OFSUB__(a1 >> 1, a2))
  {
    goto LABEL_150;
  }

  if (v181 != (a1 >> 1) - a2)
  {
    goto LABEL_151;
  }

  v182 = swift_dynamicCastClass();
  if (v182)
  {
    v100 = v182;
    swift_unknownObjectRelease();
    sub_22BB37440();
  }

  else
  {
    sub_22BB37440();
    swift_unknownObjectRelease_n();
    v100 = MEMORY[0x277D84F90];
  }

LABEL_133:

LABEL_134:

  return v100;
}

unint64_t sub_22BD94264()
{
  result = qword_27D8E6C68;
  if (!qword_27D8E6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6C68);
  }

  return result;
}

void sub_22BD942B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_22BD917AC((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_22BDB9B54() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22BD94398(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22BD94468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22BDBABE4();
  [a3 setString_];
}

_BYTE *storeEnumTagSinglePayload for TextChunker(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD9456C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

id sub_22BD94600(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22BDB6564();
  v8 = &v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime24InternalXPCServiceServer6Server_clientApplicationIdentifier];
  *v8 = v7;
  v8[1] = v9;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  v11 = sub_22BDB6574();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_22BD946F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22BD9473C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_22BD945BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD9485C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BD948A4()
{
  swift_beginAccess();
  v0 = qword_28142F338;
  v1 = qword_28142F338;
  return v0;
}

void sub_22BD948F0(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F338;
  qword_28142F338 = a1;
}

uint64_t sub_22BD949E0(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F340 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD94A8C()
{
  v1 = sub_22BDB96E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 128);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  sub_22BDB96A4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_22BD94BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v7 = sub_22BDB77C4();
  v8 = sub_22BDBB134();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22BB2C000, v7, v8, "QueryDecorationXPCServiceServer received SIGTERM.", v9, 2u);
    MEMORY[0x2318A6080](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *MEMORY[0x277D41D58];
  v11 = sub_22BDB64B4();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

void sub_22BD94D34()
{
  sub_22BB30F94();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BBDB97C();
  v16 = sub_22BB2F0C8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = sub_22BB36AE0();
  v20 = sub_22BB30444(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  *(v24 - v23) = 15;
  (*(v25 + 104))(v24 - v23, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v26 = sub_22BDB6614();
  sub_22BB34ED4(v26);
  sub_22BB3AB50();
  v27 = sub_22BDB65F4();
  v28 = sub_22BDBAEF4();
  sub_22BB588F4(v28);
  sub_22BB322B0();
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  *(v29 + 24) = v4;
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v2;
  v30[4] = v10;
  v30[5] = v8;

  v31 = v2;
  sub_22BB352C4(v10, v8);
  sub_22BDBAFA4();

  sub_22BB58780(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD94F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = *(*(sub_22BBE6DE0(&qword_27D8E6CB8, &qword_22BDD0788) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9505C, 0, 0);
}

uint64_t sub_22BD9505C()
{
  sub_22BB30F5C();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(*(v0 + 88) + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_decoder);
  sub_22BDB62B4();
  sub_22BB38F68();
  sub_22BD9A87C(v4, 255, v5);
  sub_22BDB4114();
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  *(v0 + 128) = v9;
  v10 = *(v8 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_queryDecorationCollector);
  v11 = sub_22BDB62F4();
  sub_22BB369A8(v11);
  v12 = sub_22BDB5F24();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_22BB31B08(v7, v13, v14, v12);
  v15 = *(MEMORY[0x277D1D598] + 4);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_22BD95218;
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);

  return MEMORY[0x282176840](v9);
}

uint64_t sub_22BD95218()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[17];
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  v3[18] = v8;
  v3[19] = v0;

  v9 = v2[15];
  sub_22BB58780(v2[14], &qword_27D8E6440, &qword_22BDCE290);
  sub_22BB58780((v3 + 2), &unk_27D8E6CC8, &unk_22BDD07A8);
  sub_22BB58780(v9, &qword_27D8E6CB8, &qword_22BDD0788);
  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BD95394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB345B4();
  sub_22BB34E84();
  v11 = *(v10[11] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_encoder);
  v10[8] = v10[18];
  v12 = v10[19];
  sub_22BDB62E4();
  sub_22BB37EB4();
  sub_22BD9A87C(v13, 255, v14);
  v15 = sub_22BDB4144();
  v17 = v10[18];
  v18 = v10[16];
  if (v12)
  {

    v20 = v10[14];
    v19 = v10[15];
    v21 = v10[10];
  }

  else
  {
    v22 = v15;
    v23 = v16;
    v25 = v10[14];
    v24 = v10[15];
    v27 = v10[9];
    v26 = v10[10];

    *v27 = v22;
    v27[1] = v23;
  }

  sub_22BDB6604();

  sub_22BB2F09C();
  sub_22BB37AC0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_22BD954C0()
{
  sub_22BB2F35C();

  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 80);
  sub_22BDB6604();

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BD9561C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_22BDB77D4();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = sub_22BDB9774();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD95788, 0, 0);
}

uint64_t sub_22BD95788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22BB36BC0();
  a19 = v22;
  a20 = v23;
  sub_22BB35458();
  a18 = v20;
  v24 = v20[4];
  v25 = &v24[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  v20[15] = *&v24[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  v26 = *(v25 + 1);
  v20[16] = v26;
  if (v26)
  {
    if (qword_28142AB50 != -1)
    {
      sub_22BB32DD0();
    }

    v20[17] = qword_28142F400;
    if (qword_28142A928 != -1)
    {
      sub_22BB36324();
    }

    type metadata accessor for SessionControlActor();
    sub_22BB2F6D0();
    sub_22BD9A87C(v27, 255, v28);
    sub_22BDBAE44();
    sub_22BB33430();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }

  else
  {
    v33 = v20[8];
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    v34 = v24;
    v35 = sub_22BDB77C4();
    v36 = sub_22BDBB114();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v20[4];
      v38 = sub_22BB31AD8();
      v39 = sub_22BB314C8();
      a9 = v39;
      *v38 = 136315138;
      if (*(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier + 8))
      {
        v21 = *(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier);
        v37 = *(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier + 8);
      }

      else
      {
        sub_22BB8997C();
      }

      v47 = v20[7];
      v46 = v20[8];
      v48 = v20[6];

      v49 = sub_22BB32EE0(v21, v37, &a9);

      *(v38 + 4) = v49;
      sub_22BB3ABF0(&dword_22BB2C000, v50, v51, "QueryDecorationXPCServiceServer: client %s is missing group-identifier entitlement, no previous queries can be found as seurity policy check can't be completed without a group identifier.");
      sub_22BB32FA4(v39);
      sub_22BB32238();
      sub_22BB30AF0();

      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v41 = v20[7];
      v40 = v20[8];
      v42 = v20[6];

      v43 = *(v41 + 8);
      v44 = sub_22BB30AE4();
      v45(v44);
    }

    sub_22BB518C8();

    sub_22BB39738();
    sub_22BB33430();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_22BD95A20()
{
  sub_22BB2F35C();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_22BD7CA00(v0[3]);
  v0[18] = v4;

  return MEMORY[0x2822009F8](sub_22BD95AB8, v4, 0);
}

uint64_t sub_22BD95AB8()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  sub_22BD94A8C();

  v3 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BD95B20()
{
  v40 = v0;
  (*(v0[12] + 32))(v0[14], v0[13], v0[11]);
  v38 = v0;
  v0[2] = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  v1 = sub_22BDB9174();

  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v2, 0);
    v3 = 0;
    v4 = v39;
    v5 = *(v39 + 16);
    v6 = 16 * v5;
    do
    {
      v8 = *(v1 + v3 + 40);
      v7 = *(v1 + v3 + 48);
      v39 = v4;
      v9 = *(v4 + 24);
      v10 = v5 + 1;

      if (v5 >= v9 >> 1)
      {
        sub_22BD28158(v9 > 1, v10, 1);
        v4 = v39;
      }

      *(v4 + 16) = v10;
      v11 = v4 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 16;
      v3 += 24;
      ++v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v12 = v38[10];
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

  v13 = sub_22BDB77C4();
  v14 = sub_22BDBB104();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v38[14];
  v17 = v38[11];
  v18 = v38[12];
  v19 = v38[10];
  v21 = v38[6];
  v20 = v38[7];
  if (v15)
  {
    v37 = v38[10];
    v22 = sub_22BB31AD8();
    v36 = v21;
    v23 = sub_22BB314C8();
    v39 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x2318A4D50](v4, MEMORY[0x277D837D0]);
    v35 = v17;
    v26 = sub_22BB32EE0(v24, v25, &v39);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22BB2C000, v13, v14, "QueryDecorationXPCServiceServer found previousQueries: %s", v22, 0xCu);
    sub_22BB32FA4(v23);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v20 + 8))(v37, v36);
    (*(v18 + 8))(v16, v35);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
  }

  v28 = v38[13];
  v27 = v38[14];
  v30 = v38[9];
  v29 = v38[10];
  v31 = v38[8];
  v32 = v38[5];

  sub_22BB39738();

  return v33(v4);
}

uint64_t sub_22BD95E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31550();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[9];
  v26 = v22[5];
  v27 = v22[3];
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB8C2F4(v27, v26);
  v28 = sub_22BDB77C4();
  v29 = sub_22BDBB104();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v22[9];
  v33 = v22[6];
  v32 = v22[7];
  v34 = v22[5];
  if (v30)
  {
    a10 = v22[9];
    v35 = sub_22BB31AD8();
    v36 = sub_22BB314C8();
    a11 = v36;
    *v35 = 136315138;
    v37 = MEMORY[0x23189FEB0]();
    v39 = v38;
    sub_22BD9A5CC(v34);
    v40 = sub_22BB32EE0(v37, v39, &a11);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_22BB2C000, v28, v29, "QueryDecorationXPCServiceServer: could not find observable session transcript with SessionID: %s.", v35, 0xCu);
    sub_22BB32FA4(v36);
    sub_22BB3A3D8();
    sub_22BB30AF0();

    (*(v32 + 8))(a10, v33);
  }

  else
  {

    sub_22BD9A5CC(v34);
    (*(v32 + 8))(v31, v33);
  }

  sub_22BB518C8();

  sub_22BB39738();
  sub_22BB31534();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

void sub_22BD95FD0()
{
  sub_22BB30F94();
  sub_22BB52F3C(v7, v8, v9, v10, v11);
  v12 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BBDB97C();
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = sub_22BB36AE0();
  v21 = sub_22BB30444(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  *(v25 - v24) = 15;
  (*(v26 + 104))(v25 - v24, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v27 = sub_22BDB6614();
  sub_22BB34ED4(v27);
  sub_22BB3AB50();
  sub_22BDB65F4();
  v28 = sub_22BDBAEF4();
  sub_22BB588F4(v28);
  sub_22BB322B0();
  v29 = swift_allocObject();
  *(v29 + 16) = v32;
  *(v29 + 24) = v6;
  v30 = swift_allocObject();
  sub_22BB3FD18(v30);

  v31 = v3;
  sub_22BB352C4(v5, v4);
  sub_22BB352C4(v2, v1);
  sub_22BB3B614();

  sub_22BB58780(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD96200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v12 = swift_task_alloc();
  v7[6] = v12;
  *v12 = v7;
  v12[1] = sub_22BD962CC;

  return sub_22BD96524(a4, a5, a6, a7);
}

uint64_t sub_22BD962CC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD963D0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = *(v0[5] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_encoder);
  v0[2] = v0[7];
  v2 = v0[8];
  sub_22BDB62E4();
  sub_22BB37EB4();
  sub_22BD9A87C(v3, 255, v4);
  v5 = sub_22BDB4144();
  v7 = v0[7];
  v8 = v0[4];
  if (v2)
  {
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v11 = v0[3];

    *v11 = v9;
    v11[1] = v10;
  }

  sub_22BDB6604();
  sub_22BB2F09C();
  sub_22BB3478C();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_22BD964C8()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 32);
  sub_22BDB6604();
  v2 = *(v0 + 64);
  sub_22BB2F09C();

  return v3();
}

uint64_t sub_22BD96524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = *(*(sub_22BDB62C4() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v7 = *(*(sub_22BDB43E4() - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v8 = sub_22BDB5F24();
  v5[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = sub_22BDB9774();
  v5[25] = v10;
  v11 = *(v10 - 8);
  v5[26] = v11;
  v12 = *(v11 + 64) + 15;
  v5[27] = swift_task_alloc();
  v13 = *(*(sub_22BBE6DE0(&qword_27D8E6CB8, &qword_22BDD0788) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = sub_22BDB9C14();
  v5[29] = v14;
  v15 = *(v14 - 8);
  v5[30] = v15;
  v16 = *(v15 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v17 = *(*(sub_22BBE6DE0(&qword_27D8E6CC0, &qword_22BDD0790) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v18 = *(*(sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v19 = sub_22BDB77D4();
  v5[37] = v19;
  v20 = *(v19 - 8);
  v5[38] = v20;
  v21 = *(v20 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v22 = sub_22BDB5984();
  v5[41] = v22;
  v23 = *(v22 - 8);
  v5[42] = v23;
  v24 = *(v23 + 64) + 15;
  v5[43] = swift_task_alloc();
  v25 = sub_22BDB7734();
  v5[44] = v25;
  v26 = *(v25 - 8);
  v5[45] = v26;
  v27 = *(v26 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v28 = sub_22BDB7754();
  v5[48] = v28;
  v29 = *(v28 - 8);
  v5[49] = v29;
  v30 = *(v29 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD96930, 0, 0);
}

uint64_t sub_22BD96930()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[47];
  sub_22BDB60F4();
  sub_22BDB7D84();
  sub_22BDB7D64();
  v6 = sub_22BDB7D74();
  v8 = v7;

  sub_22BDB60F4();
  sub_22BDB7744();
  sub_22BDB7704();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v10 = sub_22BDB7744();
  v11 = sub_22BDBB1D4();
  result = sub_22BDBB244();
  if (result)
  {
    if ((v8 & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v13 = v0[47];
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v10, v11, v15, v6, "", v14, 2u);
        sub_22BB30AF0();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 15);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v16 = v0[51];
  v17 = v0[47];
  v18 = v0[45];
  v19 = v9;
  v20 = v0[44];
  v21 = v0[20];
  v36 = v0[16];
  v37 = v0[17];
  (*(v18 + 16))(v0[46], v17, v20);
  v22 = sub_22BDB77A4();
  sub_22BB34ED4(v22);
  v0[52] = sub_22BDB7794();
  (*(v18 + 8))(v17, v20);
  v23 = sub_22BB331D4();
  v19(v23);
  v24 = *(v21 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_decoder);
  v0[53] = sub_22BDB62B4();
  sub_22BB38F68();
  sub_22BD9A87C(v25, 255, v26);
  sub_22BDB4114();
  v27 = v0[43];
  v28 = v0[41];
  v30 = v0[18];
  v29 = v0[19];
  sub_22BB363D0();
  sub_22BD9A87C(v31, 255, v32);
  sub_22BB3AFDC();
  v33 = swift_task_alloc();
  v0[54] = v33;
  *v33 = v0;
  v33[1] = sub_22BD96D60;
  v34 = v0[43];
  v35 = v0[20];

  return sub_22BD999C0(v34);
}

uint64_t sub_22BD96D60()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB3053C();
  *v6 = v5;
  v8 = *(v7 + 432);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 440) = v3;
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD96FA8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 456);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  v5 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD97360()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[56];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[30];
  v5 = *(*v1 + 200);
  v6 = _s24StandardSessionResourcesVMa();
  (*(v4 + 16))(v2, v1 + *(v6 + 32) + v5, v3);

  sub_22BB31C00();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD97410()
{
  sub_22BB2F35C();
  v1 = v0[56];
  sub_22BB336D0(v0[34], 0, 1, v0[29]);
  v2 = v0[56];

  return MEMORY[0x2822009F8](sub_22BD9749C, v2, 0);
}

uint64_t sub_22BD9749C()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 448) + *(**(v0 + 448) + 200);
  sub_22BD794D8();

  v2 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD977C4()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 448);
  v2 = *(v0 + 216);
  sub_22BD94A8C();

  v3 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BD9782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31550();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v26 = v22[27];
  v25 = v22[28];
  v27 = v22[25];
  v28 = v22[26];
  v29 = sub_22BDB9744();
  (*(v28 + 8))(v26, v27);
  v22[14] = v29;
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB8F3FC();
  sub_22BDB9134();

  v30 = v22[35];
  v31 = v22[36];
  v32 = v22[28];
  v33 = v22[23];
  v34 = sub_22BDB62F4();
  sub_22BB336D0(v32, 0, 1, v34);
  v35 = sub_22BB2F324();
  sub_22BD9A6C4(v35, v36, v37, v38);
  sub_22BB3A4D4();
  v39 = v22[35];
  if (v40 == 1)
  {
    v41 = (v22 + 13);
    sub_22BB58780(v39, &qword_27D8E6440, &qword_22BDCE290);
    sub_22BB34F80();
    v42 = sub_22BDB77C4();
    v43 = sub_22BDBB104();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v22[38];
    v46 = v22[39];
    v47 = v22[37];
    if (v44)
    {
      v48 = sub_22BB3B778();
      v49 = swift_slowAlloc();
      v67 = v46;
      a11 = sub_22BB314C8();
      v50 = a11;
      *v48 = 136315394;
      sub_22BB3480C();
      *(v48 + 4) = sub_22BB32EE0(0xD000000000000045, v51, &a11);
      *(v48 + 12) = 2112;
      swift_beginAccess();
      v52 = *v41;
      *(v48 + 14) = *v41;
      *v49 = v52;
      v53 = v52;
      _os_log_impl(&dword_22BB2C000, v42, v43, "%s call was made with %@", v48, 0x16u);
      sub_22BB58780(v49, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB30AF0();
      sub_22BB32FA4(v50);
      sub_22BB3A3D8();
      sub_22BB30AF0();

      (*(v45 + 8))(v67, v47);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
    }

    v58 = *(v22[20] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_queryDecorationCollector);
    swift_beginAccess();
    sub_22BB3493C();
    v59 = *(MEMORY[0x277D1D598] + 4);
    v61 = v60;
    v62 = sub_22BB6BEC8();
    v63 = sub_22BB39548(v62);
    *v63 = v64;
    sub_22BB35E1C(v63);
    sub_22BB31534();

    return MEMORY[0x282176840](v65);
  }

  else
  {
    sub_22BD9A72C(v39, v22[24]);
    v54 = swift_task_alloc();
    v22[59] = v54;
    *v54 = v22;
    sub_22BB30A70(v54);
    sub_22BB31534();

    return sub_22BD9561C(v55);
  }
}

uint64_t sub_22BD97B24()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v2 = v1;
  v4 = *(v3 + 472);
  *v2 = *v0;
  *(v1 + 480) = v5;

  v6 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BD97C10()
{
  v38 = v0;
  if (*(v0 + 480))
  {
    v35 = *(v0 + 424);
    v36 = *(v0 + 192);
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    sub_22BDB6264();

    v4 = v3;
    sub_22BDB62A4();

    v5 = v4;
    sub_22BDB6244();

    v6 = v5;
    sub_22BDB6294();

    v7 = v6;
    sub_22BDB6224();

    v8 = v7;
    sub_22BDB6274();

    v9 = v8;
    sub_22BDB6214();

    v10 = v9;
    sub_22BDB6284();

    v11 = v10;
    sub_22BDB6234();

    v12 = objc_allocWithZone(v35);
    v13 = sub_22BDB6254();
    sub_22BD9A5CC(v36);

    *(v0 + 104) = v13;
  }

  else
  {
    sub_22BD9A5CC(*(v0 + 192));
  }

  sub_22BB34F80();
  v14 = sub_22BDB77C4();
  v15 = sub_22BDBB104();
  v16 = sub_22BB2F2EC(v15);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v19 = *(v0 + 296);
  if (v16)
  {
    sub_22BB3B778();
    v20 = sub_22BB2F340();
    v37 = sub_22BB314C8();
    *v1 = 136315394;
    sub_22BB3480C();
    v22 = sub_22BB32EE0(0xD000000000000045, v21, &v37);
    sub_22BB36784(v22);
    sub_22BB73C1C();
    sub_22BB69380(&dword_22BB2C000, v23, v24, "%s call was made with %@");
    sub_22BB58780(v20, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB3A3D8();
    sub_22BB69C08();
    sub_22BB32238();
  }

  v25 = sub_22BB30C3C();
  v26(v25);
  sub_22BB58BC0(*(v0 + 160));
  sub_22BB3493C();
  v27 = *(MEMORY[0x277D1D598] + 4);
  v29 = v28;
  v30 = sub_22BB6BEC8();
  v31 = sub_22BB39548(v30);
  *v31 = v32;
  v33 = sub_22BB35E1C(v31);

  return MEMORY[0x282176840](v33);
}

uint64_t sub_22BD97EBC()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 496);
  *v6 = *v1;
  *(v5 + 504) = v0;

  if (!v0)
  {
    *(v5 + 512) = v3;
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BD97FE8()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[56];
  v4 = v0[52];
  v14 = v0[51];
  v15 = v0[50];
  v16 = v0[47];
  v17 = v0[46];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v8 = v0[36];
  v9 = v0[34];
  v20 = v0[35];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[31];
  v10 = v0[28];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[22];
  v27 = v0[21];

  sub_22BB58780(v10, &qword_27D8E6CB8, &qword_22BDD0788);
  sub_22BB58780((v0 + 2), &unk_27D8E6CC8, &unk_22BDD07A8);
  sub_22BB58780(v9, &qword_27D8E6CC0, &qword_22BDD0790);
  sub_22BB58780(v8, &qword_27D8E6440, &qword_22BDCE290);
  (*(v5 + 8))(v6, v7);

  sub_22BD99650(v4);

  sub_22BB39738();
  v12 = v0[64];

  return v11(v12);
}

uint64_t sub_22BD981E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_22BB345B4();
  a17 = v19;
  a18 = v20;
  sub_22BB34E84();
  a16 = v18;
  v21 = v18[40];
  sub_22BDB6394();
  v22 = sub_22BDB77C4();
  v23 = sub_22BDBB114();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v18[40];
  v26 = v18[37];
  v27 = v18[38];
  if (v24)
  {
    v28 = sub_22BB31AD8();
    a9 = sub_22BB314C8();
    *v28 = 136315138;
    sub_22BB3480C();
    *(v28 + 4) = sub_22BB32EE0(0xD000000000000045, v29, &a9);
    _os_log_impl(&dword_22BB2C000, v22, v23, "%s unable to get session from crossAPIAssociationKey", v28, 0xCu);
    sub_22BB69C08();
    sub_22BB30AF0();
  }

  v30 = *(v27 + 8);
  v31 = sub_22BB30AE4();
  v32(v31);
  v18[56] = 0;
  v33 = swift_task_alloc();
  v18[57] = v33;
  *v33 = v18;
  sub_22BB31320(v33);
  sub_22BB37AC0();

  return sub_22BD99E48(v34, v35);
}

uint64_t sub_22BD98320()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[56];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[36];
  v8 = v0[34];
  v9 = v0[28];

  sub_22BB58780(v9, &qword_27D8E6CB8, &qword_22BDD0788);
  sub_22BB58780((v0 + 2), &unk_27D8E6CC8, &unk_22BDD07A8);
  sub_22BB58780(v8, &qword_27D8E6CC0, &qword_22BDD0790);
  sub_22BB58780(v7, &qword_27D8E6440, &qword_22BDCE290);
  v10 = sub_22BB30C3C();
  v11(v10);

  v32 = v0[63];
  v12 = v0[51];
  v13 = v0[50];
  v15 = v0[46];
  v14 = v0[47];
  v16 = v0[43];
  v18 = v0[39];
  v17 = v0[40];
  v19 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[33];
  v25 = v0[32];
  v26 = v0[31];
  v27 = v0[28];
  v28 = v0[27];
  v29 = v0[24];
  v30 = v0[22];
  v31 = v0[21];
  sub_22BD99650(v0[52]);

  sub_22BB2F09C();

  return v20();
}

void sub_22BD98554()
{
  sub_22BB30F94();
  sub_22BB52F3C(v7, v8, v9, v10, v11);
  v12 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BBDB97C();
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = sub_22BB36AE0();
  v21 = sub_22BB30444(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  *(v25 - v24) = 15;
  (*(v26 + 104))(v25 - v24, *MEMORY[0x277D85188]);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v27 = sub_22BDB6614();
  sub_22BB34ED4(v27);
  sub_22BDB65F4();
  v28 = sub_22BDBAEF4();
  sub_22BB588F4(v28);
  sub_22BB322B0();
  v29 = swift_allocObject();
  *(v29 + 16) = v32;
  *(v29 + 24) = v6;
  v30 = swift_allocObject();
  sub_22BB3FD18(v30);

  v31 = v3;
  sub_22BB352C4(v5, v4);
  sub_22BB352C4(v2, v1);
  sub_22BB3B614();

  sub_22BB58780(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD98790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v12 = swift_task_alloc();
  v7[6] = v12;
  *v12 = v7;
  v12[1] = sub_22BD9885C;

  return sub_22BD96524(a4, a5, a6, a7);
}

uint64_t sub_22BD9885C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD98960()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[7];
  v2 = v0[8];
  v3 = sub_22BDB62D4();
  v4 = v0[7];
  if (v2)
  {
    v5 = v0[4];
  }

  else
  {
    v6 = v3;
    v7 = v0[5];

    v8 = *(v7 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_encoder);
    v0[2] = v6;
    sub_22BDB6314();
    sub_22BB3A7F4();
    sub_22BD9A87C(v9, 255, v10);
    v11 = sub_22BDB4144();
    v12 = v0[4];
    v22 = v11;
    v24 = v23;
    v25 = v0[3];

    *v25 = v22;
    v25[1] = v24;
  }

  sub_22BDB6604();
  sub_22BB2F09C();
  sub_22BB3478C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

void sub_22BD98AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v35);
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  v41 = sub_22BDBAEF4();
  sub_22BB369A8(v41);
  sub_22BB322B0();
  v42 = swift_allocObject();
  *(v42 + 16) = v26;
  *(v42 + 24) = v24;
  v43 = swift_allocObject();
  v43[2] = v20;
  v43[3] = v34;
  v43[4] = v32;
  v43[5] = v30;
  v43[6] = v28;

  v44 = v20;
  sub_22BB352C4(v34, v32);
  sub_22BB352C4(v30, v28);
  sub_22BB33F68();
  sub_22BDBAFA4();

  sub_22BB58780(v40, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD98C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(*(sub_22BBE6DE0(&qword_27D8E6440, &qword_22BDCE290) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_22BDB7FF4();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = *(*(sub_22BDB43E4() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v12 = sub_22BDB5F24();
  v6[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v14 = sub_22BDB77D4();
  v6[16] = v14;
  v15 = *(v14 - 8);
  v6[17] = v15;
  v16 = *(v15 + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = sub_22BDB5984();
  v6[19] = v17;
  v18 = *(v17 - 8);
  v6[20] = v18;
  v19 = *(v18 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD98E20, 0, 0);
}

uint64_t sub_22BD98E20()
{
  v40 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[4] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_decoder);
  sub_22BDB6314();
  sub_22BB3A7F4();
  sub_22BD9A87C(v4, 255, v5);
  sub_22BDB4114();
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[2];
  v0[22] = v10;
  sub_22BB363D0();
  sub_22BD9A87C(v11, 255, v12);
  sub_22BB3AFDC();
  v13 = v0[18];
  sub_22BDB6394();
  v14 = v10;
  v15 = sub_22BDB77C4();
  v16 = sub_22BDBB104();

  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  if (v17)
  {
    v21 = sub_22BB3B778();
    v39[0] = swift_slowAlloc();
    *v21 = 136315394;
    sub_22BB3480C();
    *(v21 + 4) = sub_22BB32EE0(0xD000000000000048, v22, v39);
    *(v21 + 12) = 2080;
    v38 = v18;
    v23 = sub_22BDB6304();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v23 = 7104878;
      v25 = 0xE300000000000000;
    }

    v37 = v20;
    v26 = sub_22BB32EE0(v23, v25, v39);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_22BB2C000, v15, v16, "%s call was made with %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v19 + 8))(v38, v37);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = v0[15];
  v29 = v0[12];
  v28 = v0[13];
  sub_22BDB43D4();
  sub_22BDB5F04();
  sub_22BDB7FE4();
  sub_22BB31B08(v0[9], v30, v31, v0[14]);
  v32 = *(MEMORY[0x277D1D740] + 4);
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_22BD991C4;
  v34 = v0[12];
  v35 = v0[9];

  return MEMORY[0x282176B38](v14, v35);
}

uint64_t sub_22BD991C4()
{
  sub_22BB30F5C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = v2[23];
  *v4 = *v1;
  v3[24] = v0;

  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[10];
  sub_22BB58780(v2[9], &qword_27D8E6440, &qword_22BDCE290);
  v9 = *(v7 + 8);
  v10 = sub_22BB331D4();
  v11(v10);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BD99354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BB31550();
  v15 = v14[21];
  v16 = v14[22];
  v17 = v14[19];
  v18 = v14[20];
  v19 = v14[18];
  v20 = v14[15];
  v21 = v14[13];
  v35 = v14[12];
  v36 = v14[9];
  v22 = v14[3];
  sub_22BB33F68();
  v23 = sub_22BDBB214();

  sub_22BD9A5CC(v20);
  v24 = sub_22BB30C3C();
  v25(v24);
  *v22 = v23;

  sub_22BB2F09C();
  sub_22BB31534();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, a12, a13, a14);
}

uint64_t sub_22BD9943C()
{
  sub_22BB30F5C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);

  sub_22BD9A5CC(v4);
  v5 = *(v3 + 8);
  v6 = sub_22BB2F324();
  v7(v6);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 72);

  sub_22BB2F09C();

  return v15();
}

void sub_22BD99540(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;
  v21 = a1;
  sub_22BDB4304();

  v15 = sub_22BDB4304();
  v17 = v16;

  *(swift_allocObject() + 16) = v12;
  v18 = sub_22BB331D4();
  a8(v18);

  sub_22BB3531C(v15, v17);
  v19 = sub_22BB331D4();
  sub_22BB3531C(v19, v20);
}

uint64_t sub_22BD99650(uint64_t a1)
{
  v2 = sub_22BDB7764();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB7734();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB7754();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB60F4();
  sub_22BDB7D84();
  sub_22BDB7D64();
  v15 = sub_22BDB7D74();
  v17 = v16;

  v18 = sub_22BDB7744();
  v32 = a1;
  v19 = v18;
  sub_22BDB7774();
  v31 = sub_22BDBB1C4();
  result = sub_22BDBB244();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  v28 = v11;
  v29 = v6;
  v30 = v5;
  if ((v17 & 1) == 0)
  {
    v21 = v35;
    if (v15)
    {
LABEL_9:

      sub_22BDB77B4();

      v23 = v33;
      v22 = v34;
      if ((*(v33 + 88))(v21, v34) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v21, v22);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v19, v31, v26, v15, v24, v25, 2u);
      MEMORY[0x2318A6080](v25, -1, -1);
      v6 = v29;
      v5 = v30;
      v11 = v28;
      goto LABEL_13;
    }

    __break(1u);
  }

  v21 = v35;
  if (HIDWORD(v15))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v36;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BD999C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB77D4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD99A80, 0, 0);
}

uint64_t sub_22BD99A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22BB36BC0();
  a19 = v22;
  a20 = v23;
  sub_22BB35458();
  a18 = v20;
  v24 = v20[3];
  v25 = &v24[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  v20[7] = *&v24[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  v26 = *(v25 + 1);
  v20[8] = v26;
  if (v26)
  {
    if (qword_28142AB50 != -1)
    {
      sub_22BB32DD0();
    }

    v20[9] = qword_28142F400;
    if (qword_28142A928 != -1)
    {
      sub_22BB36324();
    }

    type metadata accessor for SessionControlActor();
    sub_22BB2F6D0();
    sub_22BD9A87C(v27, 255, v28);
    sub_22BDBAE44();
    sub_22BB33430();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }

  else
  {
    v33 = v20[6];
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    v34 = v24;
    v35 = sub_22BDB77C4();
    v36 = sub_22BDBB114();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v20[3];
      v38 = sub_22BB31AD8();
      v39 = sub_22BB314C8();
      a9 = v39;
      *v38 = 136315138;
      if (*(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier + 8))
      {
        v21 = *(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier);
        v37 = *(v37 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier + 8);
      }

      else
      {
        sub_22BB8997C();
      }

      v47 = v20[5];
      v46 = v20[6];
      v48 = v20[4];

      v49 = sub_22BB32EE0(v21, v37, &a9);

      *(v38 + 4) = v49;
      sub_22BB3ABF0(&dword_22BB2C000, v50, v51, "QueryDecorationXPCServiceServer: client %s is missing group-identifier entitlement, no QueryDecorationLookback can be found as seurity policy check can't be completed without a group identifier.");
      sub_22BB32FA4(v39);
      sub_22BB32238();
      sub_22BB30AF0();

      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v41 = v20[5];
      v40 = v20[6];
      v42 = v20[4];

      v43 = *(v41 + 8);
      v44 = sub_22BB30AE4();
      v45(v44);
    }

    v52 = v20[6];

    sub_22BB39738();
    sub_22BB33430();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_22BD99CF8()
{
  sub_22BB2F35C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_22BD7C7A8();
  v0[10] = v5;
  v6 = v5;
  v7 = v0[6];

  sub_22BB39738();

  return v8(v6);
}

uint64_t sub_22BD99DB8()
{
  sub_22BB2F35C();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  sub_22BBB7088();
  swift_allocError();
  *v3 = v1;

  sub_22BB2F09C();

  return v4();
}

uint64_t sub_22BD99E48(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22BDB9774();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22BDB43E4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD99F7C, 0, 0);
}

uint64_t sub_22BD99F7C()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  if (*(v0 + 24))
  {
    sub_22BB3478C();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    v6 = sub_22BB33828();
    sub_22BB31B08(v1, v7, v8, v6);

    sub_22BB2F09C();
    sub_22BB3478C();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_22BD9A044()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  sub_22BD94A8C();
  v3 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BD9A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12[10];
  v13 = v12[11];
  v16 = v12[8];
  v15 = v12[9];
  v17 = v12[6];
  v18 = v12[7];
  v19 = v12[4];
  v20 = v12[5];
  v21 = v12[2];
  sub_22BDB8F24();
  (*(v20 + 8))(v17, v19);
  v22 = *(v16 + 32);
  v23 = sub_22BB30AE4();
  v24(v23);
  (*(v16 + 16))(v15, v13, v18);
  sub_22BDB5F04();
  (*(v16 + 8))(v13, v18);
  v25 = sub_22BB33828();
  sub_22BB336D0(v18, 0, 1, v25);

  sub_22BB2F09C();
  sub_22BB33430();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22BD9A348()
{
  swift_beginAccess();
  v0 = qword_28142F310;
  v1 = qword_28142F310;
  return v0;
}

void sub_22BD9A394(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F310;
  qword_28142F310 = a1;
}

uint64_t sub_22BD9A484(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F318 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD9A52C()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB33F08(v4);

  return sub_22BD98C0C(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_22BD9A5CC(uint64_t a1)
{
  v2 = sub_22BDB5F24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD9A628()
{
  sub_22BB345B4();
  sub_22BB34E84();
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F08(v4);
  sub_22BB37AC0();

  return sub_22BD98790(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BD9A6C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BBE6DE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22BD9A72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD9A790()
{
  v1 = *(v0 + 16);

  sub_22BB3531C(*(v0 + 32), *(v0 + 40));
  sub_22BB3531C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BD9A7E0()
{
  sub_22BB345B4();
  sub_22BB34E84();
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F08(v4);
  sub_22BB37AC0();

  return sub_22BD96200(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BD9A87C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BD9A8C4()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  sub_22BB33F08(v6);
  sub_22BB3478C();

  return sub_22BD94F80(v8, v9, v10, v11, v12);
}

void sub_22BD9A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_22BDB5FC4();
  v27 = sub_22BB30444(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30C74();
  v34 = (v32 - v33);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &a9 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &a9 - v39;
  v41 = *(v29 + 16);
  v41(v38, v23, v26);
  v41(v34, v25, v26);
  sub_22BB39B40(&qword_27D8E6D98, MEMORY[0x277D37028]);
  sub_22BDBB294();
  sub_22BDBB284();
  (*(v29 + 8))(v40, v26);
  sub_22BB314EC();
}

uint64_t sub_22BD9AB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22BD9AB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_22BD9AC08(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_22BD9AC34(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_22BD9AC64(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_22BB3CB44(a1);
}

uint64_t sub_22BD9AC84(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_22BD9ACCC(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_22BD9AD98()
{
  v1 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientProxy;
  sub_22BB518E8();
  v2 = *(v0 + v1);
}

uint64_t sub_22BD9ADD8()
{
  v28 = v1;
  v3 = *(v1 + 440);
  (*(v1 + 432))(*(v1 + 360), *(v1 + 328));
  v4 = *(v1 + 408);
  v5 = *(v1 + 304);
  sub_22BB8D2AC();
  v6 = v0;
  v7 = v4;
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB114();

  v10 = v4;
  v11 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 296);
  v13 = *(v1 + 304);
  v14 = *(v1 + 288);
  if (v11)
  {
    v26 = v10;
    v15 = *(v1 + 216);
    sub_22BB3B778();
    sub_22BB2F308();
    v27 = sub_22BB3AA0C();
    *v13 = 136315394;
    v16 = *(v15 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack);
    v17 = *(v15 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack + 8);
    v18 = sub_22BDB5524();
    sub_22BB32EE0(v18, v19, &v27);
    sub_22BB3165C();

    *(v13 + 4) = v15;
    *(v13 + 12) = 2112;
    v20 = v26;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v2 = v21;
    sub_22BB89994(&dword_22BB2C000, v22, v23, "SessionCoordinator (client: %s) had error: %@");
    sub_22BB325EC(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB38680();
    sub_22BB30DDC();
    sub_22BB2F194();

    (*(v12 + 8))(v13, v14);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
  }

  sub_22BB73C38();
  swift_willThrow();

  sub_22BB2F09C();

  return v24();
}

void sub_22BD9AFEC()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BB35894();
  sub_22BB363E8(v14);
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v7;
  v15[4] = v5;
  v15[5] = v3;
  v15[6] = v9;
  v16 = v0;
  sub_22BB352C4(v7, v5);
  sub_22BDB43E4();
  swift_unknownObjectRetain();

  sub_22BB37178();
  sub_22BDBAFB4();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v8 = *(*(sub_22BDB5664() - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v6[35] = v9;
  v10 = *(v9 - 8);
  v6[36] = v10;
  v11 = *(v10 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v13 = sub_22BDB9B54();
  v6[41] = v13;
  v14 = *(v13 - 8);
  v6[42] = v14;
  v15 = *(v14 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v16 = *(*(sub_22BDB6054() - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v17 = sub_22BDB8E84();
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v19 = *(v18 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v20 = sub_22BDB5864();
  v6[51] = v20;
  v21 = *(v20 - 8);
  v6[52] = v21;
  v22 = *(v21 + 64) + 15;
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9B400, 0, 0);
}

void sub_22BD9B400()
{
  v169 = v0;
  v2 = v0[27];
  sub_22BD9C5C0();
  v3 = v0[55];
  v4 = v0[51];
  v6 = v0[28];
  v5 = v0[29];
  v7 = *(v0[27] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_jsonDecoder);
  sub_22BB58BE4();
  sub_22BB39B40(v8, v9);
  sub_22BB3134C();
  sub_22BDB4114();
  v10 = v0[55];
  v11 = v0[30];
  v12 = v0[31];
  v13 = (v0[27] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack);
  v14 = *v13;
  v0[56] = *v13;
  v15 = v13[1];
  v0[57] = v15;
  v144 = v15;
  v145 = v14;
  sub_22BB3E580(v11, v14, v15, v13[2], v13[3]);
  v16 = *(v12 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v0[47];
    v19 = v0[31];
    v166 = MEMORY[0x277D84F90];
    sub_22BD28828();
    v20 = v166;
    v1 = (v19 + 40);
    while (1)
    {
      v21 = v0[50];
      v23 = v0[45];
      v22 = v0[46];
      v25 = *(v1 - 1);
      v24 = *v1;
      v168 = 0;
      memset(v167, 0, sizeof(v167));
      sub_22BB352C4(v25, v24);
      sub_22BDB6044();
      sub_22BB6BC3C();
      sub_22BB39B40(&qword_281428A70, v26);
      sub_22BB3B634();
      if (v22)
      {
        break;
      }

      v28 = *(v166 + 16);
      v27 = *(v166 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22BB2F158(v27);
        sub_22BB36AFC();
        sub_22BD28828();
      }

      v1 += 16;
      v29 = v0[50];
      v30 = v0[46];
      *(v166 + 16) = v28 + 1;
      v31 = *(v18 + 80);
      sub_22BB2F390();
      (*(v18 + 32))(v166 + v32 + *(v18 + 72) * v28);
      if (!--v16)
      {
        v17 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }
    }

    v33 = v22;
    v34 = v0[55];
    v35 = v0[51];
    v36 = v0[52];

    v37 = *(v36 + 8);
    v38 = sub_22BB2F324();
    v39(v38);
    v68 = &unk_28142F000;
LABEL_23:
    v78 = v0[37];
    sub_22BB8D2AC();
    v79 = v35;
    v80 = v33;
    v81 = sub_22BDB77C4();
    sub_22BDBB114();

    v82 = sub_22BB72E44();
    v84 = v0[36];
    v83 = v0[37];
    v164 = v0[35];
    if (v82)
    {
      v160 = v0[37];
      v85 = v0[27];
      v86 = sub_22BB3B778();
      swift_slowAlloc();
      *&v167[0] = sub_22BB3AA0C();
      *v86 = 136315394;
      v87 = (v85 + v68[110]);
      v88 = *v87;
      v89 = v87[1];
      v90 = sub_22BDB5524();
      v92 = sub_22BB32EE0(v90, v91, v167);

      *(v86 + 4) = v92;
      *(v86 + 12) = 2112;
      v93 = v33;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v94;
      *v1 = v94;
      sub_22BB335B0();
      _os_log_impl(v95, v96, v97, v98, v99, 0x16u);
      sub_22BB325EC(v1, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB38680();
      sub_22BB30DDC();
      sub_22BB30AF0();

      (*(v84 + 8))(v160, v164);
    }

    else
    {

      (*(v84 + 8))(v83, v164);
    }

    swift_willThrow();
    v101 = v0[54];
    v100 = v0[55];
    v102 = v0[53];
    v104 = v0[49];
    v103 = v0[50];
    v105 = v0[48];
    v106 = v0[44];
    v107 = v0[45];
    v108 = v0[43];
    v147 = v0[40];
    v149 = v0[39];
    v151 = v0[38];
    v154 = v0[37];
    v157 = v0[34];
    v161 = v0[33];
    v165 = v0[32];

    sub_22BB2F09C();
    sub_22BB3AAA8();

    __asm { BRAA            X1, X16 }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_10:
  v40 = *(v20 + 16);
  if (!v40)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_18:
    v0[58] = v45;
    v68 = &unk_28142F000;
    if (*(v45 + 16))
    {
      v70 = v0[40];
      v69 = v0[41];
      sub_22BB94F54(v45, v70);
      if (sub_22BB3AA28(v70, 1, v69) != 1)
      {
        v111 = v0[39];
        v112 = v0[27];
        (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        v113 = v112;
        v114 = sub_22BDB77C4();
        v115 = sub_22BDBB0F4();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = v0[55];
          v118 = v0[51];
          v117 = v0[52];
          v152 = v0[54];
          v155 = v0[36];
          v158 = v0[35];
          v162 = v0[39];
          v119 = sub_22BB3B778();
          *&v167[0] = sub_22BB3E490();
          *v119 = 136315394;
          v120 = sub_22BDB5524();
          v122 = sub_22BB32EE0(v120, v121, v167);

          *(v119 + 4) = v122;
          *(v119 + 12) = 2080;
          sub_22BB518E8();
          (*(v117 + 16))(v152, v116, v118);
          v123 = sub_22BDBAC14();
          v125 = sub_22BB32EE0(v123, v124, v167);

          *(v119 + 14) = v125;
          _os_log_impl(&dword_22BB2C000, v114, v115, "SessionCoordinator (client: %s) created with config %s", v119, 0x16u);
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB38680();

          v126 = *(v155 + 8);
          v126(v162, v158);
        }

        else
        {
          v127 = v0[39];
          v129 = v0[35];
          v128 = v0[36];

          v126 = *(v128 + 8);
          v130 = sub_22BB2F0E0();
          (v126)(v130);
        }

        v0[59] = v126;
        v131 = v0[43];
        sub_22BDB9984();
        sub_22BDB5274();
        sub_22BDB9A74();
        sub_22BDB5534();
        sub_22BDB99F4();
        if (v132)
        {
          sub_22BDB4E54();
        }

        v133 = v0[55];
        v134 = v0[52];
        v135 = v0[53];
        v136 = v0[51];
        v137 = v0[27];
        sub_22BDB5A94();
        v138 = *(v137 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionManager);
        v0[60] = *(v137 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_transactionHookContainer);
        sub_22BB518E8();
        (*(v134 + 16))(v135, v133, v136);
        v139 = *(v137 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientCapabilities);

        v140 = swift_task_alloc();
        v0[61] = v140;
        *v140 = v0;
        v140[1] = sub_22BD9BDA0;
        v141 = v0[53];
        v142 = v0[34];
        sub_22BB3AAA8();

        sub_22BB3F280();
        return;
      }

      v71 = v0[40];

      sub_22BB325EC(v71, &unk_27D8E69E0, &qword_22BDC1660);
    }

    else
    {
    }

    v72 = v0[55];
    v35 = v0[51];
    v73 = v0[52];
    sub_22BD5EA68();
    sub_22BB369E0();
    v33 = swift_allocError();
    *v74 = 1;
    swift_willThrow();
    v75 = *(v73 + 8);
    v76 = sub_22BB2F324();
    v77(v76);
    goto LABEL_23;
  }

  v41 = v0[47];
  v42 = v0[42];
  *&v167[0] = v17;
  sub_22BB3B700();
  sub_22BB6FF1C();
  v43 = 0;
  v44 = *(v41 + 80);
  sub_22BB2F390();
  v45 = *&v167[0];
  v156 = v20 + v46;
  v159 = v41;
  v150 = v42;
  v153 = v41 + 16;
  v163 = (v41 + 8);
  v146 = v42 + 32;
  v148 = v40;
  while (v43 < *(v20 + 16))
  {
    v48 = v0[48];
    v47 = v0[49];
    v49 = v0[46];
    v50 = v0[44];
    v1 = *(v159 + 16);
    (v1)(v47, v156 + *(v159 + 72) * v43, v49);
    (v1)(v48, v47, v49);
    v51 = sub_22BDB99A4();
    v59 = sub_22BB37A78(v51, v52, v53, v54, v55, v56, v57, v58, v144, v145, v146, v148, v150, v153, v156, v159, v163);
    v60(v59);
    *&v167[0] = v45;
    v62 = *(v45 + 16);
    v61 = *(v45 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_22BB2F158(v61);
      sub_22BB36AFC();
      sub_22BB6FF1C();
      v45 = *&v167[0];
    }

    ++v43;
    v63 = v0[44];
    v64 = v0[41];
    *(v45 + 16) = v62 + 1;
    sub_22BB382D0();
    (*(v67 + 32))(v65 + v66 * v62);
    if (v148 == v43)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22BD9BDA0()
{
  sub_22BB30F5C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[61];
  *v4 = *v1;
  v3[62] = v0;

  v6 = v2[60];
  v7 = v2[58];
  v8 = v2[53];
  v9 = v2[52];
  v10 = v2[51];
  v11 = *(v9 + 8);
  v12 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[65] = v11;
    v3[66] = v12;
    v11(v8, v10);

    *(v3 + 7) = *(v3 + 1);
    sub_22BB77404((v3 + 14));
    *(v3 + 8) = *(v3 + 2);
    sub_22BB77458((v3 + 16));
    *(v3 + 9) = *(v3 + 3);
    sub_22BB325EC((v3 + 18), &qword_27D8E6448, &qword_22BDCE298);
  }

  else
  {
    v3[63] = v11;
    v3[64] = v12;
    v11(v8, v10);

    *(v3 + 10) = *(v3 + 1);
    sub_22BB77404((v3 + 20));
    *(v3 + 11) = *(v3 + 2);
    sub_22BB77458((v3 + 22));
    *(v3 + 12) = *(v3 + 3);
    sub_22BB325EC((v3 + 24), &qword_27D8E6448, &qword_22BDCE298);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BD9BFE8()
{
  v59 = v0;
  v1 = v0[38];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[27];
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB3B4D4();
  v5 = v4;
  v6 = sub_22BDB77C4();
  v7 = sub_22BDBB0F4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[59];
  if (v8)
  {
    v10 = v0[56];
    v11 = v0[57];
    v12 = v0[42];
    v54 = v0[41];
    v56 = v0[43];
    v48 = v0[36];
    v50 = v0[35];
    v52 = v0[38];
    v13 = v0[33];
    v14 = sub_22BB3B778();
    v58 = sub_22BB3E490();
    *v14 = 136315394;
    sub_22BB2F0E0();
    v15 = sub_22BDB5524();
    v17 = sub_22BB32EE0(v15, v16, &v58);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_22BDB5624();
    v19 = v18;
    sub_22BB35E54();
    sub_22BB346EC();
    v20 = sub_22BB2F0E0();
    v23 = sub_22BB32EE0(v20, v21, v22);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_22BB2C000, v6, v7, "SessionCoordinator (client: %s) created with ID %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB38680();

    v9(v52, v50);
    (*(v12 + 8))(v56, v54);
  }

  else
  {
    v25 = v0[42];
    v24 = v0[43];
    v26 = v0[41];
    v19 = v0[38];
    v27 = v0[35];
    v28 = v0[36];
    v29 = v0[33];

    sub_22BB35E54();
    sub_22BB346EC();
    v9(v19, v27);
    (*(v25 + 8))(v24, v26);
  }

  v31 = v0[63];
  v30 = v0[64];
  v32 = v0[54];
  v33 = v0[55];
  v34 = v0[53];
  v35 = v0[51];
  v42 = v0[50];
  v43 = v0[49];
  v44 = v0[48];
  v45 = v0[45];
  v46 = v0[44];
  v47 = v0[43];
  v49 = v0[40];
  v51 = v0[39];
  v53 = v0[38];
  v55 = v0[37];
  v36 = v0[34];
  v57 = v0[33];
  v37 = v0[32];
  sub_22BB36EF4();
  sub_22BB35E54();
  sub_22BB346EC();
  v38 = sub_22BDB43E4();
  sub_22BB2F330(v38);
  (*(v39 + 32))(v19, v37);
  v31(v33, v35);

  sub_22BB360FC();

  return v40();
}

uint64_t sub_22BD9C330()
{
  v50 = v0;
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[55];
  v6 = v0[51];
  (*(v0[42] + 8))(v0[43], v0[41]);
  v7 = sub_22BB2F324();
  v4(v7);
  v8 = v0[62];
  v9 = v0[37];
  sub_22BB8D2AC();
  v10 = v6;
  v11 = sub_22BB3165C();
  v12 = sub_22BDB77C4();
  v13 = sub_22BDBB114();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[36];
  v16 = v0[35];
  if (v14)
  {
    v47 = v0[37];
    v17 = v0[27];
    sub_22BB3B778();
    sub_22BB2F308();
    v49 = sub_22BB3AA0C();
    *v1 = 136315394;
    v18 = *(v17 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack);
    v19 = *(v17 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientIdentityPack + 8);
    v20 = sub_22BDB5524();
    sub_22BB32EE0(v20, v21, &v49);
    sub_22BB3165C();

    *(v1 + 4) = v17;
    *(v1 + 12) = 2112;
    v22 = v8;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v23;
    *v2 = v23;
    sub_22BB89994(&dword_22BB2C000, v24, v25, "SessionCoordinator (client: %s) had error: %@");
    sub_22BB325EC(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB38680();
    sub_22BB30DDC();
    sub_22BB2F194();

    (*(v15 + 8))(v47, v16);
  }

  else
  {

    v26 = *(v15 + 8);
    v27 = sub_22BB2F0E0();
    v29(v27, v28);
  }

  swift_willThrow();
  v31 = v0[54];
  v30 = v0[55];
  v32 = v0[53];
  v34 = v0[49];
  v33 = v0[50];
  v35 = v0[48];
  v36 = v0[44];
  v37 = v0[45];
  v38 = v0[43];
  v39 = v0[40];
  v42 = v0[39];
  v43 = v0[38];
  v44 = v0[37];
  v45 = v0[34];
  v46 = v0[33];
  v48 = v0[32];

  sub_22BB2F09C();

  return v40();
}

uint64_t sub_22BD9C5C0()
{
  sub_22BDB5A74();
  v1 = sub_22BDB6634();

  if (v1)
  {
    if ((*(v0 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_clientCapabilities) & 0x10) != 0)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_22BD9FAE8();
  sub_22BB369E0();
  swift_allocError();
  *v4 = v3;
  return swift_willThrow();
}

void sub_22BD9C75C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v8 = sub_22BDB43E4();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB34948();
  v16 = v14 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  v23 = sub_22BDBAEF4();
  sub_22BB31B08(v22, v24, v25, v23);
  sub_22BB322B0();
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  *(v26 + 24) = v2;
  (*(v11 + 16))(v16, v31, v8);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  *(v28 + 24) = v6;
  (*(v11 + 32))(v28 + v27, v16, v8);
  sub_22BB33F68();

  v29 = v0;

  sub_22BDBAFB4();

  sub_22BB325EC(v22, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB43E4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_22BDB9B54();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = *(*(sub_22BDB6054() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_22BDB8E84();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9CB4C, 0, 0);
}

void sub_22BD9CB4C()
{
  v1 = v0[3];
  sub_22BD9C5C0();
  v2 = v0[4];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[15];
    v56 = MEMORY[0x277D84F90];
    sub_22BD28828();
    v6 = v56;
    v7 = (v2 + 40);
    while (1)
    {
      v8 = v0[18];
      v10 = v0[13];
      v9 = v0[14];
      sub_22BB352C4(*(v7 - 1), *v7);
      sub_22BDB6044();
      sub_22BB6BC3C();
      sub_22BB39B40(&qword_281428A70, v11);
      sub_22BB3B634();
      if (v9)
      {
        break;
      }

      v13 = *(v56 + 16);
      v12 = *(v56 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22BB2F158(v12);
        sub_22BB36AFC();
        sub_22BD28828();
      }

      v7 += 2;
      v14 = v0[18];
      v15 = v0[14];
      *(v56 + 16) = v13 + 1;
      v16 = *(v5 + 80);
      sub_22BB2F390();
      (*(v5 + 32))(v56 + v17 + *(v5 + 72) * v13);
      if (!--v3)
      {
        v4 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }
    }

LABEL_23:
    v45 = v0[17];
    v44 = v0[18];
    v46 = v0[16];
    v48 = v0[12];
    v47 = v0[13];
    v50 = v0[8];
    v49 = v0[9];

    sub_22BB2F09C();
    sub_22BB3AAA8();

    __asm { BRAA            X1, X16 }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_10:
  v18 = *(v6 + 16);
  if (v18)
  {
    v19 = v0[15];
    v20 = v0[11];
    v57 = v4;
    sub_22BB3B700();
    sub_22BB6FF1C();
    v21 = 0;
    v22 = *(v19 + 80);
    sub_22BB2F390();
    v23 = v57;
    v54 = v6 + v24;
    v55 = v6;
    v53 = v18;
    v25 = v19;
    while (v21 < *(v6 + 16))
    {
      v26 = v23;
      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[14];
      v30 = v0[12];
      v31 = *(v25 + 16);
      v31(v27, v54 + *(v25 + 72) * v21, v29);
      v31(v28, v27, v29);
      sub_22BDB99A4();
      (*(v25 + 8))(v0[17], v0[14]);
      v23 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22BB2F158(v32);
        sub_22BB36AFC();
        sub_22BB6FF1C();
        v23 = v26;
      }

      ++v21;
      v34 = v0[12];
      v35 = v0[10];
      *(v23 + 16) = v33 + 1;
      sub_22BB382D0();
      (*(v38 + 32))(v36 + v37 * v33);
      v6 = v55;
      if (v53 == v21)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
LABEL_18:
    v0[19] = v23;
    if (!*(v23 + 16))
    {

      sub_22BD5EA68();
      sub_22BB369E0();
      swift_allocError();
      *v43 = 1;
      swift_willThrow();
      goto LABEL_23;
    }

    v39 = v0[9];
    v40 = *(v0[3] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionManager);
    (*(v0[7] + 16))(v0[8], v0[5], v0[6]);
    sub_22BDB5F04();
    v41 = swift_task_alloc();
    v0[20] = v41;
    *v41 = v0;
    v41[1] = sub_22BD9CFC0;
    sub_22BB3487C(v0[9]);
    sub_22BB3AAA8();

    sub_22BD4843C();
  }
}

uint64_t sub_22BD9CFC0()
{
  sub_22BB2F35C();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[9];
  v8 = *v1;
  sub_22BB3052C();
  *v9 = v8;
  *(v10 + 168) = v0;

  sub_22BB54364();
  sub_22BB346EC();

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD9D100()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[2];
  sub_22BB33F68();
  *v8 = sub_22BBB79E4();

  sub_22BB360FC();

  return v9();
}

uint64_t sub_22BD9D1D0()
{
  sub_22BB34E84();
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];

  sub_22BB2F09C();

  return v9();
}

uint64_t sub_22BD9D3E0()
{
  sub_22BB2F0D4();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  sub_22BB2F09C();
  v5 = v0[15];

  return v4();
}

uint64_t sub_22BD9D454()
{
  sub_22BB2F0D4();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[12];
  v2 = v0[9];

  sub_22BB2F09C();

  return v3();
}

uint64_t sub_22BD9D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_22BDB4C34();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9D614, 0, 0);
}

uint64_t sub_22BD9D614()
{
  sub_22BB2F35C();
  v1 = v0[8];
  v2 = *(v0[3] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionManager);
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  sub_22BDB5F04();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22BD9D6E8;
  v4 = v0[11];
  v5 = v0[8];

  return sub_22BD48824();
}

uint64_t sub_22BD9D6E8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 64);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v9 + 104) = v0;

  sub_22BB54364();
  sub_22BB346EC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BD9D804()
{
  sub_22BB34E84();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = sub_22BDB4C24();
  v8 = *(v2 + 8);
  v9 = sub_22BB2F324();
  v10(v9);
  *v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];

  sub_22BB360FC();

  return v11();
}

uint64_t sub_22BD9D8D0()
{
  sub_22BB2F0D4();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  sub_22BB2F09C();
  v5 = v0[13];

  return v4();
}

void sub_22BD9DAAC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3A4F8();
  sub_22BB369A8(v11);
  sub_22BB322B0();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;
  sub_22BB322B0();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v6;
  sub_22BB33F68();

  v14 = v0;
  v15 = v6;
  sub_22BDBAFB4();

  sub_22BB39390();
  sub_22BB314EC();
}

uint64_t sub_22BD9DBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22BD9DBF4, 0, 0);
}

uint64_t sub_22BD9DBF4()
{
  sub_22BB2F35C();
  v1 = *(v0 + 24);
  v2 = sub_22BD9C5C0();
  v5 = *(*(v0 + 24) + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_transactionHookContainer);
  *(v0 + 40) = v5;
  if (v5)
  {
    v6 = *(v0 + 32);

    *(v0 + 48) = [v6 BOOLValue];
    v2 = sub_22BD9DCD4;
    v3 = v5;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD9DCD4()
{
  sub_22BB2F0D4();
  *(*(v0 + 40) + 112) = *(v0 + 48);

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22BD9DD3C()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 16);
  sub_22BB33F68();
  *v1 = sub_22BBB79E4();
  sub_22BB360FC();

  return v2();
}

uint64_t sub_22BD9DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_22BDB52C4() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9DF30, 0, 0);
}

uint64_t sub_22BD9DF30()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v0[9] = qword_28142F400;
  (*(v4 + 16))(v1, v5, v3);
  sub_22BDB52A4();
  v0[10] = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  type metadata accessor for SessionControlActor();
  sub_22BB30E70();
  sub_22BB39B40(v6, v7);
  sub_22BDBAE44();
  sub_22BB39694();
  v8 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BD9E050()
{
  sub_22BB2F35C();
  sub_22BB3E25C();
  sub_22BD7A910();
  *(v0 + 88) = v1;
  sub_22BB33F24();
  sub_22BB346EC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD9E0DC()
{
  sub_22BB2F35C();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  sub_22BB33F68();
  *v3 = sub_22BBB79E4();

  sub_22BB360FC();

  return v4();
}

uint64_t sub_22BD9E15C()
{
  sub_22BB2F35C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_22BBB7088();
  sub_22BB369E0();
  swift_allocError();
  *v4 = v1;

  sub_22BB3A80C();

  return v5();
}

void sub_22BD9E358()
{
  sub_22BB30F94();
  v9 = sub_22BB3B168(v2, v3, v4, v5, v6, v7, v8);
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB34948();
  v15 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BB89D6C();
  sub_22BB31B08(v1, v20, v21, v19);
  sub_22BB322B0();
  v22 = swift_allocObject();
  v23 = sub_22BB6BDD0(v22);
  v24(v23);
  v25 = (v14 + ((*(v12 + 80) + 16) & ~*(v12 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = sub_22BB3E514(v26);
  v28(v27);
  *(v26 + v25) = v0;
  sub_22BB33F68();

  v29 = v0;
  sub_22BB3AC10();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BD9E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB43E4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_22BDB52C4() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9E5C8, 0, 0);
}

uint64_t sub_22BD9E5C8()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v0[9] = qword_28142F400;
  (*(v4 + 16))(v1, v5, v3);
  sub_22BDB52A4();
  v0[10] = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  type metadata accessor for SessionControlActor();
  sub_22BB30E70();
  sub_22BB39B40(v6, v7);
  sub_22BDBAE44();
  sub_22BB39694();
  v8 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BD9E6E8()
{
  sub_22BB2F35C();
  sub_22BB3E25C();
  sub_22BD7B758();
  *(v0 + 88) = v1;
  sub_22BB33F24();
  sub_22BB346EC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD9E8E0()
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BB35894();
  sub_22BB363E8(v6);
  sub_22BB366B8();
  *(swift_allocObject() + 16) = v0;
  sub_22BDB43E4();
  v7 = v0;
  sub_22BB37178();
  sub_22BDBAFB4();

  return sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
}

uint64_t sub_22BD9E9CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_22BDB52C4() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD9EA5C, 0, 0);
}

uint64_t sub_22BD9EA5C()
{
  sub_22BB2F0D4();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_22BB30AA0();
  sub_22BB33670(v4 + v5, v2, v6);
  v7 = sub_22BDB43E4();
  sub_22BB2F330(v7);
  (*(v8 + 32))(v3, v2);

  sub_22BB360FC();

  return v9();
}

uint64_t type metadata accessor for SessionXPCServiceServer.Server()
{
  result = qword_281429F68;
  if (!qword_281429F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD9EBF8()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD9ECC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22BD9AD98();
  *a1 = result;
  return result;
}

uint64_t (*sub_22BD9ECF0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22BD9ED58;
}

uint64_t sub_22BD9ED58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22BB34B4C();
  }

  return result;
}

uint64_t sub_22BD9ED90()
{
  swift_beginAccess();
  v0 = qword_28142F358;
  v1 = qword_28142F358;
  return v0;
}

void sub_22BD9EDDC(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F358;
  qword_28142F358 = a1;
}

uint64_t sub_22BD9EECC(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F360 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BD9EF80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BBE7CE0();
  *a1 = result;
  return result;
}

uint64_t sub_22BD9EFA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB1C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9EFD8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9ABF0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F008@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AC00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F040@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AC84(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22BD9F074@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9ACCC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22BD9F0C0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB2C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BD9AB8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22BD9F15C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (v0)
  {
    v8 = v3[4];
    v9 = sub_22BD9F4A4;
  }

  else
  {
    v10 = v3[9];
    v11 = v3[10];
    v12 = v3[4];

    v9 = sub_22BD9F280;
    v8 = v12;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_22BD9F280()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v17 = v0[12];

LABEL_13:
    v25 = v0[7];
    v24 = v0[8];

    v26 = v0[1];
    sub_22BB35ED4();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[6];
  v31 = MEMORY[0x277D84F90];
  sub_22BB6FF1C();
  v0 = v30;
  v4 = 0;
  v5 = v30[13];
  v6 = (v1 + 40);
  v29 = v1;
  while (v4 < *(v1 + 16))
  {
    v7 = v0[7];
    v8 = v0[5];
    sub_22BB352C4(*(v6 - 1), *v6);
    sub_22BB392D4();
    sub_22BB39B40(&qword_27D8E65B8, v9);
    sub_22BDB9474();
    if (v5)
    {
      v18 = v30[12];

      v20 = v30[7];
      v19 = v30[8];

      sub_22BB3A80C();
      sub_22BB35ED4();

      __asm { BRAA            X1, X16 }
    }

    v11 = *(v31 + 16);
    v10 = *(v31 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_22BB2F158(v10);
      sub_22BB36AFC();
      sub_22BB6FF1C();
    }

    ++v4;
    v0 = v30;
    v12 = v30[7];
    v13 = v30[5];
    *(v31 + 16) = v11 + 1;
    sub_22BB382D0();
    (*(v16 + 32))(v14 + v15 * v11);
    v5 = 0;
    v6 += 2;
    v1 = v29;
    if (v2 == v4)
    {
      v23 = v30[12];

      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22BD9F4A4()
{
  sub_22BB2F0D4();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];

  sub_22BB2F09C();

  return v6();
}

unint64_t sub_22BD9F53C()
{
  result = qword_27D8E6CD8;
  if (!qword_27D8E6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CD8);
  }

  return result;
}

unint64_t sub_22BD9F594()
{
  result = qword_27D8E6CE0;
  if (!qword_27D8E6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CE0);
  }

  return result;
}

unint64_t sub_22BD9F5EC()
{
  result = qword_27D8E6CE8;
  if (!qword_27D8E6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CE8);
  }

  return result;
}

unint64_t sub_22BD9F644()
{
  result = qword_27D8E6CF0;
  if (!qword_27D8E6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6CF0);
  }

  return result;
}

uint64_t sub_22BD9F77C()
{
  sub_22BB2F0D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BB3C48C;

  return sub_22BD9E9CC(v2, v3);
}

uint64_t sub_22BD9F810()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB30434(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_22BB3E44C(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB72150(v5);

  return sub_22BD9E4D8(v7, v8, v9);
}

uint64_t sub_22BD9F8E8()
{
  v1 = sub_22BDB43E4();
  sub_22BB31F70(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22BD9F978()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v0 = sub_22BDB43E4();
  sub_22BB30434(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_22BB3E44C(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB72150(v5);

  return sub_22BD9DE40(v7, v8, v9);
}

uint64_t sub_22BD9FA50()
{
  sub_22BB2F35C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BB3C48C;
  v6 = sub_22BB2F6E8();

  return sub_22BD9DBD0(v6, v7, v1);
}

unint64_t sub_22BD9FAE8()
{
  result = qword_27D8E6D18;
  if (!qword_27D8E6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6D18);
  }

  return result;
}

uint64_t sub_22BD9FB3C()
{
  sub_22BB2F35C();
  sub_22BB35760();
  v1 = sub_22BDB43E4();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BB3C48C;
  v8 = sub_22BB2F6E8();

  return sub_22BD9D4C8(v8, v9, v10);
}

uint64_t sub_22BD9FC04()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB35760();
  v1 = sub_22BDB43E4();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_22BB31BAC(v6);
  *v7 = v8;
  v7[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3478C();

  return sub_22BD9C960(v9, v10, v11, v12);
}

uint64_t sub_22BD9FCCC()
{
  sub_22BB30F5C();
  sub_22BB35210();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BB3C48C;
  v7 = sub_22BB37834();

  return sub_22BD9B108(v7, v8, v9, v1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for TestingAPISecurityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD9FE58()
{
  result = qword_27D8E6DA0;
  if (!qword_27D8E6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6DA0);
  }

  return result;
}

uint64_t sub_22BD9FEBC()
{
  v1 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22BD9FF04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_22BD9FFA0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_decoder;
  v14 = sub_22BDB4134();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v2[v13] = sub_22BDB4124();
  v17 = &v2[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof];
  v18 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  sub_22BB336D0(v12, 1, 1, v18);
  *v17 = 0;
  v19 = *(sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80) + 28);
  v20 = sub_22BBE6DE0(&qword_27D8E6DD8, &unk_22BDD0E90);
  sub_22BB2F0C8(v20);
  bzero(&v17[v19], *(v21 + 64));
  sub_22BDA1D80(v12, &v17[v19]);
  *&v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientProxy] = 0;
  v22 = sub_22BDB65D4();
  v23 = &v3[OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_clientApplicationIdentifier];
  *v23 = v22;
  v23[1] = v24;
  v29.receiver = v3;
  v29.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v29, sel_init);

  v26 = sub_22BDB65E4();
  sub_22BB2F330(v26);
  (*(v27 + 8))(a1);
  return v25;
}

id sub_22BDA0154()
{
  ObjectType = swift_getObjectType();
  sub_22BDA019C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22BDA019C()
{
  v1 = sub_22BDB5AB4();
  v2 = sub_22BB2F0C8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v60[5] = v6 - v5;
  v7 = sub_22BDB43E4();
  v8 = sub_22BB30444(v7);
  v60[7] = v9;
  v60[8] = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v60[6] = v13 - v12;
  v14 = sub_22BDB77D4();
  v15 = sub_22BB30444(v14);
  v60[9] = v16;
  v60[10] = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v63 = v20 - v19;
  v21 = sub_22BDB59A4();
  v22 = sub_22BB30444(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v29 = v28 - v27;
  v30 = sub_22BDB59D4();
  v31 = sub_22BB30444(v30);
  v61 = v32;
  v62 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v37 = v36 - v35;
  v38 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  v39 = sub_22BB2F330(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v42);
  v44 = v60 - v43;
  v45 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v46 = sub_22BB2F0C8(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BB30C74();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = v60 - v53;
  v55 = (v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
  os_unfair_lock_lock(v55);
  v56 = sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  sub_22BDA1C4C(v55 + *(v56 + 28), v54);
  os_unfair_lock_unlock(v55);
  sub_22BDA1C4C(v54, v51);
  if (sub_22BB3AA28(v51, 1, v38) == 1)
  {
    sub_22BB58728(v54, &qword_27D8E6DC0, &qword_22BDD0D60);
    v57 = v51;
  }

  else
  {
    sub_22BDA1CBC(v51, v44);
    sub_22BDB5994();
    (*(v24 + 104))(v29, *MEMORY[0x277D1CFA0], v21);
    sub_22BDB59B4();
    if (qword_28142A0D8 != -1)
    {
      sub_22BB30AB8();
      swift_once();
    }

    _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(v37, v44, &v64);
    (*(v61 + 8))(v37, v62);
    sub_22BB33F3C();
    sub_22BDA1F78(v44, v58);
    v57 = v54;
  }

  return sub_22BB58728(v57, &qword_27D8E6DC0, &qword_22BDD0D60);
}

uint64_t sub_22BDA0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5E54();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_22BDB5AB4();
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA0A14, 0, 0);
}

uint64_t sub_22BDA0A14()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0[3] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_decoder);
  sub_22BDA1F30(&qword_27D8E6DF0, MEMORY[0x277D1D080]);
  sub_22BB30E88();
  if (v3)
  {
    v7 = v0[10];
    v8 = v0[8];
  }

  else
  {
    v6 = v0[3];
    sub_22BDA0BB8(v0[10], v0[8]);
    v10 = v0[10];
    v11 = v0[8];
    v12 = v0[2];
    sub_22BB33F68();
    v13 = sub_22BDBB214();
    sub_22BB367B0();
    sub_22BDA1F78(v10, v14);
    *v12 = v13;
  }

  sub_22BB2F09C();

  return v15();
}

uint64_t sub_22BDA0BB8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  v7 = sub_22BB2F330(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v12 = v11 - v10;
  if (qword_28142A0D8 != -1)
  {
    sub_22BB30AB8();
    swift_once();
  }

  _s23IntelligenceFlowRuntime22SnippetStreamingRouterC16checkIntoContextyAC12CheckInProofV0aB00deI2IDVAA0dejK5ErrorOYKF(a1, &v22, v12);
  if (v3)
  {
    v13 = v22;
    v14 = sub_22BDB5E54();
    sub_22BB2F330(v14);
    v16 = MEMORY[0x277D1D210];
    if (!v13)
    {
      v16 = MEMORY[0x277D1D218];
    }

    (*(v15 + 104))(a2, *v16, v14);
    sub_22BB35E6C();
    sub_22BDA1F30(v17, v18);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v20 = (v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof));
    v21 = *(sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80) + 28);
    sub_22BB58728(v20 + v21, &qword_27D8E6DC0, &qword_22BDD0D60);
    sub_22BDA1D20(v12, v20 + v21, type metadata accessor for SnippetStreamingRouter.CheckInProof);
    sub_22BB336D0(v20 + v21, 0, 1, v6);
    os_unfair_lock_unlock(v20);
    return sub_22BDA1F78(v12, type metadata accessor for SnippetStreamingRouter.CheckInProof);
  }
}

uint64_t sub_22BDA0EB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v10 = sub_22BB2F0C8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = sub_22BDBAEF4();
  sub_22BB336D0(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;

  v18 = v4;
  sub_22BB352C4(a1, a2);
  sub_22BB33F68();
  sub_22BDBAFB4();

  return sub_22BB58728(v14, &qword_27D8E2978, &qword_22BDBD020);
}

uint64_t sub_22BDA1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5E54();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_22BDB59D4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA1138, 0, 0);
}

uint64_t sub_22BDA1138()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0[3] + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_decoder);
  sub_22BDA1F30(&qword_27D8E6DE0, MEMORY[0x277D1CFC0]);
  sub_22BB30E88();
  if (v3)
  {
    v7 = v0[11];
    v8 = v0[8];
  }

  else
  {
    v6 = v0[3];
    sub_22BDA1300(v0[11], v0[8]);
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[2];
    sub_22BB33F68();
    v15 = sub_22BDBB214();
    (*(v11 + 8))(v10, v12);
    *v14 = v15;
  }

  sub_22BB2F09C();

  return v16();
}

uint64_t sub_22BDA1300(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  v7 = sub_22BB2F330(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  v14 = sub_22BB2F0C8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v23 = (v2 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime32SnippetStreamingXPCServiceServer6Server_checkedInStreamProof);
  os_unfair_lock_lock(v23);
  v24 = sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  sub_22BDA1C4C(v23 + *(v24 + 28), v22);
  os_unfair_lock_unlock(v23);
  sub_22BDA1C4C(v22, v19);
  if (sub_22BB3AA28(v19, 1, v6) == 1)
  {
    sub_22BB58728(v19, &qword_27D8E6DC0, &qword_22BDD0D60);
    v25 = *MEMORY[0x277D1D208];
    v26 = sub_22BDB5E54();
    sub_22BB2F330(v26);
    (*(v27 + 104))(a2, v25, v26);
    sub_22BB35E6C();
    sub_22BDA1F30(v28, v29);
    swift_willThrowTypedImpl();
    return sub_22BB58728(v22, &qword_27D8E6DC0, &qword_22BDD0D60);
  }

  sub_22BDA1CBC(v19, v12);
  if (qword_28142A0D8 != -1)
  {
    sub_22BB30AB8();
    swift_once();
  }

  _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(a1, v12, &v39);
  if (v3)
  {
    v30 = *MEMORY[0x277D1D218];
    v31 = sub_22BDB5E54();
    sub_22BB2F330(v31);
    (*(v32 + 104))(a2, v30, v31);
    sub_22BB35E6C();
    sub_22BDA1F30(v33, v34);
    swift_willThrowTypedImpl();
    sub_22BB33F3C();
    sub_22BDA1F78(v12, v35);
    return sub_22BB58728(v22, &qword_27D8E6DC0, &qword_22BDD0D60);
  }

  sub_22BB33F3C();
  sub_22BDA1F78(v12, v37);
  return sub_22BB58728(v22, &qword_27D8E6DC0, &qword_22BDD0D60);
}

id sub_22BDA1724@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_22BD9FF5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BDA174C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22BD9FEBC();
  *a1 = result;
  return result;
}

uint64_t (*sub_22BDA17A0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t type metadata accessor for SnippetStreamingXPCServiceServer.Server()
{
  result = qword_281428FF0;
  if (!qword_281428FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BDA187C()
{
  sub_22BDA192C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22BDA192C()
{
  if (!qword_28142DD28)
  {
    sub_22BBEB2E0(&qword_27D8E6DC0, &qword_22BDD0D60);
    v0 = sub_22BDB4B44();
    if (!v1)
    {
      atomic_store(v0, &qword_28142DD28);
    }
  }
}

uint64_t sub_22BDA1A68()
{
  swift_beginAccess();
  v0 = qword_28142F2B8;
  v1 = qword_28142F2B8;
  return v0;
}

void sub_22BDA1AB4(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F2B8;
  qword_28142F2B8 = a1;
}

uint64_t sub_22BDA1BA4(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F2C0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDA1C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BDA1D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6DC0, &qword_22BDD0D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDA1DF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_22BB37934(v5);

  return sub_22BDA1018(v6, v7, v8, v9);
}

uint64_t sub_22BDA1E90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_22BB37934(v5);

  return sub_22BDA0920(v6, v7, v8, v9);
}

uint64_t sub_22BDA1F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BDA1F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22BDA1FD4()
{
  sub_22BB31014();
  v1 = v0;
  v67 = sub_22BDBA5C4();
  v2 = sub_22BB30444(v67);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB305A8();
  v66 = v7;
  sub_22BB2F120();
  v65 = sub_22BDB4C64();
  v8 = sub_22BB30444(v65);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v64 = v13;
  sub_22BB2F120();
  v63 = sub_22BDBA014();
  v14 = sub_22BB30444(v63);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v21 = v20 - v19;
  v22 = *(v1 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v75 = MEMORY[0x277D84F90];
    sub_22BBBDEC8();
    sub_22BB69CB4();
    v74 = v75;
    v26 = sub_22BDB16C8(v1);
    v27 = 0;
    v73 = v1 + 56;
    v61 = *MEMORY[0x277D72CC8];
    v60 = *MEMORY[0x277D72D50];
    v58 = (v10 + 8);
    v59 = (v4 + 104);
    v57 = *MEMORY[0x277D72AD0];
    v54 = v1 + 64;
    v55 = v22;
    v56 = v1;
    v62 = v16;
    if ((v26 & 0x8000000000000000) == 0)
    {
      while (v26 < 1 << *(v1 + 32))
      {
        if ((*(v73 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v1 + 36) != v24)
        {
          goto LABEL_25;
        }

        v69 = v26 >> 6;
        v72 = v25;
        v68 = v27;
        v28 = (*(v1 + 48) + 16 * v26);
        v29 = v28[1];
        v70 = v24;
        v71 = *v28;
        v30 = v21;
        v31 = sub_22BDBA634();
        v32 = v23;
        v33 = swift_allocBox();
        v35 = v34;
        v36 = sub_22BDBA604();
        v37 = swift_allocBox();
        sub_22BB30474(v36);
        (*(v38 + 104))();
        *v35 = v37;
        sub_22BB30474(v31);
        v40 = v31;
        v21 = v30;
        (*(v39 + 104))(v35, v60, v40);
        *v66 = v33;
        v23 = v32;
        (*v59)(v66, v57, v67);
        swift_bridgeObjectRetain_n();
        sub_22BDB4C54();
        sub_22BDB4C44();
        (*v58)(v64, v65);

        v41 = v74;
        v42 = *(v74 + 16);
        if (v42 >= *(v74 + 24) >> 1)
        {
          sub_22BB69CB4();
          v41 = v74;
        }

        *(v41 + 16) = v42 + 1;
        v43 = *(v62 + 80);
        sub_22BB2F390();
        v74 = v44;
        (*(v62 + 32))(v44 + v45 + *(v62 + 72) * v42, v30);
        if (v72)
        {
          goto LABEL_29;
        }

        v1 = v56;
        v46 = 1 << *(v56 + 32);
        if (v26 >= v46)
        {
          goto LABEL_26;
        }

        v47 = *(v73 + 8 * v69);
        if ((v47 & (1 << v26)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v56 + 36) != v70)
        {
          goto LABEL_28;
        }

        v48 = v47 & (-2 << (v26 & 0x3F));
        if (v48)
        {
          v46 = __clz(__rbit64(v48)) | v26 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v49 = v69 << 6;
          v50 = v69 + 1;
          v51 = (v54 + 8 * v69);
          while (v50 < (v46 + 63) >> 6)
          {
            v53 = *v51++;
            v52 = v53;
            v49 += 64;
            ++v50;
            if (v53)
            {
              sub_22BBBFEB0(v26, v70, 0);
              v46 = __clz(__rbit64(v52)) + v49;
              goto LABEL_19;
            }
          }

          sub_22BBBFEB0(v26, v70, 0);
        }

LABEL_19:
        v27 = v68 + 1;
        if (v68 + 1 == v55)
        {
          goto LABEL_22;
        }

        v25 = 0;
        v24 = *(v56 + 36);
        v26 = v46;
        if (v46 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_22BB376A8();
  }
}

void sub_22BDA25D0()
{
  sub_22BB31014();
  v2 = v1;
  v25 = v3;
  v26 = v4;
  v5 = &qword_27D8E3F08;
  v6 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22BB30560();
  v23 = v9;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = 0;
  v27 = *(v2 + 16);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v27 == v13)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v13 >= *(v2 + 16))
    {
      break;
    }

    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = v5;
    sub_22BC7E3C4(v2 + v14 + v15 * v13, v12, v5, &unk_22BDD0430);
    v5 = v26;
    v17 = v25(v12);
    if (v0)
    {
      sub_22BB58728(v12, &qword_27D8E3F08, &unk_22BDD0430);
      sub_22BB77E8C();

      goto LABEL_14;
    }

    if (v17)
    {
      sub_22BDB1B84(v12, v23);
      sub_22BB77E8C();
      v28 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB314A4();
        sub_22BD27E10();
      }

      sub_22BB8AD84();
      if (v21)
      {
        v24 = v20;
        v22 = v19;
        sub_22BD27E10();
        v20 = v24;
        v19 = v22;
        v5 = v16;
        v18 = v28;
      }

      ++v13;
      v18[2] = v20;
      v24 = v18;
      sub_22BDB1B84(v23, v18 + v14 + v19 * v15);
    }

    else
    {
      v5 = v16;
      sub_22BB58728(v12, v16, &unk_22BDD0430);
      ++v13;
    }
  }

  __break(1u);
}

void sub_22BDA2860()
{
  sub_22BB31014();
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  v9 = v8(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22BB30560();
  v28 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = 0;
  v32 = *(v5 + 16);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v16)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v16 >= *(v5 + 16))
    {
      break;
    }

    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = *(v10 + 72);
    sub_22BDB1BF4(v5 + v17 + v18 * v16, v15, v3);
    v19 = v31;
    v20 = v30(v15);
    if (v0)
    {
      sub_22BDB1C50();
      sub_22BB77E8C();

      goto LABEL_14;
    }

    if (v20)
    {
      sub_22BDB1CA4(v15, v28, v3);
      sub_22BB77E8C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22BB314A4();
        v27(v21);
      }

      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v26 = v23;
        (v27)(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v26;
      }

      ++v16;
      *(v19 + 16) = v24;
      v29 = v19;
      sub_22BDB1CA4(v28, v19 + v17 + v23 * v18, v3);
    }

    else
    {
      sub_22BDB1C50();
      ++v16;
    }
  }

  __break(1u);
}

void sub_22BDA2B30()
{
  sub_22BB31014();
  v31 = v1;
  v3 = v2;
  v36 = v4;
  v37 = v5;
  v39 = v6(0);
  v7 = sub_22BB30444(v39);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v33 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = 0;
  v38 = *(v3 + 16);
  v35 = v9 + 16;
  v17 = (v9 + 8);
  v32 = (v9 + 32);
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v38 == v16)
    {

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    if (v16 >= *(v3 + 16))
    {
      break;
    }

    v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v19 = *(v9 + 72);
    v20 = v3;
    (*(v9 + 16))(v15, v3 + v18 + v19 * v16, v39);
    v21 = v36(v15);
    if (v0)
    {
      (*v17)(v15, v39);

      goto LABEL_14;
    }

    if (v21)
    {
      v30 = *v32;
      v30(v33, v15, v39);
      v3 = v34;
      v40 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_22BB314A4();
        v31(v22);
      }

      sub_22BB8AD84();
      if (v27)
      {
        v34 = v26;
        v29 = v25;
        (v31)(v23 > 1, v26, 1);
        v26 = v34;
        v25 = v29;
        v3 = v20;
        v24 = v40;
      }

      ++v16;
      *(v24 + 16) = v26;
      v34 = v24;
      v30((v24 + v18 + v25 * v19), v33, v39);
    }

    else
    {
      (*v17)(v15, v39);
      ++v16;
    }
  }

  __break(1u);
}

id sub_22BDA2DBC()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_22BB3182C();
  return sub_22BDA2DFC(v2, v3);
}

id sub_22BDA2DFC(uint64_t a1, void *a2)
{
  sub_22BB371E4();
  ObjectType = swift_getObjectType();
  v5 = sub_22BDB6564();
  v6 = &v2[OBJC_IVAR____TtCC23IntelligenceFlowRuntime23ToolboxXPCServiceServer6Server_clientApplicationIdentifier];
  *v6 = v5;
  v6[1] = v7;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_init);

  v9 = sub_22BDB6574();
  sub_22BB2F330(v9);
  (*(v10 + 8))(v2);
  return v8;
}

void sub_22BDA2EA0()
{
  sub_22BB3B094();
  sub_22BB89E30();
  v4 = sub_22BB31F54();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BB3A4F8();
  sub_22BB369A8(v10);
  sub_22BB322B0();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_22BB322B0();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v0;
  sub_22BDB5ED4();

  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v13 = sub_22BB3182C();
  sub_22BB58728(v13, v14, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA2FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E6E68, &qword_22BDD1100);
  v3[32] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v6 = sub_22BDBA814();
  v3[37] = v6;
  v7 = *(v6 - 8);
  v3[38] = v7;
  v8 = *(v7 + 64) + 15;
  v3[39] = swift_task_alloc();
  v9 = sub_22BDBA9B4();
  v3[40] = v9;
  v10 = *(v9 - 8);
  v3[41] = v10;
  v11 = *(v10 + 64) + 15;
  v3[42] = swift_task_alloc();
  v12 = sub_22BDBA994();
  v3[43] = v12;
  v13 = *(v12 - 8);
  v3[44] = v13;
  v14 = *(v13 + 64) + 15;
  v3[45] = swift_task_alloc();
  v15 = sub_22BDB9F84();
  v3[46] = v15;
  v16 = *(v15 - 8);
  v3[47] = v16;
  v17 = *(v16 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v18 = sub_22BDB9C14();
  v3[50] = v18;
  v19 = *(v18 - 8);
  v3[51] = v19;
  v20 = *(v19 + 64) + 15;
  v3[52] = swift_task_alloc();
  v21 = *(*(sub_22BBE6DE0(&qword_27D8E6E70, &qword_22BDD1108) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v22 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v23 = sub_22BDB57A4();
  v3[56] = v23;
  v24 = *(v23 - 8);
  v3[57] = v24;
  v25 = *(v24 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v26 = sub_22BDB77D4();
  v3[60] = v26;
  v27 = *(v26 - 8);
  v3[61] = v27;
  v28 = *(v27 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA33B0, 0, 0);
}

uint64_t sub_22BDA3E90()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3053C();
  *v6 = v5;
  v7 = *(v4 + 584);
  *v6 = *v1;
  *(v5 + 592) = v0;

  v8 = *(v4 + 576);

  if (!v0)
  {
    *(v5 + 600) = v3;
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BDA3FC8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 656);
  v4 = *(v0 + 528);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_22BDA2B30();
  v9 = v8;

  v10 = *(v9 + 16);

  v11 = sub_22BDB58B4();
  *(v0 + 608) = v11;
  v12 = objc_allocWithZone(v11);
  *(v0 + 616) = sub_22BDB58A4();
  sub_22BDB8AA4();
  sub_22BDB9BA4();
  (*(v6 + 8))(v5, v7);
  v13 = *(v0 + 208);
  sub_22BB69FEC((v0 + 176), *(v0 + 200));
  sub_22BB30AE4();
  v14 = sub_22BDB9284();
  sub_22BB32FA4((v0 + 176));
  *(v0 + 624) = sub_22BBD0C20(v14, sub_22BD91924, MEMORY[0x277D721E0]);
  v15 = *(MEMORY[0x277D1DF88] + 4);
  v16 = swift_task_alloc();
  *(v0 + 632) = v16;
  *v16 = v0;
  v16[1] = sub_22BDA41C8;
  v17 = *(v0 + 528);
  sub_22BB33430();

  return MEMORY[0x2821775D0]();
}

uint64_t sub_22BDA41C8()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = *(v2 + 632);
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 640) = v8;
  *(v9 + 648) = v0;

  v10 = *(v2 + 624);

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22BDA42F8()
{
  v238 = v0;
  v1 = 0;
  v2 = v0[47];
  v185 = v0[80];
  v188 = *(v185 + 16);
  v192 = (v0[44] + 8);
  v182 = *MEMORY[0x277D720F0];
  v190 = (v0[38] + 8);
  v177 = (v0[41] + 8);
  v167 = (v2 + 32);
  v200 = v2;
  v195 = (v2 + 8);
  v234 = v0[81];
  v157 = MEMORY[0x277D84F90];
  while (v188 != v1)
  {
    if (v1 >= *(v185 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v3 = v0[69];
    v4 = (*(v200 + 80) + 32) & ~*(v200 + 80);
    v5 = *(v200 + 72);
    (*(v200 + 16))(v0[49], v0[80] + v4 + v5 * v1, v0[46]);
    sub_22BDBA2D4();
    if (v234)
    {

      v74 = v0[80];
      v230 = v0[66];
      v75 = v0[71];
      v76 = v0[70];
      v77 = v0[68];
      v78 = v0[67];
      v79 = v0[59];
      v80 = v0;
      v83 = v0 + 56;
      v81 = v0[56];
      v82 = v83[1];
      v220 = v80[54];
      v225 = v79;
      v84 = v80[49];
      v85 = v80[46];

      sub_22BB94C90(v75, v76);
      v86 = sub_22BB3182C();
      sub_22BB94C90(v86, v87);
      (*v195)(v84, v85);
      sub_22BB58728(v220, &qword_27D8E6E70, &qword_22BDD1108);
      (*(v82 + 8))(v225, v81);

      sub_22BD5F4C0((v80 + 2));
      v88 = v80[62];
      v89 = v80[31];
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

      v90 = v234;
      v91 = sub_22BDB77C4();
      v92 = sub_22BDBB114();

      v93 = sub_22BB72E44();
      v94 = v80[65];
      v96 = v80[61];
      v95 = v80[62];
      v97 = v80[60];
      if (v93)
      {
        v231 = v80[65];
        v99 = v80[30];
        v98 = v80[31];
        v100 = sub_22BB3B778();
        swift_slowAlloc();
        v226 = v95;
        v101 = sub_22BB6B650();
        v237[0] = v101;
        *v100 = 136315394;
        *(v100 + 4) = sub_22BB32EE0(v99, v98, v237);
        *(v100 + 12) = 2112;
        v102 = v234;
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 14) = v103;
        *v84 = v103;
        _os_log_impl(&dword_22BB2C000, v91, v92, "Could not determine readiness of %s's toolbox. Error: %@", v100, 0x16u);
        sub_22BB58728(v84, &unk_27D8E6A70, &unk_22BDBCDB0);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        sub_22BB32FA4(v101);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v80 = v166;
        sub_22BB2F368();
        MEMORY[0x2318A6080]();

        v231(v226, v97);
      }

      else
      {

        v104 = sub_22BB30AE4();
        v94(v104);
      }

      v106 = v80[63];
      v105 = v80[64];
      v107 = v80[62];
      v108 = v80[58];
      v109 = v80[59];
      v110 = v80;
      v113 = v80 + 54;
      v112 = v80[54];
      v111 = v113[1];
      v193 = v110[53];
      v196 = v110[52];
      v198 = v110[49];
      v201 = v110[48];
      v205 = v110[45];
      v208 = v110[42];
      v212 = v110[39];
      v216 = v110[36];
      v221 = v110[35];
      v227 = v110[34];
      v232 = v110[33];
      swift_willThrow();

      sub_22BB2F09C();
      goto LABEL_26;
    }

    v169 = v5;
    v173 = v4;
    v203 = v1;
    v207 = v0[49];
    v6 = v0[45];
    v7 = v0[43];
    v214 = v0[39];
    v218 = v0[42];
    v223 = v0[37];
    sub_22BBE6DE0(&qword_27D8E6E80, qword_22BDD1110);
    sub_22BB35760();
    v8 = v0;
    v210 = sub_22BDB9F54();
    sub_22BB30444(v210);
    v10 = v9;
    v12 = *(v11 + 72);
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22BDBCBD0;
    v15 = (v14 + v13);
    sub_22BDB9F74();
    v16 = sub_22BDBA974();
    v18 = v17;
    v19 = *v192;
    (*v192)(v6, v7);
    *v15 = v16;
    v15[1] = v18;
    (*(v10 + 104))(v15, v182, v210);
    sub_22BDB9F74();
    sub_22BDBA984();
    v19(v6, v7);
    sub_22BDBA9A4();
    (*v190)(v214, v223);
    v20 = sub_22BDBA2A4();
    v28 = sub_22BBBFF70(v20, v21, v22, v23, v24, v25, v26, v27, v153, v155, v157, v158, v160, v161, v163, v166, v167, v169, v173, v177);
    v29(v28);

    v30 = *(v20 + 16);

    v31 = v8[49];
    v0 = v8;
    if (v30)
    {
      v32 = *v167;
      (*v167)(v8[48], v8[49], v8[46]);
      v33 = v157;
      v237[0] = v157;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v157 + 16);
        sub_22BD28880();
        v33 = v237[0];
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BB2F158(v35);
        sub_22BB3AB64();
        sub_22BD28880();
        v33 = v237[0];
      }

      v1 = v203 + 1;
      v37 = v8[48];
      v38 = v8[46];
      *(v33 + 16) = v36 + 1;
      v157 = v33;
      v32(v33 + v174 + v36 * v170, v37, v38);
      v234 = 0;
    }

    else
    {
      (*v195)(v8[49], v8[46]);
      v234 = 0;
      v1 = v203 + 1;
    }
  }

  v39 = v0[80];
  v40 = v0[66];

  v154 = sub_22BDB8A24();
  v156 = v41;
  sub_22BDB9394();
  sub_22BDB9384();
  v42 = sub_22BDB9374();

  v43 = *(v42 + 16);
  if (!v43)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_30:
    v237[0] = v45;

    sub_22BDB08A8(v237);
    if (v234)
    {

      return;
    }

    v0[28] = v237[0];
    sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
    sub_22BB8E600();
    v115 = sub_22BDBABC4();

    sub_22BB2F324();
    sub_22BDB8644();
    sub_22BB371E4();

    v116 = sub_22BDB4304();
    v118 = v117;

    if (v156 >> 60 == 15)
    {
      if (v118 >> 60 == 15)
      {
        v119 = sub_22BB89D18();
        sub_22BB352C4(v119, v120);
        v121 = sub_22BB3627C();
        sub_22BDB1A9C(v121, v122);
        v123 = sub_22BB3627C();
        sub_22BB94C90(v123, v124);
LABEL_40:
        v141 = v166[76];
        v142 = v166[66];
        v143 = *(v157 + 16);

        v144 = objc_allocWithZone(v141);
        sub_22BDB58A4();
        sub_22BDB8A44();
        v145 = v166[77];
        v217 = v166[70];
        v222 = v166[71];
        v228 = v166[67];
        v233 = v166[68];
        v146 = v166[66];
        v172 = v166[64];
        v176 = v166[63];
        v168 = v166[59];
        v179 = v166[62];
        v181 = v166[58];
        v147 = v166[57];
        v165 = v166[56];
        v148 = v166[54];
        v184 = v166[55];
        v189 = v166[53];
        v191 = v166[52];
        v194 = v166[49];
        v197 = v166[48];
        v199 = v166[45];
        v202 = v166[42];
        v206 = v166[39];
        v209 = v166[36];
        v213 = v166[35];
        v235 = v166[34];
        v187 = v166[33];
        v162 = v166[29];
        sub_22BDB8A94();
        v149 = objc_allocWithZone(sub_22BDB5ED4());
        sub_22BB6B114();
        v150 = sub_22BDB5EC4();

        sub_22BB94C90(v154, v156);
        v151 = sub_22BB89D18();
        sub_22BB3531C(v151, v152);
        sub_22BB94C90(v222, v217);
        sub_22BB94C90(v228, v233);
        sub_22BB58728(v148, &qword_27D8E6E70, &qword_22BDD1108);
        (*(v147 + 8))(v168, v165);
        *v162 = v150;
        sub_22BD5F4C0((v166 + 2));

        v114 = v166[1];
LABEL_26:

        v114();
        return;
      }
    }

    else if (v118 >> 60 != 15)
    {
      v133 = sub_22BB89D18();
      sub_22BB352C4(v133, v134);
      v135 = sub_22BB89D18();
      sub_22BB352C4(v135, v136);
      sub_22BDB1A9C(v154, v156);
      MEMORY[0x23189E2C0](v154, v156, v116, v118);
      v137 = sub_22BB89D18();
      sub_22BB94C90(v137, v138);
      v139 = sub_22BB89D18();
      sub_22BB3531C(v139, v140);
      sub_22BB94C90(v154, v156);
      goto LABEL_40;
    }

    v125 = sub_22BB89D18();
    sub_22BB352C4(v125, v126);
    v127 = sub_22BB3627C();
    sub_22BDB1A9C(v127, v128);
    v129 = sub_22BB3627C();
    sub_22BB94C90(v129, v130);
    v131 = sub_22BB89D18();
    sub_22BB94C90(v131, v132);
    goto LABEL_40;
  }

  v44 = v0[44];
  v164 = v0[32];
  v236 = MEMORY[0x277D84F90];
  sub_22BD28158(0, v43, 0);
  v45 = v236;
  v46 = sub_22BDB1B50(v42);
  LODWORD(v48) = v47;
  v50 = v49;
  v171 = v44;
  v175 = v42 + 64;
  v159 = v42;
  while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(v42 + 32))
  {
    if (((*(v175 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (*(v42 + 36) != v48)
    {
      goto LABEL_44;
    }

    v215 = v50;
    v219 = v48;
    v224 = v43;
    v51 = *(v164 + 48);
    v52 = v0[46];
    v53 = v0[43];
    v186 = v0[39];
    v211 = v0[37];
    v229 = v45;
    v55 = v0[35];
    v54 = v0[36];
    v56 = v0[34];
    v183 = v0[33];
    (*(v171 + 16))(v54, *(v42 + 48) + *(v171 + 72) * v46, v53);
    (*(v200 + 16))(v54 + v51, *(v42 + 56) + *(v200 + 72) * v46, v52);
    (*(v171 + 32))(v55, v54, v53);
    (*(v200 + 32))(v55 + *(v164 + 48), v54 + v51, v52);
    v57 = sub_22BB35464();
    sub_22BC7E3C4(v57, v58, &qword_27D8E6E68, &qword_22BDD1100);
    v204 = *(v164 + 48);
    v178 = sub_22BDBA974();
    v60 = v59;
    v61 = *v192;
    (*v192)(v56, v53);
    sub_22BC7E3C4(v55, v183, &qword_27D8E6E68, &qword_22BDD1100);
    v180 = *(v164 + 48);
    sub_22BDBA984();
    v61(v183, v53);
    v62 = sub_22BDBA804();
    v64 = v63;
    (*v190)(v186, v211);
    v237[0] = v178;
    v237[1] = v60;

    MEMORY[0x2318A4C40](v62, v64);

    sub_22BB58728(v55, &qword_27D8E6E68, &qword_22BDD1100);
    v65 = *(v200 + 8);
    v65(v183 + v180, v52);
    v65(v56 + v204, v52);
    v45 = v229;
    v67 = *(v229 + 16);
    v66 = *(v229 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_22BB2F158(v66);
      sub_22BB3AB64();
      sub_22BD28158(v71, v72, v73);
      v45 = v229;
    }

    *(v45 + 16) = v67 + 1;
    v68 = v45 + 16 * v67;
    *(v68 + 32) = v178;
    *(v68 + 40) = v60;
    v42 = v159;
    v46 = sub_22BDB1AD0(v46, v219, v215 & 1, v159);
    v48 = v69;
    v50 = v70;
    v43 = v224 - 1;
    v0 = v166;
    if (v224 == 1)
    {

      sub_22BBBFEB0(v46, v48, v50 & 1);
      goto LABEL_30;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_22BDA523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  sub_22BB70C74();
  v25 = v24[56];
  v26 = v24[57];
  v27 = v24[54];

  v28 = sub_22BB2F324();
  sub_22BB94C90(v28, v29);
  v30 = sub_22BB39478();
  sub_22BB94C90(v30, v31);
  sub_22BB58728(v27, &qword_27D8E6E70, &qword_22BDD1108);
  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v34 = sub_22BB32E04();
  v35(v34);
  sub_22BD5F4C0((v24 + 2));
  v36 = v24[74];
  sub_22BB70178();

  v37 = v36;
  v38 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB899B4();
  v39 = v36;

  v40 = sub_22BB71F98();
  v41 = v24[65];
  v42 = v24[61];
  v43 = v24[62];
  v44 = v24[60];
  if (v40)
  {
    a19 = v24[65];
    v45 = v39;
    v46 = v24[30];
    v47 = v24[31];
    sub_22BB3B778();
    a18 = v43;
    sub_22BB2F308();
    sub_22BB3AA0C();
    a17 = v44;
    sub_22BDB1E58();
    v48 = sub_22BB3FD3C(4.8151e-34);
    v50 = sub_22BB32EE0(v48, v47, v49);
    sub_22BB328F8(v50);
    v51 = v45;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB33854(v52);
    sub_22BB367C8();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    sub_22BB58728(v32, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB30DDC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    a19(v43, v44);
  }

  else
  {

    v58 = sub_22BB94F44();
    v41(v58);
  }

  sub_22BB39554();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22BDA54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v25 = v24[77];
  sub_22BB70C74();
  v26 = v24[56];
  v27 = v24[57];
  v28 = v24[54];

  v29 = sub_22BB2F324();
  sub_22BB94C90(v29, v30);
  v31 = sub_22BB39478();
  sub_22BB94C90(v31, v32);
  sub_22BB58728(v28, &qword_27D8E6E70, &qword_22BDD1108);
  v33 = *(v27 + 8);
  v34 = sub_22BB32E04();
  v35(v34);
  sub_22BD5F4C0((v24 + 2));
  v36 = v24[81];
  sub_22BB70178();

  v37 = v36;
  v38 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB899B4();
  v39 = v36;

  v40 = sub_22BB71F98();
  v41 = v24[65];
  v42 = v24[61];
  v43 = v24[62];
  v44 = v24[60];
  if (v40)
  {
    a19 = v24[65];
    v45 = v39;
    v46 = v24[30];
    v47 = v24[31];
    sub_22BB3B778();
    a18 = v43;
    sub_22BB2F308();
    sub_22BB3AA0C();
    a17 = v44;
    sub_22BDB1E58();
    v48 = sub_22BB3FD3C(4.8151e-34);
    v50 = sub_22BB32EE0(v48, v47, v49);
    sub_22BB328F8(v50);
    v51 = v45;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB33854(v52);
    sub_22BB367C8();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    sub_22BB58728(v25, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB30DDC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    a19(v43, v44);
  }

  else
  {

    v58 = sub_22BB94F44();
    v41(v58);
  }

  sub_22BB39554();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22BDA5714(uint64_t a1, void *a2)
{
  v4 = sub_22BDB9F64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = a2[4];
  sub_22BB69FEC(a2, a2[3]);
  if ((sub_22BDB8824() & 1) == 0)
  {
    return 0;
  }

  v18[1] = v2;
  result = sub_22BDB9FB4();
  v14 = result;
  v15 = 0;
  v19 = *(result + 16);
  v18[2] = v5 + 32;
  v18[3] = v5 + 16;
  v16 = *MEMORY[0x277D72148];
  while (1)
  {
    if (v19 == v15)
    {

      return 1;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    (*(v5 + 16))(v11, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v4);
    (*(v5 + 32))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == v16)
    {

      (*(v5 + 96))(v9, v4);
      v17 = sub_22BDBA994();
      (*(*(v17 - 8) + 8))(v9, v17);
      return 0;
    }

    ++v15;
    result = (*(v5 + 8))(v9, v4);
  }

  __break(1u);
  return result;
}

void sub_22BDA59C0()
{
  sub_22BB3B094();
  sub_22BB89E30();
  v4 = sub_22BB31F54();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BB3A4F8();
  sub_22BB369A8(v10);
  sub_22BB322B0();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_22BB322B0();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v0;
  sub_22BB33F68();

  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v13 = sub_22BB3182C();
  sub_22BB58728(v13, v14, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA5AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = sub_22BDB57A4();
  v3[27] = v5;
  v6 = *(v5 - 8);
  v3[28] = v6;
  v7 = *(v6 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA5C54, 0, 0);
}

uint64_t sub_22BDA5C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, NSObject *a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, char *a15, uint64_t a16, void (*a17)(uint64_t), void (*a18)(void (*)(uint64_t), uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  sub_22BB3B558();
  a31 = v35;
  a32 = v36;
  sub_22BB348A0();
  a30 = v32;
  v37 = v32[35];
  sub_22BDB1DCC();

  v38 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v39 = sub_22BB72E44();
  v40 = v32[35];
  v41 = v32[31];
  v42 = v32[32];
  if (v39)
  {
    sub_22BB72168();
    v34 = sub_22BB6B650();
    a20 = v34;
    *v33 = 136315138;
    v43 = sub_22BB31528();
    *(v33 + 4) = sub_22BB32EE0(v43, v44, v45);
    sub_22BB36F24(&dword_22BB2C000, v46, v47, "Populating %s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v48 = *(v42 + 8);
  v49 = sub_22BB30AE4();
  v48(v49);
  v32[36] = v48;
  v50 = v32[26];
  v51 = v32[27];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  if (sub_22BB3759C() == 1)
  {
    v52 = v32[34];
    v53 = v32[25];
    sub_22BB58728(v32[26], &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v54 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB371E4();

    if (os_log_type_enabled(v54, v52))
    {
      HIDWORD(a14) = v52;
      sub_22BB36C64();
      a13 = sub_22BB3869C();
      a19 = a13;
      *v41 = 136315394;
      v55 = sub_22BB31F54();
      *(v41 + 4) = sub_22BB32EE0(v55, v56, v57);
      a15 = v41;
      *(v41 + 6) = 2080;
      v58 = sub_22BDB5774();
      sub_22BB393AC(v58);
      if (v34)
      {
        a11 = v54;
        a12 = v48;
        v59 = v32[28];
        a20 = MEMORY[0x277D84F90];
        sub_22BB9287C();
        v60 = a20;
        sub_22BB2F6F8();
        a10 = v53;
        sub_22BB3DF14();
        a16 = v61;
        a17 = v62;
        a18 = v59;
        do
        {
          v52 = v32[29];
          v63 = v32[27];
          v64 = sub_22BB3A81C();
          a17(v64);
          sub_22BDB5794();
          v65 = sub_22BB3887C();
          v66(v65);
          a20 = v60;
          sub_22BB51398();
          if (v68)
          {
            sub_22BB2F158(v67);
            v52 = &a20;
            sub_22BB3AB64();
            sub_22BD28158(v70, v71, v72);
            v60 = a20;
          }

          sub_22BB31A90();
          sub_22BB51900();
        }

        while (!v69);
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }

      v104 = v32[34];
      v106 = v32[31];
      v105 = v32[32];
      v32[22] = v60;
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB37950();
      sub_22BB36070();
      v107 = sub_22BB2F324();
      sub_22BB32EE0(v107, v108, v109);
      sub_22BB371E4();

      *(a15 + 14) = v52;
      sub_22BBBD2C4(&dword_22BB2C000, v54, BYTE4(a14), "Invalid planner type (%s while populating toolbox. Possible values: [%s]");
      sub_22BB34838();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v88 = sub_22BB37A8C();
    }

    else
    {
      v85 = v32[34];
      v86 = v32[31];
      v87 = v32[32];

      v88 = sub_22BB2F324();
    }

    v48(v88);
    v111 = v32[24];
    v110 = v32[25];
    sub_22BDB017C();
    v50 = sub_22BB31A08();
    *v112 = v111;
    v112[1] = v110;
    sub_22BB38500(v50, v112);

    goto LABEL_23;
  }

  v73 = v32[30];
  v74 = v32[27];
  v75 = v32[26];
  v76 = sub_22BB3463C(v32[28]);
  v77(v76);
  v78 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v78);

  if (!v32[15])
  {
    v89 = v32[30];
    v90 = v32[27];
    v91 = v32[28];
    sub_22BB58728((v32 + 12), &qword_27D8E6E08, &qword_22BDD0FE8);
    sub_22BDB017C();
    v92 = sub_22BB31A08();
    sub_22BB34468(v92, v93);
    (*(v91 + 8))(v89, v90);
    goto LABEL_23;
  }

  sub_22BB330F0();
  v79 = sub_22BB35E84();
  v32[37] = static StandardToolboxConfiguration.makeMutableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(v79, v80, v81, v82, v83, v84);
  if (v41)
  {
    v50 = v41;
    (*(v32[28] + 8))(v32[30], v32[27]);
    sub_22BD5F4C0((v32 + 2));
LABEL_23:
    v113 = v32[33];
    sub_22BB3CF68();

    v114 = v50;
    v115 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v116 = sub_22BB71F98();
    v117 = v32[36];
    v118 = v32[32];
    v119 = v32[33];
    v120 = v32[31];
    if (v116)
    {
      a18 = v32[36];
      v121 = v32[24];
      v122 = v32[25];
      sub_22BB3B778();
      a17 = v119;
      sub_22BB2F308();
      a16 = v120;
      sub_22BB3AA0C();
      sub_22BDB1E58();
      v124 = sub_22BB3FD3C(COERCE_FLOAT(*(v123 + 4072)));
      v126 = sub_22BB32EE0(v124, v122, v125);
      sub_22BB328F8(v126);
      v127 = v50;
      v128 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v128);
      sub_22BB367C8();
      _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
      sub_22BB58728(v120, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      a18(v119, v120);
    }

    else
    {

      v134 = sub_22BB6B114();
      v117(v134);
    }

    sub_22BB7574C();

    sub_22BB31368();
    sub_22BB374A0();

    return v136(v135, v136, v137, v138, v139, v140, v141, v142, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  v94 = *(MEMORY[0x277D1DD60] + 4);
  v95 = swift_task_alloc();
  v32[38] = v95;
  *v95 = v32;
  v95[1] = sub_22BDA6230;
  sub_22BB374A0();

  return MEMORY[0x282177138](v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22BDA6230()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  *(v8 + 312) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BDA6330()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v15 = v0[29];
  v16 = v0[26];
  v8 = v0[23];
  v9 = sub_22BB33F68();
  sub_22BDBB214();
  sub_22BB371E4();

  v10 = *(v7 + 8);
  v11 = sub_22BB6B114();
  v12(v11);
  sub_22BD5F4C0((v0 + 2));
  *v8 = v9;

  sub_22BB360FC();

  return v13();
}

uint64_t sub_22BDA6430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, void (*a11)(_DWORD *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22BB974BC();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[37];
  v29 = v24[30];
  v30 = v24[27];
  v31 = v24[28];

  v32 = *(v31 + 8);
  v33 = sub_22BB2F324();
  v34(v33);
  sub_22BD5F4C0((v24 + 2));
  v35 = v24[39];
  v36 = v24[33];
  sub_22BB3CF68();

  v37 = v35;
  v38 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB899B4();

  v39 = sub_22BB71F98();
  v40 = v24[36];
  v41 = v24[32];
  v42 = v24[33];
  v43 = v24[31];
  if (v39)
  {
    a11 = v24[36];
    v44 = v24[24];
    v45 = v24[25];
    sub_22BB3B778();
    a10 = v42;
    sub_22BB2F308();
    sub_22BB3AA0C();
    sub_22BDB1E24();
    *v42 = 136315394;
    v46 = sub_22BB32EE0(v44, v45, &a12);
    sub_22BB328F8(v46);
    v47 = v35;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB33854(v48);
    sub_22BB367C8();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    sub_22BB58728(v25, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB30DDC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    a11(v42, a9);
  }

  else
  {

    v54 = sub_22BB35464();
    v40(v54);
  }

  sub_22BB7574C();

  sub_22BB31368();
  sub_22BB32660();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BDA6644()
{
  sub_22BB3B094();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = _Block_copy(v6);
  v8 = sub_22BDBABF4();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = v5;
  v1(v8, v10, v3, v11);

  sub_22BB36A24();
}

void sub_22BDA66F8()
{
  sub_22BB3B094();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BB31F54();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v10, v11, v12, v13);
  sub_22BB322B0();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v1;
  sub_22BDB4254();

  sub_22BDBAFB4();

  v15 = sub_22BB30428();
  sub_22BB58728(v15, v16, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDA6808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = *(*(sub_22BBE6DE0(&qword_27D8E6E60, &qword_22BDD10D8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v6 = sub_22BDB57A4();
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v8 = *(v7 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v3[32] = v9;
  v10 = *(v9 - 8);
  v3[33] = v10;
  v11 = *(v10 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA69BC, 0, 0);
}

void sub_22BDA7040(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_22BC7E3C4(a1, &v12 - v8, &qword_27D8E2E00, &qword_22BDBD450);
  v10 = sub_22BDB4254();
  v11 = 0;
  if (sub_22BB3AA28(v9, 1, v10) != 1)
  {
    v11 = sub_22BDB4244();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (a2)
  {
    a2 = sub_22BDB4234();
  }

  (*(a3 + 16))(a3, v11, a2);
}

void sub_22BDA7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB30F94();
  v25 = v24;
  v45 = v26;
  v46 = v27;
  v29 = v28;
  v31 = v30;
  v44 = v32;
  v34 = v33;
  v36 = v35;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  v39 = *(v38 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BB3A4F8();
  sub_22BB369A8(v41);
  sub_22BB322B0();
  v42 = swift_allocObject();
  *(v42 + 16) = a22;
  *(v42 + 24) = a23;
  v43 = swift_allocObject();
  v43[2] = v36;
  v43[3] = v34;
  v43[4] = a21;
  v43[5] = v44;
  v43[6] = v31;
  v43[7] = v45;
  v43[8] = v29;
  v43[9] = v46;
  v43[10] = v25;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v23, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDA7308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = v20;
  v8[32] = v21;
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[25] = a3;
  v8[26] = a4;
  v8[23] = a1;
  v8[24] = a2;
  v9 = *(*(sub_22BDB9C14() - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v10 = *(*(sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450) - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v12 = sub_22BDB57A4();
  v8[36] = v12;
  v13 = *(v12 - 8);
  v8[37] = v13;
  v14 = *(v13 + 64) + 15;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v15 = sub_22BDB77D4();
  v8[40] = v15;
  v16 = *(v15 - 8);
  v8[41] = v16;
  v17 = *(v16 + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA74FC, 0, 0);
}

uint64_t sub_22BDA74FC()
{
  v131 = v0;
  v3 = v0[44];
  sub_22BDB1DCC();

  v4 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v5 = sub_22BB72E44();
  v6 = v0[44];
  v7 = v0[40];
  v8 = v0[41];
  if (v5)
  {
    sub_22BB72168();
    v2 = sub_22BB6B650();
    v130[0] = v2;
    *v1 = 136315138;
    v9 = sub_22BB31528();
    *(v1 + 4) = sub_22BB32EE0(v9, v10, v11);
    sub_22BB36F24(&dword_22BB2C000, v12, v13, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v14 = v16;
  v17 = sub_22BB30AE4();
  v16(v17);
  v18 = v0[35];
  v19 = v0[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v126 = v0;
  v119 = v16;
  if (sub_22BB3759C() == 1)
  {
    v20 = sub_22BDB1E14();
    sub_22BB58728(v20, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v21 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BDB2004();
    if (os_log_type_enabled(v21, v15))
    {
      sub_22BB36C64();
      sub_22BB3869C();
      *v7 = 136315394;
      v22 = sub_22BB31F54();
      v25 = sub_22BB32EE0(v22, v23, v24);
      v26 = sub_22BB39448(v25);
      sub_22BB393AC(v26);
      if (v2)
      {
        v27 = v0[37];
        v130[0] = MEMORY[0x277D84F90];
        sub_22BB9287C();
        v28 = v130[0];
        sub_22BB31EA0();
        sub_22BDB1DB0();
        do
        {
          v19 = v126[38];
          v29 = v126[36];
          v30 = sub_22BB3A81C();
          v31(v30);
          sub_22BDB5794();
          v32 = sub_22BB325C0();
          v33(v32);
          v130[0] = v28;
          sub_22BB392EC();
          if (v35)
          {
            sub_22BB2F158(v34);
            v19 = v130;
            sub_22BB3AB64();
            sub_22BD28158(v37, v38, v39);
            v28 = v130[0];
          }

          sub_22BB6BC54();
          sub_22BB51900();
        }

        while (!v36);

        v0 = v126;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB37950();
      sub_22BB36070();
      v76 = sub_22BB2F324();
      sub_22BB32EE0(v76, v77, v78);
      sub_22BB371E4();

      v18 = v117;
      *(v117 + 14) = v19;
      sub_22BBBD2C4(&dword_22BB2C000, v21, v15, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB34F98();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v64 = sub_22BB3A368();
      v14 = v119;
    }

    else
    {
      v62 = v0[43];
      v63 = v0[41];
      v18 = v126[40];

      v0 = v126;
      v64 = sub_22BB2F324();
    }

    v14(v64);
    v79 = v0[25];
    v80 = v126[24];
    sub_22BDB017C();
    v81 = sub_22BB31A08();
    sub_22BB9231C(v81, v82);
    v72 = v126;
    sub_22BB38500(v83, v84);

    goto LABEL_19;
  }

  v40 = sub_22BB36B08();
  v41(v40);
  v42 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v42);

  if (!v0[15])
  {
    v65 = v0[39];
    v66 = v0[37];
    v67 = v126[36];
    sub_22BB58728((v126 + 12), &qword_27D8E6E08, &qword_22BDD0FE8);
    sub_22BDB017C();
    v68 = sub_22BB31A08();
    sub_22BB34468(v68, v69);
    v70 = sub_22BB38F80();
    v71(v70);
    v72 = v126;
LABEL_19:
    v89 = v72[42];
    sub_22BB3CF68();

    v90 = v18;
    v91 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v92 = sub_22BB71F98();
    v93 = v72[41];
    v94 = v72[42];
    v95 = v72[40];
    if (v92)
    {
      v127 = v72[42];
      sub_22BB693A0();
      sub_22BB2F308();
      v96 = sub_22BB3AA0C();
      v130[0] = v96;
      *v14 = 136315394;
      v98 = sub_22BB957A4(v96, v97, v130);
      sub_22BB328F8(v98);
      v99 = v94;
      v100 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v100);
      sub_22BB367C8();
      _os_log_impl(v101, v102, v103, v104, v105, 0x16u);
      sub_22BB58728(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (v119)(v127, v95);
    }

    else
    {

      (v14)(v94, v95);
    }

    sub_22BB3E068();
    v128 = v72[33];
    swift_willThrow();

    sub_22BB31368();
    goto LABEL_23;
  }

  v43 = (v0 + 2);
  v44 = v0[34];
  sub_22BDB1FC4();
  sub_22BDA1FD4();
  v45 = v0[5];
  v121 = v0[6];
  v46 = sub_22BB3ACBC();
  sub_22BB69FEC(v46, v47);
  v49 = v0[10];
  v48 = v0[11];
  v50 = sub_22BB97780();
  sub_22BB69FEC(v50, v49);
  sub_22BB30418();
  v52 = *(v51 + 64);
  sub_22BB30ACC();
  sub_22BB8B75C();
  v53();
  sub_22BB30418();
  v54 = v0;
  v56 = *(v55 + 64);
  sub_22BB30ACC();
  sub_22BB8AD34();
  v57();
  sub_22BDB4254();
  v58 = sub_22BB34170();
  sub_22BB336D0(v58, v59, v60, v61);
  sub_22BDBA2E4();
  sub_22BDBA2D4();
  v73 = v0[33];
  v74 = v54[34];
  sub_22BDB8AF4();
  sub_22BDB9394();
  v75 = sub_22BDB9384();
  sub_22BB69778(v75, MEMORY[0x277D1E488]);
  sub_22BB3CB50();
  v122 = v54[31];
  v124 = v54[32];
  v85 = v54[29];
  v86 = v54[30];
  v87 = v54[27];
  v88 = v54[28];

  v107 = sub_22BDB8A64();
  v115 = v54[44];
  v116 = v54[43];
  v108 = v54[39];
  v118 = v54[42];
  v120 = v54[38];
  v109 = v54[37];
  v114 = v54[36];
  v123 = v54[35];
  v125 = v54[34];
  v129 = v54[33];
  v110 = v54[23];
  v111 = swift_task_alloc();
  *(v111 + 16) = v43;
  v112 = sub_22BCA9168(sub_22BDB1D4C, v111, v107);

  (*(v109 + 8))(v108, v114);
  *v110 = v112;
  sub_22BD5F4C0(v43);

  sub_22BB360FC();
LABEL_23:

  return v113();
}

void sub_22BDA7F4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22BDB56D4();
    v5 = sub_22BDBAD54();
  }

  if (a2)
  {
    v6 = sub_22BDB4234();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDA7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB30F94();
  v24 = v23;
  v26 = v25;
  v44 = v27;
  v45 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  v39 = *(v38 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BB3A4F8();
  sub_22BB369A8(v41);
  sub_22BB322B0();
  v42 = swift_allocObject();
  *(v42 + 16) = a21;
  *(v42 + 24) = a22;
  v43 = swift_allocObject();
  v43[2] = v36;
  v43[3] = v34;
  v43[4] = v24;
  v43[5] = v32;
  v43[6] = v30;
  v43[7] = v44;
  v43[8] = v45;
  v43[9] = v26;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v22, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDA8164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a8;
  v8[31] = v20;
  v8[28] = a6;
  v8[29] = a7;
  v8[26] = a4;
  v8[27] = a5;
  v8[24] = a2;
  v8[25] = a3;
  v8[23] = a1;
  v9 = *(*(sub_22BDB9C14() - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v10 = *(*(sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v12 = sub_22BDB57A4();
  v8[35] = v12;
  v13 = *(v12 - 8);
  v8[36] = v13;
  v14 = *(v13 + 64) + 15;
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v15 = sub_22BDB77D4();
  v8[39] = v15;
  v16 = *(v15 - 8);
  v8[40] = v16;
  v17 = *(v16 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA8358, 0, 0);
}

uint64_t sub_22BDA8358()
{
  v143 = v0;
  v3 = v0[43];
  sub_22BDB1DCC();

  v4 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v5 = sub_22BB72E44();
  v6 = v0[43];
  v7 = v0[39];
  v8 = v0[40];
  if (v5)
  {
    sub_22BB72168();
    v2 = sub_22BB6B650();
    v142[0] = v2;
    *v1 = 136315138;
    v9 = sub_22BB31528();
    *(v1 + 4) = sub_22BB32EE0(v9, v10, v11);
    sub_22BB36F24(&dword_22BB2C000, v12, v13, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v14 = v16;
  v17 = sub_22BB30AE4();
  v16(v17);
  v18 = v0[34];
  v19 = v0[35];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v138 = v0;
  v132 = v16;
  if (sub_22BB3759C() == 1)
  {
    v20 = v0[42];
    v21 = v0[25];
    sub_22BB58728(v0[34], &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v22 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BDB2004();
    if (os_log_type_enabled(v22, v15))
    {
      sub_22BB36C64();
      sub_22BB3869C();
      *v7 = 136315394;
      v23 = sub_22BB31F54();
      v26 = sub_22BB32EE0(v23, v24, v25);
      v27 = sub_22BB39448(v26);
      sub_22BB393AC(v27);
      if (v2)
      {
        v28 = v0[36];
        v142[0] = MEMORY[0x277D84F90];
        sub_22BB9287C();
        v29 = v142[0];
        sub_22BB31EA0();
        sub_22BDB1DB0();
        do
        {
          v20 = v138[37];
          v30 = v138[35];
          v31 = sub_22BB3A81C();
          v32(v31);
          sub_22BDB5794();
          v33 = sub_22BB325C0();
          v34(v33);
          v142[0] = v29;
          sub_22BB392EC();
          if (v36)
          {
            sub_22BB2F158(v35);
            v20 = v142;
            sub_22BB3AB64();
            sub_22BD28158(v38, v39, v40);
            v29 = v142[0];
          }

          sub_22BB6BC54();
          sub_22BB51900();
        }

        while (!v37);

        v0 = v138;
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v80 = v0[42];
      v2 = v0[39];
      v81 = v0[40];
      v0[22] = v29;
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB37950();
      sub_22BB36070();
      v82 = sub_22BB2F324();
      sub_22BB32EE0(v82, v83, v84);
      sub_22BB371E4();

      v18 = v130;
      *(v130 + 14) = v20;
      sub_22BBBD2C4(&dword_22BB2C000, v22, v15, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB34F98();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v68 = sub_22BB3A368();
      v14 = v132;
    }

    else
    {
      v66 = v0[42];
      v67 = v0[40];
      v18 = v138[39];

      v0 = v138;
      v68 = sub_22BB2F324();
    }

    v14(v68);
    v85 = v0[25];
    v86 = v138[24];
    sub_22BDB017C();
    v87 = sub_22BB31A08();
    sub_22BB9231C(v87, v88);
    v76 = v138;
    sub_22BB38500(v89, v90);

    goto LABEL_19;
  }

  v41 = v0[38];
  v42 = v0[35];
  v43 = v0[34];
  v44 = sub_22BB3463C(v0[36]);
  v45(v44);
  v46 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v46);

  if (!v0[15])
  {
    v69 = v0[38];
    v70 = v0[36];
    v71 = v138[35];
    sub_22BB58728((v138 + 12), &qword_27D8E6E08, &qword_22BDD0FE8);
    sub_22BDB017C();
    v72 = sub_22BB31A08();
    sub_22BB34468(v72, v73);
    v74 = sub_22BB38F80();
    v75(v74);
    v76 = v138;
LABEL_19:
    v95 = v76[41];
    sub_22BB3CF68();

    v96 = v18;
    v97 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v98 = sub_22BB71F98();
    v99 = v76[40];
    v100 = v76[41];
    v101 = v76[39];
    if (v98)
    {
      v139 = v76[41];
      sub_22BB693A0();
      sub_22BB2F308();
      v102 = sub_22BB3AA0C();
      v142[0] = v102;
      *v14 = 136315394;
      v104 = sub_22BB957A4(v102, v103, v142);
      sub_22BB328F8(v104);
      v105 = v100;
      v106 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v106);
      sub_22BB367C8();
      _os_log_impl(v107, v108, v109, v110, v111, 0x16u);
      sub_22BB58728(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (v132)(v139, v101);
    }

    else
    {

      (v14)(v100, v101);
    }

    v113 = v76[42];
    v112 = v76[43];
    v114 = v76[41];
    v116 = v76[37];
    v115 = v76[38];
    v118 = v76[33];
    v117 = v76[34];
    v140 = v76[32];
    swift_willThrow();

    sub_22BB31368();
    goto LABEL_23;
  }

  v47 = (v0 + 2);
  v48 = v0[33];
  sub_22BDB1FC4();
  sub_22BDA1FD4();
  v49 = v0[5];
  v134 = v0[6];
  v50 = sub_22BB3ACBC();
  sub_22BB69FEC(v50, v51);
  v53 = v0[10];
  v52 = v0[11];
  v54 = sub_22BB97780();
  sub_22BB69FEC(v54, v53);
  sub_22BB30418();
  v56 = *(v55 + 64);
  sub_22BB30ACC();
  sub_22BB8B75C();
  v57();
  sub_22BB30418();
  v58 = v0;
  v60 = *(v59 + 64);
  sub_22BB30ACC();
  sub_22BB8AD34();
  v61();
  sub_22BDB4254();
  v62 = sub_22BB34170();
  sub_22BB336D0(v62, v63, v64, v65);
  sub_22BDBA2E4();
  sub_22BDBA2D4();
  v77 = v0[32];
  v78 = v58[33];
  sub_22BDB8AF4();
  sub_22BDB9394();
  v79 = sub_22BDB9384();
  sub_22BB69778(v79, MEMORY[0x277D1E488]);
  sub_22BB3CB50();
  v136 = v58[31];
  v92 = v58[29];
  v91 = v58[30];
  v94 = v58[27];
  v93 = v58[28];

  v120 = sub_22BDB8A54();
  v128 = v58[43];
  v129 = v58[42];
  v121 = v58[38];
  v131 = v58[41];
  v133 = v58[37];
  v122 = v58[36];
  v127 = v58[35];
  v135 = v58[34];
  v137 = v58[33];
  v141 = v58[32];
  v123 = v58[23];
  v124 = swift_task_alloc();
  *(v124 + 16) = v47;
  v125 = sub_22BCA9168(sub_22BDB088C, v124, v120);

  (*(v122 + 8))(v121, v127);
  *v123 = v125;
  sub_22BD5F4C0(v47);

  sub_22BB360FC();
LABEL_23:

  return v126();
}

uint64_t sub_22BDA8C5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v103 = a3;
  v99 = a2;
  v4 = sub_22BDB77D4();
  v5 = sub_22BB30444(v4);
  v91 = v6;
  v92 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v90 = v9;
  sub_22BB2F120();
  v10 = sub_22BDBA994();
  v11 = sub_22BB30444(v10);
  v97 = v12;
  v98 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v96 = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E6E40, &qword_22BDD1098);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v95 = &v87 - v20;
  sub_22BB2F120();
  v100 = sub_22BDB93D4();
  v21 = sub_22BB30444(v100);
  v89 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  v88 = v25;
  sub_22BB2F120();
  v26 = sub_22BDBA014();
  v101 = sub_22BB30444(v26);
  v102 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22BB30574();
  v32 = v31 - v30;
  v33 = sub_22BBE6DE0(&qword_27D8E6E48, &qword_22BDD10A0);
  sub_22BB2F0C8(v33);
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  v38 = &v87 - v37;
  v39 = sub_22BDB9424();
  v40 = sub_22BB30444(v39);
  v94 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB305A8();
  v93 = v44;
  v45 = sub_22BBE6DE0(&qword_27D8E6E50, &qword_22BDD10A8);
  sub_22BB2F0C8(v45);
  v47 = *(v46 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v48);
  v50 = &v87 - v49;
  v51 = sub_22BDB8044();
  v52 = sub_22BB30444(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB30574();
  v59 = v58 - v57;
  sub_22BB69088(a1, v104);
  sub_22BBE6DE0(&qword_27D8E6E58, &qword_22BDD10B0);
  if (swift_dynamicCast())
  {
    sub_22BB336D0(v50, 0, 1, v51);
    (*(v54 + 32))(v59, v50, v51);
    sub_22BDB8034();
    sub_22BDB1F78();
    sub_22BDB8024();
    sub_22BDB9FE4();
    (*(v102 + 8))(v32, v101);
    v60 = objc_allocWithZone(sub_22BDB56D4());
    sub_22BB6FEF4();
    sub_22BB31F54();
    v61 = sub_22BDB56C4();
    result = (*(v54 + 8))(v59, v51);
  }

  else
  {
    v63 = v102;
    sub_22BB30B28();
    sub_22BB336D0(v64, v65, v66, v51);
    sub_22BB58728(v50, &qword_27D8E6E50, &qword_22BDD10A8);
    sub_22BB69088(a1, v104);
    if (swift_dynamicCast())
    {
      sub_22BB336D0(v38, 0, 1, v39);
      v68 = v93;
      v67 = v94;
      (*(v94 + 32))(v93, v38, v39);
      sub_22BDB9414();
      v69 = v99[4];
      sub_22BB69FEC(v99, v99[3]);
      v70 = v96;
      sub_22BDB9404();
      sub_22BDB8834();
      (*(v97 + 8))(v70, v98);
      v71 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      v61 = sub_22BDB56C4();
      result = (*(v67 + 8))(v68, v39);
    }

    else
    {
      v72 = sub_22BB34170();
      sub_22BB336D0(v72, v73, v74, v39);
      sub_22BB58728(v38, &qword_27D8E6E48, &qword_22BDD10A0);
      sub_22BB69088(a1, v104);
      v75 = v95;
      v76 = v100;
      if (swift_dynamicCast())
      {
        sub_22BB336D0(v75, 0, 1, v76);
        v77 = v89;
        v78 = v88;
        (*(v89 + 32))(v88, v75, v76);
        sub_22BDB93C4();
        sub_22BDB1F78();
        sub_22BDB8024();
        sub_22BDB9FE4();
        (*(v63 + 8))(v32, v101);
        v79 = objc_allocWithZone(sub_22BDB56D4());
        sub_22BB6FEF4();
        sub_22BB31F54();
        v61 = sub_22BDB56C4();
        result = (*(v77 + 8))(v78, v76);
      }

      else
      {
        sub_22BB30B28();
        sub_22BB336D0(v80, v81, v82, v76);
        sub_22BB58728(v75, &qword_27D8E6E40, &qword_22BDD1098);
        v83 = v90;
        sub_22BDB6374();
        v84 = sub_22BDB77C4();
        v85 = sub_22BDBB114();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_22BB2C000, v84, v85, "Incorrect ToolBoxResult", v86, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        result = (*(v91 + 8))(v83, v92);
        v61 = 0;
      }
    }
  }

  *v103 = v61;
  return result;
}

uint64_t sub_22BDA94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = sub_22BDBA014();
  v6[29] = v7;
  v8 = *(v7 - 8);
  v6[30] = v8;
  v9 = *(v8 + 64) + 15;
  v6[31] = swift_task_alloc();
  v10 = sub_22BDB8044();
  v6[32] = v10;
  v11 = *(v10 - 8);
  v6[33] = v11;
  v12 = *(v11 + 64) + 15;
  v6[34] = swift_task_alloc();
  v13 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v14 = sub_22BDB57A4();
  v6[36] = v14;
  v15 = *(v14 - 8);
  v6[37] = v15;
  v16 = *(v15 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v17 = sub_22BDB77D4();
  v6[40] = v17;
  v18 = *(v17 - 8);
  v6[41] = v18;
  v19 = *(v18 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDA972C, 0, 0);
}

uint64_t sub_22BDA972C()
{
  sub_22BB348A0();
  v209 = v0;
  v5 = v0[44];
  sub_22BDB1DCC();

  v6 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v7 = sub_22BB72E44();
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  if (v7)
  {
    sub_22BB72168();
    v4 = sub_22BB6B650();
    v208 = v4;
    *v3 = 136315138;
    v11 = sub_22BB31528();
    *(v3 + 4) = sub_22BB32EE0(v11, v12, v13);
    sub_22BB36F24(&dword_22BB2C000, v14, v15, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v16 = *(v10 + 8);
  v17 = sub_22BB30AE4();
  v16(v17);
  v18 = v0[35];
  v19 = v0[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v20 = &loc_22BDBC000;
  v202 = v0;
  if (sub_22BB3759C() == 1)
  {
    v21 = sub_22BDB1E14();
    sub_22BB58728(v21, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v22 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB371E4();

    v23 = os_log_type_enabled(v22, v19);
    if (v23)
    {
      LODWORD(v187) = v19;
      v192 = v16;
      sub_22BB36C64();
      v183 = sub_22BB3E030();
      *v2 = 136315394;
      v31 = sub_22BB31F54();
      v34 = sub_22BB32EE0(v31, v32, v33);
      v35 = sub_22BDB1D78(v34);
      sub_22BB393AC(v35);
      if (v4)
      {
        v174 = v2;
        v179 = v22;
        v36 = v0[37];
        sub_22BDB1F98();
        sub_22BB9287C();
        v37 = v208;
        sub_22BB31EA0();
        sub_22BBCBFC0();
        do
        {
          v19 = v202[38];
          v38 = v202[36];
          v39 = sub_22BB3A81C();
          v40(v39);
          sub_22BDB5794();
          v41 = sub_22BB325C0();
          v42(v41);
          v208 = v37;
          sub_22BB392EC();
          if (v44)
          {
            sub_22BB2F158(v43);
            v19 = &v208;
            sub_22BB3AB64();
            sub_22BD28158(v46, v47, v48);
            v37 = v208;
          }

          sub_22BB37ECC();
        }

        while (!v45);

        v0 = v202;
        v20 = &loc_22BDBC000;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB37950();
      sub_22BB36070();
      v87 = sub_22BB2F324();
      sub_22BB32EE0(v87, v88, v89);
      sub_22BB371E4();

      *(v2 + 14) = v19;
      sub_22BB8DD0C(&dword_22BB2C000, v90, v187, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB385DC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v68 = sub_22BB3A368();
      v16 = v192;
    }

    else
    {
      sub_22BB75614(v23, v24, v25, v26, v27, v28, v29, v30, v169, v174, v179, v183, v187, v191, v195, v198, v0);
      v0 = v202;
      v68 = sub_22BB2F324();
    }

    v16(v68);
    v91 = v0[25];
    v0 = v202[24];
    sub_22BDB017C();
    v18 = sub_22BB31A08();
    sub_22BBB79FC(v18, v92);

    goto LABEL_21;
  }

  v49 = sub_22BB36B08();
  v50(v49);
  v51 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v51);

  if (!v0[15])
  {
    sub_22BB6F978(v52, v53, v54, v55, v56, v57, v58, v59, v169, v174, v179, v183, v187, v191, v195, v198, v0);
    sub_22BDB201C(v69, &qword_27D8E6E08, &qword_22BDD0FE8, v70, v71, v72, v73, v74, v170, v175, v180, v184, v188, v193, v196, v199, v203);
    sub_22BDB017C();
    v75 = sub_22BB31A08();
    sub_22BB34468(v75, v76);
    v77 = sub_22BB38F80();
    v78(v77);
    v0 = v204;
    goto LABEL_21;
  }

  sub_22BB330F0();
  v60 = sub_22BB35E84();
  static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(v60, v61, v62, v63, v64, v65);
  v18 = v9;
  if (v9)
  {
    v66 = sub_22BB58BFC();
    v67(v66);
    sub_22BD5F4C0((v0 + 2));
LABEL_21:
    v93 = v0[42];
    sub_22BB3CF68();

    v94 = v18;
    v95 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v96 = sub_22BB71F98();
    v98 = v0[41];
    v97 = v0[42];
    v99 = v18;
    v100 = v0[40];
    if (v96)
    {
      v200 = v0[42];
      v101 = v99;
      v102 = v0[24];
      v103 = v0[25];
      sub_22BB3B778();
      sub_22BB2F308();
      v208 = sub_22BB3AA0C();
      v111 = sub_22BDB1EA0(COERCE_FLOAT(v20[509]), v208, v104, v105, v106, v107, v108, v109, v110, v169, v174);
      sub_22BB328F8(v111);
      v112 = v101;
      v113 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v113);
      sub_22BB367C8();
      _os_log_impl(v114, v115, v116, v117, v118, 0x16u);
      sub_22BB58728(v4, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v127 = sub_22BB697B4(v119, v120, v121, v122, v123, v124, v125, v126, v171, v176, v179, v183, v187, v16, v98, v200);
      v128(v127);
    }

    else
    {

      v129 = sub_22BB30428();
      v16(v129);
    }

    sub_22BB3E068();
    v205 = v0[31];
    swift_willThrow();

    sub_22BB31368();
    goto LABEL_25;
  }

  sub_22BB396A0();
  v79 = sub_22BDB8A84();
  v132 = *(v79 + 16);
  if (v132)
  {
    sub_22BBC029C(v79, v80, v81, v82, v83, v84, v85, v86, v169, v174, v179, v183, v187, v191, v195, v198, v0);
    sub_22BDB1F98();
    sub_22BDBB414();
    v134 = *(v1 + 16);
    v133 = (v1 + 16);
    v135 = *(v133 + 64);
    sub_22BB2F390();
    sub_22BB3E528();
    do
    {
      v136 = sub_22BB3E32C();
      v137(v136);
      sub_22BDB8034();
      sub_22BDB1F78();
      sub_22BDB8024();
      v138 = sub_22BDB9FE4();
      v146 = sub_22BB3FC30(v138, v139, v140, v141, v142, v143, v144, v145, v172, v177, v181, v185, v189);
      v147(v146);
      v148 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      sub_22BB393C4();
      sub_22BDB56C4();
      v149 = *v133;
      v150 = sub_22BB35464();
      v151(v150);
      v152 = sub_22BDBB3F4();
      sub_22BDB1FE4(v152, v153, v154, v155, v156, v157, v158, v159, v173, v178, v182, v186, v190, v194, v197, v201, v206, v207, v208);
      sub_22BB31528();
      sub_22BDBB434();
      sub_22BDBB404();
      v9 += v194;
      --v132;
    }

    while (v132);
    v160 = sub_22BB58BFC();
    v161(v160);

    v162 = v208;
  }

  else
  {
    v163 = v0[39];
    v164 = v0[36];
    v165 = v0[37];

    v166 = *(v165 + 8);
    v167 = sub_22BB2F324();
    v168(v167);
    v162 = MEMORY[0x277D84F90];
  }

  sub_22BB6C73C();
  loc_22BDBC000 = v162;

  sub_22BB360FC();
LABEL_25:

  return v130();
}

void sub_22BDA9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB30F94();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v49[0] = a22;
  v49[1] = a23;
  v37 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v37);
  v39 = *(v38 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  v42 = v49 - v41;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v43, v44, v45, v46);
  sub_22BB322B0();
  v47 = swift_allocObject();
  *(v47 + 16) = v26;
  *(v47 + 24) = v24;
  v48 = swift_allocObject();
  v48[2] = v36;
  v48[3] = v34;
  v48[4] = v32;
  v48[5] = v30;
  v48[6] = v28;

  sub_22BBE6DE0(&qword_27D8E6E38, &qword_22BDD1070);
  sub_22BDBAFB4();

  sub_22BB58728(v42, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDAA0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = sub_22BDBA014();
  v6[29] = v7;
  v8 = *(v7 - 8);
  v6[30] = v8;
  v9 = *(v8 + 64) + 15;
  v6[31] = swift_task_alloc();
  v10 = sub_22BDB8044();
  v6[32] = v10;
  v11 = *(v10 - 8);
  v6[33] = v11;
  v12 = *(v11 + 64) + 15;
  v6[34] = swift_task_alloc();
  v13 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v14 = sub_22BDB57A4();
  v6[36] = v14;
  v15 = *(v14 - 8);
  v6[37] = v15;
  v16 = *(v15 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v17 = sub_22BDB77D4();
  v6[40] = v17;
  v18 = *(v17 - 8);
  v6[41] = v18;
  v19 = *(v18 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAA308, 0, 0);
}

uint64_t sub_22BDAA308()
{
  sub_22BB348A0();
  v209 = v0;
  v5 = v0[44];
  sub_22BDB1DCC();

  v6 = sub_22BDB77C4();
  sub_22BDBB0F4();
  sub_22BBCC16C();
  v7 = sub_22BB72E44();
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  if (v7)
  {
    sub_22BB72168();
    v4 = sub_22BB6B650();
    v208 = v4;
    *v3 = 136315138;
    v11 = sub_22BB31528();
    *(v3 + 4) = sub_22BB32EE0(v11, v12, v13);
    sub_22BB36F24(&dword_22BB2C000, v14, v15, "Querying%s's toolbox.");
    sub_22BB35808();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v16 = *(v10 + 8);
  v17 = sub_22BB30AE4();
  v16(v17);
  v18 = v0[35];
  v19 = v0[36];
  sub_22BB97740();
  sub_22BB37458();
  sub_22BDB5784();
  v20 = &loc_22BDBC000;
  v202 = v0;
  if (sub_22BB3759C() == 1)
  {
    v21 = sub_22BDB1E14();
    sub_22BB58728(v21, &qword_27D8E6438, &qword_22BDD0FE0);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v22 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB371E4();

    v23 = os_log_type_enabled(v22, v19);
    if (v23)
    {
      LODWORD(v187) = v19;
      v192 = v16;
      sub_22BB36C64();
      v183 = sub_22BB3E030();
      *v2 = 136315394;
      v31 = sub_22BB31F54();
      v34 = sub_22BB32EE0(v31, v32, v33);
      v35 = sub_22BDB1D78(v34);
      sub_22BB393AC(v35);
      if (v4)
      {
        v174 = v2;
        v179 = v22;
        v36 = v0[37];
        sub_22BDB1F98();
        sub_22BB9287C();
        v37 = v208;
        sub_22BB31EA0();
        sub_22BBCBFC0();
        do
        {
          v19 = v202[38];
          v38 = v202[36];
          v39 = sub_22BB3A81C();
          v40(v39);
          sub_22BDB5794();
          v41 = sub_22BB325C0();
          v42(v41);
          v208 = v37;
          sub_22BB392EC();
          if (v44)
          {
            sub_22BB2F158(v43);
            v19 = &v208;
            sub_22BB3AB64();
            sub_22BD28158(v46, v47, v48);
            v37 = v208;
          }

          sub_22BB37ECC();
        }

        while (!v45);

        v0 = v202;
        v20 = &loc_22BDBC000;
      }

      else
      {
      }

      sub_22BB69588();
      sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
      sub_22BB8E600();
      sub_22BB37950();
      sub_22BB36070();
      v87 = sub_22BB2F324();
      sub_22BB32EE0(v87, v88, v89);
      sub_22BB371E4();

      *(v2 + 14) = v19;
      sub_22BB8DD0C(&dword_22BB2C000, v90, v187, "Invalid planner type (%s while querying toolbox. Possible values: [%s]");
      sub_22BB385DC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v68 = sub_22BB3A368();
      v16 = v192;
    }

    else
    {
      sub_22BB75614(v23, v24, v25, v26, v27, v28, v29, v30, v169, v174, v179, v183, v187, v191, v195, v198, v0);
      v0 = v202;
      v68 = sub_22BB2F324();
    }

    v16(v68);
    v91 = v0[25];
    v0 = v202[24];
    sub_22BDB017C();
    v18 = sub_22BB31A08();
    sub_22BBB79FC(v18, v92);

    goto LABEL_21;
  }

  v49 = sub_22BB36B08();
  v50(v49);
  v51 = static ToolboxManager.toolboxes()();
  sub_22BB69C3C(v51);

  if (!v0[15])
  {
    sub_22BB6F978(v52, v53, v54, v55, v56, v57, v58, v59, v169, v174, v179, v183, v187, v191, v195, v198, v0);
    sub_22BDB201C(v69, &qword_27D8E6E08, &qword_22BDD0FE8, v70, v71, v72, v73, v74, v170, v175, v180, v184, v188, v193, v196, v199, v203);
    sub_22BDB017C();
    v75 = sub_22BB31A08();
    sub_22BB34468(v75, v76);
    v77 = sub_22BB38F80();
    v78(v77);
    v0 = v204;
    goto LABEL_21;
  }

  sub_22BB330F0();
  v60 = sub_22BB35E84();
  static StandardToolboxConfiguration.makeQueryableToolboxWithNoClientActions<A, B>(delegate:planGenerationDelegate:)(v60, v61, v62, v63, v64, v65);
  v18 = v9;
  if (v9)
  {
    v66 = sub_22BB58BFC();
    v67(v66);
    sub_22BD5F4C0((v0 + 2));
LABEL_21:
    v93 = v0[42];
    sub_22BB3CF68();

    v94 = v18;
    v95 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB899B4();

    v96 = sub_22BB71F98();
    v98 = v0[41];
    v97 = v0[42];
    v99 = v18;
    v100 = v0[40];
    if (v96)
    {
      v200 = v0[42];
      v101 = v99;
      v102 = v0[24];
      v103 = v0[25];
      sub_22BB3B778();
      sub_22BB2F308();
      v208 = sub_22BB3AA0C();
      v111 = sub_22BDB1EA0(COERCE_FLOAT(v20[509]), v208, v104, v105, v106, v107, v108, v109, v110, v169, v174);
      sub_22BB328F8(v111);
      v112 = v101;
      v113 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v113);
      sub_22BB367C8();
      _os_log_impl(v114, v115, v116, v117, v118, 0x16u);
      sub_22BB58728(v4, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v127 = sub_22BB697B4(v119, v120, v121, v122, v123, v124, v125, v126, v171, v176, v179, v183, v187, v16, v98, v200);
      v128(v127);
    }

    else
    {

      v129 = sub_22BB30428();
      v16(v129);
    }

    sub_22BB3E068();
    v205 = v0[31];
    swift_willThrow();

    sub_22BB31368();
    goto LABEL_25;
  }

  sub_22BB396A0();
  v79 = sub_22BDB8A74();
  v132 = *(v79 + 16);
  if (v132)
  {
    sub_22BBC029C(v79, v80, v81, v82, v83, v84, v85, v86, v169, v174, v179, v183, v187, v191, v195, v198, v0);
    sub_22BDB1F98();
    sub_22BDBB414();
    v134 = *(v1 + 16);
    v133 = (v1 + 16);
    v135 = *(v133 + 64);
    sub_22BB2F390();
    sub_22BB3E528();
    do
    {
      v136 = sub_22BB3E32C();
      v137(v136);
      sub_22BDB8034();
      sub_22BDB1F78();
      sub_22BDB8024();
      v138 = sub_22BDB9FE4();
      v146 = sub_22BB3FC30(v138, v139, v140, v141, v142, v143, v144, v145, v172, v177, v181, v185, v189);
      v147(v146);
      v148 = objc_allocWithZone(sub_22BDB56D4());
      sub_22BB6FEF4();
      sub_22BB393C4();
      sub_22BDB56C4();
      v149 = *v133;
      v150 = sub_22BB35464();
      v151(v150);
      v152 = sub_22BDBB3F4();
      sub_22BDB1FE4(v152, v153, v154, v155, v156, v157, v158, v159, v173, v178, v182, v186, v190, v194, v197, v201, v206, v207, v208);
      sub_22BB31528();
      sub_22BDBB434();
      sub_22BDBB404();
      v9 += v194;
      --v132;
    }

    while (v132);
    v160 = sub_22BB58BFC();
    v161(v160);

    v162 = v208;
  }

  else
  {
    v163 = v0[39];
    v164 = v0[36];
    v165 = v0[37];

    v166 = *(v165 + 8);
    v167 = sub_22BB2F324();
    v168(v167);
    v162 = MEMORY[0x277D84F90];
  }

  sub_22BB6C73C();
  loc_22BDBC000 = v162;

  sub_22BB360FC();
LABEL_25:

  return v130();
}

void sub_22BDAAB44()
{
  sub_22BB3B094();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BB31F54();
  v10 = sub_22BBE6DE0(v8, v9);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BB3A4F8();
  sub_22BB369A8(v14);
  sub_22BB322B0();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v1;
  sub_22BB322B0();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;

  sub_22BBE6DE0(&qword_27D8E6E30, &unk_22BDD1050);
  sub_22BDB1DF4();
  sub_22BDBAFB4();

  v17 = sub_22BB3182C();
  sub_22BB58728(v17, v18, &qword_22BDBD020);
  sub_22BB36A24();
}

uint64_t sub_22BDAAC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = *(*(sub_22BDB9C14() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = *(*(sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = sub_22BDB57A4();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAAE50, 0, 0);
}

uint64_t sub_22BDAB640()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  *(v8 + 328) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BDAB740()
{
  v42 = v0;
  v2 = v0[41];
  v3 = v0[39];
  v4 = sub_22BDB8504();
  v5 = v0[39];
  if (v2)
  {
    (*(v0[30] + 8))(v0[32], v0[29]);

    sub_22BD5F4C0((v0 + 2));
    v6 = v0[35];
    sub_22BDB1DCC();

    v7 = v2;
    v8 = sub_22BDB77C4();
    sub_22BDBB114();

    v9 = sub_22BB71F98();
    v10 = v0[38];
    v11 = v0[34];
    v12 = v0[35];
    v13 = v0[33];
    if (v9)
    {
      v39 = v0[38];
      sub_22BB693A0();
      sub_22BB2F308();
      v14 = sub_22BB3AA0C();
      v41 = v14;
      *v12 = 136315394;
      v16 = sub_22BB957A4(v14, v15, &v41);
      sub_22BB328F8(v16);
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BB33854(v18);
      sub_22BB367C8();
      _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
      sub_22BB58728(v1, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB30DDC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v39(v12, v13);
    }

    else
    {

      v33 = sub_22BB94F44();
      (v10)(v33);
    }

    sub_22BB3B85C();
    swift_willThrow();

    sub_22BB31368();
  }

  else
  {
    v24 = v4;
    v26 = v0[36];
    v25 = v0[37];
    v27 = v0[32];
    v35 = v0[35];
    v36 = v0[31];
    v28 = v0[29];
    v29 = v0[30];
    v37 = v0[28];
    v38 = v0[27];
    v40 = v0[26];
    v30 = v0[23];
    sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22BDBCBD0;
    *(v31 + 32) = v24;

    (*(v29 + 8))(v27, v28);
    sub_22BD5F4C0((v0 + 2));
    *v30 = v31;

    sub_22BB360FC();
  }

  return v32();
}

uint64_t sub_22BDABA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22BB974BC();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[39];
  v29 = v24[32];
  v30 = v24[29];
  v31 = v24[30];

  v32 = *(v31 + 8);
  v33 = sub_22BB2F324();
  v34(v33);
  sub_22BD5F4C0((v24 + 2));
  v35 = v24[41];
  v36 = v24[35];
  sub_22BB3CF68();

  v37 = v35;
  v38 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB899B4();

  v39 = sub_22BB71F98();
  v40 = v24[38];
  v41 = v24[34];
  v42 = v24[35];
  v43 = v24[33];
  if (v39)
  {
    v65 = v24[38];
    sub_22BB693A0();
    a10 = v42;
    sub_22BB2F308();
    sub_22BB3AA0C();
    sub_22BDB1E24();
    *v42 = 136315394;
    v46 = sub_22BB957A4(v44, v45, &a12);
    sub_22BB328F8(v46);
    v47 = v40;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB33854(v48);
    sub_22BB367C8();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    sub_22BB58728(v25, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB30DDC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v65(v42, a9);
  }

  else
  {

    v54 = sub_22BB94F44();
    (v40)(v54);
  }

  sub_22BB3B85C();
  v66 = v55;
  swift_willThrow();

  sub_22BB31368();
  sub_22BB32660();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, v66, a12, a13, a14, a15, a16);
}

void sub_22BDABCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22BDBAD54();
    if (a2)
    {
LABEL_3:
      v6 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDABD88()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BB3A4F8();
  sub_22BB369A8(v21);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;
  sub_22BDB1E34();
  v23 = swift_allocObject();
  v23[2] = v16;
  v23[3] = v14;
  v23[4] = v12;
  v23[5] = v10;
  v23[6] = v8;
  v23[7] = v6;
  sub_22BB33F68();

  sub_22BDBAFB4();

  sub_22BB58728(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDABEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E6E18, &qword_22BDD1008) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v9 = sub_22BDB8074();
  v7[32] = v9;
  v10 = *(v9 - 8);
  v7[33] = v10;
  v11 = *(v10 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v13 = sub_22BDB57A4();
  v7[37] = v13;
  v14 = *(v13 - 8);
  v7[38] = v14;
  v15 = *(v14 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v16 = sub_22BDB77D4();
  v7[41] = v16;
  v17 = *(v16 - 8);
  v7[42] = v17;
  v18 = *(v17 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAC108, 0, 0);
}

void sub_22BDACA50()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22BB31F54();
  v14 = sub_22BBE6DE0(v12, v13);
  sub_22BB2F0C8(v14);
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BB3A4F8();
  sub_22BB369A8(v18);
  sub_22BB322B0();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v1;
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v9;
  v20[4] = v7;
  v20[5] = v5;

  sub_22BDBAFB4();

  v21 = sub_22BB3182C();
  sub_22BB58728(v21, v22, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDACB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_22BDBA014();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = sub_22BDBA994();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v11 = *(v10 + 64) + 15;
  v5[33] = swift_task_alloc();
  v12 = sub_22BDB9224();
  v5[34] = v12;
  v13 = *(v12 - 8);
  v5[35] = v13;
  v14 = *(v13 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v15 = sub_22BDB47C4();
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();
  v18 = *(*(sub_22BBE6DE0(&qword_27D8E6E28, &qword_22BDD1028) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v19 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v20 = sub_22BDB57A4();
  v5[44] = v20;
  v21 = *(v20 - 8);
  v5[45] = v21;
  v22 = *(v21 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v23 = sub_22BDB77D4();
  v5[48] = v23;
  v24 = *(v23 - 8);
  v5[49] = v24;
  v25 = *(v24 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDACED8, 0, 0);
}

void sub_22BDADB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22BDBABE4();
    if (a3)
    {
LABEL_3:
      v7 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_22BDADBE4()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BB3A4F8();
  sub_22BB369A8(v21);
  sub_22BB322B0();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;
  sub_22BDB1E34();
  v23 = swift_allocObject();
  v23[2] = v16;
  v23[3] = v14;
  v23[4] = v12;
  v23[5] = v10;
  v23[6] = v8;
  v23[7] = v6;

  sub_22BBE6DE0(&qword_27D8E6E10, &qword_22BDD1000);
  sub_22BDBAFB4();

  sub_22BB58728(v0, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDADD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E6E18, &qword_22BDD1008) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v9 = sub_22BDB8074();
  v7[32] = v9;
  v10 = *(v9 - 8);
  v7[33] = v10;
  v11 = *(v10 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v13 = sub_22BDB57A4();
  v7[37] = v13;
  v14 = *(v13 - 8);
  v7[38] = v14;
  v15 = *(v14 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v16 = sub_22BDB77D4();
  v7[41] = v16;
  v17 = *(v16 - 8);
  v7[42] = v17;
  v18 = *(v17 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDADF6C, 0, 0);
}

uint64_t sub_22BDAE8A4(void *a1, int a2, int a3, int a4, uint64_t a5, void *aBlock, int a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_22BDBABF4();
  v14 = v13;
  v15 = sub_22BDBABF4();
  v17 = v16;
  if (a5)
  {
    v18 = sub_22BDBABF4();
    a5 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v21 = a1;
  a9(v12, v14, v15, v17, v18, a5, a8, v20);
}

void sub_22BDAE9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22BDBB084();
    if (a2)
    {
LABEL_3:
      v6 = sub_22BDB4234();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22BDAEA64()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BB31F54();
  v12 = sub_22BBE6DE0(v10, v11);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BB3A4F8();
  sub_22BB369A8(v16);
  sub_22BB322B0();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v7;
  *(v18 + 32) = v5;
  sub_22BDB56B4();

  sub_22BDBAFB4();

  v19 = sub_22BB3182C();
  sub_22BB58728(v19, v20, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDAEB9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 376) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = sub_22BDB8894();
  *(v4 + 208) = v5;
  v6 = *(v5 - 8);
  *(v4 + 216) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v8 = *(*(sub_22BDB9C14() - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v9 = *(*(sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450) - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  v10 = *(*(sub_22BBE6DE0(&qword_27D8E6438, &qword_22BDD0FE0) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v11 = sub_22BDB57A4();
  *(v4 + 256) = v11;
  v12 = *(v11 - 8);
  *(v4 + 264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v14 = sub_22BDB77D4();
  *(v4 + 288) = v14;
  v15 = *(v14 - 8);
  *(v4 + 296) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDAEDDC, 0, 0);
}

uint64_t sub_22BDAF5D8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 344);
  *v3 = *v1;
  v2[44] = v6;
  v2[45] = v7;
  v2[46] = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BDAF6E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t), uint64_t a14, uint64_t a15, Class a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v33 = v32[44];
  v34 = *(v33 + 16);
  if (!v34)
  {
    v77 = MEMORY[0x277D84F90];
LABEL_10:
    v57 = v32[45];

    goto LABEL_11;
  }

  v35 = v32[27];
  a21 = MEMORY[0x277D84F90];
  sub_22BDBB414();
  v36 = *(v35 + 16);
  v35 += 16;
  v37 = *(v35 + 64);
  sub_22BB2F390();
  a10 = v33;
  v39 = v33 + v38;
  a14 = v35;
  v78 = v33 + v38;
  a19 = v32;
  v85 = (v35 - 8);
  a12 = *(v35 + 56);
  a13 = v40;
  do
  {
    v41 = v32[28];
    v83 = v32[26];
    v42 = sub_22BB3ACBC();
    a13(v42);
    sub_22BDB8874();
    sub_22BDB8884();
    sub_22BDB8844();
    sub_22BDB8864();
    sub_22BDB8854();
    v43 = sub_22BDB59F4();
    v44 = objc_allocWithZone(v43);
    sub_22BDB59E4();
    v45 = *v85;
    (*v85)(v41, v83);
    sub_22BDBB3F4();
    v46 = *(a21 + 16);
    sub_22BDBB424();
    v32 = a19;
    sub_22BDBB434();
    sub_22BDBB404();
    v39 += a12;
    --v34;
  }

  while (v34);
  v77 = a21;
  v47 = *(a10 + 16);
  if (!v47)
  {
    v56 = a19[44];
    goto LABEL_10;
  }

  a21 = MEMORY[0x277D84F90];
  sub_22BDBB414();
  v48 = v78;
  do
  {
    v79 = v48;
    v49 = v32[28];
    v50 = a19[26];
    (a13)(v49, v48, v50);
    sub_22BDB8874();
    sub_22BDB8884();
    sub_22BDB8844();
    sub_22BDB8864();
    sub_22BDB8854();
    v51 = objc_allocWithZone(v43);
    sub_22BDB59E4();
    v52 = v49;
    v32 = a19;
    v45(v52, v50);
    sub_22BDBB3F4();
    v53 = *(a21 + 16);
    sub_22BDBB424();
    sub_22BB30AE4();
    sub_22BDBB434();
    sub_22BDBB404();
    v48 = v79 + a12;
    --v47;
  }

  while (v47);
  v54 = a19[44];
  v55 = a19[45];

LABEL_11:
  v58 = v32[42];
  v60 = v32[39];
  v59 = v32[40];
  v61 = v32[38];
  v62 = v32[35];
  v63 = v32[32];
  v64 = v32[33];
  v80 = v32[34];
  v81 = v32[31];
  v82 = v32[30];
  v84 = v32[29];
  v86 = v32[28];
  v65 = v32[23];
  v66 = objc_allocWithZone(sub_22BDB56B4());
  v67 = sub_22BDB56A4();

  (*(v64 + 8))(v62, v63);
  sub_22BD5F4C0((v32 + 2));
  *v65 = v67;

  sub_22BB360FC();
  sub_22BB374A0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v77, a12, a13, a14, v80, v81, v82, v84, a19, v86, a21, a22, a23, a24);
}

uint64_t sub_22BDAFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22BB974BC();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[42];
  v29 = v24[35];
  v30 = v24[32];
  v31 = v24[33];

  v32 = *(v31 + 8);
  v33 = sub_22BB2F324();
  v34(v33);
  sub_22BD5F4C0((v24 + 2));
  v35 = v24[46];
  v36 = v24[38];
  sub_22BB3CF68();

  v37 = v35;
  v38 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB899B4();

  v39 = sub_22BB71F98();
  v40 = v24[41];
  v41 = v24[37];
  v42 = v24[38];
  v43 = v24[36];
  if (v39)
  {
    v67 = v24[41];
    sub_22BB693A0();
    sub_22BB2F308();
    sub_22BB3AA0C();
    sub_22BDB1E24();
    *v42 = 136315394;
    v46 = sub_22BB957A4(v44, v45, &a12);
    sub_22BB328F8(v46);
    v47 = v40;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB33854(v48);
    sub_22BB367C8();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    sub_22BB58728(v25, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB30DDC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v67(v42, a9);
  }

  else
  {

    v54 = sub_22BB94F44();
    (v40)(v54);
  }

  sub_22BB7402C();
  v66 = v56;
  v68 = v55;
  swift_willThrow();

  sub_22BB31368();
  sub_22BB32660();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, v68, a12, a13, a14, a15, a16);
}

void sub_22BDAFD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_22BDB4234();
  }

  v4 = *(a3 + 16);
  v5 = sub_22BB31F54();
  v8 = v6;
  v7(v5);
}

id sub_22BDAFDDC@<X0>(void *a1@<X8>)
{
  result = sub_22BDA2DBC();
  *a1 = result;
  return result;
}

uint64_t sub_22BDAFEE0()
{
  swift_beginAccess();
  v0 = qword_28142F348;
  v1 = qword_28142F348;
  return v0;
}

void sub_22BDAFF2C(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F348;
  qword_28142F348 = a1;
}

uint64_t sub_22BDB001C(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F350 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDB00E0()
{
  sub_22BB2F35C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB33F54(v5);

  return sub_22BDAEB9C(v7, v8, v2, v3);
}

unint64_t sub_22BDB017C()
{
  result = qword_27D8E6E00;
  if (!qword_27D8E6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6E00);
  }

  return result;
}

uint64_t sub_22BDB01D8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22BDB0204()
{
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F54(v4);
  sub_22BB58914();

  return sub_22BDADD48(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22BDB02BC(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

uint64_t sub_22BDB02F0()
{
  sub_22BB30F5C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v8 = sub_22BB33F54(v6);

  return sub_22BDACB8C(v8, v9, v2, v4, v3);
}

uint64_t sub_22BDB0398()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3053C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BDB047C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_22BDB1E34();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22BDB04C0()
{
  sub_22BB3B158();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  sub_22BB33F54(v4);
  sub_22BB58914();

  return sub_22BDABEE4(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22BDB0578()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDAAC70(v4, v5, v0);
}

uint64_t sub_22BDB0610(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22BDB063C()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  sub_22BB33F54(v3);
  sub_22BB58914();

  return sub_22BDAA0D0(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_22BDB06DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BDB0724()
{
  sub_22BB30F5C();
  sub_22BB3B158();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  sub_22BB33F54(v3);
  sub_22BB58914();

  return sub_22BDA94F4(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_22BDB07C4()
{
  sub_22BB3B158();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BDB1D6C;
  sub_22BB58914();
  sub_22BB33430();

  return sub_22BDA8164(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22BDB08A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB16B4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22BDB0914(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22BDB0914(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BDB0AD0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22BDB0A08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BDB0A08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_22BDBB6D4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BDB0AD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22BDBB6D4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_22BDBB6D4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_22BDBB6D4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_22BD8F3C8();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22BD8F3C8();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22BDB1104((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_22BDB0FD8(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_22BDB0FD8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22BDB12A8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22BDB1104((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BDB1104(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22BD27424(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22BDBB6D4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_22BD27424(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22BDBB6D4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_22BDB12C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22BDB12EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6A98, &unk_22BDD02C8);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_22BDB13EC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BB35760();
  v9 = v8(v7);
  v44 = sub_22BB30444(v9);
  v45 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30560();
  v43 = v13;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v14);
  v42 = &v35 - v15;
  v17 = v2 + 64;
  v16 = *(v2 + 64);
  v41 = -1 << *(v2 + 32);
  if (-v41 < 64)
  {
    v18 = ~(-1 << -v41);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  if (!v6)
  {
    v22 = 0;
LABEL_22:
    v34 = ~v41;
    *v0 = v2;
    v0[1] = v17;
    v0[2] = v34;
    v0[3] = v22;
    v0[4] = v19;
    sub_22BB314EC();
    return;
  }

  v20 = v4;
  if (!v4)
  {
    v22 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v36 = v0;
    v37 = v2 + 64;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v41) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    v40 = v20;
    while (v21 < v20)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        v17 = v37;
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            v19 = 0;
            v0 = v36;
            goto LABEL_22;
          }

          v19 = *(v37 + 8 * v24);
          ++v22;
          if (v19)
          {
            v46 = v21 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v46 = v21 + 1;
      v24 = v22;
LABEL_17:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v2;
      v27 = *(v2 + 56);
      v29 = v44;
      v28 = v45;
      v30 = *(v45 + 72);
      (*(v45 + 16))(v43, v27 + v30 * (v25 | (v24 << 6)), v44);
      v31 = *(v28 + 32);
      v32 = v42;
      v33 = sub_22BB3A84C();
      v31(v33);
      (v31)(v6, v32, v29);
      v20 = v40;
      v21 = v46;
      if (v46 == v40)
      {
        v22 = v24;
        v0 = v36;
        v17 = v37;
        v2 = v26;
        goto LABEL_22;
      }

      v6 += v30;
      v22 = v24;
      v2 = v26;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22BDB16C8(uint64_t a1)
{
  sub_22BDB1F28(a1);
  result = sub_22BDBB2C4();
  v3 = *(v1 + 36);
  return result;
}

uint64_t sub_22BDB16FC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return sub_22BB31F54();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB1774(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB17C4()
{
  v1 = v0[3];
  v22 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = sub_22BB31BAC(v9);
  *v10 = v11;
  v10[1] = sub_22BDB1D6C;
  sub_22BB58914();
  sub_22BB33430();

  return sub_22BDA7308(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_22BDB18A4()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA6808(v4, v5, v0);
}

uint64_t sub_22BDB1934()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA5AD8(v4, v5, v0);
}

uint64_t sub_22BDB19C4()
{
  sub_22BB2F35C();
  sub_22BBC05CC();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v4 = sub_22BB33F54(v2);

  return sub_22BDA2FB8(v4, v5, v0);
}

uint64_t sub_22BDB1A54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BDB1A9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BB352C4(a1, a2);
  }

  return a1;
}

uint64_t sub_22BDB1AD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_22BDBB2E4();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BDB1B50(uint64_t a1)
{
  sub_22BDB1F28(a1);
  result = sub_22BDBB2C4();
  v3 = *(v1 + 36);
  return result;
}

uint64_t sub_22BDB1B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BDB1BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BDB1C50()
{
  v1 = sub_22BB35760();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BDB1CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BDB1D00(uint64_t a1)
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

uint64_t sub_22BDB1D1C(uint64_t result, unsigned int a2)
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

uint64_t sub_22BDB1D78(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_22BDB5774();
}

uint64_t sub_22BDB1DCC()
{
  v2 = *(v0 + 200);

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BDB1DE4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22BDB1E04()
{
  result = v0[59];
  v2 = v0[56];
  v3 = *(v0[57] + 8);
  return result;
}

uint64_t sub_22BDB1E14()
{
  v1 = v0[43];
  result = v0[35];
  v3 = v0[25];
  return result;
}

uint64_t sub_22BDB1E7C()
{

  return sub_22BDBABC4();
}

uint64_t sub_22BDB1EA0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v13 = a1;

  return sub_22BB32EE0(v11, v12, va);
}

uint64_t sub_22BDB1EC4(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_22BDB1EE8()
{

  return swift_arrayDestroy();
}

void sub_22BDB1F04()
{

  JUMPOUT(0x2318A4C40);
}

void sub_22BDB1F3C()
{
  v2 = v1[40];
  v3 = v1[37];
  v4 = v1[38];
  v6 = v1[27];
  v5 = v1[28];
  v1[23] = v0;
}

uint64_t sub_22BDB1FA4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *v11 = a1;

  return sub_22BB32EE0(v10, v12, va);
}

void *sub_22BDB1FC4()
{
  v3 = *(v0 + 208);

  return memcpy(v1, (v0 + 96), 0x50uLL);
}

uint64_t sub_22BDB1FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a19 + 16);

  return sub_22BDBB424();
}

uint64_t sub_22BDB2004()
{
}

uint64_t sub_22BDB201C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_22BB58728(a17 + 96, a2, a3);
}

uint64_t sub_22BDB2048()
{
  v1 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22BDB2090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_22BDB212C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = sub_22BDB65E4();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB77D4();
  v16 = sub_22BB30444(v15);
  v58 = v17;
  v59 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v22 = v21 - v20;
  v56 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy;
  *&v0[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_clientProxy] = 0;
  v23 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonEncoder;
  v24 = sub_22BDB4164();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v57 = v23;
  *&v0[v23] = sub_22BDB4154();
  v27 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonDecoder;
  v28 = sub_22BDB4134();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v55 = v27;
  *&v0[v27] = sub_22BDB4124();
  v31 = sub_22BDBABE4();
  v60 = v3;
  v32 = [v3 valueForEntitlement_];

  if (v32)
  {
    sub_22BDBB274();
    swift_unknownObjectRelease();
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v67 = v65;
  v68 = v66;
  if (*(&v66 + 1))
  {
    if (sub_22BB3A378())
    {
      v33 = v5;
      v34 = v63;
      v35 = v64;
      v36 = sub_22BDBABE4();
      v37 = [v60 valueForEntitlement_];

      if (v37)
      {
        sub_22BDBB274();
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      v67 = v65;
      v68 = v66;
      if (*(&v66 + 1))
      {
        if (sub_22BB3A378())
        {
          v52 = v63;
          v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_allGroupQueryingAllowed] = v63;
          if (v52)
          {

            v34 = 0;
            v35 = 0;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_22BB58728(&v67, &qword_27D8E6D10, &unk_22BDBD9A0);
      }

      v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_allGroupQueryingAllowed] = 0;
LABEL_26:
      type metadata accessor for TranscriptEntityQueryingService();
      swift_allocObject();
      *&v1[OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService] = sub_22BD8B9D4(v34, v35);
      v62.receiver = v1;
      v62.super_class = ObjectType;
      objc_msgSendSuper2(&v62, sel_init);

      (*(v9 + 8))(v33, v6);
      goto LABEL_27;
    }
  }

  else
  {
    sub_22BB58728(&v67, &qword_27D8E6D10, &unk_22BDBD9A0);
  }

  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  (*(v9 + 16))(v14, v5, v6);
  v38 = sub_22BDB77C4();
  v39 = sub_22BDBB114();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54 = v22;
    v41 = swift_slowAlloc();
    *&v67 = v41;
    *v40 = 136315138;
    v42 = sub_22BDB65D4();
    if (v43)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0x6E776F6E6B6E75;
    }

    v53 = v5;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    v46 = *(v9 + 8);
    v46(v14, v6);
    v47 = sub_22BB32EE0(v44, v45, &v67);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_22BB2C000, v38, v39, "SessionXPCServiceServer: client %s is missing group-identifier entitlement.", v40, 0xCu);
    sub_22BB32FA4(v41);
    MEMORY[0x2318A6080](v41, -1, -1);
    MEMORY[0x2318A6080](v40, -1, -1);

    v46(v53, v6);
    (*(v58 + 8))(v54, v59);
  }

  else
  {

    v48 = *(v9 + 8);
    v48(v5, v6);
    v48(v14, v6);
    (*(v58 + 8))(v22, v59);
  }

  v49 = *&v1[v56];

  v50 = *&v1[v57];

  v51 = *&v1[v55];

  swift_deallocPartialClassInstance();
LABEL_27:
  sub_22BB314EC();
}

void sub_22BDB26A4()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BB35894();
  sub_22BB363E8(v10);
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v5;
  v11[4] = v3;
  v12 = v0;
  sub_22BB352C4(v5, v3);
  sub_22BDB43E4();
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB27AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB5EA4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BDB2870, 0, 0);
}

uint64_t sub_22BDB2870()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = *(v0[3] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonDecoder);
  sub_22BB754D8(&qword_28142DC40, 255, MEMORY[0x277D1D290]);
  sub_22BDB4114();
  v0[9] = 0;
  v6 = *(v0[3] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService);
  v0[10] = v6;

  return MEMORY[0x2822009F8](sub_22BDB29A8, v6, 0);
}

uint64_t sub_22BDB29A8()
{
  sub_22BB2F35C();
  v2 = v0[9];
  v1 = v0[10];
  sub_22BD8BA68(v0[8], v0[2]);
  v0[11] = v2;
  if (v2)
  {
    v3 = sub_22BDB2AAC;
  }

  else
  {
    v3 = sub_22BDB2A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22BDB2A34()
{
  sub_22BB2F0D4();
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_22BB2F09C();

  return v1();
}

uint64_t sub_22BDB2AAC()
{
  sub_22BB2F0D4();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[11];
  v2 = v0[8];

  sub_22BB2F09C();

  return v3();
}

void sub_22BDB2BF8()
{
  sub_22BB30F94();
  v2 = sub_22BB54390();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB369C8();
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BB35894();
  sub_22BB363E8(v12);
  v13 = swift_allocObject();
  v14 = sub_22BB3448C(v13);
  v15(v14);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = sub_22BB38F90(v17);
  v19(v18);

  v20 = v0;
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB2D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22BDB2DB0, 0, 0);
}

uint64_t sub_22BDB2DB0(uint64_t a1)
{
  v2 = v1[4];
  v1[6] = *(v2 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_jsonEncoder);
  v3 = *(v2 + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService);
  v1[7] = v3;
  return sub_22BB367D8(a1, v3);
}

uint64_t sub_22BDB2DE4()
{
  sub_22BB2F35C();
  v1 = v0[7];
  v0[8] = sub_22BD8BDF0(v0[5]);
  v0[9] = 0;

  return MEMORY[0x2822009F8](sub_22BDB2E94, 0, 0);
}

uint64_t sub_22BDB2E94()
{
  v0[2] = v0[8];
  v1 = v0[9];
  v2 = v0[6];
  sub_22BBE6DE0(&unk_27D8E6EB0, &qword_22BDD1358);
  sub_22BDB3F78();
  v4 = sub_22BDB4144();
  v5 = v0[8];
  if (v1)
  {
  }

  else
  {
    v7 = v3;
    v8 = v0[3];

    *v8 = v4;
    v8[1] = v7;
  }

  sub_22BB2F09C();

  return v6();
}

void sub_22BDB2F9C()
{
  sub_22BB30F94();
  v2 = sub_22BB54390();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB369C8();
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BB35894();
  sub_22BB363E8(v12);
  v13 = swift_allocObject();
  v14 = sub_22BB3448C(v13);
  v15(v14);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = sub_22BB38F90(v17);
  v19(v18);
  sub_22BB33F68();

  v20 = v0;
  sub_22BDBAFB4();

  sub_22BB58728(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BDB3138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22BDB315C, 0, 0);
}

uint64_t sub_22BDB315C(uint64_t a1)
{
  v2 = *(*(v1 + 48) + OBJC_IVAR____TtCV23IntelligenceFlowRuntime40TranscriptEntityQueryingXPCServiceServer6Server_transcriptQueryingService);
  *(v1 + 64) = v2;
  return sub_22BB367D8(a1, v2);
}

uint64_t sub_22BDB3180()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  swift_beginAccess();
  sub_22BDB3C7C();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22BDB3214, 0, 0);
}

uint64_t sub_22BDB3214()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 40);
  sub_22BB33F68();
  *v1 = sub_22BDBB214();
  sub_22BB2F09C();

  return v2();
}

void sub_22BDB32B8()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BDB43E4();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = _Block_copy(v5);
  sub_22BDB43C4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v7;
  v1(v16, v3, v18);

  (*(v11 + 8))(v16, v8);
  sub_22BB314EC();
}

uint64_t sub_22BDB34FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22BDB2048();
  *a1 = result;
  return result;
}

uint64_t (*sub_22BDB3550())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22BDB3648()
{
  swift_beginAccess();
  v0 = qword_28142F288;
  v1 = qword_28142F288;
  return v0;
}

void sub_22BDB3694(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28142F288;
  qword_28142F288 = a1;
}

uint64_t sub_22BDB3784(uint64_t a1)
{
  swift_beginAccess();
  qword_28142F290 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22BDB382C()
{
  sub_22BB2F35C();
  v1 = sub_22BDB43E4();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BDB40D0;
  v8 = sub_22BB2F6E8();

  return sub_22BDB3138(v8, v9, v10);
}

uint64_t sub_22BDB38F8()
{
  sub_22BB31378();
  sub_22BD844E0(v4);
  if (v5)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
    v6 = sub_22BB2F694();
    sub_22BB37974(v6, v7, v8, v9, v10, v11, v12, v13, v24, v25);
    v14 = sub_22BDB5AB4();
    sub_22BB2F330(v14);
    sub_22BB34504(v3 + *(v15 + 72) * v2, MEMORY[0x277D1D080]);
    v16 = *(v1 + 56);
    v17 = type metadata accessor for SnippetStreamingRouter.Entry(0);
    sub_22BB2F330(v17);
    sub_22BB52B00(v16 + *(v18 + 72) * v2, v0, type metadata accessor for SnippetStreamingRouter.Entry);
    sub_22BB754D8(&qword_28142DC58, 255, MEMORY[0x277D1D080]);
    sub_22BB30EB4();
    v19 = sub_22BB32DF0();
    v22 = v17;
  }

  else
  {
    type metadata accessor for SnippetStreamingRouter.Entry(0);
    v19 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v19, v20, v21, v22);
}

uint64_t sub_22BDB3A3C()
{
  sub_22BB31378();
  sub_22BD8446C();
  if (v2)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    sub_22BBE6DE0(&qword_27D8E6900, &unk_22BDCFC30);
    sub_22BB2F694();
    v3 = *(*(v12 + 48) + 16 * v1 + 8);

    v4 = *(v12 + 56);
    v5 = sub_22BDB9504();
    sub_22BB2F330(v5);
    (*(v6 + 32))(v0, v4 + *(v6 + 72) * v1, v5);
    sub_22BDBB4C4();
    v7 = sub_22BB32DF0();
    v10 = v5;
  }

  else
  {
    sub_22BDB9504();
    v7 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v7, v8, v9, v10);
}

uint64_t sub_22BDB3B38()
{
  sub_22BB31378();
  sub_22BD84660();
  if (v4)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    sub_22BBE6DE0(&qword_27D8E68F0, &unk_22BDCFC10);
    v5 = sub_22BB2F694();
    sub_22BB37974(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24);
    v13 = sub_22BDB43E4();
    sub_22BB2F330(v13);
    (*(v14 + 8))(v3 + *(v14 + 72) * v2, v13);
    v15 = *(v1 + 56);
    v16 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
    sub_22BB2F330(v16);
    sub_22BB52B00(v15 + *(v17 + 72) * v2, v0, type metadata accessor for SessionCoordinatorInjectionRequest);
    sub_22BB754D8(&qword_28142DD50, 255, MEMORY[0x277CC95F0]);
    sub_22BB30EB4();
    v18 = sub_22BB32DF0();
    v21 = v16;
  }

  else
  {
    type metadata accessor for SessionCoordinatorInjectionRequest(0);
    v18 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v18, v19, v20, v21);
}

uint64_t sub_22BDB3C7C()
{
  v1 = v0;
  v2 = *v0;
  sub_22BD84660();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_22BBE6DE0(&qword_27D8E68F8, &unk_22BDCFC20);
  sub_22BDBB4A4();
  v8 = *(v12 + 48);
  v9 = sub_22BDB43E4();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  type metadata accessor for TranscriptEntityQueryingService.ActiveQueryState();
  sub_22BB754D8(&qword_28142DD50, 255, MEMORY[0x277CC95F0]);
  sub_22BDBB4C4();
  *v1 = v12;
  return v10;
}

uint64_t sub_22BDB3DC0()
{
  sub_22BB2F35C();
  v1 = sub_22BDB43E4();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BDB3E8C;
  v8 = sub_22BB2F6E8();

  return sub_22BDB2D8C(v8, v9, v10);
}

uint64_t sub_22BDB3E8C()
{
  sub_22BB2F0D4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_22BB2F09C();

  return v2();
}

unint64_t sub_22BDB3F78()
{
  result = qword_281428898;
  if (!qword_281428898)
  {
    sub_22BBEB2E0(&unk_27D8E6EB0, &qword_22BDD1358);
    sub_22BB754D8(&unk_28142DC98, 255, MEMORY[0x277D1CF00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428898);
  }

  return result;
}

uint64_t sub_22BDB4030()
{
  sub_22BB2F35C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BDB40D0;
  v7 = sub_22BB2F6E8();

  return sub_22BDB27AC(v7, v8, v2, v3);
}