uint64_t sub_2153265A4(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_2154A2C8C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_2154A2C8C();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v28 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_215328ECC();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
        v18 = sub_2153277D8(v29, i, v13);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for ICNoteEditorContextualBarButtonItem();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v30 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v30);
      v23 = v21 + v30;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_2154A2C8C();
LABEL_18:
  result = sub_2154A2DDC();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v4;
  v15 = v10;
  result = sub_2154A2C8C();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
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

Swift::Void __swiftcall ICNoteEditorContextualInputAccessoryView.willMove(toWindow:)(UIWindow_optional *toWindow)
{
  ObjectType = swift_getObjectType();
  v4 = ObjectType;
  if (toWindow)
  {
    swift_unknownObjectWeakAssign();
    [v1 invalidateIntrinsicContentSize];
    v5.receiver = v1;
    v5.super_class = v4;
    [(UIWindow_optional *)&v5 willMoveToWindow:toWindow];
  }

  else
  {
    v5.receiver = v1;
    v5.super_class = ObjectType;
    [(UIWindow_optional *)&v5 willMoveToWindow:0];
    *(v1 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope) = 3;
  }
}

uint64_t sub_215326B18(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_getObjectType();
  if (v3[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_skipUpdate] == 1)
  {
    v3[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_skipUpdate] = 0;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = a1;
    v8 = a1;
    v9 = v3;
    v10 = [v9 window];
    if (v10)
    {

      v11 = &v9[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler];
      v12 = *&v9[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler];
      *v11 = a3;
      *(v11 + 1) = v7;
      sub_2151AF750(v12);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      [ObjCClassFromMetadata cancelPreviousPerformRequestsWithTarget_];
      [v9 performSelector:sel_callBouncedSelectionHandler withObject:v9 afterDelay:0.2];
    }

    else
    {
      v14 = sub_21542B050();
      v15 = sub_215328C88();
      v16 = sub_21542E148(v8, v14, v15);
      if (v16 != 3 && (v9[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope] != v16 || v14 != v16))
      {
        v9[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope] = v16;
        sub_21542B840(v16, 0);
      }
    }
  }

  return result;
}

void sub_215326D14(char a1, uint64_t a2, void *a3)
{
  v6 = sub_21542B050();
  v7 = sub_215328C88();
  v8 = sub_21542E148(a3, v6, v7);
  if (v8 != 3 && (*(a2 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope) != v8 || v6 != v8))
  {
    *(a2 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope) = v8;
    sub_21542B840(v8, a1 & 1);
  }
}

Swift::Void __swiftcall ICNoteEditorContextualInputAccessoryView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  [v0 bounds];
  ICNoteEditorContextualInputAccessoryView.updateLayout(with:)(v2);
}

uint64_t sub_215326FA8()
{
  v0 = [objc_opt_self() mainBundle];
  sub_21549E2CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2154BDB40;
  v2 = sub_21542B050();
  v3 = 1;
  if (v2 != 3)
  {
    v3 = v2 + 1;
  }

  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 72) = 3;
  v6 = sub_2154A1D3C();

  return v6;
}

unint64_t sub_2153270FC(uint64_t a1, uint64_t a2)
{
  sub_2153271FC(a1);
  if (v4 == 3)
  {
    return 0;
  }

  v5 = [*(v2 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView) traitCollection];
  if (a2 <= 3)
  {
    if ((a2 - 1) < 2)
    {
      v6 = v5;
      v7 = [v5 layoutDirection];

      if ((a2 != 2 || v7) && (a2 != 1 || v7 != 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      v8 = 1;
      return sub_21542C170(v8) & 1;
    }

LABEL_14:

    return 0;
  }

  if (a2 == 4)
  {
    goto LABEL_14;
  }

  if (a2 == 5)
  {

    goto LABEL_17;
  }

  if (a2 != 6)
  {
    goto LABEL_14;
  }

LABEL_13:
  v8 = 0;
  return sub_21542C170(v8) & 1;
}

void sub_2153271FC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = 0;
  v15 = v3;
  while (2)
  {
    v17 = v4;
    v16 = *(&unk_28274D8D8 + v4 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BE4F0;
    *(inited + 32) = 0;
    *(inited + 40) = v3[3];
    *(inited + 48) = 1;
    *(inited + 56) = v3[4];
    *(inited + 64) = 2;
    *(inited + 72) = v3[5];
    v6 = sub_2153283A0(inited, &qword_27CA5A6D8, &unk_2154BE5B8, sub_2153B1B24);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6E8);
    swift_arrayDestroy();
    if (v6[2])
    {
      v7 = sub_2153B1B24(v16);
      p_class_meths = &OBJC_PROTOCOL___UIPointerInteractionDelegate.class_meths;
      if (v9)
      {
        v10 = *(v6[7] + 8 * v7);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      p_class_meths = (&OBJC_PROTOCOL___UIPointerInteractionDelegate + 32);
    }

    if (v10 >> 62)
    {
      v11 = sub_2154A2C8C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v18 = v17 + 1;
    while (v11 != v12)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x216069960](v12, v10);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v13 = *(v10 + 8 * v12 + 32);
        if (__OFADD__(v12, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }
      }

      v14 = *(p_class_meths[435] + v13);

      ++v12;
      if (v14 == a1)
      {

        return;
      }
    }

    v4 = v18;
    v3 = v15;
    if (v18 != 3)
    {
      continue;
    }

    break;
  }
}

id ICNoteEditorContextualInputAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ICNoteEditorContextualInputAccessoryView.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController);
  *(v2 + 89) = sub_21542B050();
  *(v2 + 90) = sub_21542B050();
}

void (*sub_215327758(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216069960](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_215328F30;
  }

  __break(1u);
  return result;
}

void (*sub_2153277D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216069960](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_215327858;
  }

  __break(1u);
  return result;
}

unint64_t sub_215327860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A768);
    v3 = sub_2154A2F3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2153B1B20();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_215327950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A758);
    v3 = sub_2154A2F3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_215324EEC(v4, &v11, &qword_27CA5A760);
      v5 = v11;
      result = sub_2153B1B20(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21531E8D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_215327A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A770);
    v3 = sub_2154A2F3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_215324EEC(v4, &v13, &unk_27CA5A490);
      v5 = v13;
      v6 = v14;
      result = sub_2153B0D68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21531E8D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_215327BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7A8);
  v3 = sub_2154A2F3C();
  v16 = *(a1 + 32);
  result = sub_2153B0E30(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_2153B0E30(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215327CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_215327D64(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A790);
  v3 = sub_2154A2F3C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2153B0E6C(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2153B0E6C(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_215327E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A720);
    v3 = sub_2154A2F3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_215324EEC(v4, &v11, &qword_27CA5A728);
      v5 = v11;
      result = sub_2153B1B20(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21531E8D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_215327FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A780);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A788);
    v7 = sub_2154A2F3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_215324EEC(v9, v5, &qword_27CA5A780);
      result = sub_2153B0F3C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21549E56C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_215328190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6C0);
    v7 = sub_2154A2F3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_215324EEC(v9, v5, &qword_27CA5A6B8);
      result = sub_2153B1054(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2154A22EC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_2153283A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = sub_2154A2F3C();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2153284C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2154A2F3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_2153B0D68(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_2153285C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A740);
    v3 = sub_2154A2F3C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2153B1190(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2153286A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A730);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A738);
    v7 = sub_2154A2F3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_215324EEC(v9, v5, &qword_27CA5A730);
      result = sub_2153B11FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21549E70C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21532888C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A710);
  v3 = sub_2154A2F3C();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2153B0E30(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2153B0E30(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_215328988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A718);
    v3 = sub_2154A2F3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2153B12D0(v6);
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

unint64_t sub_215328A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A708);
    v7 = sub_2154A2F3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_215324EEC(v9, v5, &qword_27CA5A700);
      result = sub_2153B11FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21549E70C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TextElementAnimationConfiguration();
      result = sub_215328E68(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_215328C88()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2154A1D2C();
  v2 = [v0 integerForKey_];

  if (v2 >= 4)
  {
    return 1;
  }

  else
  {
    return 0x2010001u >> (8 * v2);
  }
}

void sub_215328D28()
{
  *(v0 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope) = 3;
  v1 = (v0 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_skipUpdate) = 0;
  v2 = (v0 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_icaxAccessibilityHint);
  v3 = [objc_opt_self() mainBundle];
  v4 = sub_21549E2CC();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_215328E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextElementAnimationConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_215328ECC()
{
  result = qword_27CA5DC10;
  if (!qword_27CA5DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC10);
  }

  return result;
}

void sub_215328F38(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 managedObjectContext], v3, v4))
  {
    MEMORY[0x28223BE20]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
    sub_2154A261C();
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
    v6 = *(*(v5 - 8) + 56);

    v6(a1, 1, 1, v5);
  }
}

void sub_21532909C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [a1 ic:a2 existingObjectWithID:?];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [v6 note];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  if (([v8 isPasswordProtectedAndLocked] & 1) != 0 || (v10 = objc_msgSend(v7, sel_identifier)) == 0)
  {

LABEL_17:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
    return;
  }

  v11 = v10;
  v12 = sub_2154A1D6C();
  v14 = v13;

  if (qword_2811998D8 != -1)
  {
    swift_once();
  }

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  ICSystemPaperDocumentController.presenter(for:)(&OBJC_METACLASS____TtC11NotesEditor17ICMorphableButton.info, v15);
  if (!v16)
  {

    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v16 textView];
  if (!v18)
  {

LABEL_16:
    goto LABEL_17;
  }

  v27 = v17;
  v32 = 0;
  v19 = v18;
  v29 = [v18 textStorage];
  v30 = *MEMORY[0x277D74060];
  v20 = [v19 textStorage];
  v28 = [v20 length];

  v21 = swift_allocObject();
  v21[2] = v12;
  v21[3] = v14;
  v21[4] = &v32;
  v21[5] = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21532B770;
  *(v22 + 24) = v21;
  aBlock[4] = sub_21532B77C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21532C43C;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  v24 = v19;

  [v29 enumerateAttribute:v30 inRange:0 options:v28 usingBlock:{0, v23}];

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    v25 = v32;

    if (v25)
    {
      sub_2154A18EC();

      return;
    }

    goto LABEL_17;
  }

  __break(1u);
}

void __swiftcall ICSystemPaperDocumentController.presenter(for:)(ICNoteEditorViewController_optional *__return_ptr retstr, Swift::String a2)
{
  v3 = v2;
  v57 = a2;
  v4 = sub_2154A113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2151A6C9C(0, &unk_2811995C0);
  *v7 = sub_2154A245C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_2154A116C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v9 = OBJC_IVAR___ICSystemPaperDocumentController_presenters;
  swift_beginAccess();
  v3 = *(v3 + v9);
  v62 = MEMORY[0x277D84F90];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_65:
    v10 = sub_2154A2C8C();
    goto LABEL_4;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x216069960](v11, v3);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v11 >= *(v4 + 16))
      {
        goto LABEL_61;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v15 = sub_21549EE6C();

    ++v11;
    if (v15)
    {
      MEMORY[0x216068AC0](v16);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      v13 = v62;
      v11 = v14;
    }
  }

  if (v13 >> 62)
  {
    v17 = sub_2154A2C8C();
    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_18:
      v18 = 0;
      v54 = v13 & 0xC000000000000001;
      v50 = v13 + 32;
      v51 = v13 & 0xFFFFFFFFFFFFFF8;
      v49 = v12 >> 62;
      v52 = v17;
      v53 = v13;
      do
      {
        if (v54)
        {
          v19 = MEMORY[0x216069960](v18, v13);
        }

        else
        {
          if (v18 >= *(v51 + 16))
          {
            goto LABEL_63;
          }

          v19 = *(v50 + 8 * v18);
        }

        v3 = v19;
        v20 = __OFADD__(v18, 1);
        v21 = v18 + 1;
        if (v20)
        {
          goto LABEL_62;
        }

        v22 = [v19 note];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 visibleAttachmentsWithType_];

          sub_2151A6C9C(0, &qword_281199690);
          sub_215329E1C();
          v25 = sub_2154A20CC();
        }

        else if (v49 && sub_2154A2C8C())
        {
          sub_21532A778(v12, &qword_27CA5A510, &unk_2154BE720, &qword_281199690);
          v25 = v47;
        }

        else
        {
          v25 = MEMORY[0x277D84FA0];
        }

        v55 = v21;
        v58 = v3;
        if ((v25 & 0xC000000000000001) != 0)
        {
          sub_2154A2C3C();
          sub_2151A6C9C(0, &qword_281199690);
          sub_215329E1C();
          sub_2154A20FC();
          v25 = v62;
          v3 = v63;
          v26 = v64;
          v27 = v65;
          v28 = v66;
        }

        else
        {
          v27 = 0;
          v29 = -1 << *(v25 + 32);
          v3 = v25 + 56;
          v26 = ~v29;
          v30 = -v29;
          if (v30 < 64)
          {
            v31 = ~(-1 << v30);
          }

          else
          {
            v31 = -1;
          }

          v28 = v31 & *(v25 + 56);
        }

        v56 = v26;
        v32 = (v26 + 64) >> 6;
        while (1)
        {
          v4 = v27;
          if ((v25 & 0x8000000000000000) == 0)
          {
            break;
          }

          v36 = sub_2154A2CDC();
          if (!v36)
          {
            goto LABEL_19;
          }

          v60 = v36;
          sub_2151A6C9C(0, &qword_281199690);
          swift_dynamicCast();
          v35 = v61;
          if (!v61)
          {
            goto LABEL_19;
          }

LABEL_46:
          v59 = v4;
          v37 = [v35 identifier];
          if (!v37)
          {
            goto LABEL_36;
          }

          v38 = v37;
          v39 = sub_2154A1D6C();
          v41 = v40;

          if (v39 == v57._countAndFlagsBits && v41 == v57._object)
          {
          }

          else
          {
            v43 = sub_2154A2FAC();

            if ((v43 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v44 = [v58 viewIfLoaded];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 window];

            if (v46)
            {

              sub_2151A66EC();

              return;
            }
          }

          else
          {
LABEL_36:
          }
        }

        v33 = v27;
        v34 = v28;
        if (!v28)
        {
          while (1)
          {
            v27 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v27 >= v32)
            {
              goto LABEL_19;
            }

            v34 = *(v3 + 8 * v27);
            ++v33;
            if (v34)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
          goto LABEL_60;
        }

LABEL_42:
        v28 = (v34 - 1) & v34;
        v35 = *(*(v25 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v34)))));
        if (v35)
        {
          goto LABEL_46;
        }

LABEL_19:
        sub_2151A66EC();

        v13 = v53;
        v18 = v55;
        v12 = MEMORY[0x277D84F90];
      }

      while (v55 != v52);
    }
  }
}

id static ICSystemPaperDocumentController.shared.getter()
{
  if (qword_2811998D8 != -1)
  {
    swift_once();
  }

  v1 = qword_2811998E0;

  return v1;
}

Swift::Void __swiftcall ICSystemPaperDocumentController.remove(_:)(ICNoteEditorViewController *a1)
{
  v2 = v1;
  v4 = sub_2154A113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2151A6C9C(0, &unk_2811995C0);
  *v7 = sub_2154A245C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_2154A116C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    v13 = sub_2154A2C8C();
    if (v13 >= v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = OBJC_IVAR___ICSystemPaperDocumentController_presenters;
  swift_beginAccess();
  v10 = a1;
  sub_21532AA64((v2 + v9), v10);
  v4 = v11;

  v12 = *(v2 + v9);
  if (v12 >> 62)
  {
    goto LABEL_6;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 >= v4)
  {
LABEL_4:
    sub_21532A474(v4, v13, sub_21532ADF8);
    swift_endAccess();
    return;
  }

LABEL_7:
  __break(1u);
  swift_endAccess();
  __break(1u);
}

id ICSystemPaperDocumentController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_215329E1C()
{
  result = qword_281199680;
  if (!qword_281199680)
  {
    sub_2151A6C9C(255, &qword_281199690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199680);
  }

  return result;
}

uint64_t sub_215329E84(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2154A2C8C();
LABEL_9:
  result = sub_2154A2DDC();
  *v1 = result;
  return result;
}

uint64_t sub_215329F24(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_2151A6C9C(0, &qword_281199620);
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
  result = sub_2154A2C8C();
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
    result = sub_2154A2C8C();
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

void sub_21532A084(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2154A2C8C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7C0);
      v3 = sub_2154A2D7C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2154A2C8C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x216069960](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2154A290C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for CollaboratorSelectionView();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2154A291C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_2154A290C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for CollaboratorSelectionView();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2154A291C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21532A350(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DB70);
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
  result = sub_2154A2C8C();
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
    result = sub_2154A2C8C();
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

uint64_t sub_21532A474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2154A2C8C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2154A2C8C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_215329E84(result);

  return v12(v5, v3, 0);
}

uint64_t sub_21532A560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7E0);
    v3 = sub_2154A2D7C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2154A1D6C();
      sub_2154A30DC();
      v27 = v7;
      sub_2154A1DFC();
      v8 = sub_2154A312C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_2154A1D6C();
        v18 = v17;
        if (v16 == sub_2154A1D6C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2154A2FAC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21532A778(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_2154A2C8C();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_2154A2D7C();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_2154A2C8C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x216069960](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_2154A290C();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_2151A6C9C(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_2154A291C();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_2154A290C();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_2151A6C9C(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_2154A291C();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_21532AA64(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v21 = *a1 >> 62;
  if (v21)
  {
LABEL_67:
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_2154A2C8C();
  }

  else
  {
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      if (v21)
      {
        goto LABEL_56;
      }

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x216069960](v4, v2);
    }

    else
    {
      if (v4 >= *(v24 + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v6 = sub_21549EE6C();
    if (v6)
    {
      break;
    }

LABEL_5:
    v5 = __OFADD__(v4++, 1);
    if (v5)
    {
      goto LABEL_58;
    }
  }

  v7 = v6;
  sub_2151A6C9C(0, &unk_281199528);
  v8 = a2;
  v9 = sub_2154A291C();

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    return;
  }

  v25 = v8;
  while (2)
  {
    if (v2 >> 62)
    {
      if (v10 == sub_2154A2C8C())
      {
        return;
      }
    }

    else if (v10 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v11 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x216069960](v10, v2);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }
    }

    v12 = sub_21549EE6C();
    if (v12)
    {
      v13 = v12;
      v14 = v8;
      v15 = sub_2154A291C();

      v11 = v2 & 0xC000000000000001;
      if (v15)
      {
        v8 = v25;
        goto LABEL_48;
      }
    }

    else
    {
    }

    if (v4 == v10)
    {
      v8 = v25;
      v5 = __OFADD__(v4++, 1);
      if (v5)
      {
        goto LABEL_62;
      }

LABEL_48:
      v5 = __OFADD__(v10++, 1);
      if (v5)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  v8 = v25;
  if (v11)
  {
    v16 = MEMORY[0x216069960](v4, v2);
    v17 = MEMORY[0x216069960](v10, v2);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v18)
    {
      goto LABEL_65;
    }

    if (v10 >= v18)
    {
      goto LABEL_66;
    }

    v16 = *(v2 + 32 + 8 * v4);
    v17 = *(v2 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_215433F30(v2);
    v19 = (v2 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v2 & 0xFFFFFFFFFFFFFF8;
  *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v17;

  if ((v2 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  v2 = sub_215433F30(v2);
  v20 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_46:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_63;
    }

    *(v20 + 8 * v10 + 32) = v16;

    *a1 = v2;
    v5 = __OFADD__(v4++, 1);
    if (v5)
    {
      goto LABEL_62;
    }

    goto LABEL_48;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  sub_2154A2C8C();
}

uint64_t sub_21532ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7B8);
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
  result = sub_2154A2C8C();
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
    result = sub_2154A2C8C();
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

char *sub_21532AF28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_2151A6C9C(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2154A2C8C();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_2154A2C8C();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21532B060(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2154A2C8C();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_2154A2C8C();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_215329E84(result);
    return sub_21532AF28(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_21532B158(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_2154A2C8C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A800);
      result = sub_2154A2D7C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_2154A2C8C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x216069960](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_21549F32C();
    sub_21532B70C(&qword_27CA5A808, MEMORY[0x277CBCDA8]);
    result = sub_2154A1C9C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_21532B70C(&qword_27CA5A810, MEMORY[0x277CBCDA8]);
      do
      {
        result = sub_2154A1D1C();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21532B3EC(uint64_t a1)
{
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570);
    v9 = sub_2154A2D7C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21532B70C(&qword_281199D00, MEMORY[0x277CC95F0]);
      v16 = sub_2154A1C9C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21532B70C(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
          v23 = sub_2154A1D1C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21532B70C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21532B98C()
{
  result = qword_27CA5A828;
  if (!qword_27CA5A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5A830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A828);
  }

  return result;
}

unint64_t sub_21532B9F4()
{
  result = qword_27CA5A838;
  if (!qword_27CA5A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A838);
  }

  return result;
}

void sub_21532BA48(void *a1)
{
  v1 = [a1 columnTextStorage];
  swift_beginAccess();
  sub_2153EE1C8(&v2, v1);
  swift_endAccess();
}

void sub_21532BAC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_21532BB38(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21532C610();

  sub_2151A6C9C(0, &unk_281199640);
  sub_21532C800();
  v6 = sub_2154A20BC();

  return v6;
}

void *ICNote.visibleAttachmentTextStorages(textLayoutManager:)(void *a1)
{
  v3 = [v1 textStorage];
  if (v3)
  {
    v4 = v3;
    v19 = sub_215327D64(MEMORY[0x277D84F90]);
    v5 = *MEMORY[0x277D74060];
    v6 = [v4 ic_range];
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = &v19;
    v9[4] = v1;
    v9[5] = v4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21532C584;
    *(v10 + 24) = v9;
    aBlock[4] = sub_21532C590;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21532C43C;
    aBlock[3] = &block_descriptor_1;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = v1;
    v14 = v4;

    [v14 enumerateAttribute:v5 inRange:v6 options:v8 usingBlock:{0, v11}];

    _Block_release(v11);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      v16 = v19;

      return v16;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];

    return sub_215327D64(v17);
  }

  return result;
}

void sub_21532BDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char **a7, void *a8)
{
  sub_21532C8D8(a1, v53);
  if (!v53[3])
  {
    sub_21532C870(v53);
    return;
  }

  sub_2151A6C9C(0, &qword_281199550);
  if (swift_dynamicCast())
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      if (a5 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
      {
        v15 = v14;
        v16 = a5;
        v17 = [v16 tableViewControllerForAttachment:v15 createIfNeeded:0];
        if (v17)
        {
          v18 = v17;
          v19 = [a7 textStoragesFor_];
          sub_2151A6C9C(0, &unk_281199640);
          sub_21532C800();
          v20 = sub_2154A20CC();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53[0] = *a6;
          *a6 = 0x8000000000000000;
          sub_21547216C(v20, a2, a3, isUniquelyReferenced_nonNull_native);
          *a6 = v53[0];
        }

        else
        {
        }
      }

      else
      {
      }

      return;
    }

    v48 = a2;
    v49 = a3;
    v50 = a6;
    v22 = [a8 layoutManagers];
    sub_2151A6C9C(0, &qword_281199628);
    v23 = sub_2154A1F4C();

    v53[0] = MEMORY[0x277D84F90];
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
      goto LABEL_68;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
    {
      v51 = a7;
      v26 = MEMORY[0x277D84F90];
      if (i)
      {
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        a7 = 0x2781A8000;
        while (2)
        {
          v29 = v27;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x216069960](v29, v23);
            }

            else
            {
              if (v29 >= *(v24 + 16))
              {
                goto LABEL_63;
              }

              v30 = *(v23 + 8 * v29 + 32);
            }

            v31 = v30;
            v27 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v29;
            if (v27 == i)
            {
              goto LABEL_28;
            }
          }

          MEMORY[0x216068AC0]();
          if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2154A1F8C();
          }

          sub_2154A1FAC();
          v28 = v53[0];
          if (v27 != i)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

LABEL_28:

      v53[0] = v26;
      v24 = v28 & 0xFFFFFFFFFFFFFF8;
      v32 = v28 >> 62 ? sub_2154A2C8C() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = MEMORY[0x277D84F90];
      if (v32)
      {
        break;
      }

      v23 = MEMORY[0x277D84F90];
LABEL_48:

      v53[0] = v33;
      if (v23 >> 62)
      {
        v40 = sub_2154A2C8C();
      }

      else
      {
        v40 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a7 = v51;
      if (!v40)
      {
LABEL_59:

        v46 = sub_215365704(v33);

        v47 = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = *v50;
        *v50 = 0x8000000000000000;
        sub_21547216C(v46, v48, v49, v47);
        *v50 = v53[0];

        return;
      }

      v41 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x216069960](v41, v23);
        }

        else
        {
          if (v41 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v42 = *(v23 + 8 * v41 + 32);
        }

        v43 = v42;
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v45 = [a7 textStoragesFor_];
        sub_2151A6C9C(0, &unk_281199640);
        sub_21532C800();
        v24 = sub_2154A20CC();

        sub_21547E180(v24);
        ++v41;
        if (v44 == v40)
        {
          v33 = v53[0];
          goto LABEL_59;
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      ;
    }

    v34 = v28 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    a7 = &selRef_updateCornerRadius;
    v35 = 0;
    if ((v28 & 0xC000000000000001) != 0)
    {
LABEL_45:
      v36 = MEMORY[0x216069960](v35, v28);
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        if (v35 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v36 = *(v28 + 8 * v35 + 32);
LABEL_38:
        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_64;
        }

        v39 = [v36 viewControllerForTextAttachmentNoCreate_];

        if (v39)
        {
          break;
        }

LABEL_34:
        ++v35;
        if (v38 == v32)
        {
          v33 = MEMORY[0x277D84F90];
          goto LABEL_48;
        }

        if (v34)
        {
          goto LABEL_45;
        }
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_34;
      }

      MEMORY[0x216068AC0]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      v23 = v53[0];
      v33 = MEMORY[0x277D84F90];
      if (v38 == v32)
      {
        goto LABEL_48;
      }

      v35 = v38;
      if (v34)
      {
        goto LABEL_45;
      }
    }
  }
}

uint64_t sub_21532C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_21531E8D0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_21532C870(v13);
}

id sub_21532C4D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  ICNote.visibleAttachmentTextStorages(textLayoutManager:)(a3);

  type metadata accessor for _NSRange(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A840);
  sub_21532C5B8();
  v7 = sub_2154A1C7C();

  return v7;
}

unint64_t sub_21532C5B8()
{
  result = qword_281199460;
  if (!qword_281199460)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199460);
  }

  return result;
}

void sub_21532C610()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
    {
      sub_21532AF04(MEMORY[0x277D84F90]);
      v2 = v6;
    }

    else
    {
      v2 = MEMORY[0x277D84FA0];
    }

    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = [v1 textViewManager];
    v8[4] = sub_21532C868;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21532BAC4;
    v8[3] = &block_descriptor_9;
    v5 = _Block_copy(v8);

    [v4 enumerateTextViewsWithBlock_];
    _Block_release(v5);

    swift_beginAccess();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
  {
    v7 = MEMORY[0x277D84F90];

    sub_21532AF04(v7);
  }
}

unint64_t sub_21532C800()
{
  result = qword_281199630;
  if (!qword_281199630)
  {
    sub_2151A6C9C(255, &unk_281199640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199630);
  }

  return result;
}

uint64_t sub_21532C870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21532C8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21532CAEC(char a1)
{
  v3 = [v1 superview];
  if (!v3)
  {
    return;
  }

  if (v1[OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview])
  {
    return;
  }

  sub_21532E808();
  sub_21532E9E8(0);
  v4 = sub_21532D4A0();
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D769D0];
  v7 = *MEMORY[0x277D74410];
  v8 = [v5 ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v4 setFont_];

  [v1 setBackgroundColor_];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  v12 = [v11 layer];
  [v12 setMasksToBounds_];

  v13 = [v11 layer];
  v14 = [v5 ic:v6 preferredFontForStyle:v7 withFontWeight:?];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  if (a1)
  {
    v16 = 0.375;
  }

  else
  {
    v16 = 0.0;
  }

  [v14 lineHeight];
  v18 = v17;

  v19 = v18 + 6.0;
  if (v18 + 6.0 <= 30.0)
  {
    v19 = 30.0;
  }

  [v13 setCornerRadius_];

  v20 = *&v11[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label];
  v21 = sub_2154A1D2C();
  [v20 setText_];

  [v11 layoutIfNeeded];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  v32 = sub_21532FCEC;
  v33 = v23;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2151BD7E4;
  v31 = &block_descriptor_52;
  v24 = _Block_copy(&v28);
  v25 = v11;

  v26 = swift_allocObject();
  *(v26 + 16) = sub_21532FCE4;
  *(v26 + 24) = v10;
  v32 = sub_215325950;
  v33 = v26;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2153DF054;
  v31 = &block_descriptor_58;
  v27 = _Block_copy(&v28);

  [v22 animateWithDuration:0 delay:v24 usingSpringWithDamping:v27 initialSpringVelocity:v16 options:0.0 animations:0.85 completion:0.0];

  _Block_release(v27);
  _Block_release(v24);
}

void sub_21532CEBC()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView_autohideTimer;
  v2 = *&v0[OBJC_IVAR___ICCollaboratorAvatarView_autohideTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v9[4] = sub_21532F9B0;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2151B5B78;
  v9[3] = &block_descriptor_2;
  v5 = _Block_copy(v9);
  v6 = v0;

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
  _Block_release(v5);
  v8 = *&v0[v1];
  *&v0[v1] = v7;
}

id sub_21532D024(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorIsInverted] = 0;
  v7[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded] = 0;
  v7[OBJC_IVAR___ICCollaboratorAvatarView_hasDisplayedInWindow] = 0;
  v7[OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView_autocollapseTimer] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView_autohideTimer] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewTopConstraint] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewBottomConstraint] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewLeadingConstraint] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint] = 0;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelHeightConstraint] = 0;
  v15 = &v7[OBJC_IVAR___ICCollaboratorAvatarView_name];
  *v15 = a1;
  v15[1] = a2;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView_color] = a3;
  *&v7[OBJC_IVAR___ICCollaboratorAvatarView_boundingSuperview] = a4;
  v16 = &v7[OBJC_IVAR___ICCollaboratorAvatarView_fetchImage];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v7[OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint];
  *v17 = 0;
  v17[1] = 0;
  v34.receiver = v7;
  v34.super_class = ObjectType;
  v18 = a3;
  v19 = a4;

  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v20 setAlpha_];
  v21 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:sel_handleTap_];
  [v22 addGestureRecognizer_];

  v24 = [objc_allocWithZone(MEMORY[0x277D755A0]) initWithTarget:v22 action:sel_handleHoverWithRecognizer_];
  [v22 addGestureRecognizer_];

  v25 = sub_21532D408();
  [v22 addSubview_];

  v26 = sub_21532D4A0();
  [v22 addSubview_];

  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2154BDB30;
  *(v28 + 32) = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  *(v28 + 40) = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  *(v28 + 48) = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  *(v28 + 56) = sub_21532D638();
  sub_2151A6C9C(0, &qword_2811995A0);
  v29 = sub_2154A1F3C();

  [v27 activateConstraints_];

  sub_21532CAEC(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2154BDB50;
  v31 = sub_21549F28C();
  v32 = MEMORY[0x277D74DB8];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  MEMORY[0x216069460](v30, sel_updateWithoutAnimation);

  swift_unknownObjectRelease();

  return v22;
}

id sub_21532D408()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21532D4A0()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_21532D574(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = sub_21532D408();
    v8 = [v7 *a2];

    v9 = [v2 *a2];
    v10 = [v8 constraintEqualToAnchor_];

    v11 = *&v2[v3];
    *&v2[v3] = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id sub_21532D638()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint;
  v2 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint);
  }

  else
  {
    v4 = sub_21532D408();
    v5 = [v4 widthAnchor];

    sub_21532E2DC();
    v6 = [v5 constraintEqualToConstant_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_21532D700(void *a1)
{
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorIsInverted) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_hasDisplayedInWindow) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_autocollapseTimer) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_autohideTimer) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelHeightConstraint) = 0;
  sub_2154A2EDC();
  __break(1u);
}

Swift::Void __swiftcall CollaboratorAvatarView.didMoveToWindow()()
{
  v1 = [v0 window];
  if (v1)
  {

    if ((*(v0 + OBJC_IVAR___ICCollaboratorAvatarView_hasDisplayedInWindow) & 1) == 0)
    {
      sub_21532D948();
      v3 = v2;
      v5 = v4;
      v7 = v6;
      v9 = v8;
      sub_21532DAF0();
      v11 = v10;
      sub_21532DAF0();
      v13 = v12;
      v16.origin.x = v3;
      v16.origin.y = v5;
      v16.size.width = v7;
      v16.size.height = v9;
      v17 = CGRectOffset(v16, v11, v13);
      [v0 setFrame_];
      v15.a = 1.0;
      v15.b = 0.0;
      v15.c = 0.0;
      v15.d = 1.0;
      v15.tx = 0.0;
      v15.ty = 0.0;
      CGAffineTransformScale(&v14, &v15, 0.5, 0.5);
      v15 = v14;
      [v0 setTransform_];
      [v0 setAlpha_];
      [v0 layoutIfNeeded];
      sub_21532CAEC(1);
    }
  }
}

void sub_21532D948()
{
  sub_21532E124();
  v2 = v1;
  v3 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (v3)
  {
    v4 = v3;
    [v3 lineHeight];

    v5 = *&v0[OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint] + v2 * -0.5;
    v6 = *&v0[OBJC_IVAR___ICCollaboratorAvatarView_boundingSuperview];
    v7 = [v0 superview];
    [v6 convertPoint:v7 fromView:{v5, 0.0}];

    v8 = [v0 superview];
    [v6 convertPoint:v8 fromView:{v2 + v5, 0.0}];

    [v6 bounds];
    CGRectGetWidth(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_21532DAF0()
{
  v1 = *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorIsInverted);
  v2 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  v3 = v2;
  if (v1 == 1)
  {
    if (v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v2)
  {
LABEL_5:
    [v2 lineHeight];

    return;
  }

  __break(1u);
}

void sub_21532DCA8(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview] = 1;
  [v2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_21532DAF0();
  v14 = v13;
  sub_21532DAF0();
  v16 = v15;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  v35 = CGRectOffset(v34, v14, v16);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = a1;
  v21[4] = a2;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 2) = v2;
  v23[3] = x;
  v23[4] = y;
  v23[5] = width;
  v23[6] = height;
  v32 = sub_21532FEAC;
  v33 = v23;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2151BD7E4;
  v31 = &block_descriptor_27;
  v24 = _Block_copy(&v28);
  v25 = v2;
  sub_2151BD748(a1);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_21532FEA8;
  *(v26 + 24) = v21;
  v32 = sub_215325950;
  v33 = v26;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2153DF054;
  v31 = &block_descriptor_34;
  v27 = _Block_copy(&v28);

  [v22 animateWithDuration:0 delay:v24 usingSpringWithDamping:v27 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];

  _Block_release(v27);
  _Block_release(v24);
}

id sub_21532DF24(void *a1, uint64_t (*a2)(id))
{
  result = [a1 removeFromSuperview];
  *(a1 + OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview) = 0;
  *(a1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

id sub_21532DF84(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 setAlpha_];
  [a1 setFrame_];
  v12.a = 1.0;
  v12.b = 0.0;
  v12.c = 0.0;
  v12.d = 1.0;
  v12.tx = 0.0;
  v12.ty = 0.0;
  CGAffineTransformScale(&v11, &v12, 0.5, 0.5);
  v12 = v11;
  return [a1 setTransform_];
}

void sub_21532E124()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView_isExpanded;
  if (v0[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded] == 1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    sub_2154A256C();
    sub_21532E2DC();
    sub_21532E420();
    if (v0[v1] != 1)
    {
LABEL_5:
      [*&v0[OBJC_IVAR___ICCollaboratorAvatarView_boundingSuperview] frame];
      return;
    }

    v4 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];

      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {

    sub_21532E2DC();
  }
}

void sub_21532E2DC()
{
  v1 = v0[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded];
  v2 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  v3 = v2;
  if (v1 == 1)
  {
    if (v2)
    {
      [v2 lineHeight];

      v4 = [v0 traitCollection];
      v5 = [v4 preferredContentSizeCategory];

      sub_2154A256C();
      return;
    }

    __break(1u);
  }

  else if (v2)
  {
    [v2 lineHeight];

    return;
  }

  __break(1u);
}

void sub_21532E420()
{
  v0 = sub_2154A1D2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB50;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D769D0];
  v5 = *MEMORY[0x277D74410];
  v6 = v2;
  v7 = [v3 ic:v4 preferredFontForStyle:v5 withFontWeight:?];
  if (v7)
  {
    v8 = v7;
    *(inited + 64) = sub_2151A6C9C(0, &qword_27CA5A8E8);
    *(inited + 40) = v8;
    sub_215327E80(inited);
    swift_setDeallocating();
    sub_21532FCF4(inited + 32);
    type metadata accessor for Key(0);
    sub_21532FD5C();
    v9 = sub_2154A1C7C();

    [v0 sizeWithAttributes_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21532E5A4()
{
  sub_21532E124();
  v1 = OBJC_IVAR___ICCollaboratorAvatarView_isExpanded;
  if (*(v0 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) == 1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    sub_2154A256C();
  }

  sub_21532E2DC();
  if (*(v0 + v1) == 1)
  {
    v4 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21532E710(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_21532D4A0();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_21532E808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_21532D408();
  v17 = [v4 image];

  v5 = v17;
  if (v17)
  {
  }

  else
  {
    sub_21532E2DC();
    v7 = v6;
    sub_21532E2DC();
    v9 = v8;
    v10 = sub_2154A202C();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2154A1FFC();
    v12 = v0;

    v13 = sub_2154A1FEC();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = v7;
    v14[6] = v9;
    v14[7] = v11;

    sub_2152F4D50(0, 0, v3, &unk_2154BE848, v14);
  }
}

void sub_21532E9E8(char a1)
{
  if (v1[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded] != 1)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v18 = sub_21532D4A0();
    [v18 removeFromSuperview];
    goto LABEL_6;
  }

  v2 = sub_21532D4A0();
  v17 = [v2 superview];

  v3 = v17;
  if (!v17)
  {
    v4 = sub_21532E710(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
    [v4 setActive_];

    v5 = OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label;
    [v1 addSubview_];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2154BDB30;
    v8 = [*&v1[v5] leadingAnchor];
    v9 = sub_21532D408();
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
    *(v7 + 32) = v11;
    v12 = [*&v1[v5] centerYAnchor];
    v13 = [*&v1[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView] centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    v15 = *&v1[OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint];
    *(v7 + 40) = v14;
    *(v7 + 48) = v15;
    v16 = v15;
    *(v7 + 56) = sub_21532E710(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
    sub_2151A6C9C(0, &qword_2811995A0);
    v18 = sub_2154A1F3C();

    [v6 activateConstraints_];
LABEL_6:
    v3 = v18;
  }
}

void sub_21532EC88(void *a1)
{
  sub_21532E9E8(1);
  v2 = [a1 window];
  if (v2)
  {

    *(a1 + OBJC_IVAR___ICCollaboratorAvatarView_hasDisplayedInWindow) = 1;
  }
}

id sub_21532ECE0(void *a1)
{
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [a1 setTransform_];
  sub_21532ED90();
  [a1 setAlpha_];
  v2 = sub_21532D4A0();
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded))
  {
    v4 = 1.0;
  }

  [v2 setAlpha_];

  return [a1 layoutIfNeeded];
}

void sub_21532ED90()
{
  sub_21532D948();
  [v0 setFrame_];
  v1 = sub_21532D638();
  sub_21532E2DC();
  [v1 setConstant_];

  v2 = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  v3 = OBJC_IVAR___ICCollaboratorAvatarView_isExpanded;
  v4 = 0.0;
  v5 = 0.0;
  if (*(v0 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_2154A256C();
    v5 = 3.0;
    if (v6)
    {
      v5 = 5.0;
    }
  }

  [v2 setConstant_];

  v8 = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  if (*(v0 + v3) == 1)
  {
    v9 = [v0 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    LOBYTE(v9) = sub_2154A256C();
    if (v9)
    {
      v4 = 5.0;
    }

    else
    {
      v4 = 3.0;
    }
  }

  [v8 setConstant_];

  v11 = sub_21532D574(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  v12 = 0.0;
  if (*(v0 + v3) == 1)
  {
    v13 = [v0 traitCollection];
    v14 = [v13 preferredContentSizeCategory];

    LOBYTE(v13) = sub_2154A256C();
    v12 = 3.0;
    if (v13)
    {
      v12 = 5.0;
    }
  }

  [v11 setConstant_];

  v15 = sub_21532E710(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
  sub_21532E5A4();
  if (v16 <= 0.0)
  {
    v16 = 0.0;
  }

  [v15 setConstant_];

  v21 = sub_21532E710(&OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
  v17 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (v17)
  {
    v18 = v17;
    [v17 lineHeight];
    v20 = v19;

    [v21 setConstant_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21532F084(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a7;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  *(v7 + 40) = a6;
  sub_2154A1FFC();
  *(v7 + 72) = sub_2154A1FEC();
  v9 = sub_2154A1FCC();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x2822009F8](sub_21532F124, v9, v8);
}

uint64_t sub_21532F124()
{
  v5 = (*(v0[5] + OBJC_IVAR___ICCollaboratorAvatarView_fetchImage) + **(v0[5] + OBJC_IVAR___ICCollaboratorAvatarView_fetchImage));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_21532F220;
  v2.n128_u64[0] = v0[6];
  v3.n128_u64[0] = v0[7];

  return v5(v2, v3);
}

uint64_t sub_21532F220(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21532F348, v4, v3);
}

uint64_t sub_21532F348()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    v2 = *(v0 + 104);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_21532D408();

      v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
      [v5 setImage_];
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_21532F430(int a1, _BYTE *a2)
{
  a2[OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview] = 1;
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_21532DAF0();
  v12 = v11;
  sub_21532DAF0();
  v14 = v13;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectOffset(v32, v12, v14);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = a2;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  v21[3] = x;
  v21[4] = y;
  v21[5] = width;
  v21[6] = height;
  v30 = sub_21532F9BC;
  v31 = v21;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2151BD7E4;
  v29 = &block_descriptor_10;
  v22 = _Block_copy(&v26);
  v23 = a2;

  v24 = swift_allocObject();
  *(v24 + 16) = sub_21532F9B8;
  *(v24 + 24) = v19;
  v30 = sub_21532425C;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2153DF054;
  v29 = &block_descriptor_16;
  v25 = _Block_copy(&v26);

  [v20 animateWithDuration:0 delay:v22 usingSpringWithDamping:v25 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];

  _Block_release(v25);
  _Block_release(v22);
}

void sub_21532F694(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) == 1)
  {
    *(a2 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
    sub_21532CAEC(1);
    sub_21532CEBC();
  }
}

void sub_21532F73C(void *a1)
{
  v2 = [a1 state];
  if (v2 == 3)
  {
    if (*(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) != 1)
    {
      return;
    }

    *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
  }

  else
  {
    if (v2 != 1 || (*(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) & 1) != 0)
    {
      return;
    }

    *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 1;
  }

  sub_21532CAEC(1);

  sub_21532CEBC();
}

id CollaboratorAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_3Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21532FA08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
  if (v2)
  {
    return v2(result);
  }

  return result;
}

void sub_21532FA78()
{
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorIsInverted) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_hasDisplayedInWindow) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_autocollapseTimer) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView_autohideTimer) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v0 + OBJC_IVAR___ICCollaboratorAvatarView____lazy_storage___labelHeightConstraint) = 0;
  sub_2154A2EDC();
  __break(1u);
}

void sub_21532FB7C()
{
  v1 = OBJC_IVAR___ICCollaboratorAvatarView_isExpanded;
  v0[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded] = (v0[OBJC_IVAR___ICCollaboratorAvatarView_isExpanded] & 1) == 0;
  sub_21532CAEC(1);
  sub_21532CEBC();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR___ICCollaboratorAvatarView_autocollapseTimer;
    v3 = *&v0[OBJC_IVAR___ICCollaboratorAvatarView_autocollapseTimer];
    if (v3)
    {
      [v3 invalidate];
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v10[4] = sub_21532FCD4;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2151B5B78;
    v10[3] = &block_descriptor_40;
    v6 = _Block_copy(v10);
    v7 = v0;

    v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:2.5];
    _Block_release(v6);
    v9 = *&v0[v2];
    *&v0[v2] = v8;
  }
}

uint64_t sub_21532FCF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21532FD5C()
{
  result = qword_27CA59D70;
  if (!qword_27CA59D70)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA59D70);
  }

  return result;
}

uint64_t sub_21532FDB4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2151BD278;

  return sub_21532F084(v7, v8, a1, v4, v5, v6, v9);
}

Swift::Void __swiftcall VisionLinkAcceleratorViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController];
  if (v1)
  {
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v4 = [v3 widthAnchor];

      v5 = [v4 constraintGreaterThanOrEqualToConstant_];
      LODWORD(v6) = 1144750080;
      [v5 setPriority_];
      [v5 setActive_];
      [v3 ic:0 addAnchorsToFillSuperviewWithHorizontalPadding:10.0 verticalPadding:15.0 usesSafeAreaLayoutGuide:?];
    }
  }
}

uint64_t sub_21533003C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215330CCC(v1 + v5, v4);
  v6 = sub_21549F8CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_215330D3C(v4);
  }

  else
  {
    v8 = sub_21549F86C();
    (*(v7 + 8))(v4, v6);
    v9 = *(v8 + 16);

    if (v9)
    {
      return 1;
    }
  }

  result = *(v1 + OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController);
  if (result)
  {
    [result hide];
    return 0;
  }

  return result;
}

Swift::Void __swiftcall VisionLinkAcceleratorViewController.hideAccelerator()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController);
  if (v1)
  {
    [v1 hide];
  }
}

void sub_2153301CC()
{
  v1 = *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController];
  if (v1)
  {
    v17 = v1;
    v2 = sub_21533003C();
    v3 = v17;
    if (v2)
    {
      v4 = sub_21548DE08();
      if (qword_27CA59960 != -1)
      {
        v16 = v4;
        swift_once();
        v4 = v16;
      }

      if (*&qword_27CA5EBD0 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = *&qword_27CA5EBD0;
      }

      sub_21548DE08();
      v7 = v6 + 0.0;
      v8 = (*((*MEMORY[0x277D85000] & **&v17[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController]) + 0x138))();
      v9 = v7 + *&qword_27CA5EBF0;
      if ((v8 & 1) == 0)
      {
        v9 = v7;
      }

      if (byte_27CA5EBE8)
      {
        v9 = v9 + *&qword_27CA5EC08 + *&qword_27CA5EC08;
      }

      v10 = 400.0;
      if (v5 > 400.0)
      {
        v10 = v5;
      }

      if (v9 <= 44.0)
      {
        v9 = 44.0;
      }

      if (v9 <= 0.0)
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 + 30.0;
      }

      if (v10 <= 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 + 30.0;
      }

      v13 = *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController];
      if (v13)
      {
        [v13 setPreferredContentSize_];
      }

      v14 = [v0 view];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      [v14 frame];
      [v15 setFrame_];

      v3 = v17;
    }
  }
}

Swift::Void __swiftcall VisionLinkAcceleratorViewController.updateAcceleratorOrigin(with:)(__C::CGRect with)
{
  v2 = *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController];
    if (v3)
    {
      height = with.size.height;
      width = with.size.width;
      y = with.origin.y;
      x = with.origin.x;
      v8 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
      swift_beginAccess();
      v9 = *&v1[v8];
      if (v9)
      {
        v10 = v2;
        v11 = v3;
        v12 = v9;
        if ((sub_21533003C() & 1) == 0)
        {
          v29 = v10;
          v10 = v12;
          goto LABEL_30;
        }

        v13 = sub_21548DE08();
        if (qword_27CA59960 != -1)
        {
          v30 = v13;
          swift_once();
          v13 = v30;
        }

        if (*&qword_27CA5EBD0 >= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = *&qword_27CA5EBD0;
        }

        sub_21548DE08();
        v16 = v15 + 0.0;
        v17 = (*((*MEMORY[0x277D85000] & **&v11[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController]) + 0x138))();
        v18 = v16 + *&qword_27CA5EBF0;
        if ((v17 & 1) == 0)
        {
          v18 = v16;
        }

        if (byte_27CA5EBE8)
        {
          v18 = v18 + *&qword_27CA5EC08 + *&qword_27CA5EC08;
        }

        if (v18 <= 44.0)
        {
          v18 = 44.0;
        }

        v19 = 400.0;
        if (v14 > 400.0)
        {
          v19 = v14;
        }

        if (v18 <= 0.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 + 30.0;
        }

        if (v19 <= 0.0)
        {
          v21 = v19;
        }

        else
        {
          v21 = v19 + 20.0;
        }

        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v22 = CGRectGetHeight(v31);
        v23 = [v1 view];
        if (v23)
        {
          v24 = v23;
          v25 = v22 + y;
          [v23 frame];
          [v24 setFrame_];

          v26 = *&v12[OBJC_IVAR___ICLinkAcceleratorController_mode];
          if (!v26)
          {
LABEL_28:
            [v10 setPreferredContentSize_];
            [v10 setOffset_];
            v29 = v12;
LABEL_30:

            return;
          }

          if (v26 == 1)
          {
            v32.origin.x = x;
            v32.origin.y = y;
            v32.size.width = width;
            v32.size.height = height;
            v27 = CGRectGetWidth(v32) + -10.0 + x;
            v33.origin.x = x;
            v33.origin.y = y;
            v33.size.width = width;
            v33.size.height = height;
            v28 = CGRectGetHeight(v33);
            v25 = v25 + v28 + v28 + 30.0;
            x = v27;
            goto LABEL_28;
          }
        }

        else
        {
          __break(1u);
        }

        sub_2154A2FDC();
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall VisionLinkAcceleratorViewController.showAccelerator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  if (*&v0[v4])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong acceleratorHostingViewController];
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
        swift_beginAccess();
        sub_215330CCC(&v0[v7], v3);
        v8 = sub_21549F8CC();
        v9 = *(v8 - 8);
        if ((*(v9 + 48))(v3, 1, v8) == 1)
        {

          sub_215330D3C(v3);
          return;
        }

        v10 = v0;
        v11 = sub_21549F86C();
        (*(v9 + 8))(v3, v8);
        v12 = *(v11 + 16);

        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController;
        v14 = *&v10[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController];
        if (v14)
        {
          goto LABEL_11;
        }

        v15 = [objc_allocWithZone(MEMORY[0x277D368A8]) initWithRootViewController:v6 contentAnchorPoint:*MEMORY[0x277CBF348] sceneAnchorPoint:*(MEMORY[0x277CBF348] + 8) offset:*MEMORY[0x277CBF348] cornerRadius:{*(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 30.0}];
        v16 = [v15 contentView];
        v17 = [v10 view];
        if (v17)
        {
          v18 = v17;
          [v16 addSubview_];

          v19 = [v10 view];
          if (v19)
          {
            v20 = v19;
            [v19 ic_addConstraintsToFillSuperview];

            v21 = *&v10[v13];
            *&v10[v13] = v15;

            v14 = *&v10[v13];
            if (!v14)
            {
LABEL_12:

              return;
            }

LABEL_11:
            v22 = v14;
            [v22 show];

            goto LABEL_12;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

id VisionLinkAcceleratorViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisionLinkAcceleratorViewController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_minimumWidth] = 0x4079000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_minimumHeight] = 0x4046000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillCornerRadius] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_verticalPadding] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_horizontalPadding] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_215330B84(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_minimumWidth] = 0x4079000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_minimumHeight] = 0x4046000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillCornerRadius] = 0x403E000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_verticalPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_horizontalPadding] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor35VisionLinkAcceleratorViewController_pillOrnamentViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id VisionLinkAcceleratorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215330CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215330D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for VisionLinkAcceleratorViewController()
{
  result = qword_27CA5A920;
  if (!qword_27CA5A920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CollaboratorStatus.participant.getter()
{
  v1 = *(v0 + *(type metadata accessor for CollaboratorStatus(0) + 20));

  return v1;
}

void CollaboratorStatus.participant.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaboratorStatus(0) + 20);

  *(v1 + v3) = a1;
}

id CollaboratorStatus.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for CollaboratorStatus(0) + 24));

  return v1;
}

void CollaboratorStatus.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaboratorStatus(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t CollaboratorStatus.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollaboratorStatus(0) + 28);
  v4 = sub_21549ED6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollaboratorStatus.selection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaboratorStatus(0) + 28);
  v4 = sub_21549ED6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollaboratorStatus.init(participantID:participant:color:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21549E70C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for CollaboratorStatus(0);
  *(a5 + v11[5]) = a2;
  *(a5 + v11[6]) = a3;
  v12 = v11[7];
  v13 = sub_21549ED6C();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t static CollaboratorStatus.== infix(_:_:)()
{
  if (sub_21549E6DC())
  {
    sub_2151A6C9C(0, &qword_281199490);
    type metadata accessor for CollaboratorStatus(0);
    if (sub_2154A291C() & 1) != 0 && (sub_2154A291C())
    {

      JUMPOUT(0x2160658F0);
    }
  }

  return 0;
}

uint64_t sub_2153312E4()
{
  if (sub_21549E6DC())
  {
    sub_2151A6C9C(0, &qword_281199490);
    if (sub_2154A291C() & 1) != 0 && (sub_2154A291C())
    {

      JUMPOUT(0x2160658F0);
    }
  }

  return 0;
}

uint64_t _s11NotesEditor18CollaboratorStatusV13participantID10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21549E70C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s11NotesEditor18CollaboratorStatusV13participantID10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_21549E70C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id ResolvedCollaboratorStatus.participant.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResolvedCollaboratorStatus(0) + 20));

  return v1;
}

uint64_t sub_2153314D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ResolvedCollaboratorStatus.participant.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResolvedCollaboratorStatus(0) + 20);

  *(v1 + v3) = a1;
}

id ResolvedCollaboratorStatus.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for ResolvedCollaboratorStatus(0) + 24));

  return v1;
}

void ResolvedCollaboratorStatus.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResolvedCollaboratorStatus(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t ResolvedCollaboratorStatus.selections.getter()
{
  type metadata accessor for ResolvedCollaboratorStatus(0);
}

uint64_t ResolvedCollaboratorStatus.selections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResolvedCollaboratorStatus(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

int *ResolvedCollaboratorStatus.init(participantID:participant:color:selections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21549E70C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ResolvedCollaboratorStatus(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t _s11NotesEditor26ResolvedCollaboratorStatusV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_21549E6DC() & 1) == 0)
  {
    return 0;
  }

  sub_2151A6C9C(0, &qword_281199490);
  v4 = type metadata accessor for ResolvedCollaboratorStatus(0);
  if ((sub_2154A291C() & 1) == 0 || (sub_2154A291C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_215355370(v6, v7);
}

uint64_t sub_2153318E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_21549E70C();
  if (v6 <= 0x3F)
  {
    result = sub_2151A6C9C(319, &qword_2811995B0);
    if (v7 <= 0x3F)
    {
      result = sub_2151A6C9C(319, &qword_2811994C0);
      if (v8 <= 0x3F)
      {
        result = a4(319);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2153319C0()
{
  if (!qword_27CA5A930)
  {
    sub_2154A22EC();
    v0 = sub_2154A1FBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5A930);
    }
  }
}

void sub_215331A20(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer);
  *(v1 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = a1;
  v2 = a1;
}

unint64_t sub_215331A68()
{
  result = qword_281199470;
  if (!qword_281199470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199470);
  }

  return result;
}

id sub_215331AE4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (_UISolariumEnabled())
  {
    v9 = *&v4[OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer];
    v10 = v9;
    if (!v9)
    {
      v11 = v4;
      v10 = v4;
    }

    v12 = v9;
    v13 = [v10 window];
    if (v13)
    {

      v14 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
      return v14;
    }
  }

  sub_215331A68();
  v16 = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];
  result = 0;
  if (v16)
  {
    v17.receiver = v4;
    v17.super_class = type metadata accessor for ICMorphableButton();
    return objc_msgSendSuper2(&v17, *a4, a1, a2, a3);
  }

  return result;
}

id sub_215331C04(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6)
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  v13 = sub_215331AE4(v10, v11, a5, a6);

  swift_unknownObjectRelease();

  return v13;
}

id ICMorphableButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ICMorphableButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ICMorphableButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ICMorphableButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ICMorphableButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ICMorphableButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ICMorphableButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICMorphableButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_215331F70(void *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer);
  *(*v1 + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = a1;

  return a1;
}

double sub_21533201C()
{
  result = *MEMORY[0x277D36490];
  qword_27CA5A940 = *MEMORY[0x277D36490];
  return result;
}

double sub_215332058()
{
  result = *MEMORY[0x277D36498];
  qword_27CA5A948 = *MEMORY[0x277D36498];
  return result;
}

double sub_215332094(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t ICAuthorHighlightsController.Animation.duration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ICAuthorHighlightsController.Animation.fromValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ICAuthorHighlightsController.Animation.toValue.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void *ICAuthorHighlightsController.Animation.color.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t _sSo28ICAuthorHighlightsControllerC11NotesEditorE9AnimationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(a2 + 8);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 57);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (!v2)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!v6)
  {
    return 0;
  }

  sub_215325C60();
  v11 = v6;
  v12 = v2;
  v13 = sub_2154A291C();

  result = 0;
  if ((v13 & 1) == 0)
  {
    return result;
  }

LABEL_28:
  if (((v3 ^ v7) & 1) == 0)
  {
    return v4 ^ v8 ^ 1u;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2153323B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_21533240C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

id sub_215332480(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_isUpdatingPreferredContentSize] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___progressTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___cancelButton] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___stackView] = 0;
  v6 = &v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_didTapCancel];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_service] = a1;
  sub_215333D74(a2, &v2[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device]);
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  [v7 setModalPresentationStyle_];
  v8 = [v7 presentationController];

  if (v8)
  {
    [v8 setDelegate_];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v7;
}

void sub_2153325B8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_isUpdatingPreferredContentSize) = 0;
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView) = 0;
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___progressTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView) = 0;
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___cancelButton) = 0;
  *(v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___stackView) = 0;
  v2 = (v1 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_didTapCancel);
  *v2 = 0;
  v2[1] = 0;
  sub_2154A2EDC();
  __break(1u);
}

void sub_21533268C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_2153337D0(&OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___stackView, sub_215333A24);
  [v2 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2154BEA50;
  v5 = OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___stackView;
  v6 = [*&v0[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___stackView] leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 readableContentGuide];

  v10 = [v9 leadingAnchor];
  v11 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v11;
  v12 = [*&v0[v5] topAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 readableContentGuide];

  v16 = [v15 topAnchor];
  v17 = [v12 constraintEqualToAnchor:v16 constant:16.0];

  *(v4 + 40) = v17;
  v18 = [*&v0[v5] trailingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 readableContentGuide];

  v22 = [v21 trailingAnchor];
  v23 = [v18 constraintEqualToAnchor_];

  *(v4 + 48) = v23;
  v24 = [*&v0[v5] bottomAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v26 = v25;
  v45 = objc_opt_self();
  v27 = [v26 readableContentGuide];

  v28 = [v27 bottomAnchor];
  v29 = [v24 constraintEqualToAnchor:v28 constant:-8.0];

  *(v4 + 56) = v29;
  v30 = [*&v0[v5] widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v4 + 64) = v31;
  v32 = sub_2153337D0(&OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView, sub_215332E34);
  v33 = [v32 heightAnchor];

  v34 = [v33 constraintEqualToConstant_];
  *(v4 + 72) = v34;
  v35 = OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView;
  v36 = [*&v0[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView] widthAnchor];
  v37 = [*&v0[v35] heightAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v4 + 80) = v38;
  v39 = sub_215332D70();
  v40 = [v39 heightAnchor];

  v41 = [v40 constraintEqualToConstant_];
  *(v4 + 88) = v41;
  v42 = [*&v0[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView] widthAnchor];
  v43 = [*&v0[v5] widthAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v4 + 96) = v44;
  sub_2151A6C9C(0, &qword_2811995A0);
  v46 = sub_2154A1F3C();

  [v45 activateConstraints_];
}

id sub_215332C5C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_isUpdatingPreferredContentSize;
  if ((*(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_isUpdatingPreferredContentSize) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_isUpdatingPreferredContentSize) = 1;
    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result systemLayoutSizeFittingSize_];
      v5 = v4;
      v7 = v6;

      result = [v0 setPreferredContentSize_];
      *(v0 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_215332D70()
{
  v1 = OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView;
  v2 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___dividerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215332E34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];

  v1 = [objc_opt_self() labelColor];
  [v0 setTintColor_];

  sub_215332F44();
  v2 = sub_2154A1D2C();

  v3 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  return v0;
}

uint64_t sub_215332F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_21549F03C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = (v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device);
  v12 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device + 24);
  v13 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device), v12);
  (*(v13 + 24))(v12, v13);
  v26 = *(v5 + 56);
  v26(v3, 1, 1, v4);
  v27 = v3;
  sub_21549EF8C();
  LOBYTE(v12) = sub_21549F02C();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v28 = v5 + 8;
  v14(v10, v4);
  v15 = v11[3];
  v16 = v11[4];
  __swift_project_boxed_opaque_existential_0Tm(v11, v15);
  (*(v16 + 24))(v15, v16);
  if (v12)
  {
    v26(v27, 1, 1, v4);
    sub_21549EF8C();
    v17 = sub_21549F02C();
    v14(v8, v4);
    v14(v10, v4);
    if (v17)
    {
      return 0x656E6F687069;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v26(v27, 1, 1, v4);
    sub_21549EF8C();
    v19 = sub_21549F02C();
    v14(v8, v4);
    v20 = v14;
    v14(v10, v4);
    v21 = v11[3];
    v22 = v11[4];
    __swift_project_boxed_opaque_existential_0Tm(v11, v21);
    (*(v22 + 24))(v21, v22);
    if (v19)
    {
      v26(v27, 1, 1, v4);
      sub_21549EF8C();
      v23 = sub_21549F02C();
      v20(v8, v4);
      v20(v10, v4);
      if (v23)
      {
        return 1684107369;
      }

      else
      {
        return 0x6D6F682E64617069;
      }
    }

    else
    {
      v26(v27, 1, 1, v4);
      sub_21549EF8C();
      v24 = sub_21549F02C();
      v20(v8, v4);
      v20(v10, v4);
      if (v24)
      {
        return 0x63756F74646F7069;
      }

      else
      {
        return 0x656E6F687069;
      }
    }
  }
}

id sub_21533346C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() ic_preferredFontForBodyText];
  [v0 setFont_];

  sub_215333558();
  v2 = sub_2154A1D2C();

  [v0 setText_];

  [v0 setTextAlignment_];
  return v0;
}

uint64_t sub_215333558()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  sub_2154A1D6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2154BDB50;
  v5 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device + 24);
  v6 = *(v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_device), v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_215333D20();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v10 = sub_2154A1D3C();

  return v10;
}

id sub_2153337D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_215333834(uint64_t a1)
{
  v2 = sub_2154A2AAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_2154A2A7C();
  v9 = [objc_opt_self() mainBundle];
  v10 = sub_2154A1D2C();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  sub_2154A1D6C();
  sub_2154A2A8C();
  sub_2151A6C9C(0, &qword_281199470);
  (*(v3 + 16))(v6, v8, v2);
  v12 = sub_2154A2ABC();
  [v12 addTarget:a1 action:sel_cancelButtonDidTouchUpInsideButton_ forControlEvents:64];
  (*(v3 + 8))(v8, v2);
  return v12;
}

id sub_215333A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2154BDB30;
  *(v0 + 32) = sub_2153337D0(&OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___deviceImageView, sub_215332E34);
  *(v0 + 40) = sub_2153337D0(&OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___progressTitleLabel, sub_21533346C);
  *(v0 + 48) = sub_215332D70();
  *(v0 + 56) = sub_2153337D0(&OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController____lazy_storage___cancelButton, sub_215333834);
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2151A6C9C(0, &qword_2811994D0);
  v2 = sub_2154A1F3C();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

char *sub_215333BA8(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_didTapCancel];
  if (v1)
  {
    v2 = result;
    v3 = sub_2151BD748(v1);
    v1(v3);

    return sub_21532594C(v1);
  }

  return result;
}

unint64_t sub_215333D20()
{
  result = qword_27CA5AA20[0];
  if (!qword_27CA5AA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA5AA20);
  }

  return result;
}

uint64_t sub_215333D74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_215333DE0(uint64_t a1)
{
  v1 = a1;
  v33 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &unk_27CA5AB90);
    sub_21533FBE4(&unk_27CA5ABB0, &unk_27CA5AB90);
    sub_2154A20FC();
    v1 = v28;
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v25 = v1;
LABEL_8:
  v9 = v4;
  while (v1 < 0)
  {
    if (!sub_2154A2CDC() || (sub_2151A6C9C(0, &unk_27CA5AB90), swift_dynamicCast(), v13 = v27, v4 = v9, v10 = v5, !v27))
    {
LABEL_29:
      sub_2151A66EC();
      return;
    }

LABEL_21:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    v26 = v10;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    v17 = v13;
    v18 = v17;
    if (v16)
    {
      v19 = v17;
      v20 = [v16 changedValues];
      v21 = sub_2154A1C8C();

      if (*(v21 + 16))
      {
        sub_2153B0D68(0xD000000000000010, 0x80000002154D60D0);
        v23 = v22;

        if (v23)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v10 = v26;
LABEL_11:

      v9 = v4;
      v5 = v10;
      v1 = v25;
    }

    else
    {
LABEL_25:
      v24 = [v15 objectID];

      v9 = v4;
      v1 = v25;
      v5 = v26;
      if (v24)
      {
        MEMORY[0x216068AC0]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
          v1 = v25;
        }

        sub_2154A1FAC();
        v5 = v26;
        goto LABEL_8;
      }
    }
  }

  v11 = v9;
  v12 = v5;
  v4 = v9;
  if (v5)
  {
LABEL_17:
    v10 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void *sub_215334174(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x216069960](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_215334288()
{
  result = [objc_allocWithZone(type metadata accessor for SharedWithYouController()) init];
  qword_2811999D0 = result;
  return result;
}

id SharedWithYouController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SharedWithYouController.shared.getter()
{
  if (qword_2811999C0 != -1)
  {
    swift_once();
  }

  v1 = qword_2811999D0;

  return v1;
}

void *SharedWithYouController.managedObjectContext.getter()
{
  v1 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SharedWithYouController.managedObjectContext.setter(void *a1)
{
  v3 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_2153345A0();
  sub_215334870();
  _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
}

void sub_215334534(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_2153345A0();
  sub_215334870();
  _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
}

void sub_2153345A0()
{
  v1 = OBJC_IVAR___ICSharedWithYouControllerInternal_shareObservers;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84FA0];

  v2 = [objc_opt_self() sharedContext];
  v3 = [v2 containersByAccountID];

  sub_2151A6C9C(0, &qword_2811996B0);
  v4 = sub_2154A1C8C();

  v5 = sub_2153399F8(v4);

  v6 = 0;
  v8 = v5 + 64;
  v7 = *(v5 + 64);
  v26 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) != 0)
  {
    do
    {
      v13 = v6;
LABEL_9:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = v14 | (v13 << 6);
      v16 = *(*(v26 + 48) + 8 * v15);
      v17 = (*(v26 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = objc_allocWithZone(MEMORY[0x277CBC768]);
      v21 = v16;

      v22 = [v20 initWithContainer_];
      v23 = swift_allocObject();
      *(v23 + 16) = v18;
      *(v23 + 24) = v19;

      sub_2151BD748(sub_21533FCE4);
      sub_2154A267C();

      v24 = swift_allocObject();
      *(v24 + 16) = v18;
      *(v24 + 24) = v19;
      sub_2151BD748(sub_21533FCF0);
      sub_2154A268C();

      swift_beginAccess();
      v25 = v22;
      sub_2153EE1EC(&v27, v25);
      swift_endAccess();
    }

    while (v11);
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v13);
    ++v6;
    if (v11)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_215334870()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB50);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = v36 - v3;
  v4 = sub_2154A250C();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB60);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  v39 = OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextObjectsDidChangeObserver;
  if (*(v0 + OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextObjectsDidChangeObserver))
  {

    sub_21549F31C();
  }

  v42 = OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextDidSaveObserver;
  if (*(v0 + OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextDidSaveObserver))
  {

    sub_21549F31C();
  }

  v38 = objc_opt_self();
  v17 = [v38 defaultCenter];
  v37 = objc_opt_self();
  v18 = [v37 sharedContext];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 managedObjectContext];
  }

  sub_2154A251C();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB68);
  v21 = sub_215337144(&qword_281199588, MEMORY[0x277CC9DB0]);
  v22 = v47;
  v36[1] = v21;
  sub_21549F37C();
  v23 = *(v48 + 8);
  v48 += 8;
  v23(v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AB70);
  sub_21549F2FC();
  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2151ACC5C(&qword_281199728, &qword_27CA5AB60);
  v24 = v41;
  v25 = sub_21549F3EC();

  (*(v40 + 8))(v16, v24);
  *(v1 + v39) = v25;

  v26 = [v38 defaultCenter];
  v27 = [v37 sharedContext];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 managedObjectContext];
  }

  v30 = v43;
  sub_2154A251C();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AB80);
  v31 = v44;
  v32 = v47;
  sub_21549F39C();
  v23(v30, v32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2151ACC5C(&unk_281199718, &qword_27CA5AB50);
  v33 = v46;
  v34 = sub_21549F3EC();

  (*(v45 + 8))(v31, v33);
  *(v1 + v42) = v34;
}

void _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0()
{
  v1 = sub_2154A10EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2154A110C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10)
  {
    v21 = *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_processHighlightsQueue];
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_21533DF44;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_57;
    v12 = _Block_copy(aBlock);
    v20 = v5;
    v13 = v12;
    v19 = v10;
    v14 = v0;
    sub_2154A10FC();
    v22 = MEMORY[0x277D84F90];
    sub_215337144(&qword_281199700, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
    sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
    sub_2154A2BEC();
    MEMORY[0x216069000](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v20);
  }

  else
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A226C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v15, v16, "SharedWithYouController does not have managedObjectContext set", v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
    }
  }
}

void (*SharedWithYouController.managedObjectContext.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_215335304;
}

void sub_215335304(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2153345A0();
    sub_215334870();
    _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
  }
}

void *SharedWithYouController.highlight(for:)(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter) highlights];
  sub_2151A6C9C(0, &qword_2811996A8);
  v4 = sub_2154A1F4C();

  v7[2] = a1;
  v5 = sub_215334174(sub_21533FE14, v7, v4);

  return v5;
}

uint64_t SharedWithYouController.fetchShareMetadata(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2154A10EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2154A110C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR___ICSharedWithYouControllerInternal_fetchShareMetadataQueue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_2153358D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_2154A10FC();
  v20 = MEMORY[0x277D84F90];
  sub_215337144(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_215335868(void *a1, uint64_t a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v7 = a1;

  sub_21533D184(a2, v7, v7, a3, a4);
}

void sub_2153358E4(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, void, void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAD8);
  MEMORY[0x28223BE20](v9 - 8);
  v113 = &v97 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAE0);
  v106 = *(v112 - 8);
  v11 = MEMORY[0x28223BE20](v112);
  v103 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAE8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v97 - v15);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF0);
  v17 = *(v115 - 8);
  v18 = MEMORY[0x28223BE20](v115);
  v104 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v97 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF8);
  v21 = MEMORY[0x28223BE20](v118);
  v111 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = (&v97 - v23);
  if (a2)
  {
    sub_21533DE18(a1);
    v24 = sub_21549F0FC();
    v25 = sub_2154A226C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2151A1000, v24, v25, "SharedWithYouController fetchShareMetadata failed", v26, 2u);
      MEMORY[0x21606B520](v26, -1, -1);
    }

    sub_21533DE28();
    v27 = swift_allocError();
    *v28 = a1;
    sub_21533DE8C(a1, 1);
    a4(0, 0, v27);

    sub_21533DE98(a1, 1);
  }

  else
  {
    v99 = a5;
    v100 = a4;
    v29 = a1 + 64;
    v30 = 1 << *(a1 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a1 + 64);
    v33 = (v30 + 63) >> 6;
    v108 = (v17 + 56);
    v98 = v17;
    v107 = (v17 + 48);
    v119 = a1;

    v34 = 0;
    v105 = MEMORY[0x277D84F90];
    v117 = v29;
    v109 = v33;
    v110 = v16;
LABEL_8:
    v35 = v34;
    if (!v32)
    {
      goto LABEL_10;
    }

    do
    {
      v34 = v35;
LABEL_13:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v119;
      v39 = *(v119 + 48);
      v40 = sub_21549E56C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 16);
      v43 = v114;
      v42(v114, v39 + *(v41 + 72) * v37, v40);
      v44 = v42;
      v45 = (*(v38 + 56) + 24 * v37);
      v47 = *v45;
      v46 = v45[1];
      v116 = v45[2];
      v48 = v116;
      v49 = (v43 + *(v118 + 48));
      *v49 = v47;
      v49[1] = v46;
      v49[2] = v48;
      v50 = v115;
      v51 = v110;
      v52 = (v110 + *(v115 + 48));
      v44(v110, v43, v40);
      *v52 = v47;
      v52[1] = v46;
      (*v108)(v51, 0, 1, v50);
      swift_bridgeObjectRetain_n();
      v53 = v116;
      sub_2151ADCD8(v43, &qword_27CA5AAF8);
      if ((*v107)(v51, 1, v50) != 1)
      {
        v54 = v102;
        sub_21533FB7C(v51, v102, &qword_27CA5AAF0);
        sub_21533FB7C(v54, v104, &qword_27CA5AAF0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = sub_215317F74(0, v105[2] + 1, 1, v105);
        }

        v29 = v117;
        v56 = v98;
        v58 = v105[2];
        v57 = v105[3];
        if (v58 >= v57 >> 1)
        {
          v61 = sub_215317F74(v57 > 1, v58 + 1, 1, v105);
          v56 = v98;
          v105 = v61;
        }

        v59 = v104;
        v60 = v105;
        v105[2] = v58 + 1;
        sub_21533FB7C(v59, v60 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v58, &qword_27CA5AAF0);
        goto LABEL_8;
      }

      sub_2151ADCD8(v51, &qword_27CA5AAE8);
      v35 = v34;
      v29 = v117;
      v33 = v109;
    }

    while (v32);
    while (1)
    {
LABEL_10:
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v34 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v34);
      ++v35;
      if (v32)
      {
        goto LABEL_13;
      }
    }

    v62 = v119;

    if (v105[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB08);
      v63 = sub_2154A2F3C();
    }

    else
    {
      v63 = MEMORY[0x277D84F98];
    }

    v120[0] = v63;

    sub_21533C414(v64, 1, v120);
    v108 = 0;

    v109 = v120[0];
    v65 = 1 << *(v62 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v62 + 64);
    sub_21533DE8C(v62, 0);
    v68 = 0;
    v69 = ((v65 + 63) >> 6);
    v114 = (v106 + 48);
    v115 = v106 + 56;
    v110 = MEMORY[0x277D84F90];
    v116 = v69;
    v70 = v111;
    while (v67)
    {
      v71 = v68;
LABEL_32:
      v72 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v73 = v72 | (v71 << 6);
      v74 = v119;
      v75 = *(v119 + 48);
      v76 = sub_21549E56C();
      v77 = *(v76 - 8);
      v78 = *(v77 + 16);
      v78(v70, v75 + *(v77 + 72) * v73, v76);
      v79 = v78;
      v80 = (*(v74 + 56) + 24 * v73);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[2];
      v84 = (v70 + *(v118 + 48));
      *v84 = v81;
      v84[1] = v82;
      v84[2] = v83;
      v85 = v112;
      v86 = v113;
      v87 = *(v112 + 48);
      v79(v113, v70, v76);
      *(v86 + v87) = v83;
      (*v115)(v86, 0, 1, v85);
      v88 = v83;

      sub_2151ADCD8(v70, &qword_27CA5AAF8);
      if ((*v114)(v86, 1, v85) == 1)
      {
        sub_2151ADCD8(v86, &qword_27CA5AAD8);
        v68 = v71;
        v69 = v116;
        v29 = v117;
      }

      else
      {
        v89 = v101;
        sub_21533FB7C(v86, v101, &qword_27CA5AAE0);
        sub_21533FB7C(v89, v103, &qword_27CA5AAE0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_215317F50(0, v110[2] + 1, 1, v110);
        }

        v29 = v117;
        v91 = v110[2];
        v90 = v110[3];
        if (v91 >= v90 >> 1)
        {
          v110 = sub_215317F50(v90 > 1, v91 + 1, 1, v110);
        }

        v92 = v110;
        v110[2] = v91 + 1;
        sub_21533FB7C(v103, v92 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v91, &qword_27CA5AAE0);
        v68 = v71;
        v69 = v116;
      }
    }

    while (1)
    {
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v71 >= v69)
      {

        if (v110[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AB10);
          v93 = sub_2154A2F3C();
        }

        else
        {
          v93 = MEMORY[0x277D84F98];
        }

        v94 = v100;
        v120[0] = v93;

        v96 = v108;
        sub_21533BED0(v95, 1, v120);
        if (!v96)
        {

          v94(v120[0], v109, 0);

          return;
        }

        goto LABEL_46;
      }

      v67 = *(v29 + 8 * v71);
      ++v68;
      if (v67)
      {
        goto LABEL_32;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_215336450(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    sub_21549E56C();
    sub_2151A6C9C(0, &qword_27CA5AAC0);
    sub_215337144(&unk_27CA5B110, MEMORY[0x277CC9260]);
    v7 = sub_2154A1C7C();
  }

  if (a2)
  {
    sub_21549E56C();
    sub_215337144(&unk_27CA5B110, MEMORY[0x277CC9260]);
    a2 = sub_2154A1C7C();
  }

  if (a3)
  {
    v8 = sub_21549E3CC();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

Swift::Void __swiftcall SharedWithYouController.userAcceptedInvitation(_:_:)(CKShareMetadata a1, NSManagedObjectID a2)
{
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    isa = a2.super.isa;
    v37 = v16;
    v17 = [(objc_class *)a1.super.isa share];
    v18 = [v17 URL];

    if (v18)
    {
      sub_21549E51C();

      v19 = *(v6 + 32);
      v19(v14, v12, v5);
      (*(v6 + 16))(v9, v14, v5);
      v20 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v33 = v14;
      v21 = a1.super.isa;
      v22 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      v24 = v5;
      v34 = v5;
      v35 = v6;
      v26 = isa;
      v25 = v37;
      *(v23 + 2) = v37;
      *(v23 + 3) = v26;
      *(v23 + 4) = v2;
      v19(&v23[v20], v9, v24);
      *&v23[v22] = v21;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_215336A98;
      *(v27 + 24) = v23;
      aBlock[4] = sub_21532425C;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2152F1C04;
      aBlock[3] = &block_descriptor_9_0;
      v28 = _Block_copy(aBlock);
      v29 = v25;
      v30 = v26;
      v31 = v2;
      v32 = v21;

      [v29 performBlockAndWait_];
      _Block_release(v28);

      (*(v35 + 8))(v33, v34);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if ((v25 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_215336914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a1 ic:a2 existingObjectWithID:?];
  if (v6)
  {
    v12 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7 && (v8 = [v7 cloudAccount]) != 0)
    {
      v9 = v8;
      v10 = v12;
      v11 = [a5 share];
      MEMORY[0x28223BE20](v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AAC8);
      sub_2154A261C();
    }

    else
    {
    }
  }
}

void sub_215336A98()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_215336914(v3, v4, v6, v0 + v2, v5);
}

char *SharedWithYouController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2154A250C();
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  MEMORY[0x28223BE20](v1);
  v33 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2154A244C();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2154A241C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2154A110C();
  MEMORY[0x28223BE20](v9 - 8);
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext] = 0;
  sub_21549F0AC();
  v10 = OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x277CDC678]) init];
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextObjectsDidChangeObserver] = 0;
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextDidSaveObserver] = 0;
  v11 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_objectIdsOfEditedNotes] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_shareObservers] = v11;
  *&v0[OBJC_IVAR___ICSharedWithYouControllerInternal_accountsDidChangeObserver] = 0;
  v31 = OBJC_IVAR___ICSharedWithYouControllerInternal_processHighlightsQueue;
  v12 = sub_2151A6C9C(0, &unk_2811995C0);
  v29 = "sViewController.swift";
  v30 = v12;
  sub_2154A10FC();
  v39 = MEMORY[0x277D84F90];
  v28 = sub_215337144(&unk_2811995D0, MEMORY[0x277D85230]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA48);
  sub_2151ACC5C(&unk_2811996D0, &unk_27CA5AA48);
  sub_2154A2BEC();
  v13 = *MEMORY[0x277D85260];
  v14 = *(v37 + 104);
  v37 += 104;
  v26 = v7;
  v14(v7, v13, v36);
  *&v0[v31] = sub_2154A247C();
  v31 = OBJC_IVAR___ICSharedWithYouControllerInternal_fetchShareMetadataQueue;
  sub_2154A10FC();
  v39 = MEMORY[0x277D84F90];
  sub_2154A2BEC();
  v14(v26, v13, v36);
  v15 = sub_2154A247C();
  v16 = ObjectType;
  *&v0[v31] = v15;
  v38.receiver = v0;
  v38.super_class = v16;
  v17 = objc_msgSendSuper2(&v38, sel_init);
  v18 = *&v17[OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter];
  v19 = v17;
  [v18 setDelegate_];
  v20 = [objc_opt_self() defaultCenter];
  v21 = v33;
  sub_2154A251C();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215337144(&qword_281199588, MEMORY[0x277CC9DB0]);
  v22 = v34;
  v23 = sub_21549F3EC();

  (*(v35 + 8))(v21, v22);
  *&v19[OBJC_IVAR___ICSharedWithYouControllerInternal_accountsDidChangeObserver] = v23;

  return v19;
}

uint64_t sub_215337144(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21533718C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _s11NotesEditor23SharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0();
  }
}

void sub_215337218(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_2154A2C8C();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 >= 1)
  {
    v14 = 0;
    v40 = OBJC_IVAR___ICSharedWithYouControllerInternal_logger;
    v52 = a1 & 0xC000000000000001;
    v50 = 0;
    v51 = (v9 + 56);
    v49 = (v9 + 48);
    v43 = (v9 + 32);
    v44 = OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter;
    v42 = (v9 + 8);
    *&v10 = 138412290;
    v39 = v10;
    v46 = v5;
    v47 = a1;
    v45 = v13;
    v41 = v12;
    while (1)
    {
      if (v52)
      {
        v15 = MEMORY[0x216069960](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 serverShare];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 URL];

        if (v19)
        {
          sub_21549E51C();

          v20 = 0;
        }

        else
        {
          v20 = 1;
        }

        (*v51)(v5, v20, 1, v8);
        sub_21533FB7C(v5, v7, &unk_27CA5B090);
        if ((*v49)(v7, 1, v8) != 1)
        {
          (*v43)(v12, v7, v8);
          v21 = *(v48 + v44);
          v22 = [v21 highlights];
          sub_2151A6C9C(0, &qword_2811996A8);
          v23 = v12;
          v24 = sub_2154A1F4C();

          MEMORY[0x28223BE20](v25);
          *(&v39 - 2) = v23;
          v26 = v50;
          v27 = sub_215334174(sub_21533FE14, (&v39 - 2), v24);

          v50 = v26;
          if (v27)
          {
            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (v28)
            {
              v29 = v28;
              v30 = objc_allocWithZone(MEMORY[0x277CDC688]);
              v31 = v27;
              v32 = [v30 initWithHighlight:v29 type:1];
              [v21 _postNoticeForHighlightEvent_];
            }

            else
            {
              v33 = v27;
              v34 = sub_21549F0FC();
              v35 = sub_2154A226C();

              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                *v36 = v39;
                *(v36 + 4) = v33;
                *v37 = v27;
                v38 = v33;
                _os_log_impl(&dword_2151A1000, v34, v35, "edit notices: collaboration highlight cast failed, highlight = %@", v36, 0xCu);
                sub_2151ADCD8(v37, &unk_27CA59E90);
                MEMORY[0x21606B520](v37, -1, -1);
                MEMORY[0x21606B520](v36, -1, -1);
              }

              else
              {
                v38 = v34;
                v34 = v33;
              }
            }

            v12 = v41;
            (*v42)(v41, v8);
            v5 = v46;
            a1 = v47;
          }

          else
          {
            (*v42)(v23, v8);

            v5 = v46;
            a1 = v47;
            v12 = v23;
          }

          v13 = v45;
          goto LABEL_7;
        }
      }

      else
      {

        (*v51)(v7, 1, 1, v8);
      }

      sub_2151ADCD8(v7, &unk_27CA5B090);
LABEL_7:
      if (v13 == ++v14)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_2153377AC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E56C();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v112 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v101 - v9;
  if (a1 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    v11 = 0;
    v117 = 0;
    v123 = OBJC_IVAR___ICSharedWithYouControllerInternal_logger;
    v124 = a1 & 0xC000000000000001;
    v114 = a1 + 32;
    v115 = a1 & 0xFFFFFFFFFFFFFF8;
    v110 = v5 + 4;
    v111 = OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter;
    v109 = v5 + 1;
    *&v8 = 138412290;
    v103 = v8;
    *&v8 = 136315138;
    v101 = v8;
    v105 = a1;
    v104 = v2;
    v106 = v4;
    v118 = i;
    while (1)
    {
      if (v124)
      {
        v12 = MEMORY[0x216069960](v11, a1);
      }

      else
      {
        if (v11 >= *(v115 + 16))
        {
          goto LABEL_73;
        }

        v12 = *(v114 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v15 = [v12 note];
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = v15;
      v17 = [v15 serverShare];

      if (!v17)
      {
        goto LABEL_38;
      }

      v18 = [v17 URL];
      if (!v18)
      {
        goto LABEL_37;
      }

      v125 = v17;
      v19 = v112;
      v20 = v18;
      sub_21549E51C();

      v21 = v116;
      (v110->isa)(v116, v19, v4);
      v108 = *(v2 + v111);
      v22 = [v108 highlights];
      sub_2151A6C9C(0, &qword_2811996A8);
      v23 = sub_2154A1F4C();

      MEMORY[0x28223BE20](v24);
      *(&v101 - 2) = v21;
      v25 = v117;
      v26 = v4;
      v4 = sub_215334174(sub_21533FE14, (&v101 - 2), v23);
      v117 = v25;

      if (!v4)
      {
        (v109->isa)(v21, v26);
        v4 = v26;
        i = v118;
        v17 = v125;
LABEL_37:

LABEL_38:
        v5 = sub_21549F0FC();
        v46 = sub_2154A225C();
        if (os_log_type_enabled(v5, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_2151A1000, v5, v46, "mention notices: shareURL or highlight not found", v47, 2u);
          MEMORY[0x21606B520](v47, -1, -1);
        }

        goto LABEL_5;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      v28 = v4;
      v29 = v28;
      if (!v27)
      {
        v5 = sub_21549F0FC();
        v48 = sub_2154A226C();

        if (os_log_type_enabled(v5, v48))
        {
          v49 = v29;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = v103;
          *(v50 + 4) = v49;
          *v51 = v4;
          v52 = v49;
          _os_log_impl(&dword_2151A1000, v5, v48, "mention notices: collaboration highlight cast failed, highlight = %@", v50, 0xCu);
          sub_2151ADCD8(v51, &unk_27CA59E90);
          MEMORY[0x21606B520](v51, -1, -1);
          v53 = v50;
          v29 = v52;
          MEMORY[0x21606B520](v53, -1, -1);
          v54 = v13;
          i = v118;
          v13 = v125;
        }

        else
        {
          v54 = v5;
          v5 = v125;
          i = v118;
        }

        goto LABEL_46;
      }

      v107 = v28;
      v30 = [v13 tokenContentIdentifier];
      i = v118;
      v31 = v125;
      if (!v30)
      {
        v55 = v13;
        v5 = sub_21549F0FC();
        v56 = sub_2154A226C();

        if (os_log_type_enabled(v5, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = v103;
          *(v57 + 4) = v55;
          *v58 = v55;
          v59 = v55;
          _os_log_impl(&dword_2151A1000, v5, v56, "mention notices: tokenContentIdentifier missing for mention = %@", v57, 0xCu);
          sub_2151ADCD8(v58, &unk_27CA59E90);
          v60 = v58;
          a1 = v105;
          MEMORY[0x21606B520](v60, -1, -1);
          v61 = v57;
          i = v118;
          MEMORY[0x21606B520](v61, -1, -1);
          v62 = v107;
          v55 = v107;
        }

        else
        {
          v59 = v5;
          v62 = v107;
          v5 = v107;
        }

        goto LABEL_49;
      }

      v102 = v27;
      v32 = v30;
      v119 = sub_2154A1D6C();
      v113 = v33;

      v34 = [v31 participants];
      sub_2151A6C9C(0, &qword_2811995B0);
      v2 = sub_2154A1F4C();

      if (v2 >> 62)
      {
        v5 = sub_2154A2C8C();
        if (!v5)
        {
LABEL_66:

          v94 = v113;

          v2 = v104;
          v5 = sub_21549F0FC();
          v95 = sub_2154A225C();

          if (os_log_type_enabled(v5, v95))
          {
            v96 = v31;
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v127[0] = v98;
            *v97 = v101;
            v99 = sub_215348D98(v119, v94, v127);

            *(v97 + 4) = v99;
            i = v118;
            _os_log_impl(&dword_2151A1000, v5, v95, "mention notices: participant %s not found in share, or is self", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            MEMORY[0x21606B520](v98, -1, -1);
            MEMORY[0x21606B520](v97, -1, -1);

            v100 = v107;
          }

          else
          {

            v5 = v107;
          }

          v4 = v106;
          (v109->isa)(v116, v106);
          a1 = v105;
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_66;
        }
      }

      a1 = 0;
      v121 = v2 & 0xFFFFFFFFFFFFFF8;
      v122 = v2 & 0xC000000000000001;
      v120 = v13;
      while (1)
      {
        if (v122)
        {
          v37 = MEMORY[0x216069960](a1, v2);
          v38 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (a1 >= *(v121 + 16))
          {
            goto LABEL_72;
          }

          v37 = *(v2 + 8 * a1 + 32);
          v38 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_71;
          }
        }

        v39 = v37;
        v40 = [v31 currentUserParticipant];
        if (v40)
        {
          v4 = v40;
          v41 = sub_2154A291C();

          if (v41)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v42 = [v39 userIdentity];
        v4 = [v42 userRecordID];

        if (!v4)
        {
          goto LABEL_21;
        }

        v43 = [v4 recordName];

        v44 = sub_2154A1D6C();
        v4 = v45;

        if (v44 == v119 && v4 == v113)
        {
          break;
        }

        v35 = sub_2154A2FAC();

        i = v118;
        if (v35)
        {
          goto LABEL_52;
        }

LABEL_21:

        ++a1;
        v36 = v38 == v5;
        v31 = v125;
        v13 = v120;
        if (v36)
        {
          goto LABEL_66;
        }
      }

      i = v118;
LABEL_52:

      v63 = [v39 userIdentity];
      v64 = [v63 lookupInfo];

      v2 = v104;
      a1 = v105;
      v13 = v120;
      if (!v64 || (v65 = [v64 emailAddress], v64, !v65))
      {
        v66 = [v39 userIdentity];
        v67 = [v66 lookupInfo];

        if (!v67 || (v65 = [v67 phoneNumber], v67, !v65))
        {
          v75 = v39;
          v5 = sub_21549F0FC();
          v76 = sub_2154A226C();

          if (!os_log_type_enabled(v5, v76))
          {

            v5 = v107;
LABEL_46:

            goto LABEL_51;
          }

          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v127[0] = v78;
          *v77 = v101;
          v79 = [v75 userIdentity];
          v80 = [v79 lookupInfo];

          v126 = v80;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ABA0);
          v81 = sub_2154A1D9C();
          v83 = sub_215348D98(v81, v82, v127);
          i = v118;

          *(v77 + 4) = v83;
          _os_log_impl(&dword_2151A1000, v5, v76, "mention notices: could not get handle from participant lookupInfo = %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          v84 = v78;
          a1 = v105;
          MEMORY[0x21606B520](v84, -1, -1);
          MEMORY[0x21606B520](v77, -1, -1);

          v85 = v107;
LABEL_49:

          goto LABEL_50;
        }
      }

      sub_2154A1D6C();

      v68 = [objc_opt_self() ic:v39 contactFromParticipant:?];
      v69 = [v68 ic_shortName];

      if (v69)
      {
        v70 = objc_allocWithZone(MEMORY[0x277CDC6F0]);
        v71 = sub_2154A1D2C();

        v5 = [v70 initWithHandle:v71 displayName:v69 thumbnailImageData:0];

        v72 = objc_allocWithZone(MEMORY[0x277CDC690]);
        v73 = [v72 initWithHighlight:v102 mentionedPerson:v5];
        [v108 _postNoticeForHighlightEvent_];

        v74 = v107;
LABEL_50:

LABEL_51:
        v4 = v106;
        (v109->isa)(v116, v106);
      }

      else
      {

        v86 = v39;
        v5 = sub_21549F0FC();
        v87 = sub_2154A226C();

        if (os_log_type_enabled(v5, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v88 = v103;
          *(v88 + 4) = v86;
          *v89 = v86;
          v86 = v86;
          _os_log_impl(&dword_2151A1000, v5, v87, "mention notices: could not get short display name from participant = %@", v88, 0xCu);
          sub_2151ADCD8(v89, &unk_27CA59E90);
          v90 = v89;
          i = v118;
          MEMORY[0x21606B520](v90, -1, -1);
          MEMORY[0x21606B520](v88, -1, -1);
          v91 = v13;
          v4 = v106;
          v92 = v125;
        }

        else
        {
          v91 = v5;
          v5 = v125;
          v92 = v13;
          v4 = v106;
        }

        v93 = v107;
        (v109->isa)(v116, v4);
      }

LABEL_5:
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    ;
  }
}

void sub_21533863C(char *a1, void *a2)
{
  v50 = a2;
  v3 = sub_2154A112C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_2154A10CC();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&a1[OBJC_IVAR___ICSharedWithYouControllerInternal_highlightCenter];
  v13 = [v12 highlights];
  sub_2151A6C9C(0, &qword_2811996A8);
  v14 = sub_2154A1F4C();

  if (v14 >> 62)
  {
    v15 = sub_2154A2C8C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 >= 1)
  {
    v16 = v51;
    *v51 = 10;
    v17 = *MEMORY[0x277D85188];
    isa = v52[13].isa;
    v49 = v10;
    (isa)(v16, v17, v10);
    v19 = dispatch_semaphore_create(0);
    v55 = 0;
    v54 = MEMORY[0x277D84F90];
    v20 = [v12 highlights];
    v21 = sub_2154A1F4C();

    v22 = a1;
    v23 = v19;
    sub_21533F004(v21, v50, v22, &v54, v22, &v55, v23);

    sub_2154A111C();
    MEMORY[0x216067CE0](v7, v16);
    v24 = *(v4 + 8);
    v24(v7, v3);
    sub_2154A253C();
    v24(v9, v3);
    if ((sub_2154A10DC() & 1) == 0)
    {
      v37 = sub_21549F0FC();
      v38 = sub_2154A226C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2151A1000, v37, v38, "SharedWithYouController processHighlights timed out", v39, 2u);
        MEMORY[0x21606B520](v39, -1, -1);
      }

      else
      {
      }

      (v52[1].isa)(v51, v49);

      v40 = v55;
      goto LABEL_23;
    }

    swift_beginAccess();
    v25 = v55;
    if (v55)
    {
      v26 = v55;
      v27 = sub_21549F0FC();
      v28 = sub_2154A226C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        swift_getErrorValue();
        v31 = sub_2154A306C();
        v33 = sub_215348D98(v31, v32, aBlock);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_2151A1000, v27, v28, "SharedWithYouController processHighlights failed with error: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x21606B520](v30, -1, -1);
        MEMORY[0x21606B520](v29, -1, -1);
      }

      else
      {
      }

      (v52[1].isa)(v51, v49);

      v40 = v25;
LABEL_23:

      return;
    }

    swift_beginAccess();
    v41 = v54;
    if (v54 >> 62)
    {
      if (sub_2154A2C8C() <= 0)
      {
        goto LABEL_20;
      }
    }

    else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_20;
    }

    v42 = swift_allocObject();
    v43 = v50;
    *(v42 + 16) = v41;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_21533F768;
    *(v44 + 24) = v42;
    aBlock[4] = sub_215325950;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2152F1C04;
    aBlock[3] = &block_descriptor_67;
    v45 = _Block_copy(aBlock);

    v46 = v43;

    [v46 performBlockAndWait_];
    _Block_release(v45);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      __break(1u);
      return;
    }

LABEL_20:
    v47 = [objc_opt_self() defaultCenter];
    [v47 postNotificationName:@"ICSharedWithYouControllerDidUpdateHighlightsNotification" object:0];

    (v52[1].isa)(v51, v49);

    return;
  }

  v52 = sub_21549F0FC();
  v34 = sub_2154A225C();
  if (os_log_type_enabled(v52, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2151A1000, v52, v34, "SharedWithYouController processHighlights no highlights available", v35, 2u);
    MEMORY[0x21606B520](v35, -1, -1);
  }

  v36 = v52;
}

uint64_t sub_215338DEC(uint64_t a1, void *a2)
{
  v46 = sub_21549E56C();
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() allInvitationsInContext_];
  sub_2151A6C9C(0, &qword_27CA5AB48);
  isUniquelyReferenced_nonNull_native = sub_2154A1F4C();

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_34:
    v8 = sub_2154A2C8C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v39[1] = v41 + 16;
      v40 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v44 = (v41 + 8);
      v45 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v42 = v8;
      v43 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v45)
        {
          v12 = MEMORY[0x216069960](v9, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v9 >= *(v40 + 16))
          {
            goto LABEL_32;
          }

          v12 = *(isUniquelyReferenced_nonNull_native + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v15 = [v12 shareURL];
        sub_21549E51C();

        v16 = [v13 objectID];
        if (v16)
        {
          v17 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = *a2;
          v18 = v47;
          *a2 = 0x8000000000000000;
          v20 = sub_2153B0F3C(v5);
          v21 = v18[2];
          v22 = (v19 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_31;
          }

          v24 = v19;
          if (v18[3] >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v27 = v47;
              if ((v19 & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            else
            {
              sub_2153DC5EC();
              v27 = v47;
              if ((v24 & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
            sub_2153D99A0(v23, isUniquelyReferenced_nonNull_native);
            v25 = sub_2153B0F3C(v5);
            if ((v24 & 1) != (v26 & 1))
            {
              result = sub_2154A300C();
              __break(1u);
              return result;
            }

            v20 = v25;
            v27 = v47;
            if ((v24 & 1) == 0)
            {
LABEL_24:
              v27[(v20 >> 6) + 8] |= 1 << v20;
              v34 = v41;
              isUniquelyReferenced_nonNull_native = v46;
              (*(v41 + 16))(v27[6] + *(v41 + 72) * v20, v5, v46);
              *(v27[7] + 8 * v20) = v17;

              (*(v34 + 8))(v5, isUniquelyReferenced_nonNull_native);
              v35 = v27[2];
              v36 = __OFADD__(v35, 1);
              v37 = v35 + 1;
              if (v36)
              {
                goto LABEL_33;
              }

              v27[2] = v37;
              goto LABEL_5;
            }
          }

          v10 = v27[7];
          v11 = *(v10 + 8 * v20);
          *(v10 + 8 * v20) = v17;

          (*v44)(v5, v46);
        }

        else
        {
          v28 = sub_2153B0F3C(v5);
          if ((v29 & 1) == 0)
          {
            (*v44)(v5, v46);

            goto LABEL_6;
          }

          v30 = v28;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v27 = *a2;
          v47 = *a2;
          *a2 = 0x8000000000000000;
          if (!v31)
          {
            sub_2153DC5EC();
            v27 = v47;
          }

          v32 = *(v41 + 8);
          v33 = v46;
          v32(v27[6] + *(v41 + 72) * v30, v46);

          sub_21536D370(v30, v27);
          v32(v5, v33);
        }

LABEL_5:
        *a2 = v27;

        v8 = v42;
        isUniquelyReferenced_nonNull_native = v43;
LABEL_6:
        ++v9;
        if (v14 == v8)
        {
        }
      }
    }
  }
}

uint64_t sub_215339274(id *a1)
{
  v2 = sub_21549E56C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = [*a1 URL];
  sub_21549E51C();

  sub_21549E42C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_21549E42C();
  LOBYTE(v9) = sub_21549E50C();
  v10(v6, v2);
  v10(v8, v2);
  return v9 & 1;
}

uint64_t sub_2153393E8(uint64_t a1, void *a2)
{
  v64 = a2;
  v70 = sub_21549E56C();
  v3 = *(v70 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v70);
  v77 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v8;
  v9 = *(a1 + 64);
  v59 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v58 = (v10 + 63) >> 6;
  v60 = v3 + 16;
  v68 = v3 + 32;
  v69 = v3;
  v63 = v4 + 7;
  v62 = v79;
  v61 = a1;

  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v75 = v15;
    v76 = v14;
    if (!v12)
    {
      break;
    }

    v17 = v16;
LABEL_14:
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v17 << 6);
    v22 = v61;
    v24 = v69;
    v23 = v70;
    v25 = v77;
    (*(v69 + 16))(v77, *(v61 + 48) + *(v69 + 72) * v21, v70);
    v26 = (*(v22 + 56) + 24 * v21);
    v27 = v26[1];
    v74 = *v26;
    v28 = v26[2];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF8);
    v30 = v67;
    v31 = &v67[*(v29 + 48)];
    (*(v24 + 32))(v67, v25, v23);
    *v31 = v74;
    *(v31 + 1) = v27;
    *(v31 + 2) = v28;
    (*(*(v29 - 8) + 56))(v30, 0, 1, v29);

    v32 = v28;
LABEL_15:
    v33 = v30;
    v34 = v66;
    sub_21533FB7C(v33, v66, &qword_27CA5AB40);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF8);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {

      return sub_2151AF750(v76);
    }

    v36 = (v34 + *(v35 + 48));
    v37 = *v36;
    v73 = v36[1];
    v74 = v37;
    v38 = v36[2];
    v39 = v69;
    v40 = v70;
    v71 = *(v69 + 32);
    v72 = v38;
    v71(v77, v34, v70);
    v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v42 = (v63 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v65;
    *(v44 + 16) = v65;
    v71((v44 + v41), v77, v40);
    v46 = (v44 + v42);
    v47 = v73;
    *v46 = v74;
    v46[1] = v47;
    v48 = v72;
    *(v44 + v43) = v72;
    v49 = v64;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v50 = v45;
    v51 = v48;
    v52 = v49;
    sub_2151AF750(v76);
    v53 = swift_allocObject();
    v14 = sub_21533F954;
    *(v53 + 16) = sub_21533F954;
    *(v53 + 24) = v44;
    v79[2] = sub_215325950;
    v79[3] = v53;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v79[0] = sub_2152F1C04;
    v79[1] = &block_descriptor_106;
    v54 = _Block_copy(aBlock);

    [v52 performBlockAndWait_];

    _Block_release(v54);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    v15 = v44;
    if (v52)
    {
      goto LABEL_21;
    }
  }

  if (v58 <= v16 + 1)
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = v58;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v58)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF8);
      v56 = v67;
      (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
      v12 = 0;
      v16 = v19;
      v30 = v56;
      goto LABEL_15;
    }

    v12 = *(v59 + 8 * v17);
    ++v16;
    if (v12)
    {
      v16 = v17;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2153399F8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  if (v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v5)
    {

      return v7;
    }

    v4 = *(v1 + 8 * v9);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v10 = __clz(__rbit64(v4)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_2153B0EEC(v14);
    v18 = v7[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v7[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_2153DC1C8();
        v16 = v27;
      }
    }

    else
    {
      sub_2153D9320(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_2153B0EEC(v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v22)
    {
      v8 = (v7[7] + 16 * v16);
      *v8 = v12;
      v8[1] = v13;

      v6 = v9;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7[(v16 >> 6) + 8] |= 1 << v16;
      *(v7[6] + 8 * v16) = v14;
      v24 = (v7[7] + 16 * v16);
      *v24 = v12;
      v24[1] = v13;
      v25 = v7[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v7[2] = v26;
      v6 = v9;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v6;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_2151A6C9C(0, &qword_2811996B0);
  result = sub_2154A300C();
  __break(1u);
  return result;
}

void sub_215339C18(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, uint64_t a9)
{
  v86 = a8;
  v92 = sub_21549E56C();
  v95 = *(v92 - 8);
  isa = v95[8].isa;
  MEMORY[0x28223BE20](v92);
  v91 = &v76 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AB20);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v87 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v76 - v19;
  if (a2)
  {
    sub_21533DE8C(a1, 1);

    v20 = sub_21549F0FC();
    v21 = sub_2154A226C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a4;
      v25 = v23;
      aBlock[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_215348D98(v24, a5, aBlock);
      *(v22 + 12) = 2080;
      v97[4] = a1;
      sub_21533DE28();
      v26 = sub_2154A306C();
      v28 = sub_215348D98(v26, v27, aBlock);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_2151A1000, v20, v21, "SharedWithYouController fetchShareMetadata %s failed with error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21606B520](v25, -1, -1);
      MEMORY[0x21606B520](v22, -1, -1);
      sub_21533DE98(a1, 1);
    }

    else
    {

      sub_21533DE98(a1, 1);
    }

    return;
  }

  if (!*(a6 + 16))
  {
    goto LABEL_26;
  }

  v29 = sub_2153B0EEC(a3);
  if ((v30 & 1) == 0)
  {
    sub_21533DE98(a1, 0);
LABEL_26:

    v69 = a3;
    v95 = sub_21549F0FC();
    v70 = sub_2154A226C();

    if (os_log_type_enabled(v95, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v71 = 136315394;
      *(v71 + 4) = sub_215348D98(a4, a5, aBlock);
      *(v71 + 12) = 2112;
      *(v71 + 14) = v69;
      *v72 = v69;
      v74 = v69;
      _os_log_impl(&dword_2151A1000, v95, v70, "SharedWithYouController fetchShareMetadata %s failed to match CKContainer %@ to ICAccount", v71, 0x16u);
      sub_2151ADCD8(v72, &unk_27CA59E90);
      MEMORY[0x21606B520](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x21606B520](v73, -1, -1);
      MEMORY[0x21606B520](v71, -1, -1);
    }

    else
    {
      v75 = v95;
    }

    return;
  }

  v84 = a9 + 16;
  v31 = (*(a6 + 56) + 16 * v29);
  v32 = v31[1];
  v83 = *v31;
  v80 = a1;
  v33 = *(a1 + 64);
  v78 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v77 = (v34 + 63) >> 6;
  v79 = v95 + 2;
  v89 = v95 + 4;
  v82 = isa + 7;
  v81 = v97;
  v85 = v32;

  v37 = 0;
  v38 = 0;
  v39 = 0;
  while (1)
  {
    v93 = v38;
    v94 = v37;
    if (!v36)
    {
      break;
    }

    v40 = v39;
    v41 = v87;
LABEL_19:
    v45 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v80;
    v48 = v95;
    v50 = v91;
    v49 = v92;
    (v95[2].isa)(v91, *(v80 + 48) + v95[9].isa * v46, v92);
    v51 = *(*(v47 + 56) + 8 * v46);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB30);
    v53 = *(v52 + 48);
    (v48[4].isa)(v41, v50, v49);
    *(v41 + v53) = v51;
    (*(*(v52 - 8) + 56))(v41, 0, 1, v52);
    v54 = v51;
    v44 = v88;
LABEL_20:
    sub_21533FB7C(v41, v44, &unk_27CA5AB20);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB30);
    if ((*(*(v55 - 8) + 48))(v44, 1, v55) == 1)
    {

      sub_2151AF750(v94);
      return;
    }

    v90 = *(v44 + *(v55 + 48));
    v56 = v95;
    v57 = v95[4].isa;
    v59 = v91;
    v58 = v92;
    v57(v91, v44, v92);
    v60 = (LOBYTE(v56[10].isa) + 24) & ~LOBYTE(v56[10].isa);
    v61 = &v82[v60] & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v84;
    v57((v38 + v60), v59, v58);
    v62 = (v38 + v61);
    v63 = v85;
    *v62 = v83;
    v62[1] = v63;
    v64 = v90;
    *(v38 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v90;

    v65 = v64;
    sub_2151AF750(v94);
    v66 = swift_allocObject();
    v37 = sub_21533DEA4;
    *(v66 + 16) = sub_21533DEA4;
    *(v66 + 24) = v38;
    v97[2] = sub_2153252BC;
    v97[3] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v97[0] = sub_2152F1C04;
    v97[1] = &block_descriptor_51;
    v67 = _Block_copy(aBlock);

    dispatch_sync(v86, v67);

    _Block_release(v67);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if (v65)
    {
      goto LABEL_33;
    }
  }

  if (v77 <= v39 + 1)
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v77;
  }

  v43 = v42 - 1;
  v41 = v87;
  v44 = v88;
  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v77)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB30);
      (*(*(v68 - 8) + 56))(v41, 1, 1, v68);
      v36 = 0;
      v39 = v43;
      goto LABEL_20;
    }

    v36 = *(v78 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_21533A4F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (!*(*a1 + 16) || (sub_2153B0F3C(a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();

    v11 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    *a1 = 0x8000000000000000;
    sub_2154722D4(a3, a4, v11, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v14;
  }

  return swift_endAccess();
}

uint64_t sub_21533A5D0(uint64_t result, void *a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v5 = result;
    swift_beginAccess();
    v7 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_2154724C8(v7, v5, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21533A668(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  swift_beginAccess();

  a3(v5, 0);
}

void sub_21533A6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = sub_21533FA00(a5, a3, a4, a6);
  v8 = [a5 share];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AAC8);
  sub_2154A261C();
}

void sub_21533A7CC(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = sub_2154A1D2C();
  v5 = [objc_opt_self() accountWithIdentifier:v4 context:a1];

  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AAC8);
    sub_2154A261C();

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

id sub_21533A8EC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v19 = a5;
  v9 = sub_21549E56C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  sub_21549E42C();
  v14 = sub_21549E49C();
  (*(v10 + 8))(v12, v9);
  v15 = [v13 makeInvitationIfNeededWithShareURL:v14 account:a2 context:a1];

  [v15 setRootObject_];
  [v15 updateFromShare_];
  v16 = [v15 objectID];

  *v19 = v16;
  return [a1 ic_save];
}

void sub_21533AA90(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_opt_self();
  if (a3)
  {
    v6 = v5;
    v8 = sub_21549E3CC();
    [v6 didFailToUpdateShareWithError_];
  }

  else
  {
    v7 = [v5 sharedInstance];
    v8 = sub_2154A1D2C();
    [v7 didSaveShare:a2 accountID:?];
  }
}

void sub_21533AB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = objc_opt_self();
    v6 = sub_21549E3CC();
    [v3 didFailToUpdateShareWithError_];
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = sub_2154A1D2C();
    [v5 didStopSharing:0 recordID:a1 accountID:?];
  }
}

uint64_t sub_21533AC38@<X0>(void *a1@<X8>)
{
  v2 = sub_21549E18C();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v3 + 16) || (v4 = sub_2153B1010(v9), (v5 & 1) == 0))
  {

    sub_21533FC34(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_21533FC88(*(v3 + 56) + 32 * v4, &v10);
  sub_21533FC34(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    result = sub_2151ADCD8(&v10, &qword_27CA5ABC0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  sub_215333DE0(v9[0]);
  v8 = v7;

LABEL_11:
  *a1 = v8;
  return result;
}

uint64_t sub_21533AD74@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_215365734(v2);

  *a1 = v3;
  return result;
}

void sub_21533ADBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();

    sub_21533AE4C(v2);
    swift_endAccess();
  }
}

void sub_21533AE4C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_2811995F0);
    sub_21533FBE4(&unk_2811995E0, &qword_2811995F0);
    sub_2154A20FC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_2151A66EC();
      return;
    }

    while (1)
    {
      sub_2153EE210(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2154A2CDC())
      {
        sub_2151A6C9C(0, &qword_2811995F0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}