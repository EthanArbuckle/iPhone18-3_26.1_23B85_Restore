void sub_25A886324(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x7365756C6176, 0xE600000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v29), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v6 = sub_25A997BD8();
    __swift_project_value_buffer(v6, qword_27FA0FCE8);

    v7 = sub_25A997BB8();
    v8 = sub_25A998398();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v9 = 136315138;
      v10 = *(v27 + 16);
      if (v10)
      {
        v25 = v7;
        v28 = MEMORY[0x277D84F90];
        sub_25A9375A0(0, v10, 0);
        v11 = v28;
        v12 = v27 + 32;
        do
        {
          sub_25A87500C(v12, v29);
          sub_25A9987C8();
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          v14 = *(v28 + 16);
          v13 = *(v28 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_25A9375A0((v13 > 1), v14 + 1, 1);
          }

          *(v28 + 16) = v14 + 1;
          v15 = v28 + 16 * v14;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0xE000000000000000;
          v12 += 32;
          --v10;
        }

        while (v10);

        v7 = v25;
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }

      v29[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
      sub_25A8953BC();
      v21 = sub_25A997D68();
      v23 = v22;

      v24 = sub_25A98CC90(v21, v23, &v30);

      *(v9 + 4) = v24;
      _os_log_impl(&dword_25A232000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F852800](v26, -1, -1);
      MEMORY[0x25F852800](v9, -1, -1);
    }

    else
    {
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v16 = sub_25A997BD8();
    __swift_project_value_buffer(v16, qword_27FA0FCE8);
    v17 = sub_25A997BB8();
    v18 = sub_25A9983A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25A232000, v17, v18, "print> Invalid arg values", v19, 2u);
      MEMORY[0x25F852800](v19, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v20 = 44;
    swift_willThrow();
  }
}

uint64_t sub_25A88674C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(6972015, 0xE300000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
    if (swift_dynamicCast())
    {
      if (*(&v67 + 1))
      {
        sub_25A87817C(&v66, v69);
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v7 = sub_25A998288();
LABEL_12:
        a2[3] = MEMORY[0x277D83B88];
        *a2 = v7;
        return __swift_destroy_boxed_opaque_existential_0Tm(v69);
      }
    }

    else
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
    }
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  sub_25A878194(&v66, &qword_27FA04850, &unk_25A9FDC60);
  if (*(a1 + 16) && (v8 = sub_25A8F3600(6972015, 0xE300000000000000), (v9 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v8, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04860, &qword_25A9F8ED8);
    if (swift_dynamicCast())
    {
      if (*(&v67 + 1))
      {
        sub_25A87817C(&v66, v69);
        v10 = v70;
        v11 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v7 = (*(v11 + 8))(v10, v11);
        goto LABEL_12;
      }
    }

    else
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
    }
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  sub_25A878194(&v66, &qword_27FA04858, &qword_25A9F8ED0);
  if (!*(a1 + 16) || (v13 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v14 & 1) == 0))
  {
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
    goto LABEL_32;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v13, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    goto LABEL_32;
  }

  if (!*(&v67 + 1))
  {
LABEL_32:
    sub_25A878194(&v66, &qword_27FA04750, "jN\a");
LABEL_33:
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v36 = sub_25A997BD8();
    __swift_project_value_buffer(v36, qword_27FA0FCE8);
    v37 = sub_25A997BB8();
    v38 = sub_25A9983A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25A232000, v37, v38, "len> Invalid arg obj", v39, 2u);
      MEMORY[0x25F852800](v39, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v40 = 45;
    return swift_willThrow();
  }

  sub_25A87817C(&v66, v69);
  v15 = v70;
  v16 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v16 + 8))(&v59, v15, v16);
  v17 = *(&v60 + 1);
  v18 = v61;
  __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
  (*(*(v18 + 8) + 8))(v62, 0x5F5F6E656C5F5FLL, 0xE700000000000000, v17);
  if (!v62[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    sub_25A878194(v62, &qword_27FA04458, &unk_25A9F7FB0);
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
LABEL_42:
    sub_25A878194(&v63, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_43:
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
  if (!*(&v64 + 1))
  {
    goto LABEL_42;
  }

  sub_25A87817C(&v63, &v66);
  v19 = *(&v67 + 1);
  v20 = v68;
  __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25A9F8D90;
  v22 = v70;
  v23 = __swift_project_boxed_opaque_existential_1(v69, v70);
  *(v21 + 56) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
  v25 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v20 + 16))(v62, v21, v25, v19, v20);

  if (v2)
  {
    goto LABEL_64;
  }

  sub_25A87500C(v62, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v61 = 0;
    v60 = 0u;
    v59 = 0u;
    sub_25A878194(&v59, &qword_27FA047C8, &qword_25A9F8E88);
    __swift_destroy_boxed_opaque_existential_0Tm(&v66);
    goto LABEL_43;
  }

  sub_25A87817C(&v59, &v63);
  v26 = *(&v64 + 1);
  v27 = v65;
  v28 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v29 = v56;
  v30 = *(v26 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v32);
  a2[3] = MEMORY[0x277D83B88];
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v59 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v33 = sub_25A9984C8();
      if (v33 >= 64)
      {
        v57 = v56;
        MEMORY[0x28223BE20](v33);
        v72 = v56;
        sub_25A895280();
        sub_25A9984A8();
        v34 = *(*(v27 + 32) + 8);
        v35 = sub_25A997D88();
        v29 = v72;
        result = (*(v30 + 8))(v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        if (v35)
        {
          goto LABEL_65;
        }

        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v72 = v56;
    v41 = sub_25A9984D8();
    v42 = sub_25A9984C8();
    if (v41)
    {
      if (v42 <= 64)
      {
        v57 = *(*(v27 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v56[2] = v56;
        v46 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v56[0] = v56 - v47;
        swift_getAssociatedConformanceWitness();
        v48 = sub_25A998A78();
        v56[1] = v56;
        MEMORY[0x28223BE20](v48);
        sub_25A9989C8();
        v49 = *(*(v27 + 32) + 8);
        v50 = sub_25A997D88();
        result = (*(v30 + 8))(v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        if (v50)
        {
LABEL_65:
          __break(1u);
          return result;
        }

        sub_25A9984B8();
        v29 = v72;
      }

      else
      {
        v57 = v56;
        MEMORY[0x28223BE20](v42);
        sub_25A895280();
        sub_25A9984A8();
        v43 = *(*(v27 + 32) + 8);
        v44 = sub_25A997D88();
        result = (*(v30 + 8))(v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        v29 = v72;
        if (v44)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_53;
    }

    v29 = v72;
    if (v42 < 64)
    {
LABEL_50:
      sub_25A9984B8();
    }
  }

LABEL_53:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v72 = v29;
    *&v59 = 0x7FFFFFFFFFFFFFFFLL;
    v51 = sub_25A9984D8();
    v52 = sub_25A9984C8();
    if ((v51 & 1) == 0)
    {
      break;
    }

    if (v52 < 65)
    {
      goto LABEL_62;
    }

LABEL_56:
    MEMORY[0x28223BE20](v52);
    v31 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v53 = *(*(v27 + 32) + 8);
    v54 = sub_25A997D88();
    (*(v30 + 8))(v31, v26);
    v29 = v72;
    if (v54)
    {
      __break(1u);
LABEL_58:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

  if (v52 >= 64)
  {
    goto LABEL_56;
  }

LABEL_62:
  sub_25A9984B8();
LABEL_63:
  v55 = sub_25A9984B8();
  (*(v30 + 8))(v32, v26);
  *a2 = v55;
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  __swift_destroy_boxed_opaque_existential_0Tm(&v63);
LABEL_64:
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  return __swift_destroy_boxed_opaque_existential_0Tm(v69);
}

uint64_t sub_25A88737C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) == 0))
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_11;
  }

  v7 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
LABEL_11:
    sub_25A878194(&v25, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v15 = 75;
    return swift_willThrow();
  }

  v8 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  if (*(a1 + 16))
  {
    v10 = sub_25A8F3600(7955819, 0xE300000000000000);
    if (v11)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v10, &v25);
      sub_25A872D74(&v25, v24);
      sub_25A87500C(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if (swift_dynamicCast())
      {
        v12 = sub_25A87817C(v21, &v25);
        MEMORY[0x28223BE20](v12);
        v20[2] = &v25;
        *&v21[0] = v9;

        sub_25A890AD0(sub_25A895398, v20);

        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        v13 = *&v21[0];
        if (v2)
        {

          return __swift_destroy_boxed_opaque_existential_0Tm(&v25);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v25);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_25A878194(v21, &qword_27FA04760, &unk_25A9F9BB0);
    }
  }

  *&v25 = v9;
  sub_25A890A64(&v25);
  v13 = v25;
  if (v2)
  {
  }

LABEL_17:
  if (*(a1 + 16) && (v16 = sub_25A8F3600(0x65737265766572, 0xE700000000000000), (v17 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v16, &v25), (swift_dynamicCast() & 1) != 0) && (v21[0] & 1) != 0)
  {
    v18 = &unk_27FA04840;
    v19 = &unk_25A9F8EC0;
  }

  else
  {
    v18 = &qword_27FA04460;
    v19 = &qword_25A9FDA30;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  a2[3] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_25A8876E8(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D90;
  sub_25A87500C(a1, v9 + 32);
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v11 = v8;
  (*(v7 + 16))(v27, v9, v10, v6, v7);
  if (v3)
  {
  }

  else
  {

    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25A9F8D90;
    sub_25A87500C(v28, v14 + 32);
    v15 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    (*(v13 + 16))(v26, v14, v15, v12, v13);

    v11 = type metadata accessor for Comparison();
    sub_25A8E2098(v27, 4, v26, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v20, v23);
      v16 = v24;
      v17 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v11 = (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      sub_25A878194(v20, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v18 = 75;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }
  }

  return v11 & 1;
}

uint64_t sub_25A8879D4(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for Comparison();
  sub_25A8E2098(a1, 4, a2, v12);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v10, v13);
      v6 = v14;
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v3 = (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_25A878194(v10, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      v3 = swift_allocError();
      *v8 = 75;
      swift_willThrow();
    }
  }

  return v3 & 1;
}

uint64_t sub_25A887B20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        v9 = sub_25A972198(v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        result = swift_allocObject();
        *(result + 16) = v9;
        a2[3] = v10;
        *a2 = result;
        return result;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v12 = 74;
  return swift_willThrow();
}

uint64_t sub_25A887CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) == 0))
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
LABEL_13:
    sub_25A878194(&v25, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v19 = 73;
    return swift_willThrow();
  }

  v7 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  v10 = *(v8 + 16);
  if (v10)
  {
    v28 = a2;
    v11 = v8 + 32;
    v12 = -v10;
    v13 = -1;
    while (1)
    {
      v14 = v12 + v13;
      if (v12 + v13 == -1)
      {
LABEL_11:

        v18 = v28;
        *(v28 + 24) = MEMORY[0x277D839B0];
        *v18 = v14 == -1;
        return result;
      }

      if (++v13 >= *(v8 + 16))
      {
        break;
      }

      sub_25A87500C(v11, v24);
      sub_25A87500C(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if (!swift_dynamicCast())
      {

        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_25A878194(v21, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v20 = 73;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      v11 += 32;
      sub_25A87817C(v21, &v25);
      v15 = *(&v26 + 1);
      v16 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v25);
      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 1;
  }

  return result;
}

uint64_t sub_25A887FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
LABEL_13:
    v15 = &qword_27FA04728;
    v16 = &unk_25A9FD740;
    v17 = &v22;
LABEL_14:
    sub_25A878194(v17, v15, v16);
    sub_25A874F54();
    swift_allocError();
    *v18 = 72;
    return swift_willThrow();
  }

  v6 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    goto LABEL_13;
  }

  v7 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    while (v11 < *(v8 + 16))
    {
      sub_25A87500C(v12, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));

        v15 = &qword_27FA047E8;
        v16 = &unk_25A9FBF80;
        v17 = v19;
        goto LABEL_14;
      }

      sub_25A87817C(v19, &v22);
      v13 = *(&v23 + 1);
      v14 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      if ((*(v14 + 8))(v13, v14))
      {

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = 1;
        return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      }

      ++v11;
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 0;
  }

  return result;
}

uint64_t sub_25A888244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v12);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04838, &qword_25A9F8EB8);
        a2[3] = result;
        *a2 = v8;
        return result;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_25A878194(&v12, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v10 = 71;
  return swift_willThrow();
}

uint64_t sub_25A8883BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v187);
  if (!*(&v188 + 1))
  {
    sub_25A878194(&v187, &qword_27FA04458, &unk_25A9F7FB0);
    v190 = 0u;
    v191 = 0u;
    v192 = 0;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v192 = 0;
    v190 = 0u;
    v191 = 0u;
    goto LABEL_17;
  }

  if (!*(&v191 + 1))
  {
LABEL_17:
    sub_25A878194(&v190, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_18;
  }

  sub_25A87817C(&v190, v193);
  sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v184);
  if (!*(&v185 + 1))
  {
    sub_25A878194(&v184, &qword_27FA04458, &unk_25A9F7FB0);
    v187 = 0u;
    v188 = 0u;
    v189 = 0;
    goto LABEL_58;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v189 = 0;
    v187 = 0u;
    v188 = 0u;
    goto LABEL_58;
  }

  if (!*(&v188 + 1))
  {
LABEL_58:
    sub_25A878194(&v187, &qword_27FA047C8, &qword_25A9F8E88);
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0Tm(v193);
LABEL_18:
    sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v187);
    if (*(&v188 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
      if (swift_dynamicCast())
      {
        if (*(&v191 + 1))
        {
          sub_25A87817C(&v190, v193);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v184);
          if (*(&v185 + 1))
          {
            if (swift_dynamicCast())
            {
              if (*(&v188 + 1))
              {
                sub_25A87817C(&v187, &v190);
                v15 = v194;
                v14 = v195;
                v16 = __swift_project_boxed_opaque_existential_1(v193, v194);
                v17 = *(v15 - 8);
                v18 = v17[8];
                MEMORY[0x28223BE20](v16);
                v19 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                (v17[2])(v19);
                v20 = sub_25A9984D8();
                v181 = a2;
                if ((v20 & 1) != 0 && sub_25A9984C8() > 64)
                {
                  *&v187 = 0x8000000000000000;
                  if ((sub_25A9984D8() & 1) == 0)
                  {
                    goto LABEL_93;
                  }

                  v21 = sub_25A9984C8();
                  if (v21 < 64)
                  {
                    goto LABEL_119;
                  }

LABEL_95:
                  v196 = &v176;
                  MEMORY[0x28223BE20](v21);
                  sub_25A895280();
                  sub_25A9984A8();
                  v61 = *(v14[4] + 8);
                  v62 = sub_25A997D88();
                  result = (v17[1])(&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                  if (v62)
                  {
                    goto LABEL_236;
                  }
                }

LABEL_120:
                if (sub_25A9984C8() <= 64)
                {
                  goto LABEL_125;
                }

                while (1)
                {
                  *&v187 = 0x7FFFFFFFFFFFFFFFLL;
                  v82 = sub_25A9984D8();
                  v83 = sub_25A9984C8();
                  if (v82)
                  {
                    if (v83 < 65)
                    {
                      goto LABEL_129;
                    }
                  }

                  else if (v83 < 64)
                  {
LABEL_129:
                    sub_25A9984B8();
LABEL_130:
                    v86 = sub_25A9984B8();
                    (v17[1])(v19, v15);
                    v87 = *(&v191 + 1);
                    v88 = v192;
                    v89 = __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
                    v90 = &v176;
                    v91 = *(v87 - 8);
                    v92 = *(v91 + 64);
                    MEMORY[0x28223BE20](v89);
                    v93 = &v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v91 + 16))(v93);
                    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
                    {
                      *&v187 = 0x8000000000000000;
                      if (sub_25A9984D8())
                      {
                        v94 = sub_25A9984C8();
                        if (v94 >= 64)
                        {
                          v180 = &v176;
                          MEMORY[0x28223BE20](v94);
                          v196 = v86;
                          sub_25A895280();
                          sub_25A9984A8();
                          v95 = *(*(v88 + 32) + 8);
                          v96 = sub_25A997D88();
                          v90 = &v176;
                          v86 = v196;
                          result = (*(v91 + 8))(&v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0), v87);
                          if (v96)
                          {
                            goto LABEL_237;
                          }

                          goto LABEL_144;
                        }

LABEL_141:
                        sub_25A9984B8();
                      }

                      else
                      {
                        v196 = &v176;
                        v97 = sub_25A9984D8();
                        v98 = sub_25A9984C8();
                        if (v97)
                        {
                          if (v98 <= 64)
                          {
                            v180 = *(*(v88 + 24) + 16);
                            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                            v179 = &v176;
                            v102 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                            MEMORY[0x28223BE20](AssociatedTypeWitness);
                            v177 = &v176 - v103;
                            swift_getAssociatedConformanceWitness();
                            v104 = sub_25A998A78();
                            v178 = &v176;
                            MEMORY[0x28223BE20](v104);
                            sub_25A9989C8();
                            v105 = *(*(v88 + 32) + 8);
                            v106 = sub_25A997D88();
                            result = (*(v91 + 8))(&v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0), v87);
                            if (v106)
                            {
                              goto LABEL_237;
                            }

                            sub_25A9984B8();
                            v90 = v196;
                          }

                          else
                          {
                            v180 = &v176;
                            MEMORY[0x28223BE20](v98);
                            sub_25A895280();
                            sub_25A9984A8();
                            v99 = *(*(v88 + 32) + 8);
                            v100 = sub_25A997D88();
                            result = (*(v91 + 8))(&v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0), v87);
                            v90 = v196;
                            if (v100)
                            {
                              goto LABEL_237;
                            }
                          }

                          goto LABEL_144;
                        }

                        v90 = v196;
                        if (v98 < 64)
                        {
                          goto LABEL_141;
                        }
                      }
                    }

LABEL_144:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_149;
                    }

                    while (1)
                    {
                      v196 = v86;
                      v107 = v90;
                      *&v187 = 0x7FFFFFFFFFFFFFFFLL;
                      v108 = sub_25A9984D8();
                      v109 = sub_25A9984C8();
                      if (v108)
                      {
                        if (v109 < 65)
                        {
                          goto LABEL_153;
                        }
                      }

                      else if (v109 < 64)
                      {
LABEL_153:
                        sub_25A9984B8();
                        v86 = v196;
LABEL_154:
                        v112 = sub_25A9984B8();
                        result = (*(v91 + 8))(v93, v87);
                        v113 = (v112 - v86);
                        if (v112 >= v86)
                        {
                          v114 = v181;
                          if (!__OFSUB__(v112, v86))
                          {
                            if (!v113)
                            {
                              goto LABEL_159;
                            }

                            v115 = sub_25A9373B8(v112 - v86, 0);
                            if (sub_25A959040(&v187, (v115 + 4), v112 - v86, v86, v112) != v113)
                            {
                              __break(1u);
LABEL_159:
                              v115 = MEMORY[0x277D84F90];
                            }

                            v114[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
                            *v114 = v115;
                            goto LABEL_161;
                          }

LABEL_232:
                          __break(1u);
LABEL_233:
                          __break(1u);
LABEL_234:
                          __break(1u);
LABEL_235:
                          __break(1u);
LABEL_236:
                          __break(1u);
LABEL_237:
                          __break(1u);
LABEL_238:
                          __break(1u);
                          goto LABEL_239;
                        }

LABEL_231:
                        __break(1u);
                        goto LABEL_232;
                      }

                      MEMORY[0x28223BE20](v109);
                      v92 = &v176 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v110 = *(*(v88 + 32) + 8);
                      v111 = sub_25A997D88();
                      (*(v91 + 8))(v92, v87);
                      v90 = v107;
                      v86 = v196;
                      if (v111)
                      {
                        __break(1u);
LABEL_149:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_154;
                    }
                  }

                  MEMORY[0x28223BE20](v83);
                  v18 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_25A895280();
                  sub_25A9984A8();
                  v84 = *(v14[4] + 8);
                  v85 = sub_25A997D88();
                  (v17[1])(v18, v15);
                  if (v85)
                  {
                    __break(1u);
LABEL_125:
                    if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_130;
                }
              }
            }

            else
            {
              v189 = 0;
              v187 = 0u;
              v188 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v184, &qword_27FA04458, &unk_25A9F7FB0);
            v187 = 0u;
            v188 = 0u;
            v189 = 0;
          }

          sub_25A878194(&v187, &qword_27FA047C8, &qword_25A9F8E88);
          __swift_destroy_boxed_opaque_existential_0Tm(v193);
LABEL_32:
          sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v187);
          if (*(&v188 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v191 + 1))
              {
                v196 = v2;
                sub_25A87817C(&v190, v193);
                v22 = v194;
                v15 = v195;
                v23 = __swift_project_boxed_opaque_existential_1(v193, v194);
                v17 = &v176;
                v24 = *(v22 - 8);
                v18 = *(v24 + 64);
                MEMORY[0x28223BE20](v23);
                v19 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v24 + 16))(v19);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_79;
                }

                *&v190 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v25 = sub_25A9984C8();
                  if (v25 >= 64)
                  {
                    v180 = &v176;
                    MEMORY[0x28223BE20](v25);
                    sub_25A895280();
                    sub_25A9984A8();
                    v26 = *(*(v15 + 32) + 8);
                    v27 = sub_25A997D88();
                    v17 = &v176;
                    result = (*(v24 + 8))(&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                    if (v27)
                    {
                      goto LABEL_233;
                    }

                    goto LABEL_79;
                  }
                }

                else
                {
                  v181 = a2;
                  v40 = sub_25A9984D8();
                  v41 = sub_25A9984C8();
                  if (v40)
                  {
                    if (v41 <= 64)
                    {
                      v178 = *(*(v15 + 24) + 16);
                      v48 = swift_getAssociatedTypeWitness();
                      v180 = &v176;
                      v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                      MEMORY[0x28223BE20](v48);
                      swift_getAssociatedConformanceWitness();
                      v50 = sub_25A998A78();
                      v179 = &v176;
                      MEMORY[0x28223BE20](v50);
                      sub_25A9989C8();
                      v51 = *(*(v15 + 32) + 8);
                      v52 = sub_25A997D88();
                      result = (*(v24 + 8))(&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                      if (v52)
                      {
                        goto LABEL_233;
                      }

                      sub_25A9984B8();
                      a2 = v181;
                    }

                    else
                    {
                      MEMORY[0x28223BE20](v41);
                      sub_25A895280();
                      sub_25A9984A8();
                      v42 = *(*(v15 + 32) + 8);
                      v43 = sub_25A997D88();
                      result = (*(v24 + 8))(&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                      a2 = v181;
                      if (v43)
                      {
                        goto LABEL_233;
                      }
                    }

LABEL_79:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_84;
                    }

                    while (1)
                    {
                      v53 = v17;
                      v54 = a2;
                      *&v190 = 0x7FFFFFFFFFFFFFFFLL;
                      v55 = sub_25A9984D8();
                      v56 = sub_25A9984C8();
                      if (v55)
                      {
                        if (v56 < 65)
                        {
                          goto LABEL_88;
                        }
                      }

                      else if (v56 < 64)
                      {
LABEL_88:
                        sub_25A9984B8();
                        a2 = v54;
                        v17 = v53;
LABEL_89:
                        v59 = sub_25A9984B8();
                        result = (*(v24 + 8))(v19, v22);
                        if ((v59 & 0x8000000000000000) == 0)
                        {
                          if (v59)
                          {
                            v14 = sub_25A9373B8(v59, 0);
                            if (sub_25A959040(&v190, (v14 + 4), v59, 0, v59) != v59)
                            {
                              __break(1u);
LABEL_93:
                              v60 = sub_25A9984D8();
                              v21 = sub_25A9984C8();
                              if (v60)
                              {
                                if (v21 > 64)
                                {
                                  goto LABEL_95;
                                }

                                v196 = *(v14[3] + 16);
                                v76 = swift_getAssociatedTypeWitness();
                                v180 = &v176;
                                v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                                MEMORY[0x28223BE20](v76);
                                v178 = &v176 - v78;
                                swift_getAssociatedConformanceWitness();
                                v79 = sub_25A998A78();
                                v179 = &v176;
                                MEMORY[0x28223BE20](v79);
                                sub_25A9989C8();
                                v80 = *(v14[4] + 8);
                                v81 = sub_25A997D88();
                                result = (v17[1])(&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                                if (v81)
                                {
                                  goto LABEL_236;
                                }

LABEL_119:
                                sub_25A9984B8();
                              }

                              else if (v21 < 64)
                              {
                                goto LABEL_119;
                              }

                              goto LABEL_120;
                            }

LABEL_114:
                            a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
                            *a2 = v14;
                            return __swift_destroy_boxed_opaque_existential_0Tm(v193);
                          }

                          goto LABEL_113;
                        }

                        __break(1u);
                        goto LABEL_230;
                      }

                      MEMORY[0x28223BE20](v56);
                      v18 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v57 = *(*(v15 + 32) + 8);
                      v58 = sub_25A997D88();
                      (*(v24 + 8))(v18, v22);
                      a2 = v54;
                      v17 = v53;
                      if (v58)
                      {
                        __break(1u);
LABEL_84:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_89;
                    }
                  }

                  a2 = v181;
                  if (v41 >= 64)
                  {
                    goto LABEL_79;
                  }
                }

                sub_25A9984B8();
                goto LABEL_79;
              }
            }

            else
            {
              v192 = 0;
              v190 = 0u;
              v191 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v187, &qword_27FA04458, &unk_25A9F7FB0);
            v190 = 0u;
            v191 = 0u;
            v192 = 0;
          }

          sub_25A878194(&v190, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v187);
          if (*(&v188 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v191 + 1))
              {
                sub_25A87817C(&v190, v193);
                v29 = v194;
                v30 = v195;
                v31 = __swift_project_boxed_opaque_existential_1(v193, v194);
                v32 = &v176;
                v33 = *(v29 - 8);
                v34 = *(v33 + 64);
                MEMORY[0x28223BE20](v31);
                v35 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v33 + 16))(v35);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_99;
                }

                *&v190 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v36 = sub_25A9984C8();
                  if (v36 >= 64)
                  {
                    v180 = &v176;
                    MEMORY[0x28223BE20](v36);
                    v196 = v2;
                    sub_25A895280();
                    sub_25A9984A8();
                    v37 = *(v30[4] + 8);
                    v38 = sub_25A997D88();
                    v32 = &v176;
                    v3 = v196;
                    result = (*(v33 + 8))(&v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
                    if (v38)
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_99;
                  }
                }

                else
                {
                  v181 = a2;
                  v44 = sub_25A9984D8();
                  v45 = sub_25A9984C8();
                  if (v44)
                  {
                    if (v45 <= 64)
                    {
                      v196 = *(v30[3] + 16);
                      v63 = swift_getAssociatedTypeWitness();
                      v180 = &v176;
                      v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                      MEMORY[0x28223BE20](v63);
                      v178 = &v176 - v65;
                      swift_getAssociatedConformanceWitness();
                      v66 = sub_25A998A78();
                      v179 = &v176;
                      MEMORY[0x28223BE20](v66);
                      sub_25A9989C8();
                      v67 = *(v30[4] + 8);
                      v68 = sub_25A997D88();
                      result = (*(v33 + 8))(&v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
                      if (v68)
                      {
                        goto LABEL_234;
                      }

                      sub_25A9984B8();
                      a2 = v181;
                    }

                    else
                    {
                      v196 = &v176;
                      MEMORY[0x28223BE20](v45);
                      sub_25A895280();
                      sub_25A9984A8();
                      v46 = *(v30[4] + 8);
                      v47 = sub_25A997D88();
                      result = (*(v33 + 8))(&v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
                      a2 = v181;
                      if (v47)
                      {
                        goto LABEL_234;
                      }
                    }

LABEL_99:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_104;
                    }

                    while (1)
                    {
                      v196 = v3;
                      v69 = v32;
                      v70 = a2;
                      *&v190 = 0x7FFFFFFFFFFFFFFFLL;
                      v71 = sub_25A9984D8();
                      v72 = sub_25A9984C8();
                      if (v71)
                      {
                        if (v72 < 65)
                        {
                          goto LABEL_108;
                        }
                      }

                      else if (v72 < 64)
                      {
LABEL_108:
                        sub_25A9984B8();
                        a2 = v70;
LABEL_109:
                        v75 = sub_25A9984B8();
                        result = (*(v33 + 8))(v35, v29);
                        if ((v75 & 0x8000000000000000) == 0)
                        {
                          if (v75)
                          {
                            v14 = sub_25A9373B8(v75, 0);
                            if (sub_25A959040(&v190, (v14 + 4), v75, 0, v75) == v75)
                            {
                              goto LABEL_114;
                            }

                            __break(1u);
                          }

LABEL_113:
                          v14 = MEMORY[0x277D84F90];
                          goto LABEL_114;
                        }

LABEL_230:
                        __break(1u);
                        goto LABEL_231;
                      }

                      MEMORY[0x28223BE20](v72);
                      v34 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v73 = *(v30[4] + 8);
                      v74 = sub_25A997D88();
                      (*(v33 + 8))(v34, v29);
                      a2 = v70;
                      v32 = v69;
                      v3 = v196;
                      if (v74)
                      {
                        __break(1u);
LABEL_104:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_109;
                    }
                  }

                  a2 = v181;
                  if (v45 >= 64)
                  {
                    goto LABEL_99;
                  }
                }

                sub_25A9984B8();
                goto LABEL_99;
              }
            }

            else
            {
              v192 = 0;
              v190 = 0u;
              v191 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v187, &qword_27FA04458, &unk_25A9F7FB0);
            v190 = 0u;
            v191 = 0u;
            v192 = 0;
          }

          sub_25A878194(&v190, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A874F54();
          swift_allocError();
          *v39 = 61;
          return swift_willThrow();
        }
      }

      else
      {
        v192 = 0;
        v190 = 0u;
        v191 = 0u;
      }
    }

    else
    {
      sub_25A878194(&v187, &qword_27FA04458, &unk_25A9F7FB0);
      v190 = 0u;
      v191 = 0u;
      v192 = 0;
    }

    sub_25A878194(&v190, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_32;
  }

  sub_25A87817C(&v187, &v190);
  sub_25A8E734C(1885697139, 0xE400000000000000, a1, &v182);
  if (!v183)
  {
    sub_25A878194(&v182, &qword_27FA04458, &unk_25A9F7FB0);
    v184 = 0u;
    v185 = 0u;
    v186 = 0;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v186 = 0;
    v185 = 0u;
    v184 = 0u;
    goto LABEL_72;
  }

  if (!*(&v185 + 1))
  {
LABEL_72:
    sub_25A878194(&v184, &qword_27FA047C8, &qword_25A9F8E88);
    __swift_destroy_boxed_opaque_existential_0Tm(&v190);
    goto LABEL_59;
  }

  sub_25A87817C(&v184, &v187);
  v7 = v194;
  v6 = v195;
  v8 = __swift_project_boxed_opaque_existential_1(v193, v194);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = sub_25A9984D8();
  v181 = a2;
  if ((v12 & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v184 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v13 = sub_25A9984C8();
      if (v13 < 64)
      {
        goto LABEL_169;
      }

LABEL_164:
      v196 = &v176;
      MEMORY[0x28223BE20](v13);
      sub_25A895280();
      sub_25A9984A8();
      v117 = *(v6[4] + 8);
      v118 = sub_25A997D88();
      result = (*(v9 + 8))(&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v118)
      {
        goto LABEL_238;
      }

      goto LABEL_170;
    }

    v116 = sub_25A9984D8();
    v13 = sub_25A9984C8();
    if (v116)
    {
      if (v13 <= 64)
      {
        v196 = *(v6[3] + 16);
        v119 = swift_getAssociatedTypeWitness();
        v180 = &v176;
        v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v119);
        v178 = &v176 - v121;
        swift_getAssociatedConformanceWitness();
        v122 = sub_25A998A78();
        v179 = &v176;
        MEMORY[0x28223BE20](v122);
        sub_25A9989C8();
        v123 = *(v6[4] + 8);
        v124 = sub_25A997D88();
        result = (*(v9 + 8))(&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v124)
        {
          goto LABEL_238;
        }

        goto LABEL_169;
      }

      goto LABEL_164;
    }

    if (v13 < 64)
    {
LABEL_169:
      sub_25A9984B8();
    }
  }

LABEL_170:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_175;
  }

  while (1)
  {
    *&v184 = 0x7FFFFFFFFFFFFFFFLL;
    v125 = sub_25A9984D8();
    v126 = sub_25A9984C8();
    if ((v125 & 1) == 0)
    {
      break;
    }

    if (v126 < 65)
    {
      goto LABEL_179;
    }

LABEL_173:
    MEMORY[0x28223BE20](v126);
    v10 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v127 = *(v6[4] + 8);
    v128 = sub_25A997D88();
    (*(v9 + 8))(v10, v7);
    if (v128)
    {
      __break(1u);
LABEL_175:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_180;
  }

  if (v126 >= 64)
  {
    goto LABEL_173;
  }

LABEL_179:
  sub_25A9984B8();
LABEL_180:
  v196 = sub_25A9984B8();
  (*(v9 + 8))(v11, v7);
  v130 = *(&v191 + 1);
  v129 = v192;
  v131 = __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
  v132 = *(v130 - 8);
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  v134 = &v176 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v132 + 16))(v134);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_193;
  }

  *&v184 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v136 = sub_25A9984D8();
    v135 = sub_25A9984C8();
    if ((v136 & 1) == 0)
    {
      if (v135 < 64)
      {
        goto LABEL_192;
      }

      goto LABEL_193;
    }

    if (v135 > 64)
    {
      goto LABEL_187;
    }

    v180 = *(*(v129 + 24) + 16);
    v139 = swift_getAssociatedTypeWitness();
    v179 = &v176;
    v140 = (*(*(v139 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v139);
    v177 = &v176 - v141;
    swift_getAssociatedConformanceWitness();
    v142 = sub_25A998A78();
    v178 = &v176;
    MEMORY[0x28223BE20](v142);
    sub_25A9989C8();
    v143 = *(*(v129 + 32) + 8);
    v144 = sub_25A997D88();
    result = (*(v132 + 8))(&v176 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0), v130);
    if ((v144 & 1) == 0)
    {
      goto LABEL_192;
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v135 = sub_25A9984C8();
  if (v135 < 64)
  {
LABEL_192:
    sub_25A9984B8();
    goto LABEL_193;
  }

LABEL_187:
  v180 = &v176;
  MEMORY[0x28223BE20](v135);
  sub_25A895280();
  sub_25A9984A8();
  v137 = *(*(v129 + 32) + 8);
  v138 = sub_25A997D88();
  result = (*(v132 + 8))(&v176 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0), v130);
  if (v138)
  {
    goto LABEL_239;
  }

LABEL_193:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_198;
  }

  while (2)
  {
    *&v184 = 0x7FFFFFFFFFFFFFFFLL;
    v145 = sub_25A9984D8();
    v146 = sub_25A9984C8();
    if (v145)
    {
      if (v146 < 65)
      {
        break;
      }

      goto LABEL_196;
    }

    if (v146 >= 64)
    {
LABEL_196:
      MEMORY[0x28223BE20](v146);
      v133 = &v176 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25A895280();
      sub_25A9984A8();
      v147 = *(*(v129 + 32) + 8);
      v148 = sub_25A997D88();
      (*(v132 + 8))(v133, v130);
      if ((v148 & 1) == 0)
      {
        goto LABEL_203;
      }

      __break(1u);
LABEL_198:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_203:
  v149 = sub_25A9984B8();
  (*(v132 + 8))(v134, v130);
  v150 = *(&v188 + 1);
  v151 = v189;
  v152 = __swift_project_boxed_opaque_existential_1(&v187, *(&v188 + 1));
  v153 = &v176;
  v154 = *(v150 - 8);
  v155 = *(v154 + 64);
  MEMORY[0x28223BE20](v152);
  (*(v154 + 16))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_217;
  }

  *&v184 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v180 = &v176;
    v159 = sub_25A9984D8();
    v160 = sub_25A9984C8();
    if ((v159 & 1) == 0)
    {
      v153 = v180;
      if (v160 >= 64)
      {
        goto LABEL_217;
      }

LABEL_214:
      sub_25A9984B8();
      goto LABEL_217;
    }

    v179 = v149;
    if (v160 > 64)
    {
      MEMORY[0x28223BE20](v160);
      sub_25A895280();
      sub_25A9984A8();
      v161 = *(*(v151 + 32) + 8);
      v162 = sub_25A997D88();
      result = (*(v154 + 8))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v150);
      v149 = v179;
      v153 = v180;
      if (v162)
      {
        goto LABEL_240;
      }

      goto LABEL_217;
    }

    v176 = *(*(v151 + 24) + 16);
    v163 = swift_getAssociatedTypeWitness();
    v178 = &v176;
    v164 = (*(*(v163 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v163);
    swift_getAssociatedConformanceWitness();
    v165 = sub_25A998A78();
    v177 = &v176;
    MEMORY[0x28223BE20](v165);
    sub_25A9989C8();
    v166 = *(*(v151 + 32) + 8);
    v167 = sub_25A997D88();
    result = (*(v154 + 8))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v150);
    if ((v167 & 1) == 0)
    {
      sub_25A9984B8();
      v149 = v179;
      v153 = v180;
      goto LABEL_217;
    }

LABEL_240:
    __break(1u);
    return result;
  }

  v156 = sub_25A9984C8();
  if (v156 < 64)
  {
    goto LABEL_214;
  }

  v179 = v149;
  v180 = &v176;
  MEMORY[0x28223BE20](v156);
  sub_25A895280();
  sub_25A9984A8();
  v157 = *(*(v151 + 32) + 8);
  v158 = sub_25A997D88();
  v153 = &v176;
  result = (*(v154 + 8))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v150);
  v149 = v179;
  if (v158)
  {
    goto LABEL_240;
  }

LABEL_217:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_222;
  }

  while (2)
  {
    v180 = v153;
    *&v184 = 0x7FFFFFFFFFFFFFFFLL;
    v168 = sub_25A9984D8();
    v169 = sub_25A9984C8();
    if (v168)
    {
      if (v169 < 65)
      {
        break;
      }

      goto LABEL_220;
    }

    if (v169 >= 64)
    {
LABEL_220:
      v179 = v149;
      MEMORY[0x28223BE20](v169);
      sub_25A895280();
      sub_25A9984A8();
      v170 = *(*(v151 + 32) + 8);
      v171 = sub_25A997D88();
      (*(v154 + 8))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v150);
      v149 = v179;
      v153 = v180;
      if ((v171 & 1) == 0)
      {
        goto LABEL_227;
      }

      __break(1u);
LABEL_222:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_227;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_227:
  v172 = sub_25A9984B8();
  result = (*(v154 + 8))(&v176 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0), v150);
  if (!v172)
  {
    goto LABEL_235;
  }

  v173 = sub_25A9739B4(v196, v149, v172);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
  v175 = v181;
  v181[3] = v174;
  *v175 = v173;
  __swift_destroy_boxed_opaque_existential_0Tm(&v187);
LABEL_161:
  __swift_destroy_boxed_opaque_existential_0Tm(&v190);
  return __swift_destroy_boxed_opaque_existential_0Tm(v193);
}

uint64_t sub_25A88AFC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE900000000000073), (v5 & 1) == 0))
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v57 + 1);
  if (!*(&v57 + 1))
  {
LABEL_13:
    sub_25A878194(&v56, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v7 = v58;
  __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v56);
  v9 = sub_25A92F9CC(v8);

  if (!v9)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v21 = 70;
    return swift_willThrow();
  }

  v52 = a2;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v54 = MEMORY[0x277D84F90];
    sub_25A937570(0, v10, 0);
    v12 = v54;
    v13 = v9 + 32;
    v14 = v10;
    do
    {
      sub_25A872F24(v13, &v56);
      v15 = *(&v57 + 1);
      v16 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v17 = (*(v16 + 24))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
      *&v54 = v12;
      v19 = v12[2];
      v18 = v12[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_25A937570((v18 > 1), v19 + 1, 1);
        v12 = v54;
      }

      v12[2] = v20;
      v12[v19 + 4] = v17;
      v13 += 40;
      --v14;
    }

    while (v14);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (!v20)
    {

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
      a2[3] = result;
      *a2 = v11;
      return result;
    }

    v12 = MEMORY[0x277D84F90];
  }

  v23 = v12[4];
  v24 = v20 - 1;
  if (v20 != 1)
  {
    if (v20 < 5)
    {
      v25 = 1;
      goto LABEL_24;
    }

    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v26 = vdupq_n_s64(*&v23);
    v27 = (v12 + 7);
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v26;
    do
    {
      v26 = vbslq_s8(vcgtq_s64(v26, v27[-1]), v27[-1], v26);
      v29 = vbslq_s8(vcgtq_s64(v29, *v27), *v27, v29);
      v27 += 2;
      v28 -= 4;
    }

    while (v28);
    v30 = vbslq_s8(vcgtq_s64(v29, v26), v26, v29);
    v31 = vextq_s8(v30, v30, 8uLL).u64[0];
    v23 = vbsl_s8(vcgtd_s64(v31, v30.i64[0]), *v30.i8, v31);
    if (v24 != (v24 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_24:
      v32 = v20 - v25;
      v33 = &v12[v25 + 4];
      do
      {
        v35 = *v33++;
        v34 = v35;
        if (*&v35 < *&v23)
        {
          v23 = v34;
        }

        --v32;
      }

      while (v32);
    }
  }

  if (v10)
  {
    *&v54 = v11;
    sub_25A998748();
    v36 = v9 + 32;
    do
    {
      sub_25A872F24(v36, &v56);
      v37 = *(&v57 + 1);
      v38 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      (*(v38 + 16))(v37, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
      sub_25A998718();
      v39 = *(v54 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      v36 += 40;
      --v10;
    }

    while (v10);

    v40 = v54;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  result = sub_25A9613A0(MEMORY[0x277D84F90], *&v23);
  if ((*&v23 & 0x8000000000000000) == 0)
  {
    v41 = result;
    if (!*&v23)
    {
LABEL_51:

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04828, &qword_25A9F8EB0);
      v52[3] = result;
      *v52 = v41;
      return result;
    }

    v42 = 0;
    v59 = *(v40 + 16);
    v53 = v23;
    while (!v59)
    {
LABEL_36:
      if (++v42 == *&v53)
      {
        goto LABEL_51;
      }
    }

    v43 = 0;
    while (v43 < *(v40 + 16))
    {
      v44 = *(v40 + 8 * v43 + 32);

      sub_25A9988A8();
      if (!v55)
      {

        sub_25A878194(&v54, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A874F54();
        swift_allocError();
        *v51 = 23;
        swift_willThrow();
      }

      sub_25A872D74(&v54, &v56);
      sub_25A87500C(&v56, &v54);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25A8F7A3C(v41);
        v41 = result;
      }

      if (v42 >= v41[2])
      {
        goto LABEL_54;
      }

      v45 = v41 + 4;
      v46 = v41[v42 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[v42 + 4] = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_25A967488(0, *(v46 + 2) + 1, 1, v46);
        v45[v42] = v46;
      }

      v49 = *(v46 + 2);
      v48 = *(v46 + 3);
      if (v49 >= v48 >> 1)
      {
        v45[v42] = sub_25A967488((v48 > 1), v49 + 1, 1, v46);
      }

      ++v43;

      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
      v50 = v45[v42];
      *(v50 + 16) = v49 + 1;
      result = sub_25A872D74(&v54, (v50 + 32 * v49 + 32));
      if (v59 == v43)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A88B5C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) == 0))
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v36);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_13;
  }

  v7 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_13:
    sub_25A878194(&v39, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v16 = 64;
    return swift_willThrow();
  }

  v8 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  if (*(a1 + 16) && (v10 = sub_25A8F3600(1668183398, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v10, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if (swift_dynamicCast())
    {
      if (*(&v37 + 1))
      {
        v12 = sub_25A87817C(&v36, &v39);
        MEMORY[0x28223BE20](v12);
        v31[2] = &v39;
        v13 = sub_25A88BC08(sub_25A895378, v31, v9);
        if (!v2)
        {
          v14 = v13;
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
          *a2 = v14;
        }

        return __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  v32 = a2;
  result = sub_25A878194(&v36, &qword_27FA04760, &unk_25A9F9BB0);
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v9 + 32;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      sub_25A87500C(v19, &v36);
      sub_25A87500C(&v36, &v39);
      if (!swift_dynamicCast() || (v35[0] & 1) != 0)
      {
        sub_25A87500C(&v36, &v39);
        sub_25A873A9C();
        if (!swift_dynamicCast() || (v21 = v35[0], [v35[0] doubleValue], v23 = v22, v21, v23 != 0.0))
        {
          if ((static MorpheusUtils.isNil(_:)(&v36) & 1) == 0)
          {
            sub_25A87500C(&v36, v35);
            if (!swift_dynamicCast())
            {
              v41 = 0;
              v39 = 0u;
              v40 = 0u;
              sub_25A878194(&v39, &qword_27FA04728, &unk_25A9FD740);
LABEL_30:
              sub_25A872D74(&v36, &v39);
              v34 = v20;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_25A937550(0, *(v20 + 16) + 1, 1);
                v20 = v34;
              }

              v29 = *(v20 + 16);
              v28 = *(v20 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_25A937550((v28 > 1), v29 + 1, 1);
                v20 = v34;
              }

              *(v20 + 16) = v29 + 1;
              result = sub_25A872D74(&v39, (v20 + 32 * v29 + 32));
              goto LABEL_19;
            }

            v25 = *(&v40 + 1);
            v24 = v41;
            __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
            v26 = (*(v24 + 8))(v25, v24);
            __swift_destroy_boxed_opaque_existential_0Tm(&v39);
            v27 = *(v26 + 16);

            if (v27)
            {
              goto LABEL_30;
            }
          }
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v36);
LABEL_19:
      ++v18;
      v19 += 32;
      if (v17 == v18)
      {
        goto LABEL_36;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_36:

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  v30 = v32;
  v32[3] = result;
  *v30 = v20;
  return result;
}

uint64_t sub_25A88BAB4(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25A9F8D90;
  sub_25A87500C(a1, v6 + 32);
  v7 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v5 + 16))(v11, v6, v7, v4, v5);

  if (!v2)
  {
    if (swift_dynamicCast())
    {
      v8 = v12;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v9 = 65;
      swift_willThrow();
    }
  }

  return v8 & 1;
}

uint64_t sub_25A88BC08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_25A87500C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_25A872D74(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25A937550(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_25A937550((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_25A872D74(v15, (v9 + 32 * v13 + 32));
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      ++v7;
      v8 += 32;
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

uint64_t sub_25A88BD7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_15;
  }

  v7 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_15:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
LABEL_16:
    sub_25A874F54();
    swift_allocError();
    *v16 = 63;
    result = swift_willThrow();
    goto LABEL_17;
  }

  v8 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v10 = *(v9 + 16);
  if (v10 != 1)
  {
    goto LABEL_8;
  }

  sub_25A87500C(v9 + 32, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(&v32 + 1);
  v12 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v9 = (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v10 = *(v9 + 16);
LABEL_8:
  if (!v10)
  {

    goto LABEL_16;
  }

  *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *&v31 = v9;
  v25 = v9;

  v13 = sub_25A8F0FA0(&v31, 13);
  if (!v2)
  {
    v18 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(&v31);
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v14 = *(v9 + 16);
  if (!v14)
  {

    *a2 = 0u;
    a2[1] = 0u;
    goto LABEL_17;
  }

  sub_25A87500C(v9 + 32, v30);
  if (v14 != 1)
  {
    v18 = v9 + 64;
    v20 = 1;
    while (v20 < *(v25 + 16))
    {
      sub_25A87500C(v18, v29);
      type metadata accessor for Comparison();
      sub_25A8E2098(v29, 4, v30, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v27 = 0;
        memset(v26, 0, sizeof(v26));
        sub_25A878194(v26, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v24 = 63;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
        goto LABEL_17;
      }

      sub_25A87817C(v26, &v31);
      v21 = *(&v32 + 1);
      v22 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      v23 = (*(v22 + 8))(v21, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      if (v23)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        sub_25A872D74(v29, v30);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      ++v20;
      v18 += 32;
      if (v14 == v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_20:
    sub_25A998C58();
    v19 = *&v26[0];
    *&v26[0] = mlx_array_new();
    swift_beginAccess();
    mlx_argmin(v26, *(v18 + 16), 0, *(v19 + 16));
  }

LABEL_12:

  result = sub_25A872D74(v30, a2);
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A88C9F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88C9F8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A88CA04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_15;
  }

  v7 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_15:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
LABEL_16:
    sub_25A874F54();
    swift_allocError();
    *v16 = 62;
    result = swift_willThrow();
    goto LABEL_17;
  }

  v8 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v10 = *(v9 + 16);
  if (v10 != 1)
  {
    goto LABEL_8;
  }

  sub_25A87500C(v9 + 32, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(&v32 + 1);
  v12 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v9 = (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v10 = *(v9 + 16);
LABEL_8:
  if (!v10)
  {

    goto LABEL_16;
  }

  *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *&v31 = v9;
  v25 = v9;

  v13 = sub_25A8F0FA0(&v31, 13);
  if (!v2)
  {
    v18 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(&v31);
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v14 = *(v9 + 16);
  if (!v14)
  {

    *a2 = 0u;
    a2[1] = 0u;
    goto LABEL_17;
  }

  sub_25A87500C(v9 + 32, v30);
  if (v14 != 1)
  {
    v18 = v9 + 64;
    v20 = 1;
    while (v20 < *(v25 + 16))
    {
      sub_25A87500C(v18, v29);
      type metadata accessor for Comparison();
      sub_25A8E2098(v30, 2, v29, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v27 = 0;
        memset(v26, 0, sizeof(v26));
        sub_25A878194(v26, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v24 = 63;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
        goto LABEL_17;
      }

      sub_25A87817C(v26, &v31);
      v21 = *(&v32 + 1);
      v22 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      v23 = (*(v22 + 8))(v21, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      if (v23)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        sub_25A872D74(v29, v30);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      ++v20;
      v18 += 32;
      if (v14 == v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_20:
    sub_25A998C58();
    v19 = *&v26[0];
    *&v26[0] = mlx_array_new();
    swift_beginAccess();
    mlx_argmax(v26, *(v18 + 16), 0, *(v19 + 16));
  }

LABEL_12:

  result = sub_25A872D74(v30, a2);
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A88D678(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88D680);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A88D68C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v2 = sub_25A8F3600(120, 0xE100000000000000), (v3 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v2, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_25A87817C(&v12, v15);
        v4 = v16;
        v5 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v6 = (*(v5 + 8))(13, v4, v5);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v7 = v12;
        v11[0] = mlx_array_new();
        swift_beginAccess();
        mlx_abs(v11, *(v6 + 16), *(v7 + 16));
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_25A878194(&v12, &qword_27FA04808, &qword_25A9FDC40);
  sub_25A874F54();
  swift_allocError();
  *v8 = 89;
  result = swift_willThrow();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A88D8C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88D8D0);
  }

  _Unwind_Resume(a1);
}

void sub_25A88D8DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x7265626D756ELL, 0xE600000000000000), (v6 & 1) == 0))
  {
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
LABEL_15:
    sub_25A878194(&v47, &qword_27FA04808, &qword_25A9FDC40);
    if (!*(a1 + 16))
    {
LABEL_25:
      sub_25A874F54();
      swift_allocError();
      *v23 = 90;
      swift_willThrow();
      goto LABEL_26;
    }

LABEL_16:
    v18 = sub_25A8F3600(0x7265626D756ELL, 0xE600000000000000);
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_25A87500C(*(a1 + 56) + 32 * v18, v50);
    sub_25A873A9C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = v47;
    [v47 doubleValue];
    v22 = round(v21);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        a2[3] = MEMORY[0x277D83B88];

        *a2 = v22;
LABEL_26:
        v24 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (!*(&v48 + 1))
  {
    goto LABEL_15;
  }

  sub_25A87817C(&v47, v50);
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(0x7374696769646ELL, 0xE700000000000000), (v8 & 1) == 0))
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    goto LABEL_24;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04820, &qword_25A9F8EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
LABEL_24:
    sub_25A878194(&v44, &qword_27FA04818, &qword_25A9F8EA0);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!*(&v45 + 1))
  {
    goto LABEL_24;
  }

  sub_25A87817C(&v44, &v47);
  v9 = v51;
  v10 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v42 = (*(v10 + 8))(13, v9, v10);
  v12 = *(&v48 + 1);
  v11 = v49;
  v13 = __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  v41 = v39;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v11 + 8);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_36;
  }

  *&v44 = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v17 = sub_25A9984C8();
    if (v17 < 64)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v25 = sub_25A9984D8();
  v17 = sub_25A9984C8();
  if ((v25 & 1) == 0)
  {
    if (v17 < 64)
    {
      goto LABEL_35;
    }

LABEL_36:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_46;
    }

    *&v44 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = sub_25A9984D8();
    v35 = sub_25A9984C8();
    if (v34)
    {
      if (v35 >= 65)
      {
LABEL_45:
        MEMORY[0x28223BE20](v35);
        sub_25A895280();
        sub_25A9984A8();
        v36 = *(*(v16 + 32) + 8);
        v37 = sub_25A997D88();
        (*(v14 + 8))(v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (v37)
        {
          goto LABEL_56;
        }

LABEL_46:
        v2 = sub_25A9984B8();
        (*(v14 + 8))(v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (qword_27FA043D8 == -1)
        {
LABEL_47:
          sub_25A998C58();
          v38 = v44;
          v43[0] = mlx_array_new();
          swift_beginAccess();
          if (v2 < 0xFFFFFFFF80000000)
          {
            __break(1u);
          }

          else if (v2 <= 0x7FFFFFFF)
          {
            mlx_round(v43, *(v42 + 16), v2, *(v38 + 16));
          }

          __break(1u);
LABEL_56:
          __break(1u);
        }

LABEL_53:
        swift_once();
        goto LABEL_47;
      }
    }

    else if (v35 >= 64)
    {
      goto LABEL_45;
    }

    sub_25A9984B8();
    goto LABEL_46;
  }

  if (v17 <= 64)
  {
    v40 = *(*(v16 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v39[1] = v39;
    v29 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v31 = v39 - v30;
    swift_getAssociatedConformanceWitness();
    v39[2] = v31;
    v32 = sub_25A998A78();
    v39[0] = v39;
    MEMORY[0x28223BE20](v32);
    sub_25A9989C8();
    v33 = *(*(v16 + 32) + 8);
    LOBYTE(v31) = sub_25A997D88();
    (*(v14 + 8))(v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    if ((v31 & 1) == 0)
    {
LABEL_35:
      sub_25A9984B8();
      goto LABEL_36;
    }

    goto LABEL_57;
  }

LABEL_30:
  v40 = v39;
  MEMORY[0x28223BE20](v17);
  sub_25A895280();
  sub_25A9984A8();
  v26 = *(*(v16 + 32) + 8);
  v27 = sub_25A997D88();
  (*(v14 + 8))(v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  if ((v27 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_57:
  __break(1u);
}

void sub_25A88E2FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88E304);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A88E318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x7373616C63, 0xE500000000000000), (v6 & 1) == 0))
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_11;
  }

  if (!*(&v20 + 1))
  {
LABEL_11:
    sub_25A878194(&v19, &qword_27FA047F8, L"D\a\t");
LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v12 = 119;
    return swift_willThrow();
  }

  sub_25A87817C(&v19, v22);
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(1718379891, 0xE400000000000000), (v8 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v7, &v19), type metadata accessor for PyInstance(), (swift_dynamicCast() & 1) == 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    goto LABEL_12;
  }

  v9 = v17;
  v10 = *(v17 + 40);
  v11 = *(v17 + 48);
  __swift_project_boxed_opaque_existential_1((v17 + 16), v10);
  (*(v11 + 88))(&v17, v22, v10, v11);
  if (!v2)
  {
    if (v18)
    {
      sub_25A87817C(&v17, &v19);
      sub_25A872F24(&v19, &v17);
      v14 = type metadata accessor for PySuperInstance();
      v15 = swift_allocObject();
      sub_25A87817C(&v17, v15 + 16);
      *(v15 + 56) = v9;
      a2[3] = v14;
      *a2 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(&v19);
      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    sub_25A878194(&v17, &qword_27FA047F8, L"D\a\t");
    sub_25A874F54();
    swift_allocError();
    *v16 = -124;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_25A88E5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x7463656A626FLL, 0xE600000000000000), (v5 & 1) == 0))
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_11;
  }

  if (!*(&v55 + 1))
  {
LABEL_11:
    sub_25A878194(&v54, &qword_27FA04750, "jN\a");
    sub_25A874F54();
    swift_allocError();
    *v13 = 120;
    return swift_willThrow();
  }

  sub_25A87817C(&v54, v57);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
    if (swift_dynamicCast())
    {
      if (*(&v52 + 1))
      {
        sub_25A87817C(&v51, &v54);
        v8 = v58;
        v9 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        (*(v9 + 8))(&v51, v8, v9);
        v10 = *(&v52 + 1);
        v11 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        v12 = (*(v11 + 72))(v10, v11);
        MEMORY[0x28223BE20](v12);
        v41[2] = &v54;
        LOBYTE(v10) = sub_25A96289C(sub_25A895358, v41, v12);

        __swift_destroy_boxed_opaque_existential_0Tm(&v51);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v10 & 1;
LABEL_43:
        __swift_destroy_boxed_opaque_existential_0Tm(&v54);
        return __swift_destroy_boxed_opaque_existential_0Tm(v57);
      }
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  sub_25A878194(&v51, &qword_27FA047F8, L"D\a\t");
  if (!*(a1 + 16) || (v15 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v16 & 1) == 0))
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    goto LABEL_34;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v15, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    goto LABEL_34;
  }

  if (!*(&v52 + 1))
  {
LABEL_34:
    sub_25A878194(&v51, &qword_27FA04728, &unk_25A9FD740);
LABEL_35:
    sub_25A874F54();
    swift_allocError();
    *v40 = 120;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  sub_25A87817C(&v51, &v54);
  v17 = *(&v55 + 1);
  v18 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  v19 = (*(v18 + 8))(v17, v18);
  v20 = sub_25A92FB38(v19);

  v60 = v20;
  if (!v20)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    goto LABEL_35;
  }

  v21 = v58;
  v22 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v22 + 8))(&v51, v21, v22);
  v23 = *(&v52 + 1);
  v24 = v53;
  __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  result = (*(v24 + 72))(v23, v24);
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_32:

    v39 = 0;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v39;
    goto LABEL_43;
  }

  v26 = 0;
  v27 = result + 32;
  v28 = v60 + 32;
  v46 = result;
  v44 = v25;
  v43 = result + 32;
  v42 = v60 + 32;
  while (2)
  {
    if (v26 < *(result + 16))
    {
      v29 = (v27 + 16 * v26);
      v31 = *v29;
      v30 = v29[1];
      v45 = v26 + 1;
      v32 = *(v60 + 16);

      v47 = -v32;
      v33 = -1;
      while (v47 + v33 != -1)
      {
        if (++v33 >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        sub_25A872F24(v28, v48);
        v35 = v49;
        v34 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        if ((*(v34 + 56))(v35, v34) == v31 && v36 == v30)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v48);
LABEL_41:

          v39 = 1;
          goto LABEL_42;
        }

        v28 += 40;
        v38 = sub_25A9989E8();

        result = __swift_destroy_boxed_opaque_existential_0Tm(v48);
        if (v38)
        {
          goto LABEL_41;
        }
      }

      v26 = v45;
      result = v46;
      v27 = v43;
      v28 = v42;
      if (v45 != v44)
      {
        continue;
      }

      goto LABEL_32;
    }

    break;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_25A88EBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25A998B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v9 = sub_25A8F3600(1701667182, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, &v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v40 = *(&v32 + 1), v28 = v32, v11 = sub_25A8F3600(6972015, 0xE300000000000000), (v12 & 1) == 0))
  {

LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v19 = -110;
    return swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v11, &v35);
  sub_25A872D74(&v35, v39);
  if (*(a1 + 16) && (v13 = sub_25A8F3600(6972015, 0xE300000000000000), (v14 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v13, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_25A87817C(&v32, &v35);
        v15 = *(&v36 + 1);
        v16 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v16 + 8))(&v32, v28, v40, v15, v16);

        v17 = *(&v33 + 1) != 0;
        sub_25A878194(&v32, &qword_27FA04458, &unk_25A9F7FB0);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v17;
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        v18 = &v35;
        return __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  v27 = a2;
  sub_25A878194(&v32, &qword_27FA045E0, &qword_25A9F8790);
  sub_25A92D814(v39, &v35);
  sub_25A998B48();
  sub_25A998B78();
  sub_25A9987A8();

  sub_25A9988A8();
  if (!v38)
  {
LABEL_25:
    (*(v5 + 8))(v8, v4);

    v25 = v27;
    *(v27 + 24) = MEMORY[0x277D839B0];
    *v25 = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v32 = v35;
    sub_25A872D74(&v36, &v33);
    sub_25A8952F0(&v32, &v29, &qword_27FA047F0, &qword_25A9FD9E0);
    v21 = v30;
    if (!v30)
    {
      sub_25A878194(&v32, &qword_27FA047F0, &qword_25A9FD9E0);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      goto LABEL_17;
    }

    v22 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    if (v22 == v28 && v21 == v40)
    {
      break;
    }

    v24 = sub_25A9989E8();

    if (v24)
    {
      goto LABEL_28;
    }

    sub_25A878194(&v32, &qword_27FA047F0, &qword_25A9FD9E0);
LABEL_17:
    sub_25A9988A8();
    if (!v38)
    {
      goto LABEL_25;
    }
  }

LABEL_28:

  v26 = v27;
  *(v27 + 24) = MEMORY[0x277D839B0];

  *v26 = 1;
  sub_25A878194(&v32, &qword_27FA047F0, &qword_25A9FD9E0);
  (*(v5 + 8))(v8, v4);
LABEL_29:
  v18 = v39;
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

uint64_t sub_25A88F0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(7564387, 0xE300000000000000), (v5 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_13;
  }

  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_25A878194(&v29, &qword_27FA047F8, L"D\a\t");
    sub_25A874F54();
    swift_allocError();
    *v17 = 120;
    return swift_willThrow();
  }

  sub_25A87817C(&v29, v32);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v25);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_25A87817C(&v26, &v29);
        v8 = v33;
        v9 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v10 = (*(v9 + 56))(v8, v9);
        v12 = v11;
        v13 = *(&v30 + 1);
        v14 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
        if (v10 == (*(v14 + 56))(v13, v14) && v12 == v15)
        {

          v16 = 1;
        }

        else
        {
          v20 = sub_25A9989E8();

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v21 = v33;
            v22 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            v23 = (*(v22 + 72))(v21, v22);
            MEMORY[0x28223BE20](v23);
            v24[2] = &v29;
            v16 = sub_25A96289C(sub_25A895454, v24, v23);
          }
        }

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v16 & 1;
        __swift_destroy_boxed_opaque_existential_0Tm(&v29);
        return __swift_destroy_boxed_opaque_existential_0Tm(v32);
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_25A878194(&v26, &qword_27FA047F8, L"D\a\t");
  sub_25A874F54();
  swift_allocError();
  *v19 = 120;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t sub_25A88F428(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  if (v2 == (*(v5 + 56))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A88F4D0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE900000000000073), (v6 & 1) == 0))
  {
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    goto LABEL_36;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v55);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_36;
  }

  v8 = *(&v59 + 1);
  if (!*(&v59 + 1))
  {
LABEL_36:
    v42 = &qword_27FA04728;
    v43 = &unk_25A9FD740;
    v44 = &v58;
LABEL_37:
    sub_25A878194(v44, v42, v43);
    sub_25A874F54();
    swift_allocError();
    *v45 = 66;
    return swift_willThrow();
  }

  v9 = v60;
  __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  if (!*(a1 + 16) || (v11 = sub_25A8F3600(1668183398, 0xE400000000000000), (v12 & 1) == 0))
  {

    v55 = 0u;
    v56 = 0u;
    v57 = 0;
LABEL_42:
    v42 = &qword_27FA04760;
    v43 = &unk_25A9F9BB0;
    v44 = &v55;
    goto LABEL_37;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v11, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_41;
  }

  if (!*(&v56 + 1))
  {
LABEL_41:

    goto LABEL_42;
  }

  result = sub_25A87817C(&v55, &v58);
  v61 = *(v10 + 16);
  if (v61)
  {
    v14 = 0;
    v15 = v10 + 32;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = v10 + 32;
    v51 = a2;
    v53 = v10;
    while (1)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_25A87500C(v15, v54);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      ++v14;
      v17 = *(&v56 + 1);
      v18 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      __swift_destroy_boxed_opaque_existential_0Tm(&v55);
      v20 = *(v19 + 16);

      if (v20 < v16)
      {
        v16 = v20;
      }

      v10 = v53;
      v15 += 32;
      if (v61 == v14)
      {
        if (!v16)
        {
          goto LABEL_43;
        }

        v21 = 0;
        v22 = v16 & ~(v16 >> 63);
        v23 = MEMORY[0x277D84F90];
        v47 = v22;
LABEL_18:
        v49 = v23;
        if (v21 != v22)
        {
          v24 = 0;
          v52 = v21;
          v48 = v21 + 1;
          v25 = v50;
          v26 = MEMORY[0x277D84F90];
          while (v24 < *(v10 + 16))
          {
            sub_25A87500C(v25, v54);
            if ((swift_dynamicCast() & 1) == 0)
            {

              v57 = 0;
              v55 = 0u;
              v56 = 0u;
              sub_25A878194(&v55, &qword_27FA04728, &unk_25A9FD740);

              goto LABEL_47;
            }

            v27 = v16;
            v28 = v7;
            v29 = v26;
            v30 = *(&v56 + 1);
            v31 = v57;
            __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
            v32 = (*(v31 + 8))(v30, v31);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v55);
            if (v52 >= *(v32 + 16))
            {
              goto LABEL_52;
            }

            sub_25A87500C(v32 + 32 * v52 + 32, &v55);

            v33 = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_25A967488(0, *(v29 + 2) + 1, 1, v29);
            }

            v10 = v53;
            v7 = v28;
            v35 = *(v33 + 2);
            v34 = *(v33 + 3);
            v36 = v33;
            v16 = v27;
            if (v35 >= v34 >> 1)
            {
              v36 = sub_25A967488((v34 > 1), v35 + 1, 1, v33);
            }

            ++v24;
            *(v36 + 2) = v35 + 1;
            v26 = v36;
            result = sub_25A872D74(&v55, &v36[32 * v35 + 32]);
            v25 += 32;
            if (v61 == v24)
            {
              v38 = *(&v59 + 1);
              v37 = v60;
              __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
              v39 = sub_25A92BDB4(MEMORY[0x277D84F90]);
              (*(v37 + 16))(&v55, v26, v39, v38, v37);
              if (v2)
              {

                return __swift_destroy_boxed_opaque_existential_0Tm(&v58);
              }

              sub_25A87500C(&v55, v54);
              v23 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_25A967488(0, *(v49 + 2) + 1, 1, v49);
              }

              v10 = v53;
              a2 = v51;
              v41 = *(v23 + 2);
              v40 = *(v23 + 3);
              if (v41 >= v40 >> 1)
              {
                v23 = sub_25A967488((v40 > 1), v41 + 1, 1, v23);
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v55);
              *(v23 + 2) = v41 + 1;
              result = sub_25A872D74(v54, &v23[32 * v41 + 32]);
              v21 = v48;
              v22 = v47;
              if (v48 == v16)
              {

                goto LABEL_44;
              }

              goto LABEL_18;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    sub_25A878194(&v55, &qword_27FA04728, &unk_25A9FD740);
LABEL_47:
    sub_25A874F54();
    swift_allocError();
    *v46 = 66;
    swift_willThrow();
  }

  else
  {
LABEL_43:

    v23 = MEMORY[0x277D84F90];
LABEL_44:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a2 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(&v58);
}

_OWORD *sub_25A88FB78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_25A998B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_25A8F3600(1701667182, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, &v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 16) || (v36 = *(&v28 + 1), v25 = v28, v11 = sub_25A8F3600(6972015, 0xE300000000000000), (v12 & 1) == 0))
  {

LABEL_9:
    sub_25A874F54();
    swift_allocError();
    *v16 = -104;
    return swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v11, &v31);
  sub_25A872D74(&v31, v35);
  sub_25A87500C(v35, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v28, &v31);
    v13 = *(&v32 + 1);
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    (*(v14 + 8))(v25, v36, v13, v14);

    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  }

  v24 = a2;
  *&v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_25A878194(&v28, &qword_27FA045E0, &qword_25A9F8790);
  sub_25A92D814(v35, &v31);
  sub_25A998B48();
  sub_25A998B78();
  sub_25A9987A8();

  sub_25A9988A8();
  if (!v34)
  {
LABEL_21:
    (*(v5 + 8))(v8, v4);

    sub_25A874F54();
    swift_allocError();
    *v23 = -105;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v17 = &qword_27FA047F0;
  while (1)
  {
    v28 = v31;
    sub_25A872D74(&v32, &v29);
    sub_25A8952F0(&v28, &v26, v17, &qword_25A9FD9E0);
    v18 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      break;
    }

    sub_25A878194(&v28, v17, &qword_25A9FD9E0);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
LABEL_13:
    sub_25A9988A8();
    if (!v34)
    {
      goto LABEL_21;
    }
  }

  v19 = v17;
  v20 = v26;
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  if (v20 == v25 && v18 == v36)
  {

    goto LABEL_24;
  }

  v22 = sub_25A9989E8();

  if ((v22 & 1) == 0)
  {
    v17 = v19;
    sub_25A878194(&v28, v19, &qword_25A9FD9E0);
    goto LABEL_13;
  }

LABEL_24:

  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  v26 = v28;
  v27[0] = v29;
  v27[1] = v30;

  return sub_25A872D74(v27, v24);
}

uint64_t sub_25A890008()
{
  sub_25A8952F0(v0, &v12, &qword_27FA04458, &unk_25A9F7FB0);
  if (v13)
  {
    sub_25A872D74(&v12, v11);
    sub_25A87500C(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v5, v8);
      v1 = v9;
      v2 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v3 = (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_25A878194(v5, &qword_27FA047E8, &unk_25A9FBF80);
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_25A890138(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A874F54();
  swift_allocError();
  *v1 = -111;
  swift_willThrow();
}

uint64_t sub_25A8901F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_25A936F00(a1);
  sub_25A87E064(v5, a2, a3);
}

void sub_25A890248(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A8902B0(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A890318(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A890380(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

uint64_t sub_25A890414(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A890624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25A936F00(a1);
  v3 = type metadata accessor for PyObjectInstance();
  v4 = swift_allocObject();
  a2[3] = v3;
  *a2 = v4;
}

_BYTE *sub_25A8909F4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_25A890A64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25A892B6C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25A890B54(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25A890AD0(char *a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_25A892B6C(v5);
  }

  v7 = *(v5 + 2);
  result = sub_25A890C50(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_25A890B54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25A998958();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25A998158();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25A891094(v7, v8, a1, v4);
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
    return sub_25A890D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25A890C50(char *a1, uint64_t a2)
{
  v5 = v2[1];
  result = sub_25A998958();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_25A998158();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_25A8918C0(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_25A890F74(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_25A890D5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = result;
    v8 = *a4;
    type metadata accessor for Comparison();
    v9 = (v8 + 32 * v5);
    v10 = v7 - v5;
    v18 = a2;
    while (2)
    {
      v29 = v5;
      v19 = v10;
      v20 = v9;
      v11 = v10;
      do
      {
        sub_25A87500C(v9, v28);
        sub_25A87500C((v9 - 2), v27);
        sub_25A8E2098(v28, 4, v27, v23);
        if (v4)
        {
          goto LABEL_13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          sub_25A878194(v21, &qword_27FA047E8, &unk_25A9FBF80);
          sub_25A874F54();
          swift_allocError();
          *v17 = 75;
          swift_willThrow();
LABEL_13:
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          return __swift_destroy_boxed_opaque_existential_0Tm(v28);
        }

        sub_25A87817C(v21, v24);
        v12 = v25;
        v13 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v14 = (*(v13 + 8))(v12, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if ((v14 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_25A872D74(v9, v24);
        v15 = *(v9 - 1);
        *v9 = *(v9 - 2);
        v9[1] = v15;
        result = sub_25A872D74(v24, v9 - 2);
        v9 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      v5 = v29 + 1;
      v9 = v20 + 2;
      v10 = v19 - 1;
      if (v29 + 1 != v18)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25A890F74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 32 * a3);
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_25A87500C(v9, v17);
      sub_25A87500C((v9 - 2), v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_25A872D74(v9, v17);
        v12 = *(v9 - 1);
        *v9 = *(v9 - 2);
        v9[1] = v12;
        result = sub_25A872D74(v17, v9 - 2);
        v9 -= 2;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 2;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25A891094(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v94 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v94;
    if (*v94)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_98;
    }

    goto LABEL_139;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v19 = v8 + 1;
      goto LABEL_22;
    }

    v11 = *v6;
    sub_25A87500C(*v6 + 32 * (v8 + 1), &v101);
    sub_25A87500C(v11 + 32 * v8, v98);
    v12 = sub_25A8879D4(&v101, v98);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      v87 = &v101;
      goto LABEL_109;
    }

    v13 = v12;
    v96 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v101);
    v14 = v8 + 2;
    v91 = v8;
    v15 = 32 * v8;
    v16 = v11 + 32 * v8 + 64;
    do
    {
      if (v96 == v14)
      {
        v19 = v96;
        v10 = v91;
        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      sub_25A87500C(v16, v105);
      sub_25A87500C(v16 - 32, v104);
      type metadata accessor for Comparison();
      sub_25A8E2098(v105, 4, v104, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_107:
        v99 = 0;
        memset(v98, 0, sizeof(v98));
        sub_25A878194(v98, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v86 = 75;
        swift_willThrow();
LABEL_108:
        __swift_destroy_boxed_opaque_existential_0Tm(v104);
        v87 = v105;
LABEL_109:
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
      }

      sub_25A87817C(v98, &v101);
      v5 = v102;
      v17 = v103;
      __swift_project_boxed_opaque_existential_1(&v101, v102);
      v18 = (*(v17 + 8))(v5, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(&v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v105);
      ++v14;
      v16 += 32;
    }

    while (((v13 ^ v18) & 1) == 0);
    v19 = v14 - 1;
    v10 = v91;
    if ((v13 & 1) == 0)
    {
LABEL_20:
      v6 = a3;
      goto LABEL_22;
    }

LABEL_13:
    if (v19 < v10)
    {
      goto LABEL_133;
    }

    if (v10 >= v19)
    {
      goto LABEL_20;
    }

    v20 = v19;
    v21 = 32 * v19 - 32;
    v97 = v19;
    v22 = v10;
    do
    {
      if (v22 != --v20)
      {
        v23 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v24 = (v23 + v15);
        v5 = v23 + v21;
        sub_25A872D74((v23 + v15), &v101);
        v25 = *(v5 + 16);
        *v24 = *v5;
        v24[1] = v25;
        result = sub_25A872D74(&v101, v5);
      }

      ++v22;
      v21 -= 32;
      v15 += 32;
    }

    while (v22 < v20);
    v6 = a3;
    v19 = v97;
LABEL_22:
    v26 = v6[1];
    if (v19 >= v26)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v19, v10))
    {
      goto LABEL_129;
    }

    if (v19 - v10 >= a4)
    {
LABEL_31:
      v8 = v19;
      if (v19 < v10)
      {
        goto LABEL_128;
      }

      goto LABEL_32;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return result;
    }

    if (v10 + a4 >= v26)
    {
      v27 = v6[1];
    }

    else
    {
      v27 = v10 + a4;
    }

    if (v27 < v10)
    {
      goto LABEL_132;
    }

    if (v19 == v27)
    {
      goto LABEL_31;
    }

    v74 = *v6;
    type metadata accessor for Comparison();
    v93 = v74;
    v5 = v74 + 32 * v19;
    v75 = v10 - v19;
    v88 = v27;
    do
    {
      v76 = v19;
      v89 = v75;
      v90 = v5;
      while (1)
      {
        sub_25A87500C(v5, v105);
        sub_25A87500C(v5 - 32, v104);
        sub_25A8E2098(v105, 4, v104, v100);
        if (v4)
        {
          goto LABEL_108;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_107;
        }

        sub_25A87817C(v98, &v101);
        v77 = v102;
        v78 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, v102);
        v79 = (*(v78 + 8))(v77, v78);
        __swift_destroy_boxed_opaque_existential_0Tm(&v101);
        __swift_destroy_boxed_opaque_existential_0Tm(v104);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v105);
        if ((v79 & 1) == 0)
        {
          break;
        }

        v6 = a3;
        if (!v93)
        {
          goto LABEL_136;
        }

        sub_25A872D74(v5, &v101);
        v80 = *(v5 - 16);
        *v5 = *(v5 - 32);
        *(v5 + 16) = v80;
        sub_25A872D74(&v101, (v5 - 32));
        v5 -= 32;
        if (__CFADD__(v75++, 1))
        {
          goto LABEL_92;
        }
      }

      v6 = a3;
LABEL_92:
      v19 = v76 + 1;
      v5 = v90 + 32;
      v75 = v89 - 1;
      v8 = v88;
    }

    while (v76 + 1 != v88);
    if (v88 < v10)
    {
      goto LABEL_128;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A89295C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_25A89295C((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v94;
    if (!*v94)
    {
      goto LABEL_138;
    }

    if (v29)
    {
      break;
    }

LABEL_80:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    if (v30 >= 4)
    {
      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_117;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_118;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_120;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_123;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_127;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v30 == 3)
    {
      v34 = *(v9 + 4);
      v35 = *(v9 + 5);
      v44 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      v37 = v44;
LABEL_51:
      if (v37)
      {
        goto LABEL_119;
      }

      v50 = &v9[16 * v30];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      v55 = v53;
      if (v53)
      {
        goto LABEL_122;
      }

      v56 = &v9[16 * v33 + 32];
      v58 = *v56;
      v57 = *(v56 + 1);
      v44 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v44)
      {
        goto LABEL_125;
      }

      if (__OFADD__(v54, v59))
      {
        goto LABEL_126;
      }

      if (v54 + v59 >= v36)
      {
        if (v36 < v59)
        {
          v33 = v30 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v60 = &v9[16 * v30];
    v62 = *v60;
    v61 = *(v60 + 1);
    v44 = __OFSUB__(v61, v62);
    v54 = v61 - v62;
    v55 = v44;
LABEL_65:
    if (v55)
    {
      goto LABEL_121;
    }

    v63 = &v9[16 * v33];
    v65 = *(v63 + 4);
    v64 = *(v63 + 5);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_124;
    }

    if (v66 < v54)
    {
      goto LABEL_80;
    }

LABEL_72:
    v71 = v33 - 1;
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_134;
    }

    v72 = *&v9[16 * v71 + 32];
    v5 = *&v9[16 * v33 + 40];
    sub_25A891FBC((*v6 + 32 * v72), (*v6 + 32 * *&v9[16 * v33 + 32]), (*v6 + 32 * v5), v32);
    if (v4)
    {
    }

    if (v5 < v72)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_25A892948(v9);
    }

    if (v71 >= *(v9 + 2))
    {
      goto LABEL_114;
    }

    v73 = &v9[16 * v71];
    *(v73 + 4) = v72;
    *(v73 + 5) = v5;
    v106 = v9;
    result = sub_25A8928BC(v33);
    v9 = v106;
    v30 = *(v106 + 2);
    if (v30 <= 1)
    {
      goto LABEL_80;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  result = sub_25A892948(v9);
  v9 = result;
LABEL_98:
  v106 = v9;
  v82 = *(v9 + 2);
  if (v82 >= 2)
  {
    while (*v6)
    {
      v83 = *&v9[16 * v82];
      v84 = *&v9[16 * v82 + 24];
      sub_25A891FBC((*v6 + 32 * v83), (*v6 + 32 * *&v9[16 * v82 + 16]), (*v6 + 32 * v84), v5);
      if (v4)
      {
      }

      if (v84 < v83)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25A892948(v9);
      }

      if (v82 - 2 >= *(v9 + 2))
      {
        goto LABEL_116;
      }

      v85 = &v9[16 * v82];
      *v85 = v83;
      *(v85 + 1) = v84;
      v106 = v9;
      result = sub_25A8928BC(v82 - 1);
      v9 = v106;
      v82 = *(v106 + 2);
      if (v82 <= 1)
      {
      }
    }

    goto LABEL_135;
  }
}

uint64_t sub_25A8918C0(uint64_t result, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v95 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_94:
    v10 = a4;
    a4 = *v95;
    if (*v95)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v10 + 1) >= v9)
    {
      v22 = (v10 + 1);
    }

    else
    {
      v12 = a4;
      v13 = *a3;
      sub_25A87500C(*a3 + 32 * (v10 + 1), v103);
      sub_25A87500C(v13 + 32 * v10, v102);
      v14 = (v12)(v103, v102);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
      }

      v15 = v14;
      v96 = a5;
      v98 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
      v16 = 0;
      v88 = v9 - 1;
      v91 = v10;
      v92 = v9;
      v17 = &v10[-v9 + 2];
      v18 = 32 * v10;
      v19 = v13 + 32 * v10 + 64;
      do
      {
        if (!(v17 + v16))
        {
          v10 = v91;
          v22 = v92;
          v21 = v88;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_25A87500C(v19, v103);
        sub_25A87500C(v19 - 32, v102);
        v20 = (v98)(v103, v102);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
        ++v16;
        v19 += 32;
      }

      while (((v15 ^ v20) & 1) == 0);
      v10 = v91;
      v21 = &v91[v16];
      v22 = &v91[v16 + 1];
      if ((v15 & 1) == 0)
      {
LABEL_15:
        a5 = v96;
        a4 = v98;
        goto LABEL_23;
      }

LABEL_13:
      if (v22 < v10)
      {
        goto LABEL_128;
      }

      if (v10 > v21)
      {
        goto LABEL_15;
      }

      v23 = 32 * v22 - 32;
      v93 = v22;
      do
      {
        if (v10 != --v22)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v24 = (v27 + v18);
          v25 = (v27 + v23);
          sub_25A872D74((v27 + v18), v103);
          v26 = v25[1];
          *v24 = *v25;
          v24[1] = v26;
          result = sub_25A872D74(v103, v25);
        }

        ++v10;
        v23 -= 32;
        v18 += 32;
      }

      while (v10 < v22);
      a5 = v96;
      a4 = v98;
      v10 = v91;
      v22 = v93;
    }

LABEL_23:
    v28 = a3[1];
    if (v22 >= v28)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v22, v10))
    {
      goto LABEL_124;
    }

    if (v22 - v10 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v94 = v22;
    if (&v10[a6] >= v28)
    {
      v29 = a3[1];
    }

    else
    {
      v29 = &v10[a6];
    }

    if (v29 < v10)
    {
      goto LABEL_127;
    }

    if (v94 == v29)
    {
      v22 = v94;
LABEL_33:
      if (v22 < v10)
      {
        goto LABEL_123;
      }

      goto LABEL_34;
    }

    v76 = a5;
    v77 = *a3;
    v78 = (*a3 + 32 * v94);
    v79 = &v10[-v94];
    v100 = v29;
    do
    {
      v89 = v79;
      v97 = v78;
      do
      {
        sub_25A87500C(v78, v103);
        sub_25A87500C((v78 - 2), v102);
        v80 = (a4)(v103, v102);
        if (v6)
        {
          goto LABEL_105;
        }

        v81 = v80;
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
        if ((v81 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_130;
        }

        sub_25A872D74(v78, v103);
        v82 = *(v78 - 1);
        *v78 = *(v78 - 2);
        v78[1] = v82;
        sub_25A872D74(v103, v78 - 2);
        v78 -= 2;
      }

      while (!__CFADD__(v79++, 1));
      v22 = v100;
      v78 = v97 + 2;
      v79 = v89 - 1;
      ++v94;
    }

    while (v94 != v100);
    a5 = v76;
    if (v100 < v10)
    {
      goto LABEL_123;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A89295C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v31 = *(v11 + 2);
    v30 = *(v11 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_25A89295C((v30 > 1), v31 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v32;
    v33 = &v11[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v22;
    v10 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    v99 = v22;
    if (v31)
    {
      break;
    }

LABEL_3:
    v10 = v99;
    v9 = a3[1];
    if (v99 >= v9)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v34 = v32 - 1;
    if (v32 >= 4)
    {
      v39 = &v11[16 * v32 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_110;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_111;
      }

      v46 = &v11[16 * v32];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_113;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_116;
      }

      if (v50 >= v42)
      {
        v68 = &v11[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_122;
        }

        if (v37 < v71)
        {
          v34 = v32 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v32 == 3)
    {
      v35 = *(v11 + 4);
      v36 = *(v11 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_53:
      if (v38)
      {
        goto LABEL_112;
      }

      v51 = &v11[16 * v32];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_115;
      }

      v57 = &v11[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_119;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v32 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v61 = &v11[16 * v32];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_67:
    if (v56)
    {
      goto LABEL_114;
    }

    v64 = &v11[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_117;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_74:
    v72 = v34 - 1;
    if (v34 - 1 >= v32)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v73 = *&v11[16 * v72 + 32];
    v74 = *&v11[16 * v34 + 40];
    sub_25A892550((*a3 + 32 * v73), (*a3 + 32 * *&v11[16 * v34 + 32]), (*a3 + 32 * v74), v10, a4, a5);
    if (v6)
    {
    }

    if (v74 < v73)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25A892948(v11);
    }

    if (v72 >= *(v11 + 2))
    {
      goto LABEL_109;
    }

    v75 = &v11[16 * v72];
    *(v75 + 4) = v73;
    *(v75 + 5) = v74;
    v104 = v11;
    result = sub_25A8928BC(v34);
    v11 = v104;
    v32 = *(v104 + 2);
    if (v32 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_25A892948(v11);
  v11 = result;
LABEL_96:
  v104 = v11;
  v84 = *(v11 + 2);
  if (v84 < 2)
  {
  }

  while (*a3)
  {
    v85 = *&v11[16 * v84];
    v86 = *&v11[16 * v84 + 24];
    sub_25A892550((*a3 + 32 * v85), (*a3 + 32 * *&v11[16 * v84 + 16]), (*a3 + 32 * v86), a4, v10, a5);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25A892948(v11);
    }

    if (v84 - 2 >= *(v11 + 2))
    {
      goto LABEL_121;
    }

    v87 = &v11[16 * v84];
    *v87 = v85;
    *(v87 + 1) = v86;
    v104 = v11;
    result = sub_25A8928BC(v84 - 1);
    v11 = v104;
    v84 = *(v104 + 2);
    if (v84 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25A891FBC(char *__src, char *__dst, char *a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 5;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 5;
  if (v11 >= v13 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v14] <= a4)
    {
      v25 = a3;
      memmove(a4, __dst, 32 * v14);
      a3 = v25;
    }

    v50 = (v6 + 32 * v14);
    if (v12 >= 32 && v7 > v8)
    {
      v26 = -v6;
      v49 = -v6;
      while (1)
      {
        v27 = (v7 - 32);
        v28 = v50 - 2;
        v29 = v50 + v26;
        v30 = a3 - 32;
        while (1)
        {
          v60 = v30;
          sub_25A87500C(v28, v59);
          sub_25A87500C(v27, v58);
          type metadata accessor for Comparison();
          sub_25A8E2098(v59, 4, v58, v54);
          if (v5)
          {
            goto LABEL_49;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
            sub_25A878194(&v51, &qword_27FA047E8, &unk_25A9FBF80);
            sub_25A874F54();
            swift_allocError();
            *v45 = 75;
            swift_willThrow();
LABEL_49:
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            __swift_destroy_boxed_opaque_existential_0Tm(v59);
            if (v29 >= 0)
            {
              v46 = v29;
            }

            else
            {
              v46 = v29 + 31;
            }

            if (v7 >= v6 && v7 < v6 + (v46 & 0xFFFFFFFFFFFFFFE0) && v7 == v6)
            {
              return 1;
            }

            v44 = 32 * (v46 >> 5);
            v24 = v7;
            goto LABEL_63;
          }

          v33 = v27;
          v34 = v7;
          v35 = v6;
          sub_25A87817C(&v51, v55);
          v37 = v56;
          v36 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v38 = (*(v36 + 8))(v37, v36);
          __swift_destroy_boxed_opaque_existential_0Tm(v55);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          __swift_destroy_boxed_opaque_existential_0Tm(v59);
          if (v38)
          {
            break;
          }

          v39 = v60;
          v6 = v35;
          v27 = v33;
          if (v60 + 32 != (v28 + 2))
          {
            v40 = v28[1];
            *v60 = *v28;
            *(v39 + 1) = v40;
          }

          v31 = v28 - 2;
          v29 -= 32;
          v30 = v39 - 32;
          v32 = v28 > v35;
          v28 -= 2;
          v7 = v34;
          v5 = 0;
          if (!v32)
          {
            v50 = v31 + 2;
            goto LABEL_56;
          }
        }

        a3 = v60;
        v6 = v35;
        v24 = v33;
        if (v60 + 32 != v34)
        {
          v41 = *(v33 + 1);
          *v60 = *v33;
          *(a3 + 1) = v41;
        }

        v50 = v28 + 2;
        v5 = 0;
        v26 = v49;
        if ((v28 + 2) > v35)
        {
          v7 = v33;
          if (v33 > v8)
          {
            continue;
          }
        }

        v50 = v28 + 2;
        goto LABEL_57;
      }
    }

LABEL_56:
    v24 = v7;
LABEL_57:
    v47 = v50 - v6 + 31;
    if ((v50 - v6) >= 0)
    {
      v47 = v50 - v6;
    }

    if (v24 >= v6 && v24 < v6 + (v47 & 0xFFFFFFFFFFFFFFE0) && v24 == v6)
    {
      return 1;
    }

    v44 = 32 * (v47 >> 5);
LABEL_63:
    memmove(v24, v6, v44);
    return 1;
  }

  if (a4 != __src || &__src[32 * v11] <= a4)
  {
    v15 = a3;
    memmove(a4, __src, 32 * v11);
    a3 = v15;
  }

  v50 = (v6 + 32 * v11);
  if (v9 < 32 || v7 >= a3)
  {
LABEL_21:
    v24 = v8;
    goto LABEL_57;
  }

  while (1)
  {
    v16 = a3;
    sub_25A87500C(v7, v59);
    sub_25A87500C(v6, v58);
    type metadata accessor for Comparison();
    sub_25A8E2098(v59, 4, v58, v54);
    if (v4)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      sub_25A878194(&v51, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v42 = 75;
      swift_willThrow();
      break;
    }

    v17 = v6;
    sub_25A87817C(&v51, v55);
    v19 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v20 = (*(v18 + 8))(v19, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    if ((v20 & 1) == 0)
    {
      v21 = v17;
      v6 = (v17 + 32);
      a3 = v16;
      if (v8 == v17)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = *(v21 + 1);
      *v8 = *v21;
      *(v8 + 1) = v23;
      goto LABEL_19;
    }

    v21 = v7;
    v22 = v8 == v7;
    v7 += 32;
    v6 = v17;
    a3 = v16;
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 += 32;
    if (v6 >= v50 || v7 >= a3)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  v43 = v50 - v6 + 31;
  if ((v50 - v6) >= 0)
  {
    v43 = v50 - v6;
  }

  if (v8 < v6 || v8 >= v6 + (v43 & 0xFFFFFFFFFFFFFFE0) || v8 != v6)
  {
    v44 = 32 * (v43 >> 5);
    v24 = v8;
    goto LABEL_63;
  }

  return 1;
}

uint64_t sub_25A892550(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *), uint64_t a6)
{
  v41[5] = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v12 = __src - __dst;
  }

  v13 = v12 >> 5;
  v14 = a3 - __src;
  v15 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v15 = a3 - __src;
  }

  v16 = v15 >> 5;
  if (v13 < v15 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v17 = (v7 + 32 * v13);
    if (v11 < 32)
    {
LABEL_10:
      v9 = v10;
      goto LABEL_51;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_10;
      }

      sub_25A87500C(v9, v41);
      sub_25A87500C(v7, v40);
      v21 = a5(v41, v40);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        v35 = v17 - v7 + 31;
        if ((v17 - v7) >= 0)
        {
          v35 = v17 - v7;
        }

        if (v10 < v7 || v10 >= v7 + (v35 & 0xFFFFFFFFFFFFFFE0) || v10 != v7)
        {
          v34 = 32 * (v35 >> 5);
          v33 = v10;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      if (v22)
      {
        break;
      }

      v18 = v7;
      v19 = v10 == v7;
      v7 += 32;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v10 += 32;
      if (v7 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v9;
    v19 = v10 == v9;
    v9 += 32;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = v18[1];
    *v10 = *v18;
    *(v10 + 1) = v20;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v16] <= a4)
  {
    memmove(a4, __src, 32 * v16);
  }

  v17 = (v7 + 32 * v16);
  if (v14 < 32 || v9 <= v10)
  {
LABEL_51:
    v36 = v17 - v7 + 31;
    if ((v17 - v7) >= 0)
    {
      v36 = v17 - v7;
    }

    if (v9 < v7 || v9 >= v7 + (v36 & 0xFFFFFFFFFFFFFFE0) || v9 != v7)
    {
      v34 = 32 * (v36 >> 5);
      v33 = v9;
      goto LABEL_57;
    }

    return 1;
  }

  v23 = -v7;
LABEL_26:
  v38 = v9;
  v9 -= 32;
  v24 = v17 - 2;
  v25 = v17 + v23;
  v8 -= 32;
  while (1)
  {
    sub_25A87500C(v24, v41);
    sub_25A87500C(v9, v40);
    v28 = a5(v41, v40);
    if (v6)
    {
      break;
    }

    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    if (v29)
    {
      if (v8 + 32 != v38)
      {
        v31 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v31;
      }

      v17 = v24 + 2;
      v23 = -v7;
      if ((v24 + 2) <= v7 || v9 <= v10)
      {
        v17 = v24 + 2;
        goto LABEL_51;
      }

      goto LABEL_26;
    }

    if (v8 + 32 != (v24 + 2))
    {
      v30 = v24[1];
      *v8 = *v24;
      *(v8 + 1) = v30;
    }

    v26 = v24 - 2;
    v25 -= 32;
    v8 -= 32;
    v27 = v24 > v7;
    v24 -= 2;
    if (!v27)
    {
      v17 = v26 + 2;
      v9 = v38;
      goto LABEL_51;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  if (v25 >= 0)
  {
    v32 = v25;
  }

  else
  {
    v32 = v25 + 31;
  }

  v33 = v38;
  if (v38 < v7 || v38 >= v7 + (v32 & 0xFFFFFFFFFFFFFFE0) || v38 != v7)
  {
    v34 = 32 * (v32 >> 5);
LABEL_57:
    memmove(v33, v7, v34);
  }

  return 1;
}

uint64_t sub_25A8928BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25A892948(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25A89295C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04848, &qword_25A9F8EC8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL sub_25A892A64(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
      {
        return 0;
      }

      v4 = _swift_stdlib_strtof_clocale();
      if (!v4)
      {
        return 0;
      }

      return *v4 == 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0 || (v4 = _swift_stdlib_strtof_clocale()) == 0)
      {
        return 0;
      }

      return *v4 == 0;
    }
  }

  sub_25A9985C8();
  if (!v2)
  {
    return v7;
  }

  return v5;
}

unint64_t sub_25A892BD4()
{
  result = qword_27FA04718;
  if (!qword_27FA04718)
  {
    type metadata accessor for PyBuiltInClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04718);
  }

  return result;
}

uint64_t sub_25A892C2C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A892C6C()
{
  type metadata accessor for LexicalContext();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6E776F6E6B6E55;
  *(v0 + 24) = 0xE700000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v3 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = sub_25A98E67C(v1);
  *(v0 + 16) = 0x6C61626F6C67;
  *(v0 + 24) = 0xE600000000000000;
  v4 = MEMORY[0x277D837D0];
  *(&v211 + 1) = MEMORY[0x277D837D0];
  *&v210 = 0x7463656A626FLL;
  *(&v210 + 1) = 0xE600000000000000;
  if (qword_27FA042D0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v5 = qword_27FA046A0;
  v6 = type metadata accessor for PyBuiltInClass();
  *(&v206 + 1) = v6;
  *&v205 = v5;
  v154 = v5;
  swift_retain_n();
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 1701869940;
  *(&v210 + 1) = 0xE400000000000000;
  if (qword_27FA042E0 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046B0;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 7500915;
  *(&v210 + 1) = 0xE300000000000000;
  if (qword_27FA04348 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC60;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 1819242338;
  *(&v210 + 1) = 0xE400000000000000;
  if (qword_27FA04350 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC68;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 7630441;
  *(&v210 + 1) = 0xE300000000000000;
  if (qword_27FA04360 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC78;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x74616F6C66;
  *(&v210 + 1) = 0xE500000000000000;
  if (qword_27FA04340 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC58;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 7628147;
  *(&v210 + 1) = 0xE300000000000000;
  if (qword_27FA04368 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC80;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x656C707574;
  *(&v210 + 1) = 0xE500000000000000;
  if (qword_27FA04370 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC88;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x6563696C73;
  *(&v210 + 1) = 0xE500000000000000;
  if (qword_27FA04378 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC90;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 1952672100;
  *(&v210 + 1) = 0xE400000000000000;
  if (qword_27FA04380 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC98;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 1953720684;
  *(&v210 + 1) = 0xE400000000000000;
  if (qword_27FA04388 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FCA0;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x7365747962;
  *(&v210 + 1) = 0xE500000000000000;
  if (qword_27FA04358 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA0FC70;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "BaseException");
  HIWORD(v210) = -4864;
  if (qword_27FA04320 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046F0;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "Exception");
  WORD5(v210) = 0;
  HIDWORD(v210) = -385875968;
  if (qword_27FA04328 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046F8;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "ValueError");
  BYTE11(v210) = 0;
  HIDWORD(v210) = -369098752;
  if (qword_27FA04330 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA04700;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "RuntimeError");
  BYTE13(v210) = 0;
  HIWORD(v210) = -5120;
  if (qword_27FA04338 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA04708;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "staticmethod");
  BYTE13(v210) = 0;
  HIWORD(v210) = -5120;
  if (qword_27FA04310 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046E0;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  strcpy(&v210, "classmethod");
  HIDWORD(v210) = -352321536;
  if (qword_27FA04318 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046E8;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x616974696E496552;
  *(&v210 + 1) = 0xEF656C62617A696CLL;
  if (qword_27FA042D8 != -1)
  {
    swift_once();
  }

  *(&v206 + 1) = v6;
  *&v205 = qword_27FA046A8;

  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v4;
  *&v210 = 0x746E697270;
  *(&v210 + 1) = 0xE500000000000000;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for PyBuiltInFunctionOrMethod();
  v10 = swift_allocObject();
  v10[4] = v7;
  v10[5] = v7;
  v10[6] = v7;

  v10[7] = v7;

  v10[8] = v7;

  v10[9] = 0;
  v10[10] = 0;

  v10[11] = 0;
  v10[12] = 0;

  v10[13] = sub_25A92BDB4(v7);
  v10[2] = 0x746E697270;
  v10[3] = 0xE500000000000000;
  v11 = *(v10 + 5);
  v179[2] = *(v10 + 4);
  v179[3] = v11;
  v180 = v10[12];
  v12 = *(v10 + 3);
  v179[0] = *(v10 + 2);
  v179[1] = v12;
  v10[4] = v7;
  v10[5] = v7;
  v10[6] = v7;
  v10[7] = v7;
  v10[8] = v7;
  *(v10 + 9) = xmmword_25A9F8DE0;
  v10[11] = 0;
  v10[12] = 0;
  sub_25A892B80(v179);
  swift_beginAccess();
  v13 = v10[13];
  v10[13] = v8;

  v10[14] = sub_25A890684;
  v10[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v10;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = MEMORY[0x277D837D0];
  *&v210 = 7234924;
  *(&v210 + 1) = 0xE300000000000000;
  v14 = sub_25A92BDB4(v7);
  v15 = swift_allocObject();
  v15[4] = v7;
  v15[5] = v7;
  v15[6] = v7;

  v15[7] = v7;

  v15[8] = v7;

  v15[9] = 0;
  v15[10] = 0;

  v15[11] = 0;
  v15[12] = 0;

  v15[13] = sub_25A92BDB4(v7);
  v15[2] = 7234924;
  v15[3] = 0xE300000000000000;
  v16 = *(v15 + 5);
  v181[2] = *(v15 + 4);
  v181[3] = v16;
  v182 = v15[12];
  v17 = *(v15 + 3);
  v181[0] = *(v15 + 2);
  v181[1] = v17;
  v15[4] = v7;
  v15[5] = &unk_286C0B198;
  v15[6] = v7;
  v15[7] = v7;
  v15[8] = v7;
  *(v15 + 9) = 0u;
  *(v15 + 11) = 0u;
  sub_25A892B80(v181);
  swift_beginAccess();
  v18 = v15[13];
  v15[13] = v14;

  v15[14] = sub_25A8906B0;
  v15[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v15;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  v19 = MEMORY[0x277D837D0];
  *(&v211 + 1) = MEMORY[0x277D837D0];
  v150 = v6;
  *&v210 = 0x646574726F73;
  *(&v210 + 1) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25A9F8D80;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 88) = MEMORY[0x277D839B0];
  *(v20 + 64) = 0;
  v21 = sub_25A92BDB4(v7);
  v22 = swift_allocObject();
  v22[4] = v7;
  v22[5] = v7;
  v22[6] = v7;

  v22[7] = v7;

  v22[8] = v7;

  v22[9] = 0;
  v22[10] = 0;

  v22[11] = 0;
  v22[12] = 0;

  v23 = sub_25A92BDB4(v7);
  v24 = *(v22 + 2);
  v183[1] = *(v22 + 3);
  v25 = *(v22 + 5);
  v183[2] = *(v22 + 4);
  v183[3] = v25;
  v22[13] = v23;
  v22[2] = 0x646574726F73;
  v22[3] = 0xE600000000000000;
  v184 = v22[12];
  v183[0] = v24;
  v22[4] = &unk_286C0B1C8;
  v22[5] = &unk_286C0B208;
  v22[6] = v7;
  v22[7] = v7;
  v22[8] = v20;
  *(v22 + 9) = 0u;
  *(v22 + 11) = 0u;
  sub_25A892B80(v183);
  swift_beginAccess();
  v26 = v22[13];
  v22[13] = v21;

  v22[14] = sub_25A8906DC;
  v22[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v22;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v19;
  strcpy(&v210, "reversed");
  BYTE9(v210) = 0;
  WORD5(v210) = 0;
  HIDWORD(v210) = -402653184;
  v27 = sub_25A92BDB4(v7);
  v28 = swift_allocObject();
  v28[4] = v7;
  v28[5] = v7;
  v28[6] = v7;

  v28[7] = v7;

  v28[8] = v7;

  v28[9] = 0;
  v28[10] = 0;

  v28[11] = 0;
  v28[12] = 0;

  v29 = sub_25A92BDB4(v7);
  v30 = *(v28 + 2);
  v185[1] = *(v28 + 3);
  v31 = *(v28 + 5);
  v185[2] = *(v28 + 4);
  v185[3] = v31;
  v28[13] = v29;
  v28[2] = 0x6465737265766572;
  v28[3] = 0xE800000000000000;
  v186 = v28[12];
  v185[0] = v30;
  v28[4] = v7;
  v28[5] = &unk_286C0B238;
  v28[6] = v7;
  v28[7] = v7;
  v28[8] = v7;
  *(v28 + 9) = 0u;
  *(v28 + 11) = 0u;
  sub_25A892B80(v185);
  swift_beginAccess();
  v32 = v28[13];
  v28[13] = v27;

  v28[14] = sub_25A890708;
  v28[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v28;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v19;
  *&v210 = 7105633;
  *(&v210 + 1) = 0xE300000000000000;
  v33 = sub_25A92BDB4(v7);
  v34 = swift_allocObject();
  v34[4] = v7;
  v34[5] = v7;
  v34[6] = v7;

  v34[7] = v7;

  v34[8] = v7;

  v34[9] = 0;
  v34[10] = 0;

  v34[11] = 0;
  v34[12] = 0;

  v35 = sub_25A92BDB4(v7);
  v36 = *(v34 + 2);
  v187[1] = *(v34 + 3);
  v37 = *(v34 + 5);
  v187[2] = *(v34 + 4);
  v187[3] = v37;
  v34[13] = v35;
  v34[2] = 7105633;
  v34[3] = 0xE300000000000000;
  v188 = v34[12];
  v187[0] = v36;
  v34[4] = v7;
  v34[5] = &unk_286C0B268;
  v34[6] = v7;
  v34[7] = v7;
  v34[8] = v7;
  *(v34 + 9) = 0u;
  *(v34 + 11) = 0u;
  sub_25A892B80(v187);
  swift_beginAccess();
  v38 = v34[13];
  v34[13] = v33;

  v34[14] = sub_25A890734;
  v34[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v34;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v19;
  *&v210 = 7958113;
  *(&v210 + 1) = 0xE300000000000000;
  v39 = sub_25A92BDB4(v7);
  v40 = swift_allocObject();
  v40[4] = v7;
  v40[5] = v7;
  v40[6] = v7;

  v40[7] = v7;

  v40[8] = v7;

  v40[9] = 0;
  v40[10] = 0;

  v40[11] = 0;
  v40[12] = 0;

  v41 = sub_25A92BDB4(v7);
  v42 = *(v40 + 2);
  v189[1] = *(v40 + 3);
  v43 = *(v40 + 5);
  v189[2] = *(v40 + 4);
  v189[3] = v43;
  v40[13] = v41;
  v40[2] = 7958113;
  v40[3] = 0xE300000000000000;
  v190 = v40[12];
  v189[0] = v42;
  v40[4] = v7;
  v40[5] = &unk_286C0B298;
  v40[6] = v7;
  v40[7] = v7;
  v40[8] = v7;
  *(v40 + 9) = 0u;
  *(v40 + 11) = 0u;
  sub_25A892B80(v189);
  swift_beginAccess();
  v44 = v40[13];
  v40[13] = v39;

  v40[14] = sub_25A890760;
  v40[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v40;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v19;
  strcpy(&v210, "enumerate");
  WORD5(v210) = 0;
  HIDWORD(v210) = -385875968;
  v45 = sub_25A92BDB4(v7);
  v46 = swift_allocObject();
  v46[4] = v7;
  v46[5] = v7;
  v46[6] = v7;

  v46[7] = v7;

  v46[8] = v7;

  v46[9] = 0;
  v46[10] = 0;

  v46[11] = 0;
  v46[12] = 0;

  v47 = sub_25A92BDB4(v7);
  v48 = *(v46 + 2);
  v191[1] = *(v46 + 3);
  v49 = *(v46 + 5);
  v191[2] = *(v46 + 4);
  v191[3] = v49;
  v46[13] = v47;
  v46[2] = 0x746172656D756E65;
  v46[3] = 0xE900000000000065;
  v192 = v46[12];
  v191[0] = v48;
  v46[4] = &unk_286C0B2C8;
  v46[5] = v7;
  v46[6] = v7;
  v46[7] = v7;
  v46[8] = v7;
  *(v46 + 9) = 0u;
  *(v46 + 11) = 0u;
  sub_25A892B80(v191);
  swift_beginAccess();
  v50 = v46[13];
  v46[13] = v45;

  v46[14] = sub_25A89078C;
  v46[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v46;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v19;
  *&v210 = 0x65676E6172;
  *(&v210 + 1) = 0xE500000000000000;
  v51 = swift_allocObject();
  v51[1] = xmmword_25A9F8DB0;
  v51[2] = 0u;
  v51[3] = 0u;
  v51[4] = 0u;
  v51[5] = 0u;
  v51[6] = 0u;
  v51[7] = 0u;
  v52 = sub_25A92BDB4(v7);
  v53 = swift_allocObject();
  v53[4] = v7;
  v53[5] = v7;
  v53[6] = v7;

  v53[7] = v7;

  v53[8] = v7;

  v53[9] = 0;
  v53[10] = 0;

  v53[11] = 0;
  v53[12] = 0;

  v54 = sub_25A92BDB4(v7);
  v55 = *(v53 + 2);
  v193[1] = *(v53 + 3);
  v56 = *(v53 + 5);
  v193[2] = *(v53 + 4);
  v193[3] = v56;
  v53[13] = v54;
  v53[2] = 0x65676E6172;
  v53[3] = 0xE500000000000000;
  v194 = v53[12];
  v193[0] = v55;
  v53[4] = &unk_286C0B2F8;
  v53[5] = v7;
  v53[6] = v7;
  v53[7] = v7;
  v53[8] = v51;
  *(v53 + 9) = 0u;
  *(v53 + 11) = 0u;
  sub_25A892B80(v193);
  swift_beginAccess();
  v57 = v53[13];
  v53[13] = v52;

  v53[14] = sub_25A8907B8;
  v53[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v53;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  v58 = MEMORY[0x277D837D0];
  *(&v211 + 1) = MEMORY[0x277D837D0];
  *&v210 = 7367034;
  *(&v210 + 1) = 0xE300000000000000;
  v59 = sub_25A92BDB4(v7);
  v60 = swift_allocObject();
  v60[4] = v7;
  v60[5] = v7;
  v60[6] = v7;

  v60[7] = v7;

  v60[8] = v7;

  v60[9] = 0;
  v60[10] = 0;

  v60[11] = 0;
  v60[12] = 0;

  v61 = sub_25A92BDB4(v7);
  v62 = *(v60 + 2);
  v195[1] = *(v60 + 3);
  v63 = *(v60 + 5);
  v195[2] = *(v60 + 4);
  v195[3] = v63;
  v60[13] = v61;
  v60[2] = 7367034;
  v60[3] = 0xE300000000000000;
  v196 = v60[12];
  v195[0] = v62;
  v60[4] = v7;
  v60[5] = v7;
  v60[6] = v7;
  v60[7] = v7;
  v60[8] = v7;
  *(v60 + 9) = xmmword_25A9F8DF0;
  v60[11] = 0;
  v60[12] = 0;
  sub_25A892B80(v195);
  swift_beginAccess();
  v64 = v60[13];
  v60[13] = v59;

  v60[14] = sub_25A8907E4;
  v60[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v60;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v58;
  *&v210 = 0x7265746C6966;
  *(&v210 + 1) = 0xE600000000000000;
  v65 = sub_25A92BDB4(v7);
  v66 = swift_allocObject();
  v66[4] = v7;
  v66[5] = v7;
  v66[6] = v7;

  v66[7] = v7;

  v66[8] = v7;

  v66[9] = 0;
  v66[10] = 0;

  v66[11] = 0;
  v66[12] = 0;

  v67 = sub_25A92BDB4(v7);
  v68 = *(v66 + 2);
  v197[1] = *(v66 + 3);
  v69 = *(v66 + 5);
  v197[2] = *(v66 + 4);
  v197[3] = v69;
  v66[13] = v67;
  v66[2] = 0x7265746C6966;
  v66[3] = 0xE600000000000000;
  v198 = v66[12];
  v197[0] = v68;
  v66[4] = v7;
  v66[5] = &unk_286C0B348;
  v66[6] = v7;
  v66[7] = v7;
  v66[8] = v7;
  *(v66 + 9) = 0u;
  *(v66 + 11) = 0u;
  sub_25A892B80(v197);
  swift_beginAccess();
  v70 = v66[13];
  v66[13] = v65;

  v66[14] = sub_25A890810;
  v66[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v66;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  v71 = MEMORY[0x277D837D0];
  *(&v211 + 1) = MEMORY[0x277D837D0];
  *&v210 = 7235949;
  *(&v210 + 1) = 0xE300000000000000;
  v72 = sub_25A92BDB4(v7);
  v73 = swift_allocObject();
  v73[4] = v7;
  v73[5] = v7;
  v73[6] = v7;

  v73[7] = v7;

  v73[8] = v7;

  v73[9] = 0;
  v73[10] = 0;

  v73[11] = 0;
  v73[12] = 0;

  v74 = sub_25A92BDB4(v7);
  v75 = *(v73 + 2);
  v199[1] = *(v73 + 3);
  v76 = *(v73 + 5);
  v199[2] = *(v73 + 4);
  v199[3] = v76;
  v73[13] = v74;
  v73[2] = 7235949;
  v73[3] = 0xE300000000000000;
  v200 = v73[12];
  v199[0] = v75;
  v73[4] = v7;
  v73[5] = v7;
  v73[6] = v7;
  v73[7] = v7;
  v73[8] = v7;
  *(v73 + 9) = xmmword_25A9F8DA0;
  v73[11] = 0;
  v73[12] = 0;
  sub_25A892B80(v199);
  swift_beginAccess();
  v77 = v73[13];
  v73[13] = v72;

  v73[14] = sub_25A89083C;
  v73[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v73;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v71;
  *&v210 = 7889261;
  *(&v210 + 1) = 0xE300000000000000;
  v78 = sub_25A92BDB4(v7);
  v79 = swift_allocObject();
  v79[4] = v7;
  v79[5] = v7;
  v79[6] = v7;

  v79[7] = v7;

  v79[8] = v7;

  v79[9] = 0;
  v79[10] = 0;

  v79[11] = 0;
  v79[12] = 0;

  v80 = sub_25A92BDB4(v7);
  v81 = *(v79 + 2);
  v201[1] = *(v79 + 3);
  v82 = *(v79 + 5);
  v201[2] = *(v79 + 4);
  v201[3] = v82;
  v79[13] = v80;
  v79[2] = 7889261;
  v79[3] = 0xE300000000000000;
  v202 = v79[12];
  v201[0] = v81;
  v79[4] = v7;
  v79[5] = v7;
  v79[6] = v7;
  v79[7] = v7;
  v79[8] = v7;
  *(v79 + 9) = xmmword_25A9F8DA0;
  v79[11] = 0;
  v79[12] = 0;
  sub_25A892B80(v201);
  swift_beginAccess();
  v83 = v79[13];
  v79[13] = v78;

  v79[14] = sub_25A890868;
  v79[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v79;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v71;
  *&v210 = 7561825;
  *(&v210 + 1) = 0xE300000000000000;
  v84 = sub_25A92BDB4(v7);
  v85 = swift_allocObject();
  v85[4] = v7;
  v85[5] = v7;
  v85[6] = v7;

  v85[7] = v7;

  v85[8] = v7;

  v85[9] = 0;
  v85[10] = 0;

  v85[11] = 0;
  v85[12] = 0;

  v86 = sub_25A92BDB4(v7);
  v87 = *(v85 + 2);
  v203[1] = *(v85 + 3);
  v88 = *(v85 + 5);
  v203[2] = *(v85 + 4);
  v203[3] = v88;
  v85[13] = v86;
  v85[2] = 7561825;
  v85[3] = 0xE300000000000000;
  v204 = v85[12];
  v203[0] = v87;
  v85[4] = &unk_286C0B388;
  v85[5] = v7;
  v85[6] = v7;
  v85[7] = v7;
  v85[8] = v7;
  *(v85 + 9) = 0u;
  *(v85 + 11) = 0u;
  sub_25A892B80(v203);
  swift_beginAccess();
  v89 = v85[13];
  v85[13] = v84;

  v85[14] = sub_25A890894;
  v85[15] = 0;
  *(&v206 + 1) = v9;
  *&v205 = v85;
  LexicalContext.store(key:obj:)(&v210, &v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v205);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  *(&v211 + 1) = v71;
  *&v210 = 0x646E756F72;
  *(&v210 + 1) = 0xE500000000000000;
  v90 = swift_allocObject();
  v90[1] = xmmword_25A9F8D90;
  v90[2] = 0u;
  v90[3] = 0u;
  v91 = sub_25A92BDB4(v7);
  v92 = swift_allocObject();
  v92[4] = v7;
  v92[5] = v7;
  v92[6] = v7;

  v92[7] = v7;

  v92[8] = v7;

  v92[9] = 0;
  v92[10] = 0;

  v92[11] = 0;
  v92[12] = 0;

  v93 = sub_25A92BDB4(v7);
  v94 = *(v92 + 2);
  v206 = *(v92 + 3);
  v95 = *(v92 + 5);
  v207 = *(v92 + 4);
  v208 = v95;
  v92[13] = v93;
  v92[2] = 0x646E756F72;
  v92[3] = 0xE500000000000000;
  v209 = v92[12];
  v205 = v94;
  v92[4] = &unk_286C0B3B8;
  v92[5] = v7;
  v92[6] = v7;
  v92[7] = v7;
  v92[8] = v90;
  *(v92 + 9) = 0u;
  *(v92 + 11) = 0u;
  sub_25A892B80(&v205);
  swift_beginAccess();
  v96 = v92[13];
  v92[13] = v91;

  v92[14] = sub_25A8908C0;
  v92[15] = 0;
  v148 = v9;
  v149 = v0;
  *(&v172 + 1) = v9;
  *&v171 = v92;
  LexicalContext.store(key:obj:)(&v210, &v171);
  __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  __swift_destroy_boxed_opaque_existential_0Tm(&v210);
  v178[3] = MEMORY[0x277D837D0];
  v178[0] = 0x7265707573;
  v178[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25A9F8D90;
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_25A892BD4();
  *(v4 + 32) = v154;
  v97 = sub_25A92BDB4(v7);
  v151 = type metadata accessor for Function();
  v98 = swift_allocObject();
  v98[4] = v7;
  v98[5] = v7;
  v98[6] = v7;

  v98[7] = v7;

  v98[8] = v7;

  v98[9] = 0;
  v98[10] = 0;

  v98[11] = 0;
  v98[12] = 0;

  v99 = sub_25A92BDB4(v7);
  v100 = *(v98 + 2);
  v211 = *(v98 + 3);
  v101 = *(v98 + 5);
  v212 = *(v98 + 4);
  v213 = v101;
  v98[13] = v99;
  v98[2] = 0x7265707573;
  v98[3] = 0xE500000000000000;
  v214 = v98[12];
  v210 = v100;
  v98[4] = &unk_286C0B3F8;
  v98[5] = v7;
  v98[6] = v7;
  v98[7] = v7;
  v98[8] = v7;
  *(v98 + 9) = 0u;
  *(v98 + 11) = 0u;
  sub_25A892B80(&v210);
  swift_beginAccess();
  v102 = v98[13];
  v98[13] = v97;

  v98[14] = sub_25A8908EC;
  v98[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_25A9F8D90;
  *(v103 + 32) = 0x7463656A626FLL;
  *(v103 + 40) = 0xE600000000000000;
  v0 = sub_25A98E67C(v7);
  v104 = swift_allocObject();
  v104[10] = v98;

  v105 = sub_25A967378(1, 2, 1, v103);
  v176 = v105;
  sub_25A96B0BC(0, 0, 1, 0x7265707573, 0xE500000000000000);
  v104[2] = 0x7265707573;
  v104[3] = 0xE500000000000000;
  v104[4] = 0x7265707573;
  v104[5] = 0xE500000000000000;
  v104[6] = v4;
  v104[7] = v105;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v104[8] = sub_25A936284();
  v152 = v104;
  v153 = v0;
  v104[9] = &off_286C11D08;
  v106 = v0 + 64;
  v107 = 1 << *(v0 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v109 = v108 & *(v0 + 64);
  swift_beginAccess();
  v110 = 0;
  v111 = (v107 + 63) >> 6;
  if (v109)
  {
    while (1)
    {
      v112 = v110;
LABEL_46:
      v113 = __clz(__rbit64(v109));
      v109 &= v109 - 1;
      v114 = v113 | (v112 << 6);
      v115 = (*(v153 + 48) + 16 * v114);
      v4 = v115[1];
      v156 = *v115;
      v116 = *(*(v153 + 56) + 8 * v114);
      v118 = *(v152 + 64);
      v117 = *(v152 + 72);
      ObjectType = swift_getObjectType();
      *(&v172 + 1) = v151;
      *&v171 = v116;
      v0 = *(v117 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      (v0)(v156, v4, &v171, ObjectType, v117);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(&v171);
      if (!v109)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
LABEL_42:
    v112 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v112 >= v111)
    {
      break;
    }

    v109 = *(v106 + 8 * v112);
    ++v110;
    if (v109)
    {
      v110 = v112;
      goto LABEL_46;
    }
  }

  v177[3] = v150;
  v177[0] = v152;
  LexicalContext.store(key:obj:)(v178, v177);
  __swift_destroy_boxed_opaque_existential_0Tm(v177);
  __swift_destroy_boxed_opaque_existential_0Tm(v178);
  *(&v172 + 1) = MEMORY[0x277D837D0];
  v119 = MEMORY[0x277D837D0];
  *&v171 = 0x6E6174736E697369;
  *(&v171 + 1) = 0xEA00000000006563;
  v120 = MEMORY[0x277D84F90];
  v121 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v122 = swift_allocObject();
  v122[4] = v120;
  v122[5] = v120;
  v122[6] = v120;

  v122[7] = v120;

  v122[8] = v120;

  v122[9] = 0;
  v122[10] = 0;

  v122[11] = 0;
  v122[12] = 0;

  v122[13] = sub_25A92BDB4(v120);
  v122[2] = 0x6E6174736E697369;
  v122[3] = 0xEA00000000006563;
  v123 = *(v122 + 5);
  v160[2] = *(v122 + 4);
  v160[3] = v123;
  v161 = v122[12];
  v124 = *(v122 + 3);
  v160[0] = *(v122 + 2);
  v160[1] = v124;
  v122[4] = &unk_286C0B438;
  v122[5] = v120;
  v122[6] = v120;
  v122[7] = v120;
  v122[8] = v120;
  *(v122 + 9) = 0u;
  *(v122 + 11) = 0u;
  sub_25A892B80(v160);
  swift_beginAccess();
  v125 = v122[13];
  v122[13] = v121;

  v122[14] = sub_25A890918;
  v122[15] = 0;
  *(&v167 + 1) = v148;
  *&v166 = v122;
  LexicalContext.store(key:obj:)(&v171, &v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  v126 = v119;
  *(&v172 + 1) = v119;
  *&v171 = 0x72747461736168;
  *(&v171 + 1) = 0xE700000000000000;
  v127 = sub_25A92BDB4(v120);
  v128 = swift_allocObject();
  v128[4] = v120;
  v128[5] = v120;
  v128[6] = v120;

  v128[7] = v120;

  v128[8] = v120;

  v128[9] = 0;
  v128[10] = 0;

  v128[11] = 0;
  v128[12] = 0;

  v128[13] = sub_25A92BDB4(v120);
  v128[2] = 0x72747461736168;
  v128[3] = 0xE700000000000000;
  v129 = *(v128 + 5);
  v162[2] = *(v128 + 4);
  v162[3] = v129;
  v163 = v128[12];
  v130 = *(v128 + 3);
  v162[0] = *(v128 + 2);
  v162[1] = v130;
  v128[4] = &unk_286C0B478;
  v128[5] = v120;
  v128[6] = v120;
  v128[7] = v120;
  v128[8] = v120;
  *(v128 + 9) = 0u;
  *(v128 + 11) = 0u;
  sub_25A892B80(v162);
  swift_beginAccess();
  v131 = v128[13];
  v128[13] = v127;

  v128[14] = sub_25A890944;
  v128[15] = 0;
  *(&v167 + 1) = v148;
  *&v166 = v128;
  LexicalContext.store(key:obj:)(&v171, &v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  *(&v172 + 1) = v126;
  *&v171 = 0x616C636275737369;
  *(&v171 + 1) = 0xEA00000000007373;
  v132 = sub_25A92BDB4(v120);
  v133 = swift_allocObject();
  v133[4] = v120;
  v133[5] = v120;
  v133[6] = v120;

  v133[7] = v120;

  v133[8] = v120;

  v133[9] = 0;
  v133[10] = 0;

  v133[11] = 0;
  v133[12] = 0;

  v133[13] = sub_25A92BDB4(v120);
  v133[2] = 0x616C636275737369;
  v133[3] = 0xEA00000000007373;
  v134 = *(v133 + 5);
  v164[2] = *(v133 + 4);
  v164[3] = v134;
  v165 = v133[12];
  v135 = *(v133 + 3);
  v164[0] = *(v133 + 2);
  v164[1] = v135;
  v133[4] = &unk_286C0B4B8;
  v133[5] = v120;
  v133[6] = v120;
  v133[7] = v120;
  v133[8] = v120;
  *(v133 + 9) = 0u;
  *(v133 + 11) = 0u;
  sub_25A892B80(v164);
  swift_beginAccess();
  v136 = v133[13];
  v133[13] = v132;

  v133[14] = sub_25A890970;
  v133[15] = 0;
  *(&v167 + 1) = v148;
  *&v166 = v133;
  LexicalContext.store(key:obj:)(&v171, &v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v166);
  __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  *(&v172 + 1) = v126;
  *&v171 = 7364973;
  *(&v171 + 1) = 0xE300000000000000;
  v137 = sub_25A92BDB4(v120);
  v138 = swift_allocObject();
  v138[4] = v120;
  v138[5] = v120;
  v138[6] = v120;

  v138[7] = v120;

  v138[8] = v120;

  v138[9] = 0;
  v138[10] = 0;

  v138[11] = 0;
  v138[12] = 0;

  v138[13] = sub_25A92BDB4(v120);
  v138[2] = 7364973;
  v138[3] = 0xE300000000000000;
  v139 = *(v138 + 5);
  v168 = *(v138 + 4);
  v169 = v139;
  v170 = v138[12];
  v140 = *(v138 + 3);
  v166 = *(v138 + 2);
  v167 = v140;
  v138[4] = v120;
  v138[5] = &unk_286C0B4F8;
  v138[6] = v120;
  v138[7] = v120;
  v138[8] = v120;
  *(v138 + 9) = xmmword_25A9F8DF0;
  v138[11] = 0;
  v138[12] = 0;
  sub_25A892B80(&v166);
  swift_beginAccess();
  v141 = v138[13];
  v138[13] = v137;

  v138[14] = sub_25A89099C;
  v138[15] = 0;
  v159 = v148;
  v158[0] = v138;
  LexicalContext.store(key:obj:)(&v171, v158);
  __swift_destroy_boxed_opaque_existential_0Tm(v158);
  __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  v159 = v126;
  v158[0] = 0x72747461746567;
  v158[1] = 0xE700000000000000;
  v142 = sub_25A92BDB4(v120);
  v143 = swift_allocObject();
  v143[4] = v120;
  v143[5] = v120;
  v143[6] = v120;

  v143[7] = v120;

  v143[8] = v120;

  v143[9] = 0;
  v143[10] = 0;

  v143[11] = 0;
  v143[12] = 0;

  v143[13] = sub_25A92BDB4(v120);
  v143[2] = 0x72747461746567;
  v143[3] = 0xE700000000000000;
  v144 = *(v143 + 5);
  v173 = *(v143 + 4);
  v174 = v144;
  v175 = v143[12];
  v145 = *(v143 + 3);
  v171 = *(v143 + 2);
  v172 = v145;
  v143[4] = &unk_286C0B528;
  v143[5] = v120;
  v143[6] = v120;
  v143[7] = v120;
  v143[8] = v120;
  *(v143 + 9) = 0u;
  *(v143 + 11) = 0u;
  sub_25A892B80(&v171);
  swift_beginAccess();
  v146 = v143[13];
  v143[13] = v142;

  v143[14] = sub_25A8909C8;
  v143[15] = 0;
  v157[3] = v148;
  v157[0] = v143;
  LexicalContext.store(key:obj:)(v158, v157);
  __swift_destroy_boxed_opaque_existential_0Tm(v157);
  __swift_destroy_boxed_opaque_existential_0Tm(v158);
  return v149;
}

unint64_t sub_25A89522C()
{
  result = qword_27FA047D0;
  if (!qword_27FA047D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA047D0);
  }

  return result;
}

unint64_t sub_25A895280()
{
  result = qword_27FA047D8;
  if (!qword_27FA047D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA047D8);
  }

  return result;
}

uint64_t sub_25A8952F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25A8953BC()
{
  result = qword_27FA04878;
  if (!qword_27FA04878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04870, &qword_25A9F8EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04878);
  }

  return result;
}

uint64_t sub_25A895474(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 0x6F746172656E6567;
    v3 = 0xEA00000000007372;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7955819;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 0x6F746172656E6567;
    v7 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A895570()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A89560C()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A895694()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A89572C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A89638C();
  *a2 = result;
  return result;
}

void sub_25A89575C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 0x6F746172656E6567;
    v4 = 0xEA00000000007372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7955819;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8957B4()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6F746172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_25A895808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A89638C();
  *a1 = result;
  return result;
}

uint64_t sub_25A895830(uint64_t a1)
{
  v2 = sub_25A896220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A89586C(uint64_t a1)
{
  v2 = sub_25A896220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8958F4(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04880, &qword_25A9F8F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A896220();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for DictComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90BEBC(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A90BEBC(v9, 1);
    v1[8] = v13;
    v1[9] = sub_25A946C18(v9, 2);
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A895B24@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v9 = v6[3];
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v10 = v4[5];
  v11 = v4[6];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 48);
  swift_unknownObjectRetain();

  v13(v14, &off_286C11D08, ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = v4[7];
  v16 = v4[8];
  v17 = swift_getObjectType();
  v18 = *(v16 + 48);

  swift_unknownObjectRetain();
  v18(v6, &off_286C11D08, v17, v16);
  swift_unknownObjectRelease();
  v19 = v4[9];
  v20 = *(v19 + 16);
  if (v20)
  {
    v36 = v4;
    v37 = a1;

    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = swift_getObjectType();
      v25 = *(v23 + 48);

      swift_unknownObjectRetain();
      v25(v6, &off_286C11D08, v24, v23);
      swift_unknownObjectRelease();
      v21 += 2;
      --v20;
    }

    while (v20);

    v4 = v36;
    v26 = v36[9];
    v27 = *(v26 + 16);
    v39 = MEMORY[0x277D84F98];
    if (v27)
    {
      v38 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v28 = 32;
      do
      {
        v29 = *(v26 + v28);
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        v30 = *(v38 + 16);
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v28 += 16;
        --v27;
      }

      while (v27);
      a1 = v37;
      v31 = v38;
      goto LABEL_11;
    }

    a1 = v37;
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  swift_retain_n();

  v31 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A9351F0(0, v31, v6, &off_286C11D08, &v39, v4);

  if (v3)
  {
  }

  else
  {

    v33 = v39;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
    v35 = swift_allocObject();
    *(v35 + 16) = MEMORY[0x277D84F98];
    swift_beginAccess();
    *(v35 + 16) = v33;
    *(a1 + 24) = v34;

    *a1 = v35;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A895EF8(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = a2[6];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 64);
  swift_unknownObjectRetain();
  v7(v18, ObjectType, v5);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v21);
    sub_25A872CE0(v18);
    v9 = a2[7];
    v10 = a2[8];
    v11 = swift_getObjectType();
    v12 = *(v10 + 64);
    swift_unknownObjectRetain();
    v12(v18, v11, v10);
    swift_unknownObjectRelease();
    sub_25A896580(v20);
    sub_25A872CE0(v18);
    sub_25A87500C(v21, v17);
    if (swift_dynamicCast())
    {
      v18[0] = v14;
      v18[1] = v15;
      v19 = v16;
      sub_25A874FB0(v18, &v14);
      sub_25A87500C(v20, v17);
      sub_25A8F2E14(v17, &v14);
      sub_25A8795A0(v18);
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      sub_25A8961B8(&v14);
      sub_25A874F54();
      swift_allocError();
      *v13 = 108;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  return result;
}

uint64_t sub_25A8960EC()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];
}

uint64_t sub_25A896124()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_25A8961B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A896220()
{
  result = qword_27FA04888;
  if (!qword_27FA04888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04888);
  }

  return result;
}

unint64_t sub_25A896288()
{
  result = qword_27FA04890;
  if (!qword_27FA04890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04890);
  }

  return result;
}

unint64_t sub_25A8962E0()
{
  result = qword_27FA04898;
  if (!qword_27FA04898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04898);
  }

  return result;
}

unint64_t sub_25A896338()
{
  result = qword_27FA048A0;
  if (!qword_27FA048A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048A0);
  }

  return result;
}

uint64_t sub_25A89638C()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8963D8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A896DA0();
  sub_25A998BF8();
  if (v2)
  {
    sub_25A872F88(v1 + 24);
    type metadata accessor for BaseOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 1;
    v10 = sub_25A998928();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

double sub_25A896580@<D0>(uint64_t *a1@<X8>)
{
  sub_25A872C84(v1, v5);
  if (v6 && (sub_25A872CE0(v5), sub_25A872C84(v1, v5), v6 != 1))
  {
    sub_25A872CE0(v5);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v4 = swift_allocObject();
    *a1 = v4;
    result = 0.0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
  }

  else
  {
    v7[0] = v5[0];
    v7[1] = v5[1];
    sub_25A92DE50(v7, a1);
    sub_25A872D84(v7);
  }

  return result;
}

uint64_t sub_25A896640()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

void (*sub_25A896680(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25A896714;
}

void sub_25A896714(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_25A896798(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F6E656E696CLL;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6F6E656E696CLL;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A896834()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8968AC()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A896910()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A896984@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A8969E4(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6F6E656E696CLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A896A18()
{
  if (*v0)
  {
    result = 0x6F6E656E696CLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_25A896A48@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A896AAC(uint64_t a1)
{
  v2 = sub_25A896DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A896AE8(uint64_t a1)
{
  v2 = sub_25A896DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A896B24(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_25A8963D8(a1);
  return v2;
}

double sub_25A896B74@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A896B84()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A896BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_25A896CBC(uint64_t a1)
{
  *(a1 + 8) = sub_25A896D24(&qword_27FA048A8);
  result = sub_25A896D24(&qword_27FA048B0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25A896D24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BaseOp();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A896D64@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_25A896DA0()
{
  result = qword_27FA048C0;
  if (!qword_27FA048C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048C0);
  }

  return result;
}

uint64_t sub_25A896DF4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Morpheus8OpResultO(uint64_t a1)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25A896E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A896EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
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

uint64_t sub_25A896F04(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_25A896F4C()
{
  result = qword_27FA048C8;
  if (!qword_27FA048C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048C8);
  }

  return result;
}

unint64_t sub_25A896FA4()
{
  result = qword_27FA048D0;
  if (!qword_27FA048D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048D0);
  }

  return result;
}

unint64_t sub_25A896FFC()
{
  result = qword_27FA048D8;
  if (!qword_27FA048D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048D8);
  }

  return result;
}

double sub_25A897054@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_25A897080(uint64_t *a1)
{
  swift_allocObject();
  sub_25A872F24(a1, v4);
  v2 = sub_25A8963D8(v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_25A89711C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 6779489;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 6779489;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A8971B8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A897230()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A897294()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A897308@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A897368(uint64_t *a1@<X8>)
{
  v2 = 6779489;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A89739C()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 6779489;
  }

  *v0;
  return result;
}

uint64_t sub_25A8973CC@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A897430(uint64_t a1)
{
  v2 = sub_25A897A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A89746C(uint64_t a1)
{
  v2 = sub_25A897A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8974F4(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F8, &unk_25A9FBDE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-1] - v8;
  v1[5] = 0;
  v1[6] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A897A4C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v1[6];

    type metadata accessor for Keyword();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v11 = sub_25A9988F8();
    v12 = v1[6];
    v1[5] = v11;
    v1[6] = v13;

    v1[7] = sub_25A910D18(v9, 1);
    v1[8] = v16;
    sub_25A872F24(a1, v18);
    v3 = sub_25A8963D8(v18);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A897704@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[7];
  v7 = v4[8];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[7];
  v13 = v4[8];
  v14 = swift_getObjectType();
  v15 = *(v13 + 64);
  swift_unknownObjectRetain();
  v15(v21, v14, v13);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A91185C(v22);
    sub_25A872CE0(v21);
    v17 = v4[6];
    if (v17)
    {
      v18 = v4[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048E0, ",K\a");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v18;
      *(inited + 40) = v17;

      sub_25A92DE50(v22, (inited + 48));
      v20 = sub_25A92BDB4(inited);
      swift_setDeallocating();
      sub_25A878194(inited + 32, &qword_27FA048E8, &unk_25A9FD760);
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
      *a1 = v20;
    }

    else
    {
      sub_25A92DE50(v22, a1);
    }

    result = sub_25A878194(v22, &qword_27FA04458, &unk_25A9F7FB0);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A8978F0()
{
  if (v0[6])
  {
    v6 = v0[5];
    v7 = v0[6];

    MEMORY[0x25F850290](2112800, 0xE300000000000000);
  }

  else
  {
    v6 = 10794;
  }

  v1 = v0[7];
  v2 = v0[8];
  swift_getObjectType();
  v3 = *(v2 + 8);
  v4 = sub_25A998968();
  MEMORY[0x25F850290](v4);

  return v6;
}

uint64_t sub_25A897990()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_unknownObjectRelease();
}

uint64_t sub_25A8979C0()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A897A4C()
{
  result = qword_27FA04900;
  if (!qword_27FA04900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04900);
  }

  return result;
}

unint64_t sub_25A897AB4()
{
  result = qword_27FA04908;
  if (!qword_27FA04908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04908);
  }

  return result;
}

unint64_t sub_25A897B0C()
{
  result = qword_27FA04910;
  if (!qword_27FA04910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04910);
  }

  return result;
}

unint64_t sub_25A897B64()
{
  result = qword_27FA04918;
  if (!qword_27FA04918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04918);
  }

  return result;
}

uint64_t sub_25A897BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v0 = swift_allocObject();
  v0[1] = xmmword_25A9F8D90;
  v0[2] = 0u;
  v0[3] = 0u;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for PyBuiltInFunctionOrMethod();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v3[2] = 0x79617272612E706ELL;
  v3[3] = 0xE800000000000000;
  v4 = *(v3 + 5);
  v8[2] = *(v3 + 4);
  v8[3] = v4;
  v9 = v3[12];
  v5 = *(v3 + 3);
  v8[0] = *(v3 + 2);
  v8[1] = v5;
  v3[4] = &unk_286C0BCF8;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v0;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  sub_25A892B80(v8);
  swift_beginAccess();
  v6 = v3[13];
  v3[13] = v2;

  v3[14] = sub_25A8DBCC4;
  v3[15] = 0;
  qword_27FA0FCA8 = v3;
  return result;
}

uint64_t sub_25A897D44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(97, 0xE100000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, v21);
    sub_25A872D74(v21, v22);
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v8 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v7, v21), (swift_dynamicCast() & 1) != 0))
    {
      v9 = sub_25A8F139C(v19, v20);

      v10 = v9;
    }

    else
    {
      v10 = 13;
    }

    v17 = sub_25A8F0FA0(v22, v10);
    if (!v2)
    {
      v18 = v17;
      a2[3] = type metadata accessor for MLXArray();
      *a2 = v18;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v11 = sub_25A997BD8();
    __swift_project_value_buffer(v11, qword_27FA0FCE8);
    v12 = sub_25A997BB8();
    v13 = sub_25A9983A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25A232000, v12, v13, "Missing required args for numpy.array", v14, 2u);
      MEMORY[0x25F852800](v14, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v15 = 49;
    return swift_willThrow();
  }
}

uint64_t sub_25A897F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[33] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = mlx_array_ndim(*(a1 + 16));
  v7 = *(a1 + 16);

  if (v6 == 1)
  {
    mlx_array_ndim(v7);
    v8 = mlx_array_dim(v7, 0);
    swift_beginAccess();
    swift_beginAccess();
    if (v8 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = 0;
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = &off_286C13520;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v31 = sub_25A9616C8(inited, v32[0]);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 32));
      swift_beginAccess();
      v10 = mlx_array_dtype(*(v31 + 16));
      v11 = sub_25A956420(v10);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 7;
      }

      v13 = sub_25A8BFCB4(0, v12);
      sub_25A998C58();
      v14 = v32[0];
      v32[0] = mlx_array_new();
      v15 = *(v31 + 16);
      swift_beginAccess();
      mlx_not_equal(v32, v15, *(v13 + 16), *(v14 + 16));
    }
  }

  else
  {
    mlx_array_ndim(v7);
    v16 = mlx_array_dim(v7, 0);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = v16 & ~(v16 >> 31);
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_25A9F8D90;
        *(v19 + 32) = v17;
        *(v19 + 56) = MEMORY[0x277D83B88];
        *(v19 + 64) = &off_286C13520;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = sub_25A9616C8(v19, v32[13]);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0Tm((v19 + 32));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_25A9F8D90;
        *(v21 + 32) = v17;
        v22 = *(a2 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v24 = a2, v25 = *(a2 + 24) >> 1, v25 <= v22))
        {
          v24 = sub_25A967040(isUniquelyReferenced_nonNull_native, v22 + 1, 1, a2);
          v25 = *(v24 + 3) >> 1;
        }

        v26 = *(v24 + 2);
        if (v25 <= v26)
        {
          __break(1u);
          __break(1u);
          __break(1u);
        }

        *&v24[8 * v26 + 32] = *(v21 + 32);

        ++*(v24 + 2);
        sub_25A897F48(v20, v24, a3, a4);
        ++v17;
      }

      while (v18 != v17);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8985D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8985D8);
  }

  _Unwind_Resume(a1);
}

void sub_25A89862C(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_25A8BFCB4(a2, v6);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v10[0] = mlx_array_new();
  v8 = *(a1 + 16);
  swift_beginAccess();
  mlx_not_equal(v10, v8, *(v7 + 16), *(v9 + 16));
}

void sub_25A898768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A898770);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A898784(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_ndim(*(a1 + 16)) == 1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10[0] = mlx_array_new();
    mlx_argsort(v10, *(a1 + 16), *(v9 + 16));
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25A997BD8();
  __swift_project_value_buffer(v2, qword_27FA0FCE8);

  v3 = sub_25A997BB8();
  v4 = sub_25A9983A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = mlx_array_ndim(*(a1 + 16));

    _os_log_impl(&dword_25A232000, v3, v4, "Ndim of %ld is not supported for searchsorted", v5, 0xCu);
    MEMORY[0x25F852800](v5, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v6 = 48;
  result = swift_willThrow();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A898FD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A898FDCLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A8990B0()
{
  v8[29] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F8D90;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E8, &qword_25A9F95A8);
  *(inited + 32) = -1;
  *(inited + 56) = v1;
  *(inited + 64) = &off_286C13550;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v2 = sub_25A9616C8(inited, v8[0]);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((inited + 32));
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_25A9F8D90;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049F0, &qword_25A9F95B0);
  *(v3 + 32) = 1;
  *(v3 + 56) = v4;
  *(v3 + 64) = &off_286C13570;
  sub_25A998C58();
  v5 = sub_25A9616C8(v3, v8[0]);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v3 + 32));
  sub_25A998C58();
  v6 = v8[0];
  v8[0] = mlx_array_new();
  swift_beginAccess();
  v7 = *(v2 + 16);
  swift_beginAccess();
  mlx_less_equal(v8, v7, *(v5 + 16), *(v6 + 16));
}

void sub_25A89991C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A899924);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8999D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v24 = a2;
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v8 = v23;
  }

  else
  {
    swift_beginAccess();
    v9 = mlx_array_dtype(*(a1 + 16));
    v10 = sub_25A956420(v9);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 7;
    }

    v8 = sub_25A8BFCB4(a2, v11);
  }

  v23 = a3;
  if (swift_dynamicCast())
  {
    v12 = v21;
  }

  else
  {
    swift_beginAccess();
    v13 = mlx_array_dtype(*(a1 + 16));
    v14 = sub_25A956420(v13);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 7;
    }

    v12 = sub_25A8BFCB4(a3, v15);
  }

  v22 = mlx_array_new();
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  v17 = *(v8 + 16);
  swift_beginAccess();
  mlx_clip(&v22, v16, v17, *(v12 + 16), *(a4 + 16));

  v18 = v22;
  result = swift_allocObject();
  *(result + 16) = v18;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}