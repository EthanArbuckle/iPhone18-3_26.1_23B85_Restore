CTLineRef sub_1AF07CD64(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF0ACBC0;
  sub_1AF0A7C70();
  v5 = sub_1AF0A7C40();

  *(inited + 32) = v5;
  type metadata accessor for CTFont(0);
  *(inited + 64) = v6;
  *(inited + 40) = a3;
  v7 = a3;
  sub_1AF07C678(inited);
  swift_setDeallocating();
  sub_1AF07D918(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v9 = sub_1AF0A7C40();
  type metadata accessor for Key(0);
  sub_1AF07DAE0(&qword_1EB62D480);
  v10 = sub_1AF0A7C10();

  v11 = [v8 initWithString:v9 attributes:v10];

  v12 = CTLineCreateWithAttributedString(v11);
  return v12;
}

uint64_t sub_1AF07CED8(const __CTLine *a1)
{
  CTLineGetGlyphRuns(a1);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CTRun(0);
  result = sub_1AF0A7CF0();
  __break(1u);
  return result;
}

id sub_1AF07D248()
{

  MEMORY[0x1B2715EE0](45, 0xE100000000000000);
  sub_1AF07D800();
  v0 = sub_1AF0A7D50();
  MEMORY[0x1B2715EE0](v0);

  MEMORY[0x1B2715EE0](30832, 0xE200000000000000);
  v1 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v2 = sub_1AF0A7C40();

  v3 = [v1 initWithString_];

  return v3;
}

void sub_1AF07D320(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6, void *a7, void *a8)
{
  if (a5)
  {
    v12 = a6;
LABEL_5:
    v19 = v12;
    goto LABEL_6;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v17 = [a7 objectForKey_];
  if (v17)
  {
    v18 = v17;

    v12 = v18;
    goto LABEL_5;
  }

  v19 = CTFontCreateCopyWithAttributes(a6, *&a4, 0, 0);
  [a7 setObject:v19 forKey:v16];

LABEL_6:
  v20 = sub_1AF07CD64(a1, a2, v19);
  sub_1AF07CED8(v20);
  Size = CTFontGetSize(v19);

  if ((*&Size & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (Size <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (Size >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = Size;
  v23 = sub_1AF07D248();
  if ([a8 objectForKey_])
  {
LABEL_10:

    return;
  }

  if (a3)
  {
    BoundsWithOptions = CTLineGetBoundsWithOptions(v20, 1uLL);
    x = BoundsWithOptions.origin.x;
    y = BoundsWithOptions.origin.y;
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    v28 = CGRectGetWidth(BoundsWithOptions);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v29 = CGRectGetHeight(v35);
          if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v29 > -9.22337204e18)
            {
              if (v29 < 9.22337204e18)
              {
                v30 = v28;
                v22 = v29;
                goto LABEL_21;
              }

LABEL_35:
              __break(1u);
              return;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  y = 0.0;
  x = 0.0;
  v30 = v22;
LABEL_21:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v32 = __CGBitmapContextCreate(v30, v22, DeviceRGB);

  if (v32)
  {
    if ((a3 & 1) == 0)
    {
      ImageBounds = CTLineGetImageBounds(v20, v32);
      x = ImageBounds.origin.x;
      y = ImageBounds.origin.y;
    }

    CGContextTranslateCTM(v32, -x, -y);
    CTLineDraw(v20, v32);
    Image = CGBitmapContextCreateImage(v32);

    if (Image)
    {
      [a8 setObject:Image forKey:v23];
      goto LABEL_10;
    }
  }
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

uint64_t sub_1AF07D6B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AF07D6F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1AF07D764()
{
  result = qword_1EB62D4B0;
  if (!qword_1EB62D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D4B0);
  }

  return result;
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

unint64_t sub_1AF07D800()
{
  result = qword_1EB62D4A0;
  if (!qword_1EB62D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D4A0);
  }

  return result;
}

unint64_t sub_1AF07D868()
{
  result = qword_1EB62D490;
  if (!qword_1EB62D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB62D8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D490);
  }

  return result;
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

uint64_t sub_1AF07D918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF07D994(uint64_t a1, unint64_t *a2)
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

_OWORD *sub_1AF07D9E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AF07D9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AF07DA44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF07DAE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF07DBA4()
{
  v1 = *v0;
  sub_1AF0A7E70();
  MEMORY[0x1B27160B0](v1);
  return sub_1AF0A7E90();
}

uint64_t sub_1AF07DC18()
{
  v1 = *v0;
  sub_1AF0A7E70();
  MEMORY[0x1B27160B0](v1);
  return sub_1AF0A7E90();
}

double sub_1AF07DC5C(double a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1AF07DF48(v4);
  v5 = 0.0;
  if (v6 > a1)
  {
    v7 = *(v1 + 32);
    v8 = sub_1AF07E140(v4, v7);
    v9 = sub_1AF07E764(v8);

    v10 = sub_1AF07E140(v3, v7);
    v11 = sub_1AF07E764(v10);

    v12 = (v9 + v11) * 0.5;
    v13 = vabdd_f64(v9, v11);
    if (v11 >= v9)
    {
      v14 = v11 - v12;
    }

    else
    {
      v14 = v12 - v9;
    }

    v5 = v14 * (v13 / (v9 + v11));
  }

  return v5 + *(v1 + 40);
}

uint64_t sub_1AF07DD20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  return result;
}

uint64_t sub_1AF07DD38(uint64_t result)
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

  result = sub_1AF07BE64(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

char *sub_1AF07DE24(char *a1, int64_t a2, char a3)
{
  result = sub_1AF07DE44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AF07DE44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D950);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AF07DF48(uint64_t a1)
{

  sub_1AF07DD38(v1);
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AF07DE24(0, v3, 0);
    v4 = v23;
    v5 = *(v23 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v23 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1AF07DE24((v8 > 1), v5 + 1, 1);
      }

      *(v23 + 16) = v5 + 1;
      *(v23 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v4 + 16);
  if (v10 >= 2)
  {
    v11 = v10 >> 1;
    v12 = v10 + 3;
    v13 = 0.0;
    v14 = 32;
    do
    {
      if (v12 - 4 >= v10)
      {
        __break(1u);
        return result;
      }

      v13 = v13 + vabdd_f64(*(v4 + v14), *(v4 + 8 * v12--));
      v14 += 8;
      --v11;
    }

    while (v11);
    v15 = 0;
    v16 = *(v4 + 32);
    v17 = v10 - 1;
    v18 = v16;
    do
    {
      v19 = v4 + 8 * v15;
      if (v18 < *(v19 + 40))
      {
        v18 = *(v19 + 40);
      }

      ++v15;
    }

    while (v17 != v15);
    v20 = 0;
    do
    {
      v21 = v4 + 8 * v20;
      if (*(v21 + 40) < v16)
      {
        v16 = *(v21 + 40);
      }

      ++v20;
    }

    while (v17 != v20);
  }
}

uint64_t sub_1AF07E140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AF07DE24(0, v3, 0);
    result = v12;
    v6 = a2;
    v7 = (a1 + 32);
    v8 = *(v12 + 16);
    do
    {
      v10 = *v7++;
      v9 = v10;
      v13 = result;
      v11 = *(result + 24);
      if (v8 >= v11 >> 1)
      {
        sub_1AF07DE24((v11 > 1), v8 + 1, 1);
        result = v13;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8++ + 32) = v9 / v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1AF07E21C()
{
  result = qword_1EB62D948;
  if (!qword_1EB62D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D948);
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

uint64_t sub_1AF07E284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AF07E2CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SideProfile.Side(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SideProfile.Side(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AF07E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v18 = sub_1AF0A7C00();
  (*(v8 + 16))(v10, v4, a1);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = &v18;
  v11 = sub_1AF0A7CE0();

  return v11;
}

uint64_t sub_1AF07E5DC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_1AF0A7D20();
  v9 = sub_1AF0A7D10();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

double sub_1AF07E764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0.0;
    return v3 / v1;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    return v3 / v1;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return v3 / v1;
}

void sub_1AF07E7F0(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D958);
  MEMORY[0x1EEE9AC00]();
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D960);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v23 - v8;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v29[0] = MEMORY[0x1E69E7CC0];
  v12 = a1;
  sub_1AF0A7D40();
  if (v30 == 1)
  {

    v14 = MEMORY[0x1E69E7CC0];
    v15 = 0.0;
    v16 = Height;
    v17 = Width;
    v18 = 0.0;
LABEL_4:
    *a2 = v14;
    *(a2 + 8) = v18;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
    *(a2 + 40) = Width;
    *(a2 + 48) = Height;
    return;
  }

  v27 = v31;
  v28 = v32;
  v26[2] = v29[1];
  v26[3] = v30;
  sub_1AF0A7B80();
  v13 = v12;
  sub_1AF0A7B70();
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v7 + 32))(v9, v5, v6);
  v19 = CGImageGetWidth(v13);
  v25 = 0;
  v26[0] = v19;
  v20 = CGImageGetHeight(v13);
  v23 = 0;
  v24 = v20;
  MEMORY[0x1EEE9AC00]();
  *(&v23 - 6) = v9;
  *(&v23 - 5) = v26;
  *(&v23 - 4) = &v25;
  *(&v23 - 3) = &v24;
  *(&v23 - 2) = &v23;
  *(&v23 - 1) = v29;
  sub_1AF0A7B30();

  v21 = v25 - v26[0];
  if (__OFSUB__(v25, v26[0]))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    v18 = v26[0];
    v15 = v24;
    v14 = v29[0];
    (*(v7 + 8))(v9, v6);
    goto LABEL_4;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1AF07EB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF07EBB4(uint64_t a1)
{
  v49 = v1[4];
  v50 = v1[3];
  v47 = v1[6];
  v48 = v1[5];
  v45 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D960);
  result = sub_1AF0A7B20();
  if (result < 0)
  {
    goto LABEL_93;
  }

  if (result)
  {
    v4 = 0;
    v46 = a1;
    v44 = result;
    while (1)
    {
      result = sub_1AF0A7B10();
      if (result < 0)
      {
        goto LABEL_92;
      }

      if (result)
      {
        break;
      }

      v52 = MEMORY[0x1E69E7CC0];
LABEL_67:
      v41 = *v45;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v45 = v41;
      if ((result & 1) == 0)
      {
        result = sub_1AF080B2C(0, v41[2] + 1, 1, v41);
        v41 = result;
        *v45 = result;
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        result = sub_1AF080B2C((v42 > 1), v43 + 1, 1, v41);
        v41 = result;
        *v45 = result;
      }

      ++v4;
      v41[2] = v43 + 1;
      v41[v43 + 4] = v52;
      if (v4 == v44)
      {
        return result;
      }
    }

    v5 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v51 = result;
    while (1)
    {
      if (v5)
      {
        goto LABEL_11;
      }

      result = sub_1AF0A7B20();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_85;
      }

      if (v4 != result - 1)
      {
LABEL_11:
        result = sub_1AF0A7B10();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_78;
        }

        v6 = 0;
        if (v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = v5 == result - 1;
        }

        v8 = v7;
        if (v5 | v4 && (v8 & 1) == 0)
        {
          result = sub_1AF0A7B10();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_84;
          }

          if (v5 == result - 1)
          {
            result = sub_1AF0A7B20();
            if (__OFSUB__(result, 1))
            {
              goto LABEL_91;
            }

            v6 = v4 != result - 1;
          }

          else
          {
            v6 = 1;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      v9 = sub_1AF0A7B60();
      result = sub_1AF0A7B40();
      v10 = v9 * result;
      if ((v9 * result) >> 64 != (v9 * result) >> 63)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
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
        return result;
      }

      v11 = v10 * v4;
      if ((v10 * v4) >> 64 != (v10 * v4) >> 63)
      {
        goto LABEL_74;
      }

      result = sub_1AF0A7B50();
      v12 = result * v5;
      if ((result * v5) >> 64 != (result * v5) >> 63)
      {
        goto LABEL_75;
      }

      v13 = __OFADD__(v11, v12);
      v14 = v11 + v12;
      if (v13)
      {
        goto LABEL_76;
      }

      v13 = __OFADD__(v14, 3);
      v15 = v14 + 3;
      if (v13)
      {
        goto LABEL_77;
      }

      v16 = *(a1 + v15);
      v17 = sub_1AF0856F4();
      v18 = *v17;
      if (v18 >= v16 || v6)
      {
        if (v18 < v16)
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }

      v19 = v17;
      if (v5)
      {
        v20 = v5 - 1;
        if (!v4)
        {
          v21 = 1;
          goto LABEL_38;
        }
      }

      else
      {
        v20 = 1;
        v21 = 1;
        if (!v4)
        {
          goto LABEL_38;
        }
      }

      v21 = v4 - 1;
LABEL_38:
      v22 = sub_1AF0A7B60();
      result = sub_1AF0A7B40();
      v23 = v22 * result;
      if ((v22 * result) >> 64 != (v22 * result) >> 63)
      {
        goto LABEL_79;
      }

      v24 = v23 * v4;
      if ((v23 * v4) >> 64 != (v23 * v4) >> 63)
      {
        goto LABEL_80;
      }

      result = sub_1AF0A7B50();
      v25 = result * v20;
      if ((result * v20) >> 64 != (result * v20) >> 63)
      {
        goto LABEL_81;
      }

      v13 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v13)
      {
        goto LABEL_82;
      }

      v13 = __OFADD__(v26, 3);
      v27 = v26 + 3;
      if (v13)
      {
        goto LABEL_83;
      }

      a1 = v46;
      if (*v19 < *(v46 + v27))
      {
        goto LABEL_50;
      }

      v28 = sub_1AF0A7B60();
      result = sub_1AF0A7B40();
      v29 = v28 * result;
      if ((v28 * result) >> 64 != (v28 * result) >> 63)
      {
        goto LABEL_86;
      }

      v30 = v29 * v21;
      if ((v29 * v21) >> 64 != (v29 * v21) >> 63)
      {
        goto LABEL_87;
      }

      result = sub_1AF0A7B50();
      v31 = result * v5;
      if ((result * v5) >> 64 != (result * v5) >> 63)
      {
        goto LABEL_88;
      }

      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_89;
      }

      v13 = __OFADD__(v32, 3);
      v33 = v32 + 3;
      if (v13)
      {
        goto LABEL_90;
      }

      if (*v19 < *(v46 + v33))
      {
LABEL_50:
        v34 = 0;
        v35 = *v50;
        if (*v50 >= v5)
        {
          v35 = v5;
        }

        *v50 = v35;
        v36 = *v49;
        if (*v49 <= v5)
        {
          v36 = v5;
        }

        *v49 = v36;
        v37 = *v48;
        if (*v48 >= v4)
        {
          v37 = v4;
        }

        *v48 = v37;
        v38 = *v47;
        if (*v47 <= v4)
        {
          v38 = v4;
        }

        *v47 = v38;
        goto LABEL_60;
      }

LABEL_59:
      v34 = 1;
LABEL_60:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AF080A38(0, *(v52 + 2) + 1, 1, v52);
      }

      v40 = *(v52 + 2);
      v39 = *(v52 + 3);
      if (v40 >= v39 >> 1)
      {
        v52 = sub_1AF080A38((v39 > 1), v40 + 1, 1, v52);
      }

      ++v5;
      *(v52 + 2) = v40 + 1;
      v52[v40 + 32] = v34;
      if (v51 == v5)
      {
        goto LABEL_67;
      }
    }
  }

  return result;
}

void sub_1AF07F0B0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v8 = v2[3];
  v7 = v2[4];
  sub_1AF080194(1, 1, v5, v6, v8, v7);
  v10 = v9;
  sub_1AF080194(0, 1, v5, v6, v8, v7);
  v12 = v11;
  sub_1AF080194(1, 0, v5, v6, v8, v7);
  v14 = v13;
  sub_1AF080194(0, 0, v5, v6, v8, v7);
  v16 = v12 - v10;
  if (__OFSUB__(v12, v10))
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  v19 = v15 - v14;
  if (__OFSUB__(v15, v14))
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v17 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v17)
  {
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v21 = v18;
  v22 = v20;
  v147.origin.x = v10;
  v147.origin.y = v14;
  v147.size.width = v18;
  v147.size.height = v20;
  Width = CGRectGetWidth(v147);
  v148.origin.x = v10;
  v23 = v14;
  v148.origin.y = v14;
  v148.size.width = v21;
  v148.size.height = v22;
  if (CGRectGetHeight(v148) >= Width)
  {
    v151.origin.x = v10;
    v151.origin.y = v14;
    v151.size.width = v21;
    v151.size.height = v22;
    Height = CGRectGetHeight(v151);
    v152.origin.x = v5;
    v152.origin.y = v6;
    v152.size.width = v8;
    v152.size.height = v7;
    v25 = CGRectGetHeight(v152);
  }

  else
  {
    v149.origin.x = v10;
    v149.origin.y = v14;
    v149.size.width = v21;
    v149.size.height = v22;
    Height = CGRectGetWidth(v149);
    v150.origin.x = v5;
    v150.origin.y = v6;
    v150.size.width = v8;
    v150.size.height = v7;
    v25 = CGRectGetWidth(v150);
  }

  v26 = Height / v25 < 0.95;
  if (Height / v25 >= 0.95)
  {
    v27 = v10;
  }

  else
  {
    v27 = v5;
  }

  if (v26)
  {
    v23 = v6;
    v21 = v8;
    v22 = v7;
  }

  v153.origin.x = v5;
  v153.origin.y = v6;
  v153.size.width = v8;
  v153.size.height = v7;
  MinX = CGRectGetMinX(v153);
  v154.origin.x = v5;
  v154.origin.y = v6;
  v154.size.width = v8;
  v154.size.height = v7;
  MaxX = CGRectGetMaxX(v154);
  v155.origin.x = v5;
  v155.origin.y = v6;
  v155.size.width = v8;
  v155.size.height = v7;
  MinY = CGRectGetMinY(v155);
  v156.origin.x = v5;
  v156.origin.y = v6;
  v156.size.width = v8;
  v156.size.height = v7;
  MaxY = CGRectGetMaxY(v156);
  v157.origin.x = v27;
  v157.origin.y = v23;
  v157.size.width = v21;
  v157.size.height = v22;
  v28 = CGRectGetMinX(v157);
  v158.origin.x = v27;
  v158.origin.y = v23;
  v158.size.width = v21;
  v158.size.height = v22;
  v29 = CGRectGetMaxX(v158);
  v159.origin.x = v27;
  v159.origin.y = v23;
  v159.size.width = v21;
  v159.size.height = v22;
  v126 = CGRectGetMinY(v159);
  v160.origin.x = v27;
  v160.origin.y = v23;
  v160.size.width = v21;
  v160.size.height = v22;
  v125 = CGRectGetMaxY(v160);
  v161.origin.x = v27;
  v161.origin.y = v23;
  v161.size.width = v21;
  v161.size.height = v22;
  v30 = CGRectGetWidth(v161);
  v162.origin.x = v27;
  v162.origin.y = v23;
  v162.size.width = v21;
  v162.size.height = v22;
  v124 = CGRectGetHeight(v162);
  v163.origin.x = v27;
  v163.origin.y = v23;
  v163.size.width = v21;
  v163.size.height = v22;
  v31 = CGRectGetHeight(v163);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_236;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  *&rect.origin.x = sub_1AF081DE4(a1, v31);
  v164.origin.x = v27;
  v164.origin.y = v23;
  v164.size.width = v21;
  v164.size.height = v22;
  v32 = CGRectGetWidth(v164);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  if (!a1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v33 = sub_1AF0A7D00();
  v34 = v33;
  *(v33 + 16) = a1;
  v35 = v32;
  v36 = (v33 + 32);
  if (a1 <= 3)
  {
    v37 = 0;
LABEL_27:
    v41 = a1 - v37;
    do
    {
      *v36++ = v35;
      --v41;
    }

    while (v41);
    goto LABEL_29;
  }

  v37 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  v36 += a1 & 0x7FFFFFFFFFFFFFFCLL;
  v38 = vdupq_n_s64(v35);
  v39 = (v33 + 48);
  v40 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v39[-1] = v38;
    *v39 = v38;
    v39 += 2;
    v40 -= 4;
  }

  while (v40);
  if (v37 != a1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v165.origin.x = v27;
  v165.origin.y = v23;
  v165.size.width = v21;
  v165.size.height = v22;
  v42 = CGRectGetWidth(v165);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v123 = a2;
  v129 = a1;
  if (!a1)
  {
    v136 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v43 = sub_1AF0A7D00();
  *(v43 + 16) = a1;
  v44 = v42;
  v45 = (v43 + 32);
  v136 = v43;
  if (a1 <= 3)
  {
    v46 = 0;
LABEL_39:
    v50 = a1 - v46;
    do
    {
      *v45++ = v44;
      --v50;
    }

    while (v50);
    goto LABEL_41;
  }

  v46 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  v45 += a1 & 0x7FFFFFFFFFFFFFFCLL;
  v47 = vdupq_n_s64(v44);
  v48 = (v43 + 48);
  v49 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v48[-1] = v47;
    *v48 = v47;
    v48 += 2;
    v49 -= 4;
  }

  while (v49);
  if (v46 != a1)
  {
    goto LABEL_39;
  }

LABEL_41:
  v138 = *(*&rect.origin.x + 16);
  if (v138)
  {
    if (v23 <= -9.22337204e18)
    {
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

    if (v23 >= 9.22337204e18)
    {
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_248;
    }

    if (v27 <= -9.22337204e18)
    {
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    if (v27 >= 9.22337204e18)
    {
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v51 = 0;
    v141 = v23;
    v52 = v27;
    while (v51 < *(*&rect.origin.x + 16))
    {
      v53 = *(*&rect.origin.x + 32 + 8 * v51);
      v54 = v141 + v53;
      if (__OFADD__(v141, v53))
      {
        goto LABEL_193;
      }

      v166.origin.x = v27;
      v166.origin.y = v23;
      v166.size.width = v21;
      v166.size.height = v22;
      v55 = CGRectGetMaxX(v166);
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_194;
      }

      if (v55 <= -9.22337204e18)
      {
        goto LABEL_195;
      }

      if (v55 >= 9.22337204e18)
      {
        goto LABEL_196;
      }

      if (v52 < v55)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_216;
        }

        if (v54 >= *(*v2 + 16))
        {
          goto LABEL_217;
        }

        v56 = *(*v2 + 8 * v54 + 32);
        v57 = v56 + 32;
        v58 = *(v56 + 16);
        if (v52 <= v58)
        {
          v59 = v58;
        }

        else
        {
          v59 = v27;
        }

        v60 = v27;
        while (1)
        {
          if (v59 == v60)
          {
            goto LABEL_189;
          }

          if ((*(v57 + v60) & 1) == 0)
          {
            break;
          }

          if (v55 == ++v60)
          {
            goto LABEL_69;
          }
        }

        if (__OFSUB__(v60, v52))
        {
          goto LABEL_219;
        }

        if (v51 >= *(v34 + 16))
        {
          goto LABEL_220;
        }

        *(v34 + 32 + 8 * v51) = v60 - v52;
      }

LABEL_69:
      v167.origin.x = v27;
      v167.origin.y = v23;
      v167.size.width = v21;
      v167.size.height = v22;
      v61 = CGRectGetMaxX(v167);
      if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_197;
      }

      if (v61 <= -9.22337204e18)
      {
        goto LABEL_198;
      }

      if (v61 >= 9.22337204e18)
      {
        goto LABEL_199;
      }

      v62 = v61 - 1;
      if (__OFSUB__(v61, 1))
      {
        goto LABEL_200;
      }

      v63 = 0;
      v64 = v51 + 1;
      do
      {
        v65 = v62;
        if (v62 <= v52)
        {
          if ((v62 != v52) | v63 & 1)
          {
            goto LABEL_49;
          }

          v63 = 1;
          v62 = v27;
          if ((v54 & 0x8000000000000000) != 0)
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }
        }

        else
        {
          --v62;
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_181;
          }
        }

        if (v54 >= *(*v2 + 16))
        {
          goto LABEL_182;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        v66 = *(*v2 + 8 * v54 + 32);
        if (v65 >= *(v66 + 16))
        {
          goto LABEL_184;
        }
      }

      while ((*(v66 + v65 + 32) & 1) != 0);
      v168.origin.x = v27;
      v168.origin.y = v23;
      v168.size.width = v21;
      v168.size.height = v22;
      v67 = CGRectGetMaxX(v168);
      if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_201;
      }

      if (v67 <= -9.22337204e18)
      {
        goto LABEL_202;
      }

      if (v67 >= 9.22337204e18)
      {
        goto LABEL_203;
      }

      v68 = v67 - v65;
      if (__OFSUB__(v67, v65))
      {
        goto LABEL_204;
      }

      v17 = __OFSUB__(v68, 1);
      v69 = v68 - 1;
      if (v17)
      {
        goto LABEL_205;
      }

      if (v51 >= *(v136 + 16))
      {
        goto LABEL_206;
      }

      *(v136 + 32 + 8 * v51) = v69;
LABEL_49:
      ++v51;
      if (v64 == v138)
      {
        goto LABEL_90;
      }
    }

LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_90:
  v169.origin.x = v27;
  v169.origin.y = v23;
  v169.size.width = v21;
  v169.size.height = v22;
  v70 = CGRectGetWidth(v169);
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  if (v70 >= 9.22337204e18)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  sub_1AF07DD20(0, *&rect.origin.x, v34, v136, v70, &rect.origin.y, (v28 - MinX - (MaxX + -1.0 - (v29 + -1.0))) / v30);
  y_low = LOBYTE(rect.origin.y);
  size = rect.size;
  v72 = v144;
  v73 = v145;
  v74 = v146;
  v170.origin.x = v27;
  v170.origin.y = v23;
  v170.size.width = v21;
  v170.size.height = v22;
  v75 = CGRectGetWidth(v170);
  if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (v75 >= 9.22337204e18)
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  *&rect.origin.x = sub_1AF081DE4(v129, v75);
  v171.origin.x = v27;
  v171.origin.y = v23;
  v171.size.width = v21;
  v171.size.height = v22;
  v76 = CGRectGetHeight(v171);
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  if (v76 >= 9.22337204e18)
  {
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  if (!v129)
  {
    v78 = MEMORY[0x1E69E7CC0];
    goto LABEL_108;
  }

  v77 = sub_1AF0A7D00();
  v78 = v77;
  *(v77 + 16) = v129;
  v79 = v76;
  v80 = (v77 + 32);
  if (v129 <= 3)
  {
    v81 = 0;
LABEL_106:
    v85 = v129 - v81;
    do
    {
      *v80++ = v79;
      --v85;
    }

    while (v85);
    goto LABEL_108;
  }

  v81 = v129 & 0x7FFFFFFFFFFFFFFCLL;
  v80 += v129 & 0x7FFFFFFFFFFFFFFCLL;
  v82 = vdupq_n_s64(v79);
  v83 = (v77 + 48);
  v84 = v129 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v83[-1] = v82;
    *v83 = v82;
    v83 += 2;
    v84 -= 4;
  }

  while (v84);
  if (v81 != v129)
  {
    goto LABEL_106;
  }

LABEL_108:
  v172.origin.x = v27;
  v172.origin.y = v23;
  v172.size.width = v21;
  v172.size.height = v22;
  v86 = CGRectGetHeight(v172);
  if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  if (v86 >= 9.22337204e18)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v131 = v72;
  v135 = v78;
  if (!v129)
  {
    v137 = MEMORY[0x1E69E7CC0];
    goto LABEL_120;
  }

  v87 = sub_1AF0A7D00();
  *(v87 + 16) = v129;
  v88 = v86;
  v89 = (v87 + 32);
  v137 = v87;
  if (v129 <= 3)
  {
    v90 = 0;
LABEL_118:
    v94 = v129 - v90;
    do
    {
      *v89++ = v88;
      --v94;
    }

    while (v94);
    goto LABEL_120;
  }

  v90 = v129 & 0x7FFFFFFFFFFFFFFCLL;
  v89 += v129 & 0x7FFFFFFFFFFFFFFCLL;
  v91 = vdupq_n_s64(v88);
  v92 = (v87 + 48);
  v93 = v129 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v92[-1] = v91;
    *v92 = v91;
    v92 += 2;
    v93 -= 4;
  }

  while (v93);
  if (v90 != v129)
  {
    goto LABEL_118;
  }

LABEL_120:
  v139 = *(*&rect.origin.x + 16);
  if (v139)
  {
    if (v27 <= -9.22337204e18)
    {
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    if (v27 >= 9.22337204e18)
    {
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_265;
    }

    if (v23 <= -9.22337204e18)
    {
LABEL_266:
      __break(1u);
      goto LABEL_267;
    }

    if (v23 >= 9.22337204e18)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    v95 = 0;
    v142 = v27;
    v134 = v78 + 32;
    v96 = v23;
    while (2)
    {
      if (v95 < *(*&rect.origin.x + 16))
      {
        v98 = *(*&rect.origin.x + 32 + 8 * v95);
        v99 = v142 + v98;
        if (!__OFADD__(v142, v98))
        {
          v173.origin.x = v27;
          v173.origin.y = v23;
          v173.size.width = v21;
          v173.size.height = v22;
          v100 = CGRectGetMaxY(v173);
          if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v100 > -9.22337204e18)
            {
              if (v100 < 9.22337204e18)
              {
                if (v96 < v100)
                {
                  if ((v99 & 0x8000000000000000) != 0)
                  {
LABEL_218:
                    __break(1u);
LABEL_219:
                    __break(1u);
LABEL_220:
                    __break(1u);
LABEL_221:
                    __break(1u);
                    goto LABEL_222;
                  }

                  if (v96 <= *(*v2 + 16))
                  {
                    v101 = *(*v2 + 16);
                  }

                  else
                  {
                    v101 = v23;
                  }

                  v102 = v23;
                  while (1)
                  {
                    if (v101 == v102)
                    {
                      goto LABEL_190;
                    }

                    v103 = *(*v2 + 32 + 8 * v102);
                    if (v99 >= *(v103 + 16))
                    {
                      goto LABEL_191;
                    }

                    if ((*(v103 + v99 + 32) & 1) == 0)
                    {
                      break;
                    }

                    if (v100 == ++v102)
                    {
                      goto LABEL_150;
                    }
                  }

                  if (__OFSUB__(v102, v96))
                  {
                    goto LABEL_227;
                  }

                  if (v95 >= *(v135 + 16))
                  {
                    goto LABEL_228;
                  }

                  *(v134 + 8 * v95) = v102 - v96;
                }

LABEL_150:
                v174.origin.x = v27;
                v174.origin.y = v23;
                v174.size.width = v21;
                v174.size.height = v22;
                v104 = CGRectGetMaxY(v174);
                if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v104 > -9.22337204e18)
                  {
                    if (v104 < 9.22337204e18)
                    {
                      v105 = v104 - 1;
                      if (!__OFSUB__(v104, 1))
                      {
                        v106 = 0;
                        v107 = v95 + 1;
                        do
                        {
                          v108 = v105;
                          if (v105 <= v96)
                          {
                            if ((v105 != v96) | v106 & 1)
                            {
                              goto LABEL_130;
                            }

                            v106 = 1;
                            v105 = v23;
                            if ((v108 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_185;
                            }
                          }

                          else
                          {
                            --v105;
                            if ((v108 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_185;
                            }
                          }

                          if (v108 >= *(*v2 + 16))
                          {
                            goto LABEL_186;
                          }

                          if ((v99 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_187;
                          }

                          v109 = *(*v2 + 8 * v108 + 32);
                          if (v99 >= *(v109 + 16))
                          {
                            goto LABEL_188;
                          }
                        }

                        while ((*(v109 + v99 + 32) & 1) != 0);
                        v110 = v27;
                        v111 = v23;
                        v112 = v21;
                        v113 = v22;
                        if (v108)
                        {
                          v114 = CGRectGetMaxY(*&v110);
                          if ((*&v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_221;
                          }

                          if (v114 <= -9.22337204e18)
                          {
LABEL_222:
                            __break(1u);
LABEL_223:
                            __break(1u);
                            goto LABEL_224;
                          }

                          if (v114 >= 9.22337204e18)
                          {
                            goto LABEL_223;
                          }

                          v115 = v114 - v108;
                          if (__OFSUB__(v114, v108))
                          {
LABEL_224:
                            __break(1u);
LABEL_225:
                            __break(1u);
LABEL_226:
                            __break(1u);
LABEL_227:
                            __break(1u);
LABEL_228:
                            __break(1u);
LABEL_229:
                            __break(1u);
                            goto LABEL_230;
                          }

                          v17 = __OFSUB__(v115, 1);
                          v97 = v115 - 1;
                          if (v17)
                          {
                            goto LABEL_225;
                          }

                          if (v95 >= *(v137 + 16))
                          {
                            goto LABEL_226;
                          }
                        }

                        else
                        {
                          v116 = CGRectGetHeight(*&v110);
                          if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_229;
                          }

                          if (v116 <= -9.22337204e18)
                          {
LABEL_230:
                            __break(1u);
LABEL_231:
                            __break(1u);
                            goto LABEL_232;
                          }

                          if (v116 >= 9.22337204e18)
                          {
                            goto LABEL_231;
                          }

                          if (v95 >= *(v137 + 16))
                          {
                            __break(1u);
                            goto LABEL_177;
                          }

                          v97 = v116;
                        }

                        *(v137 + 32 + 8 * v95) = v97;
LABEL_130:
                        ++v95;
                        if (v107 == v139)
                        {
                          goto LABEL_177;
                        }

                        continue;
                      }

                      goto LABEL_215;
                    }

LABEL_214:
                    __break(1u);
LABEL_215:
                    __break(1u);
LABEL_216:
                    __break(1u);
LABEL_217:
                    __break(1u);
                    goto LABEL_218;
                  }

LABEL_213:
                  __break(1u);
                  goto LABEL_214;
                }

LABEL_212:
                __break(1u);
                goto LABEL_213;
              }

LABEL_211:
              __break(1u);
              goto LABEL_212;
            }

LABEL_210:
            __break(1u);
            goto LABEL_211;
          }

LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      break;
    }

LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

LABEL_177:
  v175.origin.x = v27;
  v175.origin.y = v23;
  v175.size.width = v21;
  v175.size.height = v22;
  v117 = CGRectGetHeight(v175);
  if ((*&v117 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  if (v117 <= -9.22337204e18)
  {
LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  if (v117 < 9.22337204e18)
  {
    sub_1AF07DD20(1, *&rect.origin.x, v135, v137, v117, &rect.origin.y, (v126 - MinY - (MaxY + -1.0 - (v125 + -1.0))) / v124);
    v118 = v144;
    v119 = v145;
    v120 = v146;
    v121 = LOBYTE(rect.origin.y) & 1;
    v122 = rect.size;
    *v123 = v27;
    *(v123 + 8) = v23;
    *(v123 + 16) = v21;
    *(v123 + 24) = v22;
    *(v123 + 32) = y_low & 1;
    *(v123 + 40) = size;
    *(v123 + 56) = v131;
    *(v123 + 64) = v73;
    *(v123 + 72) = v74;
    *(v123 + 80) = v121;
    *(v123 + 88) = v122;
    *(v123 + 104) = v118;
    *(v123 + 112) = v119;
    *(v123 + 120) = v120;
    return;
  }

LABEL_270:
  __break(1u);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AF080084(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AF0800CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AF080134(uint64_t a1, int a2)
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

uint64_t sub_1AF080154(uint64_t result, int a2, int a3)
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

void sub_1AF080194(char a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*&a3);
  v84.origin.x = a3;
  v84.origin.y = a4;
  v84.size.width = a5;
  v84.size.height = a6;
  MaxX = CGRectGetMaxX(v84);
  v85.origin.x = a3;
  v85.origin.y = a4;
  v85.size.width = a5;
  v85.size.height = a6;
  MinY = CGRectGetMinY(v85);
  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  MaxY = CGRectGetMaxY(v86);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = CGRectGetWidth(*&v17) * 0.2;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v18 = MinX;
  if (v17 >= 9.22337204e18)
  {
    __break(1u);
LABEL_6:
    v17 = CGRectGetHeight(*&v17) * 0.2;
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    if (v17 <= -9.22337204e18)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v18 = MinY;
    if (v17 >= 9.22337204e18)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v21 = MaxX + -1.0;
  v22 = MaxY + -1.0;
  if (a2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_152;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v24 = v17;
  v25 = v18;
  v26 = v23;
  v66 = v18;
  v67 = v17;
  v65 = v23;
  if (a1)
  {
    v27 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v73 = 0x7FFFFFFFFFFFFFFFLL;
    v76 = 1;
  }

  else
  {
    v27 = v26 - v24;
    if (__OFSUB__(v26, v24))
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v76 = -1;
    v73 = 0x8000000000000000;
    v25 = v23;
  }

  v28 = 0;
  v81 = 0;
  v82 = 0;
  v30 = (*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v31 = v21;
  v32 = MinY;
  v34 = (*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v74 = v34;
  v75 = v30;
  v71 = -v32;
  v72 = 8 * v32 + 32;
  v80 = MinY;
  v70 = v22 - v32;
  v35 = 1;
  v77 = a2;
  v78 = a1;
  v79 = v27;
  while (2)
  {
    v69 = v35;
    v68 = v28;
LABEL_40:
    v38 = v27 >= v25;
    if (a1)
    {
      v38 = v25 >= v27;
    }

    if (!v38)
    {
      v39 = v25 + v76;
      if (__OFADD__(v25, v76))
      {
        BYTE4(v81) = 0;
        v82 = 0x8000000000000000;
        v39 = v73;
        if (a2)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v82 = 0;
        BYTE4(v81) = 1;
        if (a2)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_74;
    }

    if (!((v25 != v27) | v81 & 1) && BYTE4(v81) & 1 | (v82 != 0x8000000000000000))
    {
      LOBYTE(v81) = 1;
      v39 = v25;
      if (a2)
      {
LABEL_46:
        if (MinY <= -9.22337204e18)
        {
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (MinY >= 9.22337204e18)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (v74)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v22 <= -9.22337204e18)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (v22 >= 9.22337204e18)
        {
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v83 = v39;
        if (v22 <= v80)
        {
          v36 = MEMORY[0x1E69E7CC0];
          v37 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v37 > 1)
          {
            goto LABEL_121;
          }

LABEL_38:
          if (!v37)
          {
            goto LABEL_39;
          }

LABEL_115:
          v28 = *(v36 + 4);

          v63 = v28;
          Height = CGRectGetHeight(*(v6 + 8));
LABEL_116:
          if (Height * 0.17 <= v63)
          {
            return;
          }

          v35 = 0;
          v25 = v83;
          if (v69)
          {
            continue;
          }

          if (!__OFSUB__(v28, 3))
          {
            v35 = 0;
            if (v68 >= v28 - 3)
            {
              continue;
            }

            return;
          }

LABEL_162:
          __break(1u);
          return;
        }

        if (v25 < 0)
        {
          goto LABEL_148;
        }

        v40 = 0;
        v41 = *(*v6 + 16);
        if (v41 <= v80)
        {
          v41 = MinY;
        }

        v42 = *v6 + v72;
        v43 = v70;
        v44 = v71 + v41;
        v36 = MEMORY[0x1E69E7CC0];
        while (v44)
        {
          if (*(*v42 + 16) <= v25)
          {
            goto LABEL_136;
          }

          if (*(*v42 + v25 + 32) == 1)
          {
            if (v40)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = sub_1AF07BE64(0, *(v36 + 2) + 1, 1, v36);
              }

              v46 = *(v36 + 2);
              v45 = *(v36 + 3);
              if (v46 >= v45 >> 1)
              {
                v36 = sub_1AF07BE64((v45 > 1), v46 + 1, 1, v36);
              }

              *(v36 + 2) = v46 + 1;
              *&v36[8 * v46 + 32] = v40;
              v40 = 0;
            }
          }

          else if (__OFADD__(v40++, 1))
          {
            goto LABEL_137;
          }

          v48 = *(v36 + 2);
          if (v48 > 1)
          {
            goto LABEL_121;
          }

          v42 += 8;
          --v44;
          if (!--v43)
          {
            if (!v40)
            {
              a2 = v77;
              a1 = v78;
              v27 = v79;
              if (!v48)
              {
                goto LABEL_39;
              }

              goto LABEL_115;
            }

            a2 = v77;
            a1 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_1AF07BE64(0, *(v36 + 2) + 1, 1, v36);
            }

            v62 = *(v36 + 2);
            v61 = *(v36 + 3);
            v37 = v62 + 1;
            if (v62 >= v61 >> 1)
            {
              v36 = sub_1AF07BE64((v61 > 1), v62 + 1, 1, v36);
            }

            *(v36 + 2) = v37;
            *&v36[8 * v62 + 32] = v40;
            v27 = v79;
            if (v37 <= 1)
            {
              goto LABEL_38;
            }

            goto LABEL_121;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

LABEL_74:
      if (MinX > -9.22337204e18)
      {
        if (MinX < 9.22337204e18)
        {
          if (!v75)
          {
            if (v21 > -9.22337204e18)
            {
              if (v21 < 9.22337204e18)
              {
                v83 = v39;
                v49 = 0;
                v50 = MinX;
                v51 = MEMORY[0x1E69E7CC0];
LABEL_80:
                v52 = 0;
                v53 = v50;
                while (1)
                {
                  v54 = v52;
                  if (v53 >= v31)
                  {
                    if ((v53 != v31) | v49 & 1)
                    {
                      if (v52)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v51 = sub_1AF07BE64(0, *(v51 + 2) + 1, 1, v51);
                        }

                        v59 = *(v51 + 2);
                        v58 = *(v51 + 3);
                        v60 = v59 + 1;
                        if (v59 >= v58 >> 1)
                        {
                          v51 = sub_1AF07BE64((v58 > 1), v59 + 1, 1, v51);
                        }

                        *(v51 + 2) = v60;
                        *&v51[8 * v59 + 32] = v54;
                        v27 = v79;
                      }

                      else
                      {
                        v60 = *(v51 + 2);
                        v27 = v79;
                      }

                      if (v60 <= 1)
                      {
                        if (v60)
                        {
                          v28 = *(v51 + 4);

                          v63 = v28;
                          Height = CGRectGetWidth(*(v6 + 8));
                          goto LABEL_116;
                        }

LABEL_39:

                        v25 = v83;
                        goto LABEL_40;
                      }

LABEL_121:

                      return;
                    }

                    v49 = 1;
                    v50 = v21;
                    if (v25 < 0)
                    {
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    v50 = v53 + 1;
                    if (v25 < 0)
                    {
                      goto LABEL_127;
                    }
                  }

                  if (*(*v6 + 16) <= v25)
                  {
                    goto LABEL_128;
                  }

                  if (v53 < 0)
                  {
                    goto LABEL_129;
                  }

                  v55 = *(*v6 + 8 * v25 + 32);
                  if (v53 >= *(v55 + 16))
                  {
                    goto LABEL_130;
                  }

                  if (*(v55 + v53 + 32) == 1)
                  {
                    v52 = 0;
                    v53 = v50;
                    if (v54)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v51 = sub_1AF07BE64(0, *(v51 + 2) + 1, 1, v51);
                      }

                      v57 = *(v51 + 2);
                      v56 = *(v51 + 3);
                      if (v57 >= v56 >> 1)
                      {
                        v51 = sub_1AF07BE64((v56 > 1), v57 + 1, 1, v51);
                      }

                      *(v51 + 2) = v57 + 1;
                      *&v51[8 * v57 + 32] = v54;
                      a2 = v77;
                      a1 = v78;
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    v53 = v50;
                    v52 = v54 + 1;
                    if (__OFADD__(v54, 1))
                    {
                      goto LABEL_134;
                    }
                  }
                }
              }

              goto LABEL_146;
            }

LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          goto LABEL_142;
        }

LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      goto LABEL_139;
    }

    break;
  }

  if (a1)
  {
    if (!__OFADD__(v66, v67))
    {
      return;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }

  if (__OFSUB__(v65, v67))
  {
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }
}

char *sub_1AF080A38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AF080B2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D970);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D978);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

CGImageRef sub_1AF080C9C(double a1, double a2)
{
  v3 = v2;
  Count = CGImageSourceGetCount(v2);
  if (Count < 2)
  {
    goto LABEL_34;
  }

  v7 = Count;
  v30 = 0;
  v32 = 0;
  v8 = 0;
  v9 = *MEMORY[0x1E696DED8];
  v28 = *MEMORY[0x1E696DEC8];
  v10 = 0.0;
  v29 = 1;
  v31 = 1;
  v11 = 0.0;
  v26 = 1;
  v27 = 1;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = CGImageSourceCopyPropertiesAtIndex(v3, v8, 0);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v34[0] = 0;
        type metadata accessor for CFString();
        sub_1AF0812D0(&qword_1EB62D990);
        sub_1AF0A7C20();

        v16 = v34[0];
        if (v34[0])
        {
          if (*(v34[0] + 16) && (v17 = sub_1AF08116C(v9), (v18 & 1) != 0) && (sub_1AF08120C(*(v16 + 56) + 32 * v17, v34), (swift_dynamicCast() & 1) != 0) && *(v16 + 16) && (v19 = v33, v20 = sub_1AF08116C(v28), (v21 & 1) != 0))
          {
            sub_1AF08120C(*(v16 + 56) + 32 * v20, v34);

            if (swift_dynamicCast())
            {
              v22 = v33;
              if (v33 == a1 && v33 == a2)
              {
                v24 = v3;
                PrimaryImageIndex = v8;
                return CGImageSourceCreateImageAtIndex(v24, PrimaryImageIndex, 0);
              }

              if (v33 <= a1 || v33 <= a2)
              {
                if ((v27 & 1) != 0 || (v27 = 0, v10 < v33) && v11 < v33)
                {
                  v29 = 0;
                  v27 = 0;
                  v30 = v8;
                  v10 = v33;
                  v11 = v33;
                }
              }

              else
              {
                if ((v26 & 1) != 0 || v33 - a1 < v12 - a1 || v33 - a2 < v13 - a2)
                {
                  v31 = 0;
                  v26 = 0;
                  v32 = v8;
                  goto LABEL_23;
                }

                v26 = 0;
              }
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    v19 = v12;
    v22 = v13;
LABEL_23:
    ++v8;
    v12 = v19;
    v13 = v22;
  }

  while (v7 != v8);
  if (v31)
  {
    PrimaryImageIndex = v30;
  }

  else
  {
    PrimaryImageIndex = v32;
  }

  if ((v31 & 1 & v29) == 1)
  {
LABEL_34:
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v3);
  }

  v24 = v3;
  return CGImageSourceCreateImageAtIndex(v24, PrimaryImageIndex, 0);
}

void type metadata accessor for CFString()
{
  if (!qword_1EB62D998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB62D998);
    }
  }
}

uint64_t sub_1AF081098()
{
  sub_1AF0A7E70();
  swift_getWitnessTable();
  sub_1AF0A7BE0();
  return sub_1AF0A7E90();
}

uint64_t sub_1AF081100()
{
  swift_getWitnessTable();

  return sub_1AF0A7BD0();
}

unint64_t sub_1AF08116C(uint64_t a1)
{
  sub_1AF0A7E70();
  type metadata accessor for CFString();
  sub_1AF0812D0(&qword_1EB62D9A8);
  sub_1AF0A7BE0();
  v2 = sub_1AF0A7E90();

  return sub_1AF081314(a1, v2);
}

uint64_t sub_1AF08120C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AF0812D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF081314(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_1AF0812D0(&qword_1EB62D9A8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1AF0A7BD0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t centeredImageForEmoji(_:frameSize:contentsScale:transformOut:isLowerLeftOrigin:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4, double a5, double a6, double a7)
{
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  v14 = sub_1AF07AD68();
  v15 = sub_1AF07AD68();
  sub_1AF08509C(a1, a2, v22, v14 & 1, a4, v15 & 1, &v18, a5, a6, a7);
  result = v18;
  if (v18)
  {
    v17 = v20;
    *a3 = v19;
    a3[1] = v17;
    a3[2] = v21;
  }

  return result;
}

uint64_t centeredImageForImageSource(_:frameSize:contentsScale:transformOut:isLowerLeftOrigin:)(double a1, double a2, double a3, uint64_t a4, _OWORD *a5, char a6)
{
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  v11 = sub_1AF07AD68();
  sub_1AF084748(v18, v11 & 1, a6, &v14, a1, a2, a3);
  result = v14;
  if (v14)
  {
    v13 = v16;
    *a5 = v15;
    a5[1] = v13;
    a5[2] = v17;
  }

  return result;
}

double getTransformForCentering(_:frameSize:contentsScale:isLowerLeftOrigin:)@<D0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  v12 = sub_1AF07AD68();
  sub_1AF084C0C(a1, v17, v12 & 1, a2, v15, a4, a5, a6);
  v13 = v15[1];
  *a3 = v15[0];
  a3[1] = v13;
  result = *&v16;
  a3[2] = v16;
  return result;
}

uint64_t centeredImageForEmoji(_:in:frameSize:contentsScale:transformOut:isLowerLeftOrigin:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  *v26 = a5;
  *&v26[1] = a6;
  *&v26[2] = a7;
  *&v26[3] = a8;
  v27 = 0;
  v18 = sub_1AF07AD68();
  v19 = sub_1AF07AD68();
  sub_1AF08509C(a1, a2, v26, v18 & 1, a4, v19 & 1, &v22, a9, a10, a11);
  result = v22;
  if (v22)
  {
    v21 = v24;
    *a3 = v23;
    a3[1] = v21;
    a3[2] = v25;
  }

  return result;
}

uint64_t centeredImageForImageSource(_:in:frameSize:contentsScale:transformOut:isLowerLeftOrigin:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, _OWORD *a9, char a10)
{
  *v22 = a1;
  *&v22[1] = a2;
  *&v22[2] = a3;
  *&v22[3] = a4;
  v23 = 0;
  v15 = sub_1AF07AD68();
  sub_1AF084748(v22, v15 & 1, a10, &v18, a5, a6, a7);
  result = v18;
  if (v18)
  {
    v17 = v20;
    *a9 = v19;
    a9[1] = v17;
    a9[2] = v21;
  }

  return result;
}

double getTransformForCentering(_:in:frameSize:contentsScale:isLowerLeftOrigin:)@<D0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  *v21 = a4;
  *&v21[1] = a5;
  *&v21[2] = a6;
  *&v21[3] = a7;
  v22 = 0;
  v16 = sub_1AF07AD68();
  sub_1AF084C0C(a1, v21, v16 & 1, a2, v19, a8, a9, a10);
  v17 = v19[1];
  *a3 = v19[0];
  a3[1] = v17;
  result = *&v20;
  a3[2] = v20;
  return result;
}

void sub_1AF08180C(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a8;
  a1[7] = a9;
}

void sub_1AF081820(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = a3 / *(v3 + 40);
  if (v8 != a2 / *(v3 + 32))
  {
    a2 = *(v3 + 32);
    a3 = *(v3 + 40);
    goto LABEL_16;
  }

  v9 = round(v4 * v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = round(v5 * v8);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = round(v7 * v8);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = round(v6 * v8);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 < 9.22337204e18)
  {
    v5 = v10;
    v4 = v9;
    v7 = v11;
    v6 = v12;
LABEL_16:
    v13 = *(v3 + 48);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    *(a1 + 48) = v13;
    return;
  }

LABEL_28:
  __break(1u);
}

double sub_1AF0819C0()
{
  x = v0->origin.x;
  CGRectGetHeight(*v0);
  return x;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AF081A28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF081A48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 sub_1AF081A94@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *sub_1AF08570C();
  sub_1AF0856F4();
  v5 = a1;
  sub_1AF07E7F0(v5, v33);
  sub_1AF07F0B0(v4, &v20);
  v6.n128_u64[0] = v32;
  v6.n128_u64[1] = v20;
  v19 = v6;
  v7 = v22;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v30;
  v12 = v31;
  v13 = v23 & 1;
  v14 = v28 & 1;
  v16 = v24;
  v17 = v29;
  v18 = v21;
  sub_1AF081C9C(v33);
  *a2 = v5;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v14;
  *(a2 + 64) = v17;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  result = v19;
  *(a2 + 96) = v19;
  *(a2 + 112) = v18;
  *(a2 + 128) = v7;
  return result;
}

__n128 sub_1AF081BAC@<Q0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_1AF07E7F0(v5, v33);
  sub_1AF07F0B0(a2, &v20);
  v6.n128_u64[0] = v32;
  v6.n128_u64[1] = v20;
  v19 = v6;
  v7 = v22;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v30;
  v12 = v31;
  v13 = v23 & 1;
  v14 = v28 & 1;
  v16 = v24;
  v17 = v29;
  v18 = v21;
  sub_1AF081C9C(v33);
  *a3 = v5;
  *(a3 + 8) = v13;
  *(a3 + 16) = v16;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v14;
  *(a3 + 64) = v17;
  *(a3 + 80) = v11;
  *(a3 + 88) = v12;
  result = v19;
  *(a3 + 96) = v19;
  *(a3 + 112) = v18;
  *(a3 + 128) = v7;
  return result;
}

double sub_1AF081CF0()
{
  v0 = sub_1AF085700();
  v1 = sub_1AF07DC5C(*v0);
  sub_1AF07DC5C(*v0);
  return v1;
}

double sub_1AF081D7C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  CGImageGetHeight(*v0);
  v6.origin.x = v1;
  v6.origin.y = v2;
  v6.size.width = v3;
  v6.size.height = v4;
  CGRectGetHeight(v6);
  return v1;
}

uint64_t sub_1AF081DE4(uint64_t a1, uint64_t a2)
{
  result = &unk_1F24C9068;
  if (a1 >= 2 && a2 >= 2)
  {
    if (a1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D908);
      result = swift_allocObject();
      *(result + 16) = xmmword_1AF0AD0E0;
      *(result + 32) = 0;
      *(result + 40) = a2 - 1;
      return result;
    }

    v8 = a2;
    v9 = a2 / (a1 + -1.0);
    if (v9 == 0.0)
    {
      goto LABEL_41;
    }

    v4 = MEMORY[0x1E69E7CC0];
    if (v9 <= 0.0)
    {
      v3 = *(MEMORY[0x1E69E7CC0] + 16);
      v2 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = 0;
      v2 = MEMORY[0x1E69E7CC0];
      v13 = 0.0;
      do
      {
        if (__OFADD__(v12, 1))
        {
          goto LABEL_40;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF0821F4(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        v3 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1AF0821F4((v14 > 1), v15 + 1, 1, v2);
        }

        *&v2[8 * v15 + 32] = v13;
        v13 = (v12 + 1) * v9 + 0.0;
        *(v2 + 2) = v3;
        ++v12;
      }

      while (v13 < v8);
    }

    v8 = v8 + -1.0;
    if (v3 < a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v11 = *(v2 + 2);
        v10 = *(v2 + 3);
        v3 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          v2 = sub_1AF0821F4((v10 > 1), v11 + 1, 1, v2);
        }

        *(v2 + 2) = v3;
        *&v2[8 * v11 + 32] = v8;
LABEL_27:
        sub_1AF0822F8(0, v3, 0);
        v16 = 32;
        while (1)
        {
          v8 = *&v2[v16];
          if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v8 <= -9.22337204e18)
          {
            goto LABEL_38;
          }

          if (v8 >= 9.22337204e18)
          {
            goto LABEL_39;
          }

          v18 = *(v4 + 16);
          v17 = *(v4 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1AF0822F8((v17 > 1), v18 + 1, 1);
          }

          *(v4 + 16) = v18 + 1;
          *(v4 + 8 * v18 + 32) = v8;
          v16 += 8;
          if (!--v3)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v2 = sub_1AF0821F4(0, v3 + 1, 1, v2);
      }
    }

    if (v3 == a1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AF0821E0(v2);
        v2 = result;
      }

      if (*(v2 + 2) < a1)
      {
        __break(1u);
        return result;
      }

      *&v2[8 * a1 + 24] = v8;
      v3 = *(v2 + 2);
    }

    if (v3)
    {
      goto LABEL_27;
    }

LABEL_34:

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9B0);
    v20 = sub_1AF082318();
    v21 = sub_1AF07E4A0(v19, v20, MEMORY[0x1E69E6540]);

    return v21;
  }

  return result;
}

void sub_1AF082148(uint64_t a1@<X8>)
{
  v3 = sub_1AF085700();
  v4 = sub_1AF07DC5C(*v3);
  v5 = sub_1AF07DC5C(*v3);
  v6 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

char *sub_1AF0821F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D950);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AF0822F8(char *a1, int64_t a2, char a3)
{
  result = sub_1AF082468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1AF082318()
{
  result = qword_1EB62D9B8;
  if (!qword_1EB62D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB62D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D9B8);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AF0823B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1AF0823F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1AF082468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D908);
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
    v10 = MEMORY[0x1E69E7CC0];
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

EmojiFoundation::EmojiCenteringData __swiftcall EmojiCenteringData.init(font:emojis:)(CTFontRef font, Swift::String emojis)
{
  object = emojis._object;
  countAndFlagsBits = emojis._countAndFlagsBits;
  v5 = v2;
  v6 = font;
  sub_1AF07AD24(v6, v70);
  Size = CTFontGetSize(v6);
  if ((*&Size & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (Size <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v62 = sub_1AF0A7E60();
    __break(1u);
    goto LABEL_39;
  }

  if (Size >= 9.22337204e18)
  {
    goto LABEL_37;
  }

  v66 = v6;
  v67 = v5;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1AF083A3C(MEMORY[0x1E69E7CC0]);
  v77[0] = countAndFlagsBits;
  v77[1] = object;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1AF08462C();
  v10 = sub_1AF0A7D30();
  v11 = *(v10 + 16);
  if (v11)
  {
    v68 = v9;
    v77[0] = v8;
    sub_1AF07C3B0(0, v11, 0);
    v8 = v77[0];
    v12 = (v10 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v16 = *(v12 - 1);
      v15 = *v12;

      v17 = MEMORY[0x1B2715EB0](v13, v14, v16, v15);
      v19 = v18;

      v77[0] = v8;
      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20 >> 1)
      {
        sub_1AF07C3B0((v20 > 1), v21 + 1, 1);
        v8 = v77[0];
      }

      v8[2] = v21 + 1;
      v22 = &v8[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v12 += 4;
      --v11;
    }

    while (v11);

    v9 = v68;
  }

  else
  {
  }

  v23 = v8[2];
  if (v23)
  {
    v24 = 0;
    v25 = Size;
    v26 = v8 + 5;
    v69 = v8[2];
    do
    {
      if (v24 >= v8[2])
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v27 = v25;
      v29 = *(v26 - 1);
      v28 = *v26;

      v30 = sub_1AF07B7A8();
      sub_1AF07B7B0(v29, v28, v30 & 1, 0, 1);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      if (v32)
      {
        v25 = v27;
        if (CGImageGetWidth(v32) == v27 && CGImageGetHeight(v32) == v27)
        {
          v37 = v32;
          sub_1AF081A94(v37, v77);
          sub_1AF082148(&v71);
          v39 = v71;
          v38 = v72;
          v41 = v73;
          v40 = v74;
          v43 = v75;
          v42 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v9;
          v45 = sub_1AF07BB9C(v34, v36);
          v47 = v9;
          v48 = v9[2];
          v49 = (v46 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_33;
          }

          v52 = v46;
          if (v47[3] >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_25;
            }

            v56 = v45;
            sub_1AF0838BC();
            v45 = v56;
            if ((v52 & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_26:
            v54 = v45;

            v9 = v71;
            v55 = (v71[7] + 48 * v54);
            *v55 = v39;
            v55[1] = v38;
            v55[2] = v41;
            v55[3] = v40;
            v55[4] = v43;
            v55[5] = v42;
            sub_1AF084680(v77);
          }

          else
          {
            sub_1AF0835F8(v51, isUniquelyReferenced_nonNull_native);
            v45 = sub_1AF07BB9C(v34, v36);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_38;
            }

LABEL_25:
            if (v52)
            {
              goto LABEL_26;
            }

LABEL_28:
            v9 = v71;
            v71[(v45 >> 6) + 8] |= 1 << v45;
            v57 = (v9[6] + 16 * v45);
            *v57 = v34;
            v57[1] = v36;
            v58 = (v9[7] + 48 * v45);
            *v58 = v39;
            v58[1] = v38;
            v58[2] = v41;
            v58[3] = v40;
            v58[4] = v43;
            v58[5] = v42;
            sub_1AF084680(v77);

            v59 = v9[2];
            v50 = __OFADD__(v59, 1);
            v60 = v59 + 1;
            if (v50)
            {
              goto LABEL_34;
            }

            v9[2] = v60;
          }

          v23 = v69;
          v25 = v27;
          goto LABEL_14;
        }
      }

      else
      {
        v25 = v27;
      }

LABEL_14:
      ++v24;
      v26 += 2;
    }

    while (v23 != v24);
  }

  v77[0] = v70[1];
  sub_1AF083B60(v77);

  v61 = v70[4];

  *v67 = Size;
  *(v67 + 8) = Size;
  *(v67 + 16) = v9;
  *(v67 + 24) = 1;
LABEL_39:
  result.size.height = v65;
  result.size.width = v64;
  result.version = v63;
  result.profiles._rawValue = v62;
  return result;
}

uint64_t sub_1AF082A0C()
{
  v1 = 0x73656C69666F7270;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1AF082A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF083D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF082AA0(uint64_t a1)
{
  v2 = sub_1AF083BC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF082ADC(uint64_t a1)
{
  v2 = sub_1AF083BC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmojiCenteringData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AF083BC8();
  sub_1AF0A7ED0();
  v13 = v8;
  v14 = v9;
  v15 = 0;
  type metadata accessor for CGSize(0);
  sub_1AF083C70(&qword_1EB62D9D0);
  sub_1AF0A7DF0();
  if (!v2)
  {
    v13 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9D8);
    sub_1AF083CB4(&qword_1EB62D9E0, sub_1AF083C1C);
    sub_1AF0A7DF0();
    LOBYTE(v13) = 2;
    sub_1AF0A7DE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EmojiCenteringData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AF083BC8();
  sub_1AF0A7EB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for CGSize(0);
  v15 = 0;
  sub_1AF083C70(&qword_1EB62D468);
  sub_1AF0A7DD0();
  v9 = v14[0];
  v10 = v14[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9D8);
  v15 = 1;
  sub_1AF083CB4(&qword_1EB62D498, sub_1AF083D38);
  sub_1AF0A7DD0();
  v11 = v14[0];
  LOBYTE(v14[0]) = 2;
  v12 = sub_1AF0A7DC0();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AF083018()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x52746E65746E6F63;
  }
}

uint64_t sub_1AF083060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x52746E65746E6F63 && a2 == 0xEB00000000746365;
  if (v6 || (sub_1AF0A7E50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AF0B9E20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AF0A7E50();

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

uint64_t sub_1AF083154(uint64_t a1)
{
  v2 = sub_1AF08455C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF083190(uint64_t a1)
{
  v2 = sub_1AF08455C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF0831CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AF0A7EC0();
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  sub_1AF0A7E20();
  v3 = *v1;
  if ((*v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1AF0A7E30();
  if (v2)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1AF0A7E30();
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v5;
  v17.size.height = v6;
  Width = CGRectGetWidth(v17);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1AF0A7E30();
  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v5;
  v18.size.height = v6;
  Height = CGRectGetHeight(v18);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (Height < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_1AF0A7E30();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_1AF0A7E20();
    v9 = *(v1 + 40);
    v16 = *(v1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_1AF084090();
    sub_1AF0A7E40();
    v16 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_1AF0A7E40();
    __swift_destroy_boxed_opaque_existential_1(v10);
    goto LABEL_20;
  }

LABEL_32:
  __break(1u);
}

double sub_1AF083548@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF083EA4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_1AF0835A4(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  v5 = a2[1].origin.x;
  v4 = a2[1].origin.y;
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    return y == v4 && x == v5;
  }

  return result;
}

uint64_t sub_1AF0835F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62DA30);
  v34 = a2;
  result = sub_1AF0A7D90();
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 48 * v21);
      v36 = v25[1];
      v37 = *v25;
      v35 = v25[2];
      if ((v34 & 1) == 0)
      {
      }

      sub_1AF0A7E70();
      sub_1AF0A7C90();
      result = sub_1AF0A7E90();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 48 * v15);
      *v17 = v37;
      v17[1] = v36;
      v17[2] = v35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1AF0838BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62DA30);
  v2 = *v0;
  v3 = sub_1AF0A7D80();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[2];
        *v23 = v21;
        v23[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v25;
        v27[2] = v26;
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

unint64_t sub_1AF083A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62DA30);
    v3 = sub_1AF0A7DA0();

    for (i = (a1 + 48); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v16 = i[1];
      v17 = *i;
      v7 = *(i + 4);
      v8 = *(i + 5);

      result = sub_1AF07BB9C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 48 * result;
      *v12 = v17;
      *(v12 + 16) = v16;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AF083B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AF083BC8()
{
  result = qword_1EB62DF40;
  if (!qword_1EB62DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DF40);
  }

  return result;
}

unint64_t sub_1AF083C1C()
{
  result = qword_1EB62D9E8;
  if (!qword_1EB62D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D9E8);
  }

  return result;
}

uint64_t sub_1AF083C70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF083CB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB62D9D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF083D38()
{
  result = qword_1EB62D4A8;
  if (!qword_1EB62D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D4A8);
  }

  return result;
}

uint64_t sub_1AF083D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AF0A7E50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C69666F7270 && a2 == 0xE800000000000000 || (sub_1AF0A7E50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AF0A7E50();

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

uint64_t sub_1AF083EA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AF0A7EA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62DA20);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1AF0845B0();
  sub_1AF0A7E10();
  v5 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  result = sub_1AF0A7E10();
  if (v5[2] == 4)
  {
    v7 = v14;
    v10 = *(v5 + 3);
    v11 = *(v5 + 2);

    if (v7[2] == 2)
    {
      v8 = v7[4];
      v9 = v7[5];

      __swift_destroy_boxed_opaque_existential_1(v12);
      result = __swift_destroy_boxed_opaque_existential_1(a1);
      *a2 = v11;
      *(a2 + 16) = v10;
      *(a2 + 32) = v8;
      *(a2 + 40) = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1AF084090()
{
  result = qword_1EB62D9F8;
  if (!qword_1EB62D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D9F8);
  }

  return result;
}

unint64_t sub_1AF0840E8()
{
  result = qword_1EB62DA00;
  if (!qword_1EB62DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DA00);
  }

  return result;
}

unint64_t sub_1AF084140()
{
  result = qword_1EB62DA08;
  if (!qword_1EB62DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DA08);
  }

  return result;
}

unint64_t sub_1AF084198()
{
  result = qword_1EB62DA10;
  if (!qword_1EB62DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DA10);
  }

  return result;
}

uint64_t sub_1AF0841EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AF084234(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AF084284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF0842A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EmojiCenteringData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EmojiCenteringData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AF084458()
{
  result = qword_1EB62EA30[0];
  if (!qword_1EB62EA30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB62EA30);
  }

  return result;
}

unint64_t sub_1AF0844B0()
{
  result = qword_1EB62DF30;
  if (!qword_1EB62DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DF30);
  }

  return result;
}

unint64_t sub_1AF084508()
{
  result = qword_1EB62DF38;
  if (!qword_1EB62DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DF38);
  }

  return result;
}

unint64_t sub_1AF08455C()
{
  result = qword_1EB62DA18;
  if (!qword_1EB62DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DA18);
  }

  return result;
}

unint64_t sub_1AF0845B0()
{
  result = qword_1EB62D488;
  if (!qword_1EB62D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB62DA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62D488);
  }

  return result;
}

unint64_t sub_1AF08462C()
{
  result = qword_1EB62DA28;
  if (!qword_1EB62DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB62DA28);
  }

  return result;
}

double sub_1AF0846D4()
{
  sub_1AF07ACA8(v1);
  result = *v1;
  xmmword_1EB62EB50 = v1[0];
  unk_1EB62EB60 = v1[1];
  qword_1EB62EB70 = v2;
  return result;
}

id sub_1AF084714()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EB62EB48 = result;
  return result;
}

uint64_t sub_1AF084748@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v11 = a5;
  v15 = *a1;
  v14 = *(a1 + 8);
  v81 = *(a1 + 16);
  v79 = *(a1 + 24);
  result = sub_1AF080C9C(a5 * a7, a5 * a7);
  v17 = result;
  if (result)
  {
    if (qword_1EB62EB40 != -1)
    {
      swift_once();
    }

    v18 = qword_1EB62EB48;
    v19 = [qword_1EB62EB48 objectForKey_];
    if (v19)
    {
      v20 = v19;
      sub_1AF07AB08(v19 + OBJC_IVAR____TtC15EmojiFoundation18CachedImageProfile_value, v85);
    }

    else
    {
      v24 = v17;
      sub_1AF07A440(v24, v85);
      type metadata accessor for CachedImageProfile();
      sub_1AF07AB08(v85, &v84);
      v20 = sub_1AF07A908(&v84);
      [v18 setObject:v20 forKey:v24];
    }

    if (v86 == 1)
    {
      v25 = sub_1AF08573C();
      v11 = *v25 * v11;
      a6 = *v25 * a6;
    }

    v77 = v11;
    v26 = v85[0];
    if (a3)
    {
      sub_1AF07A6C4();
    }

    else
    {
      sub_1AF07A670();
    }

    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v29;
    v36 = v30;
    if ((a2 & 1) == 0)
    {
      Width = CGImageGetWidth(v26);
      Height = CGImageGetHeight(v26);
      v35 = Width;
      v36 = Height;
    }

    v39 = v36 < v35;
    v74 = a6;
    v40 = a6 / v36;
    v41 = v77 / v35;
    if (!v39)
    {
      v41 = v40;
    }

    v84.a = 1.0;
    v84.b = 0.0;
    v84.c = 0.0;
    v84.d = 1.0;
    if (1.0 / a7 >= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 1.0 / a7;
    }

    v84.tx = 0.0;
    v84.ty = 0.0;
    CGAffineTransformScale(&v83, &v84, v42, v42);
    v69 = *&v83.c;
    v70 = *&v83.a;
    ty = v83.ty;
    tx = v83.tx;
    v84.a = 1.0;
    v84.b = 0.0;
    v84.c = 0.0;
    v84.d = 1.0;
    v84.tx = 0.0;
    v84.ty = 0.0;
    CGAffineTransformScale(&v83, &v84, v42, v42);
    v84 = v83;
    v87.origin.x = v31;
    v87.origin.y = v32;
    v87.size.width = v33;
    v87.size.height = v34;
    v88 = CGRectApplyAffineTransform(v87, &v84);
    y = v88.origin.y;
    x = v88.origin.x;
    v75 = v88.size.height;
    v76 = v88.size.width;
    v43 = v42 * CGImageGetWidth(v26);
    v73 = v42;
    v44 = v42 * CGImageGetHeight(v26);
    v45 = *(a1 + 32);
    if (v45)
    {
      v15 = 0.0;
      v46 = 0.0;
    }

    else
    {
      v46 = v14;
    }

    if (*(a1 + 32))
    {
      v47 = v43;
    }

    else
    {
      v47 = v81;
    }

    if (*(a1 + 32))
    {
      v48 = v44;
    }

    else
    {
      v48 = v79;
    }

    v89.origin.x = v15;
    v89.origin.y = v46;
    v89.size.width = v47;
    v89.size.height = v48;
    v39 = CGRectGetWidth(v89) < v43;
    v49 = v43;
    v50 = v44;
    if (!v39)
    {
      v90.origin.x = v15;
      v90.origin.y = v46;
      v90.size.width = v47;
      v90.size.height = v48;
      v39 = CGRectGetHeight(v90) < v44;
      v49 = v43;
      v50 = v44;
      if (!v39)
      {
        v49 = v47;
        v50 = v48;
      }
    }

    v64 = v49;
    v91.origin.x = x;
    v91.origin.y = y;
    v91.size.width = v76;
    v91.size.height = v75;
    v66 = x + CGRectGetWidth(v91) * 0.5;
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = v76;
    v92.size.height = v75;
    v65 = y + CGRectGetHeight(v92) * 0.5;
    v93.origin.x = v15;
    v93.origin.y = v46;
    v93.size.width = v64;
    v93.size.height = v50;
    v51 = CGRectGetWidth(v93) * 0.5;
    v94.origin.x = v15;
    v52 = v15 + v51;
    v94.origin.y = v46;
    v94.size.width = v64;
    v94.size.height = v50;
    v53 = v94.origin.y + CGRectGetHeight(v94) * 0.5;
    v54 = v77;
    if (v77 >= v43)
    {
      v54 = v43;
    }

    v55 = v74;
    if (v74 >= v44)
    {
      v55 = v44;
    }

    if (v45)
    {
      v56 = v54;
    }

    else
    {
      v56 = v81;
    }

    if (v45)
    {
      v57 = v55;
    }

    else
    {
      v57 = v79;
    }

    v58 = v53 - v65;
    v59 = sub_1AF07A718();
    v60 = sub_1AF07A734();
    sub_1AF07A750(x, y, v76, v75, v56, v57, v59, v60);
    v63 = v52 - v66 + v62;
    if ((a3 & 1) == 0)
    {
      v61 = -v61;
    }

    *&v84.a = v70;
    *&v84.c = v69;
    v84.tx = tx;
    v84.ty = ty;
    CGAffineTransformTranslate(&v83, &v84, v63 / v73 - v15, (v58 + v61) / v73 - v46);
    v80 = *&v83.c;
    v82 = *&v83.a;
    v78 = *&v83.tx;
    result = sub_1AF07AB40(v85);
    v23 = v78;
    v22 = v80;
    v21 = v82;
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 8) = v21;
  *(a4 + 24) = v22;
  *(a4 + 40) = v23;
  return result;
}

__n128 sub_1AF084C0C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v16 = *a2;
  v15 = *(a2 + 8);
  v79 = *(a2 + 24);
  v80 = *(a2 + 16);
  if (qword_1EB62EB40 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB62EB48;
  v18 = [qword_1EB62EB48 objectForKey_];
  if (v18)
  {
    v19 = v18;
    sub_1AF07AB08(v18 + OBJC_IVAR____TtC15EmojiFoundation18CachedImageProfile_value, v87);
  }

  else
  {
    v20 = a1;
    sub_1AF07A440(v20, v87);
    type metadata accessor for CachedImageProfile();
    sub_1AF07AB08(v87, &v86);
    v19 = sub_1AF07A908(&v86);
    [v17 setObject:v19 forKey:v20];
  }

  if (v88 == 1)
  {
    v21 = sub_1AF08573C();
    a6 = *v21 * a6;
    a7 = *v21 * a7;
  }

  v22 = v87[0];
  if (a4)
  {
    sub_1AF07A6C4();
  }

  else
  {
    sub_1AF07A670();
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v25;
  v32 = v26;
  if ((a3 & 1) == 0)
  {
    Width = CGImageGetWidth(v22);
    Height = CGImageGetHeight(v22);
    v31 = Width;
    v32 = Height;
  }

  v35 = v32 < v31;
  v76 = a7;
  v36 = a7 / v32;
  v37 = a6 / v31;
  if (!v35)
  {
    v37 = v36;
  }

  v86.a = 1.0;
  v86.b = 0.0;
  v86.c = 0.0;
  v86.d = 1.0;
  if (1.0 / a8 >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = 1.0 / a8;
  }

  v86.tx = 0.0;
  v86.ty = 0.0;
  CGAffineTransformScale(&v85, &v86, v38, v38);
  v71 = *&v85.c;
  v72 = *&v85.a;
  ty = v85.ty;
  tx = v85.tx;
  v86.a = 1.0;
  v86.b = 0.0;
  v86.c = 0.0;
  v86.d = 1.0;
  v86.tx = 0.0;
  v86.ty = 0.0;
  CGAffineTransformScale(&v85, &v86, v38, v38);
  v86 = v85;
  v89.origin.x = v27;
  v89.origin.y = v28;
  v89.size.width = v29;
  v89.size.height = v30;
  v90 = CGRectApplyAffineTransform(v89, &v86);
  y = v90.origin.y;
  x = v90.origin.x;
  v77 = v90.size.height;
  v78 = v90.size.width;
  v39 = v38 * CGImageGetWidth(v22);
  v75 = v38;
  v40 = v38 * CGImageGetHeight(v22);
  v41 = *(a2 + 32);
  if (v41)
  {
    v16 = 0.0;
    v42 = 0.0;
  }

  else
  {
    v42 = v15;
  }

  if (*(a2 + 32))
  {
    v43 = v39;
  }

  else
  {
    v43 = v80;
  }

  if (*(a2 + 32))
  {
    v44 = v40;
  }

  else
  {
    v44 = v79;
  }

  v91.origin.x = v16;
  v91.origin.y = v42;
  v91.size.width = v43;
  v91.size.height = v44;
  v45 = CGRectGetWidth(v91);
  v46 = v39;
  v47 = v40;
  if (v45 >= v39)
  {
    v92.origin.x = v16;
    v92.origin.y = v42;
    v92.size.width = v43;
    v92.size.height = v44;
    v48 = CGRectGetHeight(v92);
    v46 = v39;
    v47 = v40;
    if (v48 >= v40)
    {
      v46 = v43;
      v47 = v44;
    }
  }

  v93.origin.x = x;
  v49 = v42;
  v93.origin.y = y;
  v66 = v40;
  v67 = v39;
  v50 = v46;
  v93.size.height = v77;
  v93.size.width = v78;
  v68 = CGRectGetWidth(v93);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = v78;
  v94.size.height = v77;
  v51 = CGRectGetHeight(v94);
  v95.origin.x = v16;
  v95.origin.y = v49;
  v95.size.width = v50;
  v95.size.height = v47;
  v52 = CGRectGetWidth(v95);
  v96.origin.x = v16;
  v96.origin.y = v49;
  v96.size.width = v50;
  v96.size.height = v47;
  v53 = CGRectGetHeight(v96);
  v54 = a6;
  if (a6 >= v67)
  {
    v54 = v67;
  }

  v55 = v76;
  if (v76 >= v66)
  {
    v55 = v66;
  }

  if (v41)
  {
    v56 = v54;
  }

  else
  {
    v56 = v80;
  }

  if (v41)
  {
    v57 = v55;
  }

  else
  {
    v57 = v79;
  }

  v83 = v49 + v53 * 0.5 - (y + v51 * 0.5);
  v58 = sub_1AF07A718();
  v59 = sub_1AF07A734();
  sub_1AF07A750(x, y, v78, v77, v56, v57, v58, v59);
  v62 = v16 + v52 * 0.5 - (x + v68 * 0.5) + v61;
  if ((a4 & 1) == 0)
  {
    v60 = -v60;
  }

  *&v86.c = v71;
  *&v86.a = v72;
  v86.tx = tx;
  v86.ty = ty;
  CGAffineTransformTranslate(&v85, &v86, v62 / v75 - v16, (v83 + v60) / v75 - v49);
  v63 = v85.tx;
  v64 = v85.ty;
  v81 = *&v85.c;
  v84 = *&v85.a;
  sub_1AF07AB40(v87);
  result = v84;
  *a5 = v84;
  *(a5 + 16) = v81;
  *(a5 + 32) = v63;
  *(a5 + 40) = v64;
  return result;
}

void sub_1AF08509C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 24);
  if (qword_1EB62DCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v99 = xmmword_1EB62EB50;
  v100 = unk_1EB62EB60;
  v23 = qword_1EB62EB70;
  v101 = qword_1EB62EB70;
  v102[0] = *(&xmmword_1EB62EB50 + 1);
  v24 = unk_1EB62EB60;
  v25 = xmmword_1EB62EB50;
  sub_1AF085614(v102, v97);
  v26 = v24;
  v27 = *(&v24 + 1);
  v28 = v23;
  sub_1AF07AD68();
  sub_1AF07AD70(a1, a2, a4 & 1, a6 & 1, image, a8, a9, a10);

  sub_1AF085684(v102, &qword_1EB62D9C0);
  v29 = *image;
  if (!*image)
  {
    sub_1AF085684(image, &qword_1EB62DA38);
    goto LABEL_12;
  }

  v97[0] = *&image[8];
  v97[1] = *&image[24];
  v97[2] = *&image[40];
  v98 = v96;
  if (!CGImageGetWidth(*image) || !CGImageGetHeight(v29))
  {
    sub_1AF07AB40(v97);

    v29 = 0;
LABEL_12:
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    goto LABEL_49;
  }

  if (v98 == 1)
  {
    v30 = sub_1AF08573C();
    a8 = *v30 * a8;
    a9 = *v30 * a9;
  }

  v31 = a5;
  v87 = v22;
  v89 = v21;
  v92 = a8;
  v32 = *&v97[0];
  if (v31)
  {
    sub_1AF07A6C4();
  }

  else
  {
    sub_1AF07A670();
  }

  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v35;
  v45 = v36;
  if ((a4 & 1) == 0)
  {
    Width = CGImageGetWidth(v32);
    Height = CGImageGetHeight(v32);
    v44 = Width;
    v45 = Height;
  }

  v48 = v45 < v44;
  v84 = a9;
  v49 = a9 / v45;
  v50 = v92 / v44;
  if (!v48)
  {
    v50 = v49;
  }

  *image = 0x3FF0000000000000;
  *&image[8] = 0;
  *&image[16] = 0;
  *&image[24] = 0x3FF0000000000000;
  if (1.0 / a10 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = 1.0 / a10;
  }

  *&image[32] = 0uLL;
  CGAffineTransformScale(&v94, image, v51, v51);
  v79 = *&v94.c;
  v80 = *&v94.a;
  ty = v94.ty;
  tx = v94.tx;
  *image = 0x3FF0000000000000;
  *&image[8] = 0;
  *&image[16] = 0;
  *&image[24] = 0x3FF0000000000000;
  *&image[32] = 0uLL;
  CGAffineTransformScale(&v94, image, v51, v51);
  *image = v94;
  v103.origin.x = v40;
  v103.origin.y = v41;
  v103.size.width = v42;
  v103.size.height = v43;
  v104 = CGRectApplyAffineTransform(v103, image);
  y = v104.origin.y;
  x = v104.origin.x;
  v85 = v104.size.height;
  v86 = v104.size.width;
  v52 = v51 * CGImageGetWidth(v32);
  v83 = v51;
  v53 = v51 * CGImageGetHeight(v32);
  v54 = *(a3 + 32);
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v19;
  }

  if (*(a3 + 32))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v20;
  }

  if (*(a3 + 32))
  {
    v57 = v52;
  }

  else
  {
    v57 = v89;
  }

  if (*(a3 + 32))
  {
    v58 = v53;
  }

  else
  {
    v58 = v87;
  }

  v105.origin.x = v55;
  v105.origin.y = v56;
  v105.size.width = v57;
  v105.size.height = v58;
  v48 = CGRectGetWidth(v105) < v52;
  v59 = v52;
  v60 = v53;
  if (!v48)
  {
    v106.origin.x = v55;
    v106.origin.y = v56;
    v106.size.width = v57;
    v106.size.height = v58;
    v48 = CGRectGetHeight(v106) < v53;
    v59 = v52;
    v60 = v53;
    if (!v48)
    {
      v59 = v57;
      v60 = v58;
    }
  }

  v74 = v59;
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = v86;
  v107.size.height = v85;
  v76 = x + CGRectGetWidth(v107) * 0.5;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = v86;
  v108.size.height = v85;
  v75 = y + CGRectGetHeight(v108) * 0.5;
  v109.origin.x = v55;
  v109.origin.y = v56;
  v109.size.width = v74;
  v109.size.height = v60;
  v61 = CGRectGetWidth(v109) * 0.5;
  v110.origin.x = v55;
  v62 = v55 + v61;
  v110.origin.y = v56;
  v110.size.width = v74;
  v110.size.height = v60;
  v63 = v110.origin.y + CGRectGetHeight(v110) * 0.5;
  v64 = v92;
  if (v92 >= v52)
  {
    v64 = v52;
  }

  v65 = v84;
  if (v84 >= v53)
  {
    v65 = v53;
  }

  if (v54)
  {
    v66 = v64;
  }

  else
  {
    v66 = v89;
  }

  if (v54)
  {
    v67 = v65;
  }

  else
  {
    v67 = v87;
  }

  v68 = v63 - v75;
  v69 = sub_1AF07A718();
  v70 = sub_1AF07A734();
  sub_1AF07A750(x, y, v86, v85, v66, v67, v69, v70);
  v73 = v62 - v76 + v72;
  if ((v31 & 1) == 0)
  {
    v71 = -v71;
  }

  *image = v80;
  *&image[16] = v79;
  *&image[32] = tx;
  *&image[40] = ty;
  CGAffineTransformTranslate(&v94, image, v73 / v83 - v55, (v68 + v71) / v83 - v56);
  v90 = *&v94.c;
  v93 = *&v94.a;
  v88 = *&v94.tx;
  sub_1AF07AB40(v97);
  v39 = v88;
  v38 = v90;
  v37 = v93;
LABEL_49:
  *a7 = v29;
  *(a7 + 8) = v37;
  *(a7 + 24) = v38;
  *(a7 + 40) = v39;
}

double sub_1AF0855F0(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 < a1;
  v6 = a4 / a2;
  result = a3 / a1;
  if (!v5)
  {
    result = v6;
  }

  if (1.0 / a5 < result)
  {
    return 1.0 / a5;
  }

  return result;
}

uint64_t sub_1AF085614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF085684(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::Trie::build(internal::marisa::grimoire::trie::LoudsTrie **a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v8)
  {
    v13 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x800000014;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:20: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v9 = v8;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v8);
  v13 = v9;
  internal::marisa::grimoire::trie::LoudsTrie::build(v9, a2, a3, a4);
  v10 = *a1;
  *a1 = v9;
  v13 = v10;
  return internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::Trie::map(internal::marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000029;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:41: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_1F24C93B0;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    v11[2] = 0x80000002CLL;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:44: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  internal::marisa::grimoire::io::Mapper::Mapper(v12);
  internal::marisa::grimoire::io::Mapper::open(v12, a2, a3);
  internal::marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  internal::marisa::grimoire::io::Mapper::~Mapper(v12);
  return internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_1AF0859F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

void internal::marisa::Trie::write(internal::marisa::grimoire::trie::LoudsTrie ***a1, uint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:100: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::io::Writer::Writer(v5);
  internal::marisa::grimoire::io::Writer::open(v5, a2);
  internal::marisa::grimoire::trie::LoudsTrie::write(*a1, v5);
  internal::marisa::grimoire::io::Writer::~Writer(v5);
}

uint64_t internal::marisa::Trie::get_payload(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000006DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:109: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::get_payload(v4, a2, a3);
}

uint64_t internal::marisa::Trie::lookup(internal::marisa::grimoire::vector::BitVector **a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000073;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:115: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::lookup(v5, a2, a3, a4);
}

uint64_t internal::marisa::Trie::common_prefix_search(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000007FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:127: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::common_prefix_search(v5, a2, a3, a4);
}

void internal::marisa::Trie::predictive_search(internal::marisa::grimoire::vector::BitVector **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::predictive_search(v6, a2, a3, a4, a5);
}

void internal::marisa::Trie::advance(internal::marisa::grimoire::vector::BitVector **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008CLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:140: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::advance(v6, a2, a3, a4, a5);
}

void internal::marisa::Trie::enumerate_entries(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000093;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:147: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries(v5, a2, a3, a4);
}

void internal::marisa::Trie::enumerate_children(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000099;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:153: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_children(v4, a2, a3);
}

void internal::marisa::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B2716B00);
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(internal::marisa::grimoire::trie::LoudsTrie **a1)
{
  v2 = *a1;
  if (v2)
  {
    internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v2);
    MEMORY[0x1B2716B00]();
  }

  return a1;
}

uint64_t internal::marisa::grimoire::io::Writer::Writer(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void internal::marisa::grimoire::io::Writer::~Writer(FILE **this)
{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

FILE *internal::marisa::grimoire::io::Writer::open(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t internal::marisa::grimoire::io::Writer::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  __buf[128] = *MEMORY[0x1E69E9840];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x10000004FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:79: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = internal::marisa::grimoire::io::Writer::write_data(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      return internal::marisa::grimoire::io::Writer::write_data(this, __buf, __nitems);
    }
  }

  return this;
}

uint64_t internal::marisa::grimoire::io::Writer::write_data(uint64_t this, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000076;
    v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:118: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = write(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000084;
      v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:132: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F24C93B0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000089;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:137: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      this = fflush(*v5);
      if (this)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F24C93B0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x90000008ALL;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:138: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::ostream::write();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_1F24C93B0;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008FLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:143: MARISA_IO_ERROR: !stream_->write(static_cast<const char*>(data), static_cast<std::streamsize>(size))";
        }
      }
    }
  }

  return this;
}

uint64_t internal::marisa::grimoire::io::Mapper::Mapper(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = -1;
  return this;
}

void internal::marisa::grimoire::io::Mapper::~Mapper(internal::marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

uint64_t *internal::marisa::grimoire::io::Mapper::swap(uint64_t *this, internal::marisa::grimoire::io::Mapper *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v4 = this[1];
  v3 = this[2];
  v5 = *(a2 + 2);
  this[1] = *(a2 + 1);
  this[2] = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v3;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return this;
}

__n128 internal::marisa::grimoire::io::Mapper::open(internal::marisa::grimoire::io::Mapper *this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000050;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:80: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *this;
  v4 = *(this + 1);
  *this = a2;
  *(this + 1) = -1;
  *(this + 2) = a3;
  *(this + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(this + 8);
  *(this + 8) = -1;
  v9 = v5;
  internal::marisa::grimoire::io::Mapper::~Mapper(v8);
  return result;
}

uint64_t internal::marisa::grimoire::io::Mapper::seek(internal::marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000059;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:89: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000005ALL;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:90: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return internal::marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t internal::marisa::grimoire::io::Mapper::map_data(internal::marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000073;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:115: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000074;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:116: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

internal::marisa::grimoire::trie::LoudsTrie *internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(internal::marisa::grimoire::trie::LoudsTrie *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 297) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 441) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 601) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  internal::marisa::grimoire::trie::Tail::Tail((this + 744));
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  internal::marisa::grimoire::io::Mapper::Mapper(this + 1096);
  return this;
}

void sub_1AF08683C(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x1B2716AD0](v8, 0x1000C8077774924);
  }

  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v4);
  internal::marisa::grimoire::trie::Tail::~Tail((v1 + 93));
  if (*v6)
  {
    MEMORY[0x1B2716AD0](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x1B2716AD0](*v5, 0x1000C8077774924);
  }

  internal::marisa::grimoire::vector::BitVector::~BitVector(v3);
  internal::marisa::grimoire::vector::BitVector::~BitVector(v2);
  internal::marisa::grimoire::vector::BitVector::~BitVector(v1);
  _Unwind_Resume(a1);
}

void internal::marisa::grimoire::vector::BitVector::~BitVector(internal::marisa::grimoire::vector::BitVector *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x1B2716AD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 14);
  if (v3)
  {
    MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x1B2716AD0](v4, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1B2716AD0](*this, 0x1000C8077774924);
  }
}

void internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(internal::marisa::grimoire::trie::LoudsTrie *this)
{
  internal::marisa::grimoire::io::Mapper::~Mapper((this + 1096));
  v2 = *(this + 126);
  if (v2)
  {
    MEMORY[0x1B2716AD0](v2, 0x1000C8077774924);
  }

  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 125);
  v3 = *(this + 119);
  if (v3)
  {
    MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 113);
  if (v4)
  {
    MEMORY[0x1B2716AD0](v4, 0x1000C8077774924);
  }

  v5 = *(this + 107);
  if (v5)
  {
    MEMORY[0x1B2716AD0](v5, 0x1000C8077774924);
  }

  v6 = *(this + 99);
  if (v6)
  {
    MEMORY[0x1B2716AD0](v6, 0x1000C8077774924);
  }

  v7 = *(this + 93);
  if (v7)
  {
    MEMORY[0x1B2716AD0](v7, 0x1000C8077774924);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x1B2716AD0](v8, 0x1000C8077774924);
  }

  v9 = *(this + 78);
  if (v9)
  {
    MEMORY[0x1B2716AD0](v9, 0x1000C8077774924);
  }

  v10 = *(this + 72);
  if (v10)
  {
    MEMORY[0x1B2716AD0](v10, 0x1000C8077774924);
  }

  v11 = *(this + 66);
  if (v11)
  {
    MEMORY[0x1B2716AD0](v11, 0x1000C8077774924);
  }

  v12 = *(this + 60);
  if (v12)
  {
    MEMORY[0x1B2716AD0](v12, 0x1000C8077774924);
  }

  v13 = *(this + 52);
  if (v13)
  {
    MEMORY[0x1B2716AD0](v13, 0x1000C8077774924);
  }

  v14 = *(this + 46);
  if (v14)
  {
    MEMORY[0x1B2716AD0](v14, 0x1000C8077774924);
  }

  v15 = *(this + 40);
  if (v15)
  {
    MEMORY[0x1B2716AD0](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x1B2716AD0](v16, 0x1000C8077774924);
  }

  v17 = *(this + 26);
  if (v17)
  {
    MEMORY[0x1B2716AD0](v17, 0x1000C8077774924);
  }

  v18 = *(this + 20);
  if (v18)
  {
    MEMORY[0x1B2716AD0](v18, 0x1000C8077774924);
  }

  v19 = *(this + 14);
  if (v19)
  {
    MEMORY[0x1B2716AD0](v19, 0x1000C8077774924);
  }

  v20 = *(this + 8);
  if (v20)
  {
    MEMORY[0x1B2716AD0](v20, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1B2716AD0](*this, 0x1000C8077774924);
  }
}

void internal::marisa::grimoire::trie::LoudsTrie::build(internal::marisa::grimoire::trie::LoudsTrie *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v7 = 3;
  v8 = 0x100000000200;
  v9 = 0x20000;
  internal::marisa::grimoire::trie::Config::parse_(&v7, a4);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(&v7);
  internal::marisa::grimoire::trie::LoudsTrie::build_(&v7, a2, a3, v10);
  internal::marisa::grimoire::trie::LoudsTrie::swap(a1, &v7);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(&v7);
}

void sub_1AF086B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(va);
  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  memset(v35, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(v35, (a2[1] - *a2) >> 4);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&v35[0] + 1) + v10;
      v13 = (v8 + v9);
      v15 = *v13;
      v14 = v13[1];
      *v12 = v15;
      *(v12 + 8) = v14;
      *(v12 + 12) = 1065353216;
      ++v11;
      v8 = *a2;
      v10 += 24;
      v9 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  v33 = 0u;
  memset(v34, 0, 25);
  internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::Key>(a1, v35, &v33, a4, 1);
  memset(v32, 0, 41);
  internal::marisa::grimoire::vector::Vector<std::pair<unsigned int,unsigned int>>::resize(v32, v34[1]);
  v16 = *(&v32[1] + 1);
  if (*(&v32[1] + 1))
  {
    v17 = 0;
    v18 = *(&v33 + 1);
    v19 = (*(&v32[0] + 1) + 4);
    do
    {
      *(v19 - 1) = *(v18 + 4 * v17);
      *v19 = v17++;
      v19 += 2;
    }

    while (v16 != v17);
  }

  v20 = v33;
  v33 = 0u;
  memset(v34, 0, 25);
  if (v20)
  {
    MEMORY[0x1B2716AD0](v20, 0x1000C8077774924);
    v16 = *(&v32[1] + 1);
  }

  v21 = 126 - 2 * __clz(v16);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(*(&v32[0] + 1), (*(&v32[0] + 1) + 8 * v16), &v36, v22, 1);
  if (*(&v32[1] + 1))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      for (i = *(&v32[0] + 1); ; i = *(&v32[0] + 1))
      {
        v26 = *(i + 8 * v23);
        if (v24 >= v26)
        {
          break;
        }

        internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
        ++v24;
      }

      if (v24 == v26)
      {
        internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 1);
        ++v24;
      }

      ++v23;
    }

    while (v23 < *(&v32[1] + 1));
  }

  else
  {
    v24 = 0;
  }

  while (v24 < *(a1 + 648))
  {
    internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
    ++v24;
  }

  internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
  internal::marisa::grimoire::vector::BitVector::build((a1 + 208), 0, 1);
  if (a3)
  {
    std::vector<unsigned long>::resize(a3, (a2[1] - *a2) >> 4);
    if (a2[1] != *a2)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(&v32[0] + 1);
      do
      {
        v30 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 208), *(v29 + v27));
        v29 = *(&v32[0] + 1);
        *(*a3 + 8 * *(*(&v32[0] + 1) + v27 + 4)) = v30;
        ++v28;
        v27 += 8;
      }

      while (v28 < (a2[1] - *a2) >> 4);
    }
  }

  if (*&v32[0])
  {
    MEMORY[0x1B2716AD0](*&v32[0], 0x1000C8077774924);
  }

  if (v33)
  {
    MEMORY[0x1B2716AD0](v33, 0x1000C8077774924);
  }

  result = *&v35[0];
  if (*&v35[0])
  {
    return MEMORY[0x1B2716AD0](*&v35[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1AF086E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x1B2716AD0](a15, v21);
  }

  if (a21)
  {
    MEMORY[0x1B2716AD0](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *internal::marisa::grimoire::trie::LoudsTrie::swap(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::trie::LoudsTrie *a2)
{
  internal::marisa::grimoire::vector::BitVector::swap(this, a2);
  internal::marisa::grimoire::vector::BitVector::swap((this + 208), (a2 + 208));
  internal::marisa::grimoire::vector::BitVector::swap((this + 416), (a2 + 416));
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 78, a2 + 78);
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 84, a2 + 84);
  v4 = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v4;
  LODWORD(v4) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v4;
  v5 = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v5;
  internal::marisa::grimoire::trie::Tail::swap((this + 744), (a2 + 744));
  v6 = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v6;
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 126, a2 + 126);
  v7 = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v7;
  v8 = *(this + 133);
  *(this + 133) = *(a2 + 133);
  *(a2 + 133) = v8;
  v9 = *(this + 134);
  *(this + 134) = *(a2 + 134);
  *(a2 + 134) = v9;
  v10 = *(this + 135);
  *(this + 135) = *(a2 + 135);
  *(a2 + 135) = v10;
  LODWORD(v9) = *(this + 272);
  *(this + 272) = *(a2 + 272);
  *(a2 + 272) = v9;

  return internal::marisa::grimoire::io::Mapper::swap(this + 137, (a2 + 1096));
}

void internal::marisa::grimoire::trie::LoudsTrie::map(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::trie::Header::map(v4, a2);
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  internal::marisa::grimoire::trie::LoudsTrie::map_(v4, a2);
  internal::marisa::grimoire::io::Mapper::swap(v5, a2);
  internal::marisa::grimoire::trie::LoudsTrie::swap(this, v4);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v4);
}

_BYTE *internal::marisa::grimoire::trie::Header::map(internal::marisa::grimoire::trie::Header *this, internal::marisa::grimoire::io::Mapper *a2)
{
  result = internal::marisa::grimoire::io::Mapper::map_data(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = internal::marisa::grimoire::trie::Header::get_header(void)::buf[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

double internal::marisa::grimoire::trie::LoudsTrie::map_(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::BitVector::map(this, a2);
  internal::marisa::grimoire::vector::BitVector::map((this + 208), a2);
  internal::marisa::grimoire::vector::BitVector::map((this + 416), a2);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map(this + 39, a2);
  internal::marisa::grimoire::vector::FlatVector::map((this + 672), a2);
  internal::marisa::grimoire::trie::Tail::map((this + 744), a2);
  if (*(this + 59) && !*(this + 96))
  {
    v4 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v5 = v4;
    if (v4)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
    }

    v10 = *(this + 125);
    *(this + 125) = v5;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v10);
    v6 = *(this + 125);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x800000249;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:585: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    internal::marisa::grimoire::trie::LoudsTrie::map_(v6, a2);
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::map(this + 63, a2);
  *(this + 132) = *(this + 129) - 1;
  *(this + 133) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v7 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  internal::marisa::grimoire::trie::Config::parse_(&v10, v7);
  *(this + 134) = v10;
  result = v11;
  *(this + 135) = v11;
  *(this + 272) = v12;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::write(internal::marisa::grimoire::trie::LoudsTrie **this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::io::Writer::write_data(a2, "We love Marisa.", 0x10uLL);

  return internal::marisa::grimoire::trie::LoudsTrie::write_(this, a2);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::write_(internal::marisa::grimoire::trie::LoudsTrie **this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::BitVector::write_(this, a2);
  internal::marisa::grimoire::vector::BitVector::write_((this + 26), a2);
  internal::marisa::grimoire::vector::BitVector::write_((this + 52), a2);
  internal::marisa::grimoire::vector::Vector<unsigned char>::write_((this + 78), a2);
  internal::marisa::grimoire::vector::FlatVector::write_((this + 84), a2);
  internal::marisa::grimoire::trie::Tail::write((this + 93), a2);
  v4 = this[125];
  if (v4)
  {
    internal::marisa::grimoire::trie::LoudsTrie::write_(v4, a2);
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_((this + 126), a2);
  __buf = this[133];
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  v6 = *(this + 271) | *(this + 268) | *(this + 272);
  return internal::marisa::grimoire::io::Writer::write_data(a2, &v6, 4uLL);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::get_payload(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v5 = *a2;
  if (((*(*(a1 + 224) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  *a3 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 208), v5);
  return 1;
}

void internal::marisa::grimoire::trie::LoudsTrie::predictive_search(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  while (v13 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(this, a2, a3, &v13, &v14, &__p) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[1];
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(this, v14, &__p, &v12, a4, (v10 - a3) & ~((v10 - a3) >> 31), a5);
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1AF087514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, std::string *a6)
{
  v12 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(this + 132);
  v13 = (*(this + 128) + 12 * v12);
  if (*a5 != *v13)
  {
    v15 = internal::marisa::grimoire::vector::BitVector::select0(this, *a5);
    v16 = *(this + 2);
    if ((*(v16 + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)))
    {
      v17 = v15 - *a5;
      *a5 = v17;
      v18 = v15 + 2;
      v19 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(this + 54) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          if (v19 == 0xFFFFFFFFLL)
          {
            v19 = internal::marisa::grimoire::vector::BitVector::rank1((this + 416), v17);
            v17 = *a5;
          }

          else
          {
            ++v19;
          }

          v21 = *a4;
          v22 = *(this + 90);
          v23 = v22 * v19;
          v24 = (v22 * v19) & 0x3F;
          v25 = v24 + v22;
          v26 = (*(this + 86) + 8 * ((v22 * v19) >> 6));
          v27 = *v26;
          if (v25 > 0x40)
          {
            v28 = ((2 * v26[1]) << ~v23) | (v27 >> v23);
          }

          else
          {
            v28 = v27 >> v24;
          }

          v29 = *(*(this + 80) + v17) | ((*(this + 182) & v28) << 8);
          v30 = *(this + 125);
          if (v30)
          {
            if (internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v30, a2, a3, a4, v29, a6))
            {
              return 1;
            }
          }

          else if (internal::marisa::grimoire::trie::Tail::prefix_match(this + 93, a2, a3, a4, v29, a6))
          {
            return 1;
          }

          if (*a4 != v21)
          {
            return 0;
          }

          v17 = *a5;
          v16 = *(this + 2);
        }

        else
        {
          v20 = *(*(this + 80) + v17);
          if (v20 == *(a2 + *a4))
          {
            std::string::push_back(a6, v20);
            ++*a4;
            return 1;
          }
        }

        *a5 = ++v17;
        v31 = *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18;
        ++v18;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v14 = v13[2];
  if (v14 > 0xFFFFFEFF)
  {
    std::string::push_back(a6, v14);
    ++*a4;
    goto LABEL_25;
  }

  v32 = *(this + 125);
  if (v32)
  {
    if (internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v32, a2, a3, a4, v14, a6))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!internal::marisa::grimoire::trie::Tail::prefix_match(this + 93, a2, a3, a4, v14, a6))
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(this + 128) + 12 * v12 + 4);
  return 1;
}

unint64_t internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(unint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, uint64_t a7)
{
  if ((*a4 & 1) == 0)
  {
    v11 = result;
    if ((a7 & 0x80000000) != 0 || a6 <= a7)
    {
      if (((*(*(result + 224) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0 || ((v12 = internal::marisa::grimoire::vector::BitVector::rank1((result + 208), a2), v13 = *(a3 + 23), v13 >= 0) ? (v14 = a3) : (v14 = *a3), v13 >= 0 ? (v15 = *(a3 + 23)) : (v15 = *(a3 + 8)), result = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a5, v12, v14, v15, a4), (*a4 & 1) == 0))
      {
        v16 = *(a3 + 23) >= 0 ? *(a3 + 23) : *(a3 + 8);
        result = internal::marisa::grimoire::vector::BitVector::select0(v11, a2);
        if ((*a4 & 1) == 0)
        {
          v17 = result;
          v18 = -a2;
          v19 = 0xFFFFFFFFLL;
          do
          {
            if (((*(*(v11 + 16) + (((v17 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 + 1)) & 1) == 0)
            {
              break;
            }

            if ((*(*(v11 + 432) + (((v18 + v17) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 + v17)))
            {
              if (v19 == 0xFFFFFFFFLL)
              {
                v19 = internal::marisa::grimoire::vector::BitVector::rank1((v11 + 416), v18 + v17);
              }

              else
              {
                ++v19;
              }

              v20 = *(v11 + 720);
              v21 = v20 * v19;
              v22 = (v20 * v19) & 0x3F;
              v23 = v22 + v20;
              v24 = (*(v11 + 688) + 8 * ((v20 * v19) >> 6));
              v25 = *v24;
              v26 = v23 > 0x40 ? ((2 * v24[1]) << ~v21) | (v25 >> v21) : v25 >> v22;
              v27 = *(*(v11 + 640) + v18 + v17) | ((*(v11 + 728) & v26) << 8);
              v28 = *(v11 + 1000);
              if (v28)
              {
                internal::marisa::grimoire::trie::LoudsTrie::restore_(v28, a3, v27);
              }

              else
              {
                internal::marisa::grimoire::trie::Tail::restore((v11 + 744), a3, v27);
              }
            }

            else
            {
              std::string::push_back(a3, *(*(v11 + 640) + v18 + v17));
            }

            v29 = *(a3 + 23);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(a3 + 8);
            }

            internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(v11, v18 + v17, a3, a4, a5, (v29 - v16 + a6), a7);
            v30 = *(a3 + 23);
            v31 = v30;
            v32 = a3 + v30;
            if (v31 >= 0)
            {
              v33 = a3;
            }

            else
            {
              v32 = *a3 + *(a3 + 8);
              v33 = *a3;
            }

            result = std::string::erase(a3, v16, v32 - (v16 + v33));
            ++v17;
          }

          while (*a4 != 1);
        }
      }
    }
  }

  return result;
}

void internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a2 + 31);
    v10 = *(a2 + 16);
    v9 = *(a2 + 31);
LABEL_8:
    v20 = 0;
    v12 = *(a2 + 8) + v10;
    v13 = a2 + 8 + v8;
    if (v9 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 >= 0)
    {
      v15 = a2 + 8;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char const*>>,std::reverse_iterator<std::__wrap_iter<char const*>>>(&__p, v14, v14, v15, v15, v14 - v15);
    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v18;
    }

    internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(a1, *a2, &__p, &v20, a3, v16, a4);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = *(a2 + 31);
  v9 = v8;
  v10 = *(a2 + 16);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 31);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  if (v11 <= a4)
  {
    goto LABEL_8;
  }
}

void sub_1AF087B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

void internal::marisa::grimoire::trie::LoudsTrie::enumerate_children(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v5 = *(a2 + 31);
  v6 = v5;
  v7 = *(a2 + 16);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    v35 = *a2;
    p_p = &__p;
    if (v6 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 8), v7);
    }

    else
    {
      __p = *(a2 + 8);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      v32 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
      v33 = --__p.__r_.__value_.__l.__size_;
    }

    else
    {
      v32 = __p.__r_.__value_.__s.__data_[SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1];
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
      *(&__p.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v33] = 0;
    std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(a3, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = internal::marisa::grimoire::vector::BitVector::select0(a1, *a2);
    v11 = v10 - *a2;
    v12 = 0xFFFFFFFFLL;
    do
    {
      ++v10;
      if (((*(*(a1 + 16) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      memset(&v34, 0, sizeof(v34));
      if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        if (v12 == 0xFFFFFFFFLL)
        {
          v12 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), v11);
        }

        else
        {
          ++v12;
        }

        v13 = *(a1 + 720);
        v14 = v13 * v12;
        v15 = (v13 * v12) & 0x3F;
        v16 = v15 + v13;
        v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
        v18 = *v17;
        if (v16 > 0x40)
        {
          v19 = ((2 * v17[1]) << ~v14) | (v18 >> v14);
        }

        else
        {
          v19 = v18 >> v15;
        }

        v20 = *(*(a1 + 640) + v11) | ((*(a1 + 728) & v19) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          internal::marisa::grimoire::trie::LoudsTrie::restore_(v21, &v34, v20);
        }

        else
        {
          internal::marisa::grimoire::trie::Tail::restore((a1 + 744), &v34, v20);
        }

        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v34;
        }

        else
        {
          v23 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v24 = (v23 + size - 1);
          if (v24 > v23)
          {
            v25 = &v23->__r_.__value_.__s.__data_[1];
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = v24->__r_.__value_.__s.__data_[0];
              v24->__r_.__value_.__s.__data_[0] = v26;
              v24 = (v24 - 1);
            }

            while (v25++ < v24);
          }
        }
      }

      else
      {
        std::string::push_back(&v34, *(*(a1 + 640) + v11));
      }

      __p = v34;
      memset(&v34, 0, sizeof(v34));
      v35 = v11;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v30 = __p.__r_.__value_.__r.__words[0];
        v28 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
        v29 = --__p.__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = *(&v35 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7);
        v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
        *(&__p.__r_.__value_.__s + 23) = v29 & 0x7F;
        v30 = &__p;
      }

      v30->__r_.__value_.__s.__data_[v29] = 0;
      std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(a3, v28);
      v31 = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while ((v31 & 1) == 0);
  }
}

void sub_1AF087E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::lookup(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  while (v9 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::find_child(this, a2, a3, &v9, &v10) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*(this + 28) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
  {
    *a4 = internal::marisa::grimoire::vector::BitVector::rank1((this + 208), v10);
    return 1;
  }

  return 0;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::find_child(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v10 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(this + 132);
  v11 = (*(this + 128) + 12 * v10);
  if (*a5 != *v11)
  {
    v13 = internal::marisa::grimoire::vector::BitVector::select0(this, *a5);
    v14 = *(this + 2);
    if ((*(v14 + (((v13 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v13 + 1)))
    {
      v15 = v13 - *a5;
      *a5 = v15;
      v16 = v13 + 2;
      v17 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(this + 54) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
        {
          if (v17 == 0xFFFFFFFFLL)
          {
            v17 = internal::marisa::grimoire::vector::BitVector::rank1((this + 416), v15);
            v15 = *a5;
          }

          else
          {
            ++v17;
          }

          v18 = *a4;
          v19 = *(this + 90);
          v20 = v19 * v17;
          v21 = (v19 * v17) & 0x3F;
          v22 = v21 + v19;
          v23 = (*(this + 86) + 8 * ((v19 * v17) >> 6));
          v24 = *v23;
          if (v22 > 0x40)
          {
            v25 = ((2 * v23[1]) << ~v20) | (v24 >> v20);
          }

          else
          {
            v25 = v24 >> v21;
          }

          v26 = *(*(this + 80) + v15) | ((*(this + 182) & v25) << 8);
          v27 = *(this + 125);
          if (v27)
          {
            if (internal::marisa::grimoire::trie::LoudsTrie::match_(v27, a2, a3, a4, v26))
            {
              return 1;
            }
          }

          else if (internal::marisa::grimoire::trie::Tail::match(this + 93, a2, a3, a4, v26))
          {
            return 1;
          }

          if (*a4 != v18)
          {
            return 0;
          }

          v15 = *a5;
          v14 = *(this + 2);
        }

        else if (*(*(this + 80) + v15) == *(a2 + *a4))
        {
          ++*a4;
          return 1;
        }

        *a5 = ++v15;
        v28 = *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16;
        ++v16;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = v11[2];
  if (v12 > 0xFFFFFEFF)
  {
    ++*a4;
    goto LABEL_25;
  }

  v29 = *(this + 125);
  if (v29)
  {
    if (internal::marisa::grimoire::trie::LoudsTrie::match_(v29, a2, a3, a4, v12))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((internal::marisa::grimoire::trie::Tail::match(this + 93, a2, a3, a4, v12) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(this + 128) + 12 * v10 + 4);
  return 1;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::common_prefix_search(uint64_t this, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = this;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  if ((**(this + 224) & 1) == 0 || (v8 = internal::marisa::grimoire::vector::BitVector::rank1((this + 208), 0), this = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a4, v8, a2, 0, &v12), (v12 & 1) == 0))
  {
    if (a3)
    {
      this = internal::marisa::grimoire::trie::LoudsTrie::find_child(v7, a2, a3, &v10, &v11);
      if (this)
      {
        do
        {
          if ((*(v7[28] + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
          {
            v9 = internal::marisa::grimoire::vector::BitVector::rank1((v7 + 26), v11);
            this = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a4, v9, a2, v10, &v12);
            if (v12)
            {
              break;
            }
          }

          if (v10 >= a3)
          {
            break;
          }

          this = internal::marisa::grimoire::trie::LoudsTrie::find_child(v7, a2, a3, &v10, &v11);
        }

        while ((this & 1) != 0);
      }
    }
  }

  return this;
}

uint64_t *internal::marisa::grimoire::vector::BitVector::swap(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::vector::BitVector *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 8, a2 + 8);
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 14, a2 + 14);

  return internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 20, a2 + 20);
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned char>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 24 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::Key>(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (a2[3])
  {
    internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::Key>(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  internal::marisa::grimoire::vector::BitVector::build((a1 + 416), 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  internal::marisa::grimoire::vector::FlatVector::build((a1 + 672), v18);
  internal::marisa::grimoire::trie::LoudsTrie::fill_cache(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B2716AD0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1AF088644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void internal::marisa::grimoire::vector::Vector<std::pair<unsigned int,unsigned int>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 8 * v6), 8 * (v2 - v6));
  }

  a1[3] = v2;
}

uint64_t *internal::marisa::grimoire::vector::BitVector::push_back(uint64_t *this, int a2)
{
  v2 = this[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0x70000003ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:58: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
  }

  v4 = this;
  v5 = this[3];
  if (v2 == v5 << 6)
  {
    v7 = 0;
    this = internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(this, v5 + 1, &v7);
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return this;
}

uint64_t internal::marisa::grimoire::vector::BitVector::build(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 41);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v8[3] = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  internal::marisa::grimoire::vector::BitVector::build_index(v8, this, a2, a3);
  internal::marisa::grimoire::vector::Vector<unsigned long long>::shrink(this);
  v4 = v8[0];
  v8[0] = *this;
  *this = v4;
  v5 = *&v8[1];
  *&v8[1] = *(this + 2);
  *(this + 2) = v5;
  v6 = *(&v8[1] + 8);
  *(&v8[1] + 8) = *(this + 24);
  *(this + 24) = v6;
  LOBYTE(v5) = BYTE8(v8[2]);
  BYTE8(v8[2]) = *(this + 40);
  *(this + 40) = v5;
  internal::marisa::grimoire::vector::BitVector::swap(this, v8);
  if (v13)
  {
    MEMORY[0x1B2716AD0](v13, 0x1000C8077774924);
  }

  if (v11)
  {
    MEMORY[0x1B2716AD0](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x1B2716AD0](v9, 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1B2716AD0](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(&v26, a2[3]);
    v9 = a2[3];
    if (v9)
    {
      v10 = (*(&v26 + 1) + 8);
      v11 = (a2[1] + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 + v13 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    internal::marisa::grimoire::trie::Tail::build((a1 + 744), &v26, a3, *(a4 + 12));
    result = v26;
    if (v26)
    {
      return MEMORY[0x1B2716AD0]();
    }
  }

  else
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(&v26, a2[3]);
    if (a2[3])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(&v26 + 1) + v16;
        v19 = a2[1] + v16;
        v20 = *(v19 + 8);
        *v18 = *v19 + v20;
        *(v18 + 8) = v20;
        *(v18 + 12) = *(v19 + 12);
        ++v17;
        v16 += 24;
      }

      while (v17 < a2[3]);
    }

    v21 = *a2;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 25) = 0u;
    if (v21)
    {
      MEMORY[0x1B2716AD0](v21, 0x1000C8077774924);
    }

    v22 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v23 = v22;
    if (v22)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v22);
    }

    v28 = *(a1 + 1000);
    *(a1 + 1000) = v23;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v28);
    v24 = *(a1 + 1000);
    if (!v24)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001EBLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:491: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(v24, &v26, a3, a4, a5 + 1);
    result = v26;
    if (v26)
    {
      return MEMORY[0x1B2716AD0]();
    }
  }

  return result;
}

void sub_1AF088B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1B2716AF0](v9, MEMORY[0x1E69E5398]);
  if (a9)
  {
    MEMORY[0x1B2716AD0]();
  }

  _Unwind_Resume(a1);
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 59)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = (v3[1] + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (*(a2 + 24))
  {
    internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  internal::marisa::grimoire::vector::BitVector::build((a1 + 416), 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  internal::marisa::grimoire::vector::FlatVector::build((a1 + 672), v18);
  internal::marisa::grimoire::trie::LoudsTrie::fill_cache(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B2716AD0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1AF088DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    memset(v20, 0, 41);
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(v20, *(a2 + 24));
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (*(&v20[0] + 1) + 8);
      v11 = (*(a2 + 8) + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    internal::marisa::grimoire::trie::Tail::build((a1 + 744), v20, a3, *(a4 + 12));
    result = *&v20[0];
    if (*&v20[0])
    {
      return MEMORY[0x1B2716AD0](*&v20[0], 0x1000C8077774924);
    }
  }

  else
  {
    v16 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v17 = v16;
    if (v16)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v16);
    }

    *&v20[0] = *(a1 + 1000);
    *(a1 + 1000) = v17;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v20);
    v18 = *(a1 + 1000);
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001FDLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:509: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    return internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(v18, a2, a3, a4, a5 + 1);
  }

  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 12 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0x800000;
      v8 += 12;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::fill_cache(uint64_t this)
{
  v1 = *(this + 1032);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 1016) + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        *(v5 + 8) = *(*(v2 + 632) + v6);
        v7 = *(v2 + 1016);
        if ((*(*(v2 + 432) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
        {
          this = internal::marisa::grimoire::vector::BitVector::rank1((v2 + 416), v6);
          v8 = *(v2 + 720);
          v9 = v8 * this;
          v10 = (v8 * this) & 0x3F;
          v11 = v10 + v8;
          v12 = (*(v2 + 688) + 8 * ((v8 * this) >> 6));
          v13 = *v12;
          if (v11 > 0x40)
          {
            v14 = ((2 * v12[1]) << ~v9) | (v13 >> v9);
          }

          else
          {
            v14 = v13 >> v10;
          }

          v15 = (*(v2 + 728) & v14) << 8;
        }

        else
        {
          v15 = -256;
        }

        *(v7 + v3 + 8) = *(v7 + v3 + 8) | v15;
        v1 = *(v2 + 1032);
      }

      else
      {
        *v5 = -1;
      }

      v3 += 12;
    }
  }

  return this;
}

uint64_t internal::marisa::grimoire::vector::BitVector::map(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  internal::marisa::grimoire::vector::BitVector::map_(v4, a2);
  internal::marisa::grimoire::vector::BitVector::swap(this, v4);
  if (v9)
  {
    MEMORY[0x1B2716AD0](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x1B2716AD0](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x1B2716AD0](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x1B2716AD0](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF0892D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::FlatVector::map(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  internal::marisa::grimoire::vector::FlatVector::map_(v9, a2);
  v3 = *this;
  *this = v9[0];
  v9[0] = v3;
  v4 = *(this + 2);
  *(this + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(this + 24);
  *(this + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(this + 40);
  *(this + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(this + 6);
  *(this + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = v11;
  v11 = v6;
  v7 = *(this + 8);
  *(this + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF0893D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF089490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void internal::marisa::grimoire::trie::LoudsTrie::advance(internal::marisa::grimoire::vector::BitVector *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a4 == 0xFFFFFFFFLL)
  {
    MEMORY[0xFFFFFFFF] = 0xFFFFFFFFLL;
    if (*(a4 + 31) < 0)
    {
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);

      std::string::__init_copy_ctor_external(0x100000007, v9, v10);
    }

    else
    {
      MEMORY[0x100000007] = *(a4 + 8);
      MEMORY[0x100000017] = *(a4 + 24);
    }

    return;
  }

  v27 = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __p = *(a4 + 8);
  }

  v26 = 0;
  if (!a3)
  {
LABEL_20:
    *a5 = v27;
    v14 = (a5 + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v14 = __p;
    }

    goto LABEL_46;
  }

  v11 = 0;
  while ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    v26 = v11 + 1;
    if (*(a2 + v11) != *(&v27 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7))
    {
LABEL_27:
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_46;
    }

    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    ++v11;
    p_p = &__p;
LABEL_19:
    p_p->__r_.__value_.__s.__data_[v12] = 0;
    if (v11 >= a3)
    {
      goto LABEL_20;
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v26 = v11 + 1;
    p_p = __p.__r_.__value_.__r.__words[0];
    if (*(a2 + v11) != *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_27;
    }

    v12 = --__p.__r_.__value_.__l.__size_;
    ++v11;
    goto LABEL_19;
  }

LABEL_23:
  memset(&__str, 0, sizeof(__str));
  while (v26 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(this, a2, a3, &v26, &v27, &__str) & 1) == 0)
    {
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_44;
    }
  }

  std::string::basic_string(&v24, &__str, v26 - v11, 0xFFFFFFFFFFFFFFFFLL, &v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v24;
  v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  size = v24.__r_.__value_.__l.__size_;
  v16 = v24.__r_.__value_.__r.__words[0];
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = (v16 + size - 1);
  if (size)
  {
    v19 = v18 > v16;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = &v16->__r_.__value_.__s.__data_[1];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = v18->__r_.__value_.__s.__data_[0];
      v18->__r_.__value_.__s.__data_[0] = v21;
      v18 = (v18 - 1);
    }

    while (v20++ < v18);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  *a5 = v27;
  v23 = (a5 + 1);
  if (v15 < 0)
  {
    std::string::__init_copy_ctor_external(v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v23 = __p;
  }

LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}