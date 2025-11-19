uint64_t AskToBuy.declineClosure.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24ED670C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED67108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

const char *sub_24ED67164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a4;
  v38 = a1;
  v41 = a2;
  v6 = sub_24F922068();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92AC68();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (!v16)
  {
    v23 = v10;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v24 = sub_24F922058();
    __swift_project_value_buffer(v24, qword_27F23DAC0);
    v25 = sub_24F922038();
    sub_24F922078();
    LODWORD(v40) = sub_24F92C048();
    v26 = v9;
    v27 = v23;
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v28 = v34;
      if ((*(v34 + 88))(v8, v6) == *MEMORY[0x277D85B00])
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v8, v6);
        v29 = "success=false";
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v25, v40, v31, "TreatmentArea", v29, v30, 2u);
      MEMORY[0x2530542D0](v30, -1, -1);
    }

    (*(v27 + 8))(v12, v26);
    v18 = "TreatmentAreaPromise";
    sub_24F92A868();
    sub_24ED6B280(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v38;
  v20 = v39;
  *(v18 + 2) = v37;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = a3;
  v21 = v19;

  v22 = v40;
  sub_24F92AC48();
  if (v22)
  {

LABEL_13:
    sub_24ED69000(v41, "TreatmentAreaPromise");
    return v18;
  }

  v18 = sub_24F92AC58();

  (*(v35 + 8))(v15, v36);
  sub_24ED69000(v41, "TreatmentAreaPromise");
  return v18;
}

void sub_24ED6761C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v47 = a7;
  v39 = a4;
  v42 = a3;
  v43 = a2;
  v44 = a1;
  v9 = sub_24F9281B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v37 = &v36 - v13;
  v15 = [objc_opt_self() defaultTreatmentStore];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = a4;
  v38 = a5;
  *(inited + 40) = a5;

  sub_24F45D828(inited);
  swift_setDeallocating();
  sub_24EB715C4(inited + 32);
  v17 = sub_24F92BA98();

  v41 = [v15 treatmentsForAreas_];

  v18 = v10;
  v19 = *(v10 + 16);
  v20 = v9;
  v19(v14, v42, v9);
  v21 = v40;
  v19(v40, v43, v20);
  v22 = *(v18 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + v25 + 16) & ~v22;
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v45;
  *(v27 + 24) = v28;
  v29 = *(v18 + 32);
  v29(v27 + v23, v37, v20);
  v30 = v44;
  *(v27 + v24) = v44;
  v31 = (v27 + v25);
  v32 = v38;
  *v31 = v39;
  v31[1] = v32;
  v29(v27 + v26, v21, v20);
  aBlock[4] = sub_24ED6B474;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_17_1;
  v33 = _Block_copy(aBlock);

  v34 = v30;

  v35 = v41;
  [v41 resultWithCompletion_];
  _Block_release(v33);
}

uint64_t sub_24ED67984(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a8;
  v40 = a3;
  v41 = a6;
  v34 = a4;
  v37 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v35 = &v34 - v16;
  v17 = *(v12 + 16);
  v17(v15);
  (v17)(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v11);
  v18 = *(v12 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + v22 + 16) & ~v18;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a4;
  v25 = *(v12 + 32);
  v25(v24 + v19, v35, v11);
  *(v24 + v20) = v41;
  v27 = v37;
  v26 = v38;
  *(v24 + v21) = v37;
  v28 = (v24 + v22);
  v29 = v39;
  *v28 = v26;
  v28[1] = v29;
  v25(v24 + v23, v36, v11);
  v30 = a2;
  v31 = v27;

  v32 = v41;
  sub_24F9298E8();
}

void sub_24ED67BA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a4;
  v81 = a3;
  *&v86 = a2;
  v80 = sub_24F922068();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  v83 = sub_24F922028();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v29 = &v78 - v28;
  if (!a1)
  {
    v81 = a8;
    v78 = v12;
    v79 = v25;
    v39 = v27;
    if (a5)
    {
      v40 = v26;
      v41 = a5;
      v42 = sub_24F92B098();
      v43 = [v41 valueForKey_];

      if (v43)
      {
        sub_24F92C648();
        swift_unknownObjectRelease();
      }

      else
      {
        v88 = 0u;
        v89 = 0u;
      }

      v90[0] = v88;
      v90[1] = v89;
      if (*(&v89 + 1))
      {
        sub_24E69A5C4(0, &qword_27F22EE30);
        if (swift_dynamicCast())
        {
          v49 = v87;
          *&v90[0] = sub_24ED6890C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
          v50 = sub_24F92CF68();
          v51 = [objc_opt_self() valueWithObject:v50 inContext:v84];
          swift_unknownObjectRelease();
          if (v51)
          {
            v52 = v83;
            if (qword_27F211060 != -1)
            {
              swift_once();
            }

            v53 = sub_24F922058();
            __swift_project_value_buffer(v53, qword_27F23DAC0);
            v54 = sub_24F922038();
            v55 = v40;
            sub_24F922078();
            v56 = sub_24F92C048();
            if (sub_24F92C478())
            {
              v84 = v49;

              v57 = v18;
              sub_24F9220A8();

              v58 = v82;
              v59 = v80;
              if ((*(v82 + 88))(v57, v80) == *MEMORY[0x277D85B00])
              {
                v60 = "[Error] Interval already ended";
              }

              else
              {
                (*(v58 + 8))(v57, v59);
                v60 = "success=true";
              }

              v75 = swift_slowAlloc();
              *v75 = 0;
              v55 = v40;
              v76 = sub_24F922008();
              _os_signpost_emit_with_name_impl(&dword_24E5DD000, v54, v56, v76, "TreatmentArea", v60, v75, 2u);
              MEMORY[0x2530542D0](v75, -1, -1);
              v49 = v84;
            }

            (*(v85 + 8))(v55, v52);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_24F93DE60;
            *(v77 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
            *(v77 + 32) = v51;
            v73 = v51;
            v74 = sub_24F9281A8();

LABEL_33:

            return;
          }

          goto LABEL_38;
        }
      }

      else
      {

        sub_24E601704(v90, &qword_27F2129B0);
      }
    }

    v61 = [objc_opt_self() valueWithNullInContext_];
    if (v61)
    {
      v62 = v61;
      v63 = v85;
      v64 = v82;
      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v65 = sub_24F922058();
      __swift_project_value_buffer(v65, qword_27F23DAC0);
      v66 = sub_24F922038();
      sub_24F922078();
      v67 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v68 = v80;
        if ((*(v64 + 88))(v15, v80) == *MEMORY[0x277D85B00])
        {
          v69 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v15, v68);
          v69 = "success=false";
        }

        v70 = swift_slowAlloc();
        *v70 = 0;
        v71 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v66, v67, v71, "TreatmentArea", v69, v70, 2u);
        MEMORY[0x2530542D0](v70, -1, -1);
      }

      (*(v63 + 8))(v39, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_24F93DE60;
      *(v72 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
      *(v72 + 32) = v62;
      v73 = v62;
      v74 = sub_24F9281A8();
      goto LABEL_33;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v30 = a1;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v31 = sub_24F922058();
  __swift_project_value_buffer(v31, qword_27F23DAC0);
  v32 = sub_24F922038();
  sub_24F922078();
  v33 = sub_24F92C048();
  v34 = sub_24F92C478();
  v35 = v83;
  if (v34)
  {

    sub_24F9220A8();

    v36 = v82;
    v37 = v80;
    if ((*(v82 + 88))(v21, v80) == *MEMORY[0x277D85B00])
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v21, v37);
      v38 = "success=false";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v32, v33, v45, "TreatmentArea", v38, v44, 2u);
    MEMORY[0x2530542D0](v44, -1, -1);
  }

  (*(v85 + 8))(v29, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v46 = swift_allocObject();
  v86 = xmmword_24F93DE60;
  *(v46 + 16) = xmmword_24F93DE60;
  v47 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v48 = MEMORY[0x253051C90](a1, v84);
  *(v46 + 56) = v47;
  *(v46 + 32) = v48;
}

unint64_t sub_24ED6890C()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  v3 = [v1 identifier];
  v4 = sub_24F92B0D8();
  v6 = v5;

  v16 = MEMORY[0x277D837D0];
  *&v15 = v4;
  *(&v15 + 1) = v6;
  sub_24E612B0C(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v8 = [v1 startDate];
  v9 = sub_24F91F648();
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F91F608();

  sub_24E612B0C(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x7461447472617473, 0xE900000000000065, v10);
  v11 = [v1 endDate];
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F91F608();

  sub_24E612B0C(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x65746144646E65, 0xE700000000000000, v12);
  return v2;
}

const char *sub_24ED68B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a2;
  v37 = a1;
  v5 = sub_24F922068();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922028();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92AC68();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v15 = MEMORY[0x25304F260]();
  if (!v15)
  {
    v39 = v7;
    v21 = v9;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v22 = sub_24F922058();
    __swift_project_value_buffer(v22, qword_27F23DAC0);
    v23 = sub_24F922038();
    v24 = v11;
    sub_24F922078();
    v25 = sub_24F92C048();
    v26 = v8;
    v27 = v21;
    if (sub_24F92C478())
    {

      v28 = v39;
      sub_24F9220A8();

      v29 = v34;
      if ((*(v34 + 88))(v28, v5) == *MEMORY[0x277D85B00])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v28, v5);
        v30 = "success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v23, v25, v32, "TreatmentAreas", v30, v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    (*(v27 + 8))(v24, v26);
    v17 = "TreatmentAreasPromise";
    sub_24F92A868();
    sub_24ED6B280(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v16 = v15;
  v17 = swift_allocObject();
  v18 = v37;
  *(v17 + 2) = v38;
  *(v17 + 3) = v16;
  *(v17 + 4) = a3;
  v19 = v18;

  v20 = v39;
  sub_24F92AC48();
  if (v20)
  {

LABEL_13:
    sub_24ED69000(v40, "TreatmentAreasPromise");
    return v17;
  }

  v17 = sub_24F92AC58();

  (*(v35 + 8))(v14, v36);
  sub_24ED69000(v40, "TreatmentAreasPromise");
  return v17;
}

uint64_t sub_24ED69000(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_24ED69290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a2;
  v34 = a1;
  v6 = sub_24F9281B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v27 = &v27 - v10;
  v12 = [objc_opt_self() defaultTreatmentStore];

  sub_24F45D828(v13);

  v14 = sub_24F92BA98();

  v29 = [v12 treatmentsForAreas_];

  v15 = *(v7 + 16);
  v15(v11, v30, v6);
  v15(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v6);
  v16 = *(v7 + 80);
  v17 = (v16 + 32) & ~v16;
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + v18 + 8) & ~v16;
  v20 = swift_allocObject();
  v21 = v33;
  *(v20 + 16) = v32;
  *(v20 + 24) = v21;
  v22 = *(v7 + 32);
  v22(v20 + v17, v27, v6);
  v23 = v34;
  *(v20 + v18) = v34;
  v22(v20 + v19, v28, v6);
  aBlock[4] = sub_24ED6AFDC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_73;
  v24 = _Block_copy(aBlock);

  v25 = v23;

  v26 = v29;
  [v29 resultWithCompletion_];
  _Block_release(v24);
}

uint64_t sub_24ED69574(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a6;
  v36 = a3;
  v33 = a4;
  v34 = a1;
  v31 = a2;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = *(v11 + 16);
  v17(&v31 - v15, a5, v10, v14);
  (v17)(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
  v18 = *(v11 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v18 + v21 + 8) & ~v18;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v33;
  v24 = *(v11 + 32);
  v24(v23 + v19, v16, v10);
  v26 = v34;
  v25 = v35;
  *(v23 + v20) = v35;
  *(v23 + v21) = v26;
  v24(v23 + v22, v32, v10);
  v27 = v31;
  v28 = v26;

  v29 = v25;
  sub_24F9298E8();
}

void sub_24ED69774(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v92 = a4;
  v93 = a3;
  *&v91 = a2;
  v89 = sub_24F922068();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  v17 = sub_24F922028();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v25 = &v81 - v24;
  if (!a1)
  {
    v85 = v13;
    v87 = a6;
    if (a5)
    {
      v86 = v23;
      v83 = v18;
      v84 = v17;
      v33 = a5;
      v93 = sub_24E6091DC(MEMORY[0x277D84F90]);
      v82 = v33;
      v103 = sub_24F92BD48();
      v34 = sub_24F92BD58();
      v35 = sub_24ED6B280(&qword_27F22EE18, MEMORY[0x277CC9CC0]);
      sub_24F92C4D8();
      if (*(&v100 + 1))
      {
        v36 = MEMORY[0x277D837D0];
        v37 = &unk_27F22EE28;
        v88 = v35;
        do
        {
          v97[0] = v99;
          v97[1] = v100;
          v98[0] = v101;
          v98[1] = v102;
          sub_24E643A9C(v97, v96);
          if (swift_dynamicCast())
          {
            v44 = v37;
            v45 = v94;
            v46 = v95;
            sub_24E643A9C(v98, v96);
            sub_24E69A5C4(0, &qword_27F22EE30);
            if (swift_dynamicCast())
            {
              v38 = v93;
              v39 = v34;
              v40 = v36;
              v41 = v94;
              v42 = sub_24ED6890C();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v96[0] = v38;
              sub_24E820B80(v42, v45, v46, isUniquelyReferenced_nonNull_native);

              v36 = v40;
              v34 = v39;

              v93 = v96[0];
            }

            else
            {
            }

            v37 = v44;
          }

          sub_24E601704(v97, v37);
          sub_24F92C4D8();
        }

        while (*(&v100 + 1));
      }

      *&v99 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EE20);
      v47 = sub_24F92CF68();
      v48 = [objc_opt_self() valueWithObject:v47 inContext:v92];
      swift_unknownObjectRelease();
      v49 = v84;
      v50 = v83;
      if (v48)
      {
        v51 = v90;
        if (qword_27F211060 != -1)
        {
          swift_once();
        }

        v52 = sub_24F922058();
        __swift_project_value_buffer(v52, qword_27F23DAC0);
        v53 = sub_24F922038();
        v54 = v86;
        sub_24F922078();
        v55 = sub_24F92C048();
        if (sub_24F92C478())
        {

          v56 = v85;
          sub_24F9220A8();

          v57 = v89;
          if ((*(v51 + 88))(v56, v89) == *MEMORY[0x277D85B00])
          {
            v58 = "[Error] Interval already ended";
          }

          else
          {
            (*(v51 + 8))(v56, v57);
            v58 = "success=true";
          }

          v72 = swift_slowAlloc();
          *v72 = 0;
          v54 = v86;
          v73 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v53, v55, v73, "TreatmentAreas", v58, v72, 2u);
          MEMORY[0x2530542D0](v72, -1, -1);
        }

        (*(v50 + 8))(v54, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_24F93DE60;
        *(v74 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
        *(v74 + 32) = v48;
        v75 = v48;
        v76 = sub_24F9281A8();

LABEL_37:

        return;
      }

      __break(1u);
    }

    else
    {
      v64 = [objc_opt_self() valueWithNewObjectInContext_];
      if (v64)
      {
        v65 = v64;
        if (qword_27F211060 != -1)
        {
          swift_once();
        }

        v66 = sub_24F922058();
        __swift_project_value_buffer(v66, qword_27F23DAC0);
        v67 = sub_24F922038();
        sub_24F922078();
        v68 = sub_24F92C048();
        if (sub_24F92C478())
        {

          sub_24F9220A8();

          v69 = v90;
          v70 = v89;
          if ((*(v90 + 88))(v10, v89) == *MEMORY[0x277D85B00])
          {
            v71 = "[Error] Interval already ended";
          }

          else
          {
            (*(v69 + 8))(v10, v70);
            v71 = "success=false";
          }

          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v67, v68, v78, "TreatmentAreas", v71, v77, 2u);
          MEMORY[0x2530542D0](v77, -1, -1);
        }

        (*(v18 + 8))(v20, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_24F93DE60;
        *(v79 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
        *(v79 + 32) = v65;
        v80 = v65;
        v76 = sub_24F9281A8();

        goto LABEL_37;
      }
    }

    __break(1u);
    return;
  }

  v26 = a1;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v27 = sub_24F922058();
  __swift_project_value_buffer(v27, qword_27F23DAC0);
  v28 = sub_24F922038();
  sub_24F922078();
  v29 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v30 = v90;
    v31 = v89;
    if ((*(v90 + 88))(v16, v89) == *MEMORY[0x277D85B00])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v16, v31);
      v32 = "success=false";
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v28, v29, v60, "TreatmentAreas", v32, v59, 2u);
    MEMORY[0x2530542D0](v59, -1, -1);
  }

  (*(v18 + 8))(v25, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v61 = swift_allocObject();
  v91 = xmmword_24F93DE60;
  *(v61 + 16) = xmmword_24F93DE60;
  v62 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v63 = MEMORY[0x253051C90](a1, v92);
  *(v61 + 56) = v62;
  *(v61 + 32) = v63;
}

uint64_t sub_24ED6A5CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v13 = sub_24F922058();
  __swift_project_value_buffer(v13, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();

  v14 = sub_24F922038();
  v15 = sub_24F92C058();

  v16 = sub_24F92C478();
  v47 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v46 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v5;
    v50 = v19;
    v20 = a2;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_24E7620D4(a1, v20, &v50);
    v22 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v14, v15, v22, "TreatmentAreaPromise", "area=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v21;
    a2 = v20;
    v5 = v49;
    MEMORY[0x2530542D0](v23, -1, -1);
    v24 = v18;
    v7 = v46;
    MEMORY[0x2530542D0](v24, -1, -1);
  }

  v45 = *(v5 + 16);
  v45(v48, v12, v4);
  sub_24F922098();
  swift_allocObject();
  v46 = sub_24F922088();
  v25 = *(v5 + 8);
  v49 = v5 + 8;
  v25(v12, v4);
  sub_24F922038();
  sub_24F921FF8();

  v26 = sub_24F922038();
  v27 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v28 = v7;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v4;
    v31 = a2;
    v32 = v30;
    v50 = v30;
    *v29 = 136315138;
    v33 = v47;
    *(v29 + 4) = sub_24E7620D4(v47, v31, &v50);
    v34 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v34, "TreatmentArea", "area=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v35 = v32;
    a2 = v31;
    v4 = v44;
    MEMORY[0x2530542D0](v35, -1, -1);
    v36 = v29;
    v7 = v28;
    MEMORY[0x2530542D0](v36, -1, -1);
  }

  else
  {

    v33 = v47;
  }

  v45(v48, v7, v4);
  swift_allocObject();
  v37 = sub_24F922088();
  v38 = v7;
  v39 = v37;
  v25(v38, v4);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v40 = sub_24F92C448();
  MEMORY[0x28223BE20](v40);
  *(&v43 - 4) = v46;
  *(&v43 - 3) = v39;
  *(&v43 - 2) = v33;
  *(&v43 - 1) = a2;
  v41 = sub_24F92C458();

  return v41;
}

uint64_t sub_24ED6AA80(uint64_t a1)
{
  v34 = a1;
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v12 = sub_24F922038();
  v13 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "TreatmentAreasPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_24F922098();
  swift_allocObject();
  v32 = sub_24F922088();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v33 = v19;
  v20(v10, v1);
  sub_24F922038();
  sub_24F921FF8();
  v21 = sub_24F922038();
  v22 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v23 = swift_slowAlloc();
    v31 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v21, v22, v25, "TreatmentAreas", "", v24, 2u);
    v26 = v24;
    v1 = v31;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_24F922088();
  v20(v4, v1);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  *(&v31 - 4) = v32;
  *(&v31 - 3) = v27;
  *(&v31 - 2) = v34;
  v29 = sub_24F92C458();

  return v29;
}

uint64_t sub_24ED6AE64()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6AECC()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + v5 + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_24ED6AFDC(void *a1, void *a2)
{
  v5 = *(sub_24F9281B8() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v8);

  return sub_24ED69574(a1, a2, v9, v10, v2 + v7, v11, v2 + ((v6 + v8 + 8) & ~v6));
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED6B0B4()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + ((v3 + v6 + 8) & ~v3), v1);

  return swift_deallocObject();
}

void sub_24ED6B1D4()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);

  sub_24ED69774(v6, v7, v0 + v3, v8, v9, v0 + ((v2 + v5 + 8) & ~v2));
}

uint64_t sub_24ED6B280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED6B2E8()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6B350()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_24ED6B474(void *a1, void *a2)
{
  v5 = *(sub_24F9281B8() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24ED67984(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v7, *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v6 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6));
}

uint64_t sub_24ED6B544()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + ((v3 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3), v1);

  return swift_deallocObject();
}

void sub_24ED6B688()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);

  sub_24ED67BA8(v9, v10, v0 + v3, v7, v8, v11, v12, v0 + ((v2 + v6 + 16) & ~v2));
}

uint64_t ArticlePagePresenter.init(objectGraph:articlePage:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode) = 2;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shareAction) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage) = 0;
  sub_24E99091C(a3, v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v7 = sub_24EC8415C(a1, 0, 0, 0);

  if (a2)
  {
    *(v7 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes) = sub_24EB43744();

    sub_24ED6CEF4(a2, 1);

    sub_24E601704(a3, &qword_27F228530);
  }

  else
  {
    sub_24E601704(a3, &qword_27F228530);
  }

  return v7;
}

uint64_t sub_24ED6B978@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24ED6B9CC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED6BA60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED6BACC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED6BBCC()
{
  sub_24F01DD24();
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_initialContentTypes))
  {
    v2 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *(v5 + 32);

      v6(v7, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();

    sub_24F01B85C(v8, 0);

    *(v0 + v1) = 0;
  }

  v9 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    (*(v10 + 40))(v11, v10);
    swift_unknownObjectRelease();
  }

  return sub_24ED6D4E8();
}

uint64_t sub_24ED6BD40(char a1)
{
  v3 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A088();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v1 + 32) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
  {
    v27 = v5;
    sub_24E99091C(v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_24E601704(v11, &qword_27F228530);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      if (*(v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) != 1 || (a1 & 1) != 0)
      {
        *(v1 + 32) = 1;
        v17 = v1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v18 + 8) + 24) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        sub_24F01DFD8(0);
        v20 = v1;
        swift_beginAccess();
        v21 = v27;
        if (*(v1 + 24))
        {
          *v8 = 1;
          v22 = v28;
          (*(v28 + 104))(v8, *MEMORY[0x277D222A0], v6);

          sub_24F92A0D8();
          v20 = v1;

          (*(v22 + 8))(v8, v6);
          v21 = v27;
        }

        v29[0] = 0xD000000000000011;
        v29[1] = 0x800000024FA53E10;
        sub_24F92C7F8();
        (*(v13 + 16))(v21 + *(v3 + 20), v15, v12);
        type metadata accessor for JSIntentDispatcher();
        sub_24F928FD8();
        sub_24F92A758();
        sub_24F929C28();

        sub_24F928FE8();

        sub_24F929BF8();

        v23 = sub_24F929C08();

        sub_24EB472E8(v21, v23, "GameStoreKit/ArticlePagePresenter.swift", 39, 2);
        v30 = sub_24F929638();
        v31 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(v29);
        sub_24F929628();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EE70);
        sub_24F92A938();

        __swift_destroy_boxed_opaque_existential_1(v29);
        v24 = swift_allocObject();
        *(v24 + 16) = sub_24ED6E490;
        *(v24 + 24) = v20;
        v25 = sub_24E74EC40();
        swift_retain_n();
        v26 = sub_24F92BEF8();
        v30 = v25;
        v31 = MEMORY[0x277D225C0];
        v29[0] = v26;
        sub_24F92A958();

        sub_24ED6EB80(v21, type metadata accessor for ArticlePageIntent);
        (*(v13 + 8))(v15, v12);
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
        return (*(v13 + 8))(v15, v12);
      }
    }
  }

  return result;
}

uint64_t sub_24ED6C374@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_24EB43744();
  a2[1] = result;
  return result;
}

uint64_t sub_24ED6C3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A078();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED6CEF4(a1, 0);
  v10 = a3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24ED6D4E8();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v10 + 8);
    v14 = swift_getObjectType();
    (*(*(*(v13 + 8) + 16) + 8))(v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v10 + 8);
    v16 = swift_getObjectType();
    (*(v15 + 40))(v16, v15);
    swift_unknownObjectRelease();
  }

  v17 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  result = swift_beginAccess();
  if (v20)
  {
    v23 = 0;
    v24 = v18 + 32;
    v45 = v20 - 1;
    v46 = v18 + 32;
    v47 = v10;
    v48 = a3;
    while (1)
    {
      v25 = v24 + 40 * v23;
      v26 = v23;
      while (1)
      {
        if (v26 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_24E65864C(v25, v56);
        if (*(*(a1 + v21) + 16))
        {
          break;
        }

LABEL_10:
        ++v26;
        result = sub_24E6585F8(v56);
        v25 += 40;
        if (v20 == v26)
        {
          v10 = v47;
          a3 = v48;
          goto LABEL_21;
        }
      }

      sub_24E76D934(v56);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_24E6585F8(v56);
      MEMORY[0x253050F00](v28);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v23 = v26 + 1;
      result = sub_24F92B638();
      v19 = v55;
      v24 = v46;
      v29 = v45 == v26;
      v10 = v47;
      a3 = v48;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_21:

  sub_24F01B85C(v19, 0);

  swift_beginAccess();
  v30 = *(a3 + 16);
  if (v30)
  {

    v31 = v49;
    sub_24F91F638();
    sub_24F91F5E8();
    v33 = v32;
    (*(v50 + 8))(v31, v51);
    v34 = v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v34 = v33;
    *(v34 + 8) = 0;
    v35 = *(v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v35 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  swift_beginAccess();
  if (*(a3 + 24))
  {
    v36 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v37 = sub_24F928818();
    v38 = v52;
    (*(*(v37 - 8) + 16))(v52, a1 + v36, v37);
    v40 = v53;
    v39 = v54;
    (*(v53 + 104))(v38, *MEMORY[0x277D22290], v54);

    sub_24F92A0C8();

    (*(v40 + 8))(v38, v39);
  }

  swift_beginAccess();
  v41 = *(a3 + 32);
  *(a3 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v10 + 8);
    v43 = swift_getObjectType();
    (*(*(*(v42 + 8) + 24) + 16))(v43);
    swift_unknownObjectRelease();
  }

  return sub_24F01DFD8(v41);
}

void sub_24ED6C9A8(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 8) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24F01DFD8(v10);
  sub_24E99091C(a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v9 + *(v7 + 20));
  *v9 = a1;
  swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14)
  {
    v32 = v4;
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError);
    v31 = swift_allocError();
    sub_24EBDEC38(v9, v15);
    v16 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_24E617130(0, v17[2] + 1, 1, v17);
      *(v14 + v16) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_24E617130((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v17[v21 + 4] = v31;
    *(v14 + v16) = v17;
    swift_endAccess();

    v4 = v32;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError);
    v23 = swift_allocError();
    sub_24EBDEC38(v9, v24);
    *v6 = v23;
    v25 = v33;
    (*(v33 + 104))(v6, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v25 + 8))(v6, v4);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v11 + 8);
    v27 = swift_getObjectType();
    sub_24ED6EBE0(&qword_27F22B028, type metadata accessor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v9, v29);
    (*(*(*(v26 + 8) + 24) + 24))(v28, v27);
    swift_unknownObjectRelease();
    sub_24ED6EB80(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24ED6EB80(v9, type metadata accessor for PresenterError);
  }
}

uint64_t sub_24ED6CE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24ED6CEF4(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  if (v39 == 1)
  {
    sub_24E99091C(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &v35 - v8);
    v10 = sub_24F91F4A8();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) == 1;
    sub_24E601704(v9, &qword_27F228530);
  }

  else
  {
    v11 = 1;
  }

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_hasData) = v11;
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
    swift_beginAccess();
    *(v3 + v13) = v12;
  }

  v14 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  v18 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  result = swift_beginAccess();
  if (v17)
  {
    v20 = 0;
    v21 = v15 + 32;
    v35 = v17 - 1;
    v36 = v15 + 32;
    while (1)
    {
      v22 = v21 + 40 * v20;
      v23 = v20;
      while (1)
      {
        if (v23 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        sub_24E65864C(v22, v40);
        if (*(*(a1 + v18) + 16))
        {
          break;
        }

LABEL_9:
        ++v23;
        result = sub_24E6585F8(v40);
        v22 += 40;
        if (v17 == v23)
        {
          goto LABEL_17;
        }
      }

      sub_24E76D934(v40);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = sub_24E6585F8(v40);
      MEMORY[0x253050F00](v25);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v20 = v23 + 1;
      result = sub_24F92B638();
      v16 = v44;
      v21 = v36;
      if (v35 == v23)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_9;
  }

LABEL_17:

  v26 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  *(v3 + v26) = v16;

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);

  *(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shareAction) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);

  v27 = type metadata accessor for ArticlePage();
  v41 = v27;
  v42 = &protocol witness table for BasePage;
  v28 = sub_24ED6EBE0(&qword_27F216890, type metadata accessor for ArticlePage);
  v43 = v28;
  v40[0] = a1;
  swift_beginAccess();

  sub_24EA095A4(v40, v3 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v40, &qword_27F224F98);
  LOBYTE(v26) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v29 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  swift_beginAccess();
  *(v3 + v29) = v26;
  LOBYTE(v26) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v30 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  result = swift_beginAccess();
  *(v3 + v30) = v26;
  if ((v38 & 1) == 0)
  {
    if (v39)
    {
      return result;
    }

    goto LABEL_23;
  }

  v31 = v37;
  sub_24E99091C(v3 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, v37);
  v32 = sub_24F91F4A8();
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  result = sub_24E601704(v31, &qword_27F228530);
  v34 = v39;
  if (v33 == 1)
  {
    v34 = 0;
  }

  if ((v34 & 1) == 0)
  {
LABEL_23:
    result = swift_beginAccess();
    if (*(v3 + 16))
    {
      v42 = &protocol witness table for BasePage;
      v43 = v28;
      v41 = v27;
      v40[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v40);

      return sub_24E601704(v40, &qword_27F224F98);
    }
  }

  return result;
}

uint64_t sub_24ED6D4E8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  result = swift_beginAccess();
  if (*(v0 + v1))
  {
    v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);

      v6(v7, ObjectType, v4);

      result = swift_unknownObjectRelease();
    }
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup))
  {
    v8 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = *(v9 + 24);

    v11(v12, v10, v9);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    v13 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v13 + 8);
      v15 = swift_getObjectType();
      v16 = *(v14 + 32);

      v16(v17, v15, v14);
LABEL_10:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24ED6D6A8()
{
  if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup) && !*(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {

    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  while (2)
  {
    v9 = v6;
    v6 = v5;
    while (2)
    {
      v5 = v6;
      v6 = v4;
      while ((v2 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = v6 + 1;
        v10 = *(*(v2 + 32 + 8 * v6) + 16);
        switch(v10)
        {
          case '\'':
            goto LABEL_23;
          case '4':
            goto LABEL_25;
          case 'C':
            goto LABEL_23;
        }

LABEL_15:
        v6 = v4;
        if (v4 == v3)
        {
          v6 = v9;
          goto LABEL_26;
        }
      }

      v13 = v9;
      v14 = v8;
      result = MEMORY[0x253052270](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      v12 = *(result + 16);
      swift_unknownObjectRelease();
      if (v12 == 39)
      {
        v8 = v14;
        v9 = v13;
LABEL_23:
        v7 = 0;
        if (v4 != v3)
        {
          continue;
        }

        return v6;
      }

      break;
    }

    v8 = v14;
    v9 = v13;
    if (v12 == 67)
    {
      goto LABEL_23;
    }

    if (v12 != 52)
    {
      goto LABEL_15;
    }

LABEL_25:
    v8 = 0;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_26:

  if (v7)
  {
    return v6;
  }

  return v5;
}

uint64_t sub_24ED6D8C0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v16[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_24E601704(&v13, &qword_27F22CE30);
  }

  if (!*(&v14 + 1))
  {
    return sub_24E601704(&v13, &qword_27F22CE30);
  }

  sub_24E612E28(&v13, v16);
  v3 = v17;
  v4 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v11 + 16))(&v13, v10, v11);
      (*(*(*(v8 + 8) + 8) + 8))(v6, &v13, ObjectType);

      swift_unknownObjectRelease();
      sub_24E601704(&v13, &qword_27F2129B0);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_24ED6DAC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_footerLockup);
  if (v1)
  {
    v2 = *(v1 + 264);
    if (v2)
    {
      v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        v8[3] = type metadata accessor for Lockup();
        v8[0] = v1;
        v6 = *(*(v4 + 8) + 8);
        v7 = *(v6 + 8);

        v7(v2, v8, ObjectType, v6);

        swift_unknownObjectRelease();
        sub_24E601704(v8, &qword_27F2129B0);
      }
    }
  }
}

uint64_t sub_24ED6DBC4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24ED6DC2C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x253052270](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED6DCD8(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v6);
    v6 = result;
    *(v2 + v5) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED6DDA0(uint64_t a1, unint64_t a2)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
    {
      goto LABEL_3;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (sub_24F92C738() < a1)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (a1 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a2)
  {
    goto LABEL_31;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  if (a2 < a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1 == a2)
  {
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    type metadata accessor for Shelf();
    swift_bridgeObjectRetain_n();
    v11 = a1;
    do
    {
      v12 = v11 + 1;
      sub_24F92C8C8();
      v11 = v12;
    }

    while (a2 != v12);
LABEL_16:

    if (v9)
    {
      v3 = sub_24F92CB18();
      v4 = v13;
      a1 = v14;
      v9 = v15;

      if ((v9 & 1) == 0)
      {
LABEL_19:
        sub_24E6B8B64(v3, v4, a1, v9);
        v17 = v16;
        goto LABEL_26;
      }
    }

    else
    {
      v3 = v8 & 0xFFFFFFFFFFFFFF8;
      v4 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9 = (2 * a2) | 1;
    }

    sub_24F92CEF8();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(v18 + 16);

    if (!__OFSUB__(v9 >> 1, a1))
    {
      if (v19 == (v9 >> 1) - a1)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v17)
        {
          return v17;
        }

        v17 = MEMORY[0x277D84F90];
LABEL_26:
        swift_unknownObjectRelease();
        return v17;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ED6DFD8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    return result > a1;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    return result > a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ED6E058()
{
  v1 = v0;
  v2 = sub_24F91FA18();
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    result = sub_24F92C738();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= result)
  {
    return 0;
  }

  result = sub_24F91FA18();
  v1 = *(v0 + v3);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v9 = result;

    v6 = MEMORY[0x253052270](v9, v1);

    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v1 + 8 * result + 32);

LABEL_8:
    v7 = *(v6 + 24);

    v8 = *(v7 + 16);

    return sub_24F91FA08() < v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED6E17C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED6E1C0(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24ED6E2A0()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &qword_27F228530);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view);
}

uint64_t ArticlePagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_pageUrl, &qword_27F228530);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view);

  return v0;
}

uint64_t ArticlePagePresenter.__deallocating_deinit()
{
  ArticlePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED6E498()
{

  return swift_deallocObject();
}

uint64_t sub_24ED6E4D8(uint64_t a1)
{
  result = sub_24ED6EBE0(&qword_27F22EE78, type metadata accessor for ArticlePagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArticlePagePresenter()
{
  result = qword_27F22EE80;
  if (!qword_27F22EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED6E57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED6E5D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24ED6E640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED6E69C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24ED6E700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24ED6E7D0()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED6EB80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED6EBE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED6EC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_24ED6ECC8(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

id PendingPageRender.add(updateError:)(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E617130(0, v4[2] + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_24E617130((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a1;
  *(v1 + v3) = v4;
  swift_endAccess();
  return a1;
}

void PendingPageRender.initialRequestEndTime.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 != *&a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
LABEL_7:
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    *(v9 + 40) = (a2 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

uint64_t PendingPageRender.use(pageRenderEventFrom:)(uint64_t a1)
{
  v2 = v1;
  sub_24E60169C(a1, v8, &qword_27F224F98);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_24E601704(v8, &qword_27F224F98);
    v5 = 0;
  }

  *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event) = v5;

  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent);
  swift_beginAccess();
  *(v6 + 40) = 1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_24F929FB8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t PendingPageRender.disappearTime.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_24EBFE1C8(a1, v1 + v3);
  swift_endAccess();
  sub_24ED71208();
  return sub_24E601704(a1, &qword_27F22B5C8);
}

uint64_t PendingPageRender.observeAssets(_:)(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader);
  if (!*(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader))
  {
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 32);
    v8 = swift_unknownObjectRetain();
    v7(v8, &protocol witness table for PendingPageRender, ObjectType, a2);
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
    v10 = *(a2 + 8);

    v11 = v10(ObjectType, a2);
    swift_beginAccess();
    *(v9 + 40) = (v11 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    *v3 = v5;
    v3[1] = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_24ED6F318()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    goto LABEL_5;
  }

  *(v1 + 48) = v4;
  v5 = v4 == 0;
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  if (!*(v1 + 48))
  {
LABEL_5:
    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

uint64_t PendingPageRender.add(requestsFrom:)()
{
  swift_beginAccess();

  sub_24EA0A8D8(v0);
  return swift_endAccess();
}

uint64_t PendingPageRender.add(errorsFrom:)()
{
  swift_beginAccess();

  sub_24EA0A904(v0);
  return swift_endAccess();
}

uint64_t sub_24ED6F4A4()
{
  result = sub_24F92B098();
  qword_27F22EE90 = result;
  return result;
}

uint64_t sub_24ED6F500()
{
  result = sub_24F92B098();
  qword_27F22EE98 = result;
  return result;
}

char *PendingPageRender.init(bag:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v106 = a2;
  v107 = a1;
  v102 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = v82 - v7;
  v8 = sub_24F9288E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate;
  sub_24E74EC40();
  v13 = sub_24F92BEF8();
  type metadata accessor for Gate();
  swift_allocObject();
  v14 = Gate.init(queue:passingDelay:)(v13, 1.0);
  v98 = v12;
  *&v3[v12] = v14;
  v15 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent;
  type metadata accessor for Gate.Condition();
  v16 = swift_allocObject();
  swift_weakInit();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v97 = v15;
  *&v3[v15] = v16;
  v95 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event] = 0;
  v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime;
  v18 = swift_allocObject();
  swift_weakInit();
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  v96 = v17;
  *&v3[v17] = v18;
  v19 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime;
  v21 = swift_allocObject();
  swift_weakInit();
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v94 = v20;
  *&v3[v20] = v21;
  v22 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime];
  *v22 = 0;
  v22[8] = 1;
  v23 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  v24 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v25 = *(*(v24 - 8) + 56);
  v93 = v23;
  v25(&v3[v23], 1, 1, v24);
  v26 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime];
  *v29 = 0;
  v29[8] = 1;
  v30 = MEMORY[0x277D84F90];
  v91 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests] = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady;
  v32 = swift_allocObject();
  swift_weakInit();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  v92 = v31;
  *&v3[v31] = v32;
  v33 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime;
  v34 = swift_allocObject();
  swift_weakInit();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  v90 = v33;
  *&v3[v33] = v34;
  v35 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime];
  *v35 = 0;
  v35[8] = 1;
  v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode] = 2;
  v36 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle;
  v37 = swift_allocObject();
  swift_weakInit();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  v89 = v36;
  *&v3[v36] = v37;
  v38 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader];
  *v38 = 0;
  *(v38 + 1) = 0;
  v87 = v38;
  v39 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime;
  v40 = swift_allocObject();
  swift_weakInit();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  v88 = v39;
  *&v3[v39] = v40;
  v41 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime];
  *v41 = 0;
  v41[8] = 1;
  v42 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests;
  type metadata accessor for Gate.CountingCondition();
  v43 = swift_allocObject();
  *(v43 + 48) = 0;
  swift_weakInit();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 1;
  v86 = v42;
  *&v3[v42] = v43;
  v44 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime;
  v45 = swift_allocObject();
  swift_weakInit();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  v85 = v44;
  *&v3[v44] = v45;
  v46 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports;
  v47 = swift_allocObject();
  swift_weakInit();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  v84 = v46;
  *&v3[v46] = v47;
  v82[1] = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports] = 0;
  v48 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityInquiry;
  v49 = [objc_allocWithZone(ASKNetworkQualityInquiry) init];
  v83 = v48;
  *&v3[v48] = v49;
  v50 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry];
  v51 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  *(v50 + 3) = type metadata accessor for NWPathNetworkInquiry();
  *(v50 + 4) = &protocol witness table for NWPathNetworkInquiry;
  *v50 = v51;
  *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors] = v30;
  v52 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
  *v52 = sub_24ED726A4;
  v52[1] = 0;
  v53 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost];
  *v53 = 0;
  *(v53 + 1) = 0;
  if (qword_27F2108B0 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D21C38], v8);
  v54 = v103;
  sub_24F92A368();
  (*(v9 + 8))(v11, v8);
  v55 = v105;
  sub_24F92A408();
  (*(v104 + 8))(v54, v55);
  v56 = v108;
  LOBYTE(v108) = 1;
  v109 = 0;
  v110 = v56;
  if (sub_24EA76044())
  {
    v57 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPipeline;
    v58 = sub_24F929158();
    v59 = *(v58 - 8);
    (*(v59 + 16))(&v3[v57], v106, v58);
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v60 = v99;
    sub_24F92A448();
    v61 = v101;
    sub_24F92A408();
    (*(v100 + 8))(v60, v61);
    v62 = v109;
    v63 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic];
    *v63 = v108;
    *(v63 + 1) = v62;
    v64 = &v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery];
    *v64 = 1;
    *(v64 + 1) = 0;
    *(v64 + 2) = v56;
    *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSessionDuration] = v56;
    *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSamplingPercentageUsers] = 0;
    v65 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate;
    v66 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_gate];
    swift_beginAccess();
    *(v66 + 32) = 0xD00000000000001DLL;
    *(v66 + 40) = 0x800000024FA5C830;

    v67 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasEvent];
    swift_beginAccess();
    *(v67 + 24) = 0xD000000000000026;
    *(v67 + 32) = 0x800000024FA5C850;

    Gate.add(condition:)();

    v68 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime];
    swift_beginAccess();
    *(v68 + 24) = 0xD00000000000002ELL;
    *(v68 + 32) = 0x800000024FA5C880;

    Gate.add(condition:)();

    v69 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime];
    swift_beginAccess();
    *(v69 + 24) = 0xD00000000000002BLL;
    *(v69 + 32) = 0x800000024FA5C8B0;

    Gate.add(condition:)();

    v70 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime];
    swift_beginAccess();
    *(v70 + 24) = 0xD000000000000037;
    *(v70 + 32) = 0x800000024FA5C8E0;

    Gate.add(condition:)();

    v71 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests];
    swift_beginAccess();
    *(v71 + 24) = 0xD000000000000029;
    *(v71 + 32) = 0x800000024FA5C920;

    Gate.add(condition:)();

    v72 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime];
    swift_beginAccess();
    *(v72 + 24) = 0xD00000000000002ELL;
    *(v72 + 32) = 0x800000024FA5C950;

    Gate.add(condition:)();

    v73 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady];
    swift_beginAccess();
    *(v73 + 24) = 0xD00000000000002BLL;
    *(v73 + 32) = 0x800000024FA5C980;

    Gate.add(condition:)();

    v74 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime];
    swift_beginAccess();
    *(v74 + 24) = 0xD000000000000018;
    *(v74 + 32) = 0x800000024FA5C9B0;

    Gate.add(condition:)();

    v75 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports];
    swift_beginAccess();
    *(v75 + 24) = 0xD000000000000036;
    *(v75 + 32) = 0x800000024FA5C9D0;

    Gate.add(condition:)();

    v76 = *&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle];
    swift_beginAccess();
    *(v76 + 24) = 0xD00000000000002FLL;
    *(v76 + 32) = 0x800000024FA5CA10;

    Gate.add(condition:)();

    v77 = *&v3[v65];
    v78 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v79 = *(v77 + 120);
    *(v77 + 120) = sub_24ED72EE8;
    *(v77 + 128) = v78;

    sub_24E824448(v79);

    sub_24ED70D54();

    (*(v59 + 8))(v106, v58);
  }

  else
  {
    v80 = sub_24F929158();
    (*(*(v80 - 8) + 8))(v106, v80);

    sub_24E601704(&v3[v93], &qword_27F22B5C8);

    swift_unknownObjectRelease();

    sub_24E601704(v50, &qword_27F22B760);

    sub_24E824448(*&v3[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_24ED704F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24ED70548();
  }

  return result;
}

uint64_t sub_24ED70548()
{
  v1 = v0;
  v2 = sub_24F928698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929AB8();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event);
  if (v11)
  {
    v50 = v2;
    v51 = v8;
    v52 = result;
    v53 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
    v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic);
    v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPageRenderTopic + 8);
    swift_beginAccess();
    *(v11 + 24) = v13;
    *(v11 + 32) = v12;

    v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime);
    swift_beginAccess();
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    swift_beginAccess();
    *(v11 + 40) = v15;
    *(v11 + 48) = v14;
    v16 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime);
    swift_beginAccess();
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    swift_beginAccess();
    *(v11 + 56) = v17;
    *(v11 + 64) = v16;
    v18 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
    swift_beginAccess();
    v19 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
    v21 = 0;
    if (!v20)
    {
      v21 = *(v18 + *(v19 + 20));
    }

    v22 = v20 != 0;
    IsPerformanceTesting = 1;
    swift_beginAccess();
    *(v11 + 72) = v21;
    *(v11 + 80) = v22;
    v24 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime);
    v25 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8);
    swift_beginAccess();
    *(v11 + 104) = v24;
    *(v11 + 112) = v25;
    v26 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
    v27 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8);
    swift_beginAccess();
    *(v11 + 120) = v26;
    *(v11 + 128) = v27;
    v28 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime);
    v29 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime + 8);
    swift_beginAccess();
    *(v11 + 136) = v28;
    *(v11 + 144) = v29;
    v30 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime);
    v31 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime + 8);
    swift_beginAccess();
    *(v11 + 152) = v30;
    *(v11 + 160) = v31;
    v32 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requests;
    swift_beginAccess();
    v33 = *(v1 + v32);
    swift_beginAccess();
    *(v11 + 96) = v33;

    v34 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports);
    swift_beginAccess();
    *(v11 + 168) = v34;

    v35 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v36 = *(v1 + v35);
    swift_beginAccess();
    *(v11 + 176) = v36;

    v37 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime);
    swift_beginAccess();
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    swift_beginAccess();
    *(v11 + 216) = v38;
    *(v11 + 224) = v37;
    *(v11 + 257) = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode);
    LOBYTE(v54) = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery);
    v55 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_lottery + 8);
    if ((sub_24EA75D24() & 1) == 0)
    {
      IsPerformanceTesting = ASKBuildTypeIsPerformanceTesting();
    }

    swift_beginAccess();
    *(v11 + 273) = IsPerformanceTesting;
    v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_xpSessionDuration);
    swift_beginAccess();
    *(v11 + 264) = v39;
    *(v11 + 272) = 0;
    swift_beginAccess();
    *(v11 + 280) = 0;
    *(v11 + 288) = 0;
    if (sub_24EA76370())
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v40 = sub_24F92AAE8();
      __swift_project_value_buffer(v40, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      v56 = type metadata accessor for PageRenderMetricsEvent();
      v54 = v11;

      sub_24F928438();
      sub_24E601704(&v54, &qword_27F2129B0);
      sub_24F92A588();
    }

    v41 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
    swift_beginAccess();
    v42 = *v41;

    v42(v43);

    PageRenderMetricsEvent.metricsData.getter(v5);
    sub_24F929138();

    (*(v3 + 8))(v5, v50);
    v44 = [objc_opt_self() defaultCenter];
    if (qword_27F2106D0 != -1)
    {
      swift_once();
    }

    [v44 postNotificationName:qword_27F22EE90 object:v1];

    v45 = (v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v46 = *v45;
    if (*v45)
    {
      swift_endAccess();

      v46(v47);
      sub_24E824448(v46);

      (*(v51 + 8))(v10, v52);
    }

    else
    {
      (*(v51 + 8))(v10, v52);
      swift_endAccess();
    }

    v48 = *v45;
    *v45 = 0;
    v45[1] = 0;
    sub_24E824448(v48);
    *(v1 + v53) = 0;
  }

  return result;
}

uint64_t sub_24ED70D54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityInquiry);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v12 = sub_24ED73568;
    v13 = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24ED72624;
    v11 = &block_descriptor_74;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v5 investigateNetworksWithCompletionBlock_];
    _Block_release(v4);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry, &v14, &qword_27F22B760);
  if (!v15)
  {
    return sub_24E601704(&v14, &qword_27F22B760);
  }

  sub_24E612C80(&v14, aBlock);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(aBlock, v11);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLowDataMode) = (*(v8 + 4))(v7, v8) & 1;
  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_24ED70F54(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = v4 + *a3;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  v9 = *(v4 + *a4);
  swift_beginAccess();
  *(v9 + 40) = (a2 & 1) == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

void (*PendingPageRender.appearTime.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED710A8;
}

uint64_t PendingPageRender.disappearTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22B5C8);
}

uint64_t sub_24ED7111C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E60169C(a1, &v10 - v5, &qword_27F22B5C8);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_24EBFE1C8(v6, v7 + v8);
  swift_endAccess();
  sub_24ED71208();
  return sub_24E601704(v6, &qword_27F22B5C8);
}

uint64_t sub_24ED71208()
{
  v1 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929FB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v26 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v17, 1, v1);
  if (!result)
  {
    v19 = v0;
    sub_24ED73588(v0 + v17, v4);
    v20 = *(v6 + 32);
    v20(v13, v4, v5);
    v20(v16, v13, v5);
    v21 = v26;
    (*(v6 + 16))(v26, v16, v5);
    sub_24F929F98();
    sub_24ED735EC();
    v22 = sub_24F92AFF8();
    v23 = *(v6 + 8);
    v23(v8, v5);
    if (v22)
    {
      v23(v21, v5);
    }

    else
    {
      sub_24F929FA8();
      v24 = sub_24F92AFF8();
      v23(v8, v5);
      v23(v21, v5);
      if ((v24 & 1) == 0)
      {
        return (v23)(v16, v5);
      }
    }

    v25 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event;
    if (!*(v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_event))
    {
      type metadata accessor for PageRenderMetricsEvent();
      swift_allocObject();
      *(v19 + v25) = sub_24EE230B8();
    }

    sub_24ED70548();
    return (v23)(v16, v5);
  }

  return result;
}

uint64_t (*PendingPageRender.disappearTime.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED715BC;
}

uint64_t sub_24ED715BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24ED71208();
  }

  return result;
}

BOOL PendingPageRender.isLayoutPending.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

uint64_t sub_24ED71640(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  *(v3 + 40) = (v2 & 1) == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t PendingPageRender.isLayoutPending.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  v3 = a1 ^ 1;
  swift_beginAccess();
  *(v2 + 40) = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

void (*PendingPageRender.isLayoutPending.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 80) = (*(v5 + 40) & 1) == 0;
  return sub_24ED717EC;
}

void sub_24ED717EC(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 72) + 40) = (*(*a1 + 80) & 1) == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  free(v1);
}

void (*PendingPageRender.rootViewModelPresentTime.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED71904;
}

void sub_24ED71910(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[6];
    v7 = *(v6 + *a3);
    v8 = *(v6 + v5[7] + 8);
    swift_beginAccess();
    *(v7 + 40) = (v8 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  free(v5);
}

uint64_t sub_24ED719C8()
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F230F98;
  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
  swift_beginAccess();
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
  swift_beginAccess();
  *(v3 + 40) = 1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

Swift::Void __swiftcall PendingPageRender.didBeginFetchingAssets()()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  v6 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8) == 1)
  {
    sub_24F91F638();
    sub_24F91F5E8();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    *v6 = v8;
    *(v6 + 8) = 0;
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingOnScreenAssets()()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

Swift::Void __swiftcall PendingPageRender.tryToEstablishUserReadyTime()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasUserReadyTime);
  swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    if (*(v2 + 40) == 1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      if (*(v3 + 40) == 1)
      {
        v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
        swift_beginAccess();
        if (*(v4 + 40) == 1)
        {
          if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader))
          {
            v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoader + 8);
            ObjectType = swift_getObjectType();
            v7 = *(v5 + 16);
            swift_unknownObjectRetain();
            if ((v7(ObjectType, v5) & 1) == 0 && ((*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestStartTime + 8) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime + 8) & 1) == 0))
            {
              v8 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime);
              swift_beginAccess();
              if (v8[1])
              {
                v9 = MEMORY[0x277D84F90];
              }

              else
              {
                v10 = *v8;
                v9 = sub_24E617688(0, 1, 1, MEMORY[0x277D84F90]);
                v12 = *(v9 + 2);
                v11 = *(v9 + 3);
                if (v12 >= v11 >> 1)
                {
                  v9 = sub_24E617688((v11 > 1), v12 + 1, 1, v9);
                }

                *(v9 + 2) = v12 + 1;
                *&v9[8 * v12 + 32] = v10;
              }

              if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8))
              {
                v13 = *(v9 + 2);
                if (!v13)
                {

                  if (qword_27F210580 != -1)
                  {
                    swift_once();
                  }

                  v14 = sub_24F92AAE8();
                  __swift_project_value_buffer(v14, qword_27F39C3E0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
                  sub_24F928468();
                  *(swift_allocObject() + 16) = xmmword_24F93A400;
                  sub_24F928448();
                  sub_24F9283A8();
                  sub_24F92A5A8();

                  goto LABEL_34;
                }
              }

              else
              {
                v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
                v16 = v9;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v16 = sub_24E617688(0, *(v16 + 2) + 1, 1, v16);
                }

                v9 = v16;
                v18 = *(v16 + 2);
                v17 = *(v16 + 3);
                v13 = v18 + 1;
                if (v18 >= v17 >> 1)
                {
                  v9 = sub_24E617688((v17 > 1), v18 + 1, 1, v9);
                }

                *(v9 + 2) = v13;
                *&v9[8 * v18 + 32] = v15;
              }

              v19 = *(v9 + 4);
              v20 = v13 - 1;
              if (v13 != 1)
              {
                v21 = (v9 + 40);
                do
                {
                  v22 = *v21++;
                  v23 = v22;
                  if (v19 < v22)
                  {
                    v19 = v23;
                  }

                  --v20;
                }

                while (v20);
              }

              v24 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_userReadyTime;
              *v24 = v19;
              *(v24 + 8) = 0;
              *(v1 + 40) = 1;
              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_24EA6BFA0();
              }

              v25 = [objc_opt_self() defaultCenter];
              if (qword_27F2106D8 != -1)
              {
                swift_once();
              }

              [v25 postNotificationName:qword_27F22EE98 object:v0];
            }

LABEL_34:
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingAllAssets()()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

uint64_t sub_24ED72340(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void (*PendingPageRender.initialRequestEndTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_24ED72428;
}

void sub_24ED72428(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    PendingPageRender.initialRequestEndTime.setter(*&v4, v5);
    goto LABEL_12;
  }

  v6 = *(v3 + 88) + *(v3 + 96);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v7 != v4)
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_9:
    v9 = *(*(v3 + 88) + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
    v10 = v5 ^ 1;
    swift_beginAccess();
    *(v9 + 40) = v10;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }

LABEL_12:

  free(v3);
}

uint64_t sub_24ED7251C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkQualityReports) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasNetworkQualityReports);
  LOBYTE(v2) = *(v1 + v2) != 0;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EA6BFA0();
  }

  return result;
}

uint64_t sub_24ED725C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24ED7251C(v1);
  }

  return result;
}

uint64_t sub_24ED72624(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EF78);
  v2 = sub_24F92B5A8();

  v1(v2);
}

uint64_t sub_24ED726A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v2 = sub_24F929AB8();
  v3 = __swift_project_value_buffer(v2, qword_27F22E3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED7274C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t PendingPageRender.contextProvider.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PendingPageRender.contextProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24ED728D0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
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

uint64_t sub_24ED72970(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_24E5FCA4C(v3);
  return sub_24E824448(v8);
}

uint64_t PendingPageRender.didPost.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1);
  return v2;
}

uint64_t PendingPageRender.didPost.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24E824448(v6);
}

uint64_t PendingPageRender.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime, &qword_27F22B5C8);

  swift_unknownObjectRelease();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_networkInquiry, &qword_27F22B760);

  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost));
  return v0;
}

uint64_t PendingPageRender.__deallocating_deinit()
{
  PendingPageRender.deinit();

  return swift_deallocClassInstance();
}

void sub_24ED72D9C()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F5E8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

uint64_t sub_24ED72EB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED72F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22B5C8);
}

uint64_t sub_24ED72FF0@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_isLayoutReady);
  result = swift_beginAccess();
  *a2 = (*(v3 + 40) & 1) == 0;
  return result;
}

uint64_t keypath_getTm_3@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_24ED73128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_24ED731B4()
{
  sub_24F929158();
  if (v0 <= 0x3F)
  {
    sub_24ED73360();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24ED73360()
{
  if (!qword_27F22EF60)
  {
    type metadata accessor for PendingPageRender.DisappearTimeAndReason(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22EF60);
    }
  }
}

uint64_t sub_24ED733CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F929FB8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED7344C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F929FB8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24ED734BC()
{
  result = sub_24F929FB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED73530()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED73588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED735EC()
{
  result = qword_27F22EF80;
  if (!qword_27F22EF80)
  {
    sub_24F929FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EF80);
  }

  return result;
}

uint64_t static MetadataRibbonTextStyle.fontSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id static MetadataRibbonTextStyle.textStyle(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D22620];
  v4 = sub_24F922118();
  (*(*(v4 - 8) + 104))(a2, v3, v4);

  return a1;
}

uint64_t static MetadataRibbonTextStyle.useCase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F922378();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D22618];
  v6 = sub_24F922118();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_24ED73838(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED738B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MetadataRibbonTextStyle()
{
  result = qword_27F22EF88;
  if (!qword_27F22EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED73974()
{
  result = sub_24F922118();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED739E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_24F92B7F8();
  v2[6] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_24ED73A7C, v4, v3);
}

uint64_t sub_24ED73A7C()
{
  if ([*(v0[4] + OBJC_IVAR____TtC12GameStoreKit20ViewPresentationTask_request) viewIdentifier])
  {

    sub_24ED741FC();
    swift_allocError();
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    v4 = [objc_allocWithZone(type metadata accessor for BackgroundAssetConsentViewController()) init];
    v0[9] = v4;
    v5 = sub_24F92B7E8();
    v0[10] = v5;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_task_alloc();
    v0[12] = v7;
    v8 = sub_24ED74258();
    *v7 = v0;
    v7[1] = sub_24ED73C38;
    v9 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 2, v5, v9, 0xD000000000000018, 0x800000024FA5CE20, sub_24ED74250, v6, v8);
  }
}

uint64_t sub_24ED73C38()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24ED73DD0;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24ED73D5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24ED73D5C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ED73DD0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

id sub_24ED73E58(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_24ED7437C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24ED7412C;
  aBlock[3] = &block_descriptor_75;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a3;

  [v14 setResponseBlock_];
  _Block_release(v13);
  return [v15 presentViewController:v14 animated:1 completion:0];
}

void sub_24ED74040(void *a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  if (a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CEC4D0]);
    v4 = a1;
    [v3 initWithNumber_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0);
    sub_24F92B798();
  }

  else
  {
    sub_24ED74414();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0);
    sub_24F92B788();
  }
}

void sub_24ED7412C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_24ED741FC()
{
  result = qword_27F22EFA0;
  if (!qword_27F22EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFA0);
  }

  return result;
}

unint64_t sub_24ED74258()
{
  result = qword_27F22EFA8;
  if (!qword_27F22EFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22EFA8);
  }

  return result;
}

uint64_t sub_24ED742A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24ED7437C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFB0);
  v3 = *(v1 + 16);

  sub_24ED74040(a1, v3);
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ED74414()
{
  result = qword_27F22EFB8;
  if (!qword_27F22EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFB8);
  }

  return result;
}

unint64_t sub_24ED7447C()
{
  result = qword_27F22EFC0;
  if (!qword_27F22EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EFC0);
  }

  return result;
}

void sub_24ED744D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BB8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BC0);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v19 - v14;
  if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerSubscriptionsAdded) & 1) == 0)
  {
    v20 = v12;
    swift_getKeyPath();
    v21 = a1;
    sub_24F91F368();

    sub_24E69A5C4(0, &qword_27F222300);
    v16 = sub_24F92BEF8();
    v22 = v16;
    v17 = sub_24F92BEB8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_24E602068(&qword_27F226BC8, &qword_27F226BB8);
    sub_24EA9B900();
    sub_24F923118();
    sub_24E601704(v6, &qword_27F21F468);

    (*(v8 + 8))(v10, v7);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_24E602068(&qword_27F226BD0, &qword_27F226BC0);
    sub_24F923148();

    (*(v20 + 8))(v15, v11);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
    a1 = v21;
  }

  v18 = [a1 currentItem];
  sub_24ED74930(v18, a1);
}

uint64_t sub_24ED748A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_24F922FB8();
  }

  return result;
}

void sub_24ED74930(void *a1, void *a2)
{
  v79 = a2;
  v4 = sub_24F92C0E8();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFF0);
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v59 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EFF8);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F000);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v76 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F008);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F010);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  if (a1)
  {
    if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerItemSubscriptionsAdded) & 1) == 0)
    {
      v66 = OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerItemSubscriptionsAdded;
      v61 = v19;
      swift_getKeyPath();
      v65 = v6;
      v64 = a1;
      v22 = a1;
      v60 = v2;
      sub_24F91F368();

      v67 = sub_24E69A5C4(0, &qword_27F222300);
      v23 = sub_24F92BEF8();
      time.value = v23;
      v71 = sub_24F92BEB8();
      v24 = *(v71 - 8);
      v72 = *(v24 + 56);
      v70 = v24 + 56;
      v72(v13, 1, 1, v71);
      v62 = MEMORY[0x277CC9E08];
      sub_24E602068(&qword_27F22F018, &qword_27F22F008);
      v69 = sub_24EA9B900();
      v68 = v13;
      sub_24F923118();
      sub_24E601704(v13, &qword_27F21F468);

      (*(v15 + 8))(v17, v14);
      v25 = swift_allocObject();
      v26 = v60;
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v22;
      v63 = MEMORY[0x277CBCD60];
      sub_24E602068(&qword_27F22F020, &qword_27F22F010);
      v28 = v22;
      sub_24F923148();

      (*(v61 + 8))(v21, v18);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      swift_getKeyPath();
      v29 = v73;
      sub_24F91F368();

      v30 = sub_24F92BEF8();
      time.value = v30;
      v31 = v68;
      v72(v68, 1, 1, v71);
      sub_24E602068(&qword_27F22F028, &qword_27F22EFF8);
      v32 = v75;
      v33 = v76;
      sub_24F923118();
      sub_24E601704(v31, &qword_27F21F468);

      (*(v74 + 8))(v29, v32);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24E602068(&qword_27F22F030, &qword_27F22F000);
      v34 = v78;
      sub_24F923148();

      (*(v77 + 8))(v33, v34);
      swift_beginAccess();
      v35 = v26;
      sub_24F922F58();
      swift_endAccess();

      [v28 duration];
      CMTimeGetSeconds(&time);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_24F941C80;
      v37 = sub_24F92C258();
      LODWORD(v34) = v38;
      v40 = v39;
      v41 = HIDWORD(v38);
      v42 = objc_opt_self();
      time.value = v37;
      time.timescale = v34;
      time.flags = v41;
      time.epoch = v40;
      *(v36 + 32) = [v42 valueWithCMTime_];
      sub_24E69A5C4(0, &qword_27F22F038);
      v43 = sub_24F92B588();

      v44 = sub_24F92BEF8();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v28;
      v87 = sub_24ED75B8C;
      v88 = v46;
      time.value = MEMORY[0x277D85DD0];
      *&time.timescale = 1107296256;
      time.epoch = sub_24EAF8248;
      v86 = &block_descriptor_76;
      v47 = _Block_copy(&time);
      v48 = v28;

      v49 = [v79 addBoundaryTimeObserverForTimes:v43 queue:v44 usingBlock:v47];
      _Block_release(v47);

      sub_24F92C648();
      swift_unknownObjectRelease();
      v50 = OBJC_IVAR____TtC12GameStoreKit13VideoObserver_timeObserver;
      swift_beginAccess();
      sub_24E8E7708(&time, v35 + v50);
      swift_endAccess();
      v51 = [objc_opt_self() defaultCenter];
      v52 = v48;
      v53 = v81;
      sub_24F92C0F8();

      v54 = sub_24F92BEF8();
      time.value = v54;
      v55 = v68;
      v72(v68, 1, 1, v71);
      sub_24ED75BAC();
      v57 = v83;
      v56 = v84;
      sub_24F923118();
      sub_24E601704(v55, &qword_27F21F468);

      (*(v82 + 8))(v53, v57);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24E602068(&qword_27F22F040, &qword_27F22EFF0);
      v58 = v65;
      sub_24F923148();

      (*(v80 + 8))(v56, v58);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      *(v35 + v66) = 1;
    }
  }
}

void sub_24ED75594(void *a1, uint64_t a2, void *a3)
{
  if ((*a1 - 1) <= 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      if ([a3 error])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
        sub_24E69A5C4(0, &qword_27F22C210);
        if (swift_dynamicCast())
        {
          v6 = v7;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      sub_24F922FB8();
    }
  }
}

uint64_t sub_24ED756AC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_24F922FB8();
  }

  return result;
}

uint64_t sub_24ED75738(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    [a2 currentTime];
    v5.value = CMTimeGetSeconds(&v5);
    *&v5.timescale = 0;
    LOBYTE(v5.epoch) = 2;
    sub_24F922FB8();
  }

  return result;
}

uint64_t sub_24ED757FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_24F922FB8();
  }

  return result;
}

id sub_24ED75938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit13VideoObserverC6ChangeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_24ED75A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24ED75A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_24ED75A98(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id sub_24ED75ACC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_24ED75B00()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

id sub_24ED75B50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackLikelyToKeepUp];
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ED75BAC()
{
  result = qword_27F21F480;
  if (!qword_27F21F480)
  {
    sub_24F92C0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F480);
  }

  return result;
}

uint64_t sub_24ED75C20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_24E615E00(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_24E612C80(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457A9C(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_24F457A9C((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = MEMORY[0x28223BE20](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_24ED8F474(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_24ED75E50(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_24F91F648();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458640(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24F458640(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

id Shelf.withItems(_:ofType:removeMarkers:isHidden:)(uint64_t a1, unsigned __int8 *a2, char a3, int a4)
{
  v5 = v4;
  v121 = a1;
  v131 = *v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v96 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v92 - v9;
  v10 = sub_24F91F6B8();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v92 - v19;
  v20 = *a2;
  sub_24E65864C(v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v161);
  if (v20 == 104)
  {
    v20 = *(v4 + 16);
  }

  if (a3)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v4 + 18);
  }

  v118 = v21;
  v117 = *(v4 + 17);
  v22 = v4[5];
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v126, &qword_27F228530);
  v23 = (v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v24 = (v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *&v128 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v122 = v20;
  v120 = v22;
  if (a4 == 2)
  {
    v123 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  }

  else
  {
    v123 = a4;
  }

  v115 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v116 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v101 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v109 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v107 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v26 = *v23;
  v25 = v23[1];
  v114 = v26;
  v119 = v25;
  v105 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v110 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v27 = v24[1];
  v100 = *v24;
  v29 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v28 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v102 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v30 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v31 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v134 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v104 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v32 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v33 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v158 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v159 = v33;
  v160 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v34 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v156 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v157 = v34;
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v125, &unk_27F22EC30);
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v127, &qword_27F213E68);
  sub_24E60169C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v124, &qword_27F228530);
  v35 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v99 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v36 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v37 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v97 = v36;
  v132 = swift_allocObject();
  sub_24E60169C(v161, &v153, &qword_27F235830);
  v133 = v37;
  v112 = v28;
  v113 = v29;
  v111 = v30;
  v106 = v32;
  v103 = v27;
  if (*(&v154 + 1))
  {
    v150 = v153;
    v151 = v154;
    v152 = v155;

    v38 = v128;
    sub_24ED8F454(v128);

    sub_24E951F10(v29, v28, v31, v134, v32);
  }

  else
  {

    v39 = v128;
    sub_24ED8F454(v128);

    sub_24E951F10(v29, v28, v31, v134, v32);

    v40 = v93;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v42 = v35;
    v44 = v43;
    (*(v94 + 8))(v40, v95);
    *&v146 = v41;
    v38 = v39;
    *(&v146 + 1) = v44;
    v35 = v42;
    v37 = v133;
    sub_24F92C7F8();
    sub_24E601704(&v153, &qword_27F235830);
  }

  v45 = v132;
  v46 = v132 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v47 = v151;
  *v46 = v150;
  *(v46 + 16) = v47;
  *(v46 + 32) = v152;
  sub_24E60169C(v127, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  v48 = v122;
  *(v45 + 16) = v122;
  v49 = v118;
  *(v45 + 17) = v117;
  *(v45 + 18) = v49;
  *(v45 + 24) = v121;
  LOBYTE(v150) = v48;

  v51 = v45;
  *(v45 + 32) = sub_24F2EBA74(v50, &v150);
  sub_24E60169C(v126, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v115;
  v52 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v54 = v119;
  v53 = v120;
  *v52 = v114;
  v52[1] = v54;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v116;
  *(v51 + 40) = v53;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v123 & 1;
  v55 = v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v56 = v159;
  *(v55 + 32) = v158;
  *(v55 + 48) = v56;
  *(v55 + 64) = v160;
  v57 = v157;
  *v55 = v156;
  *(v55 + 16) = v57;
  v98 = v35;
  v108 = v31;
  if (v38 <= 1)
  {

    sub_24EA1F04C(&v156, &v150);
    v58 = v110;
    v59 = v107;
LABEL_14:
    v60 = (v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v61 = v101;
    v62 = v103;
    *v60 = v100;
    v60[1] = v62;
    *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v61;
    *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v128;

    goto LABEL_15;
  }

  v87 = objc_opt_self();

  sub_24EA1F04C(&v156, &v150);
  result = [v87 defaultWorkspace];
  if (!result)
  {
    goto LABEL_59;
  }

  v88 = result;
  v89 = sub_24F92B098();
  v90 = [v88 applicationIsInstalled_];

  v58 = v110;
  v59 = v107;
  if (v90)
  {
    goto LABEL_14;
  }

  sub_24ED8F464(v128);

  v91 = (v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v91 = 0;
  v91[1] = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_15:
  sub_24E60169C(v125, v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v124, v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v104;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v109;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v59;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v105;
  v64 = v111;
  v63 = v112;
  if (!v58)
  {
    LOBYTE(v150) = v48;
    v58 = sub_24F2EBC94();
  }

  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v58;
  v65 = v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v65 = v113;
  *(v65 + 8) = v63;
  v66 = v134;
  *(v65 + 16) = v108;
  *(v65 + 24) = v66;
  *(v65 + 32) = v106;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v102;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v64;
  v67 = *(v51 + 24);
  v68 = sub_24EA90A64();

  v69 = 0;
  v149 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v68);
  v134 = (v67 + 32);
  v70 = 0uLL;
  v128 = xmmword_24F950E90;
  while (2)
  {
    while (2)
    {
      v71 = *(v67 + 16);
      if (v69 == v71)
      {
LABEL_19:
        v141 = 0;
        v69 = v71;
        v139 = v70;
        v140 = v70;
        goto LABEL_23;
      }

      while (1)
      {
        if ((v69 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v69 >= *(v67 + 16))
        {
          goto LABEL_54;
        }

        sub_24E615E00(v134 + 40 * v69++, &v139);
LABEL_23:
        v137[0] = v139;
        v137[1] = v140;
        v138 = v141;
        if (!*(&v140 + 1))
        {
          memset(v142, 0, 24);
          *(&v142[1] + 8) = v128;
LABEL_31:
          sub_24E601704(v142, &qword_27F226830);
          v148 = 0;
          v146 = 0u;
          v147 = 0u;
          goto LABEL_32;
        }

        sub_24E612C80(v137, v136);
        sub_24E615E00(v136, &v135);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v142, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v136);
        if (*(&v142[1] + 1) == 1)
        {
          goto LABEL_31;
        }

        v143 = v142[0];
        v144 = v142[1];
        v145 = *&v142[2];
        if (*(&v142[1] + 1))
        {
          break;
        }

        sub_24E601704(&v143, &qword_27F222730);
        v70 = 0uLL;
        if (v69 == v71)
        {
          goto LABEL_19;
        }
      }

      *(&v144 + 1) = *(&v142[1] + 1);
      result = sub_24E60169C(&v143, v142, &qword_27F222730);
      if (!*(&v142[1] + 1))
      {
        goto LABEL_58;
      }

      sub_24E612C80(v142, &v146);
      sub_24E601704(&v143, &qword_27F222730);
      if (!*(&v147 + 1))
      {
LABEL_32:
        sub_24E601704(&v146, &qword_27F222730);
        v150 = 0u;
        v151 = 0u;
        v152 = 0;
        goto LABEL_33;
      }

      sub_24E612C80(&v146, &v153);
      v76 = *(&v154 + 1);
      v77 = v155;
      v78 = __swift_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
      v79 = v76;
      v68 = v78;
      if ((PersonalizableModel.needsClientPersonalization.getter(v79, v77) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v153);
        v37 = v133;
        v70 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v153, &v150);
    v37 = v133;
LABEL_33:
    v153 = v150;
    v154 = v151;
    v155 = v152;
    if (*(&v151 + 1))
    {
      sub_24E612C80(&v153, &v146);
      v72 = *(&v147 + 1);
      v73 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
      v74 = v72;
      v37 = v133;
      (*(v73 + 16))(&v143, v74, v73);
      LOBYTE(v73) = v143;
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v68 = &v149;
      sub_24ED7CC74(&v150, v73);
      v70 = 0uLL;
      continue;
    }

    break;
  }

  v69 = v132;
  *(v132 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v149;
  v80 = (v69 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v81 = v98;
  *v80 = v99;
  v80[1] = v81;
  v80[2] = v97;
  v80[3] = v37;
  v68 = *(v69 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (!(v68 >> 62))
  {
    v82 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_42;
    }

LABEL_49:
    sub_24E601704(v124, &qword_27F228530);
    sub_24E601704(v127, &qword_27F213E68);
    sub_24E601704(v125, &unk_27F22EC30);
    sub_24E601704(v126, &qword_27F228530);
    sub_24E601704(v161, &qword_27F235830);
    return v69;
  }

LABEL_55:
  v82 = sub_24F92C738();
  if (!v82)
  {
    goto LABEL_49;
  }

LABEL_42:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
  if (v82 >= 1)
  {
    v134 = (v68 & 0xC000000000000001);
    v83 = (v96 + 8);

    v84 = 0;
    v85 = v68;
    do
    {
      if (v134)
      {
        MEMORY[0x253052270](v84, v68);
      }

      else
      {
      }

      ++v84;
      sub_24E602068(&qword_27F226838, &qword_27F225160);
      sub_24F9288B8();
      v86 = v129;
      sub_24F9288C8();

      __swift_destroy_boxed_opaque_existential_1(&v150);
      (*v83)(v86, v130);
      v68 = v85;
    }

    while (v82 != v84);

    v69 = v132;
    goto LABEL_49;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *Shelf.mergingWith(_:)(char *a1)
{
  v2 = v1;
  v183 = *v1;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v166 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v137 - v4;
  v5 = sub_24F91F6B8();
  v164 = *(v5 - 8);
  v165 = v5;
  MEMORY[0x28223BE20](v5);
  v163 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v168 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v178 = &v137 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v11 - 8);
  *&v179 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v173 = &v137 - v14;
  MEMORY[0x28223BE20](v15);
  v177 = &v137 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v17 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v172 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v137 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v137 - v23;
  MEMORY[0x28223BE20](v25);
  v176 = &v137 - v26;
  v171 = sub_24F91F648();
  v175 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v182 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v174 = &v137 - v29;
  LOBYTE(v205) = v1[16];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v30 == 0xEB00000000726564)
  {
  }

  else
  {
    v31 = sub_24F92CE08();

    if ((v31 & 1) == 0)
    {
LABEL_6:
      v32 = 0;
      goto LABEL_8;
    }
  }

  if (v1[17] == 104)
  {
    goto LABEL_6;
  }

  LOBYTE(v205) = v1[17];
  LOBYTE(v199) = a1[16];
  v32 = Shelf.ContentType.isCompatible(with:)(&v199);
LABEL_8:
  LOBYTE(v205) = v1[16];
  LOBYTE(v199) = a1[16];
  v33 = Shelf.ContentType.isCompatible(with:)(&v199);
  if ((v32 & 1) == 0 && (v33 & 1) == 0)
  {
    v34 = sub_24F929618();
    sub_24ED8F50C(&qword_27F22F048, MEMORY[0x277D21F98]);
    swift_allocError();
    v35 = v2[16];
    *(v36 + 24) = &type metadata for Shelf.ContentType;
    *v36 = v35;
    v37 = a1[16];
    *(v36 + 56) = &type metadata for Shelf.ContentType;
    *(v36 + 32) = v37;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D21F90], v34);
    swift_willThrow();
    return v2;
  }

  sub_24F91F638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213910);
  v38 = *(v17 + 72);
  v39 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v162 = swift_allocObject();
  v40 = a1;
  v41 = (v162 + v39);
  v184 = v40;
  sub_24E60169C(&v40[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v162 + v39, &unk_27F22EC30);
  sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v38 + v41, &unk_27F22EC30);
  v167 = v41;
  sub_24E60169C(v41, v24, &unk_27F22EC30);
  sub_24E6C4F90(v24, v21);
  v42 = v175 + 48;
  v43 = (v175 + 32);
  v44 = v171;
  v161 = *(v175 + 48);
  if (v161(v21, 1, v171) == 1)
  {
    sub_24E601704(v21, &unk_27F22EC30);
    v45 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v159 = *v43;
  v160 = (v42 - 16);
  v159(v182, v21, v44);
  v45 = MEMORY[0x277D84F90];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = sub_24E616878(0, *(v45 + 16) + 1, 1, v45);
LABEL_14:
    v47 = *(v45 + 16);
    v46 = *(v45 + 24);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_24E616878(v46 > 1, v47 + 1, 1, v45);
    }

    *(v45 + 16) = v47 + 1;
    v48 = v45 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v47;
    v44 = v171;
    v43 = v160;
    v159(v48, v182, v171);
LABEL_17:
    sub_24E60169C(v38 + v167, v24, &unk_27F22EC30);
    sub_24E6C4F90(v24, v21);
    if (v161(v21, 1, v44) == 1)
    {
      sub_24E601704(v21, &unk_27F22EC30);
      v49 = v184;
    }

    else
    {
      v50 = *v43;
      (*v43)(v182, v21, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v184;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_24E616878(0, *(v45 + 16) + 1, 1, v45);
      }

      v53 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v53 >= v52 >> 1)
      {
        v45 = sub_24E616878(v52 > 1, v53 + 1, 1, v45);
      }

      *(v45 + 16) = v53 + 1;
      v50((v45 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v53), v182, v44);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    v54 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v54);
    *(&v137 - 2) = v174;
    v55 = v170;
    v56 = sub_24ED75E50(sub_24ED65D78, (&v137 - 4), v45);
    v137 = v55;
    sub_24ED78CC4(v56, v176);

    LOBYTE(v205) = v2[16];
    if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v57 == 0xEE0072656B72614DLL)
    {
      goto LABEL_26;
    }

    v58 = sub_24F92CE08();

    if (v58)
    {
      goto LABEL_28;
    }

    LOBYTE(v205) = v2[16];
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v135 == 0xEB00000000726564)
    {
LABEL_26:

LABEL_28:
      LODWORD(v162) = v49[16];
      v59 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v136 = sub_24F92CE08();

    if (v136)
    {
      goto LABEL_28;
    }

    LODWORD(v162) = v2[16];
    v59 = *(v2 + 3);

LABEL_29:
    sub_24E65864C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_id], v210);
    LODWORD(v159) = v2[17];
    *&v205 = v59;

    sub_24EA0AEC0(v60);
    v61 = v205;
    v170 = sub_24EF94F20(*(v49 + 5), *(v2 + 5), 1);
    sub_24E60169C(&v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v177, &qword_27F228530);
    v158 = v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
    v157 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy];
    v62 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8];
    v156 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup];
    v63 = *&v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
    if (v63)
    {
      v142 = *&v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
      v148 = v63;
    }

    else
    {
      v64 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
      v142 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
      v148 = v64;
    }

    v160 = v62;
    v169 = *&v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
    if (!v169)
    {
      v169 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
    }

    v154 = v63;
    v161 = v61;
    v65 = *&v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
    v66 = v65;
    if (v65 == 1)
    {
      v66 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
      sub_24ED8F454(v66);
    }

    v167 = v66;
    v155 = v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden];
    v147 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal];
    v146 = v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior];
    v145 = v49[OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized];
    v149 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn];
    v67 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background];
    v68 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8];
    v69 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24];
    v182 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16];
    v70 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32];
    v153 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel];
    *&v205 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];

    sub_24ED8F454(v65);
    v154 = v67;
    v151 = v69;
    v152 = v68;
    v150 = v70;
    sub_24E951F10(v67, v68, v182, v69, v70);

    v72 = v184;
    sub_24EA0AE94(v71);
    v143 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints];
    v144 = v205;
    v73 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48];
    v207 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32];
    v208 = v73;
    v209 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64];
    v74 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16];
    v205 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata];
    v206 = v74;
    sub_24E60169C(v176, v172, &unk_27F22EC30);
    v75 = v168;
    sub_24E60169C(&v72[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v168, &qword_27F213E68);
    v76 = sub_24F929608();
    v77 = *(v76 - 8);
    v78 = *(v77 + 48);
    if (v78(v75, 1, v76) == 1)
    {
      sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v178, &qword_27F213E68);
      if (v78(v75, 1, v76) != 1)
      {
        sub_24E601704(v75, &qword_27F213E68);
      }
    }

    else
    {
      v79 = v178;
      (*(v77 + 32))(v178, v75, v76);
      (*(v77 + 56))(v79, 0, 1, v76);
    }

    v80 = v179;
    sub_24E60169C(&v72[OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl], v179, &qword_27F228530);
    v81 = sub_24F91F4A8();
    v82 = *(v81 - 8);
    v83 = *(v82 + 48);
    if (v83(v80, 1, v81) == 1)
    {
      sub_24E60169C(&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl], v173, &qword_27F228530);
      if (v83(v80, 1, v81) != 1)
      {
        sub_24E601704(v80, &qword_27F228530);
      }
    }

    else
    {
      v84 = v173;
      (*(v82 + 32))(v173, v80, v81);
      (*(v82 + 56))(v84, 0, 1, v81);
    }

    v85 = v184;
    v86 = *&v184[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
    if (!v86)
    {
      v86 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
    }

    v88 = *&v85[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
    v87 = *&v85[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8];
    v89 = *&v85[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24];
    v139 = *&v85[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16];
    v90 = swift_allocObject();
    sub_24E60169C(v210, &v202, &qword_27F235830);
    v140 = v87;
    v138 = v89;
    if (*(&v203 + 1))
    {
      v199 = v202;
      v200 = v203;
      v201 = v204;
    }

    else
    {

      v91 = v163;
      sub_24F91F6A8();
      v92 = sub_24F91F668();
      v94 = v93;
      (*(v164 + 8))(v91, v165);
      *&v196 = v92;
      *(&v196 + 1) = v94;
      sub_24F92C7F8();
      sub_24E601704(&v202, &qword_27F235830);
    }

    v95 = v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
    v96 = v200;
    *v95 = v199;
    *(v95 + 16) = v96;
    *(v95 + 32) = v201;
    sub_24E60169C(v178, v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
    v97 = v162;
    *(v90 + 16) = v162;
    *(v90 + 17) = v159;
    *(v90 + 18) = 1;
    *(v90 + 24) = v161;
    LOBYTE(v199) = v97;

    *(v90 + 32) = sub_24F2EBA74(v98, &v199);
    sub_24E60169C(v177, v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v158;
    v99 = (v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
    v100 = v160;
    *v99 = v156;
    v99[1] = v100;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v157;
    *(v90 + 40) = v170;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v155;
    v101 = v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
    v102 = v208;
    *(v101 + 32) = v207;
    *(v101 + 48) = v102;
    *(v101 + 64) = v209;
    v103 = v206;
    *v101 = v205;
    *(v101 + 16) = v103;
    v104 = v167;
    v141 = v88;
    if (v167 > 1)
    {
      v130 = objc_opt_self();

      sub_24EA1F04C(&v205, &v199);
      result = [v130 defaultWorkspace];
      if (!result)
      {
        goto LABEL_104;
      }

      v131 = result;

      v132 = sub_24F92B098();
      v133 = [v131 applicationIsInstalled_];

      v104 = v167;
      if ((v133 & 1) == 0)
      {
        sub_24ED8F464(v167);

        v134 = (v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
        *v134 = 0;
        v134[1] = 0;
        *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
        *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
        goto LABEL_52;
      }
    }

    else
    {

      sub_24EA1F04C(&v205, &v199);
    }

    v105 = (v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v106 = v148;
    *v105 = v142;
    v105[1] = v106;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v169;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v104;

LABEL_52:
    sub_24E60169C(v172, v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
    sub_24E60169C(v173, v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v86;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v143;
    v107 = v146;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v147;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v107;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v145;
    v168 = v86;
    v108 = v149;
    if (v149)
    {
    }

    else
    {
      LOBYTE(v199) = v97;

      v108 = sub_24F2EBC94();
    }

    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v108;
    v109 = v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
    v110 = v153;
    v111 = v152;
    *v109 = v154;
    *(v109 + 8) = v111;
    v112 = v151;
    *(v109 + 16) = v182;
    *(v109 + 24) = v112;
    *(v109 + 32) = v150;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v110;
    *(v90 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v144;
    v182 = v90;
    v21 = *(v90 + 24);
    v113 = sub_24EA90A64();

    v45 = 0;
    v211 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v113);
    v114 = v21 + 32;
    v115 = 0uLL;
    v38 = &qword_27F222730;
    v179 = xmmword_24F950E90;
    v2 = &unk_24F97B630;
    v184 = v21 + 32;
    while (2)
    {
      v24 = *(v21 + 2);
      if (v45 != v24)
      {
LABEL_59:
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v45 < *(v21 + 2))
        {
          sub_24E615E00(&v114[40 * v45++], &v189);
          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_99;
      }

      while (1)
      {
        v191 = 0;
        v45 = v24;
        v189 = v115;
        v190 = v115;
LABEL_63:
        v187[0] = v189;
        v187[1] = v190;
        v188 = v191;
        if (!*(&v190 + 1))
        {
          memset(v192, 0, 24);
          *(&v192[1] + 8) = v179;
LABEL_71:
          sub_24E601704(v192, &qword_27F226830);
          v198 = 0;
          v196 = 0u;
          v197 = 0u;
LABEL_72:
          sub_24E601704(&v196, &qword_27F222730);
          v199 = 0u;
          v200 = 0u;
          v201 = 0;
          goto LABEL_73;
        }

        sub_24E612C80(v187, v186);
        sub_24E615E00(v186, &v185);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v192, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v186);
        if (*(&v192[1] + 1) == 1)
        {
          goto LABEL_71;
        }

        v193 = v192[0];
        v194 = v192[1];
        v195 = *&v192[2];
        if (*(&v192[1] + 1))
        {
          break;
        }

        sub_24E601704(&v193, &qword_27F222730);
        v115 = 0uLL;
        if (v45 != v24)
        {
          goto LABEL_59;
        }
      }

      *(&v194 + 1) = *(&v192[1] + 1);
      result = sub_24E60169C(&v193, v192, &qword_27F222730);
      if (!*(&v192[1] + 1))
      {
        __break(1u);
LABEL_104:
        __break(1u);
        return result;
      }

      sub_24E612C80(v192, &v196);
      sub_24E601704(&v193, &qword_27F222730);
      if (!*(&v197 + 1))
      {
        goto LABEL_72;
      }

      sub_24E612C80(&v196, &v202);
      v119 = *(&v203 + 1);
      v120 = v204;
      v121 = __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
      v122 = v119;
      v110 = v121;
      if ((PersonalizableModel.needsClientPersonalization.getter(v122, v120) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v202);
LABEL_57:
        v114 = v184;
        v115 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v202, &v199);
LABEL_73:
    v202 = v199;
    v203 = v200;
    v204 = v201;
    if (*(&v200 + 1))
    {
      sub_24E612C80(&v202, &v196);
      v116 = *(&v197 + 1);
      v117 = v198;
      __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
      (*(v117 + 16))(&v193, v116, v117);
      LOBYTE(v117) = v193;
      __swift_destroy_boxed_opaque_existential_1(&v196);
      v110 = &v211;
      sub_24ED7CC74(&v199, v117);
      goto LABEL_57;
    }

    v2 = v182;
    *&v182[OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles] = v211;
    v123 = &v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
    v124 = v140;
    *v123 = v141;
    *(v123 + 1) = v124;
    v125 = v138;
    *(v123 + 2) = v139;
    *(v123 + 3) = v125;
    v110 = *&v2[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
    if (!(v110 >> 62))
    {
      break;
    }

LABEL_99:
    v126 = sub_24F92C738();
    if (!v126)
    {
      goto LABEL_88;
    }

LABEL_81:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
    if (v126 >= 1)
    {
      *&v179 = v110 & 0xC000000000000001;
      v127 = (v166 + 8);

      v128 = 0;
      v184 = v110;
      do
      {
        if (v179)
        {
          MEMORY[0x253052270](v128, v110);
        }

        else
        {
        }

        ++v128;
        sub_24E602068(&qword_27F226838, &qword_27F225160);
        sub_24F9288B8();
        v129 = v180;
        sub_24F9288C8();

        __swift_destroy_boxed_opaque_existential_1(&v199);
        (*v127)(v129, v181);
        v110 = v184;
      }

      while (v126 != v128);

      v2 = v182;
      goto LABEL_88;
    }

    __break(1u);
  }

  v126 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v126)
  {
    goto LABEL_81;
  }

LABEL_88:

  sub_24E601704(v173, &qword_27F228530);
  sub_24E601704(v178, &qword_27F213E68);
  sub_24E601704(v172, &unk_27F22EC30);
  sub_24E601704(v177, &qword_27F228530);
  sub_24E601704(v210, &qword_27F235830);
  sub_24E601704(v176, &unk_27F22EC30);
  (*(v175 + 8))(v174, v171);
  return v2;
}

uint64_t sub_24ED78AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    goto LABEL_2;
  }

  sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v3, &qword_27F228530);
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_24E601704(v3, &qword_27F228530);
    v4 = 0;
    return v4 & 1;
  }

  v7 = v0;
  v8 = sub_24F91F398();
  v10 = v9;
  (*(v6 + 8))(v3, v5);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
    if (*(v7 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy))
    {
      v12 = 0x800000024FA42F40;
    }

    else
    {
      v12 = 0xEA00000000006461;
    }

    if (*(v7 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) == 1 && 0x800000024FA42F40 == v12)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_24F92CE08();
    }
  }

  return v4 & 1;
}

uint64_t sub_24ED78CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_24ED8F50C(&qword_27F2363D0, MEMORY[0x277CC9578]);
        v20 = sub_24F92AF78();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_24ED78F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

_BYTE *sub_24ED78FB8()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden])
  {
    goto LABEL_18;
  }

  sub_24E60169C(&v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v8, &qword_27F228530);
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F228530);
  }

  else
  {
    v11 = sub_24F91F398();
    v13 = v12;
    (*(v10 + 8))(v8, v9);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      goto LABEL_18;
    }

    if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy])
    {
      v15 = 0x800000024FA42F40;
    }

    else
    {
      v15 = 0xEA00000000006461;
    }

    if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy] == 1 && 0x800000024FA42F40 == v15)
    {
    }

    else
    {
      v17 = sub_24F92CE08();

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!*(*(v1 + 3) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;
      v20 = type metadata accessor for PrefetchMarkerItem();
      v21 = swift_allocObject();
      sub_24F91F6A8();
      v22 = sub_24F91F668();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25[0] = v22;
      v25[1] = v24;
      sub_24F92C7F8();
      *(v19 + 56) = v20;
      *(v19 + 64) = sub_24ED8F50C(&qword_27F22F070, type metadata accessor for PrefetchMarkerItem);
      *(v19 + 32) = v21;
      LOBYTE(v25[0]) = 94;
      v1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v25, 1, 2);

      return v1;
    }
  }

LABEL_18:

  return v1;
}

id Shelf.withId(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v90 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v87 - v5;
  v6 = sub_24F91F6B8();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  sub_24E65864C(a1, v149);
  v117 = *(v2 + 16);
  v109 = *(v2 + 17);
  v111 = v2[3];
  v115 = v2[5];
  v120 = v19;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v19, &qword_27F228530);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v116 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v108 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v114 = v20;
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v103 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v102 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v105 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v21 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *&v122 = v21;
  v106 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v154 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v152 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v153 = v22;
  v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v23 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v107 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v127 = v28;
  LODWORD(v126) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v150 = v24;
  v151 = v23;
  v119 = v13;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v13, &unk_27F22EC30);
  v121 = v10;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v10, &qword_27F213E68);
  v118 = v16;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v16, &qword_27F228530);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics);
  v29 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v125 = v4;
  v31 = swift_allocObject();
  sub_24E60169C(v149, &v146, &qword_27F235830);
  v93 = v29;
  v100 = v26;
  v101 = v25;
  v97 = v27;
  if (*(&v147 + 1))
  {
    v143 = v146;
    v144 = v147;
    v145 = v148;

    v32 = v116;
    sub_24ED8F454(v116);
    v33 = v26;
    v34 = v107;
    sub_24E951F10(v33, v27, v107, v127, v126);
  }

  else
  {

    sub_24ED8F454(v116);
    v35 = v26;
    v34 = v107;
    sub_24E951F10(v35, v27, v107, v127, v126);

    v36 = v87;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v88 + 8))(v36, v89);
    *&v139 = v37;
    *(&v139 + 1) = v39;
    sub_24F92C7F8();
    sub_24E601704(&v146, &qword_27F235830);
    v32 = v116;
  }

  v40 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v41 = v144;
  *v40 = v143;
  *(v40 + 16) = v41;
  *(v40 + 32) = v145;
  sub_24E60169C(v121, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  v42 = v117;
  *(v31 + 16) = v117;
  *(v31 + 17) = v109;
  *(v31 + 18) = 1;
  v43 = v111;
  *(v31 + 24) = v111;
  LOBYTE(v143) = v42;
  swift_bridgeObjectRetain_n();
  v44 = sub_24F2EBA74(v43, &v143);

  *(v31 + 32) = v44;
  sub_24E60169C(v120, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v113;
  v45 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v47 = v114;
  v46 = v115;
  *v45 = v108;
  v45[1] = v47;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v112;
  *(v31 + 40) = v46;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v110;
  v48 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v49 = v153;
  *(v48 + 32) = v152;
  *(v48 + 48) = v49;
  *(v48 + 64) = v154;
  v50 = v151;
  *v48 = v150;
  *(v48 + 16) = v50;
  v91 = v30;
  if (v32 <= 1)
  {

    sub_24EA1F04C(&v150, &v143);
    v51 = v105;
    v52 = v106;
LABEL_6:
    v53 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v54 = v96;
    v55 = v122;
    *v53 = v95;
    v53[1] = v55;
    *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v54;
    *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v32;

    goto LABEL_7;
  }

  v82 = objc_opt_self();

  sub_24EA1F04C(&v150, &v143);
  result = [v82 defaultWorkspace];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v83 = result;
  v84 = sub_24F92B098();
  v85 = [v83 applicationIsInstalled_];

  v51 = v105;
  v52 = v106;
  if (v85)
  {
    goto LABEL_6;
  }

  sub_24ED8F464(v32);

  v86 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v86 = 0;
  v86[1] = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_7:
  sub_24E60169C(v119, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v118, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  v56 = v99;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v98;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v56;
  LOBYTE(v56) = v103;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v104;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v56;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v102;
  v57 = v100;
  if (v51)
  {
  }

  else
  {
    LOBYTE(v143) = v117;

    v51 = sub_24F2EBC94();
  }

  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v51;
  v58 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v59 = v97;
  *v58 = v57;
  *(v58 + 8) = v59;
  v60 = v127;
  *(v58 + 16) = v34;
  *(v58 + 24) = v60;
  *(v58 + 32) = v126;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v52;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v101;
  v126 = v31;
  v61 = *(v31 + 24);
  v62 = sub_24EA90A64();

  v63 = 0;
  v142 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v62);
  v64 = (v61 + 32);
  v65 = 0uLL;
  v122 = xmmword_24F950E90;
  v127 = (v61 + 32);
  while (2)
  {
    v66 = *(v61 + 16);
    if (v63 == v66)
    {
LABEL_14:
      v134 = 0;
      v63 = v66;
      v132 = v65;
      v133 = v65;
      goto LABEL_18;
    }

    while (1)
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v77 = sub_24F92C738();
        if (!v77)
        {
          goto LABEL_43;
        }

LABEL_36:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
        if (v77 >= 1)
        {
          v127 = (v62 & 0xC000000000000001);
          v78 = (v90 + 8);

          v79 = 0;
          v80 = v62;
          do
          {
            if (v127)
            {
              MEMORY[0x253052270](v79, v62);
            }

            else
            {
            }

            ++v79;
            sub_24E602068(&qword_27F226838, &qword_27F225160);
            sub_24F9288B8();
            v81 = v123;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v143);
            (*v78)(v81, v124);
            v62 = v80;
          }

          while (v77 != v79);

          v63 = v126;
          goto LABEL_43;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (v63 >= *(v61 + 16))
      {
        goto LABEL_48;
      }

      sub_24E615E00(v64 + 40 * v63++, &v132);
LABEL_18:
      v130[0] = v132;
      v130[1] = v133;
      v131 = v134;
      if (!*(&v133 + 1))
      {
        memset(v135, 0, 24);
        *(&v135[1] + 8) = v122;
LABEL_26:
        sub_24E601704(v135, &qword_27F226830);
        v141 = 0;
        v139 = 0u;
        v140 = 0u;
        goto LABEL_27;
      }

      sub_24E612C80(v130, v129);
      sub_24E615E00(v129, &v128);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v135, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v129);
      if (*(&v135[1] + 1) == 1)
      {
        goto LABEL_26;
      }

      v136 = v135[0];
      v137 = v135[1];
      v138 = *&v135[2];
      if (*(&v135[1] + 1))
      {
        break;
      }

      sub_24E601704(&v136, &qword_27F222730);
      v65 = 0uLL;
      if (v63 == v66)
      {
        goto LABEL_14;
      }
    }

    *(&v137 + 1) = *(&v135[1] + 1);
    result = sub_24E60169C(&v136, v135, &qword_27F222730);
    if (!*(&v135[1] + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_24E612C80(v135, &v139);
    sub_24E601704(&v136, &qword_27F222730);
    if (!*(&v140 + 1))
    {
LABEL_27:
      sub_24E601704(&v139, &qword_27F222730);
      v143 = 0u;
      v144 = 0u;
      v145 = 0;
      goto LABEL_28;
    }

    sub_24E612C80(&v139, &v146);
    v70 = *(&v147 + 1);
    v71 = v148;
    v72 = __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
    v73 = v70;
    v62 = v72;
    if ((PersonalizableModel.needsClientPersonalization.getter(v73, v71) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v146);
LABEL_12:
      v64 = v127;
      v65 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v146, &v143);
LABEL_28:
  v146 = v143;
  v147 = v144;
  v148 = v145;
  if (*(&v144 + 1))
  {
    sub_24E612C80(&v146, &v139);
    v67 = *(&v140 + 1);
    v68 = v141;
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    (*(v68 + 16))(&v136, v67, v68);
    LOBYTE(v68) = v136;
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v62 = &v142;
    sub_24ED7CC74(&v143, v68);
    goto LABEL_12;
  }

  v63 = v126;
  *(v126 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v142;
  v74 = (v63 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v75 = v93;
  *v74 = v94;
  v74[1] = v75;
  v76 = v91;
  v74[2] = v92;
  v74[3] = v76;
  v62 = *(v63 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v62 >> 62)
  {
    goto LABEL_49;
  }

  v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
    goto LABEL_36;
  }

LABEL_43:
  sub_24E601704(v118, &qword_27F228530);
  sub_24E601704(v121, &qword_27F213E68);
  sub_24E601704(v119, &unk_27F22EC30);
  sub_24E601704(v120, &qword_27F228530);
  sub_24E601704(v149, &qword_27F235830);
  return v63;
}

id Shelf.withURL(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v96 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v92 - v5;
  v6 = sub_24F91F6B8();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v92 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  sub_24E65864C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v153);
  LODWORD(v125) = *(v2 + 16);
  v116 = *(v2 + 17);
  v118 = v2[3];
  v120 = v2[5];
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  v22 = *(v21 + 56);
  v123 = v19;
  v22(v19, 0, 1, v20);
  v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v115 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v101 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v131 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v114 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v23 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v119 = v23;
  v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v108 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v107 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v100 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v111 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v158 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v156 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v157 = v25;
  v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v29 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v31 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v130 = v31;
  LODWORD(v129) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v154 = v27;
  v155 = v26;
  v122 = v13;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v13, &unk_27F22EC30);
  v124 = v10;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v10, &qword_27F213E68);
  v121 = v16;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v16, &qword_27F228530);
  v102 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics);
  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v97 = v33;
  v128 = v4;
  v35 = swift_allocObject();
  sub_24E60169C(v153, &v150, &qword_27F235830);
  v105 = v29;
  v106 = v28;
  v103 = v24;
  if (*(&v151 + 1))
  {
    v147 = v150;
    v148 = v151;
    v149 = v152;

    sub_24ED8F454(v131);
    v36 = v30;
    v37 = v30;
    v38 = v112;
    sub_24E951F10(v29, v37, v112, v130, v129);
  }

  else
  {

    sub_24ED8F454(v131);
    v92 = v30;
    v39 = v30;
    v38 = v112;
    sub_24E951F10(v29, v39, v112, v130, v129);

    v40 = v93;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v42 = v32;
    v44 = v43;
    (*(v94 + 8))(v40, v95);
    *&v143 = v41;
    *(&v143 + 1) = v44;
    v32 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v150, &qword_27F235830);
    v36 = v92;
  }

  v45 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v46 = v148;
  *v45 = v147;
  *(v45 + 16) = v46;
  *(v45 + 32) = v149;
  sub_24E60169C(v124, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  v47 = v125;
  *(v35 + 16) = v125;
  *(v35 + 17) = v116;
  *(v35 + 18) = 1;
  v48 = v118;
  *(v35 + 24) = v118;
  LOBYTE(v147) = v47;
  swift_bridgeObjectRetain_n();
  v49 = sub_24F2EBA74(v48, &v147);

  *(v35 + 32) = v49;
  sub_24E60169C(v123, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v117;
  v50 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v52 = v119;
  v51 = v120;
  *v50 = v113;
  v50[1] = v52;
  v53 = v114;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v115;
  *(v35 + 40) = v51;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v53;
  v54 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v55 = v157;
  *(v54 + 32) = v156;
  *(v54 + 48) = v55;
  *(v54 + 64) = v158;
  v56 = v155;
  *v54 = v154;
  *(v54 + 16) = v56;
  v98 = v32;
  if (!v131)
  {
    v57 = 0;
    goto LABEL_10;
  }

  v57 = v131;
  if (v131 == 1)
  {
LABEL_10:

    sub_24EA1F04C(&v154, &v147);
    v63 = v110;
    v64 = v111;
    goto LABEL_11;
  }

  v58 = objc_opt_self();

  sub_24EA1F04C(&v154, &v147);
  result = [v58 defaultWorkspace];
  if (!result)
  {
    goto LABEL_54;
  }

  v60 = result;
  v61 = sub_24F92B098();
  v62 = [v60 applicationIsInstalled_];

  v63 = v110;
  v64 = v111;
  if ((v62 & 1) == 0)
  {
    sub_24ED8F464(v57);

    v65 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    *v65 = 0;
    v65[1] = 0;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
    goto LABEL_12;
  }

LABEL_11:
  v66 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v67 = v101;
  v68 = v103;
  *v66 = v100;
  v66[1] = v68;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v67;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v57;

LABEL_12:
  sub_24E60169C(v122, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v121, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v102;
  v69 = v105;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v104;
  v70 = v108;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v109;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v70;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v107;
  if (v63)
  {
  }

  else
  {
    LOBYTE(v147) = v125;

    v63 = sub_24F2EBC94();
  }

  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v63;
  v71 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v71 = v69;
  *(v71 + 8) = v36;
  v72 = v130;
  *(v71 + 16) = v38;
  *(v71 + 24) = v72;
  *(v71 + 32) = v129;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v64;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v106;
  v129 = v35;
  v73 = *(v35 + 24);
  v74 = sub_24EA90A64();

  v75 = 0;
  v146 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v74);
  v131 = (v73 + 32);
  v76 = 0uLL;
  v125 = xmmword_24F950E90;
  v130 = v34;
  while (2)
  {
    while (2)
    {
      v77 = *(v73 + 16);
      if (v75 == v77)
      {
LABEL_17:
        v138 = 0;
        v75 = v77;
        v136 = v76;
        v137 = v76;
        goto LABEL_21;
      }

      while (1)
      {
        if ((v75 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v75 >= *(v73 + 16))
        {
          goto LABEL_49;
        }

        sub_24E615E00(v131 + 40 * v75++, &v136);
LABEL_21:
        v134[0] = v136;
        v134[1] = v137;
        v135 = v138;
        if (!*(&v137 + 1))
        {
          memset(v139, 0, 24);
          *(&v139[1] + 8) = v125;
LABEL_29:
          sub_24E601704(v139, &qword_27F226830);
          v145 = 0;
          v143 = 0u;
          v144 = 0u;
          goto LABEL_30;
        }

        sub_24E612C80(v134, v133);
        sub_24E615E00(v133, &v132);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v139, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v133);
        if (*(&v139[1] + 1) == 1)
        {
          goto LABEL_29;
        }

        v140 = v139[0];
        v141 = v139[1];
        v142 = *&v139[2];
        if (*(&v139[1] + 1))
        {
          break;
        }

        sub_24E601704(&v140, &qword_27F222730);
        v76 = 0uLL;
        if (v75 == v77)
        {
          goto LABEL_17;
        }
      }

      *(&v141 + 1) = *(&v139[1] + 1);
      result = sub_24E60169C(&v140, v139, &qword_27F222730);
      if (!*(&v139[1] + 1))
      {
        goto LABEL_53;
      }

      sub_24E612C80(v139, &v143);
      sub_24E601704(&v140, &qword_27F222730);
      if (!*(&v144 + 1))
      {
LABEL_30:
        sub_24E601704(&v143, &qword_27F222730);
        v147 = 0u;
        v148 = 0u;
        v149 = 0;
        goto LABEL_31;
      }

      sub_24E612C80(&v143, &v150);
      v81 = *(&v151 + 1);
      v82 = v152;
      v83 = __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      v84 = v81;
      v74 = v83;
      if ((PersonalizableModel.needsClientPersonalization.getter(v84, v82) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v150);
        v34 = v130;
        v76 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v150, &v147);
    v34 = v130;
LABEL_31:
    v150 = v147;
    v151 = v148;
    v152 = v149;
    if (*(&v148 + 1))
    {
      sub_24E612C80(&v150, &v143);
      v78 = *(&v144 + 1);
      v79 = v145;
      __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
      v80 = v78;
      v34 = v130;
      (*(v79 + 16))(&v140, v80, v79);
      LOBYTE(v79) = v140;
      __swift_destroy_boxed_opaque_existential_1(&v143);
      v74 = &v146;
      sub_24ED7CC74(&v147, v79);
      v76 = 0uLL;
      continue;
    }

    break;
  }

  v75 = v129;
  *(v129 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v146;
  v85 = (v75 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v86 = v98;
  *v85 = v99;
  v85[1] = v86;
  v85[2] = v97;
  v85[3] = v34;
  v74 = *(v75 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (!(v74 >> 62))
  {
    v87 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_40;
    }

LABEL_47:
    sub_24E601704(v121, &qword_27F228530);
    sub_24E601704(v124, &qword_27F213E68);
    sub_24E601704(v122, &unk_27F22EC30);
    sub_24E601704(v123, &qword_27F228530);
    sub_24E601704(v153, &qword_27F235830);
    return v75;
  }

LABEL_50:
  v87 = sub_24F92C738();
  if (!v87)
  {
    goto LABEL_47;
  }

LABEL_40:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
  if (v87 >= 1)
  {
    v131 = (v74 & 0xC000000000000001);
    v88 = (v96 + 8);

    v89 = 0;
    v90 = v74;
    do
    {
      if (v131)
      {
        MEMORY[0x253052270](v89, v74);
      }

      else
      {
      }

      ++v89;
      sub_24E602068(&qword_27F226838, &qword_27F225160);
      sub_24F9288B8();
      v91 = v126;
      sub_24F9288C8();

      __swift_destroy_boxed_opaque_existential_1(&v147);
      (*v88)(v91, v127);
      v74 = v90;
    }

    while (v87 != v89);

    v75 = v129;
    goto LABEL_47;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

char *Shelf.replacingContent(with:)(char *a1)
{
  v2 = v1;
  v144 = *v1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v132 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v105 - v4;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v130 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v10 - 8);
  v138 = &v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v137 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v139 = &v105 - v15;
  v16 = v1 + 2;
  LOBYTE(v167) = *(v1 + 16);
  v17 = Shelf.ContentType.rawValue.getter();
  v131 = v6;
  if (v17 == 0x6C6F686563616C70 && v18 == 0xEB00000000726564)
  {
  }

  else
  {
    v19 = sub_24F92CE08();

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v1 + 17) != 104)
  {
    LOBYTE(v167) = *(v1 + 17);
    LOBYTE(v161) = a1[16];
    v20 = Shelf.ContentType.isCompatible(with:)(&v161);
    goto LABEL_8;
  }

LABEL_6:
  v20 = 0;
LABEL_8:
  LOBYTE(v167) = *v16;
  v21 = a1 + 16;
  LOBYTE(v161) = a1[16];
  v22 = Shelf.ContentType.isCompatible(with:)(&v161);
  if ((v20 & 1) == 0 && (v22 & 1) == 0)
  {
    v23 = sub_24F929618();
    sub_24ED8F50C(&qword_27F22F048, MEMORY[0x277D21F98]);
    swift_allocError();
    v24 = *v16;
    *(v25 + 24) = &type metadata for Shelf.ContentType;
    *v25 = v24;
    v26 = *v21;
    *(v25 + 56) = &type metadata for Shelf.ContentType;
    *(v25 + 32) = v26;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D21F90], v23);
    swift_willThrow();
    return a1;
  }

  v105 = v5;
  LOBYTE(v167) = *v16;
  if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v27 == 0xEE0072656B72614DLL)
  {
    goto LABEL_13;
  }

  v28 = sub_24F92CE08();

  if ((v28 & 1) == 0)
  {
    LOBYTE(v167) = *v16;
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v29 == 0xEB00000000726564)
    {
LABEL_13:

      goto LABEL_19;
    }

    v30 = sub_24F92CE08();

    if ((v30 & 1) == 0)
    {
      v21 = (v1 + 2);
    }
  }

LABEL_19:
  v31 = *v21;
  sub_24E65864C(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v172);
  v122 = *(v1 + 17);
  v126 = *(a1 + 3);
  v136 = sub_24EF94F20(*(a1 + 5), v1[5], 0);
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v139, &qword_27F228530);
  v125 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
  v124 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v32 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v123 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v127 = v32;
  v33 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
  if (v33)
  {
    v110 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
    v116 = v33;
  }

  else
  {
    v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
    v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v116 = v34;
  }

  v129 = v31;
  v135 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
  if (!v135)
  {
    v135 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  }

  v35 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
  v36 = v35;
  if (v35 == 1)
  {
    v36 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
    sub_24ED8F454(v36);
  }

  v134 = v36;
  v121 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden];
  v115 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v114 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v113 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized];
  v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v37 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v133 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v119 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v38 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v120 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v146 = v39;
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  LODWORD(v141) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v169 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v170 = v40;
  v171 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v167 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v168 = v41;
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v138, &unk_27F22EC30);
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v140, &qword_27F213E68);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v137, &qword_27F228530);
  v111 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
  v42 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8];
  v109 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
  v43 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24];
  v107 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16];
  v44 = swift_allocObject();
  sub_24E60169C(v172, &v164, &qword_27F235830);
  v145 = v44;
  v118 = v37;
  v128 = v38;
  if (*(&v165 + 1))
  {
    v161 = v164;
    v162 = v165;
    v163 = v166;

    v45 = v120;
    sub_24E951F10(v37, v133, v120, v146, v141);

    sub_24ED8F454(v35);
  }

  else
  {

    v45 = v120;
    sub_24E951F10(v37, v133, v120, v146, v141);

    sub_24ED8F454(v35);
    v46 = v130;
    sub_24F91F6A8();
    v47 = sub_24F91F668();
    v49 = v48;
    (*(v131 + 8))(v46, v105);
    *&v158 = v47;
    *(&v158 + 1) = v49;
    v44 = v145;
    sub_24F92C7F8();
    sub_24E601704(&v164, &qword_27F235830);
  }

  v50 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v51 = v162;
  *v50 = v161;
  *(v50 + 16) = v51;
  *(v50 + 32) = v163;
  sub_24E60169C(v140, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  v52 = v129;
  *(v44 + 16) = v129;
  *(v44 + 17) = v122;
  *(v44 + 18) = 1;
  v53 = v126;
  *(v44 + 24) = v126;
  LOBYTE(v161) = v52;
  swift_bridgeObjectRetain_n();
  v54 = sub_24F2EBA74(v53, &v161);

  *(v44 + 32) = v54;
  sub_24E60169C(v139, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v125;
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v56 = v127;
  *v55 = v123;
  v55[1] = v56;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v124;
  *(v44 + 40) = v136;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v121;
  v57 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v58 = v170;
  *(v57 + 32) = v169;
  *(v57 + 48) = v58;
  *(v57 + 64) = v171;
  v59 = v168;
  *v57 = v167;
  *(v57 + 16) = v59;
  v108 = v42;
  v106 = v43;
  if (v134)
  {
    v60 = v128;
    if (v134 == 1)
    {

      sub_24EA1F04C(&v167, &v161);
      v61 = v119;
      v62 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
    }

    else
    {
      v63 = objc_opt_self();

      sub_24EA1F04C(&v167, &v161);
      result = [v63 defaultWorkspace];
      if (!result)
      {
LABEL_80:
        __break(1u);
        return result;
      }

      v65 = result;
      v66 = sub_24F92B098();
      v67 = [v65 applicationIsInstalled_];

      v44 = v145;
      v61 = v119;
      v62 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
      if ((v67 & 1) == 0)
      {
        sub_24ED8F464(v134);

        v104 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
        *v104 = 0;
        v104[1] = 0;
        *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
        *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
        goto LABEL_36;
      }
    }
  }

  else
  {

    sub_24EA1F04C(&v167, &v161);
    v61 = v119;
    v62 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
    v60 = v128;
  }

  v68 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v69 = v116;
  *v68 = v110;
  v68[1] = v69;
  v70 = v134;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v135;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v70;

LABEL_36:
  sub_24E60169C(v138, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v137, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  v71 = v112;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v111;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v71;
  LOBYTE(v71) = v114;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v115;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v71;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v113;
  v72 = v117;
  v73 = v118;
  if (v117)
  {
  }

  else
  {
    LOBYTE(v161) = v52;

    v62 = &v161;
    v72 = sub_24F2EBC94();
  }

  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v72;
  v74 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v75 = v133;
  *v74 = v73;
  *(v74 + 8) = v75;
  v76 = v146;
  *(v74 + 16) = v45;
  *(v74 + 24) = v76;
  *(v74 + 32) = v141;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v61;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v60;
  v77 = *(v44 + 24);
  v78 = sub_24EA90A64();

  v79 = 0;
  v173 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v78);
  v80 = v77 + 4;
  v81 = 0uLL;
  v82 = &qword_27F222730;
  a1 = &unk_24F9E1470;
  v83 = &unk_27F23A6A0;
  v141 = xmmword_24F950E90;
  v146 = v77;
  while (2)
  {
    while (2)
    {
      v84 = v77[2];
      if (v79 != v84)
      {
LABEL_41:
        if ((v79 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v79 < v77[2])
        {
          sub_24E615E00(&v80[5 * v79++], &v151);
          goto LABEL_45;
        }

        __break(1u);
LABEL_76:
        v100 = sub_24F92C738();
        if (!v100)
        {
          goto LABEL_71;
        }

LABEL_64:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
        if (v100 >= 1)
        {
          *&v141 = v62 & 0xC000000000000001;
          v101 = (v132 + 8);

          v102 = 0;
          v146 = v62;
          do
          {
            if (v141)
            {
              MEMORY[0x253052270](v102, v62);
            }

            else
            {
            }

            ++v102;
            sub_24E602068(&qword_27F226838, &qword_27F225160);
            sub_24F9288B8();
            v103 = v142;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v161);
            (*v101)(v103, v143);
            v62 = v146;
          }

          while (v100 != v102);

          a1 = v145;
          goto LABEL_71;
        }

        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      while (1)
      {
        v153 = 0;
        v79 = v84;
        v151 = v81;
        v152 = v81;
LABEL_45:
        v149[0] = v151;
        v149[1] = v152;
        v150 = v153;
        if (!*(&v152 + 1))
        {
          memset(v154, 0, 24);
          *(&v154[1] + 8) = v141;
LABEL_53:
          sub_24E601704(v154, &qword_27F226830);
          v160 = 0;
          v158 = 0u;
          v159 = 0u;
LABEL_54:
          sub_24E601704(&v158, v82);
          v161 = 0u;
          v162 = 0u;
          v163 = 0;
          goto LABEL_55;
        }

        sub_24E612C80(v149, v148);
        sub_24E615E00(v148, &v147);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v154, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v148);
        if (*(&v154[1] + 1) == 1)
        {
          goto LABEL_53;
        }

        v155 = v154[0];
        v156 = v154[1];
        v157 = *&v154[2];
        if (*(&v154[1] + 1))
        {
          break;
        }

        sub_24E601704(&v155, v82);
        v81 = 0uLL;
        if (v79 != v84)
        {
          goto LABEL_41;
        }
      }

      *(&v156 + 1) = *(&v154[1] + 1);
      result = sub_24E60169C(&v155, v154, v82);
      if (!*(&v154[1] + 1))
      {
        goto LABEL_79;
      }

      sub_24E612C80(v154, &v158);
      sub_24E601704(&v155, v82);
      if (!*(&v159 + 1))
      {
        goto LABEL_54;
      }

      sub_24E612C80(&v158, &v164);
      v93 = *(&v165 + 1);
      v94 = v166;
      v95 = __swift_project_boxed_opaque_existential_1(&v164, *(&v165 + 1));
      v96 = v93;
      v62 = v95;
      if ((PersonalizableModel.needsClientPersonalization.getter(v96, v94) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v164);
        v81 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v164, &v161);
LABEL_55:
    v164 = v161;
    v165 = v162;
    v166 = v163;
    if (*(&v162 + 1))
    {
      sub_24E612C80(&v164, &v158);
      v85 = *(&v159 + 1);
      v86 = a1;
      v87 = v82;
      v88 = v83;
      v89 = v80;
      v90 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v91 = *(v90 + 16);
      v92 = v90;
      v80 = v89;
      v83 = v88;
      v82 = v87;
      a1 = v86;
      v77 = v146;
      v91(&v155, v85, v92);
      LOBYTE(v85) = v155;
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v62 = &v173;
      sub_24ED7CC74(&v161, v85);
      v81 = 0uLL;
      continue;
    }

    break;
  }

  a1 = v145;
  *&v145[OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles] = v173;
  v97 = &a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
  v98 = v108;
  *v97 = v109;
  *(v97 + 1) = v98;
  v99 = v106;
  *(v97 + 2) = v107;
  *(v97 + 3) = v99;
  v62 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
  if (v62 >> 62)
  {
    goto LABEL_76;
  }

  v100 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v100)
  {
    goto LABEL_64;
  }

LABEL_71:

  sub_24E601704(v137, &qword_27F228530);
  sub_24E601704(v140, &qword_27F213E68);
  sub_24E601704(v138, &unk_27F22EC30);
  sub_24E601704(v139, &qword_27F228530);
  sub_24E601704(v172, &qword_27F235830);
  return a1;
}

uint64_t sub_24ED7C5F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24F92D068();
  sub_24F92B218();
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ED85340(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ED7C740(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v47[0] = *a2;
  v47[1] = v5;
  v6 = *(a2 + 3);
  v47[2] = *(a2 + 2);
  v47[3] = v6;
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v45 = v4 + 56;
  v36 = a2;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = a2[1];
    v44 = a2[2];
    v42 = *a2;
    v43 = a2[3];
    v38 = a2[6];
    v39 = a2[4];
    v40 = a2[7];
    v41 = a2[5];
    v34 = v4;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + (v9 << 6));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      if (v14)
      {
        if (!v11)
        {
          goto LABEL_4;
        }

        v21 = *v13 == v42 && v14 == v11;
        if (!v21 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      v22 = v15 == v44 && v16 == v43;
      if (!v22 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v41)
        {
          goto LABEL_4;
        }

        v23 = v17 == v39 && v18 == v41;
        if (!v23 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v41)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (v40 && (v19 == v38 && v20 == v40 || (sub_24F92CE08() & 1) != 0))
        {
LABEL_33:
          sub_24E805734(v36);
          v24 = (*(v34 + 48) + (v9 << 6));
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[3];
          v46[2] = v24[2];
          v46[3] = v27;
          v46[0] = v25;
          v46[1] = v26;
          v28 = v24[1];
          *a1 = *v24;
          a1[1] = v28;
          v29 = v24[3];
          a1[2] = v24[2];
          a1[3] = v29;
          sub_24E8056D8(v46, v47);
          return 0;
        }
      }

      else if (!v40)
      {
        goto LABEL_33;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v47[0] = *v35;
  sub_24E8056D8(v36, v46);
  sub_24ED854C0(v36, v9, isUniquelyReferenced_nonNull_native);
  *v35 = *&v47[0];
  v32 = v36[1];
  *a1 = *v36;
  a1[1] = v32;
  v33 = v36[3];
  a1[2] = v36[2];
  a1[3] = v33;
  return 1;
}

uint64_t sub_24ED7C9F0(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_24F92D068();
  v18 = a2;
  if (a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (a2)
  {
    v6 = 0x800000024FA421F0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0xD000000000000016 : 0x656461637261;
      v12 = *(*(v4 + 48) + v9) ? 0x800000024FA421F0 : 0xE600000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_24F92CE08();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_24ED85764(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

BOOL sub_24ED7CBB0()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92B218();
  v2 = sub_24F92D0B8() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_24ED85978(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_24ED7CC74(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_24F92D068();
  v18 = a2;
  if (a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 7304045 : 1701736302;
      v12 = *(*(v4 + 48) + v9) ? 0xE300000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_24F92CE08();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_24ED85A98(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_24ED7CE20(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  MEMORY[0x253052A00](a2);
  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24ED85C98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7CF18(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  v18 = v2;
  v19 = a1;
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_24ED85DE4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE700000000000000;
    v10 = 0x636972656E6567;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6D754E656E6F6870;
    }

    else
    {
      v13 = 0x6464416C69616D65;
    }

    if (v12 == 1)
    {
      v14 = 0xEB00000000726562;
    }

    else
    {
      v14 = 0xEC00000073736572;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6D754E656E6F6870;
    v11 = 0xEB00000000726562;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0x6464416C69616D65;
  v11 = 0xEC00000073736572;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE700000000000000;
  if (v10 != 0x636972656E6567)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = a2;
  return result;
}

uint64_t sub_24ED7D19C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 48);
  v60[2] = *(a2 + 32);
  v60[3] = v5;
  v61 = *(a2 + 64);
  v6 = *(a2 + 16);
  v60[0] = *a2;
  v60[1] = v6;
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)();
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v54 = v4 + 56;
  v45 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60[0] = *v44;
    sub_24E627A14(v45, v58);
    sub_24ED860B8(v45, v9, isUniquelyReferenced_nonNull_native);
    *v44 = *&v60[0];
    v39 = *(v45 + 48);
    *(a1 + 32) = *(v45 + 32);
    *(a1 + 48) = v39;
    *(a1 + 64) = *(v45 + 64);
    v40 = *(v45 + 16);
    result = 1;
    *a1 = *v45;
    *(a1 + 16) = v40;
    return result;
  }

  v52 = ~v8;
  v42 = *(a2 + 65);
  v43 = *(a2 + 64);
  v10 = *a2;
  v11 = *(a2 + 8);
  v56 = *(a2 + 24);
  v57 = *(a2 + 16);
  v49 = *(a2 + 40);
  v50 = *(a2 + 32);
  v47 = *(a2 + 56);
  v48 = *(a2 + 48);
  v41 = v4;
  v53 = *(v4 + 48);
  while (1)
  {
    v12 = v53 + 72 * v9;
    result = *v12;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v16 = *(v12 + 40);
    v19 = *(v12 + 48);
    v18 = *(v12 + 56);
    v55 = *(v12 + 64);
    v51 = *(v12 + 65);
    if (*v12 != v10 || *(v12 + 8) != v11)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v14 != v57 || v15 != v56)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v17 != v50 || v16 != v49)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (!v19)
    {
      if (v48)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }

    if (!v48)
    {
      goto LABEL_4;
    }

    v23 = *(v19 + 16);
    if (v23 != *(v48 + 16))
    {
      goto LABEL_4;
    }

    if (v23 && v19 != v48)
    {
      break;
    }

LABEL_28:
    if (v18)
    {
      if (!v47)
      {
        goto LABEL_4;
      }

      v25 = *(v18 + 16);
      if (v25 != *(v47 + 16))
      {
        goto LABEL_4;
      }

      if (v25 && v18 != v47)
      {
        v26 = (v18 + 40);
        v27 = (v47 + 40);
        do
        {
          v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
          if (!v28 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_4;
          }

          v26 += 2;
          v27 += 2;
        }

        while (--v25);
      }
    }

    else if (v47)
    {
      goto LABEL_4;
    }

    if (v55 == 2)
    {
      if (v43 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v43 == 2 || ((v55 ^ v43) & 1) != 0)
    {
      goto LABEL_4;
    }

    if (v51 == 2)
    {
      if (v42 == 2)
      {
        goto LABEL_60;
      }
    }

    else if (v42 != 2 && ((v51 ^ v42) & 1) == 0)
    {
LABEL_60:
      sub_24E627A70(v45);
      v32 = *(v41 + 48) + 72 * v9;
      v58[0] = *v32;
      v34 = *(v32 + 32);
      v33 = *(v32 + 48);
      v35 = *(v32 + 64);
      v58[1] = *(v32 + 16);
      v58[2] = v34;
      v59 = v35;
      v58[3] = v33;
      v36 = *(v32 + 48);
      *(a1 + 32) = *(v32 + 32);
      *(a1 + 48) = v36;
      *(a1 + 64) = *(v32 + 64);
      v37 = *(v32 + 16);
      *a1 = *v32;
      *(a1 + 16) = v37;
      sub_24E627A14(v58, v60);
      return 0;
    }

LABEL_4:
    v9 = (v9 + 1) & v52;
    if (((*(v54 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v29 = (v19 + 40);
  v30 = (v48 + 40);
  while (v23)
  {
    result = *(v29 - 1);
    if (result != *(v30 - 1) || *v29 != *v30)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v29 += 2;
    v30 += 2;
    if (!--v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_24ED7D5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E65864C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a2);
      sub_24E6585F8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24E6585F8(a2);
    sub_24E65864C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E65864C(a2, v16);
    v15 = *v3;
    sub_24ED8648C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24ED7D6EC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  v18 = v2;
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_24ED86604(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0x656C6C6174736E69;
    v11 = 0xED0000796C6E4F64;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6E4F656461637261;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (v12 == 1)
    {
      v14 = 0xEA0000000000796CLL;
    }

    else
    {
      v14 = 0x800000024FA3F9F0;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6E4F656461637261;
    v11 = 0xEA0000000000796CLL;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000015;
  v11 = 0x800000024FA3F9F0;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xED0000796C6E4F64;
  if (v10 != 0x656C6C6174736E69)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = a2;
  return result;
}

uint64_t sub_24ED7D974(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24F92D068();
  UpdateListener.RefreshDataType.rawValue.getter();
  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_94:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    sub_24ED868DC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    result = 1;
    goto LABEL_97;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7105633;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v12 = 0x676E656C6C616863;
        v11 = 0xEA00000000007365;
        break;
      case 2:
        v11 = 0xE700000000000000;
        v12 = 0x73646E65697266;
        break;
      case 3:
        v12 = 0x6552646E65697266;
        v11 = 0xEE00737473657571;
        break;
      case 4:
        v12 = 0xD000000000000015;
        v11 = 0x800000024FA41B30;
        break;
      case 5:
        v11 = 0xE500000000000000;
        v12 = 0x73656D6167;
        break;
      case 6:
        v11 = 0xE800000000000000;
        v12 = 0x73656C69666F7270;
        break;
      case 7:
        v11 = 0xE700000000000000;
        v12 = 0x73726579616C70;
        break;
      case 8:
        v12 = 0x6D65766569686361;
        v13 = 1937010277;
        goto LABEL_34;
      case 9:
        v11 = 0xEC00000073647261;
        goto LABEL_12;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x6F746F6870;
        break;
      case 0xB:
        v11 = 0xEF73746553647261;
LABEL_12:
        v12 = 0x6F6272656461656CLL;
        break;
      case 0xC:
        v12 = 0x6E65726566657270;
        v11 = 0xEB00000000736563;
        break;
      case 0xD:
        v11 = 0xE600000000000000;
        v12 = 0x7365726F6373;
        break;
      case 0xE:
        v11 = 0xE500000000000000;
        v12 = 0x736E727574;
        break;
      case 0xF:
        v12 = 0x73736553656D6167;
        goto LABEL_33;
      case 0x10:
        v11 = 0xE700000000000000;
        v12 = 0x73726174617661;
        break;
      case 0x11:
        v12 = 0x50656C69666F7270;
        v11 = 0xEE00796361766972;
        break;
      case 0x12:
        v12 = 0xD00000000000001ALL;
        v11 = 0x800000024FA41BD0;
        break;
      case 0x13:
        v12 = 0xD000000000000014;
        v11 = 0x800000024FA41BF0;
        break;
      case 0x14:
        v12 = 0x796C746E65636572;
        v11 = 0xEE00646579616C50;
        break;
      case 0x15:
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000024FA41C10;
        break;
      case 0x16:
        v12 = 0x4D707041656D6167;
        v11 = 0xEF61746164617465;
        break;
      case 0x17:
        v12 = 0x7262694C656D6167;
        v11 = 0xEB00000000797261;
        break;
      case 0x18:
        v12 = 0xD000000000000014;
        v11 = 0x800000024FA41C50;
        break;
      case 0x19:
        v12 = 0xD000000000000012;
        v11 = 0x800000024FA41C70;
        break;
      case 0x1A:
        v12 = 0x7463697274736572;
LABEL_33:
        v13 = 1936617321;
LABEL_34:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x1B:
        v12 = 0xD000000000000010;
        v11 = 0x800000024FA41C90;
        break;
      case 0x1C:
        v11 = 0xE700000000000000;
        v12 = 0x6C616974696E69;
        break;
      default:
        break;
    }

    v14 = 0xE300000000000000;
    v15 = 7105633;
    switch(a2)
    {
      case 1:
        v14 = 0xEA00000000007365;
        if (v12 == 0x676E656C6C616863)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      case 2:
        v14 = 0xE700000000000000;
        v16 = 0x646E65697266;
        goto LABEL_57;
      case 3:
        v21 = 0x6552646E65697266;
        v22 = 0x737473657571;
        goto LABEL_61;
      case 4:
        v14 = 0x800000024FA41B30;
        if (v12 != 0xD000000000000015)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 5:
        v14 = 0xE500000000000000;
        v17 = 1701667175;
        goto LABEL_64;
      case 6:
        v14 = 0xE800000000000000;
        if (v12 != 0x73656C69666F7270)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 7:
        v14 = 0xE700000000000000;
        v16 = 0x726579616C70;
        goto LABEL_57;
      case 8:
        v20 = 0x6D65766569686361;
        v23 = 1937010277;
        goto LABEL_92;
      case 9:
        v14 = 0xEC00000073647261;
        goto LABEL_47;
      case 10:
        v14 = 0xE500000000000000;
        if (v12 != 0x6F746F6870)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 11:
        v14 = 0xEF73746553647261;
LABEL_47:
        if (v12 != 0x6F6272656461656CLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 12:
        v18 = 0x6E65726566657270;
        v19 = 7562595;
        goto LABEL_82;
      case 13:
        v14 = 0xE600000000000000;
        if (v12 != 0x7365726F6373)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 14:
        v14 = 0xE500000000000000;
        v17 = 1852994932;
LABEL_64:
        if (v12 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 15:
        v20 = 0x73736553656D6167;
        goto LABEL_91;
      case 16:
        v14 = 0xE700000000000000;
        v16 = 0x726174617661;
LABEL_57:
        if (v12 != (v16 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 17:
        v21 = 0x50656C69666F7270;
        v22 = 0x796361766972;
        goto LABEL_61;
      case 18:
        v14 = 0x800000024FA41BD0;
        if (v12 != 0xD00000000000001ALL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 19:
        v14 = 0x800000024FA41BF0;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 20:
        v21 = 0x796C746E65636572;
        v22 = 0x646579616C50;
LABEL_61:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v12 != v21)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 21:
        v14 = 0x800000024FA41C10;
        if (v12 != 0xD00000000000001DLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 22:
        v14 = 0xEF61746164617465;
        if (v12 != 0x4D707041656D6167)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 23:
        v18 = 0x7262694C656D6167;
        v19 = 7959137;
LABEL_82:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v18)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 24:
        v14 = 0x800000024FA41C50;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 25:
        v14 = 0x800000024FA41C70;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 26:
        v20 = 0x7463697274736572;
LABEL_91:
        v23 = 1936617321;
LABEL_92:
        v14 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v12 != v20)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 27:
        v14 = 0x800000024FA41C90;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 28:
        v14 = 0xE700000000000000;
        v15 = 0x6C616974696E69;
        goto LABEL_85;
      default:
LABEL_85:
        if (v12 != v15)
        {
          goto LABEL_87;
        }

LABEL_86:
        if (v11 != v14)
        {
LABEL_87:
          v24 = sub_24F92CE08();

          if (v24)
          {
            goto LABEL_96;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_94;
          }

          continue;
        }

LABEL_96:
        result = 0;
        LOBYTE(a2) = *(*(v6 + 48) + v9);
LABEL_97:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_24ED7E294(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = Shelf.ContentType.rawValue.getter();
      v12 = v11;
      if (v10 == Shelf.ContentType.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_24F92CE08();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24ED87274(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7E42C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24F92D068();
  sub_24F92B218();
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ED874B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}