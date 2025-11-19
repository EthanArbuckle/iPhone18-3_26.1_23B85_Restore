float sub_252ADD4E4(uint64_t a1, unint64_t a2)
{
  v77 = a1;
  v78 = a2;
  v76 = sub_252E36C84();
  v74 = *(v76 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = (v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_252E36D54();
  v73 = *(v75 - 8);
  v4 = v73[8];
  v5 = MEMORY[0x28223BE20](v75);
  v70 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = v66 - v7;
  v8 = sub_252E36CA4();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36D04();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E36CB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = dispatch_semaphore_create(0);
  v22 = swift_allocObject();
  sub_252936DF8();
  *(v22 + 16) = 0u;
  v66[1] = v22 + 16;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0;
  (*(v17 + 104))(v20, *MEMORY[0x277D851C0], v16);
  v23 = sub_252E375A4();
  (*(v17 + 8))(v20, v16);
  v24 = v78;
  v25 = swift_allocObject();
  v25[2] = v77;
  v25[3] = v24;
  v25[4] = v22;
  v25[5] = v21;
  aBlock[4] = sub_252ADDE40;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_9;
  v26 = _Block_copy(aBlock);

  v27 = v21;
  sub_252E36CD4();
  v79 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v15, v11, v26);
  _Block_release(v26);

  (*(v69 + 8))(v11, v8);
  (*(v67 + 8))(v15, v68);

  v28 = v70;
  sub_252E36D14();
  v29 = v72;
  *v72 = 200;
  v30 = v74;
  v31 = v76;
  (*(v74 + 104))(v29, *MEMORY[0x277D85178], v76);
  v32 = v71;
  sub_252E36D24();
  (*(v30 + 8))(v29, v31);
  v33 = v73[1];
  v34 = v75;
  v33(v28, v75);
  sub_252E375F4();
  v33(v32, v34);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
LABEL_34:
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544D30);
    sub_252CC4050(0xD000000000000029, 0x8000000252E797D0, 0xD000000000000087, 0x8000000252E79800, 0xD000000000000011, 0x8000000252E79890, 72);
    goto LABEL_24;
  }

  swift_beginAccess();
  if (!*(v22 + 24) || (v36 = *(v22 + 48)) == 0)
  {
LABEL_24:

    return 1.0;
  }

  v75 = v27;
  v76 = v22;
  v37 = *(v36 + 16);

  if (v37)
  {
    v38 = 0;
    v39 = *MEMORY[0x277D47E50];
    v40 = v36 + 40;
    v73 = (&v37[-1].isa + 7);
    v41 = MEMORY[0x277D84F90];
    v74 = v36 + 40;
    do
    {
      v42 = (v40 + 16 * v38);
      v27 = v38;
      while (1)
      {
        if (v27 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v44 = *(v42 - 1);
        v43 = *v42;
        if (v44 == sub_252E36F34() && v43 == v45)
        {
          break;
        }

        v47 = sub_252E37DB4();

        if (v47)
        {
          goto LABEL_18;
        }

        v27 = (v27 + 1);

        v42 += 2;
        if (v37 == v27)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA3A0(0, *(v41 + 16) + 1, 1);
        v41 = v79;
      }

      v40 = v74;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2529AA3A0((v49 > 1), v50 + 1, 1);
        v41 = v79;
      }

      v38 = (&v27->isa + 1);
      *(v41 + 16) = v50 + 1;
      v51 = v41 + 16 * v50;
      *(v51 + 32) = v44;
      *(v51 + 40) = v43;
    }

    while (v73 != v27);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

LABEL_27:
  v53 = *(v41 + 16);

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v54 = sub_252E36AD4();
  __swift_project_value_buffer(v54, qword_27F544D30);
  v55 = v78;

  v56 = sub_252E36AC4();
  v57 = sub_252E374C4();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v75;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v60 = 136315650;
    *(v60 + 4) = sub_252BE2CE0(v77, v55, &v79);
    *(v60 + 12) = 2080;
    v62 = MEMORY[0x2530AD730](v36, MEMORY[0x277D837D0]);
    v64 = sub_252BE2CE0(v62, v63, &v79);

    *(v60 + 14) = v64;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v53;
    _os_log_impl(&dword_252917000, v56, v57, "Measuring success rate for %s window=%s count=%ld", v60, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v61, -1, -1);
    MEMORY[0x2530AED00](v60, -1, -1);
  }

  v65 = *(v36 + 16);

  result = 1.0;
  if (v65 >= 3)
  {
    return v53 / v65;
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252ADDE6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_252ADDEBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_252ADDF0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252E798F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252ADE034@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543088, &unk_252E49E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADEF20();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v11 = sub_252E37C04();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = sub_252E37C04();
  v16 = v15;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v24 = 2;
  sub_252984B28(&qword_27F540920);
  sub_252E37BE4();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

void sub_252ADE2C4(uint64_t (*a1)(), void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v74 = a3;
  v75 = a1;
  v5 = sub_252E36C84();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_252E36D54();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v62 - v13;
  v14 = sub_252E36CA4();
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_252E36D04();
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252E36CB4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = dispatch_semaphore_create(0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  v76 = v26;
  *(v26 + 48) = 0;
  v27 = a2;
  if (a2 && v78)
  {
    sub_252936DF8();
    (*(v22 + 104))(v25, *MEMORY[0x277D851C0], v21);

    v63 = sub_252E375A4();
    (*(v22 + 8))(v25, v21);
    v28 = swift_allocObject();
    v29 = v76;
    v28[2] = v75;
    v28[3] = a2;
    v30 = v77;
    v28[4] = v29;
    v28[5] = v30;
    v84 = sub_252ADED7C;
    v85 = v28;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v82 = sub_252AD686C;
    v83 = &block_descriptor_13;
    v31 = _Block_copy(&aBlock);
    v64 = a2;

    v32 = v77;
    sub_252E36CD4();
    v79[0] = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    sub_252E37824();
    v33 = v63;
    MEMORY[0x2530ADA30](0, v20, v17, v31);
    _Block_release(v31);

    (*(v67 + 8))(v17, v14);
    (*(v65 + 8))(v20, v66);

    v34 = v68;
    sub_252E36D14();
    *v8 = 200;
    v36 = v72;
    v35 = v73;
    (*(v72 + 104))(v8, *MEMORY[0x277D85178], v73);
    v37 = v69;
    sub_252E36D24();
    (*(v36 + 8))(v8, v35);
    v38 = v71;
    v39 = *(v70 + 8);
    v39(v34, v71);
    sub_252E375F4();
    v39(v37, v38);
    if (sub_252E36C94())
    {

      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v40 = sub_252E36AD4();
      __swift_project_value_buffer(v40, qword_27F544D30);
      sub_252CC4050(0xD000000000000029, 0x8000000252E797D0, 0xD000000000000087, 0x8000000252E79800, 0xD000000000000038, 0x8000000252E798B0, 125);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_252E3C290;
    v55 = v78;
    *(v54 + 32) = v74;
    *(v54 + 40) = v55;
    v80 = v54;
    swift_beginAccess();
    v56 = v64;
    if (*(v29 + 24) && *(v29 + 48))
    {
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_25297A744(v57);
    v58 = v80;
    if (*(v80 + 16) < 5uLL)
    {
LABEL_22:
      aBlock = xmmword_27F543068;
      v82 = v75;
      v83 = v56;
      v84 = v58;

      sub_252DBB18C(&aBlock);

      return;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v59 = *(v58 + 2);
      if (v59)
      {
LABEL_21:
        v60 = v59 - 1;
        v61 = *&v58[16 * v60 + 40];
        *(v58 + 2) = v60;

        goto LABEL_22;
      }
    }

    else
    {
      v58 = sub_252D57B88(v58);
      v59 = *(v58 + 2);
      if (v59)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  v41 = v78;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v42 = sub_252E36AD4();
  __swift_project_value_buffer(v42, qword_27F544D30);

  v43 = sub_252E36AC4();
  v44 = sub_252E374D4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v79[0] = v46;
    *v45 = 136315394;
    *&aBlock = v75;
    *(&aBlock + 1) = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v47 = sub_252E36F94();
    v49 = sub_252BE2CE0(v47, v48, v79);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    *&aBlock = v74;
    *(&aBlock + 1) = v41;

    v50 = sub_252E36F94();
    v52 = sub_252BE2CE0(v50, v51, v79);

    *(v45 + 14) = v52;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v46, -1, -1);
    MEMORY[0x2530AED00](v45, -1, -1);
  }

  else
  {

    v53 = v77;
  }
}

void sub_252ADEC58(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = v4;
      sub_252ADCE20(&v7);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252ADEDA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252ADEDF0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_252ADEE48(uint64_t a1)
{
  *(a1 + 8) = sub_252ADEE78();
  result = sub_252ADEECC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252ADEE78()
{
  result = qword_27F543078;
  if (!qword_27F543078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543078);
  }

  return result;
}

unint64_t sub_252ADEECC()
{
  result = qword_27F543080;
  if (!qword_27F543080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543080);
  }

  return result;
}

unint64_t sub_252ADEF20()
{
  result = qword_27F543090;
  if (!qword_27F543090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543090);
  }

  return result;
}

unint64_t sub_252ADEF88()
{
  result = qword_27F5430A0;
  if (!qword_27F5430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430A0);
  }

  return result;
}

unint64_t sub_252ADEFE0()
{
  result = qword_27F5430A8;
  if (!qword_27F5430A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430A8);
  }

  return result;
}

unint64_t sub_252ADF038()
{
  result = qword_27F5430B0;
  if (!qword_27F5430B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430B0);
  }

  return result;
}

uint64_t SuggestionParameters.accessoryType.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SuggestionParameters.attribute.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SuggestionParameters.containerName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SuggestionParameters.containerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SuggestionParameters.roomName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SuggestionParameters.roomName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SuggestionParameters.accessoryName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

unint64_t sub_252ADF24C()
{
  v1 = 0x726F737365636361;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x656D614E6D6F6F72;
  if (v2 != 3)
  {
    v4 = 0x726F737365636361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7475626972747461;
  if (v2 != 1)
  {
    v5 = 0x656E6961746E6F63;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252ADF350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AE5358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252ADF378(uint64_t a1)
{
  v2 = sub_252ADF670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADF3B4(uint64_t a1)
{
  v2 = sub_252ADF670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestionParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5430B8, &qword_252E49FD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v24 = v1[2];
  v23 = *(v1 + 24);
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  v12 = v1[8];
  v17 = v1[9];
  v18 = v12;
  LODWORD(v12) = *(v1 + 80);
  v16[0] = *(v1 + 81);
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADF670();
  sub_252E37F84();
  v32 = 0;
  v14 = v25;
  sub_252E37CC4();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v31 = 1;
  sub_252E37CC4();
  v30 = 2;
  sub_252E37C94();
  v29 = 3;
  sub_252E37C94();
  v28 = 4;
  sub_252E37C94();
  v27 = 5;
  sub_252E37D04();
  v26 = 6;
  sub_252E37D04();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_252ADF670()
{
  result = qword_27F5430C0;
  if (!qword_27F5430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430C0);
  }

  return result;
}

uint64_t SuggestionParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5430C8, &qword_252E49FD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADF670();
  sub_252E37F74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v47) = 0;
    v40 = sub_252E37BD4();
    v60 = v11 & 1;
    LOBYTE(v47) = 1;
    v39 = sub_252E37BD4();
    v59 = v12 & 1;
    LOBYTE(v47) = 2;
    v13 = sub_252E37BA4();
    v15 = v14;
    v38 = v13;
    LOBYTE(v47) = 3;
    v16 = sub_252E37BA4();
    v18 = v17;
    v37 = v16;
    LOBYTE(v47) = 4;
    v19 = sub_252E37BA4();
    v21 = v20;
    v36 = v19;
    LOBYTE(v47) = 5;
    v35 = sub_252E37C14();
    v61 = 6;
    v22 = sub_252E37C14();
    v35 &= 1u;
    v23 = *(v6 + 8);
    v34 = v22;
    v23(v9, v5);
    v24 = v34 & 1;
    v32 = v34 & 1;
    *&v41 = v40;
    v34 = v60;
    BYTE8(v41) = v60;
    *&v42 = v39;
    v33 = v59;
    BYTE8(v42) = v59;
    v25 = v38;
    *&v43 = v38;
    *(&v43 + 1) = v15;
    v26 = v37;
    *&v44 = v37;
    *(&v44 + 1) = v18;
    v27 = v36;
    *&v45 = v36;
    *(&v45 + 1) = v21;
    LOBYTE(v46) = v35;
    HIBYTE(v46) = v24;
    v28 = v44;
    *(a2 + 32) = v43;
    *(a2 + 48) = v28;
    *(a2 + 64) = v45;
    *(a2 + 80) = v46;
    v29 = v42;
    *a2 = v41;
    *(a2 + 16) = v29;
    sub_252ADFB08(&v41, &v47);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v47 = v40;
    v48 = v34;
    v49 = v39;
    v50 = v33;
    v51 = v25;
    v52 = v15;
    v53 = v26;
    v54 = v18;
    v55 = v27;
    v56 = v21;
    v57 = v35;
    v58 = v32;
    return sub_252ADFB40(&v47);
  }
}

HomeAutomationInternal::SiriHintUseCase_optional __swiftcall SiriHintUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriHintUseCase.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x746867694C6D6964;
    v7 = 0xD000000000000013;
    if (v1 != 2)
    {
      v7 = 0xD000000000000015;
    }

    if (*v0)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000011;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (v1 == 4)
    {
      v4 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252ADFD48()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3AB0();
  return sub_252E37F14();
}

uint64_t sub_252ADFD98()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3AB0();
  return sub_252E37F14();
}

unint64_t sub_252ADFDE8@<X0>(unint64_t *a1@<X8>)
{
  result = SiriHintUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252ADFE20()
{
  result = sub_252CC6CF0(&unk_2864A9680);
  qword_27F5757E8 = result;
  return result;
}

unint64_t sub_252ADFE48()
{
  result = sub_252CC6CC8(&unk_2864A9610);
  qword_27F5757F0 = result;
  return result;
}

unint64_t sub_252ADFE70()
{
  result = sub_252CC6D18(&unk_2864A9760);
  qword_27F5757F8 = result;
  return result;
}

unint64_t sub_252ADFE9C()
{
  result = qword_27F5430D0;
  if (!qword_27F5430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430D0);
  }

  return result;
}

unint64_t sub_252ADFEF4()
{
  result = qword_27F5430D8;
  if (!qword_27F5430D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5430E0, &qword_252E4A0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430D8);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_252ADFF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252ADFFD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_252AE0078()
{
  result = qword_27F5430E8;
  if (!qword_27F5430E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430E8);
  }

  return result;
}

unint64_t sub_252AE00D0()
{
  result = qword_27F5430F0;
  if (!qword_27F5430F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430F0);
  }

  return result;
}

unint64_t sub_252AE0128()
{
  result = qword_27F5430F8;
  if (!qword_27F5430F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5430F8);
  }

  return result;
}

void sub_252AE017C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x2530AED20](&v19, 8);
      v5 = (v19 * v1) >> 64;
      if (v1 > v19 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v19 * v1)
        {
          do
          {
            v19 = 0;
            MEMORY[0x2530AED20](&v19, 8);
          }

          while (v6 > v19 * v1);
          v5 = (v19 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_252935460(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v13 = v8 + 8 * v3;
        v14 = *(v13 + 32);
        *(v13 + 32) = v11;

        sub_252E37AA4();
        v15 = *v0;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v15;
        if ((v16 & 1) == 0)
        {
          v15 = sub_252935460(v15);
          *v0 = v15;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_24;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v10;

        sub_252E37AA4();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_252AE0320(void *a1)
{
  v79 = sub_252E32E84();
  v2 = *(v79 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    v9 = sub_252DD5A58(v8);
    v67[0] = 0;
  }

  else
  {
    v67[0] = 0;
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_252C758E0(v9);

  v11 = sub_252DD6238(v10);

  if (!v11)
  {
    return 0;
  }

  v67[1] = v11;
  v12 = sub_2529E789C();
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v15 = 0;
    v71 = v13 & 0xFFFFFFFFFFFFFF8;
    v72 = v13 & 0xC000000000000001;
    v70 = v13 + 32;
    v76 = (v2 + 8);
    v69 = v13;
    v68 = i;
    while (1)
    {
      if (v72)
      {
        v17 = MEMORY[0x2530ADF00](v15, v13);
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v15 >= *(v71 + 16))
        {
          goto LABEL_78;
        }

        v16 = *(v70 + 8 * v15);

        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          goto LABEL_77;
        }
      }

      v73 = v19;
      v74 = v17;
      v20 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      v21 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v22 = sub_252E373A4();

      v83 = v6;
      v77 = v22;
      v80 = v21;
      if ((v22 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_252E37874();
        sub_252E373E4();
        v22 = v85;
        v2 = v86;
        v13 = v87;
        v23 = v88;
        v24 = v89;
      }

      else
      {
        v25 = -1 << *(v22 + 32);
        v2 = v22 + 56;
        v13 = ~v25;
        v26 = -v25;
        v27 = v26 < 64 ? ~(-1 << v26) : -1;
        v24 = v27 & *(v22 + 56);

        v23 = 0;
      }

      v75 = v13;
      v28 = (v13 + 64) >> 6;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v13 = v22 & 0x7FFFFFFFFFFFFFFFLL;
        v33 = sub_252E37904();
        if (!v33)
        {
          break;
        }

        v81 = v33;
        swift_dynamicCast();
        v13 = v82;
        v31 = v23;
        v32 = v24;
        if (!v82)
        {
          break;
        }

LABEL_27:
        type metadata accessor for Action();
        v34 = swift_allocObject();
        *(v34 + 16) = v13;
        v35 = v13;
        v36 = [v35 uniqueIdentifier];
        v37 = v78;
        sub_252E32E64();

        v38 = sub_252E32E24();
        v40 = v39;
        (*v76)(v37, v79);
        *(v34 + 24) = v38;
        *(v34 + 32) = v40;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v41 = 1;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v41 = 2;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v41 = 3;
            }

            else
            {
              objc_opt_self();
              v41 = 4 * (swift_dynamicCastObjCClass() != 0);
            }
          }
        }

        *(v34 + 40) = v41;
        v13 = &v83;
        MEMORY[0x2530AD700]();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v6 = v83;
        v23 = v31;
        v24 = v32;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_38:
      sub_25291AE30();

      if (v6 >> 62)
      {
        v2 = sub_252E378C4();
        if (!v2)
        {
          goto LABEL_8;
        }

LABEL_40:
        v43 = 0;
        v44 = v6 & 0xC000000000000001;
        v45 = v6 & 0xFFFFFFFFFFFFFF8;
        v77 = v2;
        while (2)
        {
          if (v44)
          {
            v46 = MEMORY[0x2530ADF00](v43, v6);
            v47 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v43 >= *(v45 + 16))
            {
              goto LABEL_76;
            }

            v46 = *(v6 + 8 * v43 + 32);

            v47 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_75;
            }
          }

          if (*(v46 + 40) == 1)
          {
            v13 = *(v46 + 16);
            objc_opt_self();
            v48 = swift_dynamicCastObjCClass();
            if (v48)
            {
              v49 = v48;
              v50 = v6;
              v51 = v45;
              v52 = v44;
              v80 = v13;
              v53 = [v49 characteristic];
              v54 = [v53 characteristicType];

              v55 = sub_252E36F34();
              v57 = v56;

              if (qword_27F53F8D0 != -1)
              {
                swift_once();
              }

              v13 = off_27F546248;
              if (*(off_27F546248 + 2))
              {
                v58 = sub_252A44A10(v55, v57);
                if (v59)
                {
                  v44 = v52;
                  goto LABEL_58;
                }
              }

              if (qword_27F53F8E0 != -1)
              {
                swift_once();
              }

              v13 = off_27F546258;
              v44 = v52;
              if (*(off_27F546258 + 2))
              {
                v58 = sub_252A44A10(v55, v57);
                if (v60)
                {
LABEL_58:
                  v45 = v51;
                  v6 = v50;
LABEL_63:
                  v2 = v77;
                  v13 = *(*(v13 + 56) + 8 * v58);

                  if (v13 == 2)
                  {

                    v62 = 1;
                    goto LABEL_81;
                  }

LABEL_43:
                  ++v43;
                  if (v47 == v2)
                  {
                    goto LABEL_8;
                  }

                  continue;
                }
              }

              v45 = v51;
              if (qword_27F53F8C8 != -1)
              {
                swift_once();
              }

              v13 = off_27F546240;
              v6 = v50;
              if (*(off_27F546240 + 2))
              {
                v58 = sub_252A44A10(v55, v57);
                if (v61)
                {
                  goto LABEL_63;
                }
              }

              v2 = v77;
            }
          }

          break;
        }

        goto LABEL_43;
      }

      v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_8:

      v15 = v73;
      v6 = MEMORY[0x277D84F90];
      v13 = v69;
      if (v73 == v68)
      {
        goto LABEL_80;
      }
    }

LABEL_19:
    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (v24)
    {
LABEL_23:
      v32 = (v30 - 1) & v30;
      v13 = *(*(v22 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
      if (!v13)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_38;
      }

      v30 = *(v2 + 8 * v31);
      ++v29;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

LABEL_80:

  v62 = 0;
LABEL_81:
  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v63 = sub_252E36AD4();
  __swift_project_value_buffer(v63, qword_2814B0AC8);
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_252E379F4();

  v83 = 0xD000000000000025;
  v84 = 0x8000000252E79DF0;
  if (v62)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v62)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v64, v65);

  sub_252CC3D90(v83, v84, 0xD0000000000000A1, 0x8000000252E79970);

  return v62;
}

unint64_t sub_252AE0C54(void *a1)
{
  result = sub_252C2C640();
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_252E378C4();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_26:
    v4 = MEMORY[0x2530ADF00](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(result + 32);
  }

  v5 = v4;

LABEL_9:
  v8 = [a1 filters];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = v8;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_12:
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2530ADF00](v12, v10);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_21;
    }

LABEL_16:
    v1 = v13;
    v13 = [v1 homeEntityName];
    if (v13)
    {
      goto LABEL_22;
    }

    ++v12;
    if (v14 == v11)
    {
      goto LABEL_28;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v10 + 8 * v12 + 32);
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v15 = v13;

  if (v5)
  {
    v16 = [v5 homeEntityName];
    if (v16)
    {
      v17 = v16;
      v18 = sub_252E36F34();
      v20 = v19;

      goto LABEL_45;
    }
  }

LABEL_29:
  sub_252C51E70();
  if (v21)
  {

    v22 = sub_252C51E70();
    goto LABEL_35;
  }

  sub_252C51FFC();
  if (v24)
  {

    v22 = sub_252C51FFC();
    goto LABEL_35;
  }

  sub_252C4BEAC();
  if (v25)
  {

    v22 = sub_252C4BEAC();
LABEL_35:
    v26 = v22;
    v27 = v23;
    if (v23)
    {
      if (v5)
      {
        v28 = [v5 home];
        if (v28)
        {
          v29 = v28;
          v30 = sub_252E36F34();
          v32 = v31;

          if (v26 == v30 && v27 == v32)
          {

            goto LABEL_43;
          }

          v33 = sub_252E37DB4();

          if (v33)
          {
LABEL_43:

            goto LABEL_44;
          }
        }
      }

      v18 = 0;
      v20 = 0;
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v26 = 0;
    }
  }

  else
  {
LABEL_44:
    v18 = 0;
    v20 = 0;
LABEL_45:
    v26 = 0;
    v27 = 0;
  }

  v34 = sub_252C2C640();
  if (v34 >> 62)
  {
    v35 = sub_252E378C4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543110, &qword_252E4A2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 0x746867694C6D6964;
  v37 = inited + 32;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = 1;
  *(inited + 56) = 0;
  *(inited + 64) = 2;
  *(inited + 72) = 0;
  *(inited + 80) = v26;
  *(inited + 88) = v27;
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 128) = 1;
  *(inited + 129) = v35 > 1;
  v38 = sub_252CC6B08(inited);
  swift_setDeallocating();
  sub_25293847C(v37, &qword_27F5452A0, &qword_252E5A620);

  return v38;
}

uint64_t sub_252AE1098(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_252AE10B8, 0, 0);
}

uint64_t sub_252AE10B8()
{
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v2 != 2 && (v2 & 1) == 0 || (v3 = [*(v0 + 24) filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v0 + 24);
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = &off_279711000;
  v8 = [v5 userTask];
  v9 = HomeStore.services(matching:supporting:)(v6, v8);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    goto LABEL_7;
  }

  v45 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    v13 = sub_252E378C4();
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_32:
    v25 = MEMORY[0x277D84F90];
LABEL_33:
    *(v0 + 40) = v25;
    sub_252929F10(v9, 0);
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      v43 = sub_252E378C4();
      *(v0 + 48) = v43;
      if (!v43)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = *(v25 + 16);
      *(v0 + 48) = v26;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    v27 = [*(v0 + 24) v7[214]];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 taskType];

      if (v29 == 1)
      {
        v30 = [*(v0 + 24) v7[214]];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 value];

          if (v32)
          {
            v33 = [v32 BOOLValue];

            if (v33)
            {
              v34 = *(sub_252B680FC() + 144);

              if (v34 == 1 && (sub_252AE0320(*(v0 + 24)) & 1) == 0)
              {
                v39 = type metadata accessor for TimeUtilities();
                v40 = *(v39 + 48);
                v41 = *(v39 + 52);
                swift_allocObject();
                v42 = swift_task_alloc();
                *(v0 + 56) = v42;
                *v42 = v0;
                v42[1] = sub_252AE162C;

                return sub_2529E96EC();
              }
            }
          }
        }
      }
    }

LABEL_43:
    v35 = *(v0 + 40);

    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_2814B0AC8);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E79D80, 0xD0000000000000A1, 0x8000000252E79970);
    goto LABEL_46;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_11:
  v44 = v0;
  v14 = 0;
  while ((v9 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](v14, v9);
    v0 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_28;
    }

LABEL_18:
    v16 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v17 = sub_252E36F34();
    v19 = v18;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v20 = off_27F546230;
    if (*(off_27F546230 + 2) && (v21 = sub_252A44A10(v17, v19), (v22 & 1) != 0))
    {
      v23 = *(v20[7] + 8 * v21);

      if (v23 == 1)
      {
        sub_252E37A94();
        v24 = *(v45 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_14:
    ++v14;
    if (v0 == v13)
    {
      v0 = v44;
      v25 = v45;
      v7 = &off_279711000;
      goto LABEL_33;
    }
  }

  if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v15 = *(v9 + 8 * v14 + 32);

  v0 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_8:
  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_2814B0AC8);
  sub_252CC4050(0xD000000000000023, 0x8000000252E79D20, 0xD0000000000000A1, 0x8000000252E79970, 0xD000000000000024, 0x8000000252E79D50, 113);
LABEL_46:
  v37 = *(v0 + 8);

  return v37(0);
}

uint64_t sub_252AE162C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_252AE172C, 0, 0);
}

uint64_t sub_252AE172C()
{
  v1 = v0[8];
  v2 = sub_2529E9E68();

  v3 = v0[5];
  if ((v2 & 1) == 0)
  {
LABEL_15:

    if (qword_2814B0AC0 == -1)
    {
LABEL_16:
      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_2814B0AC8);
      v13 = "ts(intent:response:)";
      v14 = 0xD00000000000001ALL;
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  v4 = 0;
  while (2)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v5 = *(v3 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    MEMORY[0x2530ADF00](v4, v0[5]);
    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_6:
    v7 = sub_252CD9C58();
    v8 = *(v7 + 16);
    v9 = 32;
    while (v8)
    {
      v10 = *(v7 + v9);
      v9 += 8;
      --v8;
      if (v10 == 2)
      {
        v17 = v0[4];
        v16 = v0[5];
        v18 = v0[3];

        v15 = sub_252AE0C54(v18);
        if (qword_2814B0AC0 != -1)
        {
          swift_once();
        }

        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_2814B0AC8);
        sub_252E379F4();

        v0[2] = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543108, &qword_252E4A2E8);
        v20 = sub_252E36F94();
        MEMORY[0x2530AD570](v20);

        sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E79DA0, 0xD0000000000000A1, 0x8000000252E79970);

        goto LABEL_21;
      }
    }

    v11 = v0[6];

    if (v4 != v11)
    {
      continue;
    }

    break;
  }

  v23 = v0[5];

  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_2814B0AC8);
  v13 = "Providing dim the lights hint ";
  v14 = 0xD000000000000028;
LABEL_17:
  sub_252CC3D90(v14, v13 | 0x8000000000000000, 0xD0000000000000A1, 0x8000000252E79970);
  v15 = 0;
LABEL_21:
  v21 = v0[1];

  return v21(v15);
}

char *sub_252AE1A84(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0AC0 != -1)
  {
    goto LABEL_232;
  }

  while (1)
  {
    v11 = __swift_project_value_buffer(v6, qword_2814B0AC8);
    v216 = v7;
    v12 = *(v7 + 16);
    v215 = v10;
    v12(v10, v11, v6);
    v230 = 0;
    v231 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E79C40);
    v204 = a1 >> 62;
    if (a1 >> 62)
    {
      v13 = sub_252E378C4();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    v212 = a1;
    v205 = a3;
    if (v13)
    {
      v219 = MEMORY[0x277D84F90];
      result = sub_2529AA3A0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v214 = v6;
      v16 = a2;
      v17 = 0;
      v14 = v219;
      v18 = a1 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x2530ADF00](v17, v212);
          v27 = v19;
        }

        else
        {
          v27 = *(v212 + 8 * v17 + 32);
        }

        v28 = (*(*v27 + 144))(v19, v20, v21, v22, v23, v24, v25, v26);
        v30 = v29;

        v219 = v14;
        v32 = *(v14 + 16);
        v31 = *(v14 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2529AA3A0((v31 > 1), v32 + 1, 1);
          v14 = v219;
        }

        ++v17;
        *(v14 + 16) = v32 + 1;
        v33 = v14 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
      }

      while (v13 != v17);
      a3 = v205;
      a2 = v16;
      v6 = v214;
    }

    v34 = MEMORY[0x2530AD730](v14, MEMORY[0x277D837D0]);
    v36 = v35;

    MEMORY[0x2530AD570](v34, v36);

    v202 = 0xD000000000000013;
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E79C80, v37, v38, v39, v40, v41, v42);
    v43 = *(a2 + 16);
    v44 = MEMORY[0x277D84F90];
    v209 = v43;
    if (v43)
    {
      v219 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v43, 0);
      v44 = v219;
      v45 = (a2 + 32);
      do
      {
        v46 = *v45++;
        v47 = HomeDeviceType.description.getter(v46);
        v219 = v44;
        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = v47;
          v53 = v6;
          v54 = a2;
          v55 = v48;
          sub_2529AA3A0((v49 > 1), v50 + 1, 1);
          v48 = v55;
          a2 = v54;
          v6 = v53;
          v47 = v52;
          v44 = v219;
        }

        *(v44 + 16) = v50 + 1;
        v51 = v44 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        --v43;
      }

      while (v43);
      a3 = v205;
    }

    v56 = MEMORY[0x2530AD730](v44, MEMORY[0x277D837D0]);
    v58 = v57;

    MEMORY[0x2530AD570](v56, v58);

    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E79CA0);
    v59 = *(a3 + 16);
    v60 = MEMORY[0x277D84F90];
    v208 = v59;
    if (v59)
    {
      v219 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v59, 0);
      v60 = v219;
      v61 = (a3 + 32);
      v62 = v59;
      do
      {
        v63 = *v61++;
        v64 = HomeAttributeType.description.getter(v63);
        v219 = v60;
        v67 = *(v60 + 16);
        v66 = *(v60 + 24);
        if (v67 >= v66 >> 1)
        {
          v69 = v64;
          v70 = v6;
          v71 = a2;
          v72 = v65;
          sub_2529AA3A0((v66 > 1), v67 + 1, 1);
          v65 = v72;
          a2 = v71;
          v6 = v70;
          v64 = v69;
          v60 = v219;
        }

        *(v60 + 16) = v67 + 1;
        v68 = v60 + 16 * v67;
        *(v68 + 32) = v64;
        *(v68 + 40) = v65;
        --v62;
      }

      while (v62);
    }

    v10 = MEMORY[0x2530AD730](v60, MEMORY[0x277D837D0]);
    v74 = v73;

    MEMORY[0x2530AD570](v10, v74);

    a1 = v231;
    v7 = v215;
    sub_252CC3D90(v230, v231, 0xD0000000000000A1, 0x8000000252E79970);

    (*(v216 + 8))(v7, v6);
    v75 = MEMORY[0x277D84F90];
    v206 = sub_252CC6B08(MEMORY[0x277D84F90]);
    a3 = v212;
    if (!v209)
    {
      break;
    }

    v76 = v212 & 0xFFFFFFFFFFFFFF8;
    if (v204)
    {
      v215 = sub_252E378C4();
    }

    else
    {
      v215 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = 0;
    v207 = a2 + 32;
    v214 = a3 & 0xC000000000000001;
    v213 = a3 + 32;
    v201 = 0x8000000252E67DC0;
    v200 = 0x8000000252E67DA0;
    v199 = 0x8000000252E67D80;
    v198 = 0x8000000252E67D60;
    v197 = 0x8000000252E67D40;
    v196 = 0x8000000252E67D20;
    v195 = 0x8000000252E67D00;
    v194 = 0x8000000252E67CE0;
    v78 = v209;
    v211 = v76;
    while (1)
    {
      if (v77 == v78)
      {
        goto LABEL_228;
      }

      v210 = v77;
      v6 = *(v207 + 8 * v77);
      v218 = v75;
      v216 = v6;
      if (v215)
      {
        break;
      }

      v10 = v75;
LABEL_90:
      v135 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
      if (v135)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_31;
        }
      }

      else if (!*(v10 + 16))
      {
        goto LABEL_31;
      }

      v219 = sub_252ACB5B4(v136);
      v7 = &v219;
      sub_252AE017C();
      a1 = v219;
      if (v219 < 0 || (v219 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
LABEL_98:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x2530ADF00](0, a1);
          }

          else
          {
            if (!*(a1 + 16))
            {
              goto LABEL_230;
            }

            v137 = *(a1 + 32);
          }

          if (qword_27F53F338 != -1)
          {
            swift_once();
          }

          v7 = qword_27F5757F0;
          if (*(qword_27F5757F0 + 16) && (v138 = sub_252A488EC(v6), (v139 & 1) != 0))
          {
            a2 = *(*(v7 + 56) + v138);
            if (qword_27F53F330 != -1)
            {
              swift_once();
            }

            v140 = qword_27F5757E8;
            if (*(qword_27F5757E8 + 16) && (v141 = sub_252A488EC(v6), (v142 & 1) != 0))
            {
              v143 = 0;
              v203 = *(*(v140 + 56) + 8 * v141);
            }

            else
            {
              v203 = 0;
              v143 = 1;
            }

            v144 = [*(v137 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
            if (v144)
            {
              v145 = type metadata accessor for Room();
              v146 = *(v145 + 48);
              v147 = *(v145 + 52);
              swift_allocObject();
              v148 = sub_2529A1E08(v144);
              v149 = *(v148 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v144 = *(v148 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            }

            else
            {
              v149 = 0;
            }

            v151 = *(v137 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v150 = *(v137 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            if (v135)
            {
              v152 = sub_252E378C4();
            }

            else
            {
              v152 = *(v10 + 16);
            }

            LOBYTE(v219) = 0;
            LOBYTE(v218) = v143;
            v230 = v216;
            LOBYTE(v231) = 0;
            v232 = v203;
            v233 = v143;
            v234 = 0;
            v235 = 0;
            v236 = v149;
            v237[0] = v144;
            v237[1] = v151;
            v238 = v150;
            v239 = v152 == 1;
            v240 = 0;
            if (a2 > 3)
            {
              v75 = MEMORY[0x277D84F90];
              v76 = v211;
              if (a2 <= 5)
              {
                if (a2 == 4)
                {
                  a1 = 0xD000000000000019;
                  v153 = v229;
                }

                else
                {
                  a1 = 0xD000000000000012;
                  v153 = &v230;
                }
              }

              else if (a2 == 6)
              {
                a1 = 0xD000000000000015;
                v153 = &v231;
              }

              else if (a2 == 7)
              {
                a1 = 0xD000000000000015;
                v153 = &v232;
              }

              else
              {
                a1 = 0xD000000000000011;
                v153 = &v233;
              }

              goto LABEL_134;
            }

            v75 = MEMORY[0x277D84F90];
            v76 = v211;
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                a1 = v202;
                v153 = &v227;
              }

              else
              {
                a1 = 0xD000000000000015;
                v153 = &v228;
              }

LABEL_134:
              v6 = *(v153 - 32);
            }

            else
            {
              a1 = 0x746867694C6D6964;
              v6 = 0xE900000000000073;
              if (a2)
              {
                a1 = 0xD000000000000014;
                v153 = &v226;
                goto LABEL_134;
              }
            }

            v154 = v206;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v219 = v154;
            v7 = &v219;
            sub_2529FAF6C(&v230, a1, v6, isUniquelyReferenced_nonNull_native);

            v206 = v219;
          }

          else
          {
          }

          a3 = v212;
          goto LABEL_32;
        }
      }

      else if (*(v219 + 16))
      {
        goto LABEL_98;
      }

LABEL_31:

LABEL_32:
      v77 = v210 + 1;
      v78 = v209;
      if (v210 + 1 == v209)
      {
        goto LABEL_142;
      }
    }

    a3 = 0;
LABEL_39:
    if (v214)
    {
      v80 = MEMORY[0x2530ADF00](a3, v212);
      v79 = v80;
      v88 = __OFADD__(a3++, 1);
      if (v88)
      {
        goto LABEL_224;
      }
    }

    else
    {
      if (a3 >= *(v76 + 16))
      {
        goto LABEL_225;
      }

      v79 = *(v213 + 8 * a3);

      v88 = __OFADD__(a3++, 1);
      if (v88)
      {
        goto LABEL_224;
      }
    }

    v89 = (*v79 + 256);
    a1 = *v89;
    a2 = v89;
    v90 = (*v89)(v80, v81, v82, v83, v84, v85, v86, v87);
    if (v90 == v6)
    {
      goto LABEL_37;
    }

    v98 = (*(*v79 + 272))(v90, v91, v92, v93, v94, v95, v96, v97);
    v10 = v98;
    if (*(v98 + 16))
    {
      v99 = *(v98 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v6);
      v100 = sub_252E37F14();
      v101 = -1 << *(v10 + 32);
      v102 = v100 & ~v101;
      if ((*(v10 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
      {
        v103 = ~v101;
        while (*(*(v10 + 48) + 8 * v102) != v6)
        {
          v102 = (v102 + 1) & v103;
          if (((*(v10 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

LABEL_36:

        goto LABEL_37;
      }
    }

LABEL_48:

    v7 = v79;
    v105 = (a1)(v104);
    if (v105 == 41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v10 = sub_252E379A4();
      a2 = v10 + 56;
      a1 = qword_2864A97F8;
      v116 = *(v10 + 40);
      sub_252E37EC4();
      v7 = &v219;
      MEMORY[0x2530AE390](a1);
      v117 = sub_252E37F14();
      v118 = ~(-1 << *(v10 + 32));
      v119 = v117 & v118;
      v120 = (v117 & v118) >> 6;
      v121 = *(v10 + 56 + 8 * v120);
      v122 = 1 << (v117 & v118);
      v123 = *(v10 + 48);
      if ((v122 & v121) != 0)
      {
        while (*(v123 + 8 * v119) != a1)
        {
          v119 = (v119 + 1) & v118;
          v120 = v119 >> 6;
          v121 = *(a2 + 8 * (v119 >> 6));
          v122 = 1 << v119;
          if (((1 << v119) & v121) == 0)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_61;
      }

LABEL_59:
      *(a2 + 8 * v120) = v122 | v121;
      *(v123 + 8 * v119) = a1;
      v124 = *(v10 + 16);
      v88 = __OFADD__(v124, 1);
      v115 = v124 + 1;
      if (v88)
      {
        goto LABEL_227;
      }

      goto LABEL_60;
    }

    v10 = MEMORY[0x277D84FA0];
    if (v105 == 38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v10 = sub_252E379A4();
      a2 = v10 + 56;
      a1 = qword_2864A97D0;
      v106 = *(v10 + 40);
      sub_252E37EC4();
      v7 = &v219;
      MEMORY[0x2530AE390](a1);
      v107 = sub_252E37F14();
      v108 = ~(-1 << *(v10 + 32));
      v109 = v107 & v108;
      v110 = (v107 & v108) >> 6;
      v111 = *(v10 + 56 + 8 * v110);
      v112 = 1 << (v107 & v108);
      v113 = *(v10 + 48);
      if ((v112 & v111) != 0)
      {
        while (*(v113 + 8 * v109) != a1)
        {
          v109 = (v109 + 1) & v108;
          v110 = v109 >> 6;
          v111 = *(a2 + 8 * (v109 >> 6));
          v112 = 1 << v109;
          if (((1 << v109) & v111) == 0)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_61;
      }

LABEL_53:
      *(a2 + 8 * v110) = v112 | v111;
      *(v113 + 8 * v109) = a1;
      v114 = *(v10 + 16);
      v88 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v88)
      {
        goto LABEL_226;
      }

LABEL_60:
      *(v10 + 16) = v115;
    }

LABEL_61:
    if (*(v10 + 16))
    {
      v125 = *(v10 + 40);
      sub_252E37EC4();
      v7 = &v219;
      MEMORY[0x2530AE390](v6);
      v126 = sub_252E37F14();
      v127 = -1 << *(v10 + 32);
      v128 = v126 & ~v127;
      if ((*(v10 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
      {
        v129 = ~v127;
        while (*(*(v10 + 48) + 8 * v128) != v6)
        {
          v128 = (v128 + 1) & v129;
          if (((*(v10 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_66:

    if (v6 != 42)
    {
      goto LABEL_81;
    }

    a1 = [*(v79 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_25293F638(0, &qword_27F540170, 0x277CD1760);
    v7 = sub_252E37264();

    if (v7 >> 62)
    {
      v10 = sub_252E378C4();
      if (!v10)
      {
LABEL_87:

        v75 = MEMORY[0x277D84F90];
        v76 = v211;
        goto LABEL_38;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_87;
      }
    }

    a2 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v130 = MEMORY[0x2530ADF00](a2, v7);
      }

      else
      {
        if (a2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_221;
        }

        v130 = *(v7 + 8 * a2 + 32);
      }

      a1 = v130;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      objc_opt_self();
      v131 = swift_dynamicCastObjCClass();
      if (v131)
      {
        v133 = v131;

        v134 = [v133 userSettings];
        if (v134)
        {
          v7 = v134;
          v10 = [v134 supportedFeatures];

          v75 = MEMORY[0x277D84F90];
          v76 = v211;
          v6 = v216;
          if ((v10 & 2) == 0)
          {
LABEL_81:

            goto LABEL_38;
          }

LABEL_37:
          v7 = &v218;
          sub_252E37A94();
          a1 = *(v218 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_38;
        }

        v75 = MEMORY[0x277D84F90];
        v76 = v211;
        v6 = v216;
LABEL_38:
        if (a3 == v215)
        {
          v10 = v218;
          a3 = v212;
          goto LABEL_90;
        }

        goto LABEL_39;
      }

      ++a2;
      v132 = v6 == v10;
      v6 = v216;
      if (v132)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    swift_once();
  }

LABEL_142:
  if (v208)
  {
    v156 = a3 & 0xFFFFFFFFFFFFFF8;
    if (v204)
    {
      v157 = sub_252E378C4();
    }

    else
    {
      v157 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v215 = v205 + 32;
    a2 = a3 & 0xC000000000000001;
    v158 = a3 + 32;
    v207 = 0x8000000252E67DC0;
    v205 = 0x8000000252E67DA0;
    v204 = 0x8000000252E67D80;
    v203 = 0x8000000252E67D60;
    v201 = 0x8000000252E67D40;
    v200 = 0x8000000252E67D20;
    v199 = 0x8000000252E67D00;
    v198 = 0x8000000252E67CE0;
    v159 = v208;
    do
    {
      if (v6 == v159)
      {
        goto LABEL_229;
      }

      v216 = v6;
      a3 = *(v215 + 8 * v6);
      v161 = MEMORY[0x277D84F90];
      v218 = MEMORY[0x277D84F90];
      if (v157)
      {
        v10 = 0;
        do
        {
          if (a2)
          {
            v162 = MEMORY[0x2530ADF00](v10, v212);
            v88 = __OFADD__(v10++, 1);
            if (v88)
            {
              goto LABEL_222;
            }
          }

          else
          {
            if (v10 >= *(v156 + 16))
            {
              goto LABEL_223;
            }

            v162 = *(v158 + 8 * v10);

            v88 = __OFADD__(v10++, 1);
            if (v88)
            {
              goto LABEL_222;
            }
          }

          v163 = (*v162 + 336);
          v164 = *v163;
          v6 = v163;
          v7 = v162;
          v165 = (*v163)();
          v166 = *(v165 + 16);
          v167 = 32;
          if (a3 == 5)
          {
            while (v166)
            {
              v168 = *(v165 + v167);
              v167 += 8;
              --v166;
              if (v168 == 3)
              {

                v7 = v162;
                v165 = (v164)(v169);
                v170 = *(v165 + 16);
                v171 = 32;
                while (v170)
                {
                  v172 = *(v165 + v171);
                  v171 += 8;
                  --v170;
                  if (v172 == 4)
                  {

                    a1 = (v164)(v173);
                    v7 = sub_2529A6C5C(2, a1);

                    if (v7)
                    {
                      goto LABEL_169;
                    }

                    goto LABEL_154;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v166)
            {
              v174 = *(v165 + v167);
              v167 += 8;
              --v166;
              if (v174 == a3)
              {

LABEL_169:
                v7 = &v218;
                sub_252E37A94();
                a1 = *(v218 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_154;
              }
            }
          }

          a1 = v165;

LABEL_154:
          ;
        }

        while (v10 != v157);
        v161 = v218;
      }

      if (v161 < 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v161 >> 62) & 1;
      }

      if (v10 == 1)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_148;
        }
      }

      else if (!*(v161 + 16))
      {
        goto LABEL_148;
      }

      v218 = sub_252ACB5B4(v175);
      v7 = &v218;
      sub_252AE017C();
      a1 = v218;
      if (v218 < 0 || (v218 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
LABEL_182:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v176 = MEMORY[0x2530ADF00](0, a1);
          }

          else
          {
            if (!*(a1 + 16))
            {
              goto LABEL_231;
            }

            v176 = *(a1 + 32);
          }

          if (qword_27F53F340 != -1)
          {
            swift_once();
          }

          v7 = qword_27F5757F8;
          if (*(qword_27F5757F8 + 16))
          {
            v177 = sub_252A488EC(a3);
            if (v178)
            {
              LODWORD(v213) = *(*(v7 + 56) + v177);
              v211 = (*(*v176 + 256))();
              v179 = [*(v176 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
              if (v179)
              {
                v180 = v179;
                v181 = type metadata accessor for Room();
                v182 = *(v181 + 48);
                v183 = *(v181 + 52);
                swift_allocObject();
                v184 = sub_2529A1E08(v180);
                v186 = *(v184 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                v185 = *(v184 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                v210 = v186;
                v209 = v185;
              }

              else
              {
                v210 = 0;
                v209 = 0;
              }

              v214 = v176;
              v187 = v176 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
              v189 = *(v176 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v188 = *(v187 + 8);
              if (v10)
              {
                v190 = sub_252E378C4();
              }

              else
              {
                v190 = *(v161 + 16);
              }

              LOBYTE(v218) = 0;
              v217 = 0;
              v219 = v211;
              v220 = 0;
              v221 = a3;
              v222 = 0;
              v223 = 0;
              v224 = 0;
              v225 = v210;
              v226 = v209;
              v227 = v189;
              v228 = v188;
              v229[0] = v190 == 1;
              v229[1] = 0;
              v160 = v216;
              if (v213 > 3)
              {
                if (v213 <= 5)
                {
                  if (v213 == 4)
                  {
                    a1 = 0xD000000000000019;
                    v191 = &v233;
                  }

                  else
                  {
                    a1 = 0xD000000000000012;
                    v191 = &v235;
                  }
                }

                else if (v213 == 6)
                {
                  a1 = 0xD000000000000015;
                  v191 = &v236;
                }

                else if (v213 == 7)
                {
                  a1 = 0xD000000000000015;
                  v191 = v237;
                }

                else
                {
                  a1 = 0xD000000000000011;
                  v191 = &v238;
                }

                goto LABEL_212;
              }

              if (v213 > 1)
              {
                if (v213 == 2)
                {
                  a1 = v202;
                  v191 = &v231;
                }

                else
                {
                  a1 = 0xD000000000000015;
                  v191 = &v232;
                }

LABEL_212:
                a3 = *(v191 - 32);
              }

              else
              {
                a1 = 0x746867694C6D6964;
                a3 = 0xE900000000000073;
                if (v213)
                {
                  a1 = 0xD000000000000014;
                  v191 = &v230;
                  goto LABEL_212;
                }
              }

              v192 = v206;
              v193 = swift_isUniquelyReferenced_nonNull_native();
              v218 = v192;
              v7 = &v218;
              sub_2529FAF6C(&v219, a1, a3, v193);

              v206 = v218;
              goto LABEL_149;
            }
          }
        }
      }

      else if (*(v218 + 16))
      {
        goto LABEL_182;
      }

LABEL_148:

      v160 = v216;
LABEL_149:
      v6 = v160 + 1;
      v159 = v208;
    }

    while (v6 != v208);
  }

  return v206;
}

char *sub_252AE327C(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [a1 filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_8;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  v8 = HomeStore.services(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    sub_252929F10(v8, 1);
    goto LABEL_7;
  }

  if (v8 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = a1;
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](v15, v8);
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v15 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v17 = *(v8 + 8 * v15 + 32);

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          swift_once();
LABEL_8:
          v11 = sub_252E36AD4();
          __swift_project_value_buffer(v11, qword_2814B0AC8);
          v12 = 0xD00000000000003ALL;
          v13 = 0x8000000252E79BC0;
          goto LABEL_95;
        }
      }

      v19 = v14;
      v20 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v21 = sub_252E36F34();
      v23 = v22;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v24 = off_27F546230;
      if (*(off_27F546230 + 2) && (v25 = sub_252A44A10(v21, v23), (v26 & 1) != 0))
      {
        v27 = *(v24[7] + 8 * v25);
      }

      else
      {
        v27 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2529F7B8C(0, *(v16 + 2) + 1, 1, v16);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_2529F7B8C((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      *&v16[8 * v29 + 32] = v27;
      ++v15;
      v14 = v19;
      if (v18 == v19)
      {
        goto LABEL_32;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_32:
  sub_252929F10(v8, 0);
  v30 = 0;
  v31 = (v16 + 32);
  v32 = qword_2864A9820;
  v33 = *(v16 + 2);
  v34 = MEMORY[0x277D84F90];
  while (v33 != v30)
  {
    v35 = &v16[8 * v30++];
    if (*(v35 + 4) == qword_2864A9820)
    {
      goto LABEL_41;
    }
  }

  v74 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2529AA420(0, *(v34 + 16) + 1, 1);
  }

  v37 = *(v34 + 16);
  v36 = *(v34 + 24);
  if (v37 >= v36 >> 1)
  {
    sub_2529AA420((v36 > 1), v37 + 1, 1);
    v34 = v74;
  }

  *(v34 + 16) = v37 + 1;
  *(v34 + 8 * v37 + 32) = v32;
  v33 = *(v16 + 2);
LABEL_41:
  v38 = 0;
  v39 = qword_2864A9828;
  while (v33 != v38)
  {
    v40 = &v16[8 * v38++];
    if (*(v40 + 4) == qword_2864A9828)
    {
      goto LABEL_50;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2529AA420(0, *(v34 + 16) + 1, 1);
  }

  v42 = *(v34 + 16);
  v41 = *(v34 + 24);
  if (v42 >= v41 >> 1)
  {
    sub_2529AA420((v41 > 1), v42 + 1, 1);
  }

  *(v34 + 16) = v42 + 1;
  *(v34 + 8 * v42 + 32) = v39;
  v33 = *(v16 + 2);
LABEL_50:
  v43 = 0;
  v44 = qword_2864A9830;
  do
  {
    if (v33 == v43)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA420(0, *(v34 + 16) + 1, 1);
      }

      v55 = *(v34 + 16);
      v54 = *(v34 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_2529AA420((v54 > 1), v55 + 1, 1);
      }

      *(v34 + 16) = v55 + 1;
      *(v34 + 8 * v55 + 32) = v44;
      v33 = *(v16 + 2);
      if (v33)
      {
        goto LABEL_54;
      }

LABEL_75:
      v51 = 1;
      goto LABEL_76;
    }

    v45 = &v16[8 * v43++];
  }

  while (*(v45 + 4) != qword_2864A9830);
  if (!v33)
  {
    goto LABEL_75;
  }

LABEL_54:
  v46 = v33 - 1;
  do
  {
    v48 = *v31++;
    v47 = v48;
    v51 = qword_2864A9820 != v48 && qword_2864A9828 != v47 && qword_2864A9830 != v47;
    v53 = v46-- != 0;
  }

  while (v51 && v53);
LABEL_76:

  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v56 = sub_252E36AD4();
  __swift_project_value_buffer(v56, qword_2814B0AC8);
  sub_252E379F4();

  if (v51)
  {
    v57 = 0x65736C6166;
  }

  else
  {
    v57 = 1702195828;
  }

  if (v51)
  {
    v58 = 0xE500000000000000;
  }

  else
  {
    v58 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v57, v58);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E79CC0, 0xD0000000000000A1, 0x8000000252E79970);

  v59 = [v73 userTask];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 taskType];

    if (v61 == 1 && !v51)
    {
      v62 = [v73 filters];
      if (v62)
      {
        v63 = v62;
        v64 = sub_252E37264();

        v65 = sub_252DD5A58(v64);
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
      }

      v66 = sub_252C758E0(v65);

      v67 = sub_252DD6238(v66);

      if (v67)
      {
        v68 = static HomeStore.shared.getter();
        v69 = sub_2529FEC24(v67, &unk_2864A9800);

        v70 = sub_252AE1A84(v69, v34, MEMORY[0x277D84F90]);

        sub_252E379F4();

        v71 = sub_252E36E54();
        MEMORY[0x2530AD570](v71);

        sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E79D00, 0xD0000000000000A1, 0x8000000252E79970);

        return v70;
      }
    }
  }

  else
  {

    sub_252C515AC();
  }

  v12 = 0xD00000000000001ELL;
  v13 = 0x8000000252E79CE0;
LABEL_95:
  sub_252CC3D90(v12, v13, 0xD0000000000000A1, 0x8000000252E79970);
  return 0;
}

char *sub_252AE3AE8(uint64_t a1)
{
  if (qword_27F53F330 != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = qword_27F5757E8;
  v3 = qword_27F5757E8 + 64;
  v4 = 1 << *(qword_27F5757E8 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_27F5757E8 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = (a1 + 32);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v21 = a1;
LABEL_5:
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = *(a1 + 16);
    v15 = v8;
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(v2 + 56) + 8 * v13))
      {
        v17 = *(*(v2 + 48) + 8 * v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2529F7B8C(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_2529F7B8C((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        *&v10[8 * v19 + 32] = v17;
        a1 = v21;
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v10;
}

char *sub_252AE3CA0(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [a1 filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_8;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  v8 = HomeStore.services(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    sub_252929F10(v8, 1);
    goto LABEL_7;
  }

  if (v8 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = a1;
  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_32:
    sub_252929F10(v8, 0);
    v32 = *(v16 + 2);
    if (v32)
    {
      v33 = (v16 + 32);
      v31 = *&xmmword_2864A9888;
      v30 = *xmmword_2864A9898[0].i64;
      v34 = v32 - 1;
      v35 = v84;
      do
      {
        v36 = *v33++;
        v37 = vdupq_n_s64(v36);
        v38 = vminv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A9888, v37), vceqq_s64(xmmword_2864A9898[0], v37)))));
        v40 = v34-- != 0;
      }

      while ((v38 & 1) != 0 && v40);
    }

    else
    {
      v38 = 1;
      v35 = v84;
    }

    v41 = [v35 userTask];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 taskType];

      if (v43 == 1 && ((v38 & 1) == 0 || (sub_252C4E58C(&unk_2864A9838) & 1) != 0))
      {
        v44 = [v35 filters];
        if (v44)
        {
          v45 = v44;
          v46 = sub_252E37264();

          v47 = sub_252DD5A58(v46);
        }

        else
        {
          v47 = MEMORY[0x277D84F90];
        }

        v48 = sub_252C758E0(v47);

        v49 = sub_252DD6238(v48);

        if (v49)
        {
          v50 = 0;
          v51 = qword_2864A98C8;
          v52 = *(v16 + 2);
          v53 = MEMORY[0x277D84F90];
          while (v52 != v50)
          {
            v54 = &v16[8 * v50++];
            if (*(v54 + 4) == qword_2864A98C8)
            {
              goto LABEL_64;
            }
          }

          v86 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA420(0, *(v53 + 16) + 1, 1);
          }

          v58 = *(v53 + 16);
          v57 = *(v53 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_2529AA420((v57 > 1), v58 + 1, 1);
            v53 = v86;
          }

          *(v53 + 16) = v58 + 1;
          *(v53 + 8 * v58 + 32) = v51;
          v52 = *(v16 + 2);
LABEL_64:
          v59 = qword_2864A98D0;
          v60 = 32;
          while (v52)
          {
            v61 = *&v16[v60];
            v60 += 8;
            --v52;
            if (v61 == qword_2864A98D0)
            {
              v85 = v53;
              goto LABEL_73;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA420(0, *(v53 + 16) + 1, 1);
          }

          v63 = *(v53 + 16);
          v62 = *(v53 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2529AA420((v62 > 1), v63 + 1, 1);
          }

          *(v53 + 16) = v63 + 1;
          v85 = v53;
          *(v53 + 8 * v63 + 32) = v59;
LABEL_73:
          v64 = 0;
          v65 = MEMORY[0x277D84F90];
          do
          {
            v66 = qword_2864A98D8[v64 + 4];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_252E3C290;
            *(inited + 32) = v66;
            v68 = sub_252AE3AE8(inited);
            swift_setDeallocating();
            v69 = *(v68 + 2);
            if (v69)
            {
              v70 = 0;
              do
              {
                v71 = *&v68[8 * v70++ + 32];
                v72 = *(v16 + 2);
                v73 = (v16 + 32);
                while (v72)
                {
                  v74 = *v73++;
                  --v72;
                  if (v74 == v71)
                  {

                    goto LABEL_74;
                  }
                }
              }

              while (v70 != v69);
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA360(0, *(v65 + 16) + 1, 1);
            }

            v76 = *(v65 + 16);
            v75 = *(v65 + 24);
            if (v76 >= v75 >> 1)
            {
              sub_2529AA360((v75 > 1), v76 + 1, 1);
            }

            *(v65 + 16) = v76 + 1;
            *(v65 + 8 * v76 + 32) = v66;
LABEL_74:
            ++v64;
          }

          while (v64 != 3);

          v77 = static HomeStore.shared.getter();
          v78 = sub_2529FEC24(v49, v85);

          v79 = static HomeStore.shared.getter();
          v80 = sub_2529FF268(v49, v65);

          sub_25297A718(v80);
          v81 = sub_252AE1A84(v78, v85, v65);

          if (qword_2814B0AC0 != -1)
          {
            swift_once();
          }

          v82 = sub_252E36AD4();
          __swift_project_value_buffer(v82, qword_2814B0AC8);
          sub_252E379F4();

          v83 = sub_252E36E54();
          MEMORY[0x2530AD570](v83);

          sub_252CC3D90(0xD000000000000019, 0x8000000252E79C20, 0xD0000000000000A1, 0x8000000252E79970);

          return v81;
        }
      }
    }

    else
    {

      sub_252C515AC();
    }

    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v55 = sub_252E36AD4();
    __swift_project_value_buffer(v55, qword_2814B0AC8);
    v12 = "or intent to generate Hint";
    v13 = 0xD00000000000001DLL;
    goto LABEL_58;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while ((v8 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2530ADF00](v15, v8);
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_90;
    }

LABEL_16:
    v19 = v14;
    v20 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v21 = sub_252E36F34();
    v23 = v22;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v24 = off_27F546230;
    if (*(off_27F546230 + 2) && (v25 = sub_252A44A10(v21, v23), (v26 & 1) != 0))
    {
      v27 = *(v24[7] + 8 * v25);
    }

    else
    {
      v27 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_2529F7B8C(0, *(v16 + 2) + 1, 1, v16);
    }

    v29 = *(v16 + 2);
    v28 = *(v16 + 3);
    if (v29 >= v28 >> 1)
    {
      v16 = sub_2529F7B8C((v28 > 1), v29 + 1, 1, v16);
    }

    *(v16 + 2) = v29 + 1;
    *&v16[8 * v29 + 32] = v27;
    ++v15;
    v14 = v19;
    if (v18 == v19)
    {
      goto LABEL_32;
    }
  }

  if (v15 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v17 = *(v8 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_16;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_8:
  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_2814B0AC8);
  v12 = "on't provide a hint";
  v13 = 0xD00000000000003ALL;
LABEL_58:
  sub_252CC3D90(v13, v12 | 0x8000000000000000, 0xD0000000000000A1, 0x8000000252E79970);
  return 0;
}

uint64_t sub_252AE45DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252AE45FC, 0, 0);
}

uint64_t sub_252AE45FC()
{
  if (qword_27F53F3F8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_27F575A30;
  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (sub_252DB4F4C(*(v1 + v3), v2) & 1) != 0 || (v4 = v0[6], (sub_252C2AC20()))
  {
    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_2814B0AC8);
    sub_252CC3D90(0xD000000000000033, 0x8000000252E79B80, 0xD0000000000000A1, 0x8000000252E79970);
    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_252AE47C8;
    v10 = v0[5];
    v9 = v0[6];

    return sub_252AE1098(v10, v9);
  }
}

uint64_t sub_252AE47C8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_252AE48C8, 0, 0);
}

uint64_t sub_252AE48C8()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    v1 = sub_252AE327C(*(v0 + 40));
    if (!v1)
    {
      v1 = sub_252AE3CA0(*(v0 + 40));
      if (!v1)
      {
        if (qword_2814B0AC0 != -1)
        {
          swift_once();
        }

        v2 = sub_252E36AD4();
        __swift_project_value_buffer(v2, qword_2814B0AC8);
        sub_252CC3D90(0xD000000000000032, 0x8000000252E79B40, 0xD0000000000000A1, 0x8000000252E79970);
        v1 = 0;
      }
    }
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_252AE49C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_252E367C4();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v10 = sub_252E32E84();
  v5[24] = v10;
  v11 = *(v10 - 8);
  v5[25] = v11;
  v12 = *(v11 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE4B20, 0, 0);
}

uint64_t sub_252AE4B20()
{
  v1 = v0[18];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  sub_252E32E14();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_25293847C(v0[23], &unk_27F541F20, &qword_252E3C180);
LABEL_4:
    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_2814B0AC8);
    sub_252CC4050(0xD000000000000016, 0x8000000252E79950, 0xD0000000000000A1, 0x8000000252E79970, 0xD00000000000003DLL, 0x8000000252E79A20, 289);
    v8 = v0[26];
    v9 = v0[22];
    v10 = v0[23];

    v11 = v0[1];

    return v11();
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v13 = v0[21];
  v14 = v0[22];
  v37 = v0[20];
  v38 = v0[19];
  v15 = v0[17];
  v36 = v0[16];
  v16 = v0[15];
  v17 = sub_252E36AD4();
  v0[27] = __swift_project_value_buffer(v17, qword_2814B0AC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E79A60);
  MEMORY[0x2530AD570](v15, v1);
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E79AC0);
  v18 = sub_252E36E54();
  MEMORY[0x2530AD570](v18);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E79AE0);
  v19 = [v16 description];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E79970);

  *v14 = v16;
  (*(v13 + 104))(v14, *MEMORY[0x277D60918], v37);
  v23 = *(v38 + 544);
  (*(v38 + 536))(v16);
  v25 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v25);
  v26 = sub_252E367D4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_252E367E4();
  v0[10] = v26;
  v0[11] = sub_252AE55C0();
  v0[7] = v29;
  v30 = sub_252CC16D0(v36);
  v0[28] = v30;
  v31 = *(MEMORY[0x277D60580] + 4);
  v32 = swift_task_alloc();
  v0[29] = v32;
  v33 = *(v24 + 8);
  *v32 = v0;
  v32[1] = sub_252AE4FA8;
  v34 = v0[26];
  v35 = v0[22];

  return MEMORY[0x2821C5FD8](v34, v35, v0 + 7, v30, 1, v25, v33);
}

uint64_t sub_252AE4FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_252AE51A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 56));
    v5 = sub_252AE50E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AE50E8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[26];
  v5 = v0[22];
  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252AE51A4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  (*(v0[21] + 8))(v0[22], v0[20]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252E379F4();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E79B00);
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[12], v0[13], 0xD0000000000000A1, 0x8000000252E79970, 0xD00000000000003DLL, 0x8000000252E79A20, 309);

  (*(v5 + 8))(v2, v4);
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252AE5358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F737365636361 && a2 == 0xED00006570795479;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000656D614E72 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000252E79910 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000252E79930 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_252AE55C0()
{
  result = qword_27F543100;
  if (!qword_27F543100)
  {
    sub_252E367D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543100);
  }

  return result;
}

id sub_252AE5618(void *a1, uint64_t a2)
{
  v2 = sub_252AE5DE0(a1, a2);
  if (v2 <= 2)
  {
    v5 = 0xE300000000000000;
    v6 = 6710895;
    if (v2 != 1)
    {
      v6 = 28271;
      v5 = 0xE200000000000000;
    }

    if (v2)
    {
      v3 = v6;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (v2 > 4)
  {
    if (v2 != 5)
    {
      return 0;
    }

    v4 = 0xE400000000000000;
    v3 = 1869903201;
  }

  else
  {
    if (v2 == 3)
    {
      v3 = 1952540008;
    }

    else
    {
      v3 = 1819242339;
    }

    v4 = 0xE400000000000000;
  }

  type metadata accessor for HomeAttributeValue();
  v7 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v3, v4, 0);
  v8 = qword_27F53F498;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  v11 = v9;
  v12 = sub_252E36AC4();
  v13 = sub_252E374C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v7;
    _os_log_impl(&dword_252917000, v12, v13, "Calculated targetMode: %@", v14, 0xCu);
    sub_252AE65A8(v15);
    MEMORY[0x2530AED00](v15, -1, -1);
    MEMORY[0x2530AED00](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return v7;
}

id sub_252AE5814(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, double a7)
{
  v9 = sub_252C6E240(a1);
  v10 = sub_252AE6450(a1);
  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 taskType];

    v14 = v13 == 2;
  }

  else
  {
    sub_252C515AC();
    v14 = 0;
  }

  v15 = [a1 userTask];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 taskType];

    v47 = v17 == 3;
  }

  else
  {
    sub_252C515AC();
    v47 = 0;
  }

  v18 = round((a7 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E79E70);
  sub_252E37374();
  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v20 = sub_252C65640(v9);
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79EA0);
  if (v14)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v14)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v22);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79ED0);
  if (v47)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v47)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v23, v24);

  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E79F00);
  sub_252E37374();
  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);

  if (v9 == 3)
  {
    v25 = v10 + a7;
  }

  else
  {
    v25 = round((v18 + v10 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  v26 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v27 = sub_252E36F04();
  v28 = [v26 initWithIdentifier:0 displayString:v27];

  v29 = v28;
  [v29 setDoubleValue_];
  [v29 setUnit_];
  [v29 setType_];

  v30 = sub_252E36AC4();
  v31 = sub_252E374C4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412802;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2048;
    *(v32 + 14) = a7;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v10;
    v34 = v29;
    _os_log_impl(&dword_252917000, v30, v31, "Calculated targetTemperature %@ as currentTemperatureValue:%f + deltaValue:%f", v32, 0x20u);
    sub_252AE65A8(v33);
    MEMORY[0x2530AED00](v33, -1, -1);
    MEMORY[0x2530AED00](v32, -1, -1);
  }

  if (a2)
  {
    v35 = [a2 stringValue];
    if (v35)
    {
      v36 = v35;
      v37 = sub_252E36F34();
      v39 = v38;

      if (v37 == 1869903201 && v39 == 0xE400000000000000)
      {

LABEL_32:
        v41 = sub_25298AB8C(a3, a4 & 1, a5, a6 & 1, a7, v25);

        return v41;
      }

      v40 = sub_252E37DB4();

      if (v40)
      {
        goto LABEL_32;
      }
    }
  }

  return v29;
}

uint64_t sub_252AE5DB0()
{
  type metadata accessor for SetDeltaClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252AE5DE0(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
LABEL_7:
    v7 = [a1 userTask];
    if (!v7)
    {
      sub_252C515AC();
      goto LABEL_13;
    }

    v8 = v7;
    v9 = [v7 taskType];

    if (v9 != 3)
    {
LABEL_13:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544C70);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7A010);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543118, &qword_252E4A348);
      v11 = sub_252E36F94();
      MEMORY[0x2530AD570](v11);

      goto LABEL_35;
    }

    if (a2 <= 2u)
    {
      if (a2 == 1)
      {

        goto LABEL_31;
      }
    }

    else if (a2 > 4u && a2 != 5)
    {
      goto LABEL_31;
    }

    v14 = sub_252E37DB4();

    if ((v14 & 1) == 0)
    {
      if (a2 == 3)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544C70);
      v20 = "Decrease request with entities in Heating Mode. Setting climate entity mode to AUTO";
      goto LABEL_48;
    }

LABEL_31:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A060);
    a2 = 4;
    goto LABEL_34;
  }

  v5 = v4;
  v6 = [v4 taskType];

  if (v6 != 2)
  {
    goto LABEL_7;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u && a2 != 5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a2 != 1)
  {
LABEL_24:
    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_25;
    }

    if (a2 == 4)
    {

LABEL_41:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544C70);
      v20 = "Increase request with entities in Cooling Mode. Setting climate entity mode to AUTO";
LABEL_48:
      sub_252CC3D90(0xD000000000000053, (v20 - 32) | 0x8000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);
      return 5;
    }

    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_13;
  }

LABEL_25:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A110);
  a2 = 3;
LABEL_34:
  sub_252E37AE4();
LABEL_35:
  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);

  return a2;
}

double sub_252AE6450(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E79FE0, 0xD0000000000000A6, 0x8000000252E79F30);
  v3 = [a1 userTask];
  v4 = 1.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 value];

    if (v6)
    {
      [v6 doubleValue];
      v4 = v7;

      v8 = [a1 userTask];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 taskType];

        if (v10 == 2)
        {
          return v4;
        }
      }

      else
      {
        sub_252C515AC();
      }

      return -v4;
    }
  }

  return v4;
}

uint64_t sub_252AE65A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AE662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0x7073655265757274 && a2 == 0xED00007365736E6FLL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F546470;
    v8 = 1;
LABEL_7:
    v9 = sub_252E1D2F4(v7, v8);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationBooleanResponses();
    a3[3] = result;
    *a3 = v9;
    return result;
  }

  if (a1 == 0x73655265736C6166 && a2 == 0xEE007365736E6F70 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F546471;
    v8 = 0;
    goto LABEL_7;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_252AE67E0()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v5 = sub_2529C81D4(v4);
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

uint64_t sub_252AE68D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252AE7008(a1);
}

uint64_t sub_252AE6978(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return (sub_252AE76C4)(a1, a2);
}

uint64_t sub_252AE6A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252AE7008(a1);
}

uint64_t sub_252AE6AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShowHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252AE6B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ShowHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_252AE6C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ShowHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_252AE6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ShowHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_252AE6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ShowHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252AE6E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ShowHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252AE6F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252AE76C4)(a1, a2);
}

uint64_t sub_252AE7008(uint64_t a1)
{
  v1[382] = a1;
  v2 = sub_252E34164();
  v1[383] = v2;
  v3 = *(v2 - 8);
  v1[384] = v3;
  v4 = *(v3 + 64) + 15;
  v1[385] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE70C8, 0, 0);
}

uint64_t sub_252AE70C8()
{
  v1 = v0[385];
  v2 = v0[384];
  v3 = v0[383];
  v4 = *(v2 + 16);
  v4(v1, v0[382], v3);
  v5 = (*(v2 + 88))(v1, v3);
  v6 = v0[385];
  v7 = v0[384];
  v8 = v0[383];
  if (v5 == *MEMORY[0x277D5C128])
  {
    v9 = v0[382];
    (*(v7 + 8))(v6, v8);
    sub_252AB3FEC(v9, 0, v0 + 65);
    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
    if (sub_252956B94(v0 + 2) != 1)
    {
      memcpy(v0 + 254, v0 + 2, 0x1F8uLL);
      v10 = swift_task_alloc();
      v0[386] = v10;
      *v10 = v0;
      v10[1] = sub_252AE7330;

      return sub_252976614();
    }
  }

  else
  {
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  sub_2529515FC(1, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
  type metadata accessor for ShowHomeError();
  sub_252AE7CF8(&qword_27F543138, 255, type metadata accessor for ShowHomeError);
  swift_allocError();
  v4(v15, v14, v13);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_252AE7330(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 3040) = v1;
  *(v3 + 3048) = a1;
  v4 = *(v2 + 3088);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_252AE7434, 0, 0);
}

uint64_t sub_252AE7434()
{
  v15 = v0;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = v0[381];
  v2 = v0[385];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C70);
  sub_252E379F4();

  v4 = v1;
  v5 = [v4 description];
  v6 = sub_252E36F34();
  v8 = v7;

  MEMORY[0x2530AD570](v6, v8);

  MEMORY[0x2530AD570](0x6465746165726320, 0xEE00206D6F726620);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy(__dst, v0 + 2, sizeof(__dst));
  memcpy(v0 + 191, v0 + 65, 0x1F8uLL);
  sub_2529353AC((v0 + 191), (v0 + 317));
  v9 = HomeAutomationIntent.description.getter();
  v11 = v10;
  memcpy(v0 + 128, __dst, 0x1F8uLL);
  sub_252935408((v0 + 128));
  MEMORY[0x2530AD570](v9, v11);

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E7A370;

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E7A390);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000082, 0x8000000252E7A2E0);

  sub_25299F5D4((v0 + 65));

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_252AE76C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE7784, 0, 0);
}

uint64_t sub_252AE7784()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E7A2B0, 0xD000000000000082, 0x8000000252E7A2E0);
  v7 = objc_allocWithZone(type metadata accessor for ShowHomeIntentHandler());

  [v7 init];
  type metadata accessor for ShowHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t dispatch thunk of ShowHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25294B7BC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ShowHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25296BC70;

  return v10(a1, a2);
}

uint64_t type metadata accessor for ShowHomeError()
{
  result = qword_27F543140;
  if (!qword_27F543140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252AE7CF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252AE7D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xE600000000000000;
      v8 = 0x6D7575636176;
      switch(*v3)
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7368557;
          break;
        case 2:
          v8 = 0x61656C4370656564;
          v7 = 0xE90000000000006ELL;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1869903201;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x7465697571;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x6B63697571;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x6573696F4E776F6CLL;
          break;
        case 7:
          v7 = 0xE900000000000079;
          v8 = 0x6772656E45776F6CLL;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F697461636176;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x746867696ELL;
          break;
        case 0xA:
          v7 = 0xE300000000000000;
          v8 = 7954788;
          break;
        case 0xB:
          v7 = 0xE300000000000000;
          v8 = 7235949;
          break;
        case 0xC:
          v7 = 0xE300000000000000;
          v8 = 7889261;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6D7575636176;
      switch(*v4)
      {
        case 1:
          v9 = 0xE300000000000000;
          if (v8 == 7368557)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x61656C4370656564)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 3:
          v9 = 0xE400000000000000;
          if (v8 != 1869903201)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 4:
          v9 = 0xE500000000000000;
          if (v8 != 0x7465697571)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 5:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63697571)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 6:
          v9 = 0xE800000000000000;
          if (v8 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 7:
          v9 = 0xE900000000000079;
          if (v8 != 0x6772656E45776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 8:
          v9 = 0xE800000000000000;
          if (v8 != 0x6E6F697461636176)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 9:
          v9 = 0xE500000000000000;
          if (v8 != 0x746867696ELL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xA:
          v9 = 0xE300000000000000;
          v10 = 7954788;
          goto LABEL_42;
        case 0xB:
          v9 = 0xE300000000000000;
          if (v8 != 7235949)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xC:
          v9 = 0xE300000000000000;
          if (v8 != 7889261)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        default:
LABEL_42:
          if (v8 != v10)
          {
            goto LABEL_5;
          }

LABEL_43:
          if (v7 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_252AE80B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE810C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_2529353AC(__dst, v10);
    sub_2529353AC(v14, v10);
    v8 = static HomeAutomationIntent.== infix(_:_:)(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_252935408(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_252935408(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 504;
    v5 += 504;
  }

  return 1;
}

uint64_t sub_252AE8238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v8 = 1701670771;
        }

        else
        {
          v8 = 6647407;
        }

        if (*v3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE300000000000000;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xE300000000000000;
        v8 = 7105633;
      }

      else if (v6 == 3)
      {
        v7 = 0xE400000000000000;
        v8 = 1752461154;
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x747065637865;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 1701670771;
        }

        else
        {
          v11 = 6647407;
        }

        if (*v4)
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE300000000000000;
        }

        if (v8 != v11)
        {
LABEL_5:
          v5 = sub_252E37DB4();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE300000000000000;
        if (v8 != 7105633)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE400000000000000;
        if (v8 != 1752461154)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xE600000000000000;
        if (v8 != 0x747065637865)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE83F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_252E37DB4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_252AE8484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v12 = *v3;
      v11 = *v4;
      v6 = HueSemantic.rawValue.getter();
      v8 = v7;
      if (v6 == HueSemantic.rawValue.getter() && v8 == v9)
      {
      }

      else
      {
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE859C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xEA0000000000746ELL;
      v8 = 0x69685F6573756F68;
      switch(*v3)
      {
        case 1:
          v7 = 0xE900000000000074;
          v8 = 0x6E69685F6D6F6F72;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x657265685F6E69;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x6572656874;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1936287860;
          break;
        case 5:
          v8 = 0x725F6E6F6D6D6F63;
          v7 = 0xEC000000736D6F6FLL;
          break;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1819042152;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x6E65686374696BLL;
          break;
        case 8:
          v9 = 1769367916;
          goto LABEL_27;
        case 9:
          v9 = 1768843620;
LABEL_27:
          v8 = v9 | 0x6F72676E00000000;
          v7 = 0xEA00000000006D6FLL;
          break;
        case 0xA:
          v7 = 0xE800000000000000;
          v8 = 0x65636E6172746E65;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x6D6F6F7268746162;
          break;
        case 0xC:
          v7 = 0xE600000000000000;
          v8 = 0x65636966666FLL;
          break;
        case 0xD:
          v7 = 0xE700000000000000;
          v10 = 1919182178;
          goto LABEL_29;
        case 0xE:
          v8 = 0x625F72657473616DLL;
          v7 = 0xEE006D6F6F726465;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x746E656D65736162;
          break;
        case 0x10:
          v7 = 0xE400000000000000;
          v8 = 1685217657;
          break;
        case 0x11:
          v7 = 0xE300000000000000;
          v8 = 7174503;
          break;
        case 0x12:
          v8 = 0x6F6F725F79616C70;
          v7 = 0xE90000000000006DLL;
          break;
        case 0x13:
          v7 = 0xE700000000000000;
          v10 = 1918858868;
LABEL_29:
          v8 = v10 | 0x6D6F6F00000000;
          break;
        case 0x14:
          v7 = 0xE800000000000000;
          v8 = 0x706F68736B726F77;
          break;
        default:
          break;
      }

      v11 = 0xEA0000000000746ELL;
      v12 = 0x69685F6573756F68;
      switch(*v4)
      {
        case 1:
          v11 = 0xE900000000000074;
          if (v8 == 0x6E69685F6D6F6F72)
          {
            goto LABEL_68;
          }

          goto LABEL_5;
        case 2:
          v11 = 0xE700000000000000;
          if (v8 != 0x657265685F6E69)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 3:
          v11 = 0xE500000000000000;
          if (v8 != 0x6572656874)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 4:
          v11 = 0xE400000000000000;
          if (v8 != 1936287860)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 5:
          v11 = 0xEC000000736D6F6FLL;
          if (v8 != 0x725F6E6F6D6D6F63)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 6:
          v11 = 0xE400000000000000;
          if (v8 != 1819042152)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 7:
          v11 = 0xE700000000000000;
          if (v8 != 0x6E65686374696BLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 8:
          v12 = 0x6F72676E6976696CLL;
          v11 = 0xEA00000000006D6FLL;
          goto LABEL_67;
        case 9:
          v11 = 0xEA00000000006D6FLL;
          if (v8 != 0x6F72676E696E6964)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xA:
          v11 = 0xE800000000000000;
          if (v8 != 0x65636E6172746E65)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xB:
          v11 = 0xE800000000000000;
          if (v8 != 0x6D6F6F7268746162)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xC:
          v11 = 0xE600000000000000;
          if (v8 != 0x65636966666FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xD:
          v11 = 0xE700000000000000;
          v13 = 1919182178;
          goto LABEL_71;
        case 0xE:
          v11 = 0xEE006D6F6F726465;
          if (v8 != 0x625F72657473616DLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xF:
          v11 = 0xE800000000000000;
          if (v8 != 0x746E656D65736162)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x10:
          v11 = 0xE400000000000000;
          if (v8 != 1685217657)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x11:
          v11 = 0xE300000000000000;
          if (v8 != 7174503)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x12:
          v11 = 0xE90000000000006DLL;
          if (v8 != 0x6F6F725F79616C70)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x13:
          v11 = 0xE700000000000000;
          v13 = 1918858868;
LABEL_71:
          if (v8 != (v13 | 0x6D6F6F00000000))
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x14:
          v11 = 0xE800000000000000;
          if (v8 != 0x706F68736B726F77)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        default:
LABEL_67:
          if (v8 != v12)
          {
            goto LABEL_5;
          }

LABEL_68:
          if (v7 == v11)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_252AE8B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_2529A9538(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_252AE8BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    do
    {
      v15 = *v5;
      v14 = *v6;
      v7 = a3();
      v9 = v8;
      if (v7 == a3() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_252E37DB4();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v5;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_252AE8CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = 0xD000000000000011;
      if (v6 != 2)
      {
        v7 = 0x4773656572676564;
      }

      v8 = 0xEE00636972656E65;
      if (v6 == 2)
      {
        v8 = 0x8000000252E67E40;
      }

      if (*v3)
      {
        v9 = 0x4373656572676564;
      }

      else
      {
        v9 = 0x746E6563726570;
      }

      v10 = 0xEE00737569736C65;
      if (!*v3)
      {
        v10 = 0xE700000000000000;
      }

      if (*v3 <= 1u)
      {
        v11 = v9;
      }

      else
      {
        v11 = v7;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v4 > 1u)
      {
        if (*v4 == 2)
        {
          v13 = 0x8000000252E67E40;
          if (v11 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        v14 = 0x4773656572676564;
        v15 = 0x636972656E65;
      }

      else
      {
        if (!*v4)
        {
          v13 = 0xE700000000000000;
          if (v11 != 0x746E6563726570)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        v14 = 0x4373656572676564;
        v15 = 0x737569736C65;
      }

      v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v14)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (v12 != v13)
      {
LABEL_5:
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE8ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        v6 = 0x79625F706F7473;
      }

      else
      {
        v6 = 6645107;
      }

      if (*v3)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xE300000000000000;
      }

      if (*v4)
      {
        v8 = 0x79625F706F7473;
      }

      else
      {
        v8 = 6645107;
      }

      if (*v4)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE300000000000000;
      }

      if (v6 == v8 && v7 == v9)
      {
      }

      else
      {
        v11 = sub_252E37DB4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE8FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_252AEBA88();
    v22 = sub_252E36EF4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE91E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xEB00000000656D6FLL;
      v8 = 0x48746E6572727563;
      switch(*v3)
      {
        case 1:
          v8 = 0x6C706552726F6F64;
          v7 = 0xEF746E656D656361;
          break;
        case 2:
          v8 = 0x4966664F6E727574;
          v7 = 0xEC0000005654416ELL;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972616D697270;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x656372756F73;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000252E67940;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x8000000252E67960;
          break;
        case 7:
          v8 = 0x45656C6946636F76;
          v7 = 0xED0000797469746ELL;
          break;
        case 8:
          v8 = 0xD000000000000014;
          v7 = 0x8000000252E67980;
          break;
        case 9:
          v8 = 0x636E657265666572;
          v7 = 0xEE00656D6F486465;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x8000000252E679B0;
          break;
        case 0xB:
          v8 = 0x6465766C6F736572;
          v7 = 0xEE00797469746E45;
          break;
        case 0xC:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000252E679D0;
          break;
        default:
          break;
      }

      v9 = 0x48746E6572727563;
      v10 = 0xEB00000000656D6FLL;
      switch(*v4)
      {
        case 1:
          v10 = 0xEF746E656D656361;
          if (v8 == 0x6C706552726F6F64)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        case 2:
          v10 = 0xEC0000005654416ELL;
          if (v8 != 0x4966664F6E727574)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x7972616D697270)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 4:
          v10 = 0xE600000000000000;
          if (v8 != 0x656372756F73)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 5:
          v10 = 0x8000000252E67940;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 6:
          v10 = 0x8000000252E67960;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 7:
          v10 = 0xED0000797469746ELL;
          if (v8 != 0x45656C6946636F76)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 8:
          v10 = 0x8000000252E67980;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 9:
          v11 = 0x636E657265666572;
          v12 = 0x656D6F486465;
          goto LABEL_29;
        case 0xA:
          v9 = 0xD000000000000010;
          v10 = 0x8000000252E679B0;
          goto LABEL_42;
        case 0xB:
          v11 = 0x6465766C6F736572;
          v12 = 0x797469746E45;
LABEL_29:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xC:
          v10 = 0x8000000252E679D0;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        default:
LABEL_42:
          if (v8 != v9)
          {
            goto LABEL_5;
          }

LABEL_43:
          if (v7 == v10)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_252AE9618(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_54:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_252E378C4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v13 = i - 4;
        v14 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x2530ADF00](i - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v4 = *(a1 + 8 * i);

          if (v11)
          {
LABEL_23:
            v15 = MEMORY[0x2530ADF00](i - 4, a2);
            goto LABEL_28;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v15 = *(a2 + 8 * i);

LABEL_28:
        if ((sub_252E32E54() & 1) == 0 || *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {
          goto LABEL_50;
        }

        if (*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {
        }

        else
        {
          v17 = sub_252E37DB4();

          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }

        if (v14 == v5)
        {
          return 1;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20)
    {
      if (!v21)
      {
        goto LABEL_58;
      }

      v22 = *v18;
      v23 = *v19;

      if ((sub_252E32E54() & 1) == 0 || *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {
LABEL_50:

        return 0;
      }

      if (*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
      {
      }

      else
      {
        v25 = sub_252E37DB4();

        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      --v21;
      --v20;
      ++v18;
      ++v19;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE995C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 32)
    {
      v6 = *(v3 - 2);
      v7 = *(v3 - 8);
      v8 = *(v3 - 1);
      v9 = *v3;
      v10 = *(i - 2);
      v11 = *(i - 8);
      v12 = *(i - 1);
      v13 = *i;
      if (v6)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v3 - 3) != *(i - 3) || v6 != v10)
        {
          v15 = *(v3 - 2);
          v16 = *(i - 2);
          if ((sub_252E37DB4() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v7 == 52)
      {
        if (v11 != 52)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 52)
        {
          return 0;
        }

        v17 = AccessoryTypeSemantic.rawValue.getter();
        v19 = v18;
        if (v17 == AccessoryTypeSemantic.rawValue.getter() && v19 == v20)
        {
        }

        else
        {
          v21 = sub_252E37DB4();

          if ((v21 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      if (v8 != v12)
      {
LABEL_49:

        return 0;
      }

      v3 += 32;
      v22 = 0xD000000000000010;
      if (v9 != 2)
      {
        v22 = 0x74614D7361696C61;
      }

      v23 = 0xEA00000000006863;
      if (v9 == 2)
      {
        v23 = 0x8000000252E65390;
      }

      v24 = 0x4D74636566726570;
      if (v9)
      {
        v24 = 0x4D6C616974726170;
      }

      v25 = v9 <= 1 ? v24 : v22;
      v26 = v9 <= 1 ? 0xEC00000068637461 : v23;
      if (v13 <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v27 = 0xD000000000000010;
        v28 = 0x8000000252E65390;
LABEL_43:
        if (v25 != v27)
        {
          goto LABEL_5;
        }

        goto LABEL_44;
      }

      v28 = 0xEA00000000006863;
      if (v25 != 0x74614D7361696C61)
      {
LABEL_5:
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_44:
      if (v26 != v28)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    v27 = 0x4D74636566726570;
    v28 = 0xEC00000068637461;
    if (v13)
    {
      if (v25 != 0x4D6C616974726170)
      {
        goto LABEL_5;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return 1;
}

uint64_t sub_252AE9CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32BA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_252AEBA30();
    v22 = sub_252E36EF4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE9EA0(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x2530ADF00](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_252E37694();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_252E37694();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_252E378C4();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_252E378C4();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t HomeEntity.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v75);
  if (v76)
  {
    type metadata accessor for HomeEntity();
    if (swift_dynamicCast())
    {
      v2 = [v74 homeEntityName];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 homeEntityName];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_14;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = sub_252E37DB4();

            if ((v12 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_16;
        }
      }

      else if (v6)
      {
        goto LABEL_14;
      }

      v13 = [v74 type];
      if (v13 != [v1 type])
      {
        goto LABEL_81;
      }

      v14 = [v74 entityIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_252E36F34();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v1 entityIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_252E36F34();
        v23 = v22;

        if (v18)
        {
          if (!v23)
          {
            goto LABEL_14;
          }

          if (v16 == v21 && v18 == v23)
          {
          }

          else
          {
            v24 = sub_252E37DB4();

            if ((v24 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v23)
        {
          goto LABEL_16;
        }
      }

      else if (v18)
      {
        goto LABEL_14;
      }

      v25 = [v74 deviceTypes];
      if (v25)
      {
        v26 = v25;
        v27 = sub_252E37264();
      }

      else
      {
        v27 = 0;
      }

      v28 = [v1 deviceTypes];
      if (v28)
      {
        v29 = v28;
        v30 = sub_252E37264();

        if (v27)
        {
          if (!v30)
          {
            goto LABEL_14;
          }

          v31 = sub_252AE80B0(v27, v30);

          if ((v31 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        else if (v30)
        {
          goto LABEL_16;
        }
      }

      else if (v27)
      {
        goto LABEL_14;
      }

      v32 = [v74 sceneType];
      if (v32 != [v1 sceneType])
      {
        goto LABEL_81;
      }

      v33 = [v74 group];
      if (v33)
      {
        v34 = v33;
        v35 = sub_252E36F34();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = [v1 group];
      if (v38)
      {
        v39 = v38;
        v40 = sub_252E36F34();
        v42 = v41;

        if (v37)
        {
          if (!v42)
          {
            goto LABEL_14;
          }

          if (v35 == v40 && v37 == v42)
          {
          }

          else
          {
            v43 = sub_252E37DB4();

            if ((v43 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v42)
        {
          goto LABEL_16;
        }
      }

      else if (v37)
      {
        goto LABEL_14;
      }

      v44 = [v74 room];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E36F34();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = [v1 room];
      if (!v49)
      {
        if (v48)
        {
          goto LABEL_14;
        }

        goto LABEL_74;
      }

      v50 = v49;
      v51 = sub_252E36F34();
      v53 = v52;

      if (v48)
      {
        if (!v53)
        {
          goto LABEL_14;
        }

        if (v46 == v51 && v48 == v53)
        {
        }

        else
        {
          v54 = sub_252E37DB4();

          if ((v54 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_74;
      }

      if (!v53)
      {
LABEL_74:
        v55 = [v74 zones];
        if (v55)
        {
          v56 = v55;
          v57 = sub_252E37264();
        }

        else
        {
          v57 = 0;
        }

        v58 = [v1 zones];
        if (!v58)
        {
          if (!v57)
          {
            goto LABEL_87;
          }

          goto LABEL_14;
        }

        v59 = v58;
        v60 = sub_252E37264();

        if (v57)
        {
          if (v60)
          {
            v61 = sub_252AE83F4(v57, v60);

            if ((v61 & 1) == 0)
            {
              goto LABEL_81;
            }

LABEL_87:
            v64 = [v74 home];
            if (v64)
            {
              v65 = v64;
              v66 = sub_252E36F34();
              v68 = v67;
            }

            else
            {
              v66 = 0;
              v68 = 0;
            }

            v69 = [v1 home];
            if (v69)
            {
              v70 = v69;
              v71 = sub_252E36F34();
              v73 = v72;

              if (!v68)
              {

                if (!v73)
                {
                  v62 = 1;
                  return v62 & 1;
                }

                goto LABEL_82;
              }

              if (v73)
              {
                if (v66 != v71 || v68 != v73)
                {
                  v62 = sub_252E37DB4();

                  return v62 & 1;
                }

                goto LABEL_97;
              }
            }

            else if (!v68)
            {
LABEL_97:

              v62 = 1;
              return v62 & 1;
            }
          }

LABEL_14:

          goto LABEL_82;
        }

        if (!v60)
        {
          goto LABEL_87;
        }
      }

LABEL_16:

LABEL_81:
    }
  }

  else
  {
    sub_252982F10(v75);
  }

LABEL_82:
  v62 = 0;
  return v62 & 1;
}

uint64_t sub_252AEA788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAttributeValue.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v28);
  if (!v29)
  {
    sub_252982F10(v28);
    goto LABEL_10;
  }

  type metadata accessor for HomeAttributeValue();
  if (swift_dynamicCast())
  {
    v2 = [v1 type];
    if (v2 <= 3)
    {
      switch(v2)
      {
        case 1:
          v13 = [v1 BOOLValue];
          v14 = [v27 BOOLValue];

          v8 = v13 ^ v14 ^ 1;
          return v8 & 1;
        case 2:
          [v1 doubleValue];
          v18 = v17;
          [v27 doubleValue];
          v20 = v19;

          v8 = v18 == v20;
          return v8 & 1;
        case 3:
          v3 = [v1 stringValue];
          if (v3)
          {
            v4 = v3;
            v5 = sub_252E36F34();
            v7 = v6;
          }

          else
          {
            v5 = 0;
            v7 = 0;
          }

          v22 = [v27 stringValue];
          if (!v22)
          {
            if (!v7)
            {
LABEL_34:

              v8 = 1;
              return v8 & 1;
            }

            goto LABEL_33;
          }

          v23 = v22;
          v24 = sub_252E36F34();
          v26 = v25;

          if (v7)
          {
            if (v26)
            {
              if (v5 != v24 || v7 != v26)
              {
                v8 = sub_252E37DB4();

                return v8 & 1;
              }

              goto LABEL_34;
            }

LABEL_33:

            goto LABEL_10;
          }

          if (v26)
          {

            goto LABEL_10;
          }

LABEL_39:
          v8 = 1;
          return v8 & 1;
      }

LABEL_36:

      goto LABEL_10;
    }

    switch(v2)
    {
      case 4:
        v15 = [v1 integerValue];
        v16 = [v27 integerValue];
        break;
      case 5:
        v15 = [v1 limitValue];
        v16 = [v27 limitValue];
        break;
      case 6:
        v10 = [v1 rangeValue];
        v11 = [v27 rangeValue];
        v12 = v11;
        if (v10)
        {
          if (v11)
          {
            type metadata accessor for HomeAttributeRange();
            v8 = sub_252E37694();

            return v8 & 1;
          }

          goto LABEL_36;
        }

        if (!v12)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      default:
        goto LABEL_36;
    }

    v21 = v16;

    v8 = v15 == v21;
    return v8 & 1;
  }

LABEL_10:
  v8 = 0;
  return v8 & 1;
}

uint64_t HomeEntityResponse.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v14);
  if (!v15)
  {
    sub_252982F10(v14);
    goto LABEL_8;
  }

  type metadata accessor for HomeEntityResponse();
  if (swift_dynamicCast())
  {
    v2 = [v1 entity];
    v3 = [v13 entity];
    v4 = v3;
    if (v2)
    {
      if (!v3)
      {

        return v4 & 1;
      }

      type metadata accessor for HomeEntity();
      v5 = sub_252E37694();

      if ((v5 & 1) == 0)
      {

        goto LABEL_8;
      }
    }

    else if (v3)
    {

      goto LABEL_8;
    }

    v7 = [v1 taskResponses];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for HomeUserTaskResponse();
      v9 = sub_252E37264();
    }

    else
    {
      v9 = 0;
    }

    v10 = [v13 taskResponses];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for HomeUserTaskResponse();
      v12 = sub_252E37264();

      if (v9)
      {
        if (v12)
        {
          LOBYTE(v4) = sub_252AE9EA0(v9, v12, type metadata accessor for HomeUserTaskResponse);

          return v4 & 1;
        }

        goto LABEL_21;
      }

      if (v12)
      {

        goto LABEL_8;
      }
    }

    else
    {
      if (v9)
      {
LABEL_21:

        goto LABEL_8;
      }
    }

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_8:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t HomeUserTaskResponse.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v9);
  if (!v10)
  {
    sub_252982F10(v9);
    goto LABEL_12;
  }

  type metadata accessor for HomeUserTaskResponse();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  v2 = [v1 taskOutcome];
  if (v2 != [v8 taskOutcome])
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = [v1 userTask];
  v4 = [v8 userTask];
  v5 = v4;
  if (!v3)
  {

    if (!v5)
    {
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_12;
  }

  if (!v4)
  {

    goto LABEL_11;
  }

  type metadata accessor for HomeUserTask();
  v6 = sub_252E37694();

  return v6 & 1;
}

uint64_t HomeUserTask.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v10);
  if (!v11)
  {
    sub_252982F10(v10);
    goto LABEL_13;
  }

  type metadata accessor for HomeUserTask();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  v2 = [v1 taskType];
  if (v2 != [v9 taskType])
  {
    goto LABEL_12;
  }

  v3 = [v1 attribute];
  if (v3 != [v9 attribute])
  {
    goto LABEL_12;
  }

  v4 = [v1 value];
  v5 = [v9 value];
  v6 = v5;
  if (!v4)
  {

    if (!v6)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_13;
  }

  if (!v5)
  {

LABEL_12:
    goto LABEL_13;
  }

  type metadata accessor for HomeAttributeValue();
  v7 = sub_252E37694();

  return v7 & 1;
}

uint64_t HomeFilter.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v110);
  if (!v111)
  {
    sub_252982F10(v110);
    goto LABEL_142;
  }

  type metadata accessor for HomeFilter();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_142:
    v106 = 0;
    return v106 & 1;
  }

  v2 = [v1 entityIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E37264();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v109 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();

    if (v4)
    {
      if (!v7)
      {
        goto LABEL_127;
      }

      v8 = sub_252AE83F4(v4, v7);

      if ((v8 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    else if (v7)
    {
      goto LABEL_28;
    }
  }

  else if (v4)
  {
    goto LABEL_127;
  }

  v9 = [v1 homeEntityName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v109 homeEntityName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;

    if (v13)
    {
      if (!v18)
      {
        goto LABEL_127;
      }

      if (v11 == v16 && v13 == v18)
      {
      }

      else
      {
        v19 = sub_252E37DB4();

        if ((v19 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v18)
    {
      goto LABEL_28;
    }
  }

  else if (v13)
  {
    goto LABEL_127;
  }

  v20 = [v1 entityType];
  if (v20 != [v109 entityType])
  {
    goto LABEL_141;
  }

  v21 = [v1 outerDeviceType];
  if (v21 != [v109 outerDeviceType])
  {
    goto LABEL_141;
  }

  v22 = [v1 outerDeviceName];
  if (v22)
  {
    v23 = v22;
    v24 = sub_252E36F34();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v109 outerDeviceName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;

    if (v26)
    {
      if (!v31)
      {
        goto LABEL_127;
      }

      if (v24 == v29 && v26 == v31)
      {
      }

      else
      {
        v32 = sub_252E37DB4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v31)
    {
      goto LABEL_28;
    }
  }

  else if (v26)
  {
    goto LABEL_127;
  }

  v33 = [v1 deviceType];
  if (v33 != [v109 deviceType])
  {
    goto LABEL_141;
  }

  v34 = [v1 homeName];
  if (v34)
  {
    v35 = v34;
    v36 = sub_252E36F34();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = [v109 homeName];
  if (v39)
  {
    v40 = v39;
    v41 = sub_252E36F34();
    v43 = v42;

    if (v38)
    {
      if (!v43)
      {
        goto LABEL_127;
      }

      if (v36 == v41 && v38 == v43)
      {
      }

      else
      {
        v44 = sub_252E37DB4();

        if ((v44 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v43)
    {
      goto LABEL_28;
    }
  }

  else if (v38)
  {
    goto LABEL_127;
  }

  v45 = [v1 groupName];
  if (v45)
  {
    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = [v109 groupName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_252E36F34();
    v54 = v53;

    if (v49)
    {
      if (!v54)
      {
        goto LABEL_127;
      }

      if (v47 == v52 && v49 == v54)
      {
      }

      else
      {
        v55 = sub_252E37DB4();

        if ((v55 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v54)
    {
      goto LABEL_28;
    }
  }

  else if (v49)
  {
    goto LABEL_127;
  }

  v56 = [v1 roomName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_252E36F34();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = [v109 roomName];
  if (v61)
  {
    v62 = v61;
    v63 = sub_252E36F34();
    v65 = v64;

    if (v60)
    {
      if (!v65)
      {
        goto LABEL_127;
      }

      if (v58 == v63 && v60 == v65)
      {
      }

      else
      {
        v66 = sub_252E37DB4();

        if ((v66 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v65)
    {
      goto LABEL_28;
    }
  }

  else if (v60)
  {
    goto LABEL_127;
  }

  v67 = [v1 zoneName];
  if (v67)
  {
    v68 = v67;
    v69 = sub_252E36F34();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v72 = [v109 zoneName];
  if (v72)
  {
    v73 = v72;
    v74 = sub_252E36F34();
    v76 = v75;

    if (v71)
    {
      if (!v76)
      {
        goto LABEL_127;
      }

      if (v69 == v74 && v71 == v76)
      {
      }

      else
      {
        v77 = sub_252E37DB4();

        if ((v77 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v76)
    {
      goto LABEL_28;
    }
  }

  else if (v71)
  {
    goto LABEL_127;
  }

  v78 = [v1 targetArea];
  if (v78)
  {
    v79 = v78;
    v80 = sub_252E36F34();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = [v109 targetArea];
  if (!v83)
  {
    if (!v82)
    {
      goto LABEL_117;
    }

    goto LABEL_127;
  }

  v84 = v83;
  v85 = sub_252E36F34();
  v87 = v86;

  if (v82)
  {
    if (v87)
    {
      if (v80 == v85 && v82 == v87)
      {
      }

      else
      {
        v88 = sub_252E37DB4();

        if ((v88 & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_117;
    }

LABEL_127:

    goto LABEL_142;
  }

  if (v87)
  {
    goto LABEL_28;
  }

LABEL_117:
  v89 = [v108 targetMap];
  if (v89)
  {
    v90 = v89;
    v91 = sub_252E36F34();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  v94 = [v109 targetMap];
  if (!v94)
  {
    if (!v93)
    {
      goto LABEL_131;
    }

    goto LABEL_127;
  }

  v95 = v94;
  v96 = sub_252E36F34();
  v98 = v97;

  if (!v93)
  {
    if (!v98)
    {
      goto LABEL_131;
    }

LABEL_28:

    goto LABEL_141;
  }

  if (!v98)
  {
    goto LABEL_127;
  }

  if (v91 == v96 && v93 == v98)
  {
  }

  else
  {
    v99 = sub_252E37DB4();

    if ((v99 & 1) == 0)
    {
      goto LABEL_141;
    }
  }

LABEL_131:
  v100 = [v108 isExcludeFilter];
  v101 = [v109 isExcludeFilter];
  v102 = v101;
  if (!v100)
  {
    if (!v101)
    {
      goto LABEL_137;
    }

LABEL_141:
    goto LABEL_142;
  }

  if (!v101)
  {
LABEL_140:

    goto LABEL_141;
  }

  sub_252956D08();
  v103 = sub_252E37694();

  if ((v103 & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  v100 = [v108 hasAllQuantifier];
  v104 = [v109 hasAllQuantifier];
  v105 = v104;
  if (!v100)
  {

    if (!v105)
    {
      v106 = 1;
      return v106 & 1;
    }

    goto LABEL_142;
  }

  if (!v104)
  {
    goto LABEL_140;
  }

  sub_252956D08();
  v106 = sub_252E37694();

  return v106 & 1;
}

uint64_t sub_252AEB9A8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_252982F10(v10);
  return v8 & 1;
}

unint64_t sub_252AEBA30()
{
  result = qword_27F540F68;
  if (!qword_27F540F68)
  {
    sub_252E32BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540F68);
  }

  return result;
}

unint64_t sub_252AEBA88()
{
  result = qword_27F542ED0[0];
  if (!qword_27F542ED0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A28, &qword_252E3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F542ED0);
  }

  return result;
}

void sub_252AEBAEC(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_28:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v33 = v3 & 0xFFFFFFFFFFFFFF8;
      v34 = v3 & 0xC000000000000001;
      v31 = v4;
      v32 = v3;
      while (1)
      {
        if (v34)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v33 + 16))
          {
            goto LABEL_25;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = [v6 aceId];
        if (v9)
        {
          break;
        }

LABEL_5:
        ++v5;
        if (v8 == v4)
        {
          return;
        }
      }

      v35 = v7;
      v10 = v9;
      v11 = sub_252E36F34();
      v13 = v12;

      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a2;
      v36 = *a2;
      v17 = a2;
      *a2 = 0x8000000000000000;
      v3 = sub_252A44A10(v11, v13);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_26;
      }

      a2 = v18;
      if (v16[3] < v21)
      {
        sub_252DFE838(v21, isUniquelyReferenced_nonNull_native);
        v22 = sub_252A44A10(v11, v13);
        if ((a2 & 1) != (v23 & 1))
        {
          sub_252E37E24();
          __break(1u);
          return;
        }

        v3 = v22;
        v24 = v36;
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        v25 = v24[7];
        v26 = *(v25 + 8 * v3);
        *(v25 + 8 * v3) = MEMORY[0x277D84F90];

LABEL_23:
        a2 = v17;
        *v17 = v24;

        v4 = v31;
        v3 = v32;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v36;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_252E032D8();
        v24 = v36;
        if (a2)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v24[(v3 >> 6) + 8] |= 1 << v3;
      v27 = (v24[6] + 16 * v3);
      *v27 = v11;
      v27[1] = v13;
      *(v24[7] + 8 * v3) = MEMORY[0x277D84F90];
      v28 = v24[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      v24[2] = v30;
      goto LABEL_23;
    }
  }
}

void sub_252AEBD5C(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_252AEEA6C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void *sub_252AEBE50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_252E32E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 aceId];
    if (v16)
    {
      v17 = v16;
      sub_252E36F34();

      sub_252E32E14();

      v18 = *(v7 + 48);
      if (v18(v5, 1, v6) == 1)
      {
        sub_252E32E74();
        if (v18(v5, 1, v6) != 1)
        {
          sub_25293847C(v5, &unk_27F541F20, &qword_252E3C180);
        }
      }

      else
      {
        (*(v7 + 32))(v13, v5, v6);
      }
    }

    else
    {
      sub_252E32E74();
      v13 = v11;
    }

    v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v21 = sub_252E32E44();
    v22 = [v20 initWithNSUUID_];

    (*(v7 + 8))(v13, v6);
    [v15 setCommandId_];

    [v15 setCommandType_];
    v23 = [v1 actionRequests];
    if (v23)
    {
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v24 = sub_252E37264();

      v34 = MEMORY[0x277D84F90];
      if (v24 >> 62)
      {
LABEL_30:
        v25 = sub_252E378C4();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 0;
      while (v25 != v26)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](v26, v24);
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v27 = *(v24 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v30 = sub_252AEC328();

        ++v26;
        if (v30)
        {
          MEMORY[0x2530AD700]();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v31 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v26 = v29;
        }
      }

      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v23 = sub_252E37254();
    }

    [v15 setHomeAutomationRequests_];
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A590, 17);
    return 0;
  }

  return v15;
}

void *sub_252AEC328()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44 - v4;
  v6 = sub_252E32E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 aceId];
    if (v16)
    {
      v17 = v16;
      sub_252E36F34();

      sub_252E32E14();

      v18 = *(v7 + 48);
      if (v18(v5, 1, v6) == 1)
      {
        sub_252E32E74();
        if (v18(v5, 1, v6) != 1)
        {
          sub_25293847C(v5, &unk_27F541F20, &qword_252E3C180);
        }
      }

      else
      {
        (*(v7 + 32))(v13, v5, v6);
      }
    }

    else
    {
      sub_252E32E74();
      v13 = v11;
    }

    v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v21 = sub_252E32E44();
    v22 = [v20 initWithNSUUID_];

    (*(v7 + 8))(v13, v6);
    [v15 setHomeAutomationRequestId_];

    v23 = sub_252AEC8D0();
    if ((v23 & 0x100000000) == 0)
    {
      [v15 setHomeAutomationRequestType_];
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (v24)
    {
      v25 = v24;
      [v15 setHomeAutomationRequestMetadata_];
      v26 = [v1 filter];
      if (v26)
      {
        v27 = v26;
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          v30 = [v15 homeAutomationRequestMetadata];
          if (v30)
          {
            v31 = v30;
            [v30 setSmallestTargetedContainer_];
            v32 = [v29 attribute];
            if (v32)
            {
              v33 = v32;
              sub_252E36F34();

              v34 = sub_252E36FA4();
              v36 = v35;

              v37 = HIBYTE(v36) & 0xF;
              if ((v36 & 0x2000000000000000) == 0)
              {
                v37 = v34 & 0xFFFFFFFFFFFFLL;
              }

              if (v37)
              {
                sub_252E37174();
                v38 = sub_252E36FC4();
                v40 = v39;

                sub_252AD52A0(0xFuLL, 15, v38, v40, v34, v36);
              }

              v41 = sub_252E36F04();

              [v31 setTargetAttribute_];
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v42 = sub_252E36AD4();
      __swift_project_value_buffer(v42, qword_27F544E38);
      sub_252CC4050(0xD00000000000002ELL, 0x8000000252E7A5D0, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A5B0, 54);
    }
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A5B0, 39);
    return 0;
  }

  return v15;
}

unint64_t sub_252AEC8D0()
{
  v1 = [v0 actions];
  if (!v1)
  {
    goto LABEL_29;
  }

  v2 = v1;
  sub_25293F638(0, &qword_27F540368, 0x277D47328);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = [v8 actionType];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = sub_252E36F34();
    v23 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_2529F7A80((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v23;
  }

  while (v5 != v4);
LABEL_24:

  if (*(v6 + 2) != 1)
  {

LABEL_29:
    v21 = 0;
    v20 = 1;
    return v21 | (v20 << 32);
  }

  v17 = *(v6 + 4);
  v18 = *(v6 + 5);

  v19 = sub_252D13FBC(v17, v18);

  v20 = 0;
  v21 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  return v21 | (v20 << 32);
}

uint64_t sub_252AECB14()
{
  v1 = [v0 groupName];
  if (v1)
  {
    v2 = 4;
  }

  else
  {
    v1 = [v0 roomName];
    if (v1)
    {
      v2 = 3;
    }

    else
    {
      v1 = [v0 zoneName];
      if (v1)
      {
        v2 = 2;
      }

      else
      {
        v1 = [v0 homeName];
        if (!v1)
        {
          return 0;
        }

        v2 = 1;
      }
    }
  }

  return v2;
}

id sub_252AECBCC(id *a1, void *a2)
{
  v211 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v219 = &v200 - v7;
  v218 = sub_252E32E84();
  v210 = *(v218 - 8);
  v8 = *(v210 + 64);
  MEMORY[0x28223BE20](v218);
  v217 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v2;
  v10 = [v2 actionResults];
  if (!v10)
  {
    v212 = 0;
    goto LABEL_268;
  }

  v11 = v10;
  sub_25293F638(0, &qword_27F540388, 0x277D47338);
  v12 = sub_252E37264();

  v220 = sub_252AEFBFC(v13);
  v209 = v12;

  v236 = sub_252CC4AC4(MEMORY[0x277D84F90]);
  v14 = [a2 actionRequests];
  if (v14)
  {
    v11 = v14;
    sub_25293F638(0, &qword_27F540358, 0x277D47330);
    v15 = sub_252E37264();

    sub_252AEBAEC(v15, &v236);
    v212 = 0;
  }

  else
  {
    v212 = 0;
  }

  v16 = *(v220 + 64);
  v214 = v220 + 64;
  v17 = 1 << *(v220 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v213 = ((v17 + 63) >> 6);

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v221 = a2;
LABEL_10:
  if (v19)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_313;
    }

    if (v22 >= v213)
    {
      break;
    }

    v19 = *(v214 + 8 * v22);
    ++v20;
    if (v19)
    {
      v20 = v22;
LABEL_15:
      v223 = v20;
      v23 = __clz(__rbit64(v19)) | (v20 << 6);
      v24 = *(v220 + 56);
      v25 = (*(v220 + 48) + 16 * v23);
      v26 = v25[1];
      v230 = *v25;
      v27 = *(v24 + 8 * v23);

      v222 = v27;

      result = [a2 actionRequests];
      if (result)
      {
        v11 = result;
        sub_25293F638(0, &qword_27F540358, 0x277D47330);
        v29 = sub_252E37264();

        if (v29 >> 62)
        {
          v3 = sub_252E378C4();
        }

        else
        {
          v3 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 &= v19 - 1;
        if (!v3)
        {
LABEL_9:

          v20 = v223;
          goto LABEL_10;
        }

        v30 = 0;
        v31 = v29 & 0xC000000000000001;
        v227 = v29 + 32;
        v228 = v29 & 0xFFFFFFFFFFFFFF8;
        v224 = v19;
        v225 = v29;
        v216 = v3;
        v215 = v29 & 0xC000000000000001;
        while (1)
        {
          if (v31)
          {
            v32 = MEMORY[0x2530ADF00](v30, v29);
          }

          else
          {
            if (v30 >= *(v228 + 16))
            {
              goto LABEL_320;
            }

            v32 = *(v227 + 8 * v30);
          }

          v33 = v32;
          v34 = __OFADD__(v30++, 1);
          if (v34)
          {
            goto LABEL_319;
          }

          v35 = [v32 actions];
          if (v35)
          {
            v11 = v35;
            v229 = v33;
            sub_25293F638(0, &qword_27F540368, 0x277D47328);
            v3 = sub_252E37264();

            if (v3 >> 62)
            {
              v36 = sub_252E378C4();
              v226 = v30;
              if (v36)
              {
LABEL_28:
                v37 = 0;
                v231 = v3 & 0xC000000000000001;
                do
                {
                  if (v231)
                  {
                    v38 = MEMORY[0x2530ADF00](v37, v3);
                  }

                  else
                  {
                    if (v37 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_304;
                    }

                    v38 = *(v3 + 8 * v37 + 32);
                  }

                  v11 = v38;
                  v19 = v37 + 1;
                  if (__OFADD__(v37, 1))
                  {
                    __break(1u);
LABEL_304:
                    __break(1u);
                    goto LABEL_305;
                  }

                  v39 = v26;
                  v40 = [v38 aceId];
                  if (v40)
                  {
                    v41 = v40;
                    v42 = sub_252E36F34();
                    v44 = v43;

                    v26 = v39;
                    if (v39)
                    {
                      v45 = v42 == v230 && v39 == v44;
                      if (v45)
                      {

LABEL_53:
                        v47 = v229;
                        result = [v229 aceId];
                        v21 = MEMORY[0x277D84F90];
                        if (!result)
                        {
                          goto LABEL_330;
                        }

                        v48 = result;

                        v49 = sub_252E36F34();
                        v11 = v50;

                        v51 = sub_252AEE95C(&v233, v49, v11);
                        if (*v52)
                        {
                          sub_25297A838(v222);
                        }

                        else
                        {
                        }

                        (v51)(&v233, 0);

                        a2 = v221;
                        v20 = v223;
                        v19 = v224;
                        goto LABEL_10;
                      }

                      v46 = sub_252E37DB4();

                      if (v46)
                      {
                        goto LABEL_51;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    if (!v26)
                    {
LABEL_51:

                      goto LABEL_53;
                    }
                  }

                  ++v37;
                }

                while (v19 != v36);
              }
            }

            else
            {
              v36 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v226 = v30;
              if (v36)
              {
                goto LABEL_28;
              }
            }

            v21 = MEMORY[0x277D84F90];
            a2 = v221;
            v19 = v224;
            v29 = v225;
            v3 = v216;
            v30 = v226;
            v31 = v215;
            if (v226 == v216)
            {
              goto LABEL_9;
            }
          }

          else
          {

            if (v30 == v3)
            {
              goto LABEL_9;
            }
          }
        }
      }

      __break(1u);
LABEL_330:
      __break(1u);
      return result;
    }
  }

  v11 = v220;

  v53 = *(v236 + 64);
  v208 = v236 + 64;
  v54 = 1 << *(v236 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v3 = v55 & v53;
  v207 = (v54 + 63) >> 6;
  v224 = "ound for action outcome ";
  v225 = 0x8000000252E7A3D0;
  v223 = "/Mappers/AceMapper.swift";
  v220 = v210 + 48;
  v213 = (v210 + 32);
  v216 = (v210 + 8);
  v204 = "taskOutcome(from:)";
  v203 = "ion request id: ";
  v202 = "App/ACE/SAHA+Metrics.swift";
  v206 = v236;

  v56 = 0;
LABEL_63:
  v57 = &off_279711000;
LABEL_64:
  if (v3)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_314;
    }

    if (v58 >= v207)
    {
      break;
    }

    v3 = *(v208 + 8 * v58);
    ++v56;
    if (v3)
    {
      v56 = v58;
LABEL_69:
      v209 = v56;
      v59 = __clz(__rbit64(v3)) | (v56 << 6);
      v60 = *(v206 + 56);
      v61 = (*(v206 + 48) + 16 * v59);
      v63 = *v61;
      v62 = v61[1];
      v221 = v63;
      v222 = v62;
      v64 = *(v60 + 8 * v59);
      v235 = v21;
      if (v64 >> 62)
      {
        v65 = sub_252E378C4();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v231 = v64 & 0xC000000000000001;
      v214 = v3;
      v227 = v64;
      v228 = v65;
      if (!v65)
      {
        v230 = v64 & 0xFFFFFFFFFFFFFF8;
        v93 = v21;
        goto LABEL_115;
      }

      v66 = 0;
      v230 = v64 & 0xFFFFFFFFFFFFFF8;
      v226 = (v64 + 32);
      while (2)
      {
        while (2)
        {
          if (v231)
          {
            v67 = MEMORY[0x2530ADF00](v66, v64);
          }

          else
          {
            if (v66 >= *(v230 + 16))
            {
              goto LABEL_311;
            }

            v67 = *&v226[8 * v66];
          }

          v11 = v67;
          v34 = __OFADD__(v66++, 1);
          if (v34)
          {
            goto LABEL_310;
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v68 = qword_27F575C40;
          v69 = [v11 outcome];
          if (!v69)
          {
            v81 = 0;
            if (*(v68 + 16))
            {
              goto LABEL_104;
            }

LABEL_109:
            v65 = v228;
LABEL_110:
            v19 = &v235;
            sub_252E37A94();
            v92 = v235[2];
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            if (v66 == v65)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        v229 = v11;
        v70 = v69;
        v3 = sub_252E36F34();
        v72 = v71;

        if (qword_27F53F6C8 != -1)
        {
          swift_once();
        }

        v11 = 0;
        v73 = off_27F5456C8;
        v74 = off_27F5456C8 + 64;
        v75 = 1 << *(off_27F5456C8 + 32);
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        else
        {
          v76 = -1;
        }

        v77 = v76 & *(off_27F5456C8 + 8);
        v78 = (v75 + 63) >> 6;
        while (2)
        {
          if (v77)
          {
            goto LABEL_92;
          }

          while (2)
          {
            v79 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_299;
            }

            if (v79 >= v78)
            {
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v84 = sub_252E36AD4();
              __swift_project_value_buffer(v84, qword_27F544CB8);
              v233 = 0;
              v234 = 0xE000000000000000;
              sub_252E379F4();

              v233 = 0xD000000000000028;
              v234 = v225;
              MEMORY[0x2530AD570](v3, v72);
              v3 = v234;
              sub_252CC4050(v233, v234, 0xD000000000000078, v224 | 0x8000000000000000, 0xD000000000000012, v223 | 0x8000000000000000, 444);

              v81 = 0;
              goto LABEL_101;
            }

            v77 = *&v74[8 * v79];
            ++v11;
            if (!v77)
            {
              continue;
            }

            break;
          }

          v11 = v79;
LABEL_92:
          v80 = __clz(__rbit64(v77)) | (v11 << 6);
          v81 = *(v73[6] + 8 * v80);
          v82 = (v73[7] + 16 * v80);
          if (*v82 != v3 || v82[1] != v72)
          {
            v77 &= v77 - 1;
            if ((sub_252E37DB4() & 1) == 0)
            {
              continue;
            }
          }

          break;
        }

LABEL_101:

        v57 = &off_279711000;
        v64 = v227;
        v11 = v229;
        if (!*(v68 + 16))
        {
          goto LABEL_109;
        }

LABEL_104:
        v85 = *(v68 + 40);
        sub_252E37EC4();
        v19 = &v233;
        MEMORY[0x2530AE390](v81);
        v86 = sub_252E37F14();
        v87 = v68 + 56;
        v88 = -1 << *(v68 + 32);
        v89 = v86 & ~v88;
        if (((*(v68 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
        {
          goto LABEL_109;
        }

        v90 = ~v88;
        v91 = *(v68 + 48);
        v65 = v228;
        while (*(v91 + 8 * v89) != v81)
        {
          v89 = (v89 + 1) & v90;
          if (((*(v87 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        if (v66 != v65)
        {
          continue;
        }

        break;
      }

LABEL_113:
      v93 = v235;
      v21 = MEMORY[0x277D84F90];
LABEL_115:
      v19 = 0;
      v214 &= v214 - 1;
      v233 = v21;
      v210 = v64 + 32;
      while (v65 != v19)
      {
        if (v231)
        {
          v94 = MEMORY[0x2530ADF00](v19, v64);
        }

        else
        {
          if (v19 >= *(v230 + 16))
          {
            goto LABEL_306;
          }

          v94 = *(v64 + 8 * v19 + 32);
        }

        v95 = v94;
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          v181 = sub_252E378C4();
          goto LABEL_271;
        }

        v96 = [v94 v57[221]];

        ++v19;
        if (v96)
        {
          MEMORY[0x2530AD700]();
          if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v97 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v21 = v233;
          v19 = v11;
        }
      }

      v98 = sub_252DF8A34(v21);

      if (v98 >> 62)
      {
        v201 = sub_252E378C4();
      }

      else
      {
        v201 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v99 = v212;

      v11 = MEMORY[0x277D84F90];
      v235 = MEMORY[0x277D84F90];
      sub_252AEBD5C(v64, &v235);
      v233 = v11;
      v212 = v99;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        v100 = sub_252E378C4();
      }

      else
      {
        v100 = *(v93 + 16);
      }

      v101 = 0;
      v19 = MEMORY[0x277D84F90];
      while (v100 != v101)
      {
        if ((v93 & 0xC000000000000001) != 0)
        {
          v102 = MEMORY[0x2530ADF00](v101, v93);
        }

        else
        {
          if (v101 >= *(v93 + 16))
          {
            goto LABEL_308;
          }

          v102 = *(v93 + 8 * v101 + 32);
        }

        v3 = v102;
        v11 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_307;
        }

        v103 = [v102 v57[221]];

        ++v101;
        if (v103)
        {
          MEMORY[0x2530AD700]();
          if (*((v233 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v104 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v19 = v233;
          v101 = v11;
        }
      }

      v105 = sub_252DF8A34(v19);

      if (v105 >> 62)
      {
        v106 = sub_252E378C4();
      }

      else
      {
        v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v107 = v220;

      v108 = [*v211 homeAutomationRequests];
      if (v108)
      {
        v109 = v108;
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v110 = sub_252E37264();

        if (v110 >> 62)
        {
          v111 = sub_252E378C4();
        }

        else
        {
          v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = v219;
        if (v111)
        {
          v200 = v106;
          v3 = 0;
          v226 = (v110 & 0xC000000000000001);
          v215 = v110 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v226)
            {
              v113 = MEMORY[0x2530ADF00](v3, v110);
              v114 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_315;
              }
            }

            else
            {
              if (v3 >= *(v215 + 16))
              {
                goto LABEL_316;
              }

              v113 = *(v110 + 8 * v3 + 32);
              v114 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_315;
              }
            }

            v229 = v113;
            v115 = [v113 homeAutomationRequestId];
            sub_252E32E14();
            v11 = *v107;
            v116 = v218;
            if ((*v107)(v19, 1, v218) == 1)
            {
              v117 = v217;
              sub_252E32E74();
              if ((v11)(v19, 1, v116) != 1)
              {
                sub_25293847C(v19, &unk_27F541F20, &qword_252E3C180);
              }
            }

            else
            {
              v117 = v217;
              (*v213)(v217, v19, v116);
            }

            v118 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v119 = sub_252E32E44();
            v120 = [v118 initWithNSUUID_];

            (*v216)(v117, v116);
            if (!v115)
            {
              break;
            }

            v107 = v220;
            v112 = v227;
            if (!v120)
            {
              v120 = v115;
LABEL_150:

              goto LABEL_151;
            }

            sub_25293F638(0, &qword_27F543150, 0x277D5AC78);
            v121 = sub_252E37694();

            if (v121)
            {
LABEL_172:

              v124 = v201;
              v19 = v229;
              sub_252C77358(v201);
              v125 = v200;
              sub_252C77A20(v200);
              v222 = v235;
              sub_252C76E8C(v235);
              v57 = &off_279711000;
              if (v125)
              {
                v45 = v125 == v124;
                v21 = MEMORY[0x277D84F90];
                v3 = v214;
                v11 = v228;
                v19 = v229;
                if (v45)
                {
                  v126 = 1;
                }

                else
                {
                  v126 = 3;
                }

                [v229 setHomeAutomationRequestOutcome_];
              }

              else
              {
                [v19 setHomeAutomationRequestOutcome_];
                v21 = MEMORY[0x277D84F90];
                v3 = v214;
                v11 = v228;
              }

              if ([v19 homeAutomationRequestOutcome] == 1)
              {

                goto LABEL_171;
              }

              v232 = v21;
              if (v11)
              {
                v127 = 0;
                while (1)
                {
                  while (1)
                  {
                    if (v231)
                    {
                      v128 = MEMORY[0x2530ADF00](v127, v112);
                    }

                    else
                    {
                      if (v127 >= *(v230 + 16))
                      {
                        goto LABEL_324;
                      }

                      v128 = *(v210 + 8 * v127);
                    }

                    v129 = v128;
                    v34 = __OFADD__(v127++, 1);
                    if (v34)
                    {
                      goto LABEL_323;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v130 = qword_27F575C40;
                    v131 = [v129 outcome];
                    if (v131)
                    {
                      v226 = v129;
                      v132 = v131;
                      v3 = sub_252E36F34();
                      v134 = v133;

                      if (qword_27F53F6C8 != -1)
                      {
                        swift_once();
                      }

                      v11 = 0;
                      v19 = off_27F5456C8;
                      v135 = off_27F5456C8 + 64;
                      v136 = 1 << *(off_27F5456C8 + 32);
                      if (v136 < 64)
                      {
                        v137 = ~(-1 << v136);
                      }

                      else
                      {
                        v137 = -1;
                      }

                      v138 = v137 & *(off_27F5456C8 + 8);
                      v139 = (v136 + 63) >> 6;
                      do
                      {
                        if (!v138)
                        {
                          while (1)
                          {
                            v140 = v11 + 1;
                            if (__OFADD__(v11, 1))
                            {
                              goto LABEL_309;
                            }

                            if (v140 >= v139)
                            {
                              if (qword_27F53F4B0 != -1)
                              {
                                swift_once();
                              }

                              v145 = sub_252E36AD4();
                              v146 = __swift_project_value_buffer(v145, qword_27F544CB8);
                              v233 = 0;
                              v234 = 0xE000000000000000;
                              sub_252E379F4();

                              v233 = 0xD000000000000028;
                              v234 = v225;
                              MEMORY[0x2530AD570](v3, v134);
                              v19 = v146;
                              sub_252CC4050(v233, v234, 0xD000000000000078, v224 | 0x8000000000000000, 0xD000000000000012, v223 | 0x8000000000000000, 444);

                              v142 = 0;
                              goto LABEL_215;
                            }

                            v138 = *&v135[8 * v140];
                            ++v11;
                            if (v138)
                            {
                              v11 = v140;
                              break;
                            }
                          }
                        }

                        v141 = __clz(__rbit64(v138)) | (v11 << 6);
                        v142 = *(*(v19 + 48) + 8 * v141);
                        v143 = (*(v19 + 56) + 16 * v141);
                        if (*v143 == v3 && v143[1] == v134)
                        {
                          break;
                        }

                        v138 &= v138 - 1;
                      }

                      while ((sub_252E37DB4() & 1) == 0);
LABEL_215:

                      v3 = v214;
                      v112 = v227;
                      v11 = v228;
                      v129 = v226;
                      if (*(v130 + 16))
                      {
                        break;
                      }

                      goto LABEL_187;
                    }

                    v142 = 0;
                    if (*(v130 + 16))
                    {
                      break;
                    }

LABEL_187:

                    if (v127 == v11)
                    {
                      goto LABEL_226;
                    }
                  }

                  v147 = *(v130 + 40);
                  sub_252E37EC4();
                  v19 = &v233;
                  MEMORY[0x2530AE390](v142);
                  v148 = sub_252E37F14();
                  v149 = -1 << *(v130 + 32);
                  v150 = v148 & ~v149;
                  if (((*(v130 + 56 + ((v150 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v150) & 1) == 0)
                  {
                    goto LABEL_187;
                  }

                  v151 = ~v149;
                  while (*(*(v130 + 48) + 8 * v150) != v142)
                  {
                    v150 = (v150 + 1) & v151;
                    if (((*(v130 + 56 + ((v150 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v150) & 1) == 0)
                    {
                      goto LABEL_187;
                    }
                  }

                  v19 = &v232;
                  sub_252E37A94();
                  v152 = v232[2];
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  if (v127 == v11)
                  {
LABEL_226:
                    v153 = v232;
                    v21 = MEMORY[0x277D84F90];
                    goto LABEL_228;
                  }
                }
              }

              v153 = v21;
LABEL_228:

              if (v153 < 0 || (v153 & 0x4000000000000000) != 0)
              {
                v154 = sub_252E378C4();
                if (v154)
                {
LABEL_231:
                  v155 = 0;
                  v230 = v153 + 32;
                  v231 = v153 & 0xC000000000000001;
                  v226 = v21;
                  v227 = v154;
                  v228 = v153;
                  while (1)
                  {
                    if (v231)
                    {
                      v158 = MEMORY[0x2530ADF00](v155, v153);
                    }

                    else
                    {
                      if (v155 >= *(v153 + 16))
                      {
                        goto LABEL_326;
                      }

                      v158 = *(v230 + 8 * v155);
                    }

                    v159 = v158;
                    v34 = __OFADD__(v155++, 1);
                    if (v34)
                    {
                      goto LABEL_325;
                    }

                    v160 = [v158 outcome];
                    if (v160)
                    {
                      v19 = v160;
                      v3 = sub_252E36F34();
                      v162 = v161;

                      if (qword_27F53F6C8 != -1)
                      {
                        swift_once();
                      }

                      v163 = 0;
                      v11 = off_27F5456C8;
                      v164 = off_27F5456C8 + 64;
                      v165 = 1 << *(off_27F5456C8 + 32);
                      if (v165 < 64)
                      {
                        v166 = ~(-1 << v165);
                      }

                      else
                      {
                        v166 = -1;
                      }

                      v167 = v166 & *(off_27F5456C8 + 8);
                      v168 = (v165 + 63) >> 6;
                      do
                      {
                        if (!v167)
                        {
                          while (1)
                          {
                            v169 = v163 + 1;
                            if (__OFADD__(v163, 1))
                            {
                              goto LABEL_312;
                            }

                            if (v169 >= v168)
                            {
                              if (qword_27F53F4B0 != -1)
                              {
                                swift_once();
                              }

                              v156 = sub_252E36AD4();
                              v157 = __swift_project_value_buffer(v156, qword_27F544CB8);
                              v233 = 0;
                              v234 = 0xE000000000000000;
                              sub_252E379F4();

                              v11 = 0xD000000000000012;
                              v233 = 0xD000000000000028;
                              v234 = v225;
                              MEMORY[0x2530AD570](v3, v162);
                              v19 = v157;
                              sub_252CC4050(v233, v234, 0xD000000000000078, v224 | 0x8000000000000000, 0xD000000000000012, v223 | 0x8000000000000000, 444);

                              v3 = v214;
                              v154 = v227;
                              v153 = v228;
                              goto LABEL_235;
                            }

                            v167 = *&v164[8 * v169];
                            ++v163;
                            if (v167)
                            {
                              v163 = v169;
                              break;
                            }
                          }
                        }

                        v170 = __clz(__rbit64(v167)) | (v163 << 6);
                        v19 = *(*(v11 + 48) + 8 * v170);
                        v171 = (*(v11 + 56) + 16 * v170);
                        if (*v171 == v3 && v171[1] == v162)
                        {
                          break;
                        }

                        v167 &= v167 - 1;
                      }

                      while ((sub_252E37DB4() & 1) == 0);

                      v19 = sub_252B9ACF0(v19);
                      v174 = v173;

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v3 = v214;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v226 = sub_2529F7A80(0, *(v226 + 2) + 1, 1, v226);
                      }

                      v154 = v227;
                      v153 = v228;
                      v11 = *(v226 + 2);
                      v176 = *(v226 + 3);
                      if (v11 >= v176 >> 1)
                      {
                        v226 = sub_2529F7A80((v176 > 1), v11 + 1, 1, v226);
                      }

                      v177 = v226;
                      *(v226 + 2) = v11 + 1;
                      v178 = &v177[16 * v11];
                      *(v178 + 4) = v19;
                      *(v178 + 5) = v174;
                      if (v155 != v154)
                      {
                        continue;
                      }

                      goto LABEL_266;
                    }

LABEL_235:

                    if (v155 == v154)
                    {
                      goto LABEL_266;
                    }
                  }
                }
              }

              else
              {
                v154 = *(v153 + 16);
                if (v154)
                {
                  goto LABEL_231;
                }
              }

              v226 = v21;
LABEL_266:

              sub_252AD4414(v226);

              v19 = sub_252E37254();
              v21 = MEMORY[0x277D84F90];

              v11 = v229;
              [v229 setHomeAutomationRequestErrorReasons_];

              v56 = v209;
              goto LABEL_63;
            }

LABEL_151:

            ++v3;
            v19 = v219;
            v57 = &off_279711000;
            if (v114 == v111)
            {
              goto LABEL_167;
            }
          }

          v107 = v220;
          v112 = v227;
          if (!v120)
          {
            goto LABEL_172;
          }

          goto LABEL_150;
        }

LABEL_167:
      }

      v3 = v214;
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v122 = sub_252E36AD4();
      v123 = __swift_project_value_buffer(v122, qword_27F544E38);
      v233 = 0;
      v234 = 0xE000000000000000;
      sub_252E379F4();
      v11 = 0xD000000000000012;
      MEMORY[0x2530AD570](0xD000000000000040, v204 | 0x8000000000000000);
      MEMORY[0x2530AD570](v221, v222);

      v19 = v123;
      sub_252CC4050(v233, v234, 0xD00000000000006ALL, v203 | 0x8000000000000000, 0xD000000000000027, v202 | 0x8000000000000000, 156);

      v21 = MEMORY[0x277D84F90];
LABEL_171:
      v56 = v209;
      goto LABEL_64;
    }
  }

LABEL_268:
  v11 = *v211;
  v179 = [*v211 homeAutomationRequests];
  if (v179)
  {
    v180 = v179;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v19 = sub_252E37264();

    v3 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      goto LABEL_327;
    }

    v181 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_271:
    v182 = 0;
    while (v181 != v182)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v183 = MEMORY[0x2530ADF00](v182, v19);
      }

      else
      {
        if (v182 >= *(v3 + 16))
        {
          goto LABEL_318;
        }

        v183 = *(v19 + 8 * v182 + 32);
      }

      v184 = v183;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_317;
      }

      v185 = [v183 homeAutomationRequestOutcome];

      ++v182;
      if (v185 == 2)
      {

        v191 = 2;
        goto LABEL_301;
      }
    }
  }

  v186 = [v205 commandOutcome];
  if (v186)
  {
    v187 = v186;
    v188 = sub_252E36F34();
    v190 = v189;
  }

  else
  {
    v188 = 0;
    v190 = 0;
  }

  v191 = sub_252D143E4(v188, v190);

  if ((v191 & 0x100000000) != 0)
  {
    v193 = [v11 homeAutomationRequests];
    if (v193)
    {
      v194 = v193;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v19 = sub_252E37264();

      v3 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
        v195 = sub_252E378C4();
      }

      else
      {
        v195 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v196 = 0;
      while (v195 != v196)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v197 = MEMORY[0x2530ADF00](v196, v19);
        }

        else
        {
          if (v196 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_322;
          }

          v197 = *(v19 + 8 * v196 + 32);
        }

        v198 = v197;
        if (__OFADD__(v196, 1))
        {
          goto LABEL_321;
        }

        v199 = [v197 homeAutomationRequestOutcome];

        ++v196;
        if (v199 == 3)
        {

          v191 = 3;
          goto LABEL_301;
        }
      }

LABEL_299:
    }

    v191 = 1;
LABEL_301:
    v192 = &selRef_setCommandOutcome_;
  }

  else
  {
    [v11 setCommandOutcome_];
    v192 = &selRef_setCommandErrorReason_;
  }

  return [v11 *v192];
}