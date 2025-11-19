uint64_t sub_241E22158(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_241E23108(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_241E221E8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v4)
  {
    v5 = *(*v4 + 376);

    if (v5(v6))
    {
      if (((*(*v4 + 352))() & 1) == 0 || !a1)
      {
        goto LABEL_9;
      }

      v7 = &selRef_setShowAsAlertReady_;
    }

    else
    {
      if (!a1)
      {
LABEL_9:

        goto LABEL_10;
      }

      v7 = &selRef_setShowAsAlert_;
    }

    [a1 *v7];
    goto LABEL_9;
  }

LABEL_10:
  v8 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();
  if (result)
  {
    v10 = result;
    v11 = *((*v8 & *v2) + 0x508);
    v12 = v11();
    v13 = *&v12[OBJC_IVAR___BRLTEditStringInternal_string];
    v14 = *&v12[OBJC_IVAR___BRLTEditStringInternal_string + 8];

    v15 = sub_241E357E4();

    v17 = (v11)(v16);
    v18 = *&v17[OBJC_IVAR___BRLTEditStringInternal_selection];
    v19 = *&v17[OBJC_IVAR___BRLTEditStringInternal_selection + 8];
    LOBYTE(v14) = v17[OBJC_IVAR___BRLTEditStringInternal_selection + 16];

    v20 = sub_241E2CC64(v18, v19, v14);
    [v10 didChangeBrailleString:v15 brailleSelection:v20 brailleUIOptions:{v21, a1}];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_241E22418()
{
  result = qword_27EC74530;
  if (!qword_27EC74530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74530);
  }

  return result;
}

unint64_t sub_241E2246C()
{
  result = qword_27EC74538;
  if (!qword_27EC74538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74538);
  }

  return result;
}

uint64_t sub_241E2251C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74408, &qword_241E38C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241E2258C()
{
  v1 = v0;
  type metadata accessor for BRLTEditString();
  v2 = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
  v3 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script);
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_script) = v2;

  v4 = sub_241E12378(0, 0xE000000000000000, 0, 0, 1);
  v5 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille);
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_braille) = v4;

  v6 = MEMORY[0x277D84F90];
  sub_241E0FBF0(0, 0xE000000000000000, 0, 0xE000000000000000, MEMORY[0x277D84F90], v20);
  v7 = v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult;
  v8 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 8);
  v10 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 24);
  v9 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_translationResult + 32);
  v11 = v20[1];
  *v7 = v20[0];
  *(v7 + 1) = v11;
  *(v7 + 4) = v21;

  v12 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  swift_beginAccess();
  *(v0 + v12) = 0;
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_brailleSelectionDirty) = 0;
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 0;
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_showingAlert) = 0;
  v13 = sub_241E12328(0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, v6);
  v14 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_alertScript);
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_alertScript) = v13;

  v15 = sub_241E12328(0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, v6);
  v16 = *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_alertBraille);
  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_alertBraille) = v15;

  *(v0 + OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput) = 0;
  (*((*MEMORY[0x277D85000] & *v0) + 0x730))(0);
  v17 = OBJC_IVAR___BRLTBrailleModelInternal_scriptHistory;
  swift_beginAccess();
  v18 = *(v1 + v17);
  *(v1 + v17) = v6;

  *(v1 + OBJC_IVAR___BRLTBrailleModelInternal_lastScriptOutputTime) = 0;
  return result;
}

id BRLTBrailleModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BRLTBrailleModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241E22990(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241E22A5C(v11, 0, 0, 1, a1, a2);
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
    sub_241E11F58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_241E22A5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_241E22B68(a5, a6);
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
    result = sub_241E35B14();
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

uint64_t sub_241E22B68(uint64_t a1, unint64_t a2)
{
  v4 = sub_241E22BB4(a1, a2);
  sub_241E22CE4(&unk_2853FC400);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_241E22BB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_241E22DD0(v5, 0);
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

  result = sub_241E35B14();
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
        v10 = sub_241E358E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241E22DD0(v10, 0);
        result = sub_241E35AB4();
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

uint64_t sub_241E22CE4(uint64_t result)
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

  result = sub_241E22E44(result, v12, 1, v3);
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

void *sub_241E22DD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74700, &qword_241E38D80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241E22E44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74700, &qword_241E38D80);
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

uint64_t sub_241E22F38(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_241E35B34();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_241E35B04();
  *v1 = result;
  return result;
}

unint64_t sub_241E22FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_241E35B84();
  sub_241E35864();
  v6 = sub_241E35BB4();

  return sub_241E23050(a1, a2, v6);
}

unint64_t sub_241E23050(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_241E35B64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_241E23108(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_241E35B34();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_241E35B04();
}

uint64_t sub_241E2316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BRLTEditString();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_241E35B34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_241E35B34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_241E2326C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_241E35B34();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_241E35B34();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_241E22F38(result);

  return sub_241E2316C(v4, v2, 0);
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

unint64_t sub_241E246C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74608, &unk_241E38D90);
    v3 = sub_241E35B44();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_241E22FD8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t (*BRLTJLog.modify())()
{
  if (qword_27EC74878 != -1)
  {
    swift_once();
  }

  v0 = sub_241E357A4();
  __swift_project_value_buffer(v0, qword_27EC74880);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_241E24930(uint64_t a1, uint64_t *a2)
{
  v3 = sub_241E357A4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_241E35794();
}

uint64_t sub_241E249D4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_241E357A4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_241E24A4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_241E357A4();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_241E24B18(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_241E357A4();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*BRLTJLogEvent.modify())()
{
  if (qword_27EC74898 != -1)
  {
    swift_once();
  }

  v0 = sub_241E357A4();
  __swift_project_value_buffer(v0, qword_27EC748A0);
  swift_beginAccess();
  return j__swift_endAccess;
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

unint64_t *sub_241E24D0C()
{
  if (qword_27EC748B8 != -1)
  {
    swift_once();
  }

  return &qword_27EC749E0;
}

uint64_t sub_241E24D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_241E246C8(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74600, &qword_241E38D88);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

unint64_t *sub_241E24DDC()
{
  if (qword_27EC748C0 != -1)
  {
    swift_once();
  }

  return &qword_27EC749E8;
}

char *sub_241E24E2C()
{
  v0 = sub_241E35874();
  if (!v0)
  {
LABEL_37:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74610, qword_241E38DA0);
    sub_241E250E0();
    return sub_241E35964();
  }

  v1 = v0;
  v15 = MEMORY[0x277D84F90];
  result = sub_241E250C0(0, v0 & ~(v0 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    do
    {
      v4 = sub_241E35954();
      v5 = v3;
      if (v4 == 11501794 && v3 == 0xA300000000000000 || ((v9 = sub_241E35B64(), v4 == 8880354) ? (v10 = v5 == 0xA300000000000000) : (v10 = 0), !v10 ? (v11 = 0) : (v11 = 1), (v9 & 1) != 0 || (v11 & 1) != 0 || ((v12 = sub_241E35B64(), v4 == 9011426) ? (v13 = v5 == 0xA300000000000000) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), (v12 & 1) != 0 || (v14 & 1) != 0 || (sub_241E35B64() & 1) != 0 || v4 == 41154 && v5 == 0xA200000000000000 || (sub_241E35B64() & 1) != 0 || v4 == 9 && v5 == 0xE100000000000000 || (sub_241E35B64() & 1) != 0)))
      {

        v5 = 0xE100000000000000;
        v4 = 32;
      }

      else if (v4 == 8557794 && v5 == 0xA300000000000000 || (sub_241E35B64() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 124;
      }

      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_241E250C0((v6 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      v8 = v15 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      sub_241E35884();
      --v1;
    }

    while (v1);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

char *sub_241E250C0(char *a1, int64_t a2, char a3)
{
  result = sub_241E2519C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_241E250E0()
{
  result = qword_27EC74618;
  if (!qword_27EC74618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC74610, qword_241E38DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74618);
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

char *sub_241E2519C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC74620, &qword_241E38DE8);
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

id sub_241E252A8()
{
  result = [objc_allocWithZone(type metadata accessor for BRLTBrailleMusicParser()) init];
  qword_27EC748D8 = result;
  return result;
}

id BRLTBrailleMusicParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_241E2530C()
{
  if (qword_27EC748D0 != -1)
  {
    swift_once();
  }

  return &qword_27EC748D8;
}

id static BRLTBrailleMusicParser.shared.getter()
{
  if (qword_27EC748D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EC748D8;

  return v1;
}

void sub_241E25520(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 48) = 1;
}

uint64_t sub_241E25600(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_241E25760(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  *v2 = a1;
  *(v2 + 8) = a2;
  if (a1 == 0x756F446C616E6966 && a2 == 0xEE00726142656C62 || (result = sub_241E35B64(), (result & 1) != 0) || a1 == 0xD000000000000010 && 0x8000000241E3A0B0 == a2 || (result = sub_241E35B64(), (result & 1) != 0) || (result = 0x4272616C75676572, a1 == 0x4272616C75676572) && a2 == 0xEA00000000007261 || (result = sub_241E35B64(), (result & 1) != 0))
  {
    *(v2 + 33) = 1;
  }

  return result;
}

uint64_t sub_241E2587C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_241E35B14();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_241E27FD4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_241E25B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, char a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = a7;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 37) = a11;
  *(a9 + 40) = a12;
  *(a9 + 48) = a13 & 1;
  return result;
}

uint64_t sub_241E25CB4()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 65 && v2 == 0xE100000000000000)
  {
LABEL_11:
    v4 = sub_241E35B64() ^ 1;
    return v4 & 1;
  }

  if ((sub_241E35B64() & 1) == 0)
  {
    if (v1 == 71 && v2 == 0xE100000000000000)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_11;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_241E25D48(uint64_t a1)
{
  v4 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {
    goto LABEL_2;
  }

  v14 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = *(v15 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = v15 + 56 * v16;
  v18 = *(v17 - 8);
  v19 = *(v17 + 8);
  v20 = *(v17 - 24);
  v50 = *(v17 + 24);
  v48 = v18;
  v49 = v19;
  v47 = v20;
  v21 = v20;
  if (v20 != __PAIR128__(0xE100000000000000, 65))
  {
    if (sub_241E35B64())
    {
      goto LABEL_2;
    }

    if (v21 == __PAIR128__(0xE100000000000000, 71))
    {
      goto LABEL_13;
    }
  }

  if ((sub_241E35B64() & 1) == 0)
  {
LABEL_13:
    swift_beginAccess();
    sub_241E2B4A0(&v47, &v43);
    sub_241E2A4D4(v1 + v4, a1);
    v2 = *(v1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_14:
      v23 = *(v2 + 2);
      v24 = *(v2 + 3);
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        v32 = v2;
        v33 = *(v2 + 2);
        v34 = sub_241E27B64((v24 > 1), v23 + 1, 1, v32);
        v23 = v33;
        v2 = v34;
      }

      *(v2 + 2) = v25;
      v26 = &v2[56 * v23];
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v26[80] = v50;
      *(v26 + 3) = v28;
      *(v26 + 4) = v29;
      *(v26 + 2) = v27;
      *(v1 + v4) = v2;
      swift_endAccess();
      result = swift_beginAccess();
      if (!*(*(v1 + v14) + 16))
      {
        __break(1u);
        return result;
      }

      sub_241E296D8(&v39);
      if (*(&v39 + 1))
      {
        v43 = v39;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v38 = v42;
        v35 = v39;
        v36 = v40;
        v37 = v41;
      }

      else
      {
        sub_241E2B584(v39, 0);
        sub_241E29630(*(*(v1 + v14) + 16) - 1, &v43);
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v38 = v46;
      }

      sub_241E2B4D8(&v35);
      swift_endAccess();
      v30 = *(v1 + v14);
      v31 = *(v30 + 16);
      if (v31 && *(v30 + 56 * v31 + 12) == 1)
      {
        swift_beginAccess();
        sub_241E296D8(&v39);
        if (*(&v39 + 1))
        {
          v43 = v39;
          v44 = v40;
          v45 = v41;
          v46 = v42;
          v38 = v42;
          v35 = v39;
          v36 = v40;
          v37 = v41;
        }

        else
        {
          sub_241E2B584(v39, 0);
          sub_241E29630(*(*(v1 + v14) + 16) - 1, &v43);
          v35 = v43;
          v36 = v44;
          v37 = v45;
          v38 = v46;
        }

        sub_241E2B4D8(&v35);
        swift_endAccess();
      }

      goto LABEL_2;
    }

LABEL_27:
    v2 = sub_241E27B64(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + v4) = v2;
    goto LABEL_14;
  }

LABEL_2:
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_241E2B4A0(a1, &v47);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((v6 & 1) == 0)
  {
    v5 = sub_241E27B64(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_241E27B64((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[56 * v8];
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 32);
  v9[80] = *(a1 + 48);
  *(v9 + 3) = v11;
  *(v9 + 4) = v12;
  *(v9 + 2) = v10;
  *(v1 + v4) = v5;
  return swift_endAccess();
}

uint64_t sub_241E2618C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff) == 49 && *(v0 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff + 8) == 0xE100000000000000;
  if (!v2 && (sub_241E35B64() & 1) == 0)
  {
LABEL_24:
    v29 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
    result = swift_beginAccess();
    v30 = *(v1 + v29);
    if (v30[2] < 2uLL)
    {
LABEL_46:
      __break(1u);
    }

    else
    {
      v31 = v30[11];
      v32 = v30[12];
      result = sub_241E28DC4(v31, v32);
      if ((result & 0x100000000) != 0 || (v33 = result, result = sub_241E28F14(v31, v32), result != 1))
      {
        v33 = 0;
      }

      v34 = *(v1 + v29);
      v35 = *(v34 + 16);
      if (v35 >= 2)
      {
        swift_beginAccess();

        result = sub_241E29F10((v1 + v29), v34 + 32, 2, (2 * v35) | 1);
        v36 = *(*(v1 + v29) + 16);
        if (v36 >= result)
        {
          sub_241E2A2B0(result, v36);
          swift_endAccess();
          v37 = v35 - 2;
          if (v35 != 2)
          {
            v38 = v33;
            v39 = (v34 + 152);
            do
            {
              v41 = *(v39 - 1);
              v42 = *v39;
              v43 = sub_241E28DC4(v41, *v39);
              if ((v43 & 0x100000000) != 0 || (v44 = v43, sub_241E28F14(v41, v42) != 1))
              {
                v44 = 0;
              }

              v45 = v44 - v38;
              if (v44 != v38)
              {
                if (v45 < 0)
                {
                  v45 = v38 - v44;
                }

                v54 = 0x6C61767265746E69;
                v55 = 0xE800000000000000;
                v61 = v45 + 1;
                v46 = sub_241E35B54();
                MEMORY[0x245D01460](v46);

                v48 = v54;
                v47 = v55;
                swift_beginAccess();
                v49 = *(v1 + v29);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v1 + v29) = v49;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v49 = sub_241E27B64(0, *(v49 + 2) + 1, 1, v49);
                  *(v1 + v29) = v49;
                }

                v52 = *(v49 + 2);
                v51 = *(v49 + 3);
                if (v52 >= v51 >> 1)
                {
                  v49 = sub_241E27B64((v51 > 1), v52 + 1, 1, v49);
                }

                LOBYTE(v61) = 1;
                *(v49 + 2) = v52 + 1;
                v40 = &v49[56 * v52];
                *(v40 + 4) = v48;
                *(v40 + 5) = v47;
                *(v40 + 6) = 0;
                *(v40 + 7) = 0xE000000000000000;
                *(v40 + 9) = 0;
                *(v40 + 16) = 0;
                *(v40 + 34) = 0;
                v40[80] = v61;
                *(v1 + v29) = v49;
                swift_endAccess();
              }

              v39 += 7;
              --v37;
            }

            while (v37);
          }
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v3 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v7 = 0;
  v8 = v4 + 32;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = (v8 + 56 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v13 = v10[1];
      v12 = v10[2];
      v14 = *v10;
      v59 = *(v10 + 48);
      v57 = v13;
      v58 = v12;
      v56 = v14;
      v15 = v14;
      if (v14 != __PAIR128__(0xE100000000000000, 65))
      {
        result = sub_241E35B64();
        if (result)
        {
          goto LABEL_10;
        }

        if (v15 == __PAIR128__(0xE100000000000000, 71))
        {
          break;
        }
      }

      result = sub_241E35B64();
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_10:
      ++v11;
      v10 = (v10 + 56);
      if (v5 == v11)
      {
        goto LABEL_22;
      }
    }

    sub_241E2B4A0(&v56, &v54);
    result = swift_isUniquelyReferenced_nonNull_native();
    v60 = v9;
    if ((result & 1) == 0)
    {
      result = sub_241E28B54(0, *(v9 + 16) + 1, 1);
      v9 = v60;
    }

    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_241E28B54((v16 > 1), v17 + 1, 1);
      v9 = v60;
    }

    v7 = v11 + 1;
    *(v9 + 16) = v17 + 1;
    v18 = v9 + 56 * v17;
    v19 = v56;
    v20 = v57;
    v21 = v58;
    *(v18 + 80) = v59;
    *(v18 + 48) = v20;
    *(v18 + 64) = v21;
    *(v18 + 32) = v19;
    v8 = v4 + 32;
  }

  while (v5 - 1 != v11);
LABEL_22:

  v61 = v9;
  sub_241E266A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74708, &qword_241E38F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_241E38B80;
  v22 = *(v1 + v3);
  if (*(v22 + 16))
  {
    v23 = *(v22 + 64);
    v24 = *(v22 + 32);
    v57 = *(v22 + 48);
    v58 = v23;
    v59 = *(v22 + 80);
    v25 = v59;
    v56 = v24;
    v26 = *(v22 + 48);
    *(result + 32) = *(v22 + 32);
    *(result + 48) = v26;
    *(result + 80) = v25;
    *(result + 64) = v23;
    v27 = v61;
    v53 = result;
    sub_241E2B4A0(&v56, &v54);
    sub_241E28958(v27);
    v28 = *(v1 + v3);
    *(v1 + v3) = v53;

    goto LABEL_24;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_241E266A4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_241E29760(v1);
  }

  v2 = 56 * v2 - 24;
  v5 = 1;
  v6 = 32;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v14 = *(v1 + 2);
    if (v5 - 1 >= v14)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v15 = &v1[v6];
    v16 = *&v1[v6];
    v17 = *&v1[v6 + 16];
    v18 = *&v1[v6 + 32];
    v32 = v1[v6 + 48];
    v30 = v17;
    v31 = v18;
    v29 = v16;
    if (v3 >= v14)
    {
      goto LABEL_16;
    }

    v19 = &v1[v2];
    v20 = *&v1[v2];
    v21 = *&v1[v2 + 16];
    v22 = *&v1[v2 + 32];
    v36 = v1[v2 + 48];
    v34 = v21;
    v35 = v22;
    v33 = v20;
    sub_241E2B4A0(&v29, v39);
    sub_241E2B4A0(&v33, v39);
    v23 = *v15;
    v24 = *(v15 + 1);
    v25 = *(v15 + 2);
    v38 = v15[48];
    v37[1] = v24;
    v37[2] = v25;
    v37[0] = v23;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v15[48] = v36;
    *(v15 + 1) = v27;
    *(v15 + 2) = v28;
    *v15 = v26;
    sub_241E2B4D8(v37);
    if (v3 >= *(v1 + 2))
    {
      break;
    }

    v7 = *v19;
    v8 = *(v19 + 1);
    v9 = *(v19 + 2);
    v40 = v19[48];
    v39[1] = v8;
    v39[2] = v9;
    v39[0] = v7;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    v19[48] = v32;
    *(v19 + 1) = v11;
    *(v19 + 2) = v12;
    *v19 = v10;
    sub_241E2B4D8(v39);
LABEL_6:
    --v3;
    v2 -= 56;
    v6 += 56;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_241E26840(uint64_t a1, unint64_t a2, char *a3, char *a4)
{
  v7 = a3;
  v10 = a3 == 0x6D6F6E6F7274656DLL && a4 == 0xE900000000000065;
  if (v10 || (v5 = a4, (sub_241E35B64() & 1) != 0))
  {
    v11 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_needsEqualSign;
    if (*(v4 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_needsEqualSign) == 1)
    {
      v6 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking;
      swift_beginAccess();
      v5 = *(v4 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v6) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_241E27B64(0, *(v5 + 2) + 1, 1, v5);
        *(v4 + v6) = v5;
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      v7 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_241E27B64((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v7;
      v15 = &v5[56 * v14];
      *(v15 + 4) = 0x6C61757165;
      *(v15 + 5) = 0xE500000000000000;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0xE000000000000000;
      *(v15 + 9) = 0;
      *(v15 + 16) = 0;
      *(v15 + 34) = 0;
      v15[80] = 1;
      *(v4 + v6) = v5;
      swift_endAccess();
      *(v4 + v11) = 0;
    }

    v16 = HIBYTE(a2) & 0xF;
    v17 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v18 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      goto LABEL_103;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {

      sub_241E27FD4(a1, a2, 10);
      v101 = v100;

      if ((v101 & 1) == 0)
      {
LABEL_97:
        v63 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking;
        swift_beginAccess();
        v64 = *(v4 + v63);
        if (!sub_241E2B428(v64))
        {
          swift_beginAccess();
          v65 = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v63) = v64;
          if ((v65 & 1) == 0)
          {
            v64 = sub_241E27B64(0, *(v64 + 2) + 1, 1, v64);
            *(v4 + v63) = v64;
          }

          v67 = *(v64 + 2);
          v66 = *(v64 + 3);
          if (v67 >= v66 >> 1)
          {
            v64 = sub_241E27B64((v66 > 1), v67 + 1, 1, v64);
          }

          *(v64 + 2) = v67 + 1;
          v68 = &v64[56 * v67];
          *(v68 + 4) = 0x7265626D756ELL;
          *(v68 + 5) = 0xE600000000000000;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0xE000000000000000;
          *(v68 + 9) = 0;
          *(v68 + 16) = 0;
          *(v68 + 34) = 0;
          v68[80] = 1;
          *(v4 + v63) = v64;
          swift_endAccess();
        }
      }

LABEL_103:

      sub_241E2587C(a1, a2);
      v70 = v69;
      v71 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking;
      swift_beginAccess();
      v72 = *(v4 + v71);

      v73 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v71) = v72;
      if ((v73 & 1) == 0)
      {
        v72 = sub_241E27B64(0, *(v72 + 2) + 1, 1, v72);
        *(v4 + v71) = v72;
      }

      v75 = *(v72 + 2);
      v74 = *(v72 + 3);
      if (v75 >= v74 >> 1)
      {
        v72 = sub_241E27B64((v74 > 1), v75 + 1, 1, v72);
      }

      *(v72 + 2) = v75 + 1;
      v76 = &v72[56 * v75];
      *(v76 + 4) = a1;
      *(v76 + 5) = a2;
      *(v76 + 6) = 0;
      *(v76 + 7) = 0xE000000000000000;
      *(v76 + 32) = 0;
      v76[66] = (v70 & 1) == 0;
      *(v76 + 67) = 0;
      v76[69] = 0;
      *(v76 + 9) = 0;
      v76[80] = 1;
      *(v4 + v71) = v72;
      return swift_endAccess();
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v102[0] = a1;
      v102[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v49 = 0;
            v50 = v102 + 1;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              v52 = (v49 * 10) >> 64;
              v53 = 10 * v49;
              if (v52 != v53 >> 63)
              {
                break;
              }

              v26 = __OFADD__(v53, v51);
              v49 = v53 + v51;
              if (v26)
              {
                break;
              }

              ++v50;
              if (!--v16)
              {
                goto LABEL_96;
              }
            }
          }

          goto LABEL_95;
        }

        goto LABEL_149;
      }

      if (a1 != 45)
      {
        if (v16)
        {
          v58 = 0;
          v59 = v102;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              break;
            }

            v61 = (v58 * 10) >> 64;
            v62 = 10 * v58;
            if (v61 != v62 >> 63)
            {
              break;
            }

            v26 = __OFADD__(v62, v60);
            v58 = v62 + v60;
            if (v26)
            {
              break;
            }

            ++v59;
            if (!--v16)
            {
              goto LABEL_96;
            }
          }
        }

        goto LABEL_95;
      }

      if (v16)
      {
        if (--v16)
        {
          v27 = 0;
          v28 = v102 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = (v27 * 10) >> 64;
            v31 = 10 * v27;
            if (v30 != v31 >> 63)
            {
              break;
            }

            v26 = __OFSUB__(v31, v29);
            v27 = v31 - v29;
            if (v26)
            {
              break;
            }

            ++v28;
            if (!--v16)
            {
              goto LABEL_96;
            }
          }
        }

        goto LABEL_95;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v19 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = sub_241E35B14();
      }

      v20 = *v19;
      if (v20 == 43)
      {
        v16 = v17 - 1;
        if (v17 >= 1)
        {
          if (v17 != 1)
          {
            if (v19)
            {
              v44 = 0;
              v45 = v19 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  goto LABEL_95;
                }

                v47 = (v44 * 10) >> 64;
                v48 = 10 * v44;
                if (v47 != v48 >> 63)
                {
                  goto LABEL_95;
                }

                v26 = __OFADD__(v48, v46);
                v44 = v48 + v46;
                if (v26)
                {
                  goto LABEL_95;
                }

                ++v45;
                if (!--v16)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_87;
          }

          goto LABEL_95;
        }

        goto LABEL_148;
      }

      if (v20 != 45)
      {
        if (v17)
        {
          if (v19)
          {
            v54 = 0;
            while (1)
            {
              v55 = *v19 - 48;
              if (v55 > 9)
              {
                goto LABEL_95;
              }

              v56 = (v54 * 10) >> 64;
              v57 = 10 * v54;
              if (v56 != v57 >> 63)
              {
                goto LABEL_95;
              }

              v26 = __OFADD__(v57, v55);
              v54 = v57 + v55;
              if (v26)
              {
                goto LABEL_95;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_87;
        }

LABEL_95:
        LOBYTE(v16) = 1;
LABEL_96:
        if ((v16 & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_103;
      }

      v16 = v17 - 1;
      if (v17 >= 1)
      {
        if (v17 != 1)
        {
          if (v19)
          {
            v21 = 0;
            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_95;
              }

              v24 = (v21 * 10) >> 64;
              v25 = 10 * v21;
              if (v24 != v25 >> 63)
              {
                goto LABEL_95;
              }

              v26 = __OFSUB__(v25, v23);
              v21 = v25 - v23;
              if (v26)
              {
                goto LABEL_95;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_96;
              }
            }
          }

LABEL_87:
          LOBYTE(v16) = 0;
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      __break(1u);
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if ((v7 != 7955819 || v5 != 0xE300000000000000) && (sub_241E35B64() & 1) == 0)
  {
    if (v7 != 1701669236 || v5 != 0xE400000000000000)
    {
      result = sub_241E35B64();
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    result = sub_241E2587C(a1, a2);
    if (v77)
    {
      return result;
    }

    v11 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentTimeSignature;
    swift_beginAccess();
    v5 = *(v4 + v11);
    if (!sub_241E2B428(v5))
    {
      swift_beginAccess();
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v11) = v5;
      if ((v78 & 1) == 0)
      {
        v5 = sub_241E27B64(0, *(v5 + 2) + 1, 1, v5);
        *(v4 + v11) = v5;
      }

      v80 = *(v5 + 2);
      v79 = *(v5 + 3);
      if (v80 >= v79 >> 1)
      {
        v5 = sub_241E27B64((v79 > 1), v80 + 1, 1, v5);
      }

      *(v5 + 2) = v80 + 1;
      v81 = &v5[56 * v80];
      *(v81 + 4) = 0x7265626D756ELL;
      *(v81 + 5) = 0xE600000000000000;
      *(v81 + 6) = 0;
      *(v81 + 7) = 0xE000000000000000;
      *(v81 + 9) = 0;
      *(v81 + 16) = 0;
      *(v81 + 34) = 0;
      v81[80] = 1;
      *(v4 + v11) = v5;
      swift_endAccess();
    }

    v82 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_elementStack;
    swift_beginAccess();
    v83 = *(v4 + v82);
    v86 = *(v83 + 16);
    v84 = v83 + 16;
    v85 = v86;
    if (v86)
    {
      v87 = (v84 + 16 * v85);
      if (*v87 == 0x7079742D74616562 && v87[1] == 0xE900000000000065)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = sub_241E35B64();
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    swift_beginAccess();

    v96 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v11) = v5;
    if (v96)
    {
LABEL_140:
      v98 = *(v5 + 2);
      v97 = *(v5 + 3);
      if (v98 >= v97 >> 1)
      {
        v5 = sub_241E27B64((v97 > 1), v98 + 1, 1, v5);
      }

      *(v5 + 2) = v98 + 1;
      v99 = &v5[56 * v98];
      *(v99 + 4) = a1;
      *(v99 + 5) = a2;
      *(v99 + 6) = 0;
      *(v99 + 7) = 0xE000000000000000;
      *(v99 + 16) = 0x10000;
      v99[68] = 0;
      v99[69] = v7 & 1;
      *(v99 + 9) = 0;
      v99[80] = 1;
      *(v4 + v11) = v5;
      return swift_endAccess();
    }

LABEL_152:
    v5 = sub_241E27B64(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + v11) = v5;
    goto LABEL_140;
  }

  result = sub_241E2587C(a1, a2);
  if ((v33 & 1) != 0 || !result)
  {
    return result;
  }

  if (result <= 0)
  {
    v11 = 1952541798;
  }

  else
  {
    v11 = 0x7072616873;
  }

  if (result <= 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (result < 0)
  {
    v26 = __OFSUB__(0, result);
    result = -result;
    if (v26)
    {
      __break(1u);
      goto LABEL_152;
    }
  }

  if (result >= 4)
  {
    v6 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentKeySignature;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v6) = v7;
    if (v34)
    {
LABEL_56:
      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v7 = sub_241E27B64((v35 > 1), v36 + 1, 1, v7);
      }

      *(v7 + 2) = v36 + 1;
      v37 = &v7[56 * v36];
      *(v37 + 4) = 0x7265626D756ELL;
      *(v37 + 5) = 0xE600000000000000;
      *(v37 + 6) = 0;
      *(v37 + 7) = 0xE000000000000000;
      *(v37 + 9) = 0;
      *(v37 + 16) = 0;
      *(v37 + 34) = 0;
      v37[80] = 1;
      *(v4 + v6) = v7;
      v38 = *(v7 + 2);
      v39 = *(v7 + 3);

      if (v38 >= v39 >> 1)
      {
        v7 = sub_241E27B64((v39 > 1), v38 + 1, 1, v7);
      }

      *(v7 + 2) = v38 + 1;
      v40 = &v7[56 * v38];
      *(v40 + 4) = a1;
      *(v40 + 5) = a2;
      *(v40 + 6) = 0;
      *(v40 + 7) = 0xE000000000000000;
      *(v40 + 16) = 0x10000;
      *(v40 + 34) = 0;
      *(v40 + 9) = 0;
      v40[80] = 1;
      *(v4 + v6) = v7;
      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      if (v42 >= v41 >> 1)
      {
        v7 = sub_241E27B64((v41 > 1), v42 + 1, 1, v7);
      }

      *(v7 + 2) = v42 + 1;
      v43 = &v7[56 * v42];
      *(v43 + 4) = v11;
      *(v43 + 5) = v5;
      *(v43 + 6) = 0;
      *(v43 + 7) = 0xE000000000000000;
      *(v43 + 9) = 0;
      *(v43 + 16) = 0;
      *(v43 + 34) = 0;
      v43[80] = 1;
      *(v4 + v6) = v7;
      return swift_endAccess();
    }

LABEL_150:
    v7 = sub_241E27B64(0, *(v7 + 2) + 1, 1, v7);
    *(v4 + v6) = v7;
    goto LABEL_56;
  }

  if (result <= 0)
  {
  }

  else
  {
    v89 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentKeySignature;
    v90 = result + 1;
    do
    {
      swift_beginAccess();
      v91 = *(v4 + v89);

      v92 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v89) = v91;
      if ((v92 & 1) == 0)
      {
        v91 = sub_241E27B64(0, *(v91 + 2) + 1, 1, v91);
        *(v4 + v89) = v91;
      }

      v94 = *(v91 + 2);
      v93 = *(v91 + 3);
      if (v94 >= v93 >> 1)
      {
        v91 = sub_241E27B64((v93 > 1), v94 + 1, 1, v91);
      }

      *(v91 + 2) = v94 + 1;
      v95 = &v91[56 * v94];
      *(v95 + 4) = v11;
      *(v95 + 5) = v5;
      *(v95 + 6) = 0;
      *(v95 + 7) = 0xE000000000000000;
      *(v95 + 9) = 0;
      *(v95 + 16) = 0;
      *(v95 + 34) = 0;
      v95[80] = 1;
      *(v4 + v89) = v91;
      swift_endAccess();
      --v90;
    }

    while (v90 > 1);
  }
}

id sub_241E2743C()
{
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_composition] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure] = v1;
  v2 = &v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  v2[48] = 0;
  v3 = &v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking] = v1;
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentKeySignature] = v1;
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentTimeSignature] = v1;
  v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_needsEqualSign] = 0;
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_elementStack] = v1;
  *&v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord] = v1;
  v4 = &v0[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_result];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BRLTBrailleMusicParser.BrailleMusicDelegate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id BRLTBrailleMusicParser.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BRLTBrailleMusicParser();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_241E276C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_241E27724(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = 0x756F446C616E6966;
    v3 = *v2;
    v4 = **v2;
    v5 = (*v2)[1];
    if (v4 == 0x756F446C616E6966 && v5 == 0xEE00726142656C62)
    {
      goto LABEL_17;
    }

    v7 = **v2;
    v8 = (*v2)[1];
    result = sub_241E35B64();
    if (result)
    {
      goto LABEL_17;
    }

    v9 = v4 == 0xD000000000000010 && 0x8000000241E3A0B0 == v5;
    if (v9 || (result = sub_241E35B64(), (result & 1) != 0) || ((result = 0x4272616C75676572, v4 == 0x4272616C75676572) ? (v10 = v5 == 0xEA00000000007261) : (v10 = 0), v10 || (result = sub_241E35B64(), (result & 1) != 0)))
    {
LABEL_17:
      *(v3 + 33) = 1;
    }
  }

  return result;
}

uint64_t sub_241E27824(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_241E2799C()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_241E279A8(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_241E279DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_241E35864();
  v3 = v0[2];
  v4 = v0[3];
  sub_241E35864();
  v5 = *(v0 + 32);
  sub_241E35BA4();
  v6 = *(v0 + 33);
  sub_241E35BA4();
  v7 = *(v0 + 34);
  sub_241E35BA4();
  v8 = *(v0 + 35);
  sub_241E35BA4();
  v9 = *(v0 + 36);
  sub_241E35BA4();
  v10 = *(v0 + 37);
  sub_241E35BA4();
  if (*(v0 + 48) == 1)
  {
    return sub_241E35BA4();
  }

  v12 = v0[5];
  sub_241E35BA4();
  return MEMORY[0x245D01730](v12);
}

uint64_t sub_241E27A88()
{
  sub_241E35B84();
  sub_241E279DC();
  return sub_241E35BB4();
}

uint64_t sub_241E27ACC()
{
  sub_241E35B84();
  sub_241E279DC();
  return sub_241E35BB4();
}

BOOL sub_241E27B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_241E2B1A0(v5, v7);
}

char *sub_241E27B64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74708, &qword_241E38F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241E27C88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74710, &qword_241E38F48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74758, &qword_241E38F78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241E27DBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74748, &unk_241E38F68);
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

BOOL sub_241E27EC8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_241E35B64() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_241E35B64() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)) & 1) != 0 || ((*(a1 + 36) ^ *(a2 + 36)) & 1) != 0 || ((*(a1 + 37) ^ *(a2 + 37)) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return *(a2 + 48) != 0;
}

unsigned __int8 *sub_241E27FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241E35974();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_241E28560();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_241E35B14();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_241E28560()
{
  v0 = sub_241E35984();
  v4 = sub_241E285E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_241E285E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_241E35854();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_241E35A24();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_241E22DD0(v9, 0);
  v12 = sub_241E28738(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_241E35854();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_241E35B14();
LABEL_4:

  return sub_241E35854();
}

unint64_t sub_241E28738(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_241E11D34(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241E35914();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_241E35B14();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_241E11D34(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_241E358F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_241E28958(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_241E27B64(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_241E28A50(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_241E27C88(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74758, &qword_241E38F78);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_241E28B54(char *a1, int64_t a2, char a3)
{
  result = sub_241E28B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241E28B74(char *a1, int64_t a2, char a3)
{
  result = sub_241E28CB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241E28B94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74708, &qword_241E38F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241E28CB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74750, &qword_241E38B90);
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

unint64_t sub_241E28DC4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_241E11B14(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_241E35AD4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_241E35B14() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_241E28F14(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_241E29164(0xFuLL, a1, a2);
  v8 = sub_241E29164(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_241E35844();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_241E35B14();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_241E35834();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_241E35B14();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_241E29164(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_241E291FC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_241E11C20(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_241E291FC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_241E11D34(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_241E29270@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_241E35984();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_241E27DBC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_241E27DBC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_241E35954();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_241E35884();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_241E35884();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_241E35984();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_241E27DBC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_241E35984();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_241E27DBC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_241E27DBC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_241E35884();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241E29630@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_241E29760(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_241E296D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 56 * v5;
      v8 = *(v7 - 8);
      *a1 = *(v7 - 24);
      *(a1 + 16) = v8;
      *(a1 + 32) = *(v7 + 8);
      *(a1 + 48) = *(v7 + 24);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_241E29760(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241E29788(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_241E358D4();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_241E29850(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC74620, &qword_241E38DE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_241E298D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v1 = sub_241E35764();
  v2 = [v0 initWithData_];

  v3 = [objc_allocWithZone(type metadata accessor for BRLTBrailleMusicParser.BrailleMusicDelegate()) init];
  [v2 setDelegate_];
  if ([v2 parse])
  {

    v4 = &v3[OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_result];
    swift_beginAccess();
    v5 = *v4;
    v6 = *(v4 + 1);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_241E299F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_elementStack;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_241E0EDB0(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_241E0EDB0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v2 + v5) = v6;
  swift_endAccess();
  if (a1 == 1702129518 && a2 == 0xE400000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v11 = v2 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
    result = swift_beginAccess();
    if (!*(v11 + 8))
    {
      v13 = *v11;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v17 = *(v11 + 40);
      *v11 = xmmword_241E38DF0;
      *(v11 + 16) = xmmword_241E38DF0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      v18 = *(v11 + 48);
      *(v11 + 48) = 1;
      return sub_241E2B584(v13, 0);
    }

    return result;
  }

  if (a1 == 1953719666 && a2 == 0xE400000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v19 = v2 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
    result = swift_beginAccess();
    if (!*(v19 + 8))
    {
      return result;
    }

    v21 = sub_241E254C0();
    if (*(v20 + 8))
    {
      *(v20 + 32) = 1;
    }

    return (v21)(v24, 0);
  }

  if (a1 == 0x64726F6863 && a2 == 0xE500000000000000 || (result = sub_241E35B64(), (result & 1) != 0))
  {
    v22 = v2 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
    result = swift_beginAccess();
    if (*(v22 + 8))
    {
      v21 = sub_241E254C0();
      if (*(v23 + 8))
      {
        *(v23 + 35) = 1;
      }

      return (v21)(v24, 0);
    }
  }

  return result;
}

uint64_t sub_241E29C94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  else
  {
    v8 = result;
    if (a4 <= v7)
    {
      v9 = a5 >> 1;
    }

    else
    {
      v9 = a4;
    }

    v10 = v9 - a4;
    v11 = (a3 + 56 * a4);
    v12 = ~a4 + v7;
    while (v10)
    {
      v13 = v11[1];
      v26[0] = *v11;
      v26[1] = v13;
      v15 = *v11;
      v14 = v11[1];
      v26[2] = v11[2];
      v27 = *(v11 + 48);
      v22 = v15;
      v23 = v14;
      v24 = v11[2];
      v25 = *(v11 + 48);
      sub_241E2B4A0(v26, &v18);
      v16 = v8(&v22);
      if (v5)
      {
        v18 = v22;
        v19 = v23;
        v20 = v24;
        v21 = v25;
        sub_241E2B4D8(&v18);
        return v6 & 1;
      }

      v6 = v16;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      result = sub_241E2B4D8(&v18);
      v17 = v12 != 0;
      --v10;
      v11 = (v11 + 56);
      --v12;
      if ((v17 & ~v6 & 1) == 0)
      {
        return v6 & 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241E29DD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  for (i = (a1 + 32); ; i = (i + 56))
  {
    v10 = i[1];
    v20[0] = *i;
    v11 = *i;
    v12 = i[1];
    v13 = i[2];
    v20[1] = v10;
    v20[2] = v13;
    v21 = *(i + 48);
    v19 = *(i + 48);
    v18[0] = v11;
    v18[1] = v12;
    v18[2] = i[2];
    MEMORY[0x28223BE20]();
    v16[2] = v18;
    sub_241E2B4A0(v20, v17);
    v14 = sub_241E29C94(sub_241E2CC2C, v16, a2, a3, a4);
    sub_241E2B4D8(v20);
    if (v14)
    {
      break;
    }

    if (v4 == ++v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_241E29F10(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = *a1;
  result = sub_241E29DD4(*a1, a2, a3, a4);
  v65 = v5;
  if (v5)
  {
    return v4;
  }

  if (v12)
  {
    return *(v10 + 16);
  }

  v4 = result;
  v47 = a1;
  v49 = a2;
  v50 = a3;
  v13 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v15 = (v10 + 16);
    v14 = *(v10 + 16);
    if (v13 == v14)
    {
      return v4;
    }

    v48 = a4;
    v16 = 56 * result + 88;
    while (v13 < v14)
    {
      v24 = v10 + v16;
      v25 = *(v10 + v16);
      v26 = *(v10 + v16 + 16);
      v27 = *(v10 + v16 + 32);
      v64 = *(v10 + v16 + 48);
      v63[1] = v26;
      v63[2] = v27;
      v63[0] = v25;
      v59 = v25;
      v60 = v26;
      v61 = v27;
      v62 = v64;
      MEMORY[0x28223BE20]();
      v46[2] = &v59;
      sub_241E2B4A0(v63, &v55);
      v28 = v65;
      v29 = sub_241E29C94(sub_241E2B508, v46, v49, v50, v48);
      v65 = v28;
      result = sub_241E2B4D8(v63);
      if ((v29 & 1) == 0)
      {
        if (v13 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v30 = *v15;
          if (v4 >= *v15)
          {
            goto LABEL_24;
          }

          v31 = 56 * v4;
          v32 = v10 + 32 + 56 * v4;
          v33 = *v32;
          v34 = *(v32 + 16);
          v35 = *(v32 + 32);
          v58 = *(v32 + 48);
          v56 = v34;
          v57 = v35;
          v55 = v33;
          if (v13 >= v30)
          {
            goto LABEL_25;
          }

          v36 = *v24;
          v37 = *(v24 + 16);
          v38 = *(v24 + 32);
          v62 = *(v24 + 48);
          v60 = v37;
          v61 = v38;
          v59 = v36;
          sub_241E2B4A0(&v55, v53);
          sub_241E2B4A0(&v59, v53);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_241E29760(v10);
            v10 = result;
          }

          if (v4 >= *(v10 + 16))
          {
            goto LABEL_26;
          }

          v39 = v10 + v31;
          v40 = *(v10 + v31 + 32);
          v41 = *(v10 + v31 + 48);
          v42 = *(v10 + v31 + 64);
          v52 = *(v10 + v31 + 80);
          v51[1] = v41;
          v51[2] = v42;
          v51[0] = v40;
          v43 = v59;
          v44 = v60;
          v45 = v61;
          *(v39 + 80) = v62;
          *(v39 + 48) = v44;
          *(v39 + 64) = v45;
          *(v39 + 32) = v43;
          result = sub_241E2B4D8(v51);
          if (v13 >= *(v10 + 16))
          {
            goto LABEL_27;
          }

          v17 = v10 + v16;
          v18 = *(v10 + v16);
          v19 = *(v10 + v16 + 16);
          v20 = *(v10 + v16 + 32);
          v54 = *(v10 + v16 + 48);
          v53[1] = v19;
          v53[2] = v20;
          v53[0] = v18;
          v21 = v55;
          v22 = v56;
          v23 = v57;
          *(v17 + 48) = v58;
          *(v17 + 16) = v22;
          *(v17 + 32) = v23;
          *v17 = v21;
          result = sub_241E2B4D8(v53);
          *v47 = v10;
        }

        ++v4;
      }

      ++v13;
      v15 = (v10 + 16);
      v14 = *(v10 + 16);
      v16 += 56;
      if (v13 == v14)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_241E2A1DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  v15 = &v13[56 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_241E2A2B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_241E27B64(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_241E2A1DC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_241E2A370(uint64_t *a1)
{

  if ((sub_241E35B64() & 1) == 0)
  {
    sub_241E35B64();
  }

  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_241E27B64(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v5 >= v4 >> 1)
  {
    result = sub_241E27B64((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v5 + 1;
  v6 = v2 + 56 * v5;
  *(v6 + 32) = 0x4272616C75676572;
  *(v6 + 40) = 0xEA00000000007261;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0xE000000000000000;
  *(v6 + 64) = 256;
  *(v6 + 72) = 0;
  *(v6 + 66) = 0;
  *(v6 + 80) = 1;
  *a1 = v2;
  return result;
}

uint64_t sub_241E2A4D4(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 48) & 1) == 0)
  {
    v2 = result;
    v8 = *(a2 + 40);
    v3 = sub_241E35B54();
    MEMORY[0x245D01460](v3);

    v4 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241E27B64(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_241E27B64((v5 > 1), v6 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 56 * v6;
    *(v7 + 32) = 0x65766174636FLL;
    *(v7 + 40) = 0xE600000000000000;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0xE000000000000000;
    *(v7 + 64) = 0;
    *(v7 + 68) = 1;
    *(v7 + 72) = 0;
    *(v7 + 80) = 1;
    *v2 = v4;
  }

  return result;
}

uint64_t sub_241E2A5FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 40); ; i += 7)
  {
    v4 = *(i - 1);
    v5 = *i;
    if (v4 == 65 && v5 == 0xE100000000000000)
    {
      goto LABEL_3;
    }

    v7 = *(i - 1);
    v8 = *i;
    if ((sub_241E35B64() & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (!--v1)
    {
      return 0;
    }
  }

  if (v4 != 71 || v5 != 0xE100000000000000)
  {
LABEL_3:
    v3 = 1;
    if ((sub_241E35B64() & 1) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t sub_241E2A6B0(void *a1, uint64_t a2)
{
  v5 = v2;
  v8 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_elementStack;
  swift_beginAccess();
  v9 = *(v5 + v8);
  if (*(v9 + 2))
  {
    v10 = *(v5 + v8);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = *(v9 + 2);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_71:
      __break(1u);
LABEL_72:
      a1 = sub_241E27C88(0, a1[2] + 1, 1, a1);
      *(v5 + v4) = a1;
LABEL_21:
      v37 = a1[2];
      v36 = a1[3];
      if (v37 >= v36 >> 1)
      {
        a1 = sub_241E27C88((v36 > 1), v37 + 1, 1, a1);
      }

      a1[2] = v37 + 1;
      a1[v37 + 4] = a2;
      *(v5 + v4) = a1;
      swift_endAccess();
      v38 = *(v5 + v3);
      *(v5 + v3) = MEMORY[0x277D84F90];
    }
  }

  else
  {
    __break(1u);
  }

  v9 = sub_241E29774(v9);
  v11 = *(v9 + 2);
  if (!v11)
  {
    goto LABEL_71;
  }

LABEL_4:
  v12 = v11 - 1;
  v13 = *&v9[16 * v12 + 40];
  *(v9 + 2) = v12;
  *(v5 + v8) = v9;
  swift_endAccess();

  if (a1 == 0x6572757361656DLL && a2 == 0xE700000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v14 = v5 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
    swift_beginAccess();
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *v14;
      v17 = *(v14 + 48);
      v109 = v17 & 1;
      v18 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
      v100 = *(v14 + 32);
      v101 = *(v14 + 16);
      v19 = vdupq_lane_s64(v100, 0);
      v20 = vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_241E38E10), vshlq_u64(v19, xmmword_241E38E00)));
      swift_beginAccess();
      v21 = *(v5 + v18);
      v110 = v16;
      v111 = v15;
      v112 = v101;
      v113 = v100;
      v114 = v17;
      sub_241E2B4A0(&v110, &v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v18) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_241E27B64(0, *(v21 + 2) + 1, 1, v21);
        *(v5 + v18) = v21;
      }

      v23 = v101;
      v24 = vand_s8(v20, 0x1000100010001);
      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v26 >= v25 >> 1)
      {
        v94 = sub_241E27B64((v25 > 1), v26 + 1, 1, v21);
        v23 = v101;
        v21 = v94;
      }

      *(v21 + 2) = v26 + 1;
      v27 = &v21[56 * v26];
      *(v27 + 4) = v16;
      *(v27 + 5) = v15;
      *(v27 + 6) = v23;
      *(v27 + 7) = *(&v101 + 1);
      v27[64] = v100 & 1;
      *(v27 + 65) = vuzp1_s8(v24, v23).u32[0];
      v27[69] = BYTE5(v100) & 1;
      *(v27 + 9) = *(&v100 + 1);
      v27[80] = v109;
      *(v5 + v18) = v21;
      swift_endAccess();
    }

    v28 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
    swift_beginAccess();
    if (*(*(v5 + v28) + 16))
    {
      sub_241E2618C();
      v29 = *(v5 + v28);
      swift_beginAccess();

      sub_241E28958(v30);
      swift_endAccess();
      v31 = *(v5 + v28);
      *(v5 + v28) = MEMORY[0x277D84F90];
    }

    v3 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
    swift_beginAccess();
    a2 = *(v5 + v3);
    v32 = *(a2 + 16) + 1;
    v33 = 65;
    while (--v32)
    {
      v34 = *(a2 + v33);
      v33 += 56;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    swift_beginAccess();
    sub_241E2A370((v5 + v3));
    swift_endAccess();
    a2 = *(v5 + v3);
LABEL_20:
    v4 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_composition;
    swift_beginAccess();
    a1 = *(v5 + v4);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v4) = a1;
    if (v35)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

  if (a1 == 7955819 && a2 == 0xE300000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v40 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentKeySignature;
    goto LABEL_29;
  }

  if (a1 == 0x6D6F6E6F7274656DLL && a2 == 0xE900000000000065 || (sub_241E35B64() & 1) != 0)
  {
    v40 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking;
    goto LABEL_29;
  }

  if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v40 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentTimeSignature;
LABEL_29:
    result = swift_beginAccess();
    if (*(*(v5 + v40) + 16))
    {
      swift_beginAccess();
      sub_241E2A370((v5 + v40));
      return swift_endAccess();
    }

    return result;
  }

  if (a1 == 1702129518 && a2 == 0xE400000000000000 || (sub_241E35B64() & 1) != 0)
  {
    v41 = v5 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
    result = swift_beginAccess();
    v42 = *(v41 + 8);
    if (!v42)
    {
      __break(1u);
      goto LABEL_87;
    }

    v43 = *v41;
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    v46 = *(v41 + 32);
    if (*v41 != 65 || v42 != 0xE100000000000000)
    {
      v47 = *v41;
      v48 = *(v41 + 8);
      result = sub_241E35B64();
      if (result)
      {
LABEL_48:
        if ((v46 & 1) == 0 || !v45 && v44 == 0xE000000000000000)
        {
          goto LABEL_85;
        }

        result = sub_241E35B64();
        if (result)
        {
          goto LABEL_85;
        }

LABEL_59:
        v49 = *(v41 + 8);
        if (v49)
        {
          v50 = *(v41 + 32);
          if ((v50 & 0x1000000) != 0)
          {
            v51 = *(v41 + 40);
            v53 = *(v41 + 16);
            v52 = *(v41 + 24);
            v54 = *v41;
            v55 = *(v41 + 48);
            v56 = *(v41 + 32) & 1;
            v109 = v55 & 1;
            v110 = v54;
            v111 = v49;
            *&v112 = v53;
            *(&v112 + 1) = v52;
            LOWORD(v113) = v50 & 0x101;
            BYTE2(v113) = BYTE2(v50) & 1;
            BYTE3(v113) = BYTE3(v50) & 1;
            BYTE4(v113) = BYTE4(v50) & 1;
            BYTE5(v113) = BYTE5(v50) & 1;
            *(&v113 + 1) = v51;
            v114 = v55 & 1;
            v104 = v54;
            v105 = v49;
            *&v106 = v53;
            *(&v106 + 1) = v52;
            *&v107 = v50;
            *(&v107 + 1) = v51;
            v108 = v55;
            sub_241E2B4A0(&v104, v102);
            sub_241E25D48(&v110);
            sub_241E2B584(v54, v49);
LABEL_85:
            v87 = *v41;
            v88 = *(v41 + 8);
            v89 = *(v41 + 16);
            v90 = *(v41 + 24);
            v91 = *(v41 + 32);
            v92 = *(v41 + 40);
            *v41 = 0u;
            *(v41 + 16) = 0u;
            *(v41 + 32) = 0u;
            v93 = *(v41 + 48);
            *(v41 + 48) = 0;
            return sub_241E2B584(v87, v88);
          }

          v57 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
          result = swift_beginAccess();
          if (*(*(v5 + v57) + 16))
          {
            sub_241E2618C();
            v58 = *(v5 + v57);
            swift_beginAccess();

            sub_241E28958(v59);
            swift_endAccess();
            v60 = *(v5 + v57);
            *(v5 + v57) = MEMORY[0x277D84F90];
          }

          v61 = *(v41 + 8);
          if (v61)
          {
            v62 = *v41;
            if (*v41 == 65 && v61 == 0xE100000000000000)
            {
              goto LABEL_67;
            }

            v63 = *v41;
            v64 = *(v41 + 8);
            result = sub_241E35B64();
            if (result)
            {
              goto LABEL_79;
            }

            if (v62 != 71 || v61 != 0xE100000000000000)
            {
LABEL_67:
              result = sub_241E35B64();
              if (result)
              {
LABEL_79:
                v71 = *(v41 + 8);
                if (v71)
                {
                  v72 = *v41;
                  v73 = *(v41 + 48);
                  v74 = *(v41 + 32);
                  v75 = *(v41 + 40);
                  v76 = *(v41 + 24);
                  v95 = *(v41 + 16);
                  v77 = vdupq_n_s64(v74);
                  v99 = v74 & 1;
                  v78 = vmovn_s32(vuzp1q_s32(vshlq_u64(v77, xmmword_241E38E10), vshlq_u64(v77, xmmword_241E38E00)));
                  v97 = (v74 >> 40) & 1;
                  v103 = v73 & 1;
                  v79 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
                  swift_beginAccess();
                  v80 = *(v5 + v79);
                  v104 = v72;
                  v105 = v71;
                  *&v106 = v95;
                  *(&v106 + 1) = v76;
                  *&v107 = v74;
                  *(&v107 + 1) = v75;
                  v108 = v73;
                  sub_241E2B4A0(&v104, v102);
                  v81 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v79) = v80;
                  if ((v81 & 1) == 0)
                  {
                    v80 = sub_241E27B64(0, *(v80 + 2) + 1, 1, v80);
                    *(v5 + v79) = v80;
                  }

                  v83 = vand_s8(v78, 0x1000100010001);
                  v85 = *(v80 + 2);
                  v84 = *(v80 + 3);
                  if (v85 >= v84 >> 1)
                  {
                    v80 = sub_241E27B64((v84 > 1), v85 + 1, 1, v80);
                  }

                  *(v80 + 2) = v85 + 1;
                  v86 = &v80[56 * v85];
                  *(v86 + 4) = v72;
                  *(v86 + 5) = v71;
                  *(v86 + 6) = v95;
                  *(v86 + 7) = v76;
                  v86[64] = v99;
                  *(v86 + 65) = vuzp1_s8(v83, v82).u32[0];
                  v86[69] = v97;
                  *(v86 + 9) = v75;
                  v86[80] = v103;
                  *(v5 + v79) = v80;
                  swift_endAccess();
                  goto LABEL_85;
                }

                goto LABEL_89;
              }
            }

            v65 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
            swift_beginAccess();
            result = sub_241E2A5FC(*(v5 + v65));
            if ((result & 1) == 0)
            {
              v66 = *(v41 + 8);
              if (!v66)
              {
LABEL_90:
                __break(1u);
                return result;
              }

              v67 = *v41;
              v68 = *(v41 + 48);
              v103 = v68 & 1;
              v110 = v67;
              v111 = v66;
              v69 = *(v41 + 32);
              v98 = *(v41 + 16);
              v114 = v68 & 1;
              v112 = v98;
              LOBYTE(v113) = v69 & 1;
              v70 = vdupq_lane_s64(v69, 0);
              *v70.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v70, xmmword_241E38E10), vshlq_u64(v70, xmmword_241E38E00))), 0x1000100010001);
              *(&v113 + 1) = vuzp1_s8(*v70.i8, *v70.i8).u32[0];
              BYTE5(v113) = BYTE5(v69) & 1;
              v96 = v69;
              *(&v113 + 1) = *(&v69 + 1);
              swift_beginAccess();
              v104 = v67;
              v105 = v66;
              v106 = v98;
              v107 = v96;
              v108 = v68;
              sub_241E2B4A0(&v104, v102);
              sub_241E2A4D4(v5 + v65, &v110);
              swift_endAccess();
              result = sub_241E2B584(v67, v66);
            }

            goto LABEL_79;
          }

LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v43 == 71 && v42 == 0xE100000000000000)
      {
        goto LABEL_59;
      }
    }

    result = sub_241E35B64();
    if ((result & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  result = 0x696E752D74616562;
  if (a1 == 0x696E752D74616562 && a2 == 0xE900000000000074 || (result = sub_241E35B64(), (result & 1) != 0))
  {
    *(v5 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_needsEqualSign) = 1;
  }

  return result;
}

BOOL sub_241E2B1A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_241E35B64() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_241E35B64() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)) & 1) != 0 || ((*(a1 + 36) ^ *(a2 + 36)) & 1) != 0 || ((*(a1 + 37) ^ *(a2 + 37)) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

unint64_t sub_241E2B2A0()
{
  result = qword_27EC74630;
  if (!qword_27EC74630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74630);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_241E2B380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_241E2B3C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_241E2B428(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    if (*(v1 - 1) == 0x7265626D756ELL && *v1 == 0xE600000000000000)
    {
      break;
    }

    v1 += 7;
  }

  while ((sub_241E35B64() & 1) == 0);
  return v2 != 0;
}

BOOL sub_241E2B524(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  return sub_241E27EC8(v6, v8);
}

uint64_t sub_241E2B584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_241E2B5C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_241E35744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[8] = a1;
  v74[9] = a2;
  sub_241E35734();
  sub_241E0F234();
  v11 = sub_241E35A44();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
  }

  v15 = v3 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentNote;
  swift_beginAccess();
  v16 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_elementStack;
  if (*(v15 + 8))
  {
    swift_beginAccess();
    v17 = *(v3 + v16);
    v20 = *(v17 + 16);
    v18 = v17 + 16;
    v19 = v20;
    if (v20)
    {
      v21 = (v18 + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = *v21 == 1885697139 && v23 == 0xE400000000000000;
      if (v24 || (sub_241E35B64() & 1) != 0)
      {
        swift_beginAccess();
        result = *(v15 + 8);
        if (result)
        {
          *v15 = v11;
          *(v15 + 8) = v13;

          v26 = v11 == 0x756F446C616E6966 && v13 == 0xEE00726142656C62;
          if (v26 || (sub_241E35B64() & 1) != 0 || v11 == 0xD000000000000010 && 0x8000000241E3A0B0 == v13 || (sub_241E35B64() & 1) != 0 || v11 == 0x4272616C75676572 && v13 == 0xEA00000000007261 || (sub_241E35B64() & 1) != 0)
          {
            *(v15 + 33) = 1;
          }

          return swift_endAccess();
        }

        __break(1u);
        goto LABEL_93;
      }

      v51 = v22 == 0x65766174636FLL && v23 == 0xE600000000000000;
      if (v51 || (result = sub_241E35B64(), (result & 1) != 0))
      {

        result = sub_241E2587C(v11, v13);
        if (!*(v15 + 8))
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v52)
        {
          v53 = 0;
        }

        else
        {
          v53 = result;
        }

        *(v15 + 40) = v53;
        *(v15 + 48) = 0;
      }

      else
      {
        v54 = v22 == 1701869940 && v23 == 0xE400000000000000;
        if (v54 || (result = sub_241E35B64(), (result & 1) != 0))
        {
          if (!*(v15 + 8))
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v55 = *(v15 + 24);
          *(v15 + 16) = v11;
          *(v15 + 24) = v13;
        }

        else
        {
          v56 = v22 == 0x6666617473 && v23 == 0xE500000000000000;
          if (v56 || (sub_241E35B64() & 1) != 0)
          {
            v57 = (v3 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff);
            if ((v11 != *(v3 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff) || v13 != *(v3 + OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentStaff + 8)) && (sub_241E35B64() & 1) == 0)
            {
              v58 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentChord;
              swift_beginAccess();
              if (*(*(v3 + v58) + 16))
              {
                sub_241E2618C();
                v59 = *(v3 + v58);
                swift_beginAccess();

                sub_241E28958(v60);
                swift_endAccess();
                v61 = *(v3 + v58);
                *(v3 + v58) = MEMORY[0x277D84F90];
              }

              v62 = 0xE900000000000064;
              v63 = v57[1];
              v64 = 0x6E61487468676972;
              *v57 = v11;
              v57[1] = v13;

              if (v11 == 49 && v13 == 0xE100000000000000)
              {
              }

              else
              {
                v65 = sub_241E35B64();

                if ((v65 & 1) == 0)
                {
                  v64 = 0x646E61487466656CLL;
                  v62 = 0xE800000000000000;
                }
              }

              v66 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMeasure;
              swift_beginAccess();
              v67 = *(v3 + v66);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + v66) = v67;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v67 = sub_241E27B64(0, *(v67 + 2) + 1, 1, v67);
                *(v3 + v66) = v67;
              }

              v70 = *(v67 + 2);
              v69 = *(v67 + 3);
              if (v70 >= v69 >> 1)
              {
                v67 = sub_241E27B64((v69 > 1), v70 + 1, 1, v67);
              }

              v73 = 1;
              *(v67 + 2) = v70 + 1;
              v71 = &v67[56 * v70];
              *(v71 + 4) = v64;
              *(v71 + 5) = v62;
              *(v71 + 6) = 0;
              *(v71 + 7) = 0xE000000000000000;
              *(v71 + 9) = 0;
              *(v71 + 16) = 0;
              *(v71 + 34) = 0;
              v71[80] = v73;
              *(v3 + v66) = v67;
              return swift_endAccess();
            }
          }
        }
      }
    }
  }

  v27 = swift_beginAccess();
  v28 = *(v3 + v16);
  v31 = *(v28 + 16);
  v29 = v28 + 16;
  v30 = v31;
  if (!v31 || ((v32 = (v29 + 16 * v30), *v32 == 0x6C7974732D726162) ? (v33 = v32[1] == 0xE900000000000065) : (v33 = 0), !v33 && (v27 = sub_241E35B64(), (v27 & 1) == 0)))
  {
LABEL_37:
    v43 = *(v3 + v16);
    v46 = *(v43 + 16);
    v44 = v43 + 16;
    v45 = v46;
    if (v46 >= 2)
    {
      v49 = v44 + 16 * v45;
      v47 = *(v49 - 16);
      v48 = *(v49 - 8);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
    }

    v74[0] = v47;
    v74[1] = v48;
    MEMORY[0x28223BE20](v27);
    *(&v72 - 2) = v74;
    v50 = sub_241E25600(sub_241E2CB64, (&v72 - 4), &unk_2853FD048);
    swift_arrayDestroy();
    if (v50)
    {
      sub_241E26840(v11, v13, v47, v48);
    }
  }

  v34 = *v15;
  v35 = *(v15 + 8);
  v36 = *(v15 + 16);
  v37 = *(v15 + 24);
  v38 = *(v15 + 32);
  v39 = *(v15 + 40);
  *v15 = xmmword_241E38DF0;
  *(v15 + 16) = xmmword_241E38DF0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  v40 = *(v15 + 48);
  *(v15 + 48) = 1;
  sub_241E2B584(v34, v35);
  if (v11 == 0x65682D746867696CLL && v13 == 0xEB00000000797661 || (sub_241E35B64() & 1) != 0)
  {
    result = *(v15 + 8);
    if (!result)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v41 = 0x756F446C616E6966;
    v42 = 0xEE00726142656C62;
    goto LABEL_36;
  }

  if (v11 == 0x696C2D7976616568 && v13 == 0xEB00000000746867 || (sub_241E35B64() & 1) != 0)
  {
    swift_beginAccess();
    result = *(v15 + 8);
    if (!result)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    *v15 = 0xD000000000000015;
    *(v15 + 8) = 0x8000000241E3A070;

    if (sub_241E35B64() & 1) != 0 || (sub_241E35B64() & 1) != 0 || (sub_241E35B64())
    {
      *(v15 + 33) = 1;
    }

    v27 = swift_endAccess();
    goto LABEL_37;
  }

  result = *(v15 + 8);
  if (result)
  {
    v41 = 0x4272616C75676572;
    v42 = 0xEA00000000007261;
LABEL_36:
    *v15 = v41;
    *(v15 + 8) = v42;
    *(v15 + 33) = 1;

    goto LABEL_37;
  }

LABEL_97:
  __break(1u);
  return result;
}

void sub_241E2BE94(uint64_t a1)
{
  v107 = 0;
  v108 = 0xE000000000000000;
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v105 = 0;
  v106 = 0xE000000000000000;
  if (*(a1 + 32))
  {
    v5 = *sub_241E24DDC();
    *&v112 = 0x2D74736572;
    *(&v112 + 1) = 0xE500000000000000;

    MEMORY[0x245D01460](v3, v4);
    if (*(v5 + 16))
    {
      v6 = sub_241E22FD8(v112, *(&v112 + 1));
      v8 = v7;

      if (v8)
      {
        v9 = (*(v5 + 56) + 16 * v6);
        v11 = *v9;
        v10 = v9[1];

LABEL_49:
        v60 = 0;
        v105 = v11;
        v106 = v10;
        goto LABEL_59;
      }
    }

    else
    {
    }

    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_49;
  }

  v13 = *(a1 + 34);

  if ((v13 & 1) == 0)
  {
    v52 = sub_241E24D0C();
    v53 = v52;
    v54 = *v52;
    if (*(*v52 + 16) && (v55 = *v52, , v56 = sub_241E22FD8(v1, v2), v58 = v57, , (v58 & 1) != 0))
    {
      v59 = (*(v54 + 56) + 16 * v56);
      v11 = *v59;
      v10 = v59[1];
    }

    else
    {

      v11 = 0;
      v10 = 0xE000000000000000;
    }

    v105 = v11;
    v106 = v10;
    v62 = *v53;
    if (*(*v53 + 16))
    {
      v63 = *v53;

      v64 = sub_241E22FD8(v3, v4);
      if (v65)
      {
        v66 = (*(v62 + 56) + 16 * v64);
        v60 = *v66;
        v61 = v66[1];

LABEL_60:
        *&v112 = v11;
        *(&v112 + 1) = v10;

        MEMORY[0x245D01460](v60, v61);

        v68 = HIBYTE(*(&v112 + 1)) & 0xFLL;
        if ((*(&v112 + 1) & 0x2000000000000000) == 0)
        {
          v68 = v112 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          *&v112 = 32;
          *(&v112 + 1) = 0xE100000000000000;
          MEMORY[0x28223BE20](v67);
          v97[2] = &v112;
          v71 = sub_241E29270(0x7FFFFFFFFFFFFFFFLL, 1, sub_241E2CC48, v97, v69, v70, v98);
          v102 = *(v71 + 16);
          if (v102)
          {
            v98[0] = 0;
            v72 = 0;
            v98[1] = v71;
            v100 = 0x8000000241E3A2B0;
            v101 = v71 + 32;
            v73 = MEMORY[0x277D837D0];
            v99 = xmmword_241E38B80;
            do
            {
              v80 = v101 + 32 * v72;
              v104 = *v80;
              v82 = *(v80 + 16);
              v81 = *(v80 + 24);
              v103 = v72 + 1;

              v112 = v104;
              v113 = v82;
              v114 = v83;
              *&v104 = v83;

              v84 = 0;
              v85 = 0;
              do
              {
                v86 = v84 + 1;
                v110 = v84 + 1;
                v110 = sub_241E35B54();
                v111 = v87;
                sub_241E2CB10();
                sub_241E0F234();
                v88 = sub_241E35A64();

                if (v88)
                {
                  v49 = __OFADD__(v85, 1 << v84);
                  v85 += 1 << v84;
                  if (v49)
                  {
                    __break(1u);
LABEL_87:
                    __break(1u);
                    goto LABEL_88;
                  }
                }

                ++v84;
              }

              while (v86 != 8);

              v49 = __OFADD__(v85, 10240);
              v89 = v85 + 10240;
              if (v49)
              {
                goto LABEL_87;
              }

              if (HIDWORD(v89) || v89 >> 16 > 0x10 || (v89 & 0xFFFFF800) == 0xD800)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74740, &qword_241E38F60);
                v74 = swift_allocObject();
                *(v74 + 16) = v99;
                v75 = 0xE000000000000000;
                v110 = 0;
                v111 = 0xE000000000000000;
                sub_241E35AE4();

                v109 = v89;
                v110 = 0xD000000000000025;
                v111 = v100;
                v76 = sub_241E35B54();
                MEMORY[0x245D01460](v76);

                v77 = v110;
                v78 = v111;
                *(v74 + 56) = v73;
                *(v74 + 32) = v77;
                *(v74 + 40) = v78;
                sub_241E35B74();

                v79 = 0;
              }

              else
              {
                if (v89 > 0x7F)
                {
                  v92 = (v89 & 0x3F) << 8;
                  v93 = (v89 >> 6) + v92 + 33217;
                  v94 = (v92 | (v89 >> 6) & 0x3F) << 8;
                  v95 = (v89 >> 18) + ((v94 | (v89 >> 12) & 0x3F) << 8) - 2122219023;
                  v96 = (v89 >> 12) + v94 + 8487393;
                  if (v89 >> 16)
                  {
                    v90 = v95;
                  }

                  else
                  {
                    v90 = v96;
                  }

                  if (v89 < 0x800)
                  {
                    v90 = v93;
                  }
                }

                else
                {
                  v90 = v89 + 1;
                }

                v110 = (v90 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v90) >> 3))));
                v79 = sub_241E35854();
                v75 = v91;
              }

              v72 = v103;

              MEMORY[0x245D01460](v79, v75);
            }

            while (v72 != v102);
          }
        }

        return;
      }
    }

    v60 = 0;
LABEL_59:
    v61 = 0xE000000000000000;
    goto LABEL_60;
  }

  v14 = sub_241E35874();
  if (v14)
  {
    v15 = v14;
    v16 = sub_241E29850(v14, 0);

    v17 = sub_241E29788(&v112, v16 + 4, v15, v1, v2);

    if (v17 != v15)
    {
      goto LABEL_98;
    }

    v18 = v16[2];
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_52:

    v11 = 0;
    v60 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_59;
  }

  v16 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  if (!v18)
  {
    goto LABEL_52;
  }

LABEL_9:
  v19 = 0;
  *&v104 = v16 + 4;
  v20 = *(a1 + 37);
  while (v19 < v16[2])
  {
    v23 = (v104 + 16 * v19);
    v25 = *v23;
    v24 = v23[1];

    v26 = sub_241E24DDC();
    v27 = *v26;
    if (*(*v26 + 16))
    {

      v28 = sub_241E22FD8(v25, v24);
      v30 = v29;

      if (v30)
      {
        v31 = (*(v27 + 56) + 16 * v28);
        v32 = *v31;
        v33 = v31[1];
      }

      else
      {
        v32 = 0;
        v33 = 0xE000000000000000;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_241E2587C(v32, v33);
    if (v35)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_36;
      }

      v36 = 0;
    }

    else
    {
      if ((v20 & 1) == 0)
      {
LABEL_36:
        v42 = *v26;
        if (*(*v26 + 16) && (v43 = *v26, , v44 = sub_241E22FD8(v25, v24), v46 = v45, , (v46 & 1) != 0))
        {
          v47 = (*(v42 + 56) + 16 * v44);
          v21 = *v47;
          v22 = v47[1];
        }

        else
        {

          v21 = 0;
          v22 = 0xE000000000000000;
        }

        *&v112 = v21;
        *(&v112 + 1) = v22;

        MEMORY[0x245D01460](32, 0xE100000000000000);

        MEMORY[0x245D01460](v112, *(&v112 + 1));

        goto LABEL_12;
      }

      v36 = v34;
    }

    v37 = log10(v36);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_89;
    }

    if (v37 <= -9.22337204e18)
    {
      goto LABEL_90;
    }

    if (v37 >= 9.22337204e18)
    {
      goto LABEL_91;
    }

    v38 = v37;
    if (v37 < 0)
    {
      goto LABEL_92;
    }

    if (v38)
    {
      v39 = -v38;
      v40 = 0.0;
      v41 = 1;
      do
      {
        v40 = v40 + __exp10(v41++);
      }

      while (v39 + v41 != 1);
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_93;
      }

      if (v40 >= 9.22337204e18)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v40 = 0.0;
    }

    v48 = v36 + v40;
    if (__OFADD__(v36, v40))
    {
      goto LABEL_95;
    }

    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_96;
    }

    *&v112 = v50;
    v105 = sub_241E35B54();
    v106 = v51;
LABEL_12:
    if (++v19 == v18)
    {

      v60 = 0;
      v61 = 0xE000000000000000;
      v11 = v105;
      v10 = v106;
      goto LABEL_60;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_241E2C7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74710, &qword_241E38F48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_241E38E20;
  v3 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentMetronomeMarking;
  swift_beginAccess();
  *(v2 + 32) = *(v1 + v3);
  v4 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentKeySignature;
  swift_beginAccess();
  *(v2 + 40) = *(v1 + v4);
  v5 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_currentTimeSignature;
  swift_beginAccess();
  *(v2 + 48) = *(v1 + v5);
  v6 = OBJC_IVAR____TtCC18BrailleTranslation22BRLTBrailleMusicParserP33_E886CD66E288DBBFC574695449FA98EA20BrailleMusicDelegate_composition;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *&v35[0] = v2;

  sub_241E28A50(v8);
  v9 = *(v1 + v6);
  *(v1 + v6) = v2;

  v10 = *(v1 + v6);
  v11 = *(v10 + 16);
  v32 = v10;

  v31 = v11;
  if (!v11)
  {
  }

  v13 = 0;
  while (v13 < *(v32 + 16))
  {
    v17 = *(v32 + 32 + 8 * v13);
    v18 = *(v17 + 16);
    if (v18)
    {
      v34 = MEMORY[0x277D84F90];

      sub_241E28B74(0, v18, 0);
      v19 = v34;
      v20 = 32;
      do
      {
        v21 = *(v17 + v20);
        v22 = *(v17 + v20 + 16);
        v23 = *(v17 + v20 + 32);
        v36 = *(v17 + v20 + 48);
        v35[1] = v22;
        v35[2] = v23;
        v35[0] = v21;
        sub_241E2B4A0(v35, v33);
        sub_241E2BE94(v35);
        v25 = v24;
        v27 = v26;
        sub_241E2B4D8(v35);
        v34 = v19;
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_241E28B74((v28 > 1), v29 + 1, 1);
          v19 = v34;
        }

        *(v19 + 16) = v29 + 1;
        v30 = v19 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v20 += 56;
        --v18;
      }

      while (v18);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    ++v13;
    v33[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74718, &unk_241E38F50);
    sub_241E2CAAC();
    v14 = sub_241E357D4();
    v16 = v15;

    swift_beginAccess();
    MEMORY[0x245D01460](v14, v16);
    swift_endAccess();

    if (v13 == v31)
    {
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_241E2CAAC()
{
  result = qword_27EC74720;
  if (!qword_27EC74720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC74718, &unk_241E38F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74720);
  }

  return result;
}

unint64_t sub_241E2CB10()
{
  result = qword_27EC74730;
  if (!qword_27EC74730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC74730);
  }

  return result;
}

uint64_t sub_241E2CB80(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_241E35B64() & 1;
  }
}

uint64_t sub_241E2CBD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_241E2CC64(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_241E35714();
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241E2CC98(uint64_t a1, uint64_t a2)
{
  result = sub_241E35714();
  if (result == a1)
  {
    return 0;
  }

  v5 = a1;
  if (a2 + a1 >= a1)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_241E2CCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_241E357E4();
  v5 = BRLTJIndexForUnicharIndex(v4, a3);

  return v5;
}

unint64_t sub_241E2CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_241E357E4();
  v5 = BRLTJUnicharIndexForIndex(v4, a3);

  return v5;
}

uint64_t sub_241E2CDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(void *, uint64_t), const char *a7)
{
  v12 = sub_241E357A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    return a3;
  }

  v31 = a7;
  v32 = a5;
  v18 = sub_241E357E4();
  v17 = a6(v18, a3);

  v19 = sub_241E357E4();
  v20 = a6(v19, a4);

  v21 = sub_241E247EC();
  swift_beginAccess();
  (*(v13 + 16))(v16, v21, v12);
  v22 = sub_241E35784();
  v23 = sub_241E35A04();
  if (os_log_type_enabled(v22, v23))
  {
    v30 = v23;
    v24 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = a3;
    v37 = v29;
    *v24 = 136315394;
    v33 = 0;
    v34 = 0xE000000000000000;
    v35 = a4;
    sub_241E35B24();
    MEMORY[0x245D01460](3943982, 0xE300000000000000);
    sub_241E35B24();
    v25 = sub_241E22990(v33, v34, &v37);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    if (v20 < v17)
    {
      goto LABEL_9;
    }

    v35 = v20;
    v36 = v17;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_241E35B24();
    MEMORY[0x245D01460](3943982, 0xE300000000000000);
    sub_241E35B24();
    v27 = sub_241E22990(v33, v34, &v37);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_241DFD000, v22, v30, v31, v24, 0x16u);
    v28 = v29;
    swift_arrayDestroy();
    MEMORY[0x245D02050](v28, -1, -1);
    MEMORY[0x245D02050](v24, -1, -1);
  }

  result = (*(v13 + 8))(v16, v12);
  if (v20 >= v17)
  {
    return v17;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

id sub_241E2D128()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_241E2D16C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_241E2D1B4()
{
  swift_beginAccess();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_241E2D1EC(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

void sub_241E2D244()
{
  v1 = v0;
  v2 = swift_beginAccess();
  v3 = v0[7];
  v4 = *(*v0 + 160);
  v5 = (v4)(v2);
  v6 = [v5 length];

  if (v3 == v6)
  {
    goto LABEL_2;
  }

  v7 = v1[7];
  v8 = v4();
  v9 = [v8 length];

  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 != v9 - 1)
  {
    return;
  }

  v10 = v4();
  if ([v10 length] < 1)
  {

    return;
  }

  v11 = [v10 length];
  if (__OFSUB__(v11, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v10 characterAtIndex_];
  v12 = sub_241E35B54();
  v14 = v13;

  if (v12 == 10 && v14 == 0xE100000000000000)
  {

LABEL_2:
    (*(*v1 + 384))(1);
    return;
  }

  v15 = sub_241E35B64();

  if (v15)
  {
    goto LABEL_2;
  }
}

uint64_t sub_241E2D418()
{
  swift_beginAccess();
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

void sub_241E2D44C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_241E2D244();
}

uint64_t sub_241E2D49C()
{
  v1 = (*(*v0 + 160))();
  v2 = (*(*v0 + 232))();
  v4 = v3;
  result = [v1 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result >= v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = result;
    }

    if (v2 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v4 & ~(v4 >> 63);
    if (result < v4)
    {
      v8 = result;
    }

    if (!__OFSUB__(v8, v7))
    {
      v9 = [v1 substringWithRange_];
      v10 = sub_241E357F4();

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241E2D58C()
{
  v2 = (*(*v0 + 184))();
  if (v3)
  {
    return v2;
  }

  v4 = v1;
  v5 = *(*v0 + 232);
  v6 = v5();
  if (v7 < v2 || v4 < (v5)(v6))
  {
    return 0;
  }

  if (v2 >= v5())
  {
    result = v5();
    v9 = __OFSUB__(v2, result);
    v2 -= result;
    if (v9)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = v5();
  v12 = v11;
  result = (v5)(v10);
  if (v12 < v4)
  {
    v9 = __OFSUB__(v13, result);
    v14 = v13 - result;
    if (!v9)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v14 = v4 - result;
  if (!__OFSUB__(v4, result))
  {
LABEL_13:
    if (v14 >= v2)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_241E2D6F8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_241E2D7BC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 65) = a1;
  return result;
}

uint64_t sub_241E2D84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  sub_241E2D8BC(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t sub_241E2D8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  *(v5 + 32) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 1;
  *(v5 + 66) = 256;
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = sub_241E357E4();
  v12 = [v10 initWithString_];

  *(v5 + 16) = v12;
  swift_beginAccess();
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5 & 1;
  *(v5 + 41) = 1;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = sub_241E357E4();

  v15 = sub_241E2D9E8(v13);
  v17 = v16;

  *(v6 + 48) = v15;
  *(v6 + 56) = v17;
  *(v6 + 64) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v6 + 72) = MEMORY[0x277D84F90];
  *(v6 + 80) = v18;
  return v6;
}

char *sub_241E2D9E8(uint64_t a1)
{
  v2 = v1;
  result = [v1 lineRangeForRange_];
  v5 = v4;
  if (v4 < 1)
  {
    goto LABEL_11;
  }

  v6 = &result[v4 - 1];
  if (__OFSUB__(&result[v4], 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 < 0 || (v7 = result, v8 = [v2 length], result = v7, v6 >= v8))
  {
LABEL_11:
    v6 = &result[v5];
    if (__OFADD__(result, v5))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v9 = [v2 characterAtIndex_];
  v10 = v9;
  if (v9 > 8231)
  {
    v12 = v9 - 8232;
    result = v7;
    if (v12 > 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = v9 == 10 || v9 == 13;
    result = v7;
    if (!v11 && v10 != 133)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(result, v5))
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (v6 < result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void sub_241E2DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = a5 & 1;
  (*(*v7 + 360))(0);
  v14 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v15 = sub_241E357E4();
  v16 = [v14 initWithString_];

  swift_beginAccess();
  v17 = *(v8 + 16);
  *(v8 + 16) = v16;

  swift_beginAccess();
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = v13;
  if (a5)
  {
    v18 = sub_241E357E4();
    if (a7)
    {
      v19 = 0;
    }

    else
    {
      v19 = a6;
    }

    v20 = sub_241E2D9E8(v19);
    v22 = v21;

    swift_beginAccess();
    *(v8 + 48) = v20;
  }

  else
  {
    v23 = sub_241E357E4();
    v24 = sub_241E2D9E8(a4);
    v22 = v25;

    swift_beginAccess();
    *(v8 + 48) = v24;
  }

  *(v8 + 56) = v22;
  sub_241E2D244();
}

void sub_241E2DC88(void *a1)
{
  v2 = v1;
  v3 = *(*v1 + 184);
  v4 = v3();
  v6 = v5;
  v8 = v7;
  v9 = (*(*v1 + 232))();
  v11 = v10;
  type metadata accessor for BRLTBrailleUIModel.Action();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8 & 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 64) = v9;
  *(v12 + 72) = v11;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = MEMORY[0x277D84F90];
  v13 = (*(*v2 + 296))();
  if (v13)
  {
    v14 = *(*v2 + 160);
    v15 = v14();
    v16 = [v15 length];

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14();
      v17 = sub_241E35804();
      sub_241E321C8(v17, v18, 0, v16, 0, 0xE000000000000000);

      v20 = (v14)(v19);
      v21 = [v20 length];
      if ((v21 & 0x8000000000000000) == 0)
      {
        if (v21 < v16)
        {
          v16 = v21;
        }

        v22 = sub_241E357E4();
        v23 = [v20 stringByReplacingCharactersInRange:0 withString:{v16, v22}];

        if (!v23)
        {
          sub_241E357F4();
          v23 = sub_241E357E4();
        }

        v24 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

        swift_beginAccess();
        v25 = *(v2 + 16);
        *(v2 + 16) = v24;

        v26 = swift_beginAccess();
        *(v2 + 24) = 0;
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        v27 = (v14)(v26);
        v28 = sub_241E2D9E8(0);
        v30 = v29;

        swift_beginAccess();
        *(v2 + 48) = v28;
        *(v2 + 56) = v30;
        sub_241E2D244();
        v13 = (*(*v2 + 304))(0);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  v31 = (v3)(v13);
  if (v33)
  {
    goto LABEL_15;
  }

  v34 = v31;
  if (v31 != v32)
  {
    v35 = *(*v2 + 160);
    v36 = v32;
    v35();
    v37 = sub_241E35804();
    sub_241E321C8(v37, v38, v34, v36, 0, 0xE000000000000000);

    v40 = (v35)(v39);
    v41 = sub_241E2E828(v34, v36);

    swift_beginAccess();
    v42 = *(v2 + 16);
    *(v2 + 16) = v41;

    v43 = swift_beginAccess();
    *(v2 + 24) = v34;
    *(v2 + 32) = v34;
    *(v2 + 40) = 0;
    v44 = (v35)(v43);
    v45 = sub_241E2D9E8(v34);
    v47 = v46;

    swift_beginAccess();
    *(v2 + 48) = v45;
    *(v2 + 56) = v47;
    sub_241E2D244();
  }

  v48 = v3();
  if (v50)
  {
    goto LABEL_15;
  }

  if (!__OFADD__(v34, 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = [a1 unicode];
    v54 = sub_241E357F4();
    v56 = v55;

    v57 = *(*v2 + 160);
    v57();
    v58 = sub_241E35804();
    sub_241E321C8(v58, v59, v51, v52, v54, v56);

    v61 = (v57)(v60);
    v62 = sub_241E2E828(v51, v52);

    swift_beginAccess();
    v63 = *(v2 + 16);
    *(v2 + 16) = v62;

    v64 = swift_beginAccess();
    *(v2 + 24) = v34 + 1;
    *(v2 + 32) = v34 + 1;
    *(v2 + 40) = 0;
    v65 = (v57)(v64);
    v66 = sub_241E2D9E8(v34 + 1);
    v68 = v67;

    swift_beginAccess();
    *(v2 + 48) = v66;
    *(v2 + 56) = v68;
    sub_241E2D244();
LABEL_15:
    sub_241E32A28(v12);

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_241E2E250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 184);
  result = v6();
  if ((v9 & 1) == 0)
  {
    v10 = result;
    v37 = v8;
    v11 = v6();
    v12 = a1;
    v13 = a2;
    v15 = v14;
    v17 = v16;
    v18 = (*(*v2 + 232))();
    v20 = v19;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v21 = swift_allocObject();
    *(v21 + 16) = v11;
    *(v21 + 24) = v15;
    *(v21 + 32) = v17 & 1;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 1;
    *(v21 + 64) = v18;
    *(v21 + 72) = v20;
    *(v21 + 80) = 0;
    *(v21 + 88) = 0;
    *(v21 + 96) = 0;
    *(v21 + 104) = 1;
    *(v21 + 112) = MEMORY[0x277D84F90];
    result = sub_241E35874();
    v22 = v10;
    v23 = __OFADD__(v10, result);
    v24 = v10 + result;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v25 = *(*v3 + 160);
      v25();
      v26 = sub_241E35804();
      sub_241E321C8(v26, v27, v22, v37, v12, v13);

      v29 = (v25)(v28);
      v30 = sub_241E2E828(v22, v37);

      swift_beginAccess();
      v31 = *(v3 + 16);
      *(v3 + 16) = v30;

      v32 = swift_beginAccess();
      *(v3 + 24) = v24;
      *(v3 + 32) = v24;
      *(v3 + 40) = 0;
      v33 = (v25)(v32);
      v34 = sub_241E2D9E8(v24);
      v36 = v35;

      swift_beginAccess();
      *(v3 + 48) = v34;
      *(v3 + 56) = v36;
      sub_241E2D244();
      sub_241E32A28(v21);
    }
  }

  return result;
}

uint64_t sub_241E2E4EC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 66) = a1;
  return result;
}

uint64_t sub_241E2E5B0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 67) = a1;
  return result;
}

void sub_241E2E640()
{
  v1 = v0;
  v2 = (*(*v0 + 360))(1);
  v3 = *(*v0 + 160);
  v4 = (v3)(v2);
  v5 = v3();
  v6 = [v5 length];

  v7 = sub_241E2D9E8(v6);
  v9 = v8;

  if (v7 == v9)
  {
    v10 = (*(*v1 + 384))(0);
  }

  v11 = (v3)(v10);
  v12 = sub_241E2E828(v7, v9);

  swift_beginAccess();
  v13 = v1[2];
  v1[2] = v12;

  v14 = (*(*v1 + 232))();
  if (v15 >= v7)
  {
    v16 = (v3)(v14);
    v17 = sub_241E2D9E8(v7);
    v19 = v18;

    swift_beginAccess();
    v1[6] = v17;
    v1[7] = v19;
    sub_241E2D244();
  }
}

uint64_t sub_241E2E828(uint64_t a1, uint64_t a2)
{
  result = [v2 length];
  if (result < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = result;
  }

  if (a1 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 & ~(a2 >> 63);
  if (result < a2)
  {
    v8 = result;
  }

  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    goto LABEL_15;
  }

  v10 = sub_241E357E4();
  v11 = [v2 stringByReplacingCharactersInRange:v7 withString:{v9, v10}];

  if (!v11)
  {
    sub_241E357F4();
    v11 = sub_241E357E4();
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

  return v12;
}

void sub_241E2E94C()
{
  v1 = v0;
  v2 = (*(*v0 + 360))(1);
  (*(*v0 + 160))(v2);
  sub_241E35804();

  MEMORY[0x245D01460](10, 0xE100000000000000);

  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_241E357E4();

  v5 = [v3 initWithString_];

  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v1 + 16) = v5;
}

void sub_241E2EA64()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  v3 = v2();
  if ((v5 & 1) == 0)
  {
    if (v3 != v4)
    {
      (*(*v0 + 344))(0, 0xE000000000000000);
      return;
    }

    v6 = v3 - 1;
    if (v3 >= 1)
    {
      v7 = v3;
      v8 = v2();
      v10 = v9;
      v12 = v11;
      v13 = (*(*v0 + 232))();
      v15 = v14;
      type metadata accessor for BRLTBrailleUIModel.Action();
      v16 = swift_allocObject();
      *(v16 + 16) = v8;
      *(v16 + 24) = v10;
      *(v16 + 32) = v12 & 1;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 1;
      *(v16 + 64) = v13;
      *(v16 + 72) = v15;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 104) = 1;
      *(v16 + 112) = MEMORY[0x277D84F90];
      if (((*(*v1 + 296))() & 1) == 0)
      {
        v34 = *(*v1 + 160);
        v34();
        v35 = sub_241E35804();
        sub_241E321C8(v35, v36, v6, v7, 0, 0xE000000000000000);

        v38 = (v34)(v37);
        v39 = sub_241E2E828(v6, v7);

        swift_beginAccess();
        v40 = *(v1 + 16);
        *(v1 + 16) = v39;

        v41 = swift_beginAccess();
        *(v1 + 24) = v6;
        *(v1 + 32) = v6;
        *(v1 + 40) = 0;
        v42 = (v34)(v41);
        v43 = sub_241E2D9E8(v6);
        v45 = v44;

        swift_beginAccess();
        *(v1 + 48) = v43;
        *(v1 + 56) = v45;
        sub_241E2D244();
LABEL_15:
        sub_241E32A28(v16);

        return;
      }

      v17 = *(*v1 + 160);
      v18 = v17();
      v19 = [v18 length];

      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v17();
        v20 = sub_241E35804();
        sub_241E321C8(v20, v21, 0, v19, 0, 0xE000000000000000);

        v23 = (v17)(v22);
        v24 = [v23 length];
        if ((v24 & 0x8000000000000000) == 0)
        {
          if (v24 < v19)
          {
            v19 = v24;
          }

          v25 = sub_241E357E4();
          v26 = [v23 stringByReplacingCharactersInRange:0 withString:{v19, v25}];

          if (!v26)
          {
            sub_241E357F4();
            v26 = sub_241E357E4();
          }

          v27 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

          swift_beginAccess();
          v28 = *(v1 + 16);
          *(v1 + 16) = v27;

          v29 = swift_beginAccess();
          *(v1 + 24) = 0;
          *(v1 + 32) = 0;
          *(v1 + 40) = 0;
          v30 = (v17)(v29);
          v31 = sub_241E2D9E8(0);
          v33 = v32;

          swift_beginAccess();
          *(v1 + 48) = v31;
          *(v1 + 56) = v33;
          sub_241E2D244();
          (*(*v1 + 304))(0);
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

void sub_241E2EF0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return;
  }

  v34 = *(*v3 + 184);
  v4 = v34();
  v6 = v5;
  v8 = v7;
  v9 = *(*v3 + 232);
  v10 = v9();
  v12 = v11;
  type metadata accessor for BRLTBrailleUIModel.Action();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v6;
  *(v13 + 32) = v8 & 1;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 64) = v10;
  *(v13 + 72) = v12;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 1;
  *(v13 + 112) = MEMORY[0x277D84F90];
  v14 = v34();
  v16 = v15;
  v18 = v17;
  v19 = v9();
  v20 = a1 + v19;
  if (__OFADD__(a1, v19))
  {
    __break(1u);
    goto LABEL_30;
  }

  v36 = v14;
  v21 = v9();
  v22 = a2 + v21;
  if (__OFADD__(a2, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v22 < v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = v16;
  v24 = *(*v3 + 160);
  v25 = v24();
  v26 = [v25 length];

  if (v26 < 0)
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (v26 >= v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = v26;
  }

  if (v20 >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v26 >= v22)
  {
    v26 = v22 & ~(v22 >> 63);
  }

  if ((v18 & 1) == 0)
  {
    v29 = v28 == v36 && v26 == v23;
    if (v29 && v28 == v26)
    {
      v31 = v24();
      v32 = [v31 length];

      if (v36 >= v32)
      {
        v28 = v36;
      }

      else
      {
        v28 = v36 + 1;
      }

      v26 = v28;
    }
  }

  swift_beginAccess();
  *(v3 + 24) = v28;
  *(v3 + 32) = v26;
  *(v3 + 40) = 256;
  sub_241E32A28(v13);
}

void sub_241E2F140()
{
  v1 = (*(*v0 + 184))();
  v3 = v2;
  v5 = v4;
  v6 = (*(*v0 + 232))();
  v8 = v7;
  type metadata accessor for BRLTBrailleUIModel.Action();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5 & 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 64) = v6;
  *(v9 + 72) = v8;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 104) = 1;
  *(v9 + 112) = v10;
  v11 = (*(*v0 + 160))();
  v12 = [v11 length];

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(v0 + 24) = 0;
    *(v0 + 32) = v12;
    *(v0 + 40) = 256;
    sub_241E32A28(v9);
  }
}

void sub_241E2F294(uint64_t a1)
{
  v3 = *(*v1 + 184);
  v4 = v3();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    v26 = v5;
    v8 = v3();
    v10 = v9;
    v12 = v11;
    v13 = *(*v1 + 232);
    v14 = v13();
    v16 = v15;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    *(v17 + 24) = v10;
    *(v17 + 32) = v12 & 1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 1;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
    *(v17 + 96) = 0;
    *(v17 + 104) = 1;
    *(v17 + 112) = MEMORY[0x277D84F90];
    v18 = v13();
    v19 = (v18 + a1);
    if (__OFADD__(v18, a1))
    {
      __break(1u);
    }

    else
    {
      v20 = *(*v1 + 160);
      v21 = v20();
      v22 = [v21 length];

      if (v22 < v19)
      {
        v23 = v20();
        v19 = [v23 length];
      }

      if (!__OFSUB__(v26, v7))
      {
        v24 = &v7[(v26 - v7) / 2];
        if (!__OFADD__(v7, (v26 - v7) / 2))
        {
          *(v1 + 41) = v19 >= v24;
          if (v24 >= v19)
          {
            v25 = v26;
          }

          else
          {
            v25 = v19;
          }

          if (v24 >= v19)
          {
            v7 = v19;
          }

          if (v25 >= v7)
          {
            swift_beginAccess();
            *(v1 + 24) = v7;
            *(v1 + 32) = v25;
            *(v1 + 40) = 0;
            sub_241E32A28(v17);

            return;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_241E2F49C(char a1)
{
  v3 = *(*v1 + 184);
  v4 = v3();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    v8 = v5;
    v9 = v3();
    v11 = v10;
    v13 = v12;
    v14 = (*(*v1 + 232))();
    v16 = v15;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v17 = swift_allocObject();
    *(v17 + 16) = v9;
    *(v17 + 24) = v11;
    *(v17 + 32) = v13 & 1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 1;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
    *(v17 + 96) = 0;
    *(v17 + 104) = 1;
    *(v17 + 112) = MEMORY[0x277D84F90];
    if (a1)
    {
      if (v7 == v8 || *(v1 + 41) == 1)
      {
        v18 = (*(*v1 + 160))();
        v19 = [v18 length];

        if (v8 >= v19)
        {
LABEL_8:
          *(v1 + 41) = 1;
LABEL_21:
          sub_241E32A28(v17);

          return;
        }

        v20 = v8 + 1;
        if (v20 >= v7)
        {
          swift_beginAccess();
          *(v1 + 24) = v7;
          *(v1 + 32) = v20;
          *(v1 + 40) = 0;
          goto LABEL_8;
        }

        goto LABEL_24;
      }

      v21 = __OFADD__(v7++, 1);
      if (v21)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v8 < v7)
      {
LABEL_27:
        __break(1u);
        return;
      }

LABEL_20:
      swift_beginAccess();
      *(v1 + 24) = v7;
      *(v1 + 32) = v8;
      *(v1 + 40) = 0;
      goto LABEL_21;
    }

    if (v7 != v8 && (*(v1 + 41) & 1) != 0)
    {
      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v8 >= v7)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    v22 = v7 < 1;
    v23 = v7 - 1;
    if (!v22)
    {
      if (v8 < v23)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      swift_beginAccess();
      *(v1 + 24) = v23;
      *(v1 + 32) = v8;
      *(v1 + 40) = 0;
    }

    *(v1 + 41) = 0;
    goto LABEL_21;
  }
}

void sub_241E2F6D4(char a1)
{
  v2 = v1;
  v4 = *(*v1 + 184);
  v5 = v4();
  if (v7)
  {
    return;
  }

  v8 = v5;
  v110 = v6;
  v9 = v4();
  v11 = v10;
  v13 = v12;
  v14 = (*(*v1 + 232))();
  v16 = v15;
  type metadata accessor for BRLTBrailleUIModel.Action();
  v17 = swift_allocObject();
  v18 = v17;
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13 & 1;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 64) = v14;
  *(v17 + 72) = v16;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 1;
  *(v17 + 112) = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
    v36 = v110;
    if (v8 != v110 && (*(v2 + 41) & 1) != 0)
    {
      v107 = v17;
      if (v8 >= v110)
      {
        goto LABEL_114;
      }

      v37 = *(*v2 + 160);
      while (1)
      {
        v38 = v37();
        v39 = v38;
        v40 = v36 - 1;
        if (v36 <= 0 || v36 > [v38 length])
        {
        }

        else
        {
          v110 = v36;
          [v39 characterAtIndex_];
          v41 = sub_241E35B54();
          v43 = v42;
          v44 = v41 == 8429794 && v42 == 0xA300000000000000;
          if (v44 || (v45 = v41, (sub_241E35B64() & 1) != 0) || v45 == 10 && v43 == 0xE100000000000000)
          {

LABEL_114:
            v88 = v110;
            if (v8 < v110)
            {
              while (1)
              {
                v89 = (*(*v2 + 160))();
                v90 = v89;
                v91 = v88 - 1;
                if (v88 < 1 || v88 > [v89 length])
                {
                  break;
                }

                [v90 characterAtIndex_];
                v92 = sub_241E35B54();
                v94 = v93;
                v95 = v92 == 8429794 && v93 == 0xA300000000000000;
                if (v95 || (v110 = v88, v96 = v92, (sub_241E35B64() & 1) != 0) || v96 == 10 && v94 == 0xE100000000000000)
                {
                }

                else
                {
                  v97 = sub_241E35B64();

                  if ((v97 & 1) == 0)
                  {
                    goto LABEL_131;
                  }
                }

                v88 = v91;
                if (v8 >= v91)
                {
                  goto LABEL_129;
                }
              }

              v110 = v88;
            }

LABEL_131:
            v98 = v110;
            if (v110 >= v8)
            {
LABEL_132:
              swift_beginAccess();
              *(v2 + 24) = v8;
              *(v2 + 32) = v98;
              *(v2 + 40) = 0;
              v18 = v107;
              goto LABEL_155;
            }

LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v46 = sub_241E35B64();

          if (v46)
          {
            goto LABEL_114;
          }
        }

        v36 = v40;
        if (v8 >= v40)
        {
LABEL_129:
          v98 = v8;
          goto LABEL_132;
        }
      }
    }

    if (v8 < 1)
    {
LABEL_90:
      *(v2 + 41) = 0;
      goto LABEL_155;
    }

    v108 = v17;
    while (1)
    {
      v47 = *(*v2 + 160);
      v48 = v47();
      if (v8 > [v48 length])
      {

        goto LABEL_74;
      }

      v49 = v8 - 1;
      [v48 characterAtIndex_];
      v50 = sub_241E35B54();
      v52 = v51;
      v53 = v50 == 8429794 && v51 == 0xA300000000000000;
      if (v53 || (v54 = v50, (sub_241E35B64() & 1) != 0) || (v54 == 10 ? (v55 = v52 == 0xE100000000000000) : (v55 = 0), v55))
      {
      }

      else
      {
        v56 = sub_241E35B64();

        if ((v56 & 1) == 0)
        {
          while (1)
          {
LABEL_74:
            v66 = v47();
            v67 = v8 - 1;
            if (v8 > [v66 length])
            {
            }

            else
            {
              [v66 characterAtIndex_];
              v68 = sub_241E35B54();
              v70 = v69;
              v71 = v68 == 8429794 && v69 == 0xA300000000000000;
              if (v71 || (v72 = v68, (sub_241E35B64() & 1) != 0) || (v72 == 10 ? (v73 = v70 == 0xE100000000000000) : (v73 = 0), v73))
              {

LABEL_88:
                if (v110 >= v8)
                {
                  swift_beginAccess();
                  *(v2 + 24) = v8;
                  *(v2 + 32) = v110;
                  *(v2 + 40) = 0;
                  v18 = v108;
                  goto LABEL_90;
                }

                __break(1u);
LABEL_158:
                __break(1u);
                goto LABEL_159;
              }

              v74 = sub_241E35B64();

              if (v74)
              {
                goto LABEL_88;
              }
            }

            --v8;
            if ((v67 + 1) <= 1)
            {
              goto LABEL_55;
            }
          }
        }
      }

      --v8;
      if ((v49 + 1) <= 1)
      {
LABEL_55:
        v8 = 0;
        goto LABEL_88;
      }
    }
  }

  v19 = v110;
  if (v8 != v110 && *(v2 + 41) != 1)
  {
    if (v8 >= v110)
    {
      goto LABEL_135;
    }

    v109 = v17;
    v57 = *(*v2 + 160);
    while (1)
    {
      v58 = v57();
      v59 = v58;
      if (v8 < 0 || v8 >= [v58 length])
      {
      }

      else
      {
        [v59 characterAtIndex_];
        v60 = sub_241E35B54();
        v62 = v61;
        v63 = v60 == 8429794 && v61 == 0xA300000000000000;
        if (v63 || (v64 = v60, (sub_241E35B64() & 1) != 0) || v64 == 10 && v62 == 0xE100000000000000)
        {

LABEL_134:
          v18 = v109;
          v19 = v110;
LABEL_135:
          if (v8 >= v19)
          {
            v87 = v8;
          }

          else
          {
            v109 = v18;
            v87 = v8;
            while (1)
            {
              v99 = (*(*v2 + 160))();
              v100 = v99;
              if (v8 < 0 || v87 >= [v99 length])
              {
                break;
              }

              [v100 characterAtIndex_];
              v101 = sub_241E35B54();
              v103 = v102;
              v104 = v101 == 8429794 && v102 == 0xA300000000000000;
              if (v104 || (v105 = v101, (sub_241E35B64() & 1) != 0) || v105 == 10 && v103 == 0xE100000000000000)
              {
              }

              else
              {
                v106 = sub_241E35B64();

                if ((v106 & 1) == 0)
                {
                  v19 = v110;
                  goto LABEL_153;
                }
              }

              ++v87;
              v19 = v110;
              if (v110 == v87)
              {
                goto LABEL_112;
              }
            }
          }

LABEL_153:
          if (v19 >= v87)
          {
LABEL_154:
            swift_beginAccess();
            *(v2 + 24) = v87;
            *(v2 + 32) = v19;
            *(v2 + 40) = 0;
            goto LABEL_155;
          }

LABEL_160:
          __break(1u);
          return;
        }

        v65 = sub_241E35B64();

        if (v65)
        {
          goto LABEL_134;
        }
      }

      if (v110 == ++v8)
      {
        v19 = v110;
LABEL_112:
        v87 = v19;
        v18 = v109;
        goto LABEL_154;
      }
    }
  }

  v20 = *(*v2 + 160);
  v21 = v20();
  v22 = [v21 length];

  if (v110 >= v22)
  {
    goto LABEL_110;
  }

  v23 = v20();
  v24 = [v23 length];

  if (v110 >= v24)
  {
    v25 = v110;
  }

  else
  {
    v25 = v110;
    while (1)
    {
      v26 = v20();
      v27 = v26;
      if (v110 < 0 || v25 >= [v26 &selRef_remoteObjectProxyWithErrorHandler_])
      {
        break;
      }

      [v27 characterAtIndex_];
      v28 = sub_241E35B54();
      v30 = v29;
      v31 = v28 == 8429794 && v29 == 0xA300000000000000;
      if (v31 || (v32 = v28, (sub_241E35B64() & 1) != 0) || v32 == 10 && v30 == 0xE100000000000000)
      {
      }

      else
      {
        v35 = sub_241E35B64();

        if ((v35 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      ++v25;
      v33 = v20();
      v34 = [v33 &selRef_remoteObjectProxyWithErrorHandler_];

      if (v25 >= v34)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_92:
  v75 = v20();
  v76 = [v75 &selRef_remoteObjectProxyWithErrorHandler_];

  if (v25 >= v76)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v79 = v20();
    v80 = v79;
    if (v25 < 0 || v25 >= [v79 &selRef_remoteObjectProxyWithErrorHandler_])
    {

      goto LABEL_95;
    }

    [v80 characterAtIndex_];
    v81 = sub_241E35B54();
    v83 = v82;
    if (v81 == 8429794 && v82 == 0xA300000000000000)
    {
      break;
    }

    v85 = v81;
    if ((sub_241E35B64() & 1) != 0 || v85 == 10 && v83 == 0xE100000000000000)
    {
      break;
    }

    v86 = sub_241E35B64();

    if (v86)
    {
      goto LABEL_108;
    }

LABEL_95:
    ++v25;
    v77 = v20();
    v78 = [v77 &selRef_remoteObjectProxyWithErrorHandler_];

    if (v25 >= v78)
    {
      goto LABEL_108;
    }
  }

LABEL_108:
  if (v25 < v8)
  {
    goto LABEL_158;
  }

  swift_beginAccess();
  *(v2 + 24) = v8;
  *(v2 + 32) = v25;
  *(v2 + 40) = 0;
LABEL_110:
  *(v2 + 41) = 1;
LABEL_155:
  sub_241E32A28(v18);
}

void sub_241E30310(char a1)
{
  v2 = v1;
  v4 = *(*v1 + 184);
  v5 = v4();
  if (v7)
  {
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = v4();
  v12 = v11;
  v14 = v13;
  v15 = (*(*v1 + 232))();
  v17 = v16;
  type metadata accessor for BRLTBrailleUIModel.Action();
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v12;
  *(v18 + 32) = v14 & 1;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 64) = v15;
  *(v18 + 72) = v17;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 1;
  *(v18 + 112) = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
    if (v8 != v9 && (*(v2 + 41) & 1) != 0)
    {
      if (!__OFSUB__(v9--, 1))
      {
        if (v8 >= v9)
        {
          goto LABEL_74;
        }

        v35 = *(*v2 + 160);
        while (1)
        {
          v36 = v35();
          v37 = v36;
          if (v9 < 0 || v9 >= [v36 length])
          {
          }

          else
          {
            [v37 characterAtIndex_];
            if (sub_241E35B54() == 10 && v38 == 0xE100000000000000)
            {

LABEL_74:
              if (v9 >= v8)
              {
LABEL_75:
                swift_beginAccess();
                *(v2 + 24) = v8;
LABEL_79:
                *(v2 + 32) = v9;
                *(v2 + 40) = 0;
                goto LABEL_80;
              }

LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v40 = sub_241E35B64();

            if (v40)
            {
              goto LABEL_74;
            }
          }

          if (v8 >= --v9)
          {
            v9 = v8;
            goto LABEL_75;
          }
        }
      }

      goto LABEL_86;
    }

    if (v8 < 1)
    {
LABEL_39:
      *(v2 + 41) = 0;
      goto LABEL_80;
    }

    if (v8 == 1)
    {
LABEL_36:
      v41 = 0;
      goto LABEL_37;
    }

    v51 = *(*v2 + 160);
    while (1)
    {
      v41 = v8 - 1;
      v52 = v51();
      if (v8 - 1 > [v52 length])
      {
      }

      else
      {
        [v52 characterAtIndex_];
        if (sub_241E35B54() == 10 && v53 == 0xE100000000000000)
        {

LABEL_37:
          if (v9 >= v41)
          {
            swift_beginAccess();
            *(v2 + 24) = v41;
            *(v2 + 32) = v9;
            *(v2 + 40) = 0;
            goto LABEL_39;
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v55 = sub_241E35B64();

        if (v55)
        {
          goto LABEL_37;
        }
      }

      v8 = v41;
      if (v41 <= 1)
      {
        goto LABEL_36;
      }
    }
  }

  if (v8 != v9 && *(v2 + 41) != 1)
  {
    v42 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      if (v42 >= v9)
      {
        goto LABEL_77;
      }

      v43 = *(*v2 + 160);
      while (1)
      {
        v44 = v43();
        v45 = v42 - 1;
        if (__OFSUB__(v42, 1))
        {
          break;
        }

        v46 = v44;
        if (v45 < 0 || v45 >= [v44 length])
        {
        }

        else
        {
          [v46 characterAtIndex_];
          if (sub_241E35B54() == 10 && v47 == 0xE100000000000000)
          {

LABEL_77:
            if (v9 >= v42)
            {
LABEL_78:
              swift_beginAccess();
              *(v2 + 24) = v42;
              goto LABEL_79;
            }

LABEL_89:
            __break(1u);
            return;
          }

          v49 = sub_241E35B64();

          if (v49)
          {
            goto LABEL_77;
          }
        }

        v50 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_83;
        }

        ++v42;
        if (v50 >= v9)
        {
          v42 = v9;
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    goto LABEL_87;
  }

  v19 = *(*v2 + 160);
  v20 = v19();
  v21 = [v20 length];

  if (v9 >= v21)
  {
    goto LABEL_72;
  }

  v22 = v9 + 1;
  v23 = v19();
  v24 = [v23 length];

  if (v9 + 1 >= v24)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v29 = v19();
    v30 = v29;
    if (v9 < -1 || v9 + 1 >= [v29 length])
    {

      goto LABEL_9;
    }

    [v30 characterAtIndex_];
    if (sub_241E35B54() == 10 && v31 == 0xE100000000000000)
    {
      break;
    }

    v33 = sub_241E35B64();

    if (v33)
    {
      goto LABEL_69;
    }

LABEL_9:
    v25 = v19();
    v26 = [v25 &selRef_remoteObjectProxyWithErrorHandler_];

    v27 = v9 + 1;
    v28 = v9 + 2;
    ++v9;
    if (v28 >= v26)
    {
      v22 = v27 + 1;
      goto LABEL_70;
    }
  }

LABEL_69:
  v22 = v9 + 1;
LABEL_70:
  if (v22 < v8)
  {
    goto LABEL_85;
  }

  swift_beginAccess();
  *(v2 + 24) = v8;
  *(v2 + 32) = v22;
  *(v2 + 40) = 0;
LABEL_72:
  *(v2 + 41) = 1;
LABEL_80:
  sub_241E32A28(v18);
}

void sub_241E3096C()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  v3 = v2();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    v7 = v4;
    v8 = v2();
    v10 = v9;
    v12 = v11;
    v13 = (*(*v0 + 232))();
    v15 = v14;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    *(v16 + 32) = v12 & 1;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
    *(v16 + 64) = v13;
    *(v16 + 72) = v15;
    *(v16 + 80) = 0;
    *(v16 + 88) = 0;
    *(v16 + 96) = 0;
    *(v16 + 104) = 1;
    *(v16 + 112) = MEMORY[0x277D84F90];
    if (v6 | v7)
    {
      v27 = swift_beginAccess();
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      v23 = (*(*v1 + 160))(v27);
      v26 = 0;
    }

    else
    {
      v17 = *(*v1 + 160);
      v18 = v17();
      v19 = [v18 length];

      v20 = v17();
      v21 = [v20 length];

      if (v21 < v19)
      {
        __break(1u);
        return;
      }

      v22 = swift_beginAccess();
      *(v1 + 24) = v19;
      *(v1 + 32) = v21;
      *(v1 + 40) = 0;
      v23 = (v17)(v22);
      v24 = v17();
      v25 = [v24 length];

      v26 = v25;
    }

    v28 = sub_241E2D9E8(v26);
    v30 = v29;

    swift_beginAccess();
    *(v1 + 48) = v28;
    *(v1 + 56) = v30;
    sub_241E2D244();
    sub_241E32A28(v16);
  }
}

uint64_t sub_241E30BD4()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  v3 = v2();
  if (v5)
  {
    return 0;
  }

  v6 = v3;
  if (!(v3 | v4))
  {
    return 0;
  }

  v8 = v4;
  v9 = v2();
  v11 = v10;
  v13 = v12;
  v14 = (*(*v0 + 232))();
  v16 = v15;
  type metadata accessor for BRLTBrailleUIModel.Action();
  result = swift_allocObject();
  v18 = result;
  *(result + 16) = v9;
  *(result + 24) = v11;
  *(result + 32) = v13 & 1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = v14;
  *(result + 72) = v16;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 1;
  *(result + 112) = MEMORY[0x277D84F90];
  if (v6 != v8)
  {
LABEL_7:
    v7 = 1;
    v19 = swift_beginAccess();
    *(v1 + 24) = v6;
    *(v1 + 32) = v6;
    *(v1 + 40) = 0;
    v20 = (*(*v1 + 160))(v19);
    v21 = sub_241E2D9E8(v6);
    v23 = v22;

    swift_beginAccess();
    *(v1 + 48) = v21;
    *(v1 + 56) = v23;
    sub_241E2D244();
    sub_241E32A28(v18);

    return v7;
  }

  if (!__OFSUB__(v6, 1))
  {
    v6 = (v6 - 1) & ~((v6 - 1) >> 63);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_241E30D98()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  v3 = v2();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    v7 = v4;
    v8 = *(*v0 + 160);
    v9 = v8();
    v10 = [v9 length];

    v31 = v8;
    v11 = v8();
    v12 = [v11 length];

    if (v12 < v10)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if (v6 != v10 || v7 != v12)
    {
      v14 = v2();
      v16 = v15;
      v18 = v17;
      v19 = (*(*v1 + 232))();
      v21 = v20;
      type metadata accessor for BRLTBrailleUIModel.Action();
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      *(v22 + 24) = v16;
      *(v22 + 32) = v18 & 1;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 1;
      *(v22 + 64) = v19;
      *(v22 + 72) = v21;
      *(v22 + 80) = 0;
      *(v22 + 88) = 0;
      *(v22 + 96) = 0;
      *(v22 + 104) = 1;
      *(v22 + 112) = MEMORY[0x277D84F90];
      if (v6 != v7)
      {
LABEL_11:
        v26 = swift_beginAccess();
        *(v1 + 24) = v7;
        *(v1 + 32) = v7;
        *(v1 + 40) = 0;
        v27 = (v31)(v26);
        v28 = sub_241E2D9E8(v7);
        v30 = v29;

        swift_beginAccess();
        *(v1 + 48) = v28;
        *(v1 + 56) = v30;
        sub_241E2D244();
        sub_241E32A28(v22);

        return;
      }

      v23 = __OFADD__(v6, 1);
      v24 = v6 + 1;
      if (!v23)
      {
        v25 = v31();
        v7 = [v25 length];

        if (v7 >= v24)
        {
          v7 = v24;
        }

        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }
}

void sub_241E30FEC()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  v3 = v2();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    v7 = v4;
    v8 = v2();
    v10 = v9;
    v12 = v11;
    v13 = (*(*v0 + 232))();
    v15 = v14;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    *(v16 + 32) = v12 & 1;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
    *(v16 + 64) = v13;
    *(v16 + 72) = v15;
    *(v16 + 80) = 0;
    *(v16 + 88) = 0;
    *(v16 + 96) = 0;
    *(v16 + 104) = 1;
    *(v16 + 112) = MEMORY[0x277D84F90];
    v17 = (*(*v1 + 296))();
    v18 = *v1;
    if (v17)
    {
      v19 = (*(v18 + 304))(0);
      v20 = *(*v1 + 160);
      v21 = (v20)(v19);
      v22 = [v21 length];

      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v20();
        v23 = sub_241E35804();
        sub_241E321C8(v23, v24, 0, v22, 0, 0xE000000000000000);

        v26 = (v20)(v25);
        v27 = [v26 length];
        if ((v27 & 0x8000000000000000) == 0)
        {
          if (v27 < v22)
          {
            v22 = v27;
          }

          v28 = sub_241E357E4();
          v29 = [v26 stringByReplacingCharactersInRange:0 withString:{v22, v28}];

          if (!v29)
          {
            sub_241E357F4();
            v29 = sub_241E357E4();
          }

          v30 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

          swift_beginAccess();
          v31 = v1[2];
          v1[2] = v30;

          v32 = swift_beginAccess();
          v1[3] = 0;
          v1[4] = 0;
          *(v1 + 40) = 0;
          v33 = (v20)(v32);
          v34 = 0;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      if (((*(v18 + 272))() & 1) == 0)
      {

        return;
      }

      v35 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        v36 = *(*v1 + 160);
        v36();
        v37 = sub_241E35804();
        sub_241E321C8(v37, v38, v6, v7, 10, 0xE100000000000000);

        v40 = (v36)(v39);
        v41 = sub_241E2E828(v6, v7);

        swift_beginAccess();
        v42 = v1[2];
        v1[2] = v41;

        v43 = swift_beginAccess();
        v1[3] = v35;
        v1[4] = v35;
        *(v1 + 40) = 0;
        v33 = (v36)(v43);
        v34 = v35;
LABEL_13:
        v44 = sub_241E2D9E8(v34);
        v46 = v45;

        swift_beginAccess();
        v1[6] = v44;
        v1[7] = v46;
        sub_241E2D244();
        sub_241E32A28(v16);

        return;
      }
    }

    __break(1u);
  }
}

void sub_241E31450()
{
  v1 = v0;
  v2 = *(*v0 + 232);
  if (v2() >= 1)
  {
    v3 = (*(*v0 + 160))();
    v4 = v2();
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = sub_241E2D9E8(v6);
      v9 = v8;

      swift_beginAccess();
      *(v1 + 48) = v7;
      *(v1 + 56) = v9;
      sub_241E2D244();
    }
  }
}