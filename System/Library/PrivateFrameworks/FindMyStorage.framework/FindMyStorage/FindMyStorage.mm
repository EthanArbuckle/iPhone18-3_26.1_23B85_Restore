uint64_t Database.readConnection.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  if (v6 != 1)
  {
    return 0;
  }

  result = (*(a2 + 32))(a1, a2);
  if (result)
  {
    v5 = *(result + 16);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.startup()()
{
  v4 = v2;
  v5 = v1;
  v6 = v0;
  v7 = *(v1 + 32);
  if (!v7())
  {
    (*(v5 + 144))(v6, v5);
    if (v3)
    {
      return;
    }

    v8 = (v7)(v6, v5);
    if (!v8)
    {
      sub_230CFDFF8();
      swift_allocError();
      *v10 = 2;
      *(v10 + 4) = 1;
      swift_willThrow();
      return;
    }

    v9 = *(v8 + 24);

    sub_230CFF750();
    Database.optimize()();
    if (!v11)
    {
      sub_230CFF730();
      _sqlite3_maintain_load_factor();
      v12 = sub_230CFC150();
      v60 = *(v5 + 72);
      if (v60(v6, v5) < v12)
      {
        if (qword_280D7B840 == -1)
        {
LABEL_11:
          v13 = sub_230CFF800();
          __swift_project_value_buffer(v13, qword_280D7B8F8);
          swift_unknownObjectRetain_n();
          v14 = sub_230CFF7E0();
          v15 = sub_230CFF8A0();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v65 = v64;
            *v16 = 136446722;
            v67 = v4;
            v17 = *(v5 + 16);
            v18 = sub_230CFF930();
            v20 = sub_230CFD9BC(v18, v19, &v65);

            *(v16 + 4) = v20;
            *(v16 + 12) = 1024;
            *(v16 + 14) = v12;
            *(v16 + 18) = 1024;
            v21 = v60(v6, v5);
            swift_unknownObjectRelease();
            *(v16 + 20) = v21;
            swift_unknownObjectRelease();
            _os_log_impl(&dword_230CF8000, v14, v15, "%{public}s Schema too new! (%d) -- expected <= %d", v16, 0x18u);
            __swift_destroy_boxed_opaque_existential_0(v64);
            MEMORY[0x23191CEF0](v64, -1, -1);
            MEMORY[0x23191CEF0](v16, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

          sub_230CFDFF8();
          swift_allocError();
          *v47 = v12;
          *(v47 + 4) = 0;
          swift_willThrow();
          goto LABEL_8;
        }

LABEL_38:
        swift_once();
        goto LABEL_11;
      }

      if (v12 >= v60(v6, v5))
      {
        if (qword_280D7B840 == -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = sub_230CFC150();
        v23 = v60(v6, v5);
        if (v23 >= v22)
        {
          v12 = 22;
          if (v22 != v23)
          {
            if (qword_280D7B840 != -1)
            {
              v57 = v23;
              swift_once();
              v23 = v57;
            }

            v59 = *(v5 + 120);
            v58 = v23;
            while (v22 < v23)
            {
              v62 = v22 + 1;
              v24 = sub_230CFF800();
              __swift_project_value_buffer(v24, qword_280D7B8F8);
              swift_unknownObjectRetain();
              v25 = sub_230CFF7E0();
              v26 = sub_230CFF8B0();
              if (os_log_type_enabled(v25, v26))
              {
                v61 = v22;
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                v65 = v28;
                *v27 = 136446722;
                v67 = v4;
                v29 = *(v5 + 16);
                v30 = sub_230CFF930();
                v32 = v31;
                swift_unknownObjectRelease();
                v33 = sub_230CFD9BC(v30, v32, &v65);
                v12 = 22;

                *(v27 + 4) = v33;
                *(v27 + 12) = 1024;
                *(v27 + 14) = v61;
                *(v27 + 18) = 1024;
                *(v27 + 20) = v62;
                _os_log_impl(&dword_230CF8000, v25, v26, "%{public}s migrating schema %d -> %d", v27, 0x18u);
                __swift_destroy_boxed_opaque_existential_0(v28);
                MEMORY[0x23191CEF0](v28, -1, -1);
                v34 = v27;
                v22 = v61;
                MEMORY[0x23191CEF0](v34, -1, -1);
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v59(v22);
              v65 = 0;
              v66 = 0xE000000000000000;
              sub_230CFF8E0();

              v65 = 0xD000000000000016;
              v66 = 0x8000000230D00200;
              LODWORD(v67) = v62;
              v35 = sub_230CFF930();
              MEMORY[0x23191CA90](v35);

              sub_230CFF720();

              v22 = v62;
              v23 = v58;
              if (v58 == v62)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_24:
          Database.excludeFromBackup()();
          if (v36)
          {
            goto LABEL_8;
          }

          if (qword_280D7B840 != -1)
          {
            swift_once();
          }

          v37 = sub_230CFF800();
          __swift_project_value_buffer(v37, qword_280D7B8F8);
          swift_unknownObjectRetain_n();
          v38 = sub_230CFF7E0();
          v39 = sub_230CFF8B0();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v65 = v41;
            *v40 = 136446466;
            v67 = v4;
            v42 = *(v5 + 16);
            v43 = sub_230CFF930();
            v45 = sub_230CFD9BC(v43, v44, &v65);

            *(v40 + 4) = v45;
            *(v40 + 12) = 1024;
            v46 = v60(v6, v5);
            swift_unknownObjectRelease();
            *(v40 + 14) = v46;
            swift_unknownObjectRelease();
            _os_log_impl(&dword_230CF8000, v38, v39, "%{public}s is available. [schema version %d]", v40, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x23191CEF0](v41, -1, -1);
            MEMORY[0x23191CEF0](v40, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

LABEL_35:
          (*(v5 + 112))(v6, v5);
          goto LABEL_8;
        }

        __break(1u);
      }

      swift_once();
LABEL_32:
      v48 = sub_230CFF800();
      __swift_project_value_buffer(v48, qword_280D7B8F8);
      swift_unknownObjectRetain_n();
      v49 = sub_230CFF7E0();
      v50 = sub_230CFF8B0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v65 = v63;
        *v51 = 136446466;
        v67 = v2;
        v52 = *(v5 + 16);
        v53 = sub_230CFF930();
        v55 = sub_230CFD9BC(v53, v54, &v65);

        *(v51 + 4) = v55;
        *(v51 + 12) = 1024;
        v56 = v60(v6, v5);
        swift_unknownObjectRelease();
        *(v51 + 14) = v56;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_230CF8000, v49, v50, "%{public}s is available. [schema version %d]", v51, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x23191CEF0](v63, -1, -1);
        MEMORY[0x23191CEF0](v51, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      goto LABEL_35;
    }
  }

LABEL_8:
}

void *sub_230CF9EC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_230CF9ED8(uint64_t a1)
{
  v2 = sub_230CF9F38();

  return MEMORY[0x2821D03D8](a1, v2);
}

void sub_230CF9F24(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1;
  }
}

unint64_t sub_230CF9F38()
{
  result = qword_280D7B810;
  if (!qword_280D7B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B810);
  }

  return result;
}

uint64_t sub_230CF9F8C(uint64_t a1)
{
  v2 = sub_230CF9FD8();

  return MEMORY[0x2821D03D8](a1, v2);
}

unint64_t sub_230CF9FD8()
{
  result = qword_27DB59F90;
  if (!qword_27DB59F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F90);
  }

  return result;
}

uint64_t sub_230CFA038(uint64_t a1)
{
  v2 = sub_230CFA084();

  return MEMORY[0x2821D03D8](a1, v2);
}

unint64_t sub_230CFA084()
{
  result = qword_27DB59F88;
  if (!qword_27DB59F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F88);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.purge()()
{
  v3 = v1;
  v4 = v0;
  v69[1] = *MEMORY[0x277D85DE8];
  v68 = sub_230CFF6F0();
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v68);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v65 = &v61 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v61 - v24;
  MEMORY[0x28223BE20](v23);
  v66 = &v61 - v25;
  (*(v3 + 40))(0, v4, v3);
  if (((*(v3 + 80))(v4, v3) & 1) == 0)
  {
    (*(v3 + 24))(v4, v3);
    (*(v3 + 96))(v20, v17, v14, v11, v4, v3);
    if (v2)
    {
      (*(v5 + 8))(v11, v68);
    }

    else
    {
      v62 = 0;
      v26 = v68;
      v63 = *(v5 + 8);
      v63(v11, v68);
      v27 = *(v5 + 32);
      v28 = v66;
      v27(v66, v20, v26);
      v27(v67, v17, v26);
      v29 = v65;
      v27(v65, v14, v26);
      v61 = [objc_opt_self() defaultManager];
      if (qword_280D7B840 != -1)
      {
        swift_once();
      }

      v30 = sub_230CFF800();
      __swift_project_value_buffer(v30, qword_280D7B8F8);
      v31 = v64;
      (*(v5 + 16))(v64, v28, v26);
      v32 = sub_230CFF7E0();
      v33 = sub_230CFF8B0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v31;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v69[0] = v36;
        *v35 = 136446210;
        sub_230CFE11C(&qword_280D7B838, MEMORY[0x277CC9260]);
        v37 = sub_230CFF930();
        v39 = v38;
        v63(v34, v68);
        v40 = sub_230CFD9BC(v37, v39, v69);
        v26 = v68;

        *(v35 + 4) = v40;
        _os_log_impl(&dword_230CF8000, v32, v33, "Purging database: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v41 = v36;
        v29 = v65;
        MEMORY[0x23191CEF0](v41, -1, -1);
        MEMORY[0x23191CEF0](v35, -1, -1);
      }

      else
      {

        v63(v31, v26);
      }

      v42 = v66;
      v43 = sub_230CFF6C0();
      v69[0] = 0;
      v44 = v61;
      v45 = [v61 removeItemAtURL:v43 error:v69];

      if (v45)
      {
        v46 = v69[0];
      }

      else
      {
        v47 = v69[0];
        v48 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v48);
        v62 = 0;
      }

      v49 = sub_230CFF6C0();
      v69[0] = 0;
      v50 = [v44 removeItemAtURL:v49 error:v69];

      if (v50)
      {
        v51 = v69[0];
      }

      else
      {
        v52 = v69[0];
        v53 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v53);
        v62 = 0;
      }

      v54 = sub_230CFF6C0();
      v69[0] = 0;
      v55 = [v44 removeItemAtURL:v54 error:v69];

      if (v55)
      {
        v56 = v69[0];
      }

      else
      {
        v57 = v69[0];
        v58 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v58);
      }

      v59 = v63;
      v63(v29, v26);
      v59(v67, v26);
      v59(v42, v26);
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reset()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 128))();
  if (!v2)
  {
    (*(v3 + 104))(v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.createIfNecessary()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_230CFF6F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 32))(v4, v3))
  {
  }

  else
  {
    (*(v3 + 24))(v4, v3);
    v10 = (*(v3 + 80))(v4, v3);
    v11 = Database.establishConnection(baseContainerURL:temporary:)(v9, v10 & 1, v4, v3);
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v12 = v11;
      (*(v6 + 8))(v9, v5);
      (*(v3 + 40))(v12, v4, v3);
    }
  }
}

uint64_t Database.description.getter(uint64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F30, &qword_230CFFD68);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - v6;
  v7 = sub_230CFF6F0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v42 = &v40 - v22;
  (*(a2 + 24))(a1, a2);
  v23 = *(a2 + 96);
  v46 = a1;
  v47 = v2;
  v45 = a2;
  v23(v21, v18, v15, v12, a1, a2);
  v41 = v8[1];
  v41(v12, v7);
  v25 = v43;
  v24 = v44;
  v26 = *(v43 + 48);
  v40 = *(v43 + 64);
  v27 = v8[4];
  v27(v44, v21, v7);
  v27(&v24[v26], v18, v7);
  v27(&v24[v40], v15, v7);
  v28 = *(v25 + 48);
  v29 = *(v25 + 64);
  v30 = v42;
  v27(v42, v24, v7);
  v31 = v41;
  v41(&v24[v29], v7);
  v31(&v24[v28], v7);
  v32 = sub_230CFF6E0();
  v34 = v33;
  v31(v30, v7);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_230CFF8E0();

  v49 = 60;
  v50 = 0xE100000000000000;
  v35 = v46;
  v48 = v47;
  v36 = *(v45 + 16);
  v37 = sub_230CFF910();
  MEMORY[0x23191CA90](v37);

  MEMORY[0x23191CA90](8250, 0xE200000000000000);
  v38 = MEMORY[0x23191CB90](v35, v36);
  MEMORY[0x23191CA90](v38);

  MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
  MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
  MEMORY[0x23191CA90](32, 0xE100000000000000);
  MEMORY[0x23191CA90](v32, v34);

  MEMORY[0x23191CA90](62, 0xE100000000000000);
  return v49;
}

uint64_t Database.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(a2 + 8) + 8);
  v6 = sub_230CFF850();

  return MEMORY[0x2822009F8](sub_230CFAE6C, v6, v5);
}

uint64_t sub_230CFAE6C()
{
  v1 = v0[5];
  v2 = (*(v0[4] + 32))(v0[3]);
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  if (v2)
  {
    v6 = v2;
    sub_230CFF8E0();

    v0[2] = v3;
    v7 = *(v4 + 16);
    v8 = sub_230CFF910();
    MEMORY[0x23191CA90](v8);

    MEMORY[0x23191CA90](8250, 0xE200000000000000);
    v9 = MEMORY[0x23191CB90](v5, v7);
    MEMORY[0x23191CA90](v9);

    MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
    MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
    MEMORY[0x23191CA90](32, 0xE100000000000000);
    v10 = *(v6 + 16);
    v11 = sub_230CFF710();
    MEMORY[0x23191CA90](v11);

    MEMORY[0x23191CA90](62, 0xE100000000000000);
  }

  else
  {
    sub_230CFF8E0();

    v0[2] = v3;
    v12 = *(v4 + 16);
    v13 = sub_230CFF910();
    MEMORY[0x23191CA90](v13);

    MEMORY[0x23191CA90](8250, 0xE200000000000000);
    v14 = MEMORY[0x23191CB90](v5, v12);
    MEMORY[0x23191CA90](v14);

    MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
    MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
    MEMORY[0x23191CA90](0xD000000000000010, 0x8000000230D00240);
  }

  v15 = v0[1];

  return v15(60, 0xE100000000000000);
}

uint64_t Database.writeConnection.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  if (v6 != 1)
  {
    return 0;
  }

  result = (*(a2 + 32))(a1, a2);
  if (result)
  {
    v5 = *(result + 24);

    return v5;
  }

  return result;
}

uint64_t Database.await(state:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F38, &qword_230CFFD80);
  *(v4 + 56) = v7;
  v8 = *(v7 - 8);
  *(v4 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F40, &qword_230CFFD88);
  *(v4 + 80) = v10;
  v11 = *(v10 - 8);
  *(v4 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 25) = *a1;
  *(v4 + 104) = *(*(a3 + 8) + 8);
  v14 = sub_230CFF850();
  *(v4 + 112) = v14;
  *(v4 + 120) = v13;

  return MEMORY[0x2822009F8](sub_230CFB314, v14, v13);
}

uint64_t sub_230CFB314()
{
  v19 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 48);
  (*(*(v0 + 40) + 56))(&v18, *(v0 + 32));
  if (v1 == v18)
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v3 = *(v0 + 96);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    (*(*(v0 + 40) + 64))(*(v0 + 32));
    sub_230CFF860();
    (*(v5 + 8))(v4, v7);
    *(v0 + 128) = 0;
    v8 = *(v0 + 104);
    v9 = *(v0 + 48);
    v10 = *(MEMORY[0x277D85798] + 4);
    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = sub_230CFB4A8;
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 16, v9, v8, v13);
  }
}

uint64_t sub_230CFB4A8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_230CFB5C8, v4, v3);
}

uint64_t sub_230CFB5C8()
{
  if (!*(v0 + 16))
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 128);

  sub_230CFF880();
  if (v2)
  {
    v3 = *(v0 + 72);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v4 = *(v0 + 8);
LABEL_9:

    return v4();
  }

  if (*(v0 + 25) == (v1 & 1))
  {
LABEL_8:
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);

    v4 = *(v0 + 8);
    goto LABEL_9;
  }

  *(v0 + 128) = 0;
  v5 = *(v0 + 104);
  v6 = *(v0 + 48);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_230CFB4A8;
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 16, v6, v5, v10);
}

uint64_t Database.establishConnection(baseContainerURL:temporary:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v67 = a1;
  v70 = *MEMORY[0x277D85DE8];
  v6 = sub_230CFF770();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v65 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v56 - v12;
  MEMORY[0x28223BE20](v11);
  v66 = (v56 - v14);
  v15 = sub_230CFF6F0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v56 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v56 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v56 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  if (a2)
  {
    (*(v7 + 104))(v13, *MEMORY[0x277D6AEF8], v6);
    type metadata accessor for ConnectionPair();
    swift_allocObject();
    result = ConnectionPair.init(_:readonly:key:)(v13, 0, 0, 0xF000000000000000);
  }

  else
  {
    v58 = v19;
    v59 = v6;
    v60 = v35;
    v61 = v34;
    v63 = v31;
    v64 = v56 - v32;
    v62 = v33;
    v38 = v68;
    v37 = v69;
    result = (*(a4 + 88))(v68, a4);
    if (!v37)
    {
      v40 = result;
      v41 = v39;
      (*(a4 + 96))(v28, v25, v22, v67, v38, a4);
      v43 = v63;
      v67 = v41;
      v44 = *(v62 + 32);
      v57 = v40;
      v44(v64, v28, v63);
      v44(v61, v25, v43);
      v44(v60, v22, v43);
      v45 = v67;
      v46 = v57;
      v47 = sub_230CFF6E0();
      v48 = v66;
      *v66 = v47;
      *(v48 + 8) = v49;
      v50 = *(v7 + 104);
      v51 = *MEMORY[0x277D6AEE8];
      v56[4] = v7 + 104;
      v50(v48, v51, v59);
      type metadata accessor for ConnectionPair();
      swift_allocObject();
      sub_230CFE0B4(v46, v45);
      v52 = ConnectionPair.init(_:readonly:key:)(v48, 0, v46, v45);
      v69 = 0;
      v53 = v52;
      sub_230CFE04C(v46, v45);
      v54 = *(v62 + 8);
      v55 = v63;
      v54(v60, v63);
      v54(v61, v55);
      v54(v64, v55);
      result = v53;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.optimize()()
{
  v1 = (*(v0 + 32))();
  if (v1)
  {
    v2 = *(v1 + 24);

    sub_230CFF750();
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v3 = 2;
    *(v3 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_230CFC150()
{
  sub_230CFF740();
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_230CFEDE0(&v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
  swift_dynamicCast();
  result = v1;
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.excludeFromBackup()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_230CFF670();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  (MEMORY[0x28223BE20])();
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_230CFF6F0();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v52 = &v49 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v56 = &v49 - v24;
  MEMORY[0x28223BE20](v23);
  v55 = &v49 - v25;
  v57 = [objc_opt_self() defaultManager];
  (*(v2 + 24))(v3, v2);
  v26 = v58;
  (*(v2 + 96))(v20, v17, v14, v11, v3, v2);
  if (v26)
  {
    (*(v7 + 8))(v11, v59);

    return;
  }

  v58 = v4;
  v27 = *(v7 + 8);
  v28 = v59;
  v51 = v7 + 8;
  v49 = 0;
  v50 = v27;
  v27(v11, v59);
  v29 = *(v7 + 32);
  v30 = v55;
  v29(v55, v20, v28);
  v29(v56, v17, v28);
  v31 = v52;
  v29(v52, v14, v28);
  v32 = v53;
  sub_230CFF660();
  sub_230CFF650();
  sub_230CFF6E0();
  v33 = sub_230CFF810();

  v34 = v57;
  LODWORD(v29) = [v57 fileExistsAtPath_];

  v35 = v56;
  if (v29)
  {
    v36 = v30;
    v37 = v49;
    sub_230CFF6B0();
    v38 = v37;
    if (v37)
    {

      (*(v54 + 8))(v32, v58);
      v39 = v50;
      v50(v31, v28);
      v39(v35, v28);
      v39(v36, v28);
      return;
    }
  }

  else
  {
    v38 = v49;
  }

  sub_230CFF6E0();
  v40 = sub_230CFF810();

  v41 = [v34 fileExistsAtPath_];

  if (v41)
  {
    sub_230CFF6B0();
    if (v38)
    {

      (*(v54 + 8))(v32, v58);
      v42 = v50;
      v50(v31, v28);
      v42(v35, v28);
      v42(v55, v28);
      return;
    }
  }

  sub_230CFF6E0();
  v43 = sub_230CFF810();

  v44 = [v34 fileExistsAtPath_];

  if (v44)
  {
    sub_230CFF6B0();
    v45 = v58;
    v46 = v55;
    if (v38)
    {

      (*(v54 + 8))(v32, v45);
      goto LABEL_16;
    }

    v47 = v54;
  }

  else
  {
    v45 = v58;
    v47 = v54;
    v46 = v55;
  }

  (*(v47 + 8))(v32, v45);
LABEL_16:
  v48 = v50;
  v50(v31, v28);
  v48(v35, v28);
  v48(v46, v28);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  v1 = (*(v0 + 32))();
  if (v1)
  {
    v2 = *(v1 + 24);

    sub_230CFF750();
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v3 = 2;
    *(v3 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t Database.tableNames(connection:)()
{
  v2 = sub_230CFF760();
  if (v0)
  {
    return v1;
  }

  v16[0] = v2;
  sub_230CFF7D0();
  v3 = MEMORY[0x277D6AF48];
  sub_230CFE11C(&qword_280D7B830, MEMORY[0x277D6AF48]);

  sub_230CFF840();
  sub_230CFE11C(&qword_280D7B828, v3);
  result = sub_230CFF8C0();
  v5 = v18;
  if (!v18)
  {
    v1 = MEMORY[0x277D84F90];
LABEL_16:

    return v1;
  }

  v1 = MEMORY[0x277D84F90];
  while (*(v5 + 16))
  {
    sub_230CFE164(v5 + 32, v16);

    if (v16[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
      if (swift_dynamicCast())
      {
        v6 = v17;
        if (v17)
        {
          v15 = v16[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_230CFD8B0(0, *(v1 + 2) + 1, 1, v1);
          }

          v8 = *(v1 + 2);
          v7 = *(v1 + 3);
          v9 = v8 + 1;
          if (v8 >= v7 >> 1)
          {
            v14 = v8 + 1;
            v11 = v1;
            v12 = *(v1 + 2);
            v13 = sub_230CFD8B0((v7 > 1), v8 + 1, 1, v11);
            v9 = v14;
            v8 = v12;
            v1 = v13;
          }

          *(v1 + 2) = v9;
          v10 = &v1[16 * v8];
          *(v10 + 4) = v15;
          *(v10 + 5) = v6;
        }
      }
    }

    else
    {
      sub_230CFE1D4(v16, &qword_27DB59F48, &qword_230CFFD90);
    }

    result = sub_230CFF8C0();
    v5 = v18;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Database.columnNames(connection:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230CFF760();
  if (v3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F58, &qword_230CFFDA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230CFFD50;
  v8 = MEMORY[0x277D6AF68];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v8;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  v10 = sub_230CFF7C0();

  v23[0] = v10;
  sub_230CFF7D0();
  v11 = MEMORY[0x277D6AF48];
  sub_230CFE11C(&qword_280D7B830, MEMORY[0x277D6AF48]);

  sub_230CFF840();
  sub_230CFE11C(&qword_280D7B828, v11);
  result = sub_230CFF8C0();
  v12 = v25;
  if (!v25)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_18:

    return v4;
  }

  v4 = MEMORY[0x277D84F90];
  while (*(v12 + 16))
  {
    sub_230CFE164(v12 + 32, v23);

    if (v23[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
      if (swift_dynamicCast())
      {
        v13 = v24;
        if (v24)
        {
          v22 = v23[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_230CFD8B0(0, *(v4 + 2) + 1, 1, v4);
          }

          v15 = *(v4 + 2);
          v14 = *(v4 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v21 = v15 + 1;
            v18 = v4;
            v19 = *(v4 + 2);
            v20 = sub_230CFD8B0((v14 > 1), v15 + 1, 1, v18);
            v16 = v21;
            v15 = v19;
            v4 = v20;
          }

          *(v4 + 2) = v16;
          v17 = &v4[16 * v15];
          *(v17 + 4) = v22;
          *(v17 + 5) = v13;
        }
      }
    }

    else
    {
      sub_230CFE1D4(v23, &qword_27DB59F48, &qword_230CFFD90);
    }

    result = sub_230CFF8C0();
    v12 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database._test_raw_scalar_sql_query(_:)(Swift::String a1)
{
  v4 = v2;
  v5 = v1;
  if ((MEMORY[0x23191C880]() & 1) == 0)
  {
    return 0;
  }

  if (Database.readConnection.getter(v5, v4))
  {
    sub_230CFF740();
    if (!v3)
    {
      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
        if (swift_dynamicCast())
        {

          return v9;
        }
      }

      else
      {
        sub_230CFE1D4(v10, &qword_27DB59F48, &qword_230CFFD90);
      }

      sub_230CFDFF8();
      swift_allocError();
      *v8 = 0;
      *(v8 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v7 = 2;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }
}

unint64_t sub_230CFD1B0(char *a1, int a2, uint64_t a3, unint64_t a4)
{
  v23[3] = a2;
  v25[5] = *MEMORY[0x277D85DE8];
  v7 = sub_230CFF6F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  sub_230CFF6D0();
  v13 = sub_230CFF6C0();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v25[0] = 0;
  LODWORD(v11) = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v25];

  if (v11)
  {
    v15 = a3;
    v16 = a4;
    v17 = v25[0];
    sub_230CFF6E0();
    v18 = v24;
    v19 = sub_230CFF7A0();
    if (v18)
    {
      v14(a1, v7);
      sub_230CFE04C(v15, a4);
    }

    else
    {
      a4 = v19;
      if (v16 >> 60 == 15)
      {
        v14(a1, v7);
      }

      else
      {

        sub_230CFE0B4(v15, v16);
        sub_230CFEAF0(v15, v16, a4, v15, v16);
        sub_230CFE04C(v15, v16);
        sub_230CFF740();
        sub_230CFE04C(v15, v16);
        v14(a1, v7);
        sub_230CFE1D4(v25, &qword_27DB59F48, &qword_230CFFD90);
      }
    }
  }

  else
  {
    v20 = v25[0];
    sub_230CFF690();

    swift_willThrow();
    sub_230CFE04C(a3, a4);
    v14(a1, v7);
  }

  v21 = *MEMORY[0x277D85DE8];
  return a4;
}

uint64_t DatabaseState.hashValue.getter()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD55C()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD5D0()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

unint64_t static UInt8.fromDatatypeValue(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_230CFD644@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 <= 0xFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static Int32.fromDatatypeValue(_:)(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_230CFD694@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t static UInt32.fromDatatypeValue(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_230CFD6E0@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_230CFD70C(uint64_t a1)
{
  v2 = sub_230CFE9A4();

  return MEMORY[0x2821D03D8](a1, v2);
}

uint64_t UInt64.datatypeValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t DatabaseCheckpointMode.hashValue.getter()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD800()
{
  v0 = sub_230CFF800();
  __swift_allocate_value_buffer(v0, qword_280D7B8F8);
  __swift_project_value_buffer(v0, qword_280D7B8F8);
  return sub_230CFF7F0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_230CFD8B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F98, &qword_230D00178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_230CFD9BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_230CFDA88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_230CFED20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_230CFDA88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_230CFDB94(a5, a6);
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
    result = sub_230CFF8F0();
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

uint64_t sub_230CFDB94(uint64_t a1, unint64_t a2)
{
  v4 = sub_230CFDBE0(a1, a2);
  sub_230CFDD10(&unk_2845A32C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_230CFDBE0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_230CFDDFC(v5, 0);
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

  result = sub_230CFF8F0();
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
        v10 = sub_230CFF830();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_230CFDDFC(v10, 0);
        result = sub_230CFF8D0();
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

uint64_t sub_230CFDD10(uint64_t result)
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

  result = sub_230CFDE70(result, v12, 1, v3);
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

void *sub_230CFDDFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59FA0, &qword_230D00180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_230CFDE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59FA0, &qword_230D00180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

unint64_t sub_230CFDFF8()
{
  result = qword_27DB59F28;
  if (!qword_27DB59F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F28);
  }

  return result;
}

uint64_t sub_230CFE04C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230CFE060(a1, a2);
  }

  return a1;
}

uint64_t sub_230CFE060(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_230CFE0B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230CFE0C8(a1, a2);
  }

  return a1;
}

uint64_t sub_230CFE0C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_230CFE11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230CFE164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F48, &qword_230CFFD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230CFE1D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_230CFE238()
{
  result = qword_27DB59F60;
  if (!qword_27DB59F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F60);
  }

  return result;
}

unint64_t sub_230CFE290()
{
  result = qword_280D7B820;
  if (!qword_280D7B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B820);
  }

  return result;
}

unint64_t sub_230CFE2F4()
{
  result = qword_27DB59F68;
  if (!qword_27DB59F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F68);
  }

  return result;
}

unint64_t sub_230CFE34C()
{
  result = qword_27DB59F70;
  if (!qword_27DB59F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F70);
  }

  return result;
}

unint64_t sub_230CFE3A4()
{
  result = qword_280D7B818;
  if (!qword_280D7B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B818);
  }

  return result;
}

unint64_t sub_230CFE3FC()
{
  result = qword_27DB59F78;
  if (!qword_27DB59F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_230CFE7D8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230CFE7F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseCheckpointMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseCheckpointMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230CFE9A4()
{
  result = qword_27DB59F80;
  if (!qword_27DB59F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F80);
  }

  return result;
}

uint64_t sub_230CFE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (sub_230CFF620())
  {
    result = sub_230CFF640();
    if (__OFSUB__(a1, result))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_230CFF630();
  result = sub_230CFF730();
  v9 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v9)
    {
      return sqlite3_key_v2();
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
    }

    return sqlite3_key_v2();
  }

  if (v9 != 2)
  {
    return sqlite3_key_v2();
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = v10 - v11;
  if (!__OFSUB__(v10, v11))
  {
    if (v12 >= 0xFFFFFFFF80000000)
    {
      if (v12 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_11;
      }

      return sqlite3_key_v2();
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_230CFEAF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    if (a1 <= a1 >> 32)
    {
      v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_32;
  }

  v8 = a4;
  a1 = sub_230CFF730();
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_29;
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    v15 = v13 - v14;
    if (__OFSUB__(v13, v14))
    {
      goto LABEL_34;
    }

    if (v15 >= 0xFFFFFFFF80000000)
    {
      LODWORD(v12) = 0x7FFFFFFF;
      if (v15 <= 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_21;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  v7 = HIDWORD(v8);
  a4 = (HIDWORD(v8) - v8);
  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_8:
  if (v7 != 2)
  {
    v8 = a4;
    sub_230CFF730();
    v12 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v12)
      {
        goto LABEL_29;
      }

LABEL_26:
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        __break(1u);
      }

      goto LABEL_29;
    }

LABEL_21:
    if (v12 != 2)
    {
      goto LABEL_29;
    }

    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    v18 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
LABEL_35:
      __break(1u);
    }

    if (v18 >= 0xFFFFFFFF80000000)
    {
      if (v18 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_26;
      }

LABEL_29:
      v11 = sqlite3_key_v2();

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  a1 = *(a1 + 16);
  v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v11 = sub_230CFE9F8(a1, v10, a3, a4, a5);

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_230CFED20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_230CFEDE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConnectionPair.__allocating_init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  ConnectionPair.init(_:readonly:key:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ConnectionPair.init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v55 = a4;
  v58 = a3;
  LODWORD(v53) = a2;
  v52 = *v4;
  v62 = sub_230CFF6F0();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v62);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - v13;
  v14 = sub_230CFF770();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v50 - v20);
  v22 = *(v15 + 16);
  v57 = a1;
  v22(&v50 - v20, a1, v14);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 != *MEMORY[0x277D6AEE8])
  {
    v35 = v54;
    v36 = v55;
    if (v23 != *MEMORY[0x277D6AEF0] && v23 != *MEMORY[0x277D6AEF8])
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_230CFF8E0();

      v60 = 0xD000000000000014;
      v61 = 0x8000000230D003B0;
      sub_230CFF430();
      v48 = sub_230CFF930();
      MEMORY[0x23191CA90](v48);

      result = sub_230CFF900();
      __break(1u);
      return result;
    }

    v38 = v57;
    v22(v19, v57, v14);
    v39 = sub_230CFF780();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = v35;
    v43 = sub_230CFF790();
    v34 = v56;
    if (v42)
    {
      sub_230CFE04C(v58, v36);
      (*(v15 + 8))(v38, v14);
      goto LABEL_12;
    }

    *(v56 + 16) = v43;
    *(v34 + 24) = v43;

    v30 = v36;
LABEL_14:

    sub_230CFF700();

    v47 = *(v34 + 24);
    sub_230CFF700();
    sub_230CFE04C(v58, v30);
    (*(v15 + 8))(v38, v14);
    return v34;
  }

  (*(v15 + 96))(v21, v14);
  v24 = *v21;
  v25 = v21[1];
  v26 = v59;
  sub_230CFF6A0();

  v27 = sub_230CFF780();
  v28 = *(v6 + 16);
  v28(v12, v26, v62);
  v29 = v58;
  v30 = v55;
  sub_230CFE0B4(v58, v55);
  v31 = v53 & 1;
  v53 = v27;
  v32 = v54;
  v33 = sub_230CFD1B0(v12, v31, v29, v30);
  if (!v32)
  {
    v54 = v6;
    v44 = v29;
    v34 = v56;
    *(v56 + 24) = v33;
    v45 = v51;
    v28(v51, v59, v62);
    sub_230CFE0B4(v44, v30);
    v46 = sub_230CFD1B0(v45, 1, v44, v30);
    (*(v54 + 8))(v59, v62);
    *(v34 + 16) = v46;
    v38 = v57;
    goto LABEL_14;
  }

  sub_230CFE04C(v29, v30);
  (*(v15 + 8))(v57, v14);
  (*(v6 + 8))(v59, v62);
  v34 = v56;
LABEL_12:
  swift_deallocPartialClassInstance();
  return v34;
}

unint64_t sub_230CFF430()
{
  result = qword_27DB59FA8;
  if (!qword_27DB59FA8)
  {
    sub_230CFF770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59FA8);
  }

  return result;
}

uint64_t ConnectionPair.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ConnectionPair.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_230CFF5A0()
{
  v0 = sub_230CFF800();
  __swift_allocate_value_buffer(v0, qword_280D7B910);
  __swift_project_value_buffer(v0, qword_280D7B910);
  return sub_230CFF7F0();
}