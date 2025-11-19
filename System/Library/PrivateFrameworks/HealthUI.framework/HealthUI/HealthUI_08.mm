void NSAttributedString.init(symbolName:image:paletteColors:symbolContentSizeCategory:symbolAlignment:font:scale:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a3;
  v12 = *(a6 + 8);
  if (!a2)
  {
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v26 = v22;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v42 = *(a6 + 8);
  v14 = objc_opt_self();

  v15 = a7;
  v16 = [v14 configurationWithFont:a7 scale:a8];
  if (a5)
  {
    v17 = objc_opt_self();
    v18 = v11;
    v19 = a5;
    v20 = [v17 traitCollectionWithPreferredContentSizeCategory_];
    v21 = [v16 configurationWithTraitCollection_];

    v11 = v18;
    v16 = v21;
  }

  v23 = v16;
  v24 = sub_1C3D200C4();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  if (!v25)
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = [v25 imageWithRenderingMode_];

  a7 = v15;
  v12 = v42;
  if (a4)
  {
LABEL_11:
    sub_1C3C27CB4(0, &qword_1EC080DD0);

    v27 = sub_1C3D202A4();
    v28 = [objc_opt_self() configurationWithPaletteColors_];

    v29 = [v26 imageByApplyingSymbolConfiguration_];
    if (v29)
    {
      v30 = v29;

      swift_bridgeObjectRelease_n();
      v26 = v30;
      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_13:

  v31 = [objc_opt_self() textAttachmentWithImage_];
  v32 = v31;
  if (v12 != 255)
  {
    v33 = [v31 image];
    if (v33)
    {
      v34 = v33;
      if (v12)
      {
        if (v12 == 1)
        {
          [a7 capHeight];
          [v34 size];
        }

        else
        {
          [a7 descender];
        }
      }

      [v34 size];
      [v34 size];
      [v32 setBounds_];
    }
  }

  v35 = [objc_opt_self() attributedStringWithAttachment_];
  v36 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  if (!a5)
  {
    sub_1C3C58AD8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C3D5F370;
    v38 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    *(inited + 40) = a7;
    v39 = v38;
    v40 = a7;
    sub_1C3C7556C(inited);
    swift_setDeallocating();
    sub_1C3C7C948(inited + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v41 = sub_1C3D1FEE4();

    [v36 addAttributes:v41 range:{0, objc_msgSend(v36, sel_length)}];
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];
}

double NSAttributedString.expectedSize(forWidth:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{a1, 1.79769313e308}];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6 = CGRectGetWidth(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetHeight(v9);
  return v6;
}

double NSAttributedString.expectedSize(forHeight:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{1.79769313e308, a1}];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6 = CGRectGetWidth(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetHeight(v9);
  return v6;
}

double NSAttributedString.expectedWidth(forHeight:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{1.79769313e308, a1}];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6 = CGRectGetWidth(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetHeight(v9);
  return v6;
}

double NSAttributedString.expectedHeight(forWidth:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{a1, 1.79769313e308}];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetWidth(v12);
  v6 = x;
  v7 = y;
  v8 = width;
  v9 = height;

  return CGRectGetHeight(*&v6);
}

id NSAttributedString.expectedNumberOfLines(forWidth:font:)(void *a1, double a2)
{
  [v2 boundingRectWithSize:3 options:0 context:{a2, 1.79769313e308}];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13);
  result = [a1 lineHeight];
  v11 = round(v8 / v10);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL NSAttributedString.isTaller(than:forWidth:returnLongerIfTied:)(void *a1, char a2, double a3)
{
  [v3 boundingRectWithSize:3 options:0 context:{a3, 1.79769313e308}];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v11 = CGRectGetHeight(v20);
  [a1 boundingRectWithSize:3 options:0 context:{a3, 1.79769313e308}];
  v12 = v21.origin.x;
  v13 = v21.origin.y;
  v14 = v21.size.width;
  v15 = v21.size.height;
  CGRectGetWidth(v21);
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v16 = CGRectGetHeight(v22);
  if (v16 < v11)
  {
    return 1;
  }

  result = 0;
  if (v11 == v16 && (a2 & 1) != 0)
  {
    v18 = [v3 length];
    return [a1 length] < v18;
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.withContentSizeCategory(_:)(__C::UIContentSizeCategory a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v4 = *MEMORY[0x1E69DB648];
  v5 = v3;
  v6 = [v5 length];
  v7 = swift_allocObject();
  v7[2]._rawValue = a1._rawValue;
  v7[3]._rawValue = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C3C76D54;
  *(v8 + 24) = v7;
  v13[4] = sub_1C3C819E8;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C3C76CB8;
  v13[3] = &block_descriptor_9;
  v9 = _Block_copy(v13);
  v10 = v5;
  v11 = a1._rawValue;

  [v10 enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v9}];

  _Block_release(v9);
  LOBYTE(a1._rawValue) = swift_isEscapingClosureAtFileLocation();

  if ((a1._rawValue & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

id _sSo18NSAttributedStringC8HealthUIE16numericFormatted6string0E10Attributes05otherH0ABSS_SDySo0aB3KeyaypGAJtFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v5 = HIBYTE(a2) & 0xF;
  v14 = a1;
  v15 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v16 = 0;
  v17 = v5;

  sub_1C3D201B4();
  if (v6)
  {
    do
    {
      sub_1C3D1FFA4();
      v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v8 = sub_1C3D200C4();

      type metadata accessor for Key(0);
      sub_1C3C54C30();
      v9 = sub_1C3D1FEE4();
      v10 = [v7 initWithString:v8 attributes:{v9, v14, v15, v16, v17}];

      [v4 appendAttributedString_];
      sub_1C3D201B4();
    }

    while (v11);
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

  return v12;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s23AccessoryImageAlignmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s23AccessoryImageAlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C3C81AC8(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1C3D208C4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C692FEB0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1C3D20964();
    sub_1C3D208C4();
  }

  return v8;
}

uint64_t sub_1C3C81C48(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C3D20964();
    sub_1C3D208C4();
    v2 = sub_1C3D20964();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C3D208C4();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C692FEB0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if (!swift_dynamicCastObjCProtocolConditional())
        {
          goto LABEL_13;
        }

        sub_1C3D20894();
        sub_1C3D208D4();
        sub_1C3D208E4();
        sub_1C3D208A4();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1C3C81DC0(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C3D20964();
    sub_1C3D208C4();
    v2 = sub_1C3D20964();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C3D208C4();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C692FEB0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1C3D20894();
        sub_1C3D208D4();
        sub_1C3D208E4();
        sub_1C3D208A4();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1C3C81FC4(unint64_t a1, void (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C3D20964();
    sub_1C3D208C4();
    v4 = sub_1C3D20964();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C3D208C4();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C692FEB0](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1C3D20894();
        sub_1C3D208D4();
        sub_1C3D208E4();
        sub_1C3D208A4();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

uint64_t sub_1C3C8213C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C3C23F34(0, v3 & ~(v3 >> 63), 0);
  v4 = v14;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C692FEB0](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v3 = sub_1C3D20964();
          goto LABEL_3;
        }
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (!v8 || !v6)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v8;
        sub_1C3C23F34((v9 > 1), v10 + 1, 1);
        v8 = v13;
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_1C3D20964();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_1C3C822E0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (a1 >> 62)
  {
    if (sub_1C3D20964())
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v6 = sub_1C3C81DC0(a1);
  if (v6)
  {
    if (a2 == 1)
    {
      if (v6 >> 62)
      {
        sub_1C3C82884();
        sub_1C3D20954();
      }

      else
      {

        sub_1C3D20A64();
        sub_1C3C82884();
      }

      sub_1C3C82884();
      v18 = sub_1C3D202A4();

      v23.receiver = v3;
      v23.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
      v20 = objc_msgSendSuper2(&v23, sel_formattedSelectedRangeLabelDataWithChartData_context_, v18, 1);
    }

    else
    {
      if (!a2)
      {
        sub_1C3C8290C();
        v8 = v7;

        return v8;
      }

      if (v6 >> 62)
      {
        sub_1C3C82884();
        sub_1C3D20954();
      }

      else
      {

        sub_1C3D20A64();
        sub_1C3C82884();
      }

      sub_1C3C82884();
      v18 = sub_1C3D202A4();

      v24.receiver = v3;
      v24.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
      v20 = objc_msgSendSuper2(&v24, sel_formattedSelectedRangeLabelDataWithChartData_context_, v18, a2);
    }
  }

  else
  {
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v10, qword_1EC08DCC8);
    v11 = sub_1C3D1ED84();
    v12 = sub_1C3D204F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446210;
      v15 = sub_1C3D20CD4();
      v17 = sub_1C3C22C28(v15, v16, &v25);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C3942000, v11, v12, "[%{public}s] Asked to create selected range data for incompatible chart data", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1C69321D0](v14, -1, -1);
      MEMORY[0x1C69321D0](v13, -1, -1);
    }

    sub_1C3C82884();
    v18 = sub_1C3D202A4();
    v19 = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
    v26.receiver = v3;
    v26.super_class = v19;
    v20 = objc_msgSendSuper2(&v26, sel_formattedSelectedRangeLabelDataWithChartData_context_, v18, a2);
  }

  v21 = v20;

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v22 = sub_1C3D202B4();

  return v22;
}

id SleepApneaEventInteractiveChartFormatter.__allocating_init(localizedCategoryName:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C3D200C4();

  v3 = [v1 initWithLocalizedCategoryName_];

  return v3;
}

id SleepApneaEventInteractiveChartFormatter.init(localizedCategoryName:)()
{
  v1 = sub_1C3D200C4();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
  v2 = objc_msgSendSuper2(&v4, sel_initWithLocalizedCategoryName_, v1);

  return v2;
}

id SleepApneaEventInteractiveChartFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaEventInteractiveChartFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C3C82884()
{
  result = qword_1EC086910;
  if (!qword_1EC086910)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC086910);
  }

  return result;
}

double sub_1C3C8290C()
{
  v1 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3C58AD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v5 = v4;
  v6 = [v0 majorFont];
  *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
  if (!v6)
  {
    v6 = [objc_opt_self() preferredFontForTextStyle_];
  }

  v7 = MEMORY[0x1E69DB650];
  *(inited + 40) = v6;
  v8 = *v7;
  *(inited + 72) = *v7;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 hk_chartLollipopValueColor];
  *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 80) = v11;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v14 = sub_1C3D1FEE4();

  v15 = [v12 initWithString:v13 attributes:v14];

  [v1 setAttributedString_];
  sub_1C3C27C60();
  v16 = swift_allocObject();
  *&result = 1;
  *(v16 + 16) = xmmword_1C3D5EAE0;
  *(v16 + 32) = v1;
  return result;
}

id sub_1C3C82C44(void *a1)
{
  v1 = a1;
  v2 = HKSleepDaySummaryCollection.sleepDurationGoalSeconds.getter();

  return v2;
}

unint64_t HKSleepDaySummaryCollection.sleepDurationGoalSeconds.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_1C3C82EA8();
  v2 = sub_1C3D202B4();

  v15 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_1C3D20964();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C692FEB0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v6 sleepDurationGoalSeconds];

    ++v4;
    if (v9)
    {
      MEMORY[0x1C692F8F0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();
      v5 = v15;
      v4 = v8;
    }
  }

  if (!(v5 >> 62))
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_26:

    return 0;
  }

  v10 = sub_1C3D20964();
  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_16:
  v11 = __OFSUB__(v10, 1);
  result = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v13 = MEMORY[0x1C692FEB0](result, v5);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v5 + 8 * result + 32);
LABEL_21:
    v14 = v13;

    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C3C82EA8()
{
  result = qword_1EC086920;
  if (!qword_1EC086920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086920);
  }

  return result;
}

void sub_1C3C82EF4(void *a1)
{
  v2 = sub_1C3D1E3C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = [v6 sleepDaySummaries];
  sub_1C3C82EA8();
  v8 = sub_1C3D202B4();
  v9 = v8;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!sub_1C3D20964())
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v10 = MEMORY[0x1C692FEB0](0, v9);
    goto LABEL_6;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v10 = *(v9 + 32);
LABEL_6:
  v11 = v10;

  v12 = [v11 calendar];

  sub_1C3D1E384();
  v13 = sub_1C3D1E364();
  (*(v3 + 8))(v5, v2);

  v14 = v13;
}

void HKSleepDaySummaryCollection.calendar.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_1C3C82EA8();
  v2 = sub_1C3D202B4();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!sub_1C3D20964())
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v4 = MEMORY[0x1C692FEB0](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v4 = *(v3 + 32);
LABEL_6:
  v5 = v4;

  v6 = [v5 calendar];

  sub_1C3D1E384();
}

id sub_1C3C831CC(void *a1)
{
  v2 = sub_1C3D1DC54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1;
  HKSleepDaySummaryCollection.dateInterval.getter(v5);

  v7 = sub_1C3D1DBE4();
  (*(v3 + 8))(v5, v2);

  return v7;
}

unint64_t HKSleepDaySummaryCollection.dateInterval.getter@<X0>(void (*a1)(char *, uint64_t)@<X8>)
{
  v2 = v1;
  v4 = sub_1C3D1DC54();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v35 - v18;
  v20 = [v2 sleepDaySummaries];
  sub_1C3C82EA8();
  v21 = sub_1C3D202B4();
  v22 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    __break(1u);
    goto LABEL_16;
  }

  if (!sub_1C3D20964())
  {
    goto LABEL_15;
  }

LABEL_3:

  v35[1] = a1;
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v24 = MEMORY[0x1C692FEB0](0, v22);
    goto LABEL_6;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = *(v22 + 32);
LABEL_6:
  v25 = v24;

  v26 = [v25 dateInterval];

  sub_1C3D1DC04();
  sub_1C3D1DC34();
  a1 = *(v39 + 8);
  v39 += 8;
  a1(v7, v38);
  v27 = [v2 sleepDaySummaries];
  v28 = sub_1C3D202B4();
  v2 = v28;
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v29 = sub_1C3D20964();
  if (!v29)
  {
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:

  result = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v30 = MEMORY[0x1C692FEB0](result, v2);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v2 + 8 * result + 32);
LABEL_13:
    v31 = v30;

    v32 = [v31 dateInterval];

    sub_1C3D1DC04();
    sub_1C3D1DC14();
    a1(v7, v38);
    v33 = *(v9 + 16);
    v33(v36, v19, v8);
    v33(v37, v15, v8);
    sub_1C3D1DC24();
    v34 = *(v9 + 8);
    v34(v15, v8);
    return (v34)(v19, v8);
  }

  __break(1u);
  return result;
}

BOOL sub_1C3C836F8(void *a1)
{
  v1 = a1;
  v2 = HKSleepDaySummaryCollection.hasSleepStageData.getter();

  return v2;
}

BOOL HKSleepDaySummaryCollection.hasSleepStageData.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_1C3C82EA8();
  v2 = sub_1C3D202B4();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_1C3D20964();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C692FEB0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 hasSleepStageData];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

id sub_1C3C8389C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 metrics];
  v6 = [v5 *a3];

  return v6;
}

id sub_1C3C83920(SEL *a1)
{
  v3 = [v1 metrics];
  v4 = [v3 *a1];

  return v4;
}

id sub_1C3C83978(void *a1)
{
  v1 = a1;
  v2 = HKSleepDaySummaryCollection.scheduledBedtimeValue.getter();

  return v2;
}

id HKSleepDaySummaryCollection.scheduledBedtimeValue.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_1C3C82EA8();
  v2 = sub_1C3D202B4();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C692FEB0](v3, v2);
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      v3 = sub_1C3D20964();
    }

    else
    {
      v5 = *(v2 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 primarySchedule];

      if (v7)
      {

        MEMORY[0x1EEE9AC00](v8);
        v12 = v3;
        sub_1C3C83F74(&v12, &v13);
        v9 = v13;
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
LABEL_13:

  v10 = [v9 scheduledBedtimeValue];

  return v10;
}

id sub_1C3C83B58(void *a1)
{
  v1 = a1;
  v2 = HKSleepDaySummaryCollection.scheduledWakeTimeValue.getter();

  return v2;
}

id HKSleepDaySummaryCollection.scheduledWakeTimeValue.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_1C3C82EA8();
  v2 = sub_1C3D202B4();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C692FEB0](v3, v2);
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      v3 = sub_1C3D20964();
    }

    else
    {
      v5 = *(v2 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 primarySchedule];

      if (v7)
      {

        MEMORY[0x1EEE9AC00](v8);
        v12 = v3;
        sub_1C3C83F94(&v12, &v13);
        v9 = v13;
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
LABEL_13:

  v10 = [v9 scheduledWakeTimeValue];

  return v10;
}

double sub_1C3C83D8C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 metrics];
  v6 = [v5 *a3];

  if (v6)
  {
    v7 = [objc_opt_self() secondUnit];
    [v6 doubleValueForUnit_];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

void sub_1C3C83E58(SEL *a1)
{
  v3 = [v1 metrics];
  v4 = [v3 *a1];

  if (v4)
  {
    v5 = [objc_opt_self() secondUnit];
    [v4 doubleValueForUnit_];
  }
}

unint64_t sub_1C3C83F08@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C692FEB0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1C3C83FAC(char *a1)
{
  v2 = v1;
  v4 = sub_1C3D1EDA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v9 = result;
    v10 = *(v5 + 16);
    v10(v7, a1, v4);
    active = _s38NanoRegistryActivePairedDeviceProviderCMa();
    v12 = objc_allocWithZone(active);
    *&v12[OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_subscribers] = MEMORY[0x1E69E7CD0];
    *&v12[OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_pairedDeviceRegistry] = v9;
    v10(&v12[OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_logger], v7, v4);
    sub_1C3C85130();
    swift_allocObject();
    v13 = v9;
    *&v12[OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_updateSignalPublisher] = sub_1C3D1EEF4();
    v21.receiver = v12;
    v21.super_class = active;
    v14 = objc_msgSendSuper2(&v21, sel_init);
    sub_1C3C8444C();

    v15 = *(v5 + 8);
    v15(v7, v4);
    v16 = sub_1C3C8528C(&qword_1EC0869A0, 255, _s38NanoRegistryActivePairedDeviceProviderCMa);
    v17 = &v2[OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource26ActivePairedDeviceProvider_provider];
    *v17 = v14;
    *(v17 + 1) = v16;
    v18 = _s26ActivePairedDeviceProviderCMa();
    v20.receiver = v2;
    v20.super_class = v18;
    v19 = objc_msgSendSuper2(&v20, sel_init);
    v15(a1, v4);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3C8427C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource26ActivePairedDeviceProvider_provider + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C3C842C8()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource26ActivePairedDeviceProvider_provider + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_1C3C84314@<X0>(uint64_t *a1@<X8>)
{
  _s26ActivePairedDeviceProviderCMa();
  result = sub_1C3D1EED4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3C84350()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_pairedDeviceRegistry) getActivePairedDevice];
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    sub_1C396C69C(&v7);
    return 0;
  }

  v2 = v1;
  v3 = [v1 valueForProperty_];

  if (v3)
  {
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C8444C()
{
  ObjectType = swift_getObjectType();
  v37 = sub_1C3D20634();
  v0 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C85194();
  v36 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x1E69B3688];
  v39 = *MEMORY[0x1E69B3678];
  v40 = v5;
  v41 = *MEMORY[0x1E69B3660];
  v6 = v41;
  v38 = MEMORY[0x1E69E7CC0];
  v7 = v39;
  v8 = v5;
  v9 = v6;
  sub_1C3C23DA8(0, 3, 0);
  v10 = v38;
  v11 = objc_opt_self();
  v12 = v7;
  v13 = [v11 defaultCenter];
  sub_1C3D20644();

  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1C3C23DA8(v14 > 1, v15 + 1, 1);
    v10 = v38;
  }

  *(v10 + 16) = v15 + 1;
  v16 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v17 = *(v0 + 72);
  v18 = *(v0 + 32);
  v18(v10 + v16 + v17 * v15, v2, v37);
  v19 = v40;
  v20 = [v11 defaultCenter];
  sub_1C3D20644();

  v38 = v10;
  v22 = *(v10 + 16);
  v21 = *(v10 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_1C3C23DA8(v21 > 1, v22 + 1, 1);
    v10 = v38;
  }

  *(v10 + 16) = v22 + 1;
  v18(v10 + v16 + v17 * v22, v2, v37);
  v23 = v41;
  v24 = [v11 defaultCenter];
  sub_1C3D20644();

  v38 = v10;
  v26 = *(v10 + 16);
  v25 = *(v10 + 24);
  if (v26 >= v25 >> 1)
  {
    sub_1C3C23DA8(v25 > 1, v26 + 1, 1);
    v10 = v38;
  }

  *(v10 + 16) = v26 + 1;
  v18(v10 + v16 + v17 * v26, v2, v37);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v38 = v10;
  sub_1C3C8522C();
  sub_1C3C8528C(&qword_1EC086980, 255, MEMORY[0x1E6969F20]);
  sub_1C3C8528C(&qword_1EC086990, 255, sub_1C3C8522C);
  v27 = v33;
  sub_1C3D1EE64();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = ObjectType;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  sub_1C3C8528C(&qword_1EC086998, 255, sub_1C3C85194);
  v31 = v36;
  sub_1C3D1EFF4();

  (*(v34 + 8))(v27, v31);
  swift_beginAccess();
  sub_1C3D1EEA4();
  swift_endAccess();
}

uint64_t sub_1C3C8499C(uint64_t a1)
{
  v2 = sub_1C3D1DC74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C3D1EDA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSourceP33_3C865D9EABCD2E889047E2D14D69B8F938NanoRegistryActivePairedDeviceProvider_logger, v6);

    (*(v3 + 16))(v5, a1, v2);
    v12 = sub_1C3D1ED84();
    v13 = sub_1C3D20514();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v33 = v6;
      v15 = v14;
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v15 = 136446466;
      v16 = sub_1C3D20CD4();
      v31 = v12;
      v18 = sub_1C3C22C28(v16, v17, v34);
      v30 = v13;
      v19 = v18;

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = sub_1C3D1DC64();
      v21 = sub_1C3D20104();
      v23 = v22;

      (*(v3 + 8))(v5, v2);
      v24 = sub_1C3C22C28(v21, v23, v34);

      *(v15 + 14) = v24;
      v25 = v31;
      _os_log_impl(&dword_1C3942000, v31, v30, "[%{public}s] Received paired device change notification: %s", v15, 0x16u);
      v26 = v32;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v26, -1, -1);
      MEMORY[0x1C69321D0](v15, -1, -1);

      (*(v7 + 8))(v9, v33);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;

    sub_1C3C85130();
    sub_1C3C8528C(&qword_1EC087CE0, 255, sub_1C3C85130);
    sub_1C3D1EF64();
  }

  return result;
}

id sub_1C3C84DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s38NanoRegistryActivePairedDeviceProviderCMa()
{
  result = qword_1EC086950;
  if (!qword_1EC086950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C84EE8()
{
  result = sub_1C3D1EDA4();
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

uint64_t sub_1C3C84FB4()
{
  sub_1C3C85130();
  sub_1C3C8528C(&qword_1EC087C20, 255, sub_1C3C85130);
  return sub_1C3D1EFC4();
}

uint64_t sub_1C3C8503C@<X0>(uint64_t *a1@<X8>)
{
  _s38NanoRegistryActivePairedDeviceProviderCMa();
  result = sub_1C3D1EED4();
  *a1 = result;
  return result;
}

uint64_t sub_1C3C8507C(uint64_t a1)
{
  result = sub_1C3C8528C(&qword_1EC086960, 255, _s38NanoRegistryActivePairedDeviceProviderCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3C850D8(uint64_t a1, uint64_t a2)
{
  result = sub_1C3C8528C(&qword_1EC086968, a2, _s26ActivePairedDeviceProviderCMa);
  *(a1 + 8) = result;
  return result;
}

void sub_1C3C85130()
{
  if (!qword_1EC086970)
  {
    v0 = sub_1C3D1EF04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086970);
    }
  }
}

void sub_1C3C85194()
{
  if (!qword_1EC086978)
  {
    sub_1C3D20634();
    sub_1C3C8528C(&qword_1EC086980, 255, MEMORY[0x1E6969F20]);
    v0 = sub_1C3D1EE54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086978);
    }
  }
}

void sub_1C3C8522C()
{
  if (!qword_1EC086988)
  {
    sub_1C3D20634();
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086988);
    }
  }
}

uint64_t sub_1C3C8528C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C3C852D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C3D1E6F4();
  v120 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1C3D1E654();
  v124 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29314();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v126 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C87078();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v134 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v116 - v12;
  v14 = sub_1C3D1E7B4();
  v135 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v116 - v17;
  v18 = sub_1C3D1E694();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v116 - v26;
  v28 = sub_1C3D1E704();
  if (!*(v28 + 16))
  {

    v46 = sub_1C3D1E724();
    (*(*(v46 - 8) + 8))(a1, v46);
LABEL_47:
    v115 = type metadata accessor for SleepScoreChartData();
    return (*(*(v115 - 8) + 56))(a2, 1, 1, v115);
  }

  v139 = v14;
  v118 = v4;
  v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v131 = *(v19 + 16);
  v132 = v19 + 16;
  v131(v24, v28 + v29, v18);

  (*(v19 + 32))(v27, v24, v18);
  v121 = a1;
  v30 = sub_1C3D1E704();
  v31 = *(v30 + 16);
  v127 = v18;
  v122 = v27;
  v123 = v19;
  v125 = a2;
  if (v31)
  {
    v130 = v13;
    v117 = v30;
    v32 = v30 + v29;
    v33 = *(v19 + 72);
    v34 = (v19 + 8);
    v35 = v134;
    v36 = (v135 + 48);
    v128 = (v135 + 32);
    v129 = v33;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v139;
    do
    {
      v131(v21, v32, v18);
      sub_1C3D1E684();
      v39 = v130;
      sub_1C3C8712C(v35, v130, sub_1C3C87078);
      (*v34)(v21, v18);
      if ((*v36)(v39, 1, v38) == 1)
      {
        sub_1C3C870D0(v39);
      }

      else
      {
        v40 = *v128;
        (*v128)(v133, v39, v38);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v37;
        }

        else
        {
          v41 = sub_1C3C46B24(0, v37[2] + 1, 1, v37);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_1C3C46B24(v42 > 1, v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v37 = v41;
        v44 = v41 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v43;
        v38 = v139;
        v40(v44, v133, v139);
        v18 = v127;
      }

      v32 += v129;
      --v31;
    }

    while (v31);

    v27 = v122;
    v19 = v123;
    v45 = v37;
    a2 = v125;
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
    v38 = v139;
  }

  v47 = v121;
  if (!v45[2])
  {

    v114 = sub_1C3D1E724();
    (*(*(v114 - 8) + 8))(v47, v114);
    (*(v19 + 8))(v27, v18);
    goto LABEL_47;
  }

  v48 = v45;
  sub_1C3D1E714();
  v49 = v48[2];
  v50 = MEMORY[0x1E69E7CC0];
  v128 = v49;
  v129 = v48;
  if (v49)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, v49, 0);
    v50 = v140;
    v51 = *(v135 + 16);
    v52 = v48 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v133 = *(v135 + 72);
    v134 = v51;
    v53 = (v135 + 8);
    v54 = v49;
    do
    {
      v55 = v138;
      v56 = v139;
      v134(v138, v52, v139);
      v57 = sub_1C3D1E794();
      (*v53)(v55, v56);
      v140 = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C3C23CBC((v58 > 1), v59 + 1, 1);
        v50 = v140;
      }

      *(v50 + 16) = v59 + 1;
      *(v50 + 8 * v59 + 32) = v57;
      v52 += v133;
      --v54;
    }

    while (v54);
    v38 = v139;
    v49 = v128;
  }

  v60 = sub_1C3CABB08(v50);
  v62 = v61;

  if (v62)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v117 = v60;
  v64 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, v49, 0);
    v64 = v140;
    v133 = *(v135 + 16);
    v65 = v129 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v132 = *(v135 + 72);
    LODWORD(v131) = *MEMORY[0x1E69D36C0];
    v130 = (v124 + 104);
    v66 = (v124 + 8);
    v134 = (v135 + 16);
    v67 = (v135 + 8);
    v68 = v49;
    do
    {
      v69 = v138;
      (v133)(v138, v65, v38);
      v70 = v136;
      v71 = v38;
      v72 = v137;
      (*v130)(v136, v131, v137);
      v73 = sub_1C3D1E7A4();
      (*v66)(v70, v72);
      (*v67)(v69, v71);
      v140 = v64;
      v75 = *(v64 + 16);
      v74 = *(v64 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C3C23CBC((v74 > 1), v75 + 1, 1);
        v64 = v140;
      }

      *(v64 + 16) = v75 + 1;
      *(v64 + 8 * v75 + 32) = v73;
      v65 += v132;
      --v68;
      v38 = v139;
    }

    while (v68);
    a2 = v125;
    v49 = v128;
  }

  v76 = sub_1C3CABB08(v64);
  v78 = v77;

  if (v78)
  {
    goto LABEL_49;
  }

  v116 = v76;
  v79 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, v49, 0);
    v79 = v140;
    v133 = *(v135 + 16);
    v80 = v129 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v132 = *(v135 + 72);
    LODWORD(v131) = *MEMORY[0x1E69D36B8];
    v130 = (v124 + 104);
    v81 = (v124 + 8);
    v134 = (v135 + 16);
    v82 = (v135 + 8);
    v83 = v49;
    do
    {
      v84 = v138;
      (v133)(v138, v80, v38);
      v85 = v136;
      v86 = v38;
      v87 = v137;
      (*v130)(v136, v131, v137);
      v88 = sub_1C3D1E7A4();
      (*v81)(v85, v87);
      (*v82)(v84, v86);
      v140 = v79;
      v90 = *(v79 + 16);
      v89 = *(v79 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1C3C23CBC((v89 > 1), v90 + 1, 1);
        v79 = v140;
      }

      *(v79 + 16) = v90 + 1;
      *(v79 + 8 * v90 + 32) = v88;
      v80 += v132;
      --v83;
      v38 = v139;
    }

    while (v83);
    a2 = v125;
    v49 = v128;
  }

  v91 = sub_1C3CABB08(v79);
  v93 = v92;

  v94 = v122;
  v95 = v123;
  if ((v93 & 1) == 0)
  {
    v96 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v130 = v91;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1C3C23CBC(0, v49, 0);
      v96 = v140;
      v134 = *(v135 + 16);
      v97 = v129 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v133 = *(v135 + 72);
      LODWORD(v132) = *MEMORY[0x1E69D36B0];
      v131 = (v124 + 104);
      v98 = (v124 + 8);
      v135 += 16;
      v99 = v49;
      v100 = (v135 - 8);
      do
      {
        v101 = v138;
        v134(v138, v97, v38);
        v102 = v136;
        v103 = v38;
        v104 = v137;
        (*v131)(v136, v132, v137);
        v105 = sub_1C3D1E7A4();
        (*v98)(v102, v104);
        (*v100)(v101, v103);
        v140 = v96;
        v107 = *(v96 + 16);
        v106 = *(v96 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_1C3C23CBC((v106 > 1), v107 + 1, 1);
          v96 = v140;
        }

        *(v96 + 16) = v107 + 1;
        *(v96 + 8 * v107 + 32) = v105;
        v97 += v133;
        --v99;
        v38 = v139;
      }

      while (v99);
      a2 = v125;
      v94 = v122;
      v95 = v123;
      v49 = v128;
      v91 = v130;
    }

    v108 = sub_1C3CABB08(v96);
    v110 = v109;

    if ((v110 & 1) == 0)
    {

      v111 = v119;
      sub_1C3D1E674();
      v112 = sub_1C3D1E724();
      (*(*(v112 - 8) + 8))(v121, v112);
      (*(v95 + 8))(v94, v127);
      sub_1C3C8712C(v126, a2, sub_1C3C29314);
      v113 = type metadata accessor for SleepScoreChartData();
      *(a2 + v113[5]) = v117;
      *(a2 + v113[6]) = v116;
      *(a2 + v113[7]) = v91;
      *(a2 + v113[8]) = v108;
      (*(v120 + 32))(a2 + v113[9], v111, v118);
      *(a2 + v113[10]) = v49 > 1;
      return (*(*(v113 - 1) + 56))(a2, 0, 1, v113);
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C3C86068(uint64_t a1, uint64_t a2)
{
  sub_1C3C29314();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SleepScoreChartData()
{
  result = qword_1EC0869B8;
  if (!qword_1EC0869B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreChartData.score.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreChartData();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SleepScoreChartData.durationPoints.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreChartData();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SleepScoreChartData.bedtimePoints.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreChartData();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SleepScoreChartData.interruptionsPoints.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreChartData();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SleepScoreChartData.algorithmVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreChartData() + 36);
  v4 = sub_1C3D1E6F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreChartData.algorithmVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreChartData() + 36);
  v4 = sub_1C3D1E6F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreChartData.isAverage.setter(char a1)
{
  result = type metadata accessor for SleepScoreChartData();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SleepScoreChartData.levelRange.getter()
{
  v1 = sub_1C3D1E6F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepScoreChartData();
  (*(v2 + 16))(v4, v0 + *(v5 + 36), v1);
  return sub_1C3D1E6B4();
}

uint64_t SleepScoreChartData.points(for:)(uint64_t a1)
{
  v3 = sub_1C3D1E654();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69D36C0])
  {
    return *(v1 + *(type metadata accessor for SleepScoreChartData() + 24));
  }

  if (v8 == *MEMORY[0x1E69D36B8])
  {
    return *(v1 + *(type metadata accessor for SleepScoreChartData() + 28));
  }

  if (v8 == *MEMORY[0x1E69D36B0])
  {
    return *(v1 + *(type metadata accessor for SleepScoreChartData() + 32));
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t SleepScoreChartData.hash(into:)()
{
  sub_1C3D1FE54();
  sub_1C3C87030(&unk_1EC087240, MEMORY[0x1E696B418]);
  sub_1C3D1FF84();
  sub_1C3C29314();
  sub_1C3D1FF84();
  v1 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1C6930170](*(v0 + v1[5]));
  MEMORY[0x1C6930170](*(v0 + v1[6]));
  MEMORY[0x1C6930170](*(v0 + v1[7]));
  MEMORY[0x1C6930170](*(v0 + v1[8]));
  sub_1C3D1E6F4();
  sub_1C3C87030(&qword_1EC0869A8, MEMORY[0x1E69D36F0]);
  sub_1C3D1FF84();
  return sub_1C3D20B24();
}

uint64_t SleepScoreChartData.hashValue.getter()
{
  sub_1C3D20B04();
  sub_1C3D1FE54();
  sub_1C3C87030(&unk_1EC087240, MEMORY[0x1E696B418]);
  sub_1C3D1FF84();
  sub_1C3C29314();
  sub_1C3D1FF84();
  v1 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1C6930170](*(v0 + v1[5]));
  MEMORY[0x1C6930170](*(v0 + v1[6]));
  MEMORY[0x1C6930170](*(v0 + v1[7]));
  MEMORY[0x1C6930170](*(v0 + v1[8]));
  sub_1C3D1E6F4();
  sub_1C3C87030(&qword_1EC0869A8, MEMORY[0x1E69D36F0]);
  sub_1C3D1FF84();
  sub_1C3D20B24();
  return sub_1C3D20B34();
}

uint64_t sub_1C3C86AB0(uint64_t a1, int *a2)
{
  sub_1C3D1FE54();
  sub_1C3C87030(&unk_1EC087240, MEMORY[0x1E696B418]);
  sub_1C3D1FF84();
  sub_1C3C29314();
  sub_1C3D1FF84();
  MEMORY[0x1C6930170](*(v2 + a2[5]));
  MEMORY[0x1C6930170](*(v2 + a2[6]));
  MEMORY[0x1C6930170](*(v2 + a2[7]));
  MEMORY[0x1C6930170](*(v2 + a2[8]));
  sub_1C3D1E6F4();
  sub_1C3C87030(&qword_1EC0869A8, MEMORY[0x1E69D36F0]);
  sub_1C3D1FF84();
  return sub_1C3D20B24();
}

uint64_t sub_1C3C86BF8(uint64_t a1, int *a2)
{
  sub_1C3D20B04();
  sub_1C3D1FE54();
  sub_1C3C87030(&unk_1EC087240, MEMORY[0x1E696B418]);
  sub_1C3D1FF84();
  sub_1C3C29314();
  sub_1C3D1FF84();
  MEMORY[0x1C6930170](*(v2 + a2[5]));
  MEMORY[0x1C6930170](*(v2 + a2[6]));
  MEMORY[0x1C6930170](*(v2 + a2[7]));
  MEMORY[0x1C6930170](*(v2 + a2[8]));
  sub_1C3D1E6F4();
  sub_1C3C87030(&qword_1EC0869A8, MEMORY[0x1E69D36F0]);
  sub_1C3D1FF84();
  sub_1C3D20B24();
  return sub_1C3D20B34();
}

uint64_t _s8HealthUI19SleepScoreChartDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1C3D1FE54();
  sub_1C3C87030(&unk_1EC0862A0, MEMORY[0x1E696B418]);
  if (sub_1C3D20034() & 1) != 0 && (sub_1C3C29314(), (sub_1C3D20034()) && (v4 = type metadata accessor for SleepScoreChartData(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && (v5 = v4, sub_1C3D1E6F4(), sub_1C3C87030(&qword_1EC0869C8, MEMORY[0x1E69D36F0]), sub_1C3D20254(), sub_1C3D20254(), v9 == v8))
  {
    v6 = *(a1 + v5[10]) ^ *(a2 + v5[10]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C3C86F90()
{
  sub_1C3C29314();
  if (v0 <= 0x3F)
  {
    sub_1C3D1E6F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C3C87030(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3C87078()
{
  if (!qword_1EC0868D0)
  {
    sub_1C3D1E7B4();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0868D0);
    }
  }
}

uint64_t sub_1C3C870D0(uint64_t a1)
{
  sub_1C3C87078();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C8712C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C87194@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C3C6E6F4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - v10);
  sub_1C3D1E054();
  v12 = sub_1C3D1E064();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    goto LABEL_8;
  }

  sub_1C3C876E8(v11);
  if (qword_1EC0850C8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v15, qword_1EC08DCF8);

  v11 = sub_1C3D1ED84();
  v16 = sub_1C3D20504();

  if (os_log_type_enabled(v11, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = a1;
    v21 = v19;
    v25 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1C3C22C28(v20, a2, &v25);
    _os_log_impl(&dword_1C3942000, v11, v16, "HKClinicalAuthorizationSequenceContext failed to create Health App url from %s, returning static ViewHealthRecords deep link", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1C69321D0](v21, -1, -1);
    v22 = v18;
    a3 = v24;
    MEMORY[0x1C69321D0](v22, -1, -1);
  }

  sub_1C3D1E054();
  if (v14(v8, 1, v12) == 1)
  {
    __break(1u);
LABEL_8:
    v8 = v11;
  }

  return (*(v13 + 32))(a3, v8, v12);
}

uint64_t sub_1C3C87438@<X0>(uint64_t a1@<X8>)
{
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD000000000000036, 0x80000001C3D850A0);
  v3 = [v1 source];
  v4 = [v3 bundleIdentifier];

  v5 = sub_1C3D20104();
  v7 = v6;

  MEMORY[0x1C692F800](v5, v7);

  sub_1C3C87194(0, 0xE000000000000000, a1);
}

uint64_t sub_1C3C8753C@<X0>(uint64_t a1@<X8>)
{
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD00000000000002BLL, 0x80000001C3D85040);
  sub_1C3D1E224();
  sub_1C3C87690();
  v3 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v3);

  MEMORY[0x1C692F800](0x3D6372733FLL, 0xE500000000000000);
  v4 = [v1 source];
  v5 = [v4 bundleIdentifier];

  v6 = sub_1C3D20104();
  v8 = v7;

  MEMORY[0x1C692F800](v6, v8);

  sub_1C3C87194(0, 0xE000000000000000, a1);
}

unint64_t sub_1C3C87690()
{
  result = qword_1EC0869D0;
  if (!qword_1EC0869D0)
  {
    sub_1C3D1E224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0869D0);
  }

  return result;
}

uint64_t sub_1C3C876E8(uint64_t a1)
{
  sub_1C3C6E6F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AudiogramLongitudinalChartFormatter.__allocating_init(displayType:unitController:)(void *a1, void *a2)
{
  v3 = v2;
  v12.receiver = objc_allocWithZone(v3);
  v12.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 hk_chartCurrentValueValueFont];
  [v8 setMajorFont_];

  v10 = [v7 hk_chartCurrentValueKindFont];
  [v8 setMinorFont_];

  [v8 setUnitController_];
  [v8 setDisplayType_];

  return v8;
}

unint64_t sub_1C3C87940(unint64_t a1)
{
  result = sub_1C3C81F34(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    return v3;
  }

  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  result = sub_1C3D20964();
  v5 = result;
  if (!result)
  {
LABEL_37:

    return v3;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v7)
      {
        v10 = MEMORY[0x1C692FEB0](v6, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary];
      v13 = [v12 leftEarMetrics];
      if (v13 && (v14 = v13, v15 = [v13 averageSensitivity], v14, v15))
      {
        v16 = [objc_opt_self() decibelHearingLevelUnit];
        [v15 doubleValueForUnit_];
        v18 = v17;

        v9 = v9 + 1.0;
        v8 = v8 + v18;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);
    if (v9 <= 0.0)
    {
      v54 = 0;
    }

    else
    {
      v19 = objc_opt_self();
      v20 = [v19 decibelHearingLevelUnit];
      v21 = [objc_opt_self() quantityWithUnit:v20 doubleValue:v8 / v9];

      v22 = [v19 decibelHearingLevelUnit];
      [v21 doubleValueForUnit_];
      v24 = v23;
      v25 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
      [v25 setDataType_];
      v26 = [v1 attributedStringWithValue:v22 unit:1 showUnit:v24];
      [v25 setAttributedString_];

      v27 = sub_1C3D1E804();
      v54 = v25;
      [v25 setValueAsNumber_];
    }

    v28 = 0;
    v29 = 0.0;
    v30 = 0.0;
    do
    {
      if (v7)
      {
        v31 = MEMORY[0x1C692FEB0](v28, v4);
      }

      else
      {
        v31 = *(v4 + 8 * v28 + 32);
      }

      v32 = v31;
      v33 = *&v31[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary];
      v34 = [v33 rightEarMetrics];
      if (v34 && (v35 = v34, v36 = [v34 averageSensitivity], v35, v36))
      {
        v37 = [objc_opt_self() decibelHearingLevelUnit];
        [v36 doubleValueForUnit_];
        v39 = v38;

        v30 = v30 + 1.0;
        v29 = v29 + v39;
      }

      else
      {
      }

      ++v28;
    }

    while (v5 != v28);

    if (v30 <= 0.0)
    {
      v46 = 0;
    }

    else
    {
      v40 = objc_opt_self();
      v41 = [v40 decibelHearingLevelUnit];
      v42 = [objc_opt_self() quantityWithUnit:v41 doubleValue:v29 / v30];

      v43 = [v40 decibelHearingLevelUnit];
      [v42 doubleValueForUnit_];
      v45 = v44;
      v46 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
      [v46 setDataType_];
      v47 = [v1 attributedStringWithValue:v43 unit:1 showUnit:v45];
      [v46 setAttributedString_];

      v48 = sub_1C3D1E804();
      [v46 setValueAsNumber_];
    }

    v3 = MEMORY[0x1E69E7CC0];
    v56[4] = v54;
    v56[5] = v46;
    v55 = MEMORY[0x1E69E7CC0];
    v49 = v46;
    v50 = v54;
    for (i = 0; i != 2; ++i)
    {
      v52 = v56[i + 4];
      if (v52)
      {
        v53 = v52;
        MEMORY[0x1C692F8F0]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C3D202C4();
        }

        sub_1C3D202F4();
        v3 = v55;
      }
    }

    sub_1C3C884D4();
    swift_arrayDestroy();

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C3C87F1C(unint64_t a1)
{
  result = sub_1C3C81F34(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    return v2;
  }

  v3 = result;
  v30 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
    result = sub_1C3D20964();
    v4 = result;
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_24:

    return v2;
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C692FEB0](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary;
      v9 = [*&v6[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary] leftEarMetrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 averageSensitivity];
        if (v11)
        {
          v12 = v11;
          v13 = [objc_opt_self() decibelHearingLevelUnit];
          [v12 doubleValueForUnit_];
          v15 = v14;
          v16 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
          [v16 setDataType_];
          v17 = [v29 attributedStringWithValue:v13 unit:1 showUnit:v15];
          [v16 setAttributedString_];

          v18 = sub_1C3D1E804();
          [v16 setValueAsNumber_];

          MEMORY[0x1C692F8F0]();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C3D202C4();
          }

          sub_1C3D202F4();

          v2 = v30;
        }

        else
        {
        }
      }

      v19 = [*&v7[v8] rightEarMetrics];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 averageSensitivity];
        if (v21)
        {
          v22 = v21;
          v23 = [objc_opt_self() decibelHearingLevelUnit];
          [v22 doubleValueForUnit_];
          v25 = v24;
          v26 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
          [v26 setDataType_];
          v27 = [v29 attributedStringWithValue:v23 unit:1 showUnit:v25];
          [v26 setAttributedString_];

          v28 = sub_1C3D1E804();
          [v26 setValueAsNumber_];

          MEMORY[0x1C692F8F0]();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C3D202C4();
          }

          sub_1C3D202F4();

          v2 = v30;
          goto LABEL_8;
        }
      }

LABEL_8:
      if (v4 == ++v5)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

id AudiogramLongitudinalChartFormatter.init(displayType:unitController:)(void *a1, void *a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 hk_chartCurrentValueValueFont];
  [v7 setMajorFont_];

  v9 = [v6 hk_chartCurrentValueKindFont];
  [v7 setMinorFont_];

  [v7 setUnitController_];
  [v7 setDisplayType_];

  return v7;
}

id AudiogramLongitudinalChartFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramLongitudinalChartFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C3C88488()
{
  result = qword_1EC0866B0;
  if (!qword_1EC0866B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0866B0);
  }

  return result;
}

void sub_1C3C884D4()
{
  if (!qword_1EC0869D8)
  {
    sub_1C3C88488();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0869D8);
    }
  }
}

void sub_1C3C8852C(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationAccountsIntroViewController_delegate] = a1;
  *&v2[OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationAccountsIntroViewController_viewControllerToPush] = a2;
  swift_unknownObjectRetain();
  v4 = a2;
  v5 = sub_1C3D200C4();
  v6 = HKHealthRecordsAPILocalizedString(v5);

  if (v6)
  {
    v7 = HKHealthUIFrameworkBundle();
    v8 = sub_1C3D200C4();
    v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

    v12.receiver = v2;
    v12.super_class = type metadata accessor for ClinicalAuthorizationAccountsIntroViewController();
    v10 = objc_msgSendSuper2(&v12, sel_initWithTitle_detailText_icon_contentLayout_, v6, 0, v9, 2);

    v11 = v10;
    [v11 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3C8875C()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonPressed_];
  [v2 setRightBarButtonItem_];

  v4 = [objc_opt_self() boldButton];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemBlueColor];
  [v6 setTintColor_];

  [v6 addTarget:v0 action:sel_nextButtonPressed_ forControlEvents:64];
  v8 = sub_1C3D200C4();
  v9 = HKHealthRecordsAPILocalizedString(v8);

  [v6 setTitle:v9 forState:0];
  v10 = [v0 buttonTray];
  [v10 addButton_];
}

void sub_1C3C88944()
{
  v1 = sub_1C3D200C4();
  v2 = HKHealthRecordsAPILocalizedString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = sub_1C3D200C4();
  v4 = HKHealthRecordsAPILocalizedString(v3);

  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_1C3D200C4();
  [v0 addBulletedListItemWithTitle:v2 description:v4 symbolName:v5 tintColor:0];

  v6 = sub_1C3D200C4();
  v7 = HKHealthRecordsAPILocalizedString(v6);

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C3D200C4();
  v9 = HKHealthRecordsAPILocalizedString(v8);

  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_1C3D200C4();
  [v0 addBulletedListItemWithTitle:v7 description:v9 symbolName:v10 tintColor:0];

  v11 = sub_1C3D200C4();
  v12 = HKHealthRecordsAPILocalizedString(v11);

  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_1C3D200C4();
  v14 = HKHealthRecordsAPILocalizedString(v13);

  if (!v14)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = sub_1C3D200C4();
  [v0 addBulletedListItemWithTitle:v12 description:v14 symbolName:v15 tintColor:0];
}

void sub_1C3C88CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationAccountsIntroViewController_delegate);
  v2 = objc_opt_self();
  v3 = sub_1C3D200C4();
  v4 = [v2 hk:7 error:v3 description:?];

  v5 = sub_1C3D1DF94();
  [v1 promptControllerDidFinish:v0 error:v5];
}

void sub_1C3C88E68(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    oslog = v6;
    [v6 pushViewController:a1 animated:a2 & 1];
  }

  else
  {
    if (qword_1EC0850C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v7, qword_1EC08DCF8);
    oslog = sub_1C3D1ED84();
    v8 = sub_1C3D20504();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C3942000, oslog, v8, "ClinicalAuthorizationAccountsIntroViewController tasked to push but doesn't live in a navigation controller", v9, 2u);
      MEMORY[0x1C69321D0](v9, -1, -1);
    }
  }
}

uint64_t sub_1C3C88FB4()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_1C3C89048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalAuthorizationAccountsIntroViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CalendarViewDataSource.startDate(forSection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v3 = sub_1C3D1E1E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E3A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C8D4DC(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  (*(v8 + 104))(v10, *MEMORY[0x1E6969A78], v7);
  v14 = *(v4 + 16);
  v19 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate;
  v20 = v14;
  v14(v6, v2 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate, v3);
  v21 = v2;
  sub_1C3D1E394();
  v15 = *(v4 + 8);
  v15(v6, v3);
  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 48))(v13, 1, v3) != 1)
  {
    return (*(v4 + 32))(v22, v13, v3);
  }

  sub_1C3C27B38(v13);
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1C3D20834();

  strcpy(v25, "Unable to add ");
  HIBYTE(v25[1]) = -18;
  v24 = v23;
  v17 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v17);

  MEMORY[0x1C692F800](0x207368746E6F6D20, 0xEB00000000206F74);
  v20(v6, v21 + v19, v3);
  sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
  v18 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v18);

  v15(v6, v3);
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

uint64_t CalendarViewDataSource.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_calendar;
  v4 = sub_1C3D1E3C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CalendarViewDataSource.__allocating_init(cellProvider:calendar:currentDate:startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1C3C8C8E8(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t CalendarViewDataSource.init(cellProvider:calendar:currentDate:startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6)
{
  v6 = sub_1C3C8C8E8(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t CalendarViewDataSource.__allocating_init(cellProvider:calendar:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a2;
  v55 = a1;
  v58 = sub_1C3D1E3C4();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E3A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C8D4DC(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_1C3D1E1E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - v26;
  (*(v8 + 104))(v10, *MEMORY[0x1E6969A68], v7, v25);
  v57 = a4;
  sub_1C3D1E394();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C3C27B38(v13);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1C3D20834();

    v59 = 0xD00000000000002CLL;
    v60 = 0x80000001C3D85380;
    sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
    v46 = sub_1C3D20A14();
    MEMORY[0x1C692F800](v46);

    result = sub_1C3D20944();
    __break(1u);
  }

  else
  {
    v28 = *(v15 + 32);
    v49 = v27;
    v28(v27, v13, v14);
    v29 = a3;
    v48 = a3;
    v30 = v14;
    v31 = sub_1C3D1E364();
    v32 = sub_1C3D1E174();
    v33 = [v31 hk:v32 startOfYearForDate:0 addingYears:?];

    v34 = v23;
    v47 = v23;
    sub_1C3D1E1A4();

    v35 = v56;
    v36 = v53;
    (*(v56 + 16))(v53, v29, v58);
    v37 = *(v15 + 16);
    v38 = v50;
    v39 = v57;
    v37(v50, v57, v30);
    v40 = v51;
    v37(v51, v34, v30);
    v41 = v52;
    v37(v52, v39, v30);
    v42 = objc_allocWithZone(type metadata accessor for CalendarViewDataSource());
    v43 = sub_1C3C8C8E8(v55, v54, v36, v38, v40, v41);
    swift_unknownObjectRelease();
    v44 = *(v15 + 8);
    v44(v39, v30);
    (*(v35 + 8))(v48, v58);
    v44(v47, v30);
    v44(v49, v30);
    return v43;
  }

  return result;
}

id CalendarViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CalendarViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8HealthUI22CalendarViewDataSourceC16numberOfSections2inSiSo012UICollectionD0C_tF_0()
{
  v0 = sub_1C3D1DCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v28 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_calendar;
  sub_1C3C8D4DC(0, &qword_1EC086A10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v10 = sub_1C3D1E3A4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C3D5F370;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E6969A78], v10);
  sub_1C3C8C5D4(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  v14 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startComponents;
  v15 = *(v1 + 16);
  v16 = v29;
  v15(v6, v29 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startComponents, v0);
  v27 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endComponents;
  v15(v3, v16 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endComponents, v0);
  sub_1C3D1E2F4();

  v17 = *(v1 + 8);
  v17(v3, v0);
  v28 = v6;
  v17(v6, v0);
  v18 = sub_1C3D1DCE4();
  LOBYTE(v3) = v19;
  v17(v9, v0);
  if ((v3 & 1) == 0)
  {
    return v18;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1C3D20834();

  v30 = 0xD00000000000001CLL;
  v31 = 0x80000001C3D854D0;
  v21 = v28;
  v22 = v29 + v14;
  v23 = v29;
  v15(v28, v22, v0);
  sub_1C3C8D7F4(&unk_1EC087600, MEMORY[0x1E6968278]);
  v24 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v24);

  v17(v21, v0);
  MEMORY[0x1C692F800](544175136, 0xE400000000000000);
  v15(v21, v23 + v27, v0);
  v25 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v25);

  v17(v21, v0);
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

uint64_t CalendarViewDataSource.startDate(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C3D1E1E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E5A4();
  CalendarViewDataSource.startDate(forSection:)(v6, v5);
  v7 = sub_1C3C8A3AC();
  result = sub_1C3D1E594();
  if (__OFSUB__(result, v7))
  {
    __break(1u);
  }

  else
  {
    sub_1C3C8A610((result - v7) & ~((result - v7) >> 63), a1);
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1C3C8A3AC()
{
  v0 = sub_1C3D1E3A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 104);
  v8(&v15 - v6, *MEMORY[0x1E6969AB0], v0, v5);
  (v8)(v3, *MEMORY[0x1E6969A10], v0);
  v9 = sub_1C3D1E2C4();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v7, v0);
  if (v11)
  {
    goto LABEL_5;
  }

  result = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_5:
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1C3D20834();

    v15 = 0xD000000000000024;
    v16 = 0x80000001C3D854F0;
    sub_1C3D1E1E4();
    sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
    v14 = sub_1C3D20A14();
    MEMORY[0x1C692F800](v14);

    result = sub_1C3D20944();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3C8A610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1C3D1E1E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E3A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C8D4DC(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  (*(v8 + 104))(v10, *MEMORY[0x1E6969A48], v7, v12);
  v19 = v2;
  sub_1C3D1E394();
  (*(v8 + 8))(v10, v7);
  if ((*(v5 + 48))(v14, 1, v4) != 1)
  {
    return (*(v5 + 32))(v21, v14, v4);
  }

  sub_1C3C27B38(v14);
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_1C3D20834();

  strcpy(v23, "Unable to add ");
  HIBYTE(v23[1]) = -18;
  v22 = a1;
  v16 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v16);

  MEMORY[0x1C692F800](0x6F74207379616420, 0xE900000000000020);
  v17 = v20;
  (*(v5 + 16))(v20, v19 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate, v4);
  sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
  v18 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v18);

  (*(v5 + 8))(v17, v4);
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

uint64_t sub_1C3C8A9E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C3D1DCF4();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E1E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v30 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate;
  v32 = v12;
  (v12)(v11, v1 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate, v7, v9);
  sub_1C3C8D7F4(qword_1EC087560, MEMORY[0x1E6969530]);
  v13 = sub_1C3D1FFF4();
  v33 = *(v8 + 8);
  v33(v11, v7);
  result = 0;
  if (v13)
  {
    v32(v11, v2 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endDate, v7);
    v15 = sub_1C3D20004();
    v33(v11, v7);
    if (v15)
    {
      v27[1] = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_calendar;
      sub_1C3C8D4DC(0, &qword_1EC086A10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v16 = sub_1C3D1E3A4();
      v17 = *(v16 - 8);
      v28 = v2;
      v18 = v17;
      v19 = *(v17 + 80);
      v29 = a1;
      v20 = (v19 + 32) & ~v19;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C3D5F370;
      (*(v18 + 104))(v21 + v20, *MEMORY[0x1E6969A78], v16);
      sub_1C3C8C5D4(v21);
      v27[0] = v4;
      swift_setDeallocating();
      (*(v18 + 8))(v21 + v20, v16);
      v2 = v28;
      swift_deallocClassInstance();
      a1 = v30;
      v32(v11, v2 + v30, v7);
      sub_1C3D1E304();

      v33(v11, v7);
      v22 = sub_1C3D1DCE4();
      LOBYTE(v16) = v23;
      (*(v31 + 8))(v6, v27[0]);
      if ((v16 & 1) == 0)
      {
        return v22;
      }

      goto LABEL_9;
    }

    v24 = _s8HealthUI22CalendarViewDataSourceC16numberOfSections2inSiSo012UICollectionD0C_tF_0();
    if (__OFSUB__(v24, 1))
    {
      __break(1u);
LABEL_9:
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1C3D20834();

      v34 = 0xD00000000000001CLL;
      v35 = 0x80000001C3D854D0;
      v32(v11, v2 + a1, v7);
      sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v25 = sub_1C3D20A14();
      MEMORY[0x1C692F800](v25);

      v33(v11, v7);
      MEMORY[0x1C692F800](544175136, 0xE400000000000000);
      v26 = sub_1C3D20A14();
      MEMORY[0x1C692F800](v26);

      result = sub_1C3D20944();
      __break(1u);
      return result;
    }

    return (v24 - 1) & ~((v24 - 1) >> 63);
  }

  return result;
}

uint64_t CalendarViewDataSource.indexPath(containing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_1C3D1DCF4();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E1E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1C3C8A9E4(a1);
  (*(v8 + 16))(v13, v2 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate, v7);
  sub_1C3C8D7F4(qword_1EC087560, MEMORY[0x1E6969530]);
  v15 = sub_1C3D1FFF4();
  v41 = *(v8 + 8);
  v41(v13, v7);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1C692DBE0](0, v14);
  }

  CalendarViewDataSource.startDate(forSection:)(v14, v10);
  v16 = sub_1C3C8A3AC();
  v40 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_calendar;
  v17 = sub_1C3D1E324();
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = v20;
  v36 = a2;
  v37 = v16;
  v38 = v14;
  sub_1C3C8D4DC(0, &qword_1EC086A10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v21 = sub_1C3D1E3A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v39 = v10;
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C3D5F370;
  (*(v22 + 104))(v25 + v24, *MEMORY[0x1E6969A48], v21);
  sub_1C3C8C5D4(v25);
  swift_setDeallocating();
  v26 = v39;
  (*(v22 + 8))(v25 + v24, v21);
  swift_deallocClassInstance();
  v27 = v43;
  sub_1C3D1E304();

  v28 = sub_1C3D1DCB4();
  LOBYTE(v21) = v29;
  (*(v5 + 8))(v27, v42);
  if (v21)
  {
LABEL_15:
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1C3D20834();

    v44 = 0xD00000000000001ALL;
    v45 = 0x80000001C3D853D0;
    sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
    v32 = sub_1C3D20A14();
    MEMORY[0x1C692F800](v32);

    MEMORY[0x1C692F800](544175136, 0xE400000000000000);
    v33 = sub_1C3D20A14();
    MEMORY[0x1C692F800](v33);

    result = sub_1C3D20944();
    __break(1u);
    return result;
  }

  if (__OFADD__(v37, v28))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v35 >= v37 + v28)
  {
    v30 = v37 + v28;
  }

  else
  {
    v30 = v35;
  }

  MEMORY[0x1C692DBE0](v30, v38);
  return (v41)(v26, v7);
}

Swift::Int __swiftcall CalendarViewDataSource.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  v3 = sub_1C3D1E1E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalendarViewDataSource.startDate(forSection:)(numberOfItemsInSection, v6);
  v7 = sub_1C3C8A3AC();
  v8 = sub_1C3D1E324();
  (*(v4 + 8))(v6, v3);
  result = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  return result;
}

uint64_t CalendarViewDataSource.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_1C3D1E3A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1E1E4();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = sub_1C3D1E5A4();
  CalendarViewDataSource.startDate(forSection:)(v15, v14);
  v16 = sub_1C3C8A3AC();
  if (sub_1C3D1E594() < v16)
  {
    v17 = v2 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_cellProvider;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      v21 = (*(v19 + 16))(v3, v32, a2, ObjectType, v19);
      swift_unknownObjectRelease();
      (*(v31 + 8))(v14, v9);
      return v21;
    }

    goto LABEL_9;
  }

  v22 = sub_1C3D1E594();
  v23 = __OFSUB__(v22, v16);
  result = v22 - v16;
  if (v23)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = v9;
  sub_1C3C8A610(result, v11);
  v24 = v2 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_cellProvider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v24 + 8);
    v29 = swift_getObjectType();
    (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
    v26 = sub_1C3D1E3B4();
    (*(v6 + 8))(v8, v5);
    v21 = (*(v25 + 8))(v3, v32, v11, v26, a2, v29, v25);
    swift_unknownObjectRelease();
    v27 = v30;
    v28 = *(v31 + 8);
    v28(v11, v30);
    v28(v14, v27);
    return v21;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t CalendarViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C3D1E1E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C3D20104() != a2 || v14 != a3)
  {
    v16 = sub_1C3D20A54();

    if (v16)
    {
      goto LABEL_8;
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C3D20834();

    v23 = 0xD000000000000029;
    v24 = 0x80000001C3D853F0;
    MEMORY[0x1C692F800](a2, a3);
    sub_1C3D20944();
    __break(1u);
  }

LABEL_8:
  v17 = sub_1C3D1E5A4();
  CalendarViewDataSource.startDate(forSection:)(v17, v13);
  v18 = v4 + OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_cellProvider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    result = sub_1C3C8A3AC();
    if (!__OFADD__(result, 1))
    {
      v22 = (*(v20 + 24))(v5, a1, v13, result + 1, a4, ObjectType, v20);
      swift_unknownObjectRelease();
      (*(v11 + 8))(v13, v10);
      return v22;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CalendarViewDataSource.day(from:)()
{
  v0 = sub_1C3D1E1E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1C3D1E5A4();
  CalendarViewDataSource.startDate(forSection:)(v7, v3);
  v8 = sub_1C3C8A3AC();
  result = sub_1C3D1E594();
  if (__OFSUB__(result, v8))
  {
    __break(1u);
  }

  else
  {
    sub_1C3C8A610((result - v8) & ~((result - v8) >> 63), v6);
    v10 = *(v1 + 8);
    v10(v3, v0);
    sub_1C3D1E344();
    return (v10)(v6, v0);
  }

  return result;
}

uint64_t CalendarViewDataSource.indexPath(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C3D1E1E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1FE44();
  CalendarViewDataSource.indexPath(containing:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C3C8C2C0(uint64_t a1)
{
  v2 = sub_1C3D20C24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C3C8D760();
    v9 = sub_1C3D20804();
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
      sub_1C3C8D7F4(&qword_1EC086A80, MEMORY[0x1E696A1C0]);
      v16 = sub_1C3D1FF74();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1C3C8D7F4(&qword_1EC086A88, MEMORY[0x1E696A1C0]);
          v23 = sub_1C3D20034();
          v24 = *v15;
          (*v15)(v5, v2);
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C3C8C5D4(uint64_t a1)
{
  v2 = sub_1C3D1E3A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C3C8D6CC();
    v9 = sub_1C3D20804();
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
      sub_1C3C8D7F4(&qword_1EC086A68, MEMORY[0x1E6969AD0]);
      v16 = sub_1C3D1FF74();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1C3C8D7F4(&qword_1EC086A70, MEMORY[0x1E6969AD0]);
          v23 = sub_1C3D20034();
          v24 = *v15;
          (*v15)(v5, v2);
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C3C8C8E8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6)
{
  v115 = a3;
  v116 = a6;
  v119 = a5;
  v111 = a4;
  v9 = v6;
  ObjectType = swift_getObjectType();
  v10 = sub_1C3D1E3A4();
  v112 = *(v10 - 8);
  v11 = v112;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C8D4DC(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v101 = &ObjectType - v14;
  v15 = sub_1C3D1E1E4();
  v89 = v15;
  v90 = *(v15 - 8);
  v16 = v90;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &ObjectType - v19;
  MEMORY[0x1EEE9AC00](v20);
  v106 = &ObjectType - v21;
  MEMORY[0x1EEE9AC00](v22);
  v114 = &ObjectType - v23;
  v113 = sub_1C3D1DCF4();
  v117 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v25 = &ObjectType - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_cellProvider + 8] = 0;
  v26 = swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_includeSpacerCellsFromFirstWeekday] = 1;
  v118 = v9;
  *(v26 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v27 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_calendar;
  v28 = sub_1C3D1E3C4();
  v109 = *(v28 - 8);
  v110 = v28;
  (*(v109 + 16))(&v9[v27], a3);
  v103 = *(v16 + 16);
  v104 = v16 + 16;
  v103(&v9[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startDate], v119, v15);
  sub_1C3C8D4DC(0, &qword_1EC086A10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v29 = *(v11 + 72);
  v30 = v112;
  v31 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v95 = 3 * v29;
  v98 = v32;
  v33 = swift_allocObject();
  v93 = xmmword_1C3D602D0;
  *(v33 + 16) = xmmword_1C3D602D0;
  v97 = v31;
  v34 = v33 + v31;
  v35 = *(v30 + 104);
  v94 = *MEMORY[0x1E6969A50];
  v35(v34);
  v36 = *MEMORY[0x1E6969A68];
  v99 = v29;
  v92 = v36;
  v35(v34 + v29);
  v37 = *MEMORY[0x1E6969A78];
  v100 = 2 * v29;
  (v35)(v34 + 2 * v29, v37, v10);
  sub_1C3C8C5D4(v33);
  swift_setDeallocating();
  v38 = v89;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1C3D1E314();

  v39 = *(v117 + 32);
  v105 = v25;
  v40 = v25;
  v41 = v101;
  v117 += 32;
  v96 = v39;
  v39(&v118[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_startComponents], v40, v113);
  v42 = v102;
  v91 = v37;
  (v35)(v102, v37, v10);
  sub_1C3D1E394();
  v43 = *(v112 + 8);
  v112 = v10;
  v43(v42, v10);
  v44 = v90;
  if ((*(v90 + 48))(v41, 1, v38) == 1)
  {
    sub_1C3C27B38(v41);
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_1C3D20834();

    v121 = 0xD00000000000001ALL;
    v122 = 0x80000001C3D85520;
    sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
    v87 = sub_1C3D20A14();
    MEMORY[0x1C692F800](v87);

    result = sub_1C3D20944();
    __break(1u);
  }

  else
  {
    v45 = v114;
    (*(v44 + 32))(v114, v41, v38);
    v102 = OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endDate;
    v46 = v118;
    v47 = v103;
    v103(&v118[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endDate], v45, v38);
    v48 = v97;
    v49 = swift_allocObject();
    *(v49 + 16) = v93;
    v50 = v49 + v48;
    v51 = v49 + v48;
    v52 = v112;
    (v35)(v51, v94, v112);
    (v35)(v50 + v99, v92, v52);
    (v35)(v50 + v100, v91, v52);
    sub_1C3C8C5D4(v49);
    v53 = v38;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = v106;
    v47(v106, &v102[v46], v38);
    v55 = v105;
    v56 = v115;
    sub_1C3D1E314();

    v57 = *(v44 + 8);
    v57(v54, v38);
    v96(&v46[OBJC_IVAR____TtC8HealthUI22CalendarViewDataSource_endComponents], v55, v113);
    v58 = v56;
    v59 = v47;
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v60 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v60, qword_1EC08DCB0);
    v61 = v107;
    v47(v107, v119, v53);
    v62 = v108;
    v63 = v116;
    v59(v108, v116, v53);
    v64 = sub_1C3D1ED84();
    v65 = sub_1C3D204E4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v121 = v117;
      *v66 = 136446722;
      v67 = sub_1C3D20CD4();
      v69 = v57;
      v70 = sub_1C3C22C28(v67, v68, &v121);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      sub_1C3C8D7F4(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v71 = sub_1C3D20A14();
      v72 = v53;
      v74 = v73;
      v69(v61, v72);
      v75 = sub_1C3C22C28(v71, v74, &v121);
      v53 = v72;

      *(v66 + 14) = v75;
      *(v66 + 22) = 2080;
      v76 = sub_1C3D20A14();
      v78 = v77;
      v69(v62, v72);
      v79 = sub_1C3C22C28(v76, v78, &v121);
      v57 = v69;
      v63 = v116;

      *(v66 + 24) = v79;
      _os_log_impl(&dword_1C3942000, v64, v65, "[%{public}s] Created in range %s to %s", v66, 0x20u);
      v80 = v117;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v80, -1, -1);
      v81 = v66;
      v58 = v115;
      MEMORY[0x1C69321D0](v81, -1, -1);
    }

    else
    {

      v57(v62, v53);
      v57(v61, v53);
    }

    v82 = v118;
    v83 = v114;
    v84 = type metadata accessor for CalendarViewDataSource();
    v120.receiver = v82;
    v120.super_class = v84;
    v85 = objc_msgSendSuper2(&v120, sel_init, ObjectType);
    v57(v63, v53);
    v57(v119, v53);
    v57(v111, v53);
    (*(v109 + 8))(v58, v110);
    v57(v83, v53);
    return v85;
  }

  return result;
}

uint64_t type metadata accessor for CalendarViewDataSource()
{
  result = qword_1EC086A48;
  if (!qword_1EC086A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C8D4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3C8D548()
{
  result = sub_1C3D1E3C4();
  if (v1 <= 0x3F)
  {
    result = sub_1C3D1E1E4();
    if (v2 <= 0x3F)
    {
      result = sub_1C3D1DCF4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1C3C8D6CC()
{
  if (!qword_1EC086A60)
  {
    sub_1C3D1E3A4();
    sub_1C3C8D7F4(&qword_1EC086A68, MEMORY[0x1E6969AD0]);
    v0 = sub_1C3D20814();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086A60);
    }
  }
}

void sub_1C3C8D760()
{
  if (!qword_1EC086A78)
  {
    sub_1C3D20C24();
    sub_1C3C8D7F4(&qword_1EC086A80, MEMORY[0x1E696A1C0]);
    v0 = sub_1C3D20814();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086A78);
    }
  }
}

uint64_t sub_1C3C8D7F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3C8D8E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C3D1EDA4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C3D1ED94();
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

id sub_1C3C8DC40()
{
  v1 = v0;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - v3;
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - v7;
  v9 = [v1 primaryDisplayType];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = [v12 baseDisplayType];
      if (v14)
      {
        v15 = v14;
        v55 = [v14 hk_interactiveChartOptions];
      }

      else
      {

        v55 = 0;
      }
    }

    else
    {
      v55 = [v10 hk_interactiveChartOptions];
    }

    v53 = [v1 additionalChartOptions];
    v19 = [v1 applicationItems];
    v56 = [v19 healthStore];

    v20 = [v1 applicationItems];
    v54 = [v20 unitController];

    v21 = [v1 applicationItems];
    v52 = [v21 dateCache];

    v22 = [v1 applicationItems];
    v51 = [v22 chartDataCacheController];

    v23 = [v1 applicationItems];
    v50 = [v23 timeScopeController];

    v24 = [v1 applicationItems];
    v49 = [v24 sampleDateRangeController];

    v25 = [v1 displayDate];
    if (v25)
    {
      v26 = v25;
      sub_1C3D1E1A4();

      v27 = sub_1C3D1E1E4();
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    }

    else
    {
      v27 = sub_1C3D1E1E4();
      (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    }

    v28 = sub_1C3D1E3C4();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v4, 1, 1, v28);
    sub_1C3D1E1E4();
    v30 = *(v27 - 8);
    v31 = (*(v30 + 48))(v8, 1, v27);
    v32 = v10;
    v33 = 0;
    if (v31 != 1)
    {
      v33 = sub_1C3D1E174();
      (*(v30 + 8))(v8, v27);
    }

    v34 = v53 | v55;
    v35 = (*(v29 + 48))(v4, 1, v28);
    v48 = v1;
    if (v35 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_1C3D1E364();
      (*(v29 + 8))(v4, v28);
    }

    v37 = objc_allocWithZone(HKInteractiveChartOverlayViewController);
    v46 = v34;
    v38 = v49;
    v39 = v56;
    v40 = v54;
    v42 = v51;
    v41 = v52;
    v43 = v50;
    v44 = [v37 initWithHealthStore:v56 primaryDisplayType:v32 unitPreferenceController:v54 dateCache:v52 chartDataCacheController:v51 selectedTimeScopeController:v50 sampleTypeDateRangeController:v49 initialXValue:v33 currentCalendarOverride:v36 options:v46];

    v45 = v44;
    [v45 setCurrentOverlayLocationProvider_];

    return v45;
  }

  else
  {
    v16 = type metadata accessor for MeasureOverlayViewController();
    v57.receiver = v1;
    v57.super_class = v16;
    v17 = objc_msgSendSuper2(&v57, sel_createChartOverlayViewController);

    return v17;
  }
}

id MeasureOverlayViewController.__allocating_init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C3D1E1E4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    v12 = sub_1C3D1E174();
    (*(v11 + 8))(a1, v10);
  }

  if (a3)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v13 = sub_1C3D202A4();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v5) initWithDisplayDate:v12 applicationItems:a2 factorDisplayTypes:v13 mode:a4];

  return v14;
}

id sub_1C3C8E758(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MeasureOverlayViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1C3C8E7F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = &v8[OBJC_IVAR____TtC8HealthUI28MeasureOverlayViewController_measure];
  v19[3] = a6;
  v19[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a1, a6);
  type metadata accessor for HKMeasureDisplayType(0);
  *&v8[OBJC_IVAR____TtC8HealthUI28MeasureOverlayViewController_measureDisplayType] = sub_1C3C5AE20(a1, a3, a6, a7);
  sub_1C3C3A228(a2, v18);
  v21 = sub_1C3D1E1E4();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    v23 = sub_1C3D1E174();
    (*(v22 + 8))(v18, v21);
  }

  if (a4)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v24 = sub_1C3D202A4();
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for MeasureOverlayViewController();
  v28.receiver = v8;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v23, a3, v24, a5);

  sub_1C3C27B38(a2);
  return v26;
}

uint64_t sub_1C3C8EAB8(uint64_t result)
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

  result = sub_1C3C46610(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1C3C8EBA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C3D20964();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C3D20964();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C3C9024C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C3CA7BDC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C3C8ECAC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C3D20964();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1C3D20964();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C3C9024C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

double UIViewController.adaptiveReparentingManager.getter@<D0>(uint64_t a1@<X8>)
{
  if (![v1 tabBarController] || (sub_1C3C27CB4(0, &qword_1EC086AA0), sub_1C3C8EE38(), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1C3C8EE38()
{
  result = qword_1EC086AA8;
  if (!qword_1EC086AA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC086AA8);
  }

  return result;
}

void UIViewController.showAdaptivelyIfPossible(_:sender:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v33 = &unk_1F43F7568;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    sub_1C396C578(a2, v30);
    v7 = v31;
    if (v31)
    {
      v8 = __swift_project_boxed_opaque_existential_0(v30, v31);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = a1;
      v14 = sub_1C3D20A44();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      v17 = a1;
      v14 = 0;
    }

    [v2 showAdaptively:v6 sender:v14];

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:a1 animated:1];
    }

    else
    {
      if (qword_1EC0850A8 != -1)
      {
        swift_once();
      }

      v18 = sub_1C3D1EDA4();
      __swift_project_value_buffer(v18, qword_1EC08DCB0);
      v19 = v2;
      v20 = sub_1C3D1ED84();
      v21 = sub_1C3D204F4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v30[0] = v23;
        *v22 = 136315394;
        v24 = sub_1C3D20CD4();
        v26 = sub_1C3C22C28(v24, v25, v30);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        v32 = [v19 navigationController];
        sub_1C3C901E4();
        v27 = sub_1C3D20134();
        v29 = sub_1C3C22C28(v27, v28, v30);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_1C3942000, v20, v21, "[%s]: Unable to show adaptively or fallback. Navigation controller=%s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69321D0](v23, -1, -1);
        MEMORY[0x1C69321D0](v22, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall HKNavigationController.reparentViewControllerIfNecessary(traitCollection:previousTraitCollection:)(UITraitCollection traitCollection, UITraitCollection_optional previousTraitCollection)
{
  isa = previousTraitCollection.value.super.isa;
  if (previousTraitCollection.value.super.isa)
  {
    v4 = [(objc_class *)previousTraitCollection.value.super.isa horizontalSizeClass];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(objc_class *)traitCollection.super.isa horizontalSizeClass];
  if (isa && v4 == v5)
  {
    return;
  }

  if (isa)
  {
    v6 = [(objc_class *)isa horizontalSizeClass];
    v7 = [(objc_class *)traitCollection.super.isa horizontalSizeClass];
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        return;
      }

      goto LABEL_12;
    }

    if (v7 != 1)
    {
      return;
    }
  }

  else
  {
    v7 = [(objc_class *)traitCollection.super.isa horizontalSizeClass];
    if (v7 != 1)
    {
LABEL_12:
      if (v7 == 2)
      {

        HKNavigationController.reparentPushToModalIfPossible()();
      }

      return;
    }
  }

  HKNavigationController.reparentModalToPushIfPossible()();
}

Swift::Void __swiftcall HKNavigationController.reparentPushToModalIfPossible()()
{
  v1 = v0;
  v2 = [v0 tabBarController];
  if (!v2 || (v41[0] = v2, sub_1C3C27CB4(0, &qword_1EC086AA0), sub_1C3C8EE38(), (swift_dynamicCast() & 1) == 0))
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    goto LABEL_8;
  }

  if (!*(&v39 + 1))
  {
LABEL_8:
    sub_1C3C9047C(&v38);
    return;
  }

  sub_1C3972F30(&v38, v41);
  v3 = v42;
  v4 = v43;
  __swift_project_boxed_opaque_existential_0(v41, v42);
  if (((*(v4 + 8))(v0, v3, v4) & 1) == 0)
  {
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0(v41);
    return;
  }

  v5 = [v0 presentedViewController];
  if (v5)
  {

    goto LABEL_59;
  }

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 window];

    if (v8)
    {

      v9 = [v1 viewControllers];
      sub_1C3C27CB4(0, &qword_1EC086340);
      v10 = sub_1C3D202B4();

      if (v10 >> 62)
      {
        goto LABEL_49;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
      {
        sub_1C3D20374();
        v12 = 0;
        v13 = (v10 & 0xC000000000000001);
        v37 = (v10 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v13)
          {
            v14 = MEMORY[0x1C692FEB0](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v14 = *(v10 + 8 * v12 + 32);
          }

          v15 = v14;
          sub_1C3D20364();
          sub_1C3D20314();
          v17 = v16;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (swift_dynamicCastObjCProtocolConditional())
          {

            v19 = [v1 viewControllers];
            v20 = sub_1C3D202B4();

            if ((v20 & 0xC000000000000001) == 0)
            {
              if (v12 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * v12 + 32);
                goto LABEL_27;
              }

              __break(1u);
LABEL_53:
              v24 = MEMORY[0x1C692FEB0](v10, v20);
LABEL_32:
              v25 = v24;

              v37 = [objc_allocWithZone(HKNavigationController) init];
              v26 = [v1 popToViewController:v25 animated:0];
              if (v26)
              {
                v27 = v26;
                v10 = sub_1C3D202B4();

                v35 = v17;
                v36 = v13;
                v34 = v25;
                if (!(v10 >> 62))
                {
                  v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v28)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_57;
                }

LABEL_56:
                v28 = sub_1C3D20964();
                if (v28)
                {
LABEL_35:
                  v29 = 0;
                  do
                  {
                    if ((v10 & 0xC000000000000001) != 0)
                    {
                      v30 = MEMORY[0x1C692FEB0](v29, v10);
                    }

                    else
                    {
                      if (v29 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_48;
                      }

                      v30 = *(v10 + 8 * v29 + 32);
                    }

                    v31 = v30;
                    v32 = v29 + 1;
                    if (__OFADD__(v29, 1))
                    {
                      goto LABEL_47;
                    }

                    sub_1C3D20364();
                    sub_1C3D20314();
                    if ((swift_task_isCurrentExecutor() & 1) == 0)
                    {
                      swift_task_reportUnexpectedExecutor();
                    }

                    [v37 pushViewController:v31 animated:{0, v34, v35, v36}];

                    ++v29;
                  }

                  while (v32 != v28);
                }

LABEL_57:

                v17 = v35;
                v13 = v36;
                v25 = v34;
              }

              [v17 viewControllerWillEnterAdaptiveModal];
              v33 = v37;
              [v33 setModalPresentationStyle_];

              [v1 presentViewController:v33 animated:0 completion:0];
              goto LABEL_59;
            }

            v21 = MEMORY[0x1C692FEB0](v12, v20);
LABEL_27:
            v13 = v21;

            v22 = swift_dynamicCastObjCProtocolConditional();
            if (!v22)
            {

              goto LABEL_59;
            }

            v17 = v22;
            v10 = v12 - 1;
            v23 = [v1 viewControllers];
            v20 = sub_1C3D202B4();

            if ((v20 & 0xC000000000000001) != 0)
            {
              goto LABEL_53;
            }

            if (v12 < 1)
            {
              __break(1u);
            }

            else if (v10 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v24 = *(v20 + 8 * v12 + 24);
              goto LABEL_32;
            }

            __break(1u);
            goto LABEL_56;
          }

          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          ++v12;
          if (v18 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        ;
      }

LABEL_23:
    }

    goto LABEL_59;
  }

  __break(1u);
}

Swift::Void __swiftcall HKNavigationController.reparentModalToPushIfPossible()()
{
  v1 = v0;
  v2 = [v0 presentedViewController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 presentedViewController];
  if (!v4)
  {
    v5 = [v0 tabBarController];
    if (v5)
    {
      v32 = v5;
      sub_1C3C27CB4(0, &qword_1EC086AA0);
      sub_1C3C8EE38();
      if (swift_dynamicCast())
      {
        if (*(&v34 + 1))
        {
          sub_1C3972F30(&v33, v36);
          v6 = v37;
          v7 = v38;
          __swift_project_boxed_opaque_existential_0(v36, v37);
          if (((*(v7 + 8))(v0, v6, v7) & 1) == 0)
          {
LABEL_57:

            __swift_destroy_boxed_opaque_existential_0(v36);
            return;
          }

          *&v33 = MEMORY[0x1E69E7CC0];
          if (swift_dynamicCastObjCProtocolConditional())
          {
            v8 = v3;
            MEMORY[0x1C692F8F0]();
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C3D202C4();
            }

            sub_1C3D202F4();
            goto LABEL_14;
          }

          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = v3;
            v20 = [v18 viewControllers];
            sub_1C3C27CB4(0, &qword_1EC086340);
            v21 = sub_1C3D202B4();

            if (v21 >> 62)
            {
              if (sub_1C3D20964())
              {
                goto LABEL_34;
              }
            }

            else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_34:
              if ((v21 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x1C692FEB0](0, v21);
              }

              else
              {
                if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v22 = *(v21 + 32);
              }

              v23 = v22;

              if (swift_dynamicCastObjCProtocolConditional())
              {

                v24 = [v18 viewControllers];
                v25 = sub_1C3D202B4();

                sub_1C3C8ECAC(v25, sub_1C3CA7D90);
              }

              else
              {
              }

              goto LABEL_14;
            }
          }

LABEL_14:
          v9 = v33;
          if (v33 >> 62)
          {
            goto LABEL_54;
          }

          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            [v3 dismissViewControllerAnimated:0 completion:0];
            for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
            {
              v11 = v9 & 0xC000000000000001;
              v12 = v9 & 0xFFFFFFFFFFFFFF8;
              v13 = i;
              while (!__OFSUB__(v13--, 1))
              {
                if (v11)
                {
                  v15 = MEMORY[0x1C692FEB0](v13, v9);
                }

                else
                {
                  if ((v13 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_40;
                  }

                  if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_41;
                  }

                  v15 = *(v9 + 32 + 8 * v13);
                }

                v16 = v15;
                v32 = v15;
                sub_1C3C8FF58(&v32);

                if (!v13)
                {
                  goto LABEL_42;
                }
              }

              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              v26 = 0;
              v29 = v9;
              while (1)
              {
                if (v11)
                {
                  v27 = MEMORY[0x1C692FEB0](v26, v9);
                }

                else
                {
                  if (v26 >= *(v12 + 16))
                  {
                    goto LABEL_53;
                  }

                  v27 = *(v9 + 8 * v26 + 32);
                }

                v31 = v27;
                v28 = v26 + 1;
                if (__OFADD__(v26, 1))
                {
                  break;
                }

                sub_1C3D20374();
                sub_1C3D20364();
                sub_1C3D20314();
                if ((swift_task_isCurrentExecutor() & 1) == 0)
                {
                  swift_task_reportUnexpectedExecutor();
                }

                [v1 pushViewController:v31 animated:{0, v29}];

                ++v26;
                v9 = v29;
                if (v28 == i)
                {
                  goto LABEL_56;
                }
              }

              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              if (!sub_1C3D20964())
              {
                break;
              }

              [v3 dismissViewControllerAnimated:0 completion:0];
            }
          }

LABEL_56:

          goto LABEL_57;
        }
      }

      else
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
      }
    }

    else
    {

      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    sub_1C3C9047C(&v33);
    return;
  }

  v30 = v4;
}

uint64_t sub_1C3C8FF58(void **a1)
{
  v1 = *a1;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 topViewController];
    if (v4)
    {
      v5 = v4;
      sub_1C3C27CB4(0, &qword_1EC086340);
      v6 = v1;
      v7 = sub_1C3D206B4();

      if (v7)
      {
        v8 = [v3 viewControllers];
        v9 = sub_1C3D202B4();

        if (v9 >> 62)
        {
          result = sub_1C3D20964();
          if (result)
          {
LABEL_8:
            if ((v9 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C692FEB0](0, v9);
            }

            else
            {
              if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v11 = *(v9 + 32);
            }

            v12 = v11;

            v13 = sub_1C3D206B4();

            if (v13)
            {
              v14 = sub_1C3D202A4();
              [v3 setViewControllers:v14 animated:0];

LABEL_22:
              goto LABEL_16;
            }

LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
          result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_21;
      }
    }
  }

  [v1 dismissViewControllerAnimated:0 completion:0];
LABEL_16:
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    [v15 viewControllerDidLeaveAdaptiveModal];
  }
}

void sub_1C3C901E4()
{
  if (!qword_1EC086AB0)
  {
    sub_1C3C27CB4(255, &qword_1EC086AB8);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086AB0);
    }
  }
}

uint64_t sub_1C3C9024C(uint64_t a1)
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

  sub_1C3D20964();
LABEL_9:
  result = sub_1C3D20864();
  *v1 = result;
  return result;
}

void (*sub_1C3C902EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C692FEB0](a2, a3);
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
    return sub_1C3C9036C;
  }

  __break(1u);
  return result;
}

void (*sub_1C3C90374(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C692FEB0](a2, a3);
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
    return sub_1C3C905C4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C3C903F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C692FEB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C3C90474;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C9047C(uint64_t a1)
{
  sub_1C3C904D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C904D8()
{
  if (!qword_1EC086AC0)
  {
    sub_1C3C8EE38();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086AC0);
    }
  }
}

uint64_t (*sub_1C3C90544(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C692FEB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C3C905C8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C905D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C3C23D88(0, v1, 0);
    v2 = v32;
    v4 = a1 + 64;
    v5 = sub_1C3D207C4();
    v6 = 0;
    v7 = *(a1 + 36);
    v30 = v1;
    v31 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = v4;
      v12 = *(*(a1 + 56) + 8 * v5);
      v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v32 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      v17 = v2;
      if (v16 >= v15 >> 1)
      {
        v29 = v14;
        sub_1C3C23D88((v15 > 1), v16 + 1, 1);
        v14 = v29;
        v17 = v32;
      }

      *(v17 + 16) = v16 + 1;
      v18 = v17 + 16 * v16;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_27;
      }

      v19 = *(v11 + 8 * v10);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v2 = v17;
      v4 = v11;
      v7 = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v30;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v30;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C3C91918(v5, v31, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1C3C91918(v5, v31, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (*(v2 + 16))
    {
      sub_1C3C91880();
      v26 = sub_1C3D20994();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC8];
    }

    v32 = v26;

    sub_1C3C9143C(v27, 1, &v32);

    return v32;
  }

  return result;
}

double sub_1C3C908E0(uint64_t a1, SEL *a2, double a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695B500]) initWithDevice:v3 identitySizeClass:2];
  sub_1C3C905D8(a1);
  sub_1C3C258C4();
  sub_1C3C91838(&qword_1EC0859E0, sub_1C3C258C4);
  v8 = sub_1C3D1FEE4();

  [v7 *a2];
  v10 = v9;

  return v10;
}

double sub_1C3C909D8(uint64_t a1, SEL *a2, double a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695B500]) initWithDevice:v3 identitySizeClass:2];
  sub_1C3C905D8(a1);
  sub_1C3C258C4();
  sub_1C3C91838(&qword_1EC0859E0, sub_1C3C258C4);
  v8 = sub_1C3D1FEE4();

  [v7 *a2];
  v10 = v9;

  [v3 screenScale];
  return v10 / v11;
}

uint64_t CLKDevice.specificValue<A>(_:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C3D206E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[1] = [v4 sizeClass];
  type metadata accessor for CLKDeviceSizeClass(0);
  sub_1C3C91838(&qword_1EC086AC8, type metadata accessor for CLKDeviceSizeClass);
  sub_1C3D1FF54();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v12, 1, a2) != 1)
  {
    return (*(v13 + 32))(a3, v12, a2);
  }

  (*(v9 + 8))(v12, v8);
  return (*(v13 + 16))(a3, a1, a2);
}

uint64_t CLKDevice.deviceValue<A>(_:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C3D206E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[1] = [v4 productFamilyType];
  type metadata accessor for CLKDeviceProductFamilyType(0);
  sub_1C3C91838(&qword_1EC086AD0, type metadata accessor for CLKDeviceProductFamilyType);
  sub_1C3D1FF54();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v12, 1, a2) != 1)
  {
    return (*(v13 + 32))(a3, v12, a2);
  }

  (*(v9 + 8))(v12, v8);
  return (*(v13 + 16))(a3, a1, a2);
}

void *CLKDevice.deviceValue<A>(_:overrides:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v56 = a2;
  v52 = a1;
  v53 = a4;
  v7 = sub_1C3D206E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v50 - v19;
  v21 = [v5 productFamilyType];
  v58 = v21;
  type metadata accessor for CLKDeviceProductFamilyType(0);
  v23 = v22;
  v24 = sub_1C3C91838(&qword_1EC086AD0, type metadata accessor for CLKDeviceProductFamilyType);
  sub_1C3D1FF54();
  v55 = *(v14 + 48);
  v56 = v14 + 48;
  if (v55(v13, 1, a3) == 1)
  {
    v50[0] = v14;
    v26 = *(v8 + 8);
    v25 = v8 + 8;
    v54 = v26;
    v26(v13, v7);
    v27 = v52;
    v58 = v52;
    sub_1C3D1FF14();
    v50[1] = swift_getWitnessTable();
    sub_1C3C91838(&qword_1EC086AD8, type metadata accessor for CLKDeviceProductFamilyType);
    v57 = sub_1C3D20244();
    sub_1C3C91798();
    v29 = v28;
    v30 = sub_1C3C91838(&qword_1EC086AE8, sub_1C3C91798);
    result = MEMORY[0x1C692F610](&v58, v29, v30);
    v32 = v58;
    v33 = v58[2];
    if (v33)
    {
      v34 = v27;
      v35 = v23;
      v36 = v24;
      v37 = v33 + 3;
      while ((v37 - 4) < v32[2])
      {
        v38 = v32[v37];
        if (v21 == -1 || (v38 != -1 ? (v39 = v21 < v38) : (v39 = 1), !v39))
        {
          v40 = v25;
          v58 = v32[v37];
          v41 = v34;
          v42 = v35;
          v43 = v36;
          sub_1C3D1FF54();
          if (v55(v10, 1, a3) != 1)
          {

            v46 = v50[0];
            v47 = *(v50[0] + 32);
            v48 = v51;
            v47(v51, v10, a3);
            v49 = v53;
            v47(v53, v48, a3);
            return (*(v46 + 56))(v49, 0, 1, a3);
          }

          result = v54(v10, v7);
          v34 = v41;
          v25 = v40;
          v35 = v42;
          v36 = v43;
        }

        if (--v37 == 3)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      return (*(v50[0] + 56))(v53, 1, 1, a3);
    }
  }

  else
  {
    v44 = *(v14 + 32);
    v44(v20, v13, a3);
    v45 = v53;
    v44(v53, v20, a3);
    return (*(v14 + 56))(v45, 0, 1, a3);
  }

  return result;
}

BOOL sub_1C3C9139C(void *a1, void *a2)
{
  if (*a1 == -1)
  {
    return 0;
  }

  return *a2 == -1 || *a1 < *a2;
}

BOOL sub_1C3C913C4(void *a1, void *a2)
{
  if (*a2 == -1)
  {
    return 1;
  }

  return *a1 != -1 && *a2 >= *a1;
}

BOOL sub_1C3C913EC(void *a1, void *a2)
{
  if (*a1 == -1)
  {
    return 1;
  }

  return *a2 != -1 && *a1 >= *a2;
}

BOOL sub_1C3C91414(void *a1, void *a2)
{
  if (*a2 == -1)
  {
    return 0;
  }

  return *a1 == -1 || *a2 < *a1;
}

void sub_1C3C9143C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1C3CA02E0(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1C3CA1314(v16, v6 & 1);
    v11 = sub_1C3CA02E0(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1C3C258C4();
    v11 = sub_1C3D20AA4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1C3CF9090();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1C3C4251C();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C3D20834();
    MEMORY[0x1C692F800](0xD00000000000001BLL, 0x80000001C3D856A0);
    sub_1C3C258C4();
    sub_1C3D20924();
    MEMORY[0x1C692F800](39, 0xE100000000000000);
    sub_1C3D20944();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1C3CA02E0(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1C3CA1314(v32, 1);
        v28 = sub_1C3CA02E0(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C3C91798()
{
  if (!qword_1EC086AE0)
  {
    type metadata accessor for CLKDeviceProductFamilyType(255);
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086AE0);
    }
  }
}

uint64_t sub_1C3C91838(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3C91880()
{
  if (!qword_1EC086D40)
  {
    sub_1C3C258C4();
    sub_1C3C91838(&qword_1EC0859E0, sub_1C3C258C4);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086D40);
    }
  }
}

uint64_t sub_1C3C91918(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id SleepApneaEventAxis.__allocating_init(displayType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HKSleepApneaEventAxis_displayType] = a1;
  v4 = objc_allocWithZone(HKNumericAxisConfiguration);
  v5 = a1;
  v6 = [v4 init];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredAxisStyle];
  [v8 setPreferredStyle_];

  v12.receiver = v3;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithConfiguration_, v8);

  return v10;
}

id SleepApneaEventAxis.init(displayType:)(void *a1)
{
  *&v1[OBJC_IVAR___HKSleepApneaEventAxis_displayType] = a1;
  v3 = objc_allocWithZone(HKNumericAxisConfiguration);
  v4 = a1;
  v5 = [v3 init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredAxisStyle];
  [v7 setPreferredStyle_];

  v11.receiver = v1;
  v11.super_class = type metadata accessor for SleepApneaEventAxis();
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_, v7);

  return v9;
}

id SleepApneaEventAxis.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

id SleepApneaEventAxis.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaEventAxis();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C91D90(void *a1, double a2, double a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(HKAxisLabel) init];
  [v6 setLabelType_];
  v7 = [a1 presentation];
  [v7 adjustedDoubleForDaemonDouble_];

  v8 = sub_1C3D1E804();
  [v6 setLocation_];

  v9 = v6;
  MEMORY[0x1C692F8F0]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  v10 = [objc_allocWithZone(HKAxisLabel) init];
  [v10 setLabelType_];
  v11 = [a1 presentation];
  [v11 adjustedDoubleForDaemonDouble_];

  v12 = sub_1C3D1E804();
  [v10 setLocation_];

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  v14 = sub_1C3D200C4();

  [v10 setText_];

  v15 = v10;
  MEMORY[0x1C692F8F0]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  v16 = [objc_allocWithZone(HKAxisLabel) init];
  [v16 setLabelType_];
  v17 = [a1 presentation];
  [v17 adjustedDoubleForDaemonDouble_];

  v18 = sub_1C3D1E804();
  [v16 setLocation_];

  v19 = v16;
  MEMORY[0x1C692F8F0]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();

  return v21;
}

uint64_t sub_1C3C92158(void *a1)
{
  swift_getObjectType();
  if (a1)
  {
    v3 = [a1 minValue];
    if (v3)
    {
      v23 = v3;
      if (swift_dynamicCast())
      {
        v4 = [a1 maxValue];
        if (v4)
        {
          v23 = v4;
          if ((swift_dynamicCast() & 1) != 0 && (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v5 = (COERCE__INT64(fabs(v22 - v22)) - 0x10000000000000) >> 53;
            v6 = COERCE__INT64(v22 - v22) < 0 || v5 > 0x3FE;
            if (!v6 || (COERCE__INT64(v22 - v22) - 1) <= 0xFFFFFFFFFFFFELL)
            {
              return sub_1C3C91D90(*(v1 + OBJC_IVAR___HKSleepApneaEventAxis_displayType), v22, v22);
            }
          }
        }
      }
    }
  }

  if (qword_1EC0850B8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v9, qword_1EC08DCC8);
  v10 = a1;
  v11 = sub_1C3D1ED84();
  v12 = sub_1C3D204F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446466;
    v15 = sub_1C3D20CD4();
    v17 = sub_1C3C22C28(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    sub_1C3C92454();
    v18 = v10;
    v19 = sub_1C3D20134();
    v21 = sub_1C3C22C28(v19, v20, &v23);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1C3942000, v11, v12, "[%{public}s] Asked to create axis labels for incompatible range: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v14, -1, -1);
    MEMORY[0x1C69321D0](v13, -1, -1);
  }

  return 0;
}

void sub_1C3C92454()
{
  if (!qword_1EC086AF8)
  {
    sub_1C3C27CB4(255, &qword_1EC085BF0);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086AF8);
    }
  }
}

id AudiogramChartDataFormatter.__allocating_init(displayType:unitController:)(void *a1, void *a2)
{
  v3 = v2;
  v12.receiver = objc_allocWithZone(v3);
  v12.super_class = v3;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 hk_chartCurrentValueValueFont];
  [v8 setMajorFont_];

  v10 = [v7 hk_chartCurrentValueKindFont];
  [v8 setMinorFont_];

  [v8 setUnitController_];
  [v8 setDisplayType_];

  return v8;
}

id AudiogramChartDataFormatter.init(displayType:unitController:)(void *a1, void *a2)
{
  v4 = sub_1C3C92AA4(a1, a2);

  return v4;
}

uint64_t sub_1C3C92614(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() decibelHearingLevelUnit];
  v6 = [a1 doubleValueForUnit_];
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  v10 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  switch(a2)
  {
    case 1:
      v11 = (*((*v9 & *v2) + 0x50))();
LABEL_5:
      [v10 setDataType_];
      v12 = [v2 attributedStringWithValue:v5 unit:1 showUnit:v8];
      [v10 setAttributedString_];

      v13 = sub_1C3D1E804();
      [v10 setValueAsNumber_];

      return v10;
    case 2:
      v11 = (*((*v9 & *v2) + 0x58))();
      goto LABEL_5;
    case 0:
      sub_1C3D20944();
      __break(1u);
      break;
  }

  type metadata accessor for HKAudiogramEar(0);
  result = sub_1C3D20A74();
  __break(1u);
  return result;
}

id AudiogramChartDataFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramChartDataFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C92AA4(uint64_t a1, uint64_t a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 hk_chartCurrentValueValueFont];
  [v7 setMajorFont_];

  v9 = [v6 hk_chartCurrentValueKindFont];
  [v7 setMinorFont_];

  [v7 setUnitController_];
  [v7 setDisplayType_];

  return v7;
}

uint64_t sub_1C3C92CCC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_1C3C936E0();
  v3 = a2;
  return sub_1C3D20344();
}

uint64_t static HKIconServicesImage.fetchIcon(forUTTypeIdentifier:imageDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3C92D50, 0, 0);
}

uint64_t sub_1C3C92D50()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v2 = sub_1C3D200C4();
  v3 = [v1 initWithType_];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C3C92E30;
  v5 = v0[4];

  return sub_1C3C93248(v3, v5);
}

uint64_t sub_1C3C92E30(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C3C93804, 0, 0);
}

uint64_t static HKIconServicesImage.fetchAppIcon(forBundleIdentifier:imageDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3C92F54, 0, 0);
}

uint64_t sub_1C3C92F54()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v2 = sub_1C3D200C4();
  v3 = [v1 initWithBundleIdentifier_];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C3C93034;
  v5 = v0[4];

  return sub_1C3C93248(v3, v5);
}

uint64_t sub_1C3C93034(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C3C93134, 0, 0);
}

uint64_t sub_1C3C93134()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1C3C931B0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v7 = sub_1C3D200C4();
  v8 = [v6 *a4];

  v9 = a3;

  return MEMORY[0x1EEE5F690](v8, a3);
}

uint64_t sub_1C3C93248(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_1C3C936E0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3C93308, 0, 0);
}

uint64_t sub_1C3C93308()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[20];
  }

  else
  {
    v2 = [objc_opt_self() imageDescriptorNamed_];
  }

  v9 = v2;
  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v10 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C3C93500;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_1C3C93748();
  v7 = v1;
  sub_1C3D20324();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C3C92CCC;
  v0[13] = &block_descriptor_10;
  [v10 getImageForImageDescriptor:v9 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C3C93500()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3C935E0, 0, 0);
}

id sub_1C3C935E0()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    result = [*(v0 + 144) CGImage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = *(v0 + 192);
    [v1 scale];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v3 scale:0 orientation:v5];
  }

  else
  {

    v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

void sub_1C3C936E0()
{
  if (!qword_1EC086B00)
  {
    sub_1C3C93748();
    v0 = sub_1C3D20354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086B00);
    }
  }
}

void sub_1C3C93748()
{
  if (!qword_1EC086B08)
  {
    sub_1C3C937A0();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086B08);
    }
  }
}

unint64_t sub_1C3C937A0()
{
  result = qword_1EC086B10;
  if (!qword_1EC086B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086B10);
  }

  return result;
}

id sub_1C3C93808()
{
  v1 = OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle;
  v2 = *(v0 + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle);
  }

  else
  {
    v4 = sub_1C3C93868();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C3C93868()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D619B0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.431372549 blue:0.160784314 alpha:1.0];
  v2 = sub_1C3D1E804();
  v3 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v1 location:v2];

  *(v0 + 32) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.431372549 blue:0.160784314 alpha:1.0];
  v5 = sub_1C3D1E804();
  v6 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v4 location:v5];

  *(v0 + 40) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.623529412 blue:0.0 alpha:1.0];
  v8 = sub_1C3D1E804();
  v9 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v7 location:v8];

  *(v0 + 48) = v9;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.57254902 green:0.850980392 blue:0.0862745098 alpha:1.0];
  v11 = sub_1C3D1E804();
  v12 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v10 location:v11];

  *(v0 + 56) = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.321568627 green:0.8 blue:0.768627451 alpha:1.0];
  v14 = sub_1C3D1E804();
  v15 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v13 location:v14];

  *(v0 + 64) = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.270588235 green:0.545098039 blue:0.901960784 alpha:1.0];
  v17 = sub_1C3D1E804();
  v18 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v16 location:v17];

  *(v0 + 72) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.270588235 green:0.403921569 blue:0.901960784 alpha:1.0];
  v20 = sub_1C3D1E804();
  v21 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v19 location:v20];

  *(v0 + 80) = v21;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.360784314 green:0.239215686 blue:0.8 alpha:1.0];
  v23 = sub_1C3D1E804();
  v24 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v22 location:v23];

  *(v0 + 88) = v24;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.360784314 green:0.239215686 blue:0.8 alpha:1.0];
  v26 = sub_1C3D1E804();
  v27 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v25 location:v26];

  *(v0 + 96) = v27;
  v28 = objc_allocWithZone(HKMultiGradientFillStyle);
  sub_1C3C27CB4(0, &qword_1EC086B50);
  v29 = sub_1C3D202A4();

  v30 = [v28 initWithColors_];

  return v30;
}

id sub_1C3C93CC8()
{
  v1 = OBJC_IVAR___HKStateOfMindSeries____lazy_storage___inactiveFillStyle;
  v2 = *(v0 + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___inactiveFillStyle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HKStateOfMindSeries____lazy_storage___inactiveFillStyle);
  }

  else
  {
    v4 = [objc_allocWithZone(HKSolidFillStyle) init];
    v5 = qword_1EC0850D0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    [v6 setColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id StateOfMindSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindSeries.init()()
{
  *&v0[OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle] = 0;
  *&v0[OBJC_IVAR___HKStateOfMindSeries____lazy_storage___inactiveFillStyle] = 0;
  *&v0[OBJC_IVAR___HKStateOfMindSeries_fixedAxisLabels] = sub_1C3C95110();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StateOfMindSeries();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setAdjustYAxisForLabels_];
  return v1;
}

void sub_1C3C93EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v61 = a4;
  *(&v60 + 1) = a3;
  *&v60 = a2;
  swift_getObjectType();
  v9 = sub_1C3D1EDA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C3D1E1E4();
  v13 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v60 - v17;
  v18 = [a1 chartPoints];
  if (v18 && (v19 = v18, sub_1C3C77FEC(0, &qword_1EC085850), v20 = sub_1C3D202B4(), v19, v21 = sub_1C3C81F4C(v20), , v21))
  {
    v64 = [a5 transform];
    v22 = [a6 transform];
    v77 = MEMORY[0x1E69E7CC0];
    v23 = (v21 & 0xFFFFFFFFFFFFFF8);
    if (v21 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
    {
      v62 = v23;
      v25 = 0;
      v68 = v21 & 0xC000000000000001;
      v63 = v13 + 1;
      while (1)
      {
        if (v68)
        {
          v26 = MEMORY[0x1C692FEB0](v25, v21);
        }

        else
        {
          if (v25 >= *(v62 + 2))
          {
            goto LABEL_23;
          }

          v26 = *(v21 + 8 * v25 + 32);
        }

        v13 = v26;
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v23 = *(v26 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
        v28 = *(v23 + 2);
        if (v28)
        {
          v29 = v21;
          v30 = *(v23 + 4 * v28 + 1);
          v31 = MEMORY[0x1E69E63B0];
          v73 = MEMORY[0x1E69E63B0];
          *&v72 = v30;
          sub_1C3C233B8(&v72, &v74);
          v32 = *(v23 + 4);
          v71 = v31;
          *&v70 = v32;
          sub_1C3C233B8(&v70, &v72);
          sub_1C3D1DC44();
          sub_1C3D1DC34();
          v33 = v65;
          sub_1C3D1E154();
          v34 = sub_1C3D1E174();
          (*v63)(v33, v67);
          [v64 coordinateForValue_];
          v36 = v35;

          __swift_project_boxed_opaque_existential_0(&v74, v76);
          [v22 coordinateForValue_];
          v38 = v37;
          swift_unknownObjectRelease();
          __swift_project_boxed_opaque_existential_0(&v72, v73);
          [v22 coordinateForValue_];
          v40 = v39;
          swift_unknownObjectRelease();
          sub_1C3C95498(v13, 2, v22);
          v42 = v41;
          sub_1C3C95498(v13, 1, v22);
          v44 = v43;
          v45 = StateOfMindChartPoint.userInfo()();
          if (!v45)
          {
            __break(1u);
            goto LABEL_29;
          }

          v46 = v45;
          v23 = type metadata accessor for StateOfMindCoordinate();
          v47 = objc_allocWithZone(v23);
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue] = v36;
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_maxYValue] = v38;
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_minYValue] = v40;
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_dailyYValueRanges] = v42;
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_momentaryYValueRanges] = v44;
          *&v47[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_userInfo] = v46;
          v69.receiver = v47;
          v69.super_class = v23;
          v48 = objc_msgSendSuper2(&v69, sel_init);
          MEMORY[0x1C692F8F0]();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C3D202C4();
          }

          sub_1C3D202F4();

          __swift_destroy_boxed_opaque_existential_0(&v72);
          __swift_destroy_boxed_opaque_existential_0(&v74);
          v21 = v29;
        }

        else
        {
        }

        ++v25;
        if (v27 == i)
        {
          goto LABEL_25;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
    sub_1C3C77FEC(0, &unk_1EC086B40);
    v57 = sub_1C3D202A4();
    v58 = objc_opt_self();
    v74 = v60;
    v75 = v61;
    v59 = [v58 coordinateListWithCoordinates:v57 blockPath:&v74];

    if (v59)
    {
    }

    else
    {
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_1C3D1ED74();
    v49 = sub_1C3D1ED84();
    v21 = sub_1C3D204F4();
    if (os_log_type_enabled(v49, v21))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v74 = v51;
      *v50 = 136446210;
      v52 = sub_1C3D20CD4();
      v13 = sub_1C3C22C28(v52, v53, &v74);

      *(v50 + 4) = v13;
      _os_log_impl(&dword_1C3942000, v49, v21, "[%{public}s] Unable to create coordinates from unsupported chart points", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1C69321D0](v51, -1, -1);
      MEMORY[0x1C69321D0](v50, -1, -1);
    }

    v54 = *(v10 + 8);
    v22 = (v10 + 8);
    v54(v12, v9);
    sub_1C3C77FEC(0, &unk_1EC086B40);
    v55 = sub_1C3D202A4();
    v56 = objc_opt_self();
    v74 = v60;
    v75 = v61;
    v23 = [v56 coordinateListWithCoordinates:v55 blockPath:&v74];

    if (!v23)
    {
      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_1C3C94704(uint64_t result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, void *a18)
{
  if (!result)
  {
    return result;
  }

  type metadata accessor for StateOfMindCoordinate();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v26 = result;
  v27 = OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue;
  v28 = *(result + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue);
  swift_unknownObjectRetain();
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  if (CGRectGetMinX(v44) <= v28)
  {
    v29 = *(v26 + v27);
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    if (v29 <= CGRectGetMaxX(v45))
    {
      v40 = a18;
      v30 = *(v26 + v27);
      v42 = *(v26 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_momentaryYValueRanges);

      sub_1C3C8EAB8(v31);
      v41 = sub_1C3CBB59C(v42, 8.0);
      v32 = *(v41 + 16);
      if (v32)
      {
        v33 = objc_opt_self();
        v34 = (v41 + 40);
        do
        {
          v35 = [v33 bezierPathWithRoundedRect:v30 - a6 * 0.5 cornerRadius:{*(v34 - 1) - a6 * 0.5, a6, a6 * 0.5 + *v34 - (*(v34 - 1) - a6 * 0.5), a6 * 0.5, v40}];
          [a15 appendPath_];

          v34 += 2;
          --v32;
        }

        while (v32);
      }

      if (a17)
      {
        v36 = *(v42 + 16);

        if (v36 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      a7 = a8;
LABEL_14:
      v37 = *(v26 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_maxYValue);
      v38 = *(v26 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_minYValue);
      if (v37 > v38)
      {
        __break(1u);
        return result;
      }

      v39 = [objc_opt_self() bezierPathWithRoundedRect:v30 - a7 * 0.5 cornerRadius:{v37 - a7 * 0.5, a7, a7 * 0.5 + v38 - (v37 - a7 * 0.5), a7 * 0.5}];
      [v40 appendPath_];
    }
  }

  return swift_unknownObjectRelease();
}

id sub_1C3C94D98(void *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  result = [v18 yAxis];
  if (result)
  {
    v28 = result;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    [v28 renderPositionForLabelLocation:sub_1C3D20A44() rect:a2 & 1 zoomScale:a9 contentOffset:a10 constantOffset:a11 isHorizontal:a12 optionalOffset:{a13, a14, a15, a16, a17, a18}];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id StateOfMindSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindSeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C950D4()
{
  result = [objc_opt_self() systemGray3Color];
  qword_1EC086B20 = result;
  return result;
}

uint64_t sub_1C3C95110()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D61360;
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC08DBD8;
  sub_1C3D1DEC4();
  v2 = [objc_allocWithZone(HKAxisLabel) init];
  v3 = sub_1C3D200C4();

  [v2 setText_];

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v2 setLocation_];

  [v2 setLabelType_];
  *(v0 + 32) = v2;
  sub_1C3D1DEC4();

  v5 = [objc_allocWithZone(HKAxisLabel) init];
  v6 = sub_1C3D200C4();

  [v5 setText_];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v5 setLocation_];

  [v5 setLabelType_];
  *(v0 + 40) = v5;
  sub_1C3D1DEC4();

  v8 = [objc_allocWithZone(HKAxisLabel) init];
  v9 = sub_1C3D200C4();

  [v8 setText_];

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v8 setLocation_];

  [v8 setLabelType_];
  *(v0 + 48) = v8;
  return v0;
}

void sub_1C3C95498(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = (v3 + 56);
    do
    {
      v10 = *v8;
      v8 += 4;
      if (v10 == a2)
      {
        v11 = sub_1C3D1E804();
        [a3 coordinateForValue_];
        v13 = v12;

        v14 = sub_1C3D1E804();
        [a3 coordinateForValue_];
        v16 = v15;

        if (v13 > v16)
        {
          __break(1u);
          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C3C46610(0, *(v7 + 2) + 1, 1, v7);
        }

        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        if (v18 >= v17 >> 1)
        {
          v7 = sub_1C3C46610((v17 > 1), v18 + 1, 1, v7);
        }

        *(v7 + 2) = v18 + 1;
        v9 = &v7[16 * v18];
        *(v9 + 4) = v13;
        *(v9 + 5) = v16;
      }

      --v4;
    }

    while (v4);
  }
}

uint64_t sub_1C3C955EC(void *a1)
{
  v2 = sub_1C3D1DCF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 canonicalSize];
  v8 = v7;
  v9 = [a1 seriesPointIntervalComponentsAtResolution_];
  sub_1C3D1DCA4();

  v10 = sub_1C3D1DC94();
  [v10 hk_approximateDuration];
  v12 = v11;

  v13 = floor(v8 / fmax(v12, 1.0));
  result = (*(v3 + 8))(v6, v2);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C3C95764(void *a1, void *a2, __int128 *a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v20 = *(a3 + 5);
  v41 = *(a3 + 4);
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v23 = [a5 seriesDrawingAsTopOverlay_];
  v46 = round(a8 / sub_1C3C955EC(a2) * 0.3);
  sub_1C3C25750();
  sub_1C3D1FFD4();
  v24 = v47;
  v25 = v47 * 0.5;
  v26 = v47 * 1.5;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = a7;
  *(v27 + 32) = a8;
  *(v27 + 40) = a9;
  *(v27 + 48) = v22;
  *(v27 + 56) = v10;
  *(v27 + 64) = v25;
  *(v27 + 72) = v23;
  *(v27 + 80) = v26;
  *(v27 + 88) = v24;
  *(v27 + 96) = v21;
  v44 = sub_1C3C95F24;
  v45 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1C3C71C64;
  *(&v43 + 1) = &block_descriptor_11;
  v28 = _Block_copy(&aBlock);
  v29 = v22;
  v30 = v10;
  v31 = v21;

  v32 = a3[1];
  aBlock = *a3;
  v43 = v32;
  v44 = v41;
  v45 = v20;
  [a1 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v28];
  _Block_release(v28);
  if ([v30 allowsSelection])
  {
    v33 = sub_1C3C93808();
    if (([v31 isEmpty] & 1) == 0)
    {
      v34 = [v31 CGPath];
      [v33 renderPath:v34 context:a4 axisRect:a6 alpha:{a7, a8, a9, 0.15}];
    }

    v35 = *&v30[OBJC_IVAR___HKStateOfMindSeries____lazy_storage___gradientFillStyle];
    v36 = [v29 isEmpty];
  }

  else
  {
    v35 = sub_1C3C93CC8();
    v36 = [v29 isEmpty];
  }

  if ((v36 & 1) == 0)
  {
    v37 = [v29 CGPath];
    [v35 renderPath:v37 context:a4 axisRect:v38 alpha:{v39, a8, v40, 1.0}];
  }
}

uint64_t sub_1C3C95AAC(double a1, double a2)
{
  type metadata accessor for StateOfMindCoordinate();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    v13 = *(result + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_dailyYValueRanges);
    swift_unknownObjectRetain();

    sub_1C3C8EAB8(v6);
    v7 = *(v13 + 16);
    if (v7)
    {
      v8 = (v13 + 40);
      v9 = 1.79769313e308;
      while (1)
      {
        v10 = *(v8 - 1);
        if (v10 <= a2 && *v8 >= a2)
        {
          break;
        }

        if (v10 <= a2)
        {
          v10 = *v8;
        }

        v12 = sqrt((a2 - v10) * (a2 - v10) + (a1 - *(v5 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue)) * (a1 - *(v5 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue)));
        if (v9 >= v12)
        {
          v9 = v12;
        }

        v8 += 2;
        if (!--v7)
        {
          goto LABEL_14;
        }
      }

      return swift_unknownObjectRelease();
    }

    else
    {
LABEL_14:
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1C3C95C08(double a1)
{
  type metadata accessor for StateOfMindCoordinate();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 1.79769313e308;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_dailyYValueRanges);
  swift_unknownObjectRetain();

  sub_1C3C8EAB8(v3);
  v4 = *(v11 + 16);
  if (v4)
  {
    v5 = (v11 + 40);
    v6 = 1.79769313e308;
    while (1)
    {
      v7 = *(v5 - 1);
      if (v7 <= a1 && *v5 >= a1)
      {
        break;
      }

      if (v7 <= a1)
      {
        v7 = *v5;
      }

      v9 = vabdd_f64(v7, a1);
      if (v6 >= v9)
      {
        v6 = v9;
      }

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_17;
      }
    }

    v6 = 0.0;
  }

  else
  {
    v6 = 1.79769313e308;
  }

LABEL_17:
  swift_unknownObjectRelease();

  return v6;
}

id _s8HealthUI17StateOfMindSeriesC08standardcdeF005statedE11DisplayType14unitControllerACSo09HKDisplayJ0C_So016HKUnitPreferenceL0CtFZ_0(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for StateOfMindSeries()) init];
  v5 = objc_allocWithZone(HKNumericAxisConfiguration);
  v6 = v4;
  v7 = [v5 init];
  [v7 setMaxLabels_];
  [v7 setLabelDataSource_];
  [v7 setTopVerticalLabelPadding_];
  [v7 setBottomVerticalLabelPadding_];
  v8 = [objc_opt_self() standardNumericYAxisWithConfigurationOverrides_];

  [v6 setYAxis_];
  [v6 setAxisScalingRule_];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3C95F84(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C3C95FC8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C396C578(a1, v11);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1C3D20A44();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_1C3D1DF94();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

void *StateOfMindChartDataSource.overlayPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR___HKStateOfMindChartDataSource_overlayPredicate);
  v2 = v1;
  return v1;
}

id StateOfMindChartDataSource.__allocating_init(displayType:healthStore:overlayPredicate:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1C3C9909C(a1, a2, a3);

  return v8;
}

id StateOfMindChartDataSource.init(displayType:healthStore:overlayPredicate:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1C3C9909C(a1, a2, a3);

  return v5;
}

id sub_1C3C96308(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a2;
  v93 = a3;
  v4 = sub_1C3D1DCF4();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v82 - v7;
  v8 = sub_1C3D1E3C4();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  v13 = sub_1C3D1FE54();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = sub_1C3D1E1E4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v82 - v25;
  v27 = a1;
  v28 = [a1 startDate];
  sub_1C3D1E1A4();

  sub_1C3D1E1B4();
  LOBYTE(v28) = sub_1C3D1E194();
  v29 = *(v20 + 8);
  v29(v22, v19);
  v29(v26, v19);
  if ((v28 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v30 = v27;
  v31 = v18;
  v32 = v30;
  v87 = v30;
  v33 = [v30 startDate];
  sub_1C3D1E1A4();

  v95 = v15;
  v34 = OBJC_IVAR___HKStateOfMindChartDataSource_gregorianCalendar;
  v35 = v98;
  v36 = *(v99 + 16);
  v37 = v100;
  v36(v12, &v98[OBJC_IVAR___HKStateOfMindChartDataSource_gregorianCalendar], v100);
  sub_1C3D1FE14();
  v38 = [v32 endDate];
  sub_1C3D1E1A4();

  v86 = v34;
  v39 = v37;
  v40 = v36;
  v36(v12, &v35[v34], v39);
  sub_1C3D1FE14();
  v41 = sub_1C3D1FE34();
  v42 = sub_1C3D1FE34();
  v43 = sub_1C3D1FE34();
  v44 = __OFSUB__(v42, v43);
  v45 = v42 - v43;
  result = v87;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    v83 = v45;
    v84 = v41;
    v85 = v31;
    v47 = v87;
    v48 = [v87 statisticsInterval];
    v49 = v89;
    sub_1C3D1DCA4();

    v50 = sub_1C3D1DCE4();
    v52 = v51;
    v53 = *(v90 + 8);
    v54 = v49;
    v55 = v91;
    v53(v54, v91);
    if ((v52 & 1) != 0 || v50 != 1)
    {
      v57 = [v47 statisticsInterval];
      v58 = v88;
      sub_1C3D1DCA4();

      v59 = sub_1C3D1DC84();
      v61 = v60;
      v53(v58, v55);
      v56 = (v61 & 1) == 0 && v59 == 1;
    }

    else
    {
      v56 = 2;
    }

    v63 = v96;
    v62 = v97;
    v64 = v94;
    v65 = v98;
    v66 = v100;
    v40(v94, &v98[v86], v100);
    v67 = *&v65[OBJC_IVAR___HKStateOfMindChartDataSource_overlayPredicate];
    if (v67)
    {
      v68 = [v67 predicate];
    }

    else
    {
      v68 = 0;
    }

    v69 = swift_allocObject();
    v70 = v92;
    v71 = v93;
    v69[2] = v65;
    v69[3] = v70;
    v69[4] = v71;
    v72 = objc_allocWithZone(MEMORY[0x1E69B1528]);
    v73 = v65;

    v74 = v64;
    v75 = sub_1C3D1E364();
    aBlock[4] = sub_1C3C992E8;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3C98FE4;
    aBlock[3] = &block_descriptor_12;
    v76 = _Block_copy(aBlock);
    v77 = [v72 initWithDayIndexRange:v84 gregorianCalendar:v83 predicate:v75 options:v68 ascending:v56 limit:1 resultsHandler:{0, v76}];
    _Block_release(v76);

    (*(v99 + 8))(v74, v66);

    v78 = v77;
    v79 = [v73 queryDescription];
    [v78 setDebugIdentifier_];

    sub_1C396C4D8(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1C3D5EAE0;
    *(v80 + 32) = v78;

    v81 = *(v63 + 8);
    v81(v95, v62);
    v81(v85, v62);
    return v80;
  }

  return result;
}

id sub_1C3C96B44(uint64_t a1)
{
  sub_1C396C578(a1, v5);
  if (v6)
  {
    sub_1C3C48E34(0, &qword_1EC080E78, &unk_1EC080E00, 0x1E69B1520, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      v1 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
      sub_1C3C983E0(v4, 0);

      sub_1C3C315FC();
      v2 = sub_1C3D202A4();

      [v1 setChartPoints_];

      return v1;
    }
  }

  else
  {
    sub_1C396C69C(v5);
  }

  return 0;
}

void (*sub_1C3C96D84(void *a1, void *a2, void (*a3)(void, void), uint64_t a4))()
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = v5;
  v11[6] = ObjectType;
  v25[4] = sub_1C3C99340;
  v25[5] = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1C3C97A70;
  v25[3] = &block_descriptor_9_1;
  v12 = _Block_copy(v25);
  v13 = a1;

  v14 = v5;

  v15 = [v14 queriesForRequest:v13 completionHandler:v12];
  _Block_release(v12);
  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v16 = sub_1C3D202B4();

  if (v16 >> 62)
  {
    if (sub_1C3D20964() >= 1)
    {
      v21 = sub_1C3D20964();
      if (v21)
      {
        v17 = v21;
        if (v21 >= 1)
        {
LABEL_3:
          for (i = 0; i != v17; ++i)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1C692FEB0](i, v16);
            }

            else
            {
              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            [a2 executeQuery_];
          }

          goto LABEL_12;
        }

        __break(1u);
      }

LABEL_12:
      v22 = swift_allocObject();
      *(v22 + 16) = v16;
      *(v22 + 24) = a2;
      v23 = a2;
      return sub_1C3C99350;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  a3(0, 0);
  return 0;
}

id sub_1C3C96FDC(uint64_t a1, void *a2, void *a3, void (*a4)(id, id), uint64_t a5, void *a6)
{
  v116 = a5;
  v117 = a4;
  v10 = sub_1C3D1DCF4();
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C3D1E1E4();
  v12 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C3D1EDA4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0 = &v104 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104 - v22;
  sub_1C396C578(a1, &v119);
  if (v120)
  {
    sub_1C3C233B8(&v119, v121);
    v110 = a6;
    if (a2)
    {
      v24 = a2;
      sub_1C3D1ED74();
      v25 = a2;
      v109 = a3;
      v26 = a3;
      v27 = sub_1C3D1ED84();
      v28 = sub_1C3D204D4();

      v108 = v28;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v119 = v107;
        *v29 = 136315650;
        v30 = HKStringForChartDataSourceQueryRequestAudience([v26 audience]);
        v31 = sub_1C3D20104();
        v105 = v27;
        v32 = v12;
        v33 = v16;
        v34 = v15;
        v35 = v31;
        v37 = v36;

        v38 = v35;
        v15 = v34;
        v16 = v33;
        v12 = v32;
        v39 = sub_1C3C22C28(v38, v37, &v119);

        *(v29 + 4) = v39;
        *(v29 + 12) = 2080;
        v40 = sub_1C3D20104();
        v42 = sub_1C3C22C28(v40, v41, &v119);

        *(v29 + 14) = v42;
        *(v29 + 22) = 2114;
        v43 = a2;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 24) = v44;
        v45 = v106;
        *v106 = v44;
        v46 = v105;
        _os_log_impl(&dword_1C3942000, v105, v108, "[RemoteCharting]_%s_%s: query returned successfully with error: %{public}@", v29, 0x20u);
        sub_1C3C3467C(v45);
        MEMORY[0x1C69321D0](v45, -1, -1);
        v47 = v107;
        swift_arrayDestroy();
        MEMORY[0x1C69321D0](v47, -1, -1);
        MEMORY[0x1C69321D0](v29, -1, -1);
      }

      else
      {
      }

      v16[1](v23, v15);
      a3 = v109;
    }

    sub_1C3C233C8(v121, &v119);
    sub_1C3C48E34(0, &qword_1EC080E78, &unk_1EC080E00, 0x1E69B1520, MEMORY[0x1E69E62F8]);
    if (!swift_dynamicCast())
    {
      v85 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v86 = sub_1C3D200C4();
      v87 = [v85 initWithDomain:v86 code:1000 userInfo:0];

      v88 = G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0;
      sub_1C3D1ED74();
      v89 = a3;
      v90 = sub_1C3D1ED84();
      v91 = sub_1C3D204F4();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v119 = v93;
        *v92 = 136315394;
        v94 = HKStringForChartDataSourceQueryRequestAudience([v89 audience]);
        v95 = sub_1C3D20104();
        v114 = v15;
        v97 = v96;

        v98 = sub_1C3C22C28(v95, v97, &v119);

        *(v92 + 4) = v98;
        *(v92 + 12) = 2080;
        v99 = sub_1C3D20104();
        v101 = sub_1C3C22C28(v99, v100, &v119);

        *(v92 + 14) = v101;
        _os_log_impl(&dword_1C3942000, v90, v91, "[RemoteCharting]_%s_%s: Unable to parse data from query.", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69321D0](v93, -1, -1);
        MEMORY[0x1C69321D0](v92, -1, -1);

        v16[1](v88, v114);
      }

      else
      {

        v16[1](v88, v15);
      }

      v84 = v87;
      v117(0, v87);
      goto LABEL_18;
    }

    G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0 = _s8HealthUI26StateOfMindChartDataSourceC16encodeToProtobuf9summariesSo09HKCodablecdegh5QueryG0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0(v118);
    v66 = [a3 startDate];
    sub_1C3D1E1A4();

    v67 = sub_1C3D1E174();
    v68 = a3;
    v69 = *(v12 + 8);
    v70 = v111;
    v69(v14, v111);
    v71 = [v68 endDate];
    sub_1C3D1E1A4();

    v72 = sub_1C3D1E174();
    v69(v14, v70);
    v73 = [v68 statisticsInterval];
    v74 = v112;
    sub_1C3D1DCA4();

    v75 = sub_1C3D1DC94();
    (*(v113 + 8))(v74, v114);
    v76 = G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0;
    result = [v76 data];
    if (result)
    {
      v78 = result;

      v79 = sub_1C3D1E084();
      v81 = v80;

      v82 = sub_1C3D1E074();
      sub_1C3C31660(v79, v81);
      v83 = [v110 codableQueryDataWithType:14 startDate:v67 endDate:v72 statisticsInterval:v75 queryDataObject:v82];

      v84 = v83;
      v117(v83, 0);

LABEL_18:
      return __swift_destroy_boxed_opaque_existential_0(v121);
    }

    __break(1u);
  }

  else
  {
    v114 = v15;
    sub_1C396C69C(&v119);
    sub_1C3D1ED74();
    v48 = a2;
    v49 = a3;
    v50 = sub_1C3D1ED84();
    v51 = sub_1C3D204F4();

    if (os_log_type_enabled(v50, v51))
    {
      G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0 = v16;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v121[0] = v54;
      *v52 = 136315650;
      v55 = HKStringForChartDataSourceQueryRequestAudience([v49 audience]);
      v56 = sub_1C3D20104();
      v58 = v57;

      v59 = sub_1C3C22C28(v56, v58, v121);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      v60 = sub_1C3D20104();
      v62 = sub_1C3C22C28(v60, v61, v121);

      *(v52 + 14) = v62;
      *(v52 + 22) = 2114;
      if (a2)
      {
        v63 = a2;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        v65 = v64;
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

      v102 = v114;
      v103 = G0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0;
      *(v52 + 24) = v64;
      *v53 = v65;
      _os_log_impl(&dword_1C3942000, v50, v51, "[RemoteCharting]_%s_%s: unable to fetch results from query with error: %{public}@", v52, 0x20u);
      sub_1C3C3467C(v53);
      MEMORY[0x1C69321D0](v53, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v54, -1, -1);
      MEMORY[0x1C69321D0](v52, -1, -1);

      v103[1](v18, v102);
    }

    else
    {

      v16[1](v18, v114);
    }

    return (v117)(0, a2);
  }

  return result;
}

uint64_t sub_1C3C97A70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1C3C233B8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1C396C69C(v10);
}

void sub_1C3C97B10(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1C3D20964();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C692FEB0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [a2 stopQuery_];
    }
  }
}

id sub_1C3C97D10(void *a1, char a2)
{
  v3 = [a1 queryDataObject];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C3D1E084();
    v7 = v6;

    v8 = sub_1C3D1E074();
    sub_1C3C31660(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(HKCodableStateOfMindDataSourceQueryData) initWithData_];

  if (v9)
  {
    G0C_tFZ_0 = _s8HealthUI26StateOfMindChartDataSourceC18decodeFromProtobuf05queryG0SaySo30HKMHValenceDistributionSummaryCGSo09HKCodablecdegh5QueryG0C_tFZ_0(v9);
    v11 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
    sub_1C3C983E0(G0C_tFZ_0, a2 & 1);

    sub_1C3C315FC();
    v12 = sub_1C3D202A4();

    [v11 setChartPoints_];

    return v11;
  }

  else
  {
    v14 = objc_allocWithZone(HKGraphSeriesDataBlock);

    return [v14 init];
  }
}

uint64_t sub_1C3C97EDC(unint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1C3D1EDA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  if (!a2)
  {
    sub_1C3D1ED74();

    v31 = sub_1C3D1ED84();
    v32 = sub_1C3D204D4();

    if (os_log_type_enabled(v31, v32))
    {
      v46 = a4;
      v47 = v9;
      v48 = a3;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136446466;
      v35 = sub_1C3D20CD4();
      v37 = sub_1C3C22C28(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      if (a1)
      {
        if (a1 >> 62)
        {
          v38 = sub_1C3D20964();
        }

        else
        {
          v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v38 = 0;
      }

      *&v50 = v38;
      BYTE8(v50) = a1 == 0;
      sub_1C396C4D8(0, &qword_1EC0813B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      v42 = sub_1C3D20134();
      v44 = sub_1C3C22C28(v42, v43, &v49);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_1C3942000, v31, v32, "[%{public}s] Query found %s sample(s).", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v34, -1, -1);
      MEMORY[0x1C69321D0](v33, -1, -1);

      (*(v47 + 8))(v11, v8);
      a3 = v48;
      if (!a1)
      {
        goto LABEL_14;
      }
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      if (!a1)
      {
LABEL_14:
        v41 = 0;
        v40 = 0;
        *(&v50 + 1) = 0;
        *&v51 = 0;
        goto LABEL_15;
      }
    }

    sub_1C3C48E34(0, &qword_1EC080E78, &unk_1EC080E00, 0x1E69B1520, MEMORY[0x1E69E62F8]);
    v41 = a1;
LABEL_15:
    *&v50 = v41;
    *(&v51 + 1) = v40;

    a3(&v50, 0);
    return sub_1C396C69C(&v50);
  }

  v15 = a2;
  sub_1C3D1ED74();
  v16 = a2;
  v17 = sub_1C3D1ED84();
  v18 = sub_1C3D204F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v9;
    v23 = v22;
    *&v50 = v22;
    *v19 = 136446466;
    v24 = sub_1C3D20CD4();
    v26 = sub_1C3C22C28(v24, v25, &v50);
    v46 = v8;
    v27 = v26;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2114;
    v28 = a2;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v29;
    *v21 = v29;
    _os_log_impl(&dword_1C3942000, v17, v18, "[%{public}s] Query failed with error: %{public}@", v19, 0x16u);
    sub_1C3C3467C(v21);
    v30 = v21;
    a3 = v48;
    MEMORY[0x1C69321D0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1C69321D0](v23, -1, -1);
    MEMORY[0x1C69321D0](v19, -1, -1);

    (*(v47 + 8))(v14, v46);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v50 = 0u;
  v51 = 0u;
  v39 = a2;
  a3(&v50, a2);

  return sub_1C396C69C(&v50);
}

uint64_t sub_1C3C983E0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v79 = sub_1C3D1DC54();
  v84 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C3D1E1E4();
  v83 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v61 - v13;
  v14 = sub_1C3D1EDA4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3D1ED74();
  swift_bridgeObjectRetain_n();
  v18 = sub_1C3D1ED84();
  LOBYTE(v19) = sub_1C3D204D4();
  v20 = os_log_type_enabled(v18, v19);
  v21 = (a1 >> 62);
  v81 = v3;
  v64 = a1;
  if (!v20)
  {

    swift_bridgeObjectRelease_n();
    v27 = *(v15 + 8);
    v15 += 8;
    v27(v17, v14);
    goto LABEL_6;
  }

  LODWORD(v82) = a2;
  a2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v87[0] = v3;
  *a2 = 136446466;
  v22 = sub_1C3D20CD4();
  v24 = sub_1C3C22C28(v22, v23, v87);

  *(a2 + 4) = v24;
  *(a2 + 12) = 2048;
  if (v21)
  {
    goto LABEL_42;
  }

  for (i = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C3D20964())
  {

    *(a2 + 14) = i;

    _os_log_impl(&dword_1C3942000, v18, v19, "[%{public}s] Mapping %ld sample(s) to chart points.", a2, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1C69321D0](v3, -1, -1);
    MEMORY[0x1C69321D0](a2, -1, -1);

    v26 = *(v15 + 8);
    v15 += 8;
    v26(v17, v14);
    v3 = v81;
    a2 = v82;
LABEL_6:
    if (v21)
    {
LABEL_40:
      v14 = sub_1C3D20964();
    }

    else
    {
      v14 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (!v14)
    {
      return v19;
    }

    v87[0] = MEMORY[0x1E69E7CC0];
    v17 = v87;
    sub_1C3D208C4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    ;
  }

  v71 = objc_opt_self();
  v28 = 0;
  v29 = OBJC_IVAR___HKStateOfMindChartDataSource_gregorianCalendar;
  v72 = v64 & 0xC000000000000001;
  v63 = v64 & 0xFFFFFFFFFFFFFF8;
  v62 = v64 + 32;
  v69 = (v83 + 16);
  v68 = (v84 + 16);
  v67 = a2 & 1;
  v66 = (v84 + 8);
  v65 = (v83 + 8);
  v70 = v14;
  v80 = OBJC_IVAR___HKStateOfMindChartDataSource_gregorianCalendar;
  while (1)
  {
    if (__OFADD__(v28, 1))
    {
      goto LABEL_36;
    }

    v82 = v28 + 1;
    v83 = 0;
    if (v72)
    {
      v30 = MEMORY[0x1C692FEB0]();
    }

    else
    {
      if (v28 >= *(v63 + 16))
      {
        goto LABEL_39;
      }

      v30 = *(v62 + 8 * v28);
    }

    v84 = v30;
    v31 = [v30 valenceDistributions];
    sub_1C3C27CB4(0, &unk_1EC080E10);
    v32 = sub_1C3D202B4();

    if (v32 >> 62)
    {
      v18 = sub_1C3D20964();
      if (v18)
      {
LABEL_18:
        v86 = v19;
        sub_1C3C23BBC(0, v18 & ~(v18 >> 63), 0);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v33 = 0;
          v19 = v86;
          v3 = v32 & 0xC000000000000001;
          while (1)
          {
            v34 = v3 ? MEMORY[0x1C692FEB0](v33, v32) : *(v32 + 8 * v33 + 32);
            v35 = v34;
            [v34 minimumValence];
            v37 = v36;
            [v35 maximumValence];
            if (v37 > v38)
            {
              break;
            }

            v39 = v38;
            v21 = [v35 sampleCount];
            v40 = [v35 reflectiveInterval];

            v86 = v19;
            a2 = *(v19 + 2);
            v41 = *(v19 + 3);
            v15 = a2 + 1;
            if (a2 >= v41 >> 1)
            {
              sub_1C3C23BBC((v41 > 1), a2 + 1, 1);
              v19 = v86;
            }

            ++v33;
            *(v19 + 2) = v15;
            v42 = &v19[32 * a2];
            *(v42 + 4) = v37;
            *(v42 + 5) = v39;
            *(v42 + 6) = v21;
            *(v42 + 7) = v40;
            if (v18 == v33)
            {

              v29 = v80;
              v3 = v81;
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v18 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    v43 = v84;
    v44 = [v84 dayIndexRange];
    v15 = v29;
    v45 = sub_1C3D1E364();
    a2 = &selRef_findVisibleBlockCoordinatesForChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform_;
    v46 = v71;
    v47 = [v71 hk:v44 dateOnDayIndex:0 atHour:v45 calendar:?];

    v21 = v77;
    sub_1C3D1E1A4();

    v48 = [v43 dayIndexRange];
    [v43 dayIndexRange];
    v50 = __OFADD__(v48, v49);
    v51 = &v48[v49];
    v18 = v78;
    v52 = v79;
    if (v50)
    {
      goto LABEL_37;
    }

    v53 = sub_1C3D1E364();
    v54 = [v46 hk:v51 dateOnDayIndex:0 atHour:v53 calendar:?];

    a2 = v73;
    sub_1C3D1E1A4();

    v55 = *v69;
    v15 = v76;
    (*v69)(v74, v21, v76);
    v55(v75, a2, v15);
    sub_1C3D1DC24();
    v56 = type metadata accessor for StateOfMindChartPoint();
    v57 = objc_allocWithZone(v56);
    (*v68)(&v57[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_dateInterval], v18, v52);
    v86 = v19;

    v58 = v83;
    sub_1C3C23200(&v86);
    if (v58)
    {
      break;
    }

    *&v57[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets] = v86;
    v57[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_isSharingPreview] = v67;
    v85.receiver = v57;
    v85.super_class = v56;
    objc_msgSendSuper2(&v85, sel_init);

    (*v66)(v18, v52);
    v59 = *v65;
    (*v65)(a2, v15);
    v59(v21, v15);
    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    v3 = v81;
    v28 = v82;
    v19 = MEMORY[0x1E69E7CC0];
    v29 = v80;
    if (v82 == v70)
    {
      return v87[0];
    }
  }

  __break(1u);
  return result;
}

id StateOfMindChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

id StateOfMindChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id StateOfMindChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C98FE4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1C3C27CB4(0, &unk_1EC080E00);
    v5 = sub_1C3D202B4();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

id sub_1C3C9909C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v34 = a1;
  v35 = a2;
  v5 = sub_1C3D1E3C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1E224();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR___HKStateOfMindChartDataSource_debugIdentifier];
  sub_1C3D1E214();
  v14 = sub_1C3D1E1F4();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v18 = sub_1C3CE44DC(5, v14, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x1C692F7B0](v18, v20, v22, v24);
  v27 = v26;

  *v13 = v25;
  v13[1] = v27;
  v28 = OBJC_IVAR___HKStateOfMindChartDataSource_gregorianCalendar;
  v29 = [objc_opt_self() hk_gregorianCalendar];
  sub_1C3D1E384();

  (*(v6 + 32))(&v4[v28], v8, v5);
  *&v4[OBJC_IVAR___HKStateOfMindChartDataSource_overlayPredicate] = v33;
  v30 = type metadata accessor for StateOfMindChartDataSource();
  v36.receiver = v4;
  v36.super_class = v30;
  return objc_msgSendSuper2(&v36, sel_initWithDisplayType_healthStore_, v34, v35);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C3C99358(void *a1)
{
  v2 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
  result = [objc_allocWithZone(HKCodableStateOfMindValenceDistributionSummary) init];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = result;
  v5 = [a1 dayIndexRange];
  v7 = v6;
  result = [objc_allocWithZone(HKCodableDayIndexRange) init];
  if (result)
  {
    v8 = result;
    [result setDayIndex_];
    [v8 setDuration_];
    [v4 setDayIndexRange_];

    v9 = [a1 valenceDistributions];
    sub_1C3C27CB4(0, &unk_1EC080E10);
    v10 = sub_1C3D202B4();

    if (v10 >> 62)
    {
LABEL_19:
      v11 = sub_1C3D20964();
      if (v11)
      {
LABEL_5:
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1C692FEB0](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v16 = v2;
          result = [objc_allocWithZone(HKCodableStateOfMindValenceDistributionData) v2[321]];
          if (!result)
          {
            break;
          }

          v17 = result;
          [v14 minimumValence];
          [v17 setMinimumValence_];
          [v14 maximumValence];
          [v17 setMaximumValence_];
          [v17 setSampleCount_];
          if ([v14 reflectiveInterval] == 2)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          [v17 setReflectiveInterval_];
          [v4 addValenceDistributionData_];

          ++v12;
          v2 = v16;
          if (v15 == v11)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_5;
      }
    }

LABEL_20:

    return v4;
  }

LABEL_23:
  __break(1u);
  return result;
}

id _s8HealthUI26StateOfMindChartDataSourceC16encodeToProtobuf9summariesSo09HKCodablecdegh5QueryG0CSaySo30HKMHValenceDistributionSummaryCG_tFZ_0(unint64_t a1)
{
  result = [objc_allocWithZone(HKCodableStateOfMindDataSourceQueryData) init];
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1C3D20964();
    v4 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C692FEB0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = sub_1C3C99358(v6);
      [v3 addValenceDistributionSummary_];
    }

    while (v4 != v5);
    return v3;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1C3C996D8(void *a1)
{
  result = [a1 dayIndexRange];
  if (!result)
  {
    goto LABEL_16;
  }

  v3 = result;
  v4 = [result dayIndex];

  result = [a1 dayIndexRange];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result duration];

  v21 = MEMORY[0x1E69E7CC0];
  result = [a1 valenceDistributionDatasCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      v9 = [a1 valenceDistributionDataAtIndex_];
      if (v9)
      {
        v10 = v9;
        [v9 minimumValence];
        v12 = v11;
        [v10 maximumValence];
        v14 = v13;
        v15 = [v10 sampleCount];
        if ([v10 reflectiveInterval] == 2)
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        [objc_allocWithZone(MEMORY[0x1E69B1518]) initWithMinimumValence:v15 maximumValence:v16 sampleCount:v12 reflectiveInterval:v14];
        MEMORY[0x1C692F8F0]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C3D202C4();
        }

        sub_1C3D202F4();
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69B1520]);
  sub_1C3C27CB4(0, &unk_1EC080E10);
  v18 = sub_1C3D202A4();

  v19 = [v17 initWithDayIndexRange:v4 valenceDistributions:{v6, v18}];

  return v19;
}

unint64_t _s8HealthUI26StateOfMindChartDataSourceC18decodeFromProtobuf05queryG0SaySo30HKMHValenceDistributionSummaryCGSo09HKCodablecdegh5QueryG0C_tFZ_0(void *a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  result = [a1 valenceDistributionSummarysCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 valenceDistributionSummaryAtIndex_];
      if (v6)
      {
        v7 = v6;
        sub_1C3C996D8(v6);
        MEMORY[0x1C692F8F0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C3D202C4();
        }

        sub_1C3D202F4();

        v5 = v8;
      }

      ++v4;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindChartDataSource()
{
  result = qword_1EC080F90;
  if (!qword_1EC080F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C99AAC()
{
  result = sub_1C3D1E3C4();
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

double static EdgeInsets.hk_horizontalOnboardingListMargin(sizeClass:)(uint64_t a1)
{
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1C3C99D64(a1, &v13 - v6);
  v8 = sub_1C3D1F634();
  v9 = *(v8 - 8);
  v10 = 22.0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1C3C99D64(v7, v4);
    v11 = (*(v9 + 88))(v4, v8);
    if (v11 != *MEMORY[0x1E697FF38])
    {
      if (v11 == *MEMORY[0x1E697FF40])
      {
        v10 = 72.0;
      }

      else
      {
        (*(v9 + 8))(v4, v8);
      }
    }
  }

  sub_1C3C9ACF4(v7, sub_1C3C99D30);
  return v10;
}

uint64_t sub_1C3C99D64(uint64_t a1, uint64_t a2)
{
  sub_1C3C99D30(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static EdgeInsets.hk_horizontalOnboardingMargin(sizeClass:)(uint64_t a1)
{
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1C3C99D64(a1, &v14 - v6);
  v8 = sub_1C3D1F634();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  sub_1C3C99D64(v7, v4);
  v10 = (*(v9 + 88))(v4, v8);
  if (v10 == *MEMORY[0x1E697FF38])
  {
    goto LABEL_6;
  }

  if (v10 != *MEMORY[0x1E697FF40])
  {
    (*(v9 + 8))(v4, v8);
LABEL_6:
    v11 = 0x4043000000000000;
    goto LABEL_7;
  }

  v11 = 0x4056000000000000;
LABEL_7:
  v12 = *&v11;
  sub_1C3C9ACF4(v7, sub_1C3C99D30);
  return v12;
}

double sub_1C3C99F64(uint64_t a1)
{
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C3C99D64(a1, &v12 - v6);
  v8 = sub_1C3D1F634();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1C3C99D64(v7, v4);
    v10 = (*(v9 + 88))(v4, v8);
    if (v10 != *MEMORY[0x1E697FF38] && v10 != *MEMORY[0x1E697FF40])
    {
      (*(v9 + 8))(v4, v8);
    }
  }

  sub_1C3C9ACF4(v7, sub_1C3C99D30);
  return 0.0;
}

uint64_t OnboardingContentMargins.body(content:)()
{
  v0 = sub_1C3D1F5F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_1C3D1F734();
  sub_1C3C9A538(v12);
  sub_1C3C9A3D8(v12, v9);
  v14 = sub_1C3D1F634();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  sub_1C3C99D64(v9, v6);
  v16 = (*(v15 + 88))(v6, v14);
  if (v16 == *MEMORY[0x1E697FF38])
  {
    goto LABEL_6;
  }

  if (v16 != *MEMORY[0x1E697FF40])
  {
    (*(v15 + 8))(v6, v14);
LABEL_6:
    v17 = 0x4043000000000000;
    goto LABEL_7;
  }

  v17 = 0x4056000000000000;
LABEL_7:
  sub_1C3C9ACF4(v9, sub_1C3C99D30);
  sub_1C3D1F5E4();
  sub_1C3C9A43C();
  v19 = v18;
  v20 = sub_1C3C9A4F0(&qword_1EC086B90, sub_1C3C9A43C);
  MEMORY[0x1C692F060](v13, v17, 0, v3, v19, v20);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C3C9A3D8(uint64_t a1, uint64_t a2)
{
  sub_1C3C99D30(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C3C9A43C()
{
  if (!qword_1EC086B80)
  {
    type metadata accessor for OnboardingContentMargins(255);
    sub_1C3C9A4F0(&qword_1EC086B88, type metadata accessor for OnboardingContentMargins);
    v0 = sub_1C3D1F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086B80);
    }
  }
}

uint64_t sub_1C3C9A4F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3C9A538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C3D1F3B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C9AC90(0, &qword_1EC086BB0, sub_1C3C99D30, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C3C9B0D4(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C3C9A3D8(v10, a1);
  }

  sub_1C3D20504();
  v12 = sub_1C3D1F6F4();
  sub_1C3D1ED54();

  sub_1C3D1F3A4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t OnboardingListContentMargins.body(content:)()
{
  v0 = sub_1C3D1F5F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_1C3D1F734();
  sub_1C3C9A538(v12);
  sub_1C3C9A3D8(v12, v9);
  v14 = sub_1C3D1F634();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  sub_1C3C99D64(v9, v6);
  v16 = (*(v15 + 88))(v6, v14);
  if (v16 == *MEMORY[0x1E697FF38])
  {
    goto LABEL_6;
  }

  if (v16 != *MEMORY[0x1E697FF40])
  {
    (*(v15 + 8))(v6, v14);
LABEL_6:
    v17 = 0x4036000000000000;
    goto LABEL_7;
  }

  v17 = 0x4052000000000000;
LABEL_7:
  sub_1C3C9ACF4(v9, sub_1C3C99D30);
  sub_1C3D1F5E4();
  sub_1C3C9A9E8();
  v19 = v18;
  v20 = sub_1C3C9A4F0(&qword_1EC086BA8, sub_1C3C9A9E8);
  MEMORY[0x1C692F060](v13, v17, 0, v3, v19, v20);
  return (*(v1 + 8))(v3, v0);
}

void sub_1C3C9A9E8()
{
  if (!qword_1EC086B98)
  {
    type metadata accessor for OnboardingListContentMargins(255);
    sub_1C3C9A4F0(&qword_1EC086BA0, type metadata accessor for OnboardingListContentMargins);
    v0 = sub_1C3D1F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086B98);
    }
  }
}

uint64_t sub_1C3C9AAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v11 - v8);
  *v9 = swift_getKeyPath();
  sub_1C3C9AC90(0, &qword_1EC086BB0, sub_1C3C99D30, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C692F110](v9, a1, v7, a2);
  return sub_1C3C9ACF4(v9, a4);
}

uint64_t sub_1C3C9AC08(uint64_t a1)
{
  sub_1C3C99D30(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C3C99D64(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C3D1F2C4();
}

void sub_1C3C9AC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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