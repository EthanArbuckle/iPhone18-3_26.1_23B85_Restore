uint64_t sub_1A2D95450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1A2D954AC()
{
  result = sub_1A2D9FB00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveTimeParameters.Font(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AdaptiveTimeParameters.Font(_WORD *result, int a2, int a3)
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

uint64_t sub_1A2D9564C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2D956E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AdaptiveTimeParameters.SizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AdaptiveTimeParameters.SizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2D95948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float sub_1A2D959E4(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [v1 getControlPointAtIndex:a1 values:v3];
  return *v3;
}

uint64_t sub_1A2D95A4C()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D9FA70();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isSpringAnimation])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v0;
      [v6 mass];
      [v6 stiffness];
      [v6 damping];
      sub_1A2D9FA60();
      v8 = MEMORY[0x1A58E63E0](v4, 0.0);

      (*(v2 + 8))(v4, v1);
      return v8;
    }
  }

  v9 = [v0 timingFunction];
  if (v9)
  {
    v12[0] = 0;
    v10 = v9;
    [v9 getControlPointAtIndex:1 values:v12];
    v12[0] = 0;
    [v10 getControlPointAtIndex:2 values:v12];
    [v0 duration];
    v8 = sub_1A2D9FA80();

    return v8;
  }

  return MEMORY[0x1EEDE5750]();
}

uint64_t static UIView.cs_animateInProcess(settings:animations:)()
{
  sub_1A2D95A4C();
  sub_1A2D9FC70();
}

uint64_t static UIView.cs_animateInProcess(settings:animations:completion:)()
{
  sub_1A2D95A4C();
  sub_1A2D9FC70();
}

void sub_1A2D95DC8(int a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v5 = a3;
  sub_1A2D95A4C();
  sub_1A2D9FC70();
  _Block_release(v6);
}

void sub_1A2D95E70(int a1, int a2, void *a3, void *aBlock, const void *a5)
{
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_1A2D95F88;
  }

  swift_getObjCClassMetadata();
  v9 = a3;
  sub_1A2D95A4C();
  sub_1A2D9FC70();
  sub_1A2D95F78(v8);
  _Block_release(v7);
}

uint64_t sub_1A2D95F78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall UIView.setLockPickGlassBackground(luminance:)(Swift::Float luminance)
{
  v1 = sub_1A2D9F710();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A2D9F740();
  v5 = *(v22 - 8);
  v6 = MEMORY[0x1EEE9AC00](v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v23 = sub_1A2D9F770();
  v12 = *(v23 - 8);
  v13 = MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  sub_1A2D9F730();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC350], v1);
  sub_1A2D9F720();
  (*(v2 + 8))(v4, v1);
  v18 = *(v5 + 8);
  v19 = v22;
  v18(v8, v22);
  sub_1A2D9F700();
  v18(v11, v19);
  sub_1A2D9F780();
  sub_1A2D9F750();
  v20 = *(v12 + 8);
  v21 = v23;
  v20(v15, v23);
  v24[3] = v21;
  v24[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_1A2D9F760();
  v20(v17, v21);
  sub_1A2D9FC60();
}

void sub_1A2D962F4(void *a1, Swift::Float a2)
{
  v3 = a1;
  UIView.setLockPickGlassBackground(luminance:)(a2);
}

Swift::Void __swiftcall UIView.setLockPickGlassGroupBackground()()
{
  v0[3] = sub_1A2D9F6F0();
  v0[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_0(v0);
  sub_1A2D9F6E0();
  sub_1A2D9FC60();
}

void sub_1A2D96398(void *a1)
{
  v3[3] = sub_1A2D9F6F0();
  v3[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_0(v3);
  v2 = a1;
  sub_1A2D9F6E0();
  sub_1A2D9FC60();
}

void sub_1A2D96434(void *a1)
{
  v1 = a1;
  sub_1A2D9FC60();
}

void sub_1A2D96490(uint64_t a1@<X8>)
{
  v2 = sub_1A2D9F5C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = CTFontCopyVariationAxesInternal();
  v7 = 0uLL;
  v8 = 0;
  if (!v6)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  *&v29 = v3;
  v28 = a1;
  v30 = v6;
  sub_1A2D9FC80();
  sub_1A2D6E104(&qword_1ED6914E8, MEMORY[0x1E6968EB0]);
  sub_1A2D9FCC0();
  if (!*(&v38 + 1))
  {
LABEL_16:
    (*(v29 + 8))(v5, v2);

    v14 = 0;
    v15 = 0;
    v16 = 0;
    a1 = v28;
    v7 = 0uLL;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x1E6965910];
  while (1)
  {
    sub_1A2D6C348(&v37, v36);
    sub_1A2D667EC(v36, v35);
    sub_1A2D8FEDC(0, &qword_1ED6914A0);
    if (swift_dynamicCast())
    {
      v10 = v33;
      if ([v33 __swift_objectForKeyedSubscript_])
      {
        sub_1A2D9FCD0();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v33 = 0u;
      }

      v35[0] = v33;
      v35[1] = v34;
      if (!*(&v34 + 1))
      {
        __swift_destroy_boxed_opaque_existential_0(v36);

        sub_1A2D8FE7C(v35, &qword_1EB0B36E0);
        goto LABEL_5;
      }

      v11 = sub_1A2D8FEDC(0, &qword_1ED691488);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v36);

        goto LABEL_5;
      }

      *&v31 = v11;
      v12 = v32;
      v13 = [v32 unsignedIntValue];

      if (v13 == 2003072104)
      {
        break;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v36);
LABEL_5:
    sub_1A2D9FCC0();
    if (!*(&v38 + 1))
    {
      goto LABEL_16;
    }
  }

  (*(v29 + 8))(v5, v2);
  sub_1A2D6C348(v36, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = 0uLL;
    a1 = v28;
    goto LABEL_18;
  }

  v17 = v37;
  v18 = [v37 __swift_objectForKeyedSubscript_];
  a1 = v28;
  if (v18)
  {
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:

    goto LABEL_58;
  }

  v19 = *&v36[0];
  if ([v17 __swift_objectForKeyedSubscript_])
  {
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

LABEL_55:
    sub_1A2D8FE7C(&v39, &qword_1EB0B36E0);
LABEL_58:

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = 0uLL;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_57;
  }

  v16 = *(&v36[0] + 1);
  v15 = *&v36[0];
  if ([v17 __swift_objectForKeyedSubscript_])
  {
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_57;
  }

  v20 = *&v36[0];
  if ([v17 __swift_objectForKeyedSubscript_])
  {
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_57;
  }

  v21 = *&v36[0];
  if ([v17 __swift_objectForKeyedSubscript_])
  {
    sub_1A2D9FCD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_57;
  }

  v22 = *&v36[0];
  v23 = [v19 unsignedIntValue];
  [v20 doubleValue];
  v31 = v24;
  [v21 doubleValue];
  v29 = v25;
  [v22 doubleValue];
  v8 = v26;

  if (v16)
  {
    *&v7 = v31;
    *(&v7 + 1) = v29;
    v14 = v23;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v7 = 0uLL;
    v8 = 0;
  }

LABEL_18:
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
}

uint64_t sub_1A2D96C80(void *a1)
{
  if (sub_1A2D9BD04(a1))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 168))(a1);
  }
}

id sub_1A2D96D54(void *a1)
{
  v3 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___CSAdaptiveFontProvider_layoutContext];
  v1[OBJC_IVAR___CSAdaptiveFontProvider_layoutContext] = 1;
  *(v6 + 1) = [objc_opt_self() effectiveCategory];
  *(v6 + 2) = 0;
  v6[24] = 1;
  *(v6 + 4) = 0;
  v6[40] = 1;
  v7 = *(type metadata accessor for AdaptiveFontProvider.LayoutContext(0) + 32);
  v8 = sub_1A2D9F5A0();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  *&v1[OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight] = 0;
  *&v1[OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight] = 0;
  *&v1[OBJC_IVAR___CSAdaptiveFontProvider_minimumFont] = 0;
  *&v1[OBJC_IVAR___CSAdaptiveFontProvider_maximumFont] = 0;
  if (sub_1A2D9BD04(a1))
  {
    v9 = a1;
  }

  else
  {
    v10 = [a1 fontDescriptor];
    v11 = sub_1A2D9FB70();
    v12 = [v10 fontDescriptorWithFamily_];

    v13 = v12;
    [a1 pointSize];
    v9 = CTFontCreateWithFontDescriptorAndOptions(v13, v14, 0, 0x400uLL);
  }

  *&v1[OBJC_IVAR___CSAdaptiveFontProvider_baseFont] = v9;
  sub_1A2D9373C(0x40u, 0, v5);
  v15 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
  sub_1A2D6AFA0(v5, &v1[OBJC_IVAR___CSAdaptiveFontProvider_parameters], type metadata accessor for AdaptiveTimeParameters);
  swift_beginAccess();
  sub_1A2D9BE60(&v1[v15], &v1[OBJC_IVAR___CSAdaptiveFontProvider_portraitParameters], type metadata accessor for AdaptiveTimeParameters);
  sub_1A2D9BE60(&v1[v15], &v1[OBJC_IVAR___CSAdaptiveFontProvider_landscapeParameters], type metadata accessor for AdaptiveTimeParameters);
  v16 = type metadata accessor for AdaptiveFontProvider(0);
  v20.receiver = v1;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_1A2D99524();

  return v17;
}

id sub_1A2D97154()
{
  v1 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v2);
  v5 = type metadata accessor for AdaptiveFontLayoutContext(0);
  v6 = objc_allocWithZone(v5);
  sub_1A2D9BE60(v4, v6 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1A2D9BEC8(v4, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v7;
}

id sub_1A2D97270(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A2D9BE60(a1, v3 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A2D9BEC8(a1, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v4;
}

uint64_t sub_1A2D97310@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = [objc_opt_self() effectiveCategory];
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = *(type metadata accessor for AdaptiveFontProvider.LayoutContext(0) + 32);
  v3 = sub_1A2D9F5A0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1A2D973B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_layoutContext;
  swift_beginAccess();
  return sub_1A2D9BE60(v1 + v3, a1, type metadata accessor for AdaptiveFontProvider.LayoutContext);
}

uint64_t sub_1A2D97424(uint64_t a1)
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_layoutContext;
  swift_beginAccess();
  sub_1A2D9D784(a1, v1 + v3, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return swift_endAccess();
}

BOOL sub_1A2D974F8(uint64_t a1)
{
  v3 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v4);
  v8 = OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext;
  v9 = sub_1A2D9B95C(v6, (a1 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext));
  sub_1A2D9BEC8(v6, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (!v9)
  {
    sub_1A2D9BE60(a1 + v8, v6, type metadata accessor for AdaptiveFontProvider.LayoutContext);
    (*((*v7 & *v1) + 0xC0))(v6);
    sub_1A2D99524();
  }

  return !v9;
}

uint64_t sub_1A2D977A4()
{
  v1 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v2);
  v5 = *(v4 + 1);
  sub_1A2D9BEC8(v4, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v5;
}

uint64_t sub_1A2D978B8(double a1)
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A2D97964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A2D97A0C(double a1)
{
  v3 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A2D97AC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_1A2D97B14()
{
  v1 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
  swift_beginAccess();
  sub_1A2D9BE60(v0 + v7, v3, type metadata accessor for AdaptiveTimeParameters);
  v8 = sub_1A2D90BAC();
  sub_1A2D6A6E0(1u, v8, v9, 0, 1, v6);

  sub_1A2D9BEC8(v3, type metadata accessor for AdaptiveTimeParameters);
  v10 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_1A2D8FE7C(v6, &qword_1EB0B36D0);
    return 0.0;
  }

  else
  {
    v11 = *v6;
    sub_1A2D9BEC8(v6, type metadata accessor for AdaptiveTimeParameters.Entry);
  }

  return v11;
}

void *sub_1A2D98038(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_1A2D6B008(a4);
  v7 = a1;
  v8 = sub_1A2D6BC38(v7);
  v9 = sub_1A2D9A684(v8, a2, a3);

  v10 = sub_1A2D6D4C8(a1, v9);

  sub_1A2D98B94(v10);
  return v10;
}

void *sub_1A2D981BC(void *a1, uint64_t a2, unint64_t a3, void *a4, double a5)
{
  sub_1A2D6B008(a5);
  v9 = a1;
  v10 = sub_1A2D6BC38(v9);
  v11 = sub_1A2D9A684(v10, a2, a3);

  v12 = sub_1A2D6D4C8(a1, v11);

  sub_1A2D98B94(v12);
  *a4 = v13;
  return v12;
}

void *sub_1A2D98360(void *a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v11 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xB8))(v12);
  v15 = *v14;
  sub_1A2D9BEC8(v14, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (v15 != 1)
  {
    if (a5 != 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A2D6B008(a4);
    v21 = a1;
    v22 = sub_1A2D6BC38(v21);
    v23 = sub_1A2D9A684(v22, a2, a3);

    v20 = sub_1A2D6D4C8(a1, v23);

    sub_1A2D98B94(v20);
    return v20;
  }

  if (a5 == 1.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1A2D6B008(a4);
  v17 = a1;
  v18 = sub_1A2D6BC38(v17);
  v19 = sub_1A2D6C3F0(v18, a2, a3, v16, a5);

  v20 = sub_1A2D6D4C8(a1, v19);

  sub_1A2D98E04(v20, v16, a5);
  return v20;
}

void *sub_1A2D985D0(void *a1, uint64_t a2, unint64_t a3, double *a4, double a5, double a6)
{
  v13 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xB8))(v14);
  v17 = *v16;
  sub_1A2D9BEC8(v16, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (v17 != 1)
  {
    if (a6 != 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A2D6B008(a5);
    v24 = a1;
    v25 = sub_1A2D6BC38(v24);
    v26 = sub_1A2D9A684(v25, a2, a3);

    v22 = sub_1A2D6D4C8(a1, v26);

    sub_1A2D98B94(v22);
    goto LABEL_6;
  }

  if (a6 == 1.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_1A2D6B008(a5);
  v19 = a1;
  v20 = sub_1A2D6BC38(v19);
  v21 = sub_1A2D6C3F0(v20, a2, a3, v18, a6);

  v22 = sub_1A2D6D4C8(a1, v21);

  v23 = sub_1A2D98E04(v22, v18, a6);
LABEL_6:
  *a4 = v23;
  return v22;
}

void sub_1A2D98A78(void *a1, double a2)
{
  if (*(v2 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont))
  {
    sub_1A2D6B008(a2);
    v4 = a1;
    v5 = sub_1A2D6BC38(v4);
    v6 = sub_1A2D9A684(v5, 808466992, 0xE400000000000000);

    v7 = sub_1A2D6D4C8(a1, v6);

    sub_1A2D98B94(v7);
  }
}

void sub_1A2D98B94(void *a1)
{
  v3 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont);
  if (v9)
  {
    v10 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
    swift_beginAccess();
    sub_1A2D9BE60(v1 + v10, v5, type metadata accessor for AdaptiveTimeParameters);
    v11 = v9;
    v12 = sub_1A2D90BAC();
    sub_1A2D6A6E0(7u, v12, v13, 0, 1, v8);

    sub_1A2D9BEC8(v5, type metadata accessor for AdaptiveTimeParameters);
    v14 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {
      sub_1A2D8FE7C(v8, &qword_1EB0B36D0);
    }

    else
    {
      sub_1A2D6CE70();
      sub_1A2D9BEC8(v8, type metadata accessor for AdaptiveTimeParameters.Entry);
    }

    [v11 ascender];
    [v11 capHeight];
    [a1 ascender];
    [a1 capHeight];
  }
}

double sub_1A2D98E04(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for AdaptiveTimeParameters(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48[-v18];
  v20 = OBJC_IVAR___CSAdaptiveFontProvider_landscapeParameters;
  swift_beginAccess();
  sub_1A2D9BE60(v4 + v20, v13, type metadata accessor for AdaptiveTimeParameters);
  v21 = sub_1A2D90BAC();
  sub_1A2D6A6E0(7u, v21, v22, 0, 1, v19);

  sub_1A2D9BEC8(v13, type metadata accessor for AdaptiveTimeParameters);
  v23 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v19, 1, v23) == 1)
  {
    sub_1A2D8FE7C(v19, &qword_1EB0B36D0);
    v25 = 0.0;
  }

  else
  {
    v25 = sub_1A2D6CE70();
    sub_1A2D9BEC8(v19, type metadata accessor for AdaptiveTimeParameters.Entry);
  }

  v26 = OBJC_IVAR___CSAdaptiveFontProvider_portraitParameters;
  swift_beginAccess();
  sub_1A2D9BE60(v4 + v26, v11, type metadata accessor for AdaptiveTimeParameters);
  v27 = sub_1A2D90BAC();
  sub_1A2D6A6E0(7u, v27, v28, 0, 1, v17);

  sub_1A2D9BEC8(v11, type metadata accessor for AdaptiveTimeParameters);
  if (v24(v17, 1, v23) == 1)
  {
    sub_1A2D8FE7C(v17, &qword_1EB0B36D0);
    v29 = 0.0;
  }

  else
  {
    v29 = sub_1A2D6CE70();
    sub_1A2D9BEC8(v17, type metadata accessor for AdaptiveTimeParameters.Entry);
  }

  v30 = v25 + (v29 - v25) * a3;
  v31 = a1;
  v32 = sub_1A2D6BC38(v31);
  v33 = sub_1A2D6C3F0(v32, 808466992, 0xE400000000000000, 0.0, a3);

  v34 = sub_1A2D6D4C8(a1, v33);

  v35 = v31;
  v36 = sub_1A2D6BC38(v35);
  v37 = sub_1A2D6C3F0(v36, 808466992, 0xE400000000000000, a2, a3);

  v38 = sub_1A2D6D4C8(a1, v37);

  [v34 ascender];
  v40 = v39;
  [v34 capHeight];
  v42 = v40 - v41;
  [v38 ascender];
  v44 = v43;
  [v38 capHeight];
  v46 = v45;

  return v44 - v46 - v42 - v30;
}

uint64_t sub_1A2D992F4(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1A2D99310(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1A2D99388(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AdaptiveFontProvider.LayoutContext(0) + 32);

  return sub_1A2D9C664(a1, v3);
}

id sub_1A2D99418()
{
  v0 = objc_opt_self();

  return [v0 effectiveCategory];
}

uint64_t sub_1A2D99454@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2D9F5A0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A2D994C0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  v9 = a8 + *(type metadata accessor for AdaptiveFontProvider.LayoutContext(0) + 32);

  return sub_1A2D9C6D4(a7, v9);
}

void sub_1A2D99524()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v157 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v154 = &v138 - v5;
  v156 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v150 = (&v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v146 = &v138 - v8;
  v149 = sub_1A2D9F5A0();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v138 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v138 - v17);
  v19 = type metadata accessor for AdaptiveTimeParameters(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v153 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v138 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v151 = &v138 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v143 = &v138 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v145 = &v138 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v142 = &v138 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v140 = &v138 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v144 = &v138 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v141 = &v138 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v138 - v39);
  v41 = MEMORY[0x1E69E7D40];
  v42 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v38);
  v43 = sub_1A2D93A80(v42);
  sub_1A2D9373C(v43, 0, v40);
  v44 = v1 + OBJC_IVAR___CSAdaptiveFontProvider_portraitParameters;
  swift_beginAccess();
  v158 = v44;
  sub_1A2D9D784(v40, v44, type metadata accessor for AdaptiveTimeParameters);
  swift_endAccess();
  sub_1A2D9373C(v43, 1, v40);
  v45 = v1 + OBJC_IVAR___CSAdaptiveFontProvider_landscapeParameters;
  swift_beginAccess();
  sub_1A2D9D784(v40, v45, type metadata accessor for AdaptiveTimeParameters);
  v46 = swift_endAccess();
  v47 = *((*v41 & *v1) + 0xB8);
  v47(v46);
  v48 = v18[4];
  v49 = *(v18 + 40);
  v50 = sub_1A2D9BEC8(v18, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (v49)
  {
    goto LABEL_31;
  }

  v47(v50);
  v51 = v16[2];
  v52 = *(v16 + 24);
  v50 = sub_1A2D9BEC8(v16, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  if (v52)
  {
    goto LABEL_31;
  }

  v47(v50);
  v53 = v146;
  sub_1A2D9C6D4(&v13[*(v10 + 32)], v146);
  v54 = v148;
  v55 = v149;
  if ((*(v148 + 48))(v53, 1, v149) == 1)
  {
    v50 = sub_1A2D8FE7C(v53, &qword_1EB0B36D8);
    goto LABEL_31;
  }

  v139 = v45;
  (*(v54 + 32))(v147, v53, v55);
  v56 = v144;
  sub_1A2D9BE60(v158, v144, type metadata accessor for AdaptiveTimeParameters);
  sub_1A2D90BB8(2uLL, v159);
  if (v160)
  {
    v57 = v56;
    v58 = v147;
  }

  else
  {
    v59 = *v159;
    v60 = *&v159[1];
    v61 = *&v159[2];
    v62 = *&v159[3];
    v57 = v140;
    sub_1A2D9BE60(v56, v140, type metadata accessor for AdaptiveTimeParameters);
    v58 = v147;
    if (v59 < v60)
    {
      v63 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
      v64 = sub_1A2D6BC38(v63);
      v65 = sub_1A2D9A684(v64, 808466992, 0xE400000000000000);

      v66 = sub_1A2D6D4C8(v63, v65);

      v67 = sub_1A2D9BF28(v66, v58, v59, v60, v51);
      if (v68)
      {

        v57 = v140;
      }

      else
      {
        v57 = v140;
        sub_1A2D90DC0(2u, 0, v40, v67);

        sub_1A2D9BEC8(v57, type metadata accessor for AdaptiveTimeParameters);
        sub_1A2D6AFA0(v40, v57, type metadata accessor for AdaptiveTimeParameters);
      }
    }

    if (v61 >= v62)
    {
      sub_1A2D9BEC8(v144, type metadata accessor for AdaptiveTimeParameters);
    }

    else
    {
      v69 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
      v70 = sub_1A2D6BC38(v69);
      v71 = sub_1A2D9A684(v70, 808466992, 0xE400000000000000);

      v72 = sub_1A2D6D4C8(v69, v71);

      v73 = sub_1A2D9BF28(v72, v58, v61, v62, v51);
      if (v74)
      {
        sub_1A2D9BEC8(v144, type metadata accessor for AdaptiveTimeParameters);

        v75 = v145;
        v57 = v140;
        goto LABEL_17;
      }

      v57 = v140;
      sub_1A2D90DC0(2u, 1, v40, v73);

      sub_1A2D9BEC8(v57, type metadata accessor for AdaptiveTimeParameters);
      sub_1A2D9BEC8(v144, type metadata accessor for AdaptiveTimeParameters);
      sub_1A2D6AFA0(v40, v57, type metadata accessor for AdaptiveTimeParameters);
    }
  }

  v75 = v145;
LABEL_17:
  v76 = v57;
  v77 = v141;
  sub_1A2D6AFA0(v76, v141, type metadata accessor for AdaptiveTimeParameters);
  v78 = v158;
  swift_beginAccess();
  sub_1A2D9D784(v77, v78, type metadata accessor for AdaptiveTimeParameters);
  swift_endAccess();
  sub_1A2D9BE60(v139, v75, type metadata accessor for AdaptiveTimeParameters);
  sub_1A2D90BB8(2uLL, v161);
  if (v162)
  {
    (*(v54 + 8))(v58, v55);
  }

  else
  {
    v79 = *v161;
    v80 = *&v161[1];
    v81 = *&v161[2];
    v82 = *&v161[3];
    sub_1A2D9BE60(v75, v143, type metadata accessor for AdaptiveTimeParameters);
    if (v79 < v80)
    {
      v83 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
      v84 = sub_1A2D6BC38(v83);
      v85 = sub_1A2D9A684(v84, 808466992, 0xE400000000000000);

      v86 = sub_1A2D6D4C8(v83, v85);

      v87 = sub_1A2D9BF28(v86, v58, v79, v80, v48);
      if (v88)
      {
      }

      else
      {
        v89 = v143;
        sub_1A2D90DC0(2u, 0, v40, v87);

        sub_1A2D9BEC8(v89, type metadata accessor for AdaptiveTimeParameters);
        sub_1A2D6AFA0(v40, v89, type metadata accessor for AdaptiveTimeParameters);
      }

      v75 = v145;
    }

    if (v81 >= v82)
    {
      v96 = v75;
    }

    else
    {
      v90 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
      v91 = sub_1A2D6BC38(v90);
      v92 = sub_1A2D9A684(v91, 808466992, 0xE400000000000000);

      v93 = sub_1A2D6D4C8(v90, v92);

      v94 = sub_1A2D9BF28(v93, v58, v81, v82, v48);
      if ((v95 & 1) == 0)
      {
        v75 = v143;
        sub_1A2D90DC0(2u, 1, v40, v94);

        sub_1A2D9BEC8(v75, type metadata accessor for AdaptiveTimeParameters);
        sub_1A2D9BEC8(v145, type metadata accessor for AdaptiveTimeParameters);
        (*(v54 + 8))(v58, v55);
        sub_1A2D6AFA0(v40, v75, type metadata accessor for AdaptiveTimeParameters);
        goto LABEL_30;
      }

      v96 = v145;
    }

    sub_1A2D9BEC8(v96, type metadata accessor for AdaptiveTimeParameters);
    (*(v54 + 8))(v58, v55);
    v75 = v143;
  }

LABEL_30:
  v97 = v142;
  sub_1A2D6AFA0(v75, v142, type metadata accessor for AdaptiveTimeParameters);
  v45 = v139;
  swift_beginAccess();
  sub_1A2D9D784(v97, v45, type metadata accessor for AdaptiveTimeParameters);
  v50 = swift_endAccess();
LABEL_31:
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v50))
  {
    v98 = v158;
  }

  else
  {
    v98 = v45;
  }

  v99 = v151;
  sub_1A2D9BE60(v98, v151, type metadata accessor for AdaptiveTimeParameters);
  v100 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
  swift_beginAccess();
  sub_1A2D9D784(v99, v1 + v100, type metadata accessor for AdaptiveTimeParameters);
  swift_endAccess();
  v101 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_baseFont);
  v102 = sub_1A2D6BC38(v101);
  v103 = sub_1A2D9A684(v102, 808466992, 0xE400000000000000);

  v104 = sub_1A2D6D4C8(0, v103);

  v105 = sub_1A2D6BC38(v101);
  v106 = sub_1A2D9A684(v105, 808466992, 0xE400000000000000);

  v107 = sub_1A2D6D4C8(0, v106);

  [v104 ascender];
  v109 = v108;
  v110 = OBJC_IVAR___CSAdaptiveFontProvider_minimumHeight;
  swift_beginAccess();
  *(v1 + v110) = v109;
  [v107 ascender];
  v112 = v111;
  v113 = OBJC_IVAR___CSAdaptiveFontProvider_maximumHeight;
  swift_beginAccess();
  *(v1 + v113) = v112;
  [v107 ascender];
  v115 = v114;
  [v107 capHeight];
  v117 = v115 - v116;
  [v104 ascender];
  v119 = v118;
  [v104 capHeight];
  *(v1 + v113) = *(v1 + v113) - (v117 - (v119 - v120));
  v121 = v152;
  sub_1A2D9BE60(v1 + v100, v152, type metadata accessor for AdaptiveTimeParameters);
  v122 = sub_1A2D90BAC();
  v123 = v154;
  sub_1A2D6A6E0(7u, v122, v124, 0, 1, v154);

  sub_1A2D9BEC8(v121, type metadata accessor for AdaptiveTimeParameters);
  v125 = *(v155 + 48);
  v126 = v156;
  if (v125(v123, 1, v156) == 1)
  {
    sub_1A2D8FE7C(v123, &qword_1EB0B36D0);
  }

  else
  {
    v127 = v150;
    sub_1A2D6AFA0(v123, v150, type metadata accessor for AdaptiveTimeParameters.Entry);
    v128 = *v127;
    v129 = v127[1];
    sub_1A2D9BEC8(v127, type metadata accessor for AdaptiveTimeParameters.Entry);
    *(v1 + v113) = v129 - v128 + *(v1 + v113);
  }

  v130 = v153;
  sub_1A2D9BE60(v1 + v100, v153, type metadata accessor for AdaptiveTimeParameters);
  v131 = sub_1A2D90BAC();
  v132 = v157;
  sub_1A2D6A6E0(3u, v131, v133, 0, 1, v157);

  sub_1A2D9BEC8(v130, type metadata accessor for AdaptiveTimeParameters);
  if (v125(v132, 1, v126) == 1)
  {
    sub_1A2D8FE7C(v132, &qword_1EB0B36D0);
  }

  else
  {
    v134 = *(v132 + 1);
    sub_1A2D9BEC8(v132, type metadata accessor for AdaptiveTimeParameters.Entry);
    [v107 capHeight];
    *(v1 + v113) = *(v1 + v113) + (v134 + -100.0) * v135 / 100.0;
  }

  v136 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont);
  *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont) = v104;

  v137 = *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_maximumFont);
  *(v1 + OBJC_IVAR___CSAdaptiveFontProvider_maximumFont) = v107;
}

uint64_t sub_1A2D9A684(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for AdaptiveTimeParameters(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3 + OBJC_IVAR___CSAdaptiveFontProvider_parameters;
  swift_beginAccess();
  v14 = *(v13 + *(v8 + 40));
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 56);
  v18 = (v15 + 63) >> 6;
  v39 = (v11 + 48);
  v40 = v13;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v21 = *(*(v14 + 48) + (__clz(__rbit64(v17)) | (v19 << 6)));
    sub_1A2D9BE60(v40, v10, type metadata accessor for AdaptiveTimeParameters);
    v22 = v42;
    if (*(v42 + 16))
    {
      v23 = sub_1A2D6AB64(v21);
      if (v24)
      {
        v25 = 0;
        v26 = *(*(v22 + 56) + 8 * v23);
      }

      else
      {
        v26 = 0;
        v25 = 1;
      }
    }

    else
    {
      v26 = 0;
      v25 = 1;
    }

    v17 &= v17 - 1;
    sub_1A2D6A6E0(v21, v43, v44, v26, v25, v6);
    sub_1A2D9BEC8(v10, type metadata accessor for AdaptiveTimeParameters);
    if ((*v39)(v6, 1, v41) == 1)
    {
      sub_1A2D8FE7C(v6, &qword_1EB0B36D0);
    }

    else
    {
      v27 = v37;
      sub_1A2D6AFA0(v6, v37, type metadata accessor for AdaptiveTimeParameters.Entry);
      v28 = sub_1A2D6CE70();
      sub_1A2D9BEC8(v27, type metadata accessor for AdaptiveTimeParameters.Entry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1A2D6CEC4(0, *(v38 + 2) + 1, 1, v38);
      }

      v30 = *(v38 + 2);
      v29 = *(v38 + 3);
      if (v30 >= v29 >> 1)
      {
        v38 = sub_1A2D6CEC4((v29 > 1), v30 + 1, 1, v38);
      }

      v31 = v38;
      *(v38 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      v32[32] = v21;
      *(v32 + 5) = v28;
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 56 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  v33 = v38;
  if (*(v38 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F0);
    v34 = sub_1A2D9FDB0();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC8];
  }

  v45 = v34;
  sub_1A2D6D168(v33, 1, &v45);
  return v45;
}

id AdaptiveFontProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdaptiveFontProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdaptiveFontProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A2D9ACE4(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v25 = a2;
  v11 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = 0;
  v18 = 0;
  if (a3)
  {
    [a3 doubleValue];
    v18 = v19;
  }

  if (a4)
  {
    [a4 doubleValue];
    v17 = v20;
  }

  sub_1A2D8FE14(a5, &v16[*(v11 + 32)], &qword_1EB0B36D8);
  *v16 = a1 & 1;
  *(v16 + 1) = v25;
  *(v16 + 2) = v18;
  v16[24] = a3 == 0;
  *(v16 + 4) = v17;
  v16[40] = a4 == 0;
  sub_1A2D9BE60(v16, v14, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v21 = objc_allocWithZone(v6);
  sub_1A2D9BE60(v14, v21 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v26.receiver = v21;
  v26.super_class = v6;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  sub_1A2D8FE7C(a5, &qword_1EB0B36D8);
  sub_1A2D9BEC8(v14, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  sub_1A2D9BEC8(v16, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v22;
}

id sub_1A2D9AFB8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1A2D9BE60(a1, v1 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A2D9BEC8(a1, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  return v4;
}

BOOL AdaptiveFontLayoutContext.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1A2D8FE14(a1, v6, &qword_1EB0B36E0);
  if (!v7)
  {
    sub_1A2D8FE7C(v6, &qword_1EB0B36E0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = sub_1A2D9B95C((v1 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext), &v5[OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext]);

  return v3;
}

id AdaptiveFontLayoutContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2D9B324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3710);
    v2 = sub_1A2D9FDA0();
    v16 = v2;
    sub_1A2D9FD40();
    if (sub_1A2D9FD60())
    {
      type metadata accessor for CFNumber(0);
      do
      {
        swift_dynamicCast();
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A2D6E290(v9 + 1, 1);
        }

        v2 = v16;
        sub_1A2D9FE10();
        sub_1A2D6E104(&qword_1ED6914E0, type metadata accessor for CFNumber);
        sub_1A2D9F680();
        result = sub_1A2D9FE40();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (sub_1A2D9FD60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

id sub_1A2D9B598()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3718);
  v2 = *v0;
  v3 = sub_1A2D9FD80();
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
        sub_1A2D667EC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A2D6C348(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1A2D9B718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36F0);
  v2 = *v0;
  v3 = sub_1A2D9FD80();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1A2D9B864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3710);
    v3 = sub_1A2D9FDB0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A2D6E020(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1A2D9B95C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1A2D9F5A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B3728);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v15 = a2[24];
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 2) != *(a2 + 2))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = a2[40];
  if (a1[40])
  {
    if (!a2[40])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v12;
  v18 = *(type metadata accessor for AdaptiveFontProvider.LayoutContext(0) + 32);
  v19 = *(v17 + 48);
  sub_1A2D8FE14(&a1[v18], v14, &qword_1EB0B36D8);
  sub_1A2D8FE14(&a2[v18], &v14[v19], &qword_1EB0B36D8);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) != 1)
  {
    sub_1A2D8FE14(v14, v10, &qword_1EB0B36D8);
    if (v20(&v14[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v19], v4);
      sub_1A2D6E104(&qword_1ED6914F0, MEMORY[0x1E6968848]);
      v22 = sub_1A2D9FB60();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      sub_1A2D8FE7C(v14, &qword_1EB0B36D8);
      return (v22 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_1A2D8FE7C(v14, &qword_1EB0B3728);
    return 0;
  }

  if (v20(&v14[v19], 1, v4) != 1)
  {
    goto LABEL_20;
  }

  sub_1A2D8FE7C(v14, &qword_1EB0B36D8);
  return 1;
}

uint64_t sub_1A2D9BD04(void *a1)
{
  v2 = [a1 fontName];
  sub_1A2D9FB80();

  LOBYTE(v2) = sub_1A2D9FBD0();

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 fontName];
    sub_1A2D9FB80();

    LOBYTE(v4) = sub_1A2D9FBD0();

    v3 = v4 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1A2D9BE60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2D9BEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2D9BF28(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = sub_1A2D9F5A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2D96490(v64);
  if (!v65)
  {
    return 0;
  }

  v15 = v66;
  v14 = v67;
  result = sub_1A2D8FE7C(v64, &unk_1EB0B3730);
  if (v15 > v14)
  {
    __break(1u);
  }

  else
  {
    if (v15 > a4 || v14 < a3)
    {
      return 0;
    }

    if (v15 > a3)
    {
      a3 = v15;
    }

    if (v14 < a4)
    {
      a4 = v14;
    }

    if (a4 == a3)
    {
      return 0;
    }

    v18 = [a1 fontDescriptor];
    v19 = sub_1A2D9FE50();
    CopyWithVariation = CTFontDescriptorCreateCopyWithVariation(v18, v19, a4);

    [a1 pointSize];
    v22 = CTFontCreateWithFontDescriptor(CopyWithVariation, v21, 0);

    sub_1A2D8FEDC(0, &qword_1ED691490);
    v24 = *(v11 + 16);
    v23 = v11 + 16;
    v63 = v24;
    v24(v13, a2, v10);
    v25 = sub_1A2D9FC50();
    v26 = *MEMORY[0x1E69DB648];
    [v25 addAttribute:*MEMORY[0x1E69DB648] value:v22 range:{0, objc_msgSend(v25, sel_length)}];
    [v25 boundingRectWithSize:0 options:0 context:{INFINITY, INFINITY}];
    v28 = v27;

    if (v28 <= a5)
    {
      return *&a4;
    }

    else
    {
      v29 = [a1 fontDescriptor];
      v30 = sub_1A2D9FE50();
      v31 = CTFontDescriptorCreateCopyWithVariation(v29, v30, a3);

      v62 = a1;
      [a1 pointSize];
      v33 = CTFontCreateWithFontDescriptor(v31, v32, 0);

      v34 = v63;
      v63(v13, a2, v10);
      v35 = sub_1A2D9FC50();
      [v35 addAttribute:v26 value:v33 range:{0, objc_msgSend(v35, sel_length)}];
      [v35 boundingRectWithSize:0 options:0 context:{INFINITY, INFINITY}];
      v37 = v36;

      if (v37 >= a5)
      {
        return *&a3;
      }

      else
      {
        v38 = v26;
        v39 = v28 - v37;
        v40 = v28 - v37 == 0.0;
        v41 = a3;
        if (!v40)
        {
          v39 = (a5 - v37) * ((a4 - a3) / v39);
          v41 = a3 + v39;
        }

        v42 = 20;
        v43 = &selRef_cs_animateInProcessWithSettings_animations_completion_;
        v61 = v13;
        do
        {
          v63 = v42;
          v44 = v62;
          v45 = [v62 v43[54]];
          v46 = sub_1A2D9FE50();
          v47 = v10;
          v48 = v23;
          v49 = a2;
          v50 = v34;
          v51 = CTFontDescriptorCreateCopyWithVariation(v45, v46, v41);

          v52 = v44;
          v53 = v61;
          [v52 pointSize];
          v55 = CTFontCreateWithFontDescriptor(v51, v54, 0);

          v34 = v50;
          a2 = v49;
          v23 = v48;
          v10 = v47;

          v34(v53, a2, v47);
          v56 = sub_1A2D9FC50();
          [v56 addAttribute:v38 value:v55 range:{0, objc_msgSend(v56, sel_length)}];
          [v56 boundingRectWithSize:0 options:0 context:{INFINITY, INFINITY}];
          v58 = v57;

          v59 = vabdd_f64(v58, a5);
          if (v59 <= 0.5)
          {
            break;
          }

          v39 = v41 + v59 * -0.25;
          if (a3 > v39)
          {
            v39 = a3;
          }

          v41 = v39 >= a4 ? a4 : v39;
          v42 = v63 - 1;
          v43 = &selRef_cs_animateInProcessWithSettings_animations_completion_;
        }

        while (v63 != 1);
        return *&v41;
      }
    }
  }

  return result;
}

double sub_1A2D9C460(double a1)
{
  v3 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = 0.0;
  if (*(v1 + OBJC_IVAR___CSAdaptiveFontProvider_minimumFont))
  {
    sub_1A2D6B008(a1);
    v10 = OBJC_IVAR___CSAdaptiveFontProvider_parameters;
    swift_beginAccess();
    sub_1A2D9BE60(v1 + v10, v5, type metadata accessor for AdaptiveTimeParameters);
    v11 = sub_1A2D90BAC();
    sub_1A2D6A6E0(7u, v11, v12, 0, 1, v8);

    sub_1A2D9BEC8(v5, type metadata accessor for AdaptiveTimeParameters);
    v13 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
    if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
    {
      sub_1A2D8FE7C(v8, &qword_1EB0B36D0);
    }

    else
    {
      v9 = sub_1A2D6CE70();
      sub_1A2D9BEC8(v8, type metadata accessor for AdaptiveTimeParameters.Entry);
    }
  }

  return v9;
}

uint64_t sub_1A2D9C664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2D9C6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A2D9C744(char a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2D93A80(a2);
  sub_1A2D9373C(v10, (a1 & 1) == 0, v9);
  v11 = sub_1A2D90BAC();
  sub_1A2D6A6E0(0, v11, v12, 0, 1, v6);

  sub_1A2D9BEC8(v9, type metadata accessor for AdaptiveTimeParameters);
  v13 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_1A2D8FE7C(v6, &qword_1EB0B36D0);
    return 100.0;
  }

  else
  {
    v14 = *v6;
    sub_1A2D9BEC8(v6, type metadata accessor for AdaptiveTimeParameters.Entry);
  }

  return v14;
}

double sub_1A2D9C904(char a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AdaptiveTimeParameters(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2D93A80(a2);
  sub_1A2D9373C(v10, (a1 & 1) == 0, v9);
  v11 = sub_1A2D90BAC();
  sub_1A2D6A6E0(0, v11, v12, 0, 1, v6);

  sub_1A2D9BEC8(v9, type metadata accessor for AdaptiveTimeParameters);
  v13 = type metadata accessor for AdaptiveTimeParameters.Entry(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_1A2D8FE7C(v6, &qword_1EB0B36D0);
    return 130.0;
  }

  else
  {
    v14 = *(v6 + 1);
    sub_1A2D9BEC8(v6, type metadata accessor for AdaptiveTimeParameters.Entry);
  }

  return v14;
}

id sub_1A2D9CAC8(char a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1A2D9F5A0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1A2D8FE14(v13, &v10[*(v5 + 40)], &qword_1EB0B36D8);
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = 0;
  v10[24] = 1;
  *(v10 + 4) = 0;
  v10[40] = 1;
  sub_1A2D9BE60(v10, v8, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v15 = type metadata accessor for AdaptiveFontLayoutContext(0);
  v16 = objc_allocWithZone(v15);
  sub_1A2D9BE60(v8, v16 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_1A2D9BEC8(v8, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  sub_1A2D9BEC8(v10, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  sub_1A2D8FE7C(v13, &qword_1EB0B36D8);
  return v17;
}

id sub_1A2D9CCE8(char a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for AdaptiveFontProvider.LayoutContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0B36D8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  if (a5)
  {
    v19 = a5;
    sub_1A2D9F5B0();
    v20 = sub_1A2D9F5A0();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  }

  else
  {
    v21 = sub_1A2D9F5A0();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  v22 = 0;
  v23 = 0;
  if (a3)
  {
    [a3 doubleValue];
    v23 = v24;
  }

  if (a4)
  {
    [a4 doubleValue];
    v22 = v25;
  }

  sub_1A2D8FE14(v18, &v15[*(v10 + 32)], &qword_1EB0B36D8);
  *v15 = a1 & 1;
  *(v15 + 1) = a2;
  *(v15 + 2) = v23;
  v15[24] = a3 == 0;
  *(v15 + 4) = v22;
  v15[40] = a4 == 0;
  sub_1A2D9BE60(v15, v13, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v26 = type metadata accessor for AdaptiveFontLayoutContext(0);
  v27 = objc_allocWithZone(v26);
  sub_1A2D9BE60(v13, v27 + OBJC_IVAR___CSAdaptiveFontLayoutContext_layoutContext, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  v30.receiver = v27;
  v30.super_class = v26;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  sub_1A2D9BEC8(v13, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  sub_1A2D9BEC8(v15, type metadata accessor for AdaptiveFontProvider.LayoutContext);
  sub_1A2D8FE7C(v18, &qword_1EB0B36D8);
  return v28;
}

uint64_t sub_1A2D9CFBC()
{
  result = type metadata accessor for AdaptiveFontProvider.LayoutContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AdaptiveTimeParameters(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A2D9D534()
{
  type metadata accessor for CSDeviceCategory(319);
  if (v0 <= 0x3F)
  {
    sub_1A2D9D734(319, &qword_1ED691AC8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A2D9D62C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A2D9D62C()
{
  if (!qword_1ED691AD0)
  {
    sub_1A2D9F5A0();
    v0 = sub_1A2D9FCB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED691AD0);
    }
  }
}

uint64_t sub_1A2D9D68C()
{
  result = type metadata accessor for AdaptiveFontProvider.LayoutContext(319);
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

void sub_1A2D9D734(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A2D9D784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
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

uint64_t sub_1A2D9D800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2D9D848(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void __getPRPosterContentVibrantMonochromeStyleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterContentVibrantMonochromeStyleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CSVibrantContentStyleRenderer.m" lineNumber:25 description:{@"Unable to find class %s", "PRPosterContentVibrantMonochromeStyle"}];

  __break(1u);
}

void __getPRPosterContentVibrantMonochromeStyleClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CSVibrantContentStyleRenderer.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}