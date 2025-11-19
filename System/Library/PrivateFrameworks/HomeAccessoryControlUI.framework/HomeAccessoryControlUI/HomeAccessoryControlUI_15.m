uint64_t sub_2524B368C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[8] < v4[8])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 80;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 80;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 80;
    do
    {
      v15 = v5 + 80;
      if (*(v12 - 72) < *(v6 - 72))
      {
        v17 = v6 - 80;
        if (v15 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 80);
      if (v15 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}

uint64_t sub_2524B38C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = sub_25268DA10();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = (&v40 - v13);
  MEMORY[0x28223BE20](v14);
  v49 = (&v40 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v40 = v2;
  v19 = *v2;
  sub_252693460();
  v55 = a1;
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
  v20 = sub_2526934C0();
  v21 = -1 << *(v19 + 32);
  v22 = v20 & ~v21;
  v54 = v19 + 56;
  if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    v35 = 1;
    return (*(v10 + 56))(a2, v35, 1, v9);
  }

  v42 = a2;
  v52 = ~v21;
  v41 = v10;
  v53 = *(v10 + 72);
  v47 = (v5 + 8);
  v43 = (v5 + 32);
  v23 = v45;
  v24 = v51;
  while (1)
  {
    v25 = v53 * v22;
    sub_2524B4F94(*(v19 + 48) + v53 * v22, v18, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v26 = *(v23 + 48);
    sub_2524B4F94(v18, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524B4F94(v55, &v8[v26], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_2524B5064(v18, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524B4F94(v8, v49, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    v28 = *v49;
    v29 = *&v8[v26];
    sub_2524B5064(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v28 == v29)
    {
      goto LABEL_20;
    }

LABEL_5:
    v22 = (v22 + 1) & v52;
    if (((*(v54 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      v35 = 1;
      a2 = v42;
      goto LABEL_23;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2524B5064(v18, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2524B4F94(v8, v50, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v50 == *&v8[v26])
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_4;
  }

  sub_2524B4F94(v8, v24, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2524B5064(v18, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    (*v47)(v24, v48);
LABEL_4:
    sub_252372288(v8, &qword_27F4DAE50);
    goto LABEL_5;
  }

  v30 = v44;
  v31 = v48;
  (*v43)(v44, &v8[v26], v48);
  v46 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  v32 = *v47;
  v33 = v30;
  v23 = v45;
  (*v47)(v33, v31);
  sub_2524B5064(v18, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v34 = v31;
  v24 = v51;
  v32(v51, v34);
  if ((v46 & 1) == 0)
  {
LABEL_16:
    sub_2524B5064(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    goto LABEL_5;
  }

LABEL_19:
  sub_2524B5064(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
LABEL_20:
  v36 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v36;
  v56 = *v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252416340();
    v38 = v56;
  }

  a2 = v42;
  sub_2524B4FFC(*(v38 + 48) + v25, v42, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  sub_2524B3EE8(v22);
  v35 = 0;
  *v36 = v56;
LABEL_23:
  v10 = v41;
  return (*(v10 + 56))(a2, v35, 1, v9);
}

void sub_2524B3EE8(unint64_t a1)
{
  v39 = sub_25268DA10();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v43);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = *v1;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  v42 = *v1 + 56;
  if (((1 << v13) & *(v42 + 8 * (v13 >> 6))) != 0)
  {
    v41 = v3;
    v14 = v8;
    v15 = ~v12;

    v16 = v42;
    v17 = sub_2526931B0();
    if ((*(v16 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v18 = (v17 + 1) & v15;
      v19 = *(v14 + 72);
      v35 = (v41 + 8);
      v36 = (v41 + 32);
      v41 = v15;
      v37 = v10;
      while (1)
      {
        v20 = v19 * v13;
        sub_2524B4F94(*(v11 + 48) + v19 * v13, v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        sub_252693460();
        sub_2524B4F94(v10, v6, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            MEMORY[0x2530A4FE0](1);
            sub_2526934A0();
          }

          else
          {
            v23 = *v36;
            v40 = a1;
            v24 = v11;
            v26 = v38;
            v25 = v39;
            v23(v38, v6, v39);
            MEMORY[0x2530A4FE0](2);
            sub_2524B5218(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
            sub_252692B30();
            v27 = v26;
            v11 = v24;
            a1 = v40;
            v10 = v37;
            (*v35)(v27, v25);
          }
        }

        else
        {
          v22 = *v6;
          MEMORY[0x2530A4FE0](0);
          MEMORY[0x2530A4FE0](v22);
        }

        v28 = sub_2526934C0();
        sub_2524B5064(v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v29 = v28 & v41;
        v30 = v41;
        if (a1 >= v18)
        {
          break;
        }

        if (v29 < v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v31 = v19 * a1;
        if ((v19 * a1) < v20 || *(v11 + 48) + v19 * a1 >= *(v11 + 48) + v20 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v13;
          if (v31 == v20)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v13;
LABEL_6:
        v13 = (v13 + 1) & v30;
        if (((*(v42 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if (v29 < v18)
      {
        goto LABEL_6;
      }

LABEL_16:
      if (a1 < v29)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_21:

    *(v42 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v42 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v11 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v34;
    ++*(v11 + 36);
  }
}

void sub_2524B43A4()
{
  sub_2524B44A0(319, &qword_27F4DEFD0, type metadata accessor for PickerButtonControlView.PickerViewState, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2524B44A0(319, &qword_27F4DEFD8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524B44A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2524B4530()
{
  result = qword_27F4DF020;
  if (!qword_27F4DF020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF018);
    sub_2524B45B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF020);
  }

  return result;
}

unint64_t sub_2524B45B4()
{
  result = qword_27F4DF028;
  if (!qword_27F4DF028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF030);
    sub_2524B4638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF028);
  }

  return result;
}

unint64_t sub_2524B4638()
{
  result = qword_27F4DF038;
  if (!qword_27F4DF038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF040);
    sub_252400FC8(&qword_27F4DF048, &qword_27F4DF050);
    sub_2524B4704();
    sub_2524B48F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF038);
  }

  return result;
}

unint64_t sub_2524B4704()
{
  result = qword_27F4DF058;
  if (!qword_27F4DF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF060);
    sub_2524B4790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF058);
  }

  return result;
}

unint64_t sub_2524B4790()
{
  result = qword_27F4DF068;
  if (!qword_27F4DF068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF070);
    sub_2524B4848();
    sub_252400FC8(&qword_27F4DF098, &qword_27F4DF0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF068);
  }

  return result;
}

unint64_t sub_2524B4848()
{
  result = qword_27F4DF078;
  if (!qword_27F4DF078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF080);
    sub_252400FC8(&qword_27F4DF088, &qword_27F4DF090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF078);
  }

  return result;
}

unint64_t sub_2524B48F8()
{
  result = qword_27F4DF0A8;
  if (!qword_27F4DF0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF0A8);
  }

  return result;
}

unint64_t sub_2524B4984()
{
  result = qword_27F4DF0E0;
  if (!qword_27F4DF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF0D8);
    sub_252400FC8(&qword_27F4DDE90, &qword_27F4DDE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF0E0);
  }

  return result;
}

unint64_t sub_2524B4A3C()
{
  result = qword_27F4DF0F0;
  if (!qword_27F4DF0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF0E8);
    sub_252400FC8(&qword_27F4DDE90, &qword_27F4DDE88);
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF0F0);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for SelectionPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524B4CF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SelectionPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2524AC740(a1, v6, a2);
}

unint64_t sub_2524B4D70()
{
  result = qword_27F4DF128;
  if (!qword_27F4DF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF128);
  }

  return result;
}

uint64_t sub_2524B4DEC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25235EABC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2524B4E30(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2524228D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2524B4E74()
{
  v1 = *(type metadata accessor for SelectionPickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2524AEDC0(v2);
}

unint64_t sub_2524B4EDC()
{
  result = qword_27F4DF160;
  if (!qword_27F4DF160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF158);
    sub_252400FC8(&qword_27F4DF168, &qword_27F4DF170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF160);
  }

  return result;
}

uint64_t sub_2524B4F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524B4FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524B5064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2524B50D4()
{
  result = qword_27F4DF198;
  if (!qword_27F4DF198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF1A0);
    sub_252690D20();
    sub_252400FC8(&qword_27F4DF1A8, &qword_27F4DF1A0);
    sub_2524B5218(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF198);
  }

  return result;
}

uint64_t sub_2524B5218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2524B5270()
{
  result = qword_27F4DF1C0;
  if (!qword_27F4DF1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF1B8);
    sub_252400FC8(&qword_27F4DF1C8, &qword_27F4DF1D0);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF1C0);
  }

  return result;
}

uint64_t sub_2524B5354@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0) - 8);
  v7 = *(v1 + 32);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2524B02B4(v7, v1 + v4, v8, a1);
}

uint64_t sub_2524B5430(uint64_t a1)
{
  v3 = *(type metadata accessor for SelectionPickerView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2524B0434(a1, v5, v6, v1 + v4, v7);
}

unint64_t sub_2524B54D8()
{
  result = qword_27F4DF1F0;
  if (!qword_27F4DF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DABF0);
    sub_2524B55AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF1F0);
  }

  return result;
}

unint64_t sub_2524B55AC()
{
  result = qword_27F4DF1F8;
  if (!qword_27F4DF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DABF0);
    sub_2524B5218(&qword_27F4DF1E8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF1F8);
  }

  return result;
}

uint64_t sub_2524B56B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SelectionPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_2524B0D34(a1, v7, v8, a2);
}

uint64_t sub_2524B5784()
{
  v1 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v4 + 8);

  return sub_2524B17D4(v0 + v2, v5, v10, v7, v8, v9);
}

unint64_t sub_2524B583C()
{
  result = qword_27F4DF240;
  if (!qword_27F4DF240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF238);
    sub_252400FC8(&qword_27F4DF248, &qword_27F4DF250);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF240);
  }

  return result;
}

unint64_t sub_2524B5980()
{
  result = qword_27F4DF278;
  if (!qword_27F4DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF278);
  }

  return result;
}

unint64_t sub_2524B59D4()
{
  result = qword_27F4DF288;
  if (!qword_27F4DF288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF280);
    sub_25249D09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF288);
  }

  return result;
}

uint64_t sub_2524B5A60@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  result = sub_25240D6A4(v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), *(v1 + 32));
  *a1 = result & 1;
  return result;
}

uint64_t sub_2524B5ACC(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SelectionPickerView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_2524B234C(a1, v1[2], v1[3], v1[4], v1 + v4, v1 + v7, *(v1 + ((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2524B5C50()
{
  result = type metadata accessor for SelectionPickerView.ToggleableItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2524B5CE4()
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2524B5DC4()
{
  result = qword_27F4DF2E0;
  if (!qword_27F4DF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF2E0);
  }

  return result;
}

uint64_t sub_2524B5E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2524B5EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2524B5F34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  result = [v0 prepare];
  qword_27F4DF318 = v0;
  return result;
}

uint64_t sub_2524B5F80@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v50 = a3;
  v4 = a2;
  v41 = a2;
  v42 = a1;
  v48 = sub_2526919A0();
  v46 = *(v48 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_252691970();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF320);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v40[-v15];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF328);
  MEMORY[0x28223BE20](v44);
  v43 = &v40[-v17];
  *v16 = sub_252692920();
  v16[1] = v18;
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF330) + 44));
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v50;

  sub_252691980();
  v21 = *(v7 + 16);
  v21(v9, v12, v6);
  *v19 = sub_2524B6C30;
  v19[1] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF338);
  v21(v19 + *(v22 + 48), v9, v6);
  v23 = *(v7 + 8);

  v23(v12, v6);
  v23(v9, v6);

  v24 = (v16 + *(v14 + 44));
  v25 = *(sub_252690D30() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_252691260();
  (*(*(v27 - 8) + 104))(&v24->i8[v25], v26, v27);
  *v24 = vdupq_n_s64(0x4059000000000000uLL);
  v24->i8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF340) + 36)] = 0;
  v28 = v41;
  v52 = v41;
  v29 = v50;
  v53 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924E0();
  if (v51)
  {
    v30 = 0.5;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = v43;
  sub_2524B6C3C(v16, v43);
  *&v31[*(v44 + 36)] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v29;
  v34 = v45;
  v33 = v46;
  v35 = v48;
  (*(v46 + 16))(v45, v42, v48);
  v36 = v33;
  v37 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v38 = swift_allocObject();
  (*(v36 + 32))(v38 + v37, v34, v35);
  sub_2524B6D18();

  sub_252691F50();

  return sub_252372288(v31, &qword_27F4DF328);
}

int64x2_t sub_2524B6488@<Q0>(uint64_t a1@<X8>)
{
  sub_2526909F0();
  v3 = v2;
  v5 = v4;
  *a1 = swift_getKeyPath();
  *(a1 + 65) = 0;
  v6 = type metadata accessor for ControlBackgroundView();
  v7 = v6[5];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  *(a1 + v6[7]) = 2;
  v8 = v6[8];
  v9 = [objc_opt_self() systemGray4Color];
  *(a1 + v8) = sub_252692240();
  v10 = v5 * 0.5;
  if (v5 * 0.5 >= v3 * 0.5)
  {
    v10 = v3 * 0.5;
  }

  if (v10 > 100.0)
  {
    v10 = 100.0;
  }

  v11 = a1 + v6[6];
  *v11 = v10;
  *(v11 + 8) = 0;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4DF370) + 36));
  v13 = *(sub_252690D30() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_252691260();
  (*(*(v15 - 8) + 104))(&v12->i8[v13], v14, v15);
  result = vdupq_n_s64(0x4059000000000000uLL);
  *v12 = result;
  return result;
}

uint64_t sub_2524B6610(uint64_t a1)
{
  if (qword_27F4DA9B8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  return sub_252690A80();
}

uint64_t sub_2524B66F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_252692E30();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_2524B6974(0, 0, v2, &unk_2526A0F08, v4);

  sub_252372288(v2, &qword_27F4DB930);
  return sub_252691990();
}

uint64_t sub_2524B6828()
{
  sub_252692E00();
  *(v0 + 16) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2524B68BC, v2, v1);
}

uint64_t sub_2524B68BC()
{

  if (qword_27F4DAA90 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4DF318;
  [qword_27F4DF318 impactOccurred];
  [v1 prepare];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2524B6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2524B6F34(a3, v25 - v10);
  v12 = sub_252692E30();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_252372288(v11, &qword_27F4DB930);
  }

  else
  {
    sub_252692E20();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252692DE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252692C30() + 32;
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

uint64_t sub_2524B6C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524B6CB8()
{
  sub_2526919A0();

  return sub_2524B66F4();
}

unint64_t sub_2524B6D18()
{
  result = qword_27F4DF348;
  if (!qword_27F4DF348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF328);
    sub_2524B6DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF348);
  }

  return result;
}

unint64_t sub_2524B6DA4()
{
  result = qword_27F4DF350;
  if (!qword_27F4DF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF320);
    sub_252400FC8(&qword_27F4DF358, &qword_27F4DF360);
    sub_252400FC8(&qword_27F4DF368, &qword_27F4DF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF350);
  }

  return result;
}

uint64_t sub_2524B6E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2523E233C;

  return sub_2524B680C();
}

uint64_t sub_2524B6F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524B6FA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_252576DF8(a1, v4);
}

uint64_t sub_2524B705C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2523E233C;

  return sub_252576DF8(a1, v4);
}

uint64_t sub_2524B717C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2524B71C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2524B720C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2524B72B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF3F8);
  v32 = *(a1 + 16);
  sub_252693130();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFB0);
  sub_252690C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDF8);
  sub_252690C30();
  v31 = *(a1 + 24);
  v56 = v31;
  WitnessTable = swift_getWitnessTable();
  v55 = sub_2524B928C(&qword_27F4DBFA8, &qword_27F4DBFB0);
  v3 = MEMORY[0x277CDFAD8];
  v52 = swift_getWitnessTable();
  v53 = sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC110);
  sub_252690C30();
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  sub_252692630();
  sub_252690C30();
  sub_252690C30();
  sub_252690C30();
  v4 = swift_getWitnessTable();
  v5 = MEMORY[0x277CDF918];
  v50 = v4;
  v51 = MEMORY[0x277CDF918];
  v48 = swift_getWitnessTable();
  v49 = v5;
  v30 = v3;
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v6 = sub_252692590();
  v7 = swift_getWitnessTable();
  v8 = sub_2524B90A0();
  v28[1] = swift_getOpaqueTypeMetadata2();
  v42 = v6;
  v43 = &type metadata for StatusButtonStyle;
  v44 = v7;
  v45 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_252692650();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_252690C30();
  v29 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = sub_252690C30();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v28 - v21;
  v35 = v32;
  v36 = v31;
  v37 = v33;
  sub_252692920();
  sub_252692640();
  v23 = swift_getWitnessTable();
  sub_2526921F0();
  (*(v10 + 8))(v12, v9);
  sub_2526912E0();
  sub_2526911D0();
  v40 = v23;
  v41 = MEMORY[0x277CDFC48];
  v27 = swift_getWitnessTable();
  sub_252692140();
  (*(v29 + 8))(v15, v13);
  v38 = v27;
  v39 = MEMORY[0x277CDFC60];
  v24 = swift_getWitnessTable();
  sub_25268A710(v19, v16, v24);
  v25 = *(v17 + 8);
  v25(v19, v16);
  sub_25268A710(v22, v16, v24);
  return (v25)(v22, v16);
}

uint64_t sub_2524B79A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF3F8);
  sub_252693130();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFB0);
  sub_252690C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDF8);
  v6 = sub_252690C30();
  v56 = a3;
  WitnessTable = swift_getWitnessTable();
  v55 = sub_2524B928C(&qword_27F4DBFA8, &qword_27F4DBFB0);
  v52 = swift_getWitnessTable();
  v53 = sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
  v42 = v6;
  v43 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC110);
  sub_252690C30();
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  sub_252692630();
  sub_252690C30();
  sub_252690C30();
  sub_252690C30();
  v7 = swift_getWitnessTable();
  v8 = MEMORY[0x277CDF918];
  v50 = v7;
  v51 = MEMORY[0x277CDF918];
  v48 = swift_getWitnessTable();
  v49 = v8;
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x277CDFC60];
  v31 = swift_getWitnessTable();
  v9 = sub_252692590();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = swift_getWitnessTable();
  v30 = v12;
  v29 = sub_2524B90A0();
  v42 = v9;
  v43 = &type metadata for StatusButtonStyle;
  v44 = v12;
  v45 = v29;
  v32 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v58 = *a1;
  v57 = *(a1 + 3);
  v19 = swift_allocObject();
  v20 = v36;
  v21 = v35;
  *(v19 + 16) = v36;
  *(v19 + 24) = v21;
  v22 = *(a1 + 1);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v22;
  *(v19 + 64) = *(a1 + 2);
  *(v19 + 80) = a1[6];
  v38 = v20;
  v39 = v21;
  v40 = a1;
  sub_25247D6EC(&v58, &v42);

  sub_2524B9118(&v57, &v42);

  sub_252692550();
  v41 = 0;
  sub_2526924D0();
  v23 = v30;
  v24 = v29;
  sub_252691DC0();

  (*(v34 + 8))(v11, v9);
  v42 = v9;
  v43 = &type metadata for StatusButtonStyle;
  v44 = v23;
  v45 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25268A710(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v33 + 8);
  v26(v15, OpaqueTypeMetadata2);
  sub_25268A710(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_2524B7FEC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_25247D6EC(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  sub_2526926B0();
  sub_2524B93C0(&v11);
}

uint64_t sub_2524B80A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v37 = a2;
  v38 = a1;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF3F8);
  sub_252693130();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFB0);
  sub_252690C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDF8);
  v5 = sub_252690C30();
  v55 = a3;
  WitnessTable = swift_getWitnessTable();
  v54 = sub_2524B928C(&qword_27F4DBFA8, &qword_27F4DBFB0);
  v36 = MEMORY[0x277CDFAD8];
  v51 = swift_getWitnessTable();
  v52 = sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
  v49 = v5;
  v50 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC110);
  sub_252690C30();
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  v6 = sub_252692630();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = sub_252690C30();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = sub_252690C30();
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = sub_252690C30();
  v34 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v32 = &v30 - v19;
  v40 = v37;
  v41 = v35;
  v42 = v38;
  sub_2526912E0();
  sub_252692620();
  sub_252691A80();
  v20 = swift_getWitnessTable();
  sub_2526921A0();
  (*(v7 + 8))(v9, v6);
  sub_252691A10();
  v21 = MEMORY[0x277CDF918];
  v47 = v20;
  v48 = MEMORY[0x277CDF918];
  v22 = swift_getWitnessTable();
  sub_2526921A0();
  (*(v30 + 8))(v12, v10);
  v23 = [objc_opt_self() mainScreen];
  [v23 bounds];

  sub_252692920();
  v45 = v22;
  v46 = v21;
  v29 = swift_getWitnessTable();
  v24 = v31;
  sub_252692140();
  (*(v33 + 8))(v15, v13);
  v43 = v29;
  v44 = MEMORY[0x277CDFC60];
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_25268A710(v24, v16, v25);
  v27 = *(v34 + 8);
  v27(v24, v16);
  sub_25268A710(v26, v16, v25);
  return (v27)(v26, v16);
}

uint64_t sub_2524B87AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_252693130();
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = &v52 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFB0);
  v62 = v5;
  v7 = sub_252690C30();
  v71 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v67 = &v52 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDF8);
  v59 = v7;
  v9 = sub_252690C30();
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v52 - v10;
  v86 = a2;
  WitnessTable = swift_getWitnessTable();
  v56 = WitnessTable;
  v12 = sub_2524B928C(&qword_27F4DBFA8, &qword_27F4DBFB0);
  v84 = WitnessTable;
  v85 = v12;
  v69 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v55 = v13;
  v14 = sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
  v82 = v13;
  v83 = v14;
  v60 = swift_getWitnessTable();
  *&v87[0] = v9;
  *(&v87[0] + 1) = v60;
  v63 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v54 = &v52 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC110);
  v16 = sub_252690C30();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v61 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF3F8);
  v53 = v21;
  MEMORY[0x28223BE20](v21);
  v58 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v26 = a1;
  v28 = *(a1 + 24);
  v27 = *(a1 + 32);
  KeyPath = swift_getKeyPath();

  v30 = sub_252691BC0();
  v31 = swift_getKeyPath();
  LOBYTE(v76[0]) = 0;
  LOBYTE(v74) = 0;
  *&v77 = v28;
  *(&v77 + 1) = v27;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = MEMORY[0x277D84F90];
  *&v79 = KeyPath;
  *(&v79 + 1) = 1;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = v31;
  v81 = v30;
  sub_252691B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF408);
  sub_2524B9180();
  sub_252691DA0();
  v87[2] = v79;
  v87[3] = v80;
  v88 = v81;
  v87[0] = v77;
  v87[1] = v78;
  sub_2524B9224(v87);
  v32 = sub_252692330();
  v33 = swift_getKeyPath();
  v34 = &v25[*(v21 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = *(v26 + 40);
  v36 = v68;
  v35();
  v37 = v67;
  v38 = v62;
  sub_252692200();
  (*(v72 + 8))(v36, v38);
  sub_252691BC0();
  v39 = v66;
  v40 = v59;
  sub_252692100();

  (*(v71 + 8))(v37, v40);
  sub_252691B20();
  v41 = v54;
  v42 = v60;
  sub_252691DA0();
  (*(v70 + 8))(v39, v9);
  sub_252692330();
  sub_252692350();

  *&v77 = v9;
  *(&v77 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = OpaqueTypeMetadata2;
  sub_252691F10();

  (*(v64 + 8))(v41, v44);
  v45 = sub_2524B928C(&qword_27F4DC108, &qword_27F4DC110);
  v76[2] = OpaqueTypeConformance2;
  v76[3] = v45;
  v46 = swift_getWitnessTable();
  v47 = v61;
  sub_25268A710(v18, v16, v46);
  v48 = v65;
  v49 = *(v65 + 8);
  v49(v18, v16);
  v50 = v58;
  sub_252319B28(v25, v58);
  *&v77 = v50;
  (*(v48 + 16))(v18, v47, v16);
  *(&v77 + 1) = v18;
  v76[0] = v53;
  v76[1] = v16;
  v74 = sub_2524B92E0();
  v75 = v46;
  sub_2524CC4E8(&v77, 2uLL, v76);
  v49(v47, v16);
  sub_252319B98(v25);
  v49(v18, v16);
  return sub_252319B98(v50);
}

unint64_t sub_2524B90A0()
{
  result = qword_27F4DF400;
  if (!qword_27F4DF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF400);
  }

  return result;
}

unint64_t sub_2524B9180()
{
  result = qword_27F4DF410;
  if (!qword_27F4DF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF408);
    sub_2524226AC();
    sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF410);
  }

  return result;
}

uint64_t sub_2524B9224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2524B928C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2524B92E0()
{
  result = qword_27F4DF418;
  if (!qword_27F4DF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF408);
    sub_2524B9180();
    swift_getOpaqueTypeConformance2();
    sub_2524B928C(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF418);
  }

  return result;
}

uint64_t type metadata accessor for StatusDetailsButtonControlView()
{
  result = qword_27F4DF428;
  if (!qword_27F4DF428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2524B9488()
{
  sub_2524B9574();
  if (v0 <= 0x3F)
  {
    sub_2524B95D8(319, &qword_27F4DE678, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2524B95D8(319, &qword_27F4DE328, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2524B9574()
{
  if (!qword_27F4DF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB440);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DF438);
    }
  }
}

void sub_2524B95D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2524B9648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41[-v4];
  v5 = type metadata accessor for StatusDetailsButtonControlView();
  v6 = v5 - 8;
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = v7;
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v41[-v13];
  v15 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v1 + *(v6 + 36);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v51) = v20;
  v52 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_252692500();
  v48 = v56;
  v49 = v55;
  v42 = v57;
  v22 = *(v6 + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v50 = v2;
  v43 = v22;
  MEMORY[0x2530A4210]();
  v24 = *(v16 + 48);
  if (v24(v14, 1, v15) == 1)
  {
    sub_252372288(v14, &qword_27F4DB440);
    v25 = sub_252692C40();
    v27 = v26;
  }

  else
  {
    sub_2524BA65C(v14, v18, type metadata accessor for AccessoryControl.StatusButtonState);
    v25 = *v18;
    v27 = v18[1];

    sub_2524BA9F0(v18, type metadata accessor for AccessoryControl.StatusButtonState);
  }

  sub_2524BA454(v50, v8);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  v30 = v8;
  v31 = v29;
  sub_2524BA65C(v30, v29 + v28, type metadata accessor for StatusDetailsButtonControlView);
  v55 = v49;
  v56 = v48;
  v57 = v42;
  v58 = v25;
  v59 = v27;
  v60 = sub_2524BA4B8;
  v61 = v31;
  v45 = v31;
  MEMORY[0x2530A4210](v23);
  if (v24(v11, 1, v15))
  {
    sub_252372288(v11, &qword_27F4DB440);
    v32 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    v33 = v46;
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  }

  else
  {
    v33 = v46;
    sub_2524BA5EC(&v11[*(v15 + 24)], v46);
    sub_252372288(v11, &qword_27F4DB440);
    v34 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v34 - 8) + 48))(v33, 1, v34);
  }

  v35 = sub_252372288(v33, &qword_27F4DB458);
  MEMORY[0x28223BE20](v35);
  *&v41[-16] = v50;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF448);
  v37 = sub_2524BA530();
  v38 = type metadata accessor for StatusDetailsView(255);
  v39 = sub_2524BA594();
  v51 = v36;
  v52 = v38;
  v53 = v37;
  v54 = v39;
  swift_getOpaqueTypeConformance2();
  sub_252691D70();
}

uint64_t sub_2524B9C08@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  type metadata accessor for StatusDetailsButtonControlView();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  MEMORY[0x2530A4210](v5);
  v6 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    result = sub_252372288(v4, &qword_27F4DB440);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *(v4 + 2);
    v9 = *(v4 + 3);

    result = sub_252372288(v4, &qword_27F4DB440);
    if (v9)
    {
      v10 = MEMORY[0x277D84F90];
      goto LABEL_6;
    }

    v8 = 0;
  }

  v10 = 0;
LABEL_6:
  *a1 = v8;
  a1[1] = v9;
  a1[2] = 0;
  a1[3] = v10;
  return result;
}

uint64_t sub_2524B9D58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for StatusDetailsButtonControlView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = a1[6];
  v28 = *a1;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = *(a1 + 2);
  v33 = v15;
  v17 = a2 + *(v16 + 36);
  LOBYTE(v12) = *v17;
  v18 = *(v17 + 8);
  v26 = v12;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_252692500();
  v23[1] = v25;
  sub_2524BA454(a2, v11);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_2524BA65C(v11, v20 + v19, type metadata accessor for StatusDetailsButtonControlView);
  sub_2524BA454(a2, v8);
  v21 = swift_allocObject();
  sub_2524BA65C(v8, v21 + v19, type metadata accessor for StatusDetailsButtonControlView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF440);
  type metadata accessor for StatusDetailsView(0);
  sub_2524BA530();
  sub_2524BA594();
  sub_252692150();
}

uint64_t sub_2524B9FD8()
{
  type metadata accessor for StatusDetailsButtonControlView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  return sub_2526924F0();
}

uint64_t sub_2524BA048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for StatusDetailsButtonControlView();
  MEMORY[0x28223BE20](v5);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v11 = sub_2526905A0();
  __swift_project_value_buffer(v11, qword_27F4E4B18);
  sub_2524BA454(a1, v10);
  sub_2524BA454(a1, v7);
  v12 = sub_252690580();
  v13 = sub_252692F10();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v14 = 136315394;
    v42 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
    MEMORY[0x2530A4210](v15);
    v16 = sub_252692C20();
    v18 = v17;
    sub_2524BA9F0(v10, type metadata accessor for StatusDetailsButtonControlView);
    v19 = sub_2525BDA90(v16, v18, &v49);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = &v7[*(v5 + 24)];
    v22 = *(v20 + 1);
    v21 = *(v20 + 2);
    v23 = *(v20 + 3);
    v24 = *(v20 + 4);
    v44 = *v20;
    v45 = v22;
    v46 = v21;
    v47 = v23;
    v48 = v24;

    v25 = sub_252692C20();
    v27 = v26;
    sub_2524BA9F0(v7, type metadata accessor for StatusDetailsButtonControlView);
    v28 = sub_2525BDA90(v25, v27, &v49);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_252309000, v12, v42, "Status Details Button tapped %s config: %s", v14, 0x16u);
    v29 = v43;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v29, -1, -1);
    MEMORY[0x2530A5A40](v14, -1, -1);
  }

  else
  {

    sub_2524BA9F0(v7, type metadata accessor for StatusDetailsButtonControlView);
    sub_2524BA9F0(v10, type metadata accessor for StatusDetailsButtonControlView);
  }

  v30 = *a1;
  v31 = type metadata accessor for StatusDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  sub_2526926D0();
  v32 = a1 + *(v5 + 24);
  v33 = *v32;
  v34 = *(v32 + 1);
  v35 = *(v32 + 2);
  v36 = *(v32 + 3);
  v37 = *(v32 + 4);
  *a2 = v30;
  v38 = a2 + *(v31 + 24);
  *v38 = v33;
  *(v38 + 1) = v34;
  *(v38 + 2) = v35;
  *(v38 + 3) = v36;
  *(v38 + 4) = v37;
  v39 = *(v31 + 28);
  *(a2 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2524BA454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusDetailsButtonControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524BA4B8@<X0>(void *a1@<X8>)
{
  type metadata accessor for StatusDetailsButtonControlView();

  return sub_2524B9C08(a1);
}

unint64_t sub_2524BA530()
{
  result = qword_27F4DF450;
  if (!qword_27F4DF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF450);
  }

  return result;
}

unint64_t sub_2524BA594()
{
  result = qword_27F4DF458;
  if (!qword_27F4DF458)
  {
    type metadata accessor for StatusDetailsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF458);
  }

  return result;
}

uint64_t sub_2524BA5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524BA65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524BA6C4()
{
  type metadata accessor for StatusDetailsButtonControlView();

  return sub_2524B9FD8();
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for StatusDetailsButtonControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4 + *(v1 + 20);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420) + 32);
  v7 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = v6 + *(v7 + 24);
    v9 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v11 = sub_25268DA10();
          (*(*(v11 - 8) + 8))(v8, v11);
        }
      }
    }
  }

  sub_25235E264(*(v0 + v4 + *(v1 + 32)), *(v0 + v4 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_2524BA980@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for StatusDetailsButtonControlView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2524BA048(v4, a1);
}

uint64_t sub_2524BA9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2524BAA98()
{
  sub_2524B9574();
  if (v0 <= 0x3F)
  {
    sub_2524BAB34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524BAB34()
{
  if (!qword_27F4DEFD8)
  {
    sub_2526909E0();
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DEFD8);
    }
  }
}

uint64_t sub_2524BABA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10))));
      v16 = *(v15 + 8);
      v17 = *v15;
      v18 = v16;
      j__swift_bridgeObjectRetain();
      sub_2524BE9A0(&v17, a2, a3);
      result = j__swift_bridgeObjectRelease();
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_2524BACCC(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for StatusDetailsView(0);
  sub_25237153C(v1 + *(v9 + 20), v8, &qword_27F4DF420);
  MEMORY[0x2530A4210](v6);
  return sub_2524BAE0C;
}

void sub_2524BAE0C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB440);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4DF420);
    v5 = v4;
    v6 = &qword_27F4DB440;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4DF420;
    v5 = v2;
  }

  sub_252372288(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_2524BAEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_252691140();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF490);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF488);
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF478);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  MEMORY[0x28223BE20](v13);
  v30 = a1;
  v31 = &v30 - v15;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4B0);
  sub_252400FC8(&qword_27F4DF4B8, &qword_27F4DF4B0);
  sub_252691BF0();
  v16 = a1 + *(type metadata accessor for StatusDetailsView(0) + 24);
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  v40 = v18;
  v41 = v17;
  v19 = sub_252400FC8(&qword_27F4DF498, &qword_27F4DF490);
  v20 = sub_252404480();
  v21 = MEMORY[0x277D837D0];
  sub_252691F40();
  (*(v7 + 8))(v9, v6);
  v23 = v33;
  v22 = v34;
  (*(v33 + 104))(v5, *MEMORY[0x277CDDDC0], v34);
  v40 = v6;
  v41 = v21;
  v42 = v19;
  v43 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_2526920C0();
  (*(v23 + 8))(v5, v22);
  (*(v32 + 8))(v12, v10);
  v38 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF480);
  v40 = v10;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF4A0);
  v27 = sub_252400FC8(&qword_27F4DF4A8, &qword_27F4DF4A0);
  v40 = v26;
  v41 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_2526921B0();
  return (*(v36 + 8))(v25, v28);
}

uint64_t sub_2524BB3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4E0);
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for StatusDetailsView(0);
  v19 = *(a1 + *(v18 + 24) + 24);
  if (*(v19 + 16))
  {
    v40 = v8;
    v39 = &v37;
    v20 = *(v19 + 48);
    v21 = *(v19 + 80);
    v22 = *(v19 + 96);
    v47[2] = *(v19 + 64);
    v47[3] = v21;
    v47[4] = v22;
    v48 = v22;
    v47[0] = *(v19 + 32);
    v47[1] = v20;
    MEMORY[0x28223BE20](v18);
    *(&v37 - 2) = a1;
    *(&v37 - 1) = v47;
    v41 = a2;
    v38 = a1;
    if (*(&v48 + 1))
    {
      v45 = v48;
      sub_2523EAF48(v47, v46);
      sub_25237153C(&v48, v46, &qword_27F4DF520);
      sub_252404480();
      v23 = sub_252691D50();
      v27 = v26 & 1;
    }

    else
    {
      sub_2523EAF48(v47, v46);
      v23 = 0;
      v24 = 0;
      v27 = 0;
      v25 = 0;
    }

    v46[0] = v23;
    v46[1] = v24;
    v46[2] = v27;
    v46[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0B0);
    sub_252400FC8(&qword_27F4DF500, &qword_27F4DF4F8);
    sub_2524B48F8();
    sub_252692820();
    sub_2523EAFA4(v47);
    v29 = v40;
    (*(v9 + 32))(v17, v11, v40);
    v28 = (*(v9 + 56))(v17, 0, 1, v29);
    a2 = v41;
    a1 = v38;
  }

  else
  {
    v28 = (*(v9 + 56))(v17, 1, 1, v8);
  }

  MEMORY[0x28223BE20](v28);
  *(&v37 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF508);
  sub_252400FC8(&qword_27F4DF510, &qword_27F4DF508);
  v30 = v42;
  sub_252692810();
  sub_25231A4E4(v17, v14);
  v31 = *(v4 + 16);
  v32 = v44;
  v33 = v43;
  v31(v44, v30, v43);
  sub_25231A4E4(v14, a2);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF518);
  v31((a2 + *(v34 + 48)), v32, v33);
  v35 = *(v4 + 8);
  v35(v30, v33);
  sub_25231A554(v17);
  v35(v32, v33);
  return sub_25231A554(v14);
}

uint64_t sub_2524BB96C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 24))
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v8 = v2;
    v9 = v4;
    v10 = sub_2525F8068(sub_2524C0EC0, &v7, v5);

    sub_2524BF1C4(&v10);

    v3 = v10;
  }

  MEMORY[0x28223BE20](a1);
  v8 = v3;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF538);
  sub_2524C0C64();
  sub_252691C10();
}

uint64_t sub_2524BBAB4(uint64_t a1)
{
  v2 = type metadata accessor for StatusDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2524C0F0C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StatusDetailsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2524C0F74(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for StatusDetailsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF528);
  sub_252400FC8(&qword_27F4DF530, &qword_27F4DF528);
  return sub_252692550();
}

uint64_t sub_2524BBC48()
{
  v0 = sub_2524BACCC(v5);
  v2 = v1;
  v3 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    *(v2 + *(v3 + 32)) = 1;
  }

  return (v0)(v5, 0);
}

__n128 sub_2524BBCF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2526911D0();
  sub_2524BBD80(v5);
  *&v4[48] = *&v6[9];
  *&v4[39] = *v6;
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 17) = *v4;
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v4[48];
  return result;
}

uint64_t sub_2524BBD80@<X0>(uint64_t a1@<X8>)
{
  sub_252692C40();
  sub_252404480();
  v2 = sub_252691D50();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_25235EABC(v2, v3, v5 & 1);

  sub_2524228D8(v2, v4, v6);
}

uint64_t sub_2524BBE50(uint64_t a1)
{
  v2 = sub_252691550();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_252691540();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4C0);
  sub_2524BD4C4();
  sub_252690900();
  v7 = sub_252400FC8(&qword_27F4DF4A8, &qword_27F4DF4A0);
  MEMORY[0x2530A30F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2524BC008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StatusDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4D0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v20[0] = sub_252692C40();
  v20[1] = v10;
  sub_2524C0F0C(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StatusDetailsView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_2524C0F74(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for StatusDetailsView);
  sub_252404480();
  sub_252692580();
  v13 = sub_252691AD0();
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_2524BD5B8();
  sub_2526920F0();
  sub_252372288(v9, &qword_27F4DF4D0);
  v16 = sub_252692340();
  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4C0);
  v19 = (a2 + *(result + 36));
  *v19 = v17;
  v19[1] = v16;
  return result;
}

uint64_t sub_2524BC25C(uint64_t a1)
{
  v16 = sub_2526910F0();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2526909E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StatusDetailsView(0);
  sub_25237153C(a1 + *(v12 + 28), v7, &qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2526909D0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2524BC4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = type metadata accessor for StatusDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v22 = a1;
  swift_getKeyPath();
  sub_2524C0F0C(a2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StatusDetailsView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2524C0F74(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StatusDetailsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF570);
  sub_252400FC8(&qword_27F4DF578, &qword_27F4DF568);
  sub_2524C10BC(&qword_27F4DF580, type metadata accessor for StatusDetailsView.ListItem);
  v10 = type metadata accessor for StatusDetailsView.ListItemView(255);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF548);
  v12 = sub_2524C10BC(&qword_27F4DF550, type metadata accessor for StatusDetailsView.ListItemView);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF558);
  v14 = sub_2524C0DDC();
  v18 = v10;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_252692790();
}

uint64_t sub_2524BC7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusDetailsView.ListItemView(0);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524C0F0C(a1, v6, type metadata accessor for StatusDetailsView.ListItem);
  v7 = type metadata accessor for StatusDetailsView(0);
  v8 = sub_2525F8460(1, *(a2 + *(v7 + 24) + 32));
  if (v8)
  {
    v8 = type metadata accessor for StatusDetailsView.ListItem(0);
  }

  MEMORY[0x28223BE20](v8);
  v13[-2] = a2;
  v13[-1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF548);
  v9 = sub_2524C10BC(&qword_27F4DF550, type metadata accessor for StatusDetailsView.ListItemView);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF558);
  v11 = sub_2524C0DDC();
  v13[0] = v4;
  v13[1] = v10;
  v13[2] = v9;
  v13[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_252691D70();
  return sub_2524C0FDC(v6, type metadata accessor for StatusDetailsView.ListItemView);
}

uint64_t sub_2524BC9F4()
{
  type metadata accessor for StatusDetailsView.ListItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF558);
  sub_2524C10BC(&qword_27F4DF550, type metadata accessor for StatusDetailsView.ListItemView);
  sub_2524C0DDC();
  return sub_252691E80();
}

uint64_t sub_2524BCACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StatusDetailsView.ListItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StatusDetailsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2524C0F0C(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StatusDetailsView);
  sub_2524C0F0C(a2, v9, type metadata accessor for StatusDetailsView.ListItem);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_2524C0F74(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for StatusDetailsView);
  sub_2524C0F74(v9, v15 + v14, type metadata accessor for StatusDetailsView.ListItem);
  sub_252692550();
  v16 = sub_252692340();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF558);
  v19 = (a3 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_2524BCD30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30[-v6];
  type metadata accessor for StatusDetailsView(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  MEMORY[0x2530A4210](v8);
  v9 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v4, 1, v9))
  {
    sub_252372288(v4, &qword_27F4DB440);
    v11 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    return sub_252372288(v7, &qword_27F4DB458);
  }

  sub_25237153C(&v4[*(v9 + 24)], v7, &qword_27F4DB458);
  sub_252372288(v4, &qword_27F4DB440);
  v12 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    return sub_252372288(v7, &qword_27F4DB458);
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_2524C0FDC(v7, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  }

  v15 = *v7;
  v31 = v7[8];
  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  v33 = v15;
  v34 = v16;
  v37 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE40);
  v18 = *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v32 = xmmword_252694E90;
  *(v20 + 16) = xmmword_252694E90;
  sub_2524C0F0C(a1, v20 + v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v21 = sub_25240CA44(v20);
  swift_setDeallocating();
  sub_2524C0FDC(v20 + v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  swift_deallocClassInstance();
  v36 = v21;
  if (!v17)
  {
    goto LABEL_11;
  }

  if (!*(v17 + 16))
  {

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF588);
    inited = swift_initStackObject();
    *(inited + 16) = v32;
    *(inited + 32) = v21;
    *(inited + 40) = 1;

    v23 = sub_25240D0F4(inited);
    swift_setDeallocating();
    sub_2524C13C4(inited + 32);
    v37 = v23;
    goto LABEL_12;
  }

  sub_2524BABA8(v17, &v36, &v37);

LABEL_12:
  v24 = sub_2524BACCC(v35);
  v26 = v25;
  if (v10(v25, 1, v9))
  {
  }

  else
  {
    v27 = &v26[*(v9 + 24)];
    sub_252372288(v27, &qword_27F4DB458);
    v28 = v37;
    *v27 = v33;
    *(v27 + 8) = v31;
    v29 = v34;
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;
    swift_storeEnumTagMultiPayload();
    (*(v13 + 56))(v27, 0, 1, v12);
  }

  v24(v35, 0);
}

uint64_t sub_2524BD24C@<X0>(uint64_t a1@<X8>)
{
  result = sub_252692C40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2524BD29C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF470);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF490);
  sub_252400FC8(&qword_27F4DF498, &qword_27F4DF490);
  sub_252404480();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF4A0);
  sub_252400FC8(&qword_27F4DF4A8, &qword_27F4DF4A0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_252690C40();
}

unint64_t sub_2524BD4C4()
{
  result = qword_27F4DF4C8;
  if (!qword_27F4DF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF4D0);
    sub_2524BD5B8();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF4C8);
  }

  return result;
}

unint64_t sub_2524BD5B8()
{
  result = qword_27F4DF4D8;
  if (!qword_27F4DF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF4D0);
    sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438);
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF4D8);
  }

  return result;
}

uint64_t sub_2524BD6B4()
{
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
  v1 = type metadata accessor for StatusDetailsView.ListItem(0);
  sub_252692C80();
  v2 = v0 + *(v1 + 24);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*(v2 + 9) == 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | *(v2 + 8))
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = (v3 | *(v2 + 8)) != 0;
    }

    return MEMORY[0x2530A4FE0](v5);
  }

  else
  {
    MEMORY[0x2530A4FE0](2);
    if (v4)
    {
      return sub_252693480();
    }

    else
    {
      sub_252693480();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      return MEMORY[0x2530A5020](v7);
    }
  }
}

uint64_t sub_2524BD7B0()
{
  sub_252693460();
  sub_2524BD6B4();
  return sub_2526934C0();
}

uint64_t sub_2524BD7F4()
{
  sub_252693460();
  sub_2524BD6B4();
  return sub_2526934C0();
}

uint64_t sub_2524BD830(uint64_t a1, unint64_t a2, __int16 a3)
{
  v3 = a3;
  if ((a3 & 0x100) != 0)
  {
    if (a2 > 1)
    {
      if (a2 ^ 2 | a3)
      {
        v6 = 4;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = (a2 | a3) != 0;
    }

    return MEMORY[0x2530A4FE0](v6);
  }

  else
  {
    MEMORY[0x2530A4FE0](2);
    if (v3)
    {
      return sub_252693480();
    }

    else
    {
      sub_252693480();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = 0;
      }

      return MEMORY[0x2530A5020](v7);
    }
  }
}

uint64_t sub_2524BD914()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_252693460();
  sub_2524BD830(v5, v1, v2 | (v3 << 8));
  return sub_2526934C0();
}

uint64_t sub_2524BD98C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_252693460();
  sub_2524BD830(v5, v1, v2 | (v3 << 8));
  return sub_2526934C0();
}

uint64_t sub_2524BD9E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StatusDetailsView.ListItem(0);
  sub_252404480();

  result = sub_252691D50();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_2524BDA64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for StatusDetailsView.ListItem(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  v7 = sub_2526912E0();
  v23 = 1;
  sub_2524BDBF4(v4, v5 | (v6 << 8), &v14);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[0] = v14;
  v32[1] = v15;
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[5] = v19;
  v32[6] = v20;
  v33 = v21;
  sub_25237153C(&v24, &v13, &qword_27F4DF5F8);
  sub_252372288(v32, &qword_27F4DF5F8);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  *(&v22[2] + 7) = v26;
  *(&v22[3] + 7) = v27;
  v8 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v8;
  *(a2 + 113) = v22[6];
  *(a2 + 122) = *(&v22[6] + 9);
  v9 = v22[1];
  *(a2 + 17) = v22[0];
  *(a2 + 33) = v9;
  result = *&v22[2];
  v11 = v22[3];
  *(a2 + 49) = v22[2];
  v12 = v23;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 65) = v11;
  return result;
}

double sub_2524BDBF4@<D0>(double a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2526923E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) != 0)
  {
    if (*&a1 > 1uLL)
    {
      LOBYTE(v37) = 1;
      HIBYTE(v53) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF600);
      sub_2524C16D8();
      sub_252691470();
      goto LABEL_7;
    }

    v14 = v8;
    v23[1] = sub_2526923D0();
    v15 = [objc_opt_self() tertiaryLabelColor];
    v16 = sub_252692240();
    (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v14);
    v17 = sub_252692420();
    (*(v7 + 8))(v10, v14);
    sub_252692920();
    sub_2526909C0();
    LOBYTE(v57) = 1;
    *&v32[6] = v54;
    *&v32[22] = v55;
    *&v32[38] = v56;
    KeyPath = swift_getKeyPath();
    v33 = v17;
    LOWORD(v34[0]) = 1;
    *(&v34[2] + 2) = *&v32[32];
    *(&v34[1] + 2) = *&v32[16];
    *(v34 + 2) = *v32;
    *&v34[3] = *&v32[46];
    *(&v34[3] + 1) = KeyPath;
    v35 = v16;
    v59 = v34[1];
    v60 = v34[2];
    v61 = v34[3];
    *&v62 = v16;
    v57 = v17;
    v58 = v34[0];
    v36 = 1;
    LOBYTE(v64) = 1;
    sub_25237153C(&v33, &v46, &qword_27F4DF630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF618);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF630);
    sub_2524C18C8(&qword_27F4DF610, &qword_27F4DF618, &unk_2526A1558, sub_2524C1790);
    sub_2524C17E4();
    sub_252691470();
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v61 = v28;
    v62 = v29;
    v63 = v30;
    v57 = v24;
    v58 = v25;
    v44 = v31;
    v64 = v31;
    v59 = v26;
    v60 = v27;
    v45 = 0;
    sub_25237153C(&v37, &v46, &qword_27F4DF600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF600);
    sub_2524C16D8();
    sub_252691470();

    sub_252372288(&v37, &qword_27F4DF600);
    sub_252372288(&v33, &qword_27F4DF630);
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v64 = v53;
    v57 = v46;
    v58 = v47;
    v12 = v48;
    v13 = v49;
  }

  else
  {
    v11 = sub_252692340();

    sub_2524C194C(a1, a2 & 1, a2 & 1, v11, &v57);
    sub_252692920();
    sub_2526909C0();

    v28 = v61;
    v29 = v62;
    v30 = v63;
    v24 = v57;
    v25 = v58;
    v26 = v59;
    v27 = v60;
    LOBYTE(v54) = 0;
    LOBYTE(v64) = 0;
    sub_25237153C(&v24, &v46, &qword_27F4DF618);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF618);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF630);
    sub_2524C18C8(&qword_27F4DF610, &qword_27F4DF618, &unk_2526A1558, sub_2524C1790);
    sub_2524C17E4();
    sub_252691470();
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v64 = v44;
    v57 = v37;
    v58 = v38;
    v59 = v39;
    v60 = v40;
    LOBYTE(v33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF600);
    sub_2524C16D8();
    sub_252691470();
    sub_252372288(&v24, &qword_27F4DF618);
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v64 = v53;
    v57 = v46;
    v58 = v47;
    v12 = v48;
    v13 = v49;
  }

  v59 = v12;
  v60 = v13;
LABEL_7:
  v19 = v62;
  *(a3 + 64) = v61;
  *(a3 + 80) = v19;
  *(a3 + 96) = v63;
  *(a3 + 112) = v64;
  v20 = v58;
  *a3 = v57;
  *(a3 + 16) = v20;
  result = *&v59;
  v22 = v60;
  *(a3 + 32) = v59;
  *(a3 + 48) = v22;
  return result;
}

uint64_t sub_2524BE210@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF5D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF5D8);
  v10 = v1;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF5E0);
  sub_252400FC8(&qword_27F4DF5E8, &qword_27F4DF5E0);
  sub_252692450();
  sub_252400FC8(&qword_27F4DF5F0, &qword_27F4DF5D0);
  sub_2524B5DC4();
  sub_252691DB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2524BE410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v44 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  MEMORY[0x28223BE20](v44);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  type metadata accessor for StatusDetailsView(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v43 = v2;
  MEMORY[0x2530A4210]();
  v18 = *(v6 + 48);
  if (v18(v13, 1, v5))
  {
    sub_252372288(v13, &qword_27F4DB440);
    v19 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
LABEL_4:
    sub_252372288(v16, &qword_27F4DB458);
    goto LABEL_5;
  }

  sub_25237153C(&v13[*(v5 + 24)], v16, &qword_27F4DB458);
  sub_252372288(v13, &qword_27F4DB440);
  v20 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2524C0FDC(v16, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    goto LABEL_5;
  }

  v38 = *(v16 + 3);

  if (!v38)
  {
LABEL_5:
    v42 = 0;
    v21 = 1;
    goto LABEL_6;
  }

  if (!*(v38 + 16) || (v39 = sub_2523674BC(v46), (v40 & 1) == 0))
  {

    goto LABEL_5;
  }

  v42 = *(*(v38 + 56) + 8 * v39);

  v21 = 0;
LABEL_6:
  MEMORY[0x2530A4210](v17);
  if (v18(v10, 1, v5) == 1)
  {
    sub_252372288(v10, &qword_27F4DB440);
    v22 = v45;
LABEL_15:
    v25 = v44;
    v26 = v46;
    goto LABEL_16;
  }

  v23 = v41;
  sub_2524C0F74(v10, v41, type metadata accessor for AccessoryControl.StatusButtonState);
  v24 = *(v23 + *(v5 + 28));
  sub_2524C0FDC(v23, type metadata accessor for AccessoryControl.StatusButtonState);
  v22 = v45;
  if (v24 != 1)
  {
    goto LABEL_15;
  }

  v25 = v44;
  v26 = v46;
  if (*(v46 + *(v44 + 24)) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v21;
  }

  v28 = v42;
  if ((v21 & (*(v46 + *(v44 + 24)) == 1)) != 0)
  {
    v28 = 0x3FD6666666666666;
  }

  v42 = v28;
  v21 = v27;
LABEL_16:
  sub_2524C0F0C(v26, v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  sub_2524C0F0C(v4, v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v29 = &v4[*(v25 + 20)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v32 = type metadata accessor for StatusDetailsView.ListItem(0);
  v33 = (v22 + *(v32 + 20));
  *v33 = v31;
  v33[1] = v30;
  v34 = v4[*(v25 + 24)];

  result = sub_2524C0FDC(v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  if (v34 <= 1)
  {
    if (v34)
    {
      v36 = 0;
      v34 = v42;
    }

    else
    {
      v36 = 1;
      v21 = 0;
    }
  }

  else if (v34 == 2)
  {
    v21 = 0;
    v36 = 1;
    v34 = 2;
  }

  else
  {
    v21 = 0;
    if (v34 == 3)
    {
      v34 = 1;
      v36 = 1;
    }

    else
    {
      v36 = 1;
      v34 = 3;
    }
  }

  v37 = v22 + *(v32 + 24);
  *v37 = v34;
  *(v37 + 8) = v21;
  *(v37 + 9) = v36;
  return result;
}

uint64_t sub_2524BE9A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(a1 + 8) == 1)
  {

    sub_2525C8B38(v6);
    v7 = *a2;
    v8 = *a3;
    sub_252693460();
    MEMORY[0x2530A4FE0](1);

    sub_2523D782C(v19, v7);
    v9 = sub_2526934C0();
    v10 = -1 << *(v8 + 32);
    v11 = v9 & ~v10;
    if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      do
      {
        v13 = *(v8 + 48) + 16 * v11;
        v14 = *v13;
        if (*(v13 + 8) == 1)
        {
          j__swift_bridgeObjectRetain();

          j__swift_bridgeObjectRetain();
          v15 = sub_25243965C(v14, v7);
          j__swift_bridgeObjectRelease();
          j__swift_bridgeObjectRelease();
          j__swift_bridgeObjectRelease();
          if (v15)
          {
          }
        }

        else
        {

          j__swift_bridgeObjectRetain();
          j__swift_bridgeObjectRelease();
          j__swift_bridgeObjectRelease();
        }

        v11 = (v11 + 1) & v12;
      }

      while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *a3;
    *a3 = 0x8000000000000000;

    sub_252415F58(v18, 1, v11, isUniquelyReferenced_nonNull_native);
    *a3 = *&v19[0];
  }

  else
  {

    sub_252413548(v19, v4, 0);
    return j__swift_bridgeObjectRelease();
  }
}

uint64_t sub_2524BEBAC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_2526915F0();
  sub_2526908F0();
  v4 = v59;
  v5 = v60;
  v39 = v60;
  v34 = v61;
  v6 = v62;
  v7 = v63;
  v38 = v63;
  v8 = v64;
  v9 = sub_252692920();
  v35 = v10;
  v36 = v9;
  v79[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
  sub_2526924E0();
  v11 = *&v71[0];
  v79[0] = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF650);
  sub_2526924E0();
  v33 = *&v71[0];
  sub_2526908F0();
  v32 = sub_252692920();
  v13 = v12;
  v65 = a1[2];
  sub_2526924E0();
  v14 = *v71 * 0.0174532925;
  sub_252692A40();
  v16 = v15;
  v18 = v17;
  sub_252692970();
  v19 = sub_252692940();

  v79[0] = v65;
  sub_2526924E0();
  v20 = *&v71[0];
  v21 = swift_allocObject();
  v22 = a1[1];
  v21[1] = *a1;
  v21[2] = v22;
  v23 = a1[3];
  v21[3] = a1[2];
  v21[4] = v23;
  *&v66 = v4;
  *(&v66 + 1) = __PAIR64__(v34, v5);
  *&v67 = v6;
  *(&v67 + 1) = v7;
  *&v68 = v8;
  *(&v68 + 1) = v37 | 0x3F00000000000000;
  LOWORD(v69) = 256;
  *(&v69 + 1) = v36;
  v70 = v35;
  *v55 = v35;
  v53 = v68;
  v54 = v69;
  v51 = v66;
  v52 = v67;
  *&v71[0] = 0;
  *(&v71[0] + 1) = v11;
  v71[1] = v56;
  v71[2] = v57;
  *&v72 = v58;
  *(&v72 + 1) = v33;
  LOWORD(v73) = 256;
  *(&v73 + 1) = v32;
  *&v74 = v13;
  *(&v74 + 1) = v14;
  *&v75 = v16;
  *(&v75 + 1) = v18;
  *&v76 = v19;
  *(&v76 + 1) = v20;
  *&v77 = sub_2524C1BE8;
  *(&v77 + 1) = v21;
  v78 = 0uLL;
  *&v55[24] = v56;
  *&v55[8] = v71[0];
  *&v55[88] = v74;
  *&v55[72] = v73;
  *&v55[56] = v72;
  *&v55[40] = v57;
  *&v55[152] = 0uLL;
  *&v55[136] = v77;
  *&v55[120] = v76;
  *&v55[104] = v75;
  v24 = *&v55[144];
  *(a2 + 192) = *&v55[128];
  *(a2 + 208) = v24;
  *(a2 + 224) = *&v55[160];
  v25 = *&v55[80];
  *(a2 + 128) = *&v55[64];
  *(a2 + 144) = v25;
  v26 = *&v55[112];
  *(a2 + 160) = *&v55[96];
  *(a2 + 176) = v26;
  v27 = *&v55[16];
  *(a2 + 64) = *v55;
  *(a2 + 80) = v27;
  v28 = *&v55[48];
  *(a2 + 96) = *&v55[32];
  *(a2 + 112) = v28;
  v29 = v52;
  *a2 = v51;
  *(a2 + 16) = v29;
  v30 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v30;
  *&v79[0] = 0;
  *(&v79[0] + 1) = v11;
  v79[1] = v56;
  v79[2] = v57;
  v80 = v58;
  v81 = v33;
  v82 = 256;
  v83 = v32;
  v84 = v13;
  v85 = v14;
  v86 = v16;
  v87 = v18;
  v88 = v19;
  v89 = v20;
  v90 = sub_2524C1BE8;
  v91 = v21;
  v93 = 0;
  v92 = 0;
  sub_2524C1ABC(a1, &v40);
  sub_25237153C(&v66, &v40, &qword_27F4DF658);
  sub_25237153C(v71, &v40, &qword_27F4DF660);
  sub_252372288(v79, &qword_27F4DF660);
  v40 = v4;
  v41 = v39;
  v42 = v34;
  v43 = v6;
  v44 = v38;
  v45 = v8;
  v46 = v37;
  v47 = 1056964608;
  v48 = 256;
  v49 = v36;
  v50 = v35;
  return sub_252372288(&v40, &qword_27F4DF658);
}

uint64_t sub_2524BEFD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  result = sub_2526924E0();
  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
    return sub_2526924F0();
  }

  return result;
}

__n128 sub_2524BF064@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v31[0] = *v1;
  v31[1] = v3;
  v4 = v1[3];
  v31[2] = v1[2];
  v31[3] = v4;
  v5 = sub_252692920();
  v7 = v6;
  sub_2524BEBAC(v31, &v16);
  v44 = v28;
  v45 = v29;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v47[12] = v28;
  v47[13] = v29;
  v47[8] = v24;
  v47[9] = v25;
  v47[10] = v26;
  v47[11] = v27;
  v47[4] = v20;
  v47[5] = v21;
  v47[6] = v22;
  v47[7] = v23;
  v47[0] = v16;
  v47[1] = v17;
  v46 = v30;
  v48 = v30;
  v47[2] = v18;
  v47[3] = v19;
  sub_25237153C(&v32, &v15, &qword_27F4DF648);
  sub_252372288(v47, &qword_27F4DF648);
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = v45;
  *(a1 + 208) = v44;
  *(a1 + 224) = v8;
  *(a1 + 240) = v46;
  v9 = v41;
  *(a1 + 144) = v40;
  *(a1 + 160) = v9;
  v10 = v43;
  *(a1 + 176) = v42;
  *(a1 + 192) = v10;
  v11 = v37;
  *(a1 + 80) = v36;
  *(a1 + 96) = v11;
  v12 = v39;
  *(a1 + 112) = v38;
  *(a1 + 128) = v12;
  v13 = v33;
  *(a1 + 16) = v32;
  *(a1 + 32) = v13;
  result = v35;
  *(a1 + 48) = v34;
  *(a1 + 64) = result;
  return result;
}

void sub_2524BF1C4(void **a1)
{
  v2 = *(type metadata accessor for StatusDetailsView.ListItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2526242F8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2524BF26C(v5);
  *a1 = v3;
}

void sub_2524BF26C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252693360();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for StatusDetailsView.ListItem(0);
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StatusDetailsView.ListItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2524BF6A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2524BF398(0, v2, 1, a1);
  }
}

void sub_2524BF398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StatusDetailsView.ListItem(0);
  MEMORY[0x28223BE20](v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v42 = v17;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v19;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    while (1)
    {
      sub_2524C0F0C(v22, v16, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0F0C(v19, v12, type metadata accessor for StatusDetailsView.ListItem);
      v23 = *(v8 + 24);
      if (v16[v23 + 9] == 1)
      {
        v24 = qword_2526A1650[*&v16[v23]];
      }

      else
      {
        v24 = 1;
      }

      v25 = &v12[v23];
      if (v25[9] == 1)
      {
        v26 = qword_2526A1650[*v25];
        v27 = v24 >= v26;
        if (v24 != v26)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v27 = v24 != 0;
        if (v24 != 1)
        {
LABEL_12:
          v28 = !v27;
          goto LABEL_21;
        }
      }

      v29 = *(v8 + 20);
      v30 = *&v16[v29];
      v31 = *&v16[v29 + 8];
      v32 = &v12[v29];
      if (v30 == *v32 && v31 == *(v32 + 1))
      {
        sub_2524C0FDC(v12, type metadata accessor for StatusDetailsView.ListItem);
        sub_2524C0FDC(v16, type metadata accessor for StatusDetailsView.ListItem);
LABEL_5:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_6;
      }

      v28 = sub_2526933B0();
LABEL_21:
      sub_2524C0FDC(v12, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0FDC(v16, type metadata accessor for StatusDetailsView.ListItem);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        __break(1u);
        return;
      }

      v34 = v43;
      sub_2524C0F74(v22, v43, type metadata accessor for StatusDetailsView.ListItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_2524C0F74(v34, v19, type metadata accessor for StatusDetailsView.ListItem);
      v19 += v20;
      v22 += v20;
      v27 = __CFADD__(v21++, 1);
      if (v27)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_2524BF6A0(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = type metadata accessor for StatusDetailsView.ListItem(0);
  v153 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v150 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v160 = &v141 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v141 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v141 - v16;
  MEMORY[0x28223BE20](v18);
  v158 = &v141 - v19;
  MEMORY[0x28223BE20](v20);
  v157 = &v141 - v21;
  MEMORY[0x28223BE20](v22);
  v147 = &v141 - v23;
  MEMORY[0x28223BE20](v24);
  v146 = &v141 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_139:
    v30 = *v145;
    if (!*v145)
    {
      goto LABEL_177;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_141:
      v162 = v28;
      v134 = *(v28 + 16);
      if (v134 >= 2)
      {
        do
        {
          v135 = *a3;
          if (!*a3)
          {
            goto LABEL_175;
          }

          v136 = a3;
          a3 = v134 - 1;
          v137 = v28;
          v28 = *(v28 + 16 * v134);
          v138 = v137;
          v139 = *&v137[16 * v134 + 24];
          sub_2524C02AC(v135 + *(v153 + 72) * v28, v135 + *(v153 + 72) * *&v137[16 * v134 + 16], v135 + *(v153 + 72) * v139, v30);
          if (v5)
          {
            break;
          }

          if (v139 < v28)
          {
            goto LABEL_164;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_252624154(v138);
          }

          if (v134 - 2 >= *(v138 + 2))
          {
            goto LABEL_165;
          }

          v140 = &v138[16 * v134];
          *v140 = v28;
          v140[1] = v139;
          v162 = v138;
          sub_2526240C8(v134 - 1);
          v28 = v162;
          v134 = *(v162 + 16);
          a3 = v136;
        }

        while (v134 > 1);
      }

LABEL_149:

      return;
    }

LABEL_171:
    v28 = sub_252624154(v28);
    goto LABEL_141;
  }

  v141 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v155 = a3;
  v161 = v8;
  while (2)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_55;
    }

    v151 = v26;
    v142 = v28;
    v31 = *a3;
    v32 = *(v153 + 72);
    v154 = v27 + 1;
    v33 = v31 + v32 * v30;
    v34 = v146;
    sub_2524C0F0C(v33, v146, type metadata accessor for StatusDetailsView.ListItem);
    v156 = v32;
    sub_2524C0F0C(v31 + v32 * v29, v147, type metadata accessor for StatusDetailsView.ListItem);
    v35 = *(v8 + 24);
    if (*(v34 + v35 + 9) == 1)
    {
      v36 = qword_2526A1650[*(v34 + v35)];
    }

    else
    {
      v36 = 1;
    }

    v37 = v147 + v35;
    v30 = v154;
    if (*(v37 + 9) == 1)
    {
      v38 = qword_2526A1650[*v37];
    }

    else
    {
      v38 = 1;
    }

    v143 = v5;
    if (v36 == v38)
    {
      v39 = *(v8 + 20);
      v40 = *(v146 + v39);
      v41 = *(v146 + v39 + 8);
      v42 = (v147 + v39);
      if (v40 == *v42 && v41 == v42[1])
      {
        LODWORD(v152) = 0;
      }

      else
      {
        LODWORD(v152) = sub_2526933B0();
      }
    }

    else
    {
      LODWORD(v152) = v36 < v38;
    }

    sub_2524C0FDC(v147, type metadata accessor for StatusDetailsView.ListItem);
    sub_2524C0FDC(v146, type metadata accessor for StatusDetailsView.ListItem);
    v144 = v29;
    v44 = v29 + 2;
    v45 = v156 * (v29 + 2);
    v46 = v31 + v45;
    v47 = v156 * v30;
    v48 = v31 + v156 * v30;
    do
    {
      v50 = v44;
      v28 = v30;
      v51 = v47;
      v5 = v45;
      v159 = v44;
      if (v44 >= v151)
      {
        break;
      }

      v52 = v157;
      sub_2524C0F0C(v46, v157, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0F0C(v48, v158, type metadata accessor for StatusDetailsView.ListItem);
      v53 = *(v161 + 24);
      if (*(v52 + v53 + 9) == 1)
      {
        v54 = qword_2526A1650[*(v52 + v53)];
      }

      else
      {
        v54 = 1;
      }

      v55 = v158 + v53;
      if (*(v55 + 9) == 1)
      {
        v56 = qword_2526A1650[*v55];
        v57 = v54 >= v56;
        if (v54 == v56)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v57 = v54 != 0;
        if (v54 == 1)
        {
LABEL_32:
          v58 = *(v161 + 20);
          v59 = *(v157 + v58);
          v60 = *(v157 + v58 + 8);
          v61 = (v158 + v58);
          if (v59 == *v61 && v60 == v61[1])
          {
            v49 = 0;
          }

          else
          {
            v49 = sub_2526933B0();
          }

          goto LABEL_23;
        }
      }

      v49 = !v57;
LABEL_23:
      sub_2524C0FDC(v158, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0FDC(v157, type metadata accessor for StatusDetailsView.ListItem);
      v50 = v159;
      v44 = v159 + 1;
      v46 += v156;
      v48 += v156;
      v30 = v28 + 1;
      v47 = v51 + v156;
      v45 = v5 + v156;
    }

    while (((v152 ^ v49) & 1) == 0);
    if ((v152 & 1) == 0)
    {
      v30 = v50;
      v28 = v142;
      v5 = v143;
      a3 = v155;
      v8 = v161;
      goto LABEL_54;
    }

    a3 = v144;
    if (v50 < v144)
    {
      goto LABEL_168;
    }

    if (v144 >= v50)
    {
      v30 = v50;
      v28 = v142;
      v5 = v143;
      v8 = v161;
      v29 = v144;
      a3 = v155;
    }

    else
    {
      v63 = v144 * v156;
      v8 = v161;
      do
      {
        if (a3 != v28)
        {
          v65 = *v155;
          if (!*v155)
          {
            goto LABEL_174;
          }

          sub_2524C0F74(v65 + v63, v150, type metadata accessor for StatusDetailsView.ListItem);
          if (v63 < v51 || v65 + v63 >= (v65 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_2524C0F74(v150, v65 + v51, type metadata accessor for StatusDetailsView.ListItem);
          v8 = v161;
        }

        ++a3;
        v51 -= v156;
        v5 -= v156;
        v63 += v156;
      }

      while (a3 < v28--);
      v30 = v159;
      v28 = v142;
      v5 = v143;
      a3 = v155;
LABEL_54:
      v29 = v144;
    }

LABEL_55:
    v66 = *(a3 + 8);
    if (v30 >= v66)
    {
      goto LABEL_88;
    }

    if (__OFSUB__(v30, v29))
    {
      goto LABEL_167;
    }

    if (v30 - v29 >= v141)
    {
      goto LABEL_88;
    }

    v67 = v29 + v141;
    if (__OFADD__(v29, v141))
    {
      goto LABEL_169;
    }

    if (v67 >= v66)
    {
      v67 = *(a3 + 8);
    }

    if (v67 < v29)
    {
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (v30 == v67)
    {
LABEL_88:
      if (v30 < v29)
      {
        goto LABEL_166;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_252368690(0, *(v28 + 16) + 1, 1, v28);
      }

      v90 = *(v28 + 16);
      v89 = *(v28 + 24);
      a3 = v90 + 1;
      if (v90 >= v89 >> 1)
      {
        v28 = sub_252368690((v89 > 1), v90 + 1, 1, v28);
      }

      *(v28 + 16) = a3;
      v91 = v28 + 16 * v90;
      *(v91 + 32) = v29;
      *(v91 + 40) = v30;
      v154 = v30;
      v30 = *v145;
      if (!*v145)
      {
        goto LABEL_176;
      }

      if (!v90)
      {
LABEL_3:
        v27 = v154;
        a3 = v155;
        v26 = v155[1];
        v8 = v161;
        if (v154 >= v26)
        {
          goto LABEL_139;
        }

        continue;
      }

      while (1)
      {
        v92 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v93 = *(v28 + 32);
          v94 = *(v28 + 40);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_108:
          if (v96)
          {
            goto LABEL_155;
          }

          v109 = (v28 + 16 * a3);
          v111 = *v109;
          v110 = v109[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_158;
          }

          v115 = (v28 + 32 + 16 * v92);
          v117 = *v115;
          v116 = v115[1];
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_162;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v92 = a3 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v119 = (v28 + 16 * a3);
        v121 = *v119;
        v120 = v119[1];
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_122:
        if (v114)
        {
          goto LABEL_157;
        }

        v122 = v28 + 16 * v92;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_160;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_129:
        v130 = v92 - 1;
        if (v92 - 1 >= a3)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*v155)
        {
          goto LABEL_173;
        }

        v131 = v28;
        v132 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v130);
        a3 = *(v132 + 16 * v92 + 8);
        sub_2524C02AC(*v155 + *(v153 + 72) * v28, *v155 + *(v153 + 72) * *(v132 + 16 * v92), *v155 + *(v153 + 72) * a3, v30);
        if (v5)
        {
          goto LABEL_149;
        }

        if (a3 < v28)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_252624154(v131);
        }

        if (v130 >= *(v131 + 2))
        {
          goto LABEL_152;
        }

        v133 = &v131[16 * v130];
        *(v133 + 4) = v28;
        *(v133 + 5) = a3;
        v162 = v131;
        sub_2526240C8(v92);
        v28 = v162;
        a3 = *(v162 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = v28 + 32 + 16 * a3;
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_153;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_154;
      }

      v104 = (v28 + 16 * a3);
      v106 = *v104;
      v105 = v104[1];
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_156;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_159;
      }

      if (v108 >= v100)
      {
        v126 = (v28 + 32 + 16 * v92);
        v128 = *v126;
        v127 = v126[1];
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_163;
        }

        if (v95 < v129)
        {
          v92 = a3 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

    break;
  }

  v142 = v28;
  v143 = v5;
  v68 = *a3;
  v69 = *(v153 + 72);
  a3 = *a3 + v69 * (v30 - 1);
  v70 = v29;
  v71 = -v69;
  v144 = v70;
  v72 = v70 - v30;
  v159 = v68;
  v148 = v69;
  v149 = v67;
  v73 = v68 + v30 * v69;
LABEL_66:
  v154 = v30;
  v151 = v73;
  v152 = v72;
  v74 = v73;
  v156 = a3;
  while (1)
  {
    sub_2524C0F0C(v74, v17, type metadata accessor for StatusDetailsView.ListItem);
    sub_2524C0F0C(a3, v14, type metadata accessor for StatusDetailsView.ListItem);
    v75 = *(v8 + 24);
    v76 = v17[v75 + 9] == 1 ? qword_2526A1650[*&v17[v75]] : 1;
    v77 = &v14[v75];
    if (v77[9] == 1)
    {
      v78 = qword_2526A1650[*v77];
      v79 = v76 >= v78;
      if (v76 == v78)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v79 = v76 != 0;
      if (v76 == 1)
      {
LABEL_76:
        v81 = *(v8 + 20);
        v82 = *&v17[v81];
        v83 = *&v17[v81 + 8];
        v84 = &v14[v81];
        if (v82 != *v84 || v83 != *(v84 + 1))
        {
          v80 = sub_2526933B0();
          goto LABEL_81;
        }

        sub_2524C0FDC(v14, type metadata accessor for StatusDetailsView.ListItem);
        sub_2524C0FDC(v17, type metadata accessor for StatusDetailsView.ListItem);
LABEL_65:
        v30 = v154 + 1;
        a3 = v156 + v148;
        v72 = v152 - 1;
        v73 = v151 + v148;
        if (v154 + 1 == v149)
        {
          v30 = v149;
          v28 = v142;
          v5 = v143;
          v29 = v144;
          goto LABEL_88;
        }

        goto LABEL_66;
      }
    }

    v80 = !v79;
LABEL_81:
    sub_2524C0FDC(v14, type metadata accessor for StatusDetailsView.ListItem);
    sub_2524C0FDC(v17, type metadata accessor for StatusDetailsView.ListItem);
    if ((v80 & 1) == 0)
    {
      v8 = v161;
      goto LABEL_65;
    }

    v8 = v161;
    if (!v159)
    {
      break;
    }

    v86 = v17;
    v87 = v14;
    v88 = v160;
    sub_2524C0F74(v74, v160, type metadata accessor for StatusDetailsView.ListItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_2524C0F74(v88, a3, type metadata accessor for StatusDetailsView.ListItem);
    a3 += v71;
    v74 += v71;
    v57 = __CFADD__(v72++, 1);
    v14 = v87;
    v17 = v86;
    if (v57)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

void sub_2524C02AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for StatusDetailsView.ListItem(0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v56 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_91;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_92;
  }

  v21 = (a2 - a1) / v19;
  v67 = a1;
  v66 = a4;
  v62 = v8;
  if (v21 < v20 / v19)
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v22;
    v65 = a4 + v22;
    if (v22 < 1 || a2 >= a3)
    {
      goto LABEL_89;
    }

    while (1)
    {
      sub_2524C0F0C(a2, v17, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0F0C(a4, v14, type metadata accessor for StatusDetailsView.ListItem);
      v25 = *(v8 + 24);
      if (v17[v25 + 9] == 1)
      {
        v26 = qword_2526A1650[*&v17[v25]];
      }

      else
      {
        v26 = 1;
      }

      v27 = &v14[v25];
      if (v27[9] == 1)
      {
        v28 = qword_2526A1650[*v27];
        v29 = v26 >= v28;
        if (v26 != v28)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v29 = v26 != 0;
        if (v26 != 1)
        {
LABEL_25:
          v30 = !v29;
          goto LABEL_34;
        }
      }

      v31 = *(v8 + 20);
      v32 = *&v17[v31];
      v33 = *&v17[v31 + 8];
      v34 = &v14[v31];
      if (v32 == *v34 && v33 == *(v34 + 1))
      {
        sub_2524C0FDC(v14, type metadata accessor for StatusDetailsView.ListItem);
        sub_2524C0FDC(v17, type metadata accessor for StatusDetailsView.ListItem);
LABEL_40:
        if (a1 < a4 || a1 >= a4 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v66 = a4 + v19;
        a4 += v19;
        goto LABEL_48;
      }

      v30 = sub_2526933B0();
LABEL_34:
      sub_2524C0FDC(v14, type metadata accessor for StatusDetailsView.ListItem);
      sub_2524C0FDC(v17, type metadata accessor for StatusDetailsView.ListItem);
      v8 = v62;
      if ((v30 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (a1 < a2 || a1 >= a2 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v19;
LABEL_48:
      a1 += v19;
      v67 = a1;
      if (a4 >= v64 || a2 >= a3)
      {
        goto LABEL_89;
      }
    }
  }

  v23 = v20 / v19 * v19;
  if (a4 < a2 || a2 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v36 = a4 + v23;
  if (v23 < 1)
  {
    goto LABEL_88;
  }

  v37 = -v19;
  v38 = a4 + v23;
  v61 = -v19;
  while (2)
  {
    while (2)
    {
      v57 = v36;
      v39 = a2;
      v40 = a2 + v37;
      v59 = v39;
      v60 = v40;
      while (1)
      {
        if (v39 <= a1)
        {
          v67 = v39;
          v65 = v57;
          goto LABEL_89;
        }

        v42 = a3;
        v58 = v36;
        v43 = v38 + v37;
        v44 = v63;
        sub_2524C0F0C(v43, v63, type metadata accessor for StatusDetailsView.ListItem);
        sub_2524C0F0C(v40, v64, type metadata accessor for StatusDetailsView.ListItem);
        v45 = *(v8 + 24);
        v46 = *(v44 + v45 + 9) == 1 ? qword_2526A1650[*(v44 + v45)] : 1;
        v47 = v64 + v45;
        if (*(v47 + 9) == 1)
        {
          v48 = qword_2526A1650[*v47];
          v49 = v46 >= v48;
          if (v46 != v48)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v49 = v46 != 0;
          if (v46 != 1)
          {
LABEL_64:
            v50 = !v49;
            goto LABEL_74;
          }
        }

        v51 = *(v8 + 20);
        v52 = *(v63 + v51);
        v53 = *(v63 + v51 + 8);
        v54 = (v64 + v51);
        v55 = v52 == *v54 && v53 == v54[1];
        v50 = v55 ? 0 : sub_2526933B0();
LABEL_74:
        a3 = v42 + v61;
        sub_2524C0FDC(v64, type metadata accessor for StatusDetailsView.ListItem);
        sub_2524C0FDC(v63, type metadata accessor for StatusDetailsView.ListItem);
        if (v50)
        {
          break;
        }

        v36 = v43;
        v8 = v62;
        if (v42 < v38 || a3 >= v38)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v42 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v38 = v43;
        v41 = v43 > a4;
        v40 = v60;
        v37 = v61;
        v39 = v59;
        if (!v41)
        {
          a2 = v59;
          goto LABEL_88;
        }
      }

      v8 = v62;
      if (v42 >= v59 && a3 < v59)
      {
        v36 = v58;
        a2 = v60;
        v37 = v61;
        if (v42 != v59)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v38 <= a4)
        {
          goto LABEL_88;
        }

        continue;
      }

      break;
    }

    a2 = v60;
    swift_arrayInitWithTakeFrontToBack();
    v36 = v58;
    v37 = v61;
    if (v38 > a4)
    {
      continue;
    }

    break;
  }

LABEL_88:
  v67 = a2;
  v65 = v36;
LABEL_89:
  sub_252594C08(&v67, &v66, &v65);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for StatusDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4 + *(v1 + 20);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420) + 32);
  v7 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = v6 + *(v7 + 24);
    v9 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v13 = sub_25268DA10();
          (*(*(v13 - 8) + 8))(v8, v13);
        }
      }
    }
  }

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2526909E0();
    (*(*(v11 - 8) + 8))(v0 + v4 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_2524C0BE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StatusDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2524C0C64()
{
  result = qword_27F4DF540;
  if (!qword_27F4DF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF538);
    type metadata accessor for StatusDetailsView.ListItemView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF548);
    sub_2524C10BC(&qword_27F4DF550, type metadata accessor for StatusDetailsView.ListItemView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF558);
    sub_2524C0DDC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF540);
  }

  return result;
}

unint64_t sub_2524C0DDC()
{
  result = qword_27F4DF560;
  if (!qword_27F4DF560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF558);
    sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF560);
  }

  return result;
}

uint64_t sub_2524C0F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524C0F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524C0FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2524C103C(uint64_t a1)
{
  v3 = *(type metadata accessor for StatusDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2524BC7C8(a1, v4);
}

uint64_t sub_2524C10BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2524C1114()
{
  v1 = *(type metadata accessor for StatusDetailsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for StatusDetailsView.ListItem(0) - 8);
  return sub_2524BCD30(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_2524C11D4(unint64_t a1, __int16 a2, unint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if ((a4 & 0x100) == 0 || a3 <= 2)
        {
          return 0;
        }
      }

      else if ((a4 & 0x100) == 0 || a3 ^ 2 | a4)
      {
        return 0;
      }
    }

    else if (a1 | a2)
    {
      if ((a4 & 0x100) == 0 || a3 ^ 1 | a4)
      {
        return 0;
      }
    }

    else if ((a4 & 0x100) == 0 || a3 | a4)
    {
      return 0;
    }
  }

  else
  {
    if ((a4 & 0x100) != 0)
    {
      return 0;
    }

    if (a2)
    {
      if ((a4 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a4 & 1) != 0 || *&a1 != *&a3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_2524C129C(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StatusDetailsView.ListItem(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 9);
  v14 = a2 + v10;
  v15 = *(a2 + v10);
  v16 = *(v14 + 8);
  v17 = *(v14 + 9);
  if (v13 != 1)
  {
    if ((v17 & 1) == 0)
    {
      if (v12)
      {
        if (v16)
        {
          return 1;
        }
      }

      else if ((v16 & 1) == 0 && v11 == v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*&v11 > 1uLL)
  {
    if (!(*&v11 ^ 2 | v12))
    {
      v18 = v17 == 0;
      *&v15 ^= 2uLL;
      goto LABEL_17;
    }

    return v17 && __PAIR128__(v16, *&v15) >= 3;
  }

  v18 = v17 == 0;
  if (*&v11 | v12)
  {
    *&v15 ^= 1uLL;
  }

LABEL_17:
  v19 = *&v15 | v16;
  return !v18 && v19 == 0;
}

uint64_t sub_2524C1440()
{
  result = type metadata accessor for StatusDetailsView.ListItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2524C14D4()
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StatusDetailsView.ListItemState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StatusDetailsView.ListItemState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_2524C15BC(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524C15D8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_2524C1610()
{
  result = qword_27F4DF5C0;
  if (!qword_27F4DF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF5C0);
  }

  return result;
}

unint64_t sub_2524C16D8()
{
  result = qword_27F4DF608;
  if (!qword_27F4DF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF600);
    sub_2524C18C8(&qword_27F4DF610, &qword_27F4DF618, &unk_2526A1558, sub_2524C1790);
    sub_2524C17E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF608);
  }

  return result;
}

unint64_t sub_2524C1790()
{
  result = qword_27F4DF620;
  if (!qword_27F4DF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF620);
  }

  return result;
}

unint64_t sub_2524C17E4()
{
  result = qword_27F4DF628;
  if (!qword_27F4DF628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF630);
    sub_2524C18C8(&qword_27F4DF288, &qword_27F4DF280, &unk_2526A0CC0, sub_25249D09C);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF628);
  }

  return result;
}

uint64_t sub_2524C18C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2524C194C@<D0>(double a1@<X0>, char a2@<W1>, char a3@<W2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  sub_2526924D0();
  sub_2526924D0();
  *&v17 = sub_252692340();
  sub_2526924D0();

  if (a2)
  {
    v10 = 1.0;
    if (a3)
    {
      v10 = 0.5;
    }
  }

  else
  {
    v11 = 1.0;
    if (a1 <= 1.0)
    {
      v11 = a1;
    }

    v10 = 0.0;
    if (v11 >= 0.0)
    {
      v10 = v11;
    }
  }

  v17 = *&v10;
  v12 = 270.0;
  if (a3)
  {
    v12 = 0.0;
  }

  LOBYTE(v18) = a3 & 1;
  *(&v18 + 1) = 0;
  v19 = *&v12;
  v20 = a4;
  *v21 = v10;
  v21[1] = 0;
  v22 = a3 & 1;
  v23 = 0;
  v24 = v12;
  v25 = 0;
  v26 = a4;
  v27 = 0;
  sub_2524C1ABC(&v17, &v16);
  sub_2524C1AF4(v21);
  v13 = v18;
  *a5 = v17;
  a5[1] = v13;
  result = *&v19;
  v15 = v20;
  a5[2] = v19;
  a5[3] = v15;
  return result;
}

uint64_t sub_2524C1B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524C1B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2524C1C38()
{
  sub_2524C1D08();
  if (v0 <= 0x3F)
  {
    sub_2524CA114(319, &qword_27F4DE678, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524C1D08()
{
  if (!qword_27F4DF690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2E8);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DF690);
    }
  }
}

void (*sub_2524C1D98(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for AutoClimateControlView(0);
  sub_25237153C(v1 + *(v9 + 20), v8, &qword_27F4DF678);
  MEMORY[0x2530A4210](v6);
  return sub_2524C1ED8;
}

void sub_2524C1ED8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB2E8);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4DF678);
    v5 = v4;
    v6 = &qword_27F4DB2E8;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4DF678;
    v5 = v2;
  }

  sub_252372288(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_2524C1FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF698);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AutoClimateControlView(0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  MEMORY[0x2530A4210](v14);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DB2E8);
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    sub_2524C63D0(v9, v13, type metadata accessor for AccessoryControl.AutoClimateState);
    *v6 = sub_2526912E0();
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6A0);
    sub_2524C2278(v1, v13, &v6[*(v16 + 44)]);
    sub_2523714D4(v6, a1, &qword_27F4DF698);
    (*(v4 + 56))(a1, 0, 1, v3);
    return sub_2524C9E80(v13, type metadata accessor for AccessoryControl.AutoClimateState);
  }
}

uint64_t sub_2524C2278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v84 = a3;
  v66 = type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  v73 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6A8);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v61 - v6;
  v7 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6B0);
  MEMORY[0x28223BE20](v77);
  v67 = &v61 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6B8);
  MEMORY[0x28223BE20](v81);
  v82 = &v61 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6C0);
  MEMORY[0x28223BE20](v74);
  v75 = (&v61 - v11);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6C8);
  MEMORY[0x28223BE20](v80);
  v76 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6D0);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for AutoClimateControlView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6D8);
  v21 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6E0);
  MEMORY[0x28223BE20](v24 - 8);
  v79 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  v61 = v18;
  v29 = (a1 + *(v18 + 24));
  v30 = v29[1];
  v72 = a1;
  if (v30)
  {
    v64 = *v29;
    sub_2524C965C(a1, &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoClimateControlView);
    v31 = *(v19 + 80);
    v65 = v17;
    v32 = (v31 + 16) & ~v31;
    v33 = swift_allocObject();
    v34 = sub_2524C63D0(&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for AutoClimateControlView);
    MEMORY[0x28223BE20](v34);
    v35 = v64;
    *(&v61 - 4) = a1;
    *(&v61 - 3) = v35;
    *(&v61 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF720);
    sub_2524C64B0();
    sub_252692550();
    v17 = v65;
    v36 = v78;
    (*(v21 + 32))(v28, v23, v78);
    (*(v21 + 56))(v28, 0, 1, v36);
  }

  else
  {
    (*(v21 + 56))(&v61 - v27, 1, 1, v78);
  }

  v37 = v28;
  v38 = v29[6];
  if (v38 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_2524C6210();
    sub_252691470();
  }

  else
  {
    if (v38)
    {
      v44 = v70;
      sub_2524C3304(v70);
      if ((*(v68 + 48))(v44, 1, v69) == 1)
      {
        sub_252372288(v44, &qword_27F4DF6A8);
        v45 = 1;
        v46 = v67;
        v47 = v66;
      }

      else
      {
        v53 = v62;
        sub_2524C63D0(v44, v62, type metadata accessor for AutoClimateControlView.LabelPickerView.Config);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
        v54 = v63;
        sub_2526926D0();
        v47 = v66;
        sub_2524C63D0(v53, v54 + *(v66 + 20), type metadata accessor for AutoClimateControlView.LabelPickerView.Config);
        v46 = v67;
        sub_2524C63D0(v54, v67, type metadata accessor for AutoClimateControlView.LabelPickerView);
        v45 = 0;
      }

      (*(v73 + 56))(v46, v45, 1, v47);
      v51 = &qword_27F4DF6B0;
      sub_25237153C(v46, v75, &qword_27F4DF6B0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6F8);
      sub_2524CAC0C(&qword_27F4DF6F0, &qword_27F4DF6F8, &unk_2526A1788, sub_2524C62C8);
      sub_2524C631C();
      v55 = v76;
      sub_252691470();
      sub_25237153C(v55, v82, &qword_27F4DF6C8);
      swift_storeEnumTagMultiPayload();
      sub_2524C6210();
      sub_252691470();
      sub_252372288(v55, &qword_27F4DF6C8);
      v52 = v46;
    }

    else
    {
      v39 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      v40 = (v71 + *(v39 + 24));
      v41 = v40[1];
      if (v41 == 7)
      {
        v42 = 0;
        v43 = 1;
      }

      else
      {
        v48 = *(v40 + 16);
        v85 = *v40;
        v86 = v41;
        v87 = v48;
        v42 = j___s22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O20localizedDescriptionSSSgvg(v39);
      }

      v49 = v75;
      *v75 = v42;
      v49[1] = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF6F8);
      sub_2524CAC0C(&qword_27F4DF6F0, &qword_27F4DF6F8, &unk_2526A1788, sub_2524C62C8);
      sub_2524C631C();
      v50 = v76;
      sub_252691470();
      v51 = &qword_27F4DF6C8;
      sub_25237153C(v50, v82, &qword_27F4DF6C8);
      swift_storeEnumTagMultiPayload();
      sub_2524C6210();
      sub_252691470();
      v52 = v50;
    }

    sub_252372288(v52, v51);
  }

  v56 = v79;
  sub_25237153C(v37, v79, &qword_27F4DF6E0);
  v57 = v83;
  sub_25237153C(v17, v83, &qword_27F4DF6D0);
  v58 = v84;
  sub_25237153C(v56, v84, &qword_27F4DF6E0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF718);
  sub_25237153C(v57, v58 + *(v59 + 48), &qword_27F4DF6D0);
  sub_252372288(v17, &qword_27F4DF6D0);
  sub_252372288(v37, &qword_27F4DF6E0);
  sub_252372288(v57, &qword_27F4DF6D0);
  return sub_252372288(v56, &qword_27F4DF6E0);
}

__n128 sub_2524C2D88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526912E0();
  v30 = 1;
  sub_2524C3008(a1, &v23);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v32 = v23;
  v33 = v24;
  v39 = v28;
  v38[2] = v25;
  v38[3] = v26;
  v38[4] = v27;
  v38[0] = v23;
  v38[1] = v24;
  sub_25237153C(&v32, v22, &qword_27F4DF760);
  sub_252372288(v38, &qword_27F4DF760);
  *&v29[39] = v34;
  *&v29[55] = v35;
  *&v29[71] = v36;
  *&v29[87] = v37;
  *&v29[7] = v32;
  *&v29[23] = v33;
  v5 = v30;
  sub_252692920();
  sub_2526909C0();
  *&v31[6] = v23;
  *&v31[22] = v24;
  *&v31[38] = v25;
  v6 = sub_252692920();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF720) + 36);
  KeyPath = swift_getKeyPath();
  v22[0] = 0;
  *v9 = KeyPath;
  *(v9 + 65) = 0;
  v11 = type metadata accessor for ControlBackgroundView();
  v12 = v11[5];
  *(v9 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v13 = v9 + v11[6];
  *(v9 + v11[7]) = 2;
  v14 = v11[8];
  v15 = [objc_opt_self() systemGray4Color];
  *(v9 + v14) = sub_252692240();
  *v13 = 0;
  *(v13 + 8) = 1;
  v16 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF758) + 36));
  *v16 = v6;
  v16[1] = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v17 = *v29;
  *(a2 + 33) = *&v29[16];
  *(a2 + 17) = v17;
  *(a2 + 90) = *&v29[73];
  *(a2 + 81) = *&v29[64];
  v18 = *&v29[32];
  *(a2 + 65) = *&v29[48];
  *(a2 + 49) = v18;
  result = *v31;
  v20 = *&v31[16];
  v21 = *&v31[32];
  *(a2 + 152) = *&v31[46];
  *(a2 + 138) = v21;
  *(a2 + 122) = v20;
  *(a2 + 106) = result;
  return result;
}

double sub_2524C3008@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = a1 + *(type metadata accessor for AutoClimateControlView(0) + 24);
  if (*(v7 + 40) == 1)
  {

    v8 = sub_2526923F0();
    v9 = *(v7 + 16);
    v10 = sub_252691B00();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);

    v11 = sub_252691B50();
    sub_252372288(v6, &qword_27F4DBD40);
    KeyPath = swift_getKeyPath();
    sub_2526912E0();
    sub_2526911B0();
    sub_2526909C0();
    v27 = 1;
    v22 = v8;
    v23 = v9;
    v24 = KeyPath;
    v25 = v11;
    v26 = 256;
  }

  else
  {

    v13 = sub_2526923C0();
    v14 = *(v7 + 16);
    v15 = sub_252691B00();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);

    v16 = sub_252691B50();
    sub_252372288(v6, &qword_27F4DBD40);
    v17 = swift_getKeyPath();
    sub_2526912E0();
    sub_2526911B0();
    sub_2526909C0();
    v27 = 0;
    v22 = v13;
    v23 = v14;
    v24 = v17;
    v25 = v16;
    v26 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF768);
  sub_2524C93A8();
  sub_252691470();
  v18 = v31;
  v19 = v32;
  *(a2 + 32) = v30;
  *(a2 + 48) = v18;
  *(a2 + 64) = v19;
  *(a2 + 80) = v33;
  result = *&v28;
  v21 = v29;
  *a2 = v28;
  *(a2 + 16) = v21;
  return result;
}

uint64_t sub_2524C3304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AutoClimateControlView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v330 = sub_25268F290();
  v329 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v328 = &v317 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v8 - 8);
  v351 = &v317 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v317 - v11;
  v388 = sub_25268DB10();
  v13 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v350 = &v317 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v360 = &v317 - v16;
  v383 = sub_25268D990();
  v17 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v347 = &v317 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v359 = &v317 - v20;
  v21 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v21 - 8);
  v332 = &v317 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v358 = &v317 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v317 - v26);
  MEMORY[0x28223BE20](v28);
  v377 = &v317 - v29;
  MEMORY[0x28223BE20](v30);
  v357 = &v317 - v31;
  MEMORY[0x28223BE20](v32);
  v356 = &v317 - v33;
  MEMORY[0x28223BE20](v34);
  v355 = &v317 - v35;
  v36 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v36 - 8);
  v333 = &v317 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v366 = &v317 - v39;
  MEMORY[0x28223BE20](v40);
  v354 = (&v317 - v41);
  MEMORY[0x28223BE20](v42);
  v376 = &v317 - v43;
  MEMORY[0x28223BE20](v44);
  v375 = &v317 - v45;
  MEMORY[0x28223BE20](v46);
  v365 = (&v317 - v47);
  MEMORY[0x28223BE20](v48);
  v374 = &v317 - v49;
  MEMORY[0x28223BE20](v50);
  v364 = (&v317 - v51);
  MEMORY[0x28223BE20](v52);
  v373 = &v317 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
  MEMORY[0x28223BE20](v54 - 8);
  v331 = &v317 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v334 = &v317 - v57;
  MEMORY[0x28223BE20](v58);
  v336 = &v317 - v59;
  MEMORY[0x28223BE20](v60);
  v337 = &v317 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v62 - 8);
  v338 = &v317 - v63;
  v380 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v346 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  MEMORY[0x28223BE20](v64);
  MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](&v317 - v67);
  MEMORY[0x28223BE20](v68);
  v372 = &v317 - v69;
  MEMORY[0x28223BE20](v70);
  v379 = &v317 - v71;
  MEMORY[0x28223BE20](v72);
  v371 = &v317 - v73;
  MEMORY[0x28223BE20](v74);
  v370 = &v317 - v75;
  MEMORY[0x28223BE20](v76);
  v369 = &v317 - v77;
  MEMORY[0x28223BE20](v78);
  v390 = &v317 - v79;
  MEMORY[0x28223BE20](v80);
  v339 = v4;
  v87 = *(v2 + *(v4 + 24) + 48);
  if (v87 >= 2)
  {
    v322 = v82;
    v321 = v81;
    v318 = v86;
    v319 = v85;
    v323 = &v317 - v83;
    v320 = v84;
    v324 = v5;
    v325 = v6;
    v326 = &v317 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v327 = a1;
    v91 = *(v87 + 16);
    v335 = v2;
    if (v91)
    {
      v393 = MEMORY[0x277D84F90];
      sub_2523705EC(0, v91, 0);
      v92 = (*(v346 + 80) + 32) & ~*(v346 + 80);
      v389 = v393;
      v93 = v87 + v92;
      v345 = "HFThermostatHoldFor";
      v368 = *(v346 + 72);
      v344 = "HFThermostatIndefinitely";
      v343 = "Until Next Activity";
      v382 = (v13 + 8);
      v362 = (v17 + 32);
      v363 = (v13 + 32);
      v361 = "HFThermostatUntilNextActivity";
      v378 = (v17 + 8);
      v353 = "HFThermostatHoldUntil";
      v342 = "HFThermostatHoldFor_Long";
      v341 = "HFThermostatIndefinitely_Long";
      v340 = "HFThermostatHoldUntilTomorrow";
      v348 = (v17 + 48);
      v367 = xmmword_252694E90;
      v349 = v12;
      v94 = v383;
      v381 = v27;
      while (1)
      {
        v95 = v390;
        sub_2524C965C(v93, v390, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        v96 = v95;
        v97 = v369;
        sub_2524C965C(v96, v369, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v105 = v373;
        sub_2524C63D0(v97, v373, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v106 = v364;
        sub_2524C965C(v105, v364, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v108 = (*(*(v107 - 8) + 48))(v106, 3, v107);
        v109 = v377;
        if (v108 > 1)
        {
          v129 = sub_252692C40();
          v386 = v130;
          v387 = v129;
          sub_2524C9E80(v373, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        }

        else
        {
          if (v108)
          {
            sub_2524C9E80(v373, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v386 = 0xE000000000000000;
            v387 = 0;
LABEL_15:
            v128 = v370;
            goto LABEL_19;
          }

          v110 = v364;
          v111 = *v364;
          v112 = *(v107 + 48);
          v113 = *(v107 + 64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
          v114 = swift_allocObject();
          *(v114 + 16) = v367;
          *(v114 + 56) = MEMORY[0x277D83B88];
          *(v114 + 64) = MEMORY[0x277D83C10];
          *(v114 + 32) = v111;
          v94 = v383;
          v115 = sub_252692C60();
          v386 = v116;
          v387 = v115;

          sub_2524C9E80(v373, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          (*v382)(&v110[v113], v388);
          sub_252372288(&v110[v112], &qword_27F4DB2D8);
        }

        v128 = v370;
LABEL_19:
        sub_2524C965C(v390, v128, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v131 = v357;
          sub_2524C63D0(v128, v357, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          sub_2524C965C(v131, v109, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
          if ((*(*(v132 - 8) + 48))(v109, 1, v132) == 1)
          {
            v133 = sub_252692C40();
            v384 = v134;
            v385 = v133;
          }

          else
          {
            v148 = *(v132 + 48);
            v149 = *(v132 + 64);
            v150 = v359;
            (*v362)(v359, v109 + v148, v94);
            v151 = v109 + v149;
            v152 = v360;
            v153 = v91;
            v154 = v388;
            (*v363)(v360, v151, v388);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
            v155 = swift_allocObject();
            *(v155 + 16) = v367;
            v156 = sub_252435C30(v152);
            v158 = v157;
            *(v155 + 56) = MEMORY[0x277D837D0];
            *(v155 + 64) = sub_2523AB7A4();
            *(v155 + 32) = v156;
            *(v155 + 40) = v158;
            v94 = v383;
            v159 = sub_252692C60();
            v384 = v160;
            v385 = v159;

            v161 = v154;
            v91 = v153;
            (*v382)(v152, v161);
            v162 = v150;
            v27 = v381;
            (*v378)(v162, v94);
          }

          sub_2524C9E80(v131, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v140 = v376;
          goto LABEL_27;
        }

        v135 = v128;
        v136 = v374;
        sub_2524C63D0(v135, v374, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v137 = v365;
        sub_2524C965C(v136, v365, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v139 = (*(*(v138 - 8) + 48))(v137, 3, v138);
        if (v139 <= 1)
        {
          v140 = v376;
          if (v139)
          {
            sub_2524C9E80(v374, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v384 = 0xE000000000000000;
            v385 = 0;
          }

          else
          {
            v141 = v365;
            v142 = *v365;
            v143 = *(v138 + 48);
            v144 = *(v138 + 64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
            v145 = swift_allocObject();
            *(v145 + 16) = v367;
            *(v145 + 56) = MEMORY[0x277D83B88];
            *(v145 + 64) = MEMORY[0x277D83C10];
            *(v145 + 32) = v142;
            v94 = v383;
            v146 = sub_252692C60();
            v384 = v147;
            v385 = v146;

            sub_2524C9E80(v374, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            (*v382)(&v141[v144], v388);
            sub_252372288(&v141[v143], &qword_27F4DB2D8);
          }

LABEL_27:
          v163 = v379;
          goto LABEL_30;
        }

        v140 = v376;
        v163 = v379;
        v164 = sub_252692C40();
        v384 = v165;
        v385 = v164;
        sub_2524C9E80(v374, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
LABEL_30:
        v166 = v371;
        sub_2524C965C(v390, v371, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2524C9E80(v166, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          v167 = 0;
          v168 = 0;
        }

        else
        {
          v169 = v166;
          v170 = v375;
          sub_2524C63D0(v169, v375, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          sub_2524C965C(v170, v140, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if ((*(*(v171 - 8) + 48))(v140, 3, v171))
          {
            sub_2524C9E80(v140, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v167 = 0;
            v168 = 0;
          }

          else
          {
            v352 = v91;
            v172 = *(v171 + 48);
            v173 = *(v171 + 64);
            v174 = v349;
            sub_2523714D4(v140 + v172, v349, &qword_27F4DB2D8);
            v175 = v350;
            v176 = v388;
            (*v363)(v350, v140 + v173, v388);
            v177 = v351;
            sub_25237153C(v174, v351, &qword_27F4DB2D8);
            if ((*v348)(v177, 1, v94) == 1)
            {
              (*v382)(v175, v176);
              sub_252372288(v174, &qword_27F4DB2D8);
              sub_252372288(v177, &qword_27F4DB2D8);
              v167 = 0;
              v168 = 0;
            }

            else
            {
              v178 = v347;
              (*v362)(v347, v177, v94);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
              v179 = swift_allocObject();
              *(v179 + 16) = v367;
              v180 = sub_252435C30(v175);
              v182 = v181;
              *(v179 + 56) = MEMORY[0x277D837D0];
              *(v179 + 64) = sub_2523AB7A4();
              *(v179 + 32) = v180;
              *(v179 + 40) = v182;
              v167 = sub_252692C60();
              v183 = v175;
              v168 = v184;

              v185 = v178;
              v163 = v379;
              (*v378)(v185, v383);
              v186 = v183;
              v94 = v383;
              (*v382)(v186, v176);
              sub_252372288(v174, &qword_27F4DB2D8);
            }

            v27 = v381;
            v91 = v352;
          }

          sub_2524C9E80(v375, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        }

        sub_2524C965C(v390, v163, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2524C63D0(v163, v27, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
          if ((*(*(v187 - 8) + 48))(v27, 1, v187) == 1)
          {
            v188 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
            v189 = v27;
LABEL_44:
            sub_2524C9E80(v189, v188);
            v193 = 0;
            v194 = 1;
            goto LABEL_48;
          }

          v195 = v27;
          v193 = *v27;
          v196 = *(v187 + 48);
          (*v382)(&v195[*(v187 + 64)], v388);
          v197 = &v195[v196];
          v94 = v383;
          (*v378)(v197, v383);
        }

        else
        {
          v190 = v163;
          v191 = v354;
          sub_2524C63D0(v190, v354, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          if ((*(*(v192 - 8) + 48))(v191, 3, v192))
          {
            v188 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
            v189 = v191;
            goto LABEL_44;
          }

          v193 = *v191;
          v198 = *(v192 + 48);
          (*v382)(v191 + *(v192 + 64), v388);
          v199 = v191 + v198;
          v94 = v383;
          sub_252372288(v199, &qword_27F4DB2D8);
        }

        v194 = 0;
LABEL_48:
        v200 = v372;
        sub_2524C63D0(v390, v372, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v201 = v358;
          sub_2524C63D0(v200, v358, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
          if ((*(*(v202 - 8) + 48))(v201, 1, v202) == 1)
          {
            goto LABEL_54;
          }

          v203 = *(v202 + 48);
          (*v382)((v201 + *(v202 + 64)), v388);
          v204 = (v201 + v203);
          v94 = v383;
          (*v378)(v204, v383);
          v205 = 1;
        }

        else
        {
          v206 = v366;
          sub_2524C63D0(v200, v366, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          v208 = (*(*(v207 - 8) + 48))(v206, 3, v207);
          if (v208 > 1)
          {
            v213 = v389;
            if (v208 == 2)
            {
              v205 = 1;
            }

            else
            {
              v205 = 2;
            }

            goto LABEL_56;
          }

          if (v208)
          {
LABEL_54:
            v205 = 0;
            goto LABEL_55;
          }

          v209 = *(v207 + 48);
          v210 = *(v207 + 64);
          v211 = v366;
          (*v382)((v366 + v210), v388);
          v212 = v211 + v209;
          v94 = v383;
          sub_252372288(v212, &qword_27F4DB2D8);
          v205 = 3;
        }

LABEL_55:
        v213 = v389;
LABEL_56:
        v393 = v213;
        v215 = *(v213 + 16);
        v214 = *(v213 + 24);
        if (v215 >= v214 >> 1)
        {
          sub_2523705EC((v214 > 1), v215 + 1, 1);
          v94 = v383;
          v213 = v393;
        }

        v392 = v194;
        *(v213 + 16) = v215 + 1;
        v389 = v213;
        v216 = v213 + 72 * v215;
        v217 = v386;
        *(v216 + 32) = v387;
        *(v216 + 40) = v217;
        v218 = v384;
        *(v216 + 48) = v385;
        *(v216 + 56) = v218;
        *(v216 + 64) = v167;
        *(v216 + 72) = v168;
        *(v216 + 80) = v193;
        *(v216 + 88) = v392;
        LODWORD(v218) = *v391;
        *(v216 + 92) = *&v391[3];
        *(v216 + 89) = v218;
        *(v216 + 96) = v205;
        v93 += v368;
        --v91;
        v27 = v381;
        if (!v91)
        {
          goto LABEL_64;
        }
      }

      v98 = v355;
      sub_2524C63D0(v97, v355, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v99 = v356;
      sub_2524C965C(v98, v356, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      v101 = (*(*(v100 - 8) + 48))(v99, 1, v100);
      v102 = v388;
      if (v101 == 1)
      {
        v103 = sub_252692C40();
        v386 = v104;
        v387 = v103;
      }

      else
      {
        v117 = *(v100 + 48);
        v118 = *(v100 + 64);
        v119 = v359;
        (*v362)(v359, v99 + v117, v94);
        v120 = v360;
        (*v363)(v360, v99 + v118, v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
        v121 = swift_allocObject();
        *(v121 + 16) = v367;
        v122 = sub_252435C30(v120);
        v124 = v123;
        *(v121 + 56) = MEMORY[0x277D837D0];
        *(v121 + 64) = sub_2523AB7A4();
        *(v121 + 32) = v122;
        *(v121 + 40) = v124;
        v94 = v383;
        v125 = sub_252692C60();
        v386 = v126;
        v387 = v125;

        (*v382)(v120, v102);
        v127 = v119;
        v27 = v381;
        (*v378)(v127, v94);
      }

      sub_2524C9E80(v98, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v109 = v377;
      goto LABEL_15;
    }

    v389 = MEMORY[0x277D84F90];
LABEL_64:
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
    v220 = v337;
    MEMORY[0x2530A4210]();
    v221 = type metadata accessor for AccessoryControl.AutoClimateState(0);
    v222 = *(*(v221 - 1) + 48);
    v223 = v222(v220, 1, v221);
    v224 = v338;
    if (v223)
    {
      sub_252372288(v220, &qword_27F4DB2E8);
      (*(v346 + 56))(v224, 1, 1, v380);
    }

    else
    {
      sub_25237153C(v220 + v221[5], v338, &qword_27F4DB300);
      sub_252372288(v220, &qword_27F4DB2E8);
      if ((*(v346 + 48))(v224, 1, v380) != 1)
      {
        v256 = v323;
        sub_2524C63D0(v224, v323, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v258 = v322;
        (*(*(v257 - 8) + 56))(v322, 1, 3, v257);
        swift_storeEnumTagMultiPayload();
        v259 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV0eF4HoldO2eeoiySbAG_AGtFZ_0(v256, v258);
        sub_2524C9E80(v258, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        if (v259)
        {
          sub_2524C9E80(v256, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        }

        else
        {
          v261 = v321;
          sub_2524C965C(v256, v321, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_2524C9E80(v261, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
            v264 = v318;
            sub_2524C965C(v256, v318, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v265 = v332;
              sub_2524C63D0(v264, v332, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
              v227 = sub_25243BB18();
              v267 = v266;
              sub_2524C9E80(v265, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
              v268 = v333;
            }

            else
            {
              v268 = v333;
              sub_2524C63D0(v264, v333, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
              v227 = sub_25243B8D8();
              v267 = v269;
              sub_2524C9E80(v268, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            }

            v270 = v319;
            sub_2524C965C(v323, v319, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v271 = v270;
              v272 = v332;
              sub_2524C63D0(v271, v332, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
              v273 = sub_25243BB18();
              v275 = v274;
              v276 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
              v277 = v272;
            }

            else
            {
              sub_2524C63D0(v270, v268, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
              v273 = sub_25243BE54();
              v275 = v278;
              v276 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
              v277 = v268;
            }

            sub_2524C9E80(v277, v276);
            v279 = v320;
            sub_2524C965C(v323, v320, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_2524C9E80(v279, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
              v280 = 0;
              v232 = 0;
            }

            else
            {
              sub_2524C63D0(v279, v268, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
              v280 = sub_25243C098();
              v281 = v268;
              v232 = v282;
              sub_2524C9E80(v281, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            }

            v283 = v323;
            v233 = sub_25243C520();
            v285 = v284;
            v286 = AccessoryControl.AutoClimateState.AutoClimateHold.id.getter();
            sub_2524C9E80(v283, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
            v235 = v286;
            v236 = 0;
            v237 = 0;
            v238 = 0;
            v234 = v285 & 1;
            v228 = v267;
            v229 = v273;
            v230 = v275;
            v231 = v280;
            goto LABEL_73;
          }

          sub_2524C9E80(v256, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          sub_2524C9E80(v261, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
        }

LABEL_68:
        v225 = v336;
        MEMORY[0x2530A4210](v219);
        if (v222(v225, 1, v221))
        {
          v226 = v225;
LABEL_70:
          sub_252372288(v226, &qword_27F4DB2E8);
LABEL_71:
          v227 = 0;
          v228 = 0;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          v232 = 0;
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v236 = 0;
          v237 = 0;
LABEL_72:
          v238 = 1;
LABEL_73:
          v385 = v231;
          v386 = v229;
          v387 = v232;
          v388 = v233;
          v390 = v235;
          v239 = v326;
          v240 = v228;
          v241 = v230;
          v242 = v237;
          v243 = v234;
          v244 = v238;
          sub_2524C965C(v335, v326, type metadata accessor for AutoClimateControlView);
          v245 = (*(v324 + 80) + 16) & ~*(v324 + 80);
          v246 = swift_allocObject();
          sub_2524C63D0(v239, v246 + v245, type metadata accessor for AutoClimateControlView);
          v247 = v327;
          sub_25268DA00();
          v248 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
          *(v247 + v248[5]) = v244;
          v249 = (v247 + v248[6]);
          *v249 = v236;
          v249[1] = v242;
          *(v247 + v248[7]) = v389;
          v250 = v247 + v248[8];
          *v250 = v227;
          *(v250 + 8) = v240;
          v251 = v385;
          *(v250 + 16) = v386;
          *(v250 + 24) = v241;
          v253 = v387;
          v252 = v388;
          *(v250 + 32) = v251;
          *(v250 + 40) = v253;
          *(v250 + 48) = v252;
          *(v250 + 56) = v243;
          *(v250 + 63) = 0;
          *(v250 + 61) = 0;
          *(v250 + 57) = 0;
          *(v250 + 64) = v390;
          v254 = (v247 + v248[9]);
          *v254 = sub_2524C9A84;
          v254[1] = v246;
          return (*(*(v248 - 1) + 56))(v247, 0, 1, v248);
        }

        v255 = *(v225 + v221[7]);
        sub_252372288(v225, &qword_27F4DB2E8);
        v234 = 0;
        v227 = 0;
        v228 = 0;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        if (v255 > 1)
        {
          v238 = 1;
          if (v255 != 2)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v238 = 1;
          if (!v255)
          {
            goto LABEL_73;
          }
        }

        sub_252692C40();
        v260 = v334;
        MEMORY[0x2530A4210](v219);
        if (v222(v260, 1, v221))
        {

          v226 = v260;
          goto LABEL_70;
        }

        v262 = *(v260 + v221[8] + 8);
        sub_252372288(v260, &qword_27F4DB2E8);
        if ((v262 & 1) == 0)
        {
          v263 = v331;
          MEMORY[0x2530A4210](v219);
          if (!v222(v263, 1, v221))
          {
            v287 = (v263 + v221[6]);
            v289 = *v287;
            v288 = v287[1];
            sub_25235E298(*v287, v288);
            sub_252372288(v263, &qword_27F4DB2E8);
            switch(v288)
            {
              case 5uLL:
                v390 = "gyResumeHighRatesDescription";
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
                v305 = swift_allocObject();
                *(v305 + 16) = xmmword_252694EA0;
                v306 = sub_252692C10();
                v308 = v307;

                *(v305 + 56) = MEMORY[0x277D837D0];
                v309 = sub_2523AB7A4();
                *(v305 + 64) = v309;
                *(v305 + 32) = v306;
                *(v305 + 40) = v308;
                v310 = v329;
                v311 = v328;
                v312 = v330;
                (*(v329 + 104))(v328, *MEMORY[0x277D16048], v330);
                v313 = sub_25268F2D0();
                v315 = v314;
                (*(v310 + 8))(v311, v312);
                *(v305 + 96) = MEMORY[0x277D837D0];
                *(v305 + 104) = v309;
                *(v305 + 72) = v313;
                *(v305 + 80) = v315;
                v236 = sub_252692C60();
                v302 = v316;
                v303 = v289;
                v304 = 5;
                break;
              case 6uLL:
                v390 = "HFThermostatHeating";
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
                v290 = swift_allocObject();
                *(v290 + 16) = xmmword_252694EA0;
                v291 = sub_252692C10();
                v293 = v292;

                *(v290 + 56) = MEMORY[0x277D837D0];
                v294 = sub_2523AB7A4();
                *(v290 + 64) = v294;
                *(v290 + 32) = v291;
                *(v290 + 40) = v293;
                v295 = v329;
                v296 = v328;
                v297 = v330;
                (*(v329 + 104))(v328, *MEMORY[0x277D16048], v330);
                v298 = sub_25268F2D0();
                v300 = v299;
                (*(v295 + 8))(v296, v297);
                *(v290 + 96) = MEMORY[0x277D837D0];
                *(v290 + 104) = v294;
                *(v290 + 72) = v298;
                *(v290 + 80) = v300;
                v236 = sub_252692C60();
                v302 = v301;
                v303 = v289;
                v304 = 6;
                break;
              case 7uLL:
                goto LABEL_87;
              default:

                sub_25235E2A8(v289, v288);
                goto LABEL_71;
            }

            sub_25235E2A8(v303, v304);

            v237 = v302;
            v227 = 0;
            v228 = 0;
            v229 = 0;
            v230 = 0;
            v231 = 0;
            v232 = 0;
            v233 = 0;
            v234 = 0;
            v235 = 0;
            goto LABEL_72;
          }

          sub_252372288(v263, &qword_27F4DB2E8);
        }

LABEL_87:

        goto LABEL_71;
      }
    }

    sub_252372288(v224, &qword_27F4DB300);
    goto LABEL_68;
  }

  v88 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  v89 = *(*(v88 - 8) + 56);

  return v89(a1, 1, 1, v88);
}

uint64_t sub_2524C5B20(uint64_t a1)
{
  v54 = a1;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  result = type metadata accessor for AutoClimateControlView(0);
  v21 = *(v1 + *(result + 24) + 48);
  if (v21 < 2)
  {
    return result;
  }

  v50 = v16;
  v51 = v19;
  v52 = v1;
  v53 = v8;
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_17:
    v36 = sub_2524C1D98(v56);
    v38 = v37;
    v39 = type metadata accessor for AccessoryControl.AutoClimateState(0);
    if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
    {
      v40 = *(v39 + 20);
      sub_252372288(v38 + v40, &qword_27F4DB300);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      (*(*(v41 - 8) + 56))(v38 + v40, 1, 3, v41);
      v42 = v53;
      swift_storeEnumTagMultiPayload();
      (*(v55 + 56))(v38 + v40, 0, 1, v42);
    }

    return (v36)(v56, 0);
  }

  v23 = 0;
  v24 = v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    sub_2524C965C(v24 + *(v55 + 72) * v23, v13, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2524C965C(v13, v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2524C63D0(v10, v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v25 - 8) + 48))(v4, 1, v25) != 1)
      {
        v26 = *(v25 + 48);
        v27 = *(v25 + 64);
        v28 = sub_25268DB10();
        (*(*(v28 - 8) + 8))(&v4[v27], v28);
        v29 = sub_25268D990();
        (*(*(v29 - 8) + 8))(&v4[v26], v29);
        v30 = 1;
        goto LABEL_15;
      }

LABEL_11:
      v30 = 0;
      goto LABEL_15;
    }

    sub_2524C63D0(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    v32 = (*(*(v31 - 8) + 48))(v7, 3, v31);
    if (v32 <= 1)
    {
      if (!v32)
      {
        v33 = *(v31 + 48);
        v34 = *(v31 + 64);
        v35 = sub_25268DB10();
        (*(*(v35 - 8) + 8))(&v7[v34], v35);
        sub_252372288(&v7[v33], &qword_27F4DB2D8);
        v30 = 3;
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v30 = v32 == 2 ? 1 : 2;
LABEL_15:
    if (v30 == v54)
    {
      break;
    }

    ++v23;
    result = sub_2524C9E80(v13, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (v22 == v23)
    {
      goto LABEL_17;
    }
  }

  v43 = v50;
  sub_2524C63D0(v13, v50, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  v44 = v51;
  sub_2524C63D0(v43, v51, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  v45 = sub_2524C1D98(v56);
  v47 = v46;
  v48 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    v49 = *(v48 + 20);
    sub_252372288(v47 + v49, &qword_27F4DB300);
    sub_2524C965C(v44, v47 + v49, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    (*(v55 + 56))(v47 + v49, 0, 1, v53);
  }

  v45(v56, 0);
  return sub_2524C9E80(v44, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
}

unint64_t sub_2524C6210()
{
  result = qword_27F4DF6E8;
  if (!qword_27F4DF6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF6C8);
    sub_2524CAC0C(&qword_27F4DF6F0, &qword_27F4DF6F8, &unk_2526A1788, sub_2524C62C8);
    sub_2524C631C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF6E8);
  }

  return result;
}

unint64_t sub_2524C62C8()
{
  result = qword_27F4DF700;
  if (!qword_27F4DF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF700);
  }

  return result;
}

unint64_t sub_2524C631C()
{
  result = qword_27F4DF708;
  if (!qword_27F4DF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF6B0);
    sub_2524CA380(&qword_27F4DF710, type metadata accessor for AutoClimateControlView.LabelPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF708);
  }

  return result;
}

uint64_t sub_2524C63D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2524C64B0()
{
  result = qword_27F4DF728;
  if (!qword_27F4DF728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF720);
    sub_2524C6568();
    sub_252400FC8(&qword_27F4DF750, &qword_27F4DF758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF728);
  }

  return result;
}

unint64_t sub_2524C6568()
{
  result = qword_27F4DF730;
  if (!qword_27F4DF730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF738);
    sub_252400FC8(&qword_27F4DF740, &qword_27F4DF748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF730);
  }

  return result;
}

uint64_t sub_2524C6620@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_252404480();

    v3 = sub_252691D50();
    v5 = v4;
    v7 = v6;
    sub_252691BB0();
    sub_252691B20();
    sub_252691B90();

    v8 = sub_252691D00();
    v10 = v9;
    v12 = v11;

    sub_2524228D8(v3, v5, v7 & 1);

    sub_252692330();
    v13 = sub_252691CD0();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_2524228D8(v8, v10, v12 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v8) = sub_252691A20();
    result = sub_252690760();
    *(&v23 + 1) = v22;
    *(&v25 + 1) = v24;
    v26 = v17 & 1;
    v27 = v8;
    v28 = xmmword_2526A1670;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    KeyPath = 0;
    v27 = 0;
    v26 = 0;
    v28 = 0uLL;
    v23 = 0uLL;
    v25 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v26;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v23;
  *(a2 + 80) = v25;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_2524C6804@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF818);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v16 = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF830);
  sub_2524CAC0C(&qword_27F4DF838, &qword_27F4DF828, &unk_2526A1B68, sub_2524CA484);
  sub_252400FC8(&qword_27F4DF880, &qword_27F4DF830);
  sub_252691C20();
  v8 = *(v2 + 36);
  v9 = sub_252690850();
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_252693210();

  v17 = 0xD000000000000021;
  v18 = 0x80000002526AFCB0;
  type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  v10 = sub_252692C40();
  MEMORY[0x2530A4800](v10);

  MEMORY[0x2530A4800](0x6E6F747475422ELL, 0xE700000000000000);
  sub_2524CA624();
  sub_252692070();

  sub_25231B250(v4);
  v11 = v14;
  sub_25231B2B8(v7, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8B0);
  *(v11 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2524C6B30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v54 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8C8);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v55 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8D0);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v54 - v8;
  v68 = sub_252691130();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  v11 = *(v10 - 8);
  v70 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8D8);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = v54 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8E0);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = v54 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8E8);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = v54 - v18;
  sub_2524C965C(a1, v13, type metadata accessor for AutoClimateControlView.LabelPickerView);
  sub_252692E00();
  v19 = sub_252692DF0();
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_2524C63D0(v13, v22 + v21, type metadata accessor for AutoClimateControlView.LabelPickerView);
  sub_2524C965C(a1, v13, type metadata accessor for AutoClimateControlView.LabelPickerView);
  v24 = sub_252692DF0();
  v54[1] = v12;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_2524C63D0(v13, v25 + v21, type metadata accessor for AutoClimateControlView.LabelPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F0);
  sub_2526926E0();
  v83 = v89;
  v84 = v90;
  v85 = v91;
  v86 = v92;
  v81 = v87;
  v82 = v88;
  v59 = a1;
  v80 = a1;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF900);
  sub_2524CAC0C(&qword_27F4DF908, &qword_27F4DF8F8, &unk_2526A1C00, sub_252474348);
  sub_2524CAC88();
  sub_2524CAD60();
  v26 = v60;
  sub_2526925E0();
  v27 = v65;
  sub_252691120();
  v28 = sub_252400FC8(&qword_27F4DF938, &qword_27F4DF8D8);
  v29 = MEMORY[0x277CDDDA0];
  v30 = v61;
  v31 = v63;
  v32 = v68;
  sub_252691E00();
  (*(v69 + 8))(v27, v32);
  (*(v64 + 8))(v26, v31);
  *&v81 = v31;
  *(&v81 + 1) = v32;
  *&v82 = v28;
  *(&v82 + 1) = v29;
  v33 = v59;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v62;
  v36 = v66;
  sub_252692160();
  (*(v67 + 8))(v30, v36);
  v37 = v33 + *(v70 + 28);
  if ((*(v37 + *(type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0) + 20)) & 1) == 0)
  {
    sub_2524C965C(v33, v13, type metadata accessor for AutoClimateControlView.LabelPickerView);
    v38 = swift_allocObject();
    sub_2524C63D0(v13, v38 + ((v20 + 16) & ~v20), type metadata accessor for AutoClimateControlView.LabelPickerView);
    v39 = v56;
    sub_252692550();
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000021, 0x80000002526AFCB0);
    v40 = sub_252692C40();
    MEMORY[0x2530A4800](v40);

    MEMORY[0x2530A4800](0xD000000000000015, 0x80000002526AFD00);
    sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438);
    v41 = v55;
    v42 = v58;
    sub_252692070();

    (*(v57 + 8))(v39, v42);
    sub_2523714D4(v41, v78, &qword_27F4DF8C8);
    v34 = 0;
  }

  v43 = v78;
  (*(v74 + 56))(v78, v34, 1, v75);
  v44 = v72;
  v45 = *(v72 + 16);
  v46 = v71;
  v47 = v35;
  v48 = v73;
  v45(v71, v35, v73);
  v49 = v76;
  sub_25237153C(v43, v76, &qword_27F4DF8D0);
  v50 = v77;
  v45(v77, v46, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF940);
  sub_25237153C(v49, &v50[*(v51 + 48)], &qword_27F4DF8D0);
  sub_252372288(v43, &qword_27F4DF8D0);
  v52 = *(v44 + 8);
  v52(v47, v48);
  sub_252372288(v49, &qword_27F4DF8D0);
  return (v52)(v46, v48);
}

uint64_t sub_2524C7708(uint64_t a1)
{
  v2 = type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = a1 + *(v5 + 28);
  v10[1] = *(v6 + *(type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0) + 28));
  sub_2524C965C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoClimateControlView.LabelPickerView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2524C63D0(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AutoClimateControlView.LabelPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F0);
  sub_252400FC8(&qword_27F4DF950, &qword_27F4DF948);
  sub_252400FC8(&qword_27F4DF928, &qword_27F4DF930);
  sub_2524CB2F4();
  return sub_2526927A0();
}

uint64_t sub_2524C7944(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v3;
  v4 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v4;
  v5 = *(a1 + 48);
  v12[2] = v15;
  v12[3] = v5;
  v17 = *(a1 + 64);
  v13 = *(a1 + 64);
  v12[0] = v14[0];
  v12[1] = v2;
  v10[2] = v14;
  v10[3] = a2;
  sub_2524CB350(v14, v11);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF960);
  v7 = sub_252400FC8(&qword_27F4DF968, &qword_27F4DF960);
  v8 = sub_2524CAD0C();
  return MEMORY[0x2530A24A0](v12, sub_2524CB348, v10, v6, &type metadata for AutoClimateControlView.LabelPickerView.Config.Option, v7, v8);
}

uint64_t sub_2524C7A4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF970);
  sub_252400FC8(&qword_27F4DF978, &qword_27F4DF970);
  return sub_252692550();
}

uint64_t sub_2524C7B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v33 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = a1[1];
  v41 = *a1;
  v16 = v41;
  v42 = v15;
  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v39 = 0;
  v40 = 0xE000000000000000;

  sub_252693210();
  MEMORY[0x2530A4800](0xD000000000000021, 0x80000002526AFCB0);
  type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  v17 = sub_252692C40();
  MEMORY[0x2530A4800](v17);

  MEMORY[0x2530A4800](0x2E6E6F747475422ELL, 0xEF2E6E6F6974704FLL);
  MEMORY[0x2530A4800](v16, v15);
  sub_252692070();

  v18 = a1[5];
  if (v18)
  {
    v41 = a1[4];
    v42 = v18;
    sub_252404480();

    v19 = sub_252691D50();
    v21 = v20;
    v41 = v19;
    v42 = v20;
    v23 = v22 & 1;
    v43 = v22 & 1;
    v44 = v24;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000021, 0x80000002526AFCB0);
    v25 = sub_252692C40();
    MEMORY[0x2530A4800](v25);

    MEMORY[0x2530A4800](0xD000000000000017, 0x80000002526AFD60);
    v26 = v33;
    sub_252692070();

    sub_2524228D8(v19, v21, v23);

    sub_2523714D4(v26, v7, &qword_27F4DDB68);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v34 + 56))(v7, v27, 1, v35);
  v28 = v36;
  sub_25237153C(v14, v36, &qword_27F4DDB68);
  v29 = v37;
  sub_25237153C(v7, v37, &qword_27F4DF8F8);
  v30 = v38;
  sub_25237153C(v28, v38, &qword_27F4DDB68);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF980);
  sub_25237153C(v29, v30 + *(v31 + 48), &qword_27F4DF8F8);
  sub_252372288(v7, &qword_27F4DF8F8);
  sub_252372288(v14, &qword_27F4DDB68);
  sub_252372288(v29, &qword_27F4DF8F8);
  return sub_252372288(v28, &qword_27F4DDB68);
}

uint64_t sub_2524C7FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = a1 + *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) + 20);
  v8 = (v7 + *(type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0) + 24));
  v9 = v8[1];
  if (v9)
  {
    v17 = *v8;
    v18 = v9;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v15 = 0;
    v16 = 0xE000000000000000;

    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000021, 0x80000002526AFCB0);
    v10 = sub_252692C40();
    MEMORY[0x2530A4800](v10);

    MEMORY[0x2530A4800](0xD000000000000012, 0x80000002526AFD40);
    sub_252692070();

    sub_2523714D4(v6, a2, &qword_27F4DDB68);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v4);
  }
}

uint64_t sub_2524C824C(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) + 20);
  v6 = *(v5 + *(type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  (*(*(v7 - 8) + 56))(v4, 1, 3, v7);
  swift_storeEnumTagMultiPayload();
  v8 = AccessoryControl.AutoClimateState.AutoClimateHold.id.getter();
  sub_2524C9E80(v4, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  return v6(v8);
}

uint64_t sub_2524C837C@<X0>(uint64_t a1@<X8>)
{
  result = sub_252692C40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2524C83CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF858);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF848);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v13 = v1 + *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) + 20);
  v53 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  v54 = v13;
  v14 = (v13 + *(v53 + 32));
  if (v14[1])
  {
    v51 = a1;
    v52 = v9;
    v49 = v7;
    v50 = v6;
    v16 = v14[2];
    v15 = v14[3];

LABEL_3:
    v48 = sub_2526911D0();
    v64 = 0;
    sub_2524C899C(v16, v15, &v56);
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v72 = v56;
    v73 = v57;
    v74 = v58;
    v75 = v59;
    v76 = v60;
    v77 = v61;
    v78 = v62;
    sub_25237153C(&v65, v55, &qword_27F4DF8B8);
    sub_252372288(&v72, &qword_27F4DF8B8);

    *(&v63[3] + 7) = v68;
    *(&v63[4] + 7) = v69;
    *(&v63[5] + 7) = v70;
    *(v63 + 7) = v65;
    *(&v63[1] + 7) = v66;
    *(&v63[6] + 7) = v71;
    *(&v63[2] + 7) = v67;
    v17 = v64;
    v18 = sub_252691A20();
    sub_252690760();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    LOBYTE(v56) = 0;
    KeyPath = swift_getKeyPath();
    v28 = &v5[*(v3 + 36)];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
    v30 = *MEMORY[0x277CDF3C0];
    v31 = sub_252690850();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = KeyPath;
    v32 = v63[2];
    *(v5 + 65) = v63[3];
    v33 = v63[5];
    *(v5 + 81) = v63[4];
    *(v5 + 97) = v33;
    *(v5 + 7) = *(&v63[5] + 15);
    v34 = v63[1];
    *(v5 + 17) = v63[0];
    *(v5 + 33) = v34;
    *v5 = v48;
    *(v5 + 1) = 0x4000000000000000;
    v5[16] = v17;
    *(v5 + 49) = v32;
    v5[128] = v18;
    *(v5 + 33) = *(v55 + 3);
    *(v5 + 129) = v55[0];
    *(v5 + 17) = v20;
    *(v5 + 18) = v22;
    *(v5 + 19) = v24;
    *(v5 + 20) = v26;
    v5[168] = 0;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    v35 = sub_252692C40();
    MEMORY[0x2530A4800](v35);

    MEMORY[0x2530A4800](0x2E6E6F747475422ELL, 0xED00006C6562614CLL);
    sub_2524CA4B4();
    v36 = v52;
    sub_252692070();

    sub_252372288(v5, &qword_27F4DF858);
    v37 = v51;
    sub_2523714D4(v36, v51, &qword_27F4DF848);
    return (*(v49 + 56))(v37, 0, 1, v50);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  MEMORY[0x2530A4210](v39);
  v40 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if ((*(*(v40 - 8) + 48))(v12, 1, v40) || (v41 = &v12[*(v40 + 24)], v42 = *(v41 + 1), v42 == 7))
  {
    sub_252372288(v12, &qword_27F4DB2E8);
  }

  else
  {
    v52 = v9;
    v43 = v41[16];
    v50 = *v41;
    v44 = v50;
    v45 = v43;
    LODWORD(v51) = v43;
    sub_25235E190(v50, v42);
    v46 = sub_252372288(v12, &qword_27F4DB2E8);
    *&v72 = v44;
    *(&v72 + 1) = v42;
    LOBYTE(v73) = v45;
    v16 = j___s22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O20localizedDescriptionSSSgvg(v46);
    v15 = v47;
    sub_25235E2A8(v50, v42);
    if (v15)
    {
      v49 = v7;
      v50 = v6;
      v51 = a1;
      goto LABEL_3;
    }
  }

  return (*(v7 + 56))(a1, 1, 1, v6);
}

uint64_t sub_2524C899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  sub_252404480();

  v4 = sub_252691D50();
  v6 = v5;
  v8 = v7;
  sub_252691BB0();
  sub_252691B20();
  sub_252691B90();

  v9 = sub_252691D00();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2524228D8(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v17 = sub_252692330();
  v13 &= 1u;
  LOBYTE(v32) = v13;
  v25 = sub_2526923D0();
  sub_252691BA0();
  sub_252691B40();
  v18 = sub_252691B90();

  v19 = swift_getKeyPath();
  v20 = sub_252692330();
  *&v28 = v9;
  *(&v28 + 1) = v11;
  LOBYTE(v29) = v13;
  *(&v29 + 1) = *v27;
  DWORD1(v29) = *&v27[3];
  *(&v29 + 1) = v15;
  *&v30 = KeyPath;
  BYTE8(v30) = 1;
  *(&v30 + 9) = *v26;
  HIDWORD(v30) = *&v26[3];
  *&v31 = v17;
  *(&v31 + 1) = 0x3FE999999999999ALL;
  v21 = v28;
  v22 = v29;
  v23 = v31;
  *(a3 + 32) = v30;
  *(a3 + 48) = v23;
  *a3 = v21;
  *(a3 + 16) = v22;
  *(a3 + 64) = v25;
  *(a3 + 72) = v19;
  *(a3 + 80) = v18;
  *(a3 + 88) = v20;
  *(a3 + 96) = 0x3FE999999999999ALL;
  sub_25237153C(&v28, &v32, &qword_27F4DF8C0);
  v32 = v9;
  v33 = v11;
  v34 = v13;
  *v35 = *v27;
  *&v35[3] = *&v27[3];
  v36 = v15;
  v37 = KeyPath;
  v38 = 1;
  *v39 = *v26;
  *&v39[3] = *&v26[3];
  v40 = v17;
  v41 = 0x3FE999999999999ALL;
  return sub_252372288(&v32, &qword_27F4DF8C0);
}

uint64_t sub_2524C8BD4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) + 20);
  v4 = v3 + *(type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0) + 32);
  v5 = *(v4 + 48);
  v12 = *(v4 + 32);
  v13 = v5;
  v14 = *(v4 + 64);
  v6 = v14;
  v7 = *(v4 + 16);
  v11[0] = *v4;
  v8 = v11[0];
  v11[1] = v7;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  return sub_25237153C(v11, v10, &qword_27F4DF8F0);
}

uint64_t sub_2524C8C60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v4 = *(result + 64);
    v5 = a4 + *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) + 20);
    v6 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
    return (*(v5 + *(v6 + 36)))(v4);
  }

  return result;
}

uint64_t sub_2524C8CCC()
{
  sub_252693460();
  v1 = *(v0 + 40);
  sub_252692C80();
  sub_252692C80();
  sub_252693480();
  if (v1)
  {
    sub_252692C80();
  }

  if (*(v0 + 56) == 1)
  {
    sub_252693480();
  }

  else
  {
    v2 = *(v0 + 48);
    sub_252693480();
    MEMORY[0x2530A4FE0](v2);
  }

  MEMORY[0x2530A4FE0](*(v0 + 64));
  return sub_2526934C0();
}

uint64_t sub_2524C8DB4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_252692C80();
  sub_252692C80();
  if (!v1)
  {
    sub_252693480();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_252693480();
    MEMORY[0x2530A4FE0](v2);
    return MEMORY[0x2530A4FE0](v4);
  }

  sub_252693480();
  sub_252692C80();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_252693480();
  return MEMORY[0x2530A4FE0](v4);
}

uint64_t sub_2524C8E84()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_252693460();
  sub_252692C80();
  sub_252692C80();
  if (!v1)
  {
    sub_252693480();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_252693480();
    MEMORY[0x2530A4FE0](v2);
    goto LABEL_6;
  }

  sub_252693480();
  sub_252692C80();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_252693480();
LABEL_6:
  MEMORY[0x2530A4FE0](v4);
  return sub_2526934C0();
}

BOOL sub_2524C8F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2524C9AE8(v7, v9);
}

uint64_t sub_2524C8FDC()
{
  sub_252693460();
  v1 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  MEMORY[0x2530A4FE0](*(v0 + v1[5]));
  v2 = v0 + v1[8];
  if (*(v2 + 8))
  {
    v3 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    v4 = *(v2 + 56);
    sub_252693480();
    sub_252692C80();
    sub_252692C80();
    if (v3)
    {
      sub_252693480();
      sub_252692C80();
      if (v4)
      {
LABEL_4:
        sub_252693480();
LABEL_8:
        MEMORY[0x2530A4FE0](v7);
        goto LABEL_9;
      }
    }

    else
    {
      sub_252693480();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_252693480();
    MEMORY[0x2530A4FE0](v6);
    goto LABEL_8;
  }

  sub_252693480();
LABEL_9:
  sub_2523DC38C(v8, *(v0 + v1[7]));
  return sub_2526934C0();
}

uint64_t sub_2524C9134(uint64_t a1, int *a2)
{
  v4 = v2;
  MEMORY[0x2530A4FE0](*(v4 + a2[5]));
  v6 = v4 + a2[8];
  if (!*(v6 + 8))
  {
    sub_252693480();
    goto LABEL_9;
  }

  v7 = *(v6 + 40);
  v11 = *(v6 + 48);
  v12 = *(v6 + 64);
  v8 = *(v6 + 56);
  sub_252693480();
  sub_252692C80();
  sub_252692C80();
  if (!v7)
  {
    sub_252693480();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_252693480();
    MEMORY[0x2530A4FE0](v11);
    goto LABEL_8;
  }

  sub_252693480();
  sub_252692C80();
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_252693480();
LABEL_8:
  MEMORY[0x2530A4FE0](v12);
LABEL_9:
  v9 = *(v4 + a2[7]);

  return sub_2523DC38C(a1, v9);
}

uint64_t sub_2524C925C(uint64_t a1, int *a2)
{
  sub_252693460();
  MEMORY[0x2530A4FE0](*(v2 + a2[5]));
  v4 = v2 + a2[8];
  if (*(v4 + 8))
  {
    v5 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = *(v4 + 64);
    v6 = *(v4 + 56);
    sub_252693480();
    sub_252692C80();
    sub_252692C80();
    if (v5)
    {
      sub_252693480();
      sub_252692C80();
      if (v6)
      {
LABEL_4:
        sub_252693480();
LABEL_8:
        MEMORY[0x2530A4FE0](v9);
        goto LABEL_9;
      }
    }

    else
    {
      sub_252693480();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_252693480();
    MEMORY[0x2530A4FE0](v8);
    goto LABEL_8;
  }

  sub_252693480();
LABEL_9:
  sub_2523DC38C(v10, *(v2 + a2[7]));
  return sub_2526934C0();
}

unint64_t sub_2524C93A8()
{
  result = qword_27F4DF770;
  if (!qword_27F4DF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF768);
    sub_2524C9460();
    sub_252400FC8(&qword_27F4DF7A8, &qword_27F4DF7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF770);
  }

  return result;
}

unint64_t sub_2524C9460()
{
  result = qword_27F4DF778;
  if (!qword_27F4DF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF780);
    sub_2524C94EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF778);
  }

  return result;
}

unint64_t sub_2524C94EC()
{
  result = qword_27F4DF788;
  if (!qword_27F4DF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF790);
    sub_2524C95A4();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF788);
  }

  return result;
}

unint64_t sub_2524C95A4()
{
  result = qword_27F4DF798;
  if (!qword_27F4DF798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF7A0);
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF798);
  }

  return result;
}

uint64_t sub_2524C965C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for AutoClimateControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4 + *(v1 + 20);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678) + 32);
  v7 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    goto LABEL_5;
  }

  v8 = v6 + *(v7 + 20);
  v9 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v11 - 8) + 48))(v8, 1, v11))
      {
        goto LABEL_3;
      }

      v19 = *(v11 + 48);
      v12 = sub_25268D990();
      (*(*(v12 - 8) + 8))(v8 + v19, v12);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v11 - 8) + 48))(v8, 3, v11))
      {
        goto LABEL_3;
      }

      v20 = *(v11 + 48);
      v13 = sub_25268D990();
      v17 = *(v13 - 8);
      v18 = v13;
      if (!(*(v17 + 48))(v8 + v20, 1))
      {
        (*(v17 + 8))(v8 + v20, v18);
      }
    }

    v14 = *(v11 + 64);
    v15 = sub_25268DB10();
    (*(*(v15 - 8) + 8))(v8 + v14, v15);
  }

LABEL_3:
  if (*(v6 + *(v7 + 24) + 8) >= 8uLL)
  {
  }

LABEL_5:
  v10 = v0 + v4 + *(v1 + 24);

  if (*(v10 + 48) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

BOOL sub_2524C9AE8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return *(a1 + 64) == *(a2 + 64);
}

uint64_t sub_2524C9BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    goto LABEL_2;
  }

  v6 = a1 + *(v4 + 32);
  v7 = *(v6 + 48);
  v41[2] = *(v6 + 32);
  v41[3] = v7;
  v42 = *(v6 + 64);
  v8 = *(v6 + 16);
  v41[0] = *v6;
  v41[1] = v8;
  v9 = a2 + *(v4 + 32);
  v44 = *(v9 + 64);
  v10 = *(v9 + 48);
  v43[2] = *(v9 + 32);
  v43[3] = v10;
  v11 = *(v9 + 16);
  v43[0] = *v9;
  v43[1] = v11;
  v12 = v41[0];
  if (!*(&v41[0] + 1))
  {
    if (!*(&v43[0] + 1))
    {
      v13 = v4;
      v31 = *&v41[0];
      v22 = *(v6 + 32);
      v32 = *(v6 + 16);
      v33 = v22;
      v34 = *(v6 + 48);
      v35 = *(v6 + 64);
      sub_25237153C(v41, v45, &qword_27F4DF8F0);
      sub_25237153C(v43, v45, &qword_27F4DF8F0);
      sub_252372288(&v31, &qword_27F4DF8F0);
LABEL_10:
      v5 = sub_2523E87E0(*(a1 + *(v13 + 28)), *(a2 + *(v13 + 28)));
      return v5 & 1;
    }

LABEL_8:
    v20 = *(v6 + 32);
    v32 = *(v6 + 16);
    v33 = v20;
    v34 = *(v6 + 48);
    v21 = *(v9 + 32);
    v37 = *(v9 + 16);
    v31 = v41[0];
    v35 = *(v6 + 64);
    v36 = v43[0];
    v38 = v21;
    v39 = *(v9 + 48);
    v40 = *(v9 + 64);
    sub_25237153C(v41, v45, &qword_27F4DF8F0);
    sub_25237153C(v43, v45, &qword_27F4DF8F0);
    sub_252372288(&v31, &qword_27F4DF988);
    v5 = 0;
    return v5 & 1;
  }

  if (!*(&v43[0] + 1))
  {
    goto LABEL_8;
  }

  v13 = v4;
  v24 = v43[0];
  v14 = *(v9 + 32);
  v25 = *(v9 + 16);
  v26 = v14;
  v27 = *(v9 + 48);
  v28 = *(v9 + 64);
  v35 = v28;
  v33 = v14;
  v34 = v27;
  v31 = v43[0];
  v32 = v25;
  v15 = *(v6 + 16);
  v16 = *(v6 + 32);
  v17 = *(v6 + 48);
  v46 = *(v6 + 64);
  v45[2] = v16;
  v45[3] = v17;
  v45[1] = v15;
  v45[0] = v41[0];
  v18 = sub_2524C9AE8(v45, &v31);
  sub_25237153C(v41, v29, &qword_27F4DF8F0);
  sub_25237153C(v43, v29, &qword_27F4DF8F0);
  sub_252372288(&v24, &qword_27F4DF8F0);
  v29[0] = v12;
  v19 = *(v6 + 32);
  v29[1] = *(v6 + 16);
  v29[2] = v19;
  v29[3] = *(v6 + 48);
  v30 = *(v6 + 64);
  sub_252372288(v29, &qword_27F4DF8F0);
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_2:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_2524C9E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2524C9F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2524C9F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2524C9FD4()
{
  sub_25268DA10();
  if (v0 <= 0x3F)
  {
    sub_2524CA114(319, &qword_27F4DB5E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2524CA114(319, &qword_27F4DF7C8, &type metadata for AutoClimateControlView.LabelPickerView.Config.Option, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2524CA114(319, &qword_27F4DF7D0, &type metadata for AutoClimateControlView.LabelPickerView.Config.Option, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2524A11CC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2524CA114(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2524CA19C()
{
  sub_2524C1D08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AutoClimateControlView.LabelPickerView.Config(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2524CA230()
{
  result = qword_27F4DF7E8;
  if (!qword_27F4DF7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF7F0);
    sub_252400FC8(&qword_27F4DF7F8, &qword_27F4DF698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF7E8);
  }

  return result;
}

unint64_t sub_2524CA2E4()
{
  result = qword_27F4DF800;
  if (!qword_27F4DF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF800);
  }

  return result;
}

uint64_t sub_2524CA380(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2524CA3CC()
{
  result = qword_27F4DF810;
  if (!qword_27F4DF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF810);
  }

  return result;
}

unint64_t sub_2524CA4B4()
{
  result = qword_27F4DF850;
  if (!qword_27F4DF850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF858);
    sub_2524CA56C();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF850);
  }

  return result;
}

unint64_t sub_2524CA56C()
{
  result = qword_27F4DF860;
  if (!qword_27F4DF860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF868);
    sub_252400FC8(&qword_27F4DF870, &qword_27F4DF878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF860);
  }

  return result;
}

unint64_t sub_2524CA624()
{
  result = qword_27F4DF888;
  if (!qword_27F4DF888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF818);
    sub_252400FC8(&qword_27F4DF890, &qword_27F4DF898);
    sub_252400FC8(&qword_27F4DF8A0, &qword_27F4DF8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF888);
  }

  return result;
}

uint64_t sub_2524CA708@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2524C8BD4(v4, a1);
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678) + 32);
  v6 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_5;
  }

  v7 = v5 + *(v6 + 20);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v12 - 8) + 48))(v7, 1, v12))
      {
        goto LABEL_3;
      }

      v20 = *(v12 + 48);
      v13 = sub_25268D990();
      (*(*(v13 - 8) + 8))(v7 + v20, v13);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v12 - 8) + 48))(v7, 3, v12))
      {
        goto LABEL_3;
      }

      v21 = *(v12 + 48);
      v14 = sub_25268D990();
      v18 = *(v14 - 8);
      v19 = v14;
      if (!(*(v18 + 48))(v7 + v21, 1))
      {
        (*(v18 + 8))(v7 + v21, v19);
      }
    }

    v15 = *(v12 + 64);
    v16 = sub_25268DB10();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

LABEL_3:
  if (*(v5 + *(v6 + 24) + 8) >= 8uLL)
  {
  }

LABEL_5:
  v9 = v0 + v3 + *(v1 + 20);
  v10 = sub_25268DA10();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);

  if (*(v9 + *(v11 + 32) + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524CAB88(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2524C8C60(a1, v4, v5, v6);
}

uint64_t sub_2524CAC0C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2524CAC88()
{
  result = qword_27F4DF910;
  if (!qword_27F4DF910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF8F0);
    sub_2524CAD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF910);
  }

  return result;
}

unint64_t sub_2524CAD0C()
{
  result = qword_27F4DF918;
  if (!qword_27F4DF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF918);
  }

  return result;
}

unint64_t sub_2524CAD60()
{
  result = qword_27F4DF920;
  if (!qword_27F4DF920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF900);
    sub_252400FC8(&qword_27F4DF928, &qword_27F4DF930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF920);
  }

  return result;
}

uint64_t sub_2524CAE10()
{
  v1 = *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2524C824C(v2);
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for AutoClimateControlView.LabelPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678) + 32);
  v6 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_5;
  }

  v7 = v5 + *(v6 + 20);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v12 - 8) + 48))(v7, 1, v12))
      {
        goto LABEL_3;
      }

      v20 = *(v12 + 48);
      v13 = sub_25268D990();
      (*(*(v13 - 8) + 8))(v7 + v20, v13);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v12 - 8) + 48))(v7, 3, v12))
      {
        goto LABEL_3;
      }

      v21 = *(v12 + 48);
      v14 = sub_25268D990();
      v18 = *(v14 - 8);
      v19 = v14;
      if (!(*(v18 + 48))(v7 + v21, 1))
      {
        (*(v18 + 8))(v7 + v21, v19);
      }
    }

    v15 = *(v12 + 64);
    v16 = sub_25268DB10();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

LABEL_3:
  if (*(v5 + *(v6 + 24) + 8) >= 8uLL)
  {
  }

LABEL_5:
  v9 = v0 + v3 + *(v1 + 20);
  v10 = sub_25268DA10();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);

  if (*(v9 + *(v11 + 32) + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524CB274(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoClimateControlView.LabelPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2524C7944(a1, v4);
}

unint64_t sub_2524CB2F4()
{
  result = qword_27F4DF958;
  if (!qword_27F4DF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF958);
  }

  return result;
}

unint64_t sub_2524CB390()
{
  result = qword_27F4DF990;
  if (!qword_27F4DF990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF998);
    sub_2524CB414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF990);
  }

  return result;
}

unint64_t sub_2524CB414()
{
  result = qword_27F4DF9A0;
  if (!qword_27F4DF9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF9A8);
    sub_2524CB4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9A0);
  }

  return result;
}

unint64_t sub_2524CB4A0()
{
  result = qword_27F4DF9B0;
  if (!qword_27F4DF9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF9B8);
    sub_2524CB52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9B0);
  }

  return result;
}

unint64_t sub_2524CB52C()
{
  result = qword_27F4DF9C0;
  if (!qword_27F4DF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF9C8);
    sub_252400FC8(&qword_27F4DDC40, &qword_27F4DDC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9C0);
  }

  return result;
}

unint64_t sub_2524CB5E4()
{
  result = qword_27F4DF9D0;
  if (!qword_27F4DF9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF8B0);
    sub_2524CB6C8(&qword_27F4DF9D8, &qword_27F4DF820, &unk_2526A1B60, sub_2524CA624);
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9D0);
  }

  return result;
}

uint64_t sub_2524CB6C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_2524CA380(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LocationDevice.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocationDevice.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LocationDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocationDevice.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall LocationDevice.init(identifier:name:isCurrentDevice:)(HomeAccessoryControlUI::LocationDevice *__return_ptr retstr, Swift::String identifier, Swift::String name, Swift::Bool isCurrentDevice)
{
  retstr->id = identifier;
  retstr->name = name;
  retstr->isCurrentDevice = isCurrentDevice;
}

uint64_t static LocationDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_2526933B0()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2526933B0()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524CB96C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6E65727275437369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2524CB9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2524CC3D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2524CB9F4(uint64_t a1)
{
  v2 = sub_2524CBC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2524CBA30(uint64_t a1)
{
  v2 = sub_2524CBC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF9E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2524CBC2C();
  sub_252693520();
  v14 = 0;
  v8 = v10[3];
  sub_252693330();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_252693330();
  v12 = 2;
  sub_252693340();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2524CBC2C()
{
  result = qword_27F4DF9E8;
  if (!qword_27F4DF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9E8);
  }

  return result;
}

uint64_t LocationDevice.hash(into:)()
{
  sub_252692C80();
  sub_252692C80();
  return sub_252693480();
}

uint64_t LocationDevice.hashValue.getter()
{
  sub_252693460();
  sub_252692C80();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t LocationDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF9F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2524CBC2C();
  sub_252693510();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = 0;
  v9 = sub_2526932F0();
  v11 = v10;
  v20 = v9;
  v22 = 1;
  v18 = sub_2526932F0();
  v19 = v12;
  v21 = 2;
  v13 = sub_252693300();
  (*(v6 + 8))(v8, v5);
  v14 = v13 & 1;
  v15 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2524CBFBC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2524CBFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_2526933B0()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2526933B0()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524CC068()
{
  sub_252693460();
  sub_252692C80();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_2524CC0E8()
{
  sub_252692C80();
  sub_252692C80();
  return sub_252693480();
}

uint64_t sub_2524CC13C()
{
  sub_252693460();
  sub_252692C80();
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

unint64_t sub_2524CC1BC()
{
  result = qword_27F4DF9F8;
  if (!qword_27F4DF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF9F8);
  }

  return result;
}

uint64_t sub_2524CC250()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2524CC2C0()
{
  result = qword_27F4DFA00;
  if (!qword_27F4DFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFA00);
  }

  return result;
}

unint64_t sub_2524CC324()
{
  result = qword_27F4DFA08;
  if (!qword_27F4DFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFA08);
  }

  return result;
}

unint64_t sub_2524CC37C()
{
  result = qword_27F4DFA10;
  if (!qword_27F4DFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFA10);
  }

  return result;
}

uint64_t sub_2524CC3D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2526933B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2526933B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xEF65636976654474)
  {

    return 2;
  }

  else
  {
    v6 = sub_2526933B0();

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

uint64_t sub_2524CC4E8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_252692A10();
}

HomeAccessoryControlUI::ThermostatAutomationSettingsViewType_optional __swiftcall ThermostatAutomationSettingsViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2526932D0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ThermostatAutomationSettingsViewType.rawValue.getter()
{
  if (*v0)
  {
    return 0x726F462064697247;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2524CC78C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F462064697247;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = 0x80000002526ADAE0;
  }

  else
  {
    v4 = 0xED00007473616365;
  }

  if (*a2)
  {
    v5 = 0x726F462064697247;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v6 = 0xED00007473616365;
  }

  else
  {
    v6 = 0x80000002526ADAE0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2526933B0();
  }

  return v8 & 1;
}

uint64_t sub_2524CC844()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_2524CC8D8()
{
  sub_252692C80();
}

uint64_t sub_2524CC958()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_2524CC9E8@<X0>(char *a1@<X8>)
{
  v2 = sub_2526932D0();

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

void sub_2524CCA48(unint64_t *a1@<X8>)
{
  v2 = 0x80000002526ADAE0;
  v3 = 0xD00000000000001BLL;
  if (*v1)
  {
    v3 = 0x726F462064697247;
    v2 = 0xED00007473616365;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2524CCA98@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_25268F890();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_25268F610();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268EE60();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25268DA10();
  v12 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatAutomationSettingsView(0);
  v42 = sub_25268E340();
  sub_25268E330();
  v15 = sub_25268E320();
  v16 = sub_25268E170();
  if (*(v16 + 16) && (v17 = sub_252367880(v14), (v18 & 1) != 0))
  {
    (*(v2 + 16))(v7, *(v16 + 56) + *(v2 + 72) * v17, v1);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v2 + 56))(v7, v19, 1, v1);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    (*(v12 + 8))(v14, v43);
    sub_252372288(v7, &qword_27F4DADF0);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_252372288(v7, &qword_27F4DADF0);
    v20 = sub_25268F870();
    (*(v2 + 8))(v4, v1);
    if (*(v20 + 16))
    {
      v21 = sub_252372350(v42);
      if (v22)
      {
        v23 = v15;
        v25 = v39;
        v24 = v40;
        v26 = v41;
        (*(v40 + 16))(v39, *(v20 + 56) + *(v40 + 72) * v21, v41);

        v27 = sub_25268F600();
        (*(v24 + 8))(v25, v26);
        if (*(v27 + 16))
        {
          v28 = sub_252367690(v23);
          if (v29)
          {
            v31 = v36;
            v30 = v37;
            v32 = v38;
            (*(v37 + 16))(v36, *(v27 + 56) + *(v37 + 72) * v28, v38);

            sub_25268ED40();
            (*(v12 + 8))(v14, v43);
            return (*(v30 + 8))(v31, v32);
          }
        }
      }
    }

    (*(v12 + 8))(v14, v43);
  }

  v34 = sub_252690490();
  return (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
}

uint64_t ThermostatAutomationSettingsView.init(for:thermostatCluster:context:dismissed:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a2;
  v50 = sub_252690490();
  v48 = *(v50 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = v44 - v13;
  v14 = *a1;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v16 = (a6 + v15[5]);
  sub_25268E1B0();
  sub_25268E1A0();
  sub_2524D9B8C(&qword_27F4DFA20, MEMORY[0x277D15458]);
  *v16 = sub_252690AD0();
  v16[1] = v17;
  v18 = v15[6];
  sub_25268DF30();
  *(a6 + v18) = sub_25268DF20();
  v45 = v15[7];
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
  sub_2526907D0();
  v19 = a6 + v15[8];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30);
  sub_2526924D0();
  v20 = v57;
  v21 = v58;
  v22 = v56;
  *v19 = v55;
  *(v19 + 1) = v22;
  v19[32] = v20;
  *(v19 + 5) = v21;
  v23 = a6 + v15[9];
  LOBYTE(v52) = 2;
  sub_2526924D0();
  v24 = *(&v55 + 1);
  *v23 = v55;
  *(v23 + 1) = v24;
  v25 = a6 + v15[10];
  LOBYTE(v52) = 0;
  sub_2526924D0();
  v26 = *(&v55 + 1);
  *v25 = v55;
  *(v25 + 1) = v26;
  v27 = a6 + v15[11];
  LOBYTE(v52) = 0;
  sub_2526924D0();
  v28 = *(&v55 + 1);
  *v27 = v55;
  *(v27 + 1) = v28;
  v29 = a6 + v15[12];
  LOBYTE(v52) = 0;
  sub_2526924D0();
  v30 = *(&v55 + 1);
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a6 + v15[16]);
  *(a6 + v15[14]) = v14;
  v32 = v15[15];
  v33 = sub_2526904A0();
  v34 = *(v33 - 8);
  (*(v34 + 16))(a6 + v32, a3, v33);
  *v31 = a4;
  v31[1] = a5;
  v44[1] = a5;
  v35 = a4;
  sub_25235E21C(a4);
  v36 = v51;
  sub_252690400();
  v37 = v48;
  v38 = v46;
  v39 = v50;
  (*(v48 + 16))(v46, v36, v50);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v40, v38, v39);
  v42 = v47;
  sub_2526907D0();
  sub_25247CDCC(v35);
  (*(v34 + 8))(a3, v33);
  (*(v37 + 8))(v51, v39);
  return sub_2524D9B14(v42, a6 + v45);
}