uint64_t sub_22C5CC41C(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = sub_22C369824(v2);
  v80 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v7);
  v9 = &v73[-v8];
  v10 = sub_22C9070DC();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v73[-v20];
  v22 = sub_22C9063DC();
  v23 = sub_22C369824(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  result = MEMORY[0x28223BE20](v30);
  v35 = &v73[-v34];
  if (*(a1 + 8))
  {
    v36 = v33;
    v37 = result;
    sub_22C903FBC();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22C366000, v38, v39, "Plan Text is deprecated. No longer supported!", v40, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v36 + 8))(v35, v37);
  }

  else
  {
    v77 = v18;
    v78 = v32;
    v83 = v2;
    v84 = v9;
    v41 = v10;
    v42 = *(a1 + 16);
    if (v42)
    {
      v75 = v33;
      v76 = result;
      v43 = 0;
      v85[1] = MEMORY[0x277D84FA0];
      v44 = *(v42 + 16);
      v81 = (v13 + 16);
      v82 = v44;
      v79 = (v13 + 8);
      ++v80;
      v45 = v41;
      for (i = v21; ; result = (*v79)(i, v45))
      {
        v47 = v84;
        if (v82 == v43)
        {

          return 1;
        }

        if (v43 >= *(v42 + 16))
        {
          __break(1u);
          return result;
        }

        v48 = *(v13 + 16);
        v48(i, v42 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v43, v45);
        sub_22C9068FC();
        sub_22C6A54FC();
        v49 = v47;
        v51 = v50;
        v52 = *v80;
        (*v80)(v49, v83);
        if ((v51 & 1) == 0)
        {
          break;
        }

        ++v43;
      }

      v58 = v78;
      sub_22C903FBC();
      v59 = v77;
      v48(v77, i, v45);
      v60 = sub_22C9063CC();
      v61 = sub_22C90AADC();
      if (os_log_type_enabled(v60, v61))
      {
        sub_22C36BED8();
        v62 = swift_slowAlloc();
        v81 = v62;
        sub_22C370220();
        v82 = swift_slowAlloc();
        v85[0] = v82;
        *v62 = 136315138;
        v63 = v84;
        sub_22C9068FC();
        sub_22C5117E8();
        v74 = v61;
        v64 = v59;
        v65 = v83;
        v66 = sub_22C90B47C();
        v68 = v67;
        v52(v63, v65);
        v69 = *v79;
        (*v79)(v64, v45);
        v70 = sub_22C36F9F4(v66, v68, v85);

        v71 = v81;
        *(v81 + 1) = v70;
        _os_log_impl(&dword_22C366000, v60, v74, "Duplicate program statement index found in plan: %s", v71, 0xCu);
        sub_22C36FF94(v82);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*(v75 + 8))(v58, v76);
        v69(i, v45);
      }

      else
      {

        v72 = *v79;
        (*v79)(v59, v45);
        (*(v75 + 8))(v58, v76);
        v72(i, v45);
      }
    }

    else
    {
      v53 = v33;
      v54 = result;
      sub_22C903FBC();
      v55 = sub_22C9063CC();
      v56 = sub_22C90AADC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_22C366000, v55, v56, "Could not find programStatements in planValue", v57, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v53 + 8))(v28, v54);
    }
  }

  return 0;
}

uint64_t sub_22C5CCA3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22C9063DC();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = sub_22C8FFECC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_22C8FFEBC();
  sub_22C5AA660();
  sub_22C8FFEAC();

  memcpy(v13, v15, sizeof(v13));
  nullsub_1(v13);
  memcpy(v14, a4, 0xD0uLL);
  memcpy(a4, v13, 0xD0uLL);
  return sub_22C3770B0(v14, &qword_27D9BEC80, &unk_22C920630);
}

void *sub_22C5CCD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v9 = sub_22C90A17C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22C90A15C();
  result = sub_22C90A13C();
  if (v12)
  {
    v13 = result;
    v14 = v12;
    sub_22C5CA130(v24);
    memcpy(v23, v24, sizeof(v23));
    sub_22C90A1DC();
    v15 = sub_22C90A0EC();

    v16 = swift_allocObject();
    v16[2] = v23;
    v16[3] = v13;
    v16[4] = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_22C5CA3AC;
    *(v17 + 24) = v16;
    v22[4] = sub_22C5CD32C;
    v22[5] = v17;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_22C5C8528;
    v22[3] = &unk_283FBD8F8;
    v18 = _Block_copy(v22);

    [a6 lookupKey:v15 resultBlock:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      memcpy(v25, v23, sizeof(v25));
      result = sub_22C4DDD30(v25);
      if (result != 1)
      {
        sub_22C3D0FB0();
        v20 = *(*a7 + 16);
        sub_22C3D1174(v20);
        v21 = *a7;
        *(v21 + 16) = v20 + 1;
        return memcpy((v21 + 208 * v20 + 32), v25, 0xD0uLL);
      }
    }
  }

  return result;
}

uint64_t sub_22C5CCFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  sub_22C5CA130(__src);
  memcpy(v18, __src, sizeof(v18));
  sub_22C90A1DC();
  v11 = sub_22C90A0EC();

  v12 = swift_allocObject();
  v12[2] = v18;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22C5CA138;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22C5CD32C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22C5C8528;
  aBlock[3] = &unk_283FBD880;
  v14 = _Block_copy(aBlock);

  [a6 lookupKey:v11 resultBlock:v14];

  _Block_release(v14);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  else
  {
    memcpy(aBlock, v18, sizeof(aBlock));
    result = sub_22C4DDD30(aBlock);
    if (result != 1)
    {
      swift_beginAccess();
      sub_22C3D0FB0();
      v16 = *(*a7 + 16);
      sub_22C3D1174(v16);
      v17 = *a7;
      *(v17 + 16) = v16 + 1;
      memcpy((v17 + 208 * v16 + 32), aBlock, 0xD0uLL);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22C5CD1D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22C90A11C();
  v2(v3);
}

uint64_t sub_22C5CD23C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C5CD254()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C5CD2A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_22C5CD2D0()
{
  result = qword_28142F9B0;
  if (!qword_28142F9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9B0);
  }

  return result;
}

void sub_22C5CD33C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t PlannerHTTPClient.Options.init(n:topP:temperature:lengthPenalty:frequencyPenalty:randomSeed:maxTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PlannerHTTPClient.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PlannerHTTPClient.init(with:)(a1);
  return v5;
}

uint64_t PlannerHTTPClient.CompletionRequest.init(model:prompt:options:user:disableLogging:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a5;
  v17 = a5[5];
  v18 = a5[6];
  v19 = *(type metadata accessor for PlannerHTTPClient.CompletionRequest(0) + 36);
  v20 = sub_22C90046C();
  v22 = *(a5 + 3);
  v23 = *(a5 + 1);
  sub_22C36C640(a9 + v19, 1, 1, v20);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v16;
  *(a9 + 56) = v22;
  *(a9 + 40) = v23;
  *(a9 + 72) = v17;
  *(a9 + 80) = v18;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 104) = a8;

  return sub_22C3F94FC(a10, a9 + v19);
}

uint64_t PlannerHTTPClient.submit<A>(request:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 496) = a4;
  *(v7 + 72) = a3;
  *(v7 + 80) = a5;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = sub_22C90A17C();
  sub_22C369914(v8);
  v10 = *(v9 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 112) = AssociatedTypeWitness;
  sub_22C3699B8(AssociatedTypeWitness);
  *(v7 + 120) = v12;
  v14 = *(v13 + 64);
  *(v7 + 128) = sub_22C36D0D4();
  *(v7 + 136) = swift_task_alloc();
  v15 = sub_22C90637C();
  *(v7 + 144) = v15;
  sub_22C3699B8(v15);
  *(v7 + 152) = v16;
  v18 = *(v17 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v19 = sub_22C90634C();
  *(v7 + 168) = v19;
  sub_22C3699B8(v19);
  *(v7 + 176) = v20;
  v22 = *(v21 + 64);
  *(v7 + 184) = sub_22C36D0D4();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v23 = sub_22C90636C();
  *(v7 + 208) = v23;
  sub_22C3699B8(v23);
  *(v7 + 216) = v24;
  v26 = *(v25 + 64);
  *(v7 + 224) = sub_22C36D0D4();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  v27 = sub_22C90046C();
  *(v7 + 248) = v27;
  sub_22C3699B8(v27);
  *(v7 + 256) = v28;
  v30 = *(v29 + 64) + 15;
  *(v7 + 264) = swift_task_alloc();
  v31 = sub_22C9063DC();
  *(v7 + 272) = v31;
  sub_22C3699B8(v31);
  *(v7 + 280) = v32;
  v34 = *(v33 + 64);
  *(v7 + 288) = sub_22C36D0D4();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  v35 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  *(v7 + 352) = sub_22C36D0D4();
  *(v7 + 360) = swift_task_alloc();
  v38 = sub_22C8FFE7C();
  *(v7 + 368) = v38;
  sub_22C3699B8(v38);
  *(v7 + 376) = v39;
  v41 = *(v40 + 64);
  *(v7 + 384) = sub_22C36D0D4();
  *(v7 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5CD848, 0, 0);
}

uint64_t sub_22C5CD848()
{
  v78 = v0;
  v72 = *(v0 + 392);
  v1 = *(v0 + 360);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 496);
  v6 = *(v0 + 64);
  (*(v2 + 64))(v3, v2);
  v8 = v7;
  (*(v2 + 72))(v3, v2);
  sub_22C5CF458(v8, v6, v4, v5 & 1, v1, v3, *(v2 + 16), v72);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v11 = *(v0 + 368);
  v12 = *(v0 + 376);
  v13 = *(v0 + 344);
  sub_22C36DD28(*(v0 + 360), &qword_27D9BB138, &qword_22C90DB70);

  sub_22C90403C();
  (*(v12 + 16))(v10, v9, v11);
  v14 = sub_22C9063CC();
  v15 = sub_22C90AABC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 384);
  if (v16)
  {
    v18 = *(v0 + 352);
    v19 = *(v0 + 248);
    v20 = sub_22C36FB44();
    v74 = sub_22C370060();
    v77 = v74;
    *v20 = 136315138;
    sub_22C8FFE4C();
    result = sub_22C370B74(v18, 1, v19);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v22 = *(v0 + 376);
    v68 = *(v0 + 368);
    v69 = *(v0 + 384);
    v70 = *(v0 + 280);
    v71 = *(v0 + 272);
    v73 = *(v0 + 344);
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    (*(v24 + 32))(v23, *(v0 + 352), v25);
    sub_22C36ACBC();
    sub_22C5D2E68(v26, v27);
    v28 = sub_22C90B47C();
    v30 = v29;
    (*(v24 + 8))(v23, v25);
    v31 = *(v22 + 8);
    v31(v69, v68);
    v32 = sub_22C36F9F4(v28, v30, &v77);

    *(v20 + 4) = v32;
    _os_log_impl(&dword_22C366000, v14, v15, "Request URL is : %s", v20, 0xCu);
    sub_22C36FF94(v74);
    sub_22C3699EC();
    sub_22C36D69C();

    v33 = *(v70 + 8);
    v33(v73, v71);
  }

  else
  {
    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    v36 = *(v0 + 344);
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);

    v31 = *(v35 + 8);
    v31(v17, v34);
    v33 = *(v38 + 8);
    v39 = sub_22C36ECB4();
    (v33)(v39);
  }

  *(v0 + 400) = v33;
  *(v0 + 408) = v31;
  v41 = *(v0 + 232);
  v40 = *(v0 + 240);
  v42 = *(v0 + 208);
  v43 = *(v0 + 216);
  v44 = *(v0 + 200);
  sub_22C90369C();
  sub_22C90369C();
  sub_22C90635C();
  sub_22C90631C();
  v45 = *(v43 + 8);
  *(v0 + 416) = v45;
  *(v0 + 424) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v41, v42);
  v46 = sub_22C90635C();
  v47 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v48 = *(v0 + 200);
    v49 = sub_22C36D240();
    *v49 = 0;
    v50 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v46, v47, v50, "PlannerHTTPAPISession.data", "", v49, 2u);
    sub_22C36D69C();
  }

  v75 = *(v0 + 240);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v53 = *(v0 + 192);
  v54 = *(v0 + 168);
  v55 = *(v0 + 176);
  v56 = *(v0 + 96);

  (*(v55 + 16))(v53, v52, v54);
  v57 = sub_22C9063AC();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *(v0 + 432) = sub_22C90639C();
  v60 = *(v55 + 8);
  *(v0 + 440) = v60;
  *(v0 + 448) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v52, v54);
  v45(v75, v51);
  v62 = *(v56 + 16);
  v61 = *(v56 + 24);
  ObjectType = swift_getObjectType();
  v64 = *(v61 + 8);
  v76 = (v64 + *v64);
  v65 = v64[1];
  v66 = swift_task_alloc();
  *(v0 + 456) = v66;
  *v66 = v0;
  v66[1] = sub_22C5CDED4;
  v67 = *(v0 + 392);

  return v76(v67, ObjectType, v61);
}

uint64_t sub_22C5CDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 456);
  v9 = *v4;
  v5[58] = a1;
  v5[59] = a2;
  v5[60] = a3;
  v5[61] = v3;

  if (v3)
  {
    v7 = sub_22C5CF090;
  }

  else
  {
    v7 = sub_22C5CDFEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C5CDFEC()
{
  v282 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  sub_22C90369C();
  v4 = sub_22C90635C();
  sub_22C90638C();
  v5 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 432);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);

    sub_22C9063BC();

    v10 = *(v8 + 88);
    v11 = sub_22C36ECB4();
    if (v12(v11) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      v13 = "";
    }

    v14 = *(v0 + 184);
    v15 = sub_22C36D240();
    *v15 = 0;
    v16 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v16, "PlannerHTTPAPISession.data", v13, v15, 2u);
    sub_22C3699EC();
  }

  v17 = *(v0 + 480);
  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = v4;
  v21 = *(v0 + 416);
  v22 = *(v0 + 424);
  v23 = *(v0 + 224);
  v24 = *(v0 + 208);
  v25 = *(v0 + 184);
  v26 = *(v0 + 168);

  v19(v25, v26);
  v21(v23, v24);
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = v27;
  v29 = *(v0 + 336);
  v30 = *(v0 + 480);
  sub_22C90403C();
  v31 = v30;
  v32 = sub_22C9063CC();
  v33 = sub_22C90AACC();
  if (sub_22C37026C(v33))
  {
    v34 = *(v0 + 480);
    v35 = sub_22C36FB44();
    *v35 = 134217984;
    *(v35 + 4) = sub_22C386118();

    sub_22C372114();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    sub_22C36D69C();
  }

  else
  {

    v32 = *(v0 + 480);
  }

  v41 = *(v0 + 400);
  v42 = *(v0 + 336);
  v43 = *(v0 + 272);
  v44 = *(v0 + 280);

  v41(v42, v43);
  v45 = sub_22C386118();
  if (v45 != 302)
  {
    if (v45 == 429)
    {
      v66 = *(v0 + 320);
      sub_22C90403C();
      v67 = sub_22C9063CC();
      v68 = sub_22C90AADC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = sub_22C36D240();
        *v69 = 0;
        _os_log_impl(&dword_22C366000, v67, v68, "Rate limited!", v69, 2u);
        sub_22C3699EC();
      }

      v70 = *(v0 + 472);
      v71 = *(v0 + 480);
      v72 = *(v0 + 464);
      v73 = *(v0 + 432);
      v74 = *(v0 + 400);
      v264 = *(v0 + 392);
      log = *(v0 + 408);
      v75 = *(v0 + 376);
      v258 = *(v0 + 368);
      v76 = *(v0 + 320);
      v77 = *(v0 + 272);

      v74(v76, v77);
      sub_22C3F9618();
      sub_22C36FBE4();
      *v78 = xmmword_22C911490;
      swift_willThrow();
      sub_22C38B120(v72, v70);

      goto LABEL_20;
    }

    if (v45 != 401)
    {
      if (v45 >= 300)
      {
        v170 = *(v0 + 464);
        v171 = *(v0 + 472);
        v172 = *(v0 + 96);
        sub_22C5CF7D8(&v278);
        v173 = v280;
        v174 = *(v0 + 480);
        if (v280)
        {
          logc = v279;
          v175 = *(v0 + 312);
          sub_22C90403C();
          v176 = v174;

          v177 = sub_22C9063CC();
          v178 = sub_22C90AADC();

          v179 = os_log_type_enabled(v177, v178);
          v180 = *(v0 + 480);
          v181 = *(v0 + 400);
          v262 = *(v0 + 312);
          v182 = *(v0 + 272);
          if (v179)
          {
            v183 = swift_slowAlloc();
            v255 = v181;
            v184 = sub_22C370060();
            v281[0] = v184;
            *v183 = 134218242;
            *(v183 + 4) = [v28 0x1FAA064F8];

            *(v183 + 12) = 2080;
            sub_22C3767A4();
            sub_22C90AF5C();

            sub_22C38A9B4();
            *(v0 + 40) = v185;
            v186 = sub_22C90B47C();
            MEMORY[0x2318B7850](v186);

            v187 = sub_22C3872B8();
            MEMORY[0x2318B7850](v187, 0xE90000000000003ALL);
            MEMORY[0x2318B7850](logc, v173);
            v188 = sub_22C36F9F4(v278, v279, v281);

            *(v183 + 14) = v188;
            _os_log_impl(&dword_22C366000, v177, v178, "Unhandled HTTP status: %ld error response: %s", v183, 0x16u);
            sub_22C36FF94(v184);
            v189 = &off_278729000;
            sub_22C3699EC();
            sub_22C3699EC();

            v255(v262, v182);
          }

          else
          {

            v181(v262, v182);
            v189 = 0x1FAA06000;
          }

          v201 = *(v0 + 480);
          v202 = *(v0 + 464);
          v236 = *(v0 + 472);
          v240 = *(v0 + 432);
          v256 = *(v0 + 392);
          v263 = *(v0 + 408);
          v244 = *(v0 + 376);
          v249 = *(v0 + 368);
          v278 = 0;
          v279 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C3819C0();
          v281[0] = 0xD000000000000017;
          v281[1] = v203;
          *(v0 + 24) = [v28 v189[396]];
          v204 = sub_22C90B47C();
          MEMORY[0x2318B7850](v204);

          MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C9303B0);
          v278 = 0;
          v279 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C38A9B4();
          *(v0 + 32) = v205;
          v206 = sub_22C90B47C();
          MEMORY[0x2318B7850](v206);

          v207 = sub_22C3872B8();
          MEMORY[0x2318B7850](v207, 0xE90000000000003ALL);
          MEMORY[0x2318B7850](logc, v173);

          MEMORY[0x2318B7850](v278, v279);

          sub_22C3F9618();
          v208 = sub_22C36FBE4();
          sub_22C37998C(v208, v209);
          sub_22C38B120(v202, v236);

          v263(v256, v249);
          goto LABEL_37;
        }

        v190 = *(v0 + 304);
        sub_22C90403C();
        v191 = v174;
        v192 = sub_22C9063CC();
        v193 = sub_22C90AADC();
        if (sub_22C37026C(v193))
        {
          v194 = *(v0 + 480);
          v195 = sub_22C36FB44();
          *v195 = 134217984;
          *(v195 + 4) = sub_22C386118();

          sub_22C372114();
          _os_log_impl(v196, v197, v198, v199, v200, 0xCu);
          sub_22C36D69C();
          v54 = *(v0 + 480);
        }

        else
        {

          v54 = *(v0 + 480);
          v192 = v54;
        }

        v210 = *(v0 + 464);
        v245 = *(v0 + 472);
        v250 = *(v0 + 432);
        v211 = *(v0 + 400);
        v264 = *(v0 + 392);
        log = *(v0 + 408);
        v257 = *(v0 + 376);
        v258 = *(v0 + 368);
        v212 = *(v0 + 304);
        v213 = *(v0 + 272);

        v211(v212, v213);
        sub_22C3767A4();
        sub_22C90AF5C();

        sub_22C3819C0();
        v278 = 0xD000000000000022;
        v279 = v214;
        *(v0 + 16) = sub_22C386118();
        v215 = sub_22C90B47C();
        MEMORY[0x2318B7850](v215);

        sub_22C3F9618();
        v216 = sub_22C36FBE4();
        sub_22C37998C(v216, v217);
        v64 = v210;
        v65 = v245;
        goto LABEL_16;
      }

LABEL_23:
      v81 = *(v0 + 488);
      v82 = *(v0 + 464);
      v83 = *(v0 + 472);
      v84 = *(v0 + 112);
      v85 = *(v0 + 88);
      v86 = *(v0 + 80);
      v87 = *(v0 + 56);
      v88 = *(*(v0 + 96) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder);
      swift_getAssociatedConformanceWitness();
      sub_22C8FFEAC();
      if (!v81)
      {
        v114 = *(v0 + 296);
        v115 = *(v0 + 136);
        v116 = *(v0 + 112);
        v117 = *(v0 + 120);
        v118 = *(v0 + 56);
        sub_22C90403C();
        v119 = *(v117 + 16);
        v119(v115, v118, v116);
        v120 = sub_22C9063CC();
        v233 = sub_22C90AACC();
        logb = v120;
        v121 = os_log_type_enabled(v120, v233);
        v276 = *(v0 + 480);
        v237 = *(v0 + 464);
        v241 = *(v0 + 472);
        v122 = *(v0 + 432);
        v124 = *(v0 + 400);
        v123 = *(v0 + 408);
        v125 = *(v0 + 368);
        v126 = *(v0 + 376);
        v252 = *(v0 + 280);
        v259 = *(v0 + 272);
        v266 = *(v0 + 296);
        v127 = *(v0 + 136);
        if (v121)
        {
          v230 = *(v0 + 408);
          v225 = *(v0 + 400);
          v129 = *(v0 + 120);
          v128 = *(v0 + 128);
          v130 = *(v0 + 112);
          v218 = *(v0 + 80);
          v219 = *(v0 + 88);
          v222 = *(v0 + 392);
          v131 = sub_22C36FB44();
          v220 = v125;
          v132 = sub_22C370060();
          v278 = v132;
          *v131 = 136315138;
          v119(v128, v127, v130);
          v133 = *(v129 + 8);
          v133(v127, v130);
          swift_getAssociatedConformanceWitness();
          v134 = sub_22C90B47C();
          v136 = v135;
          v133(v128, v130);
          v137 = sub_22C36F9F4(v134, v136, &v278);

          *(v131 + 4) = v137;
          _os_log_impl(&dword_22C366000, logb, v233, "Received response from Ajax server: %s", v131, 0xCu);
          sub_22C36FF94(v132);
          sub_22C3699EC();
          sub_22C3699EC();
          sub_22C38B120(v237, v241);

          v225(v266, v259);
          v230(v222, v220);
        }

        else
        {
          (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
          sub_22C38B120(v237, v241);

          v124(v266, v259);
          v159 = sub_22C36BAFC();
          v123(v159);
        }

        v161 = *(v0 + 384);
        v160 = *(v0 + 392);
        v163 = *(v0 + 352);
        v162 = *(v0 + 360);
        v165 = *(v0 + 336);
        v164 = *(v0 + 344);
        v167 = *(v0 + 320);
        v166 = *(v0 + 328);
        v168 = *(v0 + 304);
        v169 = *(v0 + 312);
        v224 = *(v0 + 296);
        v227 = *(v0 + 288);
        v229 = *(v0 + 264);
        v232 = *(v0 + 240);
        v235 = *(v0 + 232);
        v239 = *(v0 + 224);
        v243 = *(v0 + 200);
        v248 = *(v0 + 192);
        v254 = *(v0 + 184);
        v261 = *(v0 + 160);
        v268 = *(v0 + 136);
        loge = *(v0 + 128);
        v277 = *(v0 + 104);

        sub_22C369A24();
        goto LABEL_38;
      }

      v89 = v81;
      v91 = *(v0 + 464);
      v90 = *(v0 + 472);
      v92 = *(v0 + 288);
      v93 = *(v0 + 104);
      sub_22C90A15C();
      v94 = sub_22C90A13C();
      v96 = v95;
      sub_22C3819C0();
      if (v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v98;
      }

      sub_22C90403C();

      v100 = v89;
      v101 = sub_22C9063CC();
      v102 = sub_22C90AADC();

      v103 = os_log_type_enabled(v101, v102);
      v104 = *(v0 + 400);
      v105 = *(v0 + 280);
      v106 = *(v0 + 288);
      v275 = *(v0 + 272);
      if (v103)
      {
        loga = *(v0 + 400);
        if (v96)
        {
          v107 = v94;
        }

        else
        {
          v107 = 0xD000000000000016;
        }

        v108 = swift_slowAlloc();
        v265 = v106;
        v109 = swift_slowAlloc();
        v110 = sub_22C370060();
        v278 = v110;
        *v108 = 136315394;
        v111 = sub_22C36F9F4(v107, v99, &v278);

        *(v108 + 4) = v111;
        *(v108 + 12) = 2112;
        v112 = v89;
        v113 = _swift_stdlib_bridgeErrorToNSError();
        *(v108 + 14) = v113;
        *v109 = v113;
        _os_log_impl(&dword_22C366000, v101, v102, "Error decoding Ajax server response: %s. %@", v108, 0x16u);
        sub_22C36DD28(v109, &qword_27D9BB158, qword_22C910FD0);
        sub_22C3699EC();
        sub_22C36FF94(v110);
        sub_22C3699EC();
        sub_22C3699EC();

        (loga)(v265, v275);
      }

      else
      {

        v104(v106, v275);
      }

      v138 = v89;
      v139 = *(v0 + 472);
      v140 = *(v0 + 480);
      v141 = *(v0 + 464);
      v142 = *(v0 + 432);
      log = *(v0 + 408);
      v143 = *(v0 + 392);
      v145 = *(v0 + 368);
      v144 = *(v0 + 376);
      sub_22C3F9618();
      sub_22C36FBE4();
      *v146 = xmmword_22C9114A0;
      swift_willThrow();
      sub_22C38B120(v141, v139);

      v79 = v143;
      v80 = v145;
      goto LABEL_36;
    }
  }

  v46 = *(v0 + 328);
  sub_22C90403C();
  v47 = sub_22C9063CC();
  v48 = sub_22C90AACC();
  if (sub_22C37026C(v48))
  {
    *sub_22C36D240() = 0;
    sub_22C372114();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    sub_22C36D69C();
  }

  v55 = *(v0 + 472);
  v54 = *(v0 + 480);
  v56 = *(v0 + 464);
  v57 = *(v0 + 400);
  v264 = *(v0 + 392);
  log = *(v0 + 408);
  v246 = *(v0 + 432);
  v251 = *(v0 + 376);
  v258 = *(v0 + 368);
  v58 = *(v0 + 328);
  v59 = *(v0 + 272);

  v57(v58, v59);
  sub_22C3767A4();
  sub_22C90AF5C();

  sub_22C3819C0();
  v278 = 0xD000000000000017;
  v279 = v60;
  *(v0 + 48) = [v28 statusCode];
  v61 = sub_22C90B47C();
  MEMORY[0x2318B7850](v61);

  sub_22C3F9618();
  v62 = sub_22C36FBE4();
  sub_22C37998C(v62, v63);
  v64 = v56;
  v65 = v55;
LABEL_16:
  sub_22C38B120(v64, v65);

LABEL_20:
  v80 = v258;
  v79 = v264;
LABEL_36:
  (log)(v79, v80);
LABEL_37:
  v148 = *(v0 + 384);
  v147 = *(v0 + 392);
  v150 = *(v0 + 352);
  v149 = *(v0 + 360);
  v152 = *(v0 + 336);
  v151 = *(v0 + 344);
  v153 = *(v0 + 320);
  v154 = *(v0 + 328);
  v156 = *(v0 + 304);
  v155 = *(v0 + 312);
  v221 = *(v0 + 296);
  v223 = *(v0 + 288);
  v226 = *(v0 + 264);
  v228 = *(v0 + 240);
  v231 = *(v0 + 232);
  v234 = *(v0 + 224);
  v238 = *(v0 + 200);
  v242 = *(v0 + 192);
  v247 = *(v0 + 184);
  v253 = *(v0 + 160);
  v260 = *(v0 + 136);
  v267 = *(v0 + 128);
  logd = *(v0 + 104);

  sub_22C369A24();
LABEL_38:

  return v157();
}

uint64_t sub_22C5CF090()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];

  v2(v3, v4);
  v18 = v0[61];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[44];
  v8 = v0[45];
  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[40];
  v13 = v0[41];
  v15 = v0[38];
  v14 = v0[39];
  sub_22C36BFC0();

  sub_22C369A24();

  return v16();
}

uint64_t PlannerHTTPClient.init(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C8FFE8C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C8FFF1C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_encoder;
  v23 = sub_22C8FFF5C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_22C8FFF4C();
  (*(v16 + 104))(v21, *MEMORY[0x277CC8748], v13);
  sub_22C8FFF2C();
  *(v2 + v22) = v26;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder;
  v28 = sub_22C8FFECC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_22C8FFEBC();
  (*(v7 + 104))(v12, *MEMORY[0x277CC86A8], v4);
  sub_22C8FFE9C();
  *(v2 + v27) = v31;
  *(v2 + 16) = [objc_opt_self() sharedSession];
  *(v2 + 24) = &off_283FBD938;
  v32 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url;
  v33 = sub_22C90046C();
  sub_22C36985C(v33);
  (*(v34 + 32))(v2 + v32, a1);
  return v2;
}

uint64_t sub_22C5CF458@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v31 = a6;
  v32 = a7;
  v28 = a4;
  v27[1] = a3;
  v27[2] = a1;
  v29 = a2;
  v11 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v27 - v13;
  v15 = sub_22C90046C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  sub_22C3F966C(a5, v14);
  v21 = sub_22C370B74(v14, 1, v15);
  v30 = v8;
  if (v21 == 1)
  {
    (*(v16 + 16))(v20, v8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url, v15);
    if (sub_22C370B74(v14, 1, v15) != 1)
    {
      sub_22C36DD28(v14, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
  }

  sub_22C9003BC();
  sub_22C8FFE3C();
  sub_22C8FFE5C();
  v35 = 0x3D6B63616361;
  v36 = 0xE600000000000000;
  swift_getKeyPath();
  sub_22C901F3C();

  MEMORY[0x2318B7850](v33, v34);

  sub_22C8FFE5C();

  if (v28)
  {
    sub_22C8FFE1C();
  }

  v22 = v30;
  sub_22C8FFE2C();
  sub_22C8FFE0C();
  v23 = *(v22 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_encoder);
  v24 = v37;
  sub_22C8FFF3C();
  if (v24)
  {
    v25 = sub_22C8FFE7C();
    (*(*(v25 - 8) + 8))(a8, v25);
  }

  else
  {
    sub_22C8FFE6C();
  }

  return (*(v16 + 8))(v20, v15);
}

double sub_22C5CF7D8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder);
  sub_22C5D43B0();
  sub_22C8FFEAC();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

uint64_t PlannerHTTPClient.ErrorResponse.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_22C90AF5C();

  v4 = sub_22C90B47C();
  MEMORY[0x2318B7850](v4);

  v5 = sub_22C3872B8();
  MEMORY[0x2318B7850](v5, 0xE90000000000003ALL);
  v6 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v6);
  return 0x3A65646F63;
}

uint64_t sub_22C5CFA18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901DFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C5CFAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 110 && a2 == 0xE100000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1349545844 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000022C932B60 == a2;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
            if (v10 || (sub_22C90B4FC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C90B4FC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C5CFD14(char a1)
{
  result = 110;
  switch(a1)
  {
    case 1:
      result = 1349545844;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x65506874676E656CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    case 6:
      result = 0x6E656B6F5478616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5CFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5CFAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5CFE34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C5CFD0C();
  *a1 = result;
  return result;
}

uint64_t sub_22C5CFE5C(uint64_t a1)
{
  v2 = sub_22C5D2DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5CFE98(uint64_t a1)
{
  v2 = sub_22C5D2DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlannerHTTPClient.Options.encode(to:)(void *a1)
{
  v5 = sub_22C3A5908(&qword_27D9BECC8, &qword_22C920668);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = *v1;
  v13 = v1[1];
  v12 = v1[2];
  v15 = v1[3];
  v14 = v1[4];
  v16 = v1[6];
  v23 = v1[5];
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  v21 = v20;
  sub_22C374168(v19, v18);
  sub_22C5D2DC0();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C37A15C();
  sub_22C90B40C();
  if (!v2)
  {
    sub_22C374D28();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C375A0C();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B42C();
    sub_22C37A15C();
    sub_22C90B42C();
  }

  return (*(v7 + 8))(v3, v21);
}

uint64_t PlannerHTTPClient.Options.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x2318B8B10](*v0);
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x2318B8B30](*&v7);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x2318B8B30](*&v8);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x2318B8B30](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x2318B8B30](*&v10);
  MEMORY[0x2318B8B30](v5);
  return MEMORY[0x2318B8B30](v6);
}

uint64_t PlannerHTTPClient.Options.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  sub_22C90B62C();
  PlannerHTTPClient.Options.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.Options.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BECD8, &qword_22C920670);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36A040();
  sub_22C5D2DC0();
  sub_22C90B6BC();
  if (!v2)
  {
    sub_22C5D4408();
    v9 = sub_22C90B31C();
    sub_22C374D28();
    sub_22C5D4408();
    sub_22C90B2FC();
    v11 = v10;
    sub_22C375A0C();
    sub_22C5D4408();
    sub_22C90B2FC();
    v13 = v12;
    sub_22C5D4408();
    sub_22C90B2FC();
    v15 = v14;
    sub_22C5D4408();
    sub_22C90B2FC();
    v17 = v16;
    sub_22C5D4408();
    v19 = sub_22C90B33C();
    sub_22C5D4408();
    v20 = sub_22C90B33C();
    v21 = sub_22C38BBA0();
    v22(v21);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v15;
    a2[4] = v17;
    a2[5] = v19;
    a2[6] = v20;
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C5D0444()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  sub_22C90B62C();
  PlannerHTTPClient.Options.hash(into:)();
  return sub_22C90B66C();
}

uint64_t static PlannerHTTPClient.ErrorResponse.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_22C37FE58();
  }
}

uint64_t sub_22C5D04E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5D05B0(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_22C5D05E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D04E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D0610(uint64_t a1)
{
  v2 = sub_22C5D2E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D064C(uint64_t a1)
{
  v2 = sub_22C5D2E14();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerHTTPClient.ErrorResponse.encode(to:)()
{
  sub_22C370030();
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BECE0, &qword_22C920678);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v12 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5D2E14();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C37A15C();
  sub_22C90B40C();
  if (!v1)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  (*(v7 + 8))(v2, v5);
  sub_22C36FB20();
}

uint64_t PlannerHTTPClient.ErrorResponse.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2318B8B10](*v0);
  sub_22C36BAFC();

  return sub_22C909FFC();
}

uint64_t PlannerHTTPClient.ErrorResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v1);
  sub_22C909FFC();
  return sub_22C90B66C();
}

void PlannerHTTPClient.ErrorResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BECF0, &qword_22C920680);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C383814();
  sub_22C36A040();
  sub_22C5D2E14();
  sub_22C5D444C();
  if (!v0)
  {
    sub_22C3827C0();
    v9 = sub_22C90B31C();
    sub_22C374D28();
    sub_22C3827C0();
    v10 = sub_22C90B2DC();
    v12 = v11;
    v13 = sub_22C370818();
    v14(v13);
    *v4 = v9;
    v4[1] = v10;
    v4[2] = v12;
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t sub_22C5D09E0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_22C90B62C();
  PlannerHTTPClient.ErrorResponse.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.CompletionRequest.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C5D4470();

  return sub_22C3F966C(v1 + v3, a1);
}

uint64_t PlannerHTTPClient.CompletionRequest.baseURL.setter(uint64_t a1)
{
  sub_22C5D4470();

  return sub_22C3F94FC(a1, v1 + v3);
}

BOOL static PlannerHTTPClient.CompletionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90046C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C3717BC();
  v18 = sub_22C3A5908(&qword_27D9BECF8, &qword_22C920688);
  sub_22C36985C(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v24 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v25 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v25 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v43 = *(a1 + 32);
  v26 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v26;
  v46 = *(a1 + 72);
  v39 = *(a2 + 32);
  v40 = *(a2 + 40);
  v41 = *(a2 + 56);
  v42 = *(a2 + 72);
  if (!static PlannerHTTPClient.Options.== infix(_:_:)(&v43, &v39))
  {
    return 0;
  }

  v27 = *(a1 + 96);
  v28 = *(a2 + 96);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *(a1 + 88) == *(a2 + 88) && v27 == v28;
    if (!v29 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v30 = *(type metadata accessor for PlannerHTTPClient.CompletionRequest(0) + 36);
  v31 = *(v18 + 48);
  sub_22C3F966C(a1 + v30, v23);
  sub_22C3F966C(a2 + v30, &v23[v31]);
  sub_22C36D3E0(v23);
  if (v24)
  {
    sub_22C36D3E0(&v23[v31]);
    if (v24)
    {
      sub_22C36DD28(v23, &qword_27D9BB138, &qword_22C90DB70);
      return 1;
    }

    goto LABEL_30;
  }

  sub_22C3F966C(v23, v2);
  sub_22C36D3E0(&v23[v31]);
  if (v32)
  {
    (*(v8 + 8))(v2, v5);
LABEL_30:
    sub_22C36DD28(v23, &qword_27D9BECF8, &qword_22C920688);
    return 0;
  }

  (*(v8 + 32))(v13, &v23[v31], v5);
  sub_22C36ACBC();
  sub_22C5D2E68(v34, v35);
  v36 = sub_22C90A0BC();
  v37 = *(v8 + 8);
  v38 = sub_22C36BA00();
  v37(v38);
  (v37)(v2, v5);
  sub_22C36DD28(v23, &qword_27D9BB138, &qword_22C90DB70);
  return (v36 & 1) != 0;
}

uint64_t sub_22C5D0E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1919251317 && a2 == 0xE400000000000000;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C656C6261736964 && a2 == 0xEE00676E6967676FLL;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4C525565736162 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C90B4FC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C5D103C(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x74706D6F7270;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 1919251317;
      break;
    case 4:
      result = 0x4C656C6261736964;
      break;
    case 5:
      result = 0x4C525565736162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5D10F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D0E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D111C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C5D1034();
  *a1 = result;
  return result;
}

uint64_t sub_22C5D1144(uint64_t a1)
{
  v2 = sub_22C5D2EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D1180(uint64_t a1)
{
  v2 = sub_22C5D2EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlannerHTTPClient.CompletionRequest.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22C3A5908(&qword_27D9BED08, &qword_22C920690);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C3717BC();
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C5D2EB0();
  sub_22C37239C();
  sub_22C90B6CC();
  v13 = *v4;
  v14 = v4[1];
  sub_22C5D4438();
  sub_22C90B3CC();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    sub_22C5D4438();
    sub_22C90B3CC();
    v24 = v4[4];
    v25 = *(v4 + 5);
    v26 = *(v4 + 7);
    v27 = *(v4 + 9);
    sub_22C5D2F04();
    sub_22C90B41C();
    v17 = v4[11];
    v18 = v4[12];
    sub_22C5D4438();
    sub_22C90B37C();
    v19 = *(v4 + 104);
    sub_22C90B3DC();
    v20 = *(type metadata accessor for PlannerHTTPClient.CompletionRequest(0) + 36);
    sub_22C90046C();
    sub_22C36ACBC();
    sub_22C5D2E68(v21, v22);
    sub_22C90B3AC();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t PlannerHTTPClient.CompletionRequest.hash(into:)()
{
  v2 = sub_22C90046C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C383814();
  v15 = *v0;
  v16 = v0[1];
  sub_22C909FFC();
  v17 = v0[2];
  v18 = v0[3];
  sub_22C909FFC();
  v25 = v0[4];
  v26 = *(v0 + 5);
  v27 = *(v0 + 7);
  v28 = *(v0 + 9);
  PlannerHTTPClient.Options.hash(into:)();
  if (v0[12])
  {
    v19 = v0[11];
    sub_22C90B64C();
    sub_22C909FFC();
  }

  else
  {
    sub_22C90B64C();
  }

  v20 = *(v0 + 104);
  sub_22C90B64C();
  sub_22C5D4470();
  sub_22C3F966C(v0 + v21, v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    return sub_22C90B64C();
  }

  (*(v5 + 32))(v10, v1, v2);
  sub_22C90B64C();
  sub_22C36ACBC();
  sub_22C5D2E68(v23, v24);
  sub_22C909F8C();
  return (*(v5 + 8))(v10, v2);
}

uint64_t PlannerHTTPClient.CompletionRequest.hashValue.getter()
{
  sub_22C37B5C8();
  PlannerHTTPClient.CompletionRequest.hash(into:)();
  return sub_22C90B66C();
}

void PlannerHTTPClient.CompletionRequest.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v40[0] = v3;
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = v40 - v8;
  v10 = sub_22C3A5908(&qword_27D9BED30, &qword_22C920698);
  v11 = sub_22C369824(v10);
  v40[1] = v12;
  v41 = v11;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C3717BC();
  v16 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v22 = v21 - v20;
  v24 = *(v23 + 44);
  v25 = sub_22C90046C();
  v43 = v24;
  v26 = v22;
  sub_22C36C640(v22 + v24, 1, 1, v25);
  v27 = v2[3];
  v28 = v2[4];
  v42 = v2;
  v29 = sub_22C36ECB4();
  sub_22C374168(v29, v30);
  sub_22C5D2EB0();
  sub_22C37239C();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v42);

    sub_22C36DD28(v26 + v43, &qword_27D9BB138, &qword_22C90DB70);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_22C37A15C();
    *v26 = sub_22C90B2DC();
    *(v26 + 8) = v31;
    LOBYTE(v44) = 1;
    *(v26 + 16) = sub_22C90B2DC();
    *(v26 + 24) = v32;
    sub_22C5D2F58();
    sub_22C37B320();
    sub_22C90B32C();
    *(v26 + 32) = v44;
    v33 = v46;
    *(v26 + 40) = v45;
    *(v26 + 56) = v33;
    *(v26 + 72) = v47;
    LOBYTE(v44) = 3;
    sub_22C37B320();
    *(v26 + 88) = sub_22C90B26C();
    *(v26 + 96) = v34;
    LOBYTE(v44) = 4;
    sub_22C37B320();
    *(v26 + 104) = sub_22C90B2EC() & 1;
    LOBYTE(v44) = 5;
    sub_22C36ACBC();
    sub_22C5D2E68(v35, v36);
    v37 = v41;
    sub_22C37B320();
    sub_22C90B2BC();
    v38 = sub_22C37F8B8();
    v39(v38, v37);
    sub_22C3F94FC(v9, v26 + v43);
    sub_22C5D2FAC(v26, v40[0]);
    sub_22C36FF94(v42);
    sub_22C5D3010(v26);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5D1A94()
{
  sub_22C90B62C();
  PlannerHTTPClient.CompletionRequest.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.CompletionResponse.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t PlannerHTTPClient.CompletionResponse.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlannerHTTPClient.CompletionResponse.completions.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t PlannerHTTPClient.CompletionResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22C90AF5C();

  MEMORY[0x2318B7850](v1, v2);
  MEMORY[0x2318B7850](0x3A6C65646F6D20, 0xE700000000000000);
  v6 = sub_22C36ECB4();
  MEMORY[0x2318B7850](v6);
  MEMORY[0x2318B7850](0x74656C706D6F6320, 0xED00003A736E6F69);
  v7 = MEMORY[0x2318B7AD0](v5, &type metadata for Completion);
  MEMORY[0x2318B7850](v7);

  return 3826793;
}

uint64_t static PlannerHTTPClient.CompletionResponse.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22C36BA00();

  return sub_22C46CDD8(v10, v11);
}

uint64_t sub_22C5D1D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974656C706D6F63 && a2 == 0xEB00000000736E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5D1E60(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C65646F6DLL;
  }

  return 0x6974656C706D6F63;
}

uint64_t sub_22C5D1EB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5D1F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D1D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D1F2C(uint64_t a1)
{
  v2 = sub_22C5D306C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D1F68(uint64_t a1)
{
  v2 = sub_22C5D306C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerHTTPClient.CompletionResponse.encode(to:)()
{
  sub_22C370030();
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BED48, &qword_22C9206A0);
  sub_22C369824(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v13 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5D306C();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C375A0C();
    sub_22C3A5908(&qword_27D9BED58, &qword_22C9206A8);
    sub_22C5D3114(&qword_27D9BED60, sub_22C5D30C0);
    sub_22C37A15C();
    sub_22C90B41C();
  }

  (*(v7 + 8))(v2, v5);
  sub_22C36FB20();
}

void PlannerHTTPClient.CompletionResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22C909FFC();
  sub_22C36BAFC();
  sub_22C909FFC();
  v6 = sub_22C36BA00();

  sub_22C4710DC(v6, v7);
}

uint64_t PlannerHTTPClient.CompletionResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22C37B5C8();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C4710DC(v7, v5);
  return sub_22C90B66C();
}

void PlannerHTTPClient.CompletionResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BED70, &qword_22C9206B0);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36A040();
  sub_22C5D306C();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    v9 = sub_22C90B2DC();
    v16 = v10;
    sub_22C374D28();
    v14 = sub_22C90B2DC();
    v15 = v11;
    sub_22C3A5908(&qword_27D9BED58, &qword_22C9206A8);
    sub_22C375A0C();
    sub_22C5D3114(&qword_27D9BED78, sub_22C5D318C);
    sub_22C90B32C();
    v12 = sub_22C38BBA0();
    v13(v12);
    *v4 = v9;
    v4[1] = v16;
    v4[2] = v14;
    v4[3] = v15;
    v4[4] = v17;

    sub_22C36FF94(v2);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5D24F4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22C90B62C();
  PlannerHTTPClient.CompletionResponse.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url;
  v3 = sub_22C90046C();
  sub_22C36985C(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_encoder);

  v6 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder);

  return v0;
}

uint64_t PlannerHTTPClient.__deallocating_deinit()
{
  PlannerHTTPClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Completion.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t Completion.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Completion.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22C37FE58();
  }
}

uint64_t sub_22C5D26DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5D2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D26DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5D2794(uint64_t a1)
{
  v2 = sub_22C5D31E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D27D0(uint64_t a1)
{
  v2 = sub_22C5D31E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Completion.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BED88, &qword_22C9206B8);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C383814();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C5D31E0();
  sub_22C90B6CC();
  sub_22C90B3CC();
  (*(v6 + 8))(v1, v4);
  sub_22C36FB20();
}

uint64_t Completion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C909FFC();
}

uint64_t Completion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C37B5C8();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void Completion.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BED98, &qword_22C9206C0);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C383814();
  sub_22C36A040();
  sub_22C5D31E0();
  sub_22C5D444C();
  if (!v0)
  {
    sub_22C3827C0();
    v9 = sub_22C90B2DC();
    v11 = v10;
    v12 = sub_22C370818();
    v13(v12);
    *v4 = v9;
    v4[1] = v11;
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

unint64_t sub_22C5D2AB8(uint64_t a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D2AC4(uint64_t a1)
{
  v2 = sub_22C5D435C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5D2B00(uint64_t a1)
{
  v2 = sub_22C5D435C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5D2B60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C5D4404;

  return (sub_22C5D2C0C)(a1);
}

uint64_t sub_22C5D2C0C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CC9D18] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C5D2CA8;

  return MEMORY[0x28211ECF8](a1, 0);
}

uint64_t sub_22C5D2CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

unint64_t sub_22C5D2DC0()
{
  result = qword_27D9BECD0;
  if (!qword_27D9BECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BECD0);
  }

  return result;
}

unint64_t sub_22C5D2E14()
{
  result = qword_27D9BECE8;
  if (!qword_27D9BECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BECE8);
  }

  return result;
}

uint64_t sub_22C5D2E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C5D2EB0()
{
  result = qword_27D9BED10;
  if (!qword_27D9BED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED10);
  }

  return result;
}

unint64_t sub_22C5D2F04()
{
  result = qword_27D9BED18;
  if (!qword_27D9BED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED18);
  }

  return result;
}

unint64_t sub_22C5D2F58()
{
  result = qword_27D9BED38;
  if (!qword_27D9BED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED38);
  }

  return result;
}

uint64_t sub_22C5D2FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5D3010(uint64_t a1)
{
  v2 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5D306C()
{
  result = qword_27D9BED50;
  if (!qword_27D9BED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED50);
  }

  return result;
}

unint64_t sub_22C5D30C0()
{
  result = qword_27D9BED68;
  if (!qword_27D9BED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED68);
  }

  return result;
}

uint64_t sub_22C5D3114(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BED58, &qword_22C9206A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5D318C()
{
  result = qword_27D9BED80;
  if (!qword_27D9BED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED80);
  }

  return result;
}

unint64_t sub_22C5D31E0()
{
  result = qword_27D9BED90;
  if (!qword_27D9BED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED90);
  }

  return result;
}

unint64_t sub_22C5D3238()
{
  result = qword_27D9BEDA0;
  if (!qword_27D9BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDA0);
  }

  return result;
}

unint64_t sub_22C5D3290()
{
  result = qword_27D9BEDA8;
  if (!qword_27D9BEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDA8);
  }

  return result;
}

unint64_t sub_22C5D32F4()
{
  result = qword_27D9BEDB0;
  if (!qword_27D9BEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDB0);
  }

  return result;
}

unint64_t sub_22C5D3350()
{
  result = qword_27D9BEDB8;
  if (!qword_27D9BEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDB8);
  }

  return result;
}

uint64_t sub_22C5D33A4(uint64_t a1)
{
  *(a1 + 8) = sub_22C5D2E68(&qword_27D9BEDC0, type metadata accessor for PlannerHTTPClient.CompletionRequest);
  result = sub_22C5D2E68(&qword_27D9BBCE0, type metadata accessor for PlannerHTTPClient.CompletionRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22C5D3474()
{
  result = qword_27D9BEDD0;
  if (!qword_27D9BEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDD0);
  }

  return result;
}

unint64_t sub_22C5D34CC()
{
  result = qword_27D9BEDD8;
  if (!qword_27D9BEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDD8);
  }

  return result;
}

uint64_t sub_22C5D3548()
{
  result = sub_22C90046C();
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

uint64_t sub_22C5D3620(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D3640(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_22C5D3688(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22C5D36C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C5D3740()
{
  sub_22C436620();
  if (v0 <= 0x3F)
  {
    sub_22C5D37EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C5D37EC()
{
  if (!qword_281435840)
  {
    sub_22C90046C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281435840);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Completion.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.CompletionResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.CompletionRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.ErrorResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlannerHTTPClient.Options.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.Options.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C5D3D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C5D3D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D3DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_22C5D3E38()
{
  result = qword_27D9BEE00;
  if (!qword_27D9BEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE00);
  }

  return result;
}

unint64_t sub_22C5D3E90()
{
  result = qword_27D9BEE08;
  if (!qword_27D9BEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE08);
  }

  return result;
}

unint64_t sub_22C5D3EE8()
{
  result = qword_27D9BEE10;
  if (!qword_27D9BEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE10);
  }

  return result;
}

unint64_t sub_22C5D3F40()
{
  result = qword_27D9BEE18;
  if (!qword_27D9BEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE18);
  }

  return result;
}

unint64_t sub_22C5D3F98()
{
  result = qword_27D9BEE20;
  if (!qword_27D9BEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE20);
  }

  return result;
}

unint64_t sub_22C5D3FF0()
{
  result = qword_27D9BEE28;
  if (!qword_27D9BEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE28);
  }

  return result;
}

unint64_t sub_22C5D4048()
{
  result = qword_27D9BEE30;
  if (!qword_27D9BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE30);
  }

  return result;
}

unint64_t sub_22C5D40A0()
{
  result = qword_27D9BEE38;
  if (!qword_27D9BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE38);
  }

  return result;
}

unint64_t sub_22C5D40F8()
{
  result = qword_27D9BEE40;
  if (!qword_27D9BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE40);
  }

  return result;
}

unint64_t sub_22C5D4150()
{
  result = qword_27D9BEE48;
  if (!qword_27D9BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE48);
  }

  return result;
}

unint64_t sub_22C5D41A8()
{
  result = qword_27D9BEE50;
  if (!qword_27D9BEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE50);
  }

  return result;
}

unint64_t sub_22C5D4200()
{
  result = qword_27D9BEE58;
  if (!qword_27D9BEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE58);
  }

  return result;
}

unint64_t sub_22C5D4258()
{
  result = qword_27D9BEE60;
  if (!qword_27D9BEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE60);
  }

  return result;
}

unint64_t sub_22C5D42B0()
{
  result = qword_27D9BEE68;
  if (!qword_27D9BEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE68);
  }

  return result;
}

unint64_t sub_22C5D4308()
{
  result = qword_27D9BEE70;
  if (!qword_27D9BEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE70);
  }

  return result;
}

unint64_t sub_22C5D435C()
{
  result = qword_27D9BEE78;
  if (!qword_27D9BEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE78);
  }

  return result;
}

unint64_t sub_22C5D43B0()
{
  result = qword_27D9BEE80;
  if (!qword_27D9BEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE80);
  }

  return result;
}

uint64_t sub_22C5D444C()
{

  return sub_22C90B6BC();
}

uint64_t sub_22C5D4470()
{
  result = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  v1 = *(result + 36);
  return result;
}

uint64_t sub_22C5D448C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v3 = sub_22C3699B8(v2);
  v75 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v63 - v7;
  v79 = sub_22C901FAC();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698E4();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v63 - v12;
  v77 = sub_22C3A5908(&qword_27D9BEEE8, &unk_22C921510);
  v13 = sub_22C36985C(v77);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v76 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v74 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v73 = &v63 - v20;
  v22 = a1 + 64;
  v21 = *(a1 + 64);
  v78 = MEMORY[0x277D84F98];
  v81 = MEMORY[0x277D84F98];
  v23 = 1 << *(a1 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v64 = v8;
  v27 = (v8 + 32);
  v28 = a1;
  v68 = v27;

  v30 = 0;
  v72 = a1;
  v69 = v26;
  for (i = a1 + 64; v25; v26 = v69)
  {
LABEL_9:
    v32 = __clz(__rbit64(v25)) | (v30 << 6);
    v33 = (*(v28 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v28 + 56) + *(v75 + 72) * v32;
    v37 = v77;
    v38 = v73;
    sub_22C3DB138(v36, &v73[*(v77 + 48)], &qword_27D9BC030, &unk_22C911CC0);
    *v38 = v34;
    v38[1] = v35;
    v39 = v74;
    sub_22C3DB08C(v38, v74, &qword_27D9BEEE8, &unk_22C921510);
    sub_22C3DB138(v39 + *(v37 + 48), v80, &qword_27D9BC030, &unk_22C911CC0);
    v40 = sub_22C36CCF8();
    if (sub_22C370B74(v40, v41, v79) == 1)
    {

      sub_22C36DD28(v39, &qword_27D9BEEE8, &unk_22C921510);
      v42 = v80;
      v22 = i;
      v28 = v72;
    }

    else
    {
      v67 = v35;
      v43 = *v68;
      v44 = v39;
      v45 = v65;
      v46 = v79;
      (*v68)(v65, v80, v79);
      sub_22C3DB08C(v44, v76, &qword_27D9BEEE8, &unk_22C921510);
      v66 = v43;
      v43(v71, v45, v46);
      if (v78[3] <= v78[2])
      {

        sub_22C88F120();
      }

      else
      {
      }

      v47 = v81;
      v48 = *v76;
      v49 = v76[1];
      v50 = *(v81 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v51 = v47 + 64;
      v78 = v47;
      v52 = -1 << *(v47 + 32);
      v53 = result & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v47 + 64 + 8 * (v53 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v52) >> 6;
        while (++v54 != v57 || (v56 & 1) == 0)
        {
          v58 = v54 == v57;
          if (v54 == v57)
          {
            v54 = 0;
          }

          v56 |= v58;
          v59 = *(v51 + 8 * v54);
          if (v59 != -1)
          {
            v55 = __clz(__rbit64(~v59)) + (v54 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v55 = __clz(__rbit64((-1 << v53) & ~*(v47 + 64 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      v42 = v76 + *(v77 + 48);
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v61 = v78;
      v60 = v79;
      v62 = (v78[6] + 16 * v55);
      *v62 = v48;
      v62[1] = v49;
      v66((v61[7] + *(v64 + 72) * v55), v71, v60);
      ++v61[2];
      v28 = v72;
      v22 = i;
    }

    v25 &= v25 - 1;
    result = sub_22C36DD28(v42, &qword_27D9BC030, &unk_22C911CC0);
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v26)
    {

      return v78;
    }

    v25 = *(v22 + 8 * v31);
    ++v30;
    if (v25)
    {
      v30 = v31;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t PrescribedPlanGenerator.init(prescribedPlan:contextRetrieval:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C907BAC();
  sub_22C36985C(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for PrescribedPlanGenerator() + 20);

  return sub_22C36C730(a2, v8);
}

uint64_t type metadata accessor for PrescribedPlanGenerator()
{
  result = qword_281432CA8;
  if (!qword_281432CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrescribedPlanGenerator.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90880C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = *(*(sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = sub_22C90069C();
  v1[19] = v10;
  sub_22C3699B8(v10);
  v1[20] = v11;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5D4CEC, 0, 0);
}

uint64_t sub_22C5D4CEC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[3];
  v4 = type metadata accessor for PlannerServiceContext();
  sub_22C3DB138(v3 + *(v4 + 20), v1, &qword_27D9BB190, qword_22C90DD90);
  v5 = sub_22C36CCF8();
  if (sub_22C370B74(v5, v6, v2) == 1)
  {
    sub_22C36DD28(v0[18], &qword_27D9BB190, qword_22C90DD90);
    sub_22C5D55D4();
    sub_22C36FBE4();
    *v7 = 2;
    swift_willThrow();
    sub_22C5DA010();
    v8 = v0[10];
    v40 = v0[9];
    v41 = v0[8];
    v42 = v0[7];

    v9 = v0[1];
    sub_22C36EC40();

    __asm { BRAA            X1, X16 }
  }

  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[2];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  sub_22C90878C();
  v17 = sub_22C9087DC();
  v18 = *(v15 + 8);
  v0[22] = v18;
  v0[23] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  sub_22C3A5950(v17);

  v19 = sub_22C908A0C();
  v0[24] = v19;
  sub_22C369A54(v12);
  if (v20)
  {
    v21 = v0[19];
    v22 = v0[17];
    sub_22C36DD28(v0[13], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v23, v24, v25, v21);
  }

  else
  {
    v26 = v0[17];
    v27 = v0[13];
    sub_22C9088DC();
    sub_22C36BBA8(v19);
    v29 = *(v28 + 8);
    v30 = sub_22C36BBCC();
    v31(v30);
  }

  v32 = v0[17];
  sub_22C59F100(v0[21], v32);
  sub_22C36DD28(v32, &qword_27D9BB190, qword_22C90DD90);
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_22C5D4FEC;
  v34 = v0[3];
  v35 = v0[4];
  v36 = v0[2];
  sub_22C36EC40();

  return sub_22C5D5628(v37);
}

uint64_t sub_22C5D4FEC()
{
  sub_22C369980();
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  if (v0)
  {
    v5 = sub_22C5D53D4;
  }

  else
  {
    v5 = sub_22C5D50FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C5D50FC()
{
  v1 = v0[24];
  v2 = v0[12];
  sub_22C3A5950(v0[26]);
  v3 = sub_22C36CCF8();
  if (sub_22C370B74(v3, v4, v1) == 1)
  {
    sub_22C36DD28(v0[12], &qword_27D9BA808, &qword_22C90C6E0);
    v5 = 1;
  }

  else
  {
    v6 = v0[24];
    v7 = v0[16];
    v8 = v0[12];
    sub_22C9087FC();
    sub_22C36BBA8(v6);
    v10 = *(v9 + 8);
    v11 = sub_22C36BBCC();
    v12(v11);
    v5 = 0;
  }

  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[2];
  sub_22C36C640(v0[16], v5, 1, v0[19]);
  sub_22C90878C();
  v20 = sub_22C9087DC();
  v15(v17, v18);
  sub_22C3A5950(v20);

  v21 = sub_22C370B74(v16, 1, v13);
  v22 = v0[15];
  v23 = v0[11];
  if (v21 == 1)
  {
    v24 = v0[19];
    sub_22C36DD28(v0[11], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v25, v26, v27, v24);
  }

  else
  {
    v28 = v0[24];
    v29 = v0[15];
    sub_22C9088DC();
    sub_22C36BBA8(v28);
    (*(v30 + 8))(v23, v28);
  }

  v31 = v0[20];
  v32 = v0[21];
  v33 = v0[18];
  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[15];
  v40 = v0[14];
  v41 = v0[13];
  v42 = v0[12];
  v43 = v0[11];
  v44 = v0[10];
  v45 = v0[9];
  v46 = v0[8];
  v47 = v0[7];
  sub_22C59F298(v35, v32, v36);
  sub_22C36DD28(v36, &qword_27D9BB190, qword_22C90DD90);
  sub_22C36DD28(v35, &qword_27D9BB190, qword_22C90DD90);
  (*(v31 + 8))(v32, v34);

  v37 = v0[1];
  v38 = v0[26];

  return v37(v38);
}

void sub_22C5D53D4()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  sub_22C90878C();
  v8 = sub_22C9087DC();
  v3(v5, v6);
  sub_22C3A5950(v8);

  sub_22C369A54(v4);
  if (v9)
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 112);
    sub_22C36DD28(*(v0 + 80), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v12, v13, v14, v10);
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    sub_22C9088DC();
    sub_22C36BBA8(v15);
    v19 = *(v18 + 8);
    v20 = sub_22C36BBCC();
    v21(v20);
  }

  v22 = *(v0 + 160);
  v23 = *(v0 + 152);
  v24 = *(v0 + 112);
  sub_22C59F714(*(v0 + 216), *(v0 + 168), v24);
  sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
  swift_willThrow();
  v25 = *(v22 + 8);
  v26 = sub_22C36BBCC();
  v27(v26);
  v28 = *(v0 + 216);
  sub_22C5DA010();
  v29 = *(v0 + 80);
  v33 = *(v0 + 72);
  v34 = *(v0 + 64);
  v35 = *(v0 + 56);

  v30 = *(v0 + 8);
  sub_22C36EC40();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_22C5D55D4()
{
  result = qword_27D9BEE88;
  if (!qword_27D9BEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE88);
  }

  return result;
}

uint64_t sub_22C5D5628(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22C9089DC();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_22C908A0C();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v10 = *(*(sub_22C902D3C() - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v11 = sub_22C90888C();
  v2[24] = v11;
  v12 = *(v11 - 8);
  v2[25] = v12;
  v13 = *(v12 + 64) + 15;
  v2[26] = swift_task_alloc();
  v14 = sub_22C9088CC();
  v2[27] = v14;
  v15 = *(v14 - 8);
  v2[28] = v15;
  v16 = *(v15 + 64) + 15;
  v2[29] = swift_task_alloc();
  v17 = sub_22C907B2C();
  v2[30] = v17;
  v18 = *(v17 - 8);
  v2[31] = v18;
  v19 = *(v18 + 64) + 15;
  v2[32] = swift_task_alloc();
  v20 = sub_22C907AEC();
  v2[33] = v20;
  v21 = *(v20 - 8);
  v2[34] = v21;
  v22 = *(v21 + 64) + 15;
  v2[35] = swift_task_alloc();
  v23 = sub_22C907AAC();
  v2[36] = v23;
  v24 = *(v23 - 8);
  v2[37] = v24;
  v25 = *(v24 + 64) + 15;
  v2[38] = swift_task_alloc();
  v26 = *(*(sub_22C90769C() - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v27 = sub_22C907B9C();
  v2[43] = v27;
  v28 = *(v27 - 8);
  v2[44] = v28;
  v29 = *(v28 + 64) + 15;
  v2[45] = swift_task_alloc();
  v30 = *(*(sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v31 = sub_22C90880C();
  v2[47] = v31;
  v32 = *(v31 - 8);
  v2[48] = v32;
  v33 = *(v32 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v34 = *(*(sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v35 = sub_22C3A5908(&qword_27D9BEEB0, &unk_22C9214D8);
  v2[52] = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v37 = sub_22C907A1C();
  v2[54] = v37;
  v38 = *(v37 - 8);
  v2[55] = v38;
  v39 = *(v38 + 64) + 15;
  v2[56] = swift_task_alloc();
  v40 = sub_22C9070DC();
  v2[57] = v40;
  v41 = *(v40 - 8);
  v2[58] = v41;
  v42 = *(v41 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v43 = *(sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40) - 8);
  v2[74] = v43;
  v44 = *(v43 + 64) + 15;
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v45 = sub_22C907B5C();
  v2[97] = v45;
  v46 = *(v45 - 8);
  v2[98] = v46;
  v47 = *(v46 + 64) + 15;
  v2[99] = swift_task_alloc();
  v48 = *(*(sub_22C90700C() - 8) + 64) + 15;
  v2[100] = swift_task_alloc();
  v49 = sub_22C90654C();
  v2[101] = v49;
  v50 = *(v49 - 8);
  v2[102] = v50;
  v51 = *(v50 + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v52 = sub_22C901FAC();
  v2[108] = v52;
  v53 = *(v52 - 8);
  v2[109] = v53;
  v54 = *(v53 + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v55 = sub_22C907A5C();
  v2[119] = v55;
  v56 = *(v55 - 8);
  v2[120] = v56;
  v57 = *(v56 + 64) + 15;
  v2[121] = swift_task_alloc();
  v58 = sub_22C907BAC();
  v2[122] = v58;
  v59 = *(v58 - 8);
  v2[123] = v59;
  v60 = *(v59 + 64) + 15;
  v2[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5D6094, 0, 0);
}

uint64_t sub_22C5D6094()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  (*(v1 + 16))(*(v0 + 992), *(v0 + 104), v2);
  v3 = *(v1 + 88);
  v4 = sub_22C36BBCC();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1E1D0])
  {
    v7 = *(v0 + 992);
    v8 = *(v0 + 968);
    v9 = *(v0 + 960);
    v10 = *(v0 + 952);
    v840 = *(v0 + 944);
    v855 = *(v0 + 856);
    v11 = *(v0 + 816);
    v866 = *(v0 + 808);
    v883 = v10;
    v12 = *(v0 + 464);
    v13 = *(v0 + 96);
    (*(*(v0 + 984) + 96))(v7, *(v0 + 976));
    (*(v9 + 32))(v8, v7, v10);
    sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
    v14 = *(v12 + 72);
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_22C90F800;
    sub_22C9087AC();
    sub_22C386A50();

    sub_22C907A4C();
    MEMORY[0x2318B4F00]();
    sub_22C907A3C();
    sub_22C90722C();
    v16 = (*(v11 + 104))(v855, *MEMORY[0x277D1DAD0], v866);
    MEMORY[0x2318B4570](v16);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C3735F4();
    sub_22C90708C();
    (*(v9 + 8))(v8, v883);
    goto LABEL_28;
  }

  if (v6 == *MEMORY[0x277D1E1F8])
  {
    sub_22C38BBB0();
    v856 = *(v0 + 560);
    v841 = *(v0 + 552);
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    v19 = *(v0 + 344);
    v21 = sub_22C37BB30(v20);
    v22(v21);
    v23 = sub_22C36D8E8();
    v24(v23);
    sub_22C9087AC();
    sub_22C90882C();

    *v2 = sub_22C907ACC();
    v2[1] = v25;
    v26 = *MEMORY[0x277D1DEF8];
    v27 = sub_22C906F2C();
    sub_22C36985C(v27);
    v29 = *(v28 + 104);
    v30 = sub_22C36BA00();
    v29(v30);
    v31 = *MEMORY[0x277D1DAA8];
    v32 = sub_22C370828();
    v33 = v19(v32);
    MEMORY[0x2318B4570](v33);
    MEMORY[0x2318B4580]();
    sub_22C5DA04C();
    sub_22C36ACD4();
    sub_22C5D9F9C();
    sub_22C9087AC();
    sub_22C386A50();

    v35 = MEMORY[0x2318B5040](v34);
    sub_22C375F08(v35);
    v36 = *MEMORY[0x277D1DED8];
    v37 = sub_22C3723A8();
    v29(v37);
    v38 = sub_22C37F37C();
    v39 = v19(v38);
    MEMORY[0x2318B4570](v39);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C5D9EFC();
    sub_22C9065AC();
    if (v40)
    {
      sub_22C3887F0();
      sub_22C375A18(*(v0 + 736));
      sub_22C38C3E4();
      sub_22C90882C();

      *v812 = v31;
      v2[1] = 1;
      v41 = *MEMORY[0x277D1DF00];
      v42 = sub_22C386268();
      v43(v42);
      v44 = sub_22C37F8C4();
      v45(v44);

      MEMORY[0x2318B4570](v46);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C3831F8();
      sub_22C36BECC();
      sub_22C36C640(v47, v48, v49, v882);
    }

    else
    {
      v112 = *(v0 + 736);
      v113 = *(v0 + 456);
      sub_22C36A748();
      sub_22C36C640(v114, v115, v116, v117);
    }

    v118 = *(v0 + 736);
    v829 = *(v0 + 864);
    v844 = *(v0 + 728);
    v119 = *(v0 + 592);
    v120 = *(v0 + 560);
    v796 = *(v0 + 904);
    v121 = *(v0 + 552);
    v122 = *(v0 + 456);
    v123 = *(v0 + 464);
    sub_22C36ED58(*(v0 + 336));
    sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
    v124 = sub_22C377550();
    v125 = sub_22C372A18(v124, xmmword_22C90D070);
    v18(v125);
    sub_22C36BECC();
    sub_22C36C640(v126, v127, v128, v122);
    v129 = sub_22C5D9FDC();
    v18(v129);
    sub_22C36BECC();
    sub_22C5DA0A8(v130, v131, v132);
    sub_22C3DB138(v118, v133, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C9087AC();
    sub_22C37AC70();

    MEMORY[0x2318B4B50](v134);
    sub_22C5D9F78();
    sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
    v135 = sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
    sub_22C3799A8(v135);
    v137 = *(v136 + 72);
    *(sub_22C374D38() + 16) = xmmword_22C90FB40;
    v138 = *(v120 + 56);
    sub_22C5D9EDC();
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C5DA028(v139, v140, v141);
    sub_22C36C000();
    sub_22C5DA068(v142);
    sub_22C36BECC();
    sub_22C36C640(v143, v144, v145, v118);
    v146 = sub_22C371A38();
    sub_22C3DB138(v146, v147, &qword_27D9BAA18, &qword_22C911C40);
    v148 = sub_22C3707B4();
    if (sub_22C370B74(v148, v149, v122) == 1)
    {
      sub_22C36DD28(*(v0 + 728), &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      v150 = *(v0 + 456);
      v151 = *(v0 + 464);
      sub_22C9068FC();
      v152 = *(v151 + 8);
      v153 = sub_22C36BBCC();
      v154(v153);
    }

    v155 = *(v0 + 904);
    v156 = *(v0 + 864);
    v157 = *(v0 + 848);
    sub_22C37FE60();
    v158 = *(v0 + 336);
    sub_22C5D9FEC(v159, v160, v161, v162);
    sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
    v163 = sub_22C909F0C();
    sub_22C5D448C(v163);

    sub_22C36BAFC();
    sub_22C906AAC();
    v164 = *MEMORY[0x277D1DA78];
    v165 = sub_22C370288();
    v167 = v166(v165);
    MEMORY[0x2318B4570](v167);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C3735F4();
    sub_22C37A1B8();
    sub_22C36BECC();
    sub_22C36C640(v168, v169, v170, v844);
    sub_22C381AFC();
    do
    {
      v171 = *(v0 + 720);
      v172 = *(v0 + 712);
      sub_22C3872CC();
      sub_22C3827D0();
      v173 = sub_22C5D9FC0();
      if (v173 == 1)
      {
        sub_22C3816D4(v173, *(v0 + 712));
      }

      else
      {
        v174 = *(v0 + 544);
        sub_22C5DA09C();
        v172();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5D9F54();
        }

        sub_22C36FD88();
        if (v175)
        {
          sub_22C5D9F30();
        }

        v176 = *(v0 + 544);
        v177 = sub_22C36A064();
        (v172)(v177);
      }

      sub_22C3856D0();
    }

    while (!v178);
    v179 = *(v0 + 736);
    v180 = *(v0 + 560);
    v181 = *(v0 + 552);
    v182 = *(v0 + 456);
    v183 = *(v0 + 464);
    v184 = *(v0 + 352);
    v885 = *(v0 + 360);
    v185 = *(v0 + 344);
LABEL_27:
    swift_setDeallocating();
    sub_22C590090();
    sub_22C36DD28(v179, &qword_27D9BAA18, &qword_22C911C40);
    v186 = *(v183 + 8);
    v186(v181, v182);
    v186(v180, v182);
    (*(v184 + 8))(v885, v185);
    goto LABEL_28;
  }

  if (v6 == *MEMORY[0x277D1E1D8])
  {
    v50 = *(v0 + 992);
    v51 = *(v0 + 944);
    v52 = *(v0 + 856);
    v873 = *(v0 + 816);
    v801 = *(v0 + 808);
    v813 = *(v0 + 800);
    v821 = *(v0 + 528);
    v53 = *(v0 + 296);
    v54 = *(v0 + 304);
    v55 = *(v0 + 288);
    v56 = *(v0 + 96);
    v857 = *(v0 + 536);
    (*(*(v0 + 984) + 96))(v50, *(v0 + 976));
    (*(v53 + 32))(v54, v50, v55);
    sub_22C9087AC();
    sub_22C38C3E4();
    sub_22C90882C();

    *v52 = sub_22C907A8C();
    v52[1] = v57;
    v58 = *MEMORY[0x277D1DEF8];
    v59 = sub_22C906F2C();
    sub_22C36985C(v59);
    v61 = *(v60 + 104);
    v62 = sub_22C36BA00();
    v61(v62);
    v884 = *MEMORY[0x277D1DAA8];
    v63 = *(v873 + 104);
    v64 = v63(v52);
    MEMORY[0x2318B4570](v64);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    sub_22C9087AC();
    sub_22C5DA084();

    v66 = MEMORY[0x2318B4F40](v65);
    sub_22C375F08(v66);
    v842 = v61;
    v858 = v59;
    (v61)(v52, *MEMORY[0x277D1DED8], v59);
    v867 = v63;
    v67 = (v63)(v52, v884, v801);
    MEMORY[0x2318B4570](v67);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    v68 = sub_22C907A9C();
    if (v69)
    {
      v70 = v68;
      v71 = v69;
      v72 = *(v0 + 856);
      v73 = *(v0 + 808);
      v802 = *(v0 + 800);
      v807 = *(v0 + 944);
      v814 = *(v0 + 704);
      v821 = *(v0 + 456);
      v74 = *(v0 + 96);
      sub_22C9087AC();
      sub_22C5DA084();

      *v72 = v70;
      v52[1] = v71;
      (v842)(v72, *MEMORY[0x277D1DF00], v59);
      (v867)(v72, v884, v73);

      MEMORY[0x2318B4570](v75);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C90708C();
      sub_22C36BECC();
      sub_22C36C640(v76, v77, v78, v821);
    }

    else
    {
      v265 = *(v0 + 704);
      v266 = *(v0 + 456);
      sub_22C36A748();
      sub_22C36C640(v267, v268, v269, v270);
    }

    v271 = *(v0 + 304);
    v272 = sub_22C907A7C();
    if (v273)
    {
      v274 = v272;
      v275 = v273;
      v276 = *(v0 + 944);
      v277 = *(v0 + 856);
      v278 = *(v0 + 808);
      v279 = *(v0 + 800);
      v280 = *(v0 + 696);
      sub_22C36ED58(*(v0 + 456));
      sub_22C9087AC();
      sub_22C90882C();

      *v277 = v274;
      v52[1] = v275;
      (v842)(v277, *MEMORY[0x277D1DF00], v858);
      (v867)(v277, v884, v278);

      MEMORY[0x2318B4570](v281);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C90708C();
      sub_22C36BECC();
      sub_22C36C640(v282, v283, v284, v821);
    }

    else
    {
      v285 = *(v0 + 696);
      v286 = *(v0 + 456);
      sub_22C36A748();
      sub_22C36C640(v287, v288, v289, v290);
    }

    v291 = *(v0 + 704);
    v817 = v291;
    v824 = *(v0 + 864);
    v795 = *(v0 + 696);
    v799 = *(v0 + 896);
    v292 = *(v0 + 592);
    v293 = *(v0 + 536);
    v294 = *(v0 + 528);
    v295 = *(v0 + 456);
    v296 = *(v0 + 464);
    v832 = *(v0 + 688);
    v848 = *(v0 + 328);
    v297 = *(v0 + 96);
    sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
    v298 = *(v292 + 72);
    v299 = (*(v292 + 80) + 32) & ~*(v292 + 80);
    v300 = swift_allocObject();
    *(v300 + 16) = xmmword_22C90F7F0;
    v301 = v300 + v299;
    v302 = *(v296 + 16);
    v302(v301, v293, v295);
    sub_22C36BECC();
    sub_22C36C640(v303, v304, v305, v295);
    v302(v301 + v298, v294, v295);
    sub_22C36BECC();
    sub_22C36C640(v306, v307, v308, v295);
    sub_22C3DB138(v291, v301 + 2 * v298, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C3DB138(v795, v301 + 3 * v298, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C9087AC();
    sub_22C37AC70();

    MEMORY[0x2318B4B50](v309);
    sub_22C90766C();
    sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
    v310 = sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
    v311 = *(*(v310 - 8) + 72);
    v312 = (*(*(v310 - 8) + 80) + 32) & ~*(*(v310 - 8) + 80);
    v313 = swift_allocObject();
    *(v313 + 16) = xmmword_22C90D070;
    v314 = v313 + v312;
    v315 = *(v310 + 48);
    sub_22C5D9EDC();
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C36C640(v316, v317, v318, v824);
    v319 = (v314 + v311);
    v320 = *(v310 + 48);
    sub_22C36C000();
    *v319 = v322;
    v319[1] = v321;
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C36C640(v323, v324, v325, v824);
    v326 = (v314 + 2 * v311);
    v327 = *(v310 + 48);
    *v326 = 0x72656E74726170;
    v326[1] = 0xE700000000000000;
    sub_22C3DB138(v817, v832, &qword_27D9BAA18, &qword_22C911C40);
    v328 = sub_22C3707B4();
    v330 = sub_22C370B74(v328, v329, v295);
    v331 = *(v0 + 688);
    if (v330 == 1)
    {
      sub_22C36DD28(*(v0 + 688), &qword_27D9BAA18, &qword_22C911C40);
      v332 = 1;
    }

    else
    {
      v333 = *(v0 + 456);
      v334 = *(v0 + 464);
      sub_22C9068FC();
      (*(v334 + 8))(v331, v333);
      v332 = 0;
    }

    v335 = *(v0 + 696);
    v336 = *(v0 + 680);
    v337 = *(v0 + 456);
    sub_22C36C640(v326 + v327, v332, 1, *(v0 + 864));
    v338 = (v314 + 3 * v311);
    v339 = *(v310 + 48);
    sub_22C36C000();
    *v338 = v340 + 4;
    v338[1] = v341;
    sub_22C3DB138(v335, v336, &qword_27D9BAA18, &qword_22C911C40);
    if (sub_22C370B74(v336, 1, v337) == 1)
    {
      sub_22C36DD28(*(v0 + 680), &qword_27D9BAA18, &qword_22C911C40);
      v342 = 1;
    }

    else
    {
      v343 = *(v0 + 456);
      v344 = *(v0 + 464);
      sub_22C9068FC();
      v345 = *(v344 + 8);
      v346 = sub_22C36BBCC();
      v347(v346);
      v342 = 0;
    }

    v348 = *(v0 + 840);
    v818 = *(v0 + 808);
    v825 = *(v0 + 896);
    v349 = *(v0 + 800);
    v350 = *(v0 + 464);
    v833 = *(v0 + 456);
    v351 = *(v0 + 328);
    sub_22C36C640(v338 + v339, v342, 1, *(v0 + 864));
    sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
    v352 = sub_22C909F0C();
    sub_22C5D448C(v352);

    sub_22C36BAFC();
    sub_22C906AAC();
    v353 = (v867)(v348, *MEMORY[0x277D1DA78], v818);
    MEMORY[0x2318B4570](v353);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    sub_22C36BECC();
    sub_22C36C640(v354, v355, v356, v833);
    do
    {
      v357 = *(v0 + 672);
      v358 = *(v0 + 664);
      sub_22C3872CC();
      sub_22C3827D0();
      v359 = sub_22C5D9FC0();
      if (v359 == 1)
      {
        sub_22C3816D4(v359, *(v0 + 664));
      }

      else
      {
        v360 = *(v0 + 520);
        sub_22C5DA09C();
        v358();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5D9F54();
        }

        sub_22C36FD88();
        if (v175)
        {
          sub_22C5D9F30();
        }

        v361 = *(v0 + 520);
        v362 = sub_22C36A064();
        (v358)(v362);
      }

      sub_22C3856D0();
    }

    while (!v178);
    v363 = *(v0 + 704);
    v364 = *(v0 + 696);
    v365 = *(v0 + 528);
    v366 = *(v0 + 456);
    v367 = *(v0 + 464);
    v368 = *(v0 + 296);
    v888 = *(v0 + 304);
    v869 = *(v0 + 536);
    v876 = *(v0 + 288);
    swift_setDeallocating();
    sub_22C590090();
    sub_22C36DD28(v364, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C36DD28(v363, &qword_27D9BAA18, &qword_22C911C40);
    v369 = *(v367 + 8);
    v369(v365, v366);
    v369(v869, v366);
    (*(v368 + 8))(v888, v876);
  }

  else
  {
    if (v6 == *MEMORY[0x277D1E1E0])
    {
      sub_22C38BBB0();
      v859 = *(v0 + 512);
      v843 = *(v0 + 504);
      v80 = *(v0 + 272);
      v79 = *(v0 + 280);
      v81 = *(v0 + 264);
      v83 = sub_22C37BB30(v82);
      v84(v83);
      v85 = sub_22C36D8E8();
      v86(v85);
      sub_22C9087AC();
      sub_22C90882C();

      *v2 = sub_22C907ACC();
      v2[1] = v87;
      v88 = *MEMORY[0x277D1DEF8];
      v89 = sub_22C906F2C();
      sub_22C36985C(v89);
      v91 = *(v90 + 104);
      v92 = sub_22C36BA00();
      v91(v92);
      v93 = *MEMORY[0x277D1DAA8];
      v94 = sub_22C370828();
      v95 = v81(v94);
      MEMORY[0x2318B4570](v95);
      MEMORY[0x2318B4580]();
      sub_22C5DA04C();
      sub_22C36ACD4();
      sub_22C5D9F9C();
      sub_22C9087AC();
      sub_22C386A50();

      v97 = MEMORY[0x2318B4F90](v96);
      sub_22C375F08(v97);
      v98 = *MEMORY[0x277D1DED8];
      v99 = sub_22C3723A8();
      v91(v99);
      v100 = sub_22C37F37C();
      v101 = v81(v100);
      MEMORY[0x2318B4570](v101);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C5D9EFC();
      sub_22C9065AC();
      if (v102)
      {
        sub_22C3887F0();
        sub_22C375A18(*(v0 + 656));
        sub_22C38C3E4();
        sub_22C90882C();

        *v812 = v93;
        v2[1] = 1;
        v103 = *MEMORY[0x277D1DF00];
        v104 = sub_22C386268();
        v105(v104);
        v106 = sub_22C37F8C4();
        v107(v106);

        MEMORY[0x2318B4570](v108);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C3831F8();
        sub_22C36BECC();
        sub_22C36C640(v109, v110, v111, v882);
      }

      else
      {
        v391 = *(v0 + 656);
        v392 = *(v0 + 456);
        sub_22C36A748();
        sub_22C36C640(v393, v394, v395, v396);
      }

      v397 = *(v0 + 656);
      v834 = *(v0 + 864);
      v849 = *(v0 + 648);
      v398 = *(v0 + 592);
      v400 = *(v0 + 504);
      v399 = *(v0 + 512);
      v401 = *(v0 + 456);
      v402 = *(v0 + 464);
      sub_22C36ED58(*(v0 + 320));
      sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
      v403 = sub_22C377550();
      v404 = sub_22C372A18(v403, xmmword_22C90D070);
      v80(v404);
      sub_22C36BECC();
      sub_22C36C640(v405, v406, v407, v401);
      v408 = sub_22C5D9FDC();
      v80(v408);
      sub_22C36BECC();
      sub_22C5DA0A8(v409, v410, v411);
      sub_22C3DB138(v397, v412, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C9087AC();
      sub_22C37AC70();

      MEMORY[0x2318B4B50](v413);
      sub_22C5D9F78();
      sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
      v414 = sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
      sub_22C3799A8(v414);
      v416 = *(v415 + 72);
      *(sub_22C374D38() + 16) = xmmword_22C90FB40;
      v417 = *(v399 + 56);
      sub_22C5D9EDC();
      sub_22C9068FC();
      sub_22C36BECC();
      sub_22C5DA028(v418, v419, v420);
      sub_22C36C000();
      sub_22C5DA068(v421);
      sub_22C36BECC();
      sub_22C36C640(v422, v423, v424, v397);
      v425 = sub_22C371A38();
      sub_22C3DB138(v425, v426, &qword_27D9BAA18, &qword_22C911C40);
      v427 = sub_22C3707B4();
      if (sub_22C370B74(v427, v428, v401) == 1)
      {
        sub_22C36DD28(*(v0 + 648), &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v429 = *(v0 + 456);
        v430 = *(v0 + 464);
        sub_22C9068FC();
        v431 = *(v430 + 8);
        v432 = sub_22C36BBCC();
        v433(v432);
      }

      v434 = *(v0 + 888);
      v435 = *(v0 + 864);
      v436 = *(v0 + 832);
      sub_22C37FE60();
      v437 = *(v0 + 320);
      sub_22C5D9FEC(v438, v439, v440, v441);
      sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
      v442 = sub_22C909F0C();
      sub_22C5D448C(v442);

      sub_22C36BAFC();
      sub_22C906AAC();
      v443 = *MEMORY[0x277D1DA78];
      v444 = sub_22C370288();
      v446 = v445(v444);
      MEMORY[0x2318B4570](v446);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C37A1B8();
      sub_22C36BECC();
      sub_22C36C640(v447, v448, v449, v849);
      sub_22C381AFC();
      do
      {
        v450 = *(v0 + 640);
        v451 = *(v0 + 632);
        sub_22C3872CC();
        sub_22C3827D0();
        v452 = sub_22C5D9FC0();
        if (v452 == 1)
        {
          sub_22C3816D4(v452, *(v0 + 632));
        }

        else
        {
          v453 = *(v0 + 496);
          sub_22C5DA09C();
          v451();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C5D9F54();
          }

          sub_22C36FD88();
          if (v175)
          {
            sub_22C5D9F30();
          }

          v454 = *(v0 + 496);
          v455 = sub_22C36A064();
          (v451)(v455);
        }

        sub_22C3856D0();
      }

      while (!v178);
      v179 = *(v0 + 656);
      v181 = *(v0 + 504);
      v180 = *(v0 + 512);
      v182 = *(v0 + 456);
      v183 = *(v0 + 464);
      v184 = *(v0 + 272);
      v885 = *(v0 + 280);
      v185 = *(v0 + 264);
      goto LABEL_27;
    }

    if (v6 == *MEMORY[0x277D1E1E8])
    {
      sub_22C38BBB0();
      v861 = *(v0 + 488);
      v847 = *(v0 + 480);
      v233 = *(v0 + 248);
      v232 = *(v0 + 256);
      v234 = *(v0 + 240);
      v236 = sub_22C37BB30(v235);
      v237(v236);
      v238 = sub_22C36D8E8();
      v239(v238);
      sub_22C9087AC();
      sub_22C90882C();

      *v2 = sub_22C907ACC();
      v2[1] = v240;
      v241 = *MEMORY[0x277D1DEF8];
      v242 = sub_22C906F2C();
      sub_22C36985C(v242);
      v244 = *(v243 + 104);
      v245 = sub_22C36BA00();
      v244(v245);
      v246 = *MEMORY[0x277D1DAA8];
      v247 = sub_22C370828();
      v248 = v234(v247);
      MEMORY[0x2318B4570](v248);
      MEMORY[0x2318B4580]();
      sub_22C5DA04C();
      sub_22C36ACD4();
      sub_22C5D9F9C();
      sub_22C9087AC();
      sub_22C386A50();

      v250 = MEMORY[0x2318B4FD0](v249);
      sub_22C375F08(v250);
      v251 = *MEMORY[0x277D1DED8];
      v252 = sub_22C3723A8();
      v244(v252);
      v253 = sub_22C37F37C();
      v254 = v234(v253);
      MEMORY[0x2318B4570](v254);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C5D9EFC();
      sub_22C9065AC();
      if (v255)
      {
        sub_22C3887F0();
        sub_22C375A18(*(v0 + 624));
        sub_22C38C3E4();
        sub_22C90882C();

        *v812 = v246;
        v2[1] = 1;
        v256 = *MEMORY[0x277D1DF00];
        v257 = sub_22C386268();
        v258(v257);
        v259 = sub_22C37F8C4();
        v260(v259);

        MEMORY[0x2318B4570](v261);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C3831F8();
        sub_22C36BECC();
        sub_22C36C640(v262, v263, v264, v882);
      }

      else
      {
        v478 = *(v0 + 624);
        v479 = *(v0 + 456);
        sub_22C36A748();
        sub_22C36C640(v480, v481, v482, v483);
      }

      v484 = *(v0 + 624);
      v835 = *(v0 + 864);
      v850 = *(v0 + 616);
      v485 = *(v0 + 592);
      v487 = *(v0 + 480);
      v486 = *(v0 + 488);
      v488 = *(v0 + 456);
      v489 = *(v0 + 464);
      sub_22C36ED58(*(v0 + 312));
      sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
      v490 = sub_22C377550();
      v491 = sub_22C372A18(v490, xmmword_22C90D070);
      v233(v491);
      sub_22C36BECC();
      sub_22C36C640(v492, v493, v494, v488);
      v495 = sub_22C5D9FDC();
      v233(v495);
      sub_22C36BECC();
      sub_22C5DA0A8(v496, v497, v498);
      sub_22C3DB138(v484, v499, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C9087AC();
      sub_22C37AC70();

      MEMORY[0x2318B4B50](v500);
      sub_22C5D9F78();
      sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
      v501 = sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
      sub_22C3799A8(v501);
      v503 = *(v502 + 72);
      *(sub_22C374D38() + 16) = xmmword_22C90FB40;
      v504 = *(v486 + 56);
      sub_22C5D9EDC();
      sub_22C9068FC();
      sub_22C36BECC();
      sub_22C5DA028(v505, v506, v507);
      sub_22C36C000();
      sub_22C5DA068(v508);
      sub_22C36BECC();
      sub_22C36C640(v509, v510, v511, v484);
      v512 = sub_22C371A38();
      sub_22C3DB138(v512, v513, &qword_27D9BAA18, &qword_22C911C40);
      v514 = sub_22C3707B4();
      if (sub_22C370B74(v514, v515, v488) == 1)
      {
        sub_22C36DD28(*(v0 + 616), &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v516 = *(v0 + 456);
        v517 = *(v0 + 464);
        sub_22C9068FC();
        v518 = *(v517 + 8);
        v519 = sub_22C36BBCC();
        v520(v519);
      }

      v521 = *(v0 + 880);
      v522 = *(v0 + 864);
      v523 = *(v0 + 824);
      sub_22C37FE60();
      v524 = *(v0 + 312);
      sub_22C5D9FEC(v525, v526, v527, v528);
      sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
      v529 = sub_22C909F0C();
      sub_22C5D448C(v529);

      sub_22C36BAFC();
      sub_22C906AAC();
      v530 = *MEMORY[0x277D1DA78];
      v531 = sub_22C370288();
      v533 = v532(v531);
      MEMORY[0x2318B4570](v533);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C37A1B8();
      sub_22C36BECC();
      sub_22C36C640(v534, v535, v536, v850);
      sub_22C381AFC();
      do
      {
        v537 = *(v0 + 608);
        v538 = *(v0 + 600);
        sub_22C3872CC();
        sub_22C3827D0();
        v539 = sub_22C5D9FC0();
        if (v539 == 1)
        {
          sub_22C3816D4(v539, *(v0 + 600));
        }

        else
        {
          v540 = *(v0 + 472);
          sub_22C5DA09C();
          v538();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C5D9F54();
          }

          sub_22C36FD88();
          if (v175)
          {
            sub_22C5D9F30();
          }

          v541 = *(v0 + 472);
          v542 = sub_22C36A064();
          (v538)(v542);
        }

        sub_22C3856D0();
      }

      while (!v178);
      v179 = *(v0 + 624);
      v181 = *(v0 + 480);
      v180 = *(v0 + 488);
      v182 = *(v0 + 456);
      v183 = *(v0 + 464);
      v184 = *(v0 + 248);
      v885 = *(v0 + 256);
      v185 = *(v0 + 240);
      goto LABEL_27;
    }

    if (v6 == *MEMORY[0x277D1E1F0])
    {
      v370 = *(v0 + 992);
      v371 = *(v0 + 792);
      v372 = *(v0 + 784);
      v373 = *(v0 + 776);
      (*(*(v0 + 984) + 96))(v370, *(v0 + 976));
      (*(v372 + 32))(v371, v370, v373);
      v374 = sub_22C907B3C();
      v375 = *(v0 + 944);
      if (v376)
      {
        v377 = *(v0 + 856);
        v378 = *(v0 + 816);
        v379 = *(v0 + 808);
        v380 = *(v0 + 800);
        v381 = *(v0 + 792);
        v382 = *(v0 + 768);
        v383 = *(v0 + 584);
        v384 = *(v0 + 456);
        v385 = *(v0 + 96);
        sub_22C36A748();
        sub_22C36C640(v386, v387, v388, v389);
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        v877 = *(v378 + 104);
        v390 = v877(v377, *MEMORY[0x277D1D9F8], v379);
        MEMORY[0x2318B4570](v390);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36BAFC();
        sub_22C90708C();
      }

      else
      {
        v543 = v374;
        v544 = *(v0 + 856);
        v545 = *(v0 + 816);
        v546 = *(v0 + 808);
        v547 = *(v0 + 800);
        v851 = *(v0 + 792);
        v862 = *(v0 + 936);
        v836 = *(v0 + 768);
        v870 = *(v0 + 584);
        v879 = *(v0 + 928);
        v890 = *(v0 + 456);
        v548 = *(v0 + 96);
        sub_22C9087AC();
        sub_22C90882C();

        *v544 = v543;
        v549 = *MEMORY[0x277D1DED0];
        v550 = sub_22C906F2C();
        sub_22C36985C(v550);
        (*(v551 + 104))(v544, v549);
        v552 = *(v545 + 104);
        v553 = v552(v544, *MEMORY[0x277D1DAA8], v546);
        MEMORY[0x2318B4570](v553);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        sub_22C9068FC();
        sub_22C906D5C();
        v877 = v552;
        v554 = v552(v544, *MEMORY[0x277D1DA98], v546);
        MEMORY[0x2318B4570](v554);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C36BECC();
        sub_22C36C640(v555, v556, v557, v890);
      }

      v558 = *(v0 + 760);
      v559 = *(v0 + 456);
      sub_22C3DB138(*(v0 + 768), v558, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C369A54(v558);
      if (v178)
      {
        v568 = *(v0 + 464);
        v891 = *(v568 + 72);
        v566 = (*(v568 + 80) + 32) & ~*(v568 + 80);
      }

      else
      {
        v562 = *(v0 + 576);
        v564 = *(v0 + 456);
        v563 = *(v0 + 464);
        v565 = *(v563 + 32);
        v563 += 32;
        v565(v562, *(v0 + 760), v564);
        sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
        v566 = (*(v563 + 48) + 32) & ~*(v563 + 48);
        v892 = *(v563 + 40);
        v567 = swift_allocObject();
        *(v567 + 16) = xmmword_22C90F800;
        v565(v567 + v566, v562, v564);
        v568 = *(v0 + 464);
      }

      v569 = *(v0 + 936);
      v570 = *(v0 + 856);
      v800 = *(v0 + 944);
      v805 = *(v0 + 816);
      v571 = *(v0 + 800);
      v852 = *(v0 + 776);
      v863 = *(v0 + 792);
      v826 = *(v0 + 784);
      v837 = *(v0 + 768);
      v572 = *(v0 + 584);
      v573 = *(v0 + 456);
      v810 = *(v0 + 808);
      v574 = *(v0 + 96);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v575 = swift_allocObject();
      *(v575 + 16) = xmmword_22C90F870;
      (*(v568 + 16))(v575 + v566, v572, v573);
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      MEMORY[0x2318B3FC0](v569);
      v576 = v877(v570, *MEMORY[0x277D1DA80], v810);
      MEMORY[0x2318B4570](v576);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C90708C();
      sub_22C3CD204(v575);
      (*(v568 + 8))(v572, v573);
      sub_22C36DD28(v837, &qword_27D9BAA18, &qword_22C911C40);
      (*(v826 + 8))(v863, v852);
    }

    else
    {
      v456 = *(v0 + 992);
      v457 = *(v0 + 984);
      v458 = *(v0 + 976);
      if (v6 != *MEMORY[0x277D1E1C8])
      {
        sub_22C5D55D4();
        v560 = sub_22C36FBE4();
        *v561 = 0;
        sub_22C382D44(v560);
        (*(v457 + 8))(v456, v458);
        goto LABEL_30;
      }

      v459 = *(v0 + 440);
      v460 = *(v0 + 448);
      v461 = *(v0 + 432);
      v462 = *(v0 + 400);
      v463 = *(v0 + 384);
      v878 = *(v0 + 376);
      v889 = *(v0 + 408);
      v464 = *(v0 + 96);
      (*(v457 + 96))(v456, v458);
      (*(v459 + 32))(v460, v456, v461);
      sub_22C90878C();
      v465 = sub_22C9087DC();
      v466 = *(v463 + 8);
      v466(v462, v878);
      *(v0 + 88) = v465;
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
      sub_22C907E2C();

      v467 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
      v468 = sub_22C36CCF8();
      if (sub_22C370B74(v468, v469, v467) == 1)
      {
        v471 = *(v0 + 440);
        v470 = *(v0 + 448);
        v472 = *(v0 + 432);
        sub_22C36DD28(*(v0 + 408), &qword_27D9BEEA8, &qword_22C9214D0);
        sub_22C5D55D4();
        v473 = sub_22C36FBE4();
        *v474 = 1;
        sub_22C382D44(v473);
        v475 = *(v471 + 8);
        v476 = sub_22C36BBCC();
        v477(v476);
        goto LABEL_30;
      }

      v578 = *(v0 + 416);
      v577 = *(v0 + 424);
      v580 = *(v0 + 400);
      v579 = *(v0 + 408);
      v893 = *(v0 + 376);
      v582 = *(v0 + 152);
      v581 = *(v0 + 160);
      v583 = *(v0 + 96);
      v584 = *(v467 + 48);
      v585 = *(v578 + 48);
      *v577 = *v579;
      (*(v581 + 32))(v577 + v585, v579 + v584, v582);
      v586 = *v577;
      (*(v581 + 8))(v577 + *(v578 + 48), v582);
      sub_22C90878C();
      v587 = sub_22C9087DC();
      result = (v466)(v580, v893);
      if (v586 < 0)
      {
        __break(1u);
        return result;
      }

      v588 = *(v0 + 368);
      v589 = sub_22C6060C4(0, v586, v587);
      v591 = v590;
      v593 = v592;
      v595 = v594;

      *(v0 + 56) = v589;
      *(v0 + 64) = v591;
      *(v0 + 72) = v593;
      *(v0 + 80) = v595;
      v596 = sub_22C36BBCC();
      sub_22C3A5908(v596, v597);
      sub_22C3D32C8(&qword_27D9BEEE0, &qword_27D9BEED8, &unk_22C921500);
      sub_22C907F6C();
      v598 = sub_22C902B3C();
      sub_22C369A54(v588);
      if (v178)
      {
        v600 = *(v0 + 440);
        v599 = *(v0 + 448);
        v601 = *(v0 + 432);
        sub_22C36DD28(*(v0 + 368), &qword_27D9BD7C8, &unk_22C922F50);
        sub_22C5D55D4();
        v602 = sub_22C36FBE4();
        *v603 = 1;
        sub_22C382D44(v602);
        swift_unknownObjectRelease();
        v604 = *(v600 + 8);
        v605 = sub_22C36BBCC();
        v606(v605);
        goto LABEL_30;
      }

      v607 = *(v0 + 920);
      v608 = *(v0 + 912);
      v609 = *(v0 + 872);
      v610 = *(v0 + 864);
      v611 = *(v0 + 448);
      v612 = *(v0 + 368);
      sub_22C902AFC();
      sub_22C36BBA8(v598);
      v614 = *(v613 + 8);
      v615 = sub_22C36BBCC();
      v616(v615);
      (*(v609 + 32))(v607, v608, v610);
      v617 = sub_22C907A0C();
      v619 = *(v0 + 944);
      if (v618)
      {
        v620 = *(v0 + 920);
        v621 = *(v0 + 872);
        v622 = *(v0 + 864);
        v623 = *(v0 + 856);
        v624 = *(v0 + 816);
        v625 = *(v0 + 808);
        v626 = *(v0 + 800);
        v627 = *(v0 + 752);
        v871 = *(v0 + 568);
        v628 = *(v0 + 456);
        v629 = *(v0 + 96);
        sub_22C36A748();
        sub_22C36C640(v630, v631, v632, v633);
        sub_22C9087AC();
        sub_22C5DA084();

        (*(v621 + 16))(v623, v620, v622);
        v880 = *(v624 + 104);
        v634 = v880(v623, *MEMORY[0x277D1D9F8], v625);
        MEMORY[0x2318B4570](v634);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
      }

      else
      {
        v635 = v617;
        v838 = *(v0 + 920);
        v853 = *(v0 + 936);
        v636 = *(v0 + 872);
        v637 = *(v0 + 856);
        v638 = *(v0 + 816);
        v639 = *(v0 + 808);
        v819 = *(v0 + 752);
        v827 = *(v0 + 864);
        v864 = *(v0 + 568);
        v872 = *(v0 + 456);
        v881 = *(v0 + 928);
        v640 = *(v0 + 96);
        sub_22C9087AC();
        sub_22C5DA084();

        *v637 = v635;
        v641 = *MEMORY[0x277D1DED0];
        v642 = sub_22C906F2C();
        sub_22C36985C(v642);
        (*(v643 + 104))(v637, v641);
        v644 = *(v638 + 104);
        v645 = v644(v637, *MEMORY[0x277D1DAA8], v639);
        MEMORY[0x2318B4570](v645);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C9087AC();
        sub_22C5DA084();

        (*(v636 + 16))(v853, v838, v827);
        sub_22C9068FC();
        sub_22C906D5C();
        v880 = v644;
        v646 = v644(v637, *MEMORY[0x277D1DA98], v639);
        MEMORY[0x2318B4570](v646);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C36BECC();
        sub_22C36C640(v647, v648, v649, v872);
      }

      v650 = *(v0 + 744);
      v651 = *(v0 + 456);
      sub_22C3DB138(*(v0 + 752), v650, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C369A54(v650);
      if (v178)
      {
        v660 = *(v0 + 464);
        v652 = *(v660 + 72);
        v657 = (*(v660 + 80) + 32) & ~*(v660 + 80);
      }

      else
      {
        v653 = *(v0 + 576);
        v655 = *(v0 + 456);
        v654 = *(v0 + 464);
        v656 = *(v654 + 32);
        v654 += 32;
        v656(v653, *(v0 + 744), v655);
        sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
        v657 = (*(v654 + 48) + 32) & ~*(v654 + 48);
        v658 = *(v654 + 40);
        v659 = swift_allocObject();
        *(v659 + 16) = xmmword_22C90F800;
        v656(v659 + v657, v653, v655);
        v660 = *(v0 + 464);
      }

      v661 = *(v0 + 936);
      v854 = *(v0 + 864);
      v865 = *(v0 + 920);
      v662 = *(v0 + 856);
      v784 = *(v0 + 944);
      v787 = *(v0 + 816);
      v790 = *(v0 + 808);
      v663 = *(v0 + 568);
      v664 = *(v0 + 456);
      v828 = *(v0 + 872);
      v839 = *(v0 + 448);
      v806 = *(v0 + 440);
      v811 = *(v0 + 752);
      v820 = *(v0 + 432);
      v665 = *(v0 + 96);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v666 = swift_allocObject();
      *(v666 + 16) = xmmword_22C90F870;
      (*(v660 + 16))(v666 + v657, v663, v664);
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      MEMORY[0x2318B3FC0](v661);
      v667 = v880(v662, *MEMORY[0x277D1DA80], v790);
      MEMORY[0x2318B4570](v667);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C90708C();
      sub_22C3CD204(v666);
      swift_unknownObjectRelease();
      (*(v660 + 8))(v663, v664);
      sub_22C36DD28(v811, &qword_27D9BAA18, &qword_22C911C40);
      (*(v828 + 8))(v865, v854);
      (*(v806 + 8))(v839, v820);
    }
  }

LABEL_28:
  v188 = *(v0 + 384);
  v187 = *(v0 + 392);
  v189 = *(v0 + 232);
  v190 = *(v0 + 184);
  v191 = *(v0 + 144);
  v874 = *(v0 + 376);
  v886 = *(v0 + 152);
  v192 = *(v0 + 136);
  v193 = *(v0 + 96);
  (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277D1E6A8], *(v0 + 192));
  sub_22C9088AC();
  sub_22C90889C();
  sub_22C90878C();
  v194 = sub_22C9087DC();
  (*(v188 + 8))(v187, v874);
  sub_22C3A5950(v194);

  sub_22C3DB138(v191, v192, &qword_27D9BA808, &qword_22C90C6E0);
  if (sub_22C370B74(v192, 1, v886) == 1)
  {
    v196 = *(v0 + 224);
    v195 = *(v0 + 232);
    v197 = *(v0 + 216);
    v198 = *(v0 + 144);
    sub_22C36DD28(*(v0 + 136), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    v199 = sub_22C36FBE4();
    v200 = *(v0 + 48);
    v201 = *(v0 + 32);
    *v202 = *(v0 + 16);
    *(v202 + 16) = v201;
    *(v202 + 32) = v200;
    sub_22C382D44(v199);
    sub_22C36DD28(v198, &qword_27D9BA808, &qword_22C90C6E0);
    v203 = *(v196 + 8);
    v204 = sub_22C36BBCC();
    v205(v204);
LABEL_30:
    v206 = *(v0 + 992);
    v207 = *(v0 + 968);
    v208 = *(v0 + 944);
    v209 = *(v0 + 936);
    v210 = *(v0 + 928);
    v211 = *(v0 + 920);
    v212 = *(v0 + 912);
    v213 = *(v0 + 904);
    v214 = *(v0 + 896);
    v215 = *(v0 + 888);
    v678 = *(v0 + 880);
    v680 = *(v0 + 856);
    v682 = *(v0 + 848);
    v684 = *(v0 + 840);
    v686 = *(v0 + 832);
    v688 = *(v0 + 824);
    v690 = *(v0 + 800);
    v692 = *(v0 + 792);
    v694 = *(v0 + 768);
    v696 = *(v0 + 760);
    v698 = *(v0 + 752);
    v700 = *(v0 + 744);
    v702 = *(v0 + 736);
    v704 = *(v0 + 728);
    v706 = *(v0 + 720);
    v708 = *(v0 + 712);
    v710 = *(v0 + 704);
    v712 = *(v0 + 696);
    v714 = *(v0 + 688);
    v716 = *(v0 + 680);
    v718 = *(v0 + 672);
    v720 = *(v0 + 664);
    v722 = *(v0 + 656);
    v724 = *(v0 + 648);
    v726 = *(v0 + 640);
    v728 = *(v0 + 632);
    v730 = *(v0 + 624);
    v732 = *(v0 + 616);
    v734 = *(v0 + 608);
    v736 = *(v0 + 600);
    v738 = *(v0 + 584);
    v740 = *(v0 + 576);
    v742 = *(v0 + 568);
    v744 = *(v0 + 560);
    v746 = *(v0 + 552);
    v748 = *(v0 + 544);
    v750 = *(v0 + 536);
    v752 = *(v0 + 528);
    v754 = *(v0 + 520);
    v756 = *(v0 + 512);
    v758 = *(v0 + 504);
    v760 = *(v0 + 496);
    v762 = *(v0 + 488);
    v764 = *(v0 + 480);
    v766 = *(v0 + 472);
    v768 = *(v0 + 448);
    v770 = *(v0 + 424);
    v772 = *(v0 + 408);
    v774 = *(v0 + 400);
    v776 = *(v0 + 392);
    v778 = *(v0 + 368);
    v780 = *(v0 + 360);
    v782 = *(v0 + 336);
    v785 = *(v0 + 328);
    v788 = *(v0 + 320);
    v791 = *(v0 + 312);
    v793 = *(v0 + 304);
    v797 = *(v0 + 280);
    v803 = *(v0 + 256);
    v808 = *(v0 + 232);
    v815 = *(v0 + 208);
    v822 = *(v0 + 184);
    v830 = *(v0 + 176);
    v845 = *(v0 + 168);
    v860 = *(v0 + 144);
    v868 = *(v0 + 136);
    v875 = *(v0 + 128);

    v216 = *(v0 + 8);

    return v216();
  }

  v673 = *(v0 + 992);
  v674 = *(v0 + 968);
  v675 = *(v0 + 944);
  v676 = *(v0 + 936);
  v677 = *(v0 + 928);
  v679 = *(v0 + 920);
  v681 = *(v0 + 912);
  v683 = *(v0 + 904);
  v685 = *(v0 + 896);
  v687 = *(v0 + 888);
  v689 = *(v0 + 880);
  v691 = *(v0 + 856);
  v693 = *(v0 + 848);
  v695 = *(v0 + 840);
  v697 = *(v0 + 832);
  v699 = *(v0 + 824);
  v701 = *(v0 + 800);
  v703 = *(v0 + 792);
  v705 = *(v0 + 768);
  v707 = *(v0 + 760);
  v709 = *(v0 + 752);
  v711 = *(v0 + 744);
  v713 = *(v0 + 736);
  v715 = *(v0 + 728);
  v717 = *(v0 + 720);
  v719 = *(v0 + 712);
  v721 = *(v0 + 704);
  v723 = *(v0 + 696);
  v725 = *(v0 + 688);
  v727 = *(v0 + 680);
  v729 = *(v0 + 672);
  v731 = *(v0 + 664);
  v733 = *(v0 + 656);
  v735 = *(v0 + 648);
  v737 = *(v0 + 640);
  v739 = *(v0 + 632);
  v741 = *(v0 + 624);
  v743 = *(v0 + 616);
  v745 = *(v0 + 608);
  v747 = *(v0 + 600);
  v749 = *(v0 + 584);
  v751 = *(v0 + 576);
  v753 = *(v0 + 568);
  v755 = *(v0 + 560);
  v757 = *(v0 + 552);
  v759 = *(v0 + 544);
  v761 = *(v0 + 536);
  v763 = *(v0 + 528);
  v765 = *(v0 + 520);
  v767 = *(v0 + 512);
  v769 = *(v0 + 504);
  v771 = *(v0 + 496);
  v773 = *(v0 + 488);
  v775 = *(v0 + 480);
  v777 = *(v0 + 472);
  v779 = *(v0 + 448);
  v781 = *(v0 + 424);
  v783 = *(v0 + 408);
  v786 = *(v0 + 400);
  v789 = *(v0 + 392);
  v792 = *(v0 + 368);
  v794 = *(v0 + 360);
  v798 = *(v0 + 336);
  v804 = *(v0 + 328);
  v809 = *(v0 + 320);
  v816 = *(v0 + 312);
  v823 = *(v0 + 304);
  v831 = *(v0 + 280);
  v846 = *(v0 + 256);
  v218 = *(v0 + 224);
  v669 = *(v0 + 232);
  v219 = *(v0 + 216);
  v671 = v219;
  v887 = *(v0 + 184);
  v670 = *(v0 + 176);
  v220 = *(v0 + 160);
  v221 = *(v0 + 168);
  v222 = *(v0 + 152);
  v223 = *(v0 + 128);
  v224 = *(v0 + 136);
  v225 = *(v0 + 120);
  v668 = *(v0 + 112);
  sub_22C36DD28(*(v0 + 144), &qword_27D9BA808, &qword_22C90C6E0);
  v672 = *(v220 + 32);
  v672(v221, v224, v222);
  (*(v218 + 16))(v223, v669, v219);
  (*(v225 + 104))(v223, *MEMORY[0x277D1E6F8], v668);
  sub_22C90893C();
  (*(v225 + 8))(v223, v668);
  v226 = *(v220 + 8);
  v220 += 8;
  v227 = v222;
  v226(v221, v222);
  sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
  v228 = *(v220 + 64);
  v229 = (*(v220 + 72) + 32) & ~*(v220 + 72);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_22C90F800;
  v672(v230 + v229, v670, v227);
  (*(v218 + 8))(v669, v671);

  v231 = *(v0 + 8);

  return v231(v230);
}

uint64_t PrescribedPlanGenerator.telemetryTarget.getter()
{
  v0 = *MEMORY[0x277D1D930];
  v1 = sub_22C90645C();
  sub_22C36985C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22C36BA00();

  return v5(v4);
}

uint64_t sub_22C5D97FC(uint64_t a1)
{
  v2 = sub_22C5D9E88();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5D9838(uint64_t a1)
{
  v2 = sub_22C5D9E88();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5D9890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C5D991C;

  return PrescribedPlanGenerator.setup(sessionState:)();
}

uint64_t sub_22C5D991C()
{
  sub_22C369980();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22C5D9A0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C5D9AB0;

  return PrescribedPlanGenerator.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C5D9AB0()
{
  sub_22C369980();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

unint64_t sub_22C5D9BC4(uint64_t a1)
{
  result = sub_22C5D9BEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C5D9BEC()
{
  result = qword_27D9BEE90;
  if (!qword_27D9BEE90)
  {
    type metadata accessor for PrescribedPlanGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE90);
  }

  return result;
}

unint64_t sub_22C5D9C70()
{
  result = sub_22C907BAC();
  if (v1 <= 0x3F)
  {
    result = sub_22C5D9CF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C5D9CF4()
{
  result = qword_281433338;
  if (!qword_281433338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281433338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrescribedPlanGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C5D9E34()
{
  result = qword_27D9BEE98;
  if (!qword_27D9BEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE98);
  }

  return result;
}

unint64_t sub_22C5D9E88()
{
  result = qword_27D9BEEA0;
  if (!qword_27D9BEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEEA0);
  }

  return result;
}

uint64_t sub_22C5D9EFC()
{
  *(v1 - 96) = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 120);

  return sub_22C90708C();
}

void sub_22C5D9F30()
{

  sub_22C5916E4();
}

void sub_22C5D9F54()
{
  v2 = *(v0 + 16) + 1;

  sub_22C5916E4();
}

uint64_t sub_22C5D9F78()
{
  v2 = *(v0 - 152);

  return sub_22C90766C();
}

uint64_t sub_22C5D9F9C()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return sub_22C90708C();
}

uint64_t sub_22C5D9FC0()
{

  return sub_22C370B74(v0, 1, v1);
}

uint64_t sub_22C5D9FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C36C640(v4 + v5, a2, 1, a4);
  v8 = 3 * *(v6 - 104);
  return result;
}

uint64_t sub_22C5DA010()
{
  result = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  return result;
}

uint64_t sub_22C5DA028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C36C640(a1, a2, a3, *(v4 - 144));
  v6 = *(v3 + 56);
  return result;
}

uint64_t sub_22C5DA04C()
{
  v2 = *(v0 - 144);

  return sub_22C9070BC();
}

uint64_t sub_22C5DA068@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  v2[1] = a1;
  v5 = *(v3 - 168);

  return sub_22C9068FC();
}

uint64_t sub_22C5DA084()
{

  return sub_22C90882C();
}

uint64_t sub_22C5DA0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C36C640(a1, a2, a3, v3);
  *(v5 - 104) = v4;
  return result;
}

uint64_t SuggestedInvocationPlanGenerator.init(suggestedInvocation:contextRetrieval:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9081FC();
  sub_22C36985C(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for SuggestedInvocationPlanGenerator() + 20);

  return sub_22C36C730(a2, v8);
}

uint64_t type metadata accessor for SuggestedInvocationPlanGenerator()
{
  result = qword_281430680;
  if (!qword_281430680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestedInvocationPlanGenerator.handle(_:plannerServiceContext:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C9089DC();
  v2[9] = v3;
  sub_22C3699B8(v3);
  v2[10] = v4;
  v6 = *(v5 + 64);
  v2[11] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v7);
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = sub_22C90880C();
  v2[14] = v10;
  sub_22C3699B8(v10);
  v2[15] = v11;
  v13 = *(v12 + 64);
  v2[16] = sub_22C3699D4();
  v14 = sub_22C908A0C();
  v2[17] = v14;
  sub_22C3699B8(v14);
  v2[18] = v15;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v18 = sub_22C902D3C();
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  v2[21] = sub_22C3699D4();
  v21 = sub_22C90888C();
  v2[22] = v21;
  sub_22C3699B8(v21);
  v2[23] = v22;
  v24 = *(v23 + 64);
  v2[24] = sub_22C3699D4();
  v25 = sub_22C9088CC();
  v2[25] = v25;
  sub_22C3699B8(v25);
  v2[26] = v26;
  v28 = *(v27 + 64);
  v2[27] = sub_22C3699D4();
  v29 = sub_22C90700C();
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v2[28] = sub_22C3699D4();
  v32 = sub_22C9068CC();
  v2[29] = v32;
  sub_22C3699B8(v32);
  v2[30] = v33;
  v35 = *(v34 + 64);
  v2[31] = sub_22C3699D4();
  v36 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  v2[32] = sub_22C3699D4();
  v39 = sub_22C90769C();
  sub_22C369914(v39);
  v41 = *(v40 + 64);
  v2[33] = sub_22C3699D4();
  v42 = sub_22C90654C();
  v2[34] = v42;
  sub_22C3699B8(v42);
  v2[35] = v43;
  v45 = *(v44 + 64);
  v2[36] = sub_22C3699D4();
  v46 = sub_22C901FAC();
  v2[37] = v46;
  sub_22C3699B8(v46);
  v2[38] = v47;
  v49 = *(v48 + 64);
  v2[39] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C5DA558, 0, 0);
}

uint64_t sub_22C5DA558()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
  v5 = sub_22C9070DC();
  sub_22C3699B8(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22C90F800;
  sub_22C9087AC();
  sub_22C90882C();

  sub_22C9072AC();
  sub_22C90877C();
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  sub_22C9068AC();
  (*(v13 + 8))(v10, v12);
  v14 = sub_22C90212C();
  v15 = sub_22C370B74(v11, 1, v14);
  v16 = *(v0 + 256);
  if (v15 == 1)
  {
    v17 = sub_22C36DD28(*(v0 + 256), &qword_27D9BE068, &qword_22C91CE40);
  }

  else
  {
    v18 = *(v0 + 256);
    sub_22C90211C();
    v17 = (*(*(v14 - 8) + 8))(v16, v14);
  }

  v20 = *(v0 + 288);
  v19 = *(v0 + 296);
  v21 = *(v0 + 280);
  v63 = *(v0 + 272);
  v64 = *(v0 + 312);
  v22 = *(v0 + 264);
  v23 = *(v0 + 224);
  v24 = *(v0 + 184);
  v66 = *(v0 + 192);
  v67 = *(v0 + 176);
  v69 = *(v0 + 168);
  v71 = *(v0 + 216);
  v86 = *(v0 + 136);
  v75 = *(v0 + 128);
  v76 = *(v0 + 120);
  v77 = *(v0 + 112);
  v81 = *(v0 + 104);
  v84 = *(v0 + 96);
  v73 = *(v0 + 56);
  MEMORY[0x2318B4B50](v17);
  sub_22C90766C();
  sub_22C909F0C();
  sub_22C906AAC();
  v25 = (*(v21 + 104))(v20, *MEMORY[0x277D1DA78], v63);
  MEMORY[0x2318B4570](v25);
  MEMORY[0x2318B4580]();
  sub_22C9070BC();
  sub_22C90708C();
  (*(v24 + 104))(v66, *MEMORY[0x277D1E6B0], v67);
  sub_22C9088AC();
  sub_22C90889C();
  sub_22C90878C();
  v26 = sub_22C9087DC();
  (*(v76 + 8))(v75, v77);
  sub_22C3A5950(v26);

  sub_22C3BD74C(v81, v84);
  if (sub_22C370B74(v84, 1, v86) == 1)
  {
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 200);
    v30 = *(v0 + 104);
    sub_22C36DD28(*(v0 + 96), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v31 = *(v0 + 48);
    v32 = *(v0 + 32);
    *v33 = *(v0 + 16);
    *(v33 + 16) = v32;
    *(v33 + 32) = v31;
    swift_willThrow();
    sub_22C36DD28(v30, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v28 + 8))(v27, v29);
    v34 = *(v0 + 312);
    v35 = *(v0 + 288);
    v37 = *(v0 + 256);
    v36 = *(v0 + 264);
    v38 = *(v0 + 248);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 192);
    v42 = *(v0 + 160);
    v43 = *(v0 + 168);
    v78 = *(v0 + 152);
    v79 = *(v0 + 128);
    v82 = *(v0 + 104);
    v85 = *(v0 + 96);
    v87 = *(v0 + 88);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v68 = *(v0 + 312);
    v70 = *(v0 + 288);
    v72 = *(v0 + 264);
    v74 = *(v0 + 256);
    v46 = *(v0 + 216);
    v47 = *(v0 + 208);
    v61 = *(v0 + 200);
    v80 = *(v0 + 192);
    v83 = *(v0 + 168);
    v62 = *(v0 + 160);
    v48 = *(v0 + 144);
    v49 = *(v0 + 152);
    v50 = *(v0 + 136);
    v51 = *(v0 + 96);
    v88 = *(v0 + 128);
    v53 = *(v0 + 80);
    v52 = *(v0 + 88);
    v60 = *(v0 + 72);
    sub_22C36DD28(*(v0 + 104), &qword_27D9BA808, &qword_22C90C6E0);
    v65 = *(v48 + 32);
    v65(v49, v51, v50);
    (*(v47 + 16))(v52, v46, v61);
    (*(v53 + 104))(v52, *MEMORY[0x277D1E6F8], v60);
    sub_22C90893C();
    (*(v53 + 8))(v52, v60);
    v54 = *(v48 + 8);
    v48 += 8;
    v55 = v50;
    v54(v49, v50);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v56 = *(v48 + 64);
    v57 = (*(v48 + 72) + 32) & ~*(v48 + 72);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_22C90F800;
    v65(v58 + v57, v62, v55);
    (*(v47 + 8))(v46, v61);

    v59 = *(v0 + 8);

    return v59(v58);
  }
}

uint64_t SuggestedInvocationPlanGenerator.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D930];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C5DADAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return SuggestedInvocationPlanGenerator.setup(sessionState:)();
}

uint64_t sub_22C5DAE38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0268;

  return SuggestedInvocationPlanGenerator.handle(_:plannerServiceContext:)(a1);
}

unint64_t sub_22C5DAEE4(uint64_t a1)
{
  result = sub_22C5DAF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C5DAF0C()
{
  result = qword_27D9BEEF0;
  if (!qword_27D9BEEF0)
  {
    type metadata accessor for SuggestedInvocationPlanGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEEF0);
  }

  return result;
}

unint64_t sub_22C5DAF90()
{
  result = sub_22C9081FC();
  if (v1 <= 0x3F)
  {
    result = sub_22C5D9CF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C5DB014()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C369A48();
  v7 = sub_22C903CCC();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3772FC();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C5E7710(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  MEMORY[0x28223BE20](v20);
  sub_22C377318();
  if (v0 != v6 && (sub_22C5E7BD4(), v21))
  {
    sub_22C3882D8();
    if (v23)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v25 = sub_22C5E7500();
        v4(v25);
        v26 = sub_22C5E7604();
        v27(v26);
        v28 = *(v6 + 40);
        sub_22C5E742C();
        sub_22C5E72C8(&qword_281435738, v29);
        sub_22C5E7A80();
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8(v30);
          if ((v31 & 1) == 0)
          {
            v37 = *v1;
            v38 = sub_22C5E7AF0();
            v39(v38);
            goto LABEL_18;
          }

          v32 = sub_22C5E75CC();
          v4(v32);
          sub_22C5E742C();
          sub_22C5E72C8(&qword_27D9BF080, v33);
          sub_22C5E7874();
          sub_22C5E7D3C();
          v34 = sub_22C5E7950();
          v2(v34);
          v30 = v6 + 1;
        }

        while ((v28 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v2(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v24 = v3;
    while (1)
    {
      v3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v3 >= v22)
      {
        goto LABEL_18;
      }

      ++v24;
      if (*(v41 + 8 * v3))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_22C90399C();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = sub_22C9039FC();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v117 = v44;
  v45 = sub_22C36BA0C();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v45);
  v46 = sub_22C36985C(DecorationEntityValue);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369ABC();
  v119 = v49 - v50;
  MEMORY[0x28223BE20](v51);
  v120 = v103 - v52;
  v126 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  sub_22C36985C(v126);
  v54 = *(v53 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v55);
  sub_22C37FCFC();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v56 = sub_22C369824(DecorationTupleParameter);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v59);
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v60);
  if (v28 == v26 || *(v28 + 16) != v26[2])
  {
    goto LABEL_37;
  }

  v116 = v29;
  v61 = 0;
  v62 = 1 << *(v28 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v28 + 56);
  sub_22C5E7AA0((v26 + 7));
  v114 = (v32 + 8);
  v110 = v32 + 32;
  v113 = (v41 + 8);
  v108 = v41 + 32;
  v111 = v37;
  v115 = v38;
  v107 = v66;
  v106 = v65;
  if (!v68)
  {
    goto LABEL_8;
  }

  do
  {
    v103[0] = (v68 - 1) & v68;
LABEL_13:
    v105 = v28;
    v72 = *(v28 + 48);
    v104 = v67;
    v73 = *(v67 + 72);
    sub_22C380560();
    v75 = v74;
    sub_22C5E7218(v76, v74);
    sub_22C3827F0();
    v103[1] = v75;
    sub_22C5E7270(v75, v20);
    v77 = v26[5];
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C5E7D58();

    v78 = (v20 + *(DecorationTupleParameter + 20));
    v127 = *v78;
    MEMORY[0x2318B8B10]();
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v79 = *(DecorationEntity + 20);
    v124 = v78;
    v122 = v79;
    v80 = sub_22C7E5918();
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v80);
    v81 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v81);
    sub_22C90B66C();
    v82 = *(v26 + 32);
    sub_22C386A8C();
    v85 = v84 & ~v83;
    v86 = v125;
    if (((*(v125 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
    {
LABEL_36:
      sub_22C5E734C();
      sub_22C5E7168();
LABEL_37:
      sub_22C36CC48();
      return;
    }

    v87 = ~v83;
    v121 = v26;
    v109 = v20;
    while (1)
    {
      v88 = v26[6];
      sub_22C380560();
      sub_22C5E7218(v89, v22);
      if ((sub_22C9097CC() & 1) == 0 || (v90 = (v22 + *(DecorationTupleParameter + 20)), *v90 != v127))
      {
        sub_22C5E734C();
        sub_22C5E7168();
        goto LABEL_22;
      }

      v26 = *(v126 + 48);
      v86 = type metadata accessor for QueryDecorationEntityValue;
      sub_22C5E7218(v90 + *(DecorationEntity + 20), v21);
      sub_22C5E7218(v124 + v122, v26 + v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_22C5E74A0();
      sub_22C5580B8(&a13);
      sub_22C5E7218(v95, v96);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C5E734C();
        sub_22C5E7168();
        sub_22C36BA4C(&v131);
        v98 = &v133;
        goto LABEL_29;
      }

      sub_22C36BA4C(&v129);
      v99 = v117;
      v100 = v115;
      v101(v117, v26 + v21, v115);
      v112 = sub_22C9039EC();
      v26 = v113;
      v102 = v99;
      v86 = *v113;
      (*v113)(v102, v100);
      sub_22C5E734C();
      sub_22C5E7168();
      sub_22C5E7DCC();
      v86();
LABEL_32:
      sub_22C5E78B8();
      sub_22C5E7E28();
      if (v112)
      {
        goto LABEL_33;
      }

LABEL_22:
      v85 = (v85 + 1) & v87;
      if (((*(v86 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22C5E74A0();
      sub_22C5580B8(&a12);
      sub_22C5E7218(v92, v93);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22C5E734C();
        sub_22C5E7168();
        sub_22C36BA4C(&v132);
        v98 = &a9;
LABEL_29:
        v97(type metadata accessor for QueryDecorationEntityValue, *(v98 - 32));
LABEL_30:
        sub_22C36DD28(v21, &qword_27D9BAA78, &unk_22C90D110);
        sub_22C5E7E28();
        goto LABEL_22;
      }

      sub_22C36BA4C(&v130);
      v86 = v116;
      v94(v111, v26 + v21, v116);
      v112 = sub_22C90393C();
      v26 = *v114;
      sub_22C5E7DCC();
      (v26)();
      sub_22C5E734C();
      sub_22C5E7168();
      (v26)(v119, v86);
      v20 = v109;
      goto LABEL_32;
    }

    sub_22C5E734C();
    sub_22C5E7168();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_30;
    }

    sub_22C5E78B8();
    v26 = v121;
LABEL_33:
    sub_22C5E734C();
    sub_22C5E7168();
    v28 = v105;
    v67 = v104;
    v66 = v107;
    v65 = v106;
    v68 = v103[0];
  }

  while (v103[0]);
LABEL_8:
  v69 = v61;
  while (1)
  {
    v61 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v61 >= v65)
    {
      goto LABEL_37;
    }

    ++v69;
    if (*(v66 + 8 * v61))
    {
      sub_22C375A38();
      v103[0] = v71 & v70;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22C5DB9D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_12:
    v7 &= v7 - 1;
    v10 = *(a2 + 40);
    sub_22C90B62C();
    MEMORY[0x2318B8B10](0);
    result = sub_22C90B66C();
    v11 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_22C5DBAE4()
{
  sub_22C3806F4();
  if (v0 == v1 || (v2 = v1, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_23:
    sub_22C5E78F0();
    return;
  }

  v3 = 0;
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  sub_22C36AD3C();
  v9 = (v8 + 63) >> 6;
  v10 = v2 + 56;
  if ((v7 & v6) != 0)
  {
    do
    {
      sub_22C36C050();
      v35 = v13;
LABEL_10:
      v18 = *(v11 + 48) + 24 * (v12 | (v3 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v2 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v19 >> 14);
      v23 = v20 >> 14;
      MEMORY[0x2318B8B30](v23);
      MEMORY[0x2318B8B10](v21);
      v24 = sub_22C90B66C();
      v25 = -1 << *(v2 + 32);
      v26 = v24 & ~v25;
      if (((*(v10 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = *(v2 + 48) + 24 * v26;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = v30 >> 14;
        v33 = v19 >> 14 == v29 >> 14 && v32 == v23;
        if (v33 && v31 == v21)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v10 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (v35);
  }

  v14 = v3;
  while (1)
  {
    v3 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v3 >= v9)
    {
      goto LABEL_23;
    }

    sub_22C5E79B0();
    if (v15)
    {
      sub_22C375A38();
      v35 = v17 & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22C5DBC6C()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C369A48();
  v7 = sub_22C90952C();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3772FC();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C5E7710(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  MEMORY[0x28223BE20](v20);
  sub_22C377318();
  if (v0 != v6 && (sub_22C5E7BD4(), v21))
  {
    sub_22C3882D8();
    if (v23)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v25 = sub_22C5E7500();
        v4(v25);
        v26 = sub_22C5E7604();
        v27(v26);
        v28 = *(v6 + 40);
        sub_22C386278();
        sub_22C5E72C8(&qword_28142FA80, v29);
        sub_22C5E7A80();
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8(v30);
          if ((v31 & 1) == 0)
          {
            v37 = *v1;
            v38 = sub_22C5E7AF0();
            v39(v38);
            goto LABEL_18;
          }

          v32 = sub_22C5E75CC();
          v4(v32);
          sub_22C386278();
          sub_22C5E72C8(&qword_28142FA78, v33);
          sub_22C5E7874();
          sub_22C5E7D3C();
          v34 = sub_22C5E7950();
          v2(v34);
          v30 = v6 + 1;
        }

        while ((v28 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v2(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v24 = v3;
    while (1)
    {
      v3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v3 >= v22)
      {
        goto LABEL_18;
      }

      ++v24;
      if (*(v41 + 8 * v3))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DBE68()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C369A48();
  v7 = sub_22C902D0C();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3772FC();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C5E7710(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  MEMORY[0x28223BE20](v20);
  sub_22C377318();
  if (v0 != v6 && (sub_22C5E7BD4(), v21))
  {
    sub_22C3882D8();
    if (v23)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v25 = sub_22C5E7500();
        v4(v25);
        v26 = sub_22C5E7604();
        v27(v26);
        v28 = *(v6 + 40);
        sub_22C5E73E4();
        sub_22C5E72C8(&qword_27D9BAAA8, v29);
        sub_22C5E7A80();
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8(v30);
          if ((v31 & 1) == 0)
          {
            v37 = *v1;
            v38 = sub_22C5E7AF0();
            v39(v38);
            goto LABEL_18;
          }

          v32 = sub_22C5E75CC();
          v4(v32);
          sub_22C5E73E4();
          sub_22C5E72C8(&qword_27D9BC488, v33);
          sub_22C5E7874();
          sub_22C5E7D3C();
          v34 = sub_22C5E7950();
          v2(v34);
          v30 = v6 + 1;
        }

        while ((v28 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v2(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v24 = v3;
    while (1)
    {
      v3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v3 >= v22)
      {
        goto LABEL_18;
      }

      ++v24;
      if (*(v41 + 8 * v3))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DC064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  sub_22C3704C4();
  v97 = sub_22C908C5C();
  v26 = sub_22C369824(v97);
  v96 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v102 = v30;
  sub_22C36BA0C();
  v101 = sub_22C9069BC();
  v31 = sub_22C369824(v101);
  v95 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C5E7AA0(v35);
  v36 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v37 = sub_22C369914(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v40);
  sub_22C377318();
  if (v20 == v25 || *(v20 + 16) != *(v25 + 16))
  {
LABEL_35:
    sub_22C36CC48();
  }

  else
  {
    v42 = 0;
    v43 = v20 + 56;
    v44 = 1 << *(v20 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v20 + 56);
    v47 = (v44 + 63) >> 6;
    v48 = (v95 + 32);
    v99 = v41;
    v94 = v21;
    v93 = v25;
    v89 = v20;
    v88 = v20 + 56;
    v87 = v47;
    v92 = v25 + 56;
    if (v46)
    {
LABEL_7:
      v49 = __clz(__rbit64(v46));
      v90 = (v46 - 1) & v46;
LABEL_13:
      v91 = v42;
      v54 = *(*(v20 + 48) + 8 * (v49 | (v42 << 6)));
      v55 = *(v25 + 40);
      sub_22C90B62C();
      v56 = 1 << *(v54 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v54 + 64);
      v59 = (v56 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v60 = 0;
      v61 = 0;
      v62 = v97;
      for (i = v59; ; v59 = i)
      {
        v103 = v60;
        if (!v58)
        {
          break;
        }

        v63 = v61;
LABEL_24:
        v65 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v66 = v65 | (v63 << 6);
        (*(v95 + 16))(v100, *(v54 + 48) + *(v95 + 72) * v66, v101);
        (*(v96 + 16))(v102, *(v54 + 56) + *(v96 + 72) * v66, v62);
        v59 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v67 = *(v59 + 48);
        v64 = v99;
        v48 = (v95 + 32);
        (*(v95 + 32))(v99, v100, v101);
        v68 = v99 + v67;
        v62 = v97;
        (*(v96 + 32))(v68, v102, v97);
        sub_22C387310(v99);
        v21 = v94;
LABEL_25:
        sub_22C5E71BC(v64, v21, &qword_27D9BF108, &unk_22C921F70);
        sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v69 = sub_22C36A024();
        sub_22C36D3E0(v69);
        if (v70)
        {

          sub_22C5E7D7C();
          v81 = sub_22C90B66C();
          v25 = v93;
          v82 = ~(-1 << *(v93 + 32));
          do
          {
            v83 = v81 & v82;
            if (((*(v92 + (((v81 & v82) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v81 & v82)) & 1) == 0)
            {

              goto LABEL_35;
            }

            v84 = *(*(v93 + 48) + 8 * v83);

            sub_22C74B664();
            v86 = v85;

            v81 = v83 + 1;
          }

          while ((v86 & 1) == 0);

          v20 = v89;
          v42 = v91;
          v43 = v88;
          v47 = v87;
          v46 = v90;
          if (v90)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        }

        v71 = *(v59 + 48);
        (*v48)(v100, v21, v101);
        sub_22C36BA4C(&a17);
        v72(v102, v21 + v71, v62);
        sub_22C5E79F8();
        sub_22C5E73B8();
        sub_22C5E72C8(&qword_27D9BAA98, v73);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a12);
        v74(v100, v101);
        sub_22C5E7388();
        sub_22C5E72C8(&qword_27D9BAA90, v75);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a11);
        v76(v102, v62);
        v60 = sub_22C90B66C() ^ v103;
      }

      v64 = v99;
      while (1)
      {
        v63 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v63 >= v59)
        {
          sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v77 = sub_22C5E7874();
          sub_22C374D84(v77, v78, v79, v80);
          v58 = 0;
          goto LABEL_25;
        }

        v58 = *(v54 + 64 + 8 * v63);
        ++v61;
        if (v58)
        {
          v61 = v63;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
      v50 = v42;
      while (1)
      {
        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v51 >= v47)
        {
          goto LABEL_35;
        }

        ++v50;
        if (*(v43 + 8 * v51))
        {
          sub_22C375A38();
          v90 = v53 & v52;
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }
}

void static RequirementStatus.== infix(_:_:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9026DC();
  v7 = sub_22C369824(v6);
  v32 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = type metadata accessor for RequirementStatus();
  v15 = sub_22C36985C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v18);
  v20 = (&v31 - v19);
  v21 = sub_22C3A5908(&qword_27D9BEEF8, &qword_22C9215C0);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C3721C8();
  v26 = *(v25 + 56);
  sub_22C5E7218(v5, v0);
  sub_22C5E7218(v3, v0 + v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C3767B4();
      sub_22C5E7218(v0, v1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v32;
        (*(v32 + 32))(v13, v0 + v26, v6);
        sub_22C9026CC();
        v29 = *(v28 + 8);
        v29(v13, v6);
        v29(v1, v6);
LABEL_12:
        sub_22C5E73FC();
        sub_22C5E7168();
        goto LABEL_13;
      }

      (*(v32 + 8))(v1, v6);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_22C3767B4();
    sub_22C5E7218(v0, v20);
    v30 = *v20;
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C5DB9D8(v30, *(v0 + v26));

      goto LABEL_12;
    }
  }

  sub_22C36DD28(v0, &qword_27D9BEEF8, &qword_22C9215C0);
LABEL_13:
  sub_22C36CC48();
}

uint64_t type metadata accessor for RequirementStatus()
{
  result = qword_27D9BEFD0;
  if (!qword_27D9BEFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C5DCA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6569667369746173 && a2 == 0xE900000000000064;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C932E50 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365726975716572 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5DCB68(char a1)
{
  if (!a1)
  {
    return 0x6569667369746173;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0x7365726975716572;
}

uint64_t sub_22C5DCBC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65766967 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5DCC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DCA48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5DCC80(uint64_t a1)
{
  v2 = sub_22C5DD39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCCBC(uint64_t a1)
{
  v2 = sub_22C5DD39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCCF8(uint64_t a1)
{
  v2 = sub_22C5DD3F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCD34(uint64_t a1)
{
  v2 = sub_22C5DD3F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCD70(uint64_t a1)
{
  v2 = sub_22C5DD4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCDAC(uint64_t a1)
{
  v2 = sub_22C5DD4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DCBC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5DCE18(uint64_t a1)
{
  v2 = sub_22C5DD444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCE54(uint64_t a1)
{
  v2 = sub_22C5DD444();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequirementStatus.encode(to:)()
{
  sub_22C370030();
  v72 = v2;
  v69 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BEF00, &qword_22C9215C8);
  v6 = sub_22C369824(v5);
  v67 = v7;
  v68 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36D5B4();
  v64 = v11;
  sub_22C36BA0C();
  v12 = sub_22C9026DC();
  v13 = sub_22C369824(v12);
  v65 = v14;
  v66 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v63 = v17;
  v18 = sub_22C3A5908(&qword_27D9BEF08, &qword_22C9215D0);
  v19 = sub_22C369824(v18);
  v61 = v20;
  v62 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C3721C8();
  v24 = sub_22C3A5908(&qword_27D9BEF10, &qword_22C9215D8);
  sub_22C369824(v24);
  v60 = v25;
  v27 = *(v26 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &v60 - v29;
  v31 = type metadata accessor for RequirementStatus();
  v32 = sub_22C36985C(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v37 = (v36 - v35);
  v38 = sub_22C3A5908(&qword_27D9BEF18, &qword_22C9215E0);
  v39 = sub_22C369824(v38);
  v70 = v40;
  v71 = v39;
  v42 = *(v41 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  v44 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5DD39C();
  sub_22C90B6CC();
  sub_22C3767B4();
  sub_22C5E7218(v69, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v65;
      v46 = v66;
      v48 = v63;
      (*(v65 + 32))(v63, v37, v66);
      sub_22C5DD3F0();
      v49 = v64;
      sub_22C5E7E70();
      sub_22C3814FC();
      sub_22C5E72C8(v50, v51);
      v52 = v68;
      sub_22C90B41C();
      (*(v67 + 8))(v49, v52);
      (*(v47 + 8))(v48, v46);
    }

    else
    {
      sub_22C5DD4EC();
      sub_22C5E7E70();
      (*(v60 + 8))(v30, v24);
    }

    v53 = sub_22C5E7BB4();
    v54(v53, v0);
  }

  else
  {
    v55 = *v37;
    sub_22C5DD444();
    v56 = v71;
    sub_22C90B36C();
    v73 = v55;
    sub_22C3A5908(&qword_27D9BEF40, &qword_22C9215E8);
    sub_22C5E6518(&qword_27D9BEF48, sub_22C5DD498);
    v57 = v62;
    sub_22C90B41C();
    (*(v61 + 8))(v0, v57);
    v58 = sub_22C5E7BB4();
    v59(v58, v56);
  }

  sub_22C36FB20();
}

unint64_t sub_22C5DD39C()
{
  result = qword_27D9BEF20;
  if (!qword_27D9BEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF20);
  }

  return result;
}

unint64_t sub_22C5DD3F0()
{
  result = qword_27D9BEF28;
  if (!qword_27D9BEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF28);
  }

  return result;
}

unint64_t sub_22C5DD444()
{
  result = qword_27D9BEF38;
  if (!qword_27D9BEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF38);
  }

  return result;
}

unint64_t sub_22C5DD498()
{
  result = qword_27D9BEF50;
  if (!qword_27D9BEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF50);
  }

  return result;
}

unint64_t sub_22C5DD4EC()
{
  result = qword_27D9BEF58;
  if (!qword_27D9BEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF58);
  }

  return result;
}

void RequirementStatus.init(from:)()
{
  sub_22C370030();
  v97 = v0;
  v4 = v3;
  v92 = v5;
  v93 = sub_22C3A5908(&qword_27D9BEF60, &qword_22C9215F0);
  sub_22C369824(v93);
  v89 = v6;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v91 = v10;
  v11 = sub_22C3A5908(&qword_27D9BEF68, &qword_22C9215F8);
  v12 = sub_22C369824(v11);
  v87 = v13;
  v88 = v12;
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  v96 = v17;
  v18 = sub_22C3A5908(&qword_27D9BEF70, &qword_22C921600);
  v19 = sub_22C369824(v18);
  v85 = v20;
  v86 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v90 = v24;
  v25 = sub_22C3A5908(&qword_27D9BEF78, &unk_22C921608);
  v26 = sub_22C369824(v25);
  v94 = v27;
  v95 = v26;
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = &v81 - v31;
  v33 = type metadata accessor for RequirementStatus();
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v37);
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v38);
  v40 = &v81 - v39;
  v41 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5DD39C();
  v42 = v97;
  sub_22C90B6BC();
  if (v42)
  {
    goto LABEL_10;
  }

  v81 = v1;
  v82 = v2;
  v83 = v40;
  v84 = v33;
  v97 = v4;
  v43 = v95;
  v44 = sub_22C90B34C();
  sub_22C3E1F24(v44, 0);
  if (v46 == v47 >> 1)
  {
LABEL_9:
    v54 = sub_22C90AFBC();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v56 = v84;
    sub_22C90B25C();
    sub_22C387D6C();
    v58 = *MEMORY[0x277D84160];
    sub_22C36BBA8(v54);
    (*(v59 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v94 + 8))(v32, v43);
    v4 = v97;
LABEL_10:
    v60 = v4;
LABEL_11:
    sub_22C36FF94(v60);
    sub_22C36FB20();
    return;
  }

  if (v46 < (v47 >> 1))
  {
    v48 = v32;
    v49 = *(v45 + v46);
    sub_22C3E1F20(v46 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 != v53 >> 1)
    {
      v32 = v48;
      goto LABEL_9;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        sub_22C5DD3F0();
        sub_22C5E7A60();
        v62 = v92;
        sub_22C9026DC();
        sub_22C3814FC();
        sub_22C5E72C8(v65, v66);
        v67 = v82;
        sub_22C90B32C();
        v68 = v94;
        swift_unknownObjectRelease();
        v76 = sub_22C5E7DEC();
        v77(v76);
        v78 = *(v68 + 8);
        v79 = sub_22C385DCC();
        v80(v79);
        swift_storeEnumTagMultiPayload();
        sub_22C5E7414();
        v75 = v83;
        sub_22C5E7270(v67, v83);
LABEL_15:
        sub_22C5E7414();
        sub_22C5E7270(v75, v62);
        v60 = v97;
        goto LABEL_11;
      }

      sub_22C5DD444();
      sub_22C5E7A60();
      sub_22C3A5908(&qword_27D9BEF40, &qword_22C9215E8);
      sub_22C5E6518(&qword_27D9BEF88, sub_22C5E6590);
      sub_22C90B32C();
      swift_unknownObjectRelease();
      v69 = sub_22C5E7E14();
      v70(v69);
      v71 = sub_22C5E7678();
      v72(v71);
      v73 = v81;
      *v81 = v98;
      swift_storeEnumTagMultiPayload();
      sub_22C5E7414();
      v74 = v73;
      v75 = v83;
      sub_22C5E7270(v74, v83);
    }

    else
    {
      sub_22C5DD4EC();
      v61 = v90;
      sub_22C5E7A60();
      swift_unknownObjectRelease();
      (*(v85 + 8))(v61, v86);
      v63 = sub_22C5E7678();
      v64(v63);
      v75 = v83;
      swift_storeEnumTagMultiPayload();
    }

    v62 = v92;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_22C5DDCA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000022C932E70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5DDD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DDCA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5DDD6C(uint64_t a1)
{
  v2 = sub_22C5E65E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DDDA8(uint64_t a1)
{
  v2 = sub_22C5E65E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DDDE4(uint64_t a1)
{
  v2 = sub_22C5E6638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DDE20(uint64_t a1)
{
  v2 = sub_22C5E6638();

  return MEMORY[0x2821FE720](a1, v2);
}

void SatifisfactionCondition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = sub_22C3A5908(&qword_27D9BEF98, &qword_22C921618);
  sub_22C369824(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C37FCFC();
  v32 = sub_22C3A5908(&qword_27D9BEFA0, &qword_22C921620);
  sub_22C369824(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = v25[4];
  sub_22C374168(v25, v25[3]);
  sub_22C5E65E4();
  sub_22C90B6CC();
  sub_22C5E6638();
  sub_22C90B36C();
  (*(v28 + 8))(v21, v26);
  (*(v34 + 8))(v39, v32);
  sub_22C36FB20();
}

uint64_t SatifisfactionCondition.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

void SatifisfactionCondition.init(from:)()
{
  sub_22C370030();
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BEFB8, &qword_22C921628);
  sub_22C369824(v5);
  v36 = v6;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3721C8();
  v10 = sub_22C3A5908(&qword_27D9BEFC0, &qword_22C921630);
  sub_22C369824(v10);
  v37 = v11;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C5CA768();
  v15 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5E65E4();
  sub_22C90B6BC();
  if (v1)
  {
    goto LABEL_7;
  }

  v35 = v4;
  v16 = sub_22C90B34C();
  sub_22C3E16E0(v16, 0);
  v19 = v2;
  if (v17 == v18 >> 1)
  {
LABEL_6:
    v24 = v10;
    v25 = sub_22C90AFBC();
    swift_allocError();
    v27 = v26;
    v28 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v27 = &type metadata for SatifisfactionCondition;
    sub_22C90B25C();
    sub_22C387D6C();
    v29 = *MEMORY[0x277D84160];
    sub_22C36BBA8(v25);
    (*(v30 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v19, v24);
    v4 = v35;
LABEL_7:
    v34 = v4;
    goto LABEL_8;
  }

  if (v17 < (v18 >> 1))
  {
    sub_22C3E1F20(v17 + 1);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      sub_22C5E6638();
      sub_22C90B24C();
      swift_unknownObjectRelease();
      (*(v36 + 8))(v0, v5);
      v31 = *(v37 + 8);
      v32 = sub_22C50B478();
      v33(v32);
      v34 = v35;
LABEL_8:
      sub_22C36FF94(v34);
      sub_22C36FB20();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t RequirementStatus.conditions.getter()
{
  v1 = type metadata accessor for RequirementStatus();
  v2 = sub_22C36985C(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v7 = v6 - v5;
  sub_22C3767B4();
  sub_22C5E7218(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22C5E7168();
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22C5DE4D0()
{
  sub_22C3A5908(&qword_27D9BF148, &qword_22C921FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90D070;
  *(v0 + 56) = &type metadata for CarPlayRequirementEvaluator;
  *(v0 + 64) = &protocol witness table for CarPlayRequirementEvaluator;
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  v1 = qword_281437570;
  *(v0 + 32) = qword_281437570;
  *(v0 + 96) = &type metadata for CarBluetoothRequirementEvaluator;
  *(v0 + 104) = &protocol witness table for CarBluetoothRequirementEvaluator;
  *(v0 + 72) = v1;
  v6 = &type metadata for ToolKitDeviceUnlockStateProvider;
  v7 = &protocol witness table for ToolKitDeviceUnlockStateProvider;
  v2 = type metadata accessor for AuthenticationRequirementEvaluator();
  v3 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_defaultActor_initialize();
  result = sub_22C36C730(&v5, v3 + 112);
  *(v0 + 136) = v2;
  *(v0 + 144) = &protocol witness table for AuthenticationRequirementEvaluator;
  *(v0 + 112) = v3;
  *(v0 + 176) = &type metadata for ResponseModeRequirementEvaluator;
  *(v0 + 184) = &protocol witness table for ResponseModeRequirementEvaluator;
  qword_281437500 = v0;
  return result;
}

uint64_t MultiActionRequirementEvaluator.evaluate(tool:transcript:)()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for RequirementStatus();
  v1[11] = v5;
  sub_22C369914(v5);
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[13] = v8;
  v1[14] = v9;

  return MEMORY[0x2822009F8](sub_22C5DE6B0, 0, 0);
}

void sub_22C5DE6B0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84FA0];
  *(v0 + 136) = 0;
  *(v0 + 144) = v3;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_22C378A4C(v1 + 32, v0 + 16);
      v4 = *(v0 + 48);
      sub_22C374168((v0 + 16), *(v0 + 40));
      sub_22C5E7BE4();
      sub_22C369B5C();
      v15 = (v5 + *v5);
      v7 = *(v6 + 4);
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 152) = v8;
      *v8 = v9;
      v10 = sub_22C38B1E8(v8);

      v15(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *(v0 + 88);
    if (*(v3 + 16))
    {
      **(v0 + 64) = v3;
    }

    else
    {
    }

    sub_22C36BA00();
    swift_storeEnumTagMultiPayload();
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);

    sub_22C369A24();

    v14();
  }
}

uint64_t sub_22C5DE854()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = v2[19];
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[18];
    sub_22C36FF94(v3 + 2);

    v8 = sub_22C5DED6C;
  }

  else
  {
    sub_22C36FF94(v3 + 2);
    v8 = sub_22C5DE974;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_22C5DE974()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_22C3767B4();
  sub_22C5E7218(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v19 = v0[18];
      v38 = v0[16];
      goto LABEL_25;
    }

    v6 = v0[18];
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[8];

    sub_22C5E7414();
    sub_22C5E7270(v8, v9);
    sub_22C5E73FC();
    sub_22C5E7168();
LABEL_34:
    v52 = v0[12];
    v51 = v0[13];

    sub_22C369A24();
    sub_22C381608();

    __asm { BRAA            X1, X16 }
  }

  v10 = 0;
  v11 = *v0[12];
  v14 = *(v11 + 56);
  v13 = v11 + 56;
  v12 = v14;
  v15 = -1 << *(*v0[12] + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (63 - v15) >> 6;
  v19 = v0[18];
  v56 = v0[16];
  while (2)
  {
    while (2)
    {
      if (v17)
      {
        goto LABEL_13;
      }

      do
      {
        v20 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v20 >= v18)
        {

          v38 = v56;
LABEL_25:
          v39 = v0[13];
          sub_22C5E73FC();
          sub_22C5E7168();
          v40 = v0[17] + 1;
          v0[17] = v40;
          v0[18] = v19;
          v0[16] = v38;
          if (v40 == v0[15])
          {
            v41 = v0[11];
            if (*(v19 + 16))
            {
              *v0[8] = v19;
            }

            else
            {
            }

            sub_22C36BA00();
            swift_storeEnumTagMultiPayload();
            goto LABEL_34;
          }

          v42 = v0[14];
          if (v40 < *(v42 + 16))
          {
            sub_22C378A4C(v42 + 40 * v40 + 32, (v0 + 2));
            v43 = v0[6];
            sub_22C374168(v0 + 2, v0[5]);
            sub_22C5E7BE4();
            sub_22C369B5C();
            v57 = v44 + *v44;
            v46 = *(v45 + 4);
            swift_task_alloc();
            sub_22C36CC90();
            v0[19] = v47;
            *v47 = v48;
            sub_22C38B1E8();
            sub_22C381608();

            __asm { BRAA            X5, X16 }
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        v17 = *(v13 + 8 * v20);
        ++v10;
      }

      while (!v17);
      v10 = v20;
LABEL_13:
      v17 &= v17 - 1;
      v21 = *(v19 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      sub_22C90B66C();
      v22 = *(v19 + 32);
      sub_22C386A8C();
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      v27 = 1 << v25;
      if (((1 << v25) & *(v19 + 56 + 8 * (v25 >> 6))) != 0)
      {
        continue;
      }

      break;
    }

    v19 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[7] = v56;
    v29 = *(v56 + 16);
    if (*(v56 + 24) > v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5E2B3C();
        v19 = v0[7];
      }

LABEL_21:
      *(v19 + 8 * v26 + 56) |= v27;
      v35 = *(v19 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_42;
      }

      *(v19 + 16) = v37;
      v56 = v19;
      continue;
    }

    break;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_22C5E0200(v29 + 1);
  }

  else
  {
    sub_22C5E4358(v29 + 1);
  }

  v19 = v0[7];
  v30 = *(v19 + 40);
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  sub_22C90B66C();
  v31 = *(v19 + 32);
  sub_22C386A8C();
  v34 = v32 & ~v33;
  v26 = v34 >> 6;
  v27 = 1 << v34;
  if (((1 << v34) & *(v19 + 8 * (v34 >> 6) + 56)) == 0)
  {
    goto LABEL_21;
  }

LABEL_38:
  sub_22C381608();

  sub_22C90B53C();
}

uint64_t sub_22C5DED6C()
{
  sub_22C369980();
  v2 = v0[12];
  v1 = v0[13];

  sub_22C369A24();
  v4 = v0[20];

  return v3();
}

uint64_t sub_22C5DEDD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return MultiActionRequirementEvaluator.evaluate(tool:transcript:)();
}

uint64_t static ActionRequirementEvaluating<>.defaultRequirementsEvaluator.getter@<X0>(void *a1@<X8>)
{
  if (qword_281430890 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437500;
}

uint64_t sub_22C5DEF04()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  type metadata accessor for RequirementStatus();
  swift_storeEnumTagMultiPayload();
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C5DEF74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return AlwaysSatisfiedRequirementEvaluator.evaluate(tool:transcript:)(a1);
}

uint64_t AnyActionRequirementEvaluating.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  sub_22C36D548(a3);
  sub_22C36BBA8(a1);
  v5 = *(v4 + 32);

  return v5();
}

uint64_t AnyActionRequirementEvaluating.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C5DF090()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  sub_22C5E7BE4();
  sub_22C369B5C();
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = sub_22C5DF1B0;
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v2, v3);
}

uint64_t sub_22C5DF1B0()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C5DF29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C382AF4;

  return AnyActionRequirementEvaluating.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t ActionRequirementEvaluating.eraseToAnyActionRequirementEvaluating()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22C369824(a1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  (*(v12 + 16))(v11 - v10, v3, a1);
  return AnyActionRequirementEvaluating.init<A>(_:)(a1, a2, a3);
}

void sub_22C5DF410()
{
  sub_22C3744F8();
  sub_22C3856E0(v6);
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_25:

    *v0 = v2;
    sub_22C38C3F0();
    return;
  }

  sub_22C5E7C64();
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  sub_22C36AD3C();
  sub_22C36CD2C();
  if (!v5)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v1 + 56 + 8 * v3))
      {
        sub_22C375A38();
        v5 = v13 & v12;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E7578(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1 + 56);
    }

    sub_22C379C34();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    sub_22C5E7940(v10);
    v15 = *v14;
    v16 = v14[1];
    sub_22C5E7C1C();
    sub_22C5E7F08();
    sub_22C90B66C();
    v17 = *(v2 + 32);
    sub_22C36C03C();
    sub_22C38A074(v18);
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    sub_22C5E753C(v22);
    *v23 = v15;
    v23[1] = v16;
    sub_22C37B32C();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v19)
    {
      v21 = 0;
    }

    sub_22C5E7554(v21);
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DF550()
{
  sub_22C3744F8();
  sub_22C3856E0(v6);
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_25:

    *v0 = v2;
    sub_22C38C3F0();
    return;
  }

  sub_22C5E7C64();
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  sub_22C36AD3C();
  sub_22C36CD2C();
  if (!v5)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v1 + 56 + 8 * v3))
      {
        sub_22C375A38();
        v5 = v13 & v12;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v26 != v27)
    {
      sub_22C5E7578(v25);
    }

    else
    {
      v28 = sub_22C3856F8();
      sub_22C88FAFC(v28, v29, v1 + 56);
    }

    sub_22C379C34();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    sub_22C5E7940(v10);
    v15 = *v14;
    v16 = v14[1];
    sub_22C5E7C1C();
    sub_22C5E7F08();
    sub_22C90B66C();
    v17 = *(v2 + 32);
    sub_22C36C03C();
    sub_22C38A074(v18);
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    sub_22C5E753C(v23);
    *v24 = v15;
    v24[1] = v16;
    sub_22C37B32C();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    sub_22C5E7554(v20);
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DF694()
{
  sub_22C3806F4();
  sub_22C3856E0(v5);
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v6)
  {
LABEL_25:

    *v0 = v2;
    sub_22C5E78F0();
    return;
  }

  v36 = v0;
  v37 = v1;
  v7 = 0;
  v9 = v1 + 56;
  v8 = *(v1 + 56);
  v10 = *(v1 + 32);
  sub_22C36AD3C();
  sub_22C5E7650();
  if (!v0)
  {
LABEL_4:
    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v9 + 8 * v7))
      {
        sub_22C375A38();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v32 != v33)
    {
      sub_22C5E7578(v31);
    }

    else
    {
      v34 = sub_22C3856F8();
      sub_22C88FAFC(v34, v35, v9);
    }

    v0 = v36;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C5E7528();
LABEL_9:
    sub_22C5E7D94();
    v17 = (v15 + v14 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v17 + 16);
    sub_22C375D08();
    MEMORY[0x2318B8B30](v19 >> 14);
    MEMORY[0x2318B8B30](v18 >> 14);
    MEMORY[0x2318B8B10](v20);
    v21 = sub_22C90B66C();
    sub_22C374D64(v21, *(v2 + 32));
    if (v22)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C5E7588();
    v26 = *(v3 + v25);
    sub_22C5E74D0();
    *(v3 + v27) = v28;
    sub_22C5E78E0(v29);
    *v30 = v19;
    *(v30 + 8) = v18;
    *(v30 + 16) = v20;
    sub_22C37B32C();
    v1 = v37;
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v22)
    {
      if (v23)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v22)
    {
      v24 = 0;
    }

    sub_22C5E74E0(v24);
    if (!v22)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DF814()
{
  sub_22C36BA7C();
  v4 = sub_22C37EC78();
  v5 = type metadata accessor for PromptTreeIdentifier.Label(v4);
  v6 = sub_22C3699B8(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v10)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);
  sub_22C36AD3C();
  v16 = v15 & v14;
  sub_22C5E79EC();
  v17 = v1 + 56;
  if (!v16)
  {
LABEL_4:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v11 >= v3)
      {
        break;
      }

      sub_22C5E79B0();
      if (v19)
      {
        sub_22C375A38();
        v16 = v21 & v20;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v38 != v39)
    {
      sub_22C386A8C();
      *(v0 + 56) = v40;
    }

    else
    {
      v41 = sub_22C3856F8();
      sub_22C88FAFC(v41, v42, v0 + 56);
    }

    *(v0 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    v22 = *(v0 + 48);
    v23 = *(v43 + 72);
    sub_22C5E74B8();
    sub_22C5E7270(v24, v2);
    v25 = *(v1 + 40);
    sub_22C90B62C();
    sub_22C48640C();
    sub_22C90B66C();
    v26 = *(v1 + 32);
    sub_22C36C03C();
    sub_22C38A074(v27);
    if (v28)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C5E7588();
    v33 = *(v17 + v32);
    sub_22C5E74D0();
    *(v17 + v34) = v35;
    v36 = *(v1 + 48);
    sub_22C5E74B8();
    sub_22C5E7270(v2, v37);
    sub_22C37B32C();
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    sub_22C5E7554(v29);
    if (!v28)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DFA00()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90952C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C386278();
    sub_22C5E72C8(&qword_28142FA80, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DFBB0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C902D0C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF168, &qword_22C921FD0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E73E4();
    sub_22C5E72C8(&qword_27D9BAAA8, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}