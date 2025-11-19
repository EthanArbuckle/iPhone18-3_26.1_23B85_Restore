void sub_1D16C1354(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D16CC494();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];
}

void sub_1D16C13C0(void *a1)
{
  [v1 setAttributedText_];
}

void sub_1D16C1478(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  v6 = a1;
  [v4 *a3];
  v5 = *&v6[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel];
  [v5 *a3];
}

void *sub_1D16C1620()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel);
  v2 = v1;
  return v1;
}

id sub_1D16C1674(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1D16CC494();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D16C16EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1D16CC4A4();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_1D16C1828()
{
  v2.receiver = v0;
  v2.super_class = _s14ViewPropertiesCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D16C18B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D168EE64(0, &unk_1EC640B20);
  v2 = sub_1D16CC4F4();

  v3 = v1(v2);

  return v3;
}

char *sub_1D16C1944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D16C1A54(uint64_t a1)
{
  sub_1D16CC724();
  MEMORY[0x1D388E8D0](a1);
  v2 = sub_1D16CC744();

  return sub_1D16C1B04(a1, v2);
}

unint64_t sub_1D16C1AC0(uint64_t a1)
{
  v2 = sub_1D16CC5F4();

  return sub_1D16C1B70(a1, v2);
}

unint64_t sub_1D16C1B04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D16C1B70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D16C249C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D388E7A0](v9, a1);
      sub_1D16C24F8(v9);
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

char *sub_1D16C1C38(char *a1, int64_t a2, char a3)
{
  result = sub_1D16C1C58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D16C1C58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D16C1D68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 32 * a3;
      v15 = (v9 + 32 + 32 * a2);
      if (result != v15 || result >= v15 + 32 * v14)
      {
        result = memmove(result, v15, 32 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1D16C2BE4(a4, &unk_1EC641638);
  }

  result = sub_1D16C27B0(a4, v10);
  if (a3 == 1)
  {
    return sub_1D16C2BE4(a4, &unk_1EC641638);
  }

LABEL_20:
  __break(1u);
  return result;
}

void _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_customGlyphView) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition) = 1;
  v1 = (v0 + OBJC_IVAR___CCUIControlTemplateView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___CCUIControlTemplateView_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView__isRedacted) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView__isResizing) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView__isExpanded) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_gridSizeClass) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels) = 0;
  v3 = (v0 + OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
  *v3 = 1;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = (v0 + OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
  *v4 = 1;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_blurPocket) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_blurPocketRemovalAnimationGeneration) = 0;
  *(v0 + OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility) = 0;
  sub_1D16CC694();
  __break(1u);
}

id sub_1D16C2014(id result, uint64_t a2, void *a3)
{
  if (result != 1)
  {
    v5 = result;
    v4 = a3;

    return v5;
  }

  return result;
}

void sub_1D16C2074(char a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(_s14ViewPropertiesCMa());
  v7 = a2;
  v8 = sub_1D16C2650(v7, v6);

  (*(a3 + 16))(a3, v8);
  [v8 copy];
  sub_1D16CC5D4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641660);
  swift_dynamicCast();
  v9 = aBlock[6];
  v10 = objc_opt_self();
  v11 = [v7 window];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = a1;
  aBlock[4] = sub_1D16C2964;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D16B76AC;
  aBlock[3] = &block_descriptor_118;
  v13 = _Block_copy(aBlock);
  v14 = v7;
  swift_unknownObjectRetain();

  [v10 performWithoutAnimationWhileHiddenInWindow:v11 actions:v13];
  _Block_release(v13);

  swift_unknownObjectRelease();
}

id _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0(double a1, double a2)
{
  v5 = [v2 customGlyphView];
  if (!v5 || (v6 = v5, [v2 convertPoint:v5 toCoordinateSpace:{a1, a2}], v7 = objc_msgSend(v6, sel_pointInside_withEvent_, 0), v6, (v7 & 1) == 0))
  {
    result = [v2 contextMenuDelegate];
    if (!result)
    {
      return result;
    }

    v9 = [result contextMenu];
    if (v9)
    {
      v10 = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v12 = objc_opt_self();
      v15[4] = sub_1D16C2BBC;
      v15[5] = v11;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1D16C18B4;
      v15[3] = &block_descriptor_165;
      v13 = _Block_copy(v15);

      v14 = [v12 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

      _Block_release(v13);
      swift_unknownObjectRelease();
      return v14;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1D16C254C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
  [v4 setSourceLayer_];
  v5 = sub_1D16CC494();
  [v4 setKeyPath_];

  [v4 setDuration_];
  v6 = sub_1D16CC494();
  [a1 addAnimation:v4 forKey:v6];
}

id sub_1D16C2650(void *a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtCFE18ControlCenterUIKitCSo23CCUIControlTemplateView16updatePropertiesFTFPSo33CCUIControlTemplateViewProperties_T_8animatedSb_T_L_14ViewProperties_title];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a2[OBJC_IVAR____TtCFE18ControlCenterUIKitCSo23CCUIControlTemplateView16updatePropertiesFTFPSo33CCUIControlTemplateViewProperties_T_8animatedSb_T_L_14ViewProperties_subtitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = [a1 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D16CC4A4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *v4 = v8;
  v4[1] = v10;

  v11 = [a1 subtitle];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D16CC4A4();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *v5 = v13;
  v5[1] = v15;

  v16 = [a1 isEnabled];
  a2[OBJC_IVAR____TtCFE18ControlCenterUIKitCSo23CCUIControlTemplateView16updatePropertiesFTFPSo33CCUIControlTemplateViewProperties_T_8animatedSb_T_L_14ViewProperties_isEnabled] = v16;
  v17 = [a1 isRedacted];
  a2[OBJC_IVAR____TtCFE18ControlCenterUIKitCSo23CCUIControlTemplateView16updatePropertiesFTFPSo33CCUIControlTemplateViewProperties_T_8animatedSb_T_L_14ViewProperties_isRedacted] = v17;
  v18 = [a1 isSelected];
  a2[OBJC_IVAR____TtCFE18ControlCenterUIKitCSo23CCUIControlTemplateView16updatePropertiesFTFPSo33CCUIControlTemplateViewProperties_T_8animatedSb_T_L_14ViewProperties_isSelected] = v18;
  v20.receiver = a2;
  v20.super_class = _s14ViewPropertiesCMa();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1D16C27B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D16C2810()
{
  result = qword_1EC640B30;
  if (!qword_1EC640B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B30);
  }

  return result;
}

void sub_1D16C2864()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
  if (v1 != 0.0)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      [v2 setOpacity_];
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D16C28B0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CCUIControlTemplateView_blurPocket);
  if (v1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0x3FF0000000000000;
    if (v2 != 1.0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        LODWORD(v2) = 1.0;
        [v3 setOpacity_];
      }
    }
  }
}

uint64_t sub_1D16C2904(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_114Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D16C2A10()
{
  v1 = *(v0 + 40);
  v6[0] = *(v0 + 24);
  v6[1] = v1;
  v2 = *(v0 + 80);
  v8 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = *(v0 + 96);
  v7 = *(v0 + 56);
  v9 = v2;
  v10 = v4;
  return sub_1D16BC434(v3, v6, *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 144), *(v0 + 152), *(v0 + 160));
}

void sub_1D16C2A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 88);
  v7 = *(v0 + 128);
  v8 = *(v0 + 72);
  v10[0] = *(v0 + 56);
  v10[1] = v8;
  v11 = v6;
  v9 = *(v0 + 112);
  v12 = *(v0 + 96);
  v13 = v9;
  v14 = v7;
  sub_1D16BCB4C(v1, v2, v3, v4, v5, v10, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
}

id sub_1D16C2AF8(void *a1)
{
  v2 = sub_1D16BC804();
  [v2 removeObject_];

  return [a1 removeFromSuperview];
}

void sub_1D16C2B54(uint64_t a1)
{
  v2 = sub_1D16BC804();
  [v2 removeObject_];
}

void *sub_1D16C2BBC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D16C2BE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D16C2C48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_191Tm()
{
  sub_1D16C2904(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_1D16C2904(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D16C2E40()
{
  v0 = sub_1D16CC2C4();
  __swift_allocate_value_buffer(v0, qword_1EC640B58);
  result = __swift_project_value_buffer(v0, qword_1EC640B58);
  if (CCUILogUserInterface)
  {
    v2 = CCUILogUserInterface;
    return sub_1D16CC2D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1D16C2EA8()
{
  v0 = sub_1D16CC2C4();
  __swift_allocate_value_buffer(v0, qword_1EC6420F8);
  __swift_project_value_buffer(v0, qword_1EC6420F8);
  result = "com.apple.ControlCenter";
  if ("com.apple.ControlCenter")
  {
    sub_1D16CC4C4();
    return sub_1D16CC2B4();
  }

  else
  {
    __break(1u);
  }

  return result;
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

uint64_t UITraitCollection.moduleResizingConfiguration.getter()
{
  sub_1D16B3D94();

  return sub_1D16CC534();
}

void static ModuleResizingConfigurationTrait.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

void sub_1D16C2FF0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

uint64_t UIMutableTraits.moduleResizingConfiguration.getter()
{
  sub_1D16B3D94();

  return sub_1D16CC2E4();
}

void (*UIMutableTraits.moduleResizingConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  sub_1D16B3D94();
  sub_1D16CC2E4();
  return sub_1D16C3190;
}

void sub_1D16C3190(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *v1 = *(*a1 + 32);
  v1[2] = v2;
  *(v1 + 24) = v3;
  sub_1D16B3D94();
  sub_1D16CC2F4();

  free(v1);
}

uint64_t getEnumTagSinglePayload for ModuleResizingConfigurationTrait(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ModuleResizingConfigurationTrait(_WORD *result, int a2, int a3)
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

double ModuleResizingConfiguration.suppressingEdgeProtector(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = result;
  *(a2 + 24) = a1;
  return result;
}

uint64_t ModuleResizingConfiguration.init(contentTransitionBlurRadius:edgeProtectorWidth:edgeProtectorActivationDuration:suppressesEdgeProtector:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

void ModuleResizingConfiguration.init(contentTransitionBlurRadius:edgeProtectorWidth:edgeProtectorActivationDuration:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
}

id ModuleResizingConfiguration.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = [objc_allocWithZone(MEMORY[0x1E698E680]) init];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D16C3760;
  *(v7 + 24) = v6;
  v19[4] = sub_1D16C3768;
  v19[5] = v7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D16C3318;
  v19[3] = &block_descriptor_1;
  v8 = _Block_copy(v19);
  v9 = v5;

  v10 = [v9 modifyProem_];
  _Block_release(v8);

  v11 = sub_1D16CC494();
  v12 = sub_1D16CC494();

  v13 = sub_1D16CC494();
  v14 = sub_1D16CC494();

  result = [v9 build];
  if (result)
  {
    v16 = result;
    v17 = sub_1D16CC4A4();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v17;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D16C36A0(void *a1)
{
  v2 = sub_1D16CC494();
  [a1 appendString:v2 withName:0 skipIfEmpty:0];
}

uint64_t _s18ControlCenterUIKit27ModuleResizingConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D16C37BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D16C3810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t CCUIGridGeometryInfo.description.getter(double a1, double a2)
{
  v2 = NSStringFromCCUIGridGeometryInfo(a1, a2);
  v3 = sub_1D16CC4A4();

  return v3;
}

uint64_t sub_1D16C38B4()
{
  v1 = NSStringFromCCUIGridGeometryInfo(*v0, v0[1]);
  v2 = sub_1D16CC4A4();

  return v2;
}

id sub_1D16C39CC(double a1, double a2)
{
  BSFloatRoundForScale();
  v5 = v4;
  v6 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:v4];
  v7 = [objc_opt_self() systemFontOfSize:v5 weight:*MEMORY[0x1E69DB980]];
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSymbolConfiguration:v6 symbolFont:v7 symbolScaleFactor:v5 / 25.0 metricsScaleFactor:a1 / 68.0 gridGeometryInfo:{a1, a2}];

  return v8;
}

id CCUIModuleContentMetrics.description.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = [v0 symbolConfiguration];
    v4 = sub_1D16CC494();

    v5 = [v0 symbolFont];
    v6 = sub_1D16CC494();

    [v0 symbolScaleFactor];
    v8 = v7;
    v9 = sub_1D16CC494();

    [v0 metricsScaleFactor];
    v11 = v10;
    v12 = sub_1D16CC494();

    [v0 gridGeometryInfo];
    v19 = v13;
    v20 = v14;
    type metadata accessor for CCUIGridGeometryInfo(0);
    v15 = sub_1D16CC704();
    v16 = sub_1D16CC494();

    swift_unknownObjectRelease();
    result = [v2 build];
    if (result)
    {
      v17 = result;
      v18 = sub_1D16CC4A4();

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall CCUIModuleContentMetrics.init()(CCUIModuleContentMetrics *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for CCUIModuleContentMetrics()
{
  result = qword_1EC641708;
  if (!qword_1EC641708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC641708);
  }

  return result;
}

void __swiftcall CCUITouchPassThroughView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if ([v3 isTouchPassThroughDisabled])
  {
    v9.receiver = v3;
    v9.super_class = CCUITouchPassThroughView;
    v7 = [(UIView_optional *)&v9 hitTest:isa withEvent:x, y];
  }

  else
  {
    v10.receiver = v3;
    v10.super_class = CCUITouchPassThroughView;
    v8 = [(UIView_optional *)&v10 hitTest:isa withEvent:x, y];
    if (v8)
    {
      if (v8 == v3)
      {
      }
    }
  }
}

void __swiftcall CCUITouchPassThroughView.init(frame:)(CCUITouchPassThroughView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id CCUITouchPassThroughView.init(frame:)()
{
  *(v0 + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v2.super_class = CCUITouchPassThroughView;
  return objc_msgSendSuper2(&v2, sel_initWithFrame_);
}

id CCUITouchPassThroughView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CCUITouchPassThroughView__isTouchPassThroughDisabled) = 0;
  v5.super_class = CCUITouchPassThroughView;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t type metadata accessor for CCUITouchPassThroughView()
{
  result = qword_1EC641718;
  if (!qword_1EC641718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC641718);
  }

  return result;
}

uint64_t sub_1D16C4404(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CCUIControlHostViewController_contentModuleContext] = 0;
  *&v3[OBJC_IVAR___CCUIControlHostViewController_gridSizeClass] = 0;
  v3[OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions] = 0;
  *&v3[OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus] = 0;
  *&v3[OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius] = 0;
  *&v3[OBJC_IVAR___CCUIControlHostViewController_contentMetrics] = 0;
  v3[OBJC_IVAR___CCUIControlHostViewController__isResizing] = 0;
  *&v3[OBJC_IVAR___CCUIControlHostViewController__controlIdentity] = a1;
  *&v3[OBJC_IVAR___CCUIControlHostViewController_type] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  v8 = a1;
  v9 = sub_1D16CC494();
  v10 = sub_1D16CC494();

  v11 = [v7 initWithControl:v8 contentType:a3 hostIdentifier:v9 configurationIdentifier:v10];

  v12 = [objc_opt_self() instanceOfType:a2 instanceIdentity:v11];
  *&v3[OBJC_IVAR___CCUIControlHostViewController_controlInstance] = v12;
  v20.receiver = v3;
  v20.super_class = CCUIControlHostViewController;
  v13 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  v14 = OBJC_IVAR___CCUIControlHostViewController_controlInstance;
  v15 = *&v13[OBJC_IVAR___CCUIControlHostViewController_controlInstance];
  v19[4] = sub_1D16C5BF0;
  v19[5] = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D16C5C48;
  v19[3] = &block_descriptor_14;
  v16 = _Block_copy(v19);
  v17 = v13;

  [v15 modifyConfiguration_];
  _Block_release(v16);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [*&v13[v14] activate];

    return v17;
  }

  return result;
}

uint64_t sub_1D16C4700(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CCUIControlHostViewController_contentModuleContext] = 0;
  *&v1[OBJC_IVAR___CCUIControlHostViewController_gridSizeClass] = 0;
  v1[OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions] = 0;
  *&v1[OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus] = 0;
  *&v1[OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius] = 0;
  *&v1[OBJC_IVAR___CCUIControlHostViewController_contentMetrics] = 0;
  v1[OBJC_IVAR___CCUIControlHostViewController__isResizing] = 0;
  v3 = [a1 descriptor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 controlType];
  }

  else
  {
    v5 = 0;
  }

  *&v1[OBJC_IVAR___CCUIControlHostViewController_type] = v5;
  *&v1[OBJC_IVAR___CCUIControlHostViewController_controlInstance] = a1;
  v6 = a1;
  v7 = [v6 control];
  *&v1[OBJC_IVAR___CCUIControlHostViewController__controlIdentity] = v7;
  v15.receiver = v1;
  v15.super_class = CCUIControlHostViewController;
  v8 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v9 = OBJC_IVAR___CCUIControlHostViewController_controlInstance;
  v10 = *&v8[OBJC_IVAR___CCUIControlHostViewController_controlInstance];
  v14[4] = sub_1D16C5BF0;
  v14[5] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D16C5C48;
  v14[3] = &block_descriptor_2;
  v11 = _Block_copy(v14);
  v12 = v8;

  [v10 modifyConfiguration_];
  _Block_release(v11);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [*&v8[v9] activate];

    return v12;
  }

  return result;
}

id CCUIControlHostViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall CCUIControlHostViewController.loadView()()
{
  v6 = [objc_allocWithZone(CCUIControlHostView) initWithFrame:*&v0[OBJC_IVAR___CCUIControlHostViewController_controlInstance] instance:{0.0, 0.0, 0.0, 0.0}];
  [v6 setDelegate_];
  [v6 setGridSizeClass_];
  v1 = [v0 contentMetrics];
  [v6 setContentMetrics_];

  [v6 setResizing_];
  [v6 setSuppressesContentTransitions_];
  [v0 setView_];
  if ([v0 isViewLoaded])
  {
    v2 = [v0 viewIfLoaded];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v0 compactContinuousCornerRadius];
        [v5 setContinuousCornerRadius_];

        goto LABEL_5;
      }
    }

    __break(1u);
    return;
  }

LABEL_5:
}

uint64_t CCUIControlHostViewController.gridSizeClass.getter()
{
  v1 = OBJC_IVAR___CCUIControlHostViewController_gridSizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

void CCUIControlHostViewController.gridSizeClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_gridSizeClass;
  swift_beginAccess();
  *&v1[v3] = a1;
  if ([v1 isViewLoaded])
  {
    v4 = [v1 viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 setGridSizeClass_];

        return;
      }
    }

    __break(1u);
  }
}

uint64_t CCUIControlHostViewController.suppressesContentTransitions.getter()
{
  v1 = OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions;
  swift_beginAccess();
  return *(v0 + v1);
}

void CCUIControlHostViewController.suppressesContentTransitions.setter(char a1)
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions;
  swift_beginAccess();
  v1[v3] = a1;
  if ([v1 isViewLoaded])
  {
    v4 = [v1 viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 setSuppressesContentTransitions_];

        return;
      }
    }

    __break(1u);
  }
}

uint64_t CCUIControlHostViewController.userVisibilityStatus.getter()
{
  v1 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

id CCUIControlHostViewController.userVisibilityStatus.setter(uint64_t a1)
{
  v3 = a1 == 2;
  v4 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  *(v1 + v4) = a1;
  if (a1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * v3;
  }

  return [*(v1 + OBJC_IVAR___CCUIControlHostViewController_controlInstance) setVisibility_];
}

double CCUIControlHostViewController.compactContinuousCornerRadius.getter()
{
  v1 = OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void CCUIControlHostViewController.compactContinuousCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1 && ([v1 isViewLoaded] & 1) != 0)
  {
    v5 = [v1 viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        [v1 compactContinuousCornerRadius];
        [v8 setContinuousCornerRadius_];

        return;
      }
    }

    __break(1u);
  }
}

void *CCUIControlHostViewController.contentMetrics.getter()
{
  v1 = OBJC_IVAR___CCUIControlHostViewController_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CCUIControlHostViewController.contentMetrics.setter(void *a1)
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_contentMetrics;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  if (![v1 isViewLoaded])
  {
    goto LABEL_5;
  }

  v6 = [v1 viewIfLoaded];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = *&v1[v3];
      [v9 setContentMetrics_];

LABEL_5:
      return;
    }
  }

  __break(1u);
}

void sub_1D16C55F8(char a1)
{
  v1[OBJC_IVAR___CCUIControlHostViewController__isResizing] = a1;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v3 = [v1 viewIfLoaded];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    goto LABEL_9;
  }

  [v2 setResizing_];
}

BOOL CCUIControlHostViewController.shouldPerformClickInteraction.getter()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 contextMenu];

  if (v4)
  {
  }

  return v4 == 0;
}

uint64_t CCUIControlHostViewController.controlHostViewShouldPerformPrimaryAction(_:)()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 1;
  }

  v2 = [v1 controlHostViewControllerShouldPerformPrimaryAction_];
  swift_unknownObjectRelease();
  return v2;
}

void CCUIControlHostViewController.controlHostView(_:enqueue:)(uint64_t a1, uint64_t a2)
{
  v4 = [v2 contentModuleContext];
  [v4 enqueueStatusUpdate_];
}

id CCUIControlHostViewController.isDevicePasscodeLocked(_:)()
{
  v1 = [v0 contentModuleContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isDevicePasscodeLocked];

  return v3;
}

id CCUIControlHostViewController.contextMenuPreview(for:)()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 contextMenuPreviewForControlHostViewController_];
      swift_unknownObjectRelease();
      result = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1D16C5BF0(void *a1)
{
  [a1 setCanAppearInSecureEnvironment_];

  return [a1 setLaunchOrigin_];
}

void sub_1D16C5C48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id CCUIControlHostViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D16CC494();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void _sSo29CCUIControlHostViewControllerC18ControlCenterUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_contentModuleContext) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_gridSizeClass) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController_contentMetrics) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostViewController__isResizing) = 0;
  sub_1D16CC694();
  __break(1u);
}

unint64_t type metadata accessor for CCUIControlHostViewController()
{
  result = qword_1EC641840;
  if (!qword_1EC641840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC641840);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CHSControlSize.init(gridSizeClass:)(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1D16D2360[a1 - 1];
  }
}

uint64_t CCUIGridSizeClass.init(controlSize:)(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1D16D2380[a1 - 1];
  }
}

Swift::Void __swiftcall UIView.ccui_applyGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D16CC3E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-1] - v7;
  sub_1D16CC374();
  sub_1D16CC3F4();
  sub_1D16CC3D4();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v11[3] = v2;
  v11[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1D16CC3B4();
  v9(v8, v2);
  sub_1D16CC564();
}

void sub_1D16C60F8(void *a1)
{
  v2 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D16CC3E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-1] - v8;
  v10 = a1;
  sub_1D16CC374();
  sub_1D16CC3F4();
  sub_1D16CC3D4();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v13[3] = v3;
  v13[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1D16CC3B4();
  v11(v9, v3);
  sub_1D16CC564();
}

Swift::Void __swiftcall UIView.ccui_applySubduedGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_1D16CC3A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1D16CC3E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-1] - v11;
  sub_1D16CC374();
  sub_1D16CC364();
  (*(v2 + 8))(v5, v1);
  sub_1D16CC3F4();
  sub_1D16CC3D4();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v15[3] = v6;
  v15[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1D16CC3B4();
  v13(v12, v6);
  sub_1D16CC564();
}

void sub_1D16C64EC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.ccui_applySubduedGlass(grouping:)(a3);
}

Swift::Void __swiftcall UIView.ccui_applyClearGlass()()
{
  v0 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D16CC384();
  v1[3] = sub_1D16CC3E4();
  v1[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1D16CC3F4();
  sub_1D16CC564();
}

void sub_1D16C65E4(void *a1)
{
  v2 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1;
  sub_1D16CC384();
  v4[3] = sub_1D16CC3E4();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1D16CC3F4();
  sub_1D16CC564();
}

Swift::Void __swiftcall UIView.ccui_applyGlass(with:)(UIColor with)
{
  v1 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D16CC3E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16CC394();
  sub_1D16CC3F4();
  v7[3] = v2;
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1D16CC3C4();
  (*(v3 + 8))(v5, v2);
  sub_1D16CC564();
}

void sub_1D16C67F4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D16CC3A4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D16CC3E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a1;
  sub_1D16CC394();
  sub_1D16CC3F4();
  v13[3] = v6;
  v13[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1D16CC3C4();
  (*(v7 + 8))(v9, v6);
  sub_1D16CC564();
}

void sub_1D16C699C(void *a1)
{
  v1 = a1;
  sub_1D16CC564();
}

id sub_1D16C6A14()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC6420F0 = result;
  return result;
}

const char *CCUIFeature.domain.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    return "VirtualAudio";
  }

  else
  {
    return "ControlCenter";
  }
}

const char *CCUIFeature.feature.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return "InactiveMicModeSelection";
    case 2:
      return "ios_high_quality_local_recording";
    case 1:
      return "DynamicControls";
  }

  result = sub_1D16CC694();
  __break(1u);
  return result;
}

uint64_t CCUIFeature.isEnabled.getter(uint64_t a1)
{
  type metadata accessor for Feature(0);
  v4[3] = v2;
  v4[4] = sub_1D168C430();
  v4[0] = a1;
  LOBYTE(a1) = sub_1D16CC254();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return a1 & 1;
}

uint64_t static Features.isFeatureEnabled(_:)(uint64_t a1)
{
  type metadata accessor for Feature(0);
  v4[3] = v2;
  v4[4] = sub_1D168C430();
  v4[0] = a1;
  LOBYTE(a1) = sub_1D16CC254();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return a1 & 1;
}

id Features.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Features.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Features.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D16C6D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D16C8608(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1D16C1A54(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D16C8750();
        v11 = v13;
      }

      result = sub_1D16C8474(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

id CCUIOverlayBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

char *CCUIOverlayBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView] = 0;
  v4[OBJC_IVAR___CCUIOverlayBackgroundView_isReduceTransparencyEnabled] = 0;
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_materialView] = 0;
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_lastPresentationProgress] = 0;
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_presentationProgressUpdateThreshold] = 0x3F9999999999999ALL;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_containerView] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask] = v10;
  v11 = &v4[OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame];
  *v11 = 0u;
  v11[1] = 0u;
  v12 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  *&v4[OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer] = v12;
  v59.receiver = v4;
  v59.super_class = CCUIOverlayBackgroundView;
  v13 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR___CCUIOverlayBackgroundView_containerView;
  [v13 addSubview_];
  if ([v13 usesAdvancedBackdropRendering])
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v16 = sub_1D16CC244();
    v17 = *MEMORY[0x1E6979BA8];
    [v15 setValue:v16 forKey:*MEMORY[0x1E6979BA8]];

    v18 = OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask;
    v19 = *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D16D1ED0;
    v21 = sub_1D168EE64(0, &qword_1EC640AC0);
    *(v20 + 56) = v21;
    *(v20 + 32) = v15;
    v22 = v19;
    v57 = v15;
    v56 = v14;
    v23 = sub_1D16CC4E4();

    [v22 setFilters_];

    v24 = *&v13[v18];
    v25 = sub_1D16CC494();
    [v24 setName_];

    v26 = *&v13[v18];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 blackColor];
    v30 = [v29 CGColor];

    [v28 setBackgroundColor_];
    v31 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v32 = sub_1D16CC244();
    [v31 setValue:v32 forKey:v17];

    v33 = sub_1D16CC494();
    [v31 setValue:v33 forKey:*MEMORY[0x1E6979C10]];

    v34 = sub_1D16CC504();
    [v31 setValue:v34 forKey:*MEMORY[0x1E6979B78]];

    v35 = OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer;
    v36 = *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer];
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D16D1ED0;
    *(v37 + 56) = v21;
    *(v37 + 32) = v31;
    v38 = v36;
    v39 = v31;
    v40 = sub_1D16CC4E4();

    [v38 setFilters_];

    v41 = *&v13[v35];
    v42 = sub_1D16CC494();
    [v41 setGroupName_];

    [*&v13[v35] addSublayer_];
    v43 = [*&v13[v56] layer];
    [v43 addSublayer_];

    v44 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v45 = *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView];
    *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView] = v44;
    v46 = v44;

    v47 = [v27 blackColor];
    v48 = [v47 colorWithAlphaComponent_];

    [v46 setBackgroundColor_];
    [v46 setAlpha_];
    [v13 addSubview_];
    v13[OBJC_IVAR___CCUIOverlayBackgroundView_isReduceTransparencyEnabled] = UIAccessibilityIsReduceTransparencyEnabled();
    v49 = [objc_opt_self() defaultCenter];
    [v49 addObserver:v13 selector:sel_reduceTransparencyStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

    [v13 updateAccessibilityAppearance];
LABEL_7:

    return v13;
  }

  if (qword_1EC640AB0 != -1)
  {
    swift_once();
  }

  v50 = qword_1EC6420F0;
  v51 = sub_1D16CC494();
  aBlock[4] = sub_1D16C75F8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D16C7604;
  aBlock[3] = &block_descriptor_3;
  v52 = _Block_copy(aBlock);

  v53 = [objc_opt_self() materialViewWithRecipeNamed:v51 inBundle:v50 options:0 initialWeighting:v52 scaleAdjustment:1.0];
  _Block_release(v52);

  v54 = *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_materialView];
  *&v13[OBJC_IVAR___CCUIOverlayBackgroundView_materialView] = v53;
  v46 = v53;

  if (v46)
  {
    [v46 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment_];
    [*&v13[v14] addSubview_];
    goto LABEL_7;
  }

  return v13;
}

double sub_1D16C7604(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

id CCUIOverlayBackgroundView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void __swiftcall CCUIOverlayBackgroundView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if (!with.value.super.isa || [(objc_class *)with.value.super.isa type]!= 11)
  {
    v7 = [v3 delegate];
    if (v7)
    {
      [v7 overlayBackgroundViewTapped_];
      swift_unknownObjectRelease();
    }

    v9.receiver = v3;
    v9.super_class = CCUIOverlayBackgroundView;
    v8 = [(UIView_optional *)&v9 hitTest:isa withEvent:x, y];
  }
}

void sub_1D16C7B0C()
{
  if ([v0 usesAdvancedBackdropRendering])
  {
    [v0 isReduceTransparencyEnabled];
    v1 = [v0 isReduceTransparencyEnabled];
    v2 = objc_opt_self();
    if (v1)
    {
      v3 = [v2 systemDarkGrayColor];
    }

    else
    {
      v4 = [v2 blackColor];
      v3 = [v4 colorWithAlphaComponent_];
    }

    v5 = sub_1D168EE64(0, &qword_1EC640AD8);
    MEMORY[0x1EEE9AC00](v5);
    sub_1D16CC594();
  }
}

void sub_1D16C7C7C(void *a1, uint64_t a2, float a3)
{
  v6 = [a1 backdropLayer];
  *&v7 = a3;
  [v6 setOpacity_];

  v8 = [a1 advancedBackdropDimmingView];
  if (v8)
  {
    v9 = v8;
    [v8 setBackgroundColor_];
  }
}

void sub_1D16C7D8C(double a1)
{
  if (a1 < 0.01 || a1 > 0.99 || ([v1 lastPresentationProgress], v4 = vabdd_f64(a1, v3), objc_msgSend(v1, sel_presentationProgressUpdateThreshold), v5 < v4))
  {
    [v1 setLastPresentationProgress_];
    if ([v1 usesAdvancedBackdropRendering])
    {
      v6 = [v1 containerView];
      v7 = &selRef_setAlpha_;
      [v6 setAlpha_];

      v8 = &selRef_advancedBackdropDimmingView;
    }

    else
    {
      v7 = &selRef_setWeighting_;
      v8 = &selRef_materialView;
    }

    v9 = [v1 *v8];
    [v9 *v7];
  }
}

unint64_t sub_1D16C7F78()
{
  v1 = OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders;
  if (*(v0 + OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders))
  {
    v2 = *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders);
  }

  else
  {
    v2 = sub_1D16CB67C(MEMORY[0x1E69E7CC0]);
    *(v0 + v1) = v2;
  }

  return v2;
}

id CCUIOverlayBackgroundView.visualStylingProvider(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D16C7F78();
  if (*(v4 + 16) && (v5 = sub_1D16C1A54(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {

    v8 = objc_opt_self();
    v7 = [v8 _visualStylingProviderForRecipe_andCategory_];
    v9 = OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders;
    v12 = *(v2 + OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders);
    v10 = v7;

    sub_1D16C6D14(v7, a1);
    *(v2 + v9) = v12;
  }

  return v7;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D16C81E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641920);
  v31 = a2;
  result = sub_1D16CC6C4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1D16CC724();
      MEMORY[0x1D388E8D0](v20);
      result = sub_1D16CC744();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D16C8474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D16CC5E4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1D16CC724();
      MEMORY[0x1D388E8D0](v9);
      result = sub_1D16CC744();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D16C8608(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D16C1A54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8](result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D16C8750();
    result = v17;
    goto LABEL_8;
  }

  sub_1D16C81E8(v14, a3 & 1);
  result = sub_1D16C1A54(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for MTVisualStyleCategory(0);
  result = sub_1D16CC714();
  __break(1u);
  return MEMORY[0x1EEE66BB8](result, v21);
}

id sub_1D16C8750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641920);
  v2 = *v0;
  v3 = sub_1D16CC6B4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void _sSo25CCUIOverlayBackgroundViewC18ControlCenterUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView) = 0;
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView_isReduceTransparencyEnabled) = 0;
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView_materialView) = 0;
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView_lastPresentationProgress) = 0;
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView_presentationProgressUpdateThreshold) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUIOverlayBackgroundView____lazy_storage___visualStyleCategoriesToProviders) = 0;
  sub_1D16CC694();
  __break(1u);
}

char *sub_1D16C8994(void *a1, double a2, double a3, double a4, double a5)
{
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR___CCUIControlHostView_cameraCapturePrewarmReason];
  *v11 = sub_1D16CC4A4();
  v11[1] = v12;
  *&v5[OBJC_IVAR___CCUIControlHostView_applicationContext] = 0;
  v5[OBJC_IVAR___CCUIControlHostView_isDisplayingLoadedViewModel] = 0;
  *&v5[OBJC_IVAR___CCUIControlHostView_controlInstance] = a1;
  v13 = a1;
  BSRectWithSize();
  v18 = [objc_allocWithZone(CCUIControlTemplateView) initWithFrame_];
  *&v5[OBJC_IVAR___CCUIControlHostView_templateView] = v18;
  [v18 setSupportsAccessibilityContentSizeCategories_];
  v40.receiver = v5;
  v40.super_class = CCUIControlHostView;
  v19 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a2, a3, a4, a5);
  v20 = [v13 iconView];
  [v20 bs:1 setHitTestingDisabled:?];
  v21 = OBJC_IVAR___CCUIControlHostView_templateView;
  [*&v19[OBJC_IVAR___CCUIControlHostView_templateView] setGlyphView_];
  [v13 registerObserver_];
  [*&v19[v21] setShowsMenuAsPrimaryAction_];
  v22 = *&v19[v21];
  [v22 setDelegate_];

  [v19 addSubview_];
  _sSo19CCUIControlHostViewC18ControlCenterUIKitE015controlInstanceC14ModelDidChangeyySo012CHUISControlH0CF_0();
  if ([v13 contentType] != 1)
  {
    v23 = sub_1D16C9064();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      sub_1D16C9064();
      if (v28)
      {
        v29 = sub_1D16CC4D4();

        if (v27)
        {
          if ((v29 & 1) != 0 && (sub_1D16CB18C() & 1) == 0)
          {
            [*&v19[v21] setContextMenuDelegate_];
            v30 = objc_allocWithZone(CCUIControlContainerApplicationContext);
            v31 = sub_1D16CC494();
            v32 = [v30 initWithApplicationBundleIdentifier_];

            v33 = *&v19[OBJC_IVAR___CCUIControlHostView_applicationContext];
            *&v19[OBJC_IVAR___CCUIControlHostView_applicationContext] = v32;
          }
        }
      }

      if ((sub_1D16C91B0() & 1) == 0)
      {

        goto LABEL_11;
      }

      v34 = *&v19[v21];
      sub_1D168EE64(0, &unk_1EC640A98);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v25;
      v36[4] = v26;
      v37 = v34;
      v38 = sub_1D16CC5B4();
      [v37 addAction:v38 forControlEvents:{1, 0, 0, 0, sub_1D16CB670, v36}];
    }
  }

LABEL_11:
  return v19;
}

void _sSo19CCUIControlHostViewC18ControlCenterUIKitE015controlInstanceC14ModelDidChangeyySo012CHUISControlH0CF_0()
{
  v1 = v0;
  v2 = [v0 isDisplayingLoadedViewModel];
  v3 = [v0 controlInstance];
  v4 = sub_1D16CA5F0();
  v5 = [v1 templateView];
  v6 = [v3 contentType] == 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D16CB904;
  *(v8 + 24) = v7;
  v16[4] = sub_1D16CB910;
  v16[5] = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D16CAC34;
  v16[3] = &block_descriptor_4;
  v9 = _Block_copy(v16);
  swift_unknownObjectRetain();
  v10 = v3;

  [v5 updateProperties:v9 animated:v2];
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v11 = v5;
    v12 = sub_1D16CA5F0();
    if (!v12 || (v13 = [v12 accessibilityIdentifier], swift_unknownObjectRelease(), !v13))
    {
      v14 = [v10 control];
      v13 = [v14 kind];
    }

    sub_1D16CC4A4();

    v15 = sub_1D16CC494();

    [v11 setAccessibilityIdentifier_];

    [v1 setIsDisplayingLoadedViewModel_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D16C9064()
{
  v1 = [v0 controlInstance];
  v2 = [v1 instanceIdentity];

  v3 = [v2 control];
  v4 = [v3 extensionIdentity];

  v5 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AB8);
  v7 = 0;
  if (!(*(*(v6 - 8) + 48))(&v4[v5], 1, v6))
  {
    v7 = sub_1D16CC264();
  }

  swift_endAccess();

  return v7;
}

uint64_t sub_1D16C91B0()
{
  v1 = [v0 controlInstance];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_1D16C9064();
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v3 == 0xD000000000000010 && v4 == 0x80000001D16D5160)
  {

    goto LABEL_7;
  }

  v5 = sub_1D16CC6F4();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

LABEL_7:
  v6 = [v0 controlInstance];
  v7 = [v6 instanceIdentity];

  v8 = [v7 control];
  v9 = [v8 kind];

  v10 = sub_1D16CC4A4();
  v12 = v11;

  if (v10 == 0xD000000000000020 && 0x80000001D16D5180 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D16CC6F4();
  }

  return v13 & 1;
}

void sub_1D16C9358()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D16C93C8();
  }
}

void sub_1D16C93C8()
{
  v1 = [v0 cameraCapturePrewarmReason];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D16CC4A4();
    v5 = v4;

    CCUISignpostImpulse(CCUILogUserInterface);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D16D2440;
    sub_1D16CC4A4();
    v7 = MEMORY[0x1E69E6158];
    sub_1D16CC614();
    *(inited + 96) = v7;
    *(inited + 72) = v3;
    *(inited + 80) = v5;
    sub_1D16CC4A4();
    sub_1D16CC614();
    v8 = mach_absolute_time();
    v9 = MEMORY[0x1E69E76D8];
    *(inited + 168) = MEMORY[0x1E69E76D8];
    *(inited + 144) = v8;
    sub_1D16CC4A4();
    sub_1D16CC614();
    v10 = mach_continuous_time();
    *(inited + 240) = v9;
    *(inited + 216) = v10;
    sub_1D16CB778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AA8);
    swift_arrayDestroy();
    v11 = sub_1D16CC494();
    v12 = sub_1D16CC484();

    AVCapturePrewarmWithOptions();
  }
}

id CCUIControlHostView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void CCUIControlHostView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___CCUIControlHostView_cameraCapturePrewarmReason);
  *v1 = sub_1D16CC4A4();
  v1[1] = v2;
  *(v0 + OBJC_IVAR___CCUIControlHostView_applicationContext) = 0;
  *(v0 + OBJC_IVAR___CCUIControlHostView_isDisplayingLoadedViewModel) = 0;
  sub_1D16CC694();
  __break(1u);
}

id sub_1D16C9AD0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 templateView];
  v6 = [v5 *a3];

  return v6;
}

void sub_1D16C9B3C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v6 = [v7 templateView];
  [v6 *a4];
}

Swift::Void __swiftcall CCUIControlHostView.layoutSubviews()()
{
  v2.super_class = CCUIControlHostView;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 templateView];
  [v0 bounds];
  [v1 setFrame_];
}

uint64_t CCUIControlHostView.performPrimaryAction(for:)()
{
  v1 = [v0 delegate];
  if (!v1 || (v2 = [v1 controlHostViewShouldPerformPrimaryAction_], swift_unknownObjectRelease(), v2))
  {
    sub_1D16C9E00();
  }

  return 0;
}

void sub_1D16C9E00()
{
  if (sub_1D16C91B0())
  {
    v1 = [v0 cameraCapturePrewarmReason];
    if (v1)
    {

      CCUISignpostImpulse(CCUILogUserInterface);
    }
  }

  v2 = [v0 controlInstance];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v7[4] = sub_1D16CB950;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D16CB120;
  v7[3] = &block_descriptor_20;
  v6 = _Block_copy(v7);

  [v2 performControlActionWithCompletion_];
  _Block_release(v6);
}

Swift::OpaquePointer_optional __swiftcall CCUIControlHostView.contextMenuItems()()
{
  if (sub_1D16CA108())
  {
    v1 = [v0 delegate];
    if (v1)
    {
      v2 = [v1 isDevicePasscodeLocked_];
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_7;
      }
    }
  }

  v4 = [v0 applicationContext];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 applicationShortcuts];

    if (v6)
    {
      sub_1D168EE64(0, &unk_1EC640B20);
      v7 = sub_1D16CC4F4();

      v4 = v7;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
  }

LABEL_8:
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D16CA108()
{
  v1 = [v0 controlInstance];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_1D16C9064();
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v3 == 0xD000000000000014 && v4 == 0x80000001D16D51B0)
  {

    goto LABEL_7;
  }

  v5 = sub_1D16CC6F4();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

LABEL_7:
  v6 = [v0 controlInstance];
  v7 = [v6 instanceIdentity];

  v8 = [v7 control];
  v9 = [v8 kind];

  v10 = sub_1D16CC4A4();
  v12 = v11;

  if (v10 == 0xD00000000000002DLL && 0x80000001D16D51D0 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D16CC6F4();
  }

  return v13 & 1;
}

id CCUIControlHostView.contextMenu.getter()
{
  if (sub_1D16CA108())
  {
    v1 = [v0 delegate];
    if (v1)
    {
      v2 = [v1 isDevicePasscodeLocked_];
      swift_unknownObjectRelease();
      if (v2)
      {
        return 0;
      }
    }
  }

  v4 = [v0 applicationContext];
  v3 = [v4 contextMenuForApplicationShortcuts];

  return v3;
}

id CCUIControlHostView.contextMenuPreview(for:)()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 contextMenuPreviewForControlHostView_];
      swift_unknownObjectRelease();
      result = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1D16CA5F0()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  return result;
}

id sub_1D16CA66C(void *a1, uint64_t a2, void *a3, char a4)
{
  sub_1D16CA7E0();
  if (v7)
  {
    v8 = sub_1D16CC494();
  }

  else
  {
    v8 = 0;
  }

  [a1 setTitle_];

  if (a3)
  {
    sub_1D16CAA0C();
    if (v9)
    {
      v10 = sub_1D16CC494();
    }

    else
    {
      v10 = 0;
    }

    [a1 setSubtitle_];

    [a1 setRedacted_];
    [a1 setEnabled_];
    v11 = sub_1D16CABCC();
  }

  else
  {
    [a1 setSubtitle_];
    [a1 setRedacted_];
    [a1 setEnabled_];
    v11 = 0;
  }

  return [a1 setSelected_];
}

uint64_t sub_1D16CA7E0()
{
  v1 = sub_1D16CA5F0();
  if (v1 && (v2 = [v1 title], swift_unknownObjectRelease(), v2) || (v3 = objc_msgSend(v0, sel_descriptor)) != 0 && (v4 = v3, v2 = objc_msgSend(v3, sel_displayName), v4, v2))
  {
    v5 = sub_1D16CC4A4();
  }

  else
  {
    v6 = [v0 control];
    v7 = [v6 extensionIdentity];

    v8 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AB8);
    if ((*(*(v9 - 8) + 48))(&v7[v8], 1, v9))
    {
      swift_endAccess();

      return 0;
    }

    else
    {
      v5 = sub_1D16CC264();
      v11 = v10;
      swift_endAccess();

      sub_1D168EE64(0, &qword_1EC641B20);

      v12 = sub_1D16CB588(v5, v11, 1);
      if (v12)
      {
        v13 = v12;
        v14 = [v12 localizedName];
        v5 = sub_1D16CC4A4();
      }
    }
  }

  return v5;
}

uint64_t sub_1D16CAA0C()
{
  v1 = [v0 subtitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D16CC4A4();
LABEL_13:

    return v3;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    v6 = [v5 state];
    v7 = &selRef_onOption;
    if (!v6)
    {
      v7 = &selRef_offOption;
    }

    v8 = [v5 *v7];
    v9 = [v8 value];
    if (v9)
    {
      v2 = v9;
    }

    else
    {
      if (qword_1EC640AB0 != -1)
      {
        swift_once();
      }

      v10 = qword_1EC6420F0;
      v11 = sub_1D16CC494();

      v2 = [v10 localizedStringForKey:v11 value:0 table:0];
    }

    v3 = sub_1D16CC4A4();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  return 0;
}

id sub_1D16CABCC()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = &selRef_isAnimating;
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v1 = &selRef_state;
  }

  return [result *v1];
}

uint64_t sub_1D16CAC34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1D16CAC88(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    if (qword_1EC6412A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D16CC2C4();
    __swift_project_value_buffer(v3, qword_1EC6420F8);
    v4 = v1;

    v5 = sub_1D16CC2A4();
    v6 = sub_1D16CC524();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v7 + 4) = Strong;
      *v8 = Strong;
      *(v7 + 12) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      v8[1] = v11;
      _os_log_impl(&dword_1D168A000, v5, v6, "Failed to perform control %@ action with error: %@", v7, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641670);
      swift_arrayDestroy();
      MEMORY[0x1D388F3F0](v8, -1, -1);
      MEMORY[0x1D388F3F0](v7, -1, -1);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      return;
    }

    v1 = v12;
    v13 = [v12 delegate];
    if (v13)
    {
      v14 = v13;
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = sub_1D16CA5F0();

        if (v17)
        {
          v18 = sub_1D16CAF34();
          swift_unknownObjectRelease();
          if (v18)
          {
            [v14 controlHostView:v1 enqueue:v18];

            swift_unknownObjectRelease();
            return;
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_1D16CAF34()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = [v1 status];
    if (v2)
    {
      v3 = v2;
      sub_1D16CC4A4();

      v4 = sub_1D16CC494();

      v5 = [objc_opt_self() statusUpdateWithMessage:v4 type:0];
      swift_unknownObjectRelease();

      return v5;
    }

    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = [v7 state];
  v9 = &selRef_onOption;
  if (!v8)
  {
    v9 = &selRef_offOption;
  }

  v10 = [v7 *v9];
  v11 = [v10 status];
  if (!v11)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v12 = v11;
  sub_1D16CC4A4();

  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = sub_1D16CC494();

  v5 = [objc_opt_self() statusUpdateWithMessage:v14 type:v13];
  swift_unknownObjectRelease();

  return v5;
}

void sub_1D16CB120(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D16CB18C()
{
  v1 = [v0 controlInstance];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_1D16C9064();
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v3 == 0xD000000000000012 && v4 == 0x80000001D16D5110)
  {

    goto LABEL_7;
  }

  v5 = sub_1D16CC6F4();

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

LABEL_7:
  v6 = [v0 controlInstance];
  v7 = [v6 instanceIdentity];

  v8 = [v7 control];
  v9 = [v8 kind];

  v10 = sub_1D16CC4A4();
  v12 = v11;

  if (v10 == 0xD000000000000029 && 0x80000001D16D5130 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D16CC6F4();
  }

  return v13 & 1;
}

id CCUIControlHostView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

Swift::Void __swiftcall CHUISControlIconView.applyGlyphContentMetrics(_:)(CCUIModuleContentMetrics_optional *a1)
{
  if (a1)
  {
    v2 = [(CCUIModuleContentMetrics_optional *)a1 symbolFont];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setFont_];
}

void sub_1D16CB500(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    v4 = [a3 symbolFont];
  }

  else
  {
    v4 = 0;
  }

  [v5 setFont_];
}

id sub_1D16CB588(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D16CC494();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1D16CC204();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1D16CB67C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641920);
  v3 = sub_1D16CC6D4();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1D16C1A54(v4);
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
    result = sub_1D16C1A54(v4);
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

unint64_t sub_1D16CB778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AB0);
    v3 = sub_1D16CC6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D16CB894(v4, v13);
      result = sub_1D16C1AC0(v13);
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
      result = sub_1D16901B4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D16CB894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CCUIControlImageView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void CCUIControlImageView.init(coder:)()
{
  *(v0 + OBJC_IVAR___CCUIControlImageView__isActive) = 0;
  *(v0 + OBJC_IVAR___CCUIControlImageView_glyphTintColor) = 0;
  *(v0 + OBJC_IVAR___CCUIControlImageView_font) = 0;
  v1 = (v0 + OBJC_IVAR___CCUIControlImageView__controlIconView);
  *v1 = 0u;
  v1[1] = 0u;
  sub_1D16CC694();
  __break(1u);
}

CGSize __swiftcall CCUIControlImageView.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR___CCUIControlImageView_hostingView) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall CCUIControlImageView.layoutSubviews()()
{
  v2.super_class = CCUIControlImageView;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___CCUIControlImageView_hostingView];
  [v0 bounds];
  [v1 setFrame_];
}

id CCUIControlImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D16CBC70()
{
  result = qword_1EC640BA0;
  if (!qword_1EC640BA0)
  {
    sub_1D16CC294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640BA0);
  }

  return result;
}

unint64_t sub_1D16CBCC8()
{
  result = qword_1EC640B38;
  if (!qword_1EC640B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC641B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B38);
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}