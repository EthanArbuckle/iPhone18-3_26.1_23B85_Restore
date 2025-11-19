uint64_t sub_22DC8F178(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_22DCB680C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_22DCB680C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_22DC8F3A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22DC8F42C(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_22DC8F440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5B8);
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

void *sub_22DC8F544(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      v24 = v21;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        sub_22DC8F990(v24, *(&v24 + 1));
        goto LABEL_24;
      }

      v11 += 32;

      sub_22DC8F990(v24, *(&v24 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22DC8F6D0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_22DCB60AC();
      sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
      return sub_22DCB604C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22DC8F8B0(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22DC8F8B0(v4, v5);
  }

  sub_22DCB60AC();
  sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
  return sub_22DCB604C();
}

uint64_t sub_22DC8F8B0(uint64_t a1, uint64_t a2)
{
  result = sub_22DCB59BC();
  if (!result || (result = sub_22DCB59DC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22DCB59CC();
      sub_22DCB60AC();
      sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
      return sub_22DCB604C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22DC8F990(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22DC8F9E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22DC86228(a1, a2);
  }

  return a1;
}

uint64_t sub_22DC8F9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22DC8FAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DC8FB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A8);
    v3 = sub_22DCB66BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22DC8F990(v7, v8);
      result = sub_22DC9E02C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22DC8FC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A0);
    v3 = sub_22DCB66BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22DC9E0A4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_22DC8FD30(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22DC8FDE8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22DC8FD30(a1, &a1[a2]);
  }

  sub_22DCB59EC();
  swift_allocObject();
  sub_22DCB59AC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22DCB5A9C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22DC8FEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryReplicatorIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC8FF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC8FF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC8FFE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22DCB59EC();
  swift_allocObject();
  result = sub_22DCB59AC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22DCB5A9C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22DC9005C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22DCB59EC();
  swift_allocObject();
  result = sub_22DCB59AC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_22DC901BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_22DCB612C();
  v8 = a3;
  v9 = a6();

  return v9;
}

id sub_22DC90260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_22DCB612C();
  v9 = a5(a3, v7, v8);

  return v9;
}

id NTKNanoHomeWidgetItemFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NTKNanoHomeWidgetItemFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NTKNanoHomeWidgetItemFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22DC903B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v13 = a5(0);
  v31 = v13;
  v32 = sub_22DC913FC(a6, a7);
  v30[0] = a1;
  v14 = a1;
  v15 = 0;
  if (sub_22DC9D100(a2, a3, a4))
  {
    sub_22DCB5C6C();
    sub_22DCB5C5C();
    __swift_project_boxed_opaque_existential_1(v30, v13);
    sub_22DCB593C();
    __swift_project_boxed_opaque_existential_1(v30, v31);
    swift_getDynamicType();
    sub_22DCB592C();
    v16 = objc_allocWithZone(MEMORY[0x277CD3A70]);
    v17 = sub_22DCB611C();

    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v18 = sub_22DCB67FC();
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v19 = [v16 initWithAppBundleIdentifier:v17 linkAction:v18 linkActionMetadata:sub_22DCB67FC()];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = v19;
    v21 = sub_22DCB611C();
    [v20 _setLaunchId_];

    sub_22DCB5C4C();
    sub_22DCB5C5C();
    v22 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
    v23 = sub_22DCB611C();

    v24 = sub_22DCB611C();

    v25 = sub_22DCB611C();
    v26 = [v22 initWithExtensionBundleIdentifier:v23 containerBundleIdentifier:v24 kind:v25 intent:v20];

    v15 = [objc_opt_self() complicationWithDescriptor_];
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v15;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC021currentLocationEnergyfG018complicationFamily17sectionIdentifierSo07NTKHomefG0CSgSo015CLKComplicationM0V_SStFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_22DCB5C8C()) init];
  sub_22DCB5C3C();
  v3 = sub_22DCB5C0C();
  v5 = v4;
  sub_22DCB5D1C();
  sub_22DCB5CEC();
  v6 = sub_22DC903B4(v2, v3, v5, a1, MEMORY[0x277D2B900], &qword_27DA2D5F0, MEMORY[0x277D2B900]);

  if (v6)
  {
    v7 = objc_allocWithZone(NTKHomeWidgetItem);
    v8 = sub_22DCB611C();
    v9 = [v7 initWithSectionIdentifier_];

    v10 = sub_22DCB611C();

    [v9 setLocalizedName_];

    [v9 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC018homeSpecificEnergyfG012energyIntent18complicationFamily17sectionIdentifierSo07NTKHomefG0CSg0aE7Intents0k8ForecastM0C_So015CLKComplicationO0VSStFZ_0(void *a1, uint64_t a2)
{
  sub_22DCB5C7C();
  if (v4)
  {
    sub_22DCB5D1C();
    sub_22DCB5CDC();
  }

  else
  {
    sub_22DCB5D1C();
    sub_22DCB5CEC();
  }

  sub_22DCB5C3C();
  v5 = sub_22DCB5C0C();
  v7 = sub_22DC903B4(a1, v5, v6, a2, MEMORY[0x277D2B900], &qword_27DA2D5F0, MEMORY[0x277D2B900]);

  if (v7)
  {
    v8 = objc_allocWithZone(NTKHomeWidgetItem);
    v9 = sub_22DCB611C();
    v10 = [v8 initWithSectionIdentifier_];

    v11 = sub_22DCB611C();

    [v10 setLocalizedName_];

    [v10 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v10;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC016electricityUsagefG011usageIntent18complicationFamily17sectionIdentifierSo07NTKHomefG0CSg0aE7Intents011ElectricityjL0C_So015CLKComplicationN0VSStFZ_0(void *a1, uint64_t a2)
{
  sub_22DCB5D4C();
  if (v4)
  {
    sub_22DCB5D1C();
    sub_22DCB5D0C();
  }

  else
  {
    sub_22DCB5D1C();
    sub_22DCB5CCC();
  }

  sub_22DCB5C3C();
  v5 = sub_22DCB5BFC();
  v7 = sub_22DC903B4(a1, v5, v6, a2, MEMORY[0x277D2B920], &qword_27DA2D5E8, MEMORY[0x277D2B920]);

  if (v7)
  {
    v8 = objc_allocWithZone(NTKHomeWidgetItem);
    v9 = sub_22DCB611C();
    v10 = [v8 initWithSectionIdentifier_];

    v11 = sub_22DCB611C();

    [v10 setLocalizedName_];

    [v10 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v10;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC016electricityRatesfG011ratesIntent18complicationFamily17sectionIdentifierSo07NTKHomefG0CSg0aE7Intents011ElectricityjL0C_So015CLKComplicationN0VSStFZ_0(void *a1, uint64_t a2)
{
  sub_22DCB5D2C();
  if (v4)
  {
    sub_22DCB5D1C();
    sub_22DCB5CFC();
  }

  else
  {
    sub_22DCB5D1C();
    sub_22DCB5CBC();
  }

  sub_22DCB5C3C();
  v5 = sub_22DCB5BEC();
  v7 = sub_22DC903B4(a1, v5, v6, a2, MEMORY[0x277D2B910], &qword_27DA2D5E0, MEMORY[0x277D2B910]);

  if (v7)
  {
    v8 = objc_allocWithZone(NTKHomeWidgetItem);
    v9 = sub_22DCB611C();
    v10 = [v8 initWithSectionIdentifier_];

    v11 = sub_22DCB611C();

    [v10 setLocalizedName_];

    [v10 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v10;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC010smartStackfG018complicationFamily17sectionIdentifierSo07NTKHomefG0CSgSo015CLKComplicationL0V_SStFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_22DCB5D9C()) init];
  sub_22DCB5C3C();
  v3 = sub_22DCB5BDC();
  v5 = v4;
  sub_22DCB5D1C();
  sub_22DCB5CAC();
  v6 = sub_22DC903B4(v2, v3, v5, a1, MEMORY[0x277D2B950], &qword_27DA2D5D8, MEMORY[0x277D2B950]);

  if (v6)
  {
    v7 = objc_allocWithZone(NTKHomeWidgetItem);
    v8 = sub_22DCB611C();
    v9 = [v7 initWithSectionIdentifier_];

    v10 = sub_22DCB611C();

    [v9 setLocalizedName_];

    [v9 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC09accessoryfG00I6Intent18complicationFamily17sectionIdentifierSo07NTKHomefG0CSg0aE7Intents012NHOAccessoryJ0C_So015CLKComplicationL0VSStFZ_0(void *a1, uint64_t a2)
{
  sub_22DCB5C3C();
  v4 = sub_22DCB5C2C();
  v6 = v5;
  sub_22DCB5B8C();
  v7 = sub_22DC903B4(a1, v4, v6, a2, MEMORY[0x277D2B8E0], &qword_27DA2D5D0, MEMORY[0x277D2B8E0]);

  if (v7)
  {
    v8 = objc_allocWithZone(NTKHomeWidgetItem);
    v9 = sub_22DCB611C();
    v10 = [v8 initWithSectionIdentifier_];

    v11 = sub_22DCB611C();

    [v10 setLocalizedName_];

    [v10 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v10;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC05scenefG00I6Intent18complicationFamily17sectionIdentifierSo07NTKHomefG0CSg0aE7Intents012NHOActionSetJ0C_So015CLKComplicationL0VSStFZ_0(void *a1, uint64_t a2)
{
  sub_22DCB5C3C();
  v4 = sub_22DCB5BCC();
  v6 = v5;
  sub_22DCB5BAC();
  v7 = sub_22DC903B4(a1, v4, v6, a2, MEMORY[0x277D2B8F0], &qword_27DA2D5C8, MEMORY[0x277D2B8F0]);

  if (v7)
  {
    v8 = objc_allocWithZone(NTKHomeWidgetItem);
    v9 = sub_22DCB611C();
    v10 = [v8 initWithSectionIdentifier_];

    v11 = sub_22DCB611C();

    [v10 setLocalizedName_];

    [v10 setWidgetComplication_];
  }

  else
  {

    return 0;
  }

  return v10;
}

id _s11NanoTimeKit28NTKNanoHomeWidgetItemFactoryC08launcherfG018complicationFamily17sectionIdentifierSo07NTKHomefG0CSgSo015CLKComplicationK0V_SStFZ_0(uint64_t a1)
{
  sub_22DCB5C3C();
  v2 = sub_22DCB5C1C();
  LOBYTE(a1) = sub_22DC9D100(v2, v3, a1);

  result = 0;
  if (a1)
  {
    sub_22DCB5C6C();
    sub_22DCB5C4C();
    sub_22DCB5C5C();
    sub_22DCB5C1C();
    v5 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
    v6 = sub_22DCB611C();

    v7 = sub_22DCB611C();

    v8 = sub_22DCB611C();

    v9 = [v5 initWithExtensionBundleIdentifier:v6 containerBundleIdentifier:v7 kind:v8 intent:0];

    v10 = [objc_opt_self() complicationWithDescriptor_];
    sub_22DCB5D1C();
    v11 = v10;
    sub_22DCB5C9C();
    v12 = objc_allocWithZone(NTKHomeWidgetItem);
    v13 = v11;
    v14 = sub_22DCB611C();
    v15 = [v12 initWithSectionIdentifier_];

    v16 = sub_22DCB611C();

    [v15 setLocalizedName_];

    [v15 setWidgetComplication_];
    return v15;
  }

  return result;
}

uint64_t sub_22DC913FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static GalleryReplicatorIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22DCB680C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22DCB680C();
    }
  }

  return result;
}

uint64_t static LibraryReplicatorIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LibraryReplicatorIdentifier();

  return sub_22DCB5B0C();
}

uint64_t type metadata accessor for LibraryReplicatorIdentifier()
{
  result = qword_27DA2D660;
  if (!qword_27DA2D660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PairedDeviceIdentifier.identifier(for:)(void *a1)
{
  v2 = sub_22DCB5B3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15);
  v17 = &v33 - v16;
  v21 = MEMORY[0x28223BE20](v18, v19, v20);
  v23 = &v33 - v22;
  v24 = [a1 nrDevice];
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  v26 = [v24 pairingID];
  if (v26)
  {
    v27 = v26;
    sub_22DCB5B1C();

    (*(v3 + 56))(v17, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v17, 1, 1, v2);
  }

  sub_22DC918DC(v17, v23);
  sub_22DC9194C(v23, v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_22D9CA164(v23, &qword_27DA2CEC0);

    v28 = 0;
    v23 = v12;
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    v29 = [objc_opt_self() sharedInstance];
    v30 = sub_22DCB5AFC();
    v31 = [v29 deviceForPairingID_];

    if (v31)
    {
      v28 = sub_22DC93154(v31);

      (*(v3 + 8))(v7, v2);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
      v28 = 0;
    }
  }

  sub_22D9CA164(v23, &qword_27DA2CEC0);
  return v28;
}

uint64_t sub_22DC918DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC9194C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryReplicatorIdentifier.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22DCEA460;
  v2 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 40) = v2;
  type metadata accessor for LibraryReplicatorIdentifier();

  *(v1 + 48) = sub_22DCB5AEC();
  *(v1 + 56) = v3;
  return v1;
}

uint64_t LibraryReplicatorIdentifier.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryReplicatorIdentifier.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LibraryReplicatorIdentifier.libraryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryReplicatorIdentifier() + 20);
  v4 = sub_22DCB5B3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryReplicatorIdentifier.libraryIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryReplicatorIdentifier() + 20);
  v4 = sub_22DCB5B3C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryReplicatorIdentifier.init(deviceIdentifier:libraryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LibraryReplicatorIdentifier() + 20);
  v7 = sub_22DCB5B3C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

unint64_t sub_22DC91C88()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22DC91CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022DD109B0 == a2 || (sub_22DCB680C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022DD109D0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22DCB680C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22DC91DA4(uint64_t a1)
{
  v2 = sub_22DC93224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC91DE0(uint64_t a1)
{
  v2 = sub_22DC93224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LibraryReplicatorIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC93224();
  sub_22DCB690C();
  v10[15] = 0;
  sub_22DCB679C();
  if (!v1)
  {
    type metadata accessor for LibraryReplicatorIdentifier();
    v10[14] = 1;
    sub_22DCB5B3C();
    sub_22DC934C0(&qword_27DA2D608, MEMORY[0x277CC95F0]);
    sub_22DCB67BC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t LibraryReplicatorIdentifier.hash(into:)()
{
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC934C0(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  return sub_22DCB60EC();
}

uint64_t LibraryReplicatorIdentifier.hashValue.getter()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC934C0(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t LibraryReplicatorIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_22DCB5B3C();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D610);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC93224();
  sub_22DCB68FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v18 = v24;
  v17 = v25;
  v28 = 0;
  *v16 = sub_22DCB671C();
  v16[1] = v19;
  v27 = 1;
  sub_22DC934C0(&qword_27DA2D618, MEMORY[0x277CC95F0]);
  sub_22DCB673C();
  (*(v18 + 8))(v11, v26);
  (*(v22 + 32))(v16 + *(v21 + 20), v7, v17);
  sub_22DC8FEAC(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22DC93278(v16);
}

uint64_t sub_22DC92434@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DCEA460;
  v4 = v1[1];
  *(v3 + 32) = *v1;
  *(v3 + 40) = v4;

  result = sub_22DCB5AEC();
  *(v3 + 48) = result;
  *(v3 + 56) = v6;
  *a1 = v3;
  return result;
}

uint64_t sub_22DC924B0()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB5B3C();
  sub_22DC934C0(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t sub_22DC92558()
{
  sub_22DCB618C();
  sub_22DCB5B3C();
  sub_22DC934C0(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  return sub_22DCB60EC();
}

uint64_t sub_22DC925E4()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB5B3C();
  sub_22DC934C0(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t sub_22DC926B8(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  return sub_22DCB5B0C();
}

uint64_t GalleryReplicatorIdentifier.id.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22DCEA460;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return v5;
}

uint64_t GalleryReplicatorIdentifier.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GalleryReplicatorIdentifier.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GalleryReplicatorIdentifier.faceIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GalleryReplicatorIdentifier.faceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NanoTimeKit::GalleryReplicatorIdentifier __swiftcall GalleryReplicatorIdentifier.init(deviceIdentifier:faceIdentifier:)(Swift::String deviceIdentifier, Swift::String faceIdentifier)
{
  *v2 = deviceIdentifier;
  v2[1] = faceIdentifier;
  result.faceIdentifier = faceIdentifier;
  result.deviceIdentifier = deviceIdentifier;
  return result;
}

uint64_t sub_22DC928D8()
{
  if (*v0)
  {
    return 0x6E65644965636166;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22DC92924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022DD109B0 == a2 || (sub_22DCB680C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E65644965636166 && a2 == 0xEE00726569666974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22DCB680C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22DC92A14(uint64_t a1)
{
  v2 = sub_22DC932D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC92A50(uint64_t a1)
{
  v2 = sub_22DC932D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GalleryReplicatorIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC932D4();
  sub_22DCB690C();
  v14 = 0;
  v10 = v12[3];
  sub_22DCB679C();
  if (!v10)
  {
    v13 = 1;
    sub_22DCB679C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t GalleryReplicatorIdentifier.hash(into:)()
{
  sub_22DCB618C();

  return sub_22DCB618C();
}

uint64_t GalleryReplicatorIdentifier.hashValue.getter()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  return sub_22DCB68EC();
}

uint64_t GalleryReplicatorIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D630);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC932D4();
  sub_22DCB68FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_22DCB671C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_22DCB671C();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22DC92ED8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22DCEA460;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *a1 = v7;
}

uint64_t sub_22DC92F64()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  return sub_22DCB68EC();
}

uint64_t sub_22DC92FCC()
{
  sub_22DCB618C();

  return sub_22DCB618C();
}

uint64_t sub_22DC9301C()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  return sub_22DCB68EC();
}

uint64_t sub_22DC930B0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22DCB680C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22DCB680C();
    }
  }

  return result;
}

uint64_t sub_22DC93154(void *a1)
{
  if ([a1 valueForProperty_])
  {
    sub_22DCB64BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22D9CA164(v5, &qword_27DA2D188);
    return 0;
  }
}

unint64_t sub_22DC93224()
{
  result = qword_27DA2D600;
  if (!qword_27DA2D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D600);
  }

  return result;
}

uint64_t sub_22DC93278(uint64_t a1)
{
  v2 = type metadata accessor for LibraryReplicatorIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DC932D4()
{
  result = qword_27DA2D628;
  if (!qword_27DA2D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D628);
  }

  return result;
}

uint64_t sub_22DC93328(void *a1)
{
  a1[1] = sub_22DC934C0(&qword_27DA2D138, type metadata accessor for LibraryReplicatorIdentifier);
  a1[2] = sub_22DC934C0(&qword_27DA2D120, type metadata accessor for LibraryReplicatorIdentifier);
  a1[3] = sub_22DC934C0(&qword_27DA2D020, type metadata accessor for LibraryReplicatorIdentifier);
  result = sub_22DC934C0(&qword_27DA2D638, type metadata accessor for LibraryReplicatorIdentifier);
  a1[4] = result;
  return result;
}

unint64_t sub_22DC933FC()
{
  result = qword_27DA2D640;
  if (!qword_27DA2D640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA2CF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D640);
  }

  return result;
}

uint64_t sub_22DC934C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DC93508(void *a1)
{
  a1[1] = sub_22DC610CC();
  a1[2] = sub_22DC6102C();
  a1[3] = sub_22DC612DC();
  result = sub_22DC93548();
  a1[4] = result;
  return result;
}

unint64_t sub_22DC93548()
{
  result = qword_27DA2D650;
  if (!qword_27DA2D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D650);
  }

  return result;
}

unint64_t sub_22DC935A0()
{
  result = qword_27DA2D658;
  if (!qword_27DA2D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D658);
  }

  return result;
}

uint64_t sub_22DC9362C()
{
  result = sub_22DCB5B3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22DC936A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DC936F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DC93764()
{
  result = qword_27DA2D670;
  if (!qword_27DA2D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D670);
  }

  return result;
}

unint64_t sub_22DC937BC()
{
  result = qword_27DA2D678;
  if (!qword_27DA2D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D678);
  }

  return result;
}

unint64_t sub_22DC93814()
{
  result = qword_27DA2D680;
  if (!qword_27DA2D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D680);
  }

  return result;
}

unint64_t sub_22DC9386C()
{
  result = qword_27DA2D688;
  if (!qword_27DA2D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D688);
  }

  return result;
}

unint64_t sub_22DC938C4()
{
  result = qword_27DA2D690;
  if (!qword_27DA2D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D690);
  }

  return result;
}

unint64_t sub_22DC9391C()
{
  result = qword_27DA2D698;
  if (!qword_27DA2D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D698);
  }

  return result;
}

uint64_t sub_22DC93974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DC939BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DC93A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DCB655C();

  v7 = sub_22DCB67DC();
  MEMORY[0x2318D7550](v7);

  MEMORY[0x2318D7550](0x7367616C66203A5DLL, 0xEA0000000000203ALL);
  v8 = sub_22DC9C194(a2);
  MEMORY[0x2318D7550](v8);

  MEMORY[0x2318D7550](0x6150656C6966202CLL, 0xEC000000203A6874);
  MEMORY[0x2318D7550](a3, a4);
  return 0x5B4449746E657665;
}

uint64_t static NTKNanoHomeIntentsUtilities.pickableEnergyForecastIntents(home:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DC93BE4;

  return MEMORY[0x28218AE10]();
}

uint64_t sub_22DC93BE4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22DC93E64(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22DC93F14;

  return MEMORY[0x28218AE10]();
}

uint64_t sub_22DC93F14()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  sub_22DCB5C8C();
  v3 = sub_22DCB61EC();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t static NTKNanoHomeIntentsUtilities.pickableElectricityUsageIntents(home:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DC94D78;

  return MEMORY[0x28218AE20]();
}

uint64_t sub_22DC94298(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22DC94348;

  return MEMORY[0x28218AE20]();
}

uint64_t sub_22DC94348()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  sub_22DCB5D5C();
  v3 = sub_22DCB61EC();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t static NTKNanoHomeIntentsUtilities.pickableElectricityRatesIntents(home:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DC94D78;

  return MEMORY[0x28218AE18]();
}

uint64_t sub_22DC946CC(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22DC9477C;

  return MEMORY[0x28218AE18]();
}

uint64_t sub_22DC9477C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  sub_22DCB5D3C();
  v3 = sub_22DCB61EC();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

id NTKNanoHomeIntentsUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NTKNanoHomeIntentsUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NTKNanoHomeIntentsUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22DC94B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DC65BFC;

  return sub_22DC946CC(v2, v3);
}

uint64_t sub_22DC94BD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DC65BFC;

  return sub_22DC94298(v2, v3);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DC94CC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D9CB0D8;

  return sub_22DC93E64(v2, v3);
}

void sub_22DC94D7C(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = a1;
  v5 = [v7 instanceDescriptor];
  if (v5)
  {
    v6 = v5;
    (*&v4[OBJC_IVAR____TtCC11NanoTimeKit17InAppFaceObserver16InternalObserver_handler])();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22DC94E94()
{
  v1 = OBJC_IVAR____TtC11NanoTimeKit17InAppFaceObserver___observationRegistrar;
  v2 = sub_22DCB5B6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for InAppFaceObserver()
{
  result = qword_27DA2D6B0;
  if (!qword_27DA2D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DC94F94()
{
  result = sub_22DCB5B6C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NanoTimeKitFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v5 = &type metadata for NanoTimeKitFeatureFlags;
  v6 = sub_22DC950C8();
  v4[0] = v1;
  v2 = sub_22DCB5B7C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_22DC950C8()
{
  result = qword_27DA2D740;
  if (!qword_27DA2D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D740);
  }

  return result;
}

uint64_t NanoTimeKitFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

const char *NanoTimeKitFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "gallery_lite";
  }

  else
  {
    return "widget_editor";
  }
}

const char *sub_22DC951FC()
{
  if (*v0)
  {
    return "gallery_lite";
  }

  else
  {
    return "widget_editor";
  }
}

uint64_t NanoTimeKitExtrasFeatureFlags.isEnabled.getter()
{
  v3 = &type metadata for NanoTimeKitExtrasFeatureFlags;
  v4 = sub_22DC95278();
  v0 = sub_22DCB5B7C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_22DC95278()
{
  result = qword_27DA2D748;
  if (!qword_27DA2D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D748);
  }

  return result;
}

uint64_t NanoTimeKitExtrasFeatureFlags.hashValue.getter()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](0);
  return sub_22DCB68EC();
}

unint64_t sub_22DC9536C()
{
  result = qword_27DA2D750;
  if (!qword_27DA2D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D750);
  }

  return result;
}

unint64_t sub_22DC953C4()
{
  result = qword_27DA2D758;
  if (!qword_27DA2D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D758);
  }

  return result;
}

uint64_t sub_22DC95460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_22DC74B24(a3, v24 - v9);
  v11 = sub_22DCB62BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22D9CA164(v10, &unk_27DA2D440);
  }

  else
  {
    sub_22DCB62AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22DCB625C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22DCB617C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_22D9CA164(a3, &unk_27DA2D440);

      return v22;
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

  sub_22D9CA164(a3, &unk_27DA2D440);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22DC95750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = v27 - v12;
  sub_22DC74B24(a3, v27 - v12);
  v14 = sub_22DCB62BC();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22D9CA164(v13, &unk_27DA2D440);
  }

  else
  {
    sub_22DCB62AC();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22DCB625C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22DCB617C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D828);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_22D9CA164(a3, &unk_27DA2D440);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22D9CA164(a3, &unk_27DA2D440);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D828);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id CompanionWidgetHostController.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v1 - 8, v2, v3);
  v5 = &v12 - v4;
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22DCB5FCC();
  v12.receiver = v6;
  v12.super_class = v0;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = sub_22DCB62BC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_22DC95460(0, 0, v5, &unk_22DCEC8C0, v9);

  return v10;
}

uint64_t sub_22DC95E18()
{
  v0[20] = OBJC_IVAR___NTKCompanionWidgetHostController_logger;
  v1 = sub_22DCB5FBC();
  v2 = sub_22DCB63DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22D9C5000, v1, v2, "Reaping…", v3, 2u);
    MEMORY[0x2318DAAC0](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CFA370]) init];
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22DC95FCC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D800);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22DC96854;
  v0[13] = &block_descriptor_2;
  v0[14] = v5;
  [v4 allConfiguredWidgetsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22DC95FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_22DC966D8;
  }

  else
  {
    v4 = sub_22DC960EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DC960EC()
{
  v50 = v0;
  v1 = *(v0 + 144);

  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63DC();
  v4 = v1 >> 62;
  if (!os_log_type_enabled(v2, v3))
  {

    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v4)
  {
    goto LABEL_31;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22DCB662C())
  {
    *(v5 + 4) = i;

    _os_log_impl(&dword_22D9C5000, v2, v3, "Received %ld hosts", v5, 0xCu);
    MEMORY[0x2318DAAC0](v5, -1, -1);
LABEL_6:

    if (v4)
    {
      v5 = sub_22DCB662C();
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    if (v5 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    ;
  }

  v7 = 0;
  v8 = v1 & 0xC000000000000001;
  v46 = v5;
  v47 = v1;
  v45 = v1 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v9 = MEMORY[0x2318D7920](v7, v1);
    }

    else
    {
      v9 = *(v1 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = [v9 identifier];
    sub_22DCB612C();

    LOBYTE(v10) = sub_22DCB61BC();

    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = sub_22DCB5FBC();
      v12 = sub_22DCB63BC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v49 = v14;
        *v13 = 136315138;
        v15 = [v9 identifier];
        v16 = sub_22DCB612C();
        v18 = v17;

        v19 = sub_22DC87280(v16, v18, &v49);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_22D9C5000, v11, v12, "Reaping %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2318DAAC0](v14, -1, -1);
        MEMORY[0x2318DAAC0](v13, -1, -1);
      }

      v20 = [objc_allocWithZone(MEMORY[0x277CFA3F8]) init];
      v21 = objc_allocWithZone(MEMORY[0x277CFA2B0]);
      sub_22DC96B48();
      v22 = sub_22DCB61EC();
      v23 = [v21 initWithContainerDescriptors:v22 metricsSpecification:v20];

      v24 = [v9 identifier];
      if (!v24)
      {
        sub_22DCB612C();
        v24 = sub_22DCB611C();
      }

      v25 = [objc_allocWithZone(MEMORY[0x277CFA3D0]) initWithIdentifier:v24 configuration:v23 active:0];

      [v25 invalidate];
      v26 = v25;
      v27 = sub_22DCB5FBC();
      v28 = sub_22DCB63DC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49 = v30;
        *v29 = 136315138;
        v44 = v20;
        v31 = [v26 identifier];
        v32 = sub_22DCB612C();
        v43 = v23;
        v34 = v33;

        v35 = sub_22DC87280(v32, v34, &v49);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_22D9C5000, v27, v28, "Invalidated %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x2318DAAC0](v30, -1, -1);
        MEMORY[0x2318DAAC0](v29, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v5 = v46;
      v1 = v47;
      v8 = v45;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v7;
  }

  while (v5 != v7);
LABEL_25:

  v36 = sub_22DCB5FBC();
  v37 = sub_22DCB63DC();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v48 + 168);
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22D9C5000, v36, v37, "Reaping complete", v40, 2u);
    MEMORY[0x2318DAAC0](v40, -1, -1);
  }

  v41 = *(v48 + 8);

  return v41();
}

uint64_t sub_22DC966D8()
{
  v1 = v0[22];
  swift_willThrow();
  v2 = v1;
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63CC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[21];
  v6 = v0[22];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22D9C5000, v3, v4, "Error reaping: %@", v8, 0xCu);
    sub_22D9CA164(v9, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v9, -1, -1);
    MEMORY[0x2318DAAC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22DC96854(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D820);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D818);
    **(*(v4 + 64) + 40) = sub_22DCB621C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t CompanionWidgetHostController.deinit()
{
  v1 = OBJC_IVAR___NTKCompanionWidgetHostController_logger;
  v2 = sub_22DCB5FDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CompanionWidgetHostController.__deallocating_deinit()
{
  v1 = OBJC_IVAR___NTKCompanionWidgetHostController_logger;
  v2 = sub_22DCB5FDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DC96A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D9CB0D8;

  return sub_22D9CA428();
}

unint64_t sub_22DC96B48()
{
  result = qword_27DA2D810;
  if (!qword_27DA2D810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA2D810);
  }

  return result;
}

uint64_t sub_22DC96B94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22DC96C88;

  return v5(v2 + 32);
}

uint64_t sub_22DC96C88()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22DC96D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DC65BFC;

  return sub_22DC96B94(a1, v4);
}

uint64_t sub_22DC96E54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D9CB0D8;

  return sub_22DC96B94(a1, v4);
}

uint64_t sub_22DC96F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

BOOL sub_22DC96FC4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_22DC96FF4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_22DC97020@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_22DC970F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22DC97128@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_22DC972CC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_22DC9716C()
{
  result = qword_27DA2D830;
  if (!qword_27DA2D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D830);
  }

  return result;
}

unint64_t sub_22DC971C4()
{
  result = qword_27DA2D838;
  if (!qword_27DA2D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D838);
  }

  return result;
}

unint64_t sub_22DC9721C()
{
  result = qword_27DA2D840;
  if (!qword_27DA2D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D840);
  }

  return result;
}

unint64_t sub_22DC97274()
{
  result = qword_27DA2D848;
  if (!qword_27DA2D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D848);
  }

  return result;
}

uint64_t sub_22DC972CC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22DC97308()
{
  v0 = sub_22DC998E4(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D868);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_27DA2D850 = result;
  return result;
}

uint64_t static CrownAssertionHandler.tokens.getter()
{
  if (qword_27DA2CB80 != -1)
  {
    swift_once();
  }

  v0 = off_27DA2D850;
  os_unfair_lock_lock(off_27DA2D850 + 6);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 6);
  return v1;
}

uint64_t sub_22DC973D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DCB5B3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v10, v11);
  v14 = v16 - v13;
  (*(v4 + 16))(v8, a2, v3, v12);
  sub_22DC97F3C(v14, v8);
  return (*(v4 + 8))(v14, v3);
}

uint64_t sub_22DC97500(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = &v9 - v6;
  sub_22DC9936C(a2, &v9 - v6);
  return sub_22DC97890(v7);
}

void sub_22DC9759C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = &v23[-v7];
  v9 = sub_22DCB602C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22DC97844();
  *v14 = sub_22DCB63EC();
  (*(v10 + 104))(v14, *MEMORY[0x277D85200], v9);
  v15 = sub_22DCB603C();
  (*(v10 + 8))(v14, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v19 = swift_once();
    goto LABEL_7;
  }

  sub_22DC9194C(a1, v8);
  v16 = sub_22DCB5B3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v8, 1, v16) == 1)
  {
    sub_22DCB5B2C();
    v19 = v18(v8, 1, v16);
    if (v19 != 1)
    {
      v19 = sub_22DC97890(v8);
    }
  }

  else
  {
    v19 = (*(v17 + 32))(a2, v8, v16);
  }

  if (qword_27DA2CB80 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = off_27DA2D850;
  MEMORY[0x28223BE20](v19, v20, v21);
  *&v23[-16] = a2;
  os_unfair_lock_lock(v22 + 6);
  sub_22DC978F8(&v22[4]);
  os_unfair_lock_unlock(v22 + 6);
}

unint64_t sub_22DC97844()
{
  result = qword_280C106D0;
  if (!qword_280C106D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C106D0);
  }

  return result;
}

uint64_t sub_22DC97890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DC97AB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DCB5B3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22DC99D0C(&qword_27DA2D128), v9 = sub_22DCB60DC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v8, *(v19 + 48) + v15 * v11, v3);
      sub_22DC99D0C(&qword_27DA2D858);
      v17 = sub_22DCB610C();
      (*v16)(v8, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

id CrownAssertionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CrownAssertionHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrownAssertionHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CrownAssertionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrownAssertionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22DC97E5C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22DCB689C();
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
    sub_22DC98760(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22DC97F3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22DCB5B3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  sub_22DC99D0C(&qword_27DA2D128);
  v35 = a2;
  v13 = sub_22DCB60DC();
  v14 = v12 + 56;
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v2;
    v31 = a1;
    v32 = ~v15;
    v29 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v28[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v11, *(v34 + 48) + v20 * v16, v6);
      sub_22DC99D0C(&qword_27DA2D858);
      v23 = sub_22DCB610C();
      v24 = *v21;
      (*v21)(v11, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v32;
      v17 = v22;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v30;
        a1 = v31;
        v7 = v29;
        goto LABEL_7;
      }
    }

    v24(v35, v6);
    v22(v31, *(v34 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v35;
    v17(v11, v35, v6);
    v36 = *v3;
    sub_22DC98880(v11, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
    (*(v7 + 32))(a1, v26, v6);
    return 1;
  }
}

uint64_t sub_22DC981F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D870);
  result = sub_22DCB652C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_22DCB689C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22DC98418()
{
  v1 = v0;
  v37 = sub_22DCB5B3C();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v3, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D860);
  result = sub_22DCB652C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v0;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v2 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v2 + 72) * (v17 | (v9 << 6));
      v21 = *(v2 + 32);
      v33 = *(v2 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_22DC99D0C(&qword_27DA2D128);
      result = sub_22DCB60DC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v1 = v31;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_22DC98760(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22DC981F4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22DC98AFC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22DC98E74();
  }

  v8 = *v3;
  result = sub_22DCB689C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22DCB682C();
  __break(1u);
  return result;
}

uint64_t sub_22DC98880(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22DCB5B3C();
  v7 = *(v6 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v6, v8, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22DC98418();
  }

  else
  {
    if (v14 > v13)
    {
      sub_22DC98C3C();
      goto LABEL_12;
    }

    sub_22DC99064();
  }

  v15 = *v3;
  sub_22DC99D0C(&qword_27DA2D128);
  v16 = sub_22DCB60DC();
  v17 = v15 + 56;
  v33 = v15;
  v18 = -1 << *(v15 + 32);
  a2 = v16 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v12, *(v33 + 48) + v23 * a2, v6);
      sub_22DC99D0C(&qword_27DA2D858);
      v24 = sub_22DCB610C();
      (*(v21 - 8))(v12, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v10);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22DCB682C();
  __break(1u);
  return result;
}

void *sub_22DC98AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D870);
  v2 = *v0;
  v3 = sub_22DCB651C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22DC98C3C()
{
  v1 = v0;
  v2 = sub_22DCB5B3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D860);
  v8 = *v0;
  v9 = sub_22DCB651C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_22DC98E74()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D870);
  result = sub_22DCB652C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_22DCB689C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22DC99064()
{
  v1 = v0;
  v34 = sub_22DCB5B3C();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D860);
  v8 = sub_22DCB652C();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v0;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v2 + 16;
    v33 = v2;
    v16 = v8 + 56;
    v30 = (v2 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_22DC99D0C(&qword_27DA2D128);
      result = sub_22DCB60DC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_22DC9936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22DCB5B3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_22DC99D0C(&qword_27DA2D128);
  v33 = a1;
  v12 = sub_22DCB60DC();
  v13 = v11 + 56;
  v31 = v11 + 56;
  v32 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v28 = v2;
    v29 = v6;
    v30 = a2;
    v16 = ~v14;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    while (1)
    {
      v17(v10, *(v32 + 48) + v20 * v15, v5);
      sub_22DC99D0C(&qword_27DA2D858);
      v21 = sub_22DCB610C();
      (*(v18 - 8))(v10, v5);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v31 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v22 = 1;
        v6 = v29;
        a2 = v30;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    v34 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22DC98C3C();
      v25 = v34;
    }

    v6 = v29;
    a2 = v30;
    (*(v29 + 32))(v30, *(v25 + 48) + v20 * v15, v5);
    sub_22DC995EC(v15);
    v22 = 0;
    *v23 = v34;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

void sub_22DC995EC(int64_t a1)
{
  v3 = sub_22DCB5B3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_22DCB64EC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v36 = (v14 + 1) & v13;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v17 = v13;
      v18 = *(v15 + 56);
      v37 = v15;
      v34 = (v15 - 8);
      v35 = v16;
      do
      {
        v19 = v10;
        v20 = v18;
        v21 = v18 * v12;
        v35(v8, *(v9 + 48) + v18 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v22;
        sub_22DC99D0C(&qword_27DA2D128);
        v25 = sub_22DCB60DC();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v17 = v23;
        if (a1 >= v36)
        {
          if (v26 >= v36 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v20;
            v30 = v20 * a1;
            if (v20 * a1 < v21 || v29 + v20 * a1 >= (v29 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v36 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v20;
LABEL_5:
        v12 = (v12 + 1) & v17;
        v10 = v19;
      }

      while (((*(v19 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
  }
}

uint64_t sub_22DC998E4(uint64_t a1)
{
  v2 = sub_22DCB5B3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22DC99D0C(&qword_27DA2D128);
  result = MEMORY[0x2318D7730](v13, v2, v14);
  v22 = result;
  if (v13)
  {
    v18 = *(v3 + 16);
    v16 = v3 + 16;
    v17 = v18;
    v19 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v7, v19, v2);
      sub_22DC97F3C(v12, v7);
      (*(v16 - 8))(v12, v2);
      v19 += v20;
      --v13;
    }

    while (v13);
    return v22;
  }

  return result;
}

uint64_t sub_22DC99A6C(uint64_t a1)
{
  v2 = sub_22DCB602C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22DC97844();
  *v7 = sub_22DCB63EC();
  (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
  v8 = sub_22DCB603C();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_27DA2CB80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = off_27DA2D850;
  os_unfair_lock_lock(off_27DA2D850 + 6);
  v10 = *(v9 + 2);

  os_unfair_lock_unlock(v9 + 6);
  v11 = sub_22DC97AB4(a1, v10);

  if (v11)
  {
    MEMORY[0x28223BE20](v12, v13, v14);
    *&v16[-16] = a1;
    os_unfair_lock_lock(v9 + 6);
    sub_22DC99CF0(v9 + 16);
    os_unfair_lock_unlock(v9 + 6);
  }

  return v11 & 1;
}

uint64_t sub_22DC99D0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22DCB5B3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22DC99D50()
{
  sub_22DCB68AC();
  sub_22DCB649C();
  return sub_22DCB68EC();
}

uint64_t sub_22DC99DB8()
{
  sub_22DCB68AC();
  sub_22DCB649C();
  return sub_22DCB68EC();
}

uint64_t sub_22DC99E90()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC99F04()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

BOOL sub_22DC99F64(unsigned int a1, unint64_t a2)
{
  v2 = (a2 >> 2) & 1;
  v3 = (a2 >> 1) & 1;
  if (((a1 & 2) == 0) != v3)
  {
    LODWORD(v3) = ((a2 & 8) == 0) & (a1 >> 3);
  }

  if ((a1 & 1) == ((a2 & 1) == 0))
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  if (((a1 & 4) == 0) != v2)
  {
    LOBYTE(v2) = v4;
  }

  return (v2 & 1) == 0;
}

BOOL sub_22DC99FC4(unint64_t a1, unint64_t a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 1) & 1;
  v4 = (a2 >> 3) & 1;
  if ((a1 & 8) != 0)
  {
    LOBYTE(v4) = 0;
  }

  if (v3 != ((a2 & 2) == 0))
  {
    LOBYTE(v3) = v4;
  }

  if (((a1 & 1) == 0) == (a2 & 1))
  {
    v5 = a2;
  }

  else
  {
    v5 = v3;
  }

  if (v2 != ((a2 & 4) == 0))
  {
    LOBYTE(v2) = v5;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_22DC9A024(unsigned int a1, unint64_t a2)
{
  v2 = (a2 >> 2) & 1;
  v3 = (a2 >> 1) & 1;
  if (((a1 & 2) == 0) != v3)
  {
    LODWORD(v3) = ((a2 & 8) == 0) & (a1 >> 3);
  }

  if ((a1 & 1) == ((a2 & 1) == 0))
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  if (((a1 & 4) == 0) != v2)
  {
    LOBYTE(v2) = v4;
  }

  return v2 & 1;
}

BOOL sub_22DC9A0CC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22DC9A0FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22DC9A128@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22DC9A1E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t IdentifiableFace.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IdentifiableFace.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IdentifiableFace.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t IdentifiableFace.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void IdentifiableFace.init(face:id:name:isLibraryFace:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  if (a6)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  if ([v13 multicolored])
  {
    v12 |= 8uLL;
  }

  if ([v13 usesComplications])
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 | 2;
  }

  v15 = [v13 curationPlacements];

  if (!v15 || ((sub_22DC6600C(0, &qword_27DA2D878), v16 = sub_22DCB621C(), v15, v16 >> 62) ? (v17 = sub_22DCB662C()) : (v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v17))
  {
    v14 |= 1uLL;
  }

  *a7 = v13;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = v14;
}

uint64_t IdentifiableFace.hash(into:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_22DCB649C();
  sub_22DCB618C();
  sub_22DCB68CC();
  if (v2)
  {
    sub_22DCB618C();
  }

  return MEMORY[0x2318D7C70](v1);
}

uint64_t IdentifiableFace.hashValue.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_22DCB68AC();
  sub_22DCB649C();
  sub_22DCB618C();
  sub_22DCB68CC();
  if (v2)
  {
    sub_22DCB618C();
  }

  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC9A5C8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_22DCB649C();
  sub_22DCB618C();
  sub_22DCB68CC();
  if (v2)
  {
    sub_22DCB618C();
  }

  return MEMORY[0x2318D7C70](v1);
}

uint64_t sub_22DC9A660()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_22DCB68AC();
  sub_22DCB649C();
  sub_22DCB618C();
  sub_22DCB68CC();
  if (v2)
  {
    sub_22DCB618C();
  }

  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC9A70C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

BOOL _s11NanoTimeKit16IdentifiableFaceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v12 = a1[5];
  sub_22DC6600C(0, &qword_27DA2D0F0);
  if (sub_22DCB648C() & 1) != 0 && (v2 == v6 && v4 == v8 || (sub_22DCB680C()))
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (sub_22DCB680C() & 1) != 0))
      {
        return v12 == v11;
      }
    }

    else if (!v9)
    {
      return v12 == v11;
    }
  }

  return 0;
}

uint64_t _s11NanoTimeKit16IdentifiableFaceV5FlagsV1loiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = (*a1 & 8) == 0 && (*a2 & 8) != 0;
  if (((*a1 >> 1) & 1) == ((*a2 & 2) == 0))
  {
    v2 = (*a1 & 2) != 0;
  }

  if (((*a1 & 1) == 0) == (*a2 & 1))
  {
    v2 = *a2;
  }

  if (((*a1 >> 2) & 1) == ((*a2 & 4) == 0))
  {
    v2 = (*a1 & 4) != 0;
  }

  return v2 & 1;
}

unint64_t sub_22DC9A87C()
{
  result = qword_27DA2D880;
  if (!qword_27DA2D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D880);
  }

  return result;
}

unint64_t sub_22DC9A8D4()
{
  result = qword_27DA2D888;
  if (!qword_27DA2D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D888);
  }

  return result;
}

unint64_t sub_22DC9A92C()
{
  result = qword_27DA2D890;
  if (!qword_27DA2D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D890);
  }

  return result;
}

unint64_t sub_22DC9A984()
{
  result = qword_27DA2D898;
  if (!qword_27DA2D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D898);
  }

  return result;
}

unint64_t sub_22DC9A9DC()
{
  result = qword_27DA2D8A0;
  if (!qword_27DA2D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D8A0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22DC9AA50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22DC9AA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentifiableFace.Flags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IdentifiableFace.Flags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_22DC9AB6C()
{
  result = qword_27DA2D8A8;
  if (!qword_27DA2D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D8A8);
  }

  return result;
}

void sub_22DC9ABC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  sub_22DC9B4BC();
  v5 = (a2 + 40);
  for (i = (a1 + 40); ; i += 6)
  {
    v8 = *(i - 1);
    v9 = *i;
    v10 = i[1];
    v11 = i[3];
    v21 = i[4];
    v22 = v2;
    v13 = *(v5 - 1);
    v12 = *v5;
    v14 = v5[1];
    v18 = v5[2];
    v19 = i[2];
    v20 = v5[4];
    v23 = v5[3];

    v15 = v8;

    v16 = v13;

    if ((sub_22DCB648C() & 1) == 0 || (v9 != v12 || v10 != v14) && (sub_22DCB680C() & 1) == 0)
    {
      break;
    }

    if (!v11)
    {

      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    if (!v23)
    {
      break;
    }

    if (v19 == v18 && v11 == v23)
    {

LABEL_6:

      v7 = v22;
      if (v21 != v20)
      {
        return;
      }

      goto LABEL_7;
    }

    v17 = sub_22DCB680C();

    if ((v17 & 1) == 0)
    {
      return;
    }

    v7 = v22;
    if (v21 != v20)
    {
      return;
    }

LABEL_7:
    v5 += 6;
    v2 = v7 - 1;
    if (!v2)
    {
      return;
    }
  }

LABEL_22:
}

uint64_t FaceCollection.Metadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2318D7C90](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2318D7C90](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2318D7C90](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x2318D7C90](*&v7);
}

uint64_t FaceCollection.Metadata.hashValue.getter()
{
  sub_22DCB68AC();
  FaceCollection.Metadata.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t sub_22DC9AFA4()
{
  sub_22DCB68AC();
  FaceCollection.Metadata.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t sub_22DC9AFF4()
{
  sub_22DCB68AC();
  FaceCollection.Metadata.hash(into:)();
  return sub_22DCB68EC();
}

__n128 FaceCollection.metadata.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 FaceCollection.metadata.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t FaceCollection.faces.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void FaceCollection.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2318D7C90](*&v3);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x2318D7C90](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x2318D7C90](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x2318D7C90](*&v10);

  sub_22DC77CC8(a1, v7);
}

uint64_t FaceCollection.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_22DCB68AC();
  FaceCollection.hash(into:)(v4);
  return sub_22DCB68EC();
}

uint64_t sub_22DC9B1C8()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_22DCB68AC();
  FaceCollection.hash(into:)(v4);
  return sub_22DCB68EC();
}

uint64_t sub_22DC9B220()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_22DCB68AC();
  FaceCollection.hash(into:)(v4);
  return sub_22DCB68EC();
}

void _s11NanoTimeKit14FaceCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))))
  {
    sub_22DC9ABC8(*(a1 + 32), *(a2 + 32));
  }
}

unint64_t sub_22DC9B2EC()
{
  result = qword_27DA2D8B0;
  if (!qword_27DA2D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D8B0);
  }

  return result;
}

unint64_t sub_22DC9B344()
{
  result = qword_27DA2D8B8[0];
  if (!qword_27DA2D8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA2D8B8);
  }

  return result;
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

uint64_t sub_22DC9B3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DC9B3F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22DC9B44C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DC9B46C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_22DC9B4BC()
{
  result = qword_27DA2D0F0;
  if (!qword_27DA2D0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA2D0F0);
  }

  return result;
}

uint64_t sub_22DC9B554()
{
  v1 = v0;
  v2 = *(v0 + 16);
  type metadata accessor for ValueBroadcaster.InternalState();
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_22DC9C148((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));

  return v1;
}

uint64_t sub_22DC9B630(uint64_t *a1)
{
  v2 = sub_22DCB630C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v72 = &v51[-v6];
  v7 = sub_22DCB5B3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v7, v9);
  v61 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v11;
  v73 = v2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = sub_22DCB64AC();
  MEMORY[0x28223BE20](v69, v13, v14);
  MEMORY[0x28223BE20](v15, v16, v17);
  v20 = &v51[-v19];
  v21 = *a1;
  v23 = v22;
  v24 = *(v21 + 64);
  v53 = v21 + 64;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v52 = (v25 + 63) >> 6;
  v56 = v3 + 16;
  v57 = v8 + 16;
  v55 = v8 + 32;
  v28 = (v3 + 32);
  v67 = (v18 + 32);
  v68 = TupleTypeMetadata2 - 8;
  v62 = v8;
  v63 = v3;
  v65 = (v8 + 8);
  v66 = (v3 + 8);
  v64 = v21;

  v30 = 0;
  v59 = v23;
  v60 = TupleTypeMetadata2;
  v58 = v20;
  v54 = (v3 + 32);
  v31 = v72;
  if (v27)
  {
    while (1)
    {
      v32 = v30;
LABEL_12:
      v35 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v64;
      v38 = v61;
      v39 = v62;
      v40 = v71;
      (*(v62 + 16))(v61, *(v64 + 48) + *(v62 + 72) * v36, v71);
      v41 = *(v37 + 56);
      v42 = v63;
      v43 = v73;
      (*(v63 + 16))(v31, v41 + *(v63 + 72) * v36, v73);
      v44 = v60;
      v70 = *(v60 + 48);
      v45 = *(v39 + 32);
      v23 = v59;
      v45(v59, v38, v40);
      v46 = *(v42 + 32);
      TupleTypeMetadata2 = v44;
      v28 = v54;
      v46(v23 + v70, v31, v43);
      v47 = 0;
      v34 = v32;
      v20 = v58;
LABEL_13:
      v48 = *(TupleTypeMetadata2 - 8);
      (*(v48 + 56))(v23, v47, 1, TupleTypeMetadata2);
      (*v67)(v20, v23, v69);
      if ((*(v48 + 48))(v20, 1, TupleTypeMetadata2) == 1)
      {
      }

      v49 = v72;
      v50 = v73;
      (*v28)(v72, &v20[*(TupleTypeMetadata2 + 48)], v73);
      sub_22DCB62FC();
      (*v66)(v49, v50);
      result = (*v65)(v20, v71);
      v30 = v34;
      if (!v27)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v52 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = v52;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v52)
      {
        v27 = 0;
        v47 = 1;
        goto LABEL_13;
      }

      v27 = *(v53 + 8 * v32);
      ++v30;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DC9BB18()
{
  sub_22DC9B554();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22DC9BB6C()
{
  sub_22DCB5B3C();
  sub_22DCB630C();
  sub_22DC9C0F0();
  result = sub_22DCB60CC();
  if (v1 <= 0x3F)
  {
    result = sub_22DCB64AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22DC9BC2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_22DC9BDE4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

unint64_t sub_22DC9C0F0()
{
  result = qword_27DA2D128;
  if (!qword_27DA2D128)
  {
    sub_22DCB5B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D128);
  }

  return result;
}

uint64_t sub_22DC9C194(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = 22;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 > 0x16)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_28410EB88 + 24 * v2 + 32);
  while (v2 != 22)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 6;
    v9 = *v7;
    v7 += 6;
    if ((v9 & ~v1) == 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22DC9C448(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_22DC9C448((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      *(v14 + 8) = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 22;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_22DC9C428(0, v15, 0);
    v16 = v3;
    v17 = v5 + 6;
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_22DC9C428((v20 > 1), v21 + 1, 1);
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v17 += 3;
      --v15;
    }

    while (v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF20);
  sub_22DC7164C();
  v23 = sub_22DCB60FC();

  return v23;
}

uint64_t sub_22DC9C3C8@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_22DC972C8();

  *a1 = v2;
  return result;
}

char *sub_22DC9C408(char *a1, int64_t a2, char a3)
{
  result = sub_22DC9C468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DC9C428(char *a1, int64_t a2, char a3)
{
  result = sub_22DC9C6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22DC9C448(void *a1, int64_t a2, char a3)
{
  result = sub_22DC9C7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DC9C468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DC9C578(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DC9C6AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
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

void *sub_22DC9C7B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D9C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_22DC9C914()
{
  result = qword_27DA2D9D0;
  if (!qword_27DA2D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D9D0);
  }

  return result;
}

unint64_t sub_22DC9C96C()
{
  result = qword_27DA2D9D8;
  if (!qword_27DA2D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D9D8);
  }

  return result;
}

unint64_t sub_22DC9C9C4()
{
  result = qword_27DA2D9E0;
  if (!qword_27DA2D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D9E0);
  }

  return result;
}

unint64_t sub_22DC9CA1C()
{
  result = qword_27DA2D9E8;
  if (!qword_27DA2D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D9E8);
  }

  return result;
}

uint64_t sub_22DC9CA70(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_22DC97E5C(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DC9CBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D870);
    v3 = sub_22DCB653C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_22DCB689C();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22DC9CCBC(uint64_t a1)
{
  v2 = sub_22DCB5D6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D9F0);
  inited = swift_initStackObject();
  v37 = xmmword_22DCEAE00;
  *(inited + 16) = xmmword_22DCEAE00;
  *(inited + 32) = 8;
  v36 = sub_22DC9CBA4(inited);
  swift_setDeallocating();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_22DCED3B0;
  *(v9 + 32) = xmmword_22DCED3C0;
  *(v9 + 48) = 12;
  v38 = sub_22DC9CBA4(v9);
  swift_setDeallocating();
  v10 = swift_initStackObject();
  *(v10 + 16) = v37;
  *(v10 + 32) = 11;
  v34 = sub_22DC9CBA4(v10);
  swift_setDeallocating();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_22DCED3D0;
  *(v11 + 32) = xmmword_22DCED3E0;
  *(v11 + 48) = 3;
  *(v11 + 56) = 104;
  v33 = sub_22DC9CBA4(v11);
  swift_setDeallocating();
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = (v13 + 72);
    v18 = *MEMORY[0x277D2B938];
    LODWORD(v37) = *MEMORY[0x277D2B928];
    v35 = *MEMORY[0x277D2B940];
    v32 = *MEMORY[0x277D2B930];
    v29 = (v13 - 8);
    v19 = *(v13 + 56);
    v20 = MEMORY[0x277D84FA0];
    v30 = v13;
    do
    {
      v14(v7, v16, v2);
      v21 = (*v17)(v7, v2);
      if (v21 == v18 || v21 == v37 || v21 == v35 || v21 == v32)
      {

        v20 = sub_22DC9CA70(v22, v20);
      }

      else
      {
        if (qword_27DA2CB68 != -1)
        {
          swift_once();
        }

        v23 = sub_22DCB5FDC();
        __swift_project_value_buffer(v23, qword_27DA376D8);
        v24 = sub_22DCB5FBC();
        v28 = sub_22DCB63CC();
        v31 = v24;
        if (os_log_type_enabled(v24, v28))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_22D9C5000, v31, v28, "Unhandled or unknown family! Missing mapping to CLKComplicationFamily!", v25, 2u);
          MEMORY[0x2318DAAC0](v25, -1, -1);
        }

        (*v29)(v7, v2);
      }

      v16 += v19;
      --v12;
    }

    while (v12);
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  return v20;
}

uint64_t sub_22DC9D100(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_22DCB5D8C();
  v6 = sub_22DCB5D7C();
  v7 = sub_22DC9CCBC(v6);

  if (*(v7 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v8;
LABEL_11:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (*(*(v7 + 48) + ((v13 << 9) | (8 * v14))) == a3)
      {

        return 1;
      }
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        return 0;
      }

      v11 = *(v7 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    if (qword_27DA2CB68 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v16 = sub_22DCB5FDC();
  __swift_project_value_buffer(v16, qword_27DA376D8);

  v17 = sub_22DCB5FBC();
  v18 = sub_22DCB63CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22DC87280(a1, a2, &v21);
    _os_log_impl(&dword_22D9C5000, v17, v18, "Failed to generate list of supported complication slot families for NanoHome widget kind: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2318DAAC0](v20, -1, -1);
    MEMORY[0x2318DAAC0](v19, -1, -1);
  }

  return 0;
}

uint64_t sub_22DC9D334(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_22DCB5FEC();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DCB601C();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA28);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16);
  v18 = &v24 - v17;
  sub_22DC6600C(0, &qword_280C106D0);
  v19 = sub_22DCB63EC();
  (*(v14 + 16))(v18, a1, v13);
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  (*(v14 + 32))(v21 + v20, v18, v13);
  aBlock[4] = sub_22DCA29CC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DC7E5B8;
  aBlock[3] = &block_descriptor_30;
  v22 = _Block_copy(aBlock);
  sub_22DCB600C();
  v29 = MEMORY[0x277D84F90];
  sub_22DCA2A54(&qword_27DA2DA30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA38);
  sub_22DCA2A9C();
  sub_22DCB64DC();
  MEMORY[0x2318D77B0](0, v12, v7, v22);
  _Block_release(v22);

  (*(v28 + 8))(v7, v3);
  (*(v26 + 8))(v12, v27);
}

uint64_t sub_22DC9D6C8(uint64_t a1)
{
  [objc_opt_self() anyComplicationOfType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA28);
  return sub_22DCB627C();
}

uint64_t sub_22DC9D73C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22DC9D998(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22DC9DA74;

  return sub_22DCA12A0(v6, v7);
}

uint64_t sub_22DC9DA74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v4)
  {
    if (a1)
    {
      sub_22DC6600C(0, &qword_27DA2DA00);
      sub_22DC6600C(0, &qword_27DA2DA08);
      sub_22DCA2944();
      v8 = sub_22DCB60BC();
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v3 + 32);
    (v9)[2](v9, v8);
    _Block_release(v9);
  }

  else
  {
  }

  v10 = *(v7 + 8);

  return v10();
}

NTKBundleComplicationMigrationTypeLookupGenerator __swiftcall NTKBundleComplicationMigrationTypeLookupGenerator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22DC9DD18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DC65BFC;

  return sub_22DC9D998(v2, v3, v4);
}

unint64_t sub_22DC9DE28(uint64_t a1)
{
  sub_22DCB5B3C();
  sub_22DCA2A54(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  v2 = sub_22DCB60DC();

  return sub_22DC9E0F4(a1, v2);
}

unint64_t sub_22DC9DEC0(uint64_t *a1)
{
  sub_22DCB68AC();
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DCA2A54(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  v2 = sub_22DCB68EC();

  return sub_22DC9E2B4(a1, v2);
}

unint64_t sub_22DC9DF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  v8 = sub_22DCB68EC();

  return sub_22DC9E448(a1, a2, a3, a4, v8);
}

unint64_t sub_22DC9E02C(uint64_t a1, uint64_t a2)
{
  sub_22DCB68AC();
  sub_22DCB618C();
  v4 = sub_22DCB68EC();

  return sub_22DC9E548(a1, a2, v4);
}

unint64_t sub_22DC9E0F4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_22DCB5B3C();
  v5 = *(v4 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v4, v6, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v23 + 48) + v17 * v12, v4, v8);
      sub_22DCA2A54(&qword_27DA2D858, MEMORY[0x277CC95F0]);
      v18 = sub_22DCB610C();
      (*(v15 - 8))(v10, v4);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_22DC9E2B4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v5, v6, v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *a1;
    v15 = a1[1];
    v16 = *(v8 + 72);
    while (1)
    {
      sub_22DCA2B00(*(v2 + 48) + v16 * v12, v10, type metadata accessor for LibraryReplicatorIdentifier);
      v17 = *v10 == v14 && v10[1] == v15;
      if (v17 || (sub_22DCB680C()) && (sub_22DCB5B0C())
      {
        break;
      }

      sub_22DC93278(v10);
      v12 = (v12 + 1) & v13;
      if (((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        return v12;
      }
    }

    sub_22DC93278(v10);
  }

  return v12;
}

unint64_t sub_22DC9E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22DCB680C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22DCB680C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22DC9E548(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22DCB680C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22DC9E600(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_22DC6600C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_22DCB648C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22DC9E6CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22DC65BFC;

  return v6();
}

uint64_t sub_22DC9E7B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22D9CB0D8;

  return v7();
}

uint64_t sub_22DC9E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = v25 - v12;
  sub_22DC74B24(a3, v25 - v12);
  v14 = sub_22DCB62BC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22D9CA164(v13, &unk_27DA2D440);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22DCB62AC();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_22DCB625C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22DCB617C() + 32;
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

    sub_22D9CA164(a3, &unk_27DA2D440);

    return v23;
  }

LABEL_8:
  sub_22D9CA164(a3, &unk_27DA2D440);
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

uint64_t sub_22DC9EB88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DC65BFC;

  return sub_22D9CA330(a1, v4);
}

uint64_t sub_22DC9EC40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D9CB0D8;

  return sub_22D9CA330(a1, v4);
}

size_t sub_22DC9ED48(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

char *sub_22DC9EF24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2DA70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DC9F030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_22DC9F134(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A0);
    v2 = sub_22DCB66AC();
    v19 = v2;
    sub_22DCB661C();
    v3 = sub_22DCB665C();
    if (v3)
    {
      v4 = v3;
      sub_22DC6600C(0, &qword_27DA2DA00);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_22DC6600C(0, &qword_27DA2DA08);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_22DCA0384(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_22DCB647C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_22DCB665C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_22DC9F3C8(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v10, v11);
  v58 = &v47 - v12;
  v13 = sub_22DCB5B3C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16);
  v60 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v54 = a2;
  result = sub_22DCB669C();
  v20 = result;
  if (*(v18 + 16))
  {
    v21 = 0;
    v22 = (v18 + 64);
    v23 = 1 << *(v18 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v14;
    v26 = v24 & *(v18 + 64);
    v27 = (v23 + 63) >> 6;
    v50 = (v25 + 16);
    v51 = v25;
    v48 = v5;
    v49 = v9 + 16;
    v52 = v18;
    v53 = v9;
    v55 = (v9 + 32);
    v56 = (v25 + 32);
    v28 = result + 64;
    while (v26)
    {
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_15:
      v33 = v30 | (v21 << 6);
      v34 = *(v18 + 48);
      v57 = *(v25 + 72);
      v35 = v34 + v57 * v33;
      if (v54)
      {
        (*v56)(v60, v35, v13);
        v36 = *(v18 + 56);
        v37 = *(v53 + 72);
        (*(v53 + 32))(v58, v36 + v37 * v33, v59);
      }

      else
      {
        (*v50)(v60, v35, v13);
        v38 = *(v18 + 56);
        v37 = *(v53 + 72);
        (*(v53 + 16))(v58, v38 + v37 * v33, v59);
      }

      sub_22DCA2A54(&qword_27DA2D128, MEMORY[0x277CC95F0]);
      result = sub_22DCB60DC();
      v39 = -1 << *(v20 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v28 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v28 + 8 * v41);
          if (v45 != -1)
          {
            v29 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v40) & ~*(v28 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      (*v56)((*(v20 + 48) + v57 * v29), v60, v13);
      result = (*v55)(*(v20 + 56) + v37 * v29, v58, v59);
      ++*(v20 + 16);
      v25 = v51;
      v18 = v52;
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v27)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v26 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v7 = v48;
      goto LABEL_34;
    }

    v46 = 1 << *(v18 + 32);
    v7 = v48;
    if (v46 >= 64)
    {
      bzero(v22, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v46;
    }

    *(v18 + 16) = 0;
  }

LABEL_34:
  *v7 = v20;
  return result;
}

uint64_t sub_22DC9F86C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for LibrarySnapshot();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LibraryReplicatorIdentifier();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9, v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA58);
  v46 = a2;
  result = sub_22DCB669C();
  v16 = result;
  if (*(v14 + 16))
  {
    v41 = v2;
    v42 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v43 + 72);
      v30 = v29 + v47 * v28;
      if (v46)
      {
        sub_22DC8FF78(v30, v13, type metadata accessor for LibraryReplicatorIdentifier);
        v31 = *(v45 + 72);
        sub_22DC8FF78(*(v14 + 56) + v31 * v28, v48, type metadata accessor for LibrarySnapshot);
      }

      else
      {
        sub_22DCA2B00(v30, v13, type metadata accessor for LibraryReplicatorIdentifier);
        v31 = *(v45 + 72);
        sub_22DCA2B00(*(v14 + 56) + v31 * v28, v48, type metadata accessor for LibrarySnapshot);
      }

      sub_22DCB68AC();
      sub_22DCB618C();
      sub_22DCB5B3C();
      sub_22DCA2A54(&qword_27DA2D128, MEMORY[0x277CC95F0]);
      sub_22DCB60EC();
      result = sub_22DCB68EC();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v14 = v42;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v14 = v42;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_22DC8FF78(v13, *(v16 + 48) + v47 * v24, type metadata accessor for LibraryReplicatorIdentifier);
      result = sub_22DC8FF78(v48, *(v16 + 56) + v31 * v24, type metadata accessor for LibrarySnapshot);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v3 = v16;
  return result;
}

uint64_t sub_22DC9FD1C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for GallerySnapshot();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA50);
  v43 = a2;
  result = sub_22DCB669C();
  v11 = result;
  if (*(v9 + 16))
  {
    v40 = v2;
    v41 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v44 = (v16 - 1) & v16;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 56);
      v26 = (*(v9 + 48) + 32 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v45 = *(v42 + 72);
      v31 = v25 + v45 * v24;
      if (v43)
      {
        sub_22DC8FF78(v31, v46, type metadata accessor for GallerySnapshot);
      }

      else
      {
        sub_22DCA2B00(v31, v46, type metadata accessor for GallerySnapshot);
      }

      sub_22DCB68AC();
      sub_22DCB618C();
      sub_22DCB618C();
      result = sub_22DCB68EC();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 32 * v19);
      *v20 = v27;
      v20[1] = v28;
      v20[2] = v29;
      v20[3] = v30;
      result = sub_22DC8FF78(v46, *(v11 + 56) + v45 * v19, type metadata accessor for GallerySnapshot);
      ++*(v11 + 16);
      v9 = v41;
      v16 = v44;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22DCA00C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A8);
  v33 = a2;
  result = sub_22DCB669C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_22DC8F990(v34, *(&v34 + 1));
      }

      sub_22DCB68AC();
      sub_22DCB618C();
      result = sub_22DCB68EC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22DCA0384(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A0);
  result = sub_22DCB669C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_22DCB647C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

char *sub_22DCA0634(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6, v7);
  v48 = &v38 - v8;
  v47 = sub_22DCB5B3C();
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v9, v10);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v12 = *v3;
  v13 = sub_22DCB668C();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v5;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v5 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v14;
  }

  return result;
}

char *sub_22DCA0980()
{
  v1 = v0;
  v2 = type metadata accessor for LibrarySnapshot();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryReplicatorIdentifier();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7, v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA58);
  v10 = *v0;
  v11 = sub_22DCB668C();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = v33;
        v27 = *(v34 + 72) * v25;
        sub_22DCA2B00(*(v10 + 48) + v27, v33, type metadata accessor for LibraryReplicatorIdentifier);
        v28 = v35;
        v29 = *(v36 + 72) * v25;
        sub_22DCA2B00(*(v10 + 56) + v29, v35, type metadata accessor for LibrarySnapshot);
        v30 = v37;
        sub_22DC8FF78(v26, *(v37 + 48) + v27, type metadata accessor for LibraryReplicatorIdentifier);
        result = sub_22DC8FF78(v28, *(v30 + 56) + v29, type metadata accessor for LibrarySnapshot);
        v20 = v38;
      }

      while (v38);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v31;
        v12 = v37;
        goto LABEL_18;
      }

      v24 = *(v32 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v38 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

char *sub_22DCA0C74()
{
  v1 = v0;
  v2 = type metadata accessor for GallerySnapshot();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA50);
  v6 = *v0;
  v7 = sub_22DCB668C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v40 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 32 * v21;
        v23 = *(v6 + 56);
        v24 = (*(v6 + 48) + 32 * v21);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
        v29 = v38;
        v30 = *(v39 + 72) * v21;
        sub_22DCA2B00(v23 + v30, v38, type metadata accessor for GallerySnapshot);
        v31 = v40;
        v32 = (*(v40 + 48) + v22);
        *v32 = v25;
        v32[1] = v26;
        v32[2] = v27;
        v32[3] = v28;
        v33 = *(v31 + 56) + v30;
        v6 = v37;
        sub_22DC8FF78(v29, v33, type metadata accessor for GallerySnapshot);

        v16 = v41;
      }

      while (v41);
    }

    v19 = v12;
    v8 = v40;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22DCA0EE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A8);
  v2 = *v0;
  v3 = sub_22DCB668C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22DC8F990(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22DCA1068()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5A0);
  v2 = *v0;
  v3 = sub_22DCB668C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_22DCA11C8()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    if (v0 > 0x38 || ((1 << v0) & 0x1C1000080000001) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_22DC9F030(0, *(v1 + 2) + 1, 1, v1);
      }

      v3 = *(v1 + 2);
      v2 = *(v1 + 3);
      if (v3 >= v2 >> 1)
      {
        v1 = sub_22DC9F030((v2 > 1), v3 + 1, 1, v1);
      }

      *(v1 + 2) = v3 + 1;
      *&v1[8 * v3 + 32] = v0;
    }

    ++v0;
  }

  while (v0 != 60);
  return v1;
}

uint64_t sub_22DCA12A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return MEMORY[0x2822009F8](sub_22DCA12C0, 0, 0);
}

uint64_t sub_22DCA12C0()
{
  v1 = sub_22DC8FC38(MEMORY[0x277D84F90]);
  if (qword_27DA2CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_22DCB5FDC();
  v0[23] = __swift_project_value_buffer(v2, qword_27DA376C0);
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, v4, "TypeLookupGenerator: Generating NTKComplicationType lookup...", v5, 2u);
    MEMORY[0x2318DAAC0](v5, -1, -1);
  }

  v6 = sub_22DCA11C8();
  v0[24] = v6;
  v14 = *(v6 + 2);
  v0[25] = v14;
  if (v14)
  {
    v0[27] = 0;
    v0[28] = v1;
    v0[26] = v1;
    if (*(v6 + 2))
    {
      v15 = *(v6 + 4);
      v0[29] = v15;
      v16 = sub_22DCB5FBC();
      v17 = sub_22DCB63DC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v15;
        _os_log_impl(&dword_22D9C5000, v16, v17, "TypeLookupGenerator: type %lu", v18, 0xCu);
        MEMORY[0x2318DAAC0](v18, -1, -1);
      }

      v19 = swift_task_alloc();
      v0[30] = v19;
      *(v19 + 16) = v15;
      v20 = swift_task_alloc();
      v0[31] = v20;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA18);
      *v20 = v0;
      v20[1] = sub_22DCA15E4;
      v11 = sub_22DCA29AC;
      v6 = (v0 + 18);
      v10 = 0x800000022DD10D80;
      v7 = 0;
      v8 = 0;
      v9 = 0xD00000000000001DLL;
      v12 = v19;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822007B8](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {

    v21 = sub_22DCB5FBC();
    v22 = sub_22DCB63DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22D9C5000, v21, v22, "TypeLookupGenerator: Finished generating NTKComplicationType lookup", v23, 2u);
      MEMORY[0x2318DAAC0](v23, -1, -1);
    }

    v24 = v0[1];

    return v24(v1);
  }
}

uint64_t sub_22DCA15E4()
{

  return MEMORY[0x2822009F8](sub_22DCA16FC, 0, 0);
}

uint64_t sub_22DCA16FC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[18];
  v8[32] = v9;
  if (v9)
  {
    v10 = MEMORY[0x2318D77D0]();
    v8[33] = v10;
    v11 = *(v10 + 16);
    v8[34] = v11;
    if (v11)
    {
      a1 = objc_opt_self();
      v12 = v8[28];
      v13 = v8[26];
      v8[37] = 0;
      v8[38] = v12;
      v8[35] = a1;
      v8[36] = v13;
      v14 = v8[33];
      if (*(v14 + 16))
      {
        v15 = v8[32];
        v8[39] = *(v14 + 32);
        v16 = [a1 requestWithComplication:v15 family:? device:?];
        v8[40] = v16;
        v17 = v16;
        v18 = sub_22DCB5FBC();
        v19 = sub_22DCB63DC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&dword_22D9C5000, v18, v19, "TypeLookupGenerator: request %@", v20, 0xCu);
          sub_22D9CA164(v21, &qword_27DA2D450);
          MEMORY[0x2318DAAC0](v21, -1, -1);
          MEMORY[0x2318DAAC0](v20, -1, -1);
        }

        v23 = v8[21];

        v8[2] = v8;
        v8[7] = v8 + 19;
        v8[3] = sub_22DCA1BD4;
        v24 = swift_continuation_init();
        v8[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA20);
        v8[10] = MEMORY[0x277D85DD0];
        v8[11] = 1107296256;
        v8[12] = sub_22DC9D73C;
        v8[13] = &block_descriptor_3;
        v8[14] = v24;
        [v23 processRequest:v17 completion:v8 + 10];

        return MEMORY[0x282200938](v8 + 2);
      }

      __break(1u);
      goto LABEL_24;
    }

    v25 = v8[28];
    v26 = v8[26];
    v27 = v8[32];
  }

  else
  {
    v25 = v8[28];
    v26 = v8[26];
  }

  v28 = v8[27] + 1;
  if (v28 != v8[25])
  {
    v8[27] = v28;
    v8[28] = v25;
    v8[26] = v26;
    v33 = v8[24];
    if (v28 < *(v33 + 16))
    {
      v34 = *(v33 + 8 * v28 + 32);
      v8[29] = v34;
      v35 = sub_22DCB5FBC();
      v36 = sub_22DCB63DC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v34;
        _os_log_impl(&dword_22D9C5000, v35, v36, "TypeLookupGenerator: type %lu", v37, 0xCu);
        MEMORY[0x2318DAAC0](v37, -1, -1);
      }

      v38 = swift_task_alloc();
      v8[30] = v38;
      *(v38 + 16) = v34;
      v39 = swift_task_alloc();
      v8[31] = v39;
      a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA18);
      *v39 = v8;
      v39[1] = sub_22DCA15E4;
      a6 = sub_22DCA29AC;
      a5 = 0x800000022DD10D80;
      a1 = v8 + 18;
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001DLL;
      a7 = v38;

      return MEMORY[0x2822007B8](a1, a2, a3, a4, a5, a6, a7, a8);
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x2822007B8](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v29 = sub_22DCB5FBC();
  v30 = sub_22DCB63DC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22D9C5000, v29, v30, "TypeLookupGenerator: Finished generating NTKComplicationType lookup", v31, 2u);
    MEMORY[0x2318DAAC0](v31, -1, -1);
  }

  v32 = v8[1];

  return v32(v25);
}

uint64_t sub_22DCA1BD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_22DCA2360;
  }

  else
  {
    v2 = sub_22DCA1CE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DCA1CE4()
{
  v2 = *(v1 + 152);
  if (!v2)
  {

    v3 = *(v1 + 304);
    v8 = *(v1 + 288);
    goto LABEL_22;
  }

  v0 = *(v1 + 304);
  v3 = [objc_allocWithZone(NTKBundleComplicationMigrationTypeLookupKey) initWithComplicationType:*(v1 + 232) family:*(v1 + 312)];
  if ((v0 & 0xC000000000000001) != 0)
  {
    if (*(v1 + 304) < 0)
    {
      v4 = *(v1 + 304);
    }

    else
    {
      v4 = v0 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = v2;
    v6 = sub_22DCB662C();
    if (__OFADD__(v6, 1))
    {
      goto LABEL_43;
    }

    v7 = sub_22DC9F134(v4, v6 + 1);
  }

  else
  {
    v7 = *(v1 + 288);
    v9 = v2;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 160) = v7;
  v6 = sub_22DC9E0A4(v3);
  v12 = *(v7 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_42;
  }

  LOBYTE(v0) = v11;
  if (*(v7 + 24) >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_44;
    }

    while (1)
    {
LABEL_17:
      v8 = *(v1 + 160);
      v18 = *(v1 + 320);
      if (v0)
      {
        v19 = v8[7];
        v20 = *(v19 + 8 * v6);
        *(v19 + 8 * v6) = v2;
      }

      else
      {
        v8[(v6 >> 6) + 8] |= 1 << v6;
        *(v8[6] + 8 * v6) = v3;
        *(v8[7] + 8 * v6) = v2;

        v28 = v8[2];
        v14 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v14)
        {
          __break(1u);
          goto LABEL_46;
        }

        v8[2] = v29;
      }

      v3 = v8;
LABEL_22:
      v30 = *(v1 + 296) + 1;
      if (v30 == *(v1 + 272))
      {
        v31 = *(v1 + 256);

        v32 = *(v1 + 216) + 1;
        if (v32 == *(v1 + 200))
        {

          v33 = sub_22DCB5FBC();
          v34 = sub_22DCB63DC();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_22D9C5000, v33, v34, "TypeLookupGenerator: Finished generating NTKComplicationType lookup", v35, 2u);
            MEMORY[0x2318DAAC0](v35, -1, -1);
          }

          v36 = *(v1 + 8);

          return v36(v3);
        }

        *(v1 + 216) = v32;
        *(v1 + 224) = v3;
        *(v1 + 208) = v8;
        v49 = *(v1 + 192);
        if (v32 < *(v49 + 16))
        {
          v50 = *(v49 + 8 * v32 + 32);
          *(v1 + 232) = v50;
          v51 = sub_22DCB5FBC();
          v52 = sub_22DCB63DC();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 134217984;
            *(v53 + 4) = v50;
            _os_log_impl(&dword_22D9C5000, v51, v52, "TypeLookupGenerator: type %lu", v53, 0xCu);
            MEMORY[0x2318DAAC0](v53, -1, -1);
          }

          v54 = swift_task_alloc();
          *(v1 + 240) = v54;
          *(v54 + 16) = v50;
          v55 = swift_task_alloc();
          *(v1 + 248) = v55;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA18);
          *v55 = v1;
          v55[1] = sub_22DCA15E4;
          v25 = sub_22DCA29AC;
          v6 = v1 + 144;
          v24 = 0x800000022DD10D80;
          v21 = 0;
          v22 = 0;
          v23 = 0xD00000000000001DLL;
          v26 = v54;

          return MEMORY[0x2822007B8](v6, v21, v22, v23, v24, v25, v26, v27);
        }

LABEL_46:
        __break(1u);
        return MEMORY[0x2822007B8](v6, v21, v22, v23, v24, v25, v26, v27);
      }

      *(v1 + 296) = v30;
      *(v1 + 304) = v3;
      *(v1 + 288) = v8;
      v37 = *(v1 + 264);
      if (v30 < *(v37 + 16))
      {
        break;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v56 = v6;
      sub_22DCA1068();
      v6 = v56;
    }

    v38 = *(v1 + 280);
    v39 = *(v1 + 256);
    *(v1 + 312) = *(v37 + 8 * v30 + 32);
    v40 = [v38 requestWithComplication:v39 family:? device:?];
    *(v1 + 320) = v40;
    v41 = v40;
    v42 = sub_22DCB5FBC();
    v43 = sub_22DCB63DC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_22D9C5000, v42, v43, "TypeLookupGenerator: request %@", v44, 0xCu);
      sub_22D9CA164(v45, &qword_27DA2D450);
      MEMORY[0x2318DAAC0](v45, -1, -1);
      MEMORY[0x2318DAAC0](v44, -1, -1);
    }

    v47 = *(v1 + 168);

    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 152;
    *(v1 + 24) = sub_22DCA1BD4;
    v48 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA20);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_22DC9D73C;
    *(v1 + 104) = &block_descriptor_3;
    *(v1 + 112) = v48;
    [v47 processRequest:v41 completion:v1 + 80];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    sub_22DCA0384(v15, isUniquelyReferenced_nonNull_native);
    v6 = sub_22DC9E0A4(v3);
    if ((v0 & 1) == (v16 & 1))
    {
      goto LABEL_17;
    }

    sub_22DC6600C(0, &qword_27DA2DA00);

    return sub_22DCB683C();
  }
}

uint64_t sub_22DCA2360()
{
  v2 = v0[40];
  v1 = v0[41];
  swift_willThrow();
  v3 = v2;
  v4 = v1;
  v5 = sub_22DCB5FBC();
  v6 = sub_22DCB63CC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[40];
  v8 = v0[41];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_22D9C5000, v5, v6, "TypeLookupGenerator: Error fetching request %@: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D450);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v11, -1, -1);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }

  else
  {
  }

  v23 = v0[36];
  v24 = v0[37] + 1;
  if (v24 == v0[34])
  {
    v25 = v0[38];
    v26 = v0[32];

    v27 = v0[27] + 1;
    if (v27 == v0[25])
    {

      v28 = sub_22DCB5FBC();
      v29 = sub_22DCB63DC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22D9C5000, v28, v29, "TypeLookupGenerator: Finished generating NTKComplicationType lookup", v30, 2u);
        MEMORY[0x2318DAAC0](v30, -1, -1);
      }

      v31 = v0[1];

      return v31(v25);
    }

    v0[27] = v27;
    v0[28] = v25;
    v0[26] = v23;
    v45 = v0[24];
    if (v27 < *(v45 + 16))
    {
      v46 = *(v45 + 8 * v27 + 32);
      v0[29] = v46;
      v47 = sub_22DCB5FBC();
      v48 = sub_22DCB63DC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v46;
        _os_log_impl(&dword_22D9C5000, v47, v48, "TypeLookupGenerator: type %lu", v49, 0xCu);
        MEMORY[0x2318DAAC0](v49, -1, -1);
      }

      v50 = swift_task_alloc();
      v0[30] = v50;
      *(v50 + 16) = v46;
      v51 = swift_task_alloc();
      v0[31] = v51;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA18);
      *v51 = v0;
      v51[1] = sub_22DCA15E4;
      v20 = sub_22DCA29AC;
      v15 = v0 + 18;
      v19 = 0x800000022DD10D80;
      v16 = 0;
      v17 = 0;
      v18 = 0xD00000000000001DLL;
      v21 = v50;

      return MEMORY[0x2822007B8](v15, v16, v17, v18, v19, v20, v21, v22);
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x2822007B8](v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v0[36] = v23;
  v0[37] = v24;
  v33 = v0[33];
  if (v24 >= *(v33 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = v0[35];
  v35 = v0[32];
  v0[39] = *(v33 + 8 * v24 + 32);
  v36 = [v34 requestWithComplication:v35 family:? device:?];
  v0[40] = v36;
  v37 = v36;
  v38 = sub_22DCB5FBC();
  v39 = sub_22DCB63DC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&dword_22D9C5000, v38, v39, "TypeLookupGenerator: request %@", v40, 0xCu);
    sub_22D9CA164(v41, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v41, -1, -1);
    MEMORY[0x2318DAAC0](v40, -1, -1);
  }

  v43 = v0[21];

  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_22DCA1BD4;
  v44 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22DC9D73C;
  v0[13] = &block_descriptor_3;
  v0[14] = v44;
  [v43 processRequest:v37 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

unint64_t sub_22DCA2944()
{
  result = qword_27DA2DA10;
  if (!qword_27DA2DA10)
  {
    sub_22DC6600C(255, &qword_27DA2DA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2DA10);
  }

  return result;
}

uint64_t sub_22DCA29CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2DA28);
  v1 = *(v0 + 16);

  return sub_22DC9D6C8(v1);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DCA2A54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DCA2A9C()
{
  result = qword_27DA2DA40;
  if (!qword_27DA2DA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA2DA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2DA40);
  }

  return result;
}

uint64_t sub_22DCA2B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _NTKAppleEncryptedArchiveMemoryExtractorCancel_cold_1(void *a1, void *a2, void *a3, void *a4)
{
  [(NTKAppleEncryptedArchiveMemoryExtractor *)a2 setOutputError:a1];

  if (a2)
  {
    a2[8] = 4;
  }

  objc_sync_exit(a2);
}

void _LayoutConstants_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}

void create_zip_cold_1()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_write_open_filename(): %d, %s", v2, v3, v4, v5, 2u);
}

void create_zip_cold_2()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_read_disk_open(): %d, %s", v2, v3, v4, v5, 2u);
}

void extract_zip_cold_1()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_read_open_filename(): %d, %s", v2, v3, v4, v5, 2u);
}

void extract_zip_cold_2()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_write_header(): %d, %s", v2, v3, v4, v5, 2u);
}

void extract_zip_cold_3()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_write_data_block(): %d, %s", v2, v3, v4, v5, 2u);
}

void extract_zip_cold_4()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_read_data_block(): %d, %s", v2, v3, v4, v5, 2u);
}

void extract_zip_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_ERROR, "%s, error: file name too long %s", v1, 0x16u);
}

void extract_zip_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_ERROR, "%s, error: absolute path name in archive: %s", v1, 0x16u);
}

void extract_zip_cold_7()
{
  OUTLINED_FUNCTION_8();
  archive_error_string();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_22D9C5000, v0, v1, "%s, error in archive_read_next_header(): %d, %s", v2, v3, v4, v5, 2u);
}

void NTKRaiseInternalException_cold_1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v1, v2, "Internal exception: %s", v3, v4, v5, v6, v7);
}

void _NTKGenerateSimulatedCrash_cold_1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v1, v2, "Simulated exception: %s", v3, v4, v5, v6, v7);
}

void NTKCanAddWatchFace_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_ERROR, "NTKCanAddWatchFace: Can't add watchface because face descriptor:%@ isn't compatible with hardware", v1, 0xCu);
}

void NTKCanAddWatchFace_cold_6(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "NTKCanAddWatchFace: Can't add watchface because complication:%@ needs OS Update", buf, 0xCu);
}

void NTKCanAddWatchFace_cold_9(void *a1)
{
  v1 = NTKFaceStyleDescription([a1 faceStyle]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v2, v3, "NTKCanAddWatchFace: Can't add watchface because watchface:%@ isn't available", v4, v5, v6, v7, v8);
}

void NTKCanAddWatchFace_cold_10(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [a1 device];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKCanAddWatchFace: Can't add watchface because [watchface class]:%@ isRestrictedForDevice:%@", &v7, 0x16u);
}

void NTKBundleComplicationDataSourceClassesFromBundle_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "No principal class provided for bundle: %@", &v2, 0xCu);
}

void NTKCachedSnapshotResultForFace_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_FAULT, "File %@ exception while reading, removing… %@", v1, 0x16u);
}

void NTKCachedSnapshotResultForFace_cold_4(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "File %@ couldn't get plist %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void NTKDFaceConfigurationFromPayloadData_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "payload json data: %{public}@", &v2, 0xCu);
}

void NTKDOrderedUUIDsFromPayloadData_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_22D9C5000, v3, v4, "Unable to convert payload data to array of UUIDS: %@", v5);
}

void NTKDClientSampleDataFromPayloadData_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_22D9C5000, v3, v4, "Unable to convert payload data to NTKComplicationSampleData: %@", v5);
}

void NTKDClientSampleTemplateFromPayloadData_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_22D9C5000, v3, v4, "Unable to convert payload data to CLKComplicationTemplate: %@", v5);
}

void NTKDComplicationDescriptorsFromPayloadData_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_22D9C5000, v3, v4, "Unable to convert payload data to NSArray<CLKComplicationDescriptor>: %@", v5);
}

void NTKDPayloadDataFromFaceConfiguration_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_22D9C5000, log, OS_LOG_TYPE_DEBUG, "payload json data: %{public}@ - face %{public}@", &v3, 0x16u);
}

void _createArchive_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void NTKBundleComplicationMigrationServiceSetLookupVersion_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 138412546;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Failed to set xattr on %@: %s", &v6, 0x16u);
}

void NTKDZipFileFromFace_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 faceStyle];
  OUTLINED_FUNCTION_0();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Failed to archive face to json data. Face style: %lu - error: %{public}@", v5, 0x16u);
}

void _CopyFromFileToFile_cold_1(void *a1)
{
  [a1 length];
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void _CopyFromFileToFile_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void _CopyFromFileToFile_cold_3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void _FileSize_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void _NTKSubmitCommonAnalyticsForAddFaceAndEarlyExitEvents_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a2 distributionMechanism];
  v6 = 138412802;
  v7 = 0;
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "_NTKSubmitCommonAnalyticsForAddFaceAndEarlyExitEvents face is nil: %@, shareMetricName: %@, distributionMechanism: %@", &v6, 0x20u);
}

void NTKUpNextFileRadarWithData_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unable to write log file: %@", &v2, 0xCu);
}

void NTKPhotosCreateResourceDirectory_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKPhotosCreateResourceDirectory: cannot create path at %@", &v2, 0xCu);
}

void NTKPhotosWriteImageListWithVersionForAssetCollection_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKPhotosWriteImageListForAssetCollection: cannot write the image list to %@", &v2, 0xCu);
}

void NTKPhotosSubsampledImageForURL_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "NTKPhotosImageForURL: Failed to get file for image %@, error = %@", &v6, 0x16u);
}

void cropCompositionFor_cold_2(_OWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v1;
  *&v8.tx = a1[2];
  v2 = NSStringFromCGAffineTransform(&v8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

id NTKFaceColorPalette_PerformFallbackPropertyAccessor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  if ([v5 isTritium])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"tritium_", v7];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"_%@", v7, v14];
  }
  v8 = ;

  v9 = [v5 isTritium];
  if (v5 && v5[8])
  {
    v5[8] = 0;
    v10 = *(v5 + 9);
    *(v5 + 9) = 0;
  }

  v11 = NTKFaceColorPalette_ExecuteWithSelectorName(v5, v8);
  if (v5 && v5[8] != v9)
  {
    v5[8] = v9;
    v12 = *(v5 + 9);
    *(v5 + 9) = 0;
  }

  if (v11)
  {
    [v6 setColor:v11];
    [v6 setFallbackMethodName:v8];
  }

  return v11;
}

void CDCircularMediumComplicationDiameter()
{
    ;
  }
}

void CDCircularSmallComplicationDiameter()
{
    ;
  }
}

void CDColorizeMeterProgress()
{
    ;
  }
}

void CDCornerComplicationKeylineInnerRadius()
{
    ;
  }
}

void CDCornerComplicationKeylineSize()
{
    ;
  }
}

void CDCornerComplicationSize()
{
    ;
  }
}

void CDGenerateMeterBackgroundGradientColors()
{
    ;
  }
}

void CDGenerateMeterLayersOnLayer()
{
    ;
  }
}

void CDGraphicCircularScaledComplicationDiameter()
{
    ;
  }
}

void CDGraphicExtraLargeComplicationContentDiameter()
{
    ;
  }
}

void CDGraphicLargeRectangularComplicationCornerRadius()
{
    ;
  }
}

void CDGraphicLargeRectangularComplicationInset()
{
    ;
  }
}

void CDGraphicLargeRectangularComplicationLargeImageHeight()
{
    ;
  }
}

void CDGraphicLargeRectangularComplicationSize()
{
    ;
  }
}

void CDGraphicSubdialComplicationContentDiameter()
{
    ;
  }
}

void CDGraphicSubdialComplicationDiameter()
{
    ;
  }
}

void CDGraphicSubdialComplicationDistanceFromCenter()
{
    ;
  }
}

void CDGraphicSubdialComplicationEditingInset()
{
    ;
  }
}

void CDRichComplicationProgressFillStyleIsMetered()
{
    ;
  }
}

void CDShowGossamerUI()
{
    ;
  }
}

void CDTemplicateComplicationShouldPerformFullFade()
{
    ;
  }
}

void CDWidgetGroupNestedContentDiameter()
{
    ;
  }
}

void CDWidgetGroupSafeAreaInsets()
{
    ;
  }
}

void CDWidgetGroupSquareContentCornerRadius()
{
    ;
  }
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void CLKUIAssociatedNonAccentStyle()
{
    ;
  }
}

void CLKUICompareColorsByLightness()
{
    ;
  }
}

void CLKUIComputeImageAPL()
{
    ;
  }
}

void CLKUIConvertLABtoRGB()
{
    ;
  }
}

void CLKUIConvertRGBtoLAB()
{
    ;
  }
}

void CLKUIConvertToRGBfFromSRGB8_fast()
{
    ;
  }
}

void CLKUIConvertToRGBfFromUIColor()
{
    ;
  }
}

void CLKUIConvertToRGBfFromUIColor_fast()
{
    ;
  }
}

void CLKUIConvertToRGBfFromXRSRGBf()
{
    ;
  }
}

void CLKUIConvertToSRGB8FromRGBf_fast()
{
    ;
  }
}

void CLKUIConvertToUIColorFromRGBf()
{
    ;
  }
}

void CLKUIConvertToUIColorFromRGBf_fast()
{
    ;
  }
}

void CLKUIConvertToXRSRGBfFromRGBf()
{
    ;
  }
}

void CLKUICurvedColoringLabelCenterSize()
{
    ;
  }
}

void CLKUICurvedColoringLabelCornerSize()
{
    ;
  }
}

void CLKUIDefaultAlternateComplicationColor()
{
    ;
  }
}

void CLKUIDefaultComplicationBackgroundColor()
{
    ;
  }
}

void CLKUIDefaultComplicationBackgroundColorWithNonAccentColor()
{
    ;
  }
}

void CLKUIImageNamed()
{
    ;
  }
}

void CLKUIImageNamedFromAssetBundleForDevice()
{
    ;
  }
}

void CLKUIImageNamedFromBundleForDevice()
{
    ;
  }
}

void CLKUIInterpolateBetweenColors()
{
    ;
  }
}

void CLKUILightnessForColor()
{
    ;
  }
}

void CLKUIMonochromeFiltersForStyle()
{
    ;
  }
}

void CLKUIMonochromeFiltersForStyleWithTintedBackground()
{
    ;
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void NTKMonochromeFilterForStyle()
{
    ;
  }
}

void _CLKUILAB2RGB()
{
    ;
  }
}

void _CLKUIRGB2LAB()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}