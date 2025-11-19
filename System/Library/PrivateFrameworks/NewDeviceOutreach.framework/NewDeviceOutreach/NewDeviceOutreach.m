id _NDOLogSystem()
{
  if (_NDOLogSystem_onceToken != -1)
  {
    _NDOLogSystem_cold_1();
  }

  v1 = _NDOLogSystem_log;

  return v1;
}

uint64_t sub_25BD53C0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_25BD796A8();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_25BD54D60(v4, v9);
}

uint64_t type metadata accessor for NDOWarrantyProperties()
{
  result = qword_28145A900;
  if (!qword_28145A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD53D04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BD53D58(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25BD53DFC()
{
  result = qword_28145AAA0;
  if (!qword_28145AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AAA0);
  }

  return result;
}

uint64_t sub_25BD53E50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD53E88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BD53EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25BD54028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25BD79678();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0B8, &qword_25BD7C4A0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  v11 = type metadata accessor for NDOWarrantyProperties();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD53DFC();
  sub_25BD79A08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v16 = v6;
  v18 = v26;
  v17 = v27;
  v32 = 0;
  *v14 = sub_25BD79938();
  *(v14 + 1) = v19;
  v23[1] = v19;
  v31 = 1;
  v14[16] = sub_25BD79948() & 1;
  v30 = 2;
  *(v14 + 3) = sub_25BD79938();
  *(v14 + 4) = v20;
  v29 = 3;
  *(v14 + 5) = sub_25BD79918();
  *(v14 + 6) = v21;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v28 = 4;
  sub_25BD53E88(qword_28145A630);
  sub_25BD79928();
  (*(v18 + 8))(v10, v17);
  sub_25BD5472C(v16, &v14[*(v11 + 32)]);
  sub_25BD546C8(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_25BD72DF0(v14, type metadata accessor for NDOWarrantyProperties);
}

uint64_t sub_25BD544D8()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x6567617265766F63;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466656854736168;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for NDOWarrantyProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BD546C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD5472C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD547B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25BD54950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25BD54A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD54A64()
{
  if (qword_28145A7D0 != -1)
  {
    swift_once();
  }

  v0 = sub_25BD79748();

  return __swift_project_value_buffer(v0, qword_28145AAB0);
}

uint64_t sub_25BD54AC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BD54B94(v11, 0, 0, 1, a1, a2);
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
    sub_25BD55514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BD54B94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BD740A8(a5, a6);
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
    result = sub_25BD798F8();
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

void sub_25BD54CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25BD79608();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25BD54D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BD54D74(a1, a2);
  }

  return a1;
}

uint64_t sub_25BD54D74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BD54DF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25BD79678();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25BD54F54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD54F8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v7 = sub_25BD79748();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NDOSignpost();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  sub_25BD7495C(2u, &v34 - v17);
  v37 = v18;
  sub_25BD74604(v18, v16, type metadata accessor for NDOSignpost);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = v7;
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  *(v21 + 24) = a5;
  sub_25BD7459C(v16, v21 + v19, type metadata accessor for NDOSignpost);

  v22 = sub_25BD54A64();
  (*(v8 + 16))(v11, v22, v7);

  v23 = sub_25BD79728();
  v24 = sub_25BD79838();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 134218242;
    *(v25 + 4) = v34;
    *(v25 + 12) = 2080;
    v27 = v36;
    *(v25 + 14) = sub_25BD54AC8(v36, a2, aBlock);
    _os_log_impl(&dword_25BD52000, v23, v24, "Cached coverage details requested by %lu for serial number %s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x25F87B060](v26, -1, -1);
    MEMORY[0x25F87B060](v25, -1, -1);

    (*(v8 + 8))(v11, v20);
    v28 = v27;
  }

  else
  {

    (*(v8 + 8))(v11, v20);
    v28 = v36;
  }

  v29 = [objc_allocWithZone(NDOManager) init];
  v30 = sub_25BD797A8();
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = a2;
  v31[4] = sub_25BD744A0;
  v31[5] = v21;
  aBlock[4] = sub_25BD7452C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BD53C0C;
  aBlock[3] = &block_descriptor;
  v32 = _Block_copy(aBlock);

  [v29 getCoverageInfoForSerialNumber:v30 usingPolicy:1 withReply:v32];
  _Block_release(v32);

  return sub_25BD74538(v37, type metadata accessor for NDOSignpost);
}

uint64_t sub_25BD553C8()
{
  v1 = *(type metadata accessor for NDOSignpost() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_25BD79718();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD5549C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25BD55514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BD55B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BD79718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25BD55C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BD79718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25BD55CBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void sub_25BD5B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD5C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5E9D8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_25BD63384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_25BD69534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD6AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD6B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_25BD6C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD6CF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t sub_25BD6D1D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BD79718();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for NDOSignpost()
{
  result = qword_27FBDC2A0;
  if (!qword_27FBDC2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD6D2AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDC198;
  }

  v5 = *v4;
  sub_25BD79708();
  result = type metadata accessor for NDOSignpost();
  *(a2 + *(result + 20)) = a1;
  return result;
}

id sub_25BD6D370(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDC198;
  }

  v2 = *v1;

  return v2;
}

const char *sub_25BD6D418(char a1)
{
  if (!a1)
  {
    return "loadCoverageCentral";
  }

  if (a1 == 1)
  {
    return "loadCoverage";
  }

  return "getCachedCoverageDetails";
}

uint64_t sub_25BD6D498(unsigned __int8 a1)
{
  sub_25BD799D8();
  MEMORY[0x25F87A830](a1);
  return sub_25BD799F8();
}

uint64_t sub_25BD6D4F4()
{
  v1 = *v0;
  sub_25BD799D8();
  MEMORY[0x25F87A830](v1);
  return sub_25BD799F8();
}

uint64_t sub_25BD6D568()
{
  v1 = *v0;
  sub_25BD799D8();
  MEMORY[0x25F87A830](v1);
  return sub_25BD799F8();
}

void sub_25BD6D5AC()
{
  sub_25BD79848();
  if (*(v0 + *(type metadata accessor for NDOSignpost() + 20)) >= 2u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDC198;
  }

  v2 = v1;
  sub_25BD796F8();
}

uint64_t sub_25BD6D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25BD6D9D0();
  v5 = sub_25BD7781C();
  v6 = *v5;
  v7 = v5[1];

  result = sub_25BD79888();
  *a4 = result;
  return result;
}

unint64_t sub_25BD6D77C()
{
  result = qword_27FBDBEE0;
  if (!qword_27FBDBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDBEE0);
  }

  return result;
}

uint64_t sub_25BD6D7F8()
{
  result = sub_25BD79718();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOSignpost.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOSignpost.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BD6D9D0()
{
  result = qword_27FBDBEE8;
  if (!qword_27FBDBEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDBEE8);
  }

  return result;
}

uint64_t NDOAMSProperties.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25BD6E1E0(v1 + OBJC_IVAR___NDOAMSProperties__url, v7, &qword_27FBDBEF8, &qword_25BD7C070);
  if (v7[3])
  {
    v3 = sub_25BD79678();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_25BD6E248(v7, &qword_27FBDBEF8, &qword_25BD7C070);
    v6 = sub_25BD79678();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
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

uint64_t NDOAMSProperties.bodyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSProperties_bodyData);
  sub_25BD53D04(v1, *(v0 + OBJC_IVAR___NDOAMSProperties_bodyData + 8));
  return v1;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_25BD79678();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    v9 = sub_25BD79638();
    (*(v8 + 8))(a1, v7);
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_25BD79768();

  v12 = sub_25BD79688();
  v13 = [v10 initWithUrl:v9 signatureHeaders:v11 bodyData:v12];

  sub_25BD54D74(a3, a4);
  return v13;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  sub_25BD6E1E0(a1, &v21 - v11, &qword_27FBDBF18, &qword_25BD7C078);
  v13 = sub_25BD79678();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25BD6E248(v12, &qword_27FBDBF18, &qword_25BD7C078);
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    *(&v23 + 1) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(v14 + 32))(boxed_opaque_existential_0, v12, v13);
  }

  v16 = &v4[OBJC_IVAR___NDOAMSProperties__url];
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;
  v18 = &v4[OBJC_IVAR___NDOAMSProperties_bodyData];
  *v18 = a3;
  v18[1] = a4;
  *&v4[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = a2;
  v4[OBJC_IVAR___NDOAMSProperties_presentModally] = 0;
  v21.receiver = v4;
  v21.super_class = NDOAMSProperties;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_25BD6E248(a1, &qword_27FBDBF18, &qword_25BD7C078);
  return v19;
}

uint64_t sub_25BD6E1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BD6E248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_25BD79678();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(a1, 1, v9) != 1)
  {
    v11 = sub_25BD79638();
    (*(v10 + 8))(a1, v9);
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_25BD79768();

  v14 = sub_25BD79688();
  v15 = [v12 initWithUrl:v11 signatureHeaders:v13 bodyData:v14 presentModally:a5 & 1];

  sub_25BD54D74(a3, a4);
  return v15;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  sub_25BD6E1E0(a1, &v23 - v13, &qword_27FBDBF18, &qword_25BD7C078);
  v15 = sub_25BD79678();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25BD6E248(v14, &qword_27FBDBF18, &qword_25BD7C078);
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v25 + 1) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(v16 + 32))(boxed_opaque_existential_0, v14, v15);
  }

  v18 = &v5[OBJC_IVAR___NDOAMSProperties__url];
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  v20 = &v5[OBJC_IVAR___NDOAMSProperties_bodyData];
  *v20 = a3;
  v20[1] = a4;
  *&v5[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = a2;
  v5[OBJC_IVAR___NDOAMSProperties_presentModally] = a5 & 1;
  v23.receiver = v5;
  v23.super_class = NDOAMSProperties;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_25BD6E248(a1, &qword_27FBDBF18, &qword_25BD7C078);
  return v21;
}

id NDOAMSProperties.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = sub_25BD79748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  sub_25BD6F2F4(0, &unk_27FBDBF20, 0x277CBEA90);
  v16 = sub_25BD79868();
  if (v16)
  {
    v41 = xmmword_25BD7C060;
    v17 = v16;
    sub_25BD79698();

    v18 = *(&v41 + 1);
    if (*(&v41 + 1) >> 60 != 15)
    {
      v19 = v41;
      sub_25BD6F2F4(0, &unk_27FBDC150, 0x277CCACA8);
      v20 = sub_25BD79878();
      if (v20)
      {
        *&v41 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDBF30, &qword_25BD7C080);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
        if (swift_dynamicCast())
        {
          v21 = v43;
          sub_25BD6F2F4(0, &unk_27FBDBF40, 0x277CBEBC0);
          v22 = sub_25BD79868();
          if (v22)
          {
            v23 = v22;
            sub_25BD79658();

            v24 = 0;
          }

          else
          {
            v24 = 1;
          }

          v31 = sub_25BD79678();
          v32 = *(v31 - 8);
          (*(v32 + 56))(v13, v24, 1, v31);
          sub_25BD6F33C(v13, v15);
          if ((*(v32 + 48))(v15, 1, v31) == 1)
          {
            sub_25BD6E248(v15, &qword_27FBDBF18, &qword_25BD7C078);
            v41 = 0u;
            v42 = 0u;
          }

          else
          {
            *(&v42 + 1) = v31;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
            (*(v32 + 32))(boxed_opaque_existential_0, v15, v31);
          }

          v34 = &v2[OBJC_IVAR___NDOAMSProperties__url];
          v35 = v42;
          *v34 = v41;
          v34[1] = v35;
          v36 = &v2[OBJC_IVAR___NDOAMSProperties_bodyData];
          *v36 = v19;
          v36[1] = v18;
          *&v2[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = v21;
          sub_25BD53D04(v19, v18);
          v37 = sub_25BD797A8();
          v38 = [a1 decodeBoolForKey_];
          sub_25BD54D60(v19, v18);

          v2[OBJC_IVAR___NDOAMSProperties_presentModally] = v38;
          v40.receiver = v2;
          v40.super_class = NDOAMSProperties;
          v39 = objc_msgSendSuper2(&v40, sel_init);

          return v39;
        }
      }

      sub_25BD54D60(v19, v18);
    }
  }

  v25 = sub_25BD54A64();
  (*(v5 + 16))(v8, v25, v4);
  v26 = sub_25BD79728();
  v27 = sub_25BD79828();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25BD52000, v26, v27, "Unable to decode from coder", v28, 2u);
    MEMORY[0x25F87B060](v28, -1, -1);
  }

  v29 = (*(v5 + 8))(v8, v4);
  type metadata accessor for NDOAMSProperties(v29);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall NDOAMSProperties.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_25BD79678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 url];
  if (v9)
  {
    v10 = v9;
    sub_25BD79658();

    v11 = sub_25BD79638();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = [v2 bodyData];
  v14 = sub_25BD796A8();
  v16 = v15;

  v17 = sub_25BD79688();
  sub_25BD54D74(v14, v16);
  v18 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = [v2 signatureHeaders];
  sub_25BD79778();

  v20 = sub_25BD79768();

  v21 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = [v2 presentModally];
  v23 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeBool:v22 forKey:v23];
}

id NDOAMSProperties.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25BD6F2F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BD6F33C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_25BD6F4A4(v3, a1);
}

uint64_t sub_25BD6F4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD6F524()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BD6F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BD71E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BD6F5F0(uint64_t a1)
{
  v2 = sub_25BD7149C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD6F62C(uint64_t a1)
{
  v2 = sub_25BD7149C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC018, &qword_25BD7C0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD7149C();
  sub_25BD79A18();
  v20[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_25BD714F0(&qword_27FBDC020, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25BD799A8();
  if (!v2)
  {
    v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    sub_25BD79968();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    sub_25BD79968();
    v18 = v11[7];
    v20[12] = 3;
    sub_25BD796C8();
    sub_25BD714F0(&qword_27FBDC028, MEMORY[0x277CC9578]);
    sub_25BD79978();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC030, &qword_25BD7C0B0);
  v31 = *(v35 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v31 - v11;
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD7149C();
  v33 = v12;
  v18 = v36;
  sub_25BD79A08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v6;
  v19 = v16;
  v20 = v31;
  v21 = v32;
  v40 = 0;
  sub_25BD714F0(&qword_27FBDC038, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25BD79958();
  sub_25BD71538(v34, v19);
  v39 = 1;
  v22 = sub_25BD79918();
  v23 = (v19 + v13[5]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 2;
  v25 = sub_25BD79918();
  v26 = a1;
  v27 = (v19 + v13[6]);
  *v27 = v25;
  v27[1] = v28;
  sub_25BD796C8();
  v37 = 3;
  sub_25BD714F0(&qword_27FBDC040, MEMORY[0x277CC9578]);
  v29 = v36;
  sub_25BD79928();
  (*(v20 + 8))(v33, v35);
  sub_25BD7159C(v29, v19 + v13[7]);
  sub_25BD7160C(v19, v21, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_25BD71674(v19, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t sub_25BD6FD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25BD71538(a1, a7);
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = (a7 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + v13[6]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a7 + v13[7];

  return sub_25BD7159C(a6, v16);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = sub_25BD79678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 24));
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 28));
}

uint64_t sub_25BD6FF24(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25BD70E94(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25BD799C8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25BD700C8()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BD70144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BD71FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BD7016C(uint64_t a1)
{
  v2 = sub_25BD716D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD701A8(uint64_t a1)
{
  v2 = sub_25BD716D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC048, &qword_25BD7C0B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD716D4();
  sub_25BD79A18();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_25BD79988();
  if (!v2)
  {
    v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    v14 = v13[5];
    LOBYTE(v18) = 1;
    sub_25BD79678();
    sub_25BD714F0(&qword_27FBDC050, MEMORY[0x277CC9260]);
    sub_25BD799A8();
    v18 = *(v3 + v13[6]);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
    sub_25BD71770(&qword_27FBDC058);
    sub_25BD799A8();
    v18 = *(v3 + v13[7]);
    v17 = 3;
    sub_25BD799A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_25BD79678();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC060, &qword_25BD7C0C8);
  v23 = *(v26 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD716D4();
  v25 = v9;
  v15 = v27;
  sub_25BD79A08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v17 = v23;
  v16 = v24;
  LOBYTE(v29) = 0;
  *v13 = sub_25BD79938();
  v13[1] = v18;
  v21[2] = v18;
  LOBYTE(v29) = 1;
  sub_25BD714F0(&qword_27FBDC068, MEMORY[0x277CC9260]);
  sub_25BD79958();
  (*(v16 + 32))(v13 + v10[5], v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
  v28 = 2;
  v21[0] = sub_25BD71770(&qword_27FBDC070);
  v21[1] = 0;
  sub_25BD79958();
  v19 = v27;
  *(v13 + v10[6]) = v29;
  v28 = 3;
  sub_25BD79958();
  (*(v17 + 8))(v25, v26);
  *(v13 + v10[7]) = v29;
  sub_25BD7160C(v13, v22, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_25BD71674(v13, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

uint64_t sub_25BD708D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = v10[5];
  v12 = sub_25BD79678();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  *&a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_25BD796C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25BD6F4A4(v0 + *(v10 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25BD6E248(v4, &qword_27FBDC010, &qword_25BD7C0A0);
    return 1;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_25BD796B8();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    return v13 > 0.0;
  }
}

uint64_t NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  v6 = sub_25BD796C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25BD6F4A4(v1 + v11[7], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25BD6E248(v5, &qword_27FBDC010, &qword_25BD7C0A0);
LABEL_12:
    v21 = (v1 + v11[5]);
    v20 = *v21;
    v22 = v21[1];

    return v20;
  }

  (*(v7 + 32))(v10, v5, v6);
  result = sub_25BD796B8();
  v14 = ceil(v13 / 86400.0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 9.22337204e18)
  {
    v15 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v15 <= 1 || (v16 = (v1 + v11[6]), (v17 = v16[1]) == 0))
      {
        (*(v7 + 8))(v10, v6);
        goto LABEL_12;
      }

      v28 = *v16;
      v29 = v17;
      v27[0] = 16421;
      v27[1] = 0xE200000000000000;
      sub_25BD717DC();
      v18 = MEMORY[0x277D837D0];
      v19 = *(sub_25BD798A8() + 16);

      if (v19 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC080, &qword_25BD7C0D0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_25BD7C090;
        v28 = v15;
        v24 = sub_25BD799B8();
        v26 = v25;
        *(v23 + 56) = v18;
        *(v23 + 64) = sub_25BD71830();
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v20 = sub_25BD797C8();
        (*(v7 + 8))(v10, v6);
        return v20;
      }
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_25BD70E94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25BD799D8();
  sub_25BD797E8();
  v6 = sub_25BD799F8();

  return sub_25BD70F0C(a1, a2, v6);
}

unint64_t sub_25BD70F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25BD799C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s17NewDeviceOutreach41NDOSettingsCoverageSectionOfferPropertiesV4LinkV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v6 = v5[5];
  if ((sub_25BD79648() & 1) == 0 || (sub_25BD6FF24(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[7];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_25BD6FF24(v8, v9);
}

BOOL _s17NewDeviceOutreach41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25BD796C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC090, &qword_25BD7C480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v18 = v17[5];
  if ((sub_25BD79648() & 1) == 0 || (sub_25BD6FF24(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_25BD6FF24(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v20 = v19[5];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v25 = v19;
      v26 = sub_25BD799C8();
      v19 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = v19[6];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v32 = v19;
      v33 = sub_25BD799C8();
      v19 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = v19[7];
  v35 = *(v13 + 48);
  sub_25BD6F4A4(a1 + v34, v16);
  sub_25BD6F4A4(a2 + v34, &v16[v35]);
  v36 = *(v5 + 48);
  if (v36(v16, 1, v4) == 1)
  {
    if (v36(&v16[v35], 1, v4) == 1)
    {
      sub_25BD6E248(v16, &qword_27FBDC010, &qword_25BD7C0A0);
      return 1;
    }

    goto LABEL_26;
  }

  sub_25BD6F4A4(v16, v12);
  if (v36(&v16[v35], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_26:
    sub_25BD6E248(v16, &qword_27FBDC090, &qword_25BD7C480);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v35], v4);
  sub_25BD714F0(&qword_27FBDC098, MEMORY[0x277CC9578]);
  v38 = sub_25BD79798();
  v39 = *(v5 + 8);
  v39(v8, v4);
  v39(v12, v4);
  sub_25BD6E248(v16, &qword_27FBDC010, &qword_25BD7C0A0);
  return (v38 & 1) != 0;
}

unint64_t sub_25BD7149C()
{
  result = qword_27FBDC2C0;
  if (!qword_27FBDC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC2C0);
  }

  return result;
}

uint64_t sub_25BD714F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BD71538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD7159C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD7160C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BD71674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25BD716D4()
{
  result = qword_27FBDC2C8[0];
  if (!qword_27FBDC2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC2C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25BD71770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDC160, &qword_25BD7C0C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BD717DC()
{
  result = qword_27FBDC078;
  if (!qword_27FBDC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC078);
  }

  return result;
}

unint64_t sub_25BD71830()
{
  result = qword_27FBDC088;
  if (!qword_27FBDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC088);
  }

  return result;
}

void sub_25BD71884()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v0 <= 0x3F)
  {
    sub_25BD71920();
    if (v1 <= 0x3F)
    {
      sub_25BD71970();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25BD71920()
{
  if (!qword_28145A590)
  {
    v0 = sub_25BD79898();
    if (!v1)
    {
      atomic_store(v0, &qword_28145A590);
    }
  }
}

void sub_25BD71970()
{
  if (!qword_28145A758)
  {
    sub_25BD796C8();
    v0 = sub_25BD79898();
    if (!v1)
    {
      atomic_store(v0, &qword_28145A758);
    }
  }
}

void sub_25BD719C8()
{
  sub_25BD79678();
  if (v0 <= 0x3F)
  {
    sub_25BD71A5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BD71A5C()
{
  if (!qword_28145A598[0])
  {
    v0 = sub_25BD79788();
    if (!v1)
    {
      atomic_store(v0, qword_28145A598);
    }
  }
}

uint64_t sub_25BD71ACC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25BD71B60(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BD71C24()
{
  result = qword_27FBDC650[0];
  if (!qword_27FBDC650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC650);
  }

  return result;
}

unint64_t sub_25BD71C7C()
{
  result = qword_27FBDC860[0];
  if (!qword_27FBDC860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC860);
  }

  return result;
}

unint64_t sub_25BD71CD4()
{
  result = qword_27FBDC970;
  if (!qword_27FBDC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC970);
  }

  return result;
}

unint64_t sub_25BD71D2C()
{
  result = qword_27FBDC978;
  if (!qword_27FBDC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC978);
  }

  return result;
}

unint64_t sub_25BD71D84()
{
  result = qword_27FBDCA00;
  if (!qword_27FBDCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDCA00);
  }

  return result;
}

unint64_t sub_25BD71DDC()
{
  result = qword_27FBDCA08[0];
  if (!qword_27FBDCA08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDCA08);
  }

  return result;
}

uint64_t sub_25BD71E30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25BD71FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BD7EA10 == a2 || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t NDOWarrantyProperties.serialNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties() + 32);

  return sub_25BD72214(v3, a1);
}

uint64_t sub_25BD72214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD72288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BD72C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BD722BC(uint64_t a1)
{
  v2 = sub_25BD53DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD722F8(uint64_t a1)
{
  v2 = sub_25BD53DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOWarrantyProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A8, &qword_25BD7C498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD53DFC();
  sub_25BD79A18();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_25BD79988();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v20[14] = 1;
    sub_25BD79998();
    v14 = v3[3];
    v15 = v3[4];
    v20[13] = 2;
    sub_25BD79988();
    v16 = v3[5];
    v17 = v3[6];
    v20[12] = 3;
    sub_25BD79968();
    v18 = *(type metadata accessor for NDOWarrantyProperties() + 32);
    v20[11] = 4;
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    sub_25BD53E88(&qword_27FBDC0B0);
    sub_25BD79978();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BD7257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v10 = a9 + *(type metadata accessor for NDOWarrantyProperties() + 32);

  return sub_25BD5472C(a8, v10);
}

BOOL _s17NewDeviceOutreach21NDOWarrantyPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0C0, &unk_25BD7C690);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25BD799C8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (!v19 || (*(a1 + 40) != *(a2 + 40) || v18 != v19) && (sub_25BD799C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(type metadata accessor for NDOWarrantyProperties() + 32);
  v21 = *(v13 + 48);
  sub_25BD72214(a1 + v20, v16);
  sub_25BD72214(a2 + v20, &v16[v21]);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_25BD6E248(v16, &qword_27FBDC0A0, &qword_25BD7C490);
      return 1;
    }

    goto LABEL_22;
  }

  sub_25BD72214(v16, v12);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_25BD72DF0(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
LABEL_22:
    sub_25BD6E248(v16, &qword_27FBDC0C0, &unk_25BD7C690);
    return 0;
  }

  sub_25BD72E50(&v16[v21], v8);
  sub_25BD53E88(&qword_27FBDC0C8);
  v23 = sub_25BD79798();
  sub_25BD72DF0(v8, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_25BD72DF0(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_25BD6E248(v16, &qword_27FBDC0A0, &qword_25BD7C490);
  return (v23 & 1) != 0;
}

void sub_25BD7297C()
{
  sub_25BD71920();
  if (v0 <= 0x3F)
  {
    sub_25BD72A20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BD72A20()
{
  if (!qword_28145A5F8[0])
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v0 = sub_25BD79898();
    if (!v1)
    {
      atomic_store(v0, qword_28145A5F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDOWarrantyProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_25BD72B1C()
{
  result = qword_27FBDCB90[0];
  if (!qword_27FBDCB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDCB90);
  }

  return result;
}

unint64_t sub_25BD72B74()
{
  result = qword_28145AA90;
  if (!qword_28145AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AA90);
  }

  return result;
}

unint64_t sub_25BD72BCC()
{
  result = qword_28145AA98;
  if (!qword_28145AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AA98);
  }

  return result;
}

uint64_t sub_25BD72C20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BD7EA30 == a2 || (sub_25BD799C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025BD7EA50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25BD72DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BD72E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BD72EB4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25BD797A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27FBDCCA8 = v2;
}

uint64_t *sub_25BD72F50()
{
  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  return &qword_27FBDCCA8;
}

id static NDODeviceServicesInternalDebugHelpers.preferences.getter()
{
  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FBDCCA8;

  return v1;
}

uint64_t static NDODeviceServicesInternalDebugHelpers.getLocalURLOverridesForDeviceServices()()
{
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  v0 = qword_27FBDCCA8;
  v1 = sub_25BD797A8();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_25BD797B8();

  return v3;
}

id NDODeviceServicesInternalDebugHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDODeviceServicesInternalDebugHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NDODeviceServicesInternalDebugHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BD73374()
{
  v1 = (v0 + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25BD73438(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25BD73498()
{
  v1 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25BD73530(char a1)
{
  v3 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_25BD73580(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = &v2[OBJC_IVAR___NDOACCoverageDetails_coverageLabel];
  swift_beginAccess();
  v6 = *(v5 + 1);
  *v5 = v4;
  *(v5 + 1) = v3;
  v7 = v2;

  LOBYTE(v3) = *(a1 + 16);
  sub_25BD74538(a1, type metadata accessor for NDOWarrantyProperties);
  v8 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  v7[v8] = v3;

  return v7;
}

void sub_25BD73664(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(char *, void *), uint64_t a7)
{
  v94 = a7;
  v95 = a6;
  v92 = a2;
  v93 = a4;
  v91 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E8, &qword_25BD7C718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = &v85 - v10;
  v12 = type metadata accessor for NDOWarrantyProperties();
  v90 = *(v12 - 8);
  v13 = *(v90 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  v22 = sub_25BD79748();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v30 = &v85 - v29;
  if (a3)
  {
    v31 = a3;
    v32 = sub_25BD54A64();
    (*(v23 + 16))(v30, v32, v22);
    v33 = a3;

    v34 = sub_25BD79728();
    v35 = sub_25BD79828();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96[0] = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_25BD54AC8(v93, a5, v96);
      *(v36 + 12) = 2112;
      v39 = a3;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_25BD52000, v34, v35, "Cached coverage details request failed for serial number %s with error: %@", v36, 0x16u);
      sub_25BD6E248(v37, &qword_27FBDC0F8, qword_25BD7C720);
      MEMORY[0x25F87B060](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x25F87B060](v38, -1, -1);
      MEMORY[0x25F87B060](v36, -1, -1);
    }

    (*(v23 + 8))(v30, v22);
    v41 = a3;
    v95(0, a3);

LABEL_10:
    return;
  }

  v42 = v11;
  v85 = v19;
  v86 = v16;
  v88 = v28;
  v89 = a5;
  v87 = v21;
  v43 = v92;
  if (v92 >> 60 == 15)
  {
    v48 = sub_25BD54A64();
    v49 = v88;
    (*(v23 + 16))(v88, v48, v22);
    v50 = v89;

    v51 = sub_25BD79728();
    v52 = sub_25BD79828();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v96[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_25BD54AC8(v93, v50, v96);
      _os_log_impl(&dword_25BD52000, v51, v52, "Failed to decode cached coverage details response data for serial number %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x25F87B060](v54, -1, -1);
      MEMORY[0x25F87B060](v53, -1, -1);
    }

    (*(v23 + 8))(v49, v22);
    v55 = sub_25BD79758();
    sub_25BD53D58(&qword_27FBDC0F0, MEMORY[0x277D2B638]);
    a3 = swift_allocError();
    (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D2B630], v55);
    v95(0, a3);
    goto LABEL_10;
  }

  v44 = v27;
  v45 = sub_25BD795C8();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_25BD53D04(v91, v43);
  sub_25BD795B8();
  sub_25BD53D58(&qword_28145A750, type metadata accessor for NDOWarrantyProperties);
  sub_25BD795A8();

  (*(v90 + 56))(v42, 0, 1, v12);
  v57 = v87;
  sub_25BD7459C(v42, v87, type metadata accessor for NDOWarrantyProperties);
  v58 = sub_25BD54A64();
  v59 = v23;
  v60 = v44;
  (*(v23 + 16))(v44, v58, v22);
  v61 = v85;
  sub_25BD74604(v57, v85, type metadata accessor for NDOWarrantyProperties);
  v62 = sub_25BD79728();
  v63 = sub_25BD79838();
  if (os_log_type_enabled(v62, v63))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v96[0] = v66;
    *v65 = 136315138;
    v67 = v61;
    v93 = v22;
    v68 = v61;
    v69 = v86;
    sub_25BD74604(v67, v86, type metadata accessor for NDOWarrantyProperties);
    v70 = sub_25BD797D8();
    v72 = v71;
    sub_25BD74538(v68, type metadata accessor for NDOWarrantyProperties);
    v73 = sub_25BD54AC8(v70, v72, v96);
    v74 = v69;

    *(v65 + 4) = v73;
    _os_log_impl(&dword_25BD52000, v62, v63, "Successfully retrieved cached coverage details %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v75 = v66;
    v57 = v87;
    MEMORY[0x25F87B060](v75, -1, -1);
    MEMORY[0x25F87B060](v65, -1, -1);

    (*(v59 + 8))(v60, v93);
    v76 = v91;
  }

  else
  {

    sub_25BD74538(v61, type metadata accessor for NDOWarrantyProperties);
    (*(v23 + 8))(v60, v22);
    v76 = v91;
    v74 = v86;
  }

  sub_25BD74604(v57, v74, type metadata accessor for NDOWarrantyProperties);
  v77 = [objc_allocWithZone(NDOACCoverageDetails) init];
  v79 = *(v74 + 24);
  v78 = *(v74 + 32);
  v80 = &v77[OBJC_IVAR___NDOACCoverageDetails_coverageLabel];
  swift_beginAccess();
  v81 = *(v80 + 1);
  *v80 = v79;
  *(v80 + 1) = v78;
  v82 = v77;

  LOBYTE(v78) = *(v74 + 16);
  sub_25BD74538(v74, type metadata accessor for NDOWarrantyProperties);
  v83 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  v82[v83] = v78;

  v84 = v82;
  v95(v82, 0);
  sub_25BD54D60(v76, v92);

  sub_25BD74538(v57, type metadata accessor for NDOWarrantyProperties);
}

NDOACCoverageDetailsProvider __swiftcall NDOACCoverageDetailsProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25BD740A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_25BD740F4(a1, a2);
  sub_25BD74224(&unk_286D684E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25BD740F4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25BD74310(v5, 0);
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

  result = sub_25BD798F8();
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
        v10 = sub_25BD79808();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BD74310(v10, 0);
        result = sub_25BD798E8();
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

uint64_t sub_25BD74224(uint64_t result)
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

  result = sub_25BD74384(result, v12, 1, v3);
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

void *sub_25BD74310(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E0, &qword_25BD7C710);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BD74384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E0, &qword_25BD7C710);
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

void sub_25BD744A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NDOSignpost() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7(a1, a2);
  sub_25BD6D5AC();
}

uint64_t sub_25BD74538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BD7459C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BD74604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

NDOUniversalLinkUtilities __swiftcall NDOUniversalLinkUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo25NDOUniversalLinkUtilitiesC17NewDeviceOutreachE11isValidPathySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25BD797B8();
  v4 = sub_25BD79818();

  if (v4)
  {
    if (sub_25BD797B8() == a1 && v5 == a2)
    {
    }

    else
    {
      v6 = sub_25BD799C8();

      if ((v6 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  sub_25BD797B8();
  v7 = sub_25BD79818();

  if (v7)
  {
    if (sub_25BD797B8() == a1 && v8 == a2)
    {

      goto LABEL_11;
    }

    v9 = sub_25BD799C8();

    if (v9)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = 1;
    return v12 & 1;
  }

LABEL_11:
  sub_25BD797B8();
  v10 = sub_25BD79818();

  if (v10)
  {
    if (sub_25BD797B8() != a1 || v11 != a2)
    {
      v13 = sub_25BD799C8();

      v12 = v13 ^ 1;
      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t type metadata accessor for NDOUniversalLinkUtilities()
{
  result = qword_27FBDCCC0;
  if (!qword_27FBDCCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCC0);
  }

  return result;
}

void sub_25BD7495C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_25BD6D2AC(a1, a2);
  sub_25BD79858();
  v3 = *(a2 + *(type metadata accessor for NDOSignpost() + 20));
  v4 = sub_25BD6D370(v3);
  sub_25BD6D418(v3);
  sub_25BD796F8();
}

NDOManagerSupportAppUtilities __swiftcall NDOManagerSupportAppUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25BD74B68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25BD798B8();

  return sub_25BD74BAC(a1, v5);
}

unint64_t sub_25BD74BAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25BD75A80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F87A710](v9, a1);
      sub_25BD75ADC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25BD74C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDC120, &qword_25BD7C7A0);
    v3 = sub_25BD79908();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BD6E1E0(v4, v13, &qword_27FBDC108, &qword_25BD7C788);
      result = sub_25BD74B68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25BD75A70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_25BD74DB0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v84 = a3;
  v85 = a4;
  v90 = a1;
  v5 = sub_25BD79748();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BD79678();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v89 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v77 - v24;
  MEMORY[0x28223BE20](v23);
  v86 = &v77 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E8, &qword_25BD7C718);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v77 - v28;
  v30 = type metadata accessor for NDOWarrantyProperties();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v91 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v37 = sub_25BD54A64();
    (*(v6 + 16))(v9, v37, v5);
    v38 = sub_25BD79728();
    v39 = sub_25BD79828();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_25BD52000, v38, v39, "Unable to decode coverage info", v40, 2u);
      MEMORY[0x25F87B060](v40, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    v79 = v13;
    v80 = v5;
    v78 = v16;
    v34 = sub_25BD795C8();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_25BD53D04(v90, a2);
    sub_25BD795B8();
    sub_25BD75954();
    sub_25BD795A8();
    v80 = a2;

    (*(v31 + 56))(v29, 0, 1, v30);
    v42 = v91;
    sub_25BD54A00(v29, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC100, &qword_25BD7C780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BD7C090;
    strcpy(v92, "serialNumber");
    BYTE5(v92[1]) = 0;
    HIWORD(v92[1]) = -5120;
    v44 = MEMORY[0x277D837D0];
    sub_25BD798D8();
    *(inited + 96) = v44;
    v45 = v85;
    *(inited + 72) = v84;
    *(inited + 80) = v45;

    sub_25BD74C74(inited);
    swift_setDeallocating();
    sub_25BD6E248(inited + 32, &qword_27FBDC108, &qword_25BD7C788);
    v46 = sub_25BD79768();

    v85 = [objc_opt_self() deviceWithDeviceListDevice_];

    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_25BD7C770;
    v92[0] = 0x45726566664F6361;
    v92[1] = 0xEF656C626967696CLL;
    sub_25BD798D8();
    v48 = *(v30 + 32);
    v49 = &v48[v42];
    v50 = v86;
    sub_25BD6E1E0(v49, v86, &qword_27FBDC0A0, &qword_25BD7C490);
    v51 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v52 = *(*(v51 - 8) + 48);
    if (v52(v50, 1, v51) == 1)
    {
      sub_25BD6E248(v50, &qword_27FBDC0A0, &qword_25BD7C490);
      v53 = 0;
    }

    else
    {
      v54 = NDOSettingsCoverageSectionOfferProperties.isValid.getter();
      sub_25BD75A10(v50, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v53 = v54;
    }

    v55 = v87;
    *(v47 + 96) = MEMORY[0x277D839B0];
    *(v47 + 72) = v53;
    v92[0] = 0x4C5255736761;
    v92[1] = 0xE600000000000000;
    sub_25BD798D8();
    *(v47 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC110, &qword_25BD7C790);
    v87 = v48;
    sub_25BD6E1E0(&v48[v91], v55, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v52(v55, 1, v51) == 1)
    {
      sub_25BD6E248(v55, &qword_27FBDC0A0, &qword_25BD7C490);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v58 = v78;
      sub_25BD759AC(v55, v78);
      sub_25BD75A10(v55, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v59 = v81;
      v60 = v82;
      v61 = v83;
      (*(v82 + 16))(v81, v58 + v79[5], v83);
      sub_25BD75A10(v58, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
      v56 = sub_25BD79618();
      v57 = v62;
      (*(v60 + 8))(v59, v61);
    }

    *(v47 + 144) = v56;
    *(v47 + 152) = v57;
    v92[0] = 0xD00000000000001DLL;
    v92[1] = 0x800000025BD7EC80;
    sub_25BD798D8();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC118, &qword_25BD7C798);
    *(v47 + 240) = v63;
    v65 = v87;
    v64 = v88;
    sub_25BD6E1E0(&v87[v91], v88, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v52(v64, 1, v51) == 1)
    {
      sub_25BD6E248(v64, &qword_27FBDC0A0, &qword_25BD7C490);
      v66 = 0;
    }

    else
    {
      v67 = v78;
      sub_25BD759AC(v64, v78);
      sub_25BD75A10(v64, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v66 = *(v67 + v79[6]);

      sub_25BD75A10(v67, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
    }

    *(v47 + 216) = v66;
    v92[0] = 0xD00000000000001ALL;
    v92[1] = 0x800000025BD7ECA0;
    sub_25BD798D8();
    *(v47 + 312) = v63;
    v68 = v89;
    sub_25BD6E1E0(&v65[v91], v89, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v52(v68, 1, v51) == 1)
    {
      sub_25BD6E248(v68, &qword_27FBDC0A0, &qword_25BD7C490);
      v69 = 0;
    }

    else
    {
      v70 = v78;
      sub_25BD759AC(v68, v78);
      sub_25BD75A10(v68, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v69 = *(v70 + v79[7]);

      sub_25BD75A10(v70, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
    }

    *(v47 + 288) = v69;
    sub_25BD74C74(v47);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC108, &qword_25BD7C788);
    swift_arrayDestroy();
    v71 = objc_allocWithZone(NDOWarranty);
    v72 = sub_25BD79768();

    v73 = [v71 initWithDictionary_];

    v74 = objc_opt_self();
    v75 = v85;
    v76 = [v74 deviceInfoWithDevice:v85 warranty:v73];
    sub_25BD54D60(v90, v80);

    sub_25BD75A10(v91, type metadata accessor for NDOWarrantyProperties);
    return v76;
  }
}

unint64_t type metadata accessor for NDOManagerSupportAppUtilities()
{
  result = qword_27FBDCCC8;
  if (!qword_27FBDCCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCC8);
  }

  return result;
}

unint64_t sub_25BD75954()
{
  result = qword_28145A750;
  if (!qword_28145A750)
  {
    type metadata accessor for NDOWarrantyProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145A750);
  }

  return result;
}

uint64_t sub_25BD759AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD75A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_25BD75A70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NDOAMSPropertiesRequestContext.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber);
  v2 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber + 8);

  return v1;
}

id sub_25BD75BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_25BD797A8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t NDOAMSPropertiesRequestContext.universalLinkPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath);
  v2 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath + 8);

  return v1;
}

id NDOAMSPropertiesRequestContext.init(requestType:serialNumber:universalLinkPath:additionalBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v7 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_25BD797A8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_25BD797A8();

LABEL_6:
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_25BD79768();

  v11 = [v9 initWithRequestType:a1 serialNumber:v7 universalLinkPath:v8 additionalBody:v10];

  return v11;
}

id NDOAMSPropertiesRequestContext.init(requestType:serialNumber:universalLinkPath:additionalBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_requestType) = a1;
  v7 = (v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber);
  *v7 = a2;
  v7[1] = a3;
  v8 = (v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath);
  *v8 = a4;
  v8[1] = a5;
  *(v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody) = a6;
  v10.super_class = NDOAMSPropertiesRequestContext;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NDOAMSPropertiesRequestContext.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAMSPropertiesRequestContext.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_25BD79748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BD797A8();
  v10 = [a1 decodeIntegerForKey_];

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_25BD6F2F4(0, &unk_27FBDC150, 0x277CCACA8);
    v11 = sub_25BD79878();
    if (v11 && (v32 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDBF30, &qword_25BD7C080), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0), (swift_dynamicCast() & 1) != 0))
    {
      v12 = v31;
      *&v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_requestType] = v10;
      v13 = sub_25BD79868();
      if (v13)
      {
        v14 = v13;
        v15 = sub_25BD797B8();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v23 = &v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber];
      *v23 = v15;
      v23[1] = v17;
      v24 = sub_25BD79868();
      if (v24)
      {
        v25 = v24;
        v26 = sub_25BD797B8();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = &v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath];
      *v29 = v26;
      v29[1] = v28;
      *&v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody] = v12;
      v30.receiver = v2;
      v30.super_class = NDOAMSPropertiesRequestContext;
      objc_msgSendSuper2(&v30, sel_init);
    }

    else
    {
      v18 = sub_25BD54A64();
      (*(v5 + 16))(v8, v18, v4);
      v19 = sub_25BD79728();
      v20 = sub_25BD79828();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_25BD52000, v19, v20, "Unable to decode from coder", v21, 2u);
        MEMORY[0x25F87B060](v21, -1, -1);
      }

      v22 = (*(v5 + 8))(v8, v4);
      type metadata accessor for NDOAMSPropertiesRequestContext(v22);
      swift_deallocPartialClassInstance();
    }
  }
}

Swift::Void __swiftcall NDOAMSPropertiesRequestContext.encode(with:)(NSCoder with)
{
  v3 = [v1 requestType];
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeInt:v4 forKey:v5];

    v6 = [v1 serialNumber];
    v7 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

    v8 = [v1 universalLinkPath];
    v9 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

    v10 = [v1 additionalBody];
    sub_25BD79778();

    v11 = sub_25BD79768();

    v12 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }
}

id NDOAMSPropertiesRequestContext.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t static NDOUniversalLinkConverter.convertUrl(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC168, qword_25BD7C7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v71 - v6;
  v83 = sub_25BD795F8();
  v85 = *(v83 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BD79678();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BD79748();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v24 = sub_25BD54A64();
  v81 = v16;
  v25 = *(v16 + 16);
  v77 = v24;
  v78 = v25;
  v79 = v16 + 16;
  (v25)(v23);
  v26 = *(v11 + 16);
  v84 = a1;
  v26(v14, a1, v10);
  v27 = sub_25BD79728();
  v28 = sub_25BD79838();
  v29 = os_log_type_enabled(v27, v28);
  v75 = v9;
  v80 = v11;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v73 = a2;
    v31 = v30;
    v32 = swift_slowAlloc();
    v72 = v15;
    v33 = v32;
    v86 = v32;
    *v31 = 136315138;
    sub_25BD77708();
    v34 = sub_25BD799B8();
    v36 = v35;
    (*(v11 + 8))(v14, v10);
    v37 = sub_25BD54AC8(v34, v36, &v86);
    v38 = v83;

    *(v31 + 4) = v37;
    _os_log_impl(&dword_25BD52000, v27, v28, "Converting universal link url: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v39 = v33;
    v15 = v72;
    MEMORY[0x25F87B060](v39, -1, -1);
    v40 = v31;
    a2 = v73;
    MEMORY[0x25F87B060](v40, -1, -1);

    v41 = *(v81 + 8);
    v41(v23, v15);
    v42 = v10;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v41 = *(v81 + 8);
    v41(v23, v15);
    v42 = v10;
    v38 = v83;
  }

  v43 = v82;
  sub_25BD795D8();
  if ((*(v85 + 48))(v43, 1, v38) == 1)
  {
    sub_25BD6E248(v43, &qword_27FBDC168, qword_25BD7C7B0);
    v44 = v74;
    v78(v74, v77, v15);
    v45 = sub_25BD79728();
    v46 = sub_25BD79828();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25BD52000, v45, v46, "Not converting URL, unable to get components", v47, 2u);
      MEMORY[0x25F87B060](v47, -1, -1);
    }

    v41(v44, v15);
    return (*(v80 + 56))(a2, 1, 1, v42);
  }

  v48 = v75;
  (*(v85 + 32))(v75, v43, v38);
  v49 = (sub_25BD79628() + 16);
  if (!*v49)
  {

    goto LABEL_17;
  }

  v50 = v38;
  v51 = &v49[2 * *v49];
  v52 = *v51;
  v53 = v51[1];

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54 || v52 == 47 && v53 == 0xE100000000000000 || (sub_25BD799C8() & 1) != 0)
  {

    v38 = v50;
    v48 = v75;
LABEL_17:
    v78(v76, v77, v15);
    v55 = sub_25BD79728();
    v56 = sub_25BD79828();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_25BD52000, v55, v56, "Not converting URL, last path component is not present", v57, 2u);
      MEMORY[0x25F87B060](v57, -1, -1);
    }

    v41(v76, v15);
    (*(v85 + 8))(v48, v38);
    return (*(v80 + 56))(a2, 1, 1, v42);
  }

  v59 = v75;
  v60 = sub_25BD79628();
  if (v60[2] == 3)
  {
    v61 = v60[6];
    v62 = v60[7];
    if (v61 != 99 || v62 != 0xE100000000000000)
    {
      v63 = v60[6];
      v64 = v60[7];
      if ((sub_25BD799C8() & 1) == 0 && (v61 != 100 || v62 != 0xE100000000000000))
      {
        sub_25BD799C8();
      }
    }
  }

  v65 = sub_25BD797B8();
  v67 = v66;

  v69 = MEMORY[0x25F87A430](v68);
  sub_25BD76E80(v65, v67, v52, v53, v69, v70, a2);

  return (*(v85 + 8))(v59, v50);
}

uint64_t sub_25BD76E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a7;
  v68 = sub_25BD79748();
  v66 = *(v68 - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x28223BE20](v68);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - v19;
  v69 = sub_25BD79678();
  v21 = *(v69 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v69);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v65 = &v62 - v26;
  v72 = 0xD00000000000003ALL;
  v73 = 0x800000025BD7EE20;
  MEMORY[0x25F87A640](a1, a2);

  MEMORY[0x25F87A640](a3, a4);

  v28 = v72;
  v27 = v73;
  if (a6)
  {
    v29 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v29 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v70 = 63;
      v71 = 0xE100000000000000;
      MEMORY[0x25F87A640](a5, a6);
      MEMORY[0x25F87A640](v70, v71);

      v28 = v72;
      v27 = v73;
    }
  }

  sub_25BD79668();
  v30 = v69;
  v31 = (*(v21 + 48))(v20, 1, v69);
  v32 = v66;
  if (v31 == 1)
  {
    sub_25BD6E248(v20, &qword_27FBDBF18, &qword_25BD7C078);
    v33 = sub_25BD54A64();
    v34 = v63;
    v35 = v68;
    (*(v32 + 16))(v63, v33, v68);

    v36 = sub_25BD79728();
    v37 = sub_25BD79828();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v32;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70 = v40;
      *v39 = 136315138;
      v41 = sub_25BD54AC8(v28, v27, &v70);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_25BD52000, v36, v37, "Not converting URL, unable to construct url from string: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v42 = v40;
      v30 = v69;
      MEMORY[0x25F87B060](v42, -1, -1);
      MEMORY[0x25F87B060](v39, -1, -1);

      (*(v38 + 8))(v34, v35);
    }

    else
    {

      (*(v32 + 8))(v34, v35);
    }

    v59 = 1;
    v60 = v67;
  }

  else
  {

    v43 = *(v21 + 32);
    v44 = v65;
    (v43)(v65, v20, v30);
    v45 = sub_25BD54A64();
    v46 = v64;
    v47 = v68;
    (*(v32 + 16))(v64, v45, v68);
    (*(v21 + 16))(v25, v44, v30);
    v48 = sub_25BD79728();
    v49 = sub_25BD79838();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v63 = v43;
      v51 = v50;
      v52 = v32;
      v53 = swift_slowAlloc();
      v70 = v53;
      *v51 = 136315138;
      sub_25BD77708();
      v54 = sub_25BD799B8();
      v56 = v55;
      (*(v21 + 8))(v25, v69);
      v57 = sub_25BD54AC8(v54, v56, &v70);
      v30 = v69;

      *(v51 + 4) = v57;
      _os_log_impl(&dword_25BD52000, v48, v49, "Converted universal link to url: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x25F87B060](v53, -1, -1);
      v58 = v51;
      v43 = v63;
      MEMORY[0x25F87B060](v58, -1, -1);

      (*(v52 + 8))(v64, v68);
    }

    else
    {

      (*(v21 + 8))(v25, v30);
      (*(v32 + 8))(v46, v47);
    }

    v60 = v67;
    (v43)(v67, v65, v30);
    v59 = 0;
  }

  return (*(v21 + 56))(v60, v59, 1, v30);
}

NDOUniversalLinkConverter __swiftcall NDOUniversalLinkConverter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25BD77708()
{
  result = qword_27FBDC170;
  if (!qword_27FBDC170)
  {
    sub_25BD79678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC170);
  }

  return result;
}

unint64_t type metadata accessor for NDOUniversalLinkConverter()
{
  result = qword_27FBDCCD8;
  if (!qword_27FBDCCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCD8);
  }

  return result;
}

uint64_t sub_25BD777AC()
{
  v0 = sub_25BD79748();
  __swift_allocate_value_buffer(v0, qword_28145AAB0);
  __swift_project_value_buffer(v0, qword_28145AAB0);
  return sub_25BD79738();
}

uint64_t sub_25BD77828@<X0>(uint64_t a1@<X8>)
{
  if (qword_28145A7D0 != -1)
  {
    swift_once();
  }

  v2 = sub_25BD79748();
  v3 = __swift_project_value_buffer(v2, qword_28145AAB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

id sub_25BD77970()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBDCCE8 = result;
  return result;
}

uint64_t sub_25BD77CA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25BD796E8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27FBDCCE0 != -1)
  {
    swift_once();
  }

  v4 = qword_27FBDCCE8;
  return sub_25BD796D8();
}

uint64_t sub_25BD77D70(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_25BD796E8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_25BD77DE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25BD796E8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}