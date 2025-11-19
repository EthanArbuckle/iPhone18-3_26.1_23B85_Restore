void *sub_24B007EE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8110);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B008040(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_24B00813C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_24B008258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B008364(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24B0084AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24B008688(unint64_t a1)
{
  v2 = type metadata accessor for LocationDetailViewController.ViewOptions();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24B2D5DA4())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C23C450](v5, a1);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
      v10 = *&v25[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, sel_init);
      v13 = *&v12[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue];

      v14 = OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue;
      v15 = *(v7 + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, sel_init);
      v18 = sub_24B2D5A34();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, sel_init);

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

uint64_t sub_24B008890(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0088F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return sub_24B005084(a1, v1);
}

uint64_t sub_24B008990()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AFFDE44;

  return sub_24B0058C8(v0);
}

uint64_t sub_24B008BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B008C4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B008DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_24B008E40()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 altDSIDForAccount_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 authKitAccountWithAltDSID_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 securityLevelForAccount_];

  return v7;
}

uint64_t sub_24B008F38()
{
  v1 = v0;
  v2 = sub_24B2D21C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D21B4();
  if ([v1 isKeyAvailable_])
  {
    v6 = [v1 nickname];
    sub_24B2D5394();

    sub_24B2D21A4();
  }

  if ([v1 isKeyAvailable_])
  {
    v7 = [v1 givenName];
    sub_24B2D5394();

    sub_24B2D2174();
  }

  if ([v1 isKeyAvailable_])
  {
    v8 = [v1 familyName];
    sub_24B2D5394();

    sub_24B2D2184();
  }

  v9 = objc_opt_self();
  v10 = sub_24B2D2194();
  v11 = [v9 localizedStringFromPersonNameComponents:v10 style:2 options:0];

  v12 = sub_24B2D5394();
  (*(v3 + 8))(v5, v2);
  return v12;
}

id sub_24B00916C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);
    v2 = 0.055;
    v3 = 0.149;
    v4 = 0.239;
  }

  else
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);
    v2 = 0.925;
    v3 = 0.969;
    v4 = 0.996;
  }

  return [v1 initWithRed:v2 green:v3 blue:v4 alpha:1.0];
}

void sub_24B009208()
{
  v0 = sub_24B2D5004();
  __swift_allocate_value_buffer(v0, qword_27EFC8158);
  __swift_project_value_buffer(v0, qword_27EFC8158);
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_24B2D4FC4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24B009344()
{
  result = sub_24B2D5394();
  qword_27EFE4408 = result;
  unk_27EFE4410 = v1;
  return result;
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

uint64_t sub_24B009410()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

uint64_t sub_24B00947C()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

unint64_t sub_24B0094C0()
{
  result = qword_27EFC8170;
  if (!qword_27EFC8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8170);
  }

  return result;
}

uint64_t sub_24B00954C()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFE4418);
  __swift_project_value_buffer(v0, qword_27EFE4418);
  return sub_24B2D3174();
}

uint64_t SolariumFeatureFlag.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

uint64_t isSolariumEnabled.getter()
{
  v3 = &type metadata for SolariumFeatureFlag;
  v4 = sub_24B0096D0();
  v0 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_24B0096D0()
{
  result = qword_28151A7F0;
  if (!qword_28151A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151A7F0);
  }

  return result;
}

unint64_t sub_24B009728()
{
  result = qword_27EFC8178;
  if (!qword_27EFC8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8178);
  }

  return result;
}

uint64_t String.ButtonType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24B2D5E14();

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

uint64_t String.ButtonType.rawValue.getter()
{
  if (*v0)
  {
    return 1701736292;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_24B009820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701736292;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701736292;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B2D6004();
  }

  return v8 & 1;
}

uint64_t sub_24B0098BC()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B009934()
{
  sub_24B2D5404();
}

uint64_t sub_24B009998()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B009A0C@<X0>(char *a1@<X8>)
{
  v2 = sub_24B2D5E14();

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

void sub_24B009A6C(uint64_t *a1@<X8>)
{
  v2 = 1701736292;
  if (!*v1)
  {
    v2 = 0x6C65636E6163;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static String.systemImage(for:)(_BYTE *a1)
{
  if (*a1)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 0x6B72616D78;
  }
}

unint64_t sub_24B009AE0()
{
  result = qword_27EFC8180;
  if (!qword_27EFC8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8180);
  }

  return result;
}

Swift::Double __swiftcall unsafeMainUIScreenScale()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  sub_24B2D12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8188);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = &unk_24B2E0018;
  v6[6] = 0;
  v6[7] = v4;

  v7 = v4;
  sub_24B00A9A4(0, 0, v2, &unk_24B2E0030, v6);

  sub_24B2D5984();
  if (*(v3 + 24))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 16);

    return v9;
  }

  return result;
}

uint64_t sub_24B009D0C()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_24B2D5694();
  v0[5] = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B009DB4, v2, v1);
}

uint64_t sub_24B009DB4()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 mainScreen];

  return MEMORY[0x2822009F8](sub_24B009E3C, 0, 0);
}

uint64_t sub_24B009E3C()
{
  *(v0 + 56) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B009EC8, v2, v1);
}

uint64_t sub_24B009EC8()
{
  v1 = *(v0 + 48);

  [v1 scale];
  *(v0 + 64) = v2;

  return MEMORY[0x2822009F8](sub_24B009F48, 0, 0);
}

uint64_t unsafeCurrentDeviceInterfaceIdiom()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  sub_24B2D12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC8190);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = &unk_24B2E0038;
  v6[6] = 0;
  v6[7] = v4;

  v7 = v4;
  sub_24B00A9A4(0, 0, v2, &unk_24B2E0050, v6);

  result = sub_24B2D5984();
  if (*(v3 + 24))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 16);

    return v9;
  }

  return result;
}

uint64_t sub_24B00A128()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_24B2D5694();
  v0[5] = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B00A1D0, v2, v1);
}

uint64_t sub_24B00A1D0()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 currentDevice];

  return MEMORY[0x2822009F8](sub_24B00A258, 0, 0);
}

uint64_t sub_24B00A258()
{
  *(v0 + 56) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B00A2E4, v2, v1);
}

uint64_t sub_24B00A2E4()
{
  v1 = *(v0 + 48);

  *(v0 + 64) = [v1 userInterfaceIdiom];

  return MEMORY[0x2822009F8](sub_24B00A364, 0, 0);
}

uint64_t sub_24B00A384()
{
  v1 = *(*v0 + 88);
  v2 = sub_24B2D5A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B00A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_24B00A538;

  return v10(v7 + 2);
}

uint64_t sub_24B00A538()
{
  v1 = *v0;

  *(v1 + 48) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24B00A654, 0, 0);
}

uint64_t sub_24B00A654()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v2 + 16) = v0[6];
  *(v2 + 24) = 0;
  dispatch_group_leave(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B00A6C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFD370;

  return sub_24B00A444(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24B00A794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_24B00A888;

  return v10(v7 + 2);
}

uint64_t sub_24B00A888()
{
  v1 = *v0;

  *(v1 + 48) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24B00B76C, 0, 0);
}

uint64_t sub_24B00A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AFFDC5C(a3, v25 - v10);
  v12 = sub_24B2D56D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AFFD464(v11);
  }

  else
  {
    sub_24B2D56C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B2D5604();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B2D53D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AFFD464(a3);

      return v23;
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

  sub_24AFFD464(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B00ACB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFDE44;

  return sub_24B00A794(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24B00AD8C()
{
  result = sub_24B2D5A84();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B00AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AFFDC5C(a3, v25 - v10);
  v12 = sub_24B2D56D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AFFD464(v11);
  }

  else
  {
    sub_24B2D56C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B2D5604();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B2D53D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AFFD464(a3);

      return v23;
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

  sub_24AFFD464(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24B00B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AFFDC5C(a3, v25 - v10);
  v12 = sub_24B2D56D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AFFD464(v11);
  }

  else
  {
    sub_24B2D56C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B2D5604();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B2D53D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7E30);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24AFFD464(a3);

      return v22;
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

  sub_24AFFD464(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC7E30);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24B00B3C4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24B00B4B8;

  return v5(v2 + 32);
}

uint64_t sub_24B00B4B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24B00B5CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1ABA90(a1, v4);
}

uint64_t sub_24B00B684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1ABA90(a1, v4);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24B00B79C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B00B7E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DirectionsState()
{
  result = qword_27EFC8218;
  if (!qword_27EFC8218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B00B8CC()
{
  sub_24AFF7E78(319, &qword_27EFC8228);
  if (v0 <= 0x3F)
  {
    sub_24AFF7E78(319, &qword_27EFC8230);
    if (v1 <= 0x3F)
    {
      sub_24B2D24A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B00B998()
{
  v0 = sub_24B2D24A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DirectionsState();
  __swift_allocate_value_buffer(v4, qword_27EFE4430);
  v5 = __swift_project_value_buffer(v4, qword_27EFE4430);
  sub_24B2D2494();
  *v5 = 2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  return (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
}

unint64_t sub_24B00BAAC()
{
  result = qword_27EFC8238;
  if (!qword_27EFC8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8238);
  }

  return result;
}

uint64_t sub_24B00BB00()
{
  v1 = sub_24B2D5FD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D61C4();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D61A4();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D6254();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B2D6264();
  v33 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 24) & 1) != 0 || (v17 = *(v0 + 8), v18 = *(v0 + 16), v32 = v17, (sub_24B2D6284() & 1) == 0))
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = sub_24B2D5374();
    v26 = [v24 localizedStringForKey:v25 value:0 table:0];

    v22 = sub_24B2D5394();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8240);
    v31 = v18;
    v19 = sub_24B2D6204();
    v30 = v5;
    v28[1] = v19;
    v29 = v1;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24B2DEAD0;
    sub_24B2D61E4();
    sub_24B2D61F4();
    sub_24B134838(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24B2D6234();
    sub_24B2D6194();
    v21 = v29;
    (*(v2 + 104))(v4, *MEMORY[0x277D84680], v29);
    sub_24B2D61B4();
    (*(v2 + 8))(v4, v21);
    sub_24B2D1F74();

    (*(v38 + 8))(v7, v30);
    (*(v36 + 8))(v10, v37);
    (*(v34 + 8))(v13, v35);
    sub_24B00C13C();
    sub_24B2D6274();
    (*(v33 + 8))(v16, v14);
    return v39;
  }

  return v22;
}

uint64_t sub_24B00C070(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = (v3 ^ v2) & 1;
    if (v3 == 2 || v4 != 0)
    {
      return 0;
    }
  }

  if (a1[24])
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[24] & 1) != 0 || (sub_24B2D6294() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DirectionsState();

  return _s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0();
}

unint64_t sub_24B00C13C()
{
  result = qword_27EFC8248;
  if (!qword_27EFC8248)
  {
    sub_24B2D6264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FollowerAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FollowerAction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B00C2E8()
{
  result = qword_27EFC8250;
  if (!qword_27EFC8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8250);
  }

  return result;
}

unint64_t sub_24B00C350()
{
  result = qword_27EFC8258;
  if (!qword_27EFC8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8258);
  }

  return result;
}

uint64_t type metadata accessor for LocateAction()
{
  result = qword_27EFC8260;
  if (!qword_27EFC8260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B00C418()
{
  v0 = type metadata accessor for DirectionsState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B00C474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionsState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for LocateAction();
  MEMORY[0x28223BE20](Action - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8270);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_24B00C728(a1, &v20 - v13);
  sub_24B00C728(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_24B00C728(v14, v10);
    if (!v16(&v14[v15], 2, v4))
    {
      sub_24B00C854(&v14[v15], v7);
      v18 = sub_24B00C070(v10, v7);
      sub_24B00C7F4(v7, type metadata accessor for DirectionsState);
      sub_24B00C7F4(v10, type metadata accessor for DirectionsState);
      sub_24B00C7F4(v14, type metadata accessor for LocateAction);
      return v18 & 1;
    }

    sub_24B00C7F4(v10, type metadata accessor for DirectionsState);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_24B00C78C(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_24B00C7F4(v14, type metadata accessor for LocateAction);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_24B00C728(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for LocateAction();
  (*(*(Action - 8) + 16))(a2, a1, Action);
  return a2;
}

uint64_t sub_24B00C78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B00C7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B00C854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionsState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore13LocationStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24B00C8E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 25))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B00C938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B00C99C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B00C9DC(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_24B2D5374();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];

    v5 = sub_24B2D5394();
    return v5;
  }

  result = sub_24B2D6024();
  __break(1u);
  return result;
}

uint64_t sub_24B00CB2C(unint64_t a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  if (a1 > 1)
  {
    result = sub_24B2D6024();
    __break(1u);
  }

  else
  {
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_24B2D5374();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v6 = sub_24B2D5394();
    return v6;
  }

  return result;
}

uint64_t sub_24B00CC78()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24B00CCEC()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

unint64_t sub_24B00CD30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24B00CD64(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_24B00CD64(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24B00CD78()
{
  result = qword_27EFC8278;
  if (!qword_27EFC8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8278);
  }

  return result;
}

uint64_t sub_24B00CDE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v72 = a1;
  v70 = a4;
  v5 = sub_24B2D1704();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Friend();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = sub_24B2D2114();
  v68 = *(v22 - 8);
  v69 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D2104();
  sub_24B2D20E4();
  v71 = sub_24B2D22D4();
  v73 = *(v71 - 8);
  (*(v73 + 56))(v21, 1, 1, v71);
  v65 = a3;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_24B2D5C34();

      v74 = 0xD00000000000001ALL;
      v75 = 0x800000024B2D80C0;
      v25 = v72;
      MEMORY[0x24C23BC10](v72, v67);
      sub_24B2D22B4();

      goto LABEL_19;
    }

    MEMORY[0x24C2388A0](25965, 0xE200000000000000);
LABEL_18:
    sub_24B2D20B4();
    v25 = v72;
    goto LABEL_19;
  }

  if (a3)
  {
    MEMORY[0x24C2388A0](29286, 0xE200000000000000);
    if (v72 && *(v72 + 2) == 1)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24B0078D0(0, 1, 0);
      v36 = v64;
      v37 = v74;
      (*(v64 + 16))(v7, &v72[(*(v36 + 80) + 32) & ~*(v36 + 80)], v5);
      v38 = sub_24B2D16F4();
      v40 = v39;
      (*(v36 + 8))(v7, v5);
      v74 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_24B0078D0((v41 > 1), v42 + 1, 1);
        v37 = v74;
      }

      *(v37 + 16) = v42 + 1;
      v43 = v37 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v74 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
      sub_24AFF3EF4();
      v44 = sub_24B2D5274();
      v46 = v45;

      v74 = 47;
      v75 = 0xE100000000000000;
      MEMORY[0x24C23BC10](v44, v46);

      MEMORY[0x24C2388B0](v74, v75);
    }

    goto LABEL_18;
  }

  MEMORY[0x24C2388A0](29286, 0xE200000000000000);
  v25 = v72;
  if (v72 && *(v72 + 2) == 1)
  {
    v74 = MEMORY[0x277D84F90];
    sub_24B0078D0(0, 1, 0);
    v26 = v74;
    sub_24B00D804(v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v10);
    v27 = sub_24B2D16F4();
    v29 = v28;
    sub_24B00D868(v10);
    v31 = *(v26 + 16);
    v30 = *(v26 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_24B0078D0((v30 > 1), v31 + 1, 1);
      v26 = v74;
    }

    *(v26 + 16) = v31 + 1;
    v32 = v26 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v74 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
    sub_24AFF3EF4();
    v33 = sub_24B2D5274();
    v35 = v34;

    v74 = 47;
    v75 = 0xE100000000000000;
    MEMORY[0x24C23BC10](v33, v35);

    MEMORY[0x24C2388B0](v74, v75);
    v25 = v72;
  }

  sub_24B2D20B4();
LABEL_19:
  sub_24B00D684(v21);
  sub_24B00D6EC(v19, v21);
  sub_24B00D75C(v21, v16);
  v47 = *(v73 + 48);
  v48 = v71;
  if (v47(v16, 1, v71) != 1)
  {
    goto LABEL_25;
  }

  sub_24B00D684(v16);
  if (qword_27EFC7628 != -1)
  {
    swift_once();
  }

  v49 = sub_24B2D3184();
  __swift_project_value_buffer(v49, qword_27EFE4518);
  v50 = v67;
  v51 = v65;
  sub_24B00D7CC(v25, v67, v65);
  v52 = sub_24B2D3164();
  v53 = sub_24B2D5914();
  sub_24B00D7E8(v25, v50, v51);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v72 = v24;
    v56 = v55;
    v77 = v55;
    *v54 = 136315394;
    *(v54 + 4) = sub_24AFF321C(7107189, 0xE300000000000000, &v77);
    *(v54 + 12) = 2080;
    v74 = v25;
    v75 = v50;
    v76 = v51;
    sub_24B00D7CC(v25, v50, v51);
    v57 = sub_24B2D53C4();
    v59 = sub_24AFF321C(v57, v58, &v77);

    *(v54 + 14) = v59;
    _os_log_impl(&dword_24AFD2000, v52, v53, "URLHandler: %s - No URL for %s", v54, 0x16u);
    swift_arrayDestroy();
    v60 = v56;
    v24 = v72;
    MEMORY[0x24C23D530](v60, -1, -1);
    MEMORY[0x24C23D530](v54, -1, -1);
  }

  v48 = v71;
  v16 = v66;
  sub_24B2D22B4();
  if (v47(v16, 1, v48) == 1)
  {
    result = sub_24B00D684(v16);
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_24B00D684(v21);
    (*(v68 + 8))(v24, v69);
    return (*(v73 + 32))(v70, v16, v48);
  }

  return result;
}

uint64_t sub_24B00D684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B00D6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B00D75C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B00D7CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_24B00D7E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_24B00D804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B00D868(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore0aB11DestinationO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B00D8F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B00D93C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B00D980(uint64_t result, unsigned int a2)
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

uint64_t type metadata accessor for RepositorySubscriber()
{
  result = qword_27EFC8280;
  if (!qword_27EFC8280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B00DA1C()
{
  result = sub_24B2D2504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B00DA88()
{
  sub_24B2D60E4();
  sub_24B2D2504();
  sub_24B00DC68(&qword_27EFC8298, MEMORY[0x277CC95F0]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B00DB10()
{
  sub_24B2D2504();
  sub_24B00DC68(&qword_27EFC8298, MEMORY[0x277CC95F0]);

  return sub_24B2D5254();
}

uint64_t sub_24B00DB94()
{
  sub_24B2D60E4();
  sub_24B2D2504();
  sub_24B00DC68(&qword_27EFC8298, MEMORY[0x277CC95F0]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B00DC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B00DCB0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_24B2D1704();
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
          sub_24B0076F4(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24B0076F4(v25 > 1, v26 + 1, 1);
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

void sub_24B00DF80()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    sub_24B2D1704();
    sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    v4 = sub_24B2D51F4();
    v6 = v5;

    v7 = sub_24AFF321C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: locationStateByHandle - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

void sub_24B00E1C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24B2D3224();
  sub_24B00DF80();
}

void sub_24B00E244()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    sub_24B2D1704();
    type metadata accessor for DirectionsState();
    sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    v4 = sub_24B2D51F4();
    v6 = v5;

    v7 = sub_24AFF321C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: directionsStateByHandle - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24B00E490()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
    v5 = sub_24B2D53C4();
    v7 = sub_24AFF321C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, v1, v2, "Repository: thisDeviceLastLocation - %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
  sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
  return sub_24B2D31F4();
}

uint64_t sub_24B00E6B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1;
}

uint64_t sub_24B00E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), const char *a8)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24B2D3224();
  return sub_24B00E7E4(a5, a6, a7, a8);
}

uint64_t sub_24B00E7E4(uint64_t a1, uint64_t a2, void (*a3)(void), const char *a4)
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    sub_24B2D1704();
    a3(0);
    sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    v11 = sub_24B2D51F4();
    v13 = v12;

    v14 = sub_24AFF321C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24AFD2000, v7, v8, a4, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
  sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
  return sub_24B2D31F4();
}

uint64_t sub_24B00EA78@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a1 = v3;
  return result;
}

void sub_24B00EAF4()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC83B8);
    v4 = sub_24B2D53C4();
    v6 = sub_24AFF321C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: activeLocationSharingDevice - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24B00ECE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();
}

void sub_24B00ED5C()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    if (v8)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v8)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    v6 = sub_24AFF321C(v4, v5, &v9);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: friendRequestsAllowed - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24B00EF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1;
}

void sub_24B00EFBC()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    sub_24B2D24A4();
    v4 = sub_24B2D51F4();
    v6 = v5;

    v7 = sub_24AFF321C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: lastMessageTimestampByKey - %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24B00F1CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1;
}

void sub_24B00F238()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    type metadata accessor for RepositorySubscriber();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8690);
    sub_24B034188(&qword_27EFC8698, type metadata accessor for RepositorySubscriber);
    v4 = sub_24B2D51F4();
    v6 = v5;

    v7 = sub_24AFF321C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: subscriptionsBySubscriber: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

void sub_24B00F45C()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24B2D3184();
  __swift_project_value_buffer(v0, qword_27EFE4418);

  oslog = sub_24B2D3164();
  v1 = sub_24B2D5934();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8690);
    sub_24B038C8C();
    v4 = sub_24B2D51F4();
    v6 = v5;

    v7 = sub_24AFF321C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_24AFD2000, oslog, v1, "Repository: subscriptionsByKind: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24B00F648(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v109 = a4;
  v108 = a3;
  v107 = a2;
  v128 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84D0);
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6);
  v120 = &v90 - v7;
  v126 = sub_24B2D59B4();
  v116 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v115 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84D8);
  v113 = *(v9 - 8);
  v114 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v90 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84E0);
  MEMORY[0x28223BE20](v125);
  v124 = &v90 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84E8);
  MEMORY[0x28223BE20](v123);
  v129 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84F0);
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v111 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v110 = &v90 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v117 = &v90 - v19;
  MEMORY[0x28223BE20](v18);
  v127 = &v90 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84F8);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v90 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8500);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v90 - v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8508);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v90 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8510);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v90 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8518);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v90 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8520);
  v26 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v28 = &v90 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8528);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v90 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8530);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v90 - v35;
  v37 = OBJC_IVAR____TtC12FindMyUICore10Repository__locationStateByHandle;
  v130[0] = sub_24B1928A8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8368);
  sub_24B2D3204();
  (*(v34 + 32))(v5 + v37, v36, v33);
  v38 = OBJC_IVAR____TtC12FindMyUICore10Repository__directionsStateByHandle;
  v39 = MEMORY[0x277D84F90];
  v130[0] = sub_24B192AA8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8378);
  sub_24B2D3204();
  (*(v30 + 32))(v5 + v38, v32, v29);
  v40 = OBJC_IVAR____TtC12FindMyUICore10Repository__thisDeviceLastLocation;
  v130[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
  sub_24B2D3204();
  (*(v26 + 32))(v5 + v40, v28, v91);
  v41 = OBJC_IVAR____TtC12FindMyUICore10Repository__followerStateByHandle;
  v130[0] = sub_24B19268C(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8398);
  v42 = v92;
  sub_24B2D3204();
  (*(v93 + 32))(v5 + v41, v42, v94);
  v43 = OBJC_IVAR____TtC12FindMyUICore10Repository__followingStateByHandle;
  v130[0] = sub_24B192470(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC83A8);
  v44 = v95;
  sub_24B2D3204();
  (*(v96 + 32))(v5 + v43, v44, v97);
  v45 = OBJC_IVAR____TtC12FindMyUICore10Repository__activeLocationSharingDevice;
  v130[0] = 0;
  v130[1] = 0;
  v131 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC83B8);
  v46 = v98;
  sub_24B2D3204();
  (*(v99 + 32))(v5 + v45, v46, v100);
  v47 = OBJC_IVAR____TtC12FindMyUICore10Repository__friendRequestsAllowed;
  LOBYTE(v130[0]) = 1;
  v48 = v101;
  sub_24B2D3204();
  (*(v102 + 32))(v5 + v47, v48, v103);
  v49 = OBJC_IVAR____TtC12FindMyUICore10Repository__lastMessageTimestampByKey;
  v130[0] = sub_24B192CC4(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC83D0);
  v50 = v104;
  sub_24B2D3204();
  (*(v105 + 32))(v5 + v49, v50, v106);
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_isValidatingMessage) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_thisDeviceCurrentLocationTask) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_preferenceChangesTask) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipStreamTask) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationsStreamTask) = 0;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipRefresherTask) = 0;
  v51 = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetLocations) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetFriendshipStatus) = v51;
  v52 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
  *(v5 + v52) = sub_24B192EB0(v39);
  v53 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;
  *(v5 + v53) = sub_24B193094(v39);
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_cancellables) = v39;
  *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_effectiveBundleAssertion) = 0;
  v54 = OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeThisDeviceLocation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
  swift_allocObject();
  *(v5 + v54) = sub_24B2D31C4();
  v55 = OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeFollowersLocations;
  swift_allocObject();
  *(v5 + v55) = sub_24B2D31C4();
  v56 = OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeFollowingFollowerState;
  swift_allocObject();
  *(v5 + v56) = sub_24B2D31C4();
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v57 = sub_24B2D3184();
  __swift_project_value_buffer(v57, qword_27EFE4418);
  v58 = sub_24B2D3164();
  v59 = sub_24B2D5934();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v130[0] = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D84A0, v130);
    _os_log_impl(&dword_24AFD2000, v58, v59, "Repository: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x24C23D530](v61, -1, -1);
    MEMORY[0x24C23D530](v60, -1, -1);
  }

  v62 = (v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
  v63 = v107;
  *v62 = v128;
  v62[1] = v63;
  v64 = (v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_sourceBundleId);
  v65 = v109;
  *v64 = v108;
  v64[1] = v65;
  v66 = objc_opt_self();
  swift_unknownObjectRetain();
  v67 = [v66 standardUserDefaults];
  sub_24B0108F4(v67);

  v68 = OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeThisDeviceLocation;
  v69 = v5;
  v130[0] = *(v5 + OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeThisDeviceLocation);
  v109 = sub_24B039184(&qword_27EFC8538, &qword_27EFC8468);
  sub_24B2D3244();
  v130[0] = *(v5 + v68);
  v70 = v112;
  sub_24B2D3264();
  v71 = v115;
  sub_24B2D59A4();
  v106 = sub_24B038248(0, &qword_27EFC8540);
  v72 = sub_24B2D59C4();
  v130[0] = v72;
  v108 = sub_24B039184(&qword_27EFC8548, &qword_27EFC84D8);
  v107 = sub_24B037FA8();
  v73 = v114;
  sub_24B2D3254();

  v116 = *(v116 + 8);
  (v116)(v71, v126);
  v113 = *(v113 + 8);
  (v113)(v70, v73);
  v105 = sub_24B039184(&qword_27EFC8558, &qword_27EFC84E8);
  v104 = sub_24B039184(&qword_27EFC8560, &qword_27EFC84E0);
  sub_24B2D3194();
  v74 = OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeFollowersLocations;
  v90 = v69;
  v130[0] = *(v69 + OBJC_IVAR____TtC12FindMyUICore10Repository_didChangeFollowersLocations);
  sub_24B2D3244();
  v130[0] = *(v69 + v74);
  sub_24B2D3264();
  sub_24B2D5994();
  v75 = sub_24B2D59C4();
  v130[0] = v75;
  sub_24B2D3254();

  (v116)(v71, v126);
  (v113)(v70, v73);
  v76 = v117;
  sub_24B2D3194();
  v78 = v118;
  v77 = v119;
  v79 = *(v118 + 16);
  v80 = v127;
  v79(v110, v127, v119);
  v79(v111, v76, v77);
  sub_24B039184(&qword_27EFC8568, &qword_27EFC84F0);
  v81 = v120;
  sub_24B2D31A4();
  v82 = swift_allocObject();
  v83 = v90;
  swift_weakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_24B038010;
  *(v84 + 24) = v82;
  sub_24B039184(&unk_27EFC8570, &qword_27EFC84D0);
  v85 = v122;
  v86 = sub_24B2D3274();

  (*(v121 + 8))(v81, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_24B2DF8E0;
  *(v87 + 32) = v86;
  swift_unknownObjectRelease();
  v88 = *(v78 + 8);
  v88(v76, v77);
  v88(v80, v77);
  *(v83 + OBJC_IVAR____TtC12FindMyUICore10Repository_cancellables) = v87;

  return v83;
}

void sub_24B0108F4(void *a1)
{
  v2 = sub_24B2D5374();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_24B2D5B14();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC83D0);
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v7[0] = v4;

      sub_24B2D3224();
      sub_24B00EFBC();
    }
  }

  else
  {
    sub_24AFF8258(v7, &qword_27EFC85B0);
  }
}

uint64_t sub_24B010A38()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24B010B04();
  }
}

uint64_t sub_24B010B04()
{
  v78 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v77 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v83 = &v64 - v4;
  v82 = sub_24B2D24A4();
  v86 = *(v82 - 8);
  v5 = MEMORY[0x28223BE20](v82);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v6;
  MEMORY[0x28223BE20](v5);
  v80 = &v64 - v7;
  v8 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v64 - v11;
  v12 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v91 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v64 - v16;
  v17 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;
  swift_beginAccess();
  v88 = v0;
  v18 = *(v0 + v17);
  if (*(v18 + 16) && (v19 = sub_24B1810E4(3u), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v21 = MEMORY[0x277D84FA0];
  }

  v89 = v21;
  v87 = v12;
  if (qword_27EFC75E8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFE4418);
  v23 = v89;

  v24 = sub_24B2D3164();
  v25 = sub_24B2D5934();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v96 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D84C0, &v96);
    *(v26 + 12) = 2080;
    sub_24B034188(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
    v28 = sub_24B2D57F4();
    v30 = sub_24AFF321C(v28, v29, &v96);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_24AFD2000, v24, v25, "Repository: %s - %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v27, -1, -1);
    MEMORY[0x24C23D530](v26, -1, -1);
  }

  v31 = 0;
  v32 = v23 + 56;
  v33 = 1 << *(v23 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v23 + 56);
  v36 = (v33 + 63) >> 6;
  v75 = v86 + 16;
  v84 += 7;
  v74 = v9 + 7;
  v73 = v86 + 32;
  v72 = (v86 + 8);
  v9 = v85;
LABEL_11:
  if (v35)
  {
    goto LABEL_18;
  }

  while (1)
  {
LABEL_14:
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v37 >= v36)
    {
    }

    v35 = *(v32 + 8 * v37);
    ++v31;
    if (v35)
    {
      v31 = v37;
      while (1)
      {
LABEL_18:
        while (1)
        {
          v38 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v39 = v90;
          sub_24B0394EC(*(v23 + 48) + *(v91 + 72) * (v38 | (v31 << 6)), v90, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B039554(v39, v15, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            break;
          }

          sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
          if (!v35)
          {
            goto LABEL_14;
          }
        }

        sub_24B039554(v15, v9, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        v40 = v96;
        if (*(v96 + 16) && (v41 = sub_24B181150(v9), (v42 & 1) != 0))
        {
          v43 = *(v40 + 56) + 32 * v41;
          v44 = *(v43 + 8);
          v45 = *(v43 + 16);
          v46 = *(v43 + 24);
          v71 = *v43;
          v70 = v46;
          sub_24B034224(v71, v44, v45);

          if (v45 >= 2)
          {
            v47 = v80;
            sub_24B2D2494();
            v66 = sub_24B2D56D4();
            v67 = *(v66 - 8);
            (*(v67 + 56))(v83, 1, 1, v66);
            v48 = v86;
            (*(v86 + 16))(v81, v47, v82);
            sub_24B0394EC(v9, v79, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            sub_24B2D5694();

            v68 = v45;
            v69 = v44;

            v64 = sub_24B2D5684();
            v49 = (*(v48 + 80) + 57) & ~*(v48 + 80);
            v50 = (v84 + v49) & 0xFFFFFFFFFFFFFFF8;
            v51 = (*(v76 + 80) + v50 + 8) & ~*(v76 + 80);
            v65 = (v74 + v51) & 0xFFFFFFFFFFFFFFF8;
            v52 = swift_allocObject();
            *(v52 + 16) = v64;
            v53 = v71;
            *(v52 + 24) = MEMORY[0x277D85700];
            *(v52 + 32) = v53;
            v54 = v68;
            *(v52 + 40) = v69;
            *(v52 + 48) = v54;
            *(v52 + 56) = v70;
            (*(v48 + 32))(v52 + v49, v81, v82);
            *(v52 + v50) = v88;
            sub_24B039554(v79, v52 + v51, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            *(v52 + v65) = v78;
            v55 = v77;
            sub_24B008890(v83, v77, &qword_27EFC8580);
            v56 = v67;
            v57 = v66;
            LODWORD(v50) = (*(v67 + 48))(v55, 1);

            if (v50 == 1)
            {
              sub_24AFF8258(v55, &qword_27EFC8580);
            }

            else
            {
              sub_24B2D56C4();
              (*(v56 + 8))(v55, v57);
            }

            v58 = *(v52 + 16);
            swift_unknownObjectRetain();

            if (v58)
            {
              swift_getObjectType();
              v59 = sub_24B2D5604();
              v61 = v60;
              swift_unknownObjectRelease();
            }

            else
            {
              v59 = 0;
              v61 = 0;
            }

            sub_24AFF8258(v83, &qword_27EFC8580);
            v62 = swift_allocObject();
            *(v62 + 16) = &unk_24B2E0A60;
            *(v62 + 24) = v52;
            if (v61 | v59)
            {
              v92 = 0;
              v93 = 0;
              v94 = v59;
              v95 = v61;
            }

            v9 = v85;
            v23 = v89;
            swift_task_create();

            (*v72)(v80, v82);
            sub_24B0395BC(v9, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            goto LABEL_11;
          }

          sub_24B0341E0(v71, v44, v45);
        }

        else
        {
        }

        sub_24B0395BC(v9, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v23 = v89;
        if (!v35)
        {
          goto LABEL_14;
        }
      }
    }
  }
}

uint64_t sub_24B011608()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0x74696E696564, 0xE600000000000000, &v24);
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC12FindMyUICore10Repository__locationStateByHandle;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8530);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC12FindMyUICore10Repository__directionsStateByHandle;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8528);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = OBJC_IVAR____TtC12FindMyUICore10Repository__thisDeviceLastLocation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8520);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = OBJC_IVAR____TtC12FindMyUICore10Repository__followerStateByHandle;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8518);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = OBJC_IVAR____TtC12FindMyUICore10Repository__followingStateByHandle;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8510);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC12FindMyUICore10Repository__activeLocationSharingDevice;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8508);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = OBJC_IVAR____TtC12FindMyUICore10Repository__friendRequestsAllowed;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8500);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = OBJC_IVAR____TtC12FindMyUICore10Repository__lastMessageTimestampByKey;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84F8);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_24B011ABC()
{
  sub_24B011608();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Repository()
{
  result = qword_27EFC8350;
  if (!qword_27EFC8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B011B68()
{
  sub_24B011EEC(319, &qword_27EFC8360, &qword_27EFC8368);
  if (v0 <= 0x3F)
  {
    sub_24B011EEC(319, &qword_27EFC8370, &qword_27EFC8378);
    if (v1 <= 0x3F)
    {
      sub_24B011EEC(319, &qword_27EFC8380, &qword_27EFC8388);
      if (v2 <= 0x3F)
      {
        sub_24B011EEC(319, &qword_27EFC8390, &qword_27EFC8398);
        if (v3 <= 0x3F)
        {
          sub_24B011EEC(319, &qword_27EFC83A0, &qword_27EFC83A8);
          if (v4 <= 0x3F)
          {
            sub_24B011EEC(319, &qword_27EFC83B0, &qword_27EFC83B8);
            if (v5 <= 0x3F)
            {
              sub_24B011E9C();
              if (v6 <= 0x3F)
              {
                sub_24B011EEC(319, &qword_27EFC83C8, &unk_27EFC83D0);
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24B011E9C()
{
  if (!qword_27EFC83C0)
  {
    v0 = sub_24B2D3234();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC83C0);
    }
  }
}

void sub_24B011EEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24B2D3234();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B011F40(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC12FindMyUICore10Repository_isValidatingMessage) = 0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  oslog = sub_24B2D3164();
  v2 = sub_24B2D5904();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD00000000000002BLL, 0x800000024B2D8630, &v6);
    _os_log_impl(&dword_24AFD2000, oslog, v2, "Repository: %s - isValidatingMessage: false", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }
}

uint64_t sub_24B012094(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = _s14descr285E46659O16SubscriptionDataOMa(0);
  v2[8] = swift_task_alloc();
  sub_24B2D5694();
  v2[9] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_24B01215C, v4, v3);
}

uint64_t sub_24B01215C()
{
  v41 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_24B1810E4(4u), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v6 = MEMORY[0x277D84FA0];
  }

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v7 = sub_24B2D3184();
  *(v0 + 96) = __swift_project_value_buffer(v7, qword_27EFE4418);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_24AFF321C(0xD000000000000016, 0x800000024B2D87C0, &v40);
    *(v10 + 12) = 2080;
    sub_24B034188(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
    v12 = sub_24B2D57F4();
    v14 = sub_24AFF321C(v12, v13, &v40);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Repository: %s - %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);
  }

  v15 = *(v0 + 64);
  v16 = *(v0 + 40);
  v17 = sub_24B2D1704();
  *(v0 + 104) = v17;
  v18 = *(v17 - 8);
  *(v0 + 112) = v18;
  v38 = v18;
  v19 = *(v18 + 16);
  *(v0 + 120) = v19;
  *(v0 + 128) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v16, v17);
  v20 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  *(v15 + *(v20 + 20)) = 1;
  swift_storeEnumTagMultiPayload();
  v39 = sub_24B1260D4(v15, v6);
  sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
  v19(v15, v16, v17);
  *(v15 + *(v20 + 20)) = 0;
  swift_storeEnumTagMultiPayload();
  *(v0 + 192) = sub_24B1260D4(v15, v6) & 1;

  sub_24B0395BC(v15, _s14descr285E46659O16SubscriptionDataOMa);
  if (v39)
  {
    v21 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
    v22 = *(v38 + 80);
    *(v0 + 184) = v22;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v0 + 136) = v24;
    *(v24 + 16) = xmmword_24B2DE430;
    v19(v24 + v23, v21, v17);
    v25 = swift_task_alloc();
    *(v0 + 144) = v25;
    *v25 = v0;
    v25[1] = sub_24B0126E0;
    v26 = v24;
    v27 = 1;
LABEL_13:

    return sub_24B045D1C(v26, v27);
  }

  if (*(v0 + 192) == 1)
  {
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
    v32 = *(v30 + 80);
    *(v0 + 188) = v32;
    v33 = (v32 + 32) & ~v32;
    v34 = swift_allocObject();
    *(v0 + 160) = v34;
    *(v34 + 16) = xmmword_24B2DE430;
    v28(v34 + v33, v31, v29);
    v35 = swift_task_alloc();
    *(v0 + 168) = v35;
    *v35 = v0;
    v35[1] = sub_24B012BF4;
    v26 = v34;
    v27 = 0;
    goto LABEL_13;
  }

  sub_24B012FF8();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_24B0126E0()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = (*(v3 + 184) + 32) & ~*(v3 + 184);
  *(v3 + 152) = v0;

  swift_setDeallocating();
  (*(v5 + 8))(v4 + v7, v6);
  swift_deallocClassInstance();
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_24B012A28;
  }

  else
  {
    v10 = sub_24B0128A8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_24B0128A8()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
    v5 = *(v3 + 80);
    *(v0 + 188) = v5;
    v6 = (v5 + 32) & ~v5;
    v7 = swift_allocObject();
    *(v0 + 160) = v7;
    *(v7 + 16) = xmmword_24B2DE430;
    v1(v7 + v6, v4, v2);
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_24B012BF4;

    return sub_24B045D1C(v7, 0);
  }

  else
  {

    sub_24B012FF8();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24B012A28()
{
  v13 = v0;
  v1 = *(v0 + 152);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000016, 0x800000024B2D87C0, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Error: %@", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B012BF4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = (*(v3 + 188) + 32) & ~*(v3 + 188);
  *(v3 + 176) = v0;

  swift_setDeallocating();
  (*(v5 + 8))(v4 + v7, v6);
  swift_deallocClassInstance();
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_24B012E2C;
  }

  else
  {
    v10 = sub_24B012DBC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_24B012DBC()
{

  sub_24B012FF8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B012E2C()
{
  v13 = v0;
  v1 = *(v0 + 176);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000016, 0x800000024B2D87C0, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Error: %@", v5, 0x16u);
    sub_24AFF8258(v6, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B012FF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v77 - v3;
  v5 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v7 - 8);
  *&v87 = &v77 - v8;
  v9 = sub_24B2D1704();
  v91 = *(v9 - 1);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v77 - v13;
  v88 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v86 = *(v88 - 8);
  v14 = MEMORY[0x28223BE20](v88);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = (&v77 - v17);
  v18 = OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipRefresherTask;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipRefresherTask))
  {

    sub_24B2D5764();
  }

  *(v1 + v18) = 0;

  v19 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (*(v20 + 16) && (v21 = sub_24B1810E4(2u), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v23 = MEMORY[0x277D84FA0];
  }

  if (qword_27EFC75E8 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = sub_24B2D3184();
  v89 = __swift_project_value_buffer(v24, qword_27EFE4418);

  v25 = sub_24B2D3164();
  v26 = sub_24B2D5934();

  v27 = os_log_type_enabled(v25, v26);
  v92 = v9;
  v85 = v16;
  v80 = v4;
  v81 = v1;
  v79 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v93[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, v93);
    *(v28 + 12) = 2080;
    sub_24B034188(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
    v30 = sub_24B2D57F4();
    v1 = v31;
    v32 = sub_24AFF321C(v30, v31, v93);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_24AFD2000, v25, v26, "Repository: %s - %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v28, -1, -1);
  }

  v12 = v23 + 56;
  v33 = 1 << v23[32];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v23 + 7);
  v36 = (v33 + 63) >> 6;
  v9 = (v91 + 56);
  v83 = (v91 + 32);
  v37 = v23;
  v23 = (v91 + 48);
  v16 = v37;

  v4 = 0;
  v84 = MEMORY[0x277D84F90];
  while (1)
  {
    v38 = v4;
    if (!v35)
    {
      break;
    }

LABEL_17:
    sub_24B0394EC(*(v16 + 6) + *(v86 + 72) * (__clz(__rbit64(v35)) | (v4 << 6)), v90, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v39 = v85;
    sub_24B039554(v90, v85, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24B0395BC(v39, _s14descr285E46659O16SubscriptionDataOMa);
      v40 = 1;
      v1 = v92;
      v41 = v87;
    }

    else
    {
      v42 = v82;
      sub_24B039554(v39, v82, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      v41 = v87;
      v43 = v42;
      v1 = v92;
      (*v83)(v87, v43, v92);
      v40 = 0;
    }

    v35 &= v35 - 1;
    (*v9)(v41, v40, 1, v1);

    if ((*v23)(v41, 1, v1) == 1)
    {
      sub_24AFF8258(v41, &qword_27EFC7880);
    }

    else
    {
      v77 = *v83;
      v77(v78, v41, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_24B006728(0, *(v84 + 2) + 1, 1, v84);
      }

      v45 = *(v84 + 2);
      v44 = *(v84 + 3);
      if (v45 >= v44 >> 1)
      {
        v84 = sub_24B006728(v44 > 1, v45 + 1, 1, v84);
      }

      v46 = v84;
      *(v84 + 2) = v45 + 1;
      v77(&v46[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v45], v78, v1);
    }
  }

  while (1)
  {
    v4 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v4 >= v36)
    {
      break;
    }

    v35 = *&v12[8 * v4];
    ++v38;
    if (v35)
    {
      goto LABEL_17;
    }
  }

  v47 = v84;

  v48 = sub_24B2D3164();
  v49 = sub_24B2D5934();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v93[0] = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, v93);
    *(v50 + 12) = 2048;
    *(v50 + 14) = v47[2];

    _os_log_impl(&dword_24AFD2000, v48, v49, "Repository: %s - handlesToGetFriendshipStatus- count: %ld, handles:", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x24C23D530](v51, -1, -1);
    MEMORY[0x24C23D530](v50, -1, -1);
  }

  else
  {
  }

  v53 = v92;
  v54 = v79;
  v55 = v47[2];
  if (v55)
  {
    v56 = *(v91 + 16);
    v57 = &v84[(*(v91 + 80) + 32) & ~*(v91 + 80)];
    v58 = *(v91 + 72);
    v90 = (v91 + 8);
    v91 += 16;
    *&v52 = 141558275;
    v87 = v52;
    v88 = v58;
    v56(v79, v57, v92);
    while (1)
    {
      v59 = sub_24B2D3164();
      v60 = sub_24B2D5934();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v56;
        v63 = v54;
        v64 = swift_slowAlloc();
        v93[0] = v64;
        *v61 = v87;
        *(v61 + 4) = 1752392040;
        *(v61 + 12) = 2081;
        v65 = sub_24B2D1694();
        v67 = v66;
        (*v90)(v63, v92);
        v68 = sub_24AFF321C(v65, v67, v93);
        v53 = v92;

        *(v61 + 14) = v68;
        _os_log_impl(&dword_24AFD2000, v59, v60, "Handle: %{private,mask.hash}s", v61, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v64);
        v69 = v64;
        v54 = v63;
        v56 = v62;
        v58 = v88;
        MEMORY[0x24C23D530](v69, -1, -1);
        MEMORY[0x24C23D530](v61, -1, -1);
      }

      else
      {

        (*v90)(v54, v53);
      }

      v57 += v58;
      if (!--v55)
      {
        break;
      }

      v56(v54, v57, v53);
    }
  }

  v70 = sub_24B2D56D4();
  v71 = v80;
  (*(*(v70 - 8) + 56))(v80, 1, 1, v70);
  sub_24B2D5694();
  v72 = v81;

  v73 = sub_24B2D5684();
  v74 = swift_allocObject();
  v74[2] = v73;
  v75 = v84;
  v74[3] = MEMORY[0x277D85700];
  v74[4] = v75;
  v74[5] = v72;
  sub_24B00A9A4(0, 0, v71, &unk_24B2E0B20, v74);
}

uint64_t sub_24B013B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[194] = a5;
  v5[193] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[195] = swift_task_alloc();
  v6 = sub_24B2D24A4();
  v5[196] = v6;
  v7 = *(v6 - 8);
  v5[197] = v7;
  v5[198] = *(v7 + 64);
  v5[199] = swift_task_alloc();
  v5[200] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8480);
  v5[201] = swift_task_alloc();
  v5[202] = swift_task_alloc();
  v8 = type metadata accessor for SessionFollowingState(0);
  v5[203] = v8;
  v5[204] = *(v8 - 8);
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  v5[207] = swift_task_alloc();
  v5[208] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8668);
  v5[209] = swift_task_alloc();
  v5[210] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v5[211] = swift_task_alloc();
  v5[212] = swift_task_alloc();
  v9 = type metadata accessor for SessionFollowerState(0);
  v5[213] = v9;
  v5[214] = *(v9 - 8);
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();
  v10 = sub_24B2D1704();
  v5[219] = v10;
  v5[220] = *(v10 - 8);
  v5[221] = swift_task_alloc();
  v5[222] = swift_task_alloc();
  v5[223] = swift_task_alloc();
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v5[227] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8670);
  v5[228] = swift_task_alloc();
  v5[229] = swift_task_alloc();
  v5[230] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v5[231] = swift_task_alloc();
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();
  v5[234] = swift_task_alloc();
  v5[235] = swift_task_alloc();
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  v5[238] = sub_24B2D5694();
  v5[239] = sub_24B2D5684();
  v12 = sub_24B2D5604();
  v5[240] = v12;
  v5[241] = v11;

  return MEMORY[0x2822009F8](sub_24B013FB4, v12, v11);
}

uint64_t sub_24B013FB4()
{
  v1 = v0[237];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[194];
  v5 = v0[193];
  v6 = *(v5 + 16) > 1uLL;
  v7 = swift_allocObject();
  v0[242] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v8 = swift_task_alloc();
  v0[243] = v8;
  *(v8 + 16) = &unk_24B2E0B40;
  *(v8 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8398);
  swift_asyncLet_begin();
  v9 = swift_allocObject();
  v0[244] = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  v10 = swift_task_alloc();
  v0[245] = v10;
  *(v10 + 16) = &unk_24B2E0B60;
  *(v10 + 24) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC83A8);
  swift_asyncLet_begin();
  (*(v2 + 56))(v1, 1, 1, v3);

  return MEMORY[0x282200930](v0 + 2, v0 + 175, sub_24B0141A0, v0 + 162);
}

uint64_t sub_24B0141A0()
{
  v1[246] = v0;
  if (v0)
  {
    v2 = sub_24B0165FC;
  }

  else
  {
    v2 = sub_24B0141D8;
  }

  return MEMORY[0x2822009F8](v2, v1[240], v1[241]);
}

uint64_t sub_24B0141D8()
{
  v132 = v0;
  v1 = v0[220];
  v2 = v0[214];
  v3 = v0[175];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[175] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v128 = v7 & v4;
  v113 = (63 - v8) >> 6;
  v130 = (v1 + 16);
  v125 = (v1 + 32);
  v120 = v0[220];
  v121 = (v2 + 56);
  v123 = v0[214];
  v118 = (v2 + 48);
  v126 = (v1 + 8);
  v114 = v0[175];

  v13 = 0;
  v117 = v5;
  v124 = v0;
  v14 = v128;
  if (v128)
  {
    while (1)
    {
      v15 = v13;
LABEL_13:
      v18 = v0[228];
      v19 = v0[227];
      v20 = v0[219];
      v21 = v124[218];
      v129 = (v14 - 1) & v14;
      v22 = __clz(__rbit64(v14)) | (v15 << 6);
      (*(v120 + 16))(v19, *(v114 + 48) + *(v120 + 72) * v22, v20);
      sub_24B0394EC(*(v114 + 56) + *(v123 + 72) * v22, v21, type metadata accessor for SessionFollowerState);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8680);
      v24 = *(v23 + 48);
      (*(v120 + 32))(v18, v19, v20);
      v25 = v21;
      v0 = v124;
      sub_24B039554(v25, v18 + v24, type metadata accessor for SessionFollowerState);
      (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
LABEL_14:
      v26 = v0[229];
      sub_24B0391CC(v0[228], v26, &qword_27EFC8670);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8680);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        break;
      }

      v28 = v0[229];
      v29 = v0[226];
      v30 = v0[225];
      v31 = v0[219];
      v32 = v0[217];
      v33 = v0[213];
      v34 = v0[212];
      v35 = *(v27 + 48);
      (*v125)(v29, v28, v31);
      sub_24B039554(v28 + v35, v32, type metadata accessor for SessionFollowerState);
      v122 = *v130;
      (*v130)(v30, v29, v31);
      sub_24B0394EC(v32, v34, type metadata accessor for SessionFollowerState);
      v36 = *v121;
      (*v121)(v34, 0, 1, v33);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v37 = v0[190];
      v38 = (*v118)(v34, 1, v33);
      v39 = v0[225];
      if (v38 == 1)
      {
        sub_24AFF8258(v0[212], &qword_27EFC8448);
        v40 = sub_24B181150(v39);
        if (v41)
        {
          v42 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131[0] = v37;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24B1CCBA8();
            v37 = v131[0];
          }

          v44 = v0[225];
          v45 = v0[219];
          v46 = v0[211];
          v47 = *(v120 + 8);
          v47(v37[6] + *(v120 + 72) * v42, v45);
          sub_24B039554(v37[7] + *(v123 + 72) * v42, v46, type metadata accessor for SessionFollowerState);
          sub_24B18FF0C(v42, v37);
          v47(v44, v45);
          v48 = 0;
        }

        else
        {
          v47 = *v126;
          (*v126)(v0[225], v0[219]);
          v48 = 1;
        }

        v57 = v0[211];
        v36(v57, v48, 1, v0[213]);
        sub_24AFF8258(v57, &qword_27EFC8448);
      }

      else
      {
        sub_24B039554(v0[212], v0[216], type metadata accessor for SessionFollowerState);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v37;
        v9 = sub_24B181150(v39);
        v50 = v37[2];
        v51 = (v10 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          goto LABEL_52;
        }

        v54 = v10;
        if (v37[3] >= v53)
        {
          if ((v49 & 1) == 0)
          {
            v110 = v9;
            sub_24B1CCBA8();
            v9 = v110;
            v37 = v131[0];
          }
        }

        else
        {
          v55 = v0[225];
          sub_24B1C2F2C(v53, v49);
          v37 = v131[0];
          v9 = sub_24B181150(v55);
          if ((v54 & 1) != (v56 & 1))
          {

            return sub_24B2D6054();
          }
        }

        v58 = v0[225];
        v59 = v0[219];
        v60 = v0[216];
        if (v54)
        {
          sub_24B038C24(v0[216], v37[7] + *(v123 + 72) * v9, type metadata accessor for SessionFollowerState);
          v47 = *v126;
          (*v126)(v58, v59);
        }

        else
        {
          v37[(v9 >> 6) + 8] |= 1 << v9;
          v61 = v9;
          v122(v37[6] + *(v120 + 72) * v9, v58, v59);
          sub_24B039554(v60, v37[7] + *(v123 + 72) * v61, type metadata accessor for SessionFollowerState);
          v47 = *(v120 + 8);
          v9 = (v47)(v58, v59);
          v62 = v37[2];
          v52 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v52)
          {
            goto LABEL_53;
          }

          v37[2] = v63;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v0[191] = v37;

      sub_24B2D3224();
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v64 = sub_24B2D3184();
      __swift_project_value_buffer(v64, qword_27EFE4418);

      v65 = sub_24B2D3164();
      v66 = sub_24B2D5934();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v131[0] = v68;
        *v67 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v69 = sub_24B2D51F4();
        v71 = v70;

        v72 = sub_24AFF321C(v69, v71, v131);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_24AFD2000, v65, v66, "Repository: followerStateByHandle - %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x24C23D530](v68, -1, -1);
        MEMORY[0x24C23D530](v67, -1, -1);
      }

      v73 = v0[217];
      v74 = v0[215];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
      sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
      sub_24B2D31F4();
      sub_24B0394EC(v73, v74, type metadata accessor for SessionFollowerState);
      if (swift_getEnumCaseMultiPayload())
      {
        v75 = v0[226];
        v76 = v0[219];
        v77 = v0[215];
        sub_24B0395BC(v0[217], type metadata accessor for SessionFollowerState);
        v47(v75, v76);
        v9 = sub_24B0395BC(v77, type metadata accessor for SessionFollowerState);
      }

      else
      {
        v127 = v47;
        v78 = v0[236];
        v115 = v0[235];
        v79 = v0[226];
        v80 = v0[224];
        v81 = v0[219];
        v82 = v0[215];
        v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
        sub_24B0391CC(v82, v78, &qword_27EFC8450);
        sub_24AFF8258(v82 + v83, &qword_27EFC8450);
        v122(v80, v79, v81);
        sub_24B008890(v78, v115, &qword_27EFC8450);
        v84 = sub_24B2D3164();
        v85 = sub_24B2D5904();
        v86 = os_log_type_enabled(v84, v85);
        v87 = v0[235];
        if (v86)
        {
          v112 = v0[234];
          v119 = v85;
          v88 = v0[227];
          v89 = v0[224];
          v90 = v0[219];
          v91 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v131[0] = v116;
          *v91 = 136315650;
          *(v91 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, v131);
          *(v91 + 12) = 2080;
          v122(v88, v89, v90);
          v92 = sub_24B2D53C4();
          v94 = v93;
          v127(v89, v90);
          v95 = sub_24AFF321C(v92, v94, v131);

          *(v91 + 14) = v95;
          *(v91 + 22) = 2080;
          sub_24B008890(v87, v112, &qword_27EFC8450);
          v96 = sub_24B2D53C4();
          v98 = v97;
          sub_24AFF8258(v87, &qword_27EFC8450);
          v99 = sub_24AFF321C(v96, v98, v131);

          *(v91 + 24) = v99;
          _os_log_impl(&dword_24AFD2000, v84, v119, "Repository: %s - follower: %s - expiryDate %s", v91, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v116, -1, -1);
          MEMORY[0x24C23D530](v91, -1, -1);
        }

        else
        {
          v102 = v0[224];
          v103 = v0[219];

          sub_24AFF8258(v87, &qword_27EFC8450);
          v47(v102, v103);
        }

        v104 = v0[237];
        v105 = v0[236];
        v106 = v0[234];
        v107 = v0[226];
        v108 = v0[219];
        v109 = v0[217];
        sub_24B017398(v104, v105, v106);
        sub_24AFF8258(v105, &qword_27EFC8450);
        sub_24B0395BC(v109, type metadata accessor for SessionFollowerState);
        v127(v107, v108);
        v9 = sub_24B038BB4(v106, v104);
      }

      v5 = v117;
      v14 = v129;
      if (!v129)
      {
        goto LABEL_5;
      }
    }

    v11 = sub_24B015020;
    v9 = (v0 + 82);
    v10 = v0 + 181;
    v12 = v0 + 170;
  }

  else
  {
LABEL_5:
    if (v113 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    else
    {
      v16 = v113;
    }

    v17 = v16 - 1;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v113)
      {
        v100 = v0[228];
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8680);
        (*(*(v101 - 8) + 56))(v100, 1, 1, v101);
        v129 = 0;
        v13 = v17;
        goto LABEL_14;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        v13 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  return MEMORY[0x282200930](v9, v10, v11, v12);
}

uint64_t sub_24B015020()
{
  v1[247] = v0;
  if (v0)
  {
    v2 = sub_24B01680C;
  }

  else
  {
    v2 = sub_24B015058;
  }

  return MEMORY[0x2822009F8](v2, v1[240], v1[241]);
}

uint64_t sub_24B015058()
{
  v168 = v0;
  v1 = v0[220];
  v2 = v0[204];
  v3 = v0[181];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[181] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v161 = v7 & v4;
  v146 = (63 - v8) >> 6;
  v9 = (v1 + 16);
  v155 = v0[204];
  v156 = (v1 + 32);
  v152 = v0[220];
  v153 = (v2 + 56);
  v150 = (v2 + 48);
  v159 = (v1 + 8);
  v148 = v0[181];

  v10 = 0;
  v166 = v0;
  v149 = v5;
  v157 = v9;
  v11 = v161;
  if (!v161)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v158 = v10;
    v17 = v10;
LABEL_20:
    v49 = v0[227];
    v50 = v0[219];
    v51 = v0[209];
    v52 = v0[208];
    v162 = (v11 - 1) & v11;
    v53 = __clz(__rbit64(v11)) | (v17 << 6);
    (*(v152 + 16))(v49, *(v148 + 48) + *(v152 + 72) * v53, v50);
    sub_24B0394EC(*(v148 + 56) + *(v155 + 72) * v53, v52, type metadata accessor for SessionFollowingState);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8678);
    v55 = *(v54 + 48);
    (*(v152 + 32))(v51, v49, v50);
    sub_24B039554(v52, v51 + v55, type metadata accessor for SessionFollowingState);
    (*(*(v54 - 8) + 56))(v51, 0, 1, v54);
LABEL_21:
    v56 = v0[210];
    sub_24B0391CC(v0[209], v56, &qword_27EFC8668);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8678);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      break;
    }

    v58 = v0[223];
    v59 = v0[222];
    v60 = v0[219];
    v61 = v0[210];
    v62 = v166[207];
    v63 = v166[203];
    v64 = v166[202];
    v65 = *(v57 + 48);
    (*v156)(v58, v61, v60);
    sub_24B039554(v61 + v65, v62, type metadata accessor for SessionFollowingState);
    v154 = *v157;
    (*v157)(v59, v58, v60);
    v0 = v166;
    sub_24B0394EC(v62, v64, type metadata accessor for SessionFollowingState);
    v66 = *v153;
    (*v153)(v64, 0, 1, v63);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v67 = v166[187];
    v68 = (*v150)(v64, 1, v63);
    v69 = v166[222];
    if (v68 == 1)
    {
      sub_24AFF8258(v166[202], &qword_27EFC8480);
      v70 = sub_24B181150(v69);
      if (v71)
      {
        v72 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167[0] = v67;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24B1CC87C();
          v67 = v167[0];
        }

        v74 = v166[222];
        v75 = v166[219];
        v76 = v166[201];
        v77 = *(v152 + 8);
        v77(v67[6] + *(v152 + 72) * v72, v75);
        sub_24B039554(v67[7] + *(v155 + 72) * v72, v76, type metadata accessor for SessionFollowingState);
        sub_24B18FBC8(v72, v67);
        v77(v74, v75);
        v78 = 0;
      }

      else
      {
        v77 = *v159;
        (*v159)(v166[222], v166[219]);
        v78 = 1;
      }

      v89 = v166[201];
      v66(v89, v78, 1, v166[203]);
      sub_24AFF8258(v89, &qword_27EFC8480);
    }

    else
    {
      sub_24B039554(v166[202], v166[206], type metadata accessor for SessionFollowingState);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v167[0] = v67;
      v80 = sub_24B181150(v69);
      v82 = v67[2];
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(v82, v83);
      v85 = v82 + v83;
      if (v84)
      {
        goto LABEL_61;
      }

      v86 = v81;
      if (v67[3] >= v85)
      {
        if ((v79 & 1) == 0)
        {
          v107 = v80;
          sub_24B1CC87C();
          v80 = v107;
          v67 = v167[0];
        }
      }

      else
      {
        v87 = v166[222];
        sub_24B1C2A8C(v85, v79);
        v67 = v167[0];
        v80 = sub_24B181150(v87);
        if ((v86 & 1) != (v88 & 1))
        {

          return sub_24B2D6054();
        }
      }

      v90 = v166[222];
      v91 = v166[219];
      v92 = v166[206];
      if (v86)
      {
        sub_24B038C24(v166[206], v67[7] + *(v155 + 72) * v80, type metadata accessor for SessionFollowingState);
        v77 = *v159;
        (*v159)(v90, v91);
      }

      else
      {
        v67[(v80 >> 6) + 8] |= 1 << v80;
        v93 = v80;
        v154(v67[6] + *(v152 + 72) * v80, v90, v91);
        sub_24B039554(v92, v67[7] + *(v155 + 72) * v93, type metadata accessor for SessionFollowingState);
        v77 = *(v152 + 8);
        v77(v90, v91);
        v94 = v67[2];
        v84 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v84)
        {
          goto LABEL_62;
        }

        v67[2] = v95;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v166[188] = v67;

    sub_24B2D3224();
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v164 = v77;
    v96 = sub_24B2D3184();
    __swift_project_value_buffer(v96, qword_27EFE4418);

    v97 = sub_24B2D3164();
    v98 = sub_24B2D5934();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v167[0] = v100;
      *v99 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v0 = v166;

      sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v101 = sub_24B2D51F4();
      v103 = v102;

      v104 = sub_24AFF321C(v101, v103, v167);

      *(v99 + 4) = v104;
      _os_log_impl(&dword_24AFD2000, v97, v98, "Repository: followingStateByHandle - %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x24C23D530](v100, -1, -1);
      MEMORY[0x24C23D530](v99, -1, -1);
    }

    v12 = v0[207];
    v13 = v0[205];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
    sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
    sub_24B2D31F4();
    sub_24B0394EC(v12, v13, type metadata accessor for SessionFollowingState);
    if (swift_getEnumCaseMultiPayload())
    {
      v14 = v0[223];
      v15 = v0[219];
      v16 = v0[205];
      sub_24B0395BC(v0[207], type metadata accessor for SessionFollowingState);
      v164(v14, v15);
      sub_24B0395BC(v16, type metadata accessor for SessionFollowingState);
      v5 = v149;
      v10 = v158;
      v11 = v162;
      if (!v162)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = v0[233];
      v147 = v0[232];
      v19 = v0[223];
      v20 = v0[221];
      v21 = v0[219];
      v22 = v0[205];
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
      sub_24B0391CC(v22, v18, &qword_27EFC8450);
      sub_24AFF8258(v22 + v23, &qword_27EFC8450);
      v154(v20, v19, v21);
      sub_24B008890(v18, v147, &qword_27EFC8450);
      v24 = sub_24B2D3164();
      v25 = sub_24B2D5904();
      if (os_log_type_enabled(v24, v25))
      {
        v144 = v0[232];
        v145 = v0[234];
        v26 = v0[227];
        v27 = v166[221];
        v28 = v166[219];
        v29 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v167[0] = v151;
        *v29 = 136315650;
        *(v29 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, v167);
        *(v29 + 12) = 2080;
        v154(v26, v27, v28);
        v30 = sub_24B2D53C4();
        v32 = v31;
        v0 = v166;
        v164(v27, v28);
        v33 = sub_24AFF321C(v30, v32, v167);

        *(v29 + 14) = v33;
        *(v29 + 22) = 2080;
        sub_24B008890(v144, v145, &qword_27EFC8450);
        v34 = sub_24B2D53C4();
        v36 = v35;
        sub_24AFF8258(v144, &qword_27EFC8450);
        v37 = sub_24AFF321C(v34, v36, v167);

        *(v29 + 24) = v37;
        _os_log_impl(&dword_24AFD2000, v24, v25, "Repository: %s - following: %s - expiryDate %s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v151, -1, -1);
        MEMORY[0x24C23D530](v29, -1, -1);
      }

      else
      {
        v38 = v0[232];
        v39 = v0[221];
        v40 = v0[219];

        sub_24AFF8258(v38, &qword_27EFC8450);
        v164(v39, v40);
      }

      v41 = v0[237];
      v42 = v0[234];
      v43 = v0[233];
      v44 = v0[223];
      v45 = v0[219];
      v46 = v0[207];
      sub_24B017398(v41, v43, v42);
      sub_24AFF8258(v43, &qword_27EFC8450);
      sub_24B0395BC(v46, type metadata accessor for SessionFollowingState);
      v164(v44, v45);
      sub_24B038BB4(v42, v41);
      v5 = v149;
      v10 = v158;
      v11 = v162;
      if (!v162)
      {
LABEL_12:
        if (v146 <= v10 + 1)
        {
          v47 = v10 + 1;
        }

        else
        {
          v47 = v146;
        }

        v48 = v47 - 1;
        while (1)
        {
          v17 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v17 >= v146)
          {
            v105 = v0[209];
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8678);
            (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
            v162 = 0;
            v158 = v48;
            goto LABEL_21;
          }

          v11 = *(v5 + 8 * v17);
          ++v10;
          if (v11)
          {
            v158 = v17;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_50;
      }
    }
  }

  v108 = v0[231];
  v109 = v0[197];
  v110 = v0[196];
  sub_24B008890(v0[237], v108, &qword_27EFC8450);
  if ((*(v109 + 48))(v108, 1, v110) == 1)
  {
    sub_24AFF8258(v0[231], &qword_27EFC8450);
  }

  else
  {
    v111 = *(v0[197] + 32);
    v111(v0[200], v0[231], v0[196]);
    sub_24B2D23E4();
    if (v112 > 0.0)
    {
      v113 = v112;
      v114 = v0[237];
      v115 = v0[200];
      v116 = v0[199];
      v160 = v115;
      v117 = v166[198];
      v118 = v166[197];
      v119 = v166[196];
      v120 = v166[195];
      v163 = v120;
      v165 = v114;
      v121 = v166[194];
      v122 = sub_24B2D56D4();
      (*(*(v122 - 8) + 56))(v120, 1, 1, v122);
      (*(v118 + 16))(v116, v115, v119);

      v123 = sub_24B2D5684();
      v124 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v125 = (v117 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
      v126 = swift_allocObject();
      v127 = MEMORY[0x277D85700];
      *(v126 + 16) = v123;
      *(v126 + 24) = v127;
      v128 = v126 + v124;
      v129 = v119;
      v111(v128, v116, v119);
      *(v126 + v125) = v113;
      *(v126 + ((v125 + 15) & 0xFFFFFFFFFFFFFFF8)) = v121;
      v0 = v166;
      v130 = sub_24B00A9A4(0, 0, v163, &unk_24B2E0B80, v126);
      (*(v118 + 8))(v160, v129);
      *(v121 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipRefresherTask) = v130;

      v131 = v165;
      goto LABEL_54;
    }

    (*(v0[197] + 8))(v0[200], v0[196]);
  }

  if (qword_27EFC75E8 != -1)
  {
    goto LABEL_63;
  }

LABEL_50:
  v132 = sub_24B2D3184();
  __swift_project_value_buffer(v132, qword_27EFE4418);
  v133 = sub_24B2D3164();
  v134 = sub_24B2D5904();
  v135 = os_log_type_enabled(v133, v134);
  v136 = v0[237];
  if (v135)
  {
    v137 = v166[234];
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v167[0] = v139;
    *v138 = 136315394;
    *(v138 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, v167);
    *(v138 + 12) = 2080;
    swift_beginAccess();
    sub_24B008890(v136, v137, &qword_27EFC8450);
    v140 = sub_24B2D53C4();
    v142 = sub_24AFF321C(v140, v141, v167);
    v0 = v166;

    *(v138 + 14) = v142;
    _os_log_impl(&dword_24AFD2000, v133, v134, "Repository: %s - Not scheduling timer: %s", v138, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v139, -1, -1);
    MEMORY[0x24C23D530](v138, -1, -1);
  }

  v131 = v136;
LABEL_54:
  sub_24AFF8258(v131, &qword_27EFC8450);

  return MEMORY[0x282200920](v0 + 82, v0 + 181, sub_24B0162F4, v0 + 176);
}

uint64_t sub_24B016310()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 1400, sub_24B016388, v0 + 1456);
}

uint64_t sub_24B0163A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B0165FC()
{
  v15 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1968);
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1968);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v14);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Followers - %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x282200930](v0 + 656, v0 + 1448, sub_24B015020, v0 + 1360);
}

uint64_t sub_24B01680C()
{
  v50 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = v0[247];
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[247];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v49);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Followings - %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[231];
  v14 = v0[197];
  v15 = v0[196];
  sub_24B008890(v0[237], v13, &qword_27EFC8450);
  if ((*(v14 + 48))(v13, 1, v15) == 1)
  {
    sub_24AFF8258(v0[231], &qword_27EFC8450);
  }

  else
  {
    v16 = *(v0[197] + 32);
    v16(v0[200], v0[231], v0[196]);
    sub_24B2D23E4();
    if (v17 > 0.0)
    {
      v18 = v17;
      v19 = v0[200];
      v20 = v0[199];
      v46 = v0[198];
      v21 = v0[197];
      v22 = v0[196];
      v44 = v22;
      v45 = v20;
      v23 = v0[195];
      v47 = v23;
      v48 = v0[237];
      v24 = v0[194];
      v25 = sub_24B2D56D4();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      (*(v21 + 16))(v20, v19, v22);

      v26 = sub_24B2D5684();
      v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v28 = (v46 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D85700];
      *(v29 + 16) = v26;
      *(v29 + 24) = v30;
      v16(v29 + v27, v45, v44);
      *(v29 + v28) = v18;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
      v31 = sub_24B00A9A4(0, 0, v47, &unk_24B2E0B80, v29);
      (*(v21 + 8))(v19, v44);
      *(v24 + OBJC_IVAR____TtC12FindMyUICore10Repository_friendshipRefresherTask) = v31;

      v32 = v48;
      goto LABEL_17;
    }

    (*(v0[197] + 8))(v0[200], v0[196]);
  }

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27EFE4418);
  v33 = sub_24B2D3164();
  v34 = sub_24B2D5904();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[237];
  if (v35)
  {
    v37 = v0[234];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49 = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v49);
    *(v38 + 12) = 2080;
    swift_beginAccess();
    sub_24B008890(v36, v37, &qword_27EFC8450);
    v40 = sub_24B2D53C4();
    v42 = sub_24AFF321C(v40, v41, &v49);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_24AFD2000, v33, v34, "Repository: %s - Not scheduling timer: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v39, -1, -1);
    MEMORY[0x24C23D530](v38, -1, -1);
  }

  v32 = v36;
LABEL_17:
  sub_24AFF8258(v32, &qword_27EFC8450);

  return MEMORY[0x282200920](v0 + 82, v0 + 181, sub_24B0162F4, v0 + 176);
}

uint64_t sub_24B016E18(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B016E3C, 0, 0);
}

uint64_t sub_24B016E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24B016EE4;
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return sub_24B04F64C(v3, v2);
}

uint64_t sub_24B016EE4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24B016FE4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24B0170D0;

  return v5();
}

uint64_t sub_24B0170D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24B0171E0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B017204, 0, 0);
}

uint64_t sub_24B017204()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24B039898;
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return sub_24B05125C(v3, v2);
}

uint64_t sub_24B0172AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24B039888;

  return v5();
}

uint64_t sub_24B017398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_24B2D24A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_24B008890(a1, v9, &qword_27EFC8450);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFC8450);
    return sub_24B008890(v26, v27, &qword_27EFC8450);
  }

  else
  {
    v19 = *(v11 + 32);
    v19(v16, v9, v10);
    sub_24B008890(v26, v7, &qword_27EFC8450);
    if (v17(v7, 1, v10) == 1)
    {
      sub_24AFF8258(v7, &qword_27EFC8450);
      v20 = v27;
      v19(v27, v16, v10);
      return (*(v11 + 56))(v20, 0, 1, v10);
    }

    else
    {
      v19(v14, v7, v10);
      sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
      v21 = sub_24B2D5284();
      v22 = (v21 & 1) == 0;
      if (v21)
      {
        v23 = v16;
      }

      else
      {
        v23 = v14;
      }

      if (v22)
      {
        v24 = v16;
      }

      else
      {
        v24 = v14;
      }

      (*(v11 + 8))(v23, v10);
      v25 = v27;
      v19(v27, v24, v10);
      return (*(v11 + 56))(v25, 0, 1, v10);
    }
  }
}

uint64_t sub_24B0176C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  *(v6 + 16) = a5;
  v7 = sub_24B2D5D64();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_24B2D24A4();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  sub_24B2D5694();
  *(v6 + 96) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v6 + 104) = v10;
  *(v6 + 112) = v9;

  return MEMORY[0x2822009F8](sub_24B017824, v10, v9);
}

uint64_t sub_24B017824()
{
  v27 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_24B2D3184();
  v0[15] = __swift_project_value_buffer(v5, qword_27EFE4418);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315650;
    *(v14 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v26);
    *(v14 + 12) = 2080;
    sub_24B034188(&qword_27EFC8688, MEMORY[0x277CC9578]);
    v15 = sub_24B2D5FA4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v11);
    v19 = sub_24AFF321C(v15, v17, &v26);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v13;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Repository: %s - Scheduling timer: %s - %f", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v14, -1, -1);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v10, v11);
  }

  v0[18] = v18;
  v20 = sub_24B2D62A4();
  v22 = v21;
  sub_24B2D6084();
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_24B017B44;

  return sub_24B09A030(v20, v22, 0, 0, 1);
}

uint64_t sub_24B017B44()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_24B017F44;
  }

  else
  {
    v8 = sub_24B017CDC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B017CDC()
{
  v21 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[2];

  v1(v2, v4, v3);
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v12 = 136315650;
    *(v12 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v20);
    *(v12 + 12) = 2080;
    sub_24B034188(&qword_27EFC8688, MEMORY[0x277CC9578]);
    v13 = sub_24B2D5FA4();
    v15 = v14;
    v8(v9, v10);
    v16 = sub_24AFF321C(v13, v15, &v20);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v11;
    _os_log_impl(&dword_24AFD2000, v5, v6, "Repository: %s - Timer will trigger: %s - %f", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v19, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  else
  {

    v8(v9, v10);
  }

  sub_24B012FF8();

  v17 = v0[1];

  return v17();
}

uint64_t sub_24B017F44()
{
  v15 = v0;
  v1 = *(v0 + 160);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD000000000000021, 0x800000024B2D8710, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - timer error: %@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B018128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v14;
  *(v8 + 32) = v13;
  *(v8 + 16) = a6;
  *(v8 + 24) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8488);
  *(v8 + 56) = swift_task_alloc();
  sub_24B2D5694();
  *(v8 + 64) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v8 + 72) = v10;
  *(v8 + 80) = v9;

  return MEMORY[0x2822009F8](sub_24B01820C, v10, v9);
}

uint64_t sub_24B01820C()
{
  [*(v0 + 16) coordinate];
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_24B0182CC;
  v6 = *(v0 + 56);
  v7 = *(v0 + 24);

  return sub_24B018484(v6, v7, v2, v4);
}

uint64_t sub_24B0182CC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B0183EC, v3, v2);
}

uint64_t sub_24B0183EC()
{
  v1 = v0[7];
  v2 = v0[5];

  sub_24B018F7C(v1, v2);
  sub_24AFF8258(v1, &qword_27EFC8488);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B018484(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 176) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = a4;
  *(v4 + 152) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8590);
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  sub_24B2D5694();
  *(v4 + 208) = sub_24B2D5684();
  v7 = sub_24B2D5604();
  *(v4 + 216) = v7;
  *(v4 + 224) = v6;

  return MEMORY[0x2822009F8](sub_24B01858C, v7, v6);
}

uint64_t sub_24B01858C()
{
  v19 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[29] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8560, &v18);
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v10 = *(v0 + 20);
  v9 = *(v0 + 21);
  v11 = [objc_opt_self() mapItemForCurrentLocation];
  v0[30] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];
  v0[31] = v13;

  v14 = [objc_allocWithZone(MEMORY[0x277CD4DC8]) init];
  v0[32] = v14;
  [v14 setSource_];
  [v14 setDestination_];
  [v14 setTransportType_];
  v15 = [objc_allocWithZone(MEMORY[0x277CD4DC0]) initWithRequest_];
  v0[33] = v15;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24B018960;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_24B038248(0, &qword_27EFC8598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24B026A64;
  v0[13] = &block_descriptor_0;
  [v15 calculateETAWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24B018960()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_24B018D28;
  }

  else
  {
    v5 = sub_24B018A90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B018A90()
{
  v24 = v0;

  v1 = *(v0 + 144);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8560, &v23);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: didReceive %s - %@", v4, 0x16u);
    sub_24AFF8258(v5, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v5, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  v22 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = [v1 transportType] == 2;
  [v1 expectedTravelTime];
  v14 = sub_24B2D62A4();
  v16 = v15;

  v17 = type metadata accessor for DirectionsState();
  v18 = *(v17 + 24);
  v19 = sub_24B2D24A4();
  (*(*(v19 - 8) + 16))(v12 + v18, v22, v19);
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v16;
  *(v12 + 24) = 0;
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24B018D28()
{
  v22 = v0;
  v1 = v0[34];

  swift_willThrow();
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  if (v5)
  {
    v20 = v0[33];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8560, &v21);
    *(v11 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: didReceive %s %@", v11, 0x16u);
    sub_24AFF8258(v12, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[19];
  v17 = type metadata accessor for DirectionsState();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

void sub_24B018F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v179 = a2;
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  v177 = v5;
  v178 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v170 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v155 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v167 = (&v155 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v165 = &v155 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v155 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v162 = &v155 - v19;
  MEMORY[0x28223BE20](v18);
  v159 = &v155 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8488);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v169 = (&v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v166 = &v155 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v155 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v161 = &v155 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v155 - v30;
  v32 = type metadata accessor for DirectionsState();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v164 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v158 = &v155 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v171 = &v155 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v155 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v155 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v163 = &v155 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v155 - v47;
  sub_24B008890(a1, v31, &qword_27EFC8488);
  v175 = v33;
  v176 = v32;
  v172 = *(v33 + 48);
  v173 = v33 + 48;
  v49 = v172(v31, 1, v32);
  v174 = v3;
  if (v49 == 1)
  {
    sub_24AFF8258(v31, &qword_27EFC8488);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v50 = sub_24B2D3184();
    __swift_project_value_buffer(v50, qword_27EFE4418);
    v51 = v178;
    v52 = *(v178 + 16);
    v53 = v177;
    v52(v11, v179, v177);
    v54 = sub_24B2D3164();
    v55 = sub_24B2D5934();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v169;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v181[0] = v59;
      *v58 = 136315651;
      *(v58 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D84E0, v181);
      *(v58 + 12) = 2160;
      *(v58 + 14) = 1752392040;
      *(v58 + 22) = 2081;
      v60 = sub_24B2D1694();
      v62 = v61;
      v167 = *(v178 + 8);
      v167(v11, v177);
      v63 = sub_24AFF321C(v60, v62, v181);

      *(v58 + 24) = v63;
      _os_log_impl(&dword_24AFD2000, v54, v55, "Repository: %s - Remove Direction - %{private,mask.hash}s", v58, 0x20u);
      swift_arrayDestroy();
      v64 = v59;
      v53 = v177;
      MEMORY[0x24C23D530](v64, -1, -1);
      MEMORY[0x24C23D530](v58, -1, -1);
    }

    else
    {

      v167 = *(v51 + 8);
      v167(v11, v53);
    }

    v113 = v176;
    v114 = v170;
    v52(v170, v179, v53);
    (*(v175 + 56))(v57, 1, 1, v113);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v115 = v181[0];
    if (v172(v57, 1, v113) == 1)
    {
      sub_24AFF8258(v57, &qword_27EFC8488);
      v116 = v168;
      sub_24B23C498(v114, v168);
      sub_24AFF8258(v116, &qword_27EFC8488);
      v167(v114, v53);
      v117 = v181[0];
    }

    else
    {
      v118 = v171;
      sub_24B039554(v57, v171, type metadata accessor for DirectionsState);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v115;
      sub_24B1C9950(v118, v114, isUniquelyReferenced_nonNull_native);
      v167(v114, v53);
      v117 = v180;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v180 = v117;

    sub_24B2D3224();
    sub_24B00E244();
  }

  else
  {
    sub_24B039554(v31, v48, type metadata accessor for DirectionsState);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v65 = v181[0];
    if (*(v181[0] + 16) && (v66 = sub_24B181150(v179), (v67 & 1) != 0))
    {
      sub_24B0394EC(*(v65 + 56) + *(v175 + 72) * v66, v44, type metadata accessor for DirectionsState);

      sub_24B039554(v44, v163, type metadata accessor for DirectionsState);
      v68 = v176;
      v69 = sub_24B2D23C4();
      v70 = v177;
      if (v69)
      {
        v71 = v178;
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v72 = sub_24B2D3184();
        __swift_project_value_buffer(v72, qword_27EFE4418);
        v73 = v159;
        v170 = *(v71 + 16);
        (v170)(v159, v179, v70);
        v74 = v157;
        sub_24B0394EC(v48, v157, type metadata accessor for DirectionsState);
        v75 = sub_24B2D3164();
        v76 = sub_24B2D5934();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v156 = v48;
          v79 = v78;
          v181[0] = v78;
          *v77 = 136315907;
          *(v77 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D84E0, v181);
          *(v77 + 12) = 2160;
          *(v77 + 14) = 1752392040;
          *(v77 + 22) = 2081;
          v80 = sub_24B2D1694();
          v81 = v73;
          v83 = v82;
          v84 = *(v71 + 8);
          v84(v81, v70);
          v85 = sub_24AFF321C(v80, v83, v181);

          *(v77 + 24) = v85;
          *(v77 + 32) = 2080;
          sub_24B0394EC(v74, v171, type metadata accessor for DirectionsState);
          v86 = sub_24B2D53C4();
          v88 = v87;
          sub_24B0395BC(v74, type metadata accessor for DirectionsState);
          v89 = sub_24AFF321C(v86, v88, v181);

          *(v77 + 34) = v89;
          _os_log_impl(&dword_24AFD2000, v75, v76, "Repository: %s - Replace Existing Directions - %{private,mask.hash}s %s", v77, 0x2Au);
          swift_arrayDestroy();
          v90 = v79;
          v48 = v156;
          MEMORY[0x24C23D530](v90, -1, -1);
          v91 = v77;
          v68 = v176;
          MEMORY[0x24C23D530](v91, -1, -1);
        }

        else
        {

          sub_24B0395BC(v74, type metadata accessor for DirectionsState);
          v84 = *(v71 + 8);
          v84(v73, v70);
        }

        v147 = v162;
        (v170)(v162, v179, v70);
        v148 = v161;
        sub_24B0394EC(v48, v161, type metadata accessor for DirectionsState);
        (*(v175 + 56))(v148, 0, 1, v68);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        v149 = v181[0];
        if (v172(v148, 1, v68) == 1)
        {
          sub_24AFF8258(v148, &qword_27EFC8488);
          v150 = v147;
          v151 = v168;
          sub_24B23C498(v150, v168);
          sub_24AFF8258(v151, &qword_27EFC8488);
          v84(v150, v70);
          v152 = v181[0];
        }

        else
        {
          v153 = v171;
          sub_24B039554(v148, v171, type metadata accessor for DirectionsState);
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v149;
          sub_24B1C9950(v153, v147, v154);
          v84(v147, v70);
          v152 = v180;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v180 = v152;

        sub_24B2D3224();
        sub_24B00E244();
        sub_24B0395BC(v163, type metadata accessor for DirectionsState);
        v128 = v48;
      }

      else
      {
        v129 = v178;
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v130 = sub_24B2D3184();
        __swift_project_value_buffer(v130, qword_27EFE4418);
        v131 = v160;
        (*(v129 + 16))(v160, v179, v70);
        v132 = v158;
        sub_24B0394EC(v48, v158, type metadata accessor for DirectionsState);
        v133 = sub_24B2D3164();
        v134 = v48;
        v135 = sub_24B2D5934();
        if (os_log_type_enabled(v133, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v181[0] = v137;
          *v136 = 136315907;
          *(v136 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D84E0, v181);
          *(v136 + 12) = 2160;
          *(v136 + 14) = 1752392040;
          *(v136 + 22) = 2081;
          v156 = v134;
          v138 = sub_24B2D1694();
          v139 = v131;
          v141 = v140;
          (*(v129 + 8))(v139, v70);
          v142 = sub_24AFF321C(v138, v141, v181);

          *(v136 + 24) = v142;
          *(v136 + 32) = 2080;
          sub_24B0394EC(v132, v171, type metadata accessor for DirectionsState);
          v143 = sub_24B2D53C4();
          v145 = v144;
          sub_24B0395BC(v132, type metadata accessor for DirectionsState);
          v146 = sub_24AFF321C(v143, v145, v181);

          *(v136 + 34) = v146;
          _os_log_impl(&dword_24AFD2000, v133, v135, "Repository: %s - Not Replace Existing Directions - %{private,mask.hash}s %s", v136, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v137, -1, -1);
          MEMORY[0x24C23D530](v136, -1, -1);

          sub_24B0395BC(v163, type metadata accessor for DirectionsState);
          v128 = v156;
        }

        else
        {

          sub_24B0395BC(v132, type metadata accessor for DirectionsState);
          (*(v129 + 8))(v131, v70);
          sub_24B0395BC(v163, type metadata accessor for DirectionsState);
          v128 = v134;
        }
      }
    }

    else
    {

      v92 = v177;
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v93 = sub_24B2D3184();
      __swift_project_value_buffer(v93, qword_27EFE4418);
      v94 = v178;
      v95 = v165;
      v169 = *(v178 + 16);
      v169(v165, v179, v92);
      v96 = v164;
      sub_24B0394EC(v48, v164, type metadata accessor for DirectionsState);
      v97 = sub_24B2D3164();
      v98 = sub_24B2D5934();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v156 = v48;
        v100 = v99;
        v101 = swift_slowAlloc();
        v181[0] = v101;
        *v100 = 136315907;
        *(v100 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D84E0, v181);
        *(v100 + 12) = 2160;
        *(v100 + 14) = 1752392040;
        *(v100 + 22) = 2081;
        v102 = sub_24B2D1694();
        v104 = v103;
        v170 = *(v178 + 8);
        (v170)(v95, v177);
        v105 = sub_24AFF321C(v102, v104, v181);

        *(v100 + 24) = v105;
        *(v100 + 32) = 2080;
        sub_24B0394EC(v96, v171, type metadata accessor for DirectionsState);
        v106 = v176;
        v107 = sub_24B2D53C4();
        v109 = v108;
        sub_24B0395BC(v96, type metadata accessor for DirectionsState);
        v110 = sub_24AFF321C(v107, v109, v181);

        *(v100 + 34) = v110;
        _os_log_impl(&dword_24AFD2000, v97, v98, "Repository: %s - Add Direction - %{private,mask.hash}s %s", v100, 0x2Au);
        swift_arrayDestroy();
        v111 = v101;
        v92 = v177;
        MEMORY[0x24C23D530](v111, -1, -1);
        v112 = v100;
        v48 = v156;
        MEMORY[0x24C23D530](v112, -1, -1);
      }

      else
      {

        sub_24B0395BC(v96, type metadata accessor for DirectionsState);
        v170 = *(v94 + 8);
        (v170)(v95, v92);
        v106 = v176;
      }

      v120 = v167;
      v169(v167, v179, v92);
      v121 = v166;
      sub_24B0394EC(v48, v166, type metadata accessor for DirectionsState);
      (*(v175 + 56))(v121, 0, 1, v106);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v122 = v181[0];
      if (v172(v121, 1, v106) == 1)
      {
        sub_24AFF8258(v121, &qword_27EFC8488);
        v123 = v120;
        v124 = v168;
        sub_24B23C498(v123, v168);
        sub_24AFF8258(v124, &qword_27EFC8488);
        (v170)(v123, v92);
        v125 = v181[0];
      }

      else
      {
        v126 = v171;
        sub_24B039554(v121, v171, type metadata accessor for DirectionsState);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v122;
        sub_24B1C9950(v126, v120, v127);
        (v170)(v120, v92);
        v125 = v180;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v180 = v125;

      sub_24B2D3224();
      sub_24B00E244();
      v128 = v48;
    }

    sub_24B0395BC(v128, type metadata accessor for DirectionsState);
  }
}

id sub_24B01A4B0()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager;
  result = *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager);
  if (!result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_sourceBundleId + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_sourceBundleId);
      v5 = objc_opt_self();

      v6 = [v5 mainBundle];
      v7 = [v6 bundleIdentifier];

      if (!v7)
      {

        goto LABEL_11;
      }

      v8 = sub_24B2D5394();
      v10 = v9;

      if (v4 != v8 || v3 != v10)
      {
        v12 = sub_24B2D6004();

        if (v12)
        {
          goto LABEL_13;
        }

LABEL_11:
        v13 = [objc_allocWithZone(type metadata accessor for Repository.MockDelegate()) init];
        sub_24B038248(0, &qword_27EFC8540);
        v14 = sub_24B2D59C4();
        v15 = objc_allocWithZone(MEMORY[0x277CBFC10]);
        v16 = sub_24B2D5374();
        v17 = [v15 initWithEffectiveBundleIdentifier:v16 delegate:v13 onQueue:v14];

        v18 = *(v0 + v1);
        *(v0 + v1) = v17;

        v19 = objc_opt_self();
        v20 = sub_24B2D5374();
        v21 = sub_24B2D5374();
        v22 = [v19 newAssertionForBundleIdentifier:v20 withReason:v21];

        v23 = *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_effectiveBundleAssertion);
        *(v0 + OBJC_IVAR____TtC12FindMyUICore10Repository_effectiveBundleAssertion) = v22;
        goto LABEL_14;
      }
    }

LABEL_13:
    v24 = [objc_opt_self() sharedManager];
    v23 = *(v0 + v1);
    *(v0 + v1) = v24;
LABEL_14:

    result = *(v0 + v1);
    if (!result)
    {
      return result;
    }
  }

  return [result requestWhenInUseAuthorization];
}

uint64_t sub_24B01A744()
{
  v1[7] = v0;
  v2 = sub_24B2D24A4();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = sub_24B2D5694();
  v1[16] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[17] = v5;
  v1[18] = v4;

  return MEMORY[0x2822009F8](sub_24B01A868, v5, v4);
}

uint64_t sub_24B01A868()
{
  v76 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[19] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v75[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = v0[7];
  sub_24B2D2494();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  v7 = v0[2];
  v0[20] = v7;
  sub_24B01A4B0();
  v8 = *(v6 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager);
  v0[21] = v8;
  if (!v8)
  {

    v31 = sub_24B2D3164();
    v32 = sub_24B2D5914();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
      _os_log_impl(&dword_24AFD2000, v31, v32, "Repository: %s - Not Location Manager", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C23D530](v34, -1, -1);
      MEMORY[0x24C23D530](v33, -1, -1);
    }

    v35 = v0[9];
    sub_24B0382A8();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v9 authorizationStatus];
  if (dword_285E482A0 != v10 && unk_285E482A4 != v10)
  {

    v37 = sub_24B2D3164();
    v38 = sub_24B2D5914();
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
      _os_log_impl(&dword_24AFD2000, v37, v38, "Repository: %s - Not authorized", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C23D530](v41, -1, -1);
      MEMORY[0x24C23D530](v40, -1, -1);
    }

    v35 = v0[9];
    sub_24B0382A8();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

LABEL_23:
    (*(v35 + 8))(v0[14], v0[8]);

    v43 = v0[1];

    return v43();
  }

  v12 = v7;
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5934();

  v74 = v9;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v75[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
    *(v15 + 12) = 2080;
    v0[6] = v7;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
    v18 = sub_24B2D53C4();
    v20 = sub_24AFF321C(v18, v19, v75);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24AFD2000, v13, v14, "Repository: %s - alreadyFetchedLocation: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);
  }

  if (v7 && (v21 = v12, v22 = sub_24B01C5CC(0.0), v21, v22))
  {

    v23 = sub_24B2D3164();
    v24 = sub_24B2D5934();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[14];
    v28 = v0[8];
    v27 = v0[9];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v75[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
      _os_log_impl(&dword_24AFD2000, v23, v24, "Repository: %s - alreadyFetchedLocation: Accepted", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C23D530](v30, -1, -1);
      MEMORY[0x24C23D530](v29, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v26, v28);

    v71 = v0[1];

    return v71(v21);
  }

  else
  {
    v45 = sub_24B2D3164();
    v46 = sub_24B2D5934();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
      _os_log_impl(&dword_24AFD2000, v45, v46, "Repository: %s - alreadyFetchedLocation: Not Accepted", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C23D530](v48, -1, -1);
      MEMORY[0x24C23D530](v47, -1, -1);
    }

    v49 = sub_24B2D3164();
    v50 = sub_24B2D5934();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v75);
      _os_log_impl(&dword_24AFD2000, v49, v50, "Repository: %s - will listen to stream", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v51, -1, -1);
    }

    v53 = v0[14];
    v55 = v0[12];
    v54 = v0[13];
    v57 = v0[10];
    v56 = v0[11];
    v59 = v0[8];
    v58 = v0[9];
    sub_24B2D2494();
    v60 = sub_24B2D62A4();
    v72 = v61;
    v73 = v60;
    v62 = *(v58 + 16);
    v62(v55, v54, v59);
    v62(v56, v53, v59);
    v63 = *(v58 + 80);
    v64 = (v63 + 24) & ~v63;
    v65 = (v57 + v63 + v64) & ~v63;
    v66 = swift_allocObject();
    v0[22] = v66;
    *(v66 + 16) = v74;
    v67 = *(v58 + 32);
    v67(v66 + v64, v55, v59);
    v67(v66 + v65, v56, v59);
    v68 = v74;
    v0[23] = sub_24B2D5684();
    v69 = swift_task_alloc();
    v0[24] = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8388);
    v0[25] = v70;
    *v69 = v0;
    v69[1] = sub_24B01B2D8;

    return MEMORY[0x28215EB08](v0 + 3, v73, v72, &unk_24B2E0A98, v66, v70);
  }
}

uint64_t sub_24B01B2D8()
{

  if (v0)
  {

    v1 = sub_24B2D5604();
    v3 = v2;
    v4 = sub_24B01BBF8;
  }

  else
  {
    v1 = sub_24B2D5604();
    v3 = v5;
    v4 = sub_24B01B45C;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_24B01B45C()
{

  v0[26] = v0[3];
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_24B01B4D0, v1, v2);
}

uint64_t sub_24B01B4D0()
{
  v47 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_24B01BAD0;

    return sub_24B053714(v1);
  }

  else
  {

    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v46[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v46);
      _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - No Location from CL", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C23D530](v7, -1, -1);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    v8 = *(v0 + 160);
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5934();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v46);
      *(v12 + 12) = 2080;
      *(v0 + 32) = v11;
      v14 = v11;
      v15 = sub_24B2D53C4();
      v17 = sub_24AFF321C(v15, v16, v46);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_24AFD2000, v9, v10, "Repository: %s - Will try alreadyFetchedLocation again: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }

    v18 = *(v0 + 160);
    if (v18 && (v19 = v18, v20 = sub_24B01C5CC(3.0), v19, v20))
    {
      v21 = sub_24B2D3164();
      v22 = sub_24B2D5934();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 168);
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);
      v27 = *(v0 + 64);
      v28 = *(v0 + 72);
      if (v23)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v46[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v46);
        _os_log_impl(&dword_24AFD2000, v21, v22, "Repository: %s - alreadyFetchedLocation: Accepted", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C23D530](v30, -1, -1);
        MEMORY[0x24C23D530](v29, -1, -1);
      }

      v31 = *(v28 + 8);
      v31(v26, v27);
      v31(v25, v27);
      v32 = *(v0 + 160);

      v33 = *(v0 + 8);

      return v33(v32);
    }

    else
    {
      v34 = sub_24B2D3164();
      v35 = sub_24B2D5934();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v46[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v46);
        _os_log_impl(&dword_24AFD2000, v34, v35, "Repository: %s - alreadyFetchedLocation: Not Accepted", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C23D530](v37, -1, -1);
        MEMORY[0x24C23D530](v36, -1, -1);
      }

      v39 = *(v0 + 160);
      v38 = *(v0 + 168);
      v40 = *(v0 + 104);
      v41 = *(v0 + 64);
      v42 = *(v0 + 72);
      sub_24B0382A8();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();

      v44 = *(v42 + 8);
      v44(v40, v41);
      v44(*(v0 + 112), *(v0 + 64));

      v45 = *(v0 + 8);

      return v45();
    }
  }
}

uint64_t sub_24B01BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v6[28] = a3;
  v6[29] = v3;

  if (v3)
  {
    v7 = v6[17];
    v8 = v6[18];
    v9 = sub_24B01C4E0;
  }

  else
  {
    v6[30] = a2;
    v7 = v6[17];
    v8 = v6[18];
    v9 = sub_24B01C1D4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B01BBF8()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_24B01BC64, v1, v2);
}

uint64_t sub_24B01BC64()
{
  v45 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5914();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v44[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v44);
    _os_log_impl(&dword_24AFD2000, v1, v2, "Repository: %s - No Location from CL", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = *(v0 + 160);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v44);
    *(v9 + 12) = 2080;
    *(v0 + 32) = v8;
    v11 = v8;
    v12 = sub_24B2D53C4();
    v14 = sub_24AFF321C(v12, v13, v44);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Repository: %s - Will try alreadyFetchedLocation again: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  v15 = *(v0 + 160);
  if (v15 && (v16 = v15, v17 = sub_24B01C5CC(3.0), v16, v17))
  {
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 168);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 64);
    v25 = *(v0 + 72);
    if (v20)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v44);
      _os_log_impl(&dword_24AFD2000, v18, v19, "Repository: %s - alreadyFetchedLocation: Accepted", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C23D530](v27, -1, -1);
      MEMORY[0x24C23D530](v26, -1, -1);
    }

    v28 = *(v25 + 8);
    v28(v23, v24);
    v28(v22, v24);
    v29 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30(v29);
  }

  else
  {
    v32 = sub_24B2D3164();
    v33 = sub_24B2D5934();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, v44);
      _os_log_impl(&dword_24AFD2000, v32, v33, "Repository: %s - alreadyFetchedLocation: Not Accepted", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C23D530](v35, -1, -1);
      MEMORY[0x24C23D530](v34, -1, -1);
    }

    v37 = *(v0 + 160);
    v36 = *(v0 + 168);
    v38 = *(v0 + 104);
    v39 = *(v0 + 64);
    v40 = *(v0 + 72);
    sub_24B0382A8();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();

    v42 = *(v40 + 8);
    v42(v38, v39);
    v42(*(v0 + 112), *(v0 + 64));

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_24B01C1D4()
{
  v34 = v0;
  v1 = v0[28];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = v1;
  v2 = v1;

  sub_24B2D3224();
  sub_24B00E490();
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v27 = v0[26];
    v28 = v0[21];
    v31 = v0[13];
    v32 = v0[14];
    v6 = v0[9];
    v29 = v0[20];
    v30 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, &v33);
    *(v7 + 12) = 2080;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_24B2D5394();
    v13 = v12;

    v14 = sub_24AFF321C(v11, v13, &v33);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Finish with location: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);

    v15 = *(v6 + 8);
    v15(v31, v30);
    v15(v32, v30);
  }

  else
  {
    v16 = v0[26];
    v18 = v0[20];
    v17 = v0[21];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[8];
    v22 = v0[9];

    v23 = *(v22 + 8);
    v23(v20, v21);
    v23(v19, v21);
  }

  v24 = v0[28];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_24B01C4E0()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[9];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v0[14], v0[8]);

  v8 = v0[1];

  return v8();
}

BOOL sub_24B01C5CC(double a1)
{
  v3 = sub_24B2D24A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 horizontalAccuracy];
  v8 = v7;
  v9 = 0.0;
  if (a1 >= 0.0)
  {
    v9 = a1;
  }

  v10 = v9 * 170.0 + 30.0;
  if (a1 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 200.0;
  }

  [v1 horizontalAccuracy];
  v13 = v12;
  v14 = [v1 timestamp];
  sub_24B2D2484();

  sub_24B2D2344();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v17 = sub_24B2D3184();
  __swift_project_value_buffer(v17, qword_27EFE4418);
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5904();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_24AFF321C(0xD00000000000003FLL, 0x800000024B2D85D0, &v32);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v16 < 300.0;
    _os_log_impl(&dword_24AFD2000, v18, v19, "CompositeAppViewModel: %s - isAgeOk: %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C23D530](v21, -1, -1);
    MEMORY[0x24C23D530](v20, -1, -1);
  }

  v22 = sub_24B2D3164();
  v23 = sub_24B2D5904();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_24AFF321C(0xD00000000000003FLL, 0x800000024B2D85D0, &v32);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v8 < 30.0;
    _os_log_impl(&dword_24AFD2000, v22, v23, "CompositeAppViewModel: %s - isAccuracy: %{BOOL}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v24, -1, -1);
  }

  v26 = sub_24B2D3164();
  v27 = sub_24B2D5904();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_24AFF321C(0xD00000000000003FLL, 0x800000024B2D85D0, &v32);
    *(v28 + 12) = 1024;
    *(v28 + 14) = v13 < v11;
    _os_log_impl(&dword_24AFD2000, v26, v27, "CompositeAppViewModel: %s - isAccuracyOkConsideringTimePassed: %{BOOL}d", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v28, -1, -1);
  }

  if (v16 >= 300.0)
  {
    return 0;
  }

  if (v13 < v11)
  {
    return 1;
  }

  return v8 < 30.0;
}

uint64_t sub_24B01CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85F0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85F8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = sub_24B2D25F4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_24B2D2604();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8600);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8608);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B01CCAC, 0, 0);
}

uint64_t sub_24B01CCAC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v8 = *(v0 + 32);
  (*(*(v0 + 128) + 104))(*(v0 + 136), *MEMORY[0x277D85778], *(v0 + 120));
  sub_24B2D5744();
  (*(v2 + 104))(v1, *MEMORY[0x277D850A0], v3);
  sub_24B2D5964();
  (*(v2 + 8))(v1, v3);
  sub_24B039184(&unk_27EFC8610, &qword_27EFC8608);
  sub_24B034188(&qword_27EFCE570, MEMORY[0x277D850B8]);
  sub_24B2D3124();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *(v4 + 16) = v8;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_24B01CEF8;
  v6 = *(v0 + 64);

  return sub_24B01E4A4(v6, &unk_24B2E0AC8, v4);
}

void sub_24B01CEF8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    sub_24AFF8258(*(v2 + 48), &qword_27EFC85F0);

    MEMORY[0x2822009F8](sub_24B01D050, 0, 0);
  }
}

uint64_t sub_24B01D050()
{
  v1 = v0[7];
  sub_24B008890(v0[8], v1, &qword_27EFC85F8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8620);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];
  v18 = v0[2];
  if (v3 == 1)
  {
    sub_24AFF8258(v11, &qword_27EFC85F8);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    sub_24AFF8258(v10, &qword_27EFC85F8);
    *v18 = 0;
  }

  else
  {
    v17 = v0[20];
    v12 = *(v2 + 48);
    v13 = sub_24B2D2614();
    sub_24AFF8258(v11, &qword_27EFC85F8);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v17, v6);
    *v18 = v13;
    v14 = sub_24B2D2624();
    (*(*(v14 - 8) + 8))(v10 + v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B01D2AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_24B2D56D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_24B01DD34(0, 0, v8, &unk_24B2E0AF8, v11);
}

uint64_t sub_24B01D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_24B2D5D54();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_24B2D5D64();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8638);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B01D618, 0, 0);
}

uint64_t sub_24B01D618()
{
  sub_24B2D5794();
  *(v0 + 152) = 0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  *(v0 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8630);
  sub_24B2D5704();
  (*(v2 + 8))(v1, v3);
  sub_24B2D6084();
  *(v0 + 40) = xmmword_24B2E0670;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v7 = sub_24B034188(&qword_27EFC8640, MEMORY[0x277D85928]);
  sub_24B2D6064();
  sub_24B034188(&qword_27EFC8648, MEMORY[0x277D858F8]);
  sub_24B2D5D74();
  v8 = *(v5 + 8);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_24B01D89C;
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);

  return MEMORY[0x2822008C8](v11, v0 + 16, v10, v7);
}

uint64_t sub_24B01D89C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2 + 160))(*(v2 + 96), *(v2 + 72));
    v3 = sub_24B01DC90;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 160))(*(v2 + 96), *(v2 + 72));
    (*(v5 + 8))(v4, v6);
    v3 = sub_24B01D9F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B01D9F4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  sub_24B2D5794();
  if (v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 152) = v2 + 1.0;
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 128);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    *(v0 + 56) = v2 + 1.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8630);
    sub_24B2D5704();
    (*(v6 + 8))(v5, v7);
    sub_24B2D6084();
    *(v0 + 40) = xmmword_24B2E0670;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v11 = sub_24B034188(&qword_27EFC8640, MEMORY[0x277D85928]);
    sub_24B2D6064();
    sub_24B034188(&qword_27EFC8648, MEMORY[0x277D858F8]);
    sub_24B2D5D74();
    v12 = *(v9 + 8);
    *(v0 + 160) = v12;
    *(v0 + 168) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_24B01D89C;
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);

    return MEMORY[0x2822008C8](v15, v0 + 16, v14, v11);
  }
}

uint64_t sub_24B01DC90()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B01DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24B008890(a3, v22 - v9, &qword_27EFC8580);
  v11 = sub_24B2D56D4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AFF8258(v10, &qword_27EFC8580);
  }

  else
  {
    sub_24B2D56C4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24B2D5604();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24B2D53D4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24AFF8258(a3, &qword_27EFC8580);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AFF8258(a3, &qword_27EFC8580);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24B01DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24B2D24A4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8620);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B01E0F8, 0, 0);
}

uint64_t sub_24B01E0F8()
{
  v34 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[2];
  v3 = sub_24B2D3184();
  __swift_project_value_buffer(v3, qword_27EFE4418);
  sub_24B008890(v2, v1, &qword_27EFC8620);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5904();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D85B0, &v33);
    *(v11 + 12) = 2080;
    sub_24B008890(v7, v9, &qword_27EFC8620);
    v13 = *(v10 + 48);
    *v8 = *v9;
    v14 = sub_24B2D2624();
    (*(*(v14 - 8) + 32))(&v8[v13], &v9[v13], v14);
    v15 = sub_24B2D53C4();
    v17 = v16;
    sub_24AFF8258(v7, &qword_27EFC8620);
    v18 = sub_24AFF321C(v15, v17, &v33);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - proposed location: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  else
  {

    sub_24AFF8258(v7, &qword_27EFC8620);
  }

  v19 = v0[10];
  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[5];
  v23 = v0[6];
  v24 = v0[2];
  sub_24B2D2494();
  sub_24B2D2344();
  v26 = v25;
  (*(v23 + 8))(v20, v22);
  sub_24B008890(v24, v19, &qword_27EFC8620);
  v27 = *(v21 + 48);
  v28 = sub_24B2D2614();
  v29 = sub_24B2D2624();
  (*(*(v29 - 8) + 8))(v19 + v27, v29);
  if (v28)
  {
    v30 = v28;
    LOBYTE(v28) = sub_24B01C5CC(v26 / 3.0);
  }

  v31 = v0[1];

  return v31(v28 & 1);
}

uint64_t sub_24B01E4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8620);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85F8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B01E5AC, 0, 0);
}

uint64_t sub_24B01E5AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85F0);
  v1 = sub_24B2D30E4();
  v0[11] = v1;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8628);
  *v2 = v0;
  v2[1] = sub_24B01E684;
  v4 = v0[10];

  return MEMORY[0x282141C60](v4, v3);
}

uint64_t sub_24B01E684()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_24B01E95C;
  }

  else
  {
    v2 = sub_24B01E7A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B01E7A0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];

    (*(v3 + 56))(v4, 1, 1, v2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[4];
    sub_24B0391CC(v1, v0[9], &qword_27EFC8620);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_24B01E9C8;
    v9 = v0[9];

    return v10(v9);
  }
}

uint64_t sub_24B01E95C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B01E9C8(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    sub_24AFF8258(*(v4 + 72), &qword_27EFC8620);

    v5 = sub_24B01EC8C;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v5 = sub_24B01EB14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B01EB14()
{
  if (*(v0 + 128) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);

    sub_24B0391CC(v1, v4, &qword_27EFC8620);
    (*(v2 + 56))(v4, 0, 1, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_24AFF8258(*(v0 + 72), &qword_27EFC8620);
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8628);
    *v7 = v0;
    v7[1] = sub_24B01E684;
    v9 = *(v0 + 80);

    return MEMORY[0x282141C60](v9, v8);
  }
}

uint64_t sub_24B01EC8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B01ECF8(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v73 - v5;
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  if (qword_27EFC75E8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = sub_24B2D3184();
    v14 = __swift_project_value_buffer(v13, qword_27EFE4418);

    v78 = v14;
    v15 = sub_24B2D3164();
    v16 = sub_24B2D5934();

    v17 = os_log_type_enabled(v15, v16);
    v74 = a1;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = v84;
      *v18 = 136315394;
      *(v18 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8820, &v85);
      *(v18 + 12) = 2080;
      v19 = MEMORY[0x24C23BD20](a1, v6);
      v21 = v12;
      v22 = sub_24AFF321C(v19, v20, &v85);
      a1 = v74;

      *(v18 + 14) = v22;
      v12 = v21;
      _os_log_impl(&dword_24AFD2000, v15, v16, "Repository: %s - %s", v18, 0x16u);
      v23 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v23, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);
    }

    a1 = *(a1 + 2);
    if (!a1)
    {
      break;
    }

    v25 = *(v7 + 16);
    v7 += 16;
    v26 = v74 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v79 = *(v7 + 56);
    v83 = (v7 - 8);
    v84 = v25;
    *&v24 = 136315138;
    v75 = v24;
    v76 = v7;
    (v25)(v12, v26, v6);
    while (1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v27 = v85;
      if (v85[2] && (v28 = sub_24B181150(v12), (v29 & 1) != 0))
      {
        v30 = (*(v27 + 56) + 32 * v28);
        v31 = v30[2];
        sub_24B034224(*v30, v30[1], v31);

        if (!v31)
        {
          goto LABEL_14;
        }

        if (v31 != 1)
        {

LABEL_14:
          (*v83)(v12, v6);
          goto LABEL_7;
        }
      }

      else
      {
      }

      (v84)(v10, v12, v6);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v32 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v32;
      v34 = sub_24B181150(v10);
      v36 = *(v32 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        break;
      }

      v40 = v35;
      v41 = *(v32 + 24);
      v81 = v26;
      v82 = a1;
      if (v41 >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = v34;
          sub_24B1CC0B0();
          v34 = v65;
        }
      }

      else
      {
        sub_24B1C1F20(v39, isUniquelyReferenced_nonNull_native);
        v34 = sub_24B181150(v10);
        if ((v40 & 1) != (v42 & 1))
        {
          result = sub_24B2D6054();
          __break(1u);
          return result;
        }
      }

      v43 = v85;
      if (v40)
      {
        v44 = v85[7] + 32 * v34;
        v45 = *v44;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        *v44 = 0;
        *(v44 + 8) = 0;
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        sub_24B0341E0(v45, v46, v47);
        v80 = *v83;
        v80(v10, v6);
      }

      else
      {
        v85[(v34 >> 6) + 8] |= 1 << v34;
        v48 = v34;
        (v84)(v43[6] + v34 * v79, v10, v6);
        v49 = v43[7] + 32 * v48;
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        *(v49 + 24) = 0;
        *v49 = 0;
        a1 = *v83;
        (*v83)(v10, v6);
        v50 = v43[2];
        v38 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v38)
        {
          goto LABEL_30;
        }

        v80 = a1;
        v43[2] = v51;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v85 = v43;

      sub_24B2D3224();

      v52 = sub_24B2D3164();
      v53 = sub_24B2D5934();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v85 = v77;
        *v54 = v75;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24B2D3214();

        sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v55 = sub_24B2D51F4();
        v56 = v12;
        v57 = v10;
        v58 = v6;
        v59 = v2;
        v61 = v60;

        v62 = v55;
        v7 = v76;
        v63 = sub_24AFF321C(v62, v61, &v85);
        v2 = v59;
        v6 = v58;
        v10 = v57;
        v12 = v56;

        *(v54 + 4) = v63;
        _os_log_impl(&dword_24AFD2000, v52, v53, "Repository: locationStateByHandle - %s", v54, 0xCu);
        v64 = v77;
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x24C23D530](v64, -1, -1);
        MEMORY[0x24C23D530](v54, -1, -1);
      }

      v26 = v81;
      a1 = v82;
      v80(v12, v6);
LABEL_7:
      v26 += v79;
      a1 = (a1 - 1);
      if (!a1)
      {
        goto LABEL_28;
      }

      (v84)(v12, v26, v6);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_28:
  v66 = sub_24B2D56D4();
  v67 = v73;
  (*(*(v66 - 8) + 56))(v73, 1, 1, v66);
  sub_24B2D5694();
  v68 = v74;

  v69 = sub_24B2D5684();
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  v70[2] = v69;
  v70[3] = v71;
  v70[4] = v68;
  v70[5] = v2;
  sub_24B00A9A4(0, 0, v67, &unk_24B2E0C78, v70);
}

uint64_t sub_24B01F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_24B2D1704();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_24B2D5D64();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_24B2D5694();
  v5[14] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v5[15] = v9;
  v5[16] = v8;

  return MEMORY[0x2822009F8](sub_24B01F6C8, v9, v8);
}

uint64_t sub_24B01F6C8()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24B01F794;

  return sub_24B09A030(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_24B01F794()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_24B01FF04;
  }

  else
  {
    v8 = sub_24B01F92C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B01F92C()
{
  v47 = v0;

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);

  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8820, &v46);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x24C23BD20](v5, v4);
    v10 = sub_24AFF321C(v8, v9, &v46);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AFD2000, v2, v3, "Repository: %s - Will remove .loading - %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[6];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[9];
    v15 = *(v13 + 16);
    v13 += 16;
    v14 = v15;
    v16 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v45 = *(v13 + 56);
    v17 = (v13 - 8);
    v18 = &unk_24B2E08C8;
    v19 = &unk_24B2E08F0;
    v44 = v15;
    v15(v0[10], v16, v0[8]);
    while (1)
    {
      v20 = v18;
      swift_getKeyPath();
      v21 = v19;
      swift_getKeyPath();
      sub_24B2D3214();

      v22 = v0[2];
      if (!*(v22 + 16))
      {
        goto LABEL_15;
      }

      v23 = sub_24B181150(v0[10]);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      v25 = (*(v22 + 56) + 32 * v23);
      v26 = v25[2];
      sub_24B034224(*v25, v25[1], v26);

      if (v26)
      {
        break;
      }

      v27 = v0[10];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v28 = v0[3];
      v29 = sub_24B181150(v27);
      if (v30)
      {
        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v28;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24B1CC0B0();
          v28 = v46;
        }

        (*v17)(*(v28 + 48) + v31 * v45, v0[8]);
        sub_24B0341E0(*(*(v28 + 56) + 32 * v31), *(*(v28 + 56) + 32 * v31 + 8), *(*(v28 + 56) + 32 * v31 + 16));
        sub_24B18F54C(v31, v28);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v0[4] = v28;

      sub_24B2D3224();

      v33 = sub_24B2D3164();
      v34 = sub_24B2D5934();

      if (os_log_type_enabled(v33, v34))
      {
        buf = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *buf = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        v41 = v34;
        sub_24B2D3214();

        sub_24B034188(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v35 = sub_24B2D51F4();
        v37 = v36;

        v38 = sub_24AFF321C(v35, v37, &v46);

        *(buf + 4) = v38;
        _os_log_impl(&dword_24AFD2000, v33, v41, "Repository: locationStateByHandle - %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C23D530](v43, -1, -1);
        MEMORY[0x24C23D530](buf, -1, -1);
      }

      v14 = v44;
LABEL_8:
      (*v17)(v0[10], v0[8]);
      v16 += v45;
      --v12;
      v18 = v20;
      v19 = v21;
      if (!v12)
      {
        goto LABEL_22;
      }

      v14(v0[10], v16, v0[8]);
    }

    if (v26 == 1)
    {
      goto LABEL_8;
    }

LABEL_15:

    goto LABEL_8;
  }

LABEL_22:

  v39 = v0[1];

  return v39();
}

uint64_t sub_24B01FF04()
{
  v16 = v0;

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8820, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Error: %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_24B020124(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v105 - v11;
  v12 = sub_24B2D24A4();
  v111 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v110 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8490);
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x28223BE20](v16);
  v124 = &v105 - v17;
  v125 = sub_24B2D1414();
  v123 = *(v125 - 1);
  MEMORY[0x28223BE20](v125);
  v122 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B2D1704();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v115 = v22;
  v116 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v105 - v23;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v25 = sub_24B2D3184();
  v26 = __swift_project_value_buffer(v25, qword_27EFE4418);
  v27 = *(v20 + 16);
  v120 = a5;
  v113 = v27;
  v114 = v20 + 16;
  v27(v24, a5, v19);

  v28 = a3;
  v119 = v26;
  v29 = v19;
  v30 = v20;
  v31 = sub_24B2D3164();
  v32 = sub_24B2D5934();

  v33 = os_log_type_enabled(v31, v32);
  v118 = v28;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v108 = v12;
    v35 = v34;
    v107 = swift_slowAlloc();
    v130[0] = v107;
    *v35 = 136315907;
    *(v35 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2D8880, v130);
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    v106 = v32;
    v36 = v30;
    v112 = v30;
    v37 = sub_24B2D1694();
    v38 = v29;
    v39 = a1;
    v40 = a2;
    v41 = a4;
    v43 = v42;
    v44 = *(v36 + 8);
    v45 = v38;
    v44(v24, v38);
    v46 = sub_24AFF321C(v37, v43, v130);
    a4 = v41;
    a2 = v40;
    a1 = v39;

    *(v35 + 24) = v46;
    *(v35 + 32) = 2080;
    v128[0] = v39;
    v128[1] = a2;
    v128[2] = v28;
    v129 = a4;

    v47 = v28;
    v48 = sub_24B2D53C4();
    v50 = sub_24AFF321C(v48, v49, v130);

    *(v35 + 34) = v50;
    _os_log_impl(&dword_24AFD2000, v31, v106, "Repository: %s - Insert Message Location - %{private,mask.hash}s %s", v35, 0x2Au);
    v51 = v107;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v51, -1, -1);
    v52 = v35;
    v12 = v108;
    MEMORY[0x24C23D530](v52, -1, -1);

    v53 = v112;
  }

  else
  {

    (*(v30 + 8))(v24, v29);
    v45 = v29;
    v53 = v30;
  }

  v54 = v122;
  sub_24B2D1404();
  v55 = v124;
  sub_24B2D13D4();
  sub_24B2D13F4();
  (*(v126 + 8))(v55, v127);
  (*(v123 + 8))(v54, v125);
  if (v128[0])
  {
    v56 = sub_24B2D3164();
    v57 = sub_24B2D5934();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v128[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2D8880, v128);
      _os_log_impl(&dword_24AFD2000, v56, v57, "Repository: %s - Skipping", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C23D530](v59, -1, -1);
      MEMORY[0x24C23D530](v58, -1, -1);
    }

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  v60 = v128[0];
  v61 = *(v128[0] + 16);
  v105 = a4;
  if (!v61 || (v62 = sub_24B181150(v120), (v63 & 1) == 0))
  {

    v70 = v120;
    goto LABEL_15;
  }

  v112 = v53;
  v64 = v45;
  v127 = a1;
  v65 = a2;
  v66 = (*(v60 + 56) + 32 * v62);
  v67 = *v66;
  v68 = v66[1];
  v69 = v66[2];
  sub_24B034224(*v66, v68, v69);

  if (v69 < 2)
  {
    sub_24B0341E0(v67, v68, v69);
    a1 = v127;
    v70 = v120;
    v45 = v64;
    v53 = v112;
LABEL_15:
    v71 = v118;
    v72 = sub_24B2D56D4();
    v73 = v117;
    (*(*(v72 - 8) + 56))(v117, 1, 1, v72);
    v74 = v116;
    v113(v116, v70, v45);
    sub_24B2D5694();

    v75 = v71;
    v76 = v121;

    v77 = sub_24B2D5684();
    v78 = (*(v53 + 80) + 65) & ~*(v53 + 80);
    v79 = swift_allocObject();
    v80 = v53;
    v81 = v79;
    v82 = MEMORY[0x277D85700];
    *(v79 + 16) = v77;
    *(v79 + 24) = v82;
    *(v79 + 32) = v76;
    *(v79 + 40) = a1;
    *(v79 + 48) = a2;
    *(v79 + 56) = v75;
    *(v79 + 64) = v105;
    (*(v80 + 32))(v79 + v78, v74, v45);
    sub_24B00A9A4(0, 0, v73, &unk_24B2E0C88, v81);

    return;
  }

  v83 = [v118 timestamp];
  v84 = v109;
  sub_24B2D2484();

  v85 = [v69 timestamp];
  v86 = v110;
  sub_24B2D2484();

  LOBYTE(v85) = sub_24B2D23C4();
  v87 = *(v111 + 8);
  v87(v86, v12);
  v87(v84, v12);
  if (v85)
  {
    v88 = sub_24B2D56D4();
    v89 = *(*(v88 - 8) + 56);
    v126 = v68;
    v90 = v117;
    v89(v117, 1, 1, v88);
    v91 = v116;
    v92 = v64;
    v113(v116, v120, v64);
    sub_24B2D5694();

    v125 = v118;
    v93 = v121;

    v94 = sub_24B2D5684();
    v95 = v112;
    v96 = (*(v112 + 80) + 65) & ~*(v112 + 80);
    v97 = swift_allocObject();
    v98 = MEMORY[0x277D85700];
    *(v97 + 16) = v94;
    *(v97 + 24) = v98;
    v99 = v127;
    *(v97 + 32) = v93;
    *(v97 + 40) = v99;
    v100 = v125;
    *(v97 + 48) = v65;
    *(v97 + 56) = v100;
    *(v97 + 64) = v105;
    (*(v95 + 32))(v97 + v96, v91, v92);
    sub_24B00A9A4(0, 0, v90, &unk_24B2E0C90, v97);
  }

  else
  {
    v101 = sub_24B2D3164();
    v102 = sub_24B2D5934();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v128[0] = v104;
      *v103 = 136315138;
      *(v103 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2D8880, v128);
      _os_log_impl(&dword_24AFD2000, v101, v102, "Repository: %s - Not Using Message Location", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x24C23D530](v104, -1, -1);
      MEMORY[0x24C23D530](v103, -1, -1);
    }
  }
}

uint64_t sub_24B020D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v13;
  *(v8 + 120) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  sub_24B2D5694();
  *(v8 + 56) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v8 + 64) = v10;
  *(v8 + 72) = v9;

  return MEMORY[0x2822009F8](sub_24B020DB0, v10, v9);
}

uint64_t sub_24B020DB0()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24B020E54;
  v3 = v0[5];
  v2 = v0[6];

  return sub_24B052850(v3, v2);
}

uint64_t sub_24B020E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  *(*v5 + 88) = v4;

  if (v4)
  {
    v11 = *(v10 + 64);
    v12 = *(v10 + 72);
    v13 = sub_24B021064;
  }

  else
  {
    *(v10 + 121) = a4;
    *(v10 + 96) = a3;
    *(v10 + 104) = a2;
    *(v10 + 112) = a1;
    v11 = *(v10 + 64);
    v12 = *(v10 + 72);
    v13 = sub_24B020FA0;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_24B020FA0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = *(v0 + 121);

  v6 = v3;
  sub_24B021278(v2, v1, v3, v5, v4);
  swift_bridgeObjectRelease_n();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24B021064()
{
  v16 = v0;

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D88B0, &v15);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Error: %@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v12 = *(v0 + 88);
  sub_24B021278(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 120), *(v0 + 48));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24B021278(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v6 = v5;
  v147 = a5;
  LODWORD(v144) = a4;
  v10 = sub_24B2D1704();
  v146 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v131[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v131[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v141 = &v131[-v21];
  MEMORY[0x28223BE20](v20);
  v140 = &v131[-v22];
  v23 = sub_24B2D24A4();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v131[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24);
  v30 = &v131[-v29];
  v145 = v6;
  if (a3)
  {
    v31 = v28;
    v139 = v27;
    v143 = a1;
    swift_getKeyPath();
    swift_getKeyPath();

    v142 = a3;
    v32 = a3;
    sub_24B2D3214();

    v33 = v148;
    if (!*(v148 + 16) || (v34 = sub_24B181150(v147), (v35 & 1) == 0))
    {

      goto LABEL_7;
    }

    v137 = a2;
    v138 = v32;
    v36 = (*(v33 + 56) + 32 * v34);
    v37 = v36[1];
    v38 = v36[2];
    v136 = *v36;
    sub_24B034224(v136, v37, v38);
    v39 = v38;

    if (v38 < 2)
    {
      sub_24B0341E0(v136, v37, v38);
      a2 = v137;
      v32 = v138;
LABEL_7:
      v40 = v146;
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v41 = sub_24B2D3184();
      __swift_project_value_buffer(v41, qword_27EFE4418);
      (*(v40 + 16))(v19, v147, v10);

      v42 = v32;
      v43 = sub_24B2D3164();
      v44 = a2;
      v45 = sub_24B2D5934();

      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v152[0] = v141;
        *v46 = 136315907;
        *(v46 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D87E0, v152);
        *(v46 + 12) = 2160;
        *(v46 + 14) = 1752392040;
        *(v46 + 22) = 2081;
        v47 = sub_24B2D1694();
        v49 = v48;
        (*(v40 + 8))(v19, v10);
        v50 = sub_24AFF321C(v47, v49, v152);

        *(v46 + 24) = v50;
        *(v46 + 32) = 2080;
        v51 = v143;
        v148 = v143;
        v149 = v44;
        v150 = v42;
        v52 = v144;
        v151 = v144;

        v53 = v42;
        v54 = sub_24B2D53C4();
        v56 = sub_24AFF321C(v54, v55, v152);

        *(v46 + 34) = v56;
        _os_log_impl(&dword_24AFD2000, v43, v45, "Repository: %s - Add Location - %{private,mask.hash}s %s", v46, 0x2Au);
        v57 = v141;
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v57, -1, -1);
        MEMORY[0x24C23D530](v46, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v19, v10);
        v52 = v144;
        v51 = v143;
      }

      v72 = v142;
      swift_getKeyPath();
      swift_getKeyPath();

      v73 = v42;
      sub_24B2D3214();

      v74 = v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v74;
      sub_24B1C9154(v51, v44, v72, v52, v147, isUniquelyReferenced_nonNull_native);
      v76 = v148;
      swift_getKeyPath();
      swift_getKeyPath();
      v148 = v76;

      sub_24B2D3224();
      sub_24B00DF80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
      sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
      sub_24B2D31F4();
    }

    v134 = v10;
    v135 = v37;
    v79 = v138;
    v80 = [v138 timestamp];
    sub_24B2D2484();

    v81 = [v39 timestamp];
    sub_24B2D2484();

    v132 = sub_24B2D23C4();
    v82 = *(v31 + 8);
    v83 = v139;
    v82(v26, v139);
    v82(v30, v83);
    v84 = [v79 timestamp];
    sub_24B2D2484();

    v133 = v39;
    v85 = [v39 timestamp];
    sub_24B2D2484();

    MyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0();
    v82(v26, v83);
    v82(v30, v83);
    v87 = v137;
    if (v137)
    {
      v88 = v134;
      v89 = v146;
      if (!v135)
      {
        if ((MyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0 | v132))
        {
          goto LABEL_28;
        }

        goto LABEL_35;
      }

      if (v136 != v143 || v135 != v137)
      {
        v90 = sub_24B2D6004();
        if (MyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0)
        {
          if (!(v132 & 1 | ((v90 & 1) == 0)))
          {
            goto LABEL_35;
          }

LABEL_28:
          if (qword_27EFC75E8 != -1)
          {
            swift_once();
          }

          v91 = sub_24B2D3184();
          __swift_project_value_buffer(v91, qword_27EFE4418);
          v92 = v140;
          (*(v89 + 16))(v140, v147, v88);

          v93 = v138;
          v94 = sub_24B2D3164();
          v95 = sub_24B2D5934();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v152[0] = v97;
            *v96 = 136315907;
            *(v96 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D87E0, v152);
            *(v96 + 12) = 2160;
            *(v96 + 14) = 1752392040;
            *(v96 + 22) = 2081;
            v98 = sub_24B2D1694();
            v99 = v89;
            v101 = v100;
            (*(v99 + 8))(v92, v88);
            v102 = sub_24AFF321C(v98, v101, v152);

            *(v96 + 24) = v102;
            *(v96 + 32) = 2080;
            v103 = v143;
            v148 = v143;
            v149 = v87;
            v150 = v93;
            v104 = v144;
            v151 = v144;

            v105 = v93;
            v106 = sub_24B2D53C4();
            v108 = sub_24AFF321C(v106, v107, v152);

            *(v96 + 34) = v108;
            _os_log_impl(&dword_24AFD2000, v94, v95, "Repository: %s - Replace Existing Location - %{private,mask.hash}s %s", v96, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x24C23D530](v97, -1, -1);
            MEMORY[0x24C23D530](v96, -1, -1);
          }

          else
          {

            (*(v89 + 8))(v92, v88);
            v104 = v144;
            v103 = v143;
          }

          v109 = v142;
          swift_getKeyPath();
          swift_getKeyPath();

          v110 = v93;
          sub_24B2D3214();

          v111 = v148;
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v148 = v111;
          sub_24B1C9154(v103, v87, v109, v104, v147, v112);
          v113 = v148;
          swift_getKeyPath();
          swift_getKeyPath();
          v148 = v113;

          sub_24B2D3224();
          sub_24B00DF80();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
          sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
          sub_24B2D31F4();

          goto LABEL_39;
        }
      }
    }

    else
    {
      v88 = v134;
      v89 = v146;
    }

    if (v132)
    {
      goto LABEL_28;
    }

LABEL_35:
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v114 = sub_24B2D3184();
    __swift_project_value_buffer(v114, qword_27EFE4418);
    v115 = v141;
    (*(v89 + 16))(v141, v147, v88);

    v116 = v138;
    v117 = sub_24B2D3164();
    v118 = v89;
    v119 = sub_24B2D5934();

    if (!os_log_type_enabled(v117, v119))
    {

      return (*(v118 + 8))(v115, v88);
    }

    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v152[0] = v121;
    *v120 = 136315907;
    *(v120 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D87E0, v152);
    *(v120 + 12) = 2160;
    *(v120 + 14) = 1752392040;
    *(v120 + 22) = 2081;
    v122 = sub_24B2D1694();
    v123 = v115;
    v125 = v124;
    (*(v118 + 8))(v123, v88);
    v126 = sub_24AFF321C(v122, v125, v152);

    *(v120 + 24) = v126;
    *(v120 + 32) = 2080;
    v148 = v143;
    v149 = v87;
    v150 = v116;
    v151 = v144;

    v127 = v116;
    v128 = sub_24B2D53C4();
    v130 = sub_24AFF321C(v128, v129, v152);

    *(v120 + 34) = v130;
    _os_log_impl(&dword_24AFD2000, v117, v119, "Repository: %s - Not Replace Existing Location - %{private,mask.hash}s %s", v120, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v121, -1, -1);
    MEMORY[0x24C23D530](v120, -1, -1);

LABEL_39:
  }

  v58 = v13;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v59 = sub_24B2D3184();
  __swift_project_value_buffer(v59, qword_27EFE4418);
  v60 = v146;
  v61 = *(v146 + 16);
  v61(v16, v147, v10);
  v62 = sub_24B2D3164();
  v63 = sub_24B2D5934();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v144 = v61;
    v65 = v64;
    v143 = swift_slowAlloc();
    v148 = v143;
    *v65 = 136315651;
    *(v65 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D87E0, &v148);
    *(v65 + 12) = 2160;
    *(v65 + 14) = 1752392040;
    *(v65 + 22) = 2081;
    v66 = sub_24B2D1694();
    v68 = v67;
    (*(v60 + 8))(v16, v10);
    v69 = sub_24AFF321C(v66, v68, &v148);

    *(v65 + 24) = v69;
    _os_log_impl(&dword_24AFD2000, v62, v63, "Repository: %s - Remove Location - %{private,mask.hash}s", v65, 0x20u);
    v70 = v143;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v70, -1, -1);
    v71 = v65;
    v61 = v144;
    MEMORY[0x24C23D530](v71, -1, -1);
  }

  else
  {

    (*(v60 + 8))(v16, v10);
  }

  v61(v58, v147, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  sub_24B18C044(0, 0, 2, 0, v58);
  v78 = v148;
  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = v78;

  sub_24B2D3224();
  sub_24B00DF80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8468);
  sub_24B039184(&unk_27EFC8470, &qword_27EFC8468);
  return sub_24B2D31F4();
}

uint64_t sub_24B022374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24B2DE430;
  v8 = type metadata accessor for Friend();
  (*(v5 + 16))(v7 + v6, a1 + *(v8 + 20), v4);
  v9 = *(a1 + *(v8 + 24));
  v13[2] = a1;

  v10 = sub_24B00DCB0(sub_24AFF2118, v13, v9);
  v14 = v7;
  sub_24B0333C8(v10, sub_24B006728, MEMORY[0x277D08BF8]);
  v11 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  sub_24B0231F4(v11, v14, a2);
}

uint64_t sub_24B022554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - v7;
  v9 = sub_24B2D24A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v70 - v13;
  v14 = type metadata accessor for Friend();
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v94 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v84 = &v70 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v26 = *(v10 + 56);
  v93 = v9;
  v87 = v26;
  v88 = v10 + 56;
  v26(&v70 - v24, 1, 1, v9);
  v70 = v25;
  v27 = v25;
  v28 = a2;
  sub_24B008890(v27, a2, &qword_27EFC8450);
  v29 = *(a1 + 16);
  if (v29)
  {
    v80 = sub_24B2D5694();
    v92 = 0;
    v30 = a1 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v86 = (v10 + 48);
    v31 = *(v14 + 20);
    v78 = *(v14 + 24);
    v79 = v31;
    v71 = (v10 + 8);
    v77 = *(v91 + 72);
    v76 = xmmword_24B2DE430;
    v81 = v19;
    v82 = v28;
    v73 = (v10 + 32);
    v75 = v8;
    do
    {
      v91 = v29;
      v34 = v8;
      v89 = v30;
      sub_24B0394EC(v30, v94, type metadata accessor for Friend);
      v90 = sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v35 = sub_24B2D1704();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v76;
      v39 = v94;
      v40 = (*(v36 + 16))(v38 + v37, v94 + v79, v35);
      v41 = *(v39 + v78);
      MEMORY[0x28223BE20](v40);
      *(&v70 - 2) = v39;

      v42 = v92;
      v43 = sub_24B00DCB0(sub_24AFF2290, (&v70 - 4), v41);
      v92 = v42;
      v95 = v38;
      sub_24B0333C8(v43, sub_24B006728, MEMORY[0x277D08BF8]);
      v44 = v95;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      v45 = v34;
      sub_24B0231F4(v44, v95, v34);

      v46 = type metadata accessor for SessionFollowerState(0);
      v47 = (*(*(v46 - 8) + 48))(v34, 1, v46);
      v48 = v85;
      v49 = v86;
      if (v47 != 1)
      {
        v50 = v74;
        sub_24B008890(v45, v74, &qword_27EFC8448);
        if (!swift_getEnumCaseMultiPayload())
        {
          v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
          v67 = v84;
          sub_24B0391CC(v50, v84, &qword_27EFC8450);
          v68 = v50 + v66;
          v51 = v67;
          v49 = v86;
          sub_24AFF8258(v68, &qword_27EFC8450);
          goto LABEL_11;
        }

        sub_24B0395BC(v50, type metadata accessor for SessionFollowerState);
      }

      v51 = v84;
      v87(v84, 1, 1, v93);
LABEL_11:
      sub_24AFF8258(v45, &qword_27EFC8448);
      v52 = *v49;
      v53 = (*v49)(v51, 1, v93);
      v54 = v82;
      if (v53 == 1)
      {
        sub_24B0395BC(v94, type metadata accessor for Friend);
        sub_24AFF8258(v51, &qword_27EFC8450);
        v32 = v83;
        sub_24B0391CC(v54, v83, &qword_27EFC8450);
      }

      else
      {
        v55 = v51;
        v56 = *v73;
        v57 = v93;
        (*v73)(v48, v55, v93);
        sub_24B008890(v54, v19, &qword_27EFC8450);
        if (v52(v19, 1, v57) == 1)
        {
          sub_24AFF8258(v54, &qword_27EFC8450);
          sub_24B0395BC(v94, type metadata accessor for Friend);
          sub_24AFF8258(v19, &qword_27EFC8450);
          v32 = v83;
          v58 = v83;
          v59 = v48;
          v60 = v93;
        }

        else
        {
          v61 = v93;
          v62 = v48;
          v63 = v72;
          v56(v72, v19, v93);
          sub_24B034188(&qword_27EFC8460, MEMORY[0x277CC9578]);
          v64 = sub_24B2D5284();
          sub_24AFF8258(v54, &qword_27EFC8450);
          sub_24B0395BC(v94, type metadata accessor for Friend);
          if (v64)
          {
            v65 = v63;
          }

          else
          {
            v65 = v62;
          }

          if (v64)
          {
            v63 = v62;
          }

          v60 = v61;
          (*v71)(v65, v61);
          v32 = v83;
          v58 = v83;
          v59 = v63;
        }

        v56(v58, v59, v60);
        v87(v32, 0, 1, v60);
      }

      v33 = v91;

      sub_24B0391CC(v32, v54, &qword_27EFC8450);
      v30 = v89 + v77;
      v29 = v33 - 1;
      v8 = v75;
    }

    while (v29);
  }

  return sub_24AFF8258(v70, &qword_27EFC8450);
}