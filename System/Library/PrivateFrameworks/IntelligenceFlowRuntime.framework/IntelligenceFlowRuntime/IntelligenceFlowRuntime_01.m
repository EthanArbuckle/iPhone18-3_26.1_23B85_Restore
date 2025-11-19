void sub_22BB4F9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SpanMetadata();
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = sub_22BB3A190();
  if (sub_22BB3AA28(v21, v22, v12) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E64E8, &qword_22BDCE3F0);
    v23 = *v3;
    sub_22BB4FC1C(a2);
    if (v24)
    {
      v25 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v33 = *v3;
      v26 = *(v33 + 24);
      sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
      sub_22BDBB4A4();
      v27 = v33;
      v28 = *(v33 + 56);
      v29 = *(v15 + 72);
      sub_22BB5005C();
      sub_22BB6B7B8();
      sub_22BDBB4C4();
      v30 = 0;
      *v3 = v27;
    }

    else
    {
      v30 = 1;
    }

    sub_22BB336D0(v11, v30, 1, v12);
    sub_22BB58728(v11, &qword_27D8E64E8, &qword_22BDCE3F0);
  }

  else
  {
    sub_22BB5005C();
    v31 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = *v3;
    sub_22BB4FF14(v20, a2);
    *v3 = v33;
  }
}

unint64_t sub_22BB4FC1C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22BB6B7B8();
  v4 = sub_22BDBABA4();
  return sub_22BB4FDD0(a1, v4);
}

uint64_t sub_22BB4FC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
    v8 = v5 + *(a4 + 24);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BB4FD3C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
    v9 = a1 + *(a3 + 24);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

unint64_t sub_22BB4FDD0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = *(*(v2 + 48) + 8 * i);
    sub_22BB96A28();
    if (sub_22BDBABD4())
    {
      break;
    }
  }

  return i;
}

void sub_22BB4FEA0()
{
  sub_22BB3FE60();
  v5 = sub_22BB34428(v1, v2, v3, v4);
  *(*(v6 + 48) + 8 * v5) = v7;
  v8 = *(v6 + 56);
  v9 = type metadata accessor for SpanMetadata();
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 72);
  sub_22BB312A4();
  sub_22BB38958();
  sub_22BB39384();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_22BB4FF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22BB4FC1C(a2);
  if (__OFADD__(*(v5 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v7 = v6;
  sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
  if (sub_22BDBB4A4())
  {
    v8 = *v3;
    sub_22BB4FC1C(a2);
    if ((v7 & 1) != (v9 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    v10 = *(*v3 + 56);
    v11 = *(*(type metadata accessor for SpanMetadata() - 8) + 72);
    sub_22BD85988();
  }

  else
  {

    sub_22BB4FEA0();
  }
}

uint64_t sub_22BB5005C()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

void sub_22BB500E4()
{
  v2 = v0[436];
  *(v1 - 160) = v0[440];
  *(v1 - 152) = v2;
  v3 = v0[411];
  v4 = v0[404];
  v5 = v0[403];
}

uint64_t type metadata accessor for SnippetStreamingRouter.Scoped()
{
  result = qword_28142A190;
  if (!qword_28142A190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnippetStreamingRouter.Scoped.init(base:)(uint64_t a1)
{
  v3 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v4 = sub_22BB2F0C8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = a1;
  sub_22BDB43D4();
  sub_22BB501FC(v8, v1 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  return v1;
}

uint64_t sub_22BB501FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB50260()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BB3C48C;
  sub_22BB35FA0();
  sub_22BB3A1C0();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22BB50318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22BB6AB00;

  return sub_22BB503D0(a2, a3, a4, a5);
}

uint64_t sub_22BB503D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = sub_22BBE6DE0(&qword_27D8E6600, &qword_22BDCE578);
  v4[57] = v5;
  v6 = *(v5 - 8);
  v4[58] = v6;
  v7 = *(v6 + 64) + 15;
  v4[59] = swift_task_alloc();
  v8 = *(_s24StandardSessionResourcesVMa() - 8);
  v4[60] = v8;
  v4[61] = *(v8 + 64);
  v4[62] = swift_task_alloc();
  v9 = *(sub_22BDB5664() - 8);
  v4[63] = v9;
  v4[64] = *(v9 + 64);
  v4[65] = swift_task_alloc();
  v10 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB505A4, 0, 0);
}

uint64_t sub_22BB505A4()
{
  v70 = v0;
  v1 = *(v0 + 488);
  v61 = *(v0 + 480);
  v62 = *(v0 + 504);
  v2 = *(v0 + 432);
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v63 = *(v2 + 16);
  v3 = sub_22BB50C38(v68, v63);
  v4 = 0;
  v58 = v3;
  v59 = v2 + 32;
  v60 = v1 + 7;
  v5 = &qword_27D8E2978;
  while (1)
  {
    v6 = v63;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v4 != v63)
    {
      if (v4 >= v63)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

      *(v0 + 64) = v4;
      sub_22BB690EC(v59 + 40 * v4, v0 + 72);
      v7 = *(v0 + 64);
      v8 = *(v0 + 80);
      v9 = *(v0 + 96);
    }

    *(v0 + 16) = v7;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    if (!v9)
    {
      break;
    }

    v67 = v6;
    v64 = *(v0 + 536);
    v66 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    v12 = *(v0 + 496);
    v13 = *(v0 + 440);
    v14 = *(v0 + 448);
    v65 = v7;
    v15 = sub_22BDBAEF4();
    v16 = sub_22BB3A190();
    sub_22BB336D0(v16, v17, 1, v15);
    sub_22BB382E8((v0 + 24), v0 + 320);
    sub_22BB32CE8();
    sub_22BB335C0(v13, v10);
    v18 = sub_22BB96020();
    sub_22BB335C0(v18, v19);
    v20 = v5;
    v21 = (*(v62 + 80) + 72) & ~*(v62 + 80);
    v22 = (v11 + *(v61 + 80) + v21) & ~*(v61 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = (v23 + 16);
    *(v23 + 24) = 0;
    sub_22BB382E8((v0 + 320), v23 + 32);
    sub_22BB2F5B0();
    v25 = v23 + v21;
    v5 = v20;
    sub_22BB3A518(v10, v25);
    sub_22BB3A518(v12, v23 + v22);
    *(v23 + ((v60 + v22) & 0xFFFFFFFFFFFFFFF8)) = v65;
    sub_22BD63468();
    sub_22BB3CD70(v26, v27, v28, &qword_22BDBD020);
    v29 = sub_22BB3A190();
    v31 = sub_22BB3AA28(v29, v30, v15);
    v32 = *(v0 + 528);
    if (v31 == 1)
    {
      v33 = sub_22BB2F3F0();
      sub_22BB325EC(v33, v34, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      sub_22BB30474(v15);
      v36 = *(v35 + 8);
      v37 = sub_22BB2F324();
      v38(v37);
    }

    v39 = *v24;
    if (*v24)
    {
      v40 = *(v23 + 24);
      v41 = *v24;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v42 = v39;
      sub_22BB3FBBC();
      sub_22BDBAE44();
      sub_22BD63450();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      v40 = 0;
    }

    v43 = **(v0 + 424);

    sub_22BBE6DE0(&qword_27D8E65E8, &qword_22BDCE548);
    v44 = v40 | v42;
    if (v40 | v42)
    {
      v44 = v0 + 360;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 376) = v42;
      *(v0 + 384) = v40;
    }

    v45 = *(v0 + 536);
    *(v0 + 392) = 1;
    *(v0 + 400) = v44;
    *(v0 + 408) = v43;
    swift_task_create();

    v46 = sub_22BB2F3F0();
    sub_22BB325EC(v46, v47, &qword_22BDBD020);
    v4 = v67;
  }

  v48 = *(v0 + 472);
  v49 = **(v0 + 424);
  sub_22BBE6DE0(&qword_27D8E65E8, &qword_22BDCE548);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  sub_22BB30AE4();
  sub_22BDBB014();
  v6 = v58;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_17;
  }

LABEL_22:
  sub_22BD7DEC0(v6);
  v6 = v56;
LABEL_17:
  *(v0 + 544) = v6;
  v50 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 552) = v51;
  *v51 = v52;
  v51[1] = sub_22BB6A264;
  v53 = *(v0 + 472);
  v54 = *(v0 + 456);
  sub_22BB9743C();
  sub_22BD6421C();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_22BB50A00()
{
  sub_22BB30F94();
  v2 = (sub_22BDB5664() - 8);
  v3 = (*(*v2 + 80) + 72) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = _s24StandardSessionResourcesVMa();
  sub_22BB3A75C(v5);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v1 + 32));
  v11 = v1 + v3;
  v12 = sub_22BDB43E4();
  sub_22BB2F330(v12);
  v14 = *(v13 + 8);
  v15 = sub_22BB3B69C();
  v14(v15);
  v16 = (v11 + v2[7]);
  v17 = v16[1];

  v18 = v16[3];

  v19 = v16[5];

  v20 = sub_22BB2F0E0();
  v14(v20);
  v21 = *(v1 + v7 + v0[7]);

  v22 = v0[8];
  v23 = sub_22BDB7F64();
  sub_22BB31F70(v23);
  (*(v24 + 8))(v1 + v7 + v22);
  v25 = *(v1 + v7 + v0[9]);

  v26 = v0[10];
  v27 = sub_22BDB9C14();
  sub_22BB31F70(v27);
  (*(v28 + 8))(v1 + v7 + v26);
  v29 = *(v1 + v7 + v0[11]);

  v30 = *(v1 + v7 + v0[12]);

  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v31, v32, v33);
}

uint64_t sub_22BB50C08()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E68A0, &qword_22BDCFA10);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BB50C38(uint64_t result, uint64_t a2)
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
      sub_22BBE6DE0(&qword_27D8E6608, &qword_22BDCE580);
      v4 = sub_22BDBADC4();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_22BB3CD70(v3, v5, &qword_27D8E6608, &qword_22BDCE580);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_22BB325EC(v3, &qword_27D8E6608, &qword_22BDCE580);
    return v4;
  }

  return result;
}

uint64_t sub_22BB50CF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22BBBFEB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22BB50D0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BDB5F24();
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB36858();
  v9 = sub_22BDB9B54();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB3ABC8();
  v15 = sub_22BDB9904();
  v16 = sub_22BB2F330(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB33230();
  (*(v12 + 16))(v3, a2, v9);
  sub_22BDB99B4();
  sub_22BDB98F4();
  sub_22BDB47A4();
  sub_22BB366F4();
  v19 = sub_22BB3AAD8();
  sub_22BB388FC(v19, v20);
  sub_22BDB4374();
  v21 = sub_22BDB43E4();
  sub_22BB31F70(v21);
  (*(v22 + 8))(v2);
  v23 = MEMORY[0x277D1E688];
  sub_22BB6914C(&qword_281428970, MEMORY[0x277D1E688]);
  sub_22BB6914C(&qword_281428978, v23);
  sub_22BDB4784();

  return sub_22BB698E8();
}

uint64_t sub_22BB50F4C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB31BBC(v4);

  return v7(v6);
}

void sub_22BB51160()
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
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v0;
  v27 = sub_22BB3E514(v26);
  v28(v27);
  sub_22BB33F68();

  v29 = v0;
  sub_22BB3AC10();

  sub_22BB325EC(v1, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB314EC();
}

uint64_t sub_22BB512F8@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB690EC(a1 + v1, v2 + 16);
}

uint64_t sub_22BB51310()
{
  v2 = v0[26];
  result = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  return result;
}

uint64_t sub_22BB51370(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB513A8()
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
  v6[1] = sub_22BBF90EC;
  v8 = sub_22BB2F6E8();

  return sub_22BB51470(v8, v9, v10);
}

uint64_t sub_22BB51470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22BDB5154();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22BDB43E4();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_22BDB5764();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB515EC, 0, 0);
}

uint64_t sub_22BB515EC()
{
  sub_22BB30F5C();
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[3] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionManager);
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  sub_22BDB5144();
  (*(v4 + 104))(v2, *MEMORY[0x277D1C8C0], v3);
  sub_22BB31B20();
  sub_22BDB5744();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22BB53F38;
  sub_22BB3487C(v0[13]);

  return sub_22BB516FC();
}

uint64_t sub_22BB516FC()
{
  sub_22BB2F35C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB52C4();
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_22BB30ACC();
  v6 = sub_22BDB43E4();
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  v1[5] = sub_22BB30ACC();
  v9 = sub_22BDB5F24();
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  v1[6] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  v1[7] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB96094();
  sub_22BB3B194(v12, v13);
  sub_22BD63964();

  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BD64CF0();
  v1[8] = v14;
  v1[9] = v15;
  v16 = sub_22BD649DC();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22BB51864()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_22BB518A8()
{
  v1 = v0[35];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
}

uint64_t sub_22BB518BC()
{
  result = *(v0 + 720);
  v2 = *(v0 + 688);
  return result;
}

uint64_t sub_22BB518C8()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
}

uint64_t sub_22BB518E8()
{

  return swift_beginAccess();
}

uint64_t sub_22BB5190C(uint64_t a1)
{
  v6 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v11 = sub_22BB2F330(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB51A9C();
  if (v2)
  {
    return v14;
  }

  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38(a1, *(v1 + 16));
  sub_22BB35204();
  sub_22BB31814(v16, v17, v18);
  if (v19)
  {
    sub_22BB58728(v3, &qword_27D8E67E8, &qword_22BDCF4B0);
    swift_endAccess();
    sub_22BBB7088();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    sub_22BB31E54();
    sub_22BB38958();
    swift_endAccess();
    v15 = *(v4 + *(v10 + 32));

    sub_22BB33EB8();
    sub_22BB34698();
  }

  return v15;
}

void sub_22BB51A9C()
{
  sub_22BB31014();
  v160 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BDB5F24();
  v9 = sub_22BB2F0C8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB2F384();
  v159 = v16;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v17);
  sub_22BB2F384();
  v155 = v18;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  v152[2] = v20;
  sub_22BB2F120();
  v161 = sub_22BDB52C4();
  v21 = sub_22BB2F330(v161);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v24);
  sub_22BB2F384();
  v157 = v25;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F384();
  v154 = v27;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F39C();
  v152[1] = v29;
  sub_22BB2F120();
  v162 = sub_22BDB77D4();
  v30 = sub_22BB30444(v162);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30C74();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  v158 = v37;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v38);
  sub_22BB2F384();
  v156 = v39;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F39C();
  v153 = v41;
  v42 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  v47 = v152 - v46;
  v48 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v49 = sub_22BB2F330(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BB30574();
  v54 = v53 - v52;
  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38(v5, *(v3 + 16));
  v55 = sub_22BB3A190();
  sub_22BB31814(v55, v56, v48);
  if (!v57)
  {
    sub_22BB31E54();
    sub_22BB345A8();
    sub_22BB38958();
    swift_endAccess();
    v69 = sub_22BDB43B4();
    if (v69)
    {
      goto LABEL_6;
    }

    sub_22BB89970();
    swift_beginAccess();
    if (*(*(v3 + 24) + 16) && (v71 = sub_22BB3CB98(), (v72 & 1) != 0))
    {
      v157 = v7;
      v159 = v54;
      sub_22BB3711C(v71);
      v74 = *(v73 + 8);
      v75 = *(v73 + 16);
      v76 = *(v73 + 24);
      v77 = *(v73 + 32);
      v78 = *(v73 + 40);
      v79 = *(v73 + 48);
      swift_endAccess();
      sub_22BB89970();
      swift_beginAccess();
      v80 = *(v3 + 24);
      v81 = v76;
      v82 = *(v80 + 16);

      v158 = v74;

      if (v82 && (v83 = sub_22BB3CB98(), (v84 & 1) != 0))
      {
        v155 = v79;
        v152[0] = v78;
        sub_22BB3711C(v83);
        v87 = v85[1];
        v86 = v85[2];
        v88 = v85[3];
        v90 = v85[5];
        v89 = v85[6];
        swift_endAccess();
        if (v88)
        {
          v156 = v87;
          v91 = v153;
          if (v81)
          {

            swift_bridgeObjectRetain_n();

            v92 = sub_22BDB4E44();

            if (v92)
            {

LABEL_37:

              goto LABEL_38;
            }
          }

          else
          {
          }
        }

        else
        {

          v132 = v87;
          v91 = v153;
          if (!v81)
          {

            goto LABEL_37;
          }

          v156 = v132;
        }

        if (v77)
        {

          v158 = v88;
LABEL_38:

LABEL_6:
          sub_22BB33EB8();
          sub_22BB34698();
          goto LABEL_26;
        }

        sub_22BDB63E4();
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB36720();
        sub_22BB33618();
        v133 = sub_22BDB77C4();
        v134 = sub_22BDBB114();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = sub_22BB3B778();
          v160 = v81;
          v136 = v135;
          v157 = sub_22BB3E490();
          v163 = v157;
          *v136 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v137, v138);
          LODWORD(v154) = v134;
          v139 = sub_22BDBB684();
          v141 = v140;
          sub_22BB35D94();
          sub_22BB34698();
          v142 = sub_22BB6BD90();
          sub_22BB32EE0(v142, v141, v143);
          sub_22BB36C3C();

          *(v136 + 4) = v139;
          *(v136 + 12) = 2082;
          v145 = MEMORY[0x23189FEB0](v144);
          v147 = v146;
          sub_22BB309FC();
          sub_22BB34698();
          v148 = sub_22BB6BD90();
          sub_22BB32EE0(v148, v147, v149);
          sub_22BB36C3C();

          *(v136 + 14) = v145;
          _os_log_impl(&dword_22BB2C000, v133, v154, "SessionClient %{public}s is not allowed to observe session %{public}s.", v136, 0x16u);
          swift_arrayDestroy();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          sub_22BB3AB38();
          v151 = v153;
        }

        else
        {

          sub_22BB309FC();
          sub_22BB34698();
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB3AB38();
          v151 = v91;
        }

        v150(v151, v162);
        LOBYTE(v163) = 4;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        sub_22BB33EB8();
      }

      else
      {
        swift_endAccess();
        v113 = v156;
        sub_22BDB63E4();
        sub_22BB32564();
        v114 = v154;
        sub_22BB33618();
        sub_22BB36720();
        v115 = v155;
        sub_22BB33618();
        v116 = sub_22BDB77C4();
        sub_22BDBB114();
        sub_22BB3E2A4();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = sub_22BB3B778();
          v152[0] = v78;
          v119 = v118;
          v163 = sub_22BB3E490();
          *v119 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v120, v121);
          sub_22BDBB684();
          sub_22BB36C3C();
          v123 = v122;
          sub_22BB35D94();
          sub_22BB34698();
          v124 = sub_22BB6BD90();
          sub_22BB32EE0(v124, v123, v125);
          sub_22BB313B4();

          *(v119 + 4) = v114;
          *(v119 + 12) = 2082;
          MEMORY[0x23189FEB0](v126);
          sub_22BB3E440();
          sub_22BB309FC();
          sub_22BB34698();
          v127 = sub_22BB6BD90();
          sub_22BB32EE0(v127, v123, v128);
          sub_22BB313B4();

          *(v119 + 14) = v115;
          _os_log_impl(&dword_22BB2C000, v116, v74, "SessionClient %{public}s is not allowed to observe session %{public}s because it has an unknown owning SessionClient.", v119, 0x16u);
          swift_arrayDestroy();
          v129 = sub_22BB6BC10();
          MEMORY[0x2318A6080](v129);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          sub_22BB3AB38();
          v131 = v156;
        }

        else
        {

          sub_22BB309FC();
          sub_22BB34698();
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB3AB38();
          v131 = v113;
        }

        v130(v131, v162);
        LOBYTE(v163) = 1;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        sub_22BB33EB8();
      }
    }

    else
    {
      swift_endAccess();
      v93 = v158;
      sub_22BDB63E4();
      sub_22BB32564();
      v94 = v157;
      sub_22BB33618();
      sub_22BB36720();
      sub_22BB33618();
      v95 = sub_22BDB77C4();
      v96 = sub_22BDBB114();
      if (os_log_type_enabled(v95, v96))
      {
        sub_22BB3B778();
        v163 = sub_22BB3E030();
        *v14 = 136446466;
        sub_22BB32D54();
        sub_22BB3CC60(v97, v98);
        sub_22BDBB684();
        sub_22BB36C3C();
        v100 = v99;
        sub_22BB35D94();
        sub_22BB34698();
        v101 = sub_22BB6BD90();
        sub_22BB32EE0(v101, v100, v102);
        sub_22BB3935C();

        *(v14 + 4) = v94;
        *(v14 + 12) = 2082;
        v104 = MEMORY[0x23189FEB0](v103);
        v106 = v105;
        sub_22BB309FC();
        sub_22BB34698();
        v107 = sub_22BB6BD90();
        sub_22BB32EE0(v107, v106, v108);
        sub_22BB3935C();

        *(v14 + 14) = v104;
        sub_22BB3942C(&dword_22BB2C000, v109, v96, "Unknown SessionClient %{public}s is not allowed to observe session %{public}s.");
        swift_arrayDestroy();
        v110 = sub_22BB94EFC();
        MEMORY[0x2318A6080](v110);
        v111 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v111);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
        sub_22BB35D94();
        sub_22BB34698();
      }

      sub_22BB3AB38();
      v112(v93, v162);
      LOBYTE(v163) = 1;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
      sub_22BB33EB8();
    }

    sub_22BB34698();
    goto LABEL_26;
  }

  sub_22BB58728(v47, &qword_27D8E67E8, &qword_22BDCF4B0);
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB32564();
  sub_22BB33618();
  sub_22BB36720();
  sub_22BB33618();
  v58 = sub_22BDB77C4();
  v59 = sub_22BDBB114();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = sub_22BB3B778();
    v163 = sub_22BB3E490();
    *v60 = 136446466;
    sub_22BB32D54();
    sub_22BB3CC60(v61, v62);
    sub_22BDBB684();
    v64 = v63;
    sub_22BB35D94();
    sub_22BB34698();
    v65 = sub_22BB6BD90();
    sub_22BB32EE0(v65, v64, v66);
    sub_22BB36C3C();

    sub_22BB8DCFC();
    MEMORY[0x23189FEB0]();
    sub_22BB3E440();
    sub_22BB309FC();
    sub_22BB34698();
    v67 = sub_22BB6BD90();
    sub_22BB32EE0(v67, v2, v68);
    sub_22BB313B4();

    *(v60 + 14) = v14;
    _os_log_impl(&dword_22BB2C000, v58, v59, "SessionClient %{public}s is not allowed to observe non-existent session %{public}s.", v60, 0x16u);
    sub_22BB8ABD4();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
    sub_22BB35D94();
    sub_22BB34698();
  }

  sub_22BB3AB38();
  v70(v35, v162);
  LOBYTE(v163) = 0;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_26:
  sub_22BB376A8();
}

uint64_t type metadata accessor for SessionSwitchboard.SessionInfo()
{
  result = qword_28142ABE8;
  if (!qword_28142ABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB527CC()
{
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];

  return sub_22BB690EC(v5, (v0 + 2));
}

uint64_t sub_22BB5283C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[4] = v3;
  a1[5] = v2;

  return MEMORY[0x2821FE398]();
}

uint64_t sub_22BB52878()
{

  return swift_dynamicCast();
}

uint64_t sub_22BB528B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_22BB32EE0(v11, v10, va);
}

void sub_22BB528CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22BB528EC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[4];
  result = v3[2];
  v5[3] = v2;
  v5[4] = v4;
  v5[2] = v7;
  v12 = v5[5];
  return result;
}

uint64_t sub_22BB52938()
{
  result = v0;
  v3 = *(v1 - 424);
  *(v1 - 536) = *(*(v1 - 440) + 8);
  return result;
}

uint64_t sub_22BB5295C()
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB52994()
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB529B4()
{
  *(v2 - 112) = v1 + v0;
}

uint64_t sub_22BB52A38(uint64_t a1, uint64_t a2)
{
  sub_22BB5431C(a1, a2);
  if (v4 && (v5 = v3, sub_22BB67B60(v2, MEMORY[0x277D1D2C0], sub_22BB67BE0), (v6 & 1) != 0))
  {
    v7 = *(v5 + 56);
    v8 = type metadata accessor for SessionSwitchboard.SessionInfo();
    sub_22BB2F330(v8);
    v10 = *(v9 + 72);
    sub_22BB67A00();
    v11 = sub_22BB36764();
  }

  else
  {
    type metadata accessor for SessionSwitchboard.SessionInfo();
    v11 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v11, v12, v13, v14);
}

uint64_t sub_22BB52B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BB52B60()
{
  sub_22BB34E84();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);

  sub_22BDB4FF4();
  sub_22BD649B8();
  sub_22BDB5F04();
  sub_22BB37DF4();
  sub_22BB335C0(v4 + v7, v3);
  v8 = sub_22BC54704();
  v0[10] = sub_22BB5190C(v8);
  v9 = v0[6];
  v10 = v0[4];

  sub_22BB343F4();
  sub_22BB34648();
  sub_22BB89D8C();
  sub_22BB34648();
  sub_22BB32A48(&unk_22BDCE208);
  v15 = v11;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_22BB584B0;
  v13 = sub_22BB3487C(v0[2]);

  return v15(v13);
}

uint64_t sub_22BB52D3C(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BB52D90(unint64_t *a1)
{

  return sub_22BC52D98(a1);
}

void sub_22BB52DE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BB52E04(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t sub_22BB52E20()
{

  return sub_22BB58728(v2, v0, v1);
}

uint64_t sub_22BB52E3C(uint64_t a1, uint64_t a2)
{

  return sub_22BCAD538(a1, a2, _s23StatementStepEvaluationOMa);
}

uint64_t sub_22BB52ED4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22BB52F0C()
{
  result = v0[31];
  v2 = v0[32];
  v3 = v0[27];
  v4 = *(v0[28] + 8);
  return result;
}

uint64_t sub_22BB52F20()
{

  return sub_22BDBB684();
}

uint64_t sub_22BB52F5C()
{
  sub_22BB2F0D4();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_22BDB9B14();
  v1[13] = v3;
  sub_22BB30434(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_22BB30ACC();
  v7 = sub_22BDB43E4();
  v1[16] = v7;
  sub_22BB30434(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = sub_22BB30ACC();
  v11 = sub_22BDB6714();
  v1[19] = v11;
  sub_22BB30434(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = sub_22BB30ACC();
  v15 = sub_22BDB9B04();
  v1[22] = v15;
  sub_22BB30434(v15);
  v1[23] = v16;
  v18 = *(v17 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v19 = sub_22BBE6DE0(&qword_27D8E63E8, &unk_22BDCE210);
  sub_22BB2F0C8(v19);
  v21 = *(v20 + 64);
  v1[26] = sub_22BB30ACC();
  v22 = type metadata accessor for EventPayloadWithPreassignedID(0);
  v1[27] = v22;
  sub_22BB30434(v22);
  v1[28] = v23;
  v25 = *(v24 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v26 = sub_22BDB5764();
  v1[32] = v26;
  sub_22BB30434(v26);
  v1[33] = v27;
  v29 = *(v28 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v30 = sub_22BDB77D4();
  v1[36] = v30;
  sub_22BB30434(v30);
  v1[37] = v31;
  v33 = *(v32 + 64);
  v1[38] = sub_22BB30ACC();
  v34 = sub_22BDB9C14();
  v1[39] = v34;
  sub_22BB30434(v34);
  v1[40] = v35;
  v37 = *(v36 + 64);
  v1[41] = sub_22BB30ACC();
  v38 = sub_22BDB96E4();
  v1[42] = v38;
  sub_22BB30434(v38);
  v1[43] = v39;
  v41 = *(v40 + 64);
  v1[44] = sub_22BB30ACC();
  v42 = type metadata accessor for SessionCoordinatorCommand(0);
  v1[45] = v42;
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  v1[46] = sub_22BB30ACC();
  v45 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v1[47] = v45;
  sub_22BB30434(v45);
  v1[48] = v46;
  v48 = *(v47 + 64);
  v1[49] = sub_22BB30ACC();
  v49 = sub_22BDB5154();
  v1[50] = v49;
  sub_22BB30434(v49);
  v1[51] = v50;
  v52 = *(v51 + 64);
  v1[52] = sub_22BB30ACC();
  v53 = sub_22BDB5D14();
  v1[53] = v53;
  sub_22BB30434(v53);
  v1[54] = v54;
  v56 = *(v55 + 64);
  v1[55] = sub_22BB30ACC();
  v57 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v57, v58, v59);
}

uint64_t sub_22BB533E8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 728);
  v3 = *(v1 + 360);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BB53508(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BDBAA14();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  v28 = sub_22BDBAA44();
  v13 = sub_22BB30444(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v20 = v19 - v18;
  v27 = *(v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = a1;
  sub_22BB33C94(v21);
  sub_22BB32B78(COERCE_DOUBLE(1107296256));
  v30 = v22;
  v31 = &unk_283F76308;
  v23 = _Block_copy(aBlock);

  sub_22BDBAA34();
  sub_22BB322BC();
  sub_22BB6B80C(v24, v25);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB31C54();
  sub_22BDBB2B4();
  MEMORY[0x2318A5160](0, v20, v12, v23);
  _Block_release(v23);
  (*(v7 + 8))(v12, v4);
  (*(v15 + 8))(v20, v28);

  return sub_22BDB9E14();
}

uint64_t sub_22BB53764()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BB537A4(uint64_t a1, int *a2)
{
  v8 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BBBD184;

  return v8(a1);
}

uint64_t type metadata accessor for SessionCoordinatorResponseCallback()
{
  result = qword_281428CE8;
  if (!qword_281428CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB538E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v21 = *(v20 + 56);
  sub_22BB36B74(*(v20 + 80));
  if (v22)
  {
    v23 = *(v20 + 112);
    v24 = *(v20 + 72);
    v25 = *(v20 + 48);
    (*(*(v20 + 96) + 8))(*(v20 + 104), *(v20 + 88));
    sub_22BB387B8();
    sub_22BB34648();

    sub_22BB2F09C();
    sub_22BB3CEF4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v35 = *(v20 + 144);
    v36 = *(v20 + 72);
    v37 = *(*(v20 + 64) + 32);
    sub_22BB72044();
    v38();
    if (v35)
    {
      v39 = *(v20 + 72);
      sub_22BDB99E4();
    }

    v40 = *(v20 + 128);
    v41 = *(v20 + 112);
    SessionPersistenceManager.write(event:)(*(v20 + 72));
    if (v40)
    {
      v42 = *(v20 + 48);
      v43 = *(v20 + 24);
      sub_22BDB63E4();

      v44 = v40;
      v45 = sub_22BDB77C4();
      v46 = sub_22BDBB114();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v20 + 120);
        v85 = *(v20 + 56);
        v86 = *(v20 + 72);
        a12 = *(v20 + 48);
        v84 = *(v20 + 64);
        a10 = *(v20 + 40);
        a11 = *(v20 + 32);
        v48 = *(v20 + 24);
        v49 = sub_22BB3B778();
        v50 = sub_22BD63870();
        v87 = sub_22BB314C8();
        *v49 = 136446466;
        sub_22BDB5624();
        sub_22BD6345C();

        v51 = sub_22BB8AB74();
        v54 = sub_22BB32EE0(v51, v52, v53);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2114;
        v55 = v40;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 14) = v56;
        *v50 = v56;
        _os_log_impl(&dword_22BB2C000, v45, v46, "[SessionCoordinator %{public}s] Attempting to persist event had error: %{public}@", v49, 0x16u);
        sub_22BB325EC(v50, &unk_27D8E6A70, &unk_22BDBCDB0);
        sub_22BB30458();
        sub_22BB32FA4(v87);
        sub_22BB32238();
        sub_22BB38680();

        (*(a10 + 8))(a12, a11);
        (*(v84 + 8))(v86, v85);
      }

      else
      {
        v58 = *(v20 + 64);
        v57 = *(v20 + 72);
        v60 = *(v20 + 48);
        v59 = *(v20 + 56);
        v61 = *(v20 + 32);
        v62 = *(v20 + 40);
        v63 = *(v20 + 24);

        v64 = *(v62 + 8);
        v65 = sub_22BB32E04();
        v66(v65);
        v67 = *(v58 + 8);
        v68 = sub_22BB345A8();
        v69(v68);
      }
    }

    else
    {
      (*(*(v20 + 64) + 8))(*(v20 + 72), *(v20 + 56));
    }

    *(v20 + 128) = 0;
    v70 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    sub_22BB30B34();
    *(v20 + 136) = v71;
    *v71 = v72;
    v71[1] = sub_22BB95024;
    v73 = *(v20 + 104);
    v74 = *(v20 + 80);
    v75 = *(v20 + 88);
    sub_22BB9743C();
    sub_22BB3CEF4();

    return MEMORY[0x2822003E8](v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12);
  }
}

void sub_22BB53C34()
{
  v1 = v0[29];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
}

uint64_t sub_22BB53C54()
{
  v1 = *(v0 - 160) + 8;
  v3 = *(v0 - 144);
  result = *(v0 - 136);
  v4 = *(v0 - 128);
  return result;
}

uint64_t sub_22BB53C68(uint64_t result)
{
  *(result + 16) = sub_22BD5F664;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB53CA0()
{
  v1[53] = v2;
  v1[54] = v0;
  result = v1[30];
  v4 = v1[31];
  return result;
}

uint64_t sub_22BB53CF0@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1 + *(v1 + 72) * v3;
  v7 = *(v4 - 120);
  v6 = *(v4 - 112);
  return result;
}

void sub_22BB53D24()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB53D50(uint64_t a1)
{

  return sub_22BB336D0(v1, 0, 1, a1);
}

uint64_t sub_22BB53D88()
{

  return sub_22BB32EE0(v0, v1, (v2 - 96));
}

uint64_t sub_22BB53DC8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = sub_22BB89C08;
  return *(v2 - 152);
}

void sub_22BB53DF8()
{
  v1 = v0[99];
  v2 = v0[95];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
}

uint64_t sub_22BB53E14(uint64_t a1)
{

  return sub_22BBBE62C(v2, a1 + v1, v3, v4);
}

void sub_22BB53E50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22BB53E88(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_22BB53EA8()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  sub_22BB33F68();
  *v4 = sub_22BBB79E4();

  sub_22BB360FC();
  sub_22BB3478C();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BB53F38()
{
  sub_22BB30F5C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  if (v0)
  {
    v9 = *(v7 + 8);
  }

  else
  {

    v12 = *(v7 + 8);
  }

  v10 = sub_22BB30AE4();
  v11(v10);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t type metadata accessor for SessionCoordinatorConversions.ConversionContext()
{
  result = qword_2814295E8;
  if (!qword_2814295E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB54124()
{
  result = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  return result;
}

void sub_22BB54148()
{
  v2 = v0[213];
  v3 = v0[210];
  v4 = v0[207];
  v5 = v0[206];
  v6 = v0[205];
  v7 = v0[204];
  v8 = v0[203];
  v9 = v0[202];
  v10 = v0[201];
  v11 = v0[200];
  v12 = v0[199];
  v13 = v0[198];
  v14 = v0[197];
  v15 = v0[196];
  v16 = v0[195];
  v17 = v0[192];
  v18 = v0[191];
  v19 = v0[188];
  v20 = v0[187];
  v21 = v0[186];
  v22 = v0[185];
  v23 = v0[184];
  v24 = v0[181];
  v25 = v0[180];
  v1 = v0[179];
  v26 = v0[178];
}

uint64_t sub_22BB54294()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t sub_22BB54328(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BB54390()
{

  return sub_22BDB43E4();
}

uint64_t sub_22BB543B0()
{
  v187 = v0;
  v1 = v0[12];
  v2 = *v1;
  if (*(v1 + *(*v1 + 152)) == 1)
  {
    v3 = v0;
    v6 = v0 + 51;
    v5 = v0[51];
    v4 = v6[1];
    v7 = v3[50];
    v8 = v3[11];
    sub_22BDB5734();
    v9 = *(v5 + 88);
    v10 = sub_22BB30AE4();
    if (v11(v10) == *MEMORY[0x277D1C748])
    {
      v13 = v3[54];
      v12 = v3[55];
      v14 = v3[52];
      v15 = v3[53];
      v16 = v3[50];
      v18 = v3[48];
      v17 = v3[49];
      v19 = v3[46];
      v179 = v3[47];
      v20 = v3[45];
      v21 = v3[12];
      v22 = sub_22BC54A3C(v3[51]);
      v23(v22);
      v24 = v13[4];
      v25 = sub_22BB31F54();
      v26(v25);
      v27 = *(*v21 + 176);
      v28 = v13[2];
      v29 = sub_22BC5448C();
      v30(v29);
      sub_22BB35464();
      swift_storeEnumTagMultiPayload();
      sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
      sub_22BDBAF34();
      (*(v18 + 8))(v17, v179);
      v31 = v13[1];
      v32 = sub_22BB30AE4();
      v33(v32);
      v34 = MEMORY[0x277D84F90];
      v35 = v3;
      goto LABEL_28;
    }

    v36 = v3[12];
    (*(v3[51] + 8))(v3[52], v3[50]);
    v2 = *v36;
    v37 = v3[12];
  }

  v39 = v184[43];
  v38 = v184[44];
  v40 = v184[41];
  v41 = v184[42];
  v42 = v184[39];
  v43 = v184[40];
  v180 = v184[11];
  v185 = MEMORY[0x277D84F90];
  v44 = *(v2 + 128);
  sub_22BB31B88();
  v46 = v45;
  swift_beginAccess();
  v164 = *(v39 + 16);
  v164(v38, v46 + v44, v41);
  v47 = *(*v46 + 200);
  v48 = v46 + *(_s24StandardSessionResourcesVMa() + 32) + v47;
  v49 = v184;
  (*(v43 + 16))(v40, v48, v42);
  v50 = type metadata accessor for SessionCoordinatorConversions.ConversionContext();
  sub_22BB34ED4(v50);
  v51 = sub_22BB2F324();
  v53 = sub_22BB5501C(v51, v52);
  sub_22BB3B574();
  v167 = v46;
  v165 = v44;
  sub_22BB550D0(v180, v53, &v185, v46 + v44);
  swift_endAccess();
  v54 = v185;
LABEL_9:
  v169 = v49 + 8;
  v65 = *(v54 + 16);
  v66 = MEMORY[0x277D84F90];
  if (v65)
  {
    v67 = v49[28];
    v181 = v49[27];
    v68 = v49[14];
    v186 = MEMORY[0x277D84F90];
    sub_22BB3B700();
    sub_22BB580B4();
    v70 = *(v68 + 16);
    v68 += 16;
    v69 = v70;
    v66 = v186;
    v71 = *(v68 + 64);
    sub_22BB2F390();
    v73 = v54 + v72;
    v74 = *(v68 + 56);
    do
    {
      v69(v49[29] + *(v181 + 20), v73, v49[13]);
      sub_22BDB43D4();
      v186 = v66;
      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      v54 = v75 + 1;
      if (v75 >= v76 >> 1)
      {
        sub_22BB2F158(v76);
        sub_22BD63494();
        sub_22BB580B4();
        v66 = v186;
      }

      v77 = v49[29];
      *(v66 + 16) = v54;
      v78 = *(v67 + 80);
      sub_22BB2F390();
      v79 = *(v67 + 72);
      sub_22BD628CC();
      sub_22BB3A518(v80, v81);
      v73 += v74;
      --v65;
    }

    while (v65);
  }

  v177 = v66;
  v182 = v49[28];
  v175 = v49[27];
  v82 = v49[23];
  v49[8] = v66;
  v83 = *(v66 + 16);
  log = *MEMORY[0x277D1E7E8];
  v84 = (v82 + 104);
  v85 = (v82 + 8);
  do
  {
    v86 = v83;
    if (!v83)
    {
      break;
    }

    if (v83 > *(v177 + 16))
    {
      __break(1u);
      v161 = *(v54 + 16);
      sub_22BB305BC();
      sub_22BB57F30();
      v54 = v162;
      v56 = *(v162 + 16);
      v55 = *(v162 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22BB2F138(v55);
        sub_22BB57F30();
        v54 = v163;
      }

      v58 = v184[14];
      v57 = v184[15];
      v59 = v184[13];

      *(v54 + 16) = v56 + 1;
      v60 = *(v58 + 32);
      v58 += 32;
      v61 = *(v58 + 48);
      sub_22BD62BA8();
      v63 = v54 + v62 + *(v58 + 40) * v56;
      v49 = v184;
      v64(v63, v57, v59);
      v185 = v54;
      goto LABEL_9;
    }

    v54 = v184[30];
    v88 = v184[24];
    v87 = v184[25];
    v89 = v184[22];
    --v83;
    v90 = *(v182 + 80);
    sub_22BB2F390();
    v92 = *(v91 + 72);
    sub_22BD628B4();
    sub_22BB335C0(v93, v54);
    v94 = v54 + *(v175 + 20);
    sub_22BDB9AD4();
    (*v84)(v88, log, v89);
    sub_22BB2F12C();
    LOBYTE(v94) = sub_22BDB9AF4();
    v95 = *v85;
    (*v85)(v88, v89);
    v96 = sub_22BB94E38();
    v95(v96);
    sub_22BB6FCE8();
    sub_22BB34648();
  }

  while ((v94 & 1) == 0);
  v97 = v184;
  v99 = v184[26];
  v98 = v184[27];
  *(swift_task_alloc() + 16) = v169;
  sub_22BB5817C(sub_22BD5EA48, v83, v86 == 0, type metadata accessor for EventPayloadWithPreassignedID, v99);

  sub_22BB36B74(v99);
  if (v100)
  {
    sub_22BB325EC(v184[26], &qword_27D8E63E8, &unk_22BDCE210);
  }

  else
  {
    v101 = v184[43];
    v102 = v184[44];
    v103 = v184[42];
    v104 = v184[31];
    v105 = v184[26];
    v106 = v184[21];
    v107 = v184[20];
    v108 = v184[19];
    v109 = v184[11];
    sub_22BD628CC();
    sub_22BB3A518(v110, v104);
    v164(v102, v167 + v165, v103);
    sub_22BDB5724();
    sub_22BC54D78();
    sub_22BDB93F4();
    sub_22BDB93E4();

    v111 = sub_22BB970E8();
    v112(v111, v108);
    v97 = v184;
    v113 = *(v101 + 8);
    v114 = sub_22BB35464();
    v115(v114);
    sub_22BB6FCE8();
    sub_22BB34648();
  }

  v117 = v97[48];
  v116 = v97[49];
  v119 = v97[46];
  v118 = v97[47];
  v120 = v97[45];
  v121 = v97[11];
  v122 = *(*v97[12] + 176);
  v123 = (v119 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));

  v124 = sub_22BDB5724();
  *v119 = v177;
  v119[1] = v124;
  v119[2] = v125;
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  sub_22BD64B6C();
  swift_storeEnumTagMultiPayload();
  *v123 = sub_22BB70024;
  v123[1] = 0;
  sub_22BB6BE18();
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  v126 = *(v117 + 8);
  v127 = sub_22BD00E3C();
  v128(v127);
  v129 = *(v177 + 16);
  if (v129)
  {
    v130 = v184[17];
    v186 = MEMORY[0x277D84F90];
    sub_22BB3B700();
    sub_22BB5838C();
    v34 = v186;
    v131 = *(v182 + 80);
    sub_22BB2F390();
    v133 = v177 + v132;
    v135 = *(v134 + 72);
    v35 = v184;
    do
    {
      v136 = v184[30];
      v137 = v184[18];
      v138 = v184[16];
      sub_22BD628B4();
      v139 = sub_22BC5448C();
      sub_22BB335C0(v139, v140);
      v141 = *(v130 + 16);
      v142 = sub_22BB6BE18();
      v143(v142);
      sub_22BB6FCE8();
      sub_22BB34648();
      v186 = v34;
      v145 = *(v34 + 16);
      v144 = *(v34 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_22BB2F158(v144);
        sub_22BD63494();
        sub_22BB5838C();
        v34 = v186;
      }

      v146 = v184[18];
      v147 = v184[16];
      *(v34 + 16) = v145 + 1;
      v148 = *(v130 + 80);
      sub_22BB2F390();
      (*(v130 + 32))(v34 + v149 + *(v130 + 72) * v145);
      v133 += v135;
      --v129;
    }

    while (v129);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
    v35 = v184;
  }

LABEL_28:
  v150 = v35[55];
  v151 = v35[52];
  v152 = v35[49];
  v153 = v35[46];
  v154 = v35[44];
  v155 = v35[41];
  v156 = v35[38];
  v158 = v35[34];
  v157 = v35[35];
  v166 = v35[31];
  v168 = v35[30];
  v170 = v35[29];
  v171 = v35[26];
  v172 = v35[25];
  loga = v35[24];
  v176 = v35[21];
  v178 = v35[18];
  v183 = v35[15];

  sub_22BB39738();

  return v159(v34);
}

uint64_t sub_22BB5501C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState;
  v6 = sub_22BDB96E4();
  sub_22BB2F330(v6);
  (*(v7 + 32))(v2 + v5, a1);
  v8 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox;
  v9 = sub_22BDB9C14();
  sub_22BB2F330(v9);
  (*(v10 + 32))(v2 + v8, a2);
  *(v2 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_statementIdIsInert) = 0;
  return v2;
}

uint64_t sub_22BB550D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v613 = a4;
  v624 = a3;
  v594 = a2;
  v5 = sub_22BDB5E64();
  v6 = sub_22BB33DA0(v5, &v589);
  v564 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v10);
  v11 = sub_22BDB50F4();
  v12 = sub_22BB33DA0(v11, v572);
  v547 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  sub_22BB30B8C(v16);
  v17 = sub_22BDB5064();
  v18 = sub_22BB33DA0(v17, v574);
  v549 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB30B8C(v22);
  v23 = sub_22BDB5084();
  v24 = sub_22BB33DA0(v23, v577);
  v553 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F39C();
  sub_22BB30B8C(v29);
  v30 = sub_22BDB5764();
  v31 = sub_22BB33DA0(v30, v638);
  v603 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F39C();
  sub_22BB2F14C(v37);
  v38 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v38);
  v40 = *(v39 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v41);
  sub_22BB30BA8();
  sub_22BB30B8C(v42);
  v43 = sub_22BDB5404();
  v44 = sub_22BB2F0C8(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB305A8();
  sub_22BB30B8C(v47);
  v48 = sub_22BDB90B4();
  v49 = sub_22BB2F0C8(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BB305A8();
  sub_22BB2F14C(v52);
  v53 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v53);
  v55 = *(v54 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v56);
  sub_22BB30BA8();
  sub_22BB30B8C(v57);
  v58 = sub_22BDB81A4();
  v59 = sub_22BB33DA0(v58, &v595);
  v568 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BB305A8();
  sub_22BB30B8C(v63);
  v64 = sub_22BDB9774();
  v65 = sub_22BB33DA0(v64, &v607);
  v578 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BB305A8();
  sub_22BB2F14C(v69);
  v70 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v70);
  v72 = *(v71 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v73);
  sub_22BB30BA8();
  sub_22BB30B8C(v74);
  v75 = sub_22BDB9B54();
  v76 = sub_22BB33DA0(v75, &v610);
  v566 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BB305A8();
  sub_22BB30B8C(v80);
  v81 = sub_22BDB5004();
  v82 = sub_22BB33DA0(v81, &v612);
  v582 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BB305A8();
  sub_22BB30B8C(v86);
  v87 = sub_22BDB9924();
  v88 = sub_22BB33DA0(v87, &v580);
  v556 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BB305A8();
  sub_22BB30B8C(v92);
  v93 = sub_22BDB9954();
  v94 = sub_22BB33DA0(v93, &v584);
  v559 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22BB305A8();
  sub_22BB30B8C(v98);
  v99 = sub_22BDB96E4();
  v100 = sub_22BB33DA0(v99, &v601);
  v573 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22BB305A8();
  sub_22BB30B8C(v104);
  v105 = sub_22BDB9C14();
  v106 = sub_22BB33DA0(v105, &v598);
  v570 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BB305A8();
  sub_22BB30B8C(v110);
  v111 = sub_22BDB7C34();
  v112 = sub_22BB33DA0(v111, &v604);
  v574[1] = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v116);
  sub_22BB2F39C();
  sub_22BB30B8C(v117);
  v118 = sub_22BDB8CE4();
  v119 = sub_22BB33DA0(v118, &v616);
  v585[1] = v120;
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  sub_22BB305A8();
  sub_22BB30B8C(v123);
  v124 = sub_22BDB5EB4();
  v125 = sub_22BB33DA0(v124, &v614);
  v584 = v126;
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v125);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v129);
  sub_22BB2F39C();
  sub_22BB2F14C(v130);
  v131 = sub_22BBE6DE0(&qword_27D8E67B0, &qword_22BDCEF48);
  sub_22BB2F0C8(v131);
  v133 = *(v132 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v134);
  sub_22BB30BA8();
  sub_22BB30B8C(v135);
  v136 = sub_22BDB86F4();
  v137 = sub_22BB2F0C8(v136);
  v139 = *(v138 + 64);
  MEMORY[0x28223BE20](v137);
  sub_22BB305A8();
  sub_22BB30B8C(v140);
  v141 = sub_22BDB77D4();
  v142 = sub_22BB30444(v141);
  v618 = v143;
  v619 = v142;
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v142);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v146);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v147);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v148);
  sub_22BB2F39C();
  sub_22BB30B8C(v149);
  v150 = sub_22BDB4FA4();
  v151 = sub_22BB33DA0(v150, v636);
  v601 = v152;
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v151);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v155);
  sub_22BB2F39C();
  sub_22BB30B8C(v156);
  v632 = sub_22BDB8304();
  v157 = sub_22BB30444(v632);
  v609 = v158;
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v157);
  sub_22BB305A8();
  v631 = v161;
  sub_22BB2F120();
  v630 = sub_22BDB4C34();
  v162 = sub_22BB30444(v630);
  i = v163;
  v165 = *(v164 + 64);
  MEMORY[0x28223BE20](v162);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v166);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v167);
  sub_22BB2F39C();
  v629 = v168;
  v169 = sub_22BBE6DE0(&qword_27D8E27B8, &unk_22BDBD9D0);
  sub_22BB2F0C8(v169);
  v171 = *(v170 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v172);
  sub_22BB30BA8();
  sub_22BB30B8C(v173);
  v626 = sub_22BDB86E4();
  v174 = sub_22BB30444(v626);
  v615 = v175;
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v174);
  sub_22BB305A8();
  v628 = v178;
  sub_22BB2F120();
  v179 = sub_22BDBA594();
  v180 = sub_22BB33DA0(v179, &v640);
  v610 = v181;
  v183 = *(v182 + 64);
  MEMORY[0x28223BE20](v180);
  sub_22BB30560();
  v627 = v184;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v185);
  sub_22BB2F39C();
  v620 = v186;
  v187 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v188 = sub_22BB2F0C8(v187);
  v190 = *(v189 + 64);
  MEMORY[0x28223BE20](v188);
  sub_22BB30560();
  v622 = v191;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v192);
  sub_22BB2F39C();
  v621 = v193;
  sub_22BB2F120();
  v194 = sub_22BDB5124();
  v195 = sub_22BB33DA0(v194, &v623);
  v591 = v196;
  v198 = *(v197 + 64);
  MEMORY[0x28223BE20](v195);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v199);
  sub_22BB2F39C();
  sub_22BB30B8C(v200);
  v201 = sub_22BDB4FB4();
  v202 = sub_22BB30444(v201);
  v204 = v203;
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v202);
  sub_22BB30560();
  v208 = v207;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v209);
  sub_22BB2F39C();
  v211 = v210;
  sub_22BB2F120();
  v633 = sub_22BDB9B14();
  v212 = sub_22BB30444(v633);
  v616 = v213;
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v212);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v216);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v217);
  sub_22BB2F384();
  v623 = v218;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v219);
  sub_22BB2F384();
  v625 = v220;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v221);
  sub_22BB2F384();
  v223 = v222;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v224);
  sub_22BB2F39C();
  sub_22BB30B8C(v225);
  v226 = sub_22BDB5154();
  v227 = sub_22BB30444(v226);
  v229 = v228;
  v231 = *(v230 + 64);
  MEMORY[0x28223BE20](v227);
  v233 = &v543 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB5734();
  v234 = (*(v229 + 88))(v233, v226);
  if (v234 == *MEMORY[0x277D1C6E8])
  {
    v235 = sub_22BB69374();
    v236(v235, v226);
    v237 = v201;
    (v204[4])(v211, v233, v201);
    (v204[2])(v208, v211, v201);
    v637[0] = type metadata accessor for SessionCoordinatorConversions.ConversionContext();
    sub_22BB30E3C();
    v240 = sub_22BB94F70(v238, v239);
    sub_22BB34180(v240);
    v241 = v595;
    sub_22BDB8914();
    if (v241)
    {
      v242 = v204[1];
      v243 = sub_22BB3ADA8();
      return v244(v243);
    }

    v320 = *MEMORY[0x277D1E758];
    sub_22BB38C00();
    v322 = *(v321 + 104);
    sub_22BBDB938();
    v323();
    v250 = v624;
    sub_22BB5410C();
    sub_22BB37E2C();
    v324 = v204[1];
    v325 = sub_22BB3ADA8();
    v326(v325);
    sub_22BB2F600();
    sub_22BB3670C();
    result = v328(v201 + v327 + *(v201 + 40) * v233, v223, v223);
LABEL_44:
    *v250 = v237;
    return result;
  }

  v544 = v233;
  if (v234 == *MEMORY[0x277D1C890])
  {
    v246 = sub_22BB373DC();
    v247(v246, v226);
    v248 = v591;
    v237 = v592;
    (*(v591 + 32))(v593, v233, v592);
    v249 = sub_22BDB5114();
    v251 = v623;
    v250 = v624;
    v252 = v595;
    v253 = v633;
    if (!v249)
    {
LABEL_28:
      v329 = *(v248 + 16);
      v330 = sub_22BB52F00();
      v331(v330, v593, v237);
      v637[0] = type metadata accessor for SessionCoordinatorConversions.ConversionContext();
      sub_22BB30E3C();
      v334 = sub_22BB94F70(v332, v333);
      sub_22BB34180(v334);
      sub_22BDB95F4();
      if (v252)
      {
        v335 = *(v248 + 8);
        v336 = sub_22BB3ADA8();
        return v337(v336);
      }

      v354 = *MEMORY[0x277D1E858];
      sub_22BB3A950(&v641);
      (*(v355 + 104))(v251);
      sub_22BB5410C();
      sub_22BB37E2C();
      v356 = *(v248 + 8);
      v357 = sub_22BB3ADA8();
      v358(v357);
      sub_22BB2F600();
      v204[9];
      result = (v204[4])(v237 + ((*(v204 + 80) + 32) & ~*(v204 + 80)), v251, v253);
      goto LABEL_44;
    }

    v254 = 0;
    v596 = v249;
    v257 = *(v249 + 64);
    v255 = v249 + 64;
    v256 = v257;
    v258 = 1 << *(v255 - 32);
    v259 = -1;
    if (v258 < 64)
    {
      v259 = ~(-1 << v258);
    }

    v260 = v259 & v256;
    v261 = (v258 + 63) >> 6;
    v618 = v610 + 16;
    v617 = (v610 + 32);
    v607 = i + 16;
    v606 = (v615 + 16);
    v605 = v609 + 16;
    LODWORD(v604) = *MEMORY[0x277D1E708];
    v603 = v616 + 104;
    v602 = v609 + 8;
    v601 = i + 8;
    v600 = v615 + 8;
    v599 = v610 + 8;
    v598 = v616 + 32;
    v262 = &qword_27D8E27E8;
    v597 = xmmword_22BDBCBD0;
    v263 = v614;
    v609 = v255;
    for (i = v261; ; v261 = i)
    {
      v264 = v621;
      v265 = v622;
      if (!v260)
      {
        break;
      }

      v266 = v254;
LABEL_15:
      v267 = __clz(__rbit64(v260));
      v260 &= v260 - 1;
      v268 = v267 | (v266 << 6);
      v269 = (*(v596 + 48) + 16 * v268);
      v271 = *v269;
      v270 = v269[1];
      v272 = v610;
      v273 = v620;
      (*(v610 + 16))(v620, *(v596 + 56) + *(v610 + 72) * v268, v263);
      v204 = &qword_22BDBF4C0;
      v274 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v275 = *(v274 + 48);
      v276 = v622;
      *v622 = v271;
      *(v276 + 1) = v270;
      v265 = v276;
      (*(v272 + 32))(&v276[v275], v273, v263);
      sub_22BB336D0(v265, 0, 1, v274);

      v251 = v623;
      v250 = v624;
      v264 = v621;
LABEL_16:
      sub_22BBF1708(v265, v264);
      v277 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      if (sub_22BB3AA28(v264, 1, v277) == 1)
      {

        v252 = v595;
        v253 = v633;
        v237 = v592;
        v248 = v591;
        goto LABEL_28;
      }

      v278 = v264[1];
      v619 = *v264;
      v279 = v264 + *(v277 + 48);
      v280 = v627;
      (*v617)(v627, v279, v263);
      sub_22BB94F70(&qword_28142DD18, MEMORY[0x277D1C338]);
      v281 = v263;
      v282 = v630;
      sub_22BDBAB14();
      (*v618)(v620, v280, v281);
      v283 = sub_22BDB4BB4();
      sub_22BB3922C(v283, v284, v285, v283);
      v286 = v628;
      sub_22BDB86C4();
      sub_22BB38838();
      sub_22BDB98E4();

      v287 = v629;
      v250 = v624;
      sub_22BDB4C14();
      sub_22BB30F88(v638);
      v288 = v282;
      v289 = v626;
      v290(v612, v287, v288);
      sub_22BBE6DE0(&qword_27D8E67C0, &unk_22BDCEF50);
      v291 = v615;
      v292 = *(v615 + 72);
      v293 = (*(v615 + 80) + 32) & ~*(v615 + 80);
      v294 = swift_allocObject();
      *(v294 + 16) = v597;
      (*(v291 + 16))(v294 + v293, v286, v289);
      v295 = v631;
      sub_22BDB82E4();
      sub_22BB30F88(v637);
      v296 = v625;
      v297(v625, v295, v632);
      sub_22BB30F88(v635);
      v298(v296, v604, v633);
      v299 = *v250;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v308 = *(v299 + 16);
        sub_22BB57F30();
        v299 = v309;
      }

      v300 = *(v299 + 16);
      v263 = v614;
      v262 = &qword_27D8E27E8;
      if (v300 >= *(v299 + 24) >> 1)
      {
        sub_22BB57F30();
        v299 = v310;
      }

      sub_22BB30F88(&v634);
      v301(v631, v632);
      sub_22BB30F88(&v633);
      v302(v629, v630);
      sub_22BB30F88(&v632);
      v303(v628, v626);
      sub_22BB30F88(&v631);
      v304(v627, v263);
      *(v299 + 16) = v300 + 1;
      (*(v616 + 4))(v299 + ((v616[80] + 32) & ~v616[80]) + *(v616 + 9) * v300, v625, v633);
      *v250 = v299;
      v251 = v623;
      v255 = v609;
    }

    while (1)
    {
      v266 = v254 + 1;
      if (__OFADD__(v254, 1))
      {
        break;
      }

      if (v266 >= v261)
      {
        v204 = &qword_22BDBF4C0;
        v305 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
        sub_22BB3922C(v305, v306, v307, v305);
        v260 = 0;
        goto LABEL_16;
      }

      v260 = *(v255 + 8 * v266);
      ++v254;
      if (v260)
      {
        v254 = v266;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v234 == *MEMORY[0x277D1C8C0])
  {
    v311 = *MEMORY[0x277D1E868];
    sub_22BB38C00();
    v313 = *(v312 + 104);
    v314 = v617;
    sub_22BBDB938();
    v315();
    v316 = v624;
    sub_22BB5410C();
    sub_22BB37E2C();
    v317 = *v316;
    *(*v316 + 16) = v233 + 1;
    sub_22BB3670C();
    v319(v317 + v318 + *(v201 + 40) * v233, v314, v223);
    *v316 = v317;
    return (*(v229 + 8))(v544, v226);
  }

  v340 = v234 == *MEMORY[0x277D1C8B8] || v234 == *MEMORY[0x277D1C870] || v234 == *MEMORY[0x277D1C888] || v234 == *MEMORY[0x277D1C860];
  v341 = v619;
  v342 = v607;
  if (v340)
  {
    goto LABEL_41;
  }

  if (v234 == *MEMORY[0x277D1C6D8])
  {
    v359 = sub_22BB373DC();
    v360(v359);
    (*(v601 + 32))(v606, v233, v604);
    sub_22BB588C4(&v619);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    v361 = sub_22BDB77C4();
    v362 = sub_22BDBB134();
    if (os_log_type_enabled(v361, v362))
    {
      v229 = swift_slowAlloc();
      *v229 = 0;
      _os_log_impl(&dword_22BB2C000, v361, v362, "Running prescribed plan. Ignoring any configured planner override", v229, 2u);
      sub_22BB30AF0();
    }

    v363 = *(v618 + 8);
    v618 += 8;
    v630 = v363;
    v363(v342, v341);
    sub_22BB38838();
    sub_22BB3E368(&v639);
    sub_22BDB98D4();

    sub_22BB33404(&v627);
    sub_22BDB95E4();
    v364 = v617;
    sub_22BDB95D4();
    v365 = *MEMORY[0x277D1E858];
    v366 = v616;
    v367 = v616 + 104;
    v631 = *(v616 + 13);
    sub_22BBDB938();
    v368();
    v369 = v624;
    sub_22BB5410C();
    sub_22BB37E2C();
    sub_22BB2F600();
    v370 = *(v366 + 4);
    v366 += 32;
    v632 = v370;
    v251 = (v366[48] + 32) & ~v366[48];
    v371 = *(v366 + 5);
    (v370)(v229 + v251 + v371 * v361, v364, v223);
    *v369 = v229;
    v372 = sub_22BDB6324();
    v265 = v589;
    sub_22BB3922C(v372, v373, v374, v372);
    v375 = sub_22BDB8F84();
    sub_22BDB8F94();
    sub_22BDB8F74();
    v376 = *MEMORY[0x277D1E808];
    v628 = v367;
    v631(v364, v376, v223);
    sub_22BB5410C();
    sub_22BB37E2C();
    sub_22BB2F600();
    v629 = v371;
    v377 = v265 + v251 + v375 * v371;
    v262 = v366;
    v263 = v223;
    (v632)(v377, v364, v223);
    *v369 = v265;
    sub_22BDB4F94();
    v379 = v378;
    v254 = v597;
    v380 = v595;
    sub_22BDB9574();
    v264 = v380;
    if (v380)
    {

      v381 = v598;
LABEL_67:
      sub_22BB33404(&v632);
      _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
      v401 = v601;
      v402 = v604;
      (*(v601 + 16))(v381, v606, v604);
      v403 = v264;
      v404 = sub_22BDB77C4();
      v405 = sub_22BDBB114();

      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        v632 = swift_slowAlloc();
        v633 = swift_slowAlloc();
        v634 = v633;
        *v406 = 136315394;
        v407 = sub_22BDB4F94();
        v408 = v381;
        v410 = v409;
        v411 = *(v401 + 8);
        v411(v408, v604);
        v412 = sub_22BB32EE0(v407, v410, &v634);

        *(v406 + 4) = v412;
        *(v406 + 12) = 2112;
        v413 = v264;
        v414 = _swift_stdlib_bridgeErrorToNSError();
        *(v406 + 14) = v414;
        v415 = v632;
        *v632 = v414;
        _os_log_impl(&dword_22BB2C000, v404, v405, "Prescribed plan failed to parse: %s): %@", v406, 0x16u);
        sub_22BB58728(v415, &unk_27D8E6A70, &unk_22BDBCDB0);
        sub_22BB30AF0();
        sub_22BB32FA4(v633);
        sub_22BB30AF0();
        v402 = v604;
        sub_22BB30AF0();

        v416 = v600;
      }

      else
      {

        v411 = *(v401 + 8);
        v411(v381, v402);
        v416 = v379;
      }

      v630(v416, v619);
      sub_22BD77168();
      swift_allocError();
      *v417 = 1;
      swift_willThrow();

      return (v411)(v606, v402);
    }

LABEL_65:
    v627 = v251;
    v616 = v262;

    sub_22BB38838();
    sub_22BB3A210(&v617);
    sub_22BDB8CC4();
    v379 = v265;
    sub_22BDB8CD4();
    v381 = v598;
    if (!v264)
    {
      v437 = v594;
      (*(v570 + 16))(v571, v594 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox, v572[0]);
      (*(v573 + 16))(v572[1], v437 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState, v574[0]);
      v438 = v575;
      sub_22BDB7C24();
      sub_22BB2F2E0(&v602);
      v440 = v576;
      (*(v439 + 16))(v569[1], v438, v576);
      sub_22BDB7C14();
      v470 = v606;
      v630 = sub_22BDB4F94();
      v626 = v471;
      (*(v556 + 104))(v558, *MEMORY[0x277D1E6A8], v557);
      sub_22BB33404(&v579);
      sub_22BDB9944();
      v542 = v470;
      sub_22BB3A950(&v582);
      sub_22BDB9934();
      v472 = v559;
      v473 = v617;
      (*(v559 + 16))(v617, v440, v560);
      v474 = v263;
      v631(v473, *MEMORY[0x277D1E6F8], v263);
      v475 = v624;
      sub_22BB5410C();
      sub_22BB37E2C();
      v476 = *(v472 + 8);
      v477 = sub_22BB3B488();
      v478(v477);
      (*(v251 + 8))(v575, v576);
      sub_22BB34EAC(&v615);
      v479 = sub_22BB37108();
      v480(v479);
      sub_22BB34EAC(&v613);
      v481(v597, v585[0]);
      sub_22BB34EAC(&v633);
      v482(v606, v604);
      v483 = *v475;
      *(v483 + 16) = v473 + 1;
      result = (v632)(v483 + v627 + v473 * v629, v617, v474);
      *v475 = v483;
      return result;
    }

    sub_22BB34EAC(&v615);
    v399(v265, v586);
    sub_22BB34EAC(&v613);
    v400(v254, v585[0]);
    goto LABEL_67;
  }

  v382 = v234 == *MEMORY[0x277D1C768] || v234 == *MEMORY[0x277D1C858];
  v383 = v382 || v234 == *MEMORY[0x277D1C760];
  if (v383 || v234 == *MEMORY[0x277D1C690])
  {
LABEL_41:
    (*(v229 + 8))(v544, v226);
    sub_22BB2F2E0(v637);
    sub_22BDB63E4();
    v343 = v603;
    v344 = *(v603 + 2);
    v345 = v602;
    v344(v602, a1, v342);
    v346 = sub_22BDB77C4();
    v347 = sub_22BDBB124();
    if (os_log_type_enabled(v346, v347))
    {
      v348 = swift_slowAlloc();
      v633 = swift_slowAlloc();
      v634 = v633;
      *v348 = 136315138;
      v349 = sub_22BB3B488();
      (v344)(v349);
      v350 = sub_22BDBAC14();
      v352 = v351;
      v343[1](v345, v342);
      v353 = sub_22BB32EE0(v350, v352, &v634);

      *(v348 + 4) = v353;
      _os_log_impl(&dword_22BB2C000, v346, v347, "Client is not expected to post message %s", v348, 0xCu);
      sub_22BB32FA4(v633);
      sub_22BB30AF0();
      sub_22BB30AF0();

      return (*(v618 + 8))(v605, v619);
    }

    else
    {

      v343[1](v345, v342);
      return (*(v618 + 8))(v226, v341);
    }
  }

  if (v234 != *MEMORY[0x277D1C728])
  {
    if (v234 != *MEMORY[0x277D1C6D0])
    {
      v418 = v594;
      if (v234 == *MEMORY[0x277D1C880])
      {
        v419 = sub_22BB373DC();
        v420(v419);
        sub_22BB588C4(v588);
        v422 = v562;
        v423 = v233;
        v424 = v565;
        (*(v421 + 32))(v562, v423, v565);
        v425 = *(v342 + 16);
        v426 = sub_22BB52F00();
        v427(v426, v422, v424);
        v428 = *MEMORY[0x277D1E840];
        sub_22BB38C00();
        v430 = *(v429 + 104);
        sub_22BBDB938();
        v431();
        v432 = v624;
        sub_22BB5410C();
        v433 = *(*v432 + 16);
        sub_22BB58054(v433);
        (*(v342 + 8))(v422, v424);
        v434 = *v432;
        *(*v432 + 16) = v433 + 1;
        sub_22BB3670C();
        result = v436(v434 + v435 + *(v201 + 40) * v433, v418, v223);
        *v432 = v434;
        return result;
      }

      v460 = v624;
      v461 = v617;
      v462 = v616;
      if (v234 != *MEMORY[0x277D1C720])
      {
        v484 = v544;
        if (v234 == *MEMORY[0x277D1C778])
        {
          v485 = sub_22BB69374();
          v486(v485);
          sub_22BB3E368(&v576);
          v488 = v552;
          v489 = v554;
          (*(v487 + 32))(v552);
          v484[2](v551, v488, v489);
          v637[0] = type metadata accessor for SessionCoordinatorConversions.ConversionContext();
          sub_22BB30E3C();
          v637[1] = sub_22BB94F70(v490, v491);
          v634 = v418;

          sub_22BB3A950(&v578);
          v492 = v595;
          sub_22BDB8D94();
          if (v492)
          {
            return (v484[1])(v488, v489);
          }

          v528 = v633;
          (*(v462 + 13))(v418, *MEMORY[0x277D1E7C8], v633);
          sub_22BB5410C();
          sub_22BB36EAC(*v460);
          (v484[1])(v488, v489);
          v529 = sub_22BB32538();
          result = v530(v529, v555, v528);
          *v460 = v460;
          return result;
        }

        if (v234 == *MEMORY[0x277D1C770])
        {
          v493 = sub_22BB69374();
          v494(v493);
          sub_22BB2F2E0(&v573);
          v496 = *(v495 + 32);
          v497 = sub_22BB52F00();
          v498(v497, v484, v550);
          sub_22BB38838();
          sub_22BB3E368(&v639);
          sub_22BDB98D4();

          sub_22BB3A210(v590);
          sub_22BDB5044();
          sub_22BDB5054();
          sub_22BDB8D64();
          v499 = *MEMORY[0x277D1E7C0];
          v500 = sub_22BB38EE4();
          v501 = v633;
          v502(v500);
          v503 = v460;
          sub_22BB5410C();
          sub_22BB36EAC(*v460);
          v504 = *(v226 + 8);
          v505 = sub_22BB3B488();
          v506(v505);
          v507 = sub_22BB32538();
          v509 = v461;
          v510 = v501;
        }

        else
        {
          if (v234 != *MEMORY[0x277D1C878])
          {
            if (v234 != *MEMORY[0x277D1C748])
            {
              sub_22BB3E368(v569);
              sub_22BDB63E4();
              v531 = *(v603 + 2);
              v531(v546, a1, v607);
              v532 = sub_22BDB77C4();
              LODWORD(v633) = sub_22BDBB124();
              if (os_log_type_enabled(v532, v633))
              {
                v533 = swift_slowAlloc();
                v632 = swift_slowAlloc();
                v634 = v632;
                *v533 = 136315138;
                v534 = v546;
                v535 = v607;
                v531(v599, v546, v607);
                v536 = sub_22BDBAC14();
                v538 = v537;
                sub_22BB34EAC(v635);
                v539(v534, v535);
                v540 = sub_22BB32EE0(v536, v538, &v634);

                *(v533 + 4) = v540;
                _os_log_impl(&dword_22BB2C000, v532, v633, "Client posted unknown message %s", v533, 0xCu);
                sub_22BB32FA4(v632);
                sub_22BB30AF0();
                sub_22BB30AF0();
              }

              else
              {

                sub_22BB34EAC(v635);
                v541(v546, v607);
              }

              (*(v618 + 8))(v545, v619);
            }

            return (*(v229 + 8))(v544, v226);
          }

          v511 = sub_22BB69374();
          v512(v511);
          sub_22BB3A210(&v571);
          v514 = *(v513 + 32);
          v515 = sub_22BB52F00();
          v516(v515, v484, v548);
          v517 = sub_22BDB50D4();
          v519 = v518;
          v520 = MEMORY[0x23189F0B0]();
          MEMORY[0x2318A3400](v517, v519, v520);
          v521 = *MEMORY[0x277D1E848];
          v522 = sub_22BB38EE4();
          v523 = v633;
          v524(v522);
          v503 = v460;
          sub_22BB5410C();
          sub_22BB36EAC(*v460);
          v525 = *(v229 + 8);
          v526 = sub_22BB3B488();
          v527(v526);
          v507 = sub_22BB32538();
          v509 = v461;
          v510 = v523;
        }

        result = v508(v507, v509, v510);
        *v460 = v503;
        return result;
      }

      sub_22BDB8BD4();
      v463 = *MEMORY[0x277D1E790];
      v464 = sub_22BB38EE4();
      v465 = v633;
      v466(v464);
      sub_22BB5410C();
      sub_22BB36EAC(*v460);
      v467 = sub_22BB32538();
      v468(v467, v461, v465);
      *v460 = v460;
      return (*(v229 + 8))(v544, v226);
    }

    goto LABEL_41;
  }

  v385 = sub_22BB373DC();
  v386(v385);
  sub_22BB2F2E0(v611);
  v388 = v583;
  (*(v387 + 32))(v587, v233, v583);
  sub_22BB3E368(&v605);
  sub_22BDB96A4();
  v389 = v233;
  v390 = sub_22BDB9744();
  sub_22BB34EAC(&v606);
  v392 = v391(v233, v579);
  MEMORY[0x28223BE20](v392);
  v634 = v390;
  v393 = sub_22BD76D2C(sub_22BD77110, (&v543 - 4), v390);
  MEMORY[0x28223BE20](v393);
  v542 = &v634;
  sub_22BB33404(&i);
  sub_22BD5DE2C(v394, v395, v396, v397);

  v398 = v581;
  if (sub_22BB3AA28(v389, 1, v581) == 1)
  {
    sub_22BB58728(v389, &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    sub_22BB3A210(&v592);
    (*(v441 + 32))(v580, v389, v398);
    sub_22BB588C4(&v591);
    sub_22BDB9B24();
    sub_22BB38C00();
    v443 = v633;
    if ((*(v442 + 88))(v390, v633) == *MEMORY[0x277D1E7A0])
    {
      (*(v201 + 96))(v390, v443);
      v444 = v561;
      (*(v568 + 32))(v561, v390, v569[0]);
      v445 = sub_22BDB43E4();
      sub_22BB336D0(v567, 1, 1, v445);
      v446 = sub_22BDB8194();
      v631 = v447;
      v632 = v446;
      sub_22BB3E368(v590);
      sub_22BDB4FE4();
      v448 = sub_22BDB53F4();
      sub_22BB336D0(v563, 1, 1, v448);
      sub_22BB3A210(&v586);
      sub_22BDB90A4();
      sub_22BB38838();
      sub_22BB3E368(&v639);
      sub_22BDB98D4();

      sub_22BB3A950(v585);
      sub_22BDB8174();
      sub_22BB588C4(&v642);
      sub_22BDB87C4();
      v449 = *MEMORY[0x277D1E798];
      v450 = sub_22BB38EE4();
      v451 = v633;
      v452(v450);
      v453 = v624;
      sub_22BB5410C();
      v454 = *(*v453 + 16);
      sub_22BB58054(v454);
      sub_22BB34EAC(&v594);
      v455(v444, v569[0]);
      (v544)(v580, v581);
      v456 = *v453;
      *(*v453 + 16) = v454 + 1;
      sub_22BB3670C();
      v458(v456 + v457 + *(v201 + 40) * v454, v390, v451);
      *v453 = v456;
      sub_22BB34EAC(v611);
      return v459(v587, v583);
    }

    (v544)(v580, v398);
    (*(v201 + 8))(v390, v443);
  }

  sub_22BD77168();
  swift_allocError();
  *v469 = 0;
  swift_willThrow();
  return (*(v226 + 8))(v587, v388);
}

void sub_22BB57F30()
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
  sub_22BB36EDC(v2, v5, &qword_27D8E66C0, &qword_22BDCE790);
  sub_22BB38F5C();
  v9 = sub_22BDB9B14();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD279B8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BB57FF8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_22BB5806C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_22BB580B4()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

uint64_t sub_22BB5810C()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22BB5811C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void sub_22BB58138()
{

  sub_22BD454DC();
}

void *sub_22BB5817C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  if (a3)
  {
    a4(0);
    v7 = sub_22BB36B68();
    return sub_22BB336D0(v7, v8, 1, v9);
  }

  else
  {
    v15 = a2;
    result = a1(a5, &v15);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      v11 = sub_22BB72084();
      return sub_22BB336D0(v11, v12, v13, v14);
    }
  }

  return result;
}

uint64_t sub_22BB58238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB43E4();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = sub_22BDB9B14();
    v12 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BB582E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB43E4();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = sub_22BDB9B14();
    v10 = v3 + *(a3 + 20);
  }

  return sub_22BB3AA28(v10, a2, v9);
}

void sub_22BB5837C()
{
  v3 = v0[6];
  *(v2 - 176) = v1;
  *(v2 - 168) = v3;
  v4 = v0[7];
  v5 = v0[8];
}

void sub_22BB5838C()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

uint64_t sub_22BB583E4()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_sessionState;
  v2 = sub_22BDB96E4();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_toolbox;
  v5 = sub_22BDB9C14();
  sub_22BB2F330(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_22BB584B0()
{
  sub_22BB2F0D4();
  v1 = *v0;
  sub_22BB33FF4();
  *v3 = v2;
  v4 = v1[11];
  v5 = *v0;
  sub_22BB3053C();
  *v6 = v5;
  *(v8 + 96) = v7;

  v9 = v1[9];
  v10 = v1[8];

  return MEMORY[0x2822009F8](sub_22BB585C8, v10, v9);
}

uint64_t sub_22BB585C8()
{
  sub_22BB2F35C();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  sub_22BB39738();
  v7 = v0[12];

  return v6(v7);
}

uint64_t sub_22BB58694()
{
  v2 = *(v0 - 160);
  result = *(v0 - 152);
  v3 = *(v0 - 128);
  return result;
}

uint64_t sub_22BB586D8(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB58704@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = *(a1 + 296);
  result = a10[35];
  v12 = a10[32];
  v13 = *(a10[33] + 8);
  return result;
}

uint64_t sub_22BB58728(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BBE6DE0(a2, a3);
  sub_22BB2F330(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22BB58780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BBE6DE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22BB58810()
{

  return sub_22BC55A68(v0, v1 - 88);
}

uint64_t sub_22BB58844()
{
  result = *(v0 - 256);
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22BB588AC()
{
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  return v1 + v3;
}

uint64_t sub_22BB588F4(uint64_t a1)
{

  return sub_22BB336D0(v1, 1, 1, a1);
}

uint64_t sub_22BB58924()
{

  return swift_allocError();
}

uint64_t sub_22BB58954()
{
  v12 = v0[207];
  v13 = v0[206];
  v14 = v0[205];
  v15 = v0[204];
  v16 = v0[203];
  v17 = v0[202];
  v18 = v0[201];
  v19 = v0[200];
  v20 = v0[199];
  v21 = v0[198];
  v22 = v0[197];
  v23 = v0[196];
  v24 = v0[195];
  v25 = v0[192];
  v26 = v0[191];
  v27 = v0[188];
  v28 = v0[187];
  v29 = v0[186];
  v30 = v0[185];
  v31 = v0[184];
  v32 = v0[181];
  v33 = v0[180];
  v34 = v0[179];
  v35 = v0[178];
  v36 = v0[177];
  v3 = v0[167];
  *(v1 - 216) = v0[170];
  *(v1 - 208) = v3;
  v4 = v0[161];
  *(v1 - 200) = v0[164];
  *(v1 - 192) = v4;
  v5 = v0[159];
  *(v1 - 184) = v0[160];
  *(v1 - 176) = v5;
  v6 = v0[155];
  *(v1 - 168) = v0[156];
  *(v1 - 160) = v6;
  v7 = v0[151];
  *(v1 - 152) = v0[154];
  *(v1 - 144) = v7;
  v8 = v0[149];
  *(v1 - 136) = v0[150];
  *(v1 - 128) = v8;
  v9 = v0[145];
  *(v1 - 120) = v0[146];
  *(v1 - 112) = v9;
  v10 = v0[139];
  *(v1 - 104) = v0[142];
  *(v1 - 96) = v10;
}

uint64_t sub_22BB58A70(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB69FEC((v2 - 88), a2);

  return sub_22BB69088(v3, v2 - 128);
}

void sub_22BB58A9C()
{
  *(v0 - 232) = 0;
  *(v0 - 280) = 0;
  *(v0 - 320) = 0;
}

uint64_t sub_22BB58AEC()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_22BB58B08()
{
  result = v0 - 104;
  v2 = *(v0 - 136);
  return result;
}

void sub_22BB58B20()
{
  v3 = *(v2 - 88);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v1 + 72);
}

uint64_t sub_22BB58B50(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_22BB58B5C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(*(v0 + 272) + *(*(v0 + 256) + 32));
  v9 = *(*(v0 + 176) + 16);
  return *(v0 + 184);
}

uint64_t sub_22BB58BA4()
{

  return swift_allocObject();
}

uint64_t sub_22BB58BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);

  return swift_beginAccess();
}

uint64_t sub_22BB58BFC()
{
  result = v0[39];
  v2 = v0[36];
  v3 = *(v0[37] + 8);
  return result;
}

uint64_t sub_22BB58C0C@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 24) < 1)
  {
    v7 = type metadata accessor for SessionCoordinatorCommand(0);
    v5 = a1;
    v6 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD5E440(type metadata accessor for SessionCoordinatorCommand, &unk_27D8E6590, &unk_22BDCE490, type metadata accessor for SessionCoordinatorCommand);
    }

    v3 = *v1;
    v4 = type metadata accessor for SessionCoordinatorCommand(0);
    sub_22BB89A2C((v3 + 16), v3 + ((*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80)), a1);
    v5 = a1;
    v6 = 0;
    v7 = v4;
  }

  return sub_22BB336D0(v5, v6, 1, v7);
}

uint64_t sub_22BB58D10()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 160);
  return result;
}

void sub_22BB58D38()
{
  v1 = *(*(v0 - 144) + 2768);
  v2 = *(*(v0 - 144) + 2760);
  v3 = *(*(v0 - 144) + 2752);
  v4 = *(*(v0 - 144) + 2624);
  v5 = *(*(v0 - 144) + 2616);
  v6 = *(*(v0 - 144) + 2608);
  v7 = *(*(v0 - 144) + 2480);
}

uint64_t sub_22BB58D74()
{
  sub_22BB35760();
  v1 = sub_22BDB5664();
  v2 = sub_22BB2F0C8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = v6 - v5;
  v0();
  sub_22BDB5624();
  sub_22BB3A788();
  sub_22BB6B8A8(v7);
  return sub_22BB31F54();
}

void sub_22BB58E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v17 = v13;
  sub_22BD631D0();
  v18 = *(v13 + 4304);
  v19 = *(v13 + 4288);
  sub_22BB2F164(v19);
  v3000 = v13;
  if (v146)
  {
    v15 = *(v13 + 4892);
    v31 = *(v13 + 4344);
    v12 = *(v17 + 4104);
    v20 = *(v17 + 3144);
    v21 = *(v17 + 3128);
    v22 = *(v17 + 3112);
    v14 = *(v17 + 3104);
    sub_22BB325EC(v19, &qword_27D8E6520, &qword_22BDCE430);
    v23 = (v31 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
    sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
    v24 = sub_22BD60FD4();
    v25 = sub_22BD5B890(v24, 1);
    v27 = v26;
    (*(v22 + 104))(v21, v15, v14);
    sub_22BD74A58(v21, v27);
    v28 = *(v22 + 8);
    v16 = (v22 + 8);
    v29 = sub_22BB2F0E0();
    v30(v29);
    v31->n128_u64[0] = v25;
    v31->n128_u64[1] = 0;
    v31[1].n128_u64[0] = 0xE000000000000000;
    sub_22BB37074();
    swift_storeEnumTagMultiPayload();
    *v23 = sub_22BB70024;
    v23[1] = 0;
    v17 = v3000;
    sub_22BB3627C();
    v34 = swift_storeEnumTagMultiPayload();
  }

  else
  {
    v31 = *(v13 + 4336);
    v32 = sub_22BB362AC();
    v34 = sub_22BB3A518(v32, v33);
  }

  sub_22BD64674(v34, sub_22BB896B4);
  sub_22BB35CBC();
  sub_22BB34648();
  v35 = *(v17 + 4520);
LABEL_5:
  sub_22BD61A24();
  while (2)
  {
    sub_22BD61A78();
    *(v17 + 4520) = v35;
    sub_22BD62D9C();
    sub_22BBBFF9C(v12);
    if (v146)
    {
      sub_22BB325EC(*(v17 + 4296), &qword_27D8E6520, &qword_22BDCE430);
      v2303 = *(MEMORY[0x277D857A0] + 4);
      v2304 = swift_task_alloc();
      v2305 = sub_22BB980E8(v2304);
      *v2305 = v2306;
      sub_22BB6BE8C();
      sub_22BD63350();
      sub_22BB33430();

      MEMORY[0x2822003F0](v2307, v2308, v2309, v2310, v2311, v2312, v2313, v2314, a9, a10, a11, a12);
      return;
    }

    v36 = sub_22BD61F60();
    sub_22BB3A518(v36, v31);
    sub_22BDB6124();
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB758D8();
    *(v37 + 16) = v38;
    *(v37 + 24) = v15;
    v39 = sub_22BB3B69C();
    sub_22BB335C0(v39, v40);
    sub_22BD62438();
    swift_allocObject();
    sub_22BD64D5C();
    v41 = sub_22BD64D74();
    sub_22BB3A518(v41, v42);

    sub_22BDB7724();
    v2992 = sub_22BDB7744();
    LODWORD(v2990) = sub_22BDBB1D4();
    sub_22BD616A8();
    v15 = swift_allocObject();
    sub_22BD6250C(v15);
    sub_22BD616A8();
    v43 = swift_allocObject();
    sub_22BBC0370(v43);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F7DC();
    *(v44 + 16) = v45;
    *(v44 + 24) = v12;
    sub_22BB322B0();
    v46 = swift_allocObject();
    sub_22BB3CEDC(v46);
    sub_22BD616A8();
    v47 = swift_allocObject();
    sub_22BD62B48(v47);
    sub_22BD616A8();
    v48 = swift_allocObject();
    sub_22BD64CFC(v48);
    sub_22BB322B0();
    v49 = swift_allocObject();
    sub_22BD601AC(v49);
    sub_22BB322B0();
    v35 = swift_allocObject();
    sub_22BB69C9C(v35);
    *(v17 + 4528) = sub_22BBE6DE0(&qword_27D8E6548, &qword_22BDCE458);
    v31 = sub_22BB970B4();
    sub_22BB3B5F8(v31);
    v50[4] = v51;
    v50[5] = v15;
    v50[6] = sub_22BB89C08;
    v50[7] = v16;
    v50[8] = sub_22BB89C68;
    v50[9] = v46;
    v50[10] = sub_22BB89C08;
    v50[11] = v14;
    v50[12] = sub_22BB89C08;
    v50[13] = v12;
    v50[14] = sub_22BB89C7C;
    v50[15] = v35;

    if (sub_22BDBB244())
    {
      sub_22BB73F58("CommandProcess", &v3009);
      sub_22BD62384();
      v52 = sub_22BD619F0();
      sub_22BD5F9D4(v52);
      *(v17 + 1440) = v15;
      v53 = sub_22BB39404();
      sub_22BB67984(v53, v54, v55, v56);
      if (!v3001)
      {
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v16;
        v57 = sub_22BB39404();
        sub_22BB67984(v57, v58, v59, v60);
        *(v17 + 1432) = sub_22BB89C68;
        *(v17 + 1440) = v46;
        v61 = sub_22BB39404();
        sub_22BB67984(v61, v62, v63, v64);
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v14;
        v65 = sub_22BB39404();
        sub_22BB67984(v65, v66, v67, v68);
        *(v17 + 1432) = sub_22BB89C08;
        *(v17 + 1440) = v12;
        v69 = sub_22BB39404();
        sub_22BB67984(v69, v70, v71, v72);
        *(v17 + 1432) = sub_22BB89C7C;
        *(v17 + 1440) = v35;
        v73 = sub_22BB39404();
        sub_22BB67984(v73, v74, v75, v76);
        sub_22BD63C54();

        sub_22BDB7714();
        sub_22BD61E34();
        sub_22BD62418();
        sub_22BD65380(v77, v78, v79, v80, v81, "[SessionCoordinator %{public}s] | Begin processing command %{public}s.");
        sub_22BD619D4();
        sub_22BD6193C();
        sub_22BB679C0();
      }

      goto LABEL_406;
    }

    sub_22BD61C8C();
    v82 = sub_22BBC49A8();
    sub_22BB92AA4();
    sub_22BD62218();
    v2936 = v83;
    v2926 = v84;
    v84();
    sub_22BB2F3FC();
    v2942 = v82;
    v85 = sub_22BDB7784();
    *(v17 + 4544) = v85;
    v86 = sub_22BD61AB0();
    v2950 = v87;
    (v87)(v86);
    v88 = *(v14 + 8);
    v14 += 8;
    v18 = v88;
    v89 = sub_22BB32E04();
    (v88)(v89);
    v90 = sub_22BB39368();
    sub_22BB335C0(v90, v31);
    sub_22BD63410();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BD63900();
        v168 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
        v169 = (v85 + v168[20]);
        v2836 = *v169;
        v2838 = v169[1];
        v170 = *(v85 + v168[24]);
        v171 = sub_22BD63110(v168[16]);
        sub_22BB6BEE0(v171, v172, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB63E4();
        sub_22BB322B0();
        v173 = swift_allocObject();
        sub_22BD5F704(v173);
        sub_22BB366B8();
        v174 = swift_allocObject();
        v2844 = v15;
        *(v174 + 16) = v15;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v175 + 16) = v176;
        *(v175 + 24) = v174;

        v2993 = sub_22BDB77C4();
        LODWORD(v2990) = sub_22BDBB134();
        sub_22BD616A8();
        v177 = swift_allocObject();
        sub_22BD623EC(v177);
        sub_22BD616A8();
        v178 = swift_allocObject();
        sub_22BB97EE0(v178);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v179 + 16) = v180;
        *(v179 + 24) = v173;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD648D8();
        sub_22BB3DEE8(v181);
        sub_22BD616A8();
        v182 = swift_allocObject();
        sub_22BD64C7C(v182);
        sub_22BD616A8();
        v183 = swift_allocObject();
        *(v183 + 16) = v16;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F77C();
        *(v184 + 16) = v185;
        *(v184 + 24) = v31;
        sub_22BB322B0();
        v186 = swift_allocObject();
        sub_22BB3DEE8(v186);
        v187 = sub_22BBCCA6C();
        sub_22BB31444(v187);
        v188[4] = v189;
        v188[5] = v174;
        v188[6] = sub_22BB89C08;
        v188[7] = v178;
        v188[8] = sub_22BB89C7C;
        v188[9] = v17;
        v188[10] = sub_22BB89C08;
        v188[11] = v35;
        v188[12] = sub_22BB89C08;
        v188[13] = v183;
        v188[14] = sub_22BB89C7C;
        v188[15] = v186;
        sub_22BD640D8();

        v190 = sub_22BD612E8();
        if (os_log_type_enabled(v190, v191))
        {
          sub_22BB67968();
          v192 = sub_22BD62BD8();
          sub_22BD63440(v192);
          sub_22BD5FC78(v190);
          *(v15 + 1472) = v31;
          v193 = sub_22BD5F8D0();
          v194 = v3001;
          sub_22BB67984(v193, v195, v196, v197);
          if (!v3001)
          {

            sub_22BB6F924();
            *(v15 + 1472) = v178;
            v198 = sub_22BD5F8D0();
            sub_22BB67984(v198, v199, v200, v201);

            sub_22BB6FCD0();
            *(v15 + 1472) = v17;
            v202 = sub_22BD5F8D0();
            sub_22BB67984(v202, v203, v204, v205);

            sub_22BB6F924();
            *(v15 + 1472) = v35;
            v206 = sub_22BD5F8D0();
            sub_22BB67984(v206, v207, v208, v209);

            sub_22BB6F924();
            *(v15 + 1472) = v183;
            v210 = sub_22BD5F8D0();
            sub_22BB67984(v210, v211, v212, v213);

            sub_22BD60848();
            v214 = *(v15 + 4088);
            sub_22BD62094();

            sub_22BD61E34();
            sub_22BD62CB8();
            sub_22BD636C8(v215, v216, v217, "[SessionCoordinator %{public}s] | [TX %{public}s] Begin commit of transaction.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_323;
        }

        sub_22BB75884();
        v316 = *(v15 + 3832);

        v317 = sub_22BD633D4();
        v2846 = v318;
        (v318)(v317);
        v17 = v15;
        v2918 = *(v15 + 4448);
        sub_22BD609DC();
        v2911 = v319;
        v320 = sub_22BD60CF4();
        v178(v320);
        sub_22BDB96A4();
        v323 = *(v183 + 8);
        v322 = v183 + 8;
        v321 = v323;
        v324 = sub_22BB393C4();
        (v323)(v324);
        v325 = v174;
        sub_22BDB9744();
        v326 = sub_22BB89BAC();
        v194 = v2911;
        (v190)(v326, v2911);
        v2879 = sub_22BB954F8(v325);

        v327 = sub_22BD613BC();
        v2873 = v178;
        v178(v327);
        sub_22BBBE690();
        sub_22BDB96A4();
        v328 = sub_22BB393C4();
        v2857 = v323;
        (v323)(v328);
        v329 = sub_22BDB9744();
        v330 = sub_22BB30AE4();
        v2859 = v35;
        v2854 = v190;
        (v190)(v330);
        sub_22BB954F8(v329);
        sub_22BD63F10();
        v2901 = v323;
        if (v323 < v2879)
        {
          __break(1u);
          goto LABEL_394;
        }

        v332 = sub_22BB721E4(v2988);
        v2871 = v331;
        do
        {
          v2917 = v332;
          if (v331 == v332)
          {
            goto LABEL_65;
          }

          if (v331 < v332)
          {
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:

            goto LABEL_418;
          }

          if (v332 >= v331)
          {
            goto LABEL_346;
          }

          v2887 = *(v15 + 4448);
          sub_22BD62F70();
          v2912 = v333;
          sub_22BB500E4();
          sub_22BB971BC(v334);
          sub_22BD62C40();
          sub_22BDB9694();
          sub_22BD63698();
          sub_22BDB9734();
          v335 = sub_22BB70784();
          v336 = v2885;
          v2885 = v337;
          v337(v335, v336);
          v338 = sub_22BB97E58();
          v178(v338);
          swift_endAccess();
          v339 = sub_22BB97B0C();
          sub_22BB929E0(v339, v340, v341);
          sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
          v178 = v2901;
          sub_22BBB797C();
          sub_22BDBAF34();
          v342 = sub_22BB970E8();
          v343(v342, name);
          sub_22BD62F60();
          v194 = v2912;
          sub_22BD63B88();
          v344();
          sub_22BD63388();
          sub_22BDB96A4();
          v345 = sub_22BB30AE4();
          (v2857)(v345);
          v329 = v321;
          sub_22BDB9744();
          v346 = sub_22BD619C8();
          (v2854)(v346, v2993);
          sub_22BB954F8(v321);
          sub_22BD63F10();
          v2901 = v321;
          if (v321 < v2879)
          {
            goto LABEL_347;
          }

          sub_22BD60F34(v332);
          sub_22BDB9B24();
          v347 = sub_22BB53C48();
          (v2885)(v347);
          v348 = *(v322 + 88);
          v322 += 88;
          v349 = sub_22BB30AE4();
          v350(v349);
          v351 = sub_22BD615B8();
          v352(v351);
          v331 = v2871;
        }

        while (v321 != v15);
        sub_22BD636E0();
        sub_22BD61894();
        sub_22BB53C48();
        sub_22BB9741C();
        sub_22BB71DA0();
        v2988 = v353;
LABEL_65:
        v354 = sub_22BD62F50();
        v356 = v354 + 64;
        v355 = *(v354 + 64);
        sub_22BB8EA20(v354);
        v359 = v358 & v357;
        sub_22BD63CF8();
        v361 = (v360 >> 6);
        v2866 = v362;

        v363 = 0;
        v2888 = v356;
        v2885 = v361;
        if (!v359)
        {
          goto LABEL_67;
        }

LABEL_71:
        sub_22BD62F40();
        sub_22BD62F2C();
        v2910 = v359;
        v367 = *(v2866 + 56);
        v194 = *(*(v2866 + 48) + 8 * (v366 | (v365 << 6)));
        v369 = *(v368 + 72);
        sub_22BB366A0();
        sub_22BB335C0(v370, v329);
        v371 = &qword_27D8E6568;
        v359 = sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
        v372 = *(v359 + 48);
        *v321 = v194;
        sub_22BB31DC8();
        sub_22BD64614(v373);
        v374 = sub_22BD6108C();
        sub_22BB336D0(v374, v375, v376, v359);
LABEL_72:
        v377 = sub_22BB8EA40();
        sub_22BB6BEE0(v377, v378, &qword_27D8E64F8, &qword_22BDCE400);
        v379 = sub_22BB331D4();
        v329 = sub_22BBE6DE0(v379, v380);
        sub_22BB3329C();
        if (v146)
        {

          v2994 = sub_22BB954F8(v2988);
          if (v2994)
          {
            v356 = 0;
            while (1)
            {
              sub_22BD63A1C();
              isa = v194[2].isa;
              v485 = v194 + 2;
              v484 = isa;
              isa_low = LOBYTE(v485[8].isa);
              v488 = v485[7].isa;
              v489 = sub_22BB95BF8();
              isa(v489);
              v2910 = (v356 + 1);
              if (__OFADD__(v356, 1))
              {
                break;
              }

              v490 = sub_22BB707CC();
              v491(v490);
              sub_22BD636FC();
              sub_22BD63990();
              if (v492)
              {
                oslog = *(v363 + 3936);
                v493 = sub_22BB3AAD8();
                v484(v493);
                sub_22BB702C8(isa_low + 16);
                v494 = swift_allocObject();
                v495 = sub_22BB89B94(v494);
                v496(v495);
                sub_22BD63888();
                sub_22BDB63E4();
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB758D8();
                *(v497 + 16) = v498;
                *(v497 + 24) = v356;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD60784();
                *(v499 + 16) = v500;
                *(v499 + 24) = v485;

                v2888 = v485;

                v2990 = sub_22BDB77C4();
                LODWORD(v2984) = sub_22BDBB134();
                sub_22BD616A8();
                v501 = swift_allocObject();
                sub_22BD61784(v501);
                sub_22BD616A8();
                v356 = swift_allocObject();
                sub_22BD62E20(v356);
                sub_22BB322B0();
                v502 = swift_allocObject();
                sub_22BBBE7C0(v502);
                sub_22BB322B0();
                v371 = swift_allocObject();
                sub_22BB69C9C(v371);
                sub_22BD616A8();
                v329 = swift_allocObject();
                sub_22BB6C06C(v329);
                sub_22BD616A8();
                v359 = swift_allocObject();
                *(v359 + 16) = isa_low;
                sub_22BB322B0();
                v503 = swift_allocObject();
                sub_22BBBEB28(v503);
                sub_22BB322B0();
                v504 = swift_allocObject();
                sub_22BB69C9C(v504);
                v505 = sub_22BBCCA6C();
                sub_22BB348E0(v505);
                v506[4] = v507;
                v506[5] = v361;
                v506[6] = sub_22BB89C08;
                v506[7] = v356;
                v506[8] = sub_22BB89C7C;
                v506[9] = v371;
                v506[10] = sub_22BB89C08;
                v506[11] = v329;
                v506[12] = sub_22BB89C08;
                v506[13] = v359;
                v506[14] = sub_22BB89C7C;
                v506[15] = v504;

                v194 = sub_22BD620A0();
                if (os_log_type_enabled(v194, v508))
                {
                  sub_22BB67968();
                  v509 = sub_22BBBFF34();
                  *(v363 + 1608) = 0;
                  *(v363 + 1616) = v509;
                  sub_22BBBEB6C();
                  *(v363 + 1600) = v510;
                  *(v363 + 968) = sub_22BB89C08;
                  *(v363 + 976) = v361;
                  v511 = sub_22BD602FC();
                  sub_22BB67984(v511, v512, v513, v514);
                  if (!v3001)
                  {

                    *(v363 + 968) = sub_22BB89C08;
                    *(v363 + 976) = v356;
                    v515 = sub_22BD602FC();
                    sub_22BB67984(v515, v516, v517, v518);

                    *(v363 + 968) = sub_22BB89C7C;
                    *(v363 + 976) = v371;
                    v519 = sub_22BD602FC();
                    sub_22BB67984(v519, v520, v521, v522);

                    *(v363 + 968) = sub_22BB89C08;
                    *(v363 + 976) = v329;
                    v523 = sub_22BD602FC();
                    sub_22BB67984(v523, v524, v525, v526);

                    *(v363 + 968) = sub_22BB89C08;
                    *(v363 + 976) = v359;
                    v527 = sub_22BD602FC();
                    sub_22BB67984(v527, v528, v529, v530);

                    *(v363 + 968) = sub_22BB89C7C;
                    *(v363 + 976) = v504;
                    v531 = sub_22BD602FC();
                    sub_22BB67984(v531, v532, v533, v534);
                    sub_22BD63A4C();
                    sub_22BBBE830();
                    sub_22BD636C8(&dword_22BB2C000, v2990, v535, "[SessionCoordinator %{public}s] Event: %s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_417;
                }

                sub_22BD63594();

                v2846(v2885, v2866);
                (*(isa_low + 8))(v2984, oslog);
              }

              else
              {
                oslogd = *(v363 + 3928);
                sub_22BDB63E4();
                sub_22BB322B0();
                v536 = swift_allocObject();
                v537 = sub_22BD62AA0(v536);
                *(v537 + 16) = v538;
                *(v537 + 24) = v356;
                v539 = sub_22BB3AAD8();
                v484(v539);
                sub_22BD63970();
                v194 = swift_allocObject();
                sub_22BD63324(v194);
                sub_22BD64B28();
                (v321)();
                sub_22BB322B0();
                v540 = swift_allocObject();
                v541 = sub_22BD62A88(v540);
                *(v541 + 16) = v542;
                *(v541 + 24) = v194;
                v543 = sub_22BBBEC20();
                v484(v543);
                v2862 = swift_allocObject();
                v544 = sub_22BD63324(v2862);
                (v321)(v544);

                oslog = sub_22BDB77C4();
                LODWORD(v2888) = sub_22BDBB134();
                sub_22BD616A8();
                v545 = swift_allocObject();
                sub_22BB973E4(v545);
                sub_22BD616A8();
                v2984 = swift_allocObject();
                sub_22BD62CE4(v2984);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB9710C();
                *(v546 + 16) = v547;
                *(v546 + 24) = v2866;
                sub_22BB322B0();
                v548 = swift_allocObject();
                sub_22BB69C9C(v548);
                sub_22BD616A8();
                v549 = swift_allocObject();
                sub_22BD64AAC(v549);
                sub_22BD616A8();
                v329 = swift_allocObject();
                *(v329 + 16) = v371;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6067C();
                *(v550 + 16) = v551;
                *(v550 + 24) = v2885;
                sub_22BB322B0();
                v361 = swift_allocObject();
                sub_22BB69C9C(v361);
                sub_22BD616A8();
                v552 = swift_allocObject();
                sub_22BD63D38(v552);
                sub_22BD616A8();
                v553 = swift_allocObject();
                *(v553 + 16) = v371;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6073C();
                *(v554 + 16) = v555;
                *(v554 + 24) = v2862;
                sub_22BB322B0();
                v371 = swift_allocObject();
                sub_22BB960B8(v371);
                v556 = sub_22BD61958();
                sub_22BB2F294(v556, xmmword_22BDCE140);
                v556[4].n128_u64[1] = v548;
                v556[5].n128_u64[0] = sub_22BB89C08;
                v556[5].n128_u64[1] = v17;
                v556[6].n128_u64[0] = sub_22BB89C08;
                v556[6].n128_u64[1] = v329;
                v556[7].n128_u64[0] = sub_22BB89C7C;
                v556[7].n128_u64[1] = v361;
                v556[8].n128_u64[0] = sub_22BB89C08;
                v556[8].n128_u64[1] = v194;
                v556[9].n128_u64[0] = sub_22BB89C08;
                v556[9].n128_u64[1] = v553;
                v556[10].n128_u64[0] = sub_22BB89C7C;
                v556[10].n128_u64[1] = v371;

                v2885 = v548;

                v359 = v17;

                sub_22BD64B08();
                if (os_log_type_enabled(oslog, v557))
                {
                  sub_22BB73FA4();
                  v558 = sub_22BB70090();
                  *(v363 + 1592) = 0;
                  *(v363 + 2456) = v558;
                  sub_22BB75908();
                  *(v363 + 1624) = v329;
                  *(v363 + 952) = sub_22BB89C08;
                  *(v363 + 960) = v2990;
                  v559 = sub_22BB971A8();
                  sub_22BB67984(v559, v560, v561, v562);
                  if (!v3001)
                  {

                    *(v363 + 952) = sub_22BB89C08;
                    *(v363 + 960) = v548;
                    v563 = sub_22BB971A8();
                    sub_22BB67984(v563, v564, v565, v566);

                    *(v363 + 952) = sub_22BB89C7C;
                    *(v363 + 960) = v556;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C08;
                    *(v363 + 960) = v17;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C08;
                    *(v363 + 960) = v2862;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C7C;
                    *(v363 + 960) = v361;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C08;
                    *(v363 + 960) = v2923;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C08;
                    *(v363 + 960) = v2866;
                    sub_22BD6122C();

                    *(v363 + 952) = sub_22BB89C7C;
                    *(v363 + 960) = v2859;
                    sub_22BD6122C();
                    sub_22BD63768();
                    sub_22BD6427C();
                    sub_22BD63B3C(&dword_22BB2C000, 0, v567, "[SessionCoordinator %{public}s] Event ID: %{public}s is %{public}s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_361;
                }

                sub_22BD6355C();

                v568 = v556->n128_u64[1];
                v321 = &v556->n128_i64[1];
                v2846 = v568;
                v568(v2862, v329);
                v569 = *(v548 + 8);
                v356 = v548 + 8;
                v569(v2888, v2866);
              }

              v17 = v363;
              v570 = v3001;
              sub_22BBC04D0();
              if (v146)
              {
                goto LABEL_119;
              }
            }

            __break(1u);

LABEL_412:

            goto LABEL_418;
          }

          v570 = v3001;
LABEL_119:
          v2798 = sub_22BB954F8(*(v17 + 2464));
          if (v2798)
          {
            sub_22BD64B90();
            v2808 = v580;
            v194 = &qword_27D8E6038;
            v2796 = v363;
            while (1)
            {
              sub_22BD632A8();
              sub_22BD618B8();
              sub_22BB954F0(v581, v582, v583);
              v584 = *(v359 + 80);
              v585 = *(v359 + 72);
              sub_22BB75920();
              sub_22BB3CD70(v586, v587, v588, &qword_22BDD0300);
              v2816 = v356 + 1;
              if (__OFADD__(v356, 1))
              {
                goto LABEL_401;
              }

              v589 = sub_22BB6FFCC();
              v591 = v329 + v590;
              sub_22BB970CC(v589);
              v592(v591, v363 + v2808, v321);
              v593 = sub_22BD60A8C();
              v594(v593);
              v321 = v595;
              if (*(v2842 + 16))
              {
                v596 = v2842;
                sub_22BB72B1C();
                sub_22BD63E60();
                if (v2842)
                {
                  v2806 = v356;
                  v3002 = v570;
                  v597 = *(v2842 + 36);
                  goto LABEL_128;
                }
              }

              else
              {
              }

              v598 = sub_22BD60CC4(*(v17 + 3024));
              v599(v598);
              sub_22BB366B8();
              v321 = swift_allocObject();
              *(v321 + 16) = v2842;
              v600 = sub_22BBC05B4();
              sub_22BD63CDC(v600);

              v329 = v17 + 80;
              v2857 = sub_22BBBFFC8();
              v363 = v601;
              sub_22BD620D0();

              v602 = *(v17 + 128);

              if (v359)
              {
                break;
              }

              v363 = v2796;
LABEL_143:
              v194 = &qword_27D8E6038;
              v371 = &qword_22BDD0300;
              sub_22BB325EC(*(v17 + 3024), &qword_27D8E6038, &qword_22BDD0300);
              ++v356;
              if (v2816 == v2798)
              {
                goto LABEL_144;
              }
            }

            v2806 = v356;
            v3002 = v570;
            v596 = v2857;
            v603 = sub_22BB3CB04();
            sub_22BD5EC9C(v603, v604, v605);
            sub_22BD6201C();
LABEL_128:
            v606 = sub_22BD61FCC();
            v2857 = v608;
            v2804 = v609;
            sub_22BB97FF0(v606, v608, v609, v607 & 1, v2842);
            sub_22BD62B9C();
            v610 = v570[175].isa;
            v2800 = v570[176].isa;
            sub_22BDB63E4();
            sub_22BB322B0();
            v611 = swift_allocObject();
            v612 = sub_22BD62A04(v611);
            *(v612 + 16) = v613;
            *(v612 + 24) = v363;
            sub_22BB366B8();
            v614 = swift_allocObject();
            sub_22BD60D9C(v614);
            sub_22BB322B0();
            v615 = swift_allocObject();
            v616 = sub_22BD629EC(v615);
            *(v616 + 16) = v617;
            *(v616 + 24) = v570;
            v618 = sub_22BD00E3C();
            sub_22BB3CD70(v618, v619, &qword_27D8E6038, &qword_22BDD0300);
            sub_22BD63CB4();
            swift_allocObject();
            sub_22BD64AFC();
            sub_22BD63CD0();
            sub_22BB6BEE0(v620, v621, v622, v623);
            sub_22BB322B0();
            v624 = swift_allocObject();
            sub_22BB976A8(v624);
            sub_22BB322B0();
            v625 = swift_allocObject();
            v2885 = v596;
            *(v625 + 16) = v596;
            *(v625 + 24) = v321;
            sub_22BB322B0();
            v626 = swift_allocObject();
            sub_22BB97D80(v626);
            sub_22BB366B8();
            v2847 = v610;
            *(swift_allocObject() + 16) = v610;
            sub_22BB322B0();
            v627 = swift_allocObject();
            sub_22BD60634(v627);
            sub_22BB3CD70(oslog, v2888, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BD62264(name);
            sub_22BB92A98();
            v628 = swift_allocObject();
            sub_22BB9741C();
            sub_22BB6BEE0(v629, v630, v631, v632);

            v2820 = sub_22BDB77C4();
            v2814 = sub_22BDBB134();
            sub_22BD616A8();
            v2889 = swift_allocObject();
            LOBYTE(v2889[2].isa) = 34;
            sub_22BD616A8();
            osloga = swift_allocObject();
            sub_22BB6FB2C(osloga);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB96B64();
            *(v633 + 16) = v634;
            *(v633 + 24) = v2984;
            sub_22BB322B0();
            v635 = swift_allocObject();
            v636 = sub_22BD629BC(v635);
            *(v636 + 16) = v637;
            *(v636 + 24) = &qword_27D8E3218;
            sub_22BD616A8();
            v2985 = swift_allocObject();
            *(v2985 + 16) = 34;
            sub_22BD616A8();
            v2913 = swift_allocObject();
            *(v2913 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v638 + 16) = v639;
            *(v638 + 24) = v2990;
            sub_22BB322B0();
            v640 = swift_allocObject();
            v641 = sub_22BD629A4(v640);
            *(v641 + 16) = v642;
            *(v641 + 24) = v321;
            sub_22BD616A8();
            v2831 = swift_allocObject();
            *(v2831 + 16) = 34;
            sub_22BD616A8();
            v2828 = swift_allocObject();
            *(v2828 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3AC60();
            *(v643 + 16) = v644;
            *(v643 + 24) = v624;
            sub_22BB322B0();
            v645 = swift_allocObject();
            sub_22BBC45B4(v645);
            sub_22BD616A8();
            v646 = swift_allocObject();
            *(v646 + 16) = 34;
            sub_22BD616A8();
            v647 = swift_allocObject();
            *(v647 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F86C();
            *(v648 + 16) = v649;
            *(v648 + 24) = v626;
            sub_22BB322B0();
            v650 = swift_allocObject();
            v2810 = sub_22BB8AEF8(v650);
            sub_22BD616A8();
            v2825 = swift_allocObject();
            *(v2825 + 16) = 34;
            sub_22BD616A8();
            v2867 = swift_allocObject();
            *(v2867 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v651 + 16) = v652;
            *(v651 + 24) = v627;
            sub_22BB322B0();
            v653 = swift_allocObject();
            sub_22BB97474(v653);
            sub_22BD616A8();
            v2818 = swift_allocObject();
            *(v2818 + 16) = 34;
            sub_22BD616A8();
            v2822 = swift_allocObject();
            *(v2822 + 16) = 8;
            v654 = v646;
            v2863 = v646;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97EBC();
            *(v655 + 16) = v656;
            *(v655 + 24) = v628;
            sub_22BB322B0();
            v657 = swift_allocObject();
            sub_22BB97474(v657);
            v658 = sub_22BD62608();
            sub_22BB73BD0(v658);
            sub_22BD60544(v2889);
            sub_22BB3FE84(osloga);
            v658[9] = name;
            v658[10] = sub_22BB89C08;
            v658[11] = v2985;
            v658[12] = sub_22BB89C08;
            sub_22BD6061C(v2913);
            sub_22BD625EC();
            sub_22BD62974();
            sub_22BBC052C();
            v658[23] = v646;
            v658[24] = sub_22BB89C08;
            v658[25] = v647;
            v658[26] = sub_22BB89C7C;
            v658[27] = v626;
            v658[28] = sub_22BB89C08;
            sub_22BD61974();
            sub_22BD62914();
            sub_22BD62EF4();

            sub_22BD65338();

            v659 = v657;

            if (os_log_type_enabled(v2820, v2814))
            {
              sub_22BB67968();
              v660 = sub_22BD6449C();
              v3000[205].isa = 0;
              v3000[204].isa = v660;
              *v2818 = 1538;
              v3000[209].isa = (v2818 + 2);
              sub_22BB6B724();
              v3000[194].isa = v2889;
              v661 = sub_22BB39218();
              sub_22BB67984(v661, v662, v663, v664);
              if (!v3002)
              {

                sub_22BB6B724();
                v3000[194].isa = osloga;
                v665 = sub_22BB39218();
                sub_22BB67984(v665, v666, v667, v668);

                sub_22BB37EF8();
                v3000[194].isa = name;
                v669 = sub_22BB39218();
                sub_22BB67984(v669, v670, v671, v672);

                sub_22BB6B724();
                v3000[194].isa = v2985;
                v673 = sub_22BB39218();
                sub_22BB67984(v673, v674, v675, v676);

                sub_22BB6B724();
                v3000[194].isa = v2913;
                v677 = sub_22BB39218();
                sub_22BB67984(v677, v678, v679, v680);

                sub_22BB37EF8();
                v3000[194].isa = v2990;
                v681 = sub_22BB39218();
                sub_22BB67984(v681, v682, v683, v684);

                sub_22BB6B724();
                v3000[194].isa = v2831;
                v685 = sub_22BB39218();
                sub_22BB67984(v685, v686, v687, v688);

                sub_22BB6B724();
                v3000[194].isa = v2828;
                v689 = sub_22BB39218();
                sub_22BB67984(v689, v690, v691, v692);

                sub_22BB37EF8();
                v3000[194].isa = 34;
                v693 = sub_22BB39218();
                sub_22BB67984(v693, v694, v695, v696);

                sub_22BB6B724();
                v3000[194].isa = v2863;
                v697 = sub_22BB39218();
                sub_22BB67984(v697, v698, v699, v700);

                sub_22BB6B724();
                v3000[194].isa = v647;
                v701 = sub_22BB39218();
                sub_22BB67984(v701, v702, v703, v704);

                sub_22BB37EF8();
                v3000[194].isa = v2810;
                v705 = sub_22BB39218();
                sub_22BB67984(v705, v706, v707, v708);

                sub_22BB6B724();
                v3000[194].isa = v2825;
                v709 = sub_22BB39218();
                sub_22BB67984(v709, v710, v711, v712);

                sub_22BB6B724();
                v3000[194].isa = v2867;
                v713 = sub_22BB39218();
                sub_22BB67984(v713, v714, v715, v716);

                sub_22BB37EF8();
                v3000[194].isa = v654;
                v717 = sub_22BB39218();
                sub_22BB67984(v717, v718, v719, v720);

                v3000[193].isa = sub_22BB89C08;
                v3000[194].isa = v2818;
                v721 = sub_22BB39218();
                sub_22BB67984(v721, v722, v723, v724);

                v3000[193].isa = sub_22BB89C08;
                v3000[194].isa = v2822;
                v725 = sub_22BB39218();
                sub_22BB67984(v725, v726, v727, v728);

                sub_22BB37EF8();
                v3000[194].isa = v657;
                v729 = sub_22BB39218();
                sub_22BB67984(v729, v730, v731, v732);
                v733 = v3000[490].isa;
                sub_22BD62624();

                sub_22BD63EC8(&dword_22BB2C000, v2820, v2814, "[SessionCoordinator %{public}s] | [TX %{public}s] %{public}s (as %{public}s) notified. Span %{public}s spawned with request ID %{public}s.");
                swift_arrayDestroy();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_418;
            }

            sub_22BB70000();

            v734 = *(v2818 + 8);
            v735 = sub_22BD00AA4();
            v736(v735);
            v737 = sub_22BD5FC9C();
            v2864 = v738;
            v738(v737);
            sub_22BD60604();
            sub_22BB335C0(v2822 + v657, v658);
            sub_22BDB6104();
            v739 = sub_22BB3AC54();
            sub_22BB335C0(v739, v740);
            sub_22BB58DFC();
            swift_allocObject();
            sub_22BB2F5B0();
            sub_22BD652D8(v741);
            sub_22BB322B0();
            v742 = swift_allocObject();
            sub_22BB3E2EC(v742);
            sub_22BB366B8();
            v743 = swift_allocObject();
            *(v743 + 16) = v2847;
            sub_22BB322B0();
            v744 = swift_allocObject();
            sub_22BD5F71C(v744);
            sub_22BB322B0();
            v745 = swift_allocObject();
            sub_22BD64ADC(v745);
            sub_22BB322B0();
            v746 = swift_allocObject();
            sub_22BB8ADD4(v746);
            sub_22BDB7724();
            v2986 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v747 = swift_allocObject();
            sub_22BD63318(v747);
            sub_22BD616A8();
            v748 = swift_allocObject();
            sub_22BB97EE0(v748);
            sub_22BB322B0();
            v749 = swift_allocObject();
            sub_22BB586D8(v749);
            sub_22BB322B0();
            v750 = swift_allocObject();
            v2991 = sub_22BB3DEE8(v750);
            sub_22BD616A8();
            oslog = swift_allocObject();
            LOBYTE(oslog[2].isa) = v659;
            sub_22BD616A8();
            v2888 = swift_allocObject();
            LOBYTE(v2888[2].isa) = v2822;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v751 + 16) = v752;
            *(v751 + 24) = v744;
            sub_22BB322B0();
            v753 = swift_allocObject();
            sub_22BB3DEE8(v753);
            sub_22BD616A8();
            v754 = swift_allocObject();
            *(v754 + 16) = v659;
            sub_22BD616A8();
            v755 = swift_allocObject();
            sub_22BD64300(v755);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60724();
            *(v756 + 16) = v757;
            *(v756 + 24) = v743;
            sub_22BB322B0();
            v758 = swift_allocObject();
            sub_22BB960B8(v758);
            v759 = sub_22BD61958();
            v760 = sub_22BBC2570(v759, xmmword_22BDCE140);
            v760[2].n128_u64[0] = v761;
            v760[2].n128_u64[1] = v747;
            v760[3].n128_u64[0] = sub_22BB89C08;
            v760[3].n128_u64[1] = v748;
            v760[4].n128_u64[0] = sub_22BB89C7C;
            v760[4].n128_u64[1] = v2991;
            v760[5].n128_u64[0] = sub_22BB89C08;
            v760[5].n128_u64[1] = oslog;
            v760[6].n128_u64[0] = sub_22BB89C08;
            v760[6].n128_u64[1] = v2888;
            v760[7].n128_u64[0] = sub_22BB89C7C;
            v760[7].n128_u64[1] = v753;
            v760[8].n128_u64[0] = sub_22BB89C08;
            v760[8].n128_u64[1] = v754;
            v760[9].n128_u64[0] = sub_22BB89C08;
            v760[9].n128_u64[1] = v654;
            v760[10].n128_u64[0] = sub_22BB89C7C;
            v760[10].n128_u64[1] = v758;

            name = v748;

            sub_22BD652C0();

            if (sub_22BDBB244())
            {
              v2832 = v753;
              sub_22BB73F58("Span", &v3009);
              v2823 = v3009;
              sub_22BB67968();
              v762 = sub_22BB70090();
              sub_22BD641EC(v762);
              sub_22BB35530(v2986);
              v763 = sub_22BB3A2F8(v747);
              sub_22BB67984(v763, v764, v765, v766);
              if (!v3002)
              {
                sub_22BB73F80();
                MEMORY[0x5F2] = v748;
                v767 = sub_22BB69324();
                sub_22BB67984(v767, v768, v769, v770);
                sub_22BB6F960();
                v771 = sub_22BB3A2F8(v2991);
                sub_22BB67984(v771, v772, v773, v774);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v775 = sub_22BB69324();
                sub_22BB67984(v775, v776, v777, v778);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v779 = sub_22BB69324();
                sub_22BB67984(v779, v780, v781, v782);
                sub_22BB6F960();
                v783 = sub_22BB3A2F8(v2832);
                sub_22BB67984(v783, v784, v785, v786);
                sub_22BB73F80();
                MEMORY[0x5F2] = v754;
                v787 = sub_22BB69324();
                sub_22BB67984(v787, v788, v789, v790);
                sub_22BB73F80();
                MEMORY[0x5F2] = v654;
                v791 = sub_22BB69324();
                sub_22BB67984(v791, v792, v793, v794);
                sub_22BB6F960();
                MEMORY[0x5F2] = v758;
                v795 = sub_22BB69324();
                sub_22BB67984(v795, v796, v797, v798);
                sub_22BD643E0();

                sub_22BDB7714();
                sub_22BD64840();
                sub_22BD63C7C(v799, v800, v801, v802, v2823, "[SessionCoordinator %{public}s] - Span %{public}s - Part: %{public}s");
                sub_22BD64420();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_406;
            }

            sub_22BB897F0();
            v2833 = v803;
            v804 = MEMORY[0xD62];
            sub_22BD64DA4();
            v2910 = v805;
            sub_22BB4FE90();
            v2829 = v806;
            sub_22BD631B0();
            v2826 = v807;
            v17 = v3000[365].isa;
            sub_22BB89508(v3000[364].isa);
            v2860 = *(v808 + 2496);
            v809 = sub_22BB313A8();
            (v2926)(v809);
            sub_22BB3A190();
            v810 = sub_22BDB7784();
            v811 = sub_22BB362AC();
            (v2950)(v811);
            sub_22BB3FBBC();
            sub_22BD61C58();
            v812();
            v813 = SLODWORD(oslog[3].isa);
            v814 = sub_22BB96DFC();
            sub_22BB3CD70(v814, v815, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB9766C();
            *v816 = v2836;
            v816[1] = v2838;
            sub_22BD64070(SLODWORD(oslog[4].isa));
            sub_22BB3B410();
            sub_22BB335C0(v2826, v17);
            sub_22BB366A0();
            sub_22BB335C0(v804, v2833);
            v817 = sub_22BBC01E4();
            v2864(v817);

            sub_22BB35FA0();
            v2984 = v810;
            v821 = sub_22BBBED88(v818, v819, v820, v810);
            sub_22BB8B6A4();
            sub_22BD64FF0();
            sub_22BD63888();
            sub_22BB94F54(v2988, v822);
            v823 = sub_22BB3A190();
            v2990 = v821;
            if (sub_22BB3AA28(v823, v824, v2910) == 1)
            {
              sub_22BB325EC(v3000[453].isa, &unk_27D8E69E0, &qword_22BDC1660);
            }

            else
            {
              v825 = v3000[404].isa;
              v826 = v3000[403].isa;
              sub_22BDB9AA4();
              sub_22BD63450();
              v827 = *(v825 + 1);
              v828 = sub_22BB3AC54();
              v829(v828);
              if (v2829)
              {
LABEL_139:
                sub_22BB6FA98();
                sub_22BB7581C();
                sub_22BD6264C();
                v2868 = *(v17 + 2864);
                v2834 = *(v17 + 2792);
                v830 = sub_22BD641D4();
                SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(v830, v831, v2847, v832, v2829, v2844);

                sub_22BB387B8();
                sub_22BB34648();
                sub_22BD63B88();
                v833();
                sub_22BD6379C();
                swift_storeEnumTagMultiPayload();

                sub_22BDBAF34();
                v834 = sub_22BD632B8();
                v835(v834, v2864);
                sub_22BB366A0();
                sub_22BB335C0(v2888, v2868);
                sub_22BB331C8();
                sub_22BB336D0(v836, v837, v838, oslog);
                sub_22BB3B574();
                sub_22BD63D1C();
                swift_endAccess();
                if (*(&v2910->isa + v821) == 1)
                {
                  v839 = *(v17 + 4896);
                  name = *(v17 + 3216);
                  sub_22BB96D9C();
                  sub_22BB70244(v840);
                  v842 = *(v841 + 3192);
                  v843 = v3000[398].isa;
                  sub_22BD61744();
                  v845 = *(v844 + 3168);
                  sub_22BD63ADC();
                  sub_22BD63804();
                  sub_22BD61528();
                  sub_22BDB5D24();
                  v846 = sub_22BD639D4();
                  v847(v846, v839, v845);
                  sub_22BB93D50();
                  sub_22BDB5E14();
                  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                  sub_22BBBFFBC();
                  sub_22BDBAF34();
                  v848 = sub_22BB721D8();
                  v849 = sub_22BD6147C(v848, v2804);
                  sub_22BBBFEB0(v849, v2804, v850);

                  (*(v17 + 8))(name, v2910);
                  v17 = v3000;
                }

                else
                {
                  v851 = sub_22BB721D8();
                  v852 = sub_22BD6147C(v851, v2804);
                  sub_22BBBFEB0(v852, v2804, v853);
                }

                v570 = v3002;
                v356 = v2806;
                v363 = v2796;
                v854 = *(v17 + 3392);
                v329 = *(v17 + 2984);
                v855 = *(v17 + 2968);
                v321 = *(v17 + 2960);
                v359 = *(v17 + 2952);
                sub_22BB33E70();
                sub_22BB34648();
                sub_22BB3093C();
                sub_22BB34648();
                v856 = sub_22BBB4C24();
                v857(v856);
                goto LABEL_143;
              }
            }

            sub_22BDB83A4();
            sub_22BD63450();

            goto LABEL_139;
          }

LABEL_144:
          v3001 = v570;
          v858 = *(v17 + 4272);
          v859 = *(v17 + 4200);
          sub_22BD62768();
          sub_22BDB6124();
          sub_22BB322B0();
          v860 = swift_allocObject();
          sub_22BB3E014(v860);
          sub_22BB366B8();
          v861 = swift_allocObject();
          sub_22BD60D9C(v861);
          sub_22BB322B0();
          v862 = swift_allocObject();
          sub_22BD601E4(v862);
          sub_22BDB7724();
          v2990 = sub_22BDB7744();
          LODWORD(v2984) = sub_22BDBB1D4();
          sub_22BD616A8();
          v863 = swift_allocObject();
          sub_22BB97E20(v863);
          sub_22BD616A8();
          v864 = swift_allocObject();
          sub_22BBC0370(v864);
          sub_22BB322B0();
          v865 = swift_allocObject();
          sub_22BB89D30(v865);
          sub_22BB322B0();
          v866 = swift_allocObject();
          sub_22BB3DEE8(v866);
          sub_22BD616A8();
          swift_allocObject();
          sub_22BD648D8();
          *(v867 + 16) = v194;
          sub_22BD616A8();
          v868 = swift_allocObject();
          sub_22BB7564C(v868);
          sub_22BB322B0();
          v869 = swift_allocObject();
          sub_22BD6018C(v869);
          sub_22BB322B0();
          v870 = swift_allocObject();
          sub_22BD60264(v870);
          v871 = sub_22BBCCA6C();
          sub_22BB34620(v871);
          v872[4] = v873;
          v872[5] = v863;
          v872[6] = sub_22BB89C08;
          v872[7] = v363;
          v872[8] = sub_22BB89C7C;
          v872[9] = v866;
          v872[10] = sub_22BB89C08;
          v872[11] = v17;
          v872[12] = sub_22BB89C08;
          v872[13] = v371;
          v872[14] = sub_22BB89C7C;
          v872[15] = v870;

          if (sub_22BDBB244())
          {
            sub_22BB73F58("InstrumentationSend", &v3009);
            sub_22BD65428();
            v874 = sub_22BD619F0();
            sub_22BD5F9A0(v874);
            v570[174].isa = v194;
            v875 = sub_22BB3CE1C();
            sub_22BB67984(v875, v876, v877, v878);
            if (!v570)
            {
              sub_22BB70508();
              MEMORY[0x570] = v363;
              v879 = sub_22BB3CE1C();
              sub_22BB67984(v879, v880, v881, v882);
              MEMORY[0x568] = sub_22BB89C7C;
              MEMORY[0x570] = v866;
              v883 = sub_22BB3CE1C();
              sub_22BB67984(v883, v884, v885, v886);
              sub_22BB70508();
              MEMORY[0x570] = v17;
              v887 = sub_22BB3CE1C();
              sub_22BB67984(v887, v888, v889, v890);
              sub_22BD60234();
              MEMORY[0x570] = v371;
              v891 = sub_22BB3CE1C();
              sub_22BB67984(v891, v892, v893, v894);
              sub_22BD602A8();
              MEMORY[0x570] = v870;
              v895 = sub_22BB3CE1C();
              sub_22BB67984(v895, v896, v897, v898);

              sub_22BDB7714();
              sub_22BBBE830();
              sub_22BD62590();
              sub_22BD65410(v899, v900, v901, v902, v871, "[SessionCoordinator %s] | [TX %s] Begin dispatch to instrumentation.");
              sub_22BD62D7C();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_406;
          }

          v1036 = sub_22BD609B4();
          (v2926)(v1036);
          sub_22BB3A190();
          v570[596].isa = sub_22BDB7784();
          v1037 = sub_22BB2F0E0();
          (v2950)(v1037);
          sub_22BB37074();
          sub_22BD61C58();
          v1038();
          sub_22BD648C0();
          if (v1039)
          {
            if (v1039 < 1)
            {
              __break(1u);
              goto LABEL_415;
            }

            sub_22BD60DAC();
            oslog = *(v1040 + 16);
            do
            {
              sub_22BD60928();
              name = v1041;
              sub_22BD61C78();
              sub_22BB70244(v1042);
              v570 = *(v1043 + 4400);
              sub_22BB720E0();
              sub_22BD634D0();
              (oslog)();
              sub_22BD62C60();
              v1044 = sub_22BD615E4();
              v1045(v1044);
              v1046 = sub_22BD62454();
              v863(v1046);
              sub_22BDB9C74();
              sub_22BD654A0();

              sub_22BB6FB0C();
            }

            while (!v146);
          }

          sub_22BD60B30();
          if (v146)
          {
            v1047 = sub_22BD635CC();
            v1048 = v3001;
            sub_22BD44098(v1047);
            v2923 = v3001;
            if (v3001)
            {
              sub_22BD63BBC();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1049 = swift_allocObject();
              sub_22BD6049C(v1049);
              sub_22BB366B8();
              v1050 = swift_allocObject();
              sub_22BD61A0C(v1050);
              sub_22BB322B0();
              v1051 = swift_allocObject();
              sub_22BD60348(v1051);
              sub_22BB366B8();
              v1052 = swift_allocObject();
              sub_22BBC0200(v1052);
              v1053 = v3001;
              v2990 = sub_22BDB77C4();
              LODWORD(v2988) = sub_22BDBB114();
              sub_22BD616A8();
              v1054 = swift_allocObject();
              sub_22BD63B94(v1054);
              sub_22BD616A8();
              v2994 = swift_allocObject();
              sub_22BD612D8(v2994);
              sub_22BB322B0();
              v1055 = swift_allocObject();
              sub_22BB96D60(v1055);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F74C();
              *(v1056 + 16) = v1057;
              *(v1056 + 24) = v570;
              sub_22BD616A8();
              v1058 = swift_allocObject();
              *(v1058 + 16) = v371;
              sub_22BD616A8();
              v3004 = swift_allocObject();
              *(v3004 + 16) = v1048;
              sub_22BB322B0();
              v1059 = swift_allocObject();
              sub_22BBBE888(v1059);
              sub_22BB322B0();
              v1060 = swift_allocObject();
              sub_22BD6032C(v1060);
              sub_22BD616A8();
              v1061 = swift_allocObject();
              sub_22BD61B1C(v1061);
              sub_22BD616A8();
              v866 = swift_allocObject();
              sub_22BB6FB2C(v866);
              sub_22BB322B0();
              v1062 = swift_allocObject();
              sub_22BD60380(v1062);
              sub_22BB322B0();
              v1063 = swift_allocObject();
              sub_22BD603F0(v1063);
              sub_22BB322B0();
              v1064 = swift_allocObject();
              sub_22BD603B8(v1064);
              v1065 = sub_22BD61958();
              v1066 = sub_22BBC2570(v1065, xmmword_22BDCE140);
              v1066[2].n128_u64[0] = v1067;
              v1066[2].n128_u64[1] = v1054;
              v1066[3].n128_u64[0] = sub_22BB89C08;
              v1066[3].n128_u64[1] = v2994;
              v1066[4].n128_u64[0] = sub_22BB89C7C;
              v1066[4].n128_u64[1] = v1049;
              v1066[5].n128_u64[0] = sub_22BB89C08;
              v1066[5].n128_u64[1] = v1058;
              v1066[6].n128_u64[0] = sub_22BB89C08;
              v1066[6].n128_u64[1] = v3004;
              v1066[7].n128_u64[0] = sub_22BB89C7C;
              v1066[7].n128_u64[1] = v570;
              v1066[8].n128_u64[0] = sub_22BB89C08;
              v1066[8].n128_u64[1] = v371;
              v1066[9].n128_u64[0] = sub_22BB89C08;
              v1066[9].n128_u64[1] = v866;
              v1066[10].n128_u64[0] = sub_22BD5F648;
              v1066[10].n128_u64[1] = v863;
              v2910 = v1054;

              v2984 = v1058;

              v1068 = sub_22BD60DFC();
              if (os_log_type_enabled(v1068, v1069))
              {
                sub_22BB67968();
                v1070 = sub_22BD63820();
                v1071 = sub_22BB3E490();
                *(v17 + 1784) = v1070;
                *(v17 + 1776) = v1071;
                sub_22BB75908();
                *(v17 + 1800) = v3004;
                sub_22BB3A8C8();
                *(v17 + 1328) = v2910;
                v1072 = sub_22BB397F4();
                sub_22BB67984(v1072, v1073, v1074, v1075);

                sub_22BB3A8C8();
                *(v17 + 1328) = v2994;
                v1076 = sub_22BB397F4();
                sub_22BB67984(v1076, v1077, v1078, v1079);

                *(v17 + 1320) = sub_22BB89C7C;
                *(v17 + 1328) = v1049;
                v1080 = sub_22BB397F4();
                sub_22BB67984(v1080, v1081, v1082, v1083);

                sub_22BB3A8C8();
                *(v17 + 1328) = v1058;
                v1084 = sub_22BB397F4();
                sub_22BB67984(v1084, v1085, v1086, v1087);

                sub_22BB3A8C8();
                *(v17 + 1328) = v3004;
                v1088 = sub_22BB397F4();
                sub_22BB67984(v1088, v1089, v1090, v1091);

                sub_22BD5F6D4();
                *(v17 + 1328) = v570;
                v1092 = sub_22BB397F4();
                sub_22BB67984(v1092, v1093, v1094, v1095);

                sub_22BB3A8C8();
                *(v17 + 1328) = v371;
                v1096 = sub_22BB397F4();
                sub_22BB67984(v1096, v1097, v1098, v1099);

                sub_22BB3A8C8();
                *(v17 + 1328) = v866;
                v1100 = sub_22BB397F4();
                sub_22BB67984(v1100, v1101, v1102, v1103);

                sub_22BB70C3C();
                *(v17 + 1328) = v863;
                v1104 = sub_22BB397F4();
                sub_22BB67984(v1104, v1105, v1106, v1107);
                v1108 = *(v17 + 3912);
                sub_22BD62094();

                sub_22BD61B3C();
                sub_22BD64A08();
                sub_22BD646EC(v1109, v1110, v1111, "[SessionCoordinator %{public}s] | [TX %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v1070, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB38680();
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              sub_22BD64098();

              (*(v3004 + 8))(v2988, name);
            }

            else
            {
              sub_22BD61E00();
              name = v1239;
              sub_22BB97628();
              v2910 = v1240;
              sub_22BD619BC();
              sub_22BD65170(v1241);
              sub_22BD65248();
              sub_22BD600B0();
              sub_22BD62EA8();
              v1242 = sub_22BD62428();
              sub_22BD594F8(v1242, v1243, v1244);
              sub_22BB3CD70(name, v363, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BB7583C();
              v1245 = v871[6].n128_u64[1];
              v1246 = sub_22BD633F4();
              v1247(v1246);
              sub_22BD63650();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD62448();
              sub_22BDBAF34();
              v1248 = sub_22BBD1A5C();
              v1249(v1248);
              v17 = v3000;
            }

            v3001 = 0;
          }

          else
          {
          }

          v1315 = *(v17 + 4256);
          v1316 = *(v17 + 4184);
          sub_22BD62680();
          sub_22BDB6124();
          sub_22BB322B0();
          v1317 = swift_allocObject();
          sub_22BB977E8(v1317);
          sub_22BB366B8();
          v1318 = swift_allocObject();
          sub_22BD60D9C(v1318);
          sub_22BB322B0();
          v1319 = swift_allocObject();
          sub_22BB77E74(v1319);

          v1320 = sub_22BDB7744();
          sub_22BB96D04(v1320);
          sub_22BDB7774();
          LODWORD(v2988) = sub_22BDBB1C4();
          sub_22BD616A8();
          v14 = swift_allocObject();
          sub_22BB97E20(v14);
          sub_22BD616A8();
          v1321 = swift_allocObject();
          sub_22BD62C10(v1321);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v1322 + 16) = v1323;
          *(v1322 + 24) = v863;
          sub_22BB322B0();
          v16 = swift_allocObject();
          sub_22BB3DEE8(v16);
          sub_22BD616A8();
          v1324 = swift_allocObject();
          sub_22BD64D08(v1324);
          sub_22BD616A8();
          v15 = swift_allocObject();
          *(v15 + 16) = v866;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v1325 + 16) = v1326;
          *(v1325 + 24) = v1319;
          sub_22BB322B0();
          v1327 = swift_allocObject();
          sub_22BB3DEE8(v1327);
          v1328 = sub_22BBCCA6C();
          sub_22BB31444(v1328);
          v1329[4] = v1330;
          v1329[5] = v14;
          v1329[6] = sub_22BB89C08;
          v1329[7] = v1321;
          v1329[8] = sub_22BB89C7C;
          v1329[9] = v16;
          v1329[10] = sub_22BB89C08;
          v1329[11] = v863;
          v1329[12] = sub_22BB89C08;
          v1329[13] = v15;
          v1329[14] = sub_22BB89C7C;
          v1329[15] = v1327;

          if (sub_22BDBB244())
          {
            sub_22BD63674();
            sub_22BB73F58("InstrumentationSend", v1331);
            sub_22BD64F90();
            sub_22BDB77B4();

            v1332 = *(v866 + 88);
            v1333 = sub_22BB53C48();
            if (v1334(v1333) != v2994)
            {
              v1338 = sub_22BD61D04();
              v1339(v1338);
            }

            sub_22BB67968();
            v1340 = sub_22BD62464();
            sub_22BD64CB4(v1340);
            sub_22BD63FF8();
            *(v17 + 1848) = v1341;
            *(v17 + 1256) = sub_22BB89C08;
            *(v17 + 1264) = v2990;
            v1342 = sub_22BD5F6A8();
            sub_22BB67984(v1342, v1343, v1344, v1345);
            if (!v3001)
            {
              sub_22BBC3C0C();
              *(v17 + 1264) = v1321;
              v1346 = sub_22BD5F6A8();
              sub_22BB67984(v1346, v1347, v1348, v1349);
              sub_22BD606AC();
              *(v17 + 1264) = v16;
              v1350 = sub_22BD5F6A8();
              sub_22BB67984(v1350, v1351, v1352, v1353);
              sub_22BBC3C0C();
              *(v17 + 1264) = v2984;
              v1354 = sub_22BD5F6A8();
              sub_22BB67984(v1354, v1355, v1356, v1357);
              sub_22BBC3C0C();
              *(v17 + 1264) = v15;
              v1358 = sub_22BD5F6A8();
              sub_22BB67984(v1358, v1359, v1360, v1361);
              sub_22BD606AC();
              *(v17 + 1264) = v2910;
              v1362 = sub_22BD5F6A8();
              sub_22BB67984(v1362, v1363, v1364, v1365);
              sub_22BD63A7C();

              sub_22BDB7714();
              sub_22BD61B3C();
              sub_22BD64048(&dword_22BB2C000, v1366, v1367, v1368);
              sub_22BBBE764();
              sub_22BB2F194();
              sub_22BB679C0();
            }

            goto LABEL_406;
          }

          sub_22BD61D18();
          v1335 = *(v17 + 4152);

          v1336 = sub_22BB313A8();
          (v2950)(v1336);
          sub_22BD61C58();
          v1337();
          v35 = v3001;
          v12 = &qword_27D8E3218;
          v194 = v2842;
          if (v2871 == v2917)
          {
            v18 = *(v17 + 3824);
            v31 = *(v17 + 2496);

            sub_22BBC02E4();
            sub_22BB705A8();
            v1369 = sub_22BB2F324();
            sub_22BB325EC(v1369, v1370, &qword_22BDBE390);
            goto LABEL_97;
          }

          v2510 = *(v17 + 3904);
          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v2511 = swift_allocObject();
          sub_22BD603D4(v2511);
          sub_22BB366B8();
          v2512 = swift_allocObject();
          sub_22BD61A0C(v2512);
          sub_22BB322B0();
          v2513 = swift_allocObject();
          sub_22BBC02FC(v2513);
          sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v2514 = swift_allocObject();
          sub_22BD632F8(v2514);
          sub_22BD616A8();
          v2515 = swift_allocObject();
          sub_22BBC0370(v2515);
          sub_22BB322B0();
          v2516 = swift_allocObject();
          sub_22BBBE7C0(v2516);
          sub_22BB322B0();
          v2517 = swift_allocObject();
          sub_22BB69C9C(v2517);
          sub_22BD616A8();
          v2518 = swift_allocObject();
          sub_22BD64D14(v2518);
          sub_22BD616A8();
          v2519 = swift_allocObject();
          *(v2519 + 16) = v3001;
          sub_22BB322B0();
          v2520 = swift_allocObject();
          sub_22BD602C4(v2520);
          sub_22BB322B0();
          v870 = swift_allocObject();
          sub_22BB69C9C(v870);
          v2521 = sub_22BBCCA6C();
          sub_22BB72F5C(v2521);
          v2522[6] = sub_22BB89C08;
          v2522[7] = v16;
          v2522[8] = sub_22BB89C7C;
          v2522[9] = v2517;
          v2522[10] = sub_22BB89C08;
          v2522[11] = &qword_27D8E3218;
          v2522[12] = sub_22BB89C08;
          v2522[13] = v2519;
          v2522[14] = sub_22BB89C7C;
          v2522[15] = v870;

          if (!sub_22BD63B1C())
          {
            sub_22BD63270();

            v2555 = sub_22BD61704();
            v2556(v2555);
            sub_22BD63AFC();
            sub_22BB322B0();
            v2557 = swift_allocObject();
            sub_22BB977E8(v2557);
            sub_22BB366B8();
            v2558 = swift_allocObject();
            sub_22BD60D9C(v2558);
            sub_22BB322B0();
            v2559 = swift_allocObject();
            sub_22BD60A50(v2559);
            sub_22BDB7724();
            v2560 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v2561 = swift_allocObject();
            *(v2561 + 16) = 32;
            sub_22BD616A8();
            v2562 = swift_allocObject();
            sub_22BD631A4(v2562);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v2563 + 16) = v2564;
            *(v2563 + 24) = &qword_27D8E3218;
            sub_22BB322B0();
            v2565 = swift_allocObject();
            sub_22BB3DEE8(v2565);
            sub_22BD616A8();
            v2566 = swift_allocObject();
            sub_22BB96A88(v2566);
            sub_22BD616A8();
            v2567 = swift_allocObject();
            sub_22BB894FC(v2567);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v2568 + 16) = v2569;
            *(v2568 + 24) = v1327;
            sub_22BB322B0();
            v2570 = swift_allocObject();
            sub_22BB3DEE8(v2570);
            v2571 = sub_22BBCCA6C();
            sub_22BB31444(v2571);
            v2572[4] = v2573;
            v2572[5] = v2561;
            v2572[6] = sub_22BB89C08;
            v2572[7] = v2562;
            v2572[8] = sub_22BB89C7C;
            v2572[9] = v2565;
            v2572[10] = sub_22BB89C08;
            v2572[11] = v17;
            v2572[12] = sub_22BB89C08;
            v2572[13] = v2519;
            v2572[14] = sub_22BB89C7C;
            v2572[15] = v2570;

            if (sub_22BDBB244())
            {
              sub_22BD63EB0("ODPWait");
              sub_22BD62384();
              v2574 = sub_22BBBFF34();
              sub_22BB3ADEC(v2574);
              v3009 = v2575;
              v3010 = v2561;
              v2576 = sub_22BB58B08();
              sub_22BB67984(v2576, v2577, v2578, v2579);
              if (!v2842)
              {
                v2580 = sub_22BB542B0();
                sub_22BB67984(v2580, v2581, v2582, v2583);
                v2584 = sub_22BB542B0();
                sub_22BB67984(v2584, v2585, v2586, v2587);
                v2588 = sub_22BB542B0();
                sub_22BB67984(v2588, v2589, v2590, v2591);
                v2592 = sub_22BB542B0();
                sub_22BB67984(v2592, v2593, v2594, v2595);
                v3009 = sub_22BB89C7C;
                v3010 = v2570;
                v2596 = sub_22BB542B0();
                sub_22BB67984(v2596, v2597, v2598, v2599);
                sub_22BB3E564();

                v2600 = sub_22BDB7714();
                sub_22BB40F38(&dword_22BB2C000, v2601, v2602, v2600, v2603, "[SessionCoordinator %s] | [TX %s] Notifying ODP about session end.");
                sub_22BD623A0();
                sub_22BB77E48();
                sub_22BB679C0();
              }

              goto LABEL_406;
            }

            sub_22BD6153C();
            v2608 = *(v2842 + 4400);
            sub_22BD61CA0();
            v2609 = *(v2842 + 4224);
            v2610 = sub_22BBBEAD0();
            (v2926)(v2610);
            sub_22BB3A190();
            v2611 = sub_22BDB7784();
            v2612 = sub_22BBBEBC4(v2611);
            (v2950)(v2612);
            sub_22BB757A0();
            sub_22BD61C58();
            v2613();
            v2565(v2608, *MEMORY[0x277D1DE98], v2562);
            sub_22BDB9C74();
            sub_22BD65518();

            sub_22BD65200();
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60428();
            *(v2614 + 16) = v2615;
            *(v2614 + 24) = v2560;
            sub_22BB366B8();
            v2616 = swift_allocObject();
            sub_22BD61A0C(v2616);
            sub_22BB322B0();
            v2617 = swift_allocObject();
            sub_22BB6FEDC(v2617);

            sub_22BDB7744();
            sub_22BB755A0();
            sub_22BDBB1C4();
            sub_22BD616A8();
            v2618 = swift_allocObject();
            sub_22BD63D94(v2618);
            sub_22BD616A8();
            v2619 = swift_allocObject();
            sub_22BD631A4(v2619);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v2620 + 16) = v2621;
            *(v2620 + 24) = v2562;
            sub_22BB322B0();
            v2622 = swift_allocObject();
            sub_22BB3DEE8(v2622);
            sub_22BD616A8();
            v2623 = swift_allocObject();
            sub_22BD64AB8(v2623);
            sub_22BD616A8();
            v2624 = swift_allocObject();
            sub_22BB894FC(v2624);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v2625 + 16) = v2626;
            *(v2625 + 24) = v2617;
            sub_22BB322B0();
            v2627 = swift_allocObject();
            sub_22BB8DCE0(v2627);
            v2628 = sub_22BBCCA6C();
            sub_22BB6B6F0(v2628);
            v2629[6] = sub_22BB89C08;
            v2629[7] = v2619;
            v2629[8] = sub_22BB89C7C;
            v2629[9] = v2622;
            v2629[10] = sub_22BB89C08;
            v2629[11] = v17;
            v2629[12] = sub_22BB89C08;
            v2629[13] = v2519;
            v2629[14] = sub_22BB89C7C;
            v2629[15] = v2617;

            if ((sub_22BDBB244() & 1) == 0)
            {
              sub_22BBC251C();
              v2642 = *(v2641 + 4152);

              v2644 = sub_22BD00E3C();
              (v2950)(v2644);
              sub_22BB53C48();
              sub_22BD61C58();
              v2645();
              sub_22BD615F8();
              v2646 = swift_task_alloc();
              v2647 = sub_22BD624A8(v2646);
              *v2647 = v2648;
              sub_22BB37558(v2647);
              sub_22BB33430();

              sub_22BB75AA8();
              return;
            }

            sub_22BD614E4();
            sub_22BD63EB0("ODPWait");
            sub_22BB96BE8();
            sub_22BDB77B4();

            v2630 = *(v2842 + 88);
            v2631 = sub_22BB53C48();
            if (v2632(v2631) != *MEMORY[0x277D85B00])
            {
              v2658 = sub_22BD60E1C();
              v2659(v2658);
              sub_22BD647E0("[SessionCoordinator %s] | [TX %s] Finished notifying ODP about session end.");
            }

            sub_22BB67968();
            v2660 = sub_22BB97DCC();
            sub_22BD64B60(v2660);
            sub_22BB756D4();
            v3009 = sub_22BB89C08;
            v3010 = v2560;
            v2661 = sub_22BB58B08();
            sub_22BB67984(v2661, v2662, v2663, v2664);
            if (v2842 == -88)
            {
              v2665 = sub_22BB542B0();
              sub_22BB67984(v2665, v2666, v2667, v2668);
              v2669 = sub_22BB542B0();
              sub_22BB67984(v2669, v2670, v2671, v2672);
              v2673 = sub_22BB542B0();
              sub_22BB67984(v2673, v2674, v2675, v2676);
              v2677 = sub_22BB542B0();
              sub_22BB67984(v2677, v2678, v2679, v2680);
              v3009 = sub_22BB89C7C;
              v3010 = v2617;
              v2681 = sub_22BB542B0();
              sub_22BB67984(v2681, v2682, v2683, v2684);
              goto LABEL_425;
            }

LABEL_406:
            sub_22BB33430();

            return;
          }

          sub_22BB67968();
          v2523 = sub_22BD619F0();
          sub_22BD62E2C(v2523);
          sub_22BD641F8(v2524);
          v3009 = sub_22BB89C08;
          v3010 = v17;
          v2525 = sub_22BB58B08();
          sub_22BB67984(v2525, v2526, v2527, v2528);
          if (v2842)
          {
            goto LABEL_331;
          }

          v2637 = sub_22BB542B0();
          sub_22BB67984(v2637, v2638, v2639, v2640);

          v2654 = sub_22BB542B0();
          sub_22BB67984(v2654, v2655, v2656, v2657);

          v3009 = sub_22BB89C08;
          v3010 = &qword_27D8E3218;
          v2693 = sub_22BB542B0();
          sub_22BB67984(v2693, v2694, v2695, v2696);
LABEL_415:

          sub_22BB704E4();
          v3009 = v2700;
          v3010 = v2699;
          v2701 = sub_22BB542B0();
          sub_22BB67984(v2701, v2702, v2703, v2704);
          if (!v194)
          {

            v3009 = sub_22BB89C7C;
            v3010 = v870;
            v2708 = sub_22BB542B0();
            sub_22BB67984(v2708, v2709, v2710, v2711);
            sub_22BD6324C();
            sub_22BD63120(&dword_22BB2C000, v2713, v2714, "[SessionCoordinator %{public}s] | [TX %{public}s] Terminate was encountered. Begin cleanup of session.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_412;
        }

        name = v363;
        sub_22BD62F1C();
        oslog = v381;
        v382 = *(v329 + 48);
        sub_22BB31DC8();
        sub_22BB3A518(v383 + v384, v385);
        v2984 = sub_22BB954F8(v2988);
        v363 = 0;
        v194 = v2923;
        do
        {
          if (v2984 == v363)
          {
            v17 = v3000;
            sub_22BD634C0();
LABEL_86:
            v359 = v2910;
            v446 = *(v17 + 3400);
            sub_22BB33E70();
            sub_22BB34648();
            if (v2910)
            {
              goto LABEL_71;
            }

            while (1)
            {
LABEL_67:
              v364 = v363 + 1;
              if (__OFADD__(v363, 1))
              {
                __break(1u);

                goto LABEL_418;
              }

              if (v364 >= v361)
              {
                break;
              }

              v359 = *(v356 + 8 * v364);
              ++v363;
              if (v359)
              {
                v363 = v364;
                goto LABEL_71;
              }
            }

            v447 = *(v17 + 3064);
            v371 = &qword_27D8E6568;
            sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
            v448 = sub_22BB3A190();
            sub_22BB336D0(v448, v449, 1, v450);
            v2910 = 0;
            goto LABEL_72;
          }

          sub_22BB97C84();
          if (v386)
          {
            __break(1u);
            goto LABEL_323;
          }

          sub_22BD61B54(v3000);
          sub_22BB704CC(v387);
          v389 = *(v388 + 3048);
          sub_22BB966E8(v388);
          v390 = sub_22BD61CC8();
          v391(v390);
          ++v363;
          sub_22BD63B6C();
          v392 = v371[1];
          ++v371;
          v393 = sub_22BB2F3F0();
          v394(v393);
          sub_22BB71FB0();
          sub_22BDB9AC4();
          v395 = sub_22BB58D10();
          v396(v395);
          v329 = swift_task_alloc();
          *(v329 + 16) = v359;
          sub_22BD5FBA4();
          sub_22BD65500();
          v398 = *(v389 + 8);
          v397 = v389 + 8;
          v399 = sub_22BD62E38();
          v400(v399);
          v3001 = v2923;
        }

        while ((&unk_22BDCE460 & 1) == 0);
        sub_22BD61364();
        sub_22BBCBF94();
        sub_22BB335C0(v359, v321);
        v363 = *(v371 + 80);
        sub_22BD61350();
        swift_allocObject();
        sub_22BB3E408();
        sub_22BB3A518(v321, v401 + v397);
        sub_22BB322B0();
        v402 = swift_allocObject();
        sub_22BD5F6BC(v402);
        v403 = sub_22BB500C0();
        sub_22BB335C0(v403, v404);
        sub_22BD62C1C();
        v405 = swift_allocObject();
        sub_22BD62E88(v405);
        sub_22BB322B0();
        v406 = swift_allocObject();
        sub_22BB96620(v406);
        LODWORD(v2990) = sub_22BDBB104();
        sub_22BD616A8();
        v407 = swift_allocObject();
        sub_22BB97E20(v407);
        sub_22BD616A8();
        v408 = swift_allocObject();
        sub_22BD62C10(v408);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v409 + 16) = v410;
        *(v409 + 24) = v402;
        sub_22BB322B0();
        v411 = swift_allocObject();
        sub_22BB3DEE8(v411);
        sub_22BD616A8();
        v412 = swift_allocObject();
        sub_22BB75830(v412);
        sub_22BD616A8();
        v413 = swift_allocObject();
        sub_22BB96A88(v413);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB500CC();
        *(v414 + 16) = v415;
        *(v414 + 24) = v321;
        sub_22BB322B0();
        v356 = swift_allocObject();
        sub_22BB3DEE8(v356);
        v416 = sub_22BBCCA6C();
        sub_22BB31444(v416);
        v417[4] = v418;
        v417[5] = v407;
        v417[6] = sub_22BB89C08;
        v417[7] = v408;
        v417[8] = sub_22BB89C7C;
        v417[9] = v411;
        v417[10] = sub_22BB89C08;
        v417[11] = v363;
        v417[12] = sub_22BB89C08;
        v417[13] = v397;
        v417[14] = sub_22BB89C7C;
        v417[15] = v356;
        sub_22BD64764();

        v419 = sub_22BD612E8();
        if (!os_log_type_enabled(v419, v420))
        {
          sub_22BD62028();

          v435 = sub_22BD62FF8();
          (v2846)(v435);
          v17 = v361;
          sub_22BD61DCC();
          sub_22BD634C0();
          v3001 = v436;
          if (v437)
          {
            sub_22BDBAFD4();
            v438 = v361[421];
          }

          v329 = v361[312];
          sub_22BBC45D0();
          v439 = sub_22BD61D7C();
          v440 = sub_22BBC463C(v439, oslog);
          if (!sub_22BD6341C(v440, v441))
          {
            sub_22BD634B0();
            *(&v2923->isa + v442) = v443;
          }

          v444 = sub_22BD63DBC();
          (v329)(v444);
          v445 = sub_22BD64D68();
          (v321)(v445);
          goto LABEL_86;
        }

        sub_22BB67968();
        v421 = sub_22BB3E030();
        sub_22BD64E04(v421);
        sub_22BB897E4(v419);
        v361[206] = v422;
        sub_22BB384C8();
        v361[188] = v321;
        v423 = sub_22BD607FC();
        sub_22BB67984(v423, v424, v425, v426);
        if (!v2923)
        {
          sub_22BB75658();
          sub_22BB384C8();
          v361[188] = v408;
          v427 = sub_22BD607FC();
          sub_22BB67984(v427, v428, v429, v430);

          sub_22BD608D0();

          sub_22BD607E4();
          *(v397 + 1504) = v363;
          sub_22BD611FC();

          sub_22BD607E4();
          *(v397 + 1504) = v397;
          sub_22BD611FC();

          sub_22BD607CC();
          *(v397 + 1504) = v356;
          sub_22BD611FC();
          v431 = *(v397 + 3944);
          sub_22BD62094();

          sub_22BB96D8C();
          sub_22BD62CB8();
          sub_22BD636C8(v432, v433, v434, "SessionCoordinator found ongoing span to be terminated: %s for participant: %s");
          sub_22BD61EC8();
          sub_22BB77E48();
          sub_22BB679C0();
        }

LABEL_323:

LABEL_361:

LABEL_418:
        sub_22BB33430();

        return;
      case 2u:
        sub_22BD649A0();
        v91 = *(v17 + 3816);
        sub_22BD62190();
        v2970 = v92;
        v93 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
        v94 = sub_22BD6362C(v93);
        v95(v94);
        sub_22BB6BEE0(v18 + v85, v2970, &qword_27D8E3218, &qword_22BDBE390);
        v96 = sub_22BD61AC0(v31);
        v97(v96);
        sub_22BD64294();
        sub_22BDB96A4();
        v98 = v31->n128_u64[1];
        v99 = sub_22BB38518();
        v100(v99);
        v101 = sub_22BDB9744();
        v102 = *(v14 + 8);
        v14 += 8;
        v103 = sub_22BB97B18();
        v104(v103, v2988);
        *(v17 + 1872) = v101;
        v12 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BB69260();
        sub_22BB899C0(v105, v106, v107);
        v31 = v2990;
        sub_22BBBFFBC();
        sub_22BDB90D4();

        sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        sub_22BB3329C();
        if (v146)
        {
          v115 = sub_22BB325EC(*(v17 + 3584), &qword_27D8E6518, &unk_22BDCE420);
          v116 = 1;
        }

        else
        {
          v113 = sub_22BB8EAD8();
          v115 = v114(v113);
          v116 = 0;
        }

        v117 = sub_22BB96DB0(v115, v116);
        v18 = &unk_27D8E69E0;
        sub_22BB3CD70(v117, v118, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BB36B74(v2990);
        if (v146)
        {
          v119 = *(v17 + 3616);
          sub_22BD6201C();
          v125 = sub_22BB325EC(v120, v121, v122);
          v126 = 1;
        }

        else
        {
          sub_22BB93D70();
          v123 = sub_22BD60A7C();
          v125 = v124(v123);
          v126 = 0;
        }

        v127 = sub_22BD60C28(v125, v126);
        v16 = &qword_22BDBE390;
        sub_22BB3CD70(v127, v128, &qword_27D8E3218, &qword_22BDBE390);
        v129 = sub_22BBBE174();
        sub_22BD63AAC(v129, v130);
        v131 = sub_22BB3A190();
        sub_22BB31814(v131, v132, v101);
        if (v146)
        {
          sub_22BD6493C();
          sub_22BB8E9F0();
          sub_22BB325EC(v133, v134, v135);
          sub_22BBBFF9C(&unk_27D8E69E0 + v35);
          if (!v146)
          {
            goto LABEL_28;
          }

          v136 = *(v17 + 3352);
          sub_22BB8E9F0();
          sub_22BB325EC(v137, v138, v139);
        }

        else
        {
          v140 = sub_22BD630F0();
          sub_22BD63AAC(v140, v141);
          sub_22BD618B8();
          sub_22BB3AA28(v142, v143, v144);
          v145 = *(v17 + 3744);
          sub_22BD64930();
          if (v146)
          {
            sub_22BD64924();
            v147 = sub_22BD00E3C();
            sub_22BB325EC(v147, v148, &qword_22BDBE390);
            v149 = v12[1];
            ++v12;
            v150 = sub_22BB3627C();
            v151(v150);
LABEL_28:
            sub_22BB325EC(*(v17 + 3352), &qword_27D8E6510, &qword_22BDCE418);
LABEL_30:
            sub_22BD63100();
            v163 = sub_22BB6C8E0();
            sub_22BB325EC(v163, &unk_27D8E69E0, &qword_22BDC1660);
            v164 = sub_22BD6220C();
            sub_22BB325EC(v164, v165, &qword_22BDBE390);
            v166 = sub_22BB97688();
            v167(v166);
            v111 = sub_22BC54704();
            goto LABEL_31;
          }

          v12 = *(v17 + 3352);
          v15 = *(v17 + 3336);
          v152 = *(v17 + 3320);
          v153 = *(v17 + 3312);
          v154 = sub_22BBC0658(v152);
          v155(v154);
          sub_22BB30DC4();
          sub_22BB3B194(&unk_28142DD40, v156);
          v18 = sub_22BB97518();
          v157 = *(v152 + 8);
          v14 = v152 + 8;
          v158 = sub_22BB32E04();
          v157(v158);
          sub_22BB325EC(v145, &qword_27D8E3218, &qword_22BDBE390);
          v159 = sub_22BD6220C();
          v157(v159);
          sub_22BB8E9F0();
          sub_22BB325EC(v160, v161, v162);
          if ((v18 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v287 = sub_22BD613E8();
        sub_22BB3CD70(v287, v288, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB97E4();
        sub_22BDB9804();
        v12 = sub_22BB954F8(v12);
        v14 = 0;
        v35 = v3001;
        v16 = &qword_22BDC1660;
        v2988 = v12;
        while (1)
        {
          if (v14 == v12)
          {
            sub_22BD642AC();
          }

          else
          {
            v291 = *(v17 + 3000);
            v18 = *(v17 + 2816);
            v31 = *(v17 + 2464);
            v292 = sub_22BD617C4();
            sub_22BB954F0(v292, v293, v294);
            v295 = sub_22BD60908();
            v289 = sub_22BB3CD70(v295, v296, &qword_27D8E6038, &qword_22BDD0300);
            v297 = __OFADD__(v14++, 1);
            if (v297)
            {
              __break(1u);

              goto LABEL_332;
            }

            v290 = 0;
          }

          v298 = sub_22BD6124C(v289, v290);
          sub_22BB6BEE0(v298, v299, &qword_27D8E64E0, &qword_22BDCE3E8);
          sub_22BB3329C();
          if (v146)
          {
            break;
          }

          v300 = sub_22BD60AE8();
          v301(v300);
          sub_22BD651E8();
          sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
          sub_22BB30F68();
          type metadata accessor for XPCClientAvatar();
          if (sub_22BB6FAB0())
          {
            sub_22BB97548();
            v302 = sub_22BB679CC();
            v303(v302);
            v12 = v2988;
            sub_22BB35464();
            swift_storeEnumTagMultiPayload();
            sub_22BB96D40();
            sub_22BBC11B4();
            v304 = sub_22BD61F9C();
            v305(v304, v2992);
            v306 = sub_22BD63620();
            v16 = &qword_22BDC1660;
            v307 = v17;
            v17 = v3000;
            v35 = v3001;
            v308(v306, v307);
          }

          else
          {
            v309 = sub_22BD61BCC();
            v310(v309);
          }
        }

        v311 = sub_22BD613D0();
        sub_22BB325EC(v311, &unk_27D8E69E0, &qword_22BDC1660);
        v312 = sub_22BB313A8();
        sub_22BB325EC(v312, v313, &qword_22BDBE390);
        v314 = sub_22BD60A40();
        v315(v314);
LABEL_97:
        sub_22BB6FC94();
LABEL_98:

        sub_22BB35CBC();
        sub_22BB34648();
        continue;
      case 3u:
        v254 = *(v17 + 4328);
        v255 = *(v17 + 3480);
        v18 = (*(v17 + 2496) + *(v17 + 4440));
        sub_22BB3737C();
        sub_22BB3A518(v256, v257);
        sub_22BD612B0();
        sub_22BD6233C();
        sub_22BD6462C();
        sub_22BD643C4();
        sub_22BD61FB4();

        sub_22BD6486C();
        if (v31)
        {
          sub_22BD62314();
          v2885 = v258;
          sub_22BB6FFE8();
          v2937 = *(v17 + 3184);
          v2943 = *(v17 + 3176);
          v2952 = *(v17 + 3168);
          v2960 = *(v17 + 3192);
          v259 = sub_22BD60B0C();
          (v15)(v259);
          sub_22BD5FFD4();
          v260 = sub_22BD6108C();
          sub_22BB336D0(v260, v261, v262, v46);
          sub_22BB3B69C();
          sub_22BD80A04();
          v263 = v12[1];
          v2927 = *v12;
          v264 = v12[2];
          v2917 = sub_22BDB8444();
          v2910 = v265;
          v266 = v12[3];
          v267 = v12[4];
          v268 = sub_22BDB8444();
          v270 = sub_22BD63008(v268, v269);
          (v15)(v270);
          sub_22BD60F68();

          v271 = sub_22BB53C48();
          sub_22BB352C4(v271, v272);

          sub_22BD61C08();
          sub_22BBBEBD8();
          v273 = sub_22BD62FE8();
          v274(v273);
          sub_22BD64360();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BB6C5A8();
          sub_22BD61E28();
          v275(v31);
          sub_22BB32824();
          goto LABEL_90;
        }

        v31 = *(v17 + 4352);
        v14 = v85;
        sub_22BD61670();
        sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
        sub_22BD63E28();
        sub_22BB32824();
        sub_22BB34648();
        v465 = sub_22BB39478();
        sub_22BB74044(v465, v466, v31);
        v35 = v3001;
        goto LABEL_98;
      case 4u:
        sub_22BB96D4C();
        v219 = *v218;
        v18 = v218[1];
        v12 = v218[2];
        v31 = v218[3];
        v15 = v218[4];
        v2971 = v218[5];
        sub_22BB5837C();
        v14 = v220[10];
        v2951 = v220[9];
        v222 = v220[11];
        v221 = v220[12];
        sub_22BD61468(v223);
        v225 = *(v224 + 8);
        sub_22BB71D80();
        sub_22BD6232C();
        if (v146)
        {
          v227 = 0;
        }

        v228 = v226 | v227;

        v229 = sub_22BD7577C(v228, v225);

        if ((v229 & 1) == 0)
        {
          sub_22BB93D44();

          sub_22BB3531C(v2990, v2992);
          goto LABEL_16;
        }

        v1112 = sub_22BD622A0();
        sub_22BB89ADC(v1112, v1113);
        sub_22BD636B0();

        v15 = v14;

        sub_22BD635CC();

        v14 = v2992;
        v1114 = sub_22BD63E7C();
        sub_22BB352C4(v1114, v1115);
        sub_22BB93D90();
        sub_22BDB5D94();
        v1116 = sub_22BB96CC0();
        v1117(v1116);
        sub_22BDB5E14();
        sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
        v31 = v2926;
        sub_22BD61B48();
        v18 = v2910;
        sub_22BDBAF34();

        v1118 = sub_22BD63E7C();
        sub_22BB3531C(v1118, v1119);
        v1120 = sub_22BB9607C();
        v1121(v1120);
        v17 = v85;
        goto LABEL_96;
      case 5u:
        v108 = sub_22BB758A0();
        (v35)(v108);
        sub_22BD64948();
        if (v109)
        {
          sub_22BB7021C();
          v276 = *(v14 + 88);
          v14 += 88;
          v277 = sub_22BB37074();
          if (v278(v277) == v85)
          {
            v2961 = *(v17 + 4880);
            sub_22BB36924();
            v280 = *(v279 + 3192);
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BD61BE0();
            v16 = *(v281 + 2728);
            sub_22BB707B8();
            v2953 = v282;
            v283 = sub_22BD61400();
            v284(v283);
            v285 = sub_22BD60280(v12);
            v286(v285);
            *(v35 + 2) = 1;
            sub_22BD62270();
            MEMORY[0x23189FC60]();
            goto LABEL_95;
          }

          sub_22BD64D38();
          if (v146)
          {
            v2962 = *(v17 + 4880);
            sub_22BB36924();
            v468 = *(v467 + 3192);
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BB3E550();
            v16 = *(v469 + 2704);
            sub_22BB707B8();
            v2953 = v470;
            v471 = sub_22BD61400();
            v472(v471);
            v473 = sub_22BD60280(v12);
            v474(v473);
            *(v35 + 2) = 0;
            sub_22BD62270();
            MEMORY[0x23189FC80]();
LABEL_95:
            v475 = sub_22BB5810C();
            MEMORY[0x23189FDB0](v475);
            v476 = sub_22BD63484();
            v477(v476);
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61B2C();
            v18 = v2953;
            sub_22BDBAF34();
            v478 = sub_22BD61754();
            v479(v478);
            v480 = sub_22BD62DE8();
            v481(v480, v16);
            v482 = sub_22BD62480();
            v483(v482);
            goto LABEL_96;
          }

          sub_22BD64A80();
          if (v571)
          {
            sub_22BD60EAC();
            v572 = *(v17 + 2696);
            v573 = *(v17 + 2688);
            v12 = *(v17 + 2680);
            v575 = sub_22BC54A3C(v574);
            v576(v575);
            v577 = v573[4].isa;
            v14 = &v573[4];
            v578 = sub_22BD60F04();
            v579(v578);
            v31 = sub_22BDB5BE4();
            sub_22BD44210(v31);
            if (!v3001)
            {
              sub_22BB701E8();
              sub_22BD5A87C(v12);
              sub_22BD64DC8();
              sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
              sub_22BB97200();
              v1199 = sub_22BDBAB14();
              if (sub_22BD63E94(v1199))
              {
                sub_22BD64C10();
                do
                {
                  sub_22BD618B8();
                  sub_22BB954F0(v1200, v1201, v1202);
                  sub_22BD65530();
                  v1203 = sub_22BD60F9C();
                  v1204(v1203);
                  sub_22BD62E50();
                  if (v46)
                  {
                    sub_22BBC066C();
                    sub_22BD62584();
                    sub_22BD80B94(v1205);
                  }

                  sub_22BB954F8(v31);
                  sub_22BBD1A4C();
                }

                while (!v146);
              }

              sub_22BD61DB8();
              name = v1206;
              sub_22BB36E60();
              v2910 = *(v17 + 3336);
              sub_22BBC0934();
              sub_22BD64D8C();
              sub_22BD64D80();
              sub_22BD61280();
              v16 = sub_22BDB95A4();
              v1207 = sub_22BDB5C04();
              sub_22BD63E0C(v1207);
              sub_22BB702A8();

              sub_22BD46274(v15);
              sub_22BD64CA8();
              v1208 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
              sub_22BB976D0(v1208);
              MEMORY[0] = sub_22BDB5BF4();
              MEMORY[8] = v1209;
              sub_22BD44F8C(v15);
              sub_22BD65488();
              sub_22BD634A0();
              swift_storeEnumTagMultiPayload();
              sub_22BB370B8();
              sub_22BD652A8(v1210, v1211);
              sub_22BB35CBC();
              sub_22BB34648();
              v12 = v2910;
              sub_22BD65398();
              v1212 = sub_22BB6FCB8();
              MEMORY[0x23189FDA0](v1212);
              v1213 = sub_22BD61DA4();
              v1214(v1213);
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD60A2C();
              v18 = v2942;
              sub_22BDBAF34();
              v1215 = sub_22BB9607C();
              v1216(v1215, v2988);
              v1217 = sub_22BD61D90();
              v1218(v1217);
              v1219 = sub_22BD60C18();
              v1220(v1219);
              v1221 = *(v17 + 1880);

              v2923 = v35;
              goto LABEL_97;
            }

            sub_22BB8AEEC();
            sub_22BD651D0();
            sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
            sub_22BB76654();
            v965 = swift_dynamicCast();
            v966 = *(v17 + 2496);
            if (!v965)
            {
              sub_22BD65188();
              sub_22BDB63E4();
              sub_22BB322B0();
              v12 = swift_allocObject();
              sub_22BB3CF50(v12);
              sub_22BB366B8();
              v990 = swift_allocObject();
              sub_22BD62774(v990);
              sub_22BD640C0();
              v991 = v3001;
              v3001 = sub_22BDB77C4();
              LODWORD(v2992) = sub_22BDBB114();
              sub_22BD616A8();
              v16 = swift_allocObject();
              sub_22BB97ED4(v16);
              sub_22BD616A8();
              v992 = swift_allocObject();
              sub_22BD61698(v992);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3E0C4();
              *(v993 + 16) = v994;
              *(v993 + 24) = v12;
              sub_22BB322B0();
              v995 = swift_allocObject();
              sub_22BB3DEE8(v995);
              sub_22BD616A8();
              v996 = swift_allocObject();
              sub_22BD61B1C(v996);
              sub_22BD616A8();
              v997 = swift_allocObject();
              sub_22BD63400(v997);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v998 + 16) = v999;
              *(v998 + 24) = v31;
              sub_22BB322B0();
              v1000 = swift_allocObject();
              sub_22BB3965C(v1000);
              sub_22BB322B0();
              v1001 = swift_allocObject();
              sub_22BB69760(v1001);
              v1002 = sub_22BBCCA6C();
              sub_22BB31444(v1002);
              v1003[4] = v1004;
              v1003[5] = v16;
              v1003[6] = sub_22BB89C08;
              v1003[7] = v46;
              v1003[8] = sub_22BB89C7C;
              v1003[9] = v995;
              v1003[10] = sub_22BB89C08;
              v1003[11] = v14;
              v1003[12] = sub_22BB89C08;
              v1003[13] = v15;
              v1003[14] = sub_22BD5F648;
              v1003[15] = v1001;
              sub_22BD65470();

              if (sub_22BD62224())
              {
                v2987 = v14;
                v1005 = sub_22BB67968();
                sub_22BD63870();
                v1006 = sub_22BD62730();
                sub_22BD64038(v1006);
                sub_22BB897E4(v1005);
                *(v17 + 2024) = v1007;
                *(v17 + 1000) = sub_22BB89C08;
                *(v17 + 1008) = v31;
                v1008 = sub_22BB72008();
                sub_22BB67984(v1008, v1009, v1010, v1011);

                sub_22BD604CC();
                *(v17 + 1008) = v46;
                v1012 = sub_22BB72008();
                sub_22BB67984(v1012, v1013, v1014, v1015);

                sub_22BD604E4();
                *(v17 + 1008) = v995;
                v1016 = sub_22BB72008();
                sub_22BB67984(v1016, v1017, v1018, v1019);

                sub_22BD604CC();
                *(v17 + 1008) = v2987;
                v1020 = sub_22BB72008();
                sub_22BB67984(v1020, v1021, v1022, v1023);

                sub_22BD604CC();
                *(v17 + 1008) = v15;
                v1024 = sub_22BB72008();
                sub_22BB67984(v1024, v1025, v1026, v1027);

                sub_22BD604B4();
                *(v17 + 1008) = v1001;
                v1028 = sub_22BB72008();
                sub_22BB67984(v1028, v1029, v1030, v1031);
                v1032 = *(v17 + 3880);
                sub_22BD61A18();

                sub_22BBD1A34();
                sub_22BB6F9C8();
                sub_22BD636C8(v1033, v1034, v1035, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
                sub_22BB325EC(v12, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB89BBC();
                sub_22BB35808();
                sub_22BB679C0();
              }

              sub_22BB89F08(*(v17 + 3880));
              sub_22BD651A0();

              v1160 = sub_22BD6268C();
              v1161(v1160, v16);
              sub_22BD62C34();
              LODWORD(v2910) = *(v17 + 4848);
              sub_22BB34150();
              sub_22BD60954(v1162);
              v1163 = *(v17 + 2696);
              sub_22BD6477C();
              v2964 = v1163;
              v2973 = v1164;
              sub_22BD60AC0();
              sub_22BD647D4(v1165);
              MEMORY[0x23189FBE0]();
              goto LABEL_179;
            }

            sub_22BD651B8();
            sub_22BB322B0();
            v967 = swift_allocObject();
            sub_22BD6002C(v967);
            v968 = sub_22BDB77C4();
            v14 = sub_22BDBB114();
            sub_22BD616A8();
            v969 = swift_allocObject();
            sub_22BD60E0C(v969);
            sub_22BD616A8();
            v970 = swift_allocObject();
            sub_22BD617B4(v970);
            sub_22BB322B0();
            v971 = swift_allocObject();
            sub_22BB97500(v971);
            sub_22BB322B0();
            v972 = swift_allocObject();
            sub_22BD6040C(v972);
            v973 = sub_22BB6F8FC();
            v974 = sub_22BBC2570(v973, xmmword_22BDC2F20);
            v974[2].n128_u64[0] = v975;
            v974[2].n128_u64[1] = v15;
            v974[3].n128_u64[0] = sub_22BB89C08;
            v974[3].n128_u64[1] = v12;
            v974[4].n128_u64[0] = sub_22BB89C7C;
            v974[4].n128_u64[1] = v31;

            if (sub_22BB72E44())
            {
              sub_22BB67968();
              v976 = sub_22BB38198();
              sub_22BD64138(v976);
              sub_22BB3A9B0(v971);
              *(v17 + 1072) = v15;
              v977 = sub_22BD5FBD4();
              sub_22BB67984(v977, v978, v979, v980);

              sub_22BB385A8();
              *(v17 + 1072) = v12;
              v981 = sub_22BD5FBD4();
              sub_22BB67984(v981, v982, v983, v984);

              sub_22BBCC154();
              *(v17 + 1072) = v31;
              v985 = sub_22BD5FBD4();
              sub_22BB67984(v985, v986, v987, v988);
              v989 = *(v17 + 3888);
              sub_22BBD1A28();

              sub_22BB337EC(&dword_22BB2C000, v968, v14, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            v1139 = *(v17 + 3888);
            sub_22BD624B8();

            v1140 = sub_22BB70554();
            v1141(v1140);
            v2928 = *(v17 + 4856);
            sub_22BD62C34();
            sub_22BB3A738();
            v1143 = *(v1142 + 3216);
            sub_22BD60E9C();
            v1145 = *(v1144 + 3200);
            sub_22BB38BC4();
            v18 = v3000[337].isa;
            sub_22BD61C64();
            v2984 = v1146;
            v2988 = v1147;
            sub_22BB38E74();
            sub_22BB70778(v1148);
            MEMORY[0x23189FBE0]();
            v1149 = sub_22BB6A0A0();
            v1150(v1149);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1151 = sub_22BB70294();
            v1152(v1151);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1153 = sub_22BD60E8C();
            v1154(v1153);
            v1155 = sub_22BB97FE0();
            v1156(v1155);
            v1157 = sub_22BD60C18();
            v1158(v1157);
            v1159 = *(v17 + 2056);
LABEL_177:

            goto LABEL_181;
          }

          sub_22BD649AC();
          if (v903)
          {
            v904 = sub_22BD5F900();
            v905(v904);
            v906 = sub_22BB6FF74();
            v907(v906);
            v908 = sub_22BB8ADB4();
            v909(v908);
            sub_22BDB96A4();
            v910 = *(v17 + 8);
            v911 = sub_22BB53C48();
            v912(v911);
            sub_22BDB9744();
            v913 = sub_22BD6161C();
            v914(v913);
            sub_22BD64734();
            v2923 = v3001;
            if (v3001)
            {
              sub_22BD63C38();
              sub_22BDB63E4();
              sub_22BB322B0();
              v915 = swift_allocObject();
              sub_22BB977E8(v915);
              sub_22BB366B8();
              v916 = swift_allocObject();
              sub_22BBC0200(v916);
              v917 = v3001;
              v918 = v15;
              v3003 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v919 = swift_allocObject();
              sub_22BD60E0C(v919);
              sub_22BD616A8();
              v920 = swift_allocObject();
              sub_22BD61698(v920);
              sub_22BB322B0();
              v921 = swift_allocObject();
              sub_22BB31A44(v921);
              sub_22BB322B0();
              v922 = swift_allocObject();
              sub_22BB3DEE8(v922);
              sub_22BD616A8();
              v17 = swift_allocObject();
              sub_22BD61EB0(v17);
              sub_22BD616A8();
              v923 = swift_allocObject();
              sub_22BD62B48(v923);
              v12 = v3003;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v924 + 16) = v925;
              *(v924 + 24) = v31;
              sub_22BB322B0();
              v926 = swift_allocObject();
              sub_22BB3965C(v926);
              sub_22BB322B0();
              v927 = swift_allocObject();
              sub_22BB69760(v927);
              v928 = sub_22BBCCA6C();
              sub_22BB31444(v928);
              v929[4] = v930;
              v929[5] = v15;
              v929[6] = sub_22BB89C08;
              v929[7] = v46;
              v929[8] = sub_22BB89C7C;
              v929[9] = v922;
              v929[10] = sub_22BB89C08;
              v929[11] = v17;
              v929[12] = sub_22BB89C08;
              v929[13] = v14;
              v929[14] = sub_22BD5F648;
              v929[15] = v927;
              sub_22BD64764();

              if (sub_22BD62224())
              {
                sub_22BB67968();
                sub_22BBB5D38();
                v931 = sub_22BD62BF4();
                v16[259] = v15;
                v16[258] = v931;
                sub_22BD62374();
                v16[263] = v927;
                v16[135] = sub_22BB89C08;
                v16[136] = v31;
                v932 = sub_22BB6C714();
                sub_22BB67984(v932, v933, v934, v935);

                sub_22BB96064();
                v16[136] = v46;
                v936 = sub_22BB6C714();
                sub_22BB67984(v936, v937, v938, v939);

                sub_22BD605BC();
                v16[136] = v922;
                v940 = sub_22BB6C714();
                sub_22BB67984(v940, v941, v942, v943);

                v16[135] = sub_22BB89C08;
                v16[136] = v17;
                v944 = sub_22BB6C714();
                sub_22BB67984(v944, v945, v946, v947);

                sub_22BB96064();
                v16[136] = v14;
                v948 = sub_22BB6C714();
                sub_22BB67984(v948, v949, v950, v951);

                v16[135] = sub_22BD5F648;
                v16[136] = v927;
                v952 = sub_22BB6C714();
                sub_22BB67984(v952, v953, v954, v955);
                sub_22BD62CF0();
                sub_22BBD1A34();
                sub_22BD64B84();
                sub_22BD636C8(v956, v957, v958, "[SessionCoordinator %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v15, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB77E48();
                sub_22BB32FA4(v931);
                sub_22BB89BBC();
                sub_22BB679C0();
              }

              sub_22BD61E14();
              v15 = v16[479];

              v1188 = sub_22BD6268C();
              v1189(v1188, v15);
              v3001 = v2923;
              LODWORD(v2917) = *(v16 + 1217);
              v2938 = *(v16 + 1213);
              sub_22BB9666C();
              sub_22BB9664C();
              v2929 = v1190;
              v18 = v16[334];
              sub_22BD64DD4();
              v2975 = v1191;
              sub_22BD6116C();
              MEMORY[0x23189FC40]();
              sub_22BB6FC88();
              sub_22BD64AA0();
              v1192();
              sub_22BD63938();
              sub_22BDB5D34();
              v1193 = sub_22BD62C28();
              v1194(v1193, v2938, v2929);
              sub_22BBBFFBC();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD61834();

              v1195 = sub_22BB96A1C();
              v1196(v1195, v2984);
              (*(v46 + 8))(v18, v2975);
              v1197 = sub_22BB6B714();
              v1198(v1197);
              v35 = 0;
              sub_22BD64BF8();
            }

            else
            {
              sub_22BD64C4C();
              v2954 = v1175;
              sub_22BD6109C();
              v1176 = v16[401];
              v31 = v16[399];
              v1177 = v16[398];
              v1178 = v16[397];
              v2944 = v16[396];
              v1179 = v16[334];
              v12 = v16[333];
              v2984 = v16[332];
              v2988 = v16[400];
              v2965 = v16[310];
              v2974 = v16[402];

              sub_22BD646D4();
              sub_22BB3FBBC();
              sub_22BDB5D64();
              v1180 = sub_22BD64DF8();
              v1181(v1180, v2954, v2944);
              sub_22BD62724();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              v18 = v2965;
              v14 = v2974;
              sub_22BDBAF34();
              v1182 = sub_22BD633C4();
              v1183(v1182);
              v1184 = sub_22BB70264();
              v1185(v1184, v2984);
              v1186 = sub_22BD60C18();
              v1187(v1186);
              v35 = 0;
              v17 = v16;
            }

            goto LABEL_97;
          }

          sub_22BBC01F4();
          if (!v959)
          {
            sub_22BD647A8();
            if (v1122)
            {
              v2963 = *(v17 + 4844);
              sub_22BD5FA30();
              sub_22BB58D38();
              v2972 = v1123;
              v1125 = sub_22BC54A3C(v1124);
              v1126(v1125);
              v1127 = sub_22BD60294();
              v1128(v1127);
              sub_22BD653C8();
              v1129 = sub_22BBC055C();
              MEMORY[0x23189FDC0](v1129);
              v1130 = sub_22BD63484();
              v1131(v1130);
              sub_22BD642A0();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              v31 = v2984;
              sub_22BB5810C();
              v18 = v2972;
              sub_22BDBAF34();
              v1132 = sub_22BD6160C();
              v1133(v1132);
              v1134 = v12[1];
              ++v12;
              v1135 = sub_22BB35464();
              v1136(v1135);
              v1137 = sub_22BD649D0();
            }

            else
            {
              sub_22BD64D50();
              if (!v1222)
              {
                sub_22BD64C9C();
                if (v1371)
                {
                  v2977 = *(v17 + 4840);
                  sub_22BB32468();
                  v1373 = *(v1372 + 2544);
                  v14 = v3000[317].isa;
                  v16 = v3000[316].isa;
                  v1374 = sub_22BB381B4();
                  v1375(v1374);
                  v1376 = sub_22BD601CC();
                  v1377(v1376);
                  sub_22BD63EF8();
                  sub_22BD5FC18();

                  sub_22BD62270();
                  MEMORY[0x23189FB20]();
                }

                else
                {
                  sub_22BD64C34();
                  if (!v1422)
                  {
                    sub_22BD64C1C();
                    if (v1456)
                    {
                      v2995 = *(v17 + 3464);
                      sub_22BB96B90();
                      v1457 = *(v17 + 2488);
                      v1459 = sub_22BC54A3C(v1458);
                      v1460(v1459);
                      v1461 = sub_22BB70250();
                      v1462(v1461);
                      sub_22BB71FB0();
                      sub_22BDB5BA4();
                      sub_22BD644B8();
                      v1463 = sub_22BD61590();
                      v1464(v1463);
                      v1465 = sub_22BB3A840();
                      sub_22BB3AA28(v1465, v1466, v2995);
                      sub_22BB97DC0();
                      if (v146)
                      {
                        sub_22BB325EC(*(v17 + 2776), &qword_27D8E64D8, &qword_22BDCE3E0);
                      }

                      else
                      {
                        v12 = *(v17 + 3472);
                        v1467 = *(v17 + 3464);
                        v1468 = *(v17 + 3336);
                        v15 = *(v17 + 2784);
                        v1469 = *(v17 + 2776);
                        v46 = *(v17 + 2600);
                        v1470 = *(v17 + 2488);
                        sub_22BB3737C();
                        sub_22BB3A518(v1471, v12);
                        v1472 = sub_22BD65440();
                        sub_22BB75894(v1472, v1473);
                        sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
                        sub_22BD63E44();
                        sub_22BD646A4();
                        sub_22BD61854();
                        sub_22BB32824();
                        sub_22BB34648();
                      }

                      v2946 = *(v17 + 4836);
                      v14 = v1457 != 1;
                      sub_22BD61390();
                      v1525 = *(v17 + 3216);
                      v1526 = *(v17 + 3208);
                      v1527 = *(v17 + 3200);
                      sub_22BD61308();
                      v2967 = v1528;
                      sub_22BB95A24();
                      v2984 = v1529;
                      v2988 = v1530;
                      sub_22BD619BC();
                      v2955 = v1531;
                      MEMORY[0x23189FB80]();
                      sub_22BD63334();
                      sub_22BDB5DB4();
                      v1532 = v12[13];
                      v12 += 13;
                      v1533 = sub_22BD636A4();
                      v1534(v1533);
                      sub_22BB97B18();
                      sub_22BDB5E14();
                      sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                      v18 = v2955;
                      v31 = v2967;
                      sub_22BBC055C();
                      sub_22BDBAF34();
                      v1535 = sub_22BD6160C();
                      v1536(v1535);
                      v1537 = *(v46 + 8);
                      v1538 = sub_22BD62578();
                      v1539(v1538);
                      v1540 = sub_22BB3ACA0();
                      v1541(v1540);
                    }

                    else
                    {
                      sub_22BD616CC();
                      sub_22BB322B0();
                      v1495 = swift_allocObject();
                      v1496 = sub_22BD5FB20(v1495);
                      v1497(v1496);
                      sub_22BD60E54(*(v17 + 64));
                      v1498 = swift_allocObject();
                      v1499 = sub_22BD61D68(v1498);
                      (v35)(v1499);

                      v2996 = sub_22BDB77C4();
                      LODWORD(v2988) = sub_22BDBB114();
                      sub_22BD616A8();
                      v1500 = swift_allocObject();
                      sub_22BD61784(v1500);
                      sub_22BD616A8();
                      v1501 = swift_allocObject();
                      sub_22BD63308(v1501);
                      sub_22BB322B0();
                      v1502 = swift_allocObject();
                      sub_22BBBE7C0(v1502);
                      sub_22BB322B0();
                      v14 = swift_allocObject();
                      sub_22BB69C9C(v14);
                      sub_22BD616A8();
                      v15 = swift_allocObject();
                      sub_22BB6C06C(v15);
                      sub_22BD616A8();
                      v1503 = swift_allocObject();
                      sub_22BD64AC4(v1503);
                      sub_22BB322B0();
                      v1504 = swift_allocObject();
                      sub_22BD6039C(v1504);
                      sub_22BB322B0();
                      v1505 = swift_allocObject();
                      sub_22BB960B8(v1505);
                      v31 = sub_22BBCCA6C();
                      sub_22BB34620(v31);
                      v1506[4] = v1507;
                      v1506[5] = v35;
                      v1506[6] = sub_22BB89C08;
                      v1506[7] = v17;
                      v1506[8] = sub_22BB89C7C;
                      v1506[9] = v14;
                      v1506[10] = sub_22BB89C08;
                      v1506[11] = v15;
                      v1506[12] = sub_22BB89C08;
                      v1506[13] = v3001;
                      v1506[14] = sub_22BB89C7C;
                      v1506[15] = v1505;

                      sub_22BD63C2C();

                      v1508 = sub_22BD624F4();
                      if (os_log_type_enabled(v1508, v1509))
                      {
                        sub_22BB67968();
                        v1510 = sub_22BBBFF34();
                        v16[293] = 0;
                        v16[289] = v1510;
                        sub_22BBBEB6C();
                        sub_22BD60EBC(v1511);
                        v16[172] = v35;
                        sub_22BBBEAA0();
                        if (!v3001)
                        {

                          sub_22BB3B510();
                          *(v1512 + 1368) = v1513;
                          *(v1512 + 1376) = v17;
                          sub_22BD60E34(v1512);

                          sub_22BB70564();
                          *(v1514 + 1368) = v1515;
                          *(v1514 + 1376) = v14;
                          sub_22BD60E34(v1514);

                          sub_22BB3B510();
                          *(v1516 + 1368) = v1517;
                          *(v1516 + 1376) = v15;
                          sub_22BD60E34(v1516);

                          sub_22BB3B510();
                          *(v1518 + 1368) = v1519;
                          *(v1518 + 1376) = v2990;
                          sub_22BD60E34(v1518);

                          sub_22BB70564();
                          *(v1520 + 1368) = v1521;
                          *(v1520 + 1376) = v1505;
                          sub_22BD60E34(v1520);
                          v1522 = v3000[487].isa;
                          v1523 = v3000[480].isa;
                          sub_22BBC03A4();

                          sub_22BD61B3C();
                          sub_22BD636C8(&dword_22BB2C000, v2996, v1524, "[SessionCoordinator %{public}s] Unrecognized debugger event: %s.");
                          sub_22BD61EE4();
                          sub_22BB89BBC();
                          sub_22BB679C0();
                        }

LABEL_417:

                        goto LABEL_412;
                      }

                      sub_22BD61ADC();

                      v1542 = sub_22BD60A40();
                      v1543(v1542);
                      v1544 = v18[1].isa;
                      ++v18;
                      v1544(v2988, v2984);
                      v1545 = sub_22BBC03B8();
                      v1546(v1545);
                      v17 = v16;
                    }

LABEL_96:
                    v35 = v3001;
                    goto LABEL_97;
                  }

                  v2978 = *(v17 + 4840);
                  sub_22BB32468();
                  v1424 = *(v1423 + 2520);
                  v14 = v3000[314].isa;
                  v16 = v3000[313].isa;
                  v1425 = sub_22BB381B4();
                  v1426(v1425);
                  v1427 = sub_22BD601CC();
                  v1428(v1427);
                  sub_22BD63EF8();
                  sub_22BD5FBE8();

                  sub_22BD62270();
                  MEMORY[0x23189FB40]();
                }

                v1429 = sub_22BD60C68();
                MEMORY[0x23189FD40](v1429);
                sub_22BD62240();
                sub_22BD64994();
                v1430();
                v18 = v2950;
                sub_22BB6FCB8();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BB70270();
                v1431 = sub_22BB8EAA8();
                v1432(v1431);
                v35 = v3001;
                v1433 = sub_22BD62FA4();
                v1434(v1433);
                v1435 = sub_22BD641B0();
                v1436(v1435);
                v2923 = v3001;
                goto LABEL_97;
              }

              v1223 = *(v17 + 4792);
              v1224 = *(v17 + 4344);
              v2966 = *(v17 + 4104);
              v2976 = *(v17 + 4304);
              sub_22BD5FADC();
              v1225 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
              sub_22BD64960(v1225);
              sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
              v1226 = v31[4].n128_u64[1];
              v1227 = v31[5].n128_u8[0];
              v1228 = sub_22BD61330();
              sub_22BD5B890(v1228, 1);
              v1229 = sub_22BD60DDC();
              v1230(v1229);
              v1231 = sub_22BD63D10();
              sub_22BD74A58(v1231, v1232);
              v1233 = sub_22BD61CB4();
              v1234(v1233);
              sub_22BD61D54();
              swift_storeEnumTagMultiPayload();
              sub_22BD5F83C();
              sub_22BD645B8();
              sub_22BB3630C();
              sub_22BD65290(v1235, v1236);
              sub_22BB35CBC();
              sub_22BB34648();
              v1237 = sub_22BD62FB4();
              v1238(v1237);
              v1137 = sub_22BD63194();
            }

            v1138(v1137);
            goto LABEL_96;
          }

          v960 = sub_22BD60BB8();
          v961(v960);
          v962 = sub_22BD60BA4();
          v963(v962);
          v964 = sub_22BDB5C54();
          sub_22BBC0358(v964);
          if (v3001)
          {

            sub_22BB8AEEC();
            sub_22BD654E8();
            sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
            sub_22BD64D2C();
            v1250 = swift_dynamicCast();
            v1251 = *(v17 + 2496);
            if (v1250)
            {
              sub_22BD654D0();
              sub_22BB322B0();
              v1252 = swift_allocObject();
              sub_22BD6002C(v1252);
              v18 = sub_22BDB77C4();
              v14 = sub_22BDBB114();
              sub_22BD616A8();
              v12 = swift_allocObject();
              sub_22BB97ED4(v12);
              sub_22BD616A8();
              v31 = swift_allocObject();
              sub_22BB6FB2C(v31);
              sub_22BB322B0();
              v1253 = swift_allocObject();
              sub_22BB97500(v1253);
              sub_22BB322B0();
              v15 = swift_allocObject();
              sub_22BD6076C(v15);
              v1254 = sub_22BB6F8FC();
              v1255 = sub_22BBC2570(v1254, xmmword_22BDC2F20);
              v1255[2].n128_u64[0] = v1256;
              v1255[2].n128_u64[1] = v12;
              v1255[3].n128_u64[0] = sub_22BB89C08;
              v1255[3].n128_u64[1] = v31;
              v1255[4].n128_u64[0] = sub_22BB89C7C;
              v1255[4].n128_u64[1] = v15;

              if (sub_22BB72E44())
              {
                sub_22BB67968();
                v1257 = sub_22BB38198();
                sub_22BB89B00(v1257);
                sub_22BB6BD50(v1253);
                *(v17 + 1200) = v12;
                v1258 = sub_22BD5FC64();
                sub_22BB67984(v1258, v1259, v1260, v1261);

                sub_22BD5F824();
                *(v17 + 1200) = v31;
                v1262 = sub_22BD5FC64();
                sub_22BB67984(v1262, v1263, v1264, v1265);

                sub_22BD5F80C();
                *(v17 + 1200) = v15;
                v1266 = sub_22BD5FC64();
                sub_22BB67984(v1266, v1267, v1268, v1269);
                v1270 = *(v17 + 3856);
                sub_22BB96A7C();

                sub_22BB337EC(&dword_22BB2C000, v18, v14, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
                sub_22BB30DDC();
                sub_22BB679C0();
              }

              v1378 = *(v17 + 3856);
              sub_22BD624B8();

              v1379 = sub_22BB70554();
              v1380(v1379);
              v2930 = *(v17 + 4856);
              sub_22BD62C34();
              sub_22BB3A738();
              v1382 = *(v1381 + 3216);
              sub_22BD60E9C();
              v1384 = *(v1383 + 3200);
              sub_22BB38BC4();
              sub_22BD62F94(v1385);
              sub_22BD60B7C();
              v2984 = v1386;
              v2988 = v1387;
              sub_22BB38E74();
              sub_22BB70778(v1388);
              MEMORY[0x23189FC10]();
              v1389 = sub_22BB6A0A0();
              v1390(v1389);
              sub_22BD60C68();
              sub_22BDB5D34();
              v1391 = sub_22BB70294();
              v1392(v1391);
              sub_22BBBFFBC();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD617A4();
              sub_22BDBAF34();
              v1393 = sub_22BD60E8C();
              v1394(v1393);
              v1395 = sub_22BB97FE0();
              v1396(v1395);
              v1397 = sub_22BD60C18();
              v1398(v1397);
              v1159 = *(v17 + 2304);
              goto LABEL_177;
            }

            sub_22BD654B8();
            sub_22BDB63E4();
            sub_22BB322B0();
            v12 = swift_allocObject();
            sub_22BB3CF50(v12);
            sub_22BB366B8();
            v1271 = swift_allocObject();
            sub_22BD62774(v1271);
            sub_22BD640C0();
            v1272 = v3001;
            v3001 = sub_22BDB77C4();
            LODWORD(v2992) = sub_22BDBB114();
            sub_22BD616A8();
            v16 = swift_allocObject();
            sub_22BB97ED4(v16);
            sub_22BD616A8();
            v1273 = swift_allocObject();
            sub_22BD61698(v1273);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1274 + 16) = v1275;
            *(v1274 + 24) = v12;
            sub_22BB322B0();
            v995 = swift_allocObject();
            sub_22BB3DEE8(v995);
            sub_22BD616A8();
            v1276 = swift_allocObject();
            sub_22BD61B1C(v1276);
            sub_22BD616A8();
            v1277 = swift_allocObject();
            sub_22BD63400(v1277);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEBAC();
            *(v1278 + 16) = v1279;
            *(v1278 + 24) = v31;
            sub_22BB322B0();
            v1280 = swift_allocObject();
            sub_22BB3FE28(v1280);
            sub_22BB322B0();
            v1281 = swift_allocObject();
            sub_22BB8E554(v1281);
            v1282 = sub_22BBCCA6C();
            sub_22BB31444(v1282);
            v1283[4] = v1284;
            v1283[5] = v16;
            v1283[6] = sub_22BB89C08;
            v1283[7] = v46;
            v1283[8] = sub_22BB89C7C;
            v1283[9] = v995;
            v1283[10] = sub_22BB89C08;
            v1283[11] = v14;
            v1283[12] = sub_22BB89C08;
            v1283[13] = v15;
            v1283[14] = sub_22BD5EBD8;
            v1283[15] = v1281;
            sub_22BD65470();

            if (sub_22BD62224())
            {
              sub_22BB67968();
              sub_22BD63820();
              v1285 = sub_22BD62730();
              sub_22BD64CE4(v1285);
              sub_22BD60DCC();
              *(v17 + 2272) = v1286;
              *(v17 + 1240) = sub_22BB89C08;
              *(v17 + 1248) = v31;
              v1287 = sub_22BB72E30();
              sub_22BB67984(v1287, v1288, v1289, v1290);

              sub_22BD6070C();
              *(v17 + 1248) = v46;
              v1291 = sub_22BB72E30();
              sub_22BB67984(v1291, v1292, v1293, v1294);

              sub_22BB73B04();
              *(v17 + 1248) = v995;
              v1295 = sub_22BB72E30();
              sub_22BB67984(v1295, v1296, v1297, v1298);

              sub_22BD6070C();
              *(v17 + 1248) = v14;
              v1299 = sub_22BB72E30();
              sub_22BB67984(v1299, v1300, v1301, v1302);

              sub_22BD6070C();
              *(v17 + 1248) = v15;
              v1303 = sub_22BB72E30();
              sub_22BB67984(v1303, v1304, v1305, v1306);

              sub_22BD606F4();
              *(v17 + 1248) = v1281;
              v1307 = sub_22BB72E30();
              sub_22BB67984(v1307, v1308, v1309, v1310);
              v1311 = *(v17 + 3848);
              sub_22BD61A18();

              sub_22BBD1A34();
              sub_22BB6F9C8();
              sub_22BD63EE0(v1312, v1313, v1314, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
              sub_22BB325EC(v12, &unk_27D8E6A70, &unk_22BDBCDB0);
              sub_22BB89BBC();
              sub_22BB35808();
              sub_22BB679C0();
            }

            sub_22BB89F08(*(v17 + 3848));
            sub_22BD651A0();

            v1399 = sub_22BD6268C();
            v1400(v1399, v16);
            sub_22BD62C34();
            LODWORD(v2910) = *(v17 + 4848);
            sub_22BB34150();
            sub_22BD60954(v1401);
            v1402 = *(v17 + 2648);
            sub_22BD64C58();
            v2964 = v1402;
            v2973 = v1403;
            sub_22BD60AC0();
            sub_22BD647D4(v1404);
            MEMORY[0x23189FC10]();
LABEL_179:
            v1166 = sub_22BD64258();
            v1167(v1166, v2910, v995);
            sub_22BD61F0C();
            sub_22BDB5D34();
            v1168 = sub_22BD62C28();
            v1169(v1168, v2942, v2917);
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v18 = v2936;
            sub_22BDBAF34();

            v1170 = sub_22BD61FA8();
            v1171(v1170, v2984);
            v1172 = *(v15 + 8);
            v15 += 8;
            v1172(v2964, v2973);
LABEL_180:
            v1173 = sub_22BD61EBC();
            v1174(v1173, v2992);
LABEL_181:
            v35 = 0;
            goto LABEL_97;
          }

          sub_22BB701E8();
          sub_22BD5A87C(v12);
          v2923 = 0;
          sub_22BD63DA0();
          sub_22BDB96D4();
          sub_22BB3329C();
          if (!v146)
          {
            v2945 = *(v17 + 4860);
            v14 = *(v17 + 4448);
            v16 = *(v17 + 3544);
            v1437 = *(v17 + 3536);
            v1438 = *(v17 + 3528);
            sub_22BB36E60();
            sub_22BD630B0();
            sub_22BD63F70();
            v17 = v3000[398].isa;
            v1439 = v3000[397].isa;
            sub_22BD60B68();
            v2910 = *(v1440 + 2648);
            sub_22BD605D4();
            v2939 = v1441;

            v1442 = sub_22BD61510();
            v1443(v1442);
            sub_22BD62110();
            v1444 = sub_22BD614F8();
            v1445(v1444);
            v1446 = sub_22BD65260();
            v15 = v2910;
            MEMORY[0x23189FC10](v1446);
            sub_22BD653F8();
            v1447 = *(v1439 + 13);
            v31 = (v1439 + 104);
            v1448 = sub_22BD636A4();
            v1449(v1448);
            sub_22BB97B18();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v18 = v2939;
            sub_22BDBAF34();
            v1450 = sub_22BB9607C();
            v1451(v1450);
            v1452 = sub_22BD632C4();
            v1453(v1452);
            v1454 = sub_22BD63394();
            v1455(v1454);
            goto LABEL_180;
          }

          v1405 = sub_22BD633E4();
          sub_22BB325EC(v1405, &qword_27D8E64D0, &qword_22BDCE3D8);
          sub_22BDB63E4();
          sub_22BB322B0();
          v1406 = swift_allocObject();
          sub_22BD60000(v1406);
          v18 = sub_22BDB77C4();
          v14 = sub_22BDBB114();
          sub_22BD616A8();
          v1407 = swift_allocObject();
          sub_22BB96D7C(v1407);
          sub_22BD616A8();
          v31 = swift_allocObject();
          sub_22BB6FB2C(v31);
          sub_22BB322B0();
          v1408 = swift_allocObject();
          sub_22BB97500(v1408);
          sub_22BB322B0();
          v15 = swift_allocObject();
          sub_22BBC0888(v15);
          v1409 = sub_22BB6F8FC();
          v1410 = sub_22BBC2570(v1409, xmmword_22BDC2F20);
          v1410[2].n128_u64[0] = v1411;
          v1410[2].n128_u64[1] = v46;
          v1410[3].n128_u64[0] = sub_22BB89C08;
          v1410[3].n128_u64[1] = v31;
          v1410[4].n128_u64[0] = sub_22BB89C7C;
          v1410[4].n128_u64[1] = v15;

          if (!sub_22BB72E44())
          {
            v1474 = *(v17 + 3864);
            v1475 = *(v17 + 3840);
            sub_22BD62CAC();

            v1476 = *(v1475 + 8);
            v1477 = sub_22BB2F0E0();
            v1478(v1477);
            v2931 = *(v17 + 4864);
            sub_22BD62C34();
            sub_22BB3A738();
            v1480 = *(v1479 + 3216);
            sub_22BD60E9C();
            v1482 = *(v1481 + 3200);
            sub_22BB38BC4();
            sub_22BD62F94(v1483);
            sub_22BD60B7C();
            v2984 = v1484;
            v2988 = v1485;
            sub_22BB38E74();
            sub_22BB70778(v1486);
            MEMORY[0x23189FC10]();
            v1487 = sub_22BB6A0A0();
            v1488(v1487);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1489 = sub_22BB70294();
            v1490(v1489);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1491 = sub_22BD60E8C();
            v1492(v1491);
            v1493 = sub_22BB97FE0();
            v1494(v1493);
            goto LABEL_180;
          }

          sub_22BB67968();
          v1412 = sub_22BB6B650();
          sub_22BD5FB4C(v1412);
          if (!v1409)
          {

            sub_22BD61074();
            *(v17 + 1152) = v31;
            v1413 = sub_22BB938D8();
            sub_22BB67984(v1413, v1414, v1415, v1416);

            sub_22BD6105C();
            *(v17 + 1152) = v15;
            v1417 = sub_22BB938D8();
            sub_22BB67984(v1417, v1418, v1419, v1420);
            v1421 = *(v17 + 3864);
            sub_22BD64324();

            sub_22BD63B54(&dword_22BB2C000, v18, v14, "[SessionCoordinator %{public}s] | Provided transcript had no events. Rejecting it.");
            sub_22BB35808();
            sub_22BB679C0();
          }

LABEL_332:

          goto LABEL_412;
        }

        sub_22BD614A0();
        v110();
LABEL_16:
        v111 = sub_22BB3A9D4();
LABEL_31:
        sub_22BB74044(v111, v112, v18);

        sub_22BB35CBC();
        sub_22BB34648();
        v35 = v3001;
        continue;
      case 6u:
        v2315 = *(v17 + 4080);
        sub_22BD63920();
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        sub_22BB322B0();
        v2316 = swift_allocObject();
        sub_22BD60000(v2316);
        v2317 = sub_22BDB77C4();
        sub_22BDBB134();
        sub_22BD616A8();
        v2318 = swift_allocObject();
        sub_22BB97ED4(v2318);
        sub_22BD616A8();
        v2319 = swift_allocObject();
        sub_22BB6FB2C(v2319);
        sub_22BB322B0();
        v2320 = swift_allocObject();
        sub_22BB97500(v2320);
        sub_22BB322B0();
        v2321 = swift_allocObject();
        sub_22BBC0888(v2321);
        v2322 = sub_22BB6F8FC();
        v2323 = sub_22BBC2570(v2322, xmmword_22BDC2F20);
        v2323[2].n128_u64[0] = v2324;
        v2323[2].n128_u64[1] = v2318;
        v2323[3].n128_u64[0] = sub_22BB89C08;
        v2323[3].n128_u64[1] = v2319;
        v2323[4].n128_u64[0] = sub_22BB89C7C;
        v2323[4].n128_u64[1] = v2321;

        if (sub_22BC54EF8())
        {
          sub_22BB67968();
          v2325 = sub_22BB6B650();
          sub_22BB3E0DC(v2325);
          sub_22BBC78A8(v2326);
          v3009 = v2327;
          v3010 = v2318;
          v2328 = sub_22BB58B08();
          sub_22BB67984(v2328, v2329, v2330, v2331);
          if (!v2322)
          {

            v2346 = sub_22BB542B0();
            sub_22BB67984(v2346, v2347, v2348, v2349);

            v3009 = sub_22BB89C7C;
            v3010 = v2321;
            v2350 = sub_22BB542B0();
            sub_22BB67984(v2350, v2351, v2352, v2353);
            v2354 = *(v17 + 4080);
            sub_22BD62094();

            sub_22BB6FAD4(&dword_22BB2C000, v2355, v2356, "[SessionCoordinator %{public}s] Processed SIGTERM. Exiting.");
            sub_22BB35808();
            sub_22BB679C0();
          }

          goto LABEL_361;
        }

        v2332 = *(v17 + 4080);
        sub_22BD62094();

        (*(v14 + 8))(v2332, v2322);
        sub_22BB704B0();
        sub_22BBBE8EC();
        v2333 = *(v17 + 4352);
        v2334 = *(v17 + 4344);
        sub_22BBD2294();
        v2721 = v2318[534];
        v2722 = v2318[533];
        v2723 = v2318[532];
        v2724 = v2318[531];
        v2725 = v2318[530];
        v2726 = v2318[527];
        v2727 = v2318[526];
        v2728 = v2318[525];
        v2729 = v2318[524];
        v2730 = v2318[523];
        v2731 = v2318[522];
        v2732 = v2318[521];
        v2733 = v2318[518];
        v2734 = v2318[517];
        v2735 = v2318[516];
        v2736 = v2318[512];
        v2737 = v2318[511];
        v2738 = v2318[510];
        v2739 = v2318[509];
        v2740 = v2318[508];
        v2741 = v2318[507];
        v2742 = v2318[506];
        v2743 = v2318[505];
        v2744 = v2318[504];
        v2745 = v2318[503];
        v2746 = v2318[502];
        v2747 = v2318[501];
        v2748 = v2318[500];
        v2749 = v2318[499];
        v2750 = v2318[498];
        v2751 = v2318[497];
        v2752 = v2318[496];
        v2753 = v2318[495];
        v2754 = v2318[494];
        v2755 = v2318[493];
        v2756 = v2318[492];
        v2757 = v2318[491];
        v2758 = v2318[490];
        v2759 = v2318[489];
        v2760 = v2318[488];
        v2761 = v2318[487];
        v2762 = v2318[486];
        v2763 = v2318[485];
        v2764 = v2318[484];
        v2765 = v2318[483];
        v2766 = v2318[482];
        v2767 = v2318[481];
        v2768 = v2318[478];
        v2769 = v2318[477];
        v2770 = v2318[476];
        v2771 = v2318[475];
        v2772 = v2318[474];
        v2773 = v2318[473];
        v2774 = v2318[472];
        v2775 = v2318[471];
        v2776 = v2318[470];
        v2777 = v2318[469];
        v2778 = v2318[468];
        v2779 = v2318[467];
        v2780 = v2318[464];
        v2781 = v2318[461];
        v2782 = v2318[460];
        v2783 = v2318[459];
        v2784 = v2318[458];
        v2785 = v2318[457];
        v2786 = v2318[456];
        v2787 = v2318[455];
        v2788 = v2318[454];
        v2789 = v2318[453];
        v2790 = v2318[452];
        v2791 = v2318[448];
        v2792 = v2318[447];
        v2793 = v2318[446];
        v2794 = v2318[445];
        v2795 = v2318[444];
        v2797 = v2318[443];
        v2799 = v2318[440];
        v2801 = v2318[439];
        v2802 = v2318[438];
        v2803 = v2318[435];
        v2805 = v2318[434];
        v2807 = v2318[432];
        v2809 = v2318[431];
        v2811 = v2318[427];
        v2812 = v2318[426];
        v2813 = v2318[425];
        v2815 = v2318[424];
        v2817 = v2318[420];
        v2819 = v2318[419];
        v2821 = v2318[417];
        v2824 = v2318[416];
        v2827 = v2318[413];
        v2830 = v2318[412];
        v2835 = v2318[411];
        v2837 = v2318[410];
        v2839 = v2318[409];
        v2840 = v2318[408];
        v2841 = v2318[407];
        v2843 = v2318[406];
        v2845 = v2318[402];
        v2848 = v2318[399];
        v2849 = v2318[398];
        v2850 = v2318[395];
        v2851 = v2318[394];
        v2852 = v2318[391];
        v2853 = v2318[390];
        v2856 = v2318[387];
        v2858 = v2318[384];
        v2861 = v2318[383];
        v2865 = v2318[382];
        v2870 = v2318[379];
        v2872 = v2318[378];
        v2874 = v2318[377];
        v2876 = v2318[373];
        v2877 = v2318[372];
        v2878 = v2318[369];
        v2883 = v2318[368];
        v2884 = v2318[365];
        v2886 = v2318[364];
        v2894 = v2318[363];
        osloge = v2318[360];
        v2907 = v2318[358];
        namea = v2318[357];
        v2916 = v2318[356];
        v2922 = v2318[353];
        v2925 = v2318[352];
        v2935 = v2318[351];
        sub_22BB898F4();
        sub_22BB35CBC();
        sub_22BB34648();
        v2335 = v2318[197];

        v2336 = sub_22BD632B8();
        v2337(v2336, v2319);

        sub_22BB2F09C();
        sub_22BB33430();

        v2339(v2338, v2339, v2340, v2341, v2342, v2343, v2344, v2345, a9, a10, a11, a12);
        return;
      case 7u:
        v230 = *(v17 + 4072);
        sub_22BD63920();
        sub_22BDB63E4();
        sub_22BB322B0();
        v231 = swift_allocObject();
        sub_22BD60000(v231);
        v18 = sub_22BDB77C4();
        v232 = sub_22BDBB114();
        sub_22BD616A8();
        v233 = swift_allocObject();
        sub_22BD60E0C(v233);
        sub_22BD616A8();
        v234 = swift_allocObject();
        sub_22BB70358(v234);
        sub_22BB322B0();
        v235 = swift_allocObject();
        sub_22BB97500(v235);
        sub_22BB322B0();
        v236 = swift_allocObject();
        sub_22BD6040C(v236);
        v237 = sub_22BB6F8FC();
        v238 = sub_22BBC2570(v237, xmmword_22BDC2F20);
        v238[2].n128_u64[0] = v239;
        v238[2].n128_u64[1] = v15;
        v238[3].n128_u64[0] = sub_22BB89C08;
        v238[3].n128_u64[1] = v14;
        v238[4].n128_u64[0] = sub_22BB89C7C;
        v238[4].n128_u64[1] = v31;

        if (sub_22BC54EF8())
        {
          sub_22BB67968();
          v240 = sub_22BB38198();
          *(v17 + 2392) = 0;
          *(v17 + 2360) = v240;
          sub_22BD60D14(v235);
          *(v17 + 1456) = v15;
          v241 = sub_22BB6F9B4();
          sub_22BB67984(v241, v242, v243, v244);
          if (!v3001)
          {

            sub_22BBBE83C();
            *(v17 + 1456) = v14;
            v245 = sub_22BB6F9B4();
            sub_22BB67984(v245, v246, v247, v248);

            sub_22BD60FFC();
            *(v17 + 1456) = v31;
            v249 = sub_22BB6F9B4();
            sub_22BB67984(v249, v250, v251, v252);
            v253 = *(v17 + 4072);
            sub_22BD61A18();

            sub_22BB337EC(&dword_22BB2C000, v18, v232, "[SessionCoordinator %{public}s] | Detected failure in debugger handling. Disabling debug modes and terminating session.");
            sub_22BB30DDC();
            sub_22BB679C0();
          }

          goto LABEL_412;
        }

        v451 = *(v17 + 4072);
        sub_22BD64324();

        v452 = *(v235 + 8);
        v453 = sub_22BB30AE4();
        v454(v453);
        v15 = *(v17 + 4792);
        v31 = *(v17 + 4344);
        v12 = *(v17 + 4304);
        v14 = *(v17 + 4104);
        v455 = *(v17 + 3144);
        v456 = *(v17 + 3128);
        sub_22BB96BBC(*(v17 + 4440));
        v457 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BD64954(v457);
        sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
        v458 = sub_22BD60FD4();
        sub_22BD5B890(v458, 1);
        sub_22BD61630();
        v459(v456, v15, v235 + 8);
        sub_22BD74A58(v456, v455);
        v460 = *(v17 + 8);
        v17 += 8;
        v461 = sub_22BD00E3C();
        v462(v461);
        sub_22BD614B8();
        sub_22BD5F854();
        sub_22BB37074();
        swift_storeEnumTagMultiPayload();
        sub_22BB3630C();
        sub_22BD64674(v463, v464);
        sub_22BB35CBC();
LABEL_90:
        sub_22BB34648();
        goto LABEL_96;
      default:
        sub_22BB89C84();
        v1547 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BB8D2E4(v1547);
        v1549 = *v1548;
        *(v17 + 4552) = *v1548;
        v1550 = v1548[1];
        *(v17 + 4560) = v1550;
        sub_22BBBE74C();
        sub_22BB3A518(v12, v85);
        sub_22BDB63E4();
        sub_22BB322B0();
        v1551 = swift_allocObject();
        sub_22BB977E8(v1551);
        v1552 = sub_22BB3A9D4();
        sub_22BB335C0(v1552, v1553);
        sub_22BBC0328(*(v15 + 80));
        v1554 = swift_allocObject();
        sub_22BD650D0(v1554);
        sub_22BB322B0();
        v1555 = swift_allocObject();
        *(v1555 + 16) = v1549;
        *(v1555 + 24) = v1550;

        v2990 = sub_22BDB77C4();
        sub_22BDBB104();
        sub_22BD616A8();
        v2997 = swift_allocObject();
        sub_22BB97ED4(v2997);
        sub_22BD616A8();
        v1556 = swift_allocObject();
        sub_22BD62CE4(v1556);
        sub_22BB322B0();
        v1557 = swift_allocObject();
        sub_22BBBDEB0(v1557);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F74C();
        *(v1558 + 16) = v1559;
        *(v1558 + 24) = v1557;
        sub_22BD616A8();
        v2981 = swift_allocObject();
        *(v2981 + 16) = 32;
        sub_22BD616A8();
        v1560 = swift_allocObject();
        *(v1560 + 16) = v14;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD626B4();
        *(v1561 + 16) = v1563;
        *(v1561 + 24) = v1562;
        sub_22BB322B0();
        v1564 = swift_allocObject();
        sub_22BB3AE40(v1564);
        sub_22BD616A8();
        v1565 = swift_allocObject();
        *(v1565 + 16) = 32;
        sub_22BD616A8();
        v1566 = swift_allocObject();
        sub_22BD64D98(v1566);
        sub_22BB322B0();
        v1567 = swift_allocObject();
        sub_22BD6055C(v1567);
        sub_22BB322B0();
        v1568 = swift_allocObject();
        sub_22BD626EC(v1568);
        v1569 = sub_22BD61958();
        sub_22BBC96FC(v1569, xmmword_22BDCE140);
        sub_22BD60544(v2997);
        sub_22BD62630();
        v1569[4].n128_u64[1] = v35;
        v1569[5].n128_u64[0] = sub_22BB89C08;
        sub_22BD62854();
        v1569[6].n128_u64[1] = v1560;
        v1569[7].n128_u64[0] = sub_22BB89C7C;
        v1569[7].n128_u64[1] = v18;
        v1569[8].n128_u64[0] = sub_22BB89C08;
        v1569[8].n128_u64[1] = v1565;
        v1569[9].n128_u64[0] = sub_22BB89C08;
        v1569[9].n128_u64[1] = 32;
        v1569[10].n128_u64[0] = sub_22BB89C7C;
        v1569[10].n128_u64[1] = v14;

        HIDWORD(v2988) = 0;

        v1570 = sub_22BD620A0();
        if (os_log_type_enabled(v1570, v1571))
        {
          v1572 = sub_22BB67968();
          v1573 = sub_22BD63AC4();
          *(v17 + 2408) = 0;
          *(v17 + 2416) = v1573;
          *v1572 = 770;
          *(v17 + 2400) = v1572 + 1;
          *(v17 + 1528) = sub_22BB89C08;
          *(v17 + 1536) = v2997;
          v1574 = sub_22BD5F978();
          sub_22BB67984(v1574, v1575, v1576, v1577);
          if (!v3001)
          {

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1567;
            v1578 = sub_22BD5F978();
            sub_22BB67984(v1578, v1579, v1580, v1581);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v35;
            v1582 = sub_22BD5F978();
            sub_22BB67984(v1582, v1583, v1584, v1585);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v2981;
            v1586 = sub_22BD5F978();
            sub_22BB67984(v1586, v1587, v1588, v1589);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1560;
            v1590 = sub_22BD5F978();
            sub_22BB67984(v1590, v1591, v1592, v1593);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v18;
            v1594 = sub_22BD5F978();
            sub_22BB67984(v1594, v1595, v1596, v1597);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = v1565;
            v1598 = sub_22BD5F978();
            sub_22BB67984(v1598, v1599, v1600, v1601);

            *(v17 + 1528) = sub_22BB89C08;
            *(v17 + 1536) = 32;
            v1602 = sub_22BD5F978();
            sub_22BB67984(v1602, v1603, v1604, v1605);

            *(v17 + 1528) = sub_22BB89C7C;
            *(v17 + 1536) = v14;
            v1606 = sub_22BD5F978();
            sub_22BB67984(v1606, v1607, v1608, v1609);
            v1610 = *(v17 + 4096);
            sub_22BD62624();

            sub_22BBBE830();
            sub_22BD63B3C(&dword_22BB2C000, v2990, v1611, "[SessionCoordinator %{public}s] | Processing transaction request:\nContents: %s\nPostcondition: %s");
            sub_22BD62D3C();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_418;
        }

        sub_22BD64E70();

        v1612 = sub_22BD62258();
        v1613(v1612, 32);
        v1614 = sub_22BD63524();
        HIDWORD(v2990) = v1615;
        oslogb = v1614;
        *(v17 + 4576) = v1614;
        sub_22BD642C4();
        *(v17 + 4584) = v1616;
        sub_22BD6480C();
        *(v17 + 4592) = v1617;
        v1618 = sub_22BB3E460();
        v2932 = v1619;
        v2923 = v1620;
        (v1620)(v1618);
        sub_22BDB96A4();
        *(v17 + 4600) = *(v35 + 8);
        sub_22BD63D50();
        *(v17 + 4608) = v1621;
        v1622 = sub_22BB2F324();
        v2917 = v1623;
        v1623(v1622);
        v1624 = sub_22BDB9744();
        v1625 = MEMORY[0x28];
        *(v17 + 4616) = MEMORY[0x28];
        *(v17 + 4624) = 0x4F8000000000028;
        v1626 = sub_22BB2F0E0();
        v1625(v1626);
        *(v17 + 1712) = v1624;
        sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BD63468();
        sub_22BB899C0(v1627, v1628, v1629);
        v1630 = (v17 + 1712);
        sub_22BD62448();
        sub_22BDB90D4();

        v1631 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        v1632 = sub_22BBD2268(v1631);
        v1633 = *(v17 + 3576);
        if (v1632 == 1)
        {
          sub_22BB325EC(v1633, &qword_27D8E6518, &unk_22BDCE420);
        }

        else
        {
          sub_22BD61658(v1633);
          v1634 = sub_22BD64800();
          v1635(v1634);
        }

        sub_22BD61D40();
        v1636 = sub_22BD64B6C();
        sub_22BB336D0(v1636, v1637, v1638, v1639);
        sub_22BB366B8();
        v1640 = swift_allocObject();
        *(v17 + 4632) = v1640;
        v194 = &unk_283F7E048;
        sub_22BD616A8();
        v1641 = swift_allocObject();
        *(v17 + 4640) = v1641;
        sub_22BD616A8();
        v2982 = swift_allocObject();
        *(v17 + 4648) = v2982;
        sub_22BD60084();
        sub_22BB37074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v1643 = v1569->n128_u64[0];
        v2980 = v1640;
        name = v1641;
        if (EnumCaseMultiPayload == 1)
        {
          v2875 = v1625;
          sub_22BD61D2C();
          oslog = v1644;
          v2947 = v1645;
          v2984 = sub_22BDB8404();
          v2983 = v1646;
          v1647 = *(v1569->n128_i64 + v1624);
          sub_22BDB8404();
          sub_22BBBE80C();
          sub_22BB97C94();
          if (v297)
          {
            __break(1u);
LABEL_401:
            __break(1u);

            goto LABEL_361;
          }

          sub_22BD61914(v1648);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB89DB4();
          *(v1649 + 16) = v1650;
          *(v1649 + 24) = &unk_283F7E048;
          sub_22BB366B8();
          v1651 = swift_allocObject();
          sub_22BD64028(v1651);
          sub_22BB322B0();
          v1652 = swift_allocObject();
          sub_22BD60348(v1652);
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v1643;

          v2956 = v1643;

          v2902 = sub_22BDB77C4();
          v2914 = sub_22BDBB134();
          sub_22BD616A8();
          v2998 = swift_allocObject();
          sub_22BD63B94(v2998);
          sub_22BD616A8();
          v2880 = swift_allocObject();
          sub_22BB97EE0(v2880);
          sub_22BB322B0();
          v1653 = swift_allocObject();
          sub_22BB70160(v1653);
          sub_22BB322B0();
          v1654 = swift_allocObject();
          sub_22BB69C9C(v1654);
          sub_22BD616A8();
          v1655 = swift_allocObject();
          *(v1655 + 16) = v1641;
          sub_22BD616A8();
          v1656 = swift_allocObject();
          *(v1656 + 16) = v1643;
          sub_22BB322B0();
          v1657 = swift_allocObject();
          sub_22BBBE888(v1657);
          sub_22BB322B0();
          v1658 = swift_allocObject();
          sub_22BB69C9C(v1658);
          sub_22BD616A8();
          v1659 = swift_allocObject();
          sub_22BD62E7C(v1659);
          sub_22BD616A8();
          v1660 = swift_allocObject();
          *(v1660 + 16) = v1643;
          sub_22BB322B0();
          v1661 = swift_allocObject();
          sub_22BD602E0(v1661);
          sub_22BB322B0();
          v1662 = swift_allocObject();
          sub_22BD606DC(v1662);
          v1663 = sub_22BD61958();
          sub_22BB70434(v1663, xmmword_22BDCE140);
          sub_22BB980A0();
          v1663[4].n128_u64[1] = v1654;
          v1663[5].n128_u64[0] = sub_22BB89C08;
          v1663[5].n128_u64[1] = v1655;
          v1663[6].n128_u64[0] = sub_22BB89C08;
          v1663[6].n128_u64[1] = v1656;
          v1663[7].n128_u64[0] = sub_22BB89C7C;
          v1663[7].n128_u64[1] = v1658;
          v1663[8].n128_u64[0] = sub_22BB89C08;
          v1663[8].n128_u64[1] = v1659;
          v1663[9].n128_u64[0] = sub_22BB89C08;
          v1663[9].n128_u64[1] = v1660;
          v1663[10].n128_u64[0] = sub_22BB70118;
          v1663[10].n128_u64[1] = v1662;

          v2885 = v1656;

          if (os_log_type_enabled(v2902, v2914))
          {
            sub_22BB67968();
            v1664 = sub_22BB3869C();
            *(v17 + 2288) = 0;
            *(v17 + 2296) = v1664;
            *v1653 = 770;
            *(v17 + 2280) = v1653 + 1;
            sub_22BB70328();
            *(v17 + 1312) = v2998;
            v1665 = sub_22BB58898();
            sub_22BB67984(v1665, v1666, v1667, v1668);
            if (!v3001)
            {

              sub_22BB70328();
              *(v17 + 1312) = v1653;
              v1669 = sub_22BB58898();
              sub_22BB67984(v1669, v1670, v1671, v1672);

              sub_22BB96CEC();
              *(v17 + 1312) = v1654;
              v1673 = sub_22BB58898();
              sub_22BB67984(v1673, v1674, v1675, v1676);

              sub_22BB70328();
              *(v17 + 1312) = v1655;
              v1677 = sub_22BB58898();
              sub_22BB67984(v1677, v1678, v1679, v1680);

              sub_22BB70328();
              *(v17 + 1312) = v1656;
              v1681 = sub_22BB58898();
              sub_22BB67984(v1681, v1682, v1683, v1684);

              sub_22BB96CEC();
              *(v17 + 1312) = v1658;
              v1685 = sub_22BB58898();
              sub_22BB67984(v1685, v1686, v1687, v1688);

              sub_22BB70328();
              *(v17 + 1312) = v1659;
              v1689 = sub_22BB58898();
              sub_22BB67984(v1689, v1690, v1691, v1692);

              sub_22BB70328();
              *(v17 + 1312) = v1660;
              v1693 = sub_22BB58898();
              sub_22BB67984(v1693, v1694, v1695, v1696);

              sub_22BD606C4();
              *(v17 + 1312) = v1662;
              v1697 = sub_22BB58898();
              sub_22BB67984(v1697, v1698, v1699, v1700);
              v1701 = *(v17 + 4064);
              sub_22BD6256C();

              sub_22BD63B3C(&dword_22BB2C000, v2902, v2914, "[SessionCoordinator %{public}s] | [TX %{public}s] Client transaction turned in with %{public}ld events.");
              sub_22BB96A94();
              sub_22BB30458();
              sub_22BB679C0();
            }

            goto LABEL_412;
          }

          v2910 = *(v17 + 4064);
          v1873 = *(v17 + 3840);
          sub_22BD640F0();

          v1875 = *(v1873 + 8);
          v1874 = v1873 + 8;
          sub_22BD61DF4(v1875);
          v1876();
          v16 = &qword_22BDC1660;
          v1877 = v3001;
          sub_22BD60B30();
          if (v146)
          {
            sub_22BD615A0();
            v1659 = *(v17 + 3192);
            sub_22BB75638();
            sub_22BD64B48();
            sub_22BDB8444();
            sub_22BD62408();
            sub_22BB8E9C4();
            sub_22BDB5D24();
            v1878 = sub_22BD61CDC();
            v1879(v1878);
            v16 = &qword_22BDC1660;
            sub_22BD63938();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BBBFFBC();
            sub_22BDBAF34();
            v1880 = sub_22BD62DF4();
            v1881(v1880, v3001);
          }

          v1882 = v2956;
          v3006 = sub_22BD46088(v2956);
          v1884 = v1883;

          v1885 = sub_22BB31614();
          v1887 = sub_22BB6F9D4(v1885, v1886, v2956);
          sub_22BD6471C(v1887, v1888);
          sub_22BB2F1B0();

          v2905 = v1884;
          if (v1659 < 2)
          {
            v1932 = v2947;
          }

          else
          {
            v2910 = v1877;
            v1889 = *(v17 + 3960);
            sub_22BD62680();
            sub_22BDB63E4();
            sub_22BB322B0();
            v1890 = swift_allocObject();
            sub_22BB977E8(v1890);
            sub_22BB366B8();
            v1891 = swift_allocObject();
            sub_22BD63080(v1891);
            sub_22BB322B0();
            v1892 = swift_allocObject();
            sub_22BD60A50(v1892);
            v2891 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v1893 = swift_allocObject();
            sub_22BD623EC(v1893);
            sub_22BD616A8();
            v1894 = swift_allocObject();
            sub_22BD62E20(v1894);
            sub_22BB322B0();
            v1895 = swift_allocObject();
            sub_22BD60310(v1895);
            sub_22BB322B0();
            v1882 = swift_allocObject();
            sub_22BD60664(v1882);
            sub_22BD616A8();
            v1896 = swift_allocObject();
            sub_22BD636BC(v1896);
            sub_22BD616A8();
            v1897 = swift_allocObject();
            sub_22BD64DE0(v1897);
            sub_22BB322B0();
            v1898 = swift_allocObject();
            sub_22BD60364(v1898);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            *(v1899 + 16) = v1900;
            *(v1899 + 24) = v1659;
            v1901 = sub_22BBCCA6C();
            sub_22BB34620(v1901);
            v1902[4] = v1903;
            v1902[5] = v1877;
            v1902[6] = sub_22BB89C08;
            v1902[7] = v1894;
            v1902[8] = sub_22BB89C7C;
            v1902[9] = v1882;
            v1902[10] = sub_22BB89C08;
            v1902[11] = &qword_22BDC1660;
            v1902[12] = sub_22BB89C08;
            v1902[13] = v1874;
            v1902[14] = sub_22BB89C7C;
            v1902[15] = v1891;
            sub_22BD6474C();

            sub_22BD63D04();
            if (os_log_type_enabled(v2891, v1904))
            {
              sub_22BB67968();
              v1905 = sub_22BBBFF34();
              sub_22BD64A74(v1905);
              sub_22BBBEB6C();
              *(v17 + 2248) = v1906;
              sub_22BB97DA8();
              *(v17 + 1296) = v1659;
              v1907 = sub_22BB8ABC0();
              sub_22BB67984(v1907, v1908, v1909, v1910);
              if (!v1877)
              {

                sub_22BB97DA8();
                *(v17 + 1296) = v1894;
                v1911 = sub_22BB8ABC0();
                sub_22BB67984(v1911, v1912, v1913, v1914);

                sub_22BD6064C();
                *(v17 + 1296) = v1882;
                v1915 = sub_22BB8ABC0();
                sub_22BB67984(v1915, v1916, v1917, v1918);

                sub_22BB97DA8();
                *(v17 + 1296) = &qword_22BDC1660;
                v1919 = sub_22BB8ABC0();
                sub_22BB67984(v1919, v1920, v1921, v1922);

                sub_22BB97DA8();
                *(v17 + 1296) = v1874;
                v1923 = sub_22BB8ABC0();
                sub_22BB67984(v1923, v1924, v1925, v1926);

                *(v17 + 1288) = sub_22BB89C7C;
                *(v17 + 1296) = v1891;
                v1927 = sub_22BB8ABC0();
                sub_22BB67984(v1927, v1928, v1929, v1930);
                sub_22BD65030();
                sub_22BB39F58();
                sub_22BD636C8(&dword_22BB2C000, v2891, v1931, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains more than one query. Only the last one will be used as the current query.");
                sub_22BBBE7DC();
                sub_22BB32238();
                sub_22BB679C0();
              }

              goto LABEL_418;
            }

            v2885 = *(v17 + 3960);
            sub_22BD6256C();

            sub_22BB896A8();
            v1945();
            v16 = &qword_22BDC1660;
            v1932 = v2947;
            v1884 = v1884;
          }

          v322 = oslog;
          if (v1884)
          {
            v1867 = v2956;
          }

          else
          {
            v2910 = v1877;
            v1946 = v3006;
            if (v3006)
            {
              v1947 = *(v17 + 3952);
              sub_22BD62680();
              sub_22BDB63E4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB758D8();
              *(v1948 + 16) = v1949;
              *(v1948 + 24) = v1884;
              sub_22BB366B8();
              v1950 = swift_allocObject();
              sub_22BD63080(v1950);
              sub_22BB322B0();
              v1951 = swift_allocObject();
              sub_22BD5F71C(v1951);
              sub_22BB366B8();
              v1952 = swift_allocObject();
              sub_22BBC0200(v1952);
              v2892 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v2998 = swift_allocObject();
              sub_22BD6250C(v2998);
              sub_22BD616A8();
              v2881 = swift_allocObject();
              sub_22BB6FB2C(v2881);
              v1884 = 8;
              sub_22BB322B0();
              v1953 = swift_allocObject();
              sub_22BB31A44(v1953);
              sub_22BB322B0();
              v1954 = swift_allocObject();
              sub_22BB3DEE8(v1954);
              sub_22BD616A8();
              v1955 = swift_allocObject();
              sub_22BD64CC0(v1955);
              sub_22BD616A8();
              v1956 = swift_allocObject();
              sub_22BD64AF0(v1956);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD607B4();
              *(v1957 + 16) = v1958;
              *(v1957 + 24) = v1951;
              sub_22BB322B0();
              v1959 = swift_allocObject();
              sub_22BB72DE4(v1959);
              sub_22BD616A8();
              v1960 = swift_allocObject();
              sub_22BD6430C(v1960);
              sub_22BD616A8();
              v1961 = swift_allocObject();
              sub_22BB70358(v1961);
              sub_22BB322B0();
              v1962 = swift_allocObject();
              sub_22BD605A4(v1962);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD6079C();
              *(v1963 + 16) = v1964;
              *(v1963 + 24) = v1962;
              v1965 = sub_22BD61958();
              v1965[2].n128_u64[1] = sub_22BB53DC8(v1965, xmmword_22BDCE140);
              v1965[3].n128_u64[0] = v1966;
              sub_22BB8E984();
              v1965[4].n128_u64[1] = v1954;
              v1965[5].n128_u64[0] = sub_22BB89C08;
              v1965[5].n128_u64[1] = v1947;
              v1965[6].n128_u64[0] = sub_22BB89C08;
              v1965[6].n128_u64[1] = v3006;
              v1965[7].n128_u64[0] = sub_22BB89C7C;
              v1965[7].n128_u64[1] = v1959;
              v1965[8].n128_u64[0] = sub_22BB89C08;
              v1965[8].n128_u64[1] = v1659;
              v1965[9].n128_u64[0] = sub_22BB89C08;
              v1965[9].n128_u64[1] = 8;
              v1965[10].n128_u64[0] = sub_22BD5F64C;
              v1965[10].n128_u64[1] = &qword_22BDC1660;

              sub_22BD63D04();
              if (os_log_type_enabled(v2892, v1967))
              {
                sub_22BD643A0();
                v1968 = sub_22BBC01B4();
                *(v17 + 2224) = 0;
                *(v17 + 2232) = v1968;
                sub_22BD61FC0(v1659);
                *(v17 + 2216) = v1969;
                sub_22BB6B120();
                *(v17 + 1280) = v2998;
                v1970 = sub_22BB33564();
                sub_22BB67984(v1970, v1971, v1972, v1973);
                if (!v2910)
                {

                  sub_22BB6B120();
                  *(v17 + 1280) = v1965;
                  v1974 = sub_22BB33564();
                  sub_22BB67984(v1974, v1975, v1976, v1977);

                  sub_22BBC0960();
                  *(v17 + 1280) = v1954;
                  v1978 = sub_22BB33564();
                  sub_22BB67984(v1978, v1979, v1980, v1981);

                  sub_22BB6B120();
                  *(v17 + 1280) = v1947;
                  v1982 = sub_22BB33564();
                  sub_22BB67984(v1982, v1983, v1984, v1985);

                  sub_22BB6B120();
                  *(v17 + 1280) = v3006;
                  v1986 = sub_22BB33564();
                  sub_22BB67984(v1986, v1987, v1988, v1989);

                  sub_22BBC0960();
                  *(v17 + 1280) = v2873;
                  v1990 = sub_22BB33564();
                  sub_22BB67984(v1990, v1991, v1992, v1993);

                  sub_22BB6B120();
                  *(v17 + 1280) = &qword_22BDC1660;
                  v1994 = sub_22BB33564();
                  sub_22BB67984(v1994, v1995, v1996, v1997);

                  sub_22BB6B120();
                  *(v17 + 1280) = 8;
                  v1998 = sub_22BB33564();
                  sub_22BB67984(v1998, v1999, v2000, v2001);

                  sub_22BD6058C();
                  *(v17 + 1280) = v2871;
                  v2002 = sub_22BB33564();
                  sub_22BB67984(v2002, v2003, v2004, v2005);
                  v2006 = *(v17 + 3952);
                  sub_22BD62624();

                  sub_22BB39F58();
                  sub_22BD63B3C(&dword_22BB2C000, v2892, v2007, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains a query at index %ld. Queries should be the first event in their transaction. This may cause incorrect behavior.");
                  swift_arrayDestroy();
                  sub_22BB3A3D8();
                  sub_22BB679C0();
                }

                goto LABEL_332;
              }

              v2885 = *(v17 + 3952);
              sub_22BD6256C();

              v1946 = v3006 + 8;
              sub_22BD61DF4(*(v3006 + 8));
              v2099();
            }

            sub_22BD63894();
            v2893 = v2100;
            sub_22BB96E08();
            v2101 = *(v17 + 3312);
            v2979 = *(v17 + 3224);
            v2871 = *(v17 + 3160);
            sub_22BD61BF4();
            v2873 = v2102;
            v2103 = v3000[391].isa;
            v2104 = v3000[389].isa;
            v2882 = v3000[388].isa;
            v2106 = sub_22BD61410(v2105);
            (v2923)(v2106);
            sub_22BDB96A4();
            sub_22BB2F324();
            sub_22BBB65DC();
            v2107();
            v1867 = v2956;
            sub_22BD446BC(v3006, v2956, v17);
            v2108 = sub_22BD63144();
            v2109(v2108);
            sub_22BB69550();
            sub_22BB34648();
            MEMORY[0x2318A2C10](v1946);
            v2110 = sub_22BB31B54();
            sub_22BD446BC(v2110, v2111, v2112);
            sub_22BD61C44(v2873);
            v2113(v2103);
            sub_22BB97B18();
            sub_22BB34648();
            v1659 = v2885;
            v322 = oslog;
            v1932 = v2947;
            v1882 = v1884;
            sub_22BDB9704();
            v2114 = sub_22BD63620();
            v2115(v2114, v2882);
            v2875(v1884, v2893);
            v2116 = sub_22BB72084();
            sub_22BB336D0(v2116, v2117, v2118, v2979);
            sub_22BD6308C();
            v2119 = sub_22BB500C0();
            v16 = &qword_22BDC1660;
            sub_22BB385F4(v2119, v2120, &unk_27D8E69E0, &qword_22BDC1660);
            v1884 = v2905;
            v1877 = v2910;
          }

          sub_22BD618C4();
          v2121 = sub_22BB3627C();
          sub_22BB3CD70(v2121, v2122, &unk_27D8E69E0, &qword_22BDC1660);
          v2123 = swift_task_alloc();
          v2123[2] = v1659;
          v2123[3] = v322;
          v2123[4] = v1932;
          v2123[5] = v1882;
          v2124 = sub_22BB36C20();
          v2126 = sub_22BB72184(v2124, v2125, v1867);
          v2969 = v1877;

          *(v2980 + 16) = v2126;
          v2044 = *(v17 + 3664);
          v2127 = *(v17 + 3224);
          if (v1884)
          {
            v12 = *(v17 + 3648);

            v2128 = sub_22BB37074();
            sub_22BB3CD70(v2128, v2129, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB93908();
            if (v146)
            {
              sub_22BB325EC(v2130, &unk_27D8E69E0, &qword_22BDC1660);
              v2131 = sub_22BB36B68();
              sub_22BBC0340(v2131, v2132);
              v2046 = 0;
              v12 = 0;
              v322 = 0xE000000000000000;
            }

            else
            {
              v2153 = *(v17 + 3296);
              v2154 = *(v17 + 3232);
              v2155 = *(v17 + 3224);
              v2156 = *(v2154 + 32);
              v2157 = sub_22BB97E2C();
              v2158(v2157);
              sub_22BDB8F24();
              v2046 = 1;
              v2159 = sub_22BB72084();
              sub_22BB336D0(v2159, v2160, v2161, v2044);
              sub_22BDB9A24();
              sub_22BD64D20();
              v2162 = *(v2154 + 8);
              v1867 = v2154 + 8;
              v2163 = sub_22BB2F3F0();
              v2164(v2163);
            }
          }

          else
          {
            v12 = *(v17 + 3656);
            v2133 = sub_22BB37074();
            sub_22BB3CD70(v2133, v2134, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB2F164(v12);
            if (v146)
            {
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
              JUMPOUT(0x22BB67928);
            }

            sub_22BD64180();
            sub_22BB3B574();
            sub_22BB93884();
            sub_22BB938EC(v3006, *(v2980 + 16));
            sub_22BD61A5C();
            sub_22BB35FA0();
            v2136 = v2135();
            nullsub_1(v2136);
            swift_endAccess();
            v2137 = sub_22BB3AC54();
            sub_22BB3CD70(v2137, v2138, &unk_27D8E69E0, &qword_22BDC1660);
            v2139 = sub_22BB2F3FC();
            sub_22BB31814(v2139, v2140, v1884);
            if (v146)
            {
              goto LABEL_428;
            }

            sub_22BD61450();
            v2141 = *(v17 + 3632);
            v1867 = *(v17 + 3312);
            v2142 = *(v17 + 3232);
            v322 = *(v17 + 3224);
            sub_22BDB8F24();
            v2143 = *(v2142 + 8);
            v2144 = sub_22BB313A8();
            v2143(v2144);
            v2145 = sub_22BB72084();
            sub_22BB336D0(v2145, v2146, v2147, v1867);
            v2148 = sub_22BB500C0();
            sub_22BB6BEE0(v2148, v2149, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB3CD70(v3006, v2141, &unk_27D8E69E0, &qword_22BDC1660);
            v2150 = sub_22BB3A840();
            sub_22BB31814(v2150, v2151, v322);
            if (v146)
            {
              goto LABEL_427;
            }

            sub_22BD64174();

            sub_22BDB9A24();
            sub_22BD64D20();
            v2152 = sub_22BB53C48();
            v2143(v2152);
            v2046 = 1;
          }

          v194 = v2969;
          v2165 = *(v17 + 3664);
          v2098 = *(v17 + 2496);
          name[16] = v2046;
          *(v2982 + 16) = 1;
          sub_22BB325EC(v2165, &unk_27D8E69E0, &qword_22BDC1660);
          sub_22BD64CD8();
          sub_22BB705A8();
          goto LABEL_295;
        }

        v1702 = *(v17 + 4128);
        v2919 = *(v17 + 4056);
        v1703 = *(v17 + 3800);
        sub_22BD63DC8();
        v1704 = v1640;
        v1705 = *(v17 + 3680);
        sub_22BD61CF0();
        v2948 = v1707;
        v2957 = v1706;
        sub_22BD63FE8();
        v2915 = v1708;
        v1709 = *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
        sub_22BB31DC8();
        sub_22BB3A518(v1702 + v1710, v17 + 1712);
        v1711 = *(v17 + 1728);
        v2984 = *(v17 + 1720);
        v1712 = *v1630;
        *(v1704 + 16) = v1643;
        v1713 = *(v1641 + 24);
        v1714 = (v1630 + *(v1641 + 28));
        v1715 = *v1714;
        v1716 = v1714[1];
        v1717 = sub_22BD64C88();
        sub_22BB3CD70(v1717, v1703, &qword_27D8E3218, &qword_22BDBE390);
        v2983 = v1711;

        v2855 = v1716;

        v1718 = sub_22BD64198();
        sub_22BD459A4(v1718, v1719);
        v2968 = v3001;

        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB8AF40();
        *(v1720 + 16) = v1721;
        *(v1720 + 24) = v2915;
        sub_22BB366B8();
        v1722 = swift_allocObject();
        v2988 = v1712;
        *(v1722 + 16) = v1712;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB89B58();
        *(v1723 + 16) = v1724;
        *(v1723 + 24) = v1722;
        sub_22BD639B0();
        sub_22BB3CD70(v1725, v1726, v1727, v1728);
        sub_22BD62264(v2932);
        sub_22BB6FB18(v1729);
        v2903 = swift_allocObject();
        sub_22BD639B0();
        sub_22BB6BEE0(v1730, v1731, v1732, v1733);
        sub_22BB3CD70(v1703, v2948, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BBC0328(*(v2957 + 80));
        swift_allocObject();
        v1734 = sub_22BD63964();
        sub_22BB6BEE0(v1734, v1735, &unk_27D8E69E0, &qword_22BDC1660);

        v1736 = v2919;
        v2890 = sub_22BDB77C4();
        LODWORD(v2873) = sub_22BDBB134();
        sub_22BD616A8();
        v1737 = swift_allocObject();
        sub_22BD62E44(v1737);
        sub_22BD616A8();
        v2940 = swift_allocObject();
        *(v2940 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v1738 + 16) = v1739;
        *(v1738 + 24) = v1643;
        sub_22BB322B0();
        v2933 = swift_allocObject();
        *(v2933 + 16) = sub_22BB89C80;
        *(v2933 + 24) = v2919;
        sub_22BD616A8();
        v2924 = swift_allocObject();
        v2924[16] = &qword_22BDBE390;
        sub_22BD616A8();
        v2958 = swift_allocObject();
        *(v2958 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v1740 + 16) = v1741;
        *(v1740 + 24) = v1716;
        sub_22BB322B0();
        v1742 = swift_allocObject();
        v1743 = sub_22BD62B6C(v1742);
        *(v1743 + 16) = v1744;
        *(v1743 + 24) = v2919;
        sub_22BD616A8();
        v1745 = swift_allocObject();
        sub_22BD62E7C(v1745);
        sub_22BD616A8();
        v2920 = swift_allocObject();
        *(v2920 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7F4();
        *(v1746 + 16) = v1747;
        *(v1746 + 24) = v2980;
        sub_22BB322B0();
        v1748 = swift_allocObject();
        v1749 = sub_22BB96B4C(v1748);
        *(v1749 + 16) = v1750;
        *(v1749 + 24) = v1736;
        sub_22BD616A8();
        v3005 = swift_allocObject();
        sub_22BD639BC(v3005);
        sub_22BD616A8();
        v2999 = swift_allocObject();
        *(v2999 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7AC();
        *(v1751 + 16) = v1752;
        *(v1751 + 24) = v2903;
        sub_22BB322B0();
        v1753 = swift_allocObject();
        sub_22BB3DEE8(v1753);
        sub_22BD616A8();
        v1754 = swift_allocObject();
        sub_22BD63D94(v1754);
        sub_22BD616A8();
        v2904 = swift_allocObject();
        LOBYTE(v2904[2].isa) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F794();
        *(v1755 + 16) = v1756;
        *(v1755 + 24) = oslogb;
        sub_22BB322B0();
        v1757 = swift_allocObject();
        sub_22BD60ED8(v1757);
        sub_22BD616A8();
        v2869 = swift_allocObject();
        *(v2869 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v2885 = swift_allocObject();
        *(v2885 + 16) = 8;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F884();
        *(v1758 + 16) = v1759;
        *(v1758 + 24) = v1722;
        sub_22BB322B0();
        v1760 = swift_allocObject();
        sub_22BB97474(v1760);
        v1761 = sub_22BD62608();
        sub_22BB73BD0(v1761);
        sub_22BD6274C();
        sub_22BB3FE84(v2940);
        sub_22BB8E9FC(v2933);
        v1761[11] = v2924;
        v1761[12] = sub_22BB89C08;
        sub_22BD60694();
        v1761[15] = v1762;
        v1761[16] = sub_22BB89C08;
        v1761[17] = v1745;
        v1761[18] = sub_22BB89C08;
        sub_22BB97130(v2920);
        v1761[21] = v2915;
        v1761[22] = sub_22BB89C08;
        sub_22BB3FC00(v3005);
        v1761[27] = v1753;
        v1761[28] = sub_22BB89C08;
        v1761[29] = v1716;
        v1761[30] = sub_22BB89C08;
        v1761[31] = v2904;
        v1761[32] = sub_22BB89C7C;
        sub_22BB758F0();
        sub_22BB6F990();
        sub_22BB97190();
        v1761[39] = v1760;
        oslogc = v1763;

        v2871 = v1745;

        if (os_log_type_enabled(v2890, v2873))
        {
          sub_22BB67968();
          v1764 = sub_22BD64704();
          *(v17 + 2376) = 0;
          *(v17 + 2384) = v1764;
          sub_22BD62548();
          *(v17 + 1520) = oslogc;
          v1765 = sub_22BBDB8F4();
          v194 = v2968;
          sub_22BB67984(v1765, v1766, v1767, v1768);
          if (!v2968)
          {

            sub_22BB96A04();
            *(v17 + 1520) = v2940;
            v1769 = sub_22BBDB8F4();
            sub_22BB67984(v1769, v1770, v1771, v1772);

            sub_22BB70204();
            *(v17 + 1520) = v2933;
            v1773 = sub_22BBDB8F4();
            sub_22BB67984(v1773, v1774, v1775, v1776);

            sub_22BB96A04();
            *(v17 + 1520) = v2924;
            v1777 = sub_22BBDB8F4();
            sub_22BB67984(v1777, v1778, v1779, v1780);

            sub_22BB96A04();
            *(v17 + 1520) = v2958;
            v1781 = sub_22BBDB8F4();
            sub_22BB67984(v1781, v1782, v1783, v1784);

            sub_22BB70204();
            *(v17 + 1520) = v2948;
            v1785 = sub_22BBDB8F4();
            sub_22BB67984(v1785, v1786, v1787, v1788);

            sub_22BB96A04();
            *(v17 + 1520) = v1745;
            v1789 = sub_22BBDB8F4();
            sub_22BB67984(v1789, v1790, v1791, v1792);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v2920;
            v1793 = sub_22BBDB8F4();
            sub_22BB67984(v1793, v1794, v1795, v1796);

            sub_22BD62B18();
            *(v17 + 1520) = v2915;
            v1797 = sub_22BBDB8F4();
            sub_22BB67984(v1797, v1798, v1799, v1800);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v3005;
            v1801 = sub_22BBDB8F4();
            sub_22BB67984(v1801, v1802, v1803, v1804);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v2999;
            v1805 = sub_22BBDB8F4();
            sub_22BB67984(v1805, v1806, v1807, v1808);

            sub_22BB70204();
            *(v17 + 1520) = v1753;
            v1809 = sub_22BBDB8F4();
            sub_22BB67984(v1809, v1810, v1811, v1812);

            *(v17 + 1512) = sub_22BB89C08;
            *(v17 + 1520) = v1716;
            v1813 = sub_22BBDB8F4();
            sub_22BB67984(v1813, v1814, v1815, v1816);

            sub_22BB96A04();
            *(v17 + 1520) = v2904;
            v1817 = sub_22BBDB8F4();
            sub_22BB67984(v1817, v1818, v1819, v1820);

            sub_22BB70204();
            *(v17 + 1520) = v1736;
            v1821 = sub_22BBDB8F4();
            sub_22BB67984(v1821, v1822, v1823, v1824);

            sub_22BB96A04();
            *(v17 + 1520) = v2869;
            v1825 = sub_22BBDB8F4();
            sub_22BB67984(v1825, v1826, v1827, v1828);

            sub_22BB96A04();
            *(v17 + 1520) = v2885;
            v1829 = sub_22BBDB8F4();
            sub_22BB67984(v1829, v1830, v1831, v1832);

            sub_22BB70204();
            *(v17 + 1520) = v1760;
            v1833 = sub_22BBDB8F4();
            sub_22BB67984(v1833, v1834, v1835, v1836);
            v1837 = *(v17 + 4056);
            sub_22BB96A7C();

            sub_22BD63EC8(&dword_22BB2C000, v2890, v2873, "[SessionCoordinator %{public}s] | [TX %{public}s] Internal transaction turned in with %{public}ld events. originatingSpanQueryEventId: %s, latestQueryEventId: %s, newQueryEventId: %s");
            sub_22BD64FB0();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_348;
        }

        v1838 = *(v17 + 4056);
        sub_22BD6256C();

        v1839 = *(v1736 + 8);
        v1840 = sub_22BB500C0();
        v1841(v1840);
        v1842 = sub_22BD63944();
        v1843 = &qword_27D8E3218;
        sub_22BB3CD70(v1842, v1844, &qword_27D8E3218, &qword_22BDBE390);
        v1845 = sub_22BB53C48();
        sub_22BD63AAC(v1845, v1846);
        sub_22BD6383C();
        v1847 = sub_22BB3A190();
        if (!sub_22BB3AA28(v1847, v1848, v1838))
        {
          v1849 = *(v17 + 3768);
          sub_22BDB8F24();
        }

        swift_endAccess();
        v1850 = *(v17 + 3776);
        v194 = *(v17 + 3768);
        v1851 = *(v17 + 3360);
        v1852 = *(v17 + 3344);
        v1853 = *(v17 + 3312);
        v1854 = sub_22BB3A9D4();
        sub_22BB336D0(v1854, v1855, 1, v1853);
        v1856 = *(v1852 + 48);
        v1857 = sub_22BB31F54();
        sub_22BD63AAC(v1857, v1858);
        sub_22BD63AAC(v194, v1851 + v1856);
        v1859 = sub_22BB3A190();
        v1861 = sub_22BB3AA28(v1859, v1860, v1853);
        v1862 = *(v17 + 3312);
        if (v1861 == 1)
        {
          v1863 = *(v17 + 3776);
          sub_22BB325EC(*(v17 + 3768), &qword_27D8E3218, &qword_22BDBE390);
          v1850 = &qword_22BDBE390;
          sub_22BD62A7C();
          sub_22BB325EC(v1864, v1865, v1866);
          sub_22BBBFF9C(v1851 + v1856);
          v1867 = v2982;
          if (v146)
          {
            v1868 = *(v17 + 3360);
            sub_22BD62A7C();
            sub_22BB325EC(v1869, v1870, v1871);
            v1872 = 1;
            goto LABEL_277;
          }
        }

        else
        {
          sub_22BD63AAC(*(v17 + 3360), *(v17 + 3760));
          sub_22BD618B8();
          sub_22BB3AA28(v1933, v1934, v1935);
          sub_22BD64234();
          if (!v146)
          {
            v3007 = *(v17 + 3360);
            v2008 = v1852;
            v2009 = *(v17 + 3336);
            v2010 = *(v17 + 3320);
            v1843 = *(v17 + 3312);
            v2011 = sub_22BBC0658(v2010);
            v2012(v2011);
            sub_22BB30DC4();
            sub_22BB3B194(&unk_28142DD40, v2013);
            v1872 = sub_22BB97518();
            v2014 = *(v2010 + 8);
            v2015 = sub_22BB32E04();
            v2014(v2015);
            sub_22BB325EC(v194, &qword_27D8E3218, v1850);
            sub_22BB325EC(v2008, &qword_27D8E3218, v1850);
            v2016 = sub_22BD6220C();
            v2014(v2016);
            sub_22BB325EC(v3007, &qword_27D8E3218, v1850);
            v1867 = v2982;
            goto LABEL_277;
          }

          v1936 = *(v17 + 3320);
          v1937 = *(v17 + 3312);
          v1938 = sub_22BD00E3C();
          sub_22BB325EC(v1938, v1939, v1850);
          v1940 = sub_22BB32E04();
          sub_22BB325EC(v1940, v1941, v1850);
          v1942 = *(v1936 + 8);
          v1943 = sub_22BB3627C();
          v1944(v1943);
          v1867 = v2982;
        }

        sub_22BB325EC(*(v17 + 3360), &qword_27D8E6510, &qword_22BDCE418);
        v1872 = 0;
LABEL_277:
        name[16] = v1872 & 1;
        *(v1867 + 16) = v1872 & 1;
        sub_22BDB8404();
        sub_22BB89B88();
        sub_22BD64B48();
        sub_22BBC03CC();
        sub_22BD61FB4();

        if (v1862)
        {
          v2017 = *(v17 + 4504);
          v1862 = *(v17 + 2496);
          sub_22BB707F8();
          v1850 = 1;
          name[16] = 1;
          sub_22BB707F8();
          *(v1867 + 16) = 1;
          sub_22BD641A4();
          if (v297)
          {
            __break(1u);
            goto LABEL_410;
          }

          *(*(v17 + 2496) + *(v17 + 4504)) = v2018;
        }

        v2019 = *(v17 + 4048);
        sub_22BD62768();
        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBBEE48();
        *(v2020 + 16) = v2021;
        *(v2020 + 24) = v194;
        sub_22BB366B8();
        v2022 = swift_allocObject();
        sub_22BD63080(v2022);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v2023 + 16) = v2024;
        *(v2023 + 24) = v2022;

        v2949 = sub_22BDB77C4();
        v2921 = sub_22BDBB134();
        sub_22BD616A8();
        v2990 = swift_allocObject();
        sub_22BD6250C(v2990);
        sub_22BD616A8();
        v2025 = swift_allocObject();
        v2026 = sub_22BD62C10(v2025);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v2027 + 16) = v2028;
        *(v2027 + 24) = v1850;
        sub_22BB322B0();
        v2029 = swift_allocObject();
        v2959 = sub_22BB3DEE8(v2029);
        sub_22BD616A8();
        v2910 = swift_allocObject();
        LOBYTE(v2910[2].isa) = v194;
        sub_22BD616A8();
        v2030 = swift_allocObject();
        *(v2030 + 16) = v1843;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v2031 + 16) = v2032;
        *(v2031 + 24) = v1862;
        sub_22BB322B0();
        v2033 = swift_allocObject();
        sub_22BB3DEE8(v2033);
        sub_22BD616A8();
        v2923 = swift_allocObject();
        LOBYTE(v2923[2].isa) = 0;
        sub_22BD616A8();
        v2906 = swift_allocObject();
        sub_22BBD19F8(v2906);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7C4();
        *(v2034 + 16) = v2035;
        *(v2034 + 24) = name;
        sub_22BB322B0();
        v2036 = swift_allocObject();
        sub_22BD5F670(v2036);
        sub_22BB322B0();
        v2037 = swift_allocObject();
        sub_22BB95B9C(v2037);
        sub_22BB322B0();
        v2038 = swift_allocObject();
        v2998 = sub_22BD60574(v2038);
        sub_22BD616A8();
        v2941 = swift_allocObject();
        *(v2941 + 16) = 0;
        sub_22BD616A8();
        v2934 = swift_allocObject();
        *(v2934 + 16) = v1850;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7C4();
        *(v2039 + 16) = v2040;
        *(v2039 + 24) = v2982;
        sub_22BB322B0();
        v2041 = swift_allocObject();
        sub_22BD5F68C(v2041);
        sub_22BB322B0();
        v2042 = swift_allocObject();
        sub_22BB53C68(v2042);
        sub_22BB322B0();
        v2043 = swift_allocObject();
        sub_22BB97728(v2043);
        v2044 = sub_22BD63C10();
        sub_22BB3E214(v2044);
        sub_22BD60544(v2990);
        v2045 = v2026;
        *(v2044 + 56) = v2026;
        *(v2044 + 64) = sub_22BB89C7C;
        *(v2044 + 72) = v2029;
        *(v2044 + 80) = sub_22BB89C08;
        v2046 = v2910;
        sub_22BD6286C();
        *(v2044 + 104) = v2030;
        *(v2044 + 112) = sub_22BB89C7C;
        *(v2044 + 120) = v2033;
        *(v2044 + 128) = sub_22BB89C08;
        v1867 = v2923;
        *(v2044 + 136) = v2923;
        *(v2044 + 144) = sub_22BB89C08;
        *(v2044 + 152) = v2906;
        *(v2044 + 160) = sub_22BD5F268;
        *(v2044 + 168) = v2038;
        *(v2044 + 176) = sub_22BB89C08;
        *(v2044 + 184) = v2941;
        *(v2044 + 192) = sub_22BB89C08;
        *(v2044 + 200) = v2934;
        *(v2044 + 208) = sub_22BD5F650;
        *(v2044 + 216) = v2043;

        if (os_log_type_enabled(v2949, v2921))
        {
          sub_22BB67968();
          v2047 = sub_22BD62464();
          *(v17 + 2328) = 0;
          *(v17 + 2336) = v2047;
          sub_22BD624D0(v2934);
          *(v17 + 1424) = v2990;
          v2048 = sub_22BB95784();
          sub_22BB67984(v2048, v2049, v2050, v2051);
          if (!v2968)
          {

            sub_22BB69C84();
            *(v17 + 1424) = v2045;
            v2052 = sub_22BB95784();
            sub_22BB67984(v2052, v2053, v2054, v2055);

            sub_22BD6289C();
            *(v17 + 1424) = v2959;
            v2056 = sub_22BB95784();
            sub_22BB67984(v2056, v2057, v2058, v2059);

            sub_22BB69C84();
            *(v17 + 1424) = v2910;
            v2060 = sub_22BB95784();
            sub_22BB67984(v2060, v2061, v2062, v2063);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v2030;
            v2064 = sub_22BB95784();
            sub_22BB67984(v2064, v2065, v2066, v2067);

            *(v17 + 1416) = sub_22BB89C7C;
            *(v17 + 1424) = v2033;
            v2068 = sub_22BB95784();
            sub_22BB67984(v2068, v2069, v2070, v2071);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v2923;
            v2072 = sub_22BB95784();
            sub_22BB67984(v2072, v2073, v2074, v2075);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v2906;
            v2076 = sub_22BB95784();
            sub_22BB67984(v2076, v2077, v2078, v2079);

            sub_22BD62824();
            *(v17 + 1424) = v2998;
            v2080 = sub_22BB95784();
            sub_22BB67984(v2080, v2081, v2082, v2083);

            *(v17 + 1416) = sub_22BB89C08;
            *(v17 + 1424) = v2941;
            v2084 = sub_22BB95784();
            sub_22BB67984(v2084, v2085, v2086, v2087);

            sub_22BB69C84();
            *(v17 + 1424) = v2934;
            v2088 = sub_22BB95784();
            sub_22BB67984(v2088, v2089, v2090, v2091);

            sub_22BB8EA6C();
            *(v17 + 1424) = v2043;
            v2092 = sub_22BB95784();
            sub_22BB67984(v2092, v2093, v2094, v2095);
            sub_22BD630C0();
            v2096 = *(v17 + 3680);
            sub_22BD65218();
            sub_22BD65458(&dword_22BB2C000, v2949, v2921, "[SessionCoordinator %{public}s] | [TX %{public}s] workCausationAllowed: %{BOOL}d, allowedToSendToClient: %{BOOL}d");
            swift_arrayDestroy();
            sub_22BB2F194();
            sub_22BB679C0();
          }

          goto LABEL_361;
        }

        v16 = *(v17 + 4048);
        sub_22BD6256C();
        name = *(v17 + 3800);
        oslog = *(v17 + 3680);
        v2917 = *(v17 + 3416);

        sub_22BD61DF4(v2906[1].isa);
        v2097();
        sub_22BB325EC(oslog, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BB325EC(name, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BB33E70();
        sub_22BB34648();
        v194 = v2968;
        sub_22BD62CC4();
        v2098 = v2988;
        v12 = v2857;
        v322 = v2855;
LABEL_295:
        *(v17 + 4696) = v2983;
        *(v17 + 4688) = v2984;
        *(v17 + 4680) = v322;
        sub_22BB75860();
        if (v2098)
        {
          v2357 = *(v17 + 4480);
          sub_22BB707F8();
          v2358 = *(v2980 + 16);

          v2359 = swift_task_alloc();
          v2360 = sub_22BB702D8(v2359);
          *v2360 = v2361;
          sub_22BB34F38();
          sub_22BB33430();

          sub_22BB95A50();
          return;
        }

        v2166 = *(v17 + 4632);
        sub_22BB31B88();
        swift_beginAccess();
        v2167 = sub_22BD64644();
        sub_22BD45DE8(v2167);
        sub_22BD61FB4();

        if (v2044)
        {
          v2988 = v194;
          v2168 = *(v17 + 4664);
          v3008 = *(v17 + 4528);
          sub_22BD63BF4();
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBC0284();
          *(v2169 + 16) = v2170;
          *(v2169 + 24) = v1867;
          sub_22BB366B8();
          v2171 = swift_allocObject();
          sub_22BD64DEC(v2171);
          sub_22BB322B0();
          v12 = swift_allocObject();
          sub_22BD5F6EC(v12);

          v2984 = sub_22BDB77C4();
          sub_22BDBB0F4();
          sub_22BD616A8();
          v2172 = swift_allocObject();
          sub_22BD634DC(v2172);
          sub_22BD616A8();
          v2173 = swift_allocObject();
          sub_22BD61688(v2173);
          sub_22BB322B0();
          v1867 = swift_allocObject();
          sub_22BBC0614(v1867);
          sub_22BB322B0();
          v2174 = swift_allocObject();
          sub_22BD6052C(v2174);
          sub_22BD616A8();
          v2046 = swift_allocObject();
          *(v2046 + 16) = v2166;
          sub_22BD616A8();
          v2175 = swift_allocObject();
          *(v2175 + 16) = v2044;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2176 + 16) = v2177;
          *(v2176 + 24) = v12;
          sub_22BB322B0();
          v2178 = swift_allocObject();
          sub_22BB51370(v2178);
          v2179 = sub_22BB970B4();
          sub_22BB31444(v2179);
          v2180[4] = v2181;
          v2180[5] = v322;
          v2180[6] = sub_22BB89C08;
          v2180[7] = v16;
          v2180[8] = sub_22BB89C7C;
          v2180[9] = v2174;
          v2180[10] = sub_22BB89C08;
          v2180[11] = v2046;
          v2180[12] = sub_22BB89C08;
          v2180[13] = v2175;
          v2180[14] = sub_22BB89C7C;
          v2180[15] = v1867;

          sub_22BB93DBC();
          if (os_log_type_enabled(v2984, v2182))
          {
            sub_22BB67968();
            v2183 = sub_22BBBFF34();
            sub_22BBB6144(v2183);
            sub_22BBBEB6C();
            *(v17 + 2128) = v2184;
            *(v17 + 1176) = sub_22BB89C08;
            *(v17 + 1184) = v322;
            v2185 = sub_22BB32E7C();
            sub_22BB67984(v2185, v2186, v2187, v2188);
            if (!v2988)
            {

              sub_22BD604FC();
              *(v17 + 1184) = v16;
              v2189 = sub_22BB32E7C();
              sub_22BB67984(v2189, v2190, v2191, v2192);

              sub_22BD60514();
              *(v17 + 1184) = v2174;
              v2193 = sub_22BB32E7C();
              sub_22BB67984(v2193, v2194, v2195, v2196);

              sub_22BD604FC();
              *(v17 + 1184) = v2046;
              v2197 = sub_22BB32E7C();
              sub_22BB67984(v2197, v2198, v2199, v2200);

              sub_22BD604FC();
              *(v17 + 1184) = v2175;
              v2201 = sub_22BB32E7C();
              sub_22BB67984(v2201, v2202, v2203, v2204);

              *(v17 + 1176) = sub_22BB89C7C;
              *(v17 + 1184) = v1867;
              v2205 = sub_22BB32E7C();
              sub_22BB67984(v2205, v2206, v2207, v2208);
              v2209 = *(v17 + 4032);
              sub_22BD62094();

              sub_22BB96D8C();
              sub_22BD636C8(&dword_22BB2C000, v2984, v2210, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is advisory.");
              sub_22BD61EE4();
              sub_22BB89BBC();
              sub_22BB679C0();
            }

            goto LABEL_412;
          }

          v2211 = *(v17 + 4032);
          sub_22BD62624();

          v2212 = sub_22BB3A9D4();
          v2998(v2212);
          v194 = v2988;
          sub_22BB897B0();
          sub_22BB707F8();
          sub_22BD62070();
          sub_22BD64288();
        }

        v2213 = sub_22BBC3B90();
        sub_22BD45220(v2213);
        sub_22BD61FB4();

        v3001 = v194;
        if (v2044)
        {
          sub_22BD61714();
          v2214 = *(v17 + 4024);
          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v2215 = swift_allocObject();
          sub_22BB3E014(v2215);
          sub_22BB366B8();
          v2216 = swift_allocObject();
          sub_22BD63DE4(v2216);
          sub_22BB322B0();
          v2217 = swift_allocObject();
          sub_22BB89B20(v2217);
          v2990 = sub_22BDB77C4();
          sub_22BDBB0F4();
          sub_22BD616A8();
          v2218 = swift_allocObject();
          sub_22BB3CE80(v2218);
          sub_22BD616A8();
          v2219 = swift_allocObject();
          sub_22BD624C4(v2219);
          sub_22BB322B0();
          v2220 = swift_allocObject();
          sub_22BBBE860(v2220);
          sub_22BB322B0();
          v2221 = swift_allocObject();
          sub_22BB3AE40(v2221);
          sub_22BD616A8();
          v2222 = swift_allocObject();
          sub_22BD636BC(v2222);
          sub_22BD616A8();
          v2223 = swift_allocObject();
          sub_22BBD1A04(v2223);
          sub_22BB322B0();
          v2224 = swift_allocObject();
          sub_22BBBE888(v2224);
          sub_22BB322B0();
          v2225 = swift_allocObject();
          v2226 = sub_22BD60980(v2225);
          sub_22BB34620(v2226);
          v2227[4] = v2228;
          v2227[5] = v1867;
          v2227[6] = sub_22BB89C08;
          v2227[7] = v2219;
          v2227[8] = sub_22BB89C7C;
          v2227[9] = v2214;
          v2227[10] = sub_22BB89C08;
          v2227[11] = v16;
          v2227[12] = sub_22BB89C08;
          v2227[13] = v322;
          v2227[14] = sub_22BB89C7C;
          v2227[15] = v12;
          sub_22BD6443C();

          v2046 = sub_22BD60DFC();
          if (os_log_type_enabled(v2046, v2229))
          {
            sub_22BB67968();
            v2230 = sub_22BBBFF34();
            sub_22BD5FA78(v2230);
            *(v17 + 1104) = v194;
            v2231 = sub_22BB71F54();
            sub_22BB67984(v2231, v2232, v2233, v2234);
            if (!v194)
            {

              *(v17 + 1096) = sub_22BB89C08;
              *(v17 + 1104) = v2219;
              v2235 = sub_22BB71F54();
              sub_22BB67984(v2235, v2236, v2237, v2238);

              *(v17 + 1096) = sub_22BB89C7C;
              *(v17 + 1104) = v2214;
              v2239 = sub_22BB71F54();
              sub_22BB67984(v2239, v2240, v2241, v2242);

              sub_22BBD2250();
              *(v17 + 1104) = v16;
              v2243 = sub_22BB71F54();
              sub_22BB67984(v2243, v2244, v2245, v2246);

              sub_22BBD2250();
              *(v17 + 1104) = v322;
              v2247 = sub_22BB71F54();
              sub_22BB67984(v2247, v2248, v2249, v2250);

              *(v17 + 1096) = sub_22BB89C7C;
              *(v17 + 1104) = v12;
              v2251 = sub_22BB71F54();
              sub_22BB67984(v2251, v2252, v2253, v2254);
              sub_22BD643FC();
              sub_22BD61B3C();
              sub_22BD62590();
              sub_22BD636C8(v2255, v2256, v2257, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is work-allowing advisory.");
              sub_22BBBE7DC();
              sub_22BB32238();
              sub_22BB679C0();
            }

            goto LABEL_367;
          }

          sub_22BD6204C();

          v2258 = sub_22BD61130();
          v2259(v2258);
          sub_22BD64BF8();
          v3001 = v2260;
          sub_22BB897B0();
          sub_22BB707F8();
          sub_22BD618EC();
          *(v2214 + 16) = v12;
        }

        else
        {
          v2923 = v194;
        }

        sub_22BB966A8();
        v2261 = sub_22BB94E5C();
        v2262(v2261);
        sub_22BDB96A4();
        v2263 = sub_22BB2F324();
        (v16)(v2263);
        v2264 = sub_22BB95A18();
        v35 = v3000;
        v2265 = (v17)(v2264);
        v2266 = sub_22BB2F0E0();
        (v322)(v2266);
        v2267 = v3000[312].isa;
        if (v2265)
        {
          sub_22BD63228();
          sub_22BB322B0();
          v2363 = swift_allocObject();
          sub_22BB922D8(v2363);
          sub_22BB366B8();
          v2364 = swift_allocObject();
          sub_22BBBE07C(v2364);
          sub_22BB322B0();
          v2365 = swift_allocObject();
          sub_22BD60058(v2365);
          sub_22BDB77C4();
          LODWORD(v2990) = sub_22BDBB134();
          sub_22BD616A8();
          v2366 = swift_allocObject();
          sub_22BD62F80(v2366);
          sub_22BD616A8();
          v186 = swift_allocObject();
          sub_22BD61F00(v186);
          sub_22BB322B0();
          v2367 = swift_allocObject();
          sub_22BBC0614(v2367);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F74C();
          *(v2368 + 16) = v2369;
          *(v2368 + 24) = v2367;
          sub_22BD616A8();
          v2370 = swift_allocObject();
          sub_22BD64C40(v2370);
          sub_22BD616A8();
          v2371 = swift_allocObject();
          sub_22BB89CA8(v2371);
          sub_22BB322B0();
          v2372 = swift_allocObject();
          sub_22BBBD2AC(v2372);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F764();
          v2374 = sub_22BD620AC(v2373);
          sub_22BB348E0(v2374);
          v2375[4] = v2376;
          v2375[5] = v17;
          v2375[6] = sub_22BB89C08;
          v2375[7] = v186;
          v2375[8] = sub_22BB89C7C;
          v2375[9] = v3000;
          v2375[10] = sub_22BB89C08;
          v2375[11] = v2046;
          v2375[12] = sub_22BB89C08;
          v2375[13] = v12;
          v2375[14] = sub_22BB89C7C;
          v2375[15] = v1867;

          sub_22BD62518();
          if (os_log_type_enabled(v2372, v2377))
          {
            sub_22BB67968();
            v2378 = sub_22BBC01B4();
            *(v322 + 2040) = 0;
            *(v322 + 2048) = v2378;
            sub_22BD60D8C();
            *(v322 + 2032) = v2379;
            *(v322 + 1048) = sub_22BB89C08;
            *(v322 + 1056) = v17;
            v2380 = sub_22BD5FCD8();
            v194 = v3001;
            sub_22BB67984(v2380, v2381, v2382, v2383);
            if (v3001)
            {
LABEL_331:

              goto LABEL_332;
            }

            *(v322 + 1048) = sub_22BB89C08;
            *(v322 + 1056) = v186;
            v2455 = sub_22BD5FCD8();
            sub_22BB67984(v2455, v2456, v2457, v2458);

            *(v322 + 1048) = sub_22BB89C7C;
            *(v322 + 1056) = v3000;
            v2529 = sub_22BD5FCD8();
            sub_22BB67984(v2529, v2530, v2531, v2532);

            sub_22BD61044();
            *(v322 + 1056) = v2046;
            v2604 = sub_22BD5FCD8();
            sub_22BB67984(v2604, v2605, v2606, v2607);

            sub_22BB3B510();
            *(v2650 + 1048) = v2651;
            *(v2650 + 1056) = v12;
            sub_22BB73B1C(v2650);
LABEL_410:

            sub_22BB70564();
            *(v2687 + 1048) = v2688;
            *(v2687 + 1056) = v1867;
            sub_22BB73B1C(v2687);
            if (!v194)
            {
              sub_22BD63154();
              sub_22BB76660(&dword_22BB2C000, v2689, v2690, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition passed.");
              sub_22BD619D4();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_418;
          }

          sub_22BD631E4();

          v2384 = sub_22BD623D0();
          v2385(v2384);
          sub_22BD623C0();
          sub_22BB31B88();
          swift_beginAccess();
          sub_22BD64A14();
          sub_22BB31B88();
          swift_beginAccess();
          sub_22BD61A94();
          v17 = v322;
          if (!v146)
          {
            if (v2386)
            {
              sub_22BD65320();
              sub_22BB322B0();
              v2423 = swift_allocObject();
              sub_22BB351E8(v2423);
              sub_22BB366B8();
              v2424 = swift_allocObject();
              sub_22BD6227C(v2424);
              sub_22BB322B0();
              v2425 = swift_allocObject();
              sub_22BB52D3C(v2425);
              v2989 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v2426 = swift_allocObject();
              sub_22BD60C88(v2426);
              sub_22BD616A8();
              v2427 = swift_allocObject();
              sub_22BD60EF4(v2427);
              sub_22BB322B0();
              v2392 = swift_allocObject();
              sub_22BB70160(v2392);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v2428 + 16) = v2429;
              *(v2428 + 24) = v2392;
              sub_22BD616A8();
              v2430 = swift_allocObject();
              sub_22BBBEC2C(v2430);
              sub_22BD616A8();
              v2431 = swift_allocObject();
              sub_22BBB7560(v2431);
              sub_22BB322B0();
              v2432 = swift_allocObject();
              sub_22BD602C4(v2432);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v2434 = sub_22BD617F4(v2433);
              sub_22BB3602C(v2434);
              v2435[6] = sub_22BB89C08;
              v2435[7] = v3000;
              v2435[8] = sub_22BB89C7C;
              v2435[9] = v186;
              v2435[10] = sub_22BB89C08;
              v2435[11] = v12;
              v2435[12] = sub_22BB89C08;
              v2435[13] = v1867;
              v2435[14] = sub_22BB89C7C;
              v2435[15] = v322;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (sub_22BD61814())
              {
                sub_22BB67968();
                v2436 = sub_22BBC01B4();
                *(v322 + 1944) = 0;
                *(v322 + 1952) = v2436;
                sub_22BD60D8C();
                *(v322 + 1936) = v2437;
                *(v322 + 984) = sub_22BB89C08;
                *(v322 + 992) = v2046;
                v2438 = sub_22BD60164();
                v194 = v3001;
                sub_22BB67984(v2438, v2439, v2440, v2441);
                if (!v3001)
                {

                  *(v322 + 984) = sub_22BB89C08;
                  *(v322 + 992) = v3000;
                  v2442 = sub_22BD60164();
                  sub_22BB67984(v2442, v2443, v2444, v2445);

                  sub_22BB70564();
                  *(v2446 + 984) = v2447;
                  *(v2446 + 992) = v186;
                  sub_22BD611BC(v2446);

                  sub_22BB3B510();
                  *(v2448 + 984) = v2449;
                  *(v2448 + 992) = v2990;
                  sub_22BD611BC(v2448);

                  sub_22BB3B510();
                  *(v2450 + 984) = v2451;
                  *(v2450 + 992) = v2984;
                  sub_22BD611BC(v2450);

                  sub_22BB70564();
                  *(v2452 + 984) = v2453;
                  *(v2452 + 992) = v322;
                  sub_22BD611BC(v2452);
                  v2454 = v3000[497].isa;
                  sub_22BD61A18();

                  v2422 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work, but will be sent to client.";
                  goto LABEL_422;
                }

LABEL_367:

                goto LABEL_412;
              }

              v2534 = *(v322 + 3976);
              goto LABEL_376;
            }

            sub_22BD652F0();
            sub_22BB322B0();
            v2491 = swift_allocObject();
            sub_22BB351E8(v2491);
            sub_22BB366B8();
            v2492 = swift_allocObject();
            sub_22BD6227C(v2492);
            sub_22BB322B0();
            v2493 = swift_allocObject();
            sub_22BB52D3C(v2493);
            v2989 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BD616A8();
            v2494 = swift_allocObject();
            sub_22BD60C88(v2494);
            sub_22BD616A8();
            v2495 = swift_allocObject();
            sub_22BD60EF4(v2495);
            sub_22BB322B0();
            v2392 = swift_allocObject();
            sub_22BB70160(v2392);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97CD8();
            *(v2496 + 16) = v2497;
            *(v2496 + 24) = v2392;
            sub_22BD616A8();
            v2498 = swift_allocObject();
            sub_22BBBEC2C(v2498);
            sub_22BD616A8();
            v2499 = swift_allocObject();
            sub_22BBB7560(v2499);
            sub_22BB322B0();
            v2500 = swift_allocObject();
            sub_22BD602C4(v2500);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F89C();
            v2502 = sub_22BD617F4(v2501);
            sub_22BB3602C(v2502);
            v2503[6] = sub_22BB89C08;
            v2503[7] = v3000;
            v2503[8] = sub_22BB89C7C;
            v2503[9] = v186;
            v2503[10] = sub_22BB89C08;
            v2503[11] = v12;
            v2503[12] = sub_22BB89C08;
            v2503[13] = v1867;
            v2503[14] = sub_22BB89C7C;
            v2503[15] = v322;

            sub_22BBC0AE4();
            sub_22BBC23B0();

            if (!sub_22BD61814())
            {
              v2536 = *(v322 + 3968);
              goto LABEL_376;
            }

            sub_22BB67968();
            v2504 = sub_22BBC01B4();
            *(v322 + 1912) = 0;
            *(v322 + 1920) = v2504;
            sub_22BD60D8C();
            *(v322 + 1904) = v2505;
            *(v322 + 1016) = sub_22BB89C08;
            *(v322 + 1024) = v2046;
            v2506 = sub_22BD6013C();
            v194 = v3001;
            sub_22BB67984(v2506, v2507, v2508, v2509);
            if (v3001)
            {
              goto LABEL_367;
            }

LABEL_394:

            *(v17 + 1016) = sub_22BB89C08;
            *(v17 + 1024) = v35;
            v2633 = sub_22BD6013C();
            sub_22BB67984(v2633, v2634, v2635, v2636);
            if (v194)
            {

              goto LABEL_412;
            }

            sub_22BB70564();
            *(v2652 + 1016) = v2653;
            *(v2652 + 1024) = v186;
            sub_22BD6119C(v2652);

            sub_22BB3B510();
            *(v2691 + 1016) = v2692;
            *(v2691 + 1024) = v2990;
            sub_22BD6119C(v2691);

            sub_22BB3B510();
            *(v2697 + 1016) = v2698;
            *(v2697 + 1024) = v2984;
            sub_22BD6119C(v2697);

            sub_22BB70564();
            *(v2705 + 1016) = v2706;
            *(v2705 + 1024) = v322;
            sub_22BD6119C(v2705);
            v2712 = v3000[496].isa;
            sub_22BD61A18();

            v2422 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work or be sent to client.";
LABEL_422:
            sub_22BD632D4(&dword_22BB2C000, v2420, v2421, v2422);
            sub_22BD619D4();
            sub_22BD6193C();
            sub_22BB679C0();
          }

          if ((v2386 & 1) == 0)
          {
            sub_22BD65308();
            sub_22BB322B0();
            v2459 = swift_allocObject();
            sub_22BB351E8(v2459);
            sub_22BB366B8();
            v2460 = swift_allocObject();
            sub_22BD6227C(v2460);
            sub_22BB322B0();
            v2461 = swift_allocObject();
            sub_22BB52D3C(v2461);
            v2989 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BD616A8();
            v2462 = swift_allocObject();
            sub_22BD60C88(v2462);
            sub_22BD616A8();
            v2463 = swift_allocObject();
            sub_22BD60EF4(v2463);
            sub_22BB322B0();
            v2392 = swift_allocObject();
            sub_22BB70160(v2392);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97CD8();
            *(v2464 + 16) = v2465;
            *(v2464 + 24) = v2392;
            sub_22BD616A8();
            v2466 = swift_allocObject();
            sub_22BBBEC2C(v2466);
            sub_22BD616A8();
            v2467 = swift_allocObject();
            sub_22BBB7560(v2467);
            sub_22BB322B0();
            v2468 = swift_allocObject();
            sub_22BD602C4(v2468);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F89C();
            v2470 = sub_22BD617F4(v2469);
            sub_22BB3602C(v2470);
            v2471[6] = sub_22BB89C08;
            v2471[7] = v3000;
            v2471[8] = sub_22BB89C7C;
            v2471[9] = v186;
            v2471[10] = sub_22BB89C08;
            v2471[11] = v12;
            v2471[12] = sub_22BB89C08;
            v2471[13] = v1867;
            v2471[14] = sub_22BB89C7C;
            v2471[15] = v322;

            sub_22BBC0AE4();
            sub_22BBC23B0();

            if (!sub_22BD61814())
            {
              v2535 = *(v322 + 3992);
              goto LABEL_376;
            }

            sub_22BB67968();
            v2472 = sub_22BBC01B4();
            *(v322 + 1976) = 0;
            *(v322 + 1984) = v2472;
            sub_22BD60D8C();
            *(v322 + 1968) = v2473;
            *(v322 + 1560) = sub_22BB89C08;
            *(v322 + 1568) = v2046;
            v2474 = sub_22BD60150();
            v194 = v3001;
            sub_22BB67984(v2474, v2475, v2476, v2477);
            if (v3001)
            {
              goto LABEL_367;
            }

            *(v322 + 1560) = sub_22BB89C08;
            *(v322 + 1568) = v3000;
            v2478 = sub_22BD60150();
            sub_22BB67984(v2478, v2479, v2480, v2481);

            sub_22BB70564();
            *(v2482 + 1560) = v2483;
            *(v2482 + 1568) = v186;
            sub_22BB97758(v2482);

            sub_22BB3B510();
            *(v2484 + 1560) = v2485;
            *(v2484 + 1568) = v2990;
            sub_22BB97758(v2484);

            sub_22BB3B510();
            *(v2486 + 1560) = v2487;
            *(v2486 + 1568) = v2984;
            sub_22BB97758(v2486);

            sub_22BB70564();
            *(v2488 + 1560) = v2489;
            *(v2488 + 1568) = v322;
            sub_22BB97758(v2488);
            v2490 = v3000[499].isa;
            sub_22BD61A18();

            v2422 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work, but will not be sent to client.";
            goto LABEL_422;
          }

          sub_22BD65368();
          sub_22BB322B0();
          v2387 = swift_allocObject();
          sub_22BB351E8(v2387);
          sub_22BB366B8();
          v2388 = swift_allocObject();
          sub_22BD6227C(v2388);
          sub_22BB322B0();
          v2389 = swift_allocObject();
          sub_22BB52D3C(v2389);
          v2989 = sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v2390 = swift_allocObject();
          sub_22BD60C88(v2390);
          sub_22BD616A8();
          v2391 = swift_allocObject();
          sub_22BD60EF4(v2391);
          sub_22BB322B0();
          v2392 = swift_allocObject();
          sub_22BB70160(v2392);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB97CD8();
          *(v2393 + 16) = v2394;
          *(v2393 + 24) = v2392;
          sub_22BD616A8();
          v2395 = swift_allocObject();
          sub_22BBBEC2C(v2395);
          sub_22BD616A8();
          v2396 = swift_allocObject();
          sub_22BBB7560(v2396);
          sub_22BB322B0();
          v2397 = swift_allocObject();
          sub_22BD602C4(v2397);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F89C();
          v2399 = sub_22BD617F4(v2398);
          sub_22BB3602C(v2399);
          v2400[6] = sub_22BB89C08;
          v2400[7] = v3000;
          v2400[8] = sub_22BB89C7C;
          v2400[9] = v186;
          v2400[10] = sub_22BB89C08;
          v2400[11] = v12;
          v2400[12] = sub_22BB89C08;
          v2400[13] = v1867;
          v2400[14] = sub_22BB89C7C;
          v2400[15] = v322;

          sub_22BBC0AE4();
          sub_22BBC23B0();

          if (sub_22BD61814())
          {
            sub_22BB67968();
            v2401 = sub_22BBC01B4();
            *(v322 + 2008) = 0;
            *(v322 + 2016) = v2401;
            sub_22BD60D8C();
            *(v322 + 2000) = v2402;
            *(v322 + 1032) = sub_22BB89C08;
            *(v322 + 1040) = v2046;
            v2403 = sub_22BD60178();
            v194 = v3001;
            sub_22BB67984(v2403, v2404, v2405, v2406);
            if (!v3001)
            {

              *(v322 + 1032) = sub_22BB89C08;
              *(v322 + 1040) = v3000;
              v2407 = sub_22BD60178();
              sub_22BB67984(v2407, v2408, v2409, v2410);

              sub_22BB70564();
              *(v2411 + 1032) = v2412;
              *(v2411 + 1040) = v186;
              sub_22BD611DC(v2411);

              sub_22BB3B510();
              *(v2413 + 1032) = v2414;
              *(v2413 + 1040) = v2990;
              sub_22BD611DC(v2413);

              sub_22BB3B510();
              *(v2415 + 1032) = v2416;
              *(v2415 + 1040) = v2984;
              sub_22BD611DC(v2415);

              sub_22BB70564();
              *(v2417 + 1032) = v2418;
              *(v2417 + 1040) = v322;
              sub_22BD611DC(v2417);
              v2419 = v3000[500].isa;
              sub_22BD61A18();

              v2422 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work and be sent to client.";
              goto LABEL_422;
            }

            goto LABEL_367;
          }

          v2533 = *(v322 + 4000);
LABEL_376:
          v2537 = *(v322 + 3840);
          v2538 = *(v322 + 3832);

          v2539 = sub_22BB37074();
          v2998(v2539);
          v2540 = sub_22BB756F4(v3001);
          if (v2540 == v2541)
          {
LABEL_383:
            v2548 = *(v322 + 4632);
            sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
            sub_22BB97200();
            v2549 = sub_22BDBAB14();
            sub_22BD631C0(v2549);

            v2550 = swift_task_alloc();
            v2551 = sub_22BD64B78(v2550);
            *v2551 = v2552;
            sub_22BB34818();
            sub_22BD61554();
            sub_22BB33430();

            sub_22BD59BE8(v2553);
            return;
          }

          sub_22BB97DE8();
          if (v2542 != v297)
          {
            __break(1u);
          }

          else if (v2392 < v2537)
          {
            sub_22BB73FE8();
            do
            {
              sub_22BD60880();
              v2543 = sub_22BD60D38();
              nullsub_1(v2543);

              sub_22BB93884();
              sub_22BB52814();
              sub_22BBBEC20();
              v2544 = sub_22BDB9AB4();
              nullsub_1(v2544);
              v2545 = sub_22BB97B18();
              sub_22BB3CD70(v2545, v186, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BB93884();
              sub_22BB52814();
              v2546 = sub_22BDB9974();
              nullsub_1(v2546);
              sub_22BD65278();
              sub_22BB93884();
              sub_22BB52814();
              v2547 = sub_22BD65230();
              nullsub_1(v2547);
              sub_22BD61C1C();
            }

            while (!v146);
            swift_endAccess();
            goto LABEL_383;
          }

          __break(1u);
LABEL_425:
          sub_22BB757D4();

          sub_22BDB7714();
          sub_22BD61424();
          sub_22BD6465C(v2715, v2716, v2717, v2718, v2719, v2720);

          sub_22BD619D4();
          sub_22BD6193C();
          sub_22BB679C0();
        }

        sub_22BD62FC4();
        sub_22BDB63E4();
        sub_22BB322B0();
        v2268 = swift_allocObject();
        sub_22BB3CF50(v2268);
        sub_22BB366B8();
        v2269 = swift_allocObject();
        sub_22BD63DE4(v2269);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD60754();
        *(v2270 + 16) = v2271;
        *(v2270 + 24) = v1867;

        v2990 = sub_22BDB77C4();
        LODWORD(v2988) = sub_22BDBB134();
        sub_22BD616A8();
        v2272 = swift_allocObject();
        v18 = v3000;
        sub_22BB3CE80(v2272);
        sub_22BD616A8();
        v2273 = swift_allocObject();
        sub_22BD61688(v2273);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB9710C();
        *(v2274 + 16) = v2275;
        *(v2274 + 24) = v2268;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F734();
        *(v2276 + 16) = v2277;
        *(v2276 + 24) = v194;
        sub_22BD616A8();
        v2278 = swift_allocObject();
        sub_22BD64C7C(v2278);
        sub_22BD616A8();
        v2279 = swift_allocObject();
        sub_22BBD1A04(v2279);
        sub_22BB322B0();
        v2280 = swift_allocObject();
        sub_22BBBE888(v2280);
        sub_22BB322B0();
        v2281 = swift_allocObject();
        v31 = sub_22BD60980(v2281);
        sub_22BB34620(v31);
        v2282[4] = v2283;
        v2282[5] = v1867;
        v2282[6] = sub_22BB89C08;
        v2282[7] = v16;
        v2282[8] = sub_22BB89C7C;
        v2282[9] = v17;
        v2282[10] = sub_22BB89C08;
        v2282[11] = v3000;
        v2282[12] = sub_22BB89C08;
        v2282[13] = v322;
        v2282[14] = sub_22BB89C7C;
        v2282[15] = v12;
        sub_22BD6443C();

        v14 = sub_22BD60DFC();
        if (os_log_type_enabled(v14, v2284))
        {
          sub_22BD64EB0();
          v2285 = sub_22BD62464();
          sub_22BB975AC(v2285);
          if (!v194)
          {

            v3000[169].isa = sub_22BB89C08;
            v3000[170].isa = v16;
            v2286 = sub_22BD6020C();
            sub_22BB67984(v2286, v2287, v2288, v2289);
            sub_22BD653E0();
            v3000[169].isa = sub_22BB89C7C;
            v3000[170].isa = v31;
            v2290 = sub_22BD6020C();
            sub_22BB67984(v2290, v2291, v2292, v2293);

            sub_22BD60444();

            sub_22BD60810();

            sub_22BB6FD50();
            v2294 = *(v17 + 4008);
            sub_22BD624B8();

            sub_22BD61B3C();
            sub_22BD62590();
            sub_22BD63F58(v2295, v2296, v2297, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition FAILED. It will be skipped.");
            sub_22BD62500();
            swift_arrayDestroy();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_367;
        }

        sub_22BB3FB4C();
        v15 = v3000[479].isa;

        v2298 = sub_22BD61130();
        v2299(v2298);
        v17 = v3000;
        sub_22BD600DC();

        v2300 = sub_22BB97B18();
        sub_22BB325EC(v2300, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BD5FA08();

        v2301 = sub_22BD00AA4();
        sub_22BB74044(v2301, v2302, v3000);

        sub_22BB35CBC();
        sub_22BB34648();
        v35 = v3001;
        goto LABEL_5;
    }
  }
}