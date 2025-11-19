uint64_t MathPresentation.SourceAttribution.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MathPresentation.SourceAttribution.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MathPresentation.SourceAttribution.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

void MathPresentation.enumerate<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 box];
    v9 = [v7 box];
    sub_258247728(v8, v9, a1, a2, a3);
    swift_unknownObjectRelease();
  }
}

void sub_258247728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 canContainBoxes])
  {
    v10 = [a1 containedBoxes];
    sub_258247D24();
    v11 = sub_2582CBA9C();

    [a1 boundsWithRoot_];
    (*(a5 + 8))(a4, a5);
  }

  else
  {
    v11 = 0;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 attribution];
    v16 = [v15 source];

    if (v16)
    {
      v36 = v14;
      v17 = sub_2582CBA5C();
      v19 = v18;

      v20 = [v13 attribution];
      [v20 range];

      v21 = sub_2582CBAAC();
      if (v23)
      {
      }

      else
      {
        v37[0] = v17;
        v37[1] = v19;
        v37[2] = v21;
        v37[3] = v22;
        [v36 boundsWithRoot_];
        (*(a5 + 24))(v37, a4, a5);
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = a1;
    v27 = [v25 cgPath];
    [v26 boundsWithRoot_];
    (*(a5 + 32))(v27, a4, a5);
LABEL_10:

    goto LABEL_15;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28 = a1;
    [v28 boundsWithRoot_];
    (*(a5 + 40))(a4, a5);

    goto LABEL_15;
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    v26 = a1;
    v27 = [v35 attributedString];
    [v26 boundsWithRoot_];
    (*(a5 + 48))(v27, a4, a5);
    goto LABEL_10;
  }

LABEL_15:
  if (v11)
  {
    v29 = sub_258247D00(v11);
    if (v29)
    {
      v30 = v29;
      if (v29 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v30; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x259C7C0A0](i, v11);
        }

        else
        {
          v32 = *(v11 + 8 * i + 32);
        }

        v33 = v32;
        sub_258247728(v32, a2, a3, a4, a5);
      }
    }

    (*(a5 + 16))(a4, a5);
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258247B90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258247BD0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258247C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258247C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_258247CB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_258247D00(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_258247D24()
{
  result = qword_27F9251C0;
  if (!qword_27F9251C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9251C0);
  }

  return result;
}

void MathPresentation.layout(in:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = type metadata accessor for MathPresentation._LayoutContext();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context], __src, 0x50uLL);
  sub_258247E44(__dst, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = __dst[9];
  v7 = *(v1 + 8);
  v8 = __dst[9];

  *(v1 + 8) = v6;
  [*v1 layoutWithContext_];
}

void MathPresentation.draw(in:offset:)(uint64_t *a1, double a2, double a3)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  v9 = a1[2];
  v8 = a1[3];
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = objc_allocWithZone(EQKitRenderContext);
  v13 = v9;
  v14 = [v12 initWithCGContext_];
  [v14 setRendersDebugRects_];
  [v14 setHighlightColor_];
  [v14 setSelection_];

  if (v11)
  {
    color = v11;
  }

  else
  {
    color = CGColorCreateGenericGray(0.0, 1.0);
  }

  v15 = v11;
  v16 = [v14 cgContext];
  CGContextSetFillColorWithColor(v16, color);

  [v10 renderIntoContext:v14 offset:{a2, a3}];
}

MathTypesetting::MathPresentation::Selection_optional __swiftcall MathPresentation.selection(at:)(CGPoint at)
{
  v3 = v1;
  v4 = [*v2 selectionForPoint_];
  *v3 = v4;
  result.value.selection._box = v5;
  result.value.selection.super.isa = v4;
  result.is_nil = v6;
  return result;
}

uint64_t sub_258248084(char a1)
{
  sub_2582CBAFC();
  MEMORY[0x259C7C0D0](a1 & 1);
  return sub_2582CBB2C();
}

uint64_t sub_2582480E8()
{
  v1 = *v0;
  sub_2582CBAFC();
  MEMORY[0x259C7C0D0](v1);
  return sub_2582CBB2C();
}

uint64_t static MathPresentation.Format.format(from:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_2582CBA8C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2582CBA7C();
  v7 = sub_2582CBA6C();
  v9 = v8;
  result = (*(v4 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    *a1 = 2;
  }

  else
  {
    static MathPresentation.Format.format(from:)(a1);
    return sub_2582491B4(v7, v9);
  }

  return result;
}

void static MathPresentation.Format.format(from:)(_BYTE *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_2582CBA3C();
  v4 = [v2 formatFromData_];

  v5 = 0x10002u >> (8 * v4);
  if (v4 >= 3)
  {
    LOBYTE(v5) = 2;
  }

  *a1 = v5;
}

id sub_258248348()
{
  result = [objc_opt_self() createDefaultEnvironment];
  qword_27F925230 = result;
  return result;
}

id static MathPresentation.Environment.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F925140 != -1)
  {
    swift_once();
  }

  v2 = qword_27F925230;
  *a1 = qword_27F925230;

  return v2;
}

id sub_258248414@<X0>(_BYTE *a1@<X8>)
{
  result = MathPresentation.Environment.sourceAttribution.getter();
  *a1 = result & 1;
  return result;
}

id (*MathPresentation.Environment.sourceAttribution.modify(uint64_t a1))(void **a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 sourceAttribution];
  return sub_2582484BC;
}

id sub_2582484F4@<X0>(_BYTE *a1@<X8>)
{
  result = MathPresentation.Environment.allowSingleLineHeight.getter();
  *a1 = result & 1;
  return result;
}

id (*MathPresentation.Environment.allowSingleLineHeight.modify(uint64_t a1))(void **a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 allowSingleLineHeight];
  return sub_25824859C;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MathPresentation.Model.init(_:format:environment:)(MathTypesetting::MathPresentation::Model_optional *__return_ptr retstr, Swift::String _, MathTypesetting::MathPresentation::Format format, MathTypesetting::MathPresentation::Environment *environment)
{
  v6 = *&format;
  v20 = retstr;
  v7 = sub_2582CBA8C();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20]();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v6;
  isa = environment->env.super.isa;
  sub_2582CBA7C();
  v14 = sub_2582CBA6C();
  v16 = v15;

  (*(v9 + 8))(v11, v7);
  if (v16 >> 60 == 15)
  {

    v17 = 0;
LABEL_7:
    v20->value.model.super.isa = v17;
    return;
  }

  if (v12)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  sub_2582494F4(0, &qword_27F925240);
  v17 = sub_258248730(v14, v16, v18, isa);
  if (!v4)
  {
    goto LABEL_7;
  }
}

id sub_258248730(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2582CBA3C();
  v13[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() equationWithData:v8 format:a3 environment:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_2582CBA2C();

    swift_willThrow();
  }

  sub_2582491C8(a1, a2);
  return v9;
}

id MathPresentation.Model.layout(with:)@<X0>(char *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = [*v2 newLayout];
  v6 = result;
  v7 = __dst[2];
  if (__dst[2] == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = __dst[9];
    v9 = type metadata accessor for MathPresentation._LayoutContext();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context];
    *v11 = *__src;
    *(v11 + 2) = v7;
    *(v11 + 24) = *(__src + 24);
    *(v11 + 40) = *(__src + 40);
    *(v11 + 56) = *(__src + 56);
    *(v11 + 9) = v8;
    memcpy(v16, __dst, sizeof(v16));
    sub_258249220(__dst, v15);
    sub_258247E44(v16, v15);
    v14.receiver = v10;
    v14.super_class = v9;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    v13 = v8;
    [v6 layoutWithContext_];

    result = sub_2582492D8(__dst);
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t MathPresentation.LayoutContext.baseFontName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MathPresentation.LayoutContext.baseFontName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MathPresentation.LayoutContext.targetSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

uint64_t MathPresentation.LayoutContext.containerSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

void *MathPresentation.LayoutContext.baseColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t MathPresentation.LayoutContext.init(baseFontSize:baseFontName:targetSize:containerSize:baseColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a10;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8 & 1;
  *(a9 + 72) = a11;
  return result;
}

void MathPresentation.LayoutContext.init(font:)(const __CTFont *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x4032000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *a2 = CTFontGetSize(a1);
  v4 = CTFontCopyPostScriptName(a1);
  v5 = sub_2582CBA5C();
  v7 = v6;

  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
}

uint64_t sub_258248C50()
{
  v1 = *(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 8);

  return v1;
}

double sub_258248CB0()
{
  result = *(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 24);
  if (*(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 40))
  {
    return 0.0;
  }

  return result;
}

double sub_258248CFC()
{
  result = *(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 48);
  if (*(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 64))
  {
    return 0.0;
  }

  return result;
}

void *sub_258248D58()
{
  v1 = *(v0 + OBJC_IVAR____TtCV15MathTypesetting16MathPresentation14_LayoutContext_context + 72);
  v2 = v1;
  return v1;
}

id sub_258248DCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258248EA4()
{
  sub_2582CBAFC();
  sub_2582CBB1C();
  return sub_2582CBB2C();
}

uint64_t sub_258248F24()
{
  sub_2582CBAFC();
  sub_2582CBB1C();
  return sub_2582CBB2C();
}

BOOL sub_258248FC4(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_258248FF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

uint64_t sub_258249028@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 4) = v4 == 0;
  return result;
}

uint64_t sub_258249134@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = MathPresentation.DrawingContext.Options.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_258249174@<X0>(_DWORD *a1@<X8>)
{
  result = MathPresentation.DrawingContext.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2582491B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2582491C8(a1, a2);
  }

  return a1;
}

uint64_t sub_2582491C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_258249220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F925248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2582492D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F925248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258249344@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

id MathPresentation.DrawingContext.selection.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void MathPresentation.DrawingContext.selection.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void *MathPresentation.DrawingContext.highlightColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t MathPresentation.DrawingContext.init(context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_2582494F4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258249538()
{
  result = qword_27F925258;
  if (!qword_27F925258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F925258);
  }

  return result;
}

unint64_t sub_258249590()
{
  result = qword_27F925260;
  if (!qword_27F925260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F925260);
  }

  return result;
}

unint64_t sub_2582495E8()
{
  result = qword_27F925268;
  if (!qword_27F925268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F925268);
  }

  return result;
}

unint64_t sub_258249640()
{
  result = qword_27F925270;
  if (!qword_27F925270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F925270);
  }

  return result;
}

uint64_t sub_2582496F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258249730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2582497D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258249828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2582498A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2582498E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MathPresentation.DrawingContext.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MathPresentation.DrawingContext.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_258249994(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2582499D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258249A24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_258249AB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x258249B7CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_258249BCC()
{
  result = qword_27F9252E0;
  if (!qword_27F9252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9252E0);
  }

  return result;
}

uint64_t EQKitXMLIsTextContentOnly(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = 0;
      while (xmlNodeIsText(v1) || *(v1 + 8) == 8)
      {
        v1 = *(v1 + 48);
        v2 = 1;
        v3 = 1;
        if (!v1)
        {
          return v3 & v2;
        }
      }

      v3 = 0;
      return v3 & v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *EQKitXMLIsNamedElement(_xmlNode *a1, _xmlNs *a2, const char *__s2)
{
  result = 0;
  if (a1 && __s2)
  {
    if (a1->type == XML_ELEMENT_NODE && a1->ns == a2)
    {
      result = a1->name;
      if (result)
      {
        return (strcmp(result, __s2) == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL EQKitXMLIsNsElement(_BOOL8 result, _xmlNs *a2)
{
  if (result)
  {
    return *(result + 8) == 1 && *(result + 72) == a2;
  }

  return result;
}

BOOL EQKitXMLIsElement(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 1;
  }

  return result;
}

void EQKitXMLTextContentAsString(_xmlNode *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v6 = xmlBufferCreate();
  xmlNodeBufGetContent(v6, a1);
  if (a2)
  {
    v7 = xmlBufferContent(v6);
    std::string::basic_string[abi:ne200100]<0>(&__str, v7);
    v8 = __p;
    std::string::basic_string[abi:ne200100]<0>(__p, " \t\n");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v8 = __p[0];
      v11 = __p[1];
    }

    if (!size)
    {
      goto LABEL_24;
    }

    v12 = p_str;
    if (v11)
    {
      v13 = size;
      v12 = p_str;
      while (memchr(v8, v12->__r_.__value_.__s.__data_[0], v11))
      {
        v12 = (v12 + 1);
        if (!--v13)
        {
          goto LABEL_24;
        }
      }
    }

    v15 = v12 - p_str;
    if (v15 == -1)
    {
LABEL_24:
      std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    else
    {
      v16 = size - 1;
      do
      {
        v17 = v16;
        if (v16 == -1)
        {
          break;
        }

        if (!v11)
        {
          break;
        }

        v18 = memchr(v8, p_str->__r_.__value_.__s.__data_[v16], v11);
        v16 = v17 - 1;
      }

      while (v18);
      std::string::basic_string(a3, &__str, v15, v17 - v15 + 1, &v22);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = xmlBufferContent(v6);
    std::string::basic_string[abi:ne200100]<0>(a3, v14);
  }

  xmlBufferFree(v6);
}

void sub_25824A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void EQKitXMLAttributeValueAsString(_xmlNode *a1@<X0>, _xmlAttr *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    if (a2)
    {
      String = xmlNodeListGetString(a1->doc, a2->children, 1);
      if (String)
      {
        std::string::__assign_external(a3, String);

        free(String);
      }
    }
  }
}

void sub_25824A1C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_25824A33C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x259C7CB20](v1);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279871E58, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C7CAD0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25824A6D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t CoverageTableGetIndexOfGlyphID(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 == 0xFFFF)
  {
    return -1;
  }

  v20 = v2;
  v21 = v3;
  v5 = __rev16(a2);
  v19 = v5;
  v6 = *a1;
  v7 = __rev16(v6);
  if (v7 == 2)
  {
    __key[0] = v5;
    __key[1] = v5;
    __key[2] = 0;
    if (v6 == 512)
    {
      v11 = bswap32(a1[1]) >> 16;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __CoverageTableGetIndexOfGlyphID_block_invoke_2;
    v14[3] = &__block_descriptor_tmp_1;
    v15 = a2;
    v13 = bsearch_b(__key, a1 + 2, v11, 6uLL, v14);
    if (v13)
    {
      return (bswap32(v13[2]) >> 16) + a2 - (bswap32(*v13) >> 16);
    }
  }

  else if (v7 == 1)
  {
    v8 = a1 + 2;
    v9 = v6 == 256 ? bswap32(a1[1]) >> 16 : 0;
    __compar[0] = MEMORY[0x277D85DD0];
    __compar[1] = 0x40000000;
    __compar[2] = __CoverageTableGetIndexOfGlyphID_block_invoke;
    __compar[3] = &__block_descriptor_tmp;
    v18 = a2;
    v12 = bsearch_b(&v19, v8, v9, 2uLL, __compar);
    if (v12)
    {
      return (v12 - v8) >> 1;
    }
  }

  return -1;
}

uint64_t __CoverageTableGetIndexOfGlyphID_block_invoke_2(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 32);
  if (v3 >= bswap32(*a3) >> 16)
  {
    return v3 > bswap32(a3[1]) >> 16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MathGlyphInfoGetExtendedShapesCoverageTable(uint64_t a1)
{
  v1 = a1 + __rev16(*(a1 + 4));
  if (*(a1 + 4))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t GlyphAssemblyGetPartAtIndex(uint64_t a1, unsigned int a2)
{
  if (a2 >= bswap32(*(a1 + 4)) >> 16)
  {
    return 0;
  }

  else
  {
    return a1 + 10 * a2 + 6;
  }
}

char *MathGlyphConstructionGetGlyphAssembly(_WORD *a1)
{
  v1 = a1 + __rev16(*a1);
  if (*a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t MathGlyphConstructionGetGlyphVariantAtIndex(uint64_t a1, unsigned int a2)
{
  if (a2 >= bswap32(*(a1 + 2)) >> 16)
  {
    return 0;
  }

  else
  {
    return a1 + 4 * a2 + 4;
  }
}

uint64_t MathVariantsGetVertGlyphConstructionAtIndex(uint64_t a1, unsigned int a2)
{
  if (a2 >= bswap32(*(a1 + 6)) >> 16)
  {
    return 0;
  }

  else
  {
    return a1 + (bswap32(*(a1 + 2 * a2 + 10)) >> 16);
  }
}

uint64_t MathVariantsGetHorizGlyphConstructionAtIndex(uint64_t a1, unsigned int a2)
{
  if (a2 >= bswap32(*(a1 + 8)) >> 16)
  {
    return 0;
  }

  else
  {
    return a1 + (bswap32(*(a1 + 2 * ((bswap32(*(a1 + 6)) >> 16) + a2) + 10)) >> 16);
  }
}

BOOL EQKit::ScriptLevel::fromString(const std::string *a1, uint64_t a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v9, a1, 8);
  v3 = std::istream::peek() << 24;
  v5 = v3 == 721420288 || v3 == 754974720;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  MEMORY[0x259C7C9F0](v9, &v8);
  v6 = *(&v11[1].__locale_ + *(v9[0] - 24)) & 7;
  if (v6 == 2)
  {
    *a2 = v8;
    *(a2 + 8) = v5;
  }

  v9[0] = *MEMORY[0x277D82820];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::istream::~istream();
  MEMORY[0x259C7CB20](&v13);
  return v6 == 2;
}

void sub_25824AEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::istringstream::~istringstream(&a11, MEMORY[0x277D82820]);
  MEMORY[0x259C7CB20](&a26);
  _Unwind_Resume(a1);
}

uint64_t EQKit::ScriptLevel::resolveWithBase(EQKit::ScriptLevel *this, uint64_t a2)
{
  if (!*(this + 8))
  {
    a2 = 0;
  }

  return a2 + *this;
}

uint64_t EQKit::Config::Operator::Dictionary::IdentifierMap::add(_WORD *a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>((a1 + 4), a2);
  if (a1 + 8 != v4)
  {
    return *(v4 + 56);
  }

  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v5;
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short>>((a1 + 4), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<std::string>::push_back[abi:ne200100]((a1 + 16), a2);
  ++*a1;
  return v5;
}

void sub_25824AFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::wstring>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void EQKit::Config::Operator::Dictionary::~Dictionary(EQKit::Config::Operator::Dictionary *this)
{
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 56, *(this + 8));
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(this + 8, *(this + 2));
}

EQKit::Config::Operator::Dictionary *EQKit::Config::Operator::Dictionary::dictionaryFromURL(EQKit::Config::Operator::Dictionary *this, NSURL *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:this error:&v64];
  obj = v3;
  if (!v3)
  {
    __p[0] = 0;
    [(EQKit::Config::Operator::Dictionary *)this getResourceValue:__p forKey:*MEMORY[0x277CBE8E8] error:0];
    NSLog(&cfstr_FailedToReadWi.isa, __p[0], v64);
    v3 = 0;
  }

  if (![v3 count] || (v4 = operator new(0x80uLL, MEMORY[0x277D826F0])) == 0)
  {
LABEL_83:
    v49 = 0;
    goto LABEL_84;
  }

  *v4 = 1;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[1] = v4 + 2;
  v4[8] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = v4 + 8;
  v40 = (v4 + 7);
  v4[9] = 0;
  v4[11] = 0;
  v4[10] = v4 + 11;
  v45 = (v4 + 10);
  v4[12] = 0;
  v4[14] = 0;
  v48 = (v4 + 14);
  v49 = v4;
  v4[13] = v4 + 14;
  v42 = (v4 + 13);
  v4[15] = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (!v43)
  {
    v30 = 0;
    goto LABEL_69;
  }

  v41 = *v61;
  while (2)
  {
    v5 = 0;
    do
    {
      if (*v61 != v41)
      {
        v6 = v5;
        objc_enumerationMutation(obj);
        v5 = v6;
      }

      v47 = v5;
      v7 = *(*(&v60 + 1) + 8 * v5);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_InvalidItemCla.isa, v7);
LABEL_68:
        v30 = 1;
        goto LABEL_69;
      }

      v8 = [v7 objectForKey:@"char"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_MissingInvalid.isa, @"char", v7);
        goto LABEL_68;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
      v9 = EQKit::Config::Operator::Dictionary::IdentifierMap::add(v49, __p);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }

      v59 = v9;
      v10 = [v7 objectForKey:@"form"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v50 = EQKit::Config::Operator::formFromMathMLString(__p, 0);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v50 = 0;
      }

      v11 = [v7 objectForKey:@"lspace"];
      objc_opt_class();
      v12 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 integerValue];
      }

      v13 = [v7 objectForKey:@"rspace"];
      objc_opt_class();
      v14 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 integerValue];
      }

      v15 = [v7 objectForKey:@"prio"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v15 unsignedIntegerValue];
      }

      else
      {
        v46 = 0;
      }

      v16 = [v7 objectForKey:@"flags"];
      objc_opt_class();
      v17 = 0.0;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length] && (v18 = objc_msgSend(v16, "componentsSeparatedByCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @",")), v55 = 0u, v56 = 0u, v53 = 0u, v54 = 0u, (v19 = objc_msgSend(v18, "countByEnumeratingWithState:objects:count:", &v53, v65, 16)) != 0))
      {
        v20 = 0;
        v21 = *v54;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            if ([v23 isEqualToString:@"stretchy"])
            {
              v20 |= 1u;
            }

            else if ([v23 isEqualToString:@"symmetric"])
            {
              v20 |= 2u;
            }

            else if ([v23 isEqualToString:@"largeop"])
            {
              if ((v20 & 0x80u) != 0)
              {
                v24 = 4;
              }

              else
              {
                v17 = 1.0;
                v24 = -124;
              }

              v20 |= v24;
            }

            else if ([v23 isEqualToString:@"fence"])
            {
              v20 |= 0x10u;
            }

            else if ([v23 isEqualToString:@"accent"])
            {
              v20 |= 8u;
            }

            else if ([v23 isEqualToString:@"movablelimits"])
            {
              v20 |= 0x20u;
            }

            else if ([v23 isEqualToString:@"relational"])
            {
              v20 |= 0x40u;
            }

            else if ([v23 hasPrefix:@"cramped="])
            {
              v25 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v23];
              LODWORD(__p[0]) = 0;
              if ([v25 scanString:@"cramped=" intoString:0] && objc_msgSend(v25, "scanFloat:", __p))
              {
                v26 = [v25 isAtEnd];
                v27 = *__p == 0.0 ? 0 : v26;
                if (v27 == 1)
                {
                  v20 |= 0xFFFFFF80;
                  v17 = *__p;
                }
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v19);
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      v51[0] = v59;
      v52 = v50;
      __p[0] = v51;
      v28 = std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__emplace_unique_key_args<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned short,EQKit::Config::Operator::Form>&&>,std::tuple<>>(v40, v51);
      *(v28 + 40) = 3;
      *(v28 + 48) = v12 / 18.0;
      *(v28 + 56) = 3;
      *(v28 + 64) = v14 / 18.0;
      *(v28 + 72) = v46;
      *(v28 + 80) = v17;
      *(v28 + 88) = v20;
      __p[0] = &v59;
      *(std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v45, &v59) + 8) = v50;
      __p[0] = &v59;
      v29 = std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v42, &v59);
      v29[5] |= 1 << v50;
      v5 = v47 + 1;
    }

    while (v47 + 1 != v43);
    v43 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    v30 = 0;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_69:
  v31 = *v42;
  v32 = v49;
  if (*v42 != v48)
  {
    do
    {
      v33 = *(v31 + 5);
      if (v33)
      {
        v34 = 0;
        do
        {
          v34 += v33 & 1;
          v35 = v33 > 1;
          v33 >>= 1;
        }

        while (v35);
        if (v34 >= 2)
        {
          std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__erase_unique<unsigned short>(v45, v31 + 16);
          v32 = v49;
        }
      }

      v36 = *(v31 + 1);
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = *(v31 + 2);
          v38 = *v37 == v31;
          v31 = v37;
        }

        while (!v38);
      }

      v31 = v37;
    }

    while (v37 != v48);
  }

  if (v30)
  {
    EQKit::Config::Operator::Dictionary::~Dictionary(v32);
    MEMORY[0x259C7CB70]();
    goto LABEL_83;
  }

LABEL_84:

  return v49;
}

void sub_25824B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Config::Operator::Dictionary::lookup(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 2;
  }

  v7[0] = a2;
  v8 = v4;
  v5 = std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::find<std::pair<unsigned short,EQKit::Config::Operator::Form>>(a1 + 56, v7);
  if (a1 + 64 == v5)
  {
    return 0;
  }

  else
  {
    return v5 + 40;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::operatorId(uint64_t a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t EQKit::Config::Operator::Dictionary::formForOperatorId(EQKit::Config::Operator::Dictionary *this, unsigned int a2)
{
  v4 = *(this + 11);
  v2 = this + 88;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 14);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 14) <= a2)
  {
    return *(v5 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::formMaskForOperatorId(EQKit::Config::Operator::Dictionary *this, unsigned int a2)
{
  v4 = *(this + 14);
  v2 = this + 112;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 16);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 16) <= a2)
  {
    return *(v5 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::enumerateEntries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = (result + 64);
  if (v2 != (result + 64))
  {
    v5 = result;
    do
    {
      if (*(v2 + 16))
      {
        v6 = *(v5 + 32);
        v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 40) - v6) >> 3);
        v8 = v6 + 24 * *(v2 + 16) - 24;
        if (v7 >= *(v2 + 16))
        {
          v9 = v8;
        }

        else
        {
          v9 = &EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](unsigned short)const::sEmpty;
        }
      }

      else
      {
        v9 = &EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](unsigned short)const::sEmpty;
      }

      result = (*(a2 + 16))(a2, v9, *(v2 + 9), v2 + 5);
      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::wstring> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::wstring> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::wstring>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::wstring> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__construct_node<std::pair<std::string const,unsigned short>>();
  }

  return result;
}

void sub_25824C7D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__emplace_unique_key_args<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned short,EQKit::Config::Operator::Form>&&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__find_equal<std::pair<unsigned short,EQKit::Config::Operator::Form>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__find_equal<std::pair<unsigned short,EQKit::Config::Operator::Form>>(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      v8 = v4;
      v9 = *(v4 + 16);
      if (v6 == v9)
      {
        v10 = *(v8 + 9);
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__erase_unique<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::find<std::pair<unsigned short,EQKit::Config::Operator::Form>>(uint64_t a1, unsigned __int16 *a2)
{
  v3 = a1 + 8;
  result = std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__lower_bound<std::pair<unsigned short,EQKit::Config::Operator::Form>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == result)
  {
    return v3;
  }

  v5 = *a2;
  v6 = *(result + 32);
  v7 = v5 == v6;
  if (v5 >= v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    v9 = *(a2 + 1);
    v10 = *(result + 36);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v8 = -1;
    if (v11)
    {
      v8 = 1;
    }

    if (v12)
    {
      v8 = 0;
    }
  }

  if (v8 < 0)
  {
    return v3;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__lower_bound<std::pair<unsigned short,EQKit::Config::Operator::Form>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    do
    {
      v7 = *(a3 + 32);
      v8 = v7 == v5;
      if (v7 >= v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a3 + 36);
        v11 = v10 == v6;
        v9 = v10 >= v6 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      v12 = v9 & 0x80;
      v8 = v12 == 0;
      v13 = v12 >> 4;
      if (v8)
      {
        result = a3;
      }

      a3 = *(a3 + v13);
    }

    while (a3);
  }

  return result;
}

EQKit::Environment::Version *EQKit::Environment::Version::Version(EQKit::Environment::Version *this, NSNumber *a2)
{
  if (a2)
  {
    v3 = [(NSNumber *)a2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  *this = v3;
  return this;
}

EQKit::Blahtex::Config *EQKit::Blahtex::Config::Config(EQKit::Blahtex::Config *this, const EQKit::Config::Operator::Dictionary *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN5EQKit7Blahtex6ConfigC2ERKNS_6Config8Operator10DictionaryE_block_invoke;
  v4[3] = &__block_descriptor_40_e79_v28__0r_v8i16r__Entry__EQKitLength_id__EQKitLength_id_Sd___b1b1b1b1b1b1b1b1__20l;
  v4[4] = this;
  EQKit::Config::Operator::Dictionary::enumerateEntries(a2, v4);
  return this;
}

void sub_25824D140(_Unwind_Exception *a1)
{
  std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table(v2);
  std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void ___ZN5EQKit7Blahtex6ConfigC2ERKNS_6Config8Operator10DictionaryE_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [v7 initWithUTF8String:v8];
  v10 = EQKitUtilUTF32CharFromString(v9);
  if (v10)
  {
    v11 = v10;
    v12 = *(a4 + 48);
    if ((v12 & 2) != 0)
    {
      v14 = v10;
      std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__emplace_unique_key_args<wchar_t,wchar_t>(v6 + 5, &v14);
      v12 = *(a4 + 48);
    }

    if (v12)
    {
      v13 = v11;
      std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__emplace_unique_key_args<wchar_t,wchar_t>(v6, &v13);
    }
  }
}

uint64_t EQKit::Blahtex::Config::updateOptions(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = result;
  *(a2 + 16) = result + 40;
  return result;
}

uint64_t std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__emplace_unique_key_args<wchar_t,wchar_t>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t _laTeXPatterns(void)
{
  result = _laTeXPatterns(void)::sLaTeXPatterns;
  if (!_laTeXPatterns(void)::sLaTeXPatterns)
  {
    v1 = objc_alloc(MEMORY[0x277CBEA60]);
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"$", 0}];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"$$", 0}];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\(", @"\\)", 0}];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\[", @"\\]", 0}];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\begin{math}", @"\\end{math}", 0}];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\begin{displaymath}", @"\\end{displaymath}", 0}];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\begin{equation}", @"\\end{equation}", 0}];
    result = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, v8, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", @"\\begin{equation*}", @"\\end{equation*}", 0), 0}];
    _laTeXPatterns(void)::sLaTeXPatterns = result;
  }

  return result;
}

void _convertLaTeXStringToMathML(EQKitEnvironment *a1, NSString *a2, NSError **a3)
{
  v5 = objc_opt_class();
  v6 = EQKitUtilDynamicCast(v5, a1);
  v7 = _laTeXInlinePatterns();
  isLaTeXStringUsingPatterns = _isLaTeXStringUsingPatterns(a2, v7);
  v9 = _stripLaTeXPatterns(a2);
  v20 = 0;
  v17 = 0;
  v21 = 1;
  v22 = 1;
  v23 = 256;
  v25 = 0;
  *v26 = 0u;
  *v27 = 0u;
  v28 = 0u;
  memset(__p, 0, 26);
  v18 = 1;
  v19 = isLaTeXStringUsingPatterns ^ 1;
  v24 = [(EQKitEnvironment *)a1 sourceAttribution];
  EQKit::Blahtex::Config::updateOptions([v6 blahtexConfig], &v18);
  v10 = [(NSString *)v9 dataUsingEncoding:2617245952];
  v11 = [(NSData *)v10 bytes];
  v12 = [(NSData *)v10 length];
  if (v12 < 0xFFFFFFFFFFFFFFE0)
  {
    v13 = v12 >> 2;
    if (v12 < 0x14)
    {
      v16 = v12 >> 2;
      if (v12 >= 4)
      {
        memmove(&__dst, v11, v12 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *(&__dst + v13) = 0;
      blahtex::Interface::ProcessInput();
    }

    if ((v13 | 1) == 5)
    {
      v14 = 7;
    }

    else
    {
      v14 = (v13 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__dst, v14);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_25824E27C(void *a1, int a2)
{
  blahtex::Interface::~Interface(&v6);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    if (v2 && !*v2)
    {
      *v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"EQKitErrorDomain" code:7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "localizedStringForKey:value:table:", @"Converting from LaTeX to MathML resulted in a syntax error: %@", &stru_28696C228, 0), _stringFromWideString(v5)), *MEMORY[0x277CCA450], 0)}];
    }

    __cxa_end_catch();
    JUMPOUT(0x25824E25CLL);
  }

  JUMPOUT(0x25824E36CLL);
}

NSString *_stripLaTeXPatterns(NSString *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = -[NSString stringByTrimmingCharactersInSet:](a1, "stringByTrimmingCharactersInSet:", [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet]);
  v2 = _laTeXPatterns();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        Pattern = _findPattern(*(*(&v10 + 1) + 8 * i), v1, 1);
        if (Pattern != 0x7FFFFFFFFFFFFFFFLL)
        {
          return [(NSString *)v1 substringWithRange:Pattern, v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v1;
}

uint64_t NoExternalEntityLoader(const char *a1, const char *a2, _xmlParserCtxt *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = "<NULL>";
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = "<NULL>";
    }

    if (a2)
    {
      v5 = a2;
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&dword_258246000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Refusing to load exernal entity with URL %s, ID %s", &v8, 0x16u);
  }

  return 0;
}

uint64_t _findPattern(NSArray *a1, NSString *a2, int a3)
{
  v6 = [(NSString *)a2 length];
  if ([(NSArray *)a1 count]!= 4)
  {
    v17 = [(NSArray *)a1 objectAtIndex:0];
    v18 = [(NSArray *)a1 objectAtIndex:1];
    goto LABEL_16;
  }

  v7 = [(NSString *)a2 rangeOfString:[(NSArray *)a1 objectAtIndex:1] options:0 range:0, v6];
  if (!v8)
  {
    v17 = 0;
    v19 = 0;
LABEL_25:
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_26;
  }

  v9 = v7;
  v10 = [(NSArray *)a1 objectAtIndex:0];
  v11 = [(NSString *)a2 rangeOfString:v10 options:0 range:0, v9];
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 && v11 < v9)
  {
    v13 = 0;
    do
    {
      if (v9 > v11 + v12)
      {
        v13 = v9 - (v11 + v12);
        v14 = v11 + v12;
      }

      v11 = [(NSString *)a2 rangeOfString:v10 options:0 range:v11 + v12, v9 - (v11 + v12)];
      if (v12)
      {
        v15 = v11 >= v9;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
  }

  if (!v13)
  {
    v17 = 0;
    v19 = 0;
    goto LABEL_25;
  }

  v16 = [(NSString *)a2 substringWithRange:v14, v13];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@%@", -[NSArray objectAtIndex:](a1, "objectAtIndex:", 0), v16, -[NSArray objectAtIndex:](a1, "objectAtIndex:", 1)];
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@%@", -[NSArray objectAtIndex:](a1, "objectAtIndex:", 2), v16, -[NSArray objectAtIndex:](a1, "objectAtIndex:", 3)];
LABEL_16:
  v19 = v18;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17)
  {
    if (v18)
    {
      v21 = [(NSString *)a2 rangeOfString:v17 options:0 range:0, v6];
      if (v22)
      {
        v23 = v21;
        v24 = v21 + v22;
        v25 = [(NSString *)a2 rangeOfString:v19 options:4 range:v21 + v22, v6 - (v21 + v22)];
        if (v25 > v23)
        {
          if (v26)
          {
            v27 = v25 + v26;
            [(NSString *)a2 rangeOfString:v17 options:0 range:v25 + v26, v6 - (v25 + v26)];
            if (!v28)
            {
              if (v23)
              {
                v30 = 0;
              }

              else
              {
                v30 = v6 == v27;
              }

              v31 = !v30;
              if ((a3 & v31) == 0)
              {
                v20 = v24;
              }
            }
          }
        }
      }
    }
  }

LABEL_26:

  return v20;
}

uint64_t _isLaTeXStringUsingPatterns(NSString *a1, NSArray *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = -[NSString stringByTrimmingCharactersInSet:](a1, "stringByTrimmingCharactersInSet:", [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(a2);
    }

    v8 = 1;
    if (_findPattern(*(*(&v10 + 1) + 8 * v7), v3, 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSArray *)a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t _laTeXInlinePatterns(void)
{
  result = _laTeXInlinePatterns(void)::slaTeXInlinePatterns;
  if (!_laTeXInlinePatterns(void)::slaTeXInlinePatterns)
  {
    v1 = objc_alloc(MEMORY[0x277CBEA60]);
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"$", 0}];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"\\(", @"\\)", 0}];
    result = [v1 initWithObjects:{v2, v3, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", @"\\begin{math}", @"\\end{math}", 0), 0}];
    _laTeXInlinePatterns(void)::slaTeXInlinePatterns = result;
  }

  return result;
}

id _stringFromWideString(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v2 length:4 * v1 encoding:2617245952];

  return v3;
}

uint64_t **std::unique_ptr<blahtex::Manager>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 6);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    if (*(v2 + 47) < 0)
    {
      operator delete(v2[3]);
    }

    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x259C7CB70](v2, 0x1032C408BA9FD94);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void blahtex::Interface::~Interface(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  std::unique_ptr<blahtex::Manager>::~unique_ptr[abi:ne200100](this);
}

uint64_t EQKitUtilDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

CGColorSpaceRef __EQKitUtilGetDeviceColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  EQKitUtilGetDeviceColorSpace::sDeviceColor = result;
  return result;
}

uint64_t EQKitUtilGetFakeContext()
{
  if (EQKitUtilGetFakeContext::onceToken != -1)
  {
    EQKitUtilGetFakeContext_cold_1();
  }

  return EQKitUtilGetFakeContext::sFakeContext;
}

CGContextRef __EQKitUtilGetFakeContext_block_invoke()
{
  if (EQKitUtilGetDeviceColorSpace::onceToken != -1)
  {
    __EQKitUtilGetFakeContext_block_invoke_cold_1();
  }

  result = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, EQKitUtilGetDeviceColorSpace::sDeviceColor, 5u);
  EQKitUtilGetFakeContext::sFakeContext = result;
  return result;
}

uint64_t EQKitUtilUTF32CharFromString(void *a1)
{
  v2 = [a1 length];
  if ((v2 - 1) > 1)
  {
    return 0;
  }

  v3 = v2;
  [a1 getCharacters:&v5 range:{0, v2}];
  result = v5;
  if (v3 == 1)
  {
    return result;
  }

  if ((v5 & 0xFC00) != 0xD800)
  {
    return 0;
  }

  if ((v6 & 0xFC00) == 0xDC00)
  {
    return v6 + (v5 << 10) - 56613888;
  }

  return 0;
}

uint64_t EQKitUtilNewStringFromUTF32Char(int a1)
{
  if ((a1 - 0x10000) >> 20)
  {
    v2 = 1;
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v4[1] = a1 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  v4[0] = v1;
  return [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v4 length:v2];
}

BOOL EQKitLength::isNamedspaceString(uint64_t a1, uint64_t *a2)
{
  LengthMap();
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v6[0] = v4;
  v6[1] = v3;
  return std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(LengthMap(void)::sMap, v6) != &LengthMap(void)::sMap[1];
}

void LengthMap(void)
{
  {
    {
      std::map<std::string_view const,float>::map[abi:ne200100]<std::pair<std::string_view const,float> const*>(LengthMap(void)::sMap, &sData, &__block_descriptor_40_e35_B24__0r__Key_____CFString_SdI_8_v16l);
    }
  }
}

double EQKitLength::EQKitLengthFromMathMLString@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  LengthMap();
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(LengthMap(void)::sMap, v8);
  if (v6 != &LengthMap(void)::sMap[1])
  {
    result = *(v6 + 48);
    *a2 = 3;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t EQKitLength::EQKitLength(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v6 = [v5 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  v7 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v6];
  v25 = 0.0;
  [v7 scanFloat:&v25];
  *(a1 + 8) = v25;
  v8 = [objc_msgSend(v7 "string")];
  v9 = [objc_msgSend(v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "UTF8String"}];
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v24 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;

  if ((v24 & 0x80000000) == 0)
  {
    if (v24 != 1)
    {
      if (v24 != 2)
      {
        if (v24 == 4 && __dst == 1701606770)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      if (__dst == 29808)
      {
LABEL_50:
        v13 = 1;
        goto LABEL_51;
      }

      if (__dst != 30821)
      {
        if (__dst == 28005)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }

LABEL_38:
      v13 = 2;
      goto LABEL_51;
    }

    if (__dst != 37)
    {
      goto LABEL_42;
    }

LABEL_36:
    v13 = 4;
LABEL_51:
    *a1 = v13;
    goto LABEL_52;
  }

  if (v23 == 1 && *__dst == 37)
  {
    goto LABEL_36;
  }

  if (v23 == 2 && *__dst == 29808)
  {
    goto LABEL_50;
  }

  if (v23 == 2 && *__dst == 30821)
  {
    goto LABEL_38;
  }

  if (v23 != 2)
  {
    goto LABEL_32;
  }

  if (*__dst == 28005)
  {
LABEL_59:
    v13 = 3;
    goto LABEL_51;
  }

  if (v24 < 0)
  {
LABEL_32:
    if (v23 != 4)
    {
      goto LABEL_39;
    }

    if (*__dst == 1701606770)
    {
LABEL_37:
      v13 = 5;
      goto LABEL_51;
    }

    if (v24 < 0)
    {
LABEL_39:
      if (v23 != 2)
      {
        goto LABEL_42;
      }

      p_dst = __dst;
      goto LABEL_41;
    }
  }

  if (v24 != 2)
  {
    goto LABEL_42;
  }

LABEL_34:
  p_dst = &__dst;
LABEL_41:
  if (*p_dst == 28003)
  {
    v14 = *(a1 + 8);
    goto LABEL_44;
  }

LABEL_42:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "mm"))
  {
    v14 = *(a1 + 8) / 10.0;
LABEL_44:
    v15 = 2.54;
LABEL_45:
    v16 = v14 / v15;
LABEL_48:
    v17 = 72.0;
LABEL_49:
    *(a1 + 8) = v16 * v17;
    goto LABEL_50;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "in"))
  {
    v16 = *(a1 + 8);
    goto LABEL_48;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "px"))
  {
    v14 = *(a1 + 8);
    v15 = 96.0;
    goto LABEL_45;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "pc"))
  {
    v16 = *(a1 + 8);
    v17 = 12.0;
    goto LABEL_49;
  }

  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "ch") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "rem") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "vw") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "vh"))
  {
    v19 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, "vmin");
    if (!v19)
    {
      if (EQKitLength::isNamedspaceString(v19, &__dst))
      {
        EQKitLength::EQKitLengthFromMathMLString(&__dst, &v20);
        *a1 = v20;
        *(a1 + 8) = v21;
      }

      else
      {
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, ""))
        {
          v13 = 6;
          goto LABEL_51;
        }

        *a1 = 0;
      }
    }
  }

LABEL_52:
  if (v24 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_2582501D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

double EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(double *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  v4 = *a1;
  if (v4 > 4)
  {
    if (v4 == 6)
    {
      return v3 * a3;
    }

    if (v4 != 5)
    {
      return v3;
    }

LABEL_7:
    a3 = (*(*a2 + 16))(a2, v4);
    return v3 * a3;
  }

  if ((v4 - 2) < 2)
  {
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    return v3 * a3 / 100.0;
  }

  return v3;
}

double EQKitLength::resolveToAbsoluteWithSizeAndRule(EQKitLength *this, double a2, double a3)
{
  result = *(this + 1);
  v5 = *this;
  if (*this <= 3)
  {
    if (v5 == 1)
    {
      return result;
    }

    if (v5 == 3)
    {
      return result * a2;
    }

    return 0.0;
  }

  if (v5 == 4)
  {
    return result * a2 / 100.0;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      return result * a2;
    }

    return 0.0;
  }

  return result * a3;
}

uint64_t EQKitLength::lengthVectorFromString(std::string *__str, uint64_t a2)
{
  v4 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v6 = 1;
  while (v4 < size)
  {
    v7 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      v8 = __str;
    }

    else
    {
      v8 = __str->__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v9 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __str->__r_.__value_.__l.__size_;
    }

    if (v9 > v4)
    {
      v10 = v8 + v9;
      v11 = v8 + v4;
LABEL_14:
      v12 = 0;
      while (*v11 != asc_2582F4C67[v12])
      {
        if (++v12 == 3)
        {
          if (++v11 != v10)
          {
            goto LABEL_14;
          }

          goto LABEL_21;
        }
      }

      if (v11 != v10)
      {
        v13 = v11 - v8;
        if (v11 - v8 != -1)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v13 = size;
LABEL_22:
    std::string::basic_string(&v33, __str, v4, v13 - v4, &v31);
    EQKitLength::EQKitLength(&v31, &v33, 0);
    v14 = v31;
    if (v31)
    {
      v15 = v35;
      if (v35 >= v36)
      {
        v16 = std::vector<EQKitLength>::__emplace_back_slow_path<EQKitLength const&>(&__p, &v31);
      }

      else
      {
        *v35 = v31;
        *(v15 + 1) = v32;
        v16 = (v15 + 4);
      }

      v35 = v16;
      if (v13 >= size)
      {
        goto LABEL_42;
      }

      v17 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      v18 = v17 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v19 = v17 >= 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
      if (v19 <= v13)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v20 = v18->__r_.__value_.__s.__data_[v13];
        v21 = v20 > 0x20;
        v22 = (1 << v20) & 0x100000600;
        if (v21 || v22 == 0)
        {
          break;
        }

        if (v19 == ++v13)
        {
          goto LABEL_40;
        }
      }

      if (v13 == -1)
      {
LABEL_40:
        v4 = size;
      }

      else
      {
LABEL_42:
        v4 = v13;
      }
    }

    else
    {
      v6 = 0;
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if (!v14)
      {
        break;
      }
    }

    else if (!v14)
    {
      break;
    }
  }

  v24 = __p;
  if (v6)
  {
    v25 = v35;
    if (__p != v35)
    {
      v26 = *a2;
      *a2 = __p;
      *(a2 + 8) = v25;
      v27 = v36;
      v28 = *(a2 + 16);
      __p = v26;
      v36 = v28;
      *(a2 + 16) = v27;
      v29 = 1;
      v24 = v26;
      if (!v26)
      {
        return v29;
      }

      goto LABEL_52;
    }
  }

  v29 = 0;
  if (__p)
  {
LABEL_52:
    v35 = v24;
    operator delete(v24);
  }

  return v29;
}

void sub_2582505C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string_view const,float>::map[abi:ne200100]<std::pair<std::string_view const,float> const*>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__emplace_hint_unique_key_args<std::string_view,std::pair<std::string_view const,float> const&>(a1, v4, v6);
      v6 += 24;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__emplace_hint_unique_key_args<std::string_view,std::pair<std::string_view const,float> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__find_equal<std::string_view>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__find_equal<std::string_view>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*a5, *(a5 + 8), a2[4], a2[5]) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(v12[4], v12[5], *a5, *(a5 + 8)) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a2[4], a2[5], *a5, *(a5 + 8)) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*a5, *(a5 + 8), v15[4], v15[5]) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__find_equal<std::string_view>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*a3, *(a3 + 8), v4[4], v4[5]) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(v7[4], v7[5], *a3, *(a3 + 8)) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279871E60, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::vector<EQKitLength>::__emplace_back_slow_path<EQKitLength const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  v13 = 16 * v2 + 16;
  v14 = 0;
  std::vector<EQKitLength>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_258250AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EQKitLength>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 16;
      v6 += 16;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__lower_bound<std::string_view>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*a2, *(a2 + 8), *(v5 + 32), *(v5 + 40)) & 0x80) != 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__lower_bound<std::string_view>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 32), *(v5 + 40), *a2, *(a2 + 8));
      if ((v7 & 0x80u) == 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v7 >> 4) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t EQKitPseudoUnitLength::EQKitPseudoUnitLength(uint64_t a1, uint64_t *a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [v4 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v5];
  if ([v6 scanString:@"+" intoString:0])
  {
    v7 = 2;
  }

  else if ([v6 scanString:@"-" intoString:0])
  {
    v7 = 3;
  }

  else
  {
    if ([v6 isAtEnd])
    {
      *(a1 + 16) = 0;
      goto LABEL_12;
    }

    v7 = 1;
  }

  *(a1 + 16) = v7;
LABEL_12:
  v8 = [objc_msgSend(v6 "string")];
  std::string::basic_string[abi:ne200100]<0>(&v46, [objc_msgSend(v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "UTF8String"}]);

  std::string::basic_string[abi:ne200100]<0>(v44, "height");
  std::string::basic_string[abi:ne200100]<0>(v42, "depth");
  std::string::basic_string[abi:ne200100]<0>(__p, "width");
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v46;
  }

  else
  {
    v9 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if ((v45 & 0x80u) == 0)
  {
    v11 = v44;
  }

  else
  {
    v11 = v44[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v12 = v45;
  }

  else
  {
    v12 = v44[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_44:
    v17 = 1;
    goto LABEL_61;
  }

  v13 = v9 + size;
  if (size >= v12)
  {
    v18 = *v11;
    v19 = size;
    v20 = v9;
    do
    {
      v21 = v19 - v12;
      if (v21 == -1)
      {
        break;
      }

      v22 = memchr(v20, v18, v21 + 1);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v11, v12))
      {
        if (v23 != v13)
        {
          v16 = v23 - v9;
          if (v23 - v9 != -1)
          {
            goto LABEL_44;
          }
        }

        break;
      }

      v20 = (v23 + 1);
      v19 = v13 - (v23 + 1);
    }

    while (v19 >= v12);
  }

  if ((v43 & 0x80u) == 0)
  {
    v14 = v42;
  }

  else
  {
    v14 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v12 = v43;
  }

  else
  {
    v12 = v42[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_52:
    v17 = 2;
    goto LABEL_61;
  }

  if (size >= v12)
  {
    v24 = *v14;
    v25 = size;
    v26 = v9;
    do
    {
      v27 = v25 - v12;
      if (v27 == -1)
      {
        break;
      }

      v28 = memchr(v26, v24, v27 + 1);
      if (!v28)
      {
        break;
      }

      v29 = v28;
      if (!memcmp(v28, v14, v12))
      {
        if (v29 != v13)
        {
          v16 = v29 - v9;
          if (v29 - v9 != -1)
          {
            goto LABEL_52;
          }
        }

        break;
      }

      v26 = (v29 + 1);
      v25 = v13 - (v29 + 1);
    }

    while (v25 >= v12);
  }

  if ((v41 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v12 = v41;
  }

  else
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = 0;
LABEL_60:
    v17 = 3;
LABEL_61:
    *(a1 + 20) = v17;
    std::string::erase(&v46, v16, v12);
    goto LABEL_62;
  }

  if (size >= v12)
  {
    v34 = *v15;
    v35 = v9;
    do
    {
      if (size - v12 == -1)
      {
        break;
      }

      v36 = memchr(v35, v34, size - v12 + 1);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (!memcmp(v36, v15, v12))
      {
        if (v37 != v13)
        {
          v16 = v37 - v9;
          if (v37 - v9 != -1)
          {
            goto LABEL_60;
          }
        }

        break;
      }

      v35 = (v37 + 1);
      size = v13 - (v37 + 1);
    }

    while (size >= v12);
  }

  *(a1 + 20) = 0;
LABEL_62:
  EQKitLength::EQKitLength(&v38, &v46, 1);
  v30 = v38;
  *a1 = v38;
  *(a1 + 8) = v39;
  v31 = v30 & 0xFFFFFFFD;
  if (*(a1 + 20))
  {
    v32 = v31 == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_258251074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

double EQKitPseudoUnitLength::adjustedPseudoLength(EQKitPseudoUnitLength *this, double a2, double a3, double a4, double a5)
{
  v5 = *(this + 5);
  switch(v5)
  {
    case 3:
      v6 = *(this + 1) * a5;
      break;
    case 2:
      v6 = *(this + 1) * a4;
      break;
    case 1:
      v6 = *(this + 1) * a3;
      break;
    default:
      return a2;
  }

  if (*this == 4)
  {
    v6 = v6 / 100.0;
  }

  v7 = *(this + 4);
  if (v7 != 1)
  {
    if (v7 == 3)
    {
      return a2 - v6;
    }

    if (v7 == 2)
    {
      return v6 + a2;
    }

    return a2;
  }

  return v6;
}

double EQKitPseudoUnitLength::resolveToAbsoluteLength(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a3;
  v11 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(a1, a2, a3);
  if (*(a1 + 20))
  {

    return EQKitPseudoUnitLength::adjustedPseudoLength(a1, v9, a4, a5, a6);
  }

  else
  {
    v13 = *(a1 + 16);
    switch(v13)
    {
      case 1:
        return v11;
      case 3:
        return v9 - v11;
      case 2:
        return v11 + v9;
    }

    return v9;
  }
}

double EQKitPath::QuantizationConfig::QuantizationConfig(EQKitPath::QuantizationConfig *this)
{
  *this = 4;
  result = 0.25;
  *(this + 8) = xmmword_2582D0050;
  *(this + 3) = 0x3FD0000000000000;
  return result;
}

EQKitPath::QuantizationConfig *EQKitPath::QuantizationConfig::QuantizationConfig(EQKitPath::QuantizationConfig *this, NSDictionary *a2)
{
  *this = 4;
  *(this + 8) = xmmword_2582D0050;
  *(this + 3) = 0x3FD0000000000000;
  v4 = objc_opt_class();
  v5 = EQKitUtilDynamicCast(v4, [(NSDictionary *)a2 objectForKey:@"bucketsPerUnit"]);
  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *this = v7;
    *(this + 1) = 1.0 / v7;
  }

  v8 = objc_opt_class();
  v9 = EQKitUtilDynamicCast(v8, [(NSDictionary *)a2 objectForKey:@"thresholdCurveBoundsMinMax"]);
  if (v9)
  {
    [v9 floatValue];
    *(this + 2) = v10;
  }

  v11 = objc_opt_class();
  v12 = EQKitUtilDynamicCast(v11, [(NSDictionary *)a2 objectForKey:@"thresholdCurveControlPointDistance"]);
  if (v12)
  {
    [v12 floatValue];
    *(this + 3) = v13;
  }

  return this;
}

uint64_t EQKitPath::Stem::Stem(uint64_t result, int a2, uint64_t a3, __int128 *a4)
{
  *result = 0;
  *(result + 56) = a2;
  if (a4)
  {
    v4 = *a4;
    *(result + 24) = a4[1];
    *(result + 8) = v4;
    v6 = *(result + 8);
    v5 = *(result + 16);
    v8 = *(result + 24);
    v7 = *(result + 32);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v5 = 0;
    v6 = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  v9 = *(a3 + 8);
  v10 = (*(a3 + 16) - v9) >> 4;
  if (v10 <= v6)
  {
    v11 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = (v9 + 16 * v6);
  }

  v12 = *v11;
  v13 = v11[1];
  if (v10 <= v5)
  {
    v14 = MEMORY[0x277CBF348];
  }

  else
  {
    v14 = (v9 + 16 * v5);
  }

  v15 = v14[1];
  v16 = *v14 - v12;
  v17 = v15 - v13;
  if (v10 <= v8)
  {
    v18 = MEMORY[0x277CBF348];
  }

  else
  {
    v18 = (v9 + 16 * v8);
  }

  v19 = *v18;
  v20 = v18[1];
  if (v10 <= v7)
  {
    v21 = MEMORY[0x277CBF348];
  }

  else
  {
    v21 = (v9 + 16 * v7);
  }

  v22 = v21[1];
  v23 = *v21 - v19;
  v24 = v22 - v20;
  if ((a2 | 2) == 3)
  {
    v25 = fabs(v17);
    v26 = fabs(v24);
    if (v25 >= v26)
    {
      v25 = v26;
    }

    v27 = vabdd_f64(*v21, v12);
    v28 = vabdd_f64(v19, *v14);
    if (v27 < v28)
    {
      v27 = v28;
    }

    *(result + 40) = v25;
    *(result + 48) = v27;
    if (v17 != 0.0 && v24 != 0.0)
    {
      v29 = v16 / v17;
      v30 = v23 / v24;
      goto LABEL_31;
    }
  }

  else
  {
    v31 = fabs(v16);
    v32 = fabs(v23);
    if (v31 >= v32)
    {
      v31 = v32;
    }

    v33 = vabdd_f64(v22, v13);
    v34 = vabdd_f64(v20, v15);
    if (v33 < v34)
    {
      v33 = v34;
    }

    *(result + 40) = v31;
    *(result + 48) = v33;
    if (v16 != 0.0 && v23 != 0.0)
    {
      v29 = v17 / v16;
      v30 = v24 / v23;
LABEL_31:
      if (vabdd_f64(v29, v30) < 0.00100000005)
      {
        *result = 1;
      }
    }
  }

  return result;
}

double EQKitPath::vector(EQKitPath *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  v4 = (*(this + 2) - v3) >> 4;
  v5 = (v3 + 16 * a2);
  if (v4 <= a2)
  {
    v5 = MEMORY[0x277CBF348];
  }

  v6 = (v3 + 16 * a3);
  if (v4 <= a3)
  {
    v7 = MEMORY[0x277CBF348];
  }

  else
  {
    v7 = v6;
  }

  *&result = *&vsubq_f64(*v7, *v5);
  return result;
}

__n128 EQKitPath::Stem::Stem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  return result;
}

uint64_t EQKitPath::Stem::adjustStemPoints(uint64_t result, uint64_t a2, void *a3, double a4)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  v6 = (*a3 + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  v9 = (*a3 + 16 * *(result + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(a2 + 8);
  v13 = (*(a2 + 16) - v12) >> 4;
  if (v13 <= v5)
  {
    v14 = MEMORY[0x277CBF348];
  }

  else
  {
    v14 = (v12 + 16 * v5);
  }

  if (v13 <= v4)
  {
    v15 = MEMORY[0x277CBF348];
  }

  else
  {
    v15 = (v12 + 16 * v4);
  }

  v16 = *v15 - *v14;
  v17 = v15[1] - v14[1];
  v18 = *(result + 56);
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v7 = v7 - a4;
        v10 = v10 - a4;
LABEL_14:
        v19 = v16 * a4 / v17;
        v8 = v8 + v19;
        v11 = v11 + v19;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v8 = v8 - a4;
    v11 = v11 - a4;
LABEL_17:
    v20 = v17 * a4 / v16;
    v7 = v7 + v20;
    v10 = v10 + v20;
    goto LABEL_18;
  }

  if (v18 == 2)
  {
    v8 = v8 + a4;
    v11 = v11 + a4;
    goto LABEL_17;
  }

  if (v18 == 3)
  {
    v7 = v7 + a4;
    v10 = v10 + a4;
    goto LABEL_14;
  }

LABEL_18:
  *v6 = v8;
  v6[1] = v7;
  *v9 = v11;
  v9[1] = v10;
  return result;
}

void EQKitPath::extractorFunction(EQKitPath *this, void *a2, const CGPathElement *a3)
{
  if (this)
  {
    if (a2)
    {
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *a2;
        v7 = 2;
        v8 = 3;
        if (*a2 != 3)
        {
          v8 = 0;
        }

        v9 = v6 == 2 || *a2 == 3;
        if (v6 != 2)
        {
          v7 = v8;
        }

        v10 = v6 < 2 || v9;
        if (v6 >= 2)
        {
          v11 = v7;
        }

        else
        {
          v11 = 1;
        }

        LODWORD(v25) = *a2;
        *(&v25 + 1) = (*(v5 + 16) - *(v5 + 8)) >> 4;
        if (a2[1] && v10)
        {
          v12 = 0;
          if (v11 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11;
          }

          v14 = 16 * v13;
          do
          {
            std::vector<CGPoint>::push_back[abi:ne200100](v5 + 8, (a2[1] + v12));
            v12 += 16;
          }

          while (v14 != v12);
        }

        v15 = *(v5 + 32);
        v16 = *(v5 + 40);
        v24 = (v16 - v15) >> 4;
        if (*a2 == 4 && v16 != v15 && ((v16 - v15) >> 4) > *(*(v5 + 64) - 8) && *(v16 - 16) == 1)
        {
          v18 = vmovn_s64(vceqq_f64(*(this + 24), *(*(v5 + 8) + 16 * *(v16 - 8))));
          if (v18.i32[0] & v18.i32[1])
          {
            *(v5 + 16) -= 16;
            v19 = v16 - 16;
            *(v5 + 40) = v19;
            v24 = (v19 - v15) >> 4;
          }
        }

        std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](v5 + 32, &v25);
        v20 = a2[1];
        v21 = v20 != 0;
        v22 = (v20 + 16 * v11 - 16);
        if ((v10 & v21) == 0)
        {
          v22 = MEMORY[0x277CBF348];
        }

        v23 = *v22;
        if (*a2)
        {
          if (*a2 == 4)
          {
            *(this + 16) = 0;
LABEL_39:
            *this += v11;
            return;
          }

          if (*(this + 16))
          {
            goto LABEL_39;
          }
        }

        std::vector<unsigned long>::push_back[abi:ne200100]((v5 + 56), &v24);
        *(this + 16) = 1;
        *(this + 24) = v23;
        goto LABEL_39;
      }
    }
  }
}

void sub_2582517D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x258251744);
}

void sub_2582517E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2582516B0);
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void EQKitPath::EQKitPath(EQKitPath *this, CGPathRef path)
{
  *(this + 8) = 0u;
  *(this + 120) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 65) = 0u;
  if (path)
  {
    MutableCopy = CGPathCreateMutableCopy(path);
  }

  else
  {
    MutableCopy = 0;
  }

  *this = MutableCopy;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(this + 8) = v5;
  *(this + 9) = v5;
}

void sub_258251AEC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  EQKitPath::EQKitPath(v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

void EQKitPath::EQKitPath(EQKitPath *this, const __CTFont *a2, int a3)
{
  *(this + 120) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  if (a2)
  {
    *glyphs = -1;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, 1.0, -1.0);
    if ((a3 - 0x10000) >> 20)
    {
      v7 = 1;
      LOWORD(v6) = a3;
    }

    else
    {
      v6 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v7 = 2;
    }

    characters[0] = v6;
    if (CTFontGetGlyphsForCharacters(a2, characters, glyphs, v7))
    {
      *this = CTFontCreatePathForGlyph(a2, glyphs[0], &v14);
    }

    else
    {
      v8 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], characters, v7);
      v9 = v8;
      if (v8)
      {
        v17.length = CFStringGetLength(v8);
        v17.location = 0;
        v10 = CTFontCreateForString(a2, v9, v17);
        v11 = v10;
        if (v10)
        {
          CTFontGetGlyphsForCharacters(v10, characters, glyphs, v7);
          *this = CTFontCreatePathForGlyph(v11, glyphs[0], &v14);
          CFRelease(v11);
        }

        CFRelease(v9);
      }
    }
  }

  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *(this + 8) = v13;
  *(this + 9) = v13;
}

void sub_258251C80(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void EQKitPath::~EQKitPath(CGPathRef *this)
{
  CGPathRelease(*this);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  v3 = this[4];
  if (v3)
  {
    this[5] = v3;
    operator delete(v3);
  }

  v4 = this[1];
  if (v4)
  {
    this[2] = v4;
    operator delete(v4);
  }
}

uint64_t EQKitPath::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    MutableCopy = *a2;
    if (*a2)
    {
      MutableCopy = CGPathCreateMutableCopy(MutableCopy);
    }

    *a1 = MutableCopy;
    std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
    std::vector<EQKitPath::PathElement>::__assign_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    *(a1 + 80) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
    *(a1 + 120) = *(a2 + 120);
    v7 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v7;
  }

  return a1;
}

const __CTFont *EQKitPath::newPathFromCharacterWithFont(EQKitPath *this, CTFontRef font, const __CTFont *a3)
{
  v3 = font;
  characters = this;
  glyphs = -1;
  if (font)
  {
    if (CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1))
    {
      memset(&v5, 0, sizeof(v5));
      CGAffineTransformMakeScale(&v5, 1.0, -1.0);
      if (CTFontCreatePathForGlyph(v3, glyphs, &v5))
      {
        operator new();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t EQKitPath::newPathFromGlyphWithFont(EQKitPath *this, const __CTFont *a2, const __CTFont *a3)
{
  v4 = this;
  memset(&v6, 0, sizeof(v6));
  CGAffineTransformMakeScale(&v6, 1.0, -1.0);
  if (CTFontCreatePathForGlyph(a2, v4, &v6))
  {
    operator new();
  }

  return 0;
}

void EQKitPath::extractPath(EQKitPath *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
    info[0] = 0;
    info[1] = this;
    v2 = 0;
    CGPathApply(*this, info, EQKitPath::extractorFunction);
  }
}

CGFloat *EQKitPath::computePathBounds(CGFloat *this)
{
  v1 = this;
  *(this + 120) = 1;
  PathBoundingBox = CGPathGetPathBoundingBox(*this);
  v1[11] = PathBoundingBox.origin.x;
  v1[12] = PathBoundingBox.origin.y;
  v1 += 11;
  v1[2] = PathBoundingBox.size.width;
  v1[3] = PathBoundingBox.size.height;
  return v1;
}

BOOL EQKitPath::elementMinMax(EQKitPath *this, unint64_t a2, CGPoint *a3, CGPoint *a4)
{
  EQKitPath::extractPath(this);
  v8 = *MEMORY[0x277CBF348];
  v9 = *(this + 4);
  if (a2 >= (*(this + 5) - v9) >> 4 || ((v10 = (v9 + 16 * a2), v11 = *v10, v32 = *MEMORY[0x277CBF348], v11 > 3) ? (v12 = 0) : (v12 = qword_2582D00A8[v11]), (EQKitPath::subpathContainingElement(this, a2, &v33), v33 >= a2) ? (v13 = v34 + v33) : (v13 = a2), (v14 = v13 - 1, v15 = v13 == v34 + v33, v33 >= v14) ? (v16 = v34 + v33) : (v16 = v14), (v17 = v16 - 1, (v35 & v15) == 0) ? (v18 = v14) : (v18 = v17), v18 != 0x7FFFFFFFFFFFFFFFLL && (v19 = EQKitPath::endPointIndexForElement(this, v18), v19 != 0x7FFFFFFFFFFFFFFFLL) ? (v8 = *(*(this + 1) + 16 * v19), v20 = 1) : (v20 = 0, v8 = v32), v21 = *(v10 + 1), v21 >= v21 + v12))
  {
    result = 0;
    v25 = v8;
  }

  else
  {
    v22 = (*(this + 1) + 16 * v21);
    v23 = v12;
    v24 = v20;
    v25 = v8;
    do
    {
      v26 = *v22;
      if (v24)
      {
        v8 = vbslq_s8(vcgtq_f64(v8, v26), v26, v8);
        v27 = vmovn_s64(vcgtq_f64(v26, v25));
        v28 = v27.i8[4];
        if (v27.i8[0])
        {
          v29 = v22->f64[0];
        }

        else
        {
          v29 = v25.f64[0];
        }

        v25.f64[0] = v29;
        v26.f64[0] = v29;
        if (v28)
        {
          v30 = -1;
        }

        else
        {
          v30 = 0;
        }

        v25 = vbslq_s8(vdupq_n_s64(v30), v26, v25);
      }

      else
      {
        v8 = *v22;
        v25 = *v22;
      }

      ++v24;
      ++v22;
      --v23;
    }

    while (v23);
    result = (v12 + v20) > 1;
  }

  *a3 = v8;
  *a4 = v25;
  return result;
}

void EQKitPath::subpathContainingElement(unint64_t **this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  EQKitPath::extractPath(this);
  *a3 = xmmword_2582D0060;
  *(a3 + 16) = 0;
  v6 = this[4];
  v7 = (this[5] - v6) >> 4;
  if (v7 > a2)
  {
    v9 = this[7];
    v8 = this[8];
    if (v8 == v9)
    {
      v11 = this[8];
    }

    else
    {
      v10 = v8 - v9;
      v11 = this[7];
      do
      {
        v12 = v10 >> 1;
        v13 = &v11[v10 >> 1];
        v15 = *v13;
        v14 = v13 + 1;
        v10 += ~(v10 >> 1);
        if (v15 > a2)
        {
          v10 = v12;
        }

        else
        {
          v11 = v14;
        }
      }

      while (v10);
    }

    if (v9 != v11)
    {
      v16 = *(v11 - 1);
      if (v8 != v11)
      {
        v7 = *v11;
      }

      v17 = v6[2 * v7 - 2];
      *a3 = v16;
      *(a3 + 8) = v7 - v16;
      *(a3 + 16) = v17 == 4;
    }
  }
}

uint64_t EQKitPath::endPointIndexForElement(EQKitPath *this, unint64_t a2)
{
  EQKitPath::extractPath(this);
  v4 = *(this + 4);
  if (a2 >= (*(this + 5) - v4) >> 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = (v4 + 16 * a2);
  v6 = *v5;
  if (v6 > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2582D0088[v6] + *(v5 + 1);
  }
}

void EQKitPath::quantizeElementEdge(EQKitPath *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  EQKitPath::extractPath(a1);
  v10 = *(a1 + 4);
  if (a2 < (*(a1 + 5) - v10) >> 4)
  {
    v11 = (v10 + 16 * a2);
    v12 = *v11;
    if (*v11 - 2 < 2)
    {
      EQKitPath::subpathContainingElement(a1, a2, &v30);
      if (v30 >= a2)
      {
        v20 = v31 + v30;
      }

      else
      {
        v20 = a2;
      }

      v21 = v20 - 1;
      v22 = v20 == v31 + v30;
      if (v30 >= v21)
      {
        v23 = v31 + v30;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23 - 1;
      if ((v32 & v22) != 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      if (v25 == 0x7FFFFFFFFFFFFFFFLL || (v26 = EQKitPath::endPointIndexForElement(a1, v25), v26 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v27 = 0;
      }

      else
      {
        v14 = *(*(a1 + 1) + 16 * v26);
        *v33 = v14;
        v27 = 1;
      }

      v28 = *v11;
      if (v28 > 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = qword_2582D00A8[v28];
        memcpy(&v33[2 * v27], (*(a1 + 1) + 16 * *(v11 + 1)), 16 * v29);
      }

      _quantizeCurve(v33, v29 + v27, a3, a4, a5, *&v14, v15, v16, v17, v18, v19);
    }

    else if (v12 == 4 || v12 == 1)
    {
      v33[0] = 0x7FFFFFFFFFFFFFFFLL;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if (EQKitPath::isLineTo(a1, a2, v33, &v30, 0))
      {
        _quantizeLine(a3, a4, a5, *(*(a1 + 1) + 16 * v33[0]), *(*(a1 + 1) + 16 * v33[0] + 8), *(*(a1 + 1) + 16 * v30), *(*(a1 + 1) + 16 * v30 + 8));
      }
    }
  }
}

BOOL EQKitPath::isLineTo(unint64_t **this, unint64_t a2, uint64_t *a3, void *a4, __int128 *a5)
{
  if (a5)
  {
    v22 = *a5;
    v23 = *(a5 + 2);
  }

  else
  {
    EQKitPath::subpathContainingElement(this, a2, &v22);
  }

  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  *a4 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = v22;
  if (a2 < v22 || a2 - v22 >= *(&v22 + 1))
  {
    return 0;
  }

  if (a2 <= v22)
  {
    v12 = *(&v22 + 1) + v22;
  }

  else
  {
    v12 = a2;
  }

  v13 = v12 - 1;
  v14 = this[4];
  v15 = v14[2 * a2];
  if (a2 == v22 && ((v16 = v14[2 * v13], !v15) ? (v17 = v16 == 4) : (v17 = 0), v17))
  {
    v18 = *(&v22 + 1) + a2;
    if (v13 > a2)
    {
      v18 = v13;
    }

    v13 = v18 - 1;
  }

  else
  {
    if (a2 + 1 == *(&v22 + 1) + v22 && v15 == 4)
    {
      v19 = this;
      goto LABEL_26;
    }

    if (v15 != 1)
    {
      v20 = *a3;
      return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = this;
  v9 = a2;
LABEL_26:
  *a4 = EQKitPath::endPointIndexForElement(v19, v9);
  v20 = EQKitPath::endPointIndexForElement(this, v13);
  *a3 = v20;
  return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t _quantizeLine(uint64_t result, uint64_t a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  if ((result & 0xFFFFFFFD) != 0)
  {
    return result;
  }

  v7 = result & 0xFFFFFFFE;
  v8 = *a3;
  v9 = (a3[1] - *a3) >> 3;
  if (a5 == a7)
  {
    v10 = a5 * *(a2 + 8);
    v11 = (floorf(v10) - *a2);
    goto LABEL_5;
  }

  v14 = *(a2 + 8);
  v15 = a5 * v14;
  v16 = *a2;
  v11 = (floorf(v15) - v16);
  v17 = a7 * v14;
  v18 = floorf(v17);
  v19 = (v18 - v16);
  if (a4 == a6)
  {
    if (v11 <= v19)
    {
      v20 = (v18 - v16);
    }

    else
    {
      v20 = v11;
    }

    if (v11 >= v19)
    {
      v11 = (v18 - v16);
    }

    v21 = v11 & ~(v11 >> 63);
    v22 = v9 - 1;
    if (v20 < v22)
    {
      v22 = v20;
    }

    if (v21 <= v22)
    {
      if (a6 >= a4)
      {
        v23 = a4;
      }

      else
      {
        v23 = a6;
      }

      if (a4 < a6)
      {
        a4 = a6;
      }

      v24 = v21 - 1;
      v25 = (v8 + 8 * v21);
      do
      {
        v26 = *v25;
        if (v7 == 2)
        {
          if (v26 >= a4)
          {
            v27 = *v25;
          }

          else
          {
            v27 = a4;
          }
        }

        else if (v23 >= v26)
        {
          v27 = *v25;
        }

        else
        {
          v27 = v23;
        }

        *v25++ = v27;
        ++v24;
      }

      while (v24 < v22);
    }
  }

  else
  {
    v28 = v11 <= v19;
    if (v11 == v19)
    {
LABEL_5:
      if (v11 < 0 || v9 <= v11)
      {
        return result;
      }

      v12 = *(v8 + 8 * v11);
      if (v7 == 2)
      {
        if (a4 < a6)
        {
          a4 = a6;
        }

        v13 = v12 < a4;
      }

      else
      {
        if (a6 < a4)
        {
          a4 = a6;
        }

        v13 = a4 < v12;
      }

      if (!v13)
      {
        a4 = *(v8 + 8 * v11);
      }

LABEL_40:
      *(v8 + 8 * v11) = a4;
      return result;
    }

    if (v11 > v19)
    {
      v29 = a4;
    }

    else
    {
      v29 = a6;
    }

    if (v11 > v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = v11;
    }

    if (v11 > v19)
    {
      v31 = a5;
    }

    else
    {
      v11 = v19;
      v31 = a7;
    }

    if (v28)
    {
      a6 = a4;
      v32 = a5;
    }

    else
    {
      v32 = a7;
    }

    v33 = (v29 - a6) / (v31 - v32);
    v34 = v30 + 1;
    a4 = a6 + ((v30 + 1 + *a2) / v14 - v32) * v33;
    if ((v30 & 0x8000000000000000) == 0 && v30 < v9)
    {
      v35 = *(v8 + 8 * v30);
      if (a4 >= a6)
      {
        v36 = a6;
      }

      else
      {
        v36 = a4;
      }

      if (v36 >= v35)
      {
        v36 = *(v8 + 8 * v30);
      }

      if (a6 < a4)
      {
        a6 = a4;
      }

      if (v35 >= a6)
      {
        a6 = *(v8 + 8 * v30);
      }

      if (v7 != 2)
      {
        a6 = v36;
      }

      *(v8 + 8 * v30) = a6;
    }

    if (v34 < v11)
    {
      v37 = *(a2 + 16);
      do
      {
        v38 = a4;
        a4 = a4 + v33 * v37;
        if ((v34 & 0x8000000000000000) == 0 && v34 < v9)
        {
          v39 = *(v8 + 8 * v34);
          if (a4 >= v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = a4;
          }

          if (v40 >= v39)
          {
            v40 = *(v8 + 8 * v34);
          }

          if (v38 < a4)
          {
            v38 = a4;
          }

          if (v39 >= v38)
          {
            v38 = *(v8 + 8 * v34);
          }

          if (v7 != 2)
          {
            v38 = v40;
          }

          *(v8 + 8 * v34) = v38;
        }

        ++v34;
      }

      while (v11 != v34);
    }

    if ((v11 & 0x8000000000000000) == 0 && v11 < v9)
    {
      v41 = *(v8 + 8 * v11);
      if (v29 >= a4)
      {
        v42 = a4;
      }

      else
      {
        v42 = v29;
      }

      if (v42 >= v41)
      {
        v42 = *(v8 + 8 * v11);
      }

      if (a4 < v29)
      {
        a4 = v29;
      }

      if (v41 >= a4)
      {
        a4 = *(v8 + 8 * v11);
      }

      if (v7 != 2)
      {
        a4 = v42;
      }

      goto LABEL_40;
    }
  }

  return result;
}

uint64_t _quantizeCurve(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = a3 & 0xFFFFFFFD;
  v15 = *result;
  v16 = vdupq_laneq_s64(*result, 1);
  if (a2 < 2)
  {
    v20 = *result;
    v19 = *result;
    if (v14)
    {
      return result;
    }
  }

  else
  {
    v17 = a2 - 1;
    v18 = (result + 24);
    v19 = *result;
    v20 = *result;
    do
    {
      v21 = *(v18 - 1);
      if (v21 < v19)
      {
        v19 = *(v18 - 1);
      }

      if (v20 < v21)
      {
        v20 = *(v18 - 1);
      }

      v22.f64[1] = v16.f64[1];
      *&v22.f64[0] = *v18;
      v23.f64[0] = v16.f64[0];
      *&v23.f64[1] = *v18;
      a11 = vcgtq_f64(v23, v22);
      v16 = vbslq_s8(a11, vdupq_lane_s64(*v18, 0), v16);
      v18 += 2;
      --v17;
    }

    while (v17);
    if (v14)
    {
      return result;
    }
  }

  *a11.i32 = *a4;
  v24 = vcvtq_s64_f64(vcvtq_f64_f32(vsub_f32(vrndm_f32(vcvt_f32_f64(vmulq_n_f64(v16, *(a4 + 8)))), vdup_lane_s32(*a11.i8, 0))));
  if (v24.i64[0] == v24.i64[1])
  {
    if ((v24.i64[0] & 0x8000000000000000) == 0)
    {
      v25 = *a5;
      if (((a5[1] - *a5) >> 3) > v24.i64[0])
      {
        v26 = *(v25 + 8 * v24.i64[0]);
        if ((a3 & 0xFFFFFFFE) == 2)
        {
          if (v19 >= v20)
          {
            v20 = v19;
          }

          _NF = v26 < v20;
        }

        else
        {
          if (v20 >= v19)
          {
            v20 = v19;
          }

          _NF = v20 < v26;
        }

        if (_NF)
        {
          v26 = v20;
        }

        *(v25 + 8 * v24.i64[0]) = v26;
      }
    }
  }

  else if (v20 - v19 <= *(a4 + 24))
  {
    v50 = result + 16 * a2;
    v51 = *(v50 - 16);
    v52 = *(v50 - 8);
    v30 = *(result + 8);
LABEL_33:

    return _quantizeLine(a3, a4, a5, v15.f64[0], v30, v51, v52);
  }

  else
  {
    v28 = result + 16 * a2;
    if (a2 <= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = a2;
    }

    v30 = *(result + 8);
    v31 = (result + 24);
    v32 = v29 - 2;
    v33 = 1;
    do
    {
      if (!v32)
      {
        goto LABEL_32;
      }

      ++v33;
      v34 = *(v28 - 16) - v15.f64[0];
      v35 = *(v28 - 8) - v15.f64[1];
      v36 = fabs(v34 * (v15.f64[1] - *v31) - (v15.f64[0] - *(v31 - 1)) * v35);
      *&v34 = v35 * v35 + v34 * v34;
      v31 += 2;
      --v32;
    }

    while (v36 / sqrtf(*&v34) <= *(a4 + 32));
    if (v33 >= a2)
    {
LABEL_32:
      v51 = *(v28 - 16);
      v52 = *(v28 - 8);
      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v53 = (result + 16);
      v69 = vld2q_f64(v53);
      __asm { FMOV            V4.2D, #0.5 }

      v55 = vmulq_f64(vaddq_f64(vextq_s8(vdupq_lane_s64(*&v15.f64[0], 0), v69.val[0], 8uLL), v69.val[0]), _Q4);
      v56 = vmulq_f64(vaddq_f64(vextq_s8(v15, v69.val[1], 8uLL), v69.val[1]), _Q4);
      v63 = *result;
      v64 = vzip1q_s64(v55, v56);
      v65 = vmulq_f64(vpaddq_f64(v55, v56), _Q4);
      v59 = v65;
      v60 = vzip2q_s64(v55, v56);
      v61 = *(result + 32);
      _quantizeCurve(&v63, 3, a3, a4, a5);
      v49 = 3;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v37 = 0;
      __asm { FMOV            V1.2D, #0.5 }

      do
      {
        v42 = *(result + v37 * 16 + 16);
        v57[v37++] = vmulq_f64(vaddq_f64(v15, v42), _Q1);
        v15 = v42;
      }

      while (v37 != 3);
      v43 = v57;
      v44 = v58;
      v45 = vld1q_dup_f64(v43++);
      v70 = vld2q_f64(v44);
      v46 = vld1q_dup_f64(v43);
      v47 = vmulq_f64(vaddq_f64(vextq_s8(v45, v70.val[0], 8uLL), v70.val[0]), _Q1);
      v70.val[0] = vmulq_f64(vaddq_f64(vextq_s8(v46, v70.val[1], 8uLL), v70.val[1]), _Q1);
      v63 = *result;
      v64 = v57[0];
      v65 = vzip1q_s64(v47, v70.val[0]);
      v66 = vmulq_f64(vpaddq_f64(v47, v70.val[0]), _Q1);
      v59 = v66;
      v60 = vzip2q_s64(v47, v70.val[0]);
      v48 = *(result + 48);
      v61 = v58[1];
      v62 = v48;
      _quantizeCurve(&v63, 4, a3, a4, a5);
      v49 = 4;
    }

    return _quantizeCurve(&v59, v49, a3, a4, a5);
  }

  return result;
}

BOOL EQKitPath::endPointForElement(EQKitPath *a1, unint64_t a2, _OWORD *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  v8 = EQKitPath::endPointIndexForElement(a1, a2);
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = (a1 + 8);
  v12 = (v10 - v9) >> 4;
  if (v8 < v12)
  {
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v11;
    }

    *a3 = *(*v13 + 16 * v8);
  }

  return v8 < v12;
}

unint64_t EQKitPath::findJoinForEdge(void *a1, unsigned int a2, _OWORD *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  if (a2 <= 3)
  {
    v8 = *(a1 + qword_2582D00C8[a2]);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_40;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = a1[5] - a1[4];
  if (!v10)
  {
    return v9;
  }

  v11 = 0;
  v12 = MEMORY[0x277CBF348];
  v13 = v10 >> 4;
  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  if (v13 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = *v12;
    if (!EQKitPath::endPointForElement(a1, v11, &v23, 0))
    {
      goto LABEL_12;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
LABEL_11:
      v8 = v11;
      v14 = v18;
      v15 = v17;
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 > v15)
      {
        goto LABEL_11;
      }

      if (*&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

    else if (a2 == 1)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }

      if (*(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else if (a2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) > v14 || *(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 < v15 || *&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v11;
  }

  while (v16 != v11);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2 <= 3)
    {
      *(a1 + qword_2582D00C8[a2]) = v8;
    }

LABEL_40:
    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = a1 + 1;
    }

    EQKitPath::endPointForElement(a1, v8, a3, v21);
    return v8;
  }

  return v9;
}

void EQKitPath::appendToCGPath(void *a1, CGPath *a2, const CGAffineTransform *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  if (!a4)
  {
    a4 = a1 + 1;
  }

  if (a4[1] - *a4 == a1[2] - a1[1])
  {
    for (i = a1[4]; i != a1[5]; i += 16)
    {
      v9 = *i;
      if (*i == 4)
      {
        CGPathCloseSubpath(a2);
      }

      else
      {
        v10 = (*a4 + 16 * *(i + 8));
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            CGPathAddQuadCurveToPoint(a2, a3, *v10, v10[1], v10[2], v10[3]);
          }

          else if (v9 == 3)
          {
            CGPathAddCurveToPoint(a2, a3, *v10, v10[1], v10[2], v10[3], v10[4], v10[5]);
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            CGPathAddLineToPoint(a2, a3, *v10, v10[1]);
          }
        }

        else
        {
          CGPathMoveToPoint(a2, a3, *v10, v10[1]);
        }
      }
    }
  }
}

uint64_t EQKitPath::findCurveMirrorParallelWithAxis(EQKitPath *a1, int a2, double *a3)
{
  *a3 = 0.0;
  EQKitPath::extractPath(a1);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 == v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277CBF348];
  while (1)
  {
    if (*(v6 + v8) != 3)
    {
      goto LABEL_36;
    }

    v11 = v6 + v8;
    v12 = *(v6 + v8 + 8);
    v13 = v12 + 1;
    v14 = v12 + 2;
    v15 = *(a1 + 1);
    v16 = (*(a1 + 2) - v15) >> 4;
    v17 = (v16 <= v13 ? v10 : v15 + 16 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v16 <= v14 ? v10 : v15 + 16 * v14);
    v21 = v20[1];
    v22 = *v20 - v18;
    v23 = v21 - v19;
    v24 = a2 == 1 ? v21 - v19 : *v20 - v18;
    if (v24 != 0.0)
    {
      goto LABEL_36;
    }

    EQKitPath::subpathContainingElement(a1, v9, v40);
    v25 = v40[0];
    if (v9 + 1 < v40[1] + v40[0])
    {
      v25 = v9 + 1;
    }

    v6 = *(a1 + 4);
    v26 = v6 + 16 * v25;
    if (*v26 == 3)
    {
      v27 = *(v11 + 8) + 2;
      v28 = *(v26 + 8);
      v29 = *(a1 + 1);
      v30 = (*(a1 + 2) - v29) >> 4;
      v31 = (v30 <= v27 ? v10 : v29 + 16 * v27);
      v32 = v31[1];
      v33 = (v30 <= v28 ? v10 : v29 + 16 * v28);
      v34 = v33[1];
      v35 = *v33 - *v31;
      v36 = v34 - v32;
      v37 = a2 == 1 ? v34 - v32 : *v33 - *v31;
      if (v37 == 0.0)
      {
        if (v22 > 0.0 && v35 > 0.0)
        {
          goto LABEL_40;
        }

        if (v22 < 0.0 && v35 < 0.0)
        {
          v39 = -1.0;
          if (v22 <= 0.0)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if (v23 > 0.0 && v36 > 0.0)
        {
          goto LABEL_40;
        }

        if (v23 < 0.0 && v36 < 0.0)
        {
          break;
        }
      }
    }

    v7 = *(a1 + 5);
LABEL_36:
    ++v9;
    v8 += 16;
    if (v9 >= (v7 - v6) >> 4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v39 = -1.0;
  if (v23 > 0.0)
  {
LABEL_40:
    v39 = 1.0;
  }

LABEL_41:
  *a3 = v39;
  return v9;
}

uint64_t EQKitPath::addLineToAfterElement(EQKitPath *this, unint64_t a2)
{
  v4 = EQKitPath::endPointIndexForElement(this, a2);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = this + 8;
    v6 = *(this + 1);
    v10 = *(this + 4);
    v9 = (this + 32);
    v8 = v10;
    v13 = *(v6 + 16 * v4);
    v12.n128_u64[1] = (*(v9 - 2) - v6) >> 4;
    v12.n128_u64[0] = 1;
    if (a2 + 1 >= (v9[1] - v10) >> 4)
    {
      std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](v9, &v12);
    }

    else
    {
      std::vector<EQKitPath::PathElement>::insert(v9, (v8 + 16 * (a2 + 1)), &v12);
    }

    std::vector<CGPoint>::push_back[abi:ne200100](v7, &v13);
    return v12.n128_i64[1];
  }

  return v5;
}

__n128 *std::vector<EQKitPath::PathElement>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<EQKitPath::PathElement>::emplace_back<EQKitPath::PathElement const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_258253428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKitPath::appendSubpathRect(EQKitPath *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  MinX = CGRectGetMinX(a2);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  *&v21 = MinX;
  *(&v21 + 1) = CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  *&v20 = MaxX;
  *(&v20 + 1) = CGRectGetMinY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v9 = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  *&v19 = v9;
  *(&v19 + 1) = CGRectGetMaxY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v10 = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  *&v18 = v10;
  *(&v18 + 1) = CGRectGetMaxY(v28);
  v11 = *(this + 1);
  v12 = *(this + 2);
  this = (this + 8);
  *&v17 = 0;
  *(&v17 + 1) = (v12 - v11) >> 4;
  *(&v16 + 1) = *(&v17 + 1) + 1;
  *&v16 = 1;
  *(&v15 + 1) = *(&v17 + 1) + 2;
  *&v15 = 1;
  *(&v14 + 1) = *(&v17 + 1) + 3;
  *&v14 = 1;
  v13 = xmmword_2582D0070;
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v18);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v19);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v20);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v21);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v17);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v16);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v15);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v14);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v13);
}

uint64_t EQKitPath::findStemForEdge@<X0>(unint64_t **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v48[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  result = EQKitPath::findJoinForEdge(this, a2, &v45, 0);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = result;
    EQKitPath::subpathContainingElement(this, result, &v43);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    result = EQKitPath::isLineTo(this, v7, &v42, &v41, &v43);
    if (result)
    {
      v8 = v41;
      v9 = v42;
      v10 = this[1];
      v11 = &v10[2 * v42];
      v12 = &v10[2 * v41];
      if ((a2 & 0xFFFFFFFD) == 1)
      {
        ++v11;
      }

      if (vabdd_f64(*v11, *&v12[(a2 & 0xFFFFFFFD) == 1]) >= 0.00100000005)
      {
        *&v46 = v42;
        *(&v46 + 1) = v41;
        v25 = v43;
        v26 = *(&v43 + 1) + v43;
        if (v7 + 1 < *(&v43 + 1) + v43)
        {
          v27 = v7 + 1;
        }

        else
        {
          v27 = v43;
        }

        if (v27 + 1 < v26)
        {
          v25 = v27 + 1;
        }

        if (((v27 == v26 - 1) & v44) != 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = v27;
        }

        result = EQKitPath::isLineTo(this, v28, &v40, &v47, &v43);
        if (result && v40 == *(&v46 + 1))
        {
          v29 = v43;
          v30 = *(&v43 + 1) + v43;
          if (v28 + 1 < *(&v43 + 1) + v43)
          {
            v31 = v28 + 1;
          }

          else
          {
            v31 = v43;
          }

          if (v31 + 1 < v30)
          {
            v29 = v31 + 1;
          }

          v32 = ((v31 == v30 - 1) & v44) != 0 ? v29 : v31;
          result = EQKitPath::isLineTo(this, v32, &v40, v48, &v43);
          if (result)
          {
            if (v40 == v47)
            {
              v33 = this[1];
              v34 = &v33[2 * *(&v46 + 1)];
              if ((a2 & 0xFFFFFFFD) == 1)
              {
                ++v34;
              }

              if (vabdd_f64(*v34, *&v33[2 * v40 + ((a2 & 0xFFFFFFFD) == 1)]) < 0.00100000005)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }

      else
      {
        *(&v46 + 1) = v42;
        v47 = v41;
        if (v43 >= v7)
        {
          v13 = *(&v43 + 1) + v43;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        v15 = v13 == *(&v43 + 1) + v43;
        if (v43 >= v14)
        {
          v16 = *(&v43 + 1) + v43;
        }

        else
        {
          v16 = v14;
        }

        v17 = v16 - 1;
        if ((v44 & v15) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = v14;
        }

        result = EQKitPath::isLineTo(this, v18, &v46, &v40, &v43);
        if (result)
        {
          v19 = v40 == v9;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v20 = v43;
          v21 = *(&v43 + 1) + v43;
          if (v7 + 1 < *(&v43 + 1) + v43)
          {
            v22 = v7 + 1;
          }

          else
          {
            v22 = v43;
          }

          if (v22 + 1 < v21)
          {
            v20 = v22 + 1;
          }

          v23 = ((v22 == v21 - 1) & v44) != 0 ? v20 : v22;
          result = EQKitPath::isLineTo(this, v23, &v40, v48, &v43);
          if (result)
          {
            if (v40 == v8)
            {
LABEL_30:
              result = EQKitPath::Stem::Stem(v35, a2, this, &v46);
              if (v35 != a3)
              {
                *a3 = v35[0];
                v24 = v37;
                *(a3 + 8) = v36;
                *(a3 + 24) = v24;
                *(a3 + 40) = v38;
                *(a3 + 56) = v39;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void EQKitPath::appendToCGPathWithModifiedStem(void *a1, CGPath *a2, double *a3, unsigned int a4, uint64_t a5, double a6)
{
  if (a2)
  {
    if (!a5 || a6 == 0.0)
    {
      *__p = *MEMORY[0x277CBF348];
      if (EQKitPath::findJoinForEdge(a1, a4, __p, 0) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, *a3 - *__p, a3[1] - *&__p[1]);
        EQKitPath::appendToCGPath(a1, a2, &v14, 0);
        v13 = a4 > 2 ? 1 : dword_2582D00E8[a4];
        if (EQKitPath::findJoinForEdge(a1, v13, __p, 0))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *&__p[1]), *&v14.a, *__p));
        }
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(__p, a1[1], a1[2], (a1[2] - a1[1]) >> 4);
      EQKitPath::Stem::adjustStemPoints(a5, a1, __p, a6);
      v15 = *MEMORY[0x277CBF348];
      if (EQKitPath::findJoinForEdge(a1, a4, &v15, __p) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, *a3 - *&v15, a3[1] - *(&v15 + 1));
        EQKitPath::appendToCGPath(a1, a2, &v14, __p);
        if (a4 > 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = dword_2582D00E8[a4];
        }

        if (EQKitPath::findJoinForEdge(a1, v12, &v15, __p))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *(&v15 + 1)), *&v14.a, *&v15));
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_258253B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitPath::applyModifiedStemToPoints(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a2)
  {
    if (a4 != 0.0)
    {
      return EQKitPath::Stem::adjustStemPoints(a2, result, a3, a4);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258253C8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258253D80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void *std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGPoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<EQKitPath::PathElement>::__assign_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 std::__split_buffer<EQKitPath::PathElement>::emplace_back<EQKitPath::PathElement const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void EQKitPath::EQKitPath(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 16) = v6;

    operator delete(v6);
  }
}

uint64_t EQKitCompositeGlyph::EQKitCompositeGlyph(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = &unk_28696A608;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 20) = *(a4 + 8);
  v5 = *a4;
  if (*a4)
  {
    v5 = CTFontCreateWithName(v5, *(a2 + 16), 0);
  }

  *(a1 + 8) = v5;
  return a1;
}

void EQKitCompositeGlyph::~EQKitCompositeGlyph(EQKitCompositeGlyph *this)
{
  *this = &unk_28696A608;
  EQKitCompositeGlyph::clearCache(this);
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  EQKitCompositeGlyph::~EQKitCompositeGlyph(this);

  JUMPOUT(0x259C7CB70);
}

uint64_t EQKitCompositeGlyph::clearCache(EQKitCompositeGlyph *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    EQKitPath::~EQKitPath(v2);
    MEMORY[0x259C7CB70]();
    *(this + 4) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    EQKitPath::~EQKitPath(v3);
    MEMORY[0x259C7CB70]();
    *(this + 5) = 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    EQKitPath::~EQKitPath(v4);
    MEMORY[0x259C7CB70]();
    *(this + 6) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    EQKitPath::~EQKitPath(v5);
    MEMORY[0x259C7CB70]();
    *(this + 7) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    MEMORY[0x259C7CB70](v6, 0x1000C401B087D88);
    *(this + 8) = 0;
  }

  v7 = *(this + 9);
  if (v7)
  {
    MEMORY[0x259C7CB70](v7, 0x1000C401B087D88);
    *(this + 9) = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x259C7CB70](v8, 0x1000C401B087D88);
    *(this + 10) = 0;
  }

  v9 = *(this + 11);
  if (v9)
  {
    MEMORY[0x259C7CB70](v9, 0x1000C401B087D88);
    *(this + 11) = 0;
  }

  result = *(this + 12);
  if (result)
  {
    result = MEMORY[0x259C7CB70](result, 0x1000C401B087D88);
    *(this + 12) = 0;
  }

  return result;
}

uint64_t EQKitCompositeGlyph::upperPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 4);
  v4 = *(this + 10);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::lowerPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 5);
  v4 = *(this + 11);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::middlePath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 6);
  v4 = *(this + 12);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::extenderPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 7);
  v4 = *(this + 13);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::upperPathLowerStem(EQKitCompositeGlyph *this)
{
  if (*(this + 104))
  {
    return *(this + 8);
  }

  v3 = EQKitCompositeGlyph::upperPath(this);
  if (*(this + 4) == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  result = _createStem(v3, v4);
  *(this + 8) = result;
  *(this + 104) |= 1u;
  return result;
}

uint64_t _createStem(unint64_t **a1, unsigned int a2)
{
  if (a1)
  {
    EQKitPath::findStemForEdge(a1, a2, v3);
    if (v3[0] == 1)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t EQKitCompositeGlyph::lowerPathUpperStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 2) != 0)
  {
    return *(this + 9);
  }

  v2 = EQKitCompositeGlyph::lowerPath(this);
  result = _createStem(v2, *(this + 4) == 2);
  *(this + 9) = result;
  *(this + 104) |= 2u;
  return result;
}

uint64_t EQKitCompositeGlyph::middlePathUpperStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 4) != 0)
  {
    return *(this + 10);
  }

  v2 = EQKitCompositeGlyph::middlePath(this);
  result = _createStem(v2, *(this + 4) == 2);
  *(this + 10) = result;
  *(this + 104) |= 4u;
  return result;
}

uint64_t EQKitCompositeGlyph::middlePathLowerStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 8) != 0)
  {
    return *(this + 11);
  }

  v2 = EQKitCompositeGlyph::middlePath(this);
  if (*(this + 4) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = _createStem(v2, v3);
  *(this + 11) = result;
  *(this + 104) |= 8u;
  return result;
}

uint64_t EQKitCompositeGlyph::extenderPathStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 0x10) != 0)
  {
    return *(this + 12);
  }

  v2 = EQKitCompositeGlyph::extenderPath(this);
  if (*(this + 4) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = _createStem(v2, v3);
  *(this + 12) = result;
  *(this + 104) |= 0x10u;
  return result;
}

CGPath *EQKitCompositeGlyph::createPathWithLength(EQKitCompositeGlyph *this, double a2, CGSize *a3)
{
  Mutable = CGPathCreateMutable();
  EQKitCompositeGlyph::compose(this, a2, Mutable);
  EQKitPath::EQKitPath(v12, Mutable);
  if (v13[32] == 1)
  {
    v7 = v13;
  }

  else
  {
    v7 = EQKitPath::computePathBounds(v12);
  }

  width = v7->width;
  height = v7->height;
  *a3 = v7[1];
  if (width != 0.0 || height != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeTranslation(&v11, -width, -height);
    Mutable = CGPathCreateMutable();
    EQKitPath::appendToCGPath(v12, Mutable, &v11, 0);
  }

  EQKitPath::~EQKitPath(v12);
  return Mutable;
}

void sub_258254B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

double EQKitCompositeGlyph::compose(EQKitCompositeGlyph *this, double a2, CGPath *a3)
{
  v6 = EQKitCompositeGlyph::upperPath(this);
  v7 = EQKitCompositeGlyph::lowerPath(this);
  v8 = EQKitCompositeGlyph::middlePath(this);
  v9 = EQKitCompositeGlyph::extenderPath(this);
  v10 = EQKitCompositeGlyph::upperPathLowerStem(this);
  v74 = EQKitCompositeGlyph::lowerPathUpperStem(this);
  v11 = EQKitCompositeGlyph::middlePathUpperStem(this);
  v12 = EQKitCompositeGlyph::middlePathLowerStem(this);
  v13 = EQKitCompositeGlyph::extenderPathStem(this);
  v14 = a2;
  if (!(v6 | v7))
  {
    return a2 - v14;
  }

  v15 = v13;
  v16 = 0.0;
  v17 = 0.0;
  if (v6)
  {
    if (*(this + 4) == 2)
    {
      if (*(v6 + 120))
      {
        v18 = (v6 + 88);
      }

      else
      {
        v18 = EQKitPath::computePathBounds(v6);
      }

      Height = CGRectGetHeight(*v18);
    }

    else
    {
      if (*(v6 + 120))
      {
        v19 = (v6 + 88);
      }

      else
      {
        v19 = EQKitPath::computePathBounds(v6);
      }

      Height = CGRectGetWidth(*v19);
    }

    v17 = Height;
  }

  if (v7)
  {
    if (*(this + 4) == 2)
    {
      if (*(v7 + 120))
      {
        v21 = (v7 + 88);
      }

      else
      {
        v21 = EQKitPath::computePathBounds(v7);
      }

      Width = CGRectGetHeight(*v21);
    }

    else
    {
      if (*(v7 + 120))
      {
        v22 = (v7 + 88);
      }

      else
      {
        v22 = EQKitPath::computePathBounds(v7);
      }

      Width = CGRectGetWidth(*v22);
    }

    v16 = Width;
  }

  v14 = a2 - (v17 + v16);
  if (v8)
  {
    if (*(this + 4) == 2)
    {
      if (*(v8 + 120))
      {
        v24 = (v8 + 88);
      }

      else
      {
        v24 = EQKitPath::computePathBounds(v8);
      }

      v26 = CGRectGetHeight(*v24);
    }

    else
    {
      if (*(v8 + 120))
      {
        v25 = (v8 + 88);
      }

      else
      {
        v25 = EQKitPath::computePathBounds(v8);
      }

      v26 = CGRectGetWidth(*v25);
    }

    v14 = v14 - v26;
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v14 < 0.0)
  {
    v31 = 0.0;
    if (v10)
    {
      v31 = *(v10 + 40);
    }

    if (v11)
    {
      v30 = *(v11 + 40);
    }

    v32 = 0.0;
    v33 = 0.0;
    if (v74)
    {
      v33 = *(v74 + 40);
    }

    v34 = v31 + v30;
    if (v12)
    {
      v32 = *(v12 + 40);
    }

    v35 = v33 + v32;
    v36 = fabs(v14);
    if (v36 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v36;
    }

    v38 = v36 - v37;
    if (v38 >= v35)
    {
      v38 = v35;
    }

    if (v34 >= v35)
    {
      v34 = v35;
    }

    v39 = fabs(v14 * 0.5);
    if (v39 < v34)
    {
      v34 = v39;
    }

    if (v8)
    {
      v40 = v34;
    }

    else
    {
      v40 = v38;
    }

    if (v8)
    {
      v41 = v34;
    }

    else
    {
      v41 = v37;
    }

    v42 = 0.0;
    v30 = 0.0;
    if (v10)
    {
      v30 = *(v10 + 40);
    }

    if (v30 >= v41)
    {
      v30 = v41;
    }

    if (v74)
    {
      v42 = *(v74 + 40);
    }

    v43 = v41 - v30;
    if (v42 >= v40)
    {
      v29 = v40;
    }

    else
    {
      v29 = v42;
    }

    v44 = 0.0;
    v45 = 0.0;
    if (v11)
    {
      v45 = *(v11 + 40);
    }

    v46 = v40 - v29;
    if (v45 >= v43)
    {
      v28 = v43;
    }

    else
    {
      v28 = v45;
    }

    if (v12)
    {
      v44 = *(v12 + 40);
    }

    if (v44 >= v46)
    {
      v27 = v46;
    }

    else
    {
      v27 = v44;
    }
  }

  if (v9)
  {
    v47 = fmax(v14, 0.0);
  }

  else
  {
    v47 = 0.0;
    if (v14 > 0.0)
    {
      if (v10 && v74)
      {
        v30 = v30 - v14 * 0.5;
        v29 = v29 - v14 * 0.5;
      }

      else
      {
        v48 = v29 - v14;
        if (!v74)
        {
          v48 = v29;
        }

        if (v10)
        {
          v30 = v30 - v14;
        }

        else
        {
          v29 = v48;
        }
      }
    }
  }

  v80 = *MEMORY[0x277CBF348];
  if (v6)
  {
    v14 = v14 + v30;
    if (a3)
    {
      EQKitPath::appendToCGPathWithModifiedStem(v6, a3, v80.f64, *(this + 4) == 2, v10, -v30);
    }
  }

  if (v9)
  {
    v49 = v15 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  if (v47 > 0.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v8)
  {
    if (v51)
    {
      if (*(this + 4) == 2)
      {
        v52 = *(v9 + 120) ? (v9 + 88) : EQKitPath::computePathBounds(v9);
        v57 = CGRectGetHeight(*v52);
      }

      else
      {
        v55 = *(v9 + 120) ? (v9 + 88) : EQKitPath::computePathBounds(v9);
        v57 = CGRectGetWidth(*v55);
      }

      v58 = v57 + v47 * -0.5;
      v59 = v58 >= *(v15 + 40) ? *(v15 + 40) : v58;
      if (*(this + 4) == 2)
      {
        v60 = *(v9 + 120) ? (v9 + 88) : EQKitPath::computePathBounds(v9);
        v62 = CGRectGetHeight(*v60);
      }

      else
      {
        v61 = *(v9 + 120) ? (v9 + 88) : EQKitPath::computePathBounds(v9);
        v62 = CGRectGetWidth(*v61);
      }

      v14 = v59 + v14 - v62;
      if (a3)
      {
        EQKitPath::appendToCGPathWithModifiedStem(v9, a3, v80.f64, *(this + 4) == 2, v15, -v59);
      }
    }

    if ((v28 == 0.0 || !v11) && (v27 == 0.0 || !v12))
    {
      if (a3)
      {
        EQKitPath::appendToCGPathWithModifiedStem(v8, a3, v80.f64, *(this + 4) == 2, 0, 0.0);
      }
    }

    else
    {
      if (a3)
      {
        EQKitPath::extractPath(v8);
        v78 = 0;
        v79 = 0;
        __p = 0;
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 4);
        EQKitPath::applyModifiedStemToPoints(v8, v11, &__p, -v28);
        EQKitPath::applyModifiedStemToPoints(v8, v12, &__p, -v27);
        *v76 = *MEMORY[0x277CBF348];
        EQKitPath::findJoinForEdge(v8, *(this + 4) == 2, v76, &__p);
        memset(&v75, 0, sizeof(v75));
        CGAffineTransformMakeTranslation(&v75, v80.f64[0] - v76[0], v80.f64[1] - v76[1]);
        EQKitPath::appendToCGPath(v8, a3, &v75, &__p);
        v63 = *(this + 4) == 2 ? 3 : 2;
        EQKitPath::findJoinForEdge(v8, v63, &v80, &__p);
        v80 = vaddq_f64(*&v75.tx, vmlaq_n_f64(vmulq_n_f64(*&v75.c, v80.f64[1]), *&v75.a, v80.f64[0]));
        if (__p)
        {
          v78 = __p;
          operator delete(__p);
        }
      }

      v14 = v27 + v28 + v14;
    }

    if (!v51)
    {
      goto LABEL_175;
    }

    v53 = (this + 16);
    if (*(this + 4) == 2)
    {
      if (*(v9 + 120))
      {
        v64 = (v9 + 88);
      }

      else
      {
        v64 = EQKitPath::computePathBounds(v9);
      }

      v66 = CGRectGetHeight(*v64);
    }

    else
    {
      if (*(v9 + 120))
      {
        v65 = (v9 + 88);
      }

      else
      {
        v65 = EQKitPath::computePathBounds(v9);
      }

      v66 = CGRectGetWidth(*v65);
    }

    v67 = v66 + v47 * -0.5;
    goto LABEL_161;
  }

  if (v51)
  {
    v53 = (this + 16);
    if (*(this + 4) == 2)
    {
      if (*(v9 + 120))
      {
        v54 = (v9 + 88);
      }

      else
      {
        v54 = EQKitPath::computePathBounds(v9);
      }

      v68 = CGRectGetHeight(*v54);
    }

    else
    {
      if (*(v9 + 120))
      {
        v56 = (v9 + 88);
      }

      else
      {
        v56 = EQKitPath::computePathBounds(v9);
      }

      v68 = CGRectGetWidth(*v56);
    }

    v67 = v68 - v47;
LABEL_161:
    if (v67 >= *(v15 + 40))
    {
      v69 = *(v15 + 40);
    }

    else
    {
      v69 = v67;
    }

    if (*v53 == 2)
    {
      if (*(v9 + 120))
      {
        v70 = (v9 + 88);
      }

      else
      {
        v70 = EQKitPath::computePathBounds(v9);
      }

      v72 = CGRectGetHeight(*v70);
    }

    else
    {
      if (*(v9 + 120))
      {
        v71 = (v9 + 88);
      }

      else
      {
        v71 = EQKitPath::computePathBounds(v9);
      }

      v72 = CGRectGetWidth(*v71);
    }

    v14 = v69 + v14 - v72;
    if (a3)
    {
      EQKitPath::appendToCGPathWithModifiedStem(v9, a3, v80.f64, *v53 == 2, v15, -v69);
    }
  }

LABEL_175:
  if (v7)
  {
    v14 = v29 + v14;
    if (a3)
    {
      EQKitPath::appendToCGPathWithModifiedStem(v7, a3, v80.f64, *(this + 4) == 2, v74, -v29);
    }
  }

  return a2 - v14;
}