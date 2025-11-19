void sub_1DF70C7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF70E410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DF70ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E12DD030](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1DF70F108()
{
  v0 = sub_1DF7112D8();
  __swift_allocate_value_buffer(v0, qword_1EE30A290);
  __swift_project_value_buffer(v0, qword_1EE30A290);
  return sub_1DF7112C8();
}

uint64_t static Logger.content.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30A288 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF7112D8();
  v3 = __swift_project_value_buffer(v2, qword_1EE30A290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t getEnumTagSinglePayload for HealthContentUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthContentUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t ExperienceContext.identifier.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6570795461746164;
  }

  *v0;
  return result;
}

uint64_t ExperienceContext.ArticleContext.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DF711358();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DF70F4D4()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F550()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

void sub_1DF70F5B4(uint64_t a1@<X8>)
{
  strcpy(a1, "dataTypeRoom");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t ExperienceContext.VideoContext.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DF711358();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DF70F6E0()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F754()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F7B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF711358();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DF70F8F8(uint64_t a1)
{
  v2 = sub_1DF710118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70F934(uint64_t a1)
{
  v2 = sub_1DF710118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF70F988()
{
  v1 = *v0;
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](v1);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F9FC()
{
  v1 = *v0;
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](v1);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FA40()
{
  if (*v0)
  {
    result = 0x6F65646976;
  }

  else
  {
    result = 0x656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_1DF70FA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DF7113C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF7113C8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF70FB5C(uint64_t a1)
{
  v2 = sub_1DF71016C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70FB98(uint64_t a1)
{
  v2 = sub_1DF71016C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF70FBD4()
{
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](0);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FC18()
{
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](0);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF7113C8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF70FCE0(uint64_t a1)
{
  v2 = sub_1DF7100C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70FD1C(uint64_t a1)
{
  v2 = sub_1DF7100C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExperienceContext.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1DF710804(0, &qword_1ECE51F70, sub_1DF7100C4, &type metadata for ExperienceContext.VideoCodingKeys, MEMORY[0x1E69E6F58]);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v24 = &v21 - v6;
  sub_1DF710804(0, &qword_1ECE51F80, sub_1DF710118, &type metadata for ExperienceContext.ArticleCodingKeys, v3);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v21 - v9;
  sub_1DF710804(0, &qword_1ECE51F90, sub_1DF71016C, &type metadata for ExperienceContext.CodingKeys, v3);
  v12 = v11;
  v27 = *(v11 - 8);
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v21 - v14;
  LOBYTE(v3) = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF71016C();
  sub_1DF711418();
  if (v3)
  {
    v29 = 1;
    sub_1DF7100C4();
    v17 = v24;
    sub_1DF7113A8();
    sub_1DF710204();
    v18 = v26;
    sub_1DF7113B8();
    (*(v25 + 8))(v17, v18);
  }

  else
  {
    v28 = 0;
    sub_1DF710118();
    sub_1DF7113A8();
    sub_1DF710258();
    v19 = v23;
    sub_1DF7113B8();
    (*(v22 + 8))(v10, v19);
  }

  return (*(v27 + 8))(v15, v12);
}

unint64_t sub_1DF7100C4()
{
  result = qword_1ECE51F78;
  if (!qword_1ECE51F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F78);
  }

  return result;
}

unint64_t sub_1DF710118()
{
  result = qword_1ECE51F88;
  if (!qword_1ECE51F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F88);
  }

  return result;
}

unint64_t sub_1DF71016C()
{
  result = qword_1ECE51F98;
  if (!qword_1ECE51F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F98);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DF710204()
{
  result = qword_1ECE51FA0;
  if (!qword_1ECE51FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FA0);
  }

  return result;
}

unint64_t sub_1DF710258()
{
  result = qword_1ECE51FA8;
  if (!qword_1ECE51FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FA8);
  }

  return result;
}

uint64_t ExperienceContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DF710804(0, &qword_1ECE51FB0, sub_1DF7100C4, &type metadata for ExperienceContext.VideoCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v37 = &v33 - v7;
  sub_1DF710804(0, &qword_1ECE51FB8, sub_1DF710118, &type metadata for ExperienceContext.ArticleCodingKeys, v3);
  v9 = v8;
  v34 = *(v8 - 8);
  v10 = (*(v34 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v33 - v11;
  sub_1DF710804(0, &qword_1ECE51FC0, sub_1DF71016C, &type metadata for ExperienceContext.CodingKeys, v3);
  v14 = v13;
  v39 = *(v13 - 8);
  v15 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v17 = &v33 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF71016C();
  v19 = v40;
  sub_1DF711408();
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = v37;
  v21 = v38;
  v40 = a1;
  v22 = sub_1DF711398();
  if (*(v22 + 16) != 1)
  {
    v24 = sub_1DF711348();
    swift_allocError();
    v26 = v25;
    sub_1DF7108B8();
    v27 = v17;
    v29 = *(v28 + 48);
    *v26 = &type metadata for ExperienceContext;
    sub_1DF711378();
    sub_1DF711328();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v39 + 8))(v27, v14);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v33 = v22;
  v41 = *(v22 + 32);
  if (v41)
  {
    v43 = 1;
    sub_1DF7100C4();
    sub_1DF711368();
    v34 = v17;
    sub_1DF710974();
    v23 = v35;
    sub_1DF711388();
    (*(v36 + 8))(v20, v23);
    v32 = v39;
    v17 = v34;
  }

  else
  {
    v42 = 0;
    sub_1DF710118();
    sub_1DF711368();
    sub_1DF7109C8();
    sub_1DF711388();
    (*(v34 + 1))(v12, v9);
    v32 = v39;
  }

  (*(v32 + 8))(v17, v14);
  swift_unknownObjectRelease();
  *v21 = v41;
  v30 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void sub_1DF710804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x1EEE6C0A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1DF7108B8()
{
  if (!qword_1ECE51FC8)
  {
    sub_1DF710928();
    sub_1DF711338();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE51FC8);
    }
  }
}

unint64_t sub_1DF710928()
{
  result = qword_1ECE51FD0;
  if (!qword_1ECE51FD0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECE51FD0);
  }

  return result;
}

unint64_t sub_1DF710974()
{
  result = qword_1ECE51FD8;
  if (!qword_1ECE51FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FD8);
  }

  return result;
}

unint64_t sub_1DF7109C8()
{
  result = qword_1ECE51FE0;
  if (!qword_1ECE51FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FE0);
  }

  return result;
}

unint64_t sub_1DF710A20()
{
  result = qword_1ECE51FE8;
  if (!qword_1ECE51FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FE8);
  }

  return result;
}

unint64_t sub_1DF710A78()
{
  result = qword_1ECE51FF0;
  if (!qword_1ECE51FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExperienceContext(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ExperienceContext(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExperienceContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExperienceContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF710DF0()
{
  result = qword_1ECE51FF8;
  if (!qword_1ECE51FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FF8);
  }

  return result;
}

unint64_t sub_1DF710E48()
{
  result = qword_1ECE52000;
  if (!qword_1ECE52000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52000);
  }

  return result;
}

unint64_t sub_1DF710EA0()
{
  result = qword_1ECE52008;
  if (!qword_1ECE52008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52008);
  }

  return result;
}

unint64_t sub_1DF710EF8()
{
  result = qword_1ECE52010;
  if (!qword_1ECE52010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52010);
  }

  return result;
}

unint64_t sub_1DF710F50()
{
  result = qword_1ECE52018;
  if (!qword_1ECE52018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52018);
  }

  return result;
}

unint64_t sub_1DF710FA8()
{
  result = qword_1ECE52020;
  if (!qword_1ECE52020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52020);
  }

  return result;
}

unint64_t sub_1DF711000()
{
  result = qword_1ECE52028;
  if (!qword_1ECE52028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52028);
  }

  return result;
}

unint64_t sub_1DF711058()
{
  result = qword_1ECE52030;
  if (!qword_1ECE52030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52030);
  }

  return result;
}

unint64_t sub_1DF7110B0()
{
  result = qword_1ECE52038;
  if (!qword_1ECE52038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52038);
  }

  return result;
}

unint64_t sub_1DF711104()
{
  result = qword_1ECE52040;
  if (!qword_1ECE52040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52040);
  }

  return result;
}

unint64_t sub_1DF711158()
{
  result = qword_1ECE52048;
  if (!qword_1ECE52048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52048);
  }

  return result;
}