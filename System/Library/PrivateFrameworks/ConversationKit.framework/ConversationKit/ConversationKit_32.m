uint64_t dispatch thunk of RecentCallProviding.deleteVideoMessageCallItems(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.deleteAllItemsForContacts(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.markCallItemAsRead(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RecentCallProviding.saveToPhotoLibrary(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_98(v0, v1, v2);
  OUTLINED_FUNCTION_2_95();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_114(v4);

  return v7(v6);
}

Swift::Int GridLayout.Orientation.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GridLayout.Orientation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  GridLayout.Orientation.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t GridLayout.Configuration.init(interItemSpacing:scaleAmount:deviceType:mediaPipIsVisible:)(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t GridLayout.frames.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void GridLayout.init(containingRect:frameCount:indexToExpand:configuration:displayScale:)(int64_t a1, unint64_t a2, int a3, __int16 a4, CGFloat a5, CGFloat a6, double a7, double a8, CGFloat a9, double a10, double a11)
{
  v12 = HIBYTE(a4);
  v22 = a4;
  v23 = type metadata accessor for FloatingPointRoundingRule();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73.origin.x = OUTLINED_FUNCTION_3_91();
  Width = CGRectGetWidth(v73);
  v74.origin.x = OUTLINED_FUNCTION_3_91();
  Height = CGRectGetHeight(v74);
  v66 = a2;
  v68 = a3;
  if (v22)
  {
    v29 = static GridLayout.padGridSize(for:orientation:)(a1, Height >= Width);
  }

  else
  {
    v29 = static GridLayout.phoneGridSize(for:orientation:mediaPipIsVisible:)(a1, Height >= Width, v12 & 1);
  }

  v31 = v29;
  v32 = v30;
  if (__OFSUB__(v29, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (__OFSUB__(v30, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v65 = a10;
  v69 = a8;
  v70 = a6;
  v33 = (v29 - 1) * a9;
  v67 = a9;
  v71 = (v30 - 1) * a9;
  if (a8 - v71 >= (a7 - v33) / v29 * v30)
  {
    v34 = (a7 - v33) / v29;
  }

  else
  {
    v34 = (a8 - v71) / v30;
  }

  v35 = *MEMORY[0x1E69E7040];
  v22 = v24 + 104;
  v36 = *(v24 + 104);
  v36(v26, *MEMORY[0x1E69E7040], v23);
  a9 = a11;
  a11 = CGFloat.rounded(_:toScale:)(v26, a11, v34);
  v37 = *(v24 + 8);
  v72 = v24 + 8;
  v38 = OUTLINED_FUNCTION_4_31();
  v37(v38);
  v39 = v33 + a11 * v31;
  v75.origin.x = a5;
  a6 = v69;
  a8 = v70;
  v75.origin.y = v70;
  v75.size.width = a7;
  v75.size.height = v69;
  v40 = (CGRectGetWidth(v75) - v39) * 0.5;
  v41 = *MEMORY[0x1E69E7048];
  v36(v26, v41, v23);
  Width = CGFloat.rounded(_:toScale:)(v26, a9, v40);
  v42 = OUTLINED_FUNCTION_4_31();
  v37(v42);
  v43 = v71 + a11 * v32;
  v76.origin.x = a5;
  v76.origin.y = a8;
  v76.size.width = a7;
  v76.size.height = a6;
  v44 = (CGRectGetHeight(v76) - v43) * 0.5;
  v36(v26, v41, v23);
  a10 = a9;
  a7 = CGFloat.rounded(_:toScale:)(v26, a9, v44);
  v45 = OUTLINED_FUNCTION_4_31();
  v71 = *&v37;
  v37(v45);
  if (v32 < 0)
  {
    goto LABEL_34;
  }

  v64 = v22;
  v63 = v35;
  v62 = v36;
  if (!v32)
  {
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  if (v31 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = 0;
  a6 = a11 + v67;
  v47 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v22 = 0;
    ++v46;
    a9 = Width;
    do
    {
      if (v31 == v22)
      {
        break;
      }

      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v51;
      }

      v48 = *(v47 + 16);
      v49 = v48 + 1;
      if (v48 >= *(v47 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v52;
      }

      *(v47 + 16) = v49;
      v50 = (v47 + 32 * v48);
      v50[4] = a9;
      v50[5] = a7;
      v50[6] = a11;
      v50[7] = a11;
      a9 = a6 + a9;
      ++v22;
    }

    while (v49 < a1);
    a7 = a6 + a7;
    if (v46 != v32)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (v68)
  {
    return;
  }

  v22 = v66;
  if ((v66 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (*(v47 + 16) > v66)
  {
    v53 = (v47 + 32 * v66);
    a7 = v53[4];
    a6 = v53[5];
    a11 = v53[6];
    Width = v53[7];
    v54 = v63;
    v55 = v62;
    v62(v26, v63, v23);
    a9 = CGFloat.rounded(_:toScale:)(v26, a10, v65);
    v56 = OUTLINED_FUNCTION_4_31();
    v57 = v71;
    (*&v71)(v56);
    v77.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMinX(v77);
    v78.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMaxX(v78);
    v79.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMinY(v79);
    v80.origin.x = OUTLINED_FUNCTION_0_115();
    CGRectGetMaxY(v80);
    v55(v26, v54, v23);
    a8 = CGFloat.rounded(_:toScale:)(v26, a10, a9 * 0.5);
    v58 = OUTLINED_FUNCTION_4_31();
    (*&v57)(v58);
    v55(v26, v54, v23);
    a10 = CGFloat.rounded(_:toScale:)(v26, a10, a9 * 0.5);
    v59 = OUTLINED_FUNCTION_4_31();
    (*&v57)(v59);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v47 = v61;
LABEL_28:
  if (*(v47 + 16) <= v22)
  {
    __break(1u);
  }

  else
  {
    v60 = (v47 + 32 * v22);
    v60[4] = a7 - a8;
    v60[5] = a6 - a10;
    v60[6] = a11 + a9;
    v60[7] = Width + a9;
  }
}

uint64_t static GridLayout.phoneGridSize(for:orientation:mediaPipIsVisible:)(unint64_t a1, char a2, unsigned __int8 a3)
{
  v4 = a3 & ((a2 & 1) == 0);
  if (a1 != 3)
  {
    v4 = 1;
  }

  v5 = v4 == 0;
  v6 = 1;
  if (!v5)
  {
    v6 = 2;
  }

  if (a1 >= 3)
  {
    result = v6;
  }

  else
  {
    result = 1;
  }

  if (__OFADD__(a1 / result, ((result - 1) & a1) != 0))
  {
    __break(1u);
  }

  return result;
}

uint64_t static GridLayout.padGridSize(for:orientation:)(uint64_t result, char a2)
{
  if (a2)
  {
    v2 = 1;
    v3 = 4;
    v4 = 3;
    if (result > 0xC)
    {
      v4 = 4;
    }

    if (result >= 7)
    {
      v3 = v4;
    }

    if ((result - 7) <= 0xFFFFFFFFFFFFFFFCLL)
    {
      v5 = v3;
    }

    else
    {
      v5 = 2;
    }

    if (result >= 4)
    {
      v2 = v5;
    }

    if (__OFADD__(result / v2, result % v2 != 0))
    {
      __break(1u);
    }

    else
    {
      return v2;
    }
  }

  else if (result >= 4)
  {
    if ((result - 9) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      return (result & 1) + (result >> 1);
    }

    else if ((result - 13) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      return 4;
    }

    else if ((result - 16) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridLayout.Orientation and conformance GridLayout.Orientation()
{
  result = lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation;
  if (!lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout.Orientation and conformance GridLayout.Orientation);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GridLayout.Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t getEnumTagSinglePayload for GridLayout.Configuration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for GridLayout.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridLayout.GridSize(uint64_t a1, int a2)
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

uint64_t VideoAttributeCamera.cameraPosition.getter(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 0;
  }

  else
  {
    return 0x2010100u >> (8 * a1);
  }
}

__n128 ButtonGradientBackgroundView.buttonFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 key path getter for ButtonGradientBackgroundView.buttonFrame : ButtonGradientBackgroundView@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t ButtonGradientBackgroundView.buttonFrame.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v4;
  v8 = *(v3 + 32);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return ButtonGradientBackgroundView.buttonFrame.didset(v7);
}

uint64_t ButtonGradientBackgroundView.buttonFrame.didset(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame];
  result = swift_beginAccess();
  if (*(a1 + 32))
  {
    if (LOBYTE(v7[1].origin.x))
    {
      return result;
    }

    return [v1 setNeedsDisplay];
  }

  if (LOBYTE(v7[1].origin.x))
  {
    return [v1 setNeedsDisplay];
  }

  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  result = CGRectEqualToRect(v9, *v7);
  if ((result & 1) == 0)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

void (*ButtonGradientBackgroundView.buttonFrame.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v3;
  v3[18] = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(v3 + 5) = *v4;
  *(v3 + 6) = v6;
  *(v3 + 112) = v5;
  return ButtonGradientBackgroundView.buttonFrame.modify;
}

void ButtonGradientBackgroundView.buttonFrame.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  ButtonGradientBackgroundView.buttonFrame.setter(v3);

  free(v2);
}

id ButtonGradientBackgroundView.init(participantCount:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = 1.0;
  if (!a1)
  {
    v9 = 0.0;
  }

  [v7 setAlpha_];

  UIView.addTapInteraction(withTapCount:)(1);
  return v7;
}

id ButtonGradientBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ButtonGradientBackgroundView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ButtonGradientBackgroundView.draw(_:)(__C::CGRect a1)
{
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = v1 + OBJC_IVAR____TtC15ConversationKit28ButtonGradientBackgroundView_buttonFrame;
    swift_beginAccess();
    if ((*(v4 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_149_0();
      MaxY = CGRectGetMaxY(v33);
      v34.origin.x = OUTLINED_FUNCTION_0_116();
      v6 = MaxY - CGRectGetMinY(v34);
      if (v6 > 0.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      v35.origin.x = OUTLINED_FUNCTION_0_116();
      v29 = CGRectGetMaxX(v35) - v7 / 1.73205081;
      OUTLINED_FUNCTION_149_0();
      MinY = CGRectGetMinY(v36);
      OUTLINED_FUNCTION_149_0();
      v8 = CGRectGetHeight(v37) - v7;
      v38.origin.x = OUTLINED_FUNCTION_0_116();
      v9 = CGRectGetMaxX(v38) + v8 / 1.73205081;
      OUTLINED_FUNCTION_149_0();
      Height = CGRectGetHeight(v39);
      v11 = sqrt(v7 * v7 + v7 / 1.73205081 * (v7 / 1.73205081)) / sqrt((v9 - v29) * (v9 - v29) + Height * Height);
      if (v11 <= 1.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1.0;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BA7F0;
      v15 = objc_opt_self();
      v16 = [v15 blackColor];
      v17 = [v16 CGColor];

      *(v14 + 32) = v17;
      v18 = [v15 blackColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = [v19 CGColor];
      *(v14 + 40) = v20;
      v21 = [v15 blackColor];
      v22 = [v21 colorWithAlphaComponent_];

      v23 = [v22 CGColor];
      *(v14 + 48) = v23;
      v24 = [v15 clearColor];
      v25 = [v24 CGColor];

      *(v14 + 56) = v25;
      type metadata accessor for CGColorRef(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v30[0] = 0.0;
      v30[1] = v12;
      v30[2] = v12 + (1.0 - v12) * 0.5;
      v30[3] = 1.0;
      v27 = CGGradientCreateWithColors(DeviceRGB, isa, v30);

      if (v27)
      {
        v31.x = v29;
        v32.y = MinY;
        v31.y = MaxY;
        v32.x = v9;
        CGContextDrawLinearGradient(v3, v27, v31, v32, 1u);
      }
    }
  }
}

id ButtonGradientBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ButtonGradientBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v38 = v4;
  v33 = v5;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v35 = v9 - v8;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_8();
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call] = 0;
  v12 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorRemote;
  v13 = objc_opt_self();
  *&v0[v12] = [v13 greenColor];
  v14 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorLocal;
  *&v0[v14] = [v13 orangeColor];
  v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer] = 1;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localWaveformFilter] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteWaveformFilter] = 0;
  v15 = &v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localParticipantStreamToken];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteParticipantStreamToken];
  *v16 = 0;
  v16[8] = 1;
  v17 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_cancellables] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform] = 0;
  v34 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_audioPowerTapQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  v43 = v17;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v18, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v35, *MEMORY[0x1E69E8090], v37);
  *&v0[v34] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_callCenter] = v38;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_notificationCenter] = v39;
  *&v0[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_numBands] = v40;
  v19 = v38;
  v20 = v39;
  v21 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v40, 0.0);
  v22 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum;
  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum] = v21;
  OUTLINED_FUNCTION_30_2();
  v42 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  Published.init(initialValue:)();
  swift_endAccess();
  v23 = *&v1[v22];
  OUTLINED_FUNCTION_30_2();
  v42 = v23;

  Published.init(initialValue:)();
  swift_endAccess();
  type metadata accessor for AudioPowerTap();
  v24 = type metadata accessor for CellularAudioSampleNormalizer();
  v25 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CellularAudioSampleNormalizer and conformance CellularAudioSampleNormalizer, type metadata accessor for CellularAudioSampleNormalizer);
  v26 = AudioPowerTap.__allocating_init(type:normalizer:numBands:)(0, v24, v25, v40);
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap] = v26;
  v27 = AudioPowerTap.__allocating_init(type:normalizer:numBands:)(1, v24, v25, v40);
  if (!v27)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap] = v27;
  v41.receiver = v1;
  v41.super_class = type metadata accessor for AudioPowerSpectrumViewModel();
  v28 = objc_msgSendSuper2(&v41, sel_init);
  v29 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v30 = *&v28[v29];
  *&v28[v29] = v33;
  v31 = v28;
  v32 = v33;

  if (v33)
  {
    AudioPowerSpectrumViewModel.updateWaveform(forCall:)(v32);
  }

  OUTLINED_FUNCTION_30_0();
}

void *AudioPowerSpectrumViewModel.call.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AudioPowerSpectrumViewModel.call.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4;
  AudioPowerSpectrumViewModel.call.willset(a1);
  v6 = *(v1 + v3);
  *(v1 + v3) = a1;
  v7 = a1;

  AudioPowerSpectrumViewModel.call.didset(v4);
}

void (*AudioPowerSpectrumViewModel.call.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return AudioPowerSpectrumViewModel.call.modify;
}

void AudioPowerSpectrumViewModel.call.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    AudioPowerSpectrumViewModel.call.setter(v3);
  }

  else
  {
    AudioPowerSpectrumViewModel.call.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t AudioPowerSpectrumViewModel.localPowerSpectrum.getter()
{
  return AudioPowerSpectrumViewModel.localPowerSpectrum.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AudioPowerSpectrumViewModel.localPowerSpectrum.setter()
{
  return AudioPowerSpectrumViewModel.localPowerSpectrum.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AudioPowerSpectrumViewModel.localPowerSpectrum.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t AudioPowerSpectrumViewModel.$localPowerSpectrum.getter()
{
  return AudioPowerSpectrumViewModel.$localPowerSpectrum.getter();
}

{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AudioPowerSpectrumViewModel.$localPowerSpectrum.setter(uint64_t a1)
{
  return AudioPowerSpectrumViewModel.$localPowerSpectrum.setter(a1);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*AudioPowerSpectrumViewModel.$localPowerSpectrum.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return AudioPowerSpectrumViewModel.$localPowerSpectrum.modify;
}

uint64_t (*AudioPowerSpectrumViewModel.remotePowerSpectrum.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

void (*AudioPowerSpectrumViewModel.$remotePowerSpectrum.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySfGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return AudioPowerSpectrumViewModel.$remotePowerSpectrum.modify;
}

void AudioPowerSpectrumViewModel.$localPowerSpectrum.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

id AudioPowerSpectrumViewModel.waveformColorRemote.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorRemote;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

id AudioPowerSpectrumViewModel.waveformColorLocal.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_waveformColorLocal;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AudioPowerSpectrumViewModel.needsBackdropFilterLayer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t AudioPowerSpectrumViewModel.needsBackdropFilterLayer.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_needsBackdropFilterLayer;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

void *AudioPowerSpectrumViewModel.localWaveformFilter.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localWaveformFilter;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *AudioPowerSpectrumViewModel.remoteWaveformFilter.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteWaveformFilter;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall AudioPowerSpectrumViewModel.start()()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v1, &static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "Starting power spectrum observation", v4, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_293();
    v6 = (*(v5 + 232))();
    if (v6)
    {
      v9 = v6;
      AudioPowerSpectrumViewModel.callChanged(_:)(v6);
    }

    AudioPowerSpectrumViewModel.registerNotifications()(v6, v7, v8);
  }
}

Swift::Void __swiftcall AudioPowerSpectrumViewModel.stop(caller:)(Swift::String caller)
{
  object = caller._object;
  countAndFlagsBits = caller._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1BBC58000, v4, v5, "Stopping power spectrum observation by: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  AudioPowerSpectrumViewModel.unregisterNotifications()();

  AudioPowerSpectrumViewModel.removeObservation()();
}

id AudioPowerSpectrumViewModel.registerNotifications()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_25_27(a1, a2, a3, sel_handleCallStatusChanged_, *MEMORY[0x1E69D8E08]);
  result = OUTLINED_FUNCTION_25_27(v4, v5, v6, sel_handleCallRecordingStateChanged_, *MEMORY[0x1E69D8ED0]);
  *(v3 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) = 1;
  return result;
}

id AudioPowerSpectrumViewModel.unregisterNotifications()()
{
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_notificationCenter) removeObserver:v0 name:*MEMORY[0x1E69D8E08] object:0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_hasActiveWaveform) = 0;
  return result;
}

void AudioPowerSpectrumViewModel.handleCallStatusChanged(_:)()
{
  Notification.object.getter();
  if (v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (swift_dynamicCast())
    {
      v0 = v4;
      AudioPowerSpectrumViewModel.callChanged(_:)(v4);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_sypSgMd);
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.default);
  v0 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v0, v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v0, v2, "AudioPowerSpectrumViewModel.callStatusChanged without valid call", v3, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_9:
}

void AudioPowerSpectrumViewModel.callChanged(_:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v2, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_45();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v13 = (*(v12 + 232))();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      if ([v15 isActive])
      {
        v17 = [*(v3 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_callCenter) activeConversationForCall_];
        v18 = v17;
        if (v17)
        {
          v17 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v19 = &protocol witness table for TUConversation;
        }

        else
        {
          v19 = 0;
          v31[1] = 0;
          v31[2] = 0;
        }

        v31[0] = v18;
        v31[3] = v17;
        v31[4] = v19;
        v30 = v18;
        AudioPowerSpectrumViewModel.observeActiveCall(using:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit0A0_pSgMd);
      }

      else
      {
        AudioPowerSpectrumViewModel.removeObservation()();
      }

      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v20, &static Log.default);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_23();
    v31[0] = v25;
    *v24 = 136315138;
    v31[5] = v21;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v26 = v21;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v31);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1BBC58000, v22, v23, "Skipping registering for power spectrum: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

void AudioPowerSpectrumViewModel.observeActiveCall(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v29 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMd);
  OUTLINED_FUNCTION_1();
  v28 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_101();
  v15 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  if (v15)
  {
    v16 = v15;
    if (([v15 isVideo] & 1) == 0)
    {
      v30 = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap) + 160))();
      v31 = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap) + 160))();
      v27[0] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd);
      v27[1] = v13;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[Float]?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd);
      Publishers.CombineLatest.init(_:_:)();
      NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
      v22 = [objc_opt_self() mainRunLoop];
      v30 = v22;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<CurrentValueSubject<[Float]?, Never>, CurrentValueSubject<[Float]?, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGALGMd);
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
      Publisher.throttle<A>(for:scheduler:latest:)();

      (v29[1].isa)(v6, v27[0]);
      (*(v28 + 8))(v11, v7);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v24 = swift_allocObject();
      *(v24 + 16) = partial apply for closure #1 in AudioPowerSpectrumViewModel.observeActiveCall(using:);
      *(v24 + 24) = v23;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.CombineLatest<CurrentValueSubject<[Float]?, Never>, CurrentValueSubject<[Float]?, Never>>, NSRunLoop> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC0A6LatestVy_AA19CurrentValueSubjectCySaySfGSgs5NeverOGANGSo9NSRunLoopCGMd);
      Publisher<>.sink(receiveValue:)();

      v25 = OUTLINED_FUNCTION_33_0();
      v26(v25);
      OUTLINED_FUNCTION_30_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      AudioPowerSpectrumViewModel.startAudioTaps()();

      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v17, &static Log.default);
  v29 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v18))
  {
    v19 = OUTLINED_FUNCTION_33();
    *v19 = 0;
    _os_log_impl(&dword_1BBC58000, v29, v18, "Ignoring request to observe active call since its nil or is ineligible", v19, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t AudioPowerSpectrumViewModel.removeObservation()()
{
  AudioPowerSpectrumViewModel.stopAudioTaps()();
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_localParticipantStreamToken;
  *v1 = 0;
  v1[8] = 1;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_remoteParticipantStreamToken;
  *v2 = 0;
  v2[8] = 1;
  v3 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_cancellables;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x1E69E7CC0];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x108);

  v5(v6);
  v7 = *((*v4 & *v0) + 0x138);

  return v7(v8);
}

void AudioPowerSpectrumViewModel.startAudioTaps()()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v17 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v16 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = partial apply for closure #1 in AudioPowerSpectrumViewModel.startAudioTaps();
  v18[5] = v10;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v18[2] = v11;
  v18[3] = &block_descriptor_51;
  v12 = _Block_copy(v18);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v0, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v1);
  (*(v8 + 8))(v0, v16);

  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.stopAudioTaps()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v20 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap);
  v13 = *(v0 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap);
  OUTLINED_FUNCTION_24();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v21[4] = partial apply for closure #1 in AudioPowerSpectrumViewModel.stopAudioTaps();
  v21[5] = v14;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v21[2] = v15;
  v21[3] = &block_descriptor_42;
  v16 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v19, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v1, v8, v16);
  _Block_release(v16);
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v1, v20);

  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.__allocating_init(call:callCenter:notificationCenter:numBands:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_33_0();
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
}

uint64_t key path getter for AudioPowerSpectrumViewModel.call : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.call : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

void AudioPowerSpectrumViewModel.call.willset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v5 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
LABEL_6:
    AudioPowerSpectrumViewModel.removeObservation()();
  }
}

void AudioPowerSpectrumViewModel.call.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_call;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      v5 = *(v2 + v4);
LABEL_5:
      if (v5)
      {
        v9 = v5;
        AudioPowerSpectrumViewModel.callChanged(_:)(v9);
      }
    }
  }
}

uint64_t key path getter for AudioPowerSpectrumViewModel.localPowerSpectrum : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.localPowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x108);

  return v2(v3);
}

uint64_t key path setter for AudioPowerSpectrumViewModel.$localPowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x120))(v7);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.remotePowerSpectrum : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.remotePowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x138);

  return v2(v3);
}

uint64_t key path setter for AudioPowerSpectrumViewModel.$remotePowerSpectrum : AudioPowerSpectrumViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x150))(v7);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.waveformColorRemote : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.waveformColorLocal : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.needsBackdropFilterLayer : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result & 1;
  return result;
}

uint64_t key path getter for AudioPowerSpectrumViewModel.localWaveformFilter : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.localWaveformFilter : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path getter for AudioPowerSpectrumViewModel.remoteWaveformFilter : AudioPowerSpectrumViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioPowerSpectrumViewModel.remoteWaveformFilter : AudioPowerSpectrumViewModel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo6CGRectV_Tt1g5(uint64_t result, double a2, double a3, double a4, double a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      type metadata accessor for CGRect(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v5;
      v10 = (result + 56);
      do
      {
        *(v10 - 3) = a2;
        *(v10 - 2) = a3;
        *(v10 - 1) = a4;
        *v10 = a5;
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1BC4BB7D0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1BC4CD9A0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t type metadata accessor for AudioPowerSpectrumViewModel()
{
  result = type metadata singleton initialization cache for AudioPowerSpectrumViewModel;
  if (!type metadata singleton initialization cache for AudioPowerSpectrumViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1BC4BB7D0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t AudioPowerSpectrumViewModel.updateWaveform(forCall:)(void *a1)
{
  v2 = v1;
  v3 = [a1 isRecording];
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))(v3 ^ 1);
  OUTLINED_FUNCTION_30_18();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
  NSString.init(stringLiteral:)();
  OUTLINED_FUNCTION_293();
  (*(v5 + 432))();
  OUTLINED_FUNCTION_30_18();
  NSString.init(stringLiteral:)();
  OUTLINED_FUNCTION_293();
  (*(v6 + 456))();
  v7 = OUTLINED_FUNCTION_30_18();
  v8 = objc_opt_self();
  v9 = &selRef_greenColor;
  if (v7)
  {
    v9 = &selRef_systemRedColor;
  }

  (*((*v4 & *v2) + 0x168))([v8 *v9]);
  v10 = OUTLINED_FUNCTION_30_18();
  v11 = objc_opt_self();
  v12 = &selRef_orangeColor;
  if (v10)
  {
    v12 = &selRef_systemRedColor;
  }

  v13 = [v11 *v12];
  v14 = *((*v4 & *v2) + 0x180);

  return v14(v13);
}

id AudioPowerSpectrumViewModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v16 = v7;
    *v6 = 136315138;
    type metadata accessor for AudioPowerSpectrumViewModel();
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Deinit %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v16 = *&v3[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_audioPowerTapQueue];
  v12 = v16;
  closure #1 in AudioPowerSpectrumViewModel.deinit(&v16, v3, ObjectType, v13);

  v15.receiver = v3;
  v15.super_class = type metadata accessor for AudioPowerSpectrumViewModel();
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v9 = *(a2 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap);
  closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(&v9, v6, a3, a4, &unk_1F3ADA670, partial apply for closure #1 in closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit, &block_descriptor_67_0);
  v9 = *(a2 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap);
  return closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(&v9, v6, a3, v7, &unk_1F3ADA620, partial apply for closure #1 in closure #2 in closure #1 in AudioPowerSpectrumViewModel.deinit, &block_descriptor_61);
}

uint64_t closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v32 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v31 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = *a1;
  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a3;
  v36 = a6;
  v37 = v24;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v34 = v25;
  v35 = a7;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_64();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v29, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v22, v16, v26);
  _Block_release(v26);
  (*(v32 + 8))(v16, v11);
  (*(v18 + 8))(v22, v31);
}

void closure #1 in closure #1 in closure #1 in AudioPowerSpectrumViewModel.deinit(uint64_t a1)
{
  v1 = (*(*a1 + 296))();
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Log.default);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_23();
    v10 = v5;
    *v4 = 136446466;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v1 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "[%{public}s.deinit] downlinkPowerTap stopped: %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

void closure #1 in AudioPowerSpectrumViewModel.observeActiveCall(using:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xE8);
  v8 = v7();
  if (v8 && (v9 = v8, v10 = [v8 translationSession], v9, v10) && (v10, (v11 = v7()) != 0) && (v12 = v11, v13 = objc_msgSend(v11, sel_isUplinkMuted), v12, v13))
  {
    a1 = *(v5 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);
  }

  else if (!a1)
  {
    v14 = *(v5 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);

    goto LABEL_10;
  }

  v14 = a1;
LABEL_10:
  v15 = *((*v6 & *v5) + 0x108);

  v15(v14);
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = *(v5 + OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_initialPowerSpectrum);
  }

  v17 = *((*v6 & *v5) + 0x138);

  v17(v16);
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.startAudioTaps()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Log.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Starting audio taps for power spectrum observation", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v6 = *(**&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_uplinkPowerTap] + 288);

    v6(v7);

    v8 = *(**&v1[OBJC_IVAR____TtC15ConversationKit27AudioPowerSpectrumViewModel_downlinkPowerTap] + 288);

    v8(v9);
  }

  return result;
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.stopAudioTaps()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Stopping audio taps for power spectrum observation", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v8 = (*(*a1 + 296))();
  return (*(*a2 + 296))(v8);
}

id AudioPowerSpectrumViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AudioPowerSpectrumViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioPowerSpectrumViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void AudioPowerSpectrumViewModel.isEqual(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v48 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_101();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - v18;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2, v50, &_sypSgMd);
  if (!v50[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_sypSgMd);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v47 = v49;
    OUTLINED_FUNCTION_293();
    v21 = *(v20 + 232);
    v45 = v20 + 232;
    v46 = v21;
    v22 = v21();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = 1;
    v27 = __swift_storeEnumTagSinglePayload(v19, v25, 1, v3);
    v28 = *((*MEMORY[0x1E69E7D40] & *v47) + 0xE8);
    v43 = (*MEMORY[0x1E69E7D40] & *v47) + 232;
    v44 = v28;
    v29 = (v28)(v27);
    if (v29)
    {
      v30 = v29;
      v31 = [v29 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = 0;
    }

    __swift_storeEnumTagSinglePayload(v16, v26, 1, v3);
    v32 = *(v9 + 48);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v19, v0, &_s10Foundation4UUIDVSgMd);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v16, v0 + v32, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_29_0(v0);
    if (v34)
    {
      OUTLINED_FUNCTION_33_3(v16);
      OUTLINED_FUNCTION_33_3(v19);
      OUTLINED_FUNCTION_29_0(v0 + v32);
      if (v34)
      {
        v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
LABEL_19:
        v37 = v47;
        v38 = (v46)(v33);
        if (v38)
        {
          v39 = v38;
          [v38 isRecording];
        }

        v40 = v44();
        if (v40)
        {
          v41 = v40;
          [v40 isRecording];
        }

        goto LABEL_6;
      }
    }

    else
    {
      outlined init with copy of (CGFloat, AutoplayCandidate)(v0, v13, &_s10Foundation4UUIDVSgMd);
      OUTLINED_FUNCTION_29_0(v0 + v32);
      if (!v34)
      {
        v35 = v48;
        (*(v48 + 32))(v8, v0 + v32, v3);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v42[1] = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v35 + 8);
        v36(v8, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
        v36(v13, v3);
        v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_33_3(v16);
      OUTLINED_FUNCTION_33_3(v19);
      (*(v48 + 8))(v13, v3);
    }

    v33 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_19;
  }

LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

void AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v14 - v2;
  Notification.object.getter();
  if (v16)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (swift_dynamicCast())
    {
      v4 = v14[1];
      v5 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
      type metadata accessor for MainActor();
      v6 = v0;
      v7 = v4;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E85E0];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v6;
      v9[5] = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_sypSgMd);
  }

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, &static Log.default);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v12))
  {
    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v12, "AudioPowerSpectrumViewModel.handleCallRecordingStateChanged without valid call", v13, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_9:
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:), v7, v6);
}

uint64_t closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)()
{
  v1 = *(v0 + 24);

  AudioPowerSpectrumViewModel.updateWaveform(forCall:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc AudioPowerSpectrumViewModel.handleCallStatusChanged(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  a4(v4);

  v9 = OUTLINED_FUNCTION_33_0();
  return v10(v9);
}

uint64_t partial apply for closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in AudioPowerSpectrumViewModel.handleCallRecordingStateChanged(_:)(a1, v4, v5, v7, v6);
}

void type metadata completion function for AudioPowerSpectrumViewModel()
{
  type metadata accessor for Published<[Float]>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[Float]>()
{
  if (!lazy cache variable for type metadata for Published<[Float]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[Float]>);
    }
  }
}

ConversationKit::ParticipantGridView::AnimationStyle_optional __swiftcall ParticipantGridView.AnimationStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

ConversationKit::ParticipantGridView::AnimationStyle_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ParticipantGridView.AnimationStyle@<W0>(Swift::Int *a1@<X0>, ConversationKit::ParticipantGridView::AnimationStyle_optional *a2@<X8>)
{
  result.value = ParticipantGridView.AnimationStyle.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ParticipantGridView.AnimationStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ParticipantGridView.AnimationStyle.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t ParticipantGridView.layoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  result = OUTLINED_FUNCTION_4_0();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ParticipantGridView.layoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  result = OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = v2;
  return result;
}

double ParticipantGridView.ParticipantTileInfo.aspectRatio.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  *&result = OUTLINED_FUNCTION_54_11(v1).n128_u64[0];
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.aspectRatio.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.orientation.setter(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_77_2();
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v5);
  v7 = v2 + *(result + 24);
  *v7 = v3;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.orientation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.isMostActive.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.isMostActive.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.ParticipantTileInfo.hasOtherInvitedParticipants.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ParticipantGridView.ParticipantTileInfo.hasOtherInvitedParticipants.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.ParticipantTileInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

int8x16_t ParticipantGridView.ParticipantTileInfo.init(identifier:aspectRatio:orientation:isMostActive:hasOtherInvitedParticipants:)@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v24 = *a2;
  v25 = a2[1];
  v14 = a2[2].i8[0];
  v15 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v16 = a7 + v15[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v17 + 32))(a7, a1);
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  v18 = a2[2].i8[1] | v14;
  if (a2[2].i8[1])
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20 = vdupq_n_s64(v19);
  v21 = vbicq_s8(v24, v20);
  result = vbicq_s8(v25, v20);
  v23 = (a7 + v15[5]);
  *v23 = v21;
  v23[1] = result;
  v23[2].i8[0] = v18 & 1;
  *(a7 + v15[7]) = a5;
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t static ParticipantGridView.ParticipantTileInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)())
  {
    v2 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
    OUTLINED_FUNCTION_24_26();
    if (OUTLINED_FUNCTION_38_16(v3, v4, v12, v13, v14, v15, v16, v17, v18))
    {
      v5 = *(v2 + 24);
      v6 = (v1 + v5);
      v7 = *(v1 + v5 + 8);
      v8 = (v0 + v5);
      v9 = *(v0 + v5 + 8);
      if (v7)
      {
        if (!v9)
        {
          return v9 & 1;
        }
      }

      else
      {
        if (*v6 != *v8)
        {
          LOBYTE(v9) = 1;
        }

        if (v9)
        {
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_27_2();
      if (v10)
      {
        LOBYTE(v9) = *(v1 + *(v2 + 32)) ^ *(v0 + *(v2 + 32)) ^ 1;
        return v9 & 1;
      }
    }
  }

LABEL_10:
  LOBYTE(v9) = 0;
  return v9 & 1;
}

uint64_t ParticipantGridView.ParticipantTileInfo.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

__n128 ParticipantGridView.ParticipantTileInfo.aspectRatio.getter@<Q0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_24_26();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

double ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatio.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  *&result = OUTLINED_FUNCTION_54_11(v1).n128_u64[0];
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatio.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.orientation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.orientation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.cameraPosition.setter(char a1)
{
  result = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ParticipantGridView.FullScreenFocusedParticipantInfo.cameraPosition.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

double ParticipantGridView.FullScreenFocusedParticipantInfo.aspectRatioSize.getter()
{
  if ((*(v0 + *(type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0) + 24)) | 2) == 3)
  {
    OUTLINED_FUNCTION_24_26();
    result = 1.0;
    if (v3)
    {
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_26();
    result = 1.0;
    if (v5)
    {
      return result;
    }

    v1 = v4 + 16;
  }

  return *v1;
}

BOOL static ParticipantGridView.FullScreenFocusedParticipantInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_24_26();
  if (!OUTLINED_FUNCTION_38_16(v3, v4, v7, v8, v9, v10, v11, v12, v13) || *(v1 + *(v2 + 24)) != *(v0 + *(v2 + 24)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_2();
  return v5 != 0;
}

__n128 ParticipantGridView.FullScreenFocusedParticipantInfo.init(identifier:aspectRatio:orientation:cameraPosition:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  v12 = a5 + v11[5];
  result = *a2;
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a2 + 32);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

ConversationKit::ParticipantGridView::Traits __swiftcall ParticipantGridView.Traits.init(isSelected:isScreenSharing:)(Swift::Bool isSelected, Swift::Bool isScreenSharing)
{
  if (isScreenSharing)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isSelected);
}

uint64_t ParticipantGridView.ParticipantTileInfo.identifier.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

BOOL static ParticipantGridView.AnimationInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_27_2();
  return v0 != 0;
}

uint64_t ParticipantGridView.AnimationInfo.init(uuid:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void ParticipantGridView.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v34 = v3;
  OUTLINED_FUNCTION_4_24();
  v33 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v32 = v6;
  v7 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v7);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v14 = *(v13 + 16);

  v15 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  while (v14 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    type metadata accessor for ParticipantView();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_13_45();
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v16 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v35;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v17);
        v36 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v36;
        v16 = v35;
      }

      ++v15;
      *(v16 + 16) = v19;
      v35 = v16;
      OUTLINED_FUNCTION_13_45();
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    }

    else
    {
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      ++v15;
    }
  }

  v21 = *(v35 + 16);
  if (v21)
  {
    v39 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_58_8();
    v23 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_40_3();
    v25 = v23 + v24;
    v37 = *(v9 + 72);
    v26 = (v38 + 32);
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_5_74();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v27 = *v26;
      (*v26)(v32, v34, v33);
      v29 = *(v39 + 16);
      v28 = *(v39 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v28);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v39 + 16) = v29 + 1;
      OUTLINED_FUNCTION_17_17();
      v27(v39 + v30 + *(v31 + 72) * v29, v32, v33);
      v25 += v37;
      --v21;
    }

    while (v21);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantGridView.participantIdentifiableTiles.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v7 = *(result + 16);
  if (v7)
  {
    v8 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    v27[1] = result;

    v28 = xmmword_1BC4BAA20;
    v29 = v9;
    v30 = v2;
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v33 = *&v5[*(v2 + 20)];
      type metadata accessor for ParticipantView();
      v10 = v33;
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_getObjectType();
        dynamic_cast_existential_1_unconditional(v1);
        v14 = v13;
        v15 = v12 + OBJC_IVAR____TtC15ConversationKit15ParticipantView_delegate;
        swift_beginAccess();
        *(v15 + 8) = v14;
        swift_unknownObjectWeakAssign();
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v32 = static OS_os_log.conversationKit;
        v31 = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v16 = swift_allocObject();
        *(v16 + 16) = v28;
        *&v34 = v1;
        v17 = v1;
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
        v21 = MEMORY[0x1E69E6158];
        *(v16 + 56) = MEMORY[0x1E69E6158];
        v22 = v1;
        v23 = lazy protocol witness table accessor for type String and conformance String();
        *(v16 + 64) = v23;
        *(v16 + 32) = v18;
        *(v16 + 40) = v20;
        v34 = v33;
        v24 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15ParticipantTile_pMd);
        v25 = String.init<A>(reflecting:)();
        *(v16 + 96) = v21;
        *(v16 + 104) = v23;
        v1 = v22;
        *(v16 + 72) = v25;
        *(v16 + 80) = v26;
        os_log(_:dso:log:type:_:)();

        v9 = v29;
        v2 = v30;
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

__n128 ParticipantGridView.organicLayoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration;
  OUTLINED_FUNCTION_4_0();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t ParticipantGridView.fullScreenFocusedParticipantInfo.getter()
{
  return ParticipantGridView.fullScreenFocusedParticipantInfo.getter();
}

{
  OUTLINED_FUNCTION_4_0();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t key path setter for ParticipantGridView.fullScreenFocusedParticipantInfo : ParticipantGridView()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v2, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
}

uint64_t ParticipantGridView.fullScreenFocusedParticipantInfo.didset()
{
  v1 = v0;
  v46 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (one-time initialization token for default == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Log.default);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v17 = v1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v20 = 136315394;
    v43 = v19;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    specialized >> prefix<A>(_:)();
    v22 = v21;
    v45 = v2;
    v24 = v23;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v47);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    specialized >> prefix<A>(_:)();
    v27 = v26;
    v29 = v28;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v47);
    v2 = v45;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1BBC58000, v18, v43, "Grid fullScreenFocusedParticipantInfo updated to %s from %s", v20, 0x16u);
    v31 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v31, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  }

  result = ParticipantGridView.isOneToOneMode.getter();
  v33 = *&v17[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = result;
    v36 = *(v46 + 20);
    v37 = v2;
    v38 = v33 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v39 = *(v37 + 72);

    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v40 = *&v4[v36];
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      type metadata accessor for ParticipantView();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v41, v35 & 1);
      }

      v38 += v39;
      --v34;
    }

    while (v34);
  }

  return result;
}

uint64_t ParticipantGridView.isOneToOneMode.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 88))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(uint64_t a1, char a2)
{
  v3 = 0.0;
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = (*(*static Defaults.shared + 400))();
  }

  v4 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  if (*(a1 + v4) != v3)
  {
    *(a1 + v4) = v3;
    ParticipantView.customCornerRadius.didset();
  }
}

uint64_t key path getter for ParticipantGridView.delegate : ParticipantGridView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantGridView.delegate : ParticipantGridView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantGridView.delegate.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate);
  OUTLINED_FUNCTION_4_0();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ParticipantGridView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantGridView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for ParticipantGridView.currentAnimationInfo : ParticipantGridView()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.currentAnimationInfo.setter(v2);
}

uint64_t ParticipantGridView.fullScreenFocusedParticipantInfo.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  a5(v5);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, a2);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, a2);
}

uint64_t ParticipantGridView.currentAnimationInfo.didset(uint64_t a1)
{
  v26[1] = a1;
  v2 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMd);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  swift_beginAccess();
  v15 = *(v12 + 56);
  v26[0] = v1;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v2) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v2) == 1)
  {
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_6:
    v17 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSg_AFtMd;
    goto LABEL_7;
  }

  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
  if (static UUID.== infix(_:_:)())
  {
    v23 = *(v2 + 20);
    v24 = v10[v23];
    v25 = v4[v23];
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
    v18 = v26[0];
    if (v24 == v25)
    {
      return result;
    }

    goto LABEL_8;
  }

  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  v17 = &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd;
LABEL_7:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v17);
  v18 = v26[0];
LABEL_8:
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v2);
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
  if (EnumTagSinglePayload == 1)
  {
    v20 = v18 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 24))(v18, ObjectType, v21);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*ParticipantGridView.currentAnimationInfo.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OUTLINED_FUNCTION_40_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v3[4] = __swift_coroFrameAllocStub(v7);
  v3[5] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  return ParticipantGridView.currentAnimationInfo.modify;
}

void ParticipantGridView.currentAnimationInfo.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    ParticipantGridView.currentAnimationInfo.setter(v3);
    v5 = OUTLINED_FUNCTION_40_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, v6);
  }

  else
  {
    ParticipantGridView.currentAnimationInfo.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

double ParticipantGridView.cachedFrameSize.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  OUTLINED_FUNCTION_4_0();
  return *v0;
}

uint64_t ParticipantGridView.cachedFrameSize.setter(double a1, double a2)
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  result = OUTLINED_FUNCTION_3_5();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantGridView.isLocalMemberAuthorizedToChangeGroupMembership.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v1);
}

uint64_t ParticipantGridView.isLocalMemberAuthorizedToChangeGroupMembership.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
  result = OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = a1;
  return result;
}

BOOL ParticipantGridView.MediaPipInfo.flipsOrganicPairs.getter(char a1, double a2, double a3)
{
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    return 0;
  }

  return a2 >= a3 || a1 != 2;
}

BOOL static ParticipantGridView.MediaPipInfo.== infix(_:_:)(char a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a1 == 4)
  {
    if (a2 != 4)
    {
      return 0;
    }
  }

  else if (a1 != a2)
  {
    return 0;
  }

  return a4 == a6 && a3 == a5;
}

ConversationKit::ParticipantGridView::MediaPipInfo __swiftcall ParticipantGridView.MediaPipInfo.init()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = ConversationKit_MultiwayViewConstraintsController_MultiwayCorner_unknownDefault;
  result.size.height = v1;
  result.size.width = v0;
  result.corner.value = v2;
  return result;
}

id ParticipantGridView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

UIView *ParticipantGridView.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  __swift_storeEnumTagSinglePayload(&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier], 1, 1, v5);
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  v9 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ParticipantGridView.AnimationInfo(0);
  v13 = OUTLINED_FUNCTION_64_8();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v18 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *&v0[v17] = v18;
  v19 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
  *v19 = 0;
  v19[1] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation] = 1;
  v20 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v21, v22);
  *&v0[v20] = Dictionary.init(dictionaryLiteral:)();
  v23 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation];
  *v23 = 0;
  v23[8] = 1;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle] = (*(v24 + 528))() & 1;
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if ((v26 - 1) >= 3)
  {
    if (!v26)
    {
      v29 = 0;
      v28 = xmmword_1BC4CDB60;
      v30 = 0;
      v27 = 1;
      goto LABEL_7;
    }

    if (v26 != -1)
    {
      v27 = 0;
      v28 = xmmword_1BC4CDB70;
      v29 = 2;
      v30 = 0x4089000000000000;
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = xmmword_1BC4CDB70;
  v29 = 1;
  v30 = 0x408A100000000000;
LABEL_7:
  v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceType] = v29;
  v31 = &v1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration];
  *v31 = 0x4030000000000000;
  *(v31 + 8) = v28;
  *(v31 + 3) = v30;
  v31[32] = v27;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  v34 = *&v32[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay];
  v35 = v32;
  [(UIView *)v35 addSubview:v34];
  v36 = *MEMORY[0x1E69DC5C0];
  v37 = *(MEMORY[0x1E69DC5C0] + 8);
  v38 = *(MEMORY[0x1E69DC5C0] + 16);
  v39 = *(MEMORY[0x1E69DC5C0] + 24);
  v40 = *&v32[v33];
  v43.top = v36;
  v43.leading = v37;
  v43.bottom = v38;
  v43.trailing = v39;
  UIView.addConstraintsToFill(_:insets:)(v35, v43);

  UIView.addTapInteraction(withTapCount:)(1);
  return v35;
}

id ParticipantGridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantGridView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentlyFocusedParticipantIdentifier;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_53_10(v0 + v3);
  OUTLINED_FUNCTION_53_10(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier);
  v4 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_23_4(v4);
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_23_4(v5);
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v7 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *(v0 + v6) = v7;
  v8 = (v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = 1;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v10, v11);
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v12 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
  *v12 = 0;
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_51_11();
  __break(1u);
}

id ParticipantGridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantGridView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  type metadata accessor for ParticipantDimmingView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentlyFocusedParticipantIdentifier;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_53_10(v0 + v3);
  OUTLINED_FUNCTION_53_10(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostProminentParticipantIdentifier);
  v4 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_23_4(v4);
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
  OUTLINED_FUNCTION_23_4(v5);
  v6 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_videoInfoCache;
  v7 = OUTLINED_FUNCTION_71_5();
  Cache.init(countLimit:)();
  *(v0 + v6) = v7;
  v8 = (v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = 1;
  v9 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
  OUTLINED_FUNCTION_4_82();
  _s10Foundation4UUIDVACSHAAWlTm_4(v10, v11);
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v12 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
  *v12 = 0;
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_51_11();
  __break(1u);
}

Swift::Void __swiftcall ParticipantGridView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantGridView.updateParticipantViewFrames()();
}

uint64_t ParticipantGridView.updateParticipantViewFrames()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = &v32 - v12;
  [v0 safeAreaInsetFrame];
  result = CGRectIsEmpty(v33);
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v15 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v15);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit19ParticipantGridViewC13AnimationInfoVSgMd);
    if (EnumTagSinglePayload == 1 || ((v17 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize], swift_beginAccess(), v18 = *v17, v19 = v17[1], result = [v0 frame], v18 == v21) ? (v22 = v19 == v20) : (v22 = 0), !v22))
    {
      [v0 frame];
      v24 = v23;
      v26 = v25;
      v27 = &v0[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_cachedFrameSize];
      swift_beginAccess();
      *v27 = v24;
      *(v27 + 1) = v26;
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(v28, v9, v6, v3);
      v30 = v29;

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd);

      ParticipantGridView.updateParticipantTiles(_:with:block:)(v31, v30, 0);
    }
  }

  return result;
}

Swift::Void __swiftcall ParticipantGridView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    [(objc_class *)isa displayScale];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (!isa || v4 != v7)
  {
    [v1 setNeedsLayout];
  }
}

Swift::Void __swiftcall ParticipantGridView.setParticipants(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  v6 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_174();
  v15 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = (v20 - v19);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v15);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v15);
  if (v22)
  {
    OUTLINED_FUNCTION_4_0();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v23 = ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(v5, v2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    v24 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
    *&v3[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] = v23;

    ParticipantGridView.participantIdentifiableTiles.didset();
    v25 = *&v3[v24];
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v6 + 20);
      OUTLINED_FUNCTION_40_3();
      v29 = v25 + v28;
      v30 = *(v8 + 72);

      do
      {
        OUTLINED_FUNCTION_1_99();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v31 = *(v12 + v27);
        OUTLINED_FUNCTION_0_117();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        [v31 setAlpha_];
        [v3 addSubview_];

        v29 += v30;
        --v26;
      }

      while (v26);
    }

    ParticipantGridView.updateParticipantViewFrames()();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v246 = a2;
  v242 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v214 = &v202 - v5;
  v233 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v233);
  v209 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v202 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v244 = &v202 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v239 = &v202 - v12;
  v228 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v234 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v245 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v235 = &v202 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v205 = &v202 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v206 = &v202 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v202 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v222 = &v202 - v23;
  v248 = type metadata accessor for UUID();
  v232 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v213 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v204 = &v202 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v243 = &v202 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v236 = &v202 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v229 = (&v202 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v219 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v218 = &v202 - v36;
  v237 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v237);
  v240 = &v202 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Participant(0);
  v38 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v238 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v231 = &v202 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v227 = &v202 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v45 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v45);
  v230 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v202 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd);
  v51 = v50 - 8;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v202 - v52;
  v241 = 0;
  swift_beginAccess();
  v54 = *(v51 + 56);
  v223 = v3;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v53, 1, v45) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v53[v54], 1, v45);
    v56 = v242;
    v58 = v49;
    if (EnumTagSinglePayload != 1)
    {
      v59 = v230;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      if ((static UUID.== infix(_:_:)() & 1) != 0 && (v60 = &v58[v45[5]], v264 = v60[32], v61 = *(v60 + 1), v263[0] = *v60, v263[1] = v61, v62 = &v59[v45[5]], v266 = v62[32], v63 = *(v62 + 1), v265[0] = *v62, v265[1] = v63, static AspectRatio.== infix(_:_:)(v263, v265)) && *&v58[v45[6]] == *&v59[v45[6]])
      {
        v64 = v45[7];
        v65 = v58[v64];
        v66 = v59[v64];
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v211 = v65 == v66;
      }

      else
      {
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v211 = 0;
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
      goto LABEL_13;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    goto LABEL_6;
  }

  v55 = __swift_getEnumTagSinglePayload(&v53[v54], 1, v45);
  v56 = v242;
  if (v55 != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd);
    v211 = 0;
    goto LABEL_13;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  v211 = 1;
LABEL_13:
  v208 = ParticipantGridView.isOneToOneMode.getter();
  v67 = 0;
  v68 = v56;
  v69 = *(v56 + 16);
  v230 = MEMORY[0x1E69E7CC0];
  v216 = v38;
  v246 = v69;
LABEL_14:
  v70 = v238;
  while (v69 != v67)
  {
    v71 = v68;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 5u:
        goto LABEL_17;
      case 4u:
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v74 = *(v73 + 48);
        v75 = v240;
        outlined consume of Participant.CopresenceInfo?(*&v240[*(v73 + 64)], *&v240[*(v73 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v75[v74]);
LABEL_17:
        v72 = type metadata accessor for Date();
        (*(*(v72 - 8) + 8))(v240, v72);
        break;
      case 6u:
        break;
      default:
        v76 = type metadata accessor for Date();
        (*(*(v76 - 8) + 8))(v240, v76);
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v77 = v230;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v261[0].i64[0] = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v77 = v261[0].i64[0];
        }

        v79 = *(v77 + 16);
        if (v79 >= *(v77 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v77 = v261[0].i64[0];
        }

        ++v67;
        *(v77 + 16) = v79 + 1;
        v230 = v77;
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v38 = v216;
        v69 = v246;
        goto LABEL_14;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    ++v67;
    v68 = v71;
  }

  v217 = *(v230 + 2);

  if (v69)
  {
    v261[0].i64[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v80 = v261[0].i64[0];
    v81 = v68 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v240 = *(v38 + 72);
    v82 = (v232 + 16);
    v83 = v69;
    v84 = v229;
    v85 = v248;
    do
    {
      v86 = v231;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      (*v82)(v84, v86 + *(v247 + 20), v85);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v261[0].i64[0] = v80;
      v87 = *(v80 + 16);
      if (v87 >= *(v80 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v80 = v261[0].i64[0];
      }

      *(v80 + 16) = v87 + 1;
      (*(v232 + 4))(v80 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 9) * v87, v84, v85);
      v81 += v240;
      --v83;
    }

    while (v83);
    v207 = v80;
    v68 = v242;
    v70 = v238;
  }

  else
  {
    v207 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v230) = v217 != 0;
  v251 = 0;
  v252 = 0;
  v250 = v68;
  v227 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v229 = (v232 + 16);
  v88 = (v232 + 32);
  v89 = (v232 + 8);

  v90 = MEMORY[0x1E69E7CC0];
  v210 = xmmword_1BC4BA940;
  v91 = v218;
  v215 = v89;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
    v93 = __swift_getEnumTagSinglePayload(v91, 1, v92);
    v237 = v90;
    if (v93 == 1)
    {
      break;
    }

    v231 = *v91;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v94 = v223;
    ParticipantGridView.updateCacheIfNeeded(for:)(v70);
    LODWORD(v240) = ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(v70, v246);
    v95 = v248;
    v96 = *(v247 + 20);
    v97 = *v229;
    (*v229)(v236, v70 + v96, v248);
    memset(v259, 0, sizeof(v259));
    v260 = 1;
    ParticipantGridView.aspectRatio(for:default:)(v70, v259, v253);
    v98 = Participant.isReceivingVideoFrames.getter();
    v224 = v96;
    v225 = v97;
    if (v98)
    {
      v99 = ParticipantGridView.orientation(for:default:)(v70, 1);
    }

    else
    {
      v99 = 0;
    }

    v100 = v70;
    v101 = v94;
    v102 = v98 ^ 1;
    v103 = v233;
    v104 = v239;
    v105 = &v239[*(v233 + 24)];
    v232 = *v88;
    v106 = (v232)(v239, v236, v95);
    v221 = v99;
    *v105 = v99;
    LODWORD(v220) = v102;
    v105[8] = v102 & 1;
    v107 = &v104[v103[5]];
    v108 = v253[1];
    *v107 = v253[0];
    v107[1] = v108;
    v107[2].i8[0] = v254;
    v109 = v103[7];
    v226 = v240 & 1;
    v104[v109] = v240 & 1;
    v104[v103[8]] = v230;
    v110 = v227;
    v111 = *&v227[v101];
    MEMORY[0x1EEE9AC00](v106);
    *(&v202 - 2) = v100;

    v112 = v241;
    v113 = specialized Collection.firstIndex(where:)(partial apply for closure #3 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:), (&v202 - 4), v111);
    LOBYTE(v104) = v114;
    v241 = v112;

    v116 = v101;
    v117 = *&v110[v101];
    if (v104)
    {
      v118 = *(v117 + 16);
      v119 = v231;
      v89 = v215;
      if (v231 >= v118)
      {
        goto LABEL_41;
      }

      if (v231 < 0)
      {
        goto LABEL_90;
      }

      v220 = (*(v234 + 80) + 32) & ~*(v234 + 80);
      v221 = *(v234 + 72) * v231;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v120 = v244;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v121 = v243;
      v122 = v248;
      v123 = (v232)(v243, v120, v248);
      MEMORY[0x1EEE9AC00](v123);
      *(&v202 - 2) = v121;
      v124 = v241;
      LOBYTE(v120) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v202 - 4), v207);
      v241 = v124;
      result = (*v89)(v121, v122);
      v118 = *(*&v227[v116] + 16);
      if (v120)
      {
LABEL_41:
        v125 = v238;
        if (v119 >= v118)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v135 = swift_allocObject();
          *(v135 + 16) = v210;
          v249 = v119;
          v136 = String.init<A>(reflecting:)();
          v138 = v137;
          *(v135 + 56) = MEMORY[0x1E69E6158];
          *(v135 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v135 + 32) = v136;
          *(v135 + 40) = v138;
          os_log(_:dso:log:type:_:)();
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v126 = swift_allocObject();
          *(v126 + 16) = v210;
          v249 = v119;
          v127 = String.init<A>(reflecting:)();
          v129 = v128;
          *(v126 + 56) = MEMORY[0x1E69E6158];
          *(v126 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v126 + 32) = v127;
          *(v126 + 40) = v129;
          v130 = v231;
          os_log(_:dso:log:type:_:)();

          v131 = *&v227[v116];
          if (v130 >= *(v131 + 16))
          {
            goto LABEL_91;
          }

          [*(v131 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v130 + *(v228 + 20)) frame];
        }

        v139 = ParticipantGridView.createParticipantView(frame:isOneToOneMode:)(v208 & 1);
        v225(v213, v125 + v224, v248);
        v140 = v139;
        ParticipantGridView.aspectRatio(for:default:)(v125, v259, v257);
        v141 = Participant.isReceivingVideoFrames.getter();
        if (v141)
        {
          v142 = ParticipantGridView.orientation(for:default:)(v125, 1);
        }

        else
        {
          v142 = 0;
        }

        LODWORD(v231) = v217 != 0;
        v143 = v233;
        v144 = v209;
        v145 = &v209[*(v233 + 24)];
        v232(v209, v213, v248);
        *v145 = v142;
        v145[8] = (v141 & 1) == 0;
        v146 = &v144[v143[5]];
        v147 = v257[1];
        *v146 = v257[0];
        v146[1] = v147;
        v146[2].i8[0] = v258;
        v144[v143[7]] = v226;
        v144[v143[8]] = v230;
        v148 = v222;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v149 = &v148[*(v228 + 20)];
        *v149 = v140;
        v149[1] = &protocol witness table for ParticipantView;
        v150 = v140;
        v151 = v214;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v150, &protocol witness table for ParticipantView, v238, v240 & 1, v231, 0, v214);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v151, &_s15ConversationKit20ParticipantViewModelOSgMd);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      }

      else
      {
        v152 = v238;
        if (v119 >= v118)
        {
          goto LABEL_92;
        }

        v153 = v217 != 0;
        v154 = v205;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v155 = &v154[*(v228 + 20)];
        v156 = *(v155 + 1);
        v157 = *v155;
        v158 = v240 & 1;
        v159 = v214;
        v240 = v157;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v157, v156, v152, v158, v153, 0, v214);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, &_s15ConversationKit20ParticipantViewModelOSgMd);
        v225(v204, v152 + v224, v248);
        v160 = &v154[*(v233 + 20)];
        v262 = v160[2].i8[0];
        v161 = v160[1];
        v261[0] = *v160;
        v261[1] = v161;
        ParticipantGridView.aspectRatio(for:default:)(v152, v261, v255);
        v162 = Participant.isReceivingVideoFrames.getter();
        v231 = v156;
        if (v162)
        {
          v163 = ParticipantGridView.orientation(for:default:)(v152, 1);
        }

        else
        {
          v163 = 0;
        }

        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v176 = v233;
        v177 = v203;
        v178 = &v203[*(v233 + 24)];
        v232(v203, v204, v248);
        *v178 = v163;
        v178[8] = (v162 & 1) == 0;
        v179 = &v177[v176[5]];
        v180 = v255[1];
        *v179 = v255[0];
        v179[1] = v180;
        v179[2].i8[0] = v256;
        v177[v176[7]] = v226;
        v177[v176[8]] = v230;
        v181 = v222;
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v182 = &v181[*(v228 + 20)];
        v183 = v231;
        *v182 = v240;
        *(v182 + 1) = v183;
      }

      v91 = v218;
    }

    else
    {
      v89 = v215;
      if ((v113 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      if (v113 >= *(v117 + 16))
      {
        goto LABEL_89;
      }

      v132 = v212;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (static ParticipantGridView.ParticipantTileInfo.== infix(_:_:)())
      {
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      }

      else
      {
        v133 = &v132[*(v233 + 24)];
        if (v133[8])
        {
          v134 = 0;
        }

        else
        {
          v134 = v220 | (*v133 != v221);
        }

        v164 = v228;
        v165 = v212;
        v166 = &v212[*(v228 + 20)];
        v167 = *(v166 + 1);
        v168 = v217 != 0;
        v169 = *v166;
        v170 = v134 & 1;
        v171 = v214;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v169, v167, v238, v240 & 1, v168, v170, v214);
        v172 = v171;
        v132 = v165;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v172, &_s15ConversationKit20ParticipantViewModelOSgMd);
        v173 = v222;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v174 = &v173[*(v164 + 20)];
        *v174 = v169;
        *(v174 + 1) = v167;
      }

      v91 = v218;
      if (!v211)
      {
        v175 = v214;
        ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(*&v132[*(v228 + 20)], *&v132[*(v228 + 20) + 8], v238, v240 & 1, v217 != 0, 0, v214);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v175, &_s15ConversationKit20ParticipantViewModelOSgMd);
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v90 = v237;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v90 = v185;
    }

    v184 = *(v90 + 16);
    if (v184 >= *(v90 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v90 = v186;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    *(v90 + 16) = v184 + 1;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v70 = v238;
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  v187 = *&v227[v223];
  v240 = *(v187 + 2);
  if (v240)
  {
    v188 = v234;
    v239 = &v187[(*(v234 + 80) + 32) & ~*(v234 + 80)];
    v236 = v187;

    v189 = 0;
    v238 = *(v188 + 72);
    do
    {
      ++v189;
      v190 = outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v191 = 0;
      while (v246 != v191)
      {
        v192 = v191 + 1;
        v193 = v244;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v194 = v243;
        v195 = v193;
        v196 = v248;
        (*v88)(v243, v195, v248);
        v197 = static UUID.== infix(_:_:)();
        v190 = (*v89)(v194, v196);
        v191 = v192;
        if (v197)
        {
          goto LABEL_85;
        }
      }

      MEMORY[0x1EEE9AC00](v190);
      v198 = v245;
      *(&v202 - 2) = v245;
      v199 = v241;
      v200 = specialized Sequence.contains(where:)(partial apply for closure #5 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:), (&v202 - 4), v237);
      v241 = v199;
      if (!v200)
      {
        v201 = *&v198[*(v228 + 20)];
        [v201 removeFromSuperview];
        type metadata accessor for ParticipantView();
        if (swift_dynamicCastClass())
        {
          ParticipantView.reset()();
        }
      }

LABEL_85:
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    while (v189 != v240);

    return v237;
  }

  return v90;
}

uint64_t ParticipantGridView.shouldSkipTransition(newInfo:oldInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v3, 1, v7);
    if (v12)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    }

    else
    {
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_115(a2, 1, v7);
      if (!v12)
      {
        v15 = ParticipantGridView.isOneToOneMode.getter();
        if ((v15 & 1) == 0 || (ParticipantGridView.hasConnectedToCall.getter() & 1) == 0)
        {
          goto LABEL_19;
        }

        if ((*(v11 + *(v7 + 24)) | 2) == 3)
        {
          v16 = v11 + *(v7 + 20);
          if ((*(v16 + 32) & 1) == 0)
          {
            v17 = (v16 + 8);
            goto LABEL_17;
          }
        }

        else
        {
          v18 = v11 + *(v7 + 20);
          if ((*(v18 + 32) & 1) == 0)
          {
            v17 = (v18 + 24);
            v16 = v18 + 16;
LABEL_17:
            if (*v16 == *v17)
            {
              goto LABEL_18;
            }

LABEL_19:
            Frame = 0;
            goto LABEL_20;
          }
        }

LABEL_18:
        Frame = ParticipantGridView.shouldShowLastFrameUI.getter();
LABEL_20:
        OUTLINED_FUNCTION_36_18();
        return Frame & 1;
      }

      OUTLINED_FUNCTION_36_18();
    }
  }

  Frame = 0;
  return Frame & 1;
}

uint64_t ParticipantGridView.hasConnectedToCall.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 96))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ParticipantGridView.shouldShowLastFrameUI.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 120))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)()
{
  OUTLINED_FUNCTION_29();
  v184 = v0;
  v185 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v174 = v13;
  v173 = v14;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v176 = (&v159 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMd);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v187 = &v159 - v23;
  v24 = OUTLINED_FUNCTION_4_24();
  v182 = type metadata accessor for Participant(v24);
  OUTLINED_FUNCTION_1();
  v168 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40();
  v181 = v27;
  v28 = OUTLINED_FUNCTION_4_24();
  v29 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v28);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_40();
  v180 = v31;
  OUTLINED_FUNCTION_4_24();
  v188 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  v183 = v35;
  v36 = OUTLINED_FUNCTION_4_24();
  v186 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v36);
  OUTLINED_FUNCTION_1();
  v177 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40();
  v179 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17();
  v169 = v42 - v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v170 = v45;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v46);
  v172 = &v159 - v47;
  OUTLINED_FUNCTION_4_24();
  v48 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v171 = *v8;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v52 = OUTLINED_FUNCTION_61_0();
  v53(v52);
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v1, v48);
  if ((v8 & 1) == 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v4 & 1) == 0)
  {
    v190 = v171;
    if ((ParticipantGridView.updateRequiredToTransition(to:layoutStyle:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:)(v173, &v190, v174, v12, v185, v10) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v54 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
  OUTLINED_FUNCTION_4_0();
  v167 = v54;
  v55 = v172;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v56 = ParticipantGridView.shouldSkipTransition(newInfo:oldInfo:)(v10, v55);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  if (v56)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_6:
      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.conversationKit);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BBC58000, v58, v59, "Skipping transition due to U+1 handoff", v60, 2u);
        MEMORY[0x1BFB23DF0](v60, -1, -1);
      }

      goto LABEL_56;
    }

LABEL_62:
    swift_once();
    goto LABEL_6;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v164 = v10;
  v185 = v21;
  HIDWORD(v161) = v6;
  v162 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BC4BB990;
  v163 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v62 = *&v184[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v160 = v33;
  v166 = v12;
  v165 = v61;
  if (v63)
  {
    v189 = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_58_8();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v64 = v189;
    OUTLINED_FUNCTION_17_17();
    v159 = v62;
    v66 = v62 + v65;
    v178 = *(v67 + 72);
    v12 = v33 + 8;
    do
    {
      OUTLINED_FUNCTION_1_99();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_5_74();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      v68 = OUTLINED_FUNCTION_15_14();
      v69(v68);
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v70);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v74 = OUTLINED_FUNCTION_15_14();
      v75(v74);
      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v189 = v64;
      v77 = *(v64 + 16);
      v76 = *(v64 + 24);
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v76);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v64 = v189;
      }

      *(v64 + 16) = v77 + 1;
      v78 = v64 + 16 * v77;
      *(v78 + 32) = v71;
      *(v78 + 40) = v73;
      v66 += v178;
      --v63;
    }

    while (v63);

    OUTLINED_FUNCTION_75_7();
  }

  else
  {
    v73 = v61;
  }

  v189 = v64;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v80 = String.init<A>(reflecting:)();
  v82 = v81;
  v83 = MEMORY[0x1E69E6158];
  v73[7] = MEMORY[0x1E69E6158];
  v84 = lazy protocol witness table accessor for type String and conformance String();
  v85 = v84;
  v73[8] = v84;
  v73[4] = v80;
  v73[5] = v82;
  v86 = v173;
  v87 = *(v173 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v179 = v79;
    v180 = v84;
    v189 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_58_8();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v88 = v189;
    OUTLINED_FUNCTION_17_17();
    v73 = (v86 + v89);
    v12 = *(v90 + 72);
    do
    {
      OUTLINED_FUNCTION_12_47();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v91);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      OUTLINED_FUNCTION_11_54();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v189 = v88;
      v96 = *(v88 + 16);
      v95 = *(v88 + 24);
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v95);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v88 = v189;
      }

      *(v88 + 16) = v96 + 1;
      v97 = v88 + 16 * v96;
      *(v97 + 32) = v92;
      *(v97 + 40) = v94;
      v73 = (v73 + v12);
      --v87;
    }

    while (v87);
    OUTLINED_FUNCTION_75_7();
    v83 = MEMORY[0x1E69E6158];
    v85 = v180;
  }

  v189 = v88;
  v98 = String.init<A>(reflecting:)();
  v73[12] = v83;
  v73[13] = v85;
  v73[9] = v98;
  v73[10] = v99;
  specialized >> prefix<A>(_:)(v174, v99, v100, v101, v102, v103, v104, v105, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v73[17] = v83;
  v73[18] = v85;
  v73[14] = v106;
  v73[15] = v107;
  v108 = v164;
  specialized >> prefix<A>(_:)();
  v73[22] = v83;
  v73[23] = v85;
  v73[19] = v109;
  v73[20] = v110;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v111 = v170;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v112 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v111, 1, v112);
  OUTLINED_FUNCTION_33_3(v111);
  v114 = v175;
  v115 = v185;
  if (EnumTagSinglePayload != 1 || (v116 = 1, OUTLINED_FUNCTION_57(v108), v117))
  {
    v118 = v169;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v119 = __swift_getEnumTagSinglePayload(v118, 1, v112);
    OUTLINED_FUNCTION_33_3(v118);
    if (v119 == 1)
    {
      v116 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_57(v108);
      if (v117)
      {
        v116 = 1;
      }

      else
      {
        v116 = 0;
      }
    }
  }

  v120 = v184;
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  OUTLINED_FUNCTION_30_2();
  v121 = v174;
  outlined assign with copy of ParticipantGridView.AnimationInfo?();
  swift_endAccess();
  v122 = v172;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_49_14();
  ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v122, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, v123, v124);
  v125 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  OUTLINED_FUNCTION_3_5();
  v120[v125] = v171;
  v126 = ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)(v173, v108);
  v127 = v163;
  *&v120[v163] = v126;

  ParticipantGridView.participantIdentifiableTiles.didset();

  ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(v128, v121, v12, v108);
  v130 = v129;

  LODWORD(v180) = ParticipantGridView.isOneToOneMode.getter();
  v131 = *&v120[v127];
  v132 = *(v131 + 16);
  v181 = v130 + 32;
  v182 = v130;

  v133 = 0;
  while (1)
  {
    if (v133 == v132)
    {
      v134 = 1;
      v133 = v132;
    }

    else
    {
      if ((v133 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v133 >= *(v131 + 16))
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_17_17();
      *v176 = v133;
      OUTLINED_FUNCTION_1_99();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_40_2();
      outlined init with take of CaptionSectioner.SpeakerSection?();
      v134 = 0;
      ++v133;
    }

    __swift_storeEnumTagSinglePayload(v115, v134, 1, v114);
    v135 = v187;
    outlined init with take of CaptionSectioner.SpeakerSection?();
    OUTLINED_FUNCTION_115(v135, 1, v114);
    if (v117)
    {
      break;
    }

    v136 = *v135;
    v137 = *(v135 + *(v114 + 48) + *(v186 + 20));
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    if (v116)
    {
      type metadata accessor for ParticipantView();
      v138 = swift_dynamicCastClass();
      if (v138)
      {
        v139 = v138;
        v140 = v137;
        ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v139, v180 & 1);

        v114 = v175;
      }
    }

    v141 = [v137 superview];
    if (v141)
    {
      v142 = v141;

      v137 = v142;
    }

    else
    {
      if ((v136 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v136 >= *(v182 + 16))
      {
        goto LABEL_60;
      }

      v143 = OUTLINED_FUNCTION_40_2();
      v144 = v184;
      ParticipantGridView.updateStartingFrame(for:with:)(v143, v145, v146, v147, v148);
      [v144 addSubview_];
    }

    v115 = v185;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  v150 = (*(v149 + 632))();
  v151 = BYTE4(v161);
  v152 = v160;
  if ((v150 & 1) != 0 && static Platform.current.getter() == 3)
  {
    v153 = &v184[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_currentAnimationInfo];
    OUTLINED_FUNCTION_4_0();
    v154 = type metadata accessor for ParticipantGridView.AnimationInfo(0);
    if (!__swift_getEnumTagSinglePayload(v153, 1, v154) && *(v153 + *(v154 + 20)) < v151)
    {
      v151 = *(v153 + *(v154 + 20));
    }
  }

  v155 = v183;
  UUID.init()();
  v156 = swift_allocObject();
  v157 = v184;
  v158 = v182;
  v156[2] = v184;
  v156[3] = v158;
  v157;
  ParticipantGridView.startAnimations(_:animationStyle:completion:)(partial apply for closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:), v156, v151, TPNumberPadCharacter.rawValue.getter, 0);

  (*(v152 + 8))(v155, v188);
LABEL_56:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantGridView.updateRequiredToTransition(to:layoutStyle:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a6;
  v98 = a4;
  v95 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v81 - v10;
  v12 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Participant(0);
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v89 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v87);
  v83 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v84 = v81 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd);
  MEMORY[0x1EEE9AC00](v85);
  v88 = v81 - v19;
  v99 = type metadata accessor for UUID();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v91 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v90 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v26);
  v94 = v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v81 - v29;
  v31 = *a2;
  ParticipantGridView.participantIdentifiers.getter();
  v33 = *(v32 + 16);

  v34 = *(a1 + 16);
  v96 = v33;
  if (v33 != v34)
  {
    return 1;
  }

  v82 = v12;
  v35 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (v31 != *(v6 + v35))
  {
    return 1;
  }

  v81[0] = v11;
  v81[1] = a1;
  swift_beginAccess();
  v36 = *(v26 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v98 = v6;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v37 = v99;
  if (__swift_getEnumTagSinglePayload(v30, 1, v99) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v30[v36], 1, v37) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd);
      goto LABEL_10;
    }

LABEL_8:
    v38 = &_s10Foundation4UUIDVSg_ADtMd;
    v39 = v30;
LABEL_41:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, v38);
    return 1;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v30[v36], 1, v37) == 1)
  {
    (*(v97 + 8))(v25, v37);
    goto LABEL_8;
  }

  v40 = v97;
  v41 = v91;
  (*(v97 + 32))(v91, &v30[v36], v37);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v40 + 8);
  v43(v41, v37);
  v43(v25, v37);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s10Foundation4UUIDVSgMd);
  if ((v42 & 1) == 0)
  {
    return 1;
  }

LABEL_10:
  swift_beginAccess();
  v44 = *(v26 + 48);
  v45 = v94;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v45, 1, v37) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v37) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s10Foundation4UUIDVSgMd);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v46 = v90;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v37) == 1)
  {
    (*(v97 + 8))(v46, v37);
LABEL_15:
    v38 = &_s10Foundation4UUIDVSg_ADtMd;
    v39 = v45;
    goto LABEL_41;
  }

  v47 = v97;
  v48 = v45 + v44;
  v49 = v91;
  (*(v97 + 32))(v91, v48, v37);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v47 + 8);
  v51(v49, v37);
  v51(v46, v37);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s10Foundation4UUIDVSgMd);
  if ((v50 & 1) == 0)
  {
    return 1;
  }

LABEL_17:
  swift_beginAccess();
  v52 = *(v85 + 48);
  v53 = v88;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v54 = v87;
  if (__swift_getEnumTagSinglePayload(v53, 1, v87) != 1)
  {
    v70 = v84;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53 + v52, 1, v54);
    v56 = v89;
    if (EnumTagSinglePayload != 1)
    {
      v72 = v83;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      if (static UUID.== infix(_:_:)())
      {
        v73 = &v70[v54[5]];
        v109 = v73[32];
        v74 = *(v73 + 1);
        v108[0] = *v73;
        v108[1] = v74;
        v75 = &v72[v54[5]];
        v111 = v75[32];
        v76 = *(v75 + 1);
        v110[0] = *v75;
        v110[1] = v76;
        if (static AspectRatio.== infix(_:_:)(v108, v110) && *&v70[v54[6]] == *&v72[v54[6]])
        {
          v77 = v54[7];
          v78 = v70[v77];
          v79 = v72[v77];
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
          if (v78 != v79)
          {
            return 1;
          }

          goto LABEL_20;
        }
      }

      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v38 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd;
      goto LABEL_40;
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_33:
    v38 = &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSg_AFtMd;
LABEL_40:
    v39 = v53;
    goto LABEL_41;
  }

  v55 = __swift_getEnumTagSinglePayload(v53 + v52, 1, v54);
  v56 = v89;
  if (v55 != 1)
  {
    goto LABEL_33;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
LABEL_20:
  v57 = 0;
  v58 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  while (1)
  {
    if (v96 == v57)
    {
      return 0;
    }

    v59 = outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v60 = *(v98 + v58);
    MEMORY[0x1EEE9AC00](v59);
    v81[-2] = v56;

    v61 = v56;
    v62 = v81[0];
    specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), v60, v81[0]);

    if (__swift_getEnumTagSinglePayload(v62, 1, v82) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd);
      goto LABEL_47;
    }

    v63 = v92;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    Participant.videoInfo.getter();
    v56 = v61;
    if (v100)
    {
      memcpy(v103, v101, sizeof(v103));
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v100, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      v104[0] = *&v103[32];
      v104[1] = *&v103[48];
      v105 = v103[64];
      v64 = &v63[*(type metadata accessor for ParticipantGridView.ParticipantTileInfo(0) + 20)];
      v107 = v64[32];
      v65 = *(v64 + 1);
      v106[0] = *v64;
      v106[1] = v65;
      if (!static AspectRatio.== infix(_:_:)(v106, v104))
      {
        break;
      }
    }

    Participant.videoInfo.getter();
    if (v102[0])
    {
      v66 = v102[3];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      v67 = &v63[*(type metadata accessor for ParticipantGridView.ParticipantTileInfo(0) + 24)];
      v68 = *v67;
      v69 = v67[8];
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      if ((v69 & 1) != 0 || v68 != v66)
      {
        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    ++v57;
  }

  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_47:
  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  return 1;
}

void ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = a4;
  *&v103 = a3;
  v89 = a2;
  v96 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v104 = &v89 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v89 - v13;
  v98 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v16 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CC0];
  v21 = *(a1 + 16);
  v93 = v15;
  v101 = v9;
  v92 = v5;
  v95 = v21;
  if (v21)
  {
    v91 = v10;
    v105 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v22 = v21;
    v20 = v105;
    v23 = v96 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    do
    {
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v105 = v20;
      v25 = *(v20 + 16);
      if (v25 >= *(v20 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v105;
      }

      *(v20 + 16) = v25 + 1;
      outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      v23 += v24;
      --v22;
    }

    while (v22);
    v9 = v101;
    v10 = v91;
    v5 = v92;
  }

  v26 = static Platform.current.getter();
  v27 = v99;
  v28 = v98;
  if (v26 != 2 || (ParticipantGridView.layoutIdiom.getter(&v105), v105 == 2) || (v105 & 1) != 0)
  {
    v33 = *(v20 + 16);
    v34 = __swift_getEnumTagSinglePayload(v27, 1, v28) != 1;
    ParticipantGridView.mediaPipDodgingFrame(for:isFullScreen:)(v33, v34);
  }

  else
  {
    [v5 bounds];
  }

  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = *(v20 + 16);
  v40 = ParticipantGridView.mediaPipIsVisible.getter();
  if (v39 == 1)
  {
    v42 = v97;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v28);
    v44 = v104;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BA940;
      *(inited + 32) = ParticipantGridView.frameForSingleParticipantView(in:)(v35, v36, v37, v38);
      *(inited + 40) = v46;
      *(inited + 48) = v47;
      *(inited + 56) = v48;
      specialized Array.append<A>(contentsOf:)(inited);
      goto LABEL_31;
    }

    v51 = v90;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v52 = swift_initStackObject();
    v53 = v51;
    *(v52 + 16) = xmmword_1BC4BA940;
    v54 = *&v51[*(v28 + 24)];
    if ((v54 | 2) == 3)
    {
      v55 = &v53[*(v28 + 20)];
      v56 = 1.0;
      v57 = 1.0;
      if ((v55[32] & 1) == 0)
      {
        v58 = (v55 + 8);
LABEL_29:
        v57 = *v58;
        v56 = *v55;
      }
    }

    else
    {
      v59 = &v53[*(v28 + 20)];
      v56 = 1.0;
      v57 = 1.0;
      if ((v59[32] & 1) == 0)
      {
        v58 = (v59 + 24);
        v55 = v59 + 16;
        goto LABEL_29;
      }
    }

    [v5 bounds];
    *(v52 + 32) = ParticipantGridView.frameForFullScreenParticipantView(fitting:layoutFrame:shouldUseSafeAreaInsets:forcePortraitSize:remoteVideoOrientation:)(0, 1, v54, 0, v56, v57, v60, v61, v62, v63);
    *(v52 + 40) = v64;
    *(v52 + 48) = v65;
    *(v52 + 56) = v66;
    specialized Array.append<A>(contentsOf:)(v52);
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    goto LABEL_31;
  }

  if (v39)
  {
    if (v40 & 1 | (v39 != 2))
    {
      if (v39 < 3)
      {
        v50 = 0;
        v49 = 1;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v40);
        *(&v89 - 2) = v89;
        v50 = specialized Collection.firstIndex(where:)(partial apply for closure #2 in ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:), (&v89 - 4), v20);
      }

      v41 = ParticipantGridView.framesForParticipantViews(in:frameCount:indexToExpand:)(v39, v50, v49 & 1, v35, v36, v37, v38);
    }

    else
    {
      v41 = ParticipantGridView.framesForParticipantViewPair(in:)(v35, v36, v37, v38);
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v41);
  v44 = v104;
LABEL_31:
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v44, 1, v9) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v10 + 32))(v102, v44, v9);
    v67 = v106;
    v68 = *(v106 + 16);
    if (v68)
    {
      v105 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
      v69 = 0;
      v99 = *(v67 + 16);
      v70 = v105;
      v98 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v71 = v10 + 8;
      v91 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v97 = v68;
      while (v99 != v69)
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_50;
        }

        if (v69 >= *(v20 + 16))
        {
          goto LABEL_51;
        }

        v72 = v67 + 32 * v69;
        v73 = *(v72 + 32);
        v103 = *(v72 + 48);
        v104 = v73;
        v74 = v100;
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v75 = static UUID.== infix(_:_:)();
        v76 = *v71;
        (*v71)(v74, v101);
        if (v75)
        {
          if (v69 >= v95)
          {
            goto LABEL_52;
          }

          type metadata accessor for ParticipantView();
          v77 = swift_dynamicCastClass();
          v78 = v104;
          v79 = v103;
          if (v77)
          {
            [v92 safeAreaInsetFrame];
            *&v78 = ParticipantGridView.frameForSingleParticipantView(in:)(v80, v81, v82, v83);
            *(&v79 + 1) = v84;
            *(&v78 + 1) = v85;
          }
        }

        else
        {
          v78 = v104;
          v79 = v103;
        }

        v105 = v70;
        v87 = *(v70 + 16);
        v86 = *(v70 + 24);
        if (v87 >= v86 >> 1)
        {
          v104 = v78;
          v103 = v79;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1);
          v79 = v103;
          v78 = v104;
          v70 = v105;
        }

        ++v69;
        *(v70 + 16) = v87 + 1;
        v88 = v70 + 32 * v87;
        *(v88 + 32) = v78;
        *(v88 + 48) = v79;
        if (v97 == v69)
        {

          v9 = v101;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    else
    {

      v76 = *(v10 + 8);
      v70 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v106 = v70;
      v76(v102, v9);
    }
  }
}

id ParticipantGridView.updateStartingFrame(for:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v12 = floor(CGRectGetWidth(v16) * 0.75);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  [a1 setFrame_];
  [a1 setAlpha_];

  return [a1 setNeedsLayout];
}

uint64_t closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  *(swift_allocObject() + 16) = a1;

  v5 = a1;
  ParticipantGridView.updateParticipantTiles(_:with:block:)(v4, a2, partial apply for closure #1 in closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:));
}

void closure #1 in closure #3 in ParticipantGridView.transition(to:mostProminentParticipantIdentifier:focusedParticipantIdentifier:selectedParticipantIdentifier:fullScreenFocusedParticipantInfo:layoutStyle:animationStyle:forced:)(char *a1, char *a2)
{
  v126 = a1;
  v3 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v117 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v129 = v108 - v7;
  v8 = type metadata accessor for UUID();
  v112 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v118 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v10);
  v116 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v108 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v108 - v18;
  v20 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v110 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = v108 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v114 = v108 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v125 = v108 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = v108 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v111 = v108 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v119 = v108 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v124 = (v108 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v123 = v108 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v108 - v42;
  v120 = v3;
  v121 = *&v126[*(v3 + 20)];
  [v121 setAlpha_];
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  v44 = *(v112 + 32);
  v127 = v22;
  v130 = v44;
  v131 = v112 + 32;
  v44(v43, v22, v8);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v8);
  swift_beginAccess();
  v128 = v10;
  v45 = *(v10 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v8);
  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v133 = v8;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(&v19[v45], 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v48 = v123;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(&v19[v45], 1, v133) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
    (*(v112 + 8))(v48, v133);
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_15;
  }

  v49 = v118;
  v130(v118, &v19[v45], v133);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v133;
  LODWORD(v115) = v50;
  v52 = *(v112 + 8);
  v52(v49, v133);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
  v52(v48, v51);
  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
  if (v115)
  {
LABEL_8:
    v53 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v54 = v124;
    v55 = v133;
    v130(v124, v53, v133);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
    swift_beginAccess();
    v56 = *(v128 + 48);
    v57 = v122;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v133) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSgMd);
        v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
        goto LABEL_15;
      }
    }

    else
    {
      v58 = v119;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v133) != 1)
      {
        v100 = v118;
        v130(v118, (v57 + v56), v133);
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v101 = dispatch thunk of static Equatable.== infix(_:_:)();
        v102 = v133;
        v103 = v101;
        v104 = v57;
        v105 = *(v112 + 8);
        v105(v100, v133);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s10Foundation4UUIDVSgMd);
        v105(v58, v102);
        v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, &_s10Foundation4UUIDVSgMd);
        if (v103)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s10Foundation4UUIDVSgMd);
      (*(v112 + 8))(v58, v133);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSg_ADtMd);
    v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
LABEL_14:
    [a2 bringSubviewToFront_];
    [a2 bringSubviewToFront_];
  }

LABEL_15:
  v59 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v60 = *&a2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles];
  v61 = *(v60 + 16);
  v126 = a2;
  v115 = v5;
  if (!v61)
  {
    goto LABEL_27;
  }

  v109 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles;
  v62 = v47[125];
  v119 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_unfocusedParticipantOverlay;
  v63 = v117;
  v64 = v60 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v108[1] = v60;

  v65 = a2;
  swift_beginAccess();
  v124 = (v112 + 8);
  v66 = *(v63 + 72);
  v123 = v66;
  v122 = v62;
  do
  {
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v67 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v68 = v132;
    v69 = v133;
    v130(v132, v67, v133);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
    v70 = *(v128 + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v14, 1, v69) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(&v14[v70], 1, v133) != 1)
      {
        goto LABEL_22;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd);
LABEL_24:
      [v65 bringSubviewToFront_];
      [v65 bringSubviewToFront_];
      goto LABEL_25;
    }

    v71 = v132;
    v72 = v14;
    v73 = v125;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v72 + v70, 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd);
      (*v124)(v73, v133);
      v14 = v72;
      v66 = v123;
LABEL_22:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSg_ADtMd);
      goto LABEL_25;
    }

    v74 = v118;
    v130(v118, (v72 + v70), v133);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    LODWORD(v121) = dispatch thunk of static Equatable.== infix(_:_:)();
    v75 = *v124;
    (*v124)(v74, v133);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd);
    v75(v73, v133);
    v65 = v126;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s10Foundation4UUIDVSgMd);
    v14 = v72;
    v66 = v123;
    if (v121)
    {
      goto LABEL_24;
    }

LABEL_25:
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v64 += v66;
    --v61;
  }

  while (v61);

  v47 = &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView;
  v59 = v109;
  a2 = v65;
  v5 = v115;
LABEL_27:
  v76 = v47[125];
  swift_beginAccess();
  v77 = v111;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v78 = __swift_getEnumTagSinglePayload(v77, 1, v133);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s10Foundation4UUIDVSgMd);
  if (v78 == 1)
  {
LABEL_44:
    v106 = v110;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v107 = __swift_getEnumTagSinglePayload(v106, 1, v133) == 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s10Foundation4UUIDVSgMd);
    ParticipantGridView.setOverlayHidden(_:)(v107);
    return;
  }

  v79 = *&a2[v59];
  v129 = *(v79 + 16);
  if (!v129)
  {
LABEL_40:
    [a2 bringSubviewToFront_];
    goto LABEL_44;
  }

  v132 = v76;
  v125 = (v79 + ((*(v117 + 80) + 32) & ~*(v117 + 80)));
  v124 = (v112 + 8);

  v81 = 0;
  v82 = v114;
  while (v81 < *(v80 + 16))
  {
    v83 = v80;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v84 = v127;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v85 = v133;
    v130(v82, v84, v133);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v85);
    v86 = v5;
    v87 = *(v128 + 48);
    v88 = v116;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v88, 1, v85) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v89 = __swift_getEnumTagSinglePayload(v88 + v87, 1, v133);
      v90 = v88;
      v5 = v86;
      if (v89 == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation4UUIDVSgMd);
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    v91 = v113;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v88 + v87, 1, v133) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s10Foundation4UUIDVSgMd);
      v90 = v88;
      v5 = v115;
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      (*v124)(v91, v133);
LABEL_36:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation4UUIDVSg_ADtMd);
      v80 = v83;
      goto LABEL_38;
    }

    v92 = v91;
    v93 = v118;
    v130(v118, (v88 + v87), v133);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    v95 = v133;
    LODWORD(v123) = v94;
    v96 = v88;
    v97 = *v124;
    (*v124)(v93, v133);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s10Foundation4UUIDVSgMd);
    v98 = v115;
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v99 = v92;
    v82 = v114;
    v97(v99, v95);
    v5 = v98;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s10Foundation4UUIDVSgMd);
    v80 = v83;
    if (v123)
    {

      goto LABEL_44;
    }

LABEL_38:
    ++v81;
    a2 = v126;
    if (v129 == v81)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ParticipantGridView.setOverlayHidden(_:)(Swift::Bool a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_61_0();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_59_7();
  v11(v10, v5);
  if (v7)
  {
    ParticipantDimmingView.setHidden(_:)(a1);
    v12 = v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    OUTLINED_FUNCTION_4_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 72))(v3, a1, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateParticipantTiles(_:with:block:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v29 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  v27[1] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit19ParticipantGridViewC012IdentifiableD4Tile33_C3C0D7D8F62A84253427EC61D899943ELLV7elementtSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  v17 = 0;
  v27[2] = a1;
  v18 = *(a1 + 16);
  v30 = a2;
  v28 = a2 + 32;
  while (1)
  {
    if (v17 == v18)
    {
      v19 = 1;
      v17 = v18;
    }

    else
    {
      if (v17 >= v18)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_19;
      }

      *v10 = v17;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      outlined init with take of CaptionSectioner.SpeakerSection?();
      v19 = 0;
      ++v17;
    }

    __swift_storeEnumTagSinglePayload(v13, v19, 1, v8);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
    {
      return;
    }

    v20 = *v16;
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v30 + 16))
    {
      goto LABEL_17;
    }

    v21 = (v28 + 32 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *&v7[*(v29 + 20)];
    [v26 frame];
    v32.origin.x = v22;
    v32.origin.y = v23;
    v32.size.width = v24;
    v32.size.height = v25;
    if (!CGRectEqualToRect(v31, v32))
    {
      [v26 setFrame_];
    }

    if (a3)
    {
      a3(v7);
    }

    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void ParticipantGridView.startAnimations(_:animationStyle:completion:)(uint64_t (*a1)(uint64_t a1), void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v13 = *(&v6->super.super.isa + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex);
  v14 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v8 = a2;
  v9 = a1;
  *(&v6->super.super.isa + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_mostRecentAnimationIndex) = v14;
  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  *(v5 + 24) = v10;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
  if (one-time initialization token for shared != -1)
  {
LABEL_17:
    swift_once();
  }

  if (((*(*static Defaults.shared + 600))() & 1) != 0 && (v15 = [(UIView *)v7 snapshotViewAfterScreenUpdates:0]) != 0)
  {
    v16 = v15;
    [(UIView *)v7 addSubview:v15];
    UIView.addConstraintsToFill(_:insets:)(v7, *MEMORY[0x1E69DC5C0]);
    [(UIView *)v16 layoutIfNeeded];
    v17 = swift_allocObject();
    v17[2] = v11;
    v17[3] = v10;
    v17[4] = v16;
    *(v5 + 16) = partial apply for closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
    *(v5 + 24) = v17;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v10);
LABEL_7:
    v18 = objc_allocWithZone(MEMORY[0x1E69DD278]);
    isa = @nonobjc UIViewPropertyAnimator.init(duration:curve:animations:)(2, 0, 0, 0.00001);
  }

  else
  {
    switch(v12)
    {
      case 1:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        *&cubicAnimationParameters.duration = xmmword_1BC4CDBA0;
        *&cubicAnimationParameters.controlPoint1.y = xmmword_1BC4CDBB0;
        v22 = 0.995;
        goto LABEL_11;
      case 2:
        v20 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) init];
        v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v20 timingParameters:0.0];

        goto LABEL_13;
      case 3:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        *&cubicAnimationParameters.duration = xmmword_1BC4CDB80;
        *&cubicAnimationParameters.controlPoint1.y = xmmword_1BC4CDB90;
        v22 = 1.005;
LABEL_11:
        cubicAnimationParameters.controlPoint2.y = v22;
        isa = UIViewPropertyAnimator.init(cubicAnimationParameters:)(&cubicAnimationParameters).super.isa;
        break;
      default:
        goto LABEL_7;
    }
  }

  v21 = isa;
LABEL_13:
  v36 = v9;
  v37 = v8;
  v32 = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_91;
  v23 = _Block_copy(&v32);
  v24 = v21;

  [v24 addAnimations_];
  _Block_release(v23);
  v25 = swift_allocObject();
  v25[2] = v7;
  v25[3] = v14;
  v25[4] = v5;
  v36 = partial apply for closure #2 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  v37 = v25;
  v32 = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v35 = &block_descriptor_97;
  v26 = _Block_copy(&v32);
  v27 = v7;

  [v24 addCompletion_];
  _Block_release(v26);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BA940;
  v32 = v14;
  v29 = String.init<A>(reflecting:)();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v24 startAnimation];
}

void ParticipantGridView.updateParticipantView(for:with:hasOtherInvitedParticipants:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v47 = v3;
  LODWORD(v48) = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v46 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelOSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  v14 = type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78_4();
  v20 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v24 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v22 + 104))(v1, *MEMORY[0x1E69E8020], v20);
  _dispatchPreconditionTest(_:)();
  v25 = OUTLINED_FUNCTION_60_9();
  v26(v25, v20);
  if (v24)
  {
    v27 = ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(v6, *(*&v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles] + 16));
    type metadata accessor for Participant(0);
    v28 = OUTLINED_FUNCTION_70_4();
    v29 = ParticipantGridView.tile(for:ofAClass:)(&v2[v6], v28);
    if (v29)
    {
      v30 = v29;
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        goto LABEL_18;
      }

      v32 = v31;
      ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v31, &protocol witness table for ParticipantView, v6, v27 & 1, v48 & 1, 0, v13);
      OUTLINED_FUNCTION_115(v13, 1, v14);
      if (!v33)
      {
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v39 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
            v48 = *v39;
            v40 = *(v39 + 72);
            v41 = *(v39 + 80);
            v42 = *(v39 + 88);
            v45[0] = *(v39 + 96);
            v45[1] = v42;

            outlined consume of (title: String, subtitle: String?)?(v40, v41);
            ParticipantView.setInfoViewIsVisible(_:animated:)(0, 1);
            OUTLINED_FUNCTION_35_12();
            v38 = v47;
            v37 = v46;
            goto LABEL_13;
          }

          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          v36 = *(v35 + 48);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v18 + *(v35 + 64));
        }

        else
        {
          v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
        }

        v37 = v46;
        outlined destroy of ParticipantVideoView.ViewModel(v18 + v36);
        OUTLINED_FUNCTION_35_12();
        v38 = v47;
        ParticipantView.setInfoViewIsVisible(_:animated:)(v47 & 1, 1);
LABEL_13:
        OUTLINED_FUNCTION_4_0();
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v43 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v43);
        OUTLINED_FUNCTION_33_3(v37);
        if (EnumTagSinglePayload != 1)
        {
          ParticipantGridView.updateParticipantViewFrames()();
        }

        if (v38)
        {
          [v2 bringSubviewToFront_];

          OUTLINED_FUNCTION_34_20();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_34_20();
LABEL_18:

        goto LABEL_19;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit20ParticipantViewModelOSgMd);
    }

LABEL_19:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
}

uint64_t ParticipantGridView.showsMostActiveTreatment(for:totalParticipantCount:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (*(v2 + v17) != 1 || a2 < 2)
  {
    goto LABEL_11;
  }

  v19 = *(type metadata accessor for Participant(0) + 20);
  v26 = v6;
  (*(v6 + 16))(v16, a1 + v19, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  swift_beginAccess();
  v20 = *(v8 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) != 1)
    {
      v24 = v26;
      v23 = v27;
      (*(v26 + 32))(v27, &v10[v20], v5);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v24 + 8);
      v25(v23, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      v25(v13, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
      return v21 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
    (*(v26 + 8))(v13, v5);
    goto LABEL_10;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) != 1)
  {
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
  v21 = 1;
  return v21 & 1;
}

id ParticipantGridView.tile(for:ofAClass:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  v15 = a1;
  v16 = a2;

  specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridView.tile(for:ofAClass:), v9, v8);

  v10 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  OUTLINED_FUNCTION_115(v8, 1, v10);
  if (v11)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit19ParticipantGridViewC012IdentifiableC4Tile33_C3C0D7D8F62A84253427EC61D899943ELLVSgMd);
    return 0;
  }

  else
  {
    v12 = *&v8[*(v10 + 20)];
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
  }

  return v12;
}

uint64_t ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v231 = a6;
  LODWORD(v251) = a5;
  LODWORD(v241) = a4;
  v217 = a2;
  v252 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v227 = v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v243 = v212 - v14;
  v15 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v230 = v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v234 = v212 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v235 = v212 - v20;
  v253 = type metadata accessor for UUID();
  v250 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v226 = v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ty = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd));
  MEMORY[0x1EEE9AC00](*&ty);
  v222 = v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v221 = v212 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v212 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v219 = v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v224 = v212 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v218 = v212 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v223 = v212 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v236 = v212 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v212 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v212 - v42;
  v247 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v247);
  v233 = v212 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v229 = v212 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v228 = v212 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v212 - v50;
  v52 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v52);
  v242 = v212 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v239.i64[0] = v212 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v240 = v212 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v212 - v59;
  v225 = type metadata accessor for ParticipantView();
  v255 = swift_dynamicCastClass();
  if (v255)
  {
    v254 = a3;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v61 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
    swift_beginAccess();
    LODWORD(v61) = *(v8 + v61);
    v238 = a1;
    ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v51, 0, v241 & 1, 0, 0, v251 & 1, v61, v60, 1u, 0, 1u, 1u);
    LODWORD(a1) = ParticipantGridView.isOneToOneMode.getter();
    v62 = v8 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v213 = v62;
    if (Strong)
    {
      v64 = *(v62 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 80))(v258, ObjectType, v64);
      swift_unknownObjectRelease();
      v66 = LOBYTE(v258[0]) != 2;
    }

    else
    {
      v66 = 1;
    }

    v237 = v66;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v220 = type metadata accessor for Logger();
    __swift_project_value_buffer(v220, &static Log.default);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v245 = v8;
    v249 = a1;
    if (v71)
    {
      a1 = swift_slowAlloc();
      *a1 = 67109120;
      *(a1 + 4) = v249 & 1;
      _os_log_impl(&dword_1BBC58000, v69, v70, "Grid configure with isOneToOneMode = %{BOOL}d", a1, 8u);
      v72 = a1;
      LOBYTE(a1) = v249;
      v8 = v245;
      MEMORY[0x1BFB23DF0](v72, -1, -1);
    }

    v251 = v60;

    ParticipantGridView.updateCornerRadius(for:isOneToOneMode:)(v255, a1 & v237);
    v74 = v250 + 16;
    v73 = *(v250 + 16);
    v75 = v253;
    v215 = *(v247 + 20);
    v216 = v73;
    v73(v43, v254 + v215, v253);
    v76 = 1;
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v75);
    v77 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
    swift_beginAccess();
    v232 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    if (!__swift_getEnumTagSinglePayload(v8 + v77, 1, v232))
    {
      v216(v40, v8 + v77, v75);
      v76 = 0;
    }

    v212[1] = v74;
    v214 = v77;
    __swift_storeEnumTagSinglePayload(v40, v76, 1, v75);
    v78 = *(*&ty + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v27, 1, v75) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(&v27[v78], 1, v75) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
        v248 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v79 = v236;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(&v27[v78], 1, v75) != 1)
      {
        v80 = v250;
        v81 = v226;
        (*(v250 + 32))(v226, &v27[v78], v75);
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v248 = dispatch thunk of static Equatable.== infix(_:_:)();
        v82 = v52;
        v83 = *(v80 + 8);
        v83(v81, v253);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
        v83(v236, v253);
        v52 = v82;
        v75 = v253;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
LABEL_21:
        v84 = v251;
        v85 = v254;
        ParticipantGridView.transformModelIfNeeded(_:for:)(v240);
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v86 = v239.i64[0];
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v246 = v52;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v88 = &unk_1EDDB5000;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v96 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
            v97 = *v96;
            v98 = *(v96 + 72);
            v99 = *(v96 + 80);

            v100 = v98;
            v101 = v245;
            outlined consume of (title: String, subtitle: String?)?(v100, v99);
            outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
            if ([*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
            {
              v102 = v246;
              v84 = v251;
              v103 = v242;
              v85 = v254;
              v104 = v249;
              v105 = v232;
              if ((v249 & 1) == 0)
              {
                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                goto LABEL_95;
              }

              if (ParticipantGridView.shouldShowLastFrameUI.getter())
              {

                ParticipantGridView.VideoInfoCache.info(for:)(v85, &v265);

                a = v265.a;
                if (*&v265.a)
                {
                  v239 = *&v265.b;
                  d = v265.d;
                  tx_low = LOBYTE(v265.tx);
                  ty = v265.ty;
                  v247 = v266;
                  v250 = v267;
                  v253 = v268;
                  v109 = v270;
                  v110 = v269;
                  specialized Dictionary.subscript.getter();
                  v111 = v243;
                  if (*(&v258[1] + 1))
                  {
                    outlined init with take of TapInteractionHandler(v258, &aBlock);
                    outlined init with copy of IDSLookupManager(&aBlock, v258);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
                    type metadata accessor for RemoteParticipantVideoProvider();
                    if (swift_dynamicCast() & 1) != 0 && (m11 = v259.m11, v113 = (*((*MEMORY[0x1E69E7D40] & **&v259.m11) + 0x160))(), *&m11, (v113))
                    {
                      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v265, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
                      __swift_destroy_boxed_opaque_existential_1(&aBlock);
                      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                      v102 = v246;
                      v84 = v251;
                    }

                    else
                    {
                      v201 = v110 | (v109 << 16);
                      outlined init with copy of IDSLookupManager(&aBlock, v258);
                      CGAffineTransformMakeRotation(v256, 0.0);
                      CATransform3DMakeAffineTransform(&v259, v256);
                      memcpy(&v258[2] + 8, &v259, 0x80uLL);
                      DWORD2(v258[10]) = 16842753;
                      v202 = v85;
                      v203 = v245;
                      if (closure #1 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(&aBlock, v245))
                      {
                        v204 = v251;
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        v205 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
                        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                        outlined init with copy of ParticipantVideoView.ViewModel(v258, v204 + v205);
                        v102 = v246;
                        swift_storeEnumTagMultiPayload();
                        *v256 = a;
                        *&v256[8] = v239.i64[0] & 0x101010103010101;
                        *&v256[16] = v239.i16[4] & 0x101;
                        *&v256[24] = d;
                        *&v256[32] = tx_low & 3;
                        *&v256[40] = ty;
                        v84 = v204;
                        *&v256[48] = v247;
                        *&v256[56] = v250;
                        *&v256[64] = v253;
                        v256[74] = (v201 & 0x10101u) >> 16;
                        *&v256[72] = v201 & 0x101;
                        v206 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
                        swift_beginAccess();
                        swift_isUniquelyReferenced_nonNull_native();
                        v257 = *(v203 + v206);
                        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
                        *(v203 + v206) = v257;
                        swift_endAccess();
                        ParticipantGridView.scheduleUpdateToPausedHandoffOverlay(on:for:isMostActive:)(v238, v217, v202, v241 & 1);
                        outlined destroy of ParticipantVideoView.ViewModel(v258);
                        __swift_destroy_boxed_opaque_existential_1(&aBlock);
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                      }

                      else
                      {
                        *v256 = a;
                        *&v256[8] = vandq_s8(v239, xmmword_1BC4CDBC0);
                        *&v256[24] = d;
                        *&v256[32] = tx_low & 3;
                        *&v256[40] = ty;
                        *&v256[48] = v247;
                        *&v256[56] = v250;
                        *&v256[64] = v253;
                        *&v256[72] = v110 & 0x101;
                        v256[74] = (v201 & 0x10101 | 0x800000u) >> 16;
                        v207 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
                        swift_beginAccess();
                        swift_isUniquelyReferenced_nonNull_native();
                        v257 = *(v203 + v207);
                        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
                        *(v203 + v207) = v257;
                        swift_endAccess();
                        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
                        v209 = *(v208 + 48);
                        v210 = v240;
                        v211 = v240 + *(v208 + 64);
                        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                        outlined init with copy of ParticipantVideoView.ViewModel(v258, v210 + v209);
                        *(v211 + 24) = &type metadata for ImageNames.ParticipantView;
                        *(v211 + 32) = &protocol witness table for ImageNames.ParticipantView;
                        *v211 = 8;
                        outlined destroy of ParticipantVideoView.ViewModel(v258);
                        __swift_destroy_boxed_opaque_existential_1(&aBlock);
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        v84 = v251;
                        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                        *(v211 + 40) = 0;
                        *(v211 + 48) = 0;
                        *(v211 + 104) = 1;
                        v102 = v246;
                        swift_storeEnumTagMultiPayload();
                        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
                      }
                    }

                    v103 = v242;
                    LOBYTE(v104) = v249;
                    goto LABEL_95;
                  }

                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v265, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v258, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
                  v84 = v251;
                  v103 = v242;
                  v101 = v245;
                }

                else
                {
                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  v111 = v243;
                }

                v105 = v232;
              }

              else
              {
                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                v111 = v243;
              }
            }

            else
            {
              outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
              v102 = v246;
              v84 = v251;
              v103 = v242;
              v111 = v243;
              v85 = v254;
              v104 = v249;
              v105 = v232;
              if ((v249 & 1) == 0)
              {
                goto LABEL_95;
              }
            }

LABEL_72:
            outlined init with copy of [CaptionSectioner.SpeakerSection]();
            if (__swift_getEnumTagSinglePayload(v111, 1, v105))
            {
              v159 = v85;
              v160 = v227;
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v160, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
              v161 = v237;
              v162 = v213;
            }

            else
            {
              v159 = v85;
              Participant.videoInfo.getter();
              if (*&v259.m11)
              {
                m21_low = LOBYTE(v259.m21);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v259, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
              }

              else
              {
                m21_low = 0;
              }

              v161 = v237;
              v162 = v213;
              v164 = v243;
              v243[*(v105 + 28)] = m21_low;
              ParticipantGridView.fullScreenFocusedParticipantInfo.setter(v164, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR, &OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo, ParticipantGridView.fullScreenFocusedParticipantInfo.didset);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v165 = *(v162 + 8);
              v166 = swift_getObjectType();
              v167 = (*(v165 + 112))(v166, v165);
              v169 = v168;
              swift_unknownObjectRelease();
              v170 = 1;
              if ((v169 & 1) == 0 && !v167)
              {
                v170 = *(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation);
              }
            }

            else
            {
              v170 = 1;
            }

            v171 = v233;
            outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
            v172 = 0.0;
            if (static Platform.current.getter() == 3 || v161)
            {
              closure #2 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:)(v170, v171);
              v172 = v173;
            }

            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            CGAffineTransformMakeRotation(&v264, v172);
            v174 = v264.a;
            b = v264.b;
            c = v264.c;
            v177 = v264.d;
            tx = v264.tx;
            v179 = v264.ty;
            v180 = swift_allocObject();
            *(v180 + 16) = v255;
            v181 = *&v264.c;
            *(v180 + 24) = *&v264.a;
            *(v180 + 40) = v181;
            *(v180 + 56) = *&v264.tx;
            v182 = v238;
            Participant.videoInfo.getter();
            if (*&v258[0] && (v183 = BYTE10(v258[4]), outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v258, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd), (v183 & v104 & 1) != 0) && [*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) afbEnabled])
            {
              v184 = v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation;
              if (*(v101 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_rdarRemoteOrientation + 8) == 1)
              {
                *v184 = ParticipantGridView.orientation(for:default:)(v159, 1);
                *(v184 + 8) = 0;
              }

              v185 = v255;
              v261.receiver = v255;
              v186 = v225;
              v261.super_class = v225;
              aBlock = v174;
              v272 = *&b;
              v273 = *&c;
              v274 = v177;
              v275 = *&tx;
              v276 = v179;
              objc_msgSendSuper2(&v261, sel_setTransform_, &aBlock);
              v260.receiver = v185;
              v260.super_class = v186;
              objc_msgSendSuper2(&v260, sel_transform);
              ParticipantView.updateOverlayTransforms(with:)(&aBlock);
              v187 = ParticipantGridView.orientation(for:default:)(v159, 1);

              *v184 = v187;
              *(v184 + 8) = 0;
            }

            else if (v231)
            {
              v188 = objc_opt_self();
              v275 = partial apply for closure #3 in ParticipantGridView.configure(_:with:isMostActive:hasOtherInvitedParticipants:orientationChanged:);
              v276 = *&v180;
              aBlock = MEMORY[0x1E69E9820];
              v272 = 1107296256;
              v273 = thunk for @escaping @callee_guaranteed () -> ();
              v274 = COERCE_DOUBLE(&block_descriptor_73);
              v189 = _Block_copy(&aBlock);

              [v188 animateWithDuration:v189 animations:0.4];

              _Block_release(v189);
            }

            else
            {
              v190 = v255;
              v263.receiver = v255;
              v191 = v225;
              v263.super_class = v225;
              aBlock = v174;
              v272 = *&b;
              v273 = *&c;
              v274 = v177;
              v275 = *&tx;
              v276 = v179;
              objc_msgSendSuper2(&v263, sel_setTransform_, &aBlock);
              v262.receiver = v190;
              v262.super_class = v191;
              objc_msgSendSuper2(&v262, sel_transform);
              ParticipantView.updateOverlayTransforms(with:)(&aBlock);
            }

            v102 = v246;
LABEL_95:
            ParticipantView.configure(with:isOneToOneMode:)(v84, v104 & 1);
            ParticipantView.updateGradientOverlayView(isHidden:alpha:)((v248 & 1) == 0, 0, 1);
            outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
            v192 = swift_getEnumCaseMultiPayload();
            if (v192)
            {
              if (v192 != 1)
              {
                v195 = &v103[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48)];
                v196 = *v195;
                v197 = *(v195 + 9);
                v198 = *(v195 + 10);

                v199 = v198;
                v102 = v246;
                outlined consume of (title: String, subtitle: String?)?(v197, v199);
                UIView.removeTapInteractions(withTapCount:)(2);

                outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                goto LABEL_101;
              }

              v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
              v194 = *(v193 + 48);
              outlined destroy of ParticipantVideoOverlayView.ViewModel(&v103[*(v193 + 64)]);
            }

            else
            {
              v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
            }

            outlined destroy of ParticipantVideoView.ViewModel(&v103[v194]);
            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            UIView.addTapInteraction(withTapCount:)(2);

LABEL_101:
            v200 = v252;
            outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
            return __swift_storeEnumTagSinglePayload(v200, 0, 1, v102);
          }

          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
          v90 = (v86 + *(v89 + 48));
          v91 = *(v89 + 64);
          outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
          memcpy(v258, v90, 0xA8uLL);
          v92 = v90[168];
          memcpy(v256, (v86 + v91), sizeof(v256));
          if (v248)
          {
            CGAffineTransformMakeRotation(&v259, 1.57079633);
            *&v265.a = *&v259.m11;
            *&v265.c = *&v259.m13;
            *&v265.tx = *&v259.m21;
            CATransform3DMakeAffineTransform(&v259, &v265);
            v93 = 0;
            v85 = v254;
          }

          else
          {
            memcpy(&v259, v90 + 40, sizeof(v259));
            v85 = v254;
            if (v92)
            {
              v241 = v89;
              v114 = v224;
              v216(v224, v254 + v215, v75);
              __swift_storeEnumTagSinglePayload(v114, 0, 1, v75);
              swift_beginAccess();
              v115 = *(*&ty + 48);
              v116 = v222;
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              if (__swift_getEnumTagSinglePayload(v116, 1, v75) == 1)
              {
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s10Foundation4UUIDVSgMd);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116 + v115, 1, v75);
                v118 = v220;
                v88 = &unk_1EDDB5000;
                v89 = v241;
                if (EnumTagSinglePayload == 1)
                {
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation4UUIDVSgMd);
                  v93 = 0;
LABEL_48:
                  if (v88[1] != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(v118, static Logger.participant);
                  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
                  v126 = Logger.logObject.getter();
                  v127 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v126, v127))
                  {
                    v128 = swift_slowAlloc();
                    v129 = swift_slowAlloc();
                    aBlock = *&v129;
                    *v128 = 67109378;
                    *(v128 + 4) = v248 & 1;
                    *(v128 + 8) = 2080;
                    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
                    v130 = dispatch thunk of CustomStringConvertible.description.getter();
                    v132 = v131;
                    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &aBlock);

                    *(v128 + 10) = v133;
                    _os_log_impl(&dword_1BBC58000, v126, v127, "overlay participant isFullScreenParticipant: %{BOOL}d. participant: %s", v128, 0x12u);
                    __swift_destroy_boxed_opaque_existential_1(v129);
                    MEMORY[0x1BFB23DF0](v129, -1, -1);
                    MEMORY[0x1BFB23DF0](v128, -1, -1);
                  }

                  else
                  {

                    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  }

                  v84 = v251;
                  outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
                  v103 = v242;
                  v134 = v84 + *(v89 + 48);
                  v135 = *(v89 + 64);
                  outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
                  v136 = v258[1];
                  *v134 = v258[0];
                  *(v134 + 16) = v136;
                  *(v134 + 32) = *&v258[2];
                  memcpy((v134 + 40), &v259, 0x80uLL);
                  *(v134 + 168) = v93 & 1;
                  *(v134 + 169) = 256;
                  *(v134 + 171) = 0;
                  memcpy((v84 + v135), v256, 0x69uLL);
                  v102 = v246;
                  swift_storeEnumTagMultiPayload();
                  v101 = v245;
                  goto LABEL_71;
                }
              }

              else
              {
                v137 = v219;
                outlined init with copy of [CaptionSectioner.SpeakerSection]();
                if (__swift_getEnumTagSinglePayload(v116 + v115, 1, v75) != 1)
                {
                  v139 = v250;
                  v140 = v116 + v115;
                  v141 = v116;
                  v142 = v226;
                  (*(v250 + 32))(v226, v140, v75);
                  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
                  v143 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v144 = *(v139 + 8);
                  v144(v142, v75);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s10Foundation4UUIDVSgMd);
                  v144(v137, v75);
                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, &_s10Foundation4UUIDVSgMd);
                  v93 = v143 ^ 1;
                  v118 = v220;
                  v88 = &unk_1EDDB5000;
                  v89 = v241;
                  goto LABEL_48;
                }

                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s10Foundation4UUIDVSgMd);
                (*(v250 + 8))(v137, v75);
                v118 = v220;
                v88 = &unk_1EDDB5000;
                v89 = v241;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation4UUIDVSg_ADtMd);
              v93 = 1;
              goto LABEL_48;
            }

            v93 = 0;
          }

          v118 = v220;
          goto LABEL_48;
        }

        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd);
        v95 = v86 + *(v94 + 48);
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        memcpy(v258, v95, 0xACuLL);
        if (v248)
        {
          CGAffineTransformMakeRotation(&v259, 1.57079633);
          *v256 = *&v259.m11;
          *&v256[16] = *&v259.m13;
          *&v256[32] = *&v259.m21;
          CATransform3DMakeAffineTransform(&v259, v256);
LABEL_43:
          v125 = 0;
          v124 = v220;
LABEL_65:
          if (one-time initialization token for participant != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v124, static Logger.participant);
          outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            *v256 = v152;
            *v151 = 67109378;
            *(v151 + 4) = v248 & 1;
            *(v151 + 8) = 2080;
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v153 = dispatch thunk of CustomStringConvertible.description.getter();
            v155 = v154;
            v85 = v254;
            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
            v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v256);
            v84 = v251;

            *(v151 + 10) = v156;
            _os_log_impl(&dword_1BBC58000, v149, v150, "participant isFullScreenParticipant: %{BOOL}d. participant: %s", v151, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v152);
            MEMORY[0x1BFB23DF0](v152, -1, -1);
            MEMORY[0x1BFB23DF0](v151, -1, -1);
          }

          else
          {

            outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          }

          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
          v103 = v242;
          v157 = v84 + *(v94 + 48);
          outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          memcpy((v157 + 40), &v259, 0x80uLL);
          *(v157 + 168) = v125 & 1;
          *(v157 + 169) = 256;
          *(v157 + 171) = 0;
          v102 = v246;
          swift_storeEnumTagMultiPayload();
          memset(v256, 0, 74);
          v256[74] = -64;
          v158 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
          v101 = v245;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          aBlock = *(v101 + v158);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
          *(v101 + v158) = aBlock;
          swift_endAccess();
          outlined destroy of ParticipantVideoView.ViewModel(v258);
          outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_71:
          v105 = v232;
          v104 = v249;
          v111 = v243;
          if ((v249 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_72;
        }

        memcpy(&v259, (v95 + 40), sizeof(v259));
        if (BYTE8(v258[10]) != 1)
        {
          goto LABEL_43;
        }

        v241 = v94;
        v119 = v223;
        v216(v223, v85 + v215, v75);
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v75);
        swift_beginAccess();
        v120 = *(*&ty + 48);
        v121 = v221;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v122 = v253;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        if (__swift_getEnumTagSinglePayload(v121, 1, v122) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSgMd);
          v123 = __swift_getEnumTagSinglePayload(v121 + v120, 1, v122);
          v124 = v220;
          if (v123 == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSgMd);
            v125 = 0;
LABEL_64:
            v94 = v241;
            goto LABEL_65;
          }
        }

        else
        {
          v138 = v218;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) != 1)
          {
            v145 = v250;
            v146 = v121 + v120;
            v147 = v226;
            (*(v250 + 32))(v226, v146, v122);
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            LODWORD(ty) = dispatch thunk of static Equatable.== infix(_:_:)();
            v148 = *(v145 + 8);
            v148(v147, v122);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v223, &_s10Foundation4UUIDVSgMd);
            v148(v138, v122);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSgMd);
            v125 = LOBYTE(ty) ^ 1;
            v124 = v220;
            goto LABEL_64;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v223, &_s10Foundation4UUIDVSgMd);
          (*(v250 + 8))(v138, v122);
          v124 = v220;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4UUIDVSg_ADtMd);
        v125 = 1;
        goto LABEL_64;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s10Foundation4UUIDVSgMd);
      (*(v250 + 8))(v79, v75);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSg_ADtMd);
    v248 = 0;
    goto LABEL_21;
  }

  v67 = v252;

  return __swift_storeEnumTagSinglePayload(v67, 1, 1, v52);
}

void ParticipantGridView.updateViews(for:localParticipantOrientation:)()
{
  OUTLINED_FUNCTION_81_2();
  v2 = v0;
  v102 = v3;
  v121 = v4;
  ObjectType = swift_getObjectType();
  v112 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v111 = v6;
  OUTLINED_FUNCTION_4_24();
  v137 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v103 = v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v102 - v12;
  v13 = OUTLINED_FUNCTION_4_24();
  v104 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  v128 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v134 = v18 - v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v136 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_78_4();
  v120 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v23);
  OUTLINED_FUNCTION_1();
  v130 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v102 - v29;
  v31 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v37 = (v36 - v35);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v37 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v37, *MEMORY[0x1E69E8020], v31);
  v38 = _dispatchPreconditionTest(_:)();
  v39 = (*(v33 + 8))(v37, v31);
  if ((v38 & 1) == 0)
  {
    goto LABEL_46;
  }

  v41 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
  MEMORY[0x1EEE9AC00](v39);
  v100 = v121;

  v42 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), (&v102 - 4), v41);
  v114 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation);
  v115 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation;
  *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation) = v102;
  v126 = *(v42 + 16);
  if (!v126)
  {
LABEL_42:

LABEL_44:
    OUTLINED_FUNCTION_80();
    return;
  }

  v122 = v2;
  v43 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  v44 = *(v130 + 80);
  v125 = v42 + ((v44 + 32) & ~v44);
  v133 = v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_fullScreenFocusedParticipantInfo;
  OUTLINED_FUNCTION_4_0();
  v108 = v43;
  OUTLINED_FUNCTION_4_0();
  v45 = 0;
  v131 = (v8 + 32);
  v109 = (v8 + 16);
  p_c = &v139[0].c;
  v117 = (v8 + 8);
  v106 = (v44 + 16) & ~v44;
  v107 = v44;
  v105 = (v26 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = xmmword_1BC4BD490;
  v118 = xmmword_1BC4C1E40;
  v46 = v134;
  v123 = v30;
  v124 = v42;
  while (v45 < *(v42 + 16))
  {
    v135 = v45;
    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    OUTLINED_FUNCTION_5_74();
    v47 = v128;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v48 = *v131;
    v49 = v137;
    (*v131)(v1, v47, v137);
    v50 = 1;
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v49);
    v51 = type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(0);
    v52 = v133;
    v132 = v51;
    v53 = v1;
    if (!__swift_getEnumTagSinglePayload(v133, 1, v51))
    {
      (*v109)(v136, v52, v137);
      v50 = 0;
    }

    v55 = v136;
    v54 = v137;
    __swift_storeEnumTagSinglePayload(v136, v50, 1, v137);
    v56 = *(v129 + 48);
    v57 = v127;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v57, 1, v54);
    if (v59)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s10Foundation4UUIDVSgMd);
      OUTLINED_FUNCTION_115(v57 + v56, 1, v137);
      v1 = v53;
      v58 = v123;
      if (!v59)
      {
        goto LABEL_15;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      v1 = v53;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_115(v57 + v56, 1, v137);
      if (v59)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s10Foundation4UUIDVSgMd);
        (*v117)(v46, v137);
        v58 = v123;
LABEL_15:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_16:
        v60 = *&v58[*(v120 + 20) + 8];
        v61 = [objc_opt_self() currentDevice];
        v62 = [v61 userInterfaceIdiom];

        tx = 0.0;
        if (v62 || (OUTLINED_FUNCTION_4_0(), (static AmbientState.isPresented & 1) != 0))
        {
          ty = 0.0;
          v66 = v118;
          v65 = v119;
          v46 = v134;
        }

        else
        {
          v40 = v102;
          v46 = v134;
          ty = 0.0;
          v66 = v118;
          v65 = v119;
          switch(v102)
          {
            case 0:
              v89 = 1.57079633;
              break;
            case 1:
              goto LABEL_19;
            case 2:
              v89 = -1.57079633;
              break;
            case 3:
              v89 = 3.14159265;
              break;
            default:
              goto LABEL_47;
          }

          CGAffineTransformMakeRotation(v139, v89);
          v65 = *&v139[0].c;
          v66 = *&v139[0].a;
          tx = v139[0].tx;
          ty = v139[0].ty;
        }

LABEL_19:
        v141[0] = v66;
        v141[1] = v65;
        v142 = tx;
        v143 = ty;
        v67 = swift_getObjectType();
        (*(v60 + 88))(v141, v67, v60);
        goto LABEL_37;
      }

      v68 = v103;
      v69 = v137;
      v48(v103, v57 + v56, v137);
      OUTLINED_FUNCTION_4_82();
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, v70);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *v117;
      (*v117)(v68, v69);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s10Foundation4UUIDVSgMd);
      v72(v134, v69);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation4UUIDVSgMd);
      v58 = v123;
      if ((v71 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v73 = v115;
    if (v114 == *(v122 + v115) || (v74 = v108, !swift_unknownObjectWeakLoadStrong()) || (v75 = *(v74 + 8), v76 = swift_getObjectType(), v77 = (*(v75 + 112))(v76, v75), v79 = v78, swift_unknownObjectRelease(), (v79 & 1) != 0) || v77)
    {

      OUTLINED_FUNCTION_0_117();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      goto LABEL_44;
    }

    v80 = *(v122 + v73);
    OUTLINED_FUNCTION_7_63();
    v81 = v111;
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_6_65();
      outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
      v85 = v133;
      v46 = v134;
      goto LABEL_33;
    }

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v83 = *(v82 + 48);
    OUTLINED_FUNCTION_37((v81 + *(v82 + 64)));
    memcpy(v139, (v81 + v83), 0x150uLL);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v84 + 8))(v81);
    memcpy(v138, p_c, 0x4BuLL);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v139);
    v85 = v133;
    if (!v138[0])
    {
      v46 = v134;
LABEL_33:
      v90 = &v58[*(v104 + 24)];
      v88 = v132;
      if (v90[8] == 1)
      {
        v87 = ParticipantGridView.orientation(for:default:)(v121, 1);
      }

      else
      {
        v87 = *v90;
      }

      goto LABEL_36;
    }

    v86 = BYTE1(v138[9]);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v46 = v134;
    if ((v86 & 1) == 0)
    {
      goto LABEL_33;
    }

    v87 = 1;
    v88 = v132;
LABEL_36:
    __swift_getEnumTagSinglePayload(v85, 1, v88);
    static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(v80, v87);
    CGAffineTransformMakeRotation(&v140, v91);
    v92 = objc_opt_self();
    OUTLINED_FUNCTION_1_99();
    outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
    v93 = v105;
    v94 = swift_allocObject();
    OUTLINED_FUNCTION_13_45();
    outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
    v95 = (v94 + v93);
    v96 = *&v140.c;
    *v95 = *&v140.a;
    v95[1] = v96;
    v95[2] = *&v140.tx;
    *&v139[0].tx = partial apply for closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:);
    *&v139[0].ty = v94;
    *&v139[0].a = MEMORY[0x1E69E9820];
    *&v139[0].b = 1107296256;
    *&v139[0].c = thunk for @escaping @callee_guaranteed () -> ();
    *&v139[0].d = &block_descriptor_43;
    v97 = _Block_copy(v139);

    [v92 animateWithDuration:v97 animations:0.4];
    _Block_release(v97);
LABEL_37:
    v45 = v135 + 1;
    OUTLINED_FUNCTION_0_117();
    outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
    v42 = v124;
    if (v126 == v45)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v139[0].a = 0.0;
  v139[0].b = -2.68156159e154;
  v98 = v40;
  _StringGuts.grow(_:)(64);
  MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC4F8B10);
  v138[0] = v98;
  v99 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v99);

  v101 = 0;
  v100 = 410;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ParticipantGridView.orientation(for:default:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([*(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {

    ParticipantGridView.VideoInfoCache.info(for:)(a1, v21);
    v6 = v21[3];

    v7 = v21[0];
    if (v21[0])
    {
      v8 = v22;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      a2 = v6;
      v9 = v8;
    }

    else
    {
      v9 = 0;
      LOBYTE(v8) = 1;
    }

    v10 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v11 = *(v3 + v10);
    if (*(v11 + 16) && (type metadata accessor for Participant(0), v12 = specialized __RawDictionaryStorage.find<A>(_:)(), (v13 & 1) != 0))
    {
      v14 = *(v11 + 56) + 80 * v12;
      v15 = *(v14 + 24);
      v16 = *(v14 + 74);
      swift_endAccess();
      if ((v16 >> 6) <= 2u)
      {
        return v15;
      }
    }

    else
    {
      swift_endAccess();
    }

    Participant.videoInfo.getter();
    v17 = v23[0];
    if (v23[0])
    {
      v18 = v24;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      v19 = v18 ^ 1;
    }

    else
    {
      v19 = 1;
    }

    if (ParticipantGridView.isOneToOneMode.getter())
    {
      if (v17)
      {
        if (!((v7 == 0) | (v19 | v9) & 1))
        {
          return a2;
        }
      }

      else if ((v8 & 1) == 0)
      {
        return a2;
      }
    }
  }

  Participant.videoInfo.getter();
  if (v25[0])
  {
    a2 = v25[3];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  return a2;
}

uint64_t static ParticipantGridView.remoteParticipantRotationAngle(localOrientation:remoteOrientation:shouldReverse:)(uint64_t result, uint64_t a2)
{
  switch(result)
  {
    case 0:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 1:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 2:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    case 3:
      switch(a2)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          return result;
        default:
          goto LABEL_6;
      }

    default:
LABEL_6:
      _StringGuts.grow(_:)(28);

      type metadata accessor for CNKDeviceOrientation(0);
      v2 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v2);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

id closure #3 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a1 + *(type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0) + 20));
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  return [v5 setTransform_];
}

Swift::Void __swiftcall ParticipantGridView.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v4 = v2;
  v5 = isLocalMemberAuthorizedToChangeGroupMembership;
  rawValue = a1._rawValue;
  v96 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v84 = v7 - v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v85 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v82 - v12;
  v95 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v93 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v91 = v16;
  v17 = OUTLINED_FUNCTION_4_24();
  v97 = type metadata accessor for Participant(v17);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v92 = v21 - v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v82[1] = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v82 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v30 + 104))(v3, *MEMORY[0x1E69E8020], v28);
  _dispatchPreconditionTest(_:)();
  v33 = OUTLINED_FUNCTION_59_7();
  v34(v33, v28);
  if (v32)
  {
    v35 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership;
    OUTLINED_FUNCTION_3_5();
    v36 = 0;
    v94 = v5;
    v82[2] = v4;
    *(v4 + v35) = v5;
    v37 = rawValue;
    v38 = rawValue[2];
    v87 = (v93 + 32);
    v88 = v27 + 3;
    v86 = MEMORY[0x1E69E7CC0];
    v93 += 8;
    v89 = v38;
    v90 = v19;
    while (v38 != v36)
    {
      OUTLINED_FUNCTION_12_47();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      OUTLINED_FUNCTION_7_63();
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        goto LABEL_9;
      }

      v39 = v37;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v41 = *(v40 + 48);
      OUTLINED_FUNCTION_37(&v13[*(v40 + 64)]);
      v42 = v91;
      v43 = v95;
      (*v87)(v91, v13, v95);
      outlined destroy of Participant.MediaInfo(&v13[v41]);
      Date.timeIntervalSinceNow.getter();
      if (v44 <= 0.0)
      {
        Date.timeIntervalSinceNow.getter();
        v48 = v47;
        v49 = v42;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3_15();
          swift_once();
        }

        OUTLINED_FUNCTION_0_1();
        v51 = (*(v50 + 720))();
        OUTLINED_FUNCTION_73_5();
        v52(v49, v95);
        v46 = -v48 <= v51;
        v37 = v39;
        v38 = v89;
        v19 = v90;
        if (v88[v97[6]])
        {
          goto LABEL_13;
        }

LABEL_9:
        OUTLINED_FUNCTION_11_54();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        ++v36;
      }

      else
      {
        OUTLINED_FUNCTION_73_5();
        v45(v42, v43);
        v37 = v39;
        v38 = v89;
        v19 = v90;
        if (v88[v97[6]] != 1)
        {
          goto LABEL_9;
        }

        v46 = 0;
LABEL_13:
        if (!*&v27[v97[7]] || !v46)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_27_25();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
        v53 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98[0] = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v53 = v98[0];
        }

        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v55);
          v86 = v58;
          rawValue = v59;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v57 = v86;
          v53 = v98[0];
        }

        ++v36;
        *(v53 + 16) = v57;
        v86 = v53;
        OUTLINED_FUNCTION_27_25();
        outlined init with take of ParticipantGridView.IdentifiableParticipantTile();
      }
    }

    v60 = v86;
    v61 = *(v86 + 16);
    if (v61)
    {
      v62 = type metadata accessor for ParticipantView();
      OUTLINED_FUNCTION_40_3();
      v64 = v60 + v63;
      v65 = *(v19 + 72);
      v66 = v92;
      while (1)
      {
        OUTLINED_FUNCTION_12_47();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v67 = ParticipantGridView.tile(for:ofAClass:)(v66 + v97[5], v62);
        v68 = v94;
        if (v67)
        {
          break;
        }

LABEL_41:
        OUTLINED_FUNCTION_11_54();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v64 += v65;
        if (!--v61)
        {
          goto LABEL_42;
        }
      }

      v69 = v67;
      if (!swift_dynamicCastClass())
      {
LABEL_40:

        v66 = v92;
        goto LABEL_41;
      }

      if (!v68)
      {
        goto LABEL_36;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3_15();
        swift_once();
      }

      OUTLINED_FUNCTION_0_1();
      if (((*(v70 + 632))() & 1) == 0)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_7_63();
      v71 = v85;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v73 = *(v72 + 48);
        OUTLINED_FUNCTION_37((v71 + *(v72 + 64)));
        memcpy(v98, (v71 + v73), sizeof(v98));
        OUTLINED_FUNCTION_73_5();
        v74(v71, v95);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        outlined destroy of Participant.MediaInfo(v98);
        if (v99[3] != 1)
        {
          memcpy(v100, v99, 0xD1uLL);
          v75 = LOBYTE(v100[12]);
          outlined destroy of Participant.ScreenInfo(v100);
          if (v75 == 1)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        memset(v99, 0, 24);
        v99[3] = 1;
        bzero(&v99[4], 0xB1uLL);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      OUTLINED_FUNCTION_7_63();
      v76 = v84;
      outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_6_65();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
LABEL_38:
        v81 = ParticipantGridView.isOneToOneMode.getter() ^ 1;
        goto LABEL_39;
      }

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v78 = *(v77 + 48);
      OUTLINED_FUNCTION_37((v76 + *(v77 + 64)));
      memcpy(v98, (v76 + v78), sizeof(v98));
      OUTLINED_FUNCTION_73_5();
      v79(v76, v95);
      memcpy(v100, &v98[2], 0x4BuLL);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of Participant.MediaInfo(v98);
      if (!v100[0])
      {
        goto LABEL_38;
      }

      v80 = v100[9];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v80)
      {
        goto LABEL_38;
      }

LABEL_36:
      v81 = 0;
LABEL_39:
      ParticipantView.setKickMemberButtonIsVisible(_:)(v81 & 1);
      goto LABEL_40;
    }

LABEL_42:
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateKickingAvailable(for:isKickingAvailable:)(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_77_2();
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v6);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    type metadata accessor for Participant(0);
    v14 = OUTLINED_FUNCTION_70_4();
    v15 = ParticipantGridView.tile(for:ofAClass:)(v3 + v13, v14);
    if (v15)
    {
      v16 = v15;
      if (swift_dynamicCastClass())
      {
        if (a2 & 1) != 0 && (v17 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_isLocalMemberAuthorizedToChangeGroupMembership, OUTLINED_FUNCTION_4_0(), *(v4 + v17) == 1) && (Participant.canShowKickButtonOnVideoTile.getter())
        {
          v18 = ParticipantGridView.isOneToOneMode.getter() ^ 1;
        }

        else
        {
          v18 = 0;
        }

        ParticipantView.setKickMemberButtonIsVisible(_:)(v18 & 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateAudioPower(for:audioPower:)(Swift::Float a1)
{
  OUTLINED_FUNCTION_77_2();
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_61_0();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_59_7();
  v10(v9, v4);
  if (v6)
  {
    type metadata accessor for Participant(0);
    v11 = OUTLINED_FUNCTION_70_4();
    v12 = ParticipantGridView.tile(for:ofAClass:)(v1 + v6, v11);
    if (v12)
    {
      v13 = v12;
      if (swift_dynamicCastClass())
      {
        v14 = ParticipantView.monogramView.getter();
        ParticipantMonogramView.updateAudioVisualization(with:)(a1);

        v13 = v14;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateGradientOverlayView(for:isHidden:alpha:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = (v13 - v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v8);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    type metadata accessor for Participant(0);
    v16 = OUTLINED_FUNCTION_70_4();
    v17 = ParticipantGridView.tile(for:ofAClass:)(v7 + v15, v16);
    if (v17)
    {
      v18 = v17;
      if (swift_dynamicCastClass())
      {
        ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v5, v3, v1 & 1);
      }
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateVisibleCameraPosition(for:visibleCameraPosition:animated:)(uint64_t a1, char a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v4, *MEMORY[0x1E69E8020], v9);
  _dispatchPreconditionTest(_:)();
  v14 = OUTLINED_FUNCTION_60_9();
  v15(v14, v9);
  if (v13)
  {
    type metadata accessor for Participant(0);
    v16 = OUTLINED_FUNCTION_70_4();
    v17 = ParticipantGridView.tile(for:ofAClass:)(a1 + v13, v16);
    if (v17)
    {
      v18 = v17;
      if (swift_dynamicCastClass())
      {
        ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(a2, *(v5 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation), 0, a3 & 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:)()
{
  OUTLINED_FUNCTION_81_2();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_77_2();
  v8 = type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40();
  v45 = v12;
  OUTLINED_FUNCTION_4_24();
  v13 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = (v18 - v17);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v13);
  v20 = _dispatchPreconditionTest(_:)();
  v21 = (*(v15 + 8))(v19, v13);
  if (v20)
  {
    v22 = *(v2 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_participantIdentifiableTiles);
    MEMORY[0x1EEE9AC00](v21);
    v42[-2] = v1;

    v23 = *(specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridView.updateEMA(for:ema:audioPriority:videoPriority:), &v42[-4], v22) + 16);
    if (v23)
    {
      v44 = v45 + *(v8 + 20);
      v24 = v6 + 0.01;
      v25 = v4 + 0.01;
      OUTLINED_FUNCTION_40_3();
      v28 = v26 + v27;
      v29 = *(v10 + 72);
      v42[1] = v26;
      v43 = v29;
      do
      {
        OUTLINED_FUNCTION_1_99();
        outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
        v30 = *v44;
        v47 = *(v44 + 8);
        v46 = v30;
        OUTLINED_FUNCTION_0_117();
        outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
        v48 = 0;
        v49 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        MEMORY[0x1BFB20B10](0x203A414D45, 0xE500000000000000);
        Float.write<A>(to:)();
        MEMORY[0x1BFB20B10](0x3A6863656570530ALL, 0xE900000000000020);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3_15();
          swift_once();
        }

        v31 = (*static Defaults.shared + 344);
        v32 = *v31;
        v33 = (*v31)();
        if (v33 >= v24)
        {
          v34 = 0x65736C6166;
        }

        else
        {
          v34 = 1702195828;
        }

        if (v33 >= v24)
        {
          v35 = 0xE500000000000000;
        }

        else
        {
          v35 = 0xE400000000000000;
        }

        MEMORY[0x1BFB20B10](v34, v35);

        MEMORY[0x1BFB20B10](40, 0xE100000000000000);
        Float.write<A>(to:)();
        v36 = MEMORY[0x1BFB20B10](0x203A6E6769530A29, 0xE800000000000000);
        v37 = (v32)(v36);
        if (v37 >= v25)
        {
          v38 = 0x65736C6166;
        }

        else
        {
          v38 = 1702195828;
        }

        if (v37 >= v25)
        {
          v39 = 0xE500000000000000;
        }

        else
        {
          v39 = 0xE400000000000000;
        }

        v40 = v46;
        ObjectType = swift_getObjectType();
        MEMORY[0x1BFB20B10](v38, v39);

        MEMORY[0x1BFB20B10](40, 0xE100000000000000);
        Float.write<A>(to:)();
        MEMORY[0x1BFB20B10](41, 0xE100000000000000);
        (*(v47 + 80))(v48, v49, ObjectType);

        v28 += v43;
        --v23;
      }

      while (v23);
    }

    OUTLINED_FUNCTION_80();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParticipantGridView.aspectRatio(for:default:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v4 = v3;
  v29 = *a2;
  v30 = a2[1];
  v7 = a2[2].i8[0];
  if ([*(v3 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled])
  {

    ParticipantGridView.VideoInfoCache.info(for:)(a1, v33);

    v8 = v33[0];
    if (v33[0])
    {
      v31 = v35;
      v32 = v34;
      v9 = v36;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      v28 = v9;
    }

    else
    {
      v28 = 0;
      v31 = 0u;
      v32 = 0u;
      LOBYTE(v9) = 1;
    }

    v14 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v15 = *(v4 + v14);
    if (*(v15 + 16) && (type metadata accessor for Participant(0), v16 = specialized __RawDictionaryStorage.find<A>(_:)(), (v17 & 1) != 0))
    {
      v18 = *(v15 + 56) + 80 * v16;
      v26 = *(v18 + 40);
      v27 = *(v18 + 56);
      v11 = *(v18 + 72);
      v19 = *(v18 + 73);
      result = swift_endAccess();
      if (v19 >> 14 != 3)
      {
        v12 = v26;
        v13 = v27;
        goto LABEL_21;
      }
    }

    else
    {
      swift_endAccess();
    }

    Participant.videoInfo.getter();
    v20 = v37[0];
    if (v37[0])
    {
      v21 = v38;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      v22 = v21 ^ 1;
    }

    else
    {
      v22 = 1;
    }

    result = ParticipantGridView.isOneToOneMode.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v20)
    {
      if ((v8 == 0) | (v22 | v28) & 1)
      {
LABEL_18:
        result = Participant.videoInfo.getter();
        if (v39[0])
        {
          goto LABEL_19;
        }

        v23.i64[0] = 0;
        v24.i64[0] = v8;
        v25 = vdupq_lane_s64(vceqq_s64(v24, v23).i64[0], 0);
        v13 = vbslq_s8(v25, v30, v31);
        v12 = vbslq_s8(v25, v29, v32);
        if (v8)
        {
          v11 = v28;
        }

        else
        {
          v11 = v7;
        }

        goto LABEL_21;
      }
    }

    else if (v9)
    {
      goto LABEL_18;
    }

    v11 = 0;
    goto LABEL_20;
  }

  result = Participant.videoInfo.getter();
  if (v39[0])
  {
LABEL_19:
    v31 = v41;
    v32 = v40;
    v11 = v42;
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
LABEL_20:
    v13 = v31;
    v12 = v32;
    goto LABEL_21;
  }

  v11 = v7;
  v12 = v29;
  v13 = v30;
LABEL_21:
  *a3 = v12;
  a3[1] = v13;
  a3[2].i8[0] = v11 & 1;
  return result;
}

uint64_t ParticipantGridView.updateCacheIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  result = [*(v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_featureFlags) uPlusOneFullBleedHandoffEnabled];
  if (!result)
  {
    return result;
  }

  if (ParticipantGridView.isOneToOneMode.getter())
  {
    result = ParticipantGridView.shouldShowLastFrameUI.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v5 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_frozenFrameOverlayState;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16) && (type metadata accessor for Participant(0), v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) != 0))
    {
      v9 = *(v6 + 56) + 80 * v7;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v14 = *(v9 + 40);
      v15 = *(v9 + 48);
      v19 = *(v9 + 56);
      v20 = *v9;
      v16 = *(v9 + 64);
      v17 = *(v9 + 72) | (*(v9 + 74) << 16);
      result = swift_endAccess();
      v18 = v17 >= 0xC00000 && (v10 | v20 | v11 | v12 | v13 | v14 | v15 | v19 | v16) == 0;
      if (!v18 || v17 != 12582912)
      {
        return result;
      }
    }

    else
    {
      swift_endAccess();
    }

    ParticipantGridView.VideoInfoCache.update(for:)(a1);
  }

  memset(v21, 0, 75);

  ParticipantGridView.VideoInfoCache.setVideoInfo(_:for:)(v21, a1);
}

char *ParticipantGridView.createParticipantView(frame:isOneToOneMode:)(char a1)
{
  v3 = objc_allocWithZone(type metadata accessor for ParticipantView());
  v4 = ParticipantView.init(frame:localParticipant:)(0);
  ParticipantView.isInRoster.setter(0);
  v5 = v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v6 = *(v5 + 8), ObjectType = swift_getObjectType(), (*(v6 + 80))(v11, ObjectType, v6), swift_unknownObjectRelease(), LOBYTE(v11[0]) == 2) || (v8 = 0.0, (a1 & 1) == 0))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = (*(*static Defaults.shared + 400))();
  }

  v9 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  *&v4[v9] = v8;
  ParticipantView.customCornerRadius.didset();
  UIView.addTapInteraction(withTapCount:)(1);
  return v4;
}

uint64_t closure #5 in ParticipantGridView.updateParticipantTiles(with:fullScreenFocusedParticipantInfo:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  type metadata accessor for ParticipantGridView.IdentifiableParticipantTile(0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t closure #1 in ParticipantGridView.updateViews(for:localParticipantOrientation:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ParticipantGridView.ParticipantTileInfo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_5_74();
  OUTLINED_FUNCTION_40_2();
  outlined init with copy of ParticipantGridView.IdentifiableParticipantTile();
  (*(v9 + 32))(v3, v2, v7);
  type metadata accessor for Participant(0);
  static UUID.== infix(_:_:)();
  v11 = OUTLINED_FUNCTION_60_9();
  v12(v11, v7);
  return a2 & 1;
}

uint64_t ParticipantGridView.shouldManuallyRotateViews(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 || (a1 | 2) != 2)
  {
    v4 = 0;
  }

  else
  {
    ParticipantGridView.layoutIdiom.getter(&v6);
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t ParticipantGridView.layoutIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate;
  OUTLINED_FUNCTION_4_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 104))(ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 2;
  }

  return result;
}

void ParticipantGridView.mediaPipDodgingFrame(for:isFullScreen:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v6 + 1), ObjectType = swift_getObjectType(), v9 = (*(v7 + 16))(ObjectType, v7), v11 = v10, swift_unknownObjectRelease(), !swift_unknownObjectWeakLoadStrong()) || ((v12 = *(v6 + 1), v13 = swift_getObjectType(), v14 = (*(v12 + 8))(v13, v12), v16 = v15, v18 = v17, swift_unknownObjectRelease(), v14 != 5) ? (v19 = v14 == 4) : (v19 = 1), v19 || (v20 = v18, v16 == 0.0) && v18 == 0.0 || ((Layout.MultiwayFaceTime.init()(v103), v21 = v104, Layout.MultiwayFaceTime.init()(v105), v22 = v106 + v16, v23 = v14 & 0xFE, v23 != 2) ? (v24 = 0.0) : (v24 = v11), (v25 = v21 + v20, [v2 safeAreaInsetFrame], v26 = CGRectGetHeight(v107) - (v21 + v20) - v9 - v24, objc_msgSend(v2, sel_safeAreaInsetFrame), v27 = CGRectGetWidth(v108) - v22, v26 <= 0.0) && v27 <= 0.0)))
  {
    ParticipantGridView.centeredFrame(for:isFullScreen:)(a1, a2 & 1);
    return;
  }

  v94 = v26;
  v95 = v27;
  rect = v20;
  [v2 safeAreaInsetFrame];
  v96 = v28;
  v98 = v29;
  v31 = v30;
  v33 = v32;
  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  if (swift_unknownObjectWeakLoadStrong() && (v34 = *(v6 + 1), v35 = swift_getObjectType(), v36 = (*(v34 + 112))(v35, v34), v38 = v37, swift_unknownObjectRelease(), (v38 & 1) == 0))
  {
    v41 = v36 == 0;
    v39 = v31;
    if (v31 < v33 && v95 < v94)
    {
      v40 = rect;
      goto LABEL_50;
    }
  }

  else
  {
    v39 = v31;
    if (v31 < v33)
    {
      v40 = rect;
      v41 = 0;
      if (v95 >= v94)
      {
        if ((v14 & 0xFD) == 0)
        {
          goto LABEL_29;
        }

LABEL_28:
        v22 = 0.0;
        goto LABEL_29;
      }

LABEL_50:
      v64 = 0.0;
      if (v23 != 2)
      {
        v64 = v25;
      }

      v111.origin.x = UIEdgeInsetsInsetRect(v96, v98, v39, v33, v9 + v64, 0.0);
      x = v111.origin.x;
      y = v111.origin.y;
      width = v111.size.width;
      height = v111.size.height;
      v97 = CGRectGetHeight(v111);
      v99 = x;
      v112.origin.x = x;
      v69 = height;
      v70 = width;
      recta = y;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = v69;
      if (CGRectGetWidth(v112) < v97)
      {
        if ((v41 & (v102 | (a1 == 1))) != 1)
        {
          goto LABEL_88;
        }

LABEL_56:
        [v3 safeAreaInsetFrame];
        v71 = CGRectGetWidth(v113) + -2.0;
        v72 = v99;
        if (v9 <= 0.0)
        {
          if (v23 != 2)
          {
            v117.origin.x = v99;
            v77 = recta;
            v117.origin.y = recta;
            v117.size.width = v70;
            v117.size.height = v69;
            if (v71 < CGRectGetHeight(v117))
            {
              v118.origin.x = v99;
              v118.origin.y = recta;
              v118.size.width = v70;
              v118.size.height = v69;
              v82 = CGRectGetHeight(v118) - v71 - v11;
              if (v82 > 0.0)
              {
                v83 = v82;
              }

              else
              {
                v83 = 0.0;
              }

              v72 = UIEdgeInsetsInsetRect(v99, recta, v70, v69, v83, 0.0);
              v77 = v84;
              v70 = v85;
              v69 = v86;
            }

            goto LABEL_81;
          }

          v77 = recta;
        }

        else
        {
          v73 = 0.0;
          if (v71 > 0.0)
          {
            v73 = v40 / v16 * v71;
          }

          v74 = v73 - v40;
          if (v74 <= 0.0)
          {
            v74 = 0.0;
          }

          if (v23 == 2)
          {
            v75 = 0.0;
          }

          else
          {
            v75 = v74;
          }

          v72 = UIEdgeInsetsInsetRect(v99, recta, v70, v69, v75, 0.0);
          v77 = v76;
          v70 = v78;
          v69 = v79;
          if (v23 != 2)
          {
LABEL_81:
            if (v69 < v70)
            {
              v119.origin.x = v72;
              v119.origin.y = v77;
              v119.size.width = v70;
              v119.size.height = v69;
              CGRectGetWidth(v119);
              v120.origin.x = v72;
              v120.origin.y = v77;
              v120.size.width = v70;
              v120.size.height = v69;
              CGRectGetHeight(v120);
              v72 = UIEdgeInsetsInsetRect(v72, v77, v70, v69, 0.0, 0.0);
              v77 = v87;
              v70 = v88;
              v69 = v89;
            }

LABEL_83:
            v121.origin.x = v72;
            v121.origin.y = v77;
            v121.size.width = v70;
            v121.size.height = v69;
            CGRectGetHeight(v121);
            v122.origin.x = v72;
            v122.origin.y = v77;
            v122.size.width = v70;
            v122.size.height = v69;
            CGRectGetWidth(v122);
            UIEdgeInsetsInsetRect(v72, v77, v70, v69, 0.0, 0.0);
            goto LABEL_88;
          }
        }

        if (v9 != 0.0)
        {
          goto LABEL_88;
        }

        goto LABEL_83;
      }

      if (v41 & v102)
      {
        goto LABEL_56;
      }

      v114.origin.x = v99;
      v114.origin.y = y;
      v114.size.width = width;
      v114.size.height = v69;
      v80 = CGRectGetWidth(v114);
      v115.origin.x = v99;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = v69;
      v81 = v80 - CGRectGetHeight(v115) + 2.0;
      if (v41)
      {
        if (v23 == 2)
        {
          if (a1 == 1)
          {
            goto LABEL_69;
          }

          if ((v14 & 1) == 0 && v16 < v40)
          {
            v57 = 0.0;
            v91 = v99;
            v45 = y;
            v92 = width;
            v93 = v69;
            v90 = v81;
            goto LABEL_87;
          }
        }

        v57 = 0.0;
        v90 = 0.0;
        v91 = v99;
        v45 = y;
        v92 = width;
        v93 = v69;
        goto LABEL_87;
      }

LABEL_69:
      v116.origin.x = v99;
      v116.origin.y = y;
      v116.size.width = width;
      v116.size.height = v69;
      CGRectInset(v116, v81 * 0.5, 0.0);
      goto LABEL_88;
    }

    LOBYTE(v41) = 0;
  }

  v40 = rect;
  if ((v14 & 0xFD) != 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v43 = v39;
  v44 = UIEdgeInsetsInsetRect(v96, v98, v39, v33, 0.0, v22);
  v48 = v44;
  v49 = v46;
  v50 = v47;
  if (v43 >= v33)
  {
    v59 = v46 >= v47 || a1 < 3;
    if (((v59 | v102) & 1) == 0)
    {
      v60 = v45;
      v61 = v44;
      v62 = CGRectGetHeight(*&v44);
      v109.origin.x = v61;
      v109.origin.y = v60;
      v109.size.width = v49;
      v109.size.height = v50;
      v63 = (v62 - CGRectGetWidth(v109) + 2.0) * 0.5;
      v110.origin.x = v61;
      v110.origin.y = v60;
      v110.size.width = v49;
      v110.size.height = v50;
      CGRectInset(v110, 0.0, v63);
    }

    goto LABEL_88;
  }

  if (v94 <= v95)
  {
    v51 = 1.0;
    if (v102)
    {
      v52 = 1.0;
    }

    else
    {
      v52 = -1.0;
    }

    if (v41 || (v102 & 1) == 0 || (v52 = 1.0, v16 >= v40))
    {
      v53 = v48;
      v54 = v45;
      v55 = v48;
      v56 = CGRectGetHeight(*(&v45 - 1));
      v48 = v55;
      v45 = v54;
      v9 = v56 - v9 - v95;
      v51 = v52;
    }

    if ((v14 & 0xFD) != 0)
    {
      v57 = v51;
      if (v23 == 2)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v23 == 2)
      {
        v57 = v51;
LABEL_86:
        v90 = 0.0;
        v91 = v48;
        v92 = v49;
        v93 = v50;
LABEL_87:
        UIEdgeInsetsInsetRect(v91, v45, v92, v93, v57, v90);
        goto LABEL_88;
      }

      v9 = v9 - v11;
    }

    v57 = v51 + v9;
    goto LABEL_86;
  }

LABEL_88:
  UIRectRoundToViewScale();
}

uint64_t ParticipantGridView.mediaPipIsVisible.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate);
  OUTLINED_FUNCTION_4_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(ObjectType, v2);
    v6 = v5;
    v8 = v7;
    swift_unknownObjectRelease();
    if (v4 == 5)
    {
      return 0;
    }

    else
    {
      return (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v8 & 0x7FFFFFFFFFFFFFFFLL) != 0;
    }
  }

  return result;
}

double ParticipantGridView.frameForSingleParticipantView(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (a4 >= a3)
  {
    MinX = CGRectGetMinX(*&a1);
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    CGRectGetMidY(v13);
    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetWidth(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetWidth(v15);
  }

  else
  {
    MinX = CGRectGetMidX(*&a1) + a4 * -0.5;
    v10.origin.x = a1;
    v10.origin.y = a2;
    v10.size.width = a3;
    v10.size.height = a4;
    CGRectGetMinY(v10);
    v11.origin.x = a1;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    CGRectGetHeight(v11);
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetHeight(v12);
  }

  return MinX;
}

uint64_t ParticipantGridView.framesForParticipantViewPair(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_layoutStyle;
  swift_beginAccess();
  if (v5[v14])
  {
    Layout.MultiwayFaceTime.init()(v81);
    v15 = &v83;
  }

  else
  {
    Layout.MultiwayFaceTime.init()(v81);
    v15 = &v82;
  }

  v16 = *v15;
  v18 = *(v11 + 104);
  v17 = v11 + 104;
  v19 = v18;
  (v18)(v13, *MEMORY[0x1E69E7040], v10);
  v20 = [v5 traitCollection];
  [v20 displayScale];
  v22 = (v17 - 96);
  v80 = v18;
  if (a4 >= a3)
  {
    v53 = (a4 - v16) * 0.5;
    if (v53 >= a3)
    {
      v53 = a3;
    }

    v24 = CGFloat.rounded(_:toScale:)(v13, v21, v53);

    v79 = *v22;
    v79(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAA20;
    v88.origin.x = a1;
    v88.origin.y = a2;
    v88.size.width = a3;
    v88.size.height = a4;
    MidX = CGRectGetMidX(v88);
    v77 = v24 * 0.5;
    v55 = MidX - v24 * 0.5;
    HIDWORD(v76) = *MEMORY[0x1E69E7048];
    v19(v13);
    v56 = [v5 traitCollection];
    [v56 displayScale];
    v58 = CGFloat.rounded(_:toScale:)(v13, v57, v55);

    v59 = v19;
    v60 = v79;
    v79(v13, v10);
    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = a3;
    v89.size.height = a4;
    v61 = v16 * 0.5;
    v62 = CGRectGetMidY(v89) - v16 * 0.5 - v24;
    v63 = HIDWORD(v76);
    (v59)(v13, HIDWORD(v76), v10);
    v64 = [v5 traitCollection];
    [v64 displayScale];
    v66 = CGFloat.rounded(_:toScale:)(v13, v65, v62);

    v60(v13, v10);
    *(v25 + 32) = v58;
    *(v25 + 40) = v66;
    *(v25 + 48) = v24;
    *(v25 + 56) = v24;
    v90.origin.x = a1;
    v90.origin.y = a2;
    v90.size.width = a3;
    v90.size.height = a4;
    v67 = CGRectGetMidX(v90) - v77;
    v68 = v80;
    v80(v13, v63, v10);
    v69 = [v5 traitCollection];
    [v69 displayScale];
    v47 = CGFloat.rounded(_:toScale:)(v13, v70, v67);

    v71 = v79;
    v79(v13, v10);
    v91.origin.x = a1;
    v91.origin.y = a2;
    v91.size.width = a3;
    v91.size.height = a4;
    v72 = v61 + CGRectGetMidY(v91);
    v68(v13, v63, v10);
    v73 = [v5 traitCollection];
    [v73 displayScale];
    v52 = CGFloat.rounded(_:toScale:)(v13, v74, v72);

    v71(v13, v10);
  }

  else
  {
    v23 = (a3 - v16) * 0.5;
    if (v23 >= a4)
    {
      v23 = a4;
    }

    v24 = CGFloat.rounded(_:toScale:)(v13, v21, v23);

    v79 = *v22;
    v79(v13, v10);
    v78 = v17 - 96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAA20;
    v84.origin.x = a1;
    v84.origin.y = a2;
    v84.size.width = a3;
    v84.size.height = a4;
    v26 = CGRectGetMidX(v84);
    v77 = v16 * 0.5;
    v27 = v26 - v16 * 0.5;
    v28 = a2;
    v29 = v27 - v24;
    HIDWORD(v76) = *MEMORY[0x1E69E7048];
    v30 = HIDWORD(v76);
    (v19)(v13, HIDWORD(v76), v10);
    v31 = [v5 traitCollection];
    [v31 displayScale];
    v33 = CGFloat.rounded(_:toScale:)(v13, v32, v29);

    v34 = v79;
    v79(v13, v10);
    v85.origin.x = a1;
    v85.origin.y = v28;
    v85.size.width = a3;
    v85.size.height = a4;
    v35 = CGRectGetMidY(v85) - v24 * 0.5;
    v36 = v80;
    v80(v13, v30, v10);
    v37 = [v5 traitCollection];
    [v37 displayScale];
    v39 = CGFloat.rounded(_:toScale:)(v13, v38, v35);

    v34(v13, v10);
    *(v25 + 32) = v33;
    *(v25 + 40) = v39;
    *(v25 + 48) = v24;
    *(v25 + 56) = v24;
    v86.origin.x = a1;
    v86.origin.y = v28;
    v40 = v28;
    v86.size.width = a3;
    v86.size.height = a4;
    v41 = CGRectGetMidX(v86);
    v42 = HIDWORD(v76);
    v36(v13, HIDWORD(v76), v10);
    v43 = [v5 traitCollection];
    [v43 displayScale];
    v45 = CGFloat.rounded(_:toScale:)(v13, v44, v77);

    v46 = v79;
    v79(v13, v10);
    v47 = v41 + v45;
    v87.origin.x = a1;
    v87.origin.y = v40;
    v87.size.width = a3;
    v87.size.height = a4;
    MidY = CGRectGetMidY(v87);
    v36(v13, v42, v10);
    v49 = [v5 traitCollection];
    [v49 displayScale];
    v51 = CGFloat.rounded(_:toScale:)(v13, v50, v24 * 0.5);

    v46(v13, v10);
    v52 = MidY - v51;
  }

  *(v25 + 64) = v47;
  *(v25 + 72) = v52;
  *(v25 + 80) = v24;
  *(v25 + 88) = v24;
  return v25;
}

uint64_t closure #2 in ParticipantGridView.frames(for:mostProminentIdentifier:focusedIdentifier:fullScreenFocusedParticipantInfo:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v25 = v4;
  (*(v4 + 16))(&v23 - v15, a1, v3, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
    {
      v19 = v24;
      v20 = v25;
      (*(v25 + 32))(v24, &v9[v17], v3);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v20 + 8);
      v21(v19, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      v21(v12, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd);
      return v18 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
    (*(v25 + 8))(v12, v3);
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSg_ADtMd);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd);
  v18 = 1;
  return v18 & 1;
}

uint64_t ParticipantGridView.framesForParticipantViews(in:frameCount:indexToExpand:)(Swift::Int a1, unint64_t a2, char a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v8 = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static Defaults.shared;
  if (((*(*static Defaults.shared + 600))() & 1) != 0 || ((*(*v16 + 568))() & 1) == 0)
  {
    a2 = 0;
    a3 = 1;
  }

  ParticipantGridView.effectiveLayoutStyle(for:)(a1);
  if (v49 == 1)
  {
    Layout.MultiwayFaceTime.init()(v51);
    v17 = v53;
    v18 = (*(*v16 + 520))();
    v19 = v7[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceType];
    v20 = ParticipantGridView.mediaPipIsVisible.getter();
    [v8 displayScale];
    if (v20)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    GridLayout.init(containingRect:frameCount:indexToExpand:configuration:displayScale:)(a1, a2, a3 & 1, v22 | v19, a4, a5, a6, a7, v17, v18, v21);
  }

  else
  {
    v24 = &v7[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = Strong;
    if (Strong)
    {
      v27 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      v29 = (*(v27 + 8))(ObjectType, v27);
      v31 = v30;
      v33 = v32;
      swift_unknownObjectRelease();
      v26 = v29 != 5 && ParticipantGridView.MediaPipInfo.flipsOrganicPairs.getter(v29, v31, v33);
    }

    v34 = &v8[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_organicLayoutConfiguration];
    swift_beginAccess();
    v34[32] = v26;
    v35 = *(v34 + 1);
    v51[0] = *v34;
    v51[1] = v35;
    v52 = v26;
    [v8 displayScale];
    v23 = OrganicLayout.init(containingSize:frameCount:indexToExpand:configuration:displayScale:)(a1, a2, a3 & 1, v51, a6, a7, v36);
  }

  v37 = v23;
  v38 = *(v23 + 16);
  if (v38)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v50;
    v40 = v37 + 56;
    do
    {
      v54 = CGRectOffset(*(v40 - 24), a4, a5);
      x = v54.origin.x;
      y = v54.origin.y;
      width = v54.size.width;
      height = v54.size.height;
      v46 = *(v50 + 16);
      v45 = *(v50 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
      }

      *(v50 + 16) = v46 + 1;
      v47 = (v50 + 32 * v46);
      v47[4] = x;
      v47[5] = y;
      v47[6] = width;
      v47[7] = height;
      v40 += 32;
      --v38;
    }

    while (v38);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v39;
}

double ParticipantGridView.frameForFullScreenParticipantView(fitting:layoutFrame:shouldUseSafeAreaInsets:forcePortraitSize:remoteVideoOrientation:)(int a1, int a2, uint64_t a3, int a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = v10;
  v75 = a4;
  v76 = a3;
  v72 = a1;
  v19 = type metadata accessor for FloatingPointRoundingRule();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation;
  v24 = ParticipantGridView.shouldManuallyRotateViews(for:)(*&v10[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_deviceOrientation]);
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  if (v24)
  {
    Width = CGRectGetWidth(*&v25);
    v78.origin.x = a7;
    v78.origin.y = a8;
    v78.size.width = a9;
    v78.size.height = a10;
    Height = CGRectGetHeight(v78);
  }

  else
  {
    Width = CGRectGetHeight(*&v25);
    v79.origin.x = a7;
    v79.origin.y = a8;
    v79.size.width = a9;
    v79.size.height = a10;
    Height = CGRectGetWidth(v79);
  }

  v31 = Width / Height;
  v32 = &v10[OBJC_IVAR____TtC15ConversationKit19ParticipantGridView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v74 = a6;
  if (Strong && (v34 = *(v32 + 1), ObjectType = swift_getObjectType(), (*(v34 + 80))(&v77, ObjectType, v34), swift_unknownObjectRelease(), v77 == 2) && (v36 = [objc_opt_self() currentDevice], v37 = objc_msgSend(v36, sel_userInterfaceIdiom), v36, !v37) && a9 > 0.0)
  {
    v38 = a10 / a9;
  }

  else
  {
    v38 = a6 / a5;
  }

  [v11 displayScale];
  v40 = v39;
  v73 = a5;
  if (a9 < a10)
  {
    v70 = v23;
    v71 = a2;
    if (v24)
    {
      v41 = v31 < v38;
    }

    else
    {
      v41 = v38 < v31;
    }

    v42 = *(v20 + 104);
    v42(v22, *MEMORY[0x1E69E7040], v19);
    v43 = (v20 + 8);
    if (v41)
    {
      HIDWORD(v69) = v24;
      v44 = v24 & 1;
      if (v44)
      {
        v45 = 1.0 / v38;
      }

      else
      {
        v45 = v38;
      }

      v46 = CGFloat.rounded(_:toScale:)(v22, v40, v45 * a9);
      v47 = *v43;
      (*v43)(v22, v19);
      if (!v44)
      {
        v59 = *MEMORY[0x1E69E7048];
        v54 = 0.0;
        v48 = a9;
        v24 = HIDWORD(v69);
        goto LABEL_34;
      }

      v48 = a9;
      v24 = HIDWORD(v69);
    }

    else
    {
      if (v24)
      {
        v57 = v38;
      }

      else
      {
        v57 = 1.0 / v38;
      }

      v48 = CGFloat.rounded(_:toScale:)(v22, v40, v57 * a10);
      v47 = *v43;
      (*v43)(v22, v19);
      v46 = a10;
    }

    v81.origin.x = a7;
    v81.origin.y = a8;
    v81.size.width = a9;
    v81.size.height = a10;
    v58 = CGRectGetMidX(v81) + v48 * -0.5;
    v59 = *MEMORY[0x1E69E7048];
    v42(v22, v59, v19);
    v54 = CGFloat.rounded(_:toScale:)(v22, v40, v58);
    v47(v22, v19);
    if (!v41)
    {
      v55 = 0.0;
      if (v72)
      {
        [v11 safeAreaInsets];
        v55 = v60;
      }

      goto LABEL_35;
    }

LABEL_34:
    v83.origin.x = a7;
    v83.origin.y = a8;
    v83.size.width = a9;
    v83.size.height = a10;
    v63 = CGRectGetMidY(v83) + v46 * -0.5;
    v42(v22, v59, v19);
    v55 = CGFloat.rounded(_:toScale:)(v22, v40, v63);
    v47(v22, v19);
LABEL_35:
    LOBYTE(a2) = v71;
    v23 = v70;
    goto LABEL_36;
  }

  v49 = v24;
  v50 = *(v20 + 104);
  v50(v22, *MEMORY[0x1E69E7040], v19);
  v51 = (v20 + 8);
  if (v31 >= v38)
  {
    v46 = CGFloat.rounded(_:toScale:)(v22, v40, v38 * a9);
    v61 = *v51;
    (*v51)(v22, v19);
    v82.origin.x = a7;
    v82.origin.y = a8;
    v82.size.width = a9;
    v82.size.height = a10;
    v62 = CGRectGetMidY(v82) + v46 * -0.5;
    v50(v22, *MEMORY[0x1E69E7048], v19);
    v55 = CGFloat.rounded(_:toScale:)(v22, v40, v62);
    v61(v22, v19);
    v54 = 0.0;
    v48 = a9;
  }

  else
  {
    v48 = CGFloat.rounded(_:toScale:)(v22, v40, a10 / v38);
    v52 = *v51;
    (*v51)(v22, v19);
    v80.origin.x = a7;
    v80.origin.y = a8;
    v80.size.width = a9;
    v80.size.height = a10;
    v53 = CGRectGetMidX(v80) + v48 * -0.5;
    v50(v22, *MEMORY[0x1E69E7048], v19);
    v54 = CGFloat.rounded(_:toScale:)(v22, v40, v53);
    v52(v22, v19);
    v55 = 0.0;
    if (v72)
    {
      [v11 safeAreaInsets];
      v55 = v56;
    }

    v46 = a10;
  }

  v24 = v49;
LABEL_36:
  if ((v75 & 1) == 0)
  {
    if (v76)
    {
      if (v76 != 2 || v73 >= v74)
      {
        goto LABEL_42;
      }

LABEL_44:
      v65 = 1;
      goto LABEL_45;
    }

    if (v73 < v74)
    {
      goto LABEL_44;
    }
  }

LABEL_42:
  v65 = 0;
LABEL_45:
  if (static Platform.current.getter() != 1 && (a2 & 1) != 0)
  {
    v84.origin.x = v54;
    v84.origin.y = v55;
    v84.size.width = v48;
    v84.size.height = v46;
    v66 = CGRectGetWidth(v84);
    v85.origin.x = v54;
    v85.origin.y = v55;
    v85.size.width = v48;
    v85.size.height = v46;
    if (CGRectGetHeight(v85) < v66)
    {
      v67 = 1;
    }

    else
    {
      v67 = v65;
    }

    if ((v67 & v24) == 1 && (*&v11[v23] | 2) != 2)
    {
      v86.origin.x = v54;
      v86.origin.y = v55;
      v86.size.width = v48;
      v86.size.height = v46;
      CGRectGetHeight(v86);
      v87.origin.x = v54;
      v87.origin.y = v55;
      v87.size.width = v48;
      v87.size.height = v46;
      CGRectGetWidth(v87);
    }
  }

  return v54;
}