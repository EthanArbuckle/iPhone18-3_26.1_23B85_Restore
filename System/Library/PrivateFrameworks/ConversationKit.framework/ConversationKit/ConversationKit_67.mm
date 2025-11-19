uint64_t OrganicLayout.init(containingSize:frameCount:indexToExpand:configuration:displayScale:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, CGFloat a5, CGFloat a6, double a7)
{
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74.width = 0.0;
  v74.height = 0.0;
  v73.width = a5;
  v73.height = a6;
  if (CGSizeEqualToSize(v73, v74))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    v72 = a1;
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:type:_:)();

    return _sSa9repeating5countSayxGx_SitcfCSo6CGRectV_Tt1g5(a1, 0.0, 0.0, 0.0, 0.0);
  }

  if (a6 >= a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = a6;
  }

  if (a6 >= a5)
  {
    v27 = a6;
  }

  else
  {
    v27 = a5;
  }

  switch(a1)
  {
    case 4:
      v39 = OUTLINED_FUNCTION_3_157();
      static OrganicLayout.calculate4UpSizeInfo(in:withOverlap:displayScale:)(v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_2_165();
      if (v48)
      {
        static OrganicLayout.create4UpOverlappingPairFrames(in:size:overlap:displayScale:)(v43, v44, v45, v46, v47);
      }

      else
      {
        static OrganicLayout.create4UpRegularFrames(in:size:overlap:displayScale:)(v43, v44, v45, v46, v47);
      }

      break;
    case 3:
      v28 = OUTLINED_FUNCTION_3_157();
      static OrganicLayout.calculate3UpSizeInfo(in:withOverlap:displayScale:)(v28, v29, v30, v31);
      v32 = OUTLINED_FUNCTION_2_165();
      if (v37)
      {
        static OrganicLayout.create3UpOverlappingPairFrames(in:size:overlap:displayScale:)(v32, v33, v34, v35, v36);
      }

      else
      {
        static OrganicLayout.create3UpRegularFrames(in:size:overlap:displayScale:)(v32, v33, v34, v35, v36);
      }

      break;
    case 2:
      v38 = static OrganicLayout.createOverlappingPairFrames(in:configuration:displayScale:)(a4, v26, v27, a7);
      break;
    default:
      goto LABEL_42;
  }

  v49 = v38;
  if (a3)
  {
LABEL_36:
    v25 = static OrganicLayout.fitFrames(_:to:)(v49, a5, a6);

    return v25;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v38 + 16) > a2)
  {
    v67 = v26;
    v68 = v27;
    v50 = (v38 + 32 * a2);
    v8 = v50[4];
    v26 = v50[5];
    v7 = v50[6];
    v9 = v50[7];
    v51 = *(v18 + 104);
    v52 = OUTLINED_FUNCTION_1_177();
    v51(v52);
    v69 = a7;
    v71 = CGFloat.rounded(_:toScale:)(v20, a7, v7 * 0.1);
    v53 = *(v18 + 8);
    v53(v20, v17);
    v75.origin.x = OUTLINED_FUNCTION_0_209();
    MinX = CGRectGetMinX(v75);
    v76.origin.x = OUTLINED_FUNCTION_0_209();
    MaxX = CGRectGetMaxX(v76);
    v77.origin.x = OUTLINED_FUNCTION_0_209();
    MinY = CGRectGetMinY(v77);
    v78.origin.x = OUTLINED_FUNCTION_0_209();
    MaxY = CGRectGetMaxY(v78);
    v57 = -1.0;
    v58 = 1.0;
    if (MinX >= 1.0)
    {
      if (v67 + -1.0 >= MaxX)
      {
        v27 = v71;
        v59 = OUTLINED_FUNCTION_1_177();
        v67 = v60;
        v51(v59);
        v61 = CGFloat.rounded(_:toScale:)(v20, v69, v27 * 0.5);
        v53(v20, v17);
        v58 = 1.0;
        v57 = -1.0;
        MaxY = v67;
        v8 = v8 - v61;
      }

      else
      {
        v27 = v71;
        v8 = v8 - v71;
      }
    }

    else
    {
      v27 = v71;
    }

    if (MinY >= v58)
    {
      if (v68 + v57 >= MaxY)
      {
        v62 = OUTLINED_FUNCTION_1_177();
        v51(v62);
        v63 = CGFloat.rounded(_:toScale:)(v20, v69, v27 * 0.5);
        v53(v20, v17);
        v26 = v26 - v63;
      }

      else
      {
        v26 = v26 - v27;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  __break(1u);
LABEL_40:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v49 = v66;
LABEL_34:
  if (v49[1].i64[0] > a2)
  {
    i64 = v49[2 * a2].i64;
    i64[4] = v8;
    i64[5] = v26;
    i64[6] = v7 + v27;
    i64[7] = v9 + v27;
    goto LABEL_36;
  }

  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OrganicLayout.frames.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static OrganicLayout.createOverlappingPairFrames(in:configuration:displayScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = (*a1 + a3) * 0.5;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7040], v8);
  v14 = CGFloat.rounded(_:toScale:)(v11, a4, v13);
  (*(v9 + 8))(v11, v8);
  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v15 = v31;
  v16 = floor((v14 - v12) * a4);
  v18 = *(v31 + 16);
  v17 = *(v31 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
    v15 = v31;
    v17 = *(v31 + 24);
    v19 = v17 >> 1;
  }

  v21 = v16 / a4;
  *(v15 + 16) = v20;
  v22 = v15 + 32 * v18;
  *(v22 + 32) = 0;
  *(v22 + 40) = v21 * 0.0;
  *(v22 + 48) = v14;
  *(v22 + 56) = v14;
  v23 = v18 + 2;
  if (v19 <= v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v23, 1);
    v15 = v31;
  }

  *(v15 + 16) = v23;
  v24 = v15 + 32 * v20;
  *(v24 + 32) = 0;
  *(v24 + 40) = v21;
  *(v24 + 48) = v14;
  *(v24 + 56) = v14;
  if (*(a1 + 32))
  {
    v25 = *(v15 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v15 = v28;
    }

    *(v15 + 32) = a2 - v25;
  }

  else
  {
    v26 = *(v15 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v15 = v29;
    }

    *(v15 + 64) = a2 - v26;
  }

  return v15;
}

BOOL static OrganicLayout.calculate3UpSizeInfo(in:withOverlap:displayScale:)(double a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + a3 + a2;
  v13 = *MEMORY[0x1E69E7040];
  v14 = *(v9 + 104);
  v14(v11, v13, v8);
  CGFloat.rounded(_:toScale:)(v11, a4, v12 / 3.0);
  v15 = *(v9 + 8);
  v15(v11, v8);
  if ((a1 + a3 * -4.0) * 0.5 >= (a2 + a3) / 2.25)
  {
    v16 = (a2 + a3) / 2.25;
  }

  else
  {
    v16 = (a1 + a3 * -4.0) * 0.5;
  }

  v14(v11, v13, v8);
  v17 = CGFloat.rounded(_:toScale:)(v11, a4, v16);
  v15(v11, v8);
  return v17 * 3.0 >= v12;
}

void static OrganicLayout.create3UpOverlappingPairFrames(in:size:overlap:displayScale:)(double a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v15 = v36;
  v17 = *(v36 + 16);
  v16 = *(v36 + 24);
  v18 = v16 >> 1;
  v19 = v17 + 1;
  if (v16 >> 1 <= v17)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
    v15 = v36;
    v16 = *(v36 + 24);
    v18 = v16 >> 1;
  }

  *(v15 + 16) = v19;
  v20 = v15 + 32 * v17;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = a3;
  *(v20 + 56) = a3;
  v21 = v17 + 2;
  if (v18 <= v19)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v21, 1);
    v15 = v36;
  }

  *(v15 + 16) = v21;
  v22 = v15 + 32 * v19;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = a3;
  *(v22 + 56) = a3;
  v24 = *(v15 + 16);
  v23 = *(v15 + 24);
  if (v24 >= v23 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
  }

  v25 = v36;
  *(v36 + 16) = v24 + 1;
  v26 = v25 + 32 * v24;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = a3;
  *(v26 + 56) = a3;
  v27 = *(v25 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v25 = v34;
  }

  if (*(v25 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v28 = *(v25 + 80);
  *(v25 + 64) = v14 - v28;
  *(v25 + 72) = v27 - a4;
  v29 = v28 * 0.25 + v14 - v28 - *(v25 + 48);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7048], v10);
  v30 = CGFloat.rounded(_:toScale:)(v13, a5, v29);
  (*(v11 + 8))(v13, v10);
  v31 = *(v25 + 16);
  if (!v31)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v32 = 0.0;
  if (v30 > 0.0)
  {
    v32 = v30;
  }

  *(v25 + 32) = v32;
  if (v31 < 3)
  {
    goto LABEL_23;
  }

  if (a2 >= a1)
  {
    v33 = a2;
  }

  else
  {
    v33 = a1;
  }

  *(v25 + 104) = v33 - *(v25 + 120);
}

void static OrganicLayout.create3UpRegularFrames(in:size:overlap:displayScale:)(double a1, double a2, double a3, double a4, double a5)
{
  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v9 = v28;
  v10 = a3 - a4;
  v11 = floor((a3 - a4) * 0.0 * a5);
  v13 = *(v28 + 16);
  v12 = *(v28 + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
    v9 = v28;
    v12 = *(v28 + 24);
    v14 = v12 >> 1;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 32 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = v11 / a5;
  *(v16 + 48) = a3;
  *(v16 + 56) = a3;
  v17 = floor(v10 * a5);
  v18 = v13 + 2;
  if (v14 <= v15)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v18, 1);
    v9 = v28;
  }

  *(v9 + 16) = v18;
  v19 = v9 + 32 * v15;
  *(v19 + 32) = 0;
  *(v19 + 40) = v17 / a5;
  *(v19 + 48) = a3;
  *(v19 + 56) = a3;
  v20 = floor((v10 + v10) * a5);
  v22 = *(v9 + 16);
  v21 = *(v9 + 24);
  if (v22 >= v21 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
  }

  v23 = v28;
  *(v28 + 16) = v22 + 1;
  v24 = v28 + 32 * v22;
  *(v24 + 32) = 0;
  *(v24 + 40) = v20 / a5;
  *(v24 + 48) = a3;
  *(v24 + 56) = a3;
  if (v22)
  {
    a3 = *(v28 + 80);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v23 = v27;
LABEL_9:
  *(v23 + 64) = a1 - a3;
  v25 = *(v23 + 16);
  if (v25 < 2)
  {
    __break(1u);
  }

  else
  {
    v26 = a4 + a4 + a1 - a3 - *(v23 + 48);
    if (v26 <= 0.0)
    {
      v26 = 0.0;
    }

    *(v23 + 32) = v26;
    if (v25 != 2)
    {
      *(v23 + 96) = 0;
      return;
    }
  }

  __break(1u);
}

BOOL static OrganicLayout.calculate4UpSizeInfo(in:withOverlap:displayScale:)(double a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 * 3.0 + a2;
  v13 = *MEMORY[0x1E69E7040];
  v14 = *(v9 + 104);
  v14(v11, v13, v8);
  CGFloat.rounded(_:toScale:)(v11, a4, v12 * 0.25);
  v15 = *(v9 + 8);
  v15(v11, v8);
  if ((a1 - a3 * 4.0) * 0.5 >= (a2 + a3) / 3.25)
  {
    v16 = (a2 + a3) / 3.25;
  }

  else
  {
    v16 = (a1 - a3 * 4.0) * 0.5;
  }

  v14(v11, v13, v8);
  v17 = CGFloat.rounded(_:toScale:)(v11, a4, v16);
  v15(v11, v8);
  return v17 * 4.0 >= v12;
}

void static OrganicLayout.create4UpOverlappingPairFrames(in:size:overlap:displayScale:)(double a1, double a2, double a3, double a4, double a5)
{
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v16 = v44;
  v18 = *(v44 + 16);
  v17 = *(v44 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
    v16 = v44;
    v17 = *(v44 + 24);
    v19 = v17 >> 1;
  }

  *(v16 + 16) = v20;
  v21 = v16 + 32 * v18;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = a3;
  *(v21 + 56) = a3;
  v22 = v18 + 2;
  if (v19 <= v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v22, 1);
    v16 = v44;
  }

  *(v16 + 16) = v22;
  v23 = v16 + 32 * v20;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = a3;
  *(v23 + 56) = a3;
  v25 = *(v16 + 16);
  v24 = *(v16 + 24);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
  }

  v27 = v44;
  *(v44 + 16) = v26;
  v28 = v27 + 32 * v25;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = a3;
  *(v28 + 56) = a3;
  v29 = *(v27 + 24);
  v30 = v25 + 2;
  if (v26 >= v29 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30, 1);
    v27 = v44;
  }

  *(v27 + 16) = v30;
  v31 = v27 + 32 * v26;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = a3;
  *(v31 + 56) = a3;
  MaxX = CGRectGetMaxX(*(v27 + 64));
  if (*(v27 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v33 = MaxX + *(v27 + 80) * -0.25;
  v26 = *MEMORY[0x1E69E7048];
  v5 = *(v13 + 104);
  v5(v15, v26, v12);
  a3 = CGFloat.rounded(_:toScale:)(v15, a5, v33);
  v6 = *(v13 + 8);
  v6(v15, v12);
  if (*(v27 + 16) < 2uLL)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v27 = v42;
    goto LABEL_14;
  }

  if (a1 - *(v27 + 80) < a3)
  {
    a3 = a1 - *(v27 + 80);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v34 = *(v27 + 16);
  if (!v34)
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v27 + 32) = a3;
  if (v34 < 3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45.origin.y = *(v27 + 104);
  v45.size.width = *(v27 + 112);
  v45.origin.x = a1 - v45.size.width;
  *(v27 + 96) = a1 - v45.size.width;
  v45.size.height = *(v27 + 120);
  MinX = CGRectGetMinX(v45);
  if (*(v27 + 16) < 3uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = MinX + *(v27 + 112) * 0.25 - *(v27 + 112);
  v5(v15, v26, v12);
  v37 = CGFloat.rounded(_:toScale:)(v15, a5, v36);
  v6(v15, v12);
  if (*(v27 + 16) < 4uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v38 = 0.0;
  if (v37 > 0.0)
  {
    v38 = v37;
  }

  *(v27 + 128) = v38;
  MaxY = CGRectGetMaxY(*(v27 + 32));
  v40 = *(v27 + 16);
  if (v40 < 2)
  {
    goto LABEL_31;
  }

  *(v27 + 72) = MaxY - a4;
  if (v40 < 4)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v46.size.width = *(v27 + 144);
  v46.size.height = *(v27 + 152);
  v46.origin.y = a2 - v46.size.height;
  *(v27 + 136) = a2 - v46.size.height;
  v46.origin.x = *(v27 + 128);
  MinY = CGRectGetMinY(v46);
  if (*(v27 + 16) >= 3uLL)
  {
    *(v27 + 104) = MinY - *(v27 + 120) + a4;
    return;
  }

LABEL_33:
  __break(1u);
}

void static OrganicLayout.create4UpRegularFrames(in:size:overlap:displayScale:)(double a1, double a2, double a3, double a4, double a5)
{
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v15 = v45;
  v16 = a3 - a4;
  v17 = floor(v16 * 0.0 * a5);
  v19 = *(v45 + 16);
  v18 = *(v45 + 24);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
    v15 = v45;
    v18 = *(v45 + 24);
    v20 = v18 >> 1;
  }

  *(v15 + 16) = v21;
  v22 = v15 + 32 * v19;
  *(v22 + 32) = 0;
  *(v22 + 40) = v17 / a5;
  *(v22 + 48) = a3;
  *(v22 + 56) = a3;
  v23 = floor(v16 * a5);
  v24 = v19 + 2;
  if (v20 <= v21)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v24, 1);
    v15 = v45;
  }

  *(v15 + 16) = v24;
  v25 = v15 + 32 * v21;
  *(v25 + 32) = 0;
  *(v25 + 40) = v23 / a5;
  *(v25 + 48) = a3;
  *(v25 + 56) = a3;
  v26 = floor((v16 + v16) * a5);
  v28 = *(v15 + 16);
  v27 = *(v15 + 24);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
  }

  v30 = v45;
  *(v45 + 16) = v29;
  v31 = v30 + 32 * v28;
  *(v31 + 32) = 0;
  *(v31 + 40) = v26 / a5;
  *(v31 + 48) = a3;
  *(v31 + 56) = a3;
  v32 = floor(v16 * 3.0 * a5);
  v33 = *(v30 + 24);
  v34 = v28 + 2;
  if (v29 >= v33 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34, 1);
    v30 = v45;
  }

  *(v30 + 16) = v34;
  v35 = v30 + 32 * v29;
  *(v35 + 32) = 0;
  *(v35 + 40) = v32 / a5;
  *(v35 + 48) = a3;
  *(v35 + 56) = a3;
  MaxX = CGRectGetMaxX(*(v30 + 64));
  if (*(v30 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v37 = MaxX + *(v30 + 80) * -0.25;
  v29 = *MEMORY[0x1E69E7048];
  v5 = *(v12 + 104);
  v5(v14, v29, v11);
  a3 = CGFloat.rounded(_:toScale:)(v14, a5, v37);
  v6 = *(v12 + 8);
  v6(v14, v11);
  if (*(v30 + 16) < 2uLL)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v30 = v43;
    goto LABEL_14;
  }

  if (a1 - *(v30 + 80) < a3)
  {
    a3 = a1 - *(v30 + 80);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v38 = *(v30 + 16);
  if (!v38)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v30 + 32) = a3;
  if (v38 < 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v46.origin.y = *(v30 + 104);
  v46.size.width = *(v30 + 112);
  v46.origin.x = a1 - v46.size.width;
  *(v30 + 96) = a1 - v46.size.width;
  v46.size.height = *(v30 + 120);
  MinX = CGRectGetMinX(v46);
  if (*(v30 + 16) < 3uLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = MinX + *(v30 + 112) * 0.25 - *(v30 + 112);
  v5(v14, v29, v11);
  v41 = CGFloat.rounded(_:toScale:)(v14, a5, v40);
  v6(v14, v11);
  if (*(v30 + 16) < 4uLL)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v42 = 0.0;
  if (v41 > 0.0)
  {
    v42 = v41;
  }

  *(v30 + 128) = v42;
}

int8x16_t *static OrganicLayout.fitFrames(_:to:)(int8x16_t *a1, double a2, double a3)
{
  v3 = a1;
  if (a2 >= a3)
  {
    v4 = a1[1].i64[0];
    if (v4)
    {
      v16 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v5 = v3 + 3;
      v3 = v16;
      v6 = v16[1].u64[0];
      v7 = 2 * v6;
      do
      {
        v8 = v5[-1];
        v9 = *v5;
        v10 = v16[1].u64[1];
        v11 = v6 + 1;
        if (v6 >= v10 >> 1)
        {
          v14 = v5[-1];
          v15 = *v5;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v6 + 1, 1);
          v8 = v14;
          v9 = v15;
        }

        v16[1].i64[0] = v11;
        v12 = &v16[v7];
        v12[2] = vextq_s8(v8, v8, 8uLL);
        v12[3] = vextq_s8(v9, v9, 8uLL);
        v7 += 2;
        v5 += 2;
        v6 = v11;
        --v4;
      }

      while (v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for OrganicLayout.Configuration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for OrganicLayout.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void specialized MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()()
{
  v1 = MostActiveParticipantViewController.insulatingView.getter();
  if (!v1)
  {
    return;
  }

  v3 = v1;
  v2 = [v1 superview];
  if (v2)
  {
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_shouldShowActionTypePhotoCapture))
  {
    [v3 setUserInteractionEnabled_];
    [v3 setAutoresizingMask_];
    v2 = [v0 view];
    [v2 addSubview_];
LABEL_5:
  }
}

{
  v1 = MultiwayViewController.insulatingView.getter();
  if (!v1)
  {
    return;
  }

  v3 = v1;
  v2 = [v1 superview];
  if (v2)
  {
    goto LABEL_5;
  }

  if (MultiwayViewController.shouldShowActionTypePhotoCapture.getter())
  {
    [v3 setUserInteractionEnabled_];
    [v3 setAutoresizingMask_];
    v2 = [v0 view];
    [v2 addSubview_];
LABEL_5:
  }
}

void specialized MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()()
{
  v1 = MostActiveParticipantViewController.flashView.getter();
  v7 = [v1 superview];

  v2 = v7;
  if (v7)
  {
LABEL_2:

    return;
  }

  if (v0[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_shouldShowActionTypePhotoCapture])
  {
    v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView;
    [*&v0[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView] setUserInteractionEnabled_];
    [*&v0[v3] setAutoresizingMask_];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];
    }

    v6 = [v0 view];
    if (v6)
    {
      v8 = v6;
      [v6 bringSubviewToFront_];
      v2 = v8;
      goto LABEL_2;
    }
  }
}

{
  v1 = MultiwayViewController.flashView.getter();
  v7 = [v1 superview];

  v2 = v7;
  if (v7)
  {
LABEL_2:

    return;
  }

  if (MultiwayViewController.shouldShowActionTypePhotoCapture.getter())
  {
    v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView;
    [*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView) setUserInteractionEnabled_];
    [*(v0 + v3) setAutoresizingMask_];
    v4 = OUTLINED_FUNCTION_50_3();
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];
    }

    v6 = OUTLINED_FUNCTION_50_3();
    if (v6)
    {
      v8 = v6;
      [v6 bringSubviewToFront_];
      v2 = v8;
      goto LABEL_2;
    }
  }
}

id specialized InsulatingView.init(frame:content:forwardHits:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  *&v6[direct field offset for InsulatingView.content] = a1;
  v6[direct field offset for InsulatingView.forwardHits] = a2;
  v11 = a1;
  v16.receiver = v6;
  v16.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14InsulatingViewCyAA016MomentsIndicatorD0CGMd);
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a3, a4, a5, a6);
  v13 = v11;
  v14 = v12;
  [v14 bounds];
  [v13 setBounds_];
  [v14 center];
  [v13 setCenter_];
  [v13 setAutoresizingMask_];
  [v13 _setHostsLayoutEngine_];
  [v14 addSubview_];
  [v13 setNeedsLayout];
  [v13 layoutIfNeeded];

  [v14 setAutoresizingMask_];
  return v14;
}

void MostActiveParticipantViewController.mostActiveParticipant.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v23 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_remoteParticipants);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_6(v14, v10, v15);
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_6(v10, v6, v16);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v18 = *(v17 + 48);
        OUTLINED_FUNCTION_38_36(v17);
        memcpy(v24, (v6 + v18), 0x150uLL);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v19 + 8))(v6);
        LOBYTE(v18) = v24[0];
        outlined destroy of Participant.MediaInfo(v24);
        if ((v18 & 1) == 0)
        {

          outlined init with take of Participant(v10, v2);
          goto LABEL_11;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_2(v6, type metadata accessor for Participant.State);
      }

      ++v13;
      OUTLINED_FUNCTION_0_210();
      _s15ConversationKit11ParticipantV5StateOWOhTm_2(v10, v20);
      if (v12 == v13)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v21 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v23 + v21, v2, v22);
LABEL_11:
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t MostActiveParticipantViewController.focusedParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s15ConversationKit11ParticipantVSgMd);
}

uint64_t MostActiveParticipantViewController.participantIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    v5 = type metadata accessor for UUID();
    v6 = a1;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v9 = *(v4 + 20);
    v10 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v11 + 16))(a1, v3 + v9, v10);
    OUTLINED_FUNCTION_12();
    v5 = v10;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
}

uint64_t MostActiveParticipantViewController.ignoreFocusedParticipantUpdates.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MostActiveParticipantViewController.ignoreFocusedParticipantUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MostActiveParticipantViewController.participantsViewControllerDelegate : MostActiveParticipantViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MostActiveParticipantViewController.participantsViewControllerDelegate : MostActiveParticipantViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MostActiveParticipantViewController.participantsViewControllerDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t MostActiveParticipantViewController.participantsViewControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MostActiveParticipantViewController.participantsViewControllerDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

uint64_t MostActiveParticipantViewController.remoteParticipantView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MostActiveParticipantViewController.remoteParticipantView.getter();
  return OUTLINED_FUNCTION_8_1();
}

char *MostActiveParticipantViewController.remoteParticipantView.getter(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = objc_allocWithZone(type metadata accessor for ParticipantView());
    v9 = ParticipantView.init(frame:localParticipant:)(a2 & 1);
    v10 = *(v2 + v3);
    *(v7 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t MostActiveParticipantViewController.localParticipantView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MostActiveParticipantViewController.localParticipantView.getter();
  return OUTLINED_FUNCTION_8_1();
}

char *MostActiveParticipantViewController.currentParticipantView.getter()
{
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v4 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v0 + v4, 1, v2))
  {
    return MostActiveParticipantViewController.remoteParticipantView.getter();
  }

  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_6(v0 + v4, v1, v5);
  v6 = *(v1 + *(v2 + 28));
  OUTLINED_FUNCTION_0_210();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, v7);
  if (v6)
  {
    return MostActiveParticipantViewController.remoteParticipantView.getter();
  }

  else
  {
    return MostActiveParticipantViewController.localParticipantView.getter();
  }
}

uint64_t MostActiveParticipantViewController.frontBoardInterfaceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MostActiveParticipantViewController.frontBoardInterfaceOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MostActiveParticipantViewController.isVisibleInPIP.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MostActiveParticipantViewController.isVisibleInPIP.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

BOOL MostActiveParticipantViewController.shouldRegisterVideoLayers.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14[-v4];
  v6 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v8 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v8, v5, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_115(v5, 1, v6);
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
    return 0;
  }

  else
  {
    outlined init with take of Participant(v5, v0);
    v11 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v10 = (*(v1 + v11) & 1) != 0 || *(v0 + *(v6 + 28)) != 0;
    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v0, v12);
  }

  return v10;
}

id MostActiveParticipantViewController.flashView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView);
  }

  else
  {
    v4 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews;
    OUTLINED_FUNCTION_3_12();
    *(v0 + v4) = 1;
    type metadata accessor for FlashView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t MostActiveParticipantViewController.flashView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MostActiveParticipantViewController.flashView.getter();
  return OUTLINED_FUNCTION_8_1();
}

id MostActiveParticipantViewController.insulatingView.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView];
  v4 = v3;
  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v5 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews;
  swift_beginAccess();
  v1[v5] = 1;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    OUTLINED_FUNCTION_40_1();

    v8 = objc_allocWithZone(type metadata accessor for MomentsIndicatorView());
    v9 = OUTLINED_FUNCTION_35();
    v12 = [v10 v11];
    (*((*MEMORY[0x1E69E7D40] & *v12) + 0x68))(1);
    result = [v1 view];
    if (result)
    {
      v13 = result;
      [result bounds];
      OUTLINED_FUNCTION_40_1();

      v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14InsulatingViewCyAA016MomentsIndicatorD0CGMd));
      v15 = OUTLINED_FUNCTION_35();
      v4 = specialized InsulatingView.init(frame:content:forwardHits:)(v12, 0, v15, v16, v17, v18);
      v19 = *&v1[v2];
      *&v1[v2] = v4;
      v20 = v4;
      outlined consume of IMAccount??(v19);
LABEL_5:
      outlined copy of IMAccount??(v3);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void key path setter for MostActiveParticipantViewController.insulatingView : MostActiveParticipantViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MostActiveParticipantViewController.insulatingView.setter(v1);
}

void MostActiveParticipantViewController.insulatingView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView) = a1;
  outlined consume of IMAccount??(v2);
}

uint64_t MostActiveParticipantViewController.insulatingView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = MostActiveParticipantViewController.insulatingView.getter();
  return OUTLINED_FUNCTION_8_1();
}

void MostActiveParticipantViewController.insulatingView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of IMAccount??(v4);
  }

  else
  {

    outlined consume of IMAccount??(v4);
  }
}

uint64_t MostActiveParticipantViewController.hasInitializedMomentsViews.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MostActiveParticipantViewController.hasInitializedMomentsViews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

id MostActiveParticipantViewController.init(remoteParticipants:localParticipant:defaults:shouldShowActionTypePhotoCapture:isLocalMemberAuthorizedToChangeGroupMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  v15 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v6 + v14, 1, 1, v15);
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___remoteParticipantView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipantViewConstraints) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation) = 1;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView) = 1;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_remoteParticipants) = a1;
  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_6(a2, v6 + v16, v17);
  v18 = (v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_defaults);
  *v18 = a3;
  v18[1] = a4;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_shouldShowActionTypePhotoCapture) = a5;
  *(v6 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isLocalMemberAuthorizedToChangeGroupMembership) = a6;
  OUTLINED_FUNCTION_3_0();
  v21 = objc_msgSendSuper2(v19, v20, v6, ObjectType);
  OUTLINED_FUNCTION_0_210();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(a2, v22);
  return v21;
}

id MostActiveParticipantViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MostActiveParticipantViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  v2 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___remoteParticipantView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipantViewConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isVisibleInPIP) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___flashView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___insulatingView) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_hasInitializedMomentsViews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MostActiveParticipantViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Participant(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v65.receiver = v2;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  MostActiveParticipantViewController.mostActiveParticipant.getter();
  MostActiveParticipantViewController.focus(on:)();
  OUTLINED_FUNCTION_0_210();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, v6);
  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  if (one-time initialization token for background != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor_];

  v9 = [v2 view];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  OUTLINED_FUNCTION_49_22();
  [v10 addSubview_];

  v11 = [v2 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = MostActiveParticipantViewController.remoteParticipantView.getter();
  [v12 addSubview_];

  v14 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView;
  [*&v2[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___remoteParticipantView;
  [*&v2[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___remoteParticipantView] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v2[v14];
  ParticipantView.shouldOverrideShadowHidden.setter(1);

  v17 = *&v2[v15];
  ParticipantView.shouldOverrideShadowHidden.setter(1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = OUTLINED_FUNCTION_20_33();
  *(v18 + 16) = xmmword_1BC4BA7F0;
  v19 = [*&v2[v14] widthAnchor];
  v20 = OUTLINED_FUNCTION_27_50();
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 widthAnchor];

  v23 = OUTLINED_FUNCTION_31_37();
  *(v18 + 32) = v23;
  v24 = [*&v2[v14] heightAnchor];
  v25 = OUTLINED_FUNCTION_27_50();
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 heightAnchor];

  v28 = OUTLINED_FUNCTION_31_37();
  *(v18 + 40) = v28;
  v29 = [*&v2[v14] centerXAnchor];
  v30 = OUTLINED_FUNCTION_27_50();
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [v30 centerXAnchor];

  v33 = OUTLINED_FUNCTION_31_37();
  *(v18 + 48) = v33;
  v34 = [*&v2[v14] centerYAnchor];
  v35 = OUTLINED_FUNCTION_27_50();
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v35 centerYAnchor];

  v38 = OUTLINED_FUNCTION_31_37();
  *(v18 + 56) = v38;
  v39 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipantViewConstraints;
  *&v2[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipantViewConstraints] = v18;

  v40 = objc_opt_self();
  v41 = *&v2[v39];
  type metadata accessor for NSLayoutConstraint();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints_];

  v43 = OUTLINED_FUNCTION_20_33();
  *(v43 + 16) = xmmword_1BC4BA7F0;
  v44 = [*&v2[v15] widthAnchor];
  v45 = OUTLINED_FUNCTION_6_13();
  if (!v45)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v45;
  v47 = [v45 widthAnchor];

  v48 = OUTLINED_FUNCTION_8_4();
  *(v43 + 32) = v48;
  v49 = [*&v2[v15] heightAnchor];
  v50 = OUTLINED_FUNCTION_6_13();
  if (!v50)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v51 = v50;
  v52 = [v50 heightAnchor];

  v53 = OUTLINED_FUNCTION_8_4();
  *(v43 + 40) = v53;
  v54 = [*&v2[v15] centerXAnchor];
  v55 = OUTLINED_FUNCTION_6_13();
  if (!v55)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v56 = v55;
  v57 = [v55 centerXAnchor];

  v58 = OUTLINED_FUNCTION_8_4();
  *(v43 + 48) = v58;
  v59 = [*&v2[v15] centerYAnchor];
  v60 = OUTLINED_FUNCTION_6_13();
  if (v60)
  {
    v61 = v60;
    v62 = [v60 centerYAnchor];

    v63 = OUTLINED_FUNCTION_8_4();
    *(v43 + 56) = v63;
    v64 = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints_];

    specialized MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()();
    specialized MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()();
    OUTLINED_FUNCTION_30_0();
    return;
  }

LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall MostActiveParticipantViewController.focusOnMostActiveParticipant()()
{
  v1 = type metadata accessor for Participant(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  MostActiveParticipantViewController.mostActiveParticipant.getter();
  MostActiveParticipantViewController.focus(on:)();
  OUTLINED_FUNCTION_0_210();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v0, v3);
}

Swift::Void __swiftcall MostActiveParticipantViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = MostActiveParticipantViewController.flashView.getter();
  v2 = OUTLINED_FUNCTION_50_3();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_40_1();

  v4 = OUTLINED_FUNCTION_35();
  [v5 v6];

  v7 = MostActiveParticipantViewController.insulatingView.getter();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_50_3();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 bounds];
  OUTLINED_FUNCTION_40_1();

  v11 = OUTLINED_FUNCTION_35();
  [v12 v13];
}

Swift::Void __swiftcall MostActiveParticipantViewController.handleParticipantVideoRotationForPIP()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_24;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    goto LABEL_24;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v11, 1, v2))
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_6(v1 + v11, v6, v12);
  v13 = *(v6 + *(v2 + 28));
  OUTLINED_FUNCTION_0_210();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v6, v14);
  if (v13)
  {
    goto LABEL_24;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_frontBoardInterfaceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v16 = *&v15[v1];
  v17 = &selRef_isRecordingAllowed;
  v18 = v16 == 3;
  if (v16 >= 3)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_49_22();
  v74.a = 1.0;
  v74.b = 0.0;
  v74.c = 0.0;
  v74.d = 1.0;
  v74.tx = 0.0;
  v74.ty = 0.0;
  ParticipantView.updateLayerTransform(to:)(&v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = OUTLINED_FUNCTION_20_33();
  *(v13 + 16) = xmmword_1BC4BA7F0;
  v19 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView;
  v20 = [*(v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView) widthAnchor];
  v21 = OUTLINED_FUNCTION_25_49();
  if (!v21)
  {
    __break(1u);
    goto LABEL_26;
  }

  v22 = v21;
  v23 = [v21 widthAnchor];

  v24 = OUTLINED_FUNCTION_12_93();
  *(v13 + 32) = v24;
  v25 = [*(v1 + v19) heightAnchor];
  v26 = OUTLINED_FUNCTION_14_72();
  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 heightAnchor];

  OUTLINED_FUNCTION_12_93();
  v29 = OUTLINED_FUNCTION_24_52();
  v30 = OUTLINED_FUNCTION_14_72();
  if (!v30)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = v30;
  v32 = [v30 v28[294]];

  v33 = OUTLINED_FUNCTION_12_93();
  *(v13 + 48) = v33;
  v34 = [*(v1 + v19) centerYAnchor];
  v35 = OUTLINED_FUNCTION_14_72();
  if (v35)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_11:
  if (v18)
  {
    OUTLINED_FUNCTION_49_22();
    CGAffineTransformMakeRotation(&v74, -1.57079633);
    ParticipantView.updateLayerTransform(to:)(&v74);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = OUTLINED_FUNCTION_20_33();
    *(v13 + 16) = xmmword_1BC4BA7F0;
    v36 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView;
    v37 = [*(v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView) widthAnchor];
    v38 = OUTLINED_FUNCTION_25_49();
    if (v38)
    {
      v39 = v38;
      v17 = &off_1E7FE9000;
      v40 = [v38 heightAnchor];

      v41 = OUTLINED_FUNCTION_12_93();
      *(v13 + 32) = v41;
      v42 = [*(v1 + v36) heightAnchor];
      v43 = OUTLINED_FUNCTION_14_72();
      if (!v43)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v44 = v43;
      v45 = [v43 widthAnchor];

      OUTLINED_FUNCTION_12_93();
      v46 = OUTLINED_FUNCTION_24_52();
      v47 = OUTLINED_FUNCTION_14_72();
      if (!v47)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v48 = v47;
      v49 = [v47 v45[294]];

      OUTLINED_FUNCTION_12_93();
      v50 = OUTLINED_FUNCTION_48_19();
      v35 = OUTLINED_FUNCTION_14_72();
      if (!v35)
      {
        __break(1u);
        goto LABEL_18;
      }

LABEL_23:
      v66 = v35;
      v67 = [v35 v17[108]];

      v68 = OUTLINED_FUNCTION_12_93();
      *(v13 + 56) = v68;

      v69 = objc_opt_self();
      v70 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipantViewConstraints;
      type metadata accessor for NSLayoutConstraint();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v69 deactivateConstraints_];

      *(v1 + v70) = v13;

      v72 = Array._bridgeToObjectiveC()().super.isa;

      [v69 activateConstraints_];

LABEL_24:
      OUTLINED_FUNCTION_30_0();
      return;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  if (v16 == 4)
  {
    OUTLINED_FUNCTION_49_22();
    CGAffineTransformMakeRotation(&v74, 1.57079633);
    ParticipantView.updateLayerTransform(to:)(&v74);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = OUTLINED_FUNCTION_20_33();
    *(v13 + 16) = xmmword_1BC4BA7F0;
    v51 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView;
    v52 = [*(v1 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController____lazy_storage___localParticipantView) widthAnchor];
    v53 = OUTLINED_FUNCTION_25_49();
    if (v53)
    {
      v54 = v53;
      v17 = &off_1E7FE9000;
      v55 = [v53 heightAnchor];

      v56 = OUTLINED_FUNCTION_12_93();
      *(v13 + 32) = v56;
      v57 = [*(v1 + v51) heightAnchor];
      v58 = OUTLINED_FUNCTION_14_72();
      if (v58)
      {
        v59 = v58;
        v60 = [v58 widthAnchor];

        OUTLINED_FUNCTION_12_93();
        v61 = OUTLINED_FUNCTION_24_52();
        v62 = OUTLINED_FUNCTION_14_72();
        if (v62)
        {
          v63 = v62;
          v64 = [v62 v60[294]];

          OUTLINED_FUNCTION_12_93();
          v65 = OUTLINED_FUNCTION_48_19();
          v35 = OUTLINED_FUNCTION_14_72();
          if (v35)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_35:
  v74.a = 0.0;
  v74.b = -2.68156159e154;
  _StringGuts.grow(_:)(45);

  v74.a = -2.31584178e77;
  *&v74.b = 0x80000001BC51A430;
  type metadata accessor for UIInterfaceOrientation(0);
  v73 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v73);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MostActiveParticipantViewController.focus(on:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for ParticipantViewModel(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v124 = v8 - v7;
  v9 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v119 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v125 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v122 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v118 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v121 = &v117[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v117[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v120 = v27 - v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v123 = v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v126 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v128 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v117[-v37];
  v39 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_5();
  v127 = v4;
  _s15ConversationKit11ParticipantVWOcTm_6(v4, v38, v40);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v9);
  v44 = *(v21 + 56);
  v129 = v2;
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v2[v39], v24, &_s15ConversationKit11ParticipantVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v38, &v24[v44], &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_43_13(v24);
  if (!v50)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v24, v1, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_43_13(&v24[v44]);
    v45 = v128;
    v46 = v39;
    if (!v50)
    {
      v53 = v121;
      outlined init with take of Participant(&v24[v44], v121);
      OUTLINED_FUNCTION_2_40();
      static Participant.State.== infix(_:_:)();
      if (v54)
      {
        v44 = static UUID.== infix(_:_:)();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd);
        if ((v44 & 1) != 0 && (*&v53[*(v9 + 28)] == 0) == (*(v1 + *(v9 + 28)) == 0))
        {
          v55 = *(v9 + 24);
          v56 = *(v1 + v55);
          v57 = *(v1 + v55 + 1);
          v58 = *(v1 + v55 + 2);
          v59 = *(v1 + v55 + 3);
          v60 = *(v1 + v55 + 4);
          v61 = &v53[v55];
          v62 = *v61;
          v63 = v61[1];
          v64 = v61[2];
          v65 = v61[3];
          v66 = v61[4];
          if (v60)
          {
            v67 = 0x100000000;
          }

          else
          {
            v67 = 0;
          }

          if (v59)
          {
            v68 = 0x1000000;
          }

          else
          {
            v68 = 0;
          }

          v50 = v58 == 0;
          v69 = 0x10000;
          if (v50)
          {
            v70 = 0;
          }

          else
          {
            v70 = 0x10000;
          }

          v50 = v57 == 0;
          v71 = 256;
          if (v50)
          {
            v72 = 0;
          }

          else
          {
            v72 = 256;
          }

          v73 = v72 | v56 | v70 | v68;
          if (v66)
          {
            v74 = 0x100000000;
          }

          else
          {
            v74 = 0;
          }

          if (v65)
          {
            v75 = 0x1000000;
          }

          else
          {
            v75 = 0;
          }

          if (!v64)
          {
            v69 = 0;
          }

          if (!v63)
          {
            v71 = 0;
          }

          v76 = static Participant.Capabilities.== infix(_:_:)(v73 | v67, v71 | v62 | v69 | v75 | v74);
          _s15ConversationKit11ParticipantV5StateOWOhTm_2(v53, type metadata accessor for Participant);
          _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, type metadata accessor for Participant);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit11ParticipantVSgMd);
          v47 = v127;
          if (!v76)
          {
            goto LABEL_42;
          }

          goto LABEL_6;
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd);
      }

      OUTLINED_FUNCTION_16_68();
      _s15ConversationKit11ParticipantV5StateOWOhTm_2(v53, v77);
      _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, v44);
      v52 = &_s15ConversationKit11ParticipantVSgMd;
LABEL_41:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, v52);
      v47 = v127;
      goto LABEL_42;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, v51);
LABEL_11:
    v52 = &_s15ConversationKit11ParticipantVSg_ADtMd;
    goto LABEL_41;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_43_13(&v24[v44]);
  v45 = v128;
  v46 = v39;
  if (!v50)
  {
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit11ParticipantVSgMd);
  v47 = v127;
LABEL_6:
  v48 = 1;
  if (__swift_getEnumTagSinglePayload(&v129[v46], 1, v9) || (OUTLINED_FUNCTION_7_5(), v112 = v118, _s15ConversationKit11ParticipantVWOcTm_6(&v129[v46], v118, v113), Participant.videoInfo.getter(), OUTLINED_FUNCTION_0_210(), _s15ConversationKit11ParticipantV5StateOWOhTm_2(v112, v114), !v130[0]))
  {
    v49 = 0;
  }

  else
  {
    v49 = v130[3];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v48 = 0;
  }

  Participant.videoInfo.getter();
  if (v131[0])
  {
    v115 = v131[3];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v131, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    if (v49 == v115)
    {
      v116 = v48;
    }

    else
    {
      v116 = 1;
    }

    if (v116 != 1)
    {
      goto LABEL_54;
    }
  }

  else if (v48)
  {
    goto LABEL_54;
  }

LABEL_42:
  v78 = v129;
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v129[v46], v45, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_7_5();
  v79 = v126;
  _s15ConversationKit11ParticipantVWOcTm_6(v47, v126, v80);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v9);
  swift_beginAccess();
  outlined assign with take of Participant?(v79, &v78[v46]);
  swift_endAccess();
  v84 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (v78[v84])
  {
    v85 = &_s15ConversationKit11ParticipantVSgMd;
    v86 = v45;
LABEL_53:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, v85);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_7_5();
  v87 = v122;
  _s15ConversationKit11ParticipantVWOcTm_6(v47, v122, v88);
  v89 = *(v47 + *(v9 + 28)) == 0;
  v90 = v129;
  MostActiveParticipantViewController.shouldRegisterVideoLayers.getter();
  OUTLINED_FUNCTION_35_28();
  v91 = 2 * v89;
  v92 = v124;
  OUTLINED_FUNCTION_37_33(v87, v91, v124, 1u, 0, 1u, BYTE1(v119));
  MostActiveParticipantViewController.updateParticipantViewVisibility()();
  v93 = MostActiveParticipantViewController.currentParticipantView.getter();
  ParticipantView.configure(with:isOneToOneMode:)(v92, 0);

  MostActiveParticipantViewController.currentParticipantView.getter();
  v94 = OUTLINED_FUNCTION_29_40();
  ParticipantView.setKickMemberButtonIsVisible(_:)(v94);

  MostActiveParticipantViewController.currentParticipantView.getter();
  v95 = OUTLINED_FUNCTION_29_40();
  ParticipantView.setInfoViewIsVisible(_:animated:)(v95, 0);

  v96 = v47;
  Participant.videoInfo.getter();
  if (v132[0])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v96 = v129;
    MostActiveParticipantViewController.update(participant:visibleCameraPosition:)();
  }

  v97 = v128;
  v98 = v123;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v128, v123, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_43_13(v98);
  v99 = v125;
  if (v50)
  {
    OUTLINED_FUNCTION_2_166();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v92, v100);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, v102);
LABEL_52:
    OUTLINED_FUNCTION_30_20();
    goto LABEL_53;
  }

  outlined init with take of Participant(v98, v125);
  v103 = v120;
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v129[v46], v120, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_43_13(v103);
  if (v104)
  {
    OUTLINED_FUNCTION_2_166();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v92, v105);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, v107);
    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v99, v108);
    goto LABEL_52;
  }

  v109 = v119;
  outlined init with take of Participant(v103, v119);
  if ((*(v109 + *(v9 + 28)) == 0) != (*(v99 + *(v9 + 28)) == 0) && *(*&v129[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_remoteParticipants] + 16) >= 2uLL)
  {
    v96 = v129;
    MostActiveParticipantViewController.handleParticipantVideoRotationForPIP()();
  }

  OUTLINED_FUNCTION_2_166();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v92, v110);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_16_68();
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v109, v111);
  _s15ConversationKit11ParticipantV5StateOWOhTm_2(v99, v96);
LABEL_54:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall MostActiveParticipantViewController.updateParticipantViewVisibility()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v7 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v7, v2, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_115(v2, 1, v5);
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    outlined init with take of Participant(v2, v0);
    v9 = MostActiveParticipantViewController.localParticipantView.getter();
    v10 = *(v5 + 28);
    [v9 setHidden_];

    v11 = MostActiveParticipantViewController.remoteParticipantView.getter();
    [v11 setHidden_];

    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v0, v12);
  }
}

void MostActiveParticipantViewController.update(participant:visibleCameraPosition:)()
{
  OUTLINED_FUNCTION_29();
  v52 = v1;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v48 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v53 = v16 - v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v49 = type metadata accessor for Participant(0);
  v24 = *(v49 + 20);
  v54 = v6;
  v25 = *(v6 + 16);
  v51 = v3;
  v25(v23, v3 + v24, v4);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v4);
  v50 = v0;
  MostActiveParticipantViewController.participantIdentifier.getter(v20);
  v29 = *(v10 + 56);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v23, v13, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v20, &v13[v29], &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(v13, 1, v4);
  if (v35)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, v31);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, v33);
    OUTLINED_FUNCTION_115(&v13[v29], 1, v4);
    if (v35)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
LABEL_11:
      v46 = MostActiveParticipantViewController.currentParticipantView.getter();
      ParticipantVideoView.updateVideoLayers(with:localDeviceOrientation:isLocal:animated:)(v52, 1, *(v51 + *(v49 + 28)) == 0, 0);

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v34 = v53;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v13, v53, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(&v13[v29], 1, v4);
  if (v35)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, v37);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, v39);
    (*(v54 + 8))(v34, v4);
LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_12;
  }

  v40 = v54;
  v41 = v48;
  (*(v54 + 32))(v48, &v13[v29], v4);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v40 + 8);
  v43(v41, v4);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s10Foundation4UUIDVSgMd);
  v43(v34, v4);
  v44 = OUTLINED_FUNCTION_2_40();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, v45);
  if (v42)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall MostActiveParticipantViewController.toggleRingButtonIfNecessary(isPipped:)(Swift::Bool isPipped)
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for ParticipantViewModel(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11];
  v13 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28[-v16];
  v18 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v4[v18], v12, &_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_115(v12, 1, v13);
  if (v19)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    outlined init with take of Participant(v12, v17);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v17, v3, v20);
    v21 = *&v17[*(v13 + 28)] == 0;
    v22 = v4[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_isLocalMemberAuthorizedToChangeGroupMembership];
    MostActiveParticipantViewController.shouldRegisterVideoLayers.getter();
    OUTLINED_FUNCTION_35_28();
    ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v3, 2 * v21, 0, v6 & 1, 0, 0, v22, v2, 1u, 0, 1u, v28[17]);
    v23 = MostActiveParticipantViewController.currentParticipantView.getter();
    ParticipantView.configure(with:isOneToOneMode:)(v2, 0);

    MostActiveParticipantViewController.currentParticipantView.getter();
    v24 = OUTLINED_FUNCTION_29_40();
    ParticipantView.setKickMemberButtonIsVisible(_:)(v24);

    MostActiveParticipantViewController.currentParticipantView.getter();
    v25 = OUTLINED_FUNCTION_29_40();
    ParticipantView.setInfoViewIsVisible(_:animated:)(v25, 0);

    OUTLINED_FUNCTION_2_166();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v2, v26);
    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v17, v27);
  }

  OUTLINED_FUNCTION_30_0();
}

id MostActiveParticipantViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MostActiveParticipantViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MostActiveParticipantViewController.update(participant:broadcastingState:)(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v65 = v6 - v5;
  v7 = type metadata accessor for ParticipantViewModel(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v66 = v10 - v9;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v67 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v64 - v31;
  v64 = *(v3 + 28);
  v33 = *(a1 + v64);
  v68 = a1;
  v69 = v1;
  if (!v33)
  {
    v34 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_localParticipant;
    swift_beginAccess();
    v35 = &v69[v34];
    a1 = v68;
    outlined assign with copy of Participant(v68, v35);
    swift_endAccess();
  }

  (*(v13 + 16))(v32, a1 + *(v3 + 20), v11, v30);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
  MostActiveParticipantViewController.participantIdentifier.getter(v28);
  v39 = *(v17 + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v32, v20, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v28, &v20[v39], &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(v20, 1, v11);
  if (!v40)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v20, v25, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_115(&v20[v39], 1, v11);
    if (!v40)
    {
      v41 = v67;
      (*(v13 + 32))(v67, &v20[v39], v11);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v13 + 8);
      v43(v41, v11);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation4UUIDVSgMd);
      v43(v25, v11);
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s10Foundation4UUIDVSgMd);
      if ((v42 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_40_25(v28);
    OUTLINED_FUNCTION_40_25(v32);
    (*(v13 + 8))(v25, v11);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(&v20[v39], 1, v11);
  if (!v40)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s10Foundation4UUIDVSgMd);
LABEL_13:
  v45 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
  v46 = v69;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if ((v46[v45] & 1) == 0)
  {
    OUTLINED_FUNCTION_7_5();
    v47 = v68;
    v48 = v65;
    _s15ConversationKit11ParticipantVWOcTm_6(v68, v65, v49);
    v50 = 2 * (*(v47 + v64) == 0);
    Participant.videoInfo.getter();
    if (!v70[0])
    {
      goto LABEL_21;
    }

    v52 = *&v70[7];
    v51 = *&v70[8];
    v53 = v71;
    v55 = *&v70[5];
    v54 = *&v70[6];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v56 = v55 == 1.0;
    if (v54 != 1.0)
    {
      v56 = 0;
    }

    if (v52 != 1.0)
    {
      v56 = 0;
    }

    if ((v53 & 1) != 0 || v56)
    {
      v57 = v53 | (v51 == 1.0);
    }

    else
    {
LABEL_21:
      v57 = 0;
    }

    v58 = v69;
    MostActiveParticipantViewController.shouldRegisterVideoLayers.getter();
    OUTLINED_FUNCTION_35_28();
    LOBYTE(v66) = 1;
    LOBYTE(v64) = v57 & 1;
    v59 = v66;
    OUTLINED_FUNCTION_37_33(v48, v50, v66, v64, 0, 1u, BYTE1(v66));
    v60 = MostActiveParticipantViewController.currentParticipantView.getter();
    ParticipantView.configure(with:isOneToOneMode:)(v59, 0);

    MostActiveParticipantViewController.currentParticipantView.getter();
    v61 = OUTLINED_FUNCTION_29_40();
    ParticipantView.setKickMemberButtonIsVisible(_:)(v61);

    MostActiveParticipantViewController.currentParticipantView.getter();
    v62 = OUTLINED_FUNCTION_29_40();
    ParticipantView.setInfoViewIsVisible(_:animated:)(v62, 0);

    OUTLINED_FUNCTION_2_166();
    return _s15ConversationKit11ParticipantV5StateOWOhTm_2(v59, v63);
  }

  return result;
}

uint64_t MostActiveParticipantViewController.update(with:updateReason:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for Participant(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  MostActiveParticipantViewController.updateRemoteParticipants(with:)(a1);
  MostActiveParticipantViewController.mostActiveParticipant.getter();
  MostActiveParticipantViewController.focus(on:)();
  OUTLINED_FUNCTION_0_210();
  return _s15ConversationKit11ParticipantV5StateOWOhTm_2(v1, v5);
}

Swift::Void __swiftcall MostActiveParticipantViewController.updateRemoteParticipants(with:)(Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_29();
  v34 = v1;
  v3 = v2;
  v37 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v36 = v12 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = 0;
  v18 = *(v3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v35 = v3;
  while (v18 != v17)
  {
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = *(v10 + 72);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v22, v16, v23);
    if (v16[*(v8 + 52)] == 1)
    {
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_6(v16, v7, v24);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 3u:
        case 5u:
          goto LABEL_7;
        case 4u:
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v28 = *(v27 + 48);
          OUTLINED_FUNCTION_38_36(v27);
          outlined destroy of Participant.MediaInfo(v7 + v28);
LABEL_7:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v29 + 8))(v7);
          break;
        case 6u:
          break;
        default:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v25 + 8))(v7);
          OUTLINED_FUNCTION_0_210();
          _s15ConversationKit11ParticipantV5StateOWOhTm_2(v16, v26);
          ++v17;
          continue;
      }
    }

    outlined init with take of Participant(v16, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v38;
    }

    v31 = *(v19 + 16);
    v32 = v31 + 1;
    if (v31 >= *(v19 + 24) >> 1)
    {
      v33 = v31 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = v33;
      v19 = v38;
    }

    ++v17;
    *(v19 + 16) = v32;
    outlined init with take of Participant(v36, v19 + v20 + v31 * v21);
  }

  *(v34 + OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_remoteParticipants) = v19;

  OUTLINED_FUNCTION_30_0();
}

void MostActiveParticipantViewController.update(participant:audioPower:)(uint64_t a1, Swift::Float a2)
{
  v42 = a1;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v40 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = *(type metadata accessor for Participant(0) + 20);
  v41 = v7;
  (*(v7 + 16))(v22, v42 + v23, v5);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v5);
  v42 = v2;
  MostActiveParticipantViewController.participantIdentifier.getter(v19);
  v27 = *(v11 + 56);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v22, v14, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v19, &v14[v27], &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(v14, 1, v5);
  if (v28)
  {
    OUTLINED_FUNCTION_40_25(v19);
    OUTLINED_FUNCTION_40_25(v22);
    OUTLINED_FUNCTION_115(&v14[v27], 1, v5);
    if (v28)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd);
LABEL_11:
      v37 = MostActiveParticipantViewController.currentParticipantView.getter();
      v38 = ParticipantView.monogramView.getter();
      ParticipantMonogramView.updateAudioVisualization(with:)(a2);

      return;
    }

LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSg_ADtMd);
    return;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(v14, v3, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_115(&v14[v27], 1, v5);
  if (v28)
  {
    OUTLINED_FUNCTION_40_25(v19);
    OUTLINED_FUNCTION_40_25(v22);
    v29 = OUTLINED_FUNCTION_2_40();
    v30(v29);
    goto LABEL_9;
  }

  v31 = v41;
  v32 = &v14[v27];
  v33 = v40;
  (*(v41 + 32))(v40, v32, v5);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v31 + 8);
  v35(v33, v5);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd);
  v36 = OUTLINED_FUNCTION_2_40();
  (v35)(v36);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd);
  if (v34)
  {
    goto LABEL_11;
  }
}

void MostActiveParticipantViewController.spatialPosition(for:relativeTo:)(uint64_t a1, uint64_t a2)
{
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = MostActiveParticipantViewController.currentParticipantView.getter();
    [v6 frame];
    OUTLINED_FUNCTION_40_1();

    v7 = OUTLINED_FUNCTION_35();
    [v8 v9];
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_35();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance MostActiveParticipantViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

id MostActiveParticipantViewController.underlyingView.getter()
{
  v1 = [v0 view];

  return v1;
}

uint64_t MostActiveParticipantViewController.nameForPhotoIndicator.getter()
{
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v4 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_focusedParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v4, 1, v2);
  v6 = 0;
  if (!EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v1 + v4, v0, v7);
    Participant.contactDetails.getter();
    OUTLINED_FUNCTION_0_210();
    _s15ConversationKit11ParticipantV5StateOWOhTm_2(v0, v8);
    v6 = v11;
  }

  return v6;
}

uint64_t type metadata accessor for MostActiveParticipantViewController()
{
  result = type metadata singleton initialization cache for MostActiveParticipantViewController;
  if (!type metadata singleton initialization cache for MostActiveParticipantViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MostActiveParticipantViewController()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Participant?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t ParticipantListViewController.participantCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
  v2 = ParticipantsCollectionViewDataSource.participants.getter();

  v3 = *(v2 + 16);

  return v3;
}

void *ParticipantListViewController.collectionView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t (*ParticipantListViewController.participantsViewControllerDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_55_0(v3, OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t key path setter for ParticipantListViewController.participantsViewControllerDelegate : ParticipantListViewController(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  OUTLINED_FUNCTION_51_3();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantListViewController.participantsViewControllerDelegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  OUTLINED_FUNCTION_51_3();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ParticipantListViewController.participantListViewControllerDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_55_0(v3, OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

void ParticipantListViewController.visibleParticipantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v49 = v10 - v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v44 - v13;
  v14 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = *(ParticipantListViewController.indexPathsForVisibleItems()() + 16);
  if (v21)
  {
    v23 = *(v16 + 16);
    v22 = v16 + 16;
    v52 = v23;
    v53 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource;
    OUTLINED_FUNCTION_40_3();
    v26 = v24 + v25;
    v27 = *(v22 + 56);
    v54 = v22;
    v28 = (v22 - 8);
    v44 = v24;
    v45 = (v8 + 16);
    v47 = v8;
    v50 = (v8 + 32);
    v51 = v27;
    v29 = MEMORY[0x1E69E7CC0];
    v48 = v6;
    v46 = v14;
    do
    {
      v52(v20, v26, v14);
      v30 = *(v1 + v53);
      ParticipantsCollectionViewDataSource.participant(at:)(v20, v5);

      (*v28)(v20, v14);
      v31 = type metadata accessor for Participant(0);
      if (__swift_getEnumTagSinglePayload(v5, 1, v31) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        v32 = v1;
        v33 = &v5[*(v31 + 20)];
        v34 = v49;
        (*v45)(v49, v33, v6);
        OUTLINED_FUNCTION_1_178();
        _s15ConversationKit11ParticipantVWOhTm_16(v5, v35);
        v36 = *v50;
        (*v50)(v55, v34, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v42;
        }

        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v37);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v43;
        }

        *(v29 + 16) = v38 + 1;
        OUTLINED_FUNCTION_40_3();
        v41 = v29 + v39 + *(v40 + 72) * v38;
        v6 = v48;
        v36(v41, v55, v48);
        v1 = v32;
        v14 = v46;
      }

      v26 += v51;
      --v21;
    }

    while (v21);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantListViewController.indexPathsForVisibleItems()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  [v2 layoutIfNeeded];
  v3 = [v2 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = v4;

  specialized MutableCollection<>.sort(by:)(&v6);

  return v6;
}

void ParticipantListViewController.nonVisibleParticipantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v29 = (v4 - v5);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  ParticipantListViewController.visibleParticipantIdentifiers.getter();
  v30 = v9;
  if (v9)
  {
    ParticipantListViewController.participantIdentifiers.getter();
    v11 = 0;
    v12 = *(v10 + 16);
    v23 = (v2 + 8);
    v24 = v2 + 16;
    v27 = (v2 + 32);
    v28 = v12;
    v13 = MEMORY[0x1E69E7CC0];
    v25 = v10;
    for (i = v2; ; v2 = i)
    {
      if (v11 == v28)
      {

        goto LABEL_16;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v2 + 72);
      (*(v2 + 16))(v8, v10 + v14 + v15 * v11++, v0);
      v16 = v30 + v14;
      v17 = *(v30 + 16) + 1;
      while (--v17)
      {
        _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v16 += v15;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          (*v23)(v8, v0);
          goto LABEL_14;
        }
      }

      v18 = *v27;
      (*v27)(v29, v8, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v31;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v20);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v31;
      }

      *(v13 + 16) = v21 + 1;
      v18(v13 + v14 + v21 * v15, v29, v0);
LABEL_14:
      v10 = v25;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_30_0();
  }
}

void ParticipantListViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v23 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
  v15 = ParticipantsCollectionViewDataSource.participants.getter();

  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_40_3();
    v18 = v15 + v17;
    v22 = *(v2 + 72);
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_6(v18, v6, type metadata accessor for Participant);
      (*(v9 + 16))(v13, v6 + *(v23 + 20), v7);
      _s15ConversationKit11ParticipantVWOhTm_16(v6, type metadata accessor for Participant);
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v19);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v24 + 16) = v20 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v24 + v21 + *(v9 + 72) * v20, v13, v7);
      v18 += v22;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_30_0();
}

char *ParticipantListViewController.init(localParticipant:remoteParticipants:participantIsShownInGrid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListLayout;
  *(v5 + v10) = [objc_allocWithZone(type metadata accessor for ParticipantListLayout()) init];
  v11 = (v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  *v11 = 0;
  v11[1] = 0;
  v12 = v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  OUTLINED_FUNCTION_11_34(v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListViewControllerDelegate);
  objc_allocWithZone(type metadata accessor for ParticipantsCollectionViewDataSource());

  *(v5 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource) = ParticipantsCollectionViewDataSource.init(participants:participantIsShownInGrid:)(a2, a3, a4);
  OUTLINED_FUNCTION_3_0();
  v15 = objc_msgSendSuper2(v13, v14);

  OUTLINED_FUNCTION_1_178();
  _s15ConversationKit11ParticipantVWOhTm_16(a1, v16);
  v17 = *&v15[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListLayout] + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  *(v17 + 8) = &protocol witness table for ParticipantListViewController;
  swift_unknownObjectWeakAssign();
  return v15;
}

id ParticipantListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantListViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListLayout;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ParticipantListLayout()) init];
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListViewControllerDelegate);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantListViewController.viewDidLoad()()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 bounds];

  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListLayout];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC7F0]);
  v6 = OUTLINED_FUNCTION_35();
  v9 = [v7 v8];
  type metadata accessor for ParticipantCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (one-time initialization token for reuseIdentifier != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x1BFB209B0](static ParticipantCell.reuseIdentifier, *algn_1EDDCCF28);
  [v9 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];

  [v9 setDataSource_];
  [v9 setDelegate_];
  [v9 setDragInteractionEnabled_];
  v12 = v9;
  [v12 setAlwaysBounceHorizontal_];
  [v12 setShowsHorizontalScrollIndicator_];

  v13 = v12;
  [v13 setClipsToBounds_];
  static Layout.Roster.iOS.getter(v32);
  [v13 _setContinuousCornerRadius_];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  v15 = OUTLINED_FUNCTION_16_69();
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = OUTLINED_FUNCTION_16_69();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v34.top = OUTLINED_FUNCTION_35();
  UIView.addConstraintsToFill(_:insets:)(v19, v34);

  v20 = OUTLINED_FUNCTION_16_69();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  UIView.addTapInteraction(withTapCount:)(1);

  type metadata accessor for ParticipantDimmingView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OUTLINED_FUNCTION_16_69();
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  [v23 addSubview_];

  v25 = OUTLINED_FUNCTION_16_69();
  if (v25)
  {
    v26 = v25;
    v35.top = OUTLINED_FUNCTION_35();
    UIView.addConstraintsToFill(_:insets:)(v27, v35);

    v28 = &v1[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent];
    v29 = *&v1[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent];
    v30 = *&v1[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent + 8];
    *v28 = v13;
    *(v28 + 1) = v22;
    outlined consume of ConversationControlsRecipe.View?(v29, v30);
    return;
  }

LABEL_15:
  __break(1u);
}

Swift::Void __swiftcall ParticipantListViewController.centerParticipantListForAutomationIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_3_15();
    swift_once();
LABEL_5:
    if ((*(*static Defaults.shared + 496))())
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      [v1 contentOffset];
      v13 = v12;
      [v8 itemSize];
      [v1 setContentOffset:0 animated:{v14 * 0.5, v13}];
    }

    goto LABEL_9;
  }

  v10 = *&v1[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent];
  if (!v10)
  {
    return;
  }

  v1 = v10;
  v2 = [v1 collectionViewLayout];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v8 = v11;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
}

Swift::Void __swiftcall ParticipantListViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  ParticipantListViewController.centerParticipantListForAutomationIfNecessary()();
}

Swift::Void __swiftcall ParticipantListViewController.viewDidLayoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize];
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize];
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize + 8];
  v4 = v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_lastLayedOutViewSize + 16];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;

    if ((v4 & 1) != 0 || (v2 == v8 ? (v11 = v3 == v10) : (v11 = 0), !v11))
    {
      v12 = *&v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent];
      if (v12)
      {
        [v12 reloadData];
      }
    }

    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;

      *v1 = v16;
      *(v1 + 1) = v18;
      v1[16] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ParticipantListViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall ParticipantListViewController.setOverlayHidden(_:)(Swift::Bool a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent + 8);
    ParticipantDimmingView.setHidden(_:)(a1);
  }
}

uint64_t static ParticipantListViewController.filterAndSort(_:)(uint64_t a1)
{
  v26 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v24 = a1;
  while (v11 != v10)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    _s15ConversationKit11ParticipantVWOcTm_6(a1 + v13 + v14 * v10, v9, type metadata accessor for Participant);
    if (v9[*(v4 + 52)] == 1)
    {
      _s15ConversationKit11ParticipantVWOcTm_6(v9, v3, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 3u:
        case 5u:
          goto LABEL_7;
        case 4u:
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v17 = *(v16 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v3[*(v16 + 64)], *&v3[*(v16 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v3[v17]);
LABEL_7:
          v18 = type metadata accessor for Date();
          (*(*(v18 - 8) + 8))(v3, v18);
          break;
        case 6u:
          break;
        default:
          v15 = type metadata accessor for Date();
          (*(*(v15 - 8) + 8))(v3, v15);
          _s15ConversationKit11ParticipantVWOhTm_16(v9, type metadata accessor for Participant);
          ++v10;
          continue;
      }
    }

    outlined init with take of Participant(v9, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v27;
    }

    v20 = *(v12 + 16);
    v21 = v20 + 1;
    if (v20 >= *(v12 + 24) >> 1)
    {
      v23 = v20 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v23;
      v12 = v27;
    }

    ++v10;
    *(v12 + 16) = v21;
    outlined init with take of Participant(v25, v12 + v13 + v20 * v14);
    a1 = v24;
  }

  v27 = v12;

  specialized MutableCollection<>.sort(by:)(&v27);

  return v27;
}

uint64_t closure #2 in static ParticipantListViewController.filterAndSort(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  Participant.broadcastStartDate.getter();
  v33[1] = a2;
  Participant.broadcastStartDate.getter();
  v18 = *(v9 + 56);
  outlined init with take of Date?(v17, v11);
  outlined init with take of Date?(v14, &v11[v18]);
  LODWORD(v14) = __swift_getEnumTagSinglePayload(v11, 1, v3);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v11[v18], 1, v3);
  if (v14 == 1)
  {
    if (EnumTagSinglePayload == 1)
    {
      Participant.contactDetails.getter();
      v20 = v42;
      v21 = v43;
      v22 = v44;

      v40 = v21;
      v41 = v22;
      Participant.contactDetails.getter();
      v23 = v37;
      v24 = v38;
      v25 = v39;

      v35 = v24;
      v36 = v25;
      lazy protocol witness table accessor for type String and conformance String();
      v26 = StringProtocol.localizedCompare<A>(_:)();

      v27 = v26 == 1;
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v11[v18], &_s10Foundation4DateVSgMd);
      v27 = 0;
    }
  }

  else if (EnumTagSinglePayload == 1)
  {
    (*(v34 + 8))(v11, v3);
    v27 = 1;
  }

  else
  {
    v28 = v34;
    v29 = *(v34 + 32);
    v29(v7, v11, v3);
    v30 = v33[0];
    v29(v33[0], &v11[v18], v3);
    v27 = static Date.< infix(_:_:)();
    v31 = *(v28 + 8);
    v31(v30, v3);
    v31(v7, v3);
  }

  return v27 & 1;
}

uint64_t ParticipantListViewController.rangeOfVisibleItems()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = ParticipantListViewController.indexPathsForVisibleItems()();
  specialized Collection.first.getter(v13, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    goto LABEL_5;
  }

  v14 = *(v7 + 32);
  v14(v12, v5, v6);
  specialized BidirectionalCollection.last.getter(v13, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
    v5 = v2;
LABEL_5:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation9IndexPathVSgMd);
    return 0;
  }

  v14(v9, v2, v6);
  result = IndexPath.section.getter();
  if (result < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v17 = result;
    v25 = v7;
    v26 = v6;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v27 = 1;
    v28 = 1;
    while (1)
    {
      if (v18 == IndexPath.section.getter())
      {
        result = IndexPath.item.getter();
        v15 = v20 + result;
        if (__OFADD__(v20, result))
        {
          goto LABEL_25;
        }

        v28 = 0;
      }

      if (v18 == IndexPath.section.getter())
      {
        result = IndexPath.item.getter();
        v19 = v20 + result;
        if (__OFADD__(v20, result))
        {
          goto LABEL_26;
        }

        v27 = 0;
      }

      result = ParticipantsCollectionViewDataSource.numberOfItemsInSection(_:)(v18);
      v21 = __OFADD__(v20, result);
      v20 += result;
      if (v21)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v17 == v18)
      {
        break;
      }

      v21 = __OFADD__(v18++, 1);
      if (v21)
      {
        __break(1u);
        break;
      }
    }

    v22 = v26;
    v23 = *(v25 + 8);
    v23(v9, v26);
    result = (v23)(v12, v22);
    if ((v28 | v27))
    {
      return 0;
    }

    if (v19 >= v15)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ParticipantListViewController.visibilityIndex(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v4);
  if (v11)
  {
    v13 = ParticipantListViewController.rangeOfVisibleItems()();
    if (v15 & 1) != 0 || (v16 = v13, v17 = v14, v18 = *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource), v19 = ParticipantsCollectionViewDataSource.participants.getter(), v18, MEMORY[0x1EEE9AC00](v20), *&v26[-16] = a1, v21 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), &v26[-32], v19), v23 = v22, , (v23))
    {
      ParticipantListViewController.participantIdentifiers.getter();
      v25 = *(v24 + 16);
    }

    else
    {
      if (v21 < v16)
      {
        v25 = v16 - v21;
        if (!__OFSUB__(v16, v21))
        {
          return v25;
        }

        __break(1u);
      }

      if (v17 < v21)
      {
        v25 = v21 - v17;
        if (!__OFSUB__(v21, v17))
        {
          return v25;
        }

        __break(1u);
      }

      return 0;
    }

    return v25;
  }

  __break(1u);
  return result;
}

void *ParticipantListViewController.accessibilityParticipantCollectionView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

id ParticipantListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void ParticipantListViewController.update(participant:broadcastingState:)(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
    v5 = v2;
    v6 = v4;
    ParticipantsCollectionViewDataSource.update(_:in:)(a1, v5);
  }
}

void ParticipantListViewController.update(participant:localParticipantOrientation:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
    v7 = v3;
    v8 = v6;
    ParticipantsCollectionViewDataSource.update(_:in:with:)(a1, v7, a2);
  }
}

Swift::Void __swiftcall ParticipantListViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  v76 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v77 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v79 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v71 = v20 - v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v68 - v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v70 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v27)
  {
    v80 = v4;
    v78 = *(a1._rawValue + 2);
    v28 = (v6 + 8);
    v73 = (v6 + 32);
    v74 = v26 + 3;
    v68 = v27;
    v29 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    rawValue = a1._rawValue;
    while (v78 != v29)
    {
      v30 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v31 = *(v79 + 72);
      _s15ConversationKit11ParticipantVWOcTm_6(a1._rawValue + v30 + v31 * v29, v26, type metadata accessor for Participant);
      v32 = OUTLINED_FUNCTION_3_158();
      _s15ConversationKit11ParticipantVWOcTm_6(v32, v17, v33);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          (*v28)(v17, v80);
          goto LABEL_20;
        case 4u:
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v48 = *(v47 + 48);
          OUTLINED_FUNCTION_37(&v17[*(v47 + 64)]);
          a1._rawValue = rawValue;
          outlined destroy of Participant.MediaInfo(&v17[v48]);
          goto LABEL_5;
        case 6u:
          goto LABEL_6;
        default:
LABEL_5:
          (*v28)(v17, v80);
LABEL_6:
          v34 = OUTLINED_FUNCTION_3_158();
          _s15ConversationKit11ParticipantVWOcTm_6(v34, v14, v35);
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            _s15ConversationKit11ParticipantVWOhTm_16(v14, type metadata accessor for Participant.State);
LABEL_11:
            OUTLINED_FUNCTION_1_178();
            _s15ConversationKit11ParticipantVWOhTm_16(v26, v43);
            ++v29;
            continue;
          }

          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v37 = *(v36 + 48);
          OUTLINED_FUNCTION_37((v14 + *(v36 + 64)));
          v38 = v10;
          v39 = v10;
          v40 = v80;
          (*v73)(v38, v14, v80);
          outlined destroy of Participant.MediaInfo(v14 + v37);
          Date.timeIntervalSinceNow.getter();
          if (v41 <= 0.0)
          {
            Date.timeIntervalSinceNow.getter();
            v45 = v44;
            v10 = v39;
            if (one-time initialization token for shared != -1)
            {
              OUTLINED_FUNCTION_3_15();
              swift_once();
            }

            v46 = (*(*static Defaults.shared + 720))();
            (*v28)(v10, v80);
            v42 = -v45 <= v46;
            a1._rawValue = rawValue;
            if ((v74[*(v77 + 24)] & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            (*v28)(v39, v40);
            a1._rawValue = rawValue;
            v10 = v39;
            if (v74[*(v77 + 24)] != 1)
            {
              goto LABEL_11;
            }

            v42 = 0;
          }

          if (!*&v26[*(v77 + 28)] || !v42)
          {
            goto LABEL_11;
          }

LABEL_20:
          outlined init with take of Participant(v26, v71);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v72;
          v81 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a1._rawValue = rawValue;
            v50 = v81;
          }

          v52 = *(v50 + 16);
          v51 = *(v50 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v51);
            v55 = v54;
            v72 = v56;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v53 = v55;
            v52 = v72;
            a1._rawValue = rawValue;
            v50 = v81;
          }

          ++v29;
          *(v50 + 16) = v53;
          v72 = v50;
          outlined init with take of Participant(v71, v50 + v30 + v52 * v31);
          break;
      }
    }

    v57 = *(v72 + 16);
    if (v57)
    {
      v58 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource;
      OUTLINED_FUNCTION_40_3();
      v61 = v59 + v60;
      v63 = *(v62 + 72);
      v65 = v69;
      v64 = v70;
      v66 = v68;
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_6(v61, v65, type metadata accessor for Participant);
        v67 = *(v64 + v58);
        ParticipantsCollectionViewDataSource.update(_:in:)(v65, v66);

        _s15ConversationKit11ParticipantVWOhTm_16(v65, type metadata accessor for Participant);
        v61 += v63;
        --v57;
      }

      while (v57);
    }

    else
    {

      v66 = v68;
    }
  }
}

uint64_t ParticipantListViewController.update(with:updateReason:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = static ParticipantListViewController.filterAndSort(_:)(a1);
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
    v6 = v4;
    v7 = v5;
    ParticipantsCollectionViewDataSource.set(_:in:)(v3, v6);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
    ParticipantsCollectionViewDataSource.set(_:)(v3);
  }
}

void ParticipantListViewController.update(participant:audioPower:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource);
    v5 = v2;
    v6 = v4;
    ParticipantsCollectionViewDataSource.updateAudioPower(forParticipant:in:withPower:)(a1, v2, 5.0);
  }
}

void ParticipantListViewController.spatialPosition(for:relativeTo:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v58 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v14 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = (v19 - v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v20 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v14);
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v14);
  if (v21)
  {
    OUTLINED_FUNCTION_8_14();
    CGRectGetWidth(v59);
    [a2 displayScale];
    v22 = v4 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListViewControllerDelegate;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v55 = v3;
    v56 = v12;
    v57 = v9;
    if (Strong)
    {
      v24 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v26 = (*(v24 + 8))(ObjectType, v24);
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 1;
    }

    type metadata accessor for MultiwayViewConstraintsController();
    static MultiwayViewConstraintsController.listItemWidth(for:displayScale:configurableRosterCellWidth:)(v26, v28 & 1);
    v29 = ParticipantListViewController.rangeOfVisibleItems()();
    if (v31 & 1) != 0 || (v32 = v29, v33 = v30, v34 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource, v35 = *(v4 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource), v36 = v10, v37 = ParticipantsCollectionViewDataSource.participants.getter(), v35, MEMORY[0x1EEE9AC00](v38), *(&v55 - 2) = v58, v39 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), (&v55 - 4), v37), v41 = v40, v42 = v36, , (v41) || (v43 = *(v4 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_viewContent)) == 0)
    {
      OUTLINED_FUNCTION_8_14();
      CGRectGetWidth(v61);
      OUTLINED_FUNCTION_8_14();
      CGRectGetHeight(v62);
      return;
    }

    if (v39 < v32)
    {
      v44 = v43;
      OUTLINED_FUNCTION_8_14();
      CGRectGetHeight(v60);

      return;
    }

    if (v33 < v39)
    {
      v45 = v43;
      OUTLINED_FUNCTION_8_14();
      CGRectGetWidth(v63);
      OUTLINED_FUNCTION_8_14();
      CGRectGetHeight(v64);

      return;
    }

    v46 = *(v4 + v34);
    v47 = *(type metadata accessor for Participant(0) + 20);
    v48 = v43;
    v49 = v46;
    v50 = v57;
    ParticipantsCollectionViewDataSource.indexPath(of:)(v58 + v47, v57);

    if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s10Foundation9IndexPathVSgMd);
    }

    else
    {
      v52 = v55;
      v51 = v56;
      (*(v56 + 32))(v55, v50, v42);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v54 = [v48 cellForItemAtIndexPath_];

      if (v54)
      {
        [v54 frame];
        [v48 convertRect:a2 toCoordinateSpace:?];

        (*(v51 + 8))(v52, v42);
        return;
      }

      (*(v51 + 8))(v52, v42);
    }

    [a2 bounds];
    CGRectGetWidth(v65);
    [a2 bounds];
    CGRectGetHeight(v66);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance ParticipantListViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t ParticipantListViewController.configurableRosterCellWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantListViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void ParticipantListViewController.collectionView(_:willDisplay:forItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v37 = v3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_82();
  v10 = type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v17 = &v2[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  v35 = *(v17 + 1);
  v36 = v5;
  v34 = swift_getObjectType();
  v38[3] = ObjectType;
  v38[4] = &protocol witness table for ParticipantListViewController;
  v38[0] = v2;
  v18 = *&v2[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource];
  v19 = v2;
  v20 = v18;
  v21 = ParticipantsCollectionViewDataSource.participants.getter();

  v22 = IndexPath.item.getter();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_40_3();
  _s15ConversationKit11ParticipantVWOcTm_6(v21 + v23 + *(v12 + 72) * v24, v16, type metadata accessor for Participant);

  (*(v7 + 16))(v1, v16 + *(v10 + 20), v36);
  _s15ConversationKit11ParticipantVWOhTm_16(v16, type metadata accessor for Participant);
  (*(v35 + 64))(v38, v1, v34);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v1, v36);
  __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_5:
  type metadata accessor for ParticipantCell();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v17 + 1);
      v28 = swift_getObjectType();
      v29 = *(v27 + 16);
      v30 = v37;
      if (v29(v28, v27))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v31 = *(v27 + 8);
        v32 = *&v2[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_collectionViewDataSource];
        v33 = v31(v28, v27);
        ParticipantsCollectionViewDataSource.configureCell(_:with:)(v26, v33);

        swift_unknownObjectRelease();
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void ParticipantListViewController.collectionView(_:didEndDisplaying:forItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_82();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  type metadata accessor for ParticipantCell();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of UUID?(v15 + v16, v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      (*(v9 + 32))(v13, v1, v7);
      v17 = &v0[OBJC_IVAR____TtC15ConversationKit29ParticipantListViewController_participantsViewControllerDelegate];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        v19 = swift_getObjectType();
        v23[3] = ObjectType;
        v23[4] = &protocol witness table for ParticipantListViewController;
        v23[0] = v0;
        v20 = *(v18 + 72);
        v21 = v3;
        v22 = v0;
        v20(v23, v13, v19, v18);

        swift_unknownObjectRelease();
        (*(v9 + 8))(v13, v7);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        (*(v9 + 8))(v13, v7);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ParticipantListViewController.currentRosterViews.getter()
{
  if (![v0 isViewLoaded])
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!ParticipantListViewController.participantCount.getter())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = ParticipantListViewController.collectionView.getter();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = [v1 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);

    v5 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);

    v5 = v4;
  }

  return v5;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      OUTLINED_FUNCTION_22(v13);
      OUTLINED_FUNCTION_40_3();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v116 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v137 = &v116 - v17;
  v129 = v9;
  v130 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v139 = *v119;
    if (!v139)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v109 = (v20 + 16);
      v110 = *(v20 + 16);
      while (v110 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_138;
        }

        v111 = a4;
        v112 = v20;
        v113 = (v20 + 16 * v110);
        v20 = *v113;
        a4 = &v109[2 * v110];
        v114 = *(a4 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v130)[v9[9] * *v113], &(*v130)[v9[9] * *a4], &(*v130)[v9[9] * v114], v139);
        v9 = v111;
        if (v111)
        {
          break;
        }

        if (v114 < v20)
        {
          goto LABEL_126;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_127;
        }

        *v113 = v20;
        v113[1] = v114;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_128;
        }

        v110 = *v109 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 16), v115, a4);
        *v109 = v110;
        a4 = 0;
        v9 = v129;
        v20 = v112;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_101;
  }

  v117 = a4;
  v19 = 0;
  v135 = (v9 + 1);
  v136 = v9 + 2;
  v134 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v122 = v15;
  v139 = v8;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v121 = v19;
    if (v19 + 1 < v18)
    {
      v123 = v5;
      v118 = v20;
      v23 = v19;
      v24 = *v130;
      v25 = v9[9];
      a4 = &(*v130)[v25 * v22];
      v26 = v9[2];
      v128 = v19 + 1;
      v27 = v137;
      v131 = v18;
      v26(v137, a4, v8, v16);
      v28 = &v24[v25 * v23];
      v29 = v8;
      v30 = v138;
      v126 = v26;
      (v26)(v138, v28, v29);
      v125 = _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      LODWORD(v127) = dispatch thunk of static Comparable.< infix(_:_:)();
      v20 = v9[1];
      (v20)(v30, v29);
      v31 = v27;
      v22 = v128;
      v124 = v20;
      (v20)(v31, v29);
      v32 = v131;
      v33 = (v121 + 2);
      v133 = v25;
      v34 = &v24[v25 * (v121 + 2)];
      while (1)
      {
        v9 = v33;
        v35 = v22 + 1;
        if (v35 >= v32)
        {
          break;
        }

        v36 = v137;
        v37 = v139;
        v38 = v126;
        (v126)(v137, v34, v139);
        v39 = v35;
        v40 = v138;
        v38(v138, a4, v37);
        v41 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v42 = v40;
        v22 = v39;
        v20 = v124;
        v124(v42, v37);
        (v20)(v36, v37);
        v32 = v131;
        v34 += v133;
        a4 += v133;
        v33 = (v9 + 1);
        if ((v127 & 1) != v41)
        {
          goto LABEL_9;
        }
      }

      v22 = v32;
LABEL_9:
      if (v127)
      {
        v21 = v121;
        if (v22 < v121)
        {
          goto LABEL_132;
        }

        if (v121 >= v22)
        {
          v9 = v129;
          v20 = v118;
          v8 = v139;
          v5 = v123;
        }

        else
        {
          if (v32 >= v9)
          {
            v43 = v9;
          }

          else
          {
            v43 = v32;
          }

          v44 = v133 * (v43 - 1);
          v45 = v133 * v43;
          v46 = v121 * v133;
          v47 = v22;
          v48 = v121;
          v5 = v123;
          do
          {
            if (v48 != --v47)
            {
              v123 = v5;
              v49 = *v130;
              if (!*v130)
              {
                goto LABEL_139;
              }

              a4 = &v49[v46];
              v50 = v139;
              v131 = *v134;
              (v131)(v122, &v49[v46], v139);
              v51 = v46 < v44 || a4 >= &v49[v45];
              if (v51)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v131)(&v49[v44], v122, v50);
              v5 = v123;
              v21 = v121;
            }

            ++v48;
            v44 -= v133;
            v45 -= v133;
            v46 += v133;
          }

          while (v48 < v47);
          v9 = v129;
          v20 = v118;
          v8 = v139;
        }
      }

      else
      {
        v9 = v129;
        v20 = v118;
        v8 = v139;
        v5 = v123;
        v21 = v121;
      }
    }

    v52 = v130[1];
    if (v22 < v52)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v117)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v107;
    }

    v68 = *(v20 + 16);
    a4 = v68 + 1;
    if (v68 >= *(v20 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v108;
    }

    *(v20 + 16) = a4;
    v69 = v20 + 32;
    v70 = (v20 + 32 + 16 * v68);
    *v70 = v21;
    v70[1] = v22;
    v133 = *v119;
    if (!v133)
    {
      goto LABEL_140;
    }

    v128 = v22;
    if (v68)
    {
      while (1)
      {
        v71 = a4 - 1;
        v72 = (v69 + 16 * (a4 - 1));
        v73 = (v20 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v20 + 32);
          v75 = *(v20 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_117;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_120;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_125;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_122;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_124;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v130)
        {
          goto LABEL_137;
        }

        v103 = v20;
        v104 = (v69 + 16 * (v71 - 1));
        a4 = *v104;
        v105 = v69 + 16 * v71;
        v20 = *(v105 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v130)[v9[9] * *v104], &(*v130)[v9[9] * *v105], &(*v130)[v9[9] * v20], v133);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v20 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v103 + 16);
        if (v71 > v9)
        {
          goto LABEL_113;
        }

        *v104 = a4;
        v104[1] = v20;
        if (v71 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v105 + 16), v9 - v71 - 1, (v69 + 16 * v71));
        v20 = v103;
        *(v103 + 16) = v9 - 1;
        v106 = v9 > 2;
        v9 = v129;
        if (!v106)
        {
          goto LABEL_96;
        }
      }

      v78 = v69 + 16 * a4;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_115;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_116;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_118;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_121;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v102)
        {
          v71 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v130[1];
    v19 = v128;
    v8 = v139;
    if (v128 >= v18)
    {
      goto LABEL_99;
    }
  }

  v53 = (v21 + v117);
  if (__OFADD__(v21, v117))
  {
    goto LABEL_133;
  }

  if (v53 >= v52)
  {
    v53 = v130[1];
  }

  if (v53 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v53)
  {
    goto LABEL_47;
  }

  v118 = v20;
  v123 = v5;
  v124 = v53;
  v54 = *v130;
  v55 = v9[9];
  v133 = v9[2];
  v56 = &v54[v55 * (v22 - 1)];
  v57 = -v55;
  v58 = (v21 - v22);
  v131 = v54;
  v120 = v55;
  a4 = &v54[v22 * v55];
LABEL_40:
  v127 = v56;
  v128 = v22;
  v125 = a4;
  v126 = v58;
  v59 = v56;
  while (1)
  {
    v60 = v137;
    v61 = v133;
    (v133)(v137, a4, v8);
    v62 = v138;
    v61(v138, v59, v139);
    _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
    v63 = dispatch thunk of static Comparable.< infix(_:_:)();
    v64 = *v135;
    v65 = v62;
    v8 = v139;
    (*v135)(v65, v139);
    v64(v60, v8);
    if ((v63 & 1) == 0)
    {
LABEL_45:
      v22 = v128 + 1;
      v56 = &v127[v120];
      v58 = v126 - 1;
      a4 = v125 + v120;
      if ((v128 + 1) == v124)
      {
        v22 = v124;
        v5 = v123;
        v9 = v129;
        v20 = v118;
        v21 = v121;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v131)
    {
      break;
    }

    v66 = *v134;
    v67 = v132;
    (*v134)(v132, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v66(v59, v67, v8);
    v59 += v57;
    a4 += v57;
    v51 = __CFADD__(v58++, 1);
    if (v51)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t TranscriptionViewModel.captions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_50();

  return v1;
}

uint64_t TranscriptionViewModel.Caption.init(id:dateCreated:dateUpdated:text:isBadTranscription:lowConfidenceRanges:isComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>)
{
  *a9 = a1;
  v14 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v15 = v14[5];
  v16 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v18 = *(v17 + 32);
  v18(&a9[v15], a2, v16);
  result = (v18)(&a9[v14[6]], a3, v16);
  v20 = &a9[v14[7]];
  *v20 = a4;
  *(v20 + 1) = a5;
  a9[v14[8]] = a6;
  *&a9[v14[9]] = a7;
  a9[v14[10]] = a8;
  return result;
}

uint64_t TranscriptionViewModel.__allocating_init(config:)()
{
  OUTLINED_FUNCTION_55();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_45_1();
  TranscriptionViewModel.init(config:)(v1, v2);
  return v0;
}

uint64_t TranscriptionViewModel.hidePrivacySensitiveContent.setter()
{
  return TranscriptionViewModel.hidePrivacySensitiveContent.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_134();
  return static Published.subscript.setter();
}

uint64_t TranscriptionViewModel.initialScreeningResponse.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_50();

  return v1;
}

Swift::Int TranscriptionViewModel.CaptionID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

uint64_t TranscriptionViewModel.initialScreeningResponse.setter()
{
  OUTLINED_FUNCTION_55();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_51();
  OUTLINED_FUNCTION_134();
  return static Published.subscript.setter();
}

uint64_t TranscriptionViewModel.callUUID.setter()
{
  OUTLINED_FUNCTION_55();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_51();
  OUTLINED_FUNCTION_134();
  static Published.subscript.setter();
  TranscriptionViewModel.callUUID.getter();

  TranscriptionViewModel.state.setter();
  return TranscriptionViewModel.captions.setter();
}

uint64_t TranscriptionViewModel.callerDisplayName.setter()
{
  OUTLINED_FUNCTION_55();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_51();
  OUTLINED_FUNCTION_134();
  return static Published.subscript.setter();
}

uint64_t TranscriptionViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_50();

  return v1;
}

uint64_t key path getter for TranscriptionViewModel.captions : TranscriptionViewModel()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.captions.getter();
  *v0 = result;
  return result;
}

uint64_t TranscriptionViewModel.captions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*TranscriptionViewModel.captions.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t TranscriptionViewModel.Caption.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptionViewModel.Caption(0) + 20);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TranscriptionViewModel.Caption.dateCreated.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_75_1();

  return v2(v1);
}

uint64_t TranscriptionViewModel.Caption.dateCreated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t TranscriptionViewModel.Caption.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptionViewModel.Caption(0) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TranscriptionViewModel.Caption.dateUpdated.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_75_1();

  return v2(v1);
}

uint64_t TranscriptionViewModel.Caption.dateUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t TranscriptionViewModel.Caption.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptionViewModel.Caption(0) + 28));

  return v1;
}

uint64_t TranscriptionViewModel.Caption.text.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + *(type metadata accessor for TranscriptionViewModel.Caption(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TranscriptionViewModel.Caption.text.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t TranscriptionViewModel.Caption.isBadTranscription.setter(char a1)
{
  result = type metadata accessor for TranscriptionViewModel.Caption(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TranscriptionViewModel.Caption.isBadTranscription.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t TranscriptionViewModel.Caption.lowConfidenceRanges.getter()
{
  type metadata accessor for TranscriptionViewModel.Caption(0);
}

uint64_t TranscriptionViewModel.Caption.lowConfidenceRanges.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for TranscriptionViewModel.Caption(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TranscriptionViewModel.Caption.lowConfidenceRanges.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t TranscriptionViewModel.Caption.isComplete.setter(char a1)
{
  result = type metadata accessor for TranscriptionViewModel.Caption(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t TranscriptionViewModel.Caption.isComplete.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for TranscriptionViewModel.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t static TranscriptionViewModel.Caption.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
    if (static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)() & 1) != 0 && ((OUTLINED_FUNCTION_27_51(), v7) ? (v7 = v5 == v6) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + v4[8]) == *(a2 + v4[8]) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(*(a1 + v4[9]), *(a2 + v4[9]))))
    {
      v8 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TranscriptionViewModel.CaptionID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TranscriptionViewModel.CaptionID.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int TranscriptionViewModel.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TranscriptionViewModel.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TranscriptionViewModel.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t static TranscriptionViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_55();
  v0 = TranscriptionViewModel.callUUID.getter();
  v2 = v1;
  v4 = v0 == TranscriptionViewModel.callUUID.getter() && v2 == v3;
  if (v4)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = TranscriptionViewModel.state.getter();
  if (v6 != TranscriptionViewModel.state.getter())
  {
    return 0;
  }

  TranscriptionViewModel.captions.getter();
  TranscriptionViewModel.captions.getter();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit22TranscriptionViewModelC7CaptionV_Tt1g5();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_51();
  if (v4 && v9 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static TranscriptionViewModel.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t key path getter for TranscriptionViewModel.callUUID : TranscriptionViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptionViewModel.callUUID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*TranscriptionViewModel.callUUID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = TranscriptionViewModel.callUUID.getter();
  a1[1] = v3;
  return TranscriptionViewModel.callUUID.modify;
}

uint64_t TranscriptionViewModel.callUUID.modify(uint64_t a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_45_1();
    TranscriptionViewModel.callUUID.setter();
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    return TranscriptionViewModel.callUUID.setter();
  }
}

uint64_t TranscriptionViewModel.$callUUID.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$callUUID.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for TranscriptionViewModel.callerDisplayName : TranscriptionViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptionViewModel.callerDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for TranscriptionViewModel.callUUID : TranscriptionViewModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t (*TranscriptionViewModel.callerDisplayName.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for TranscriptionViewModel.$callUUID : TranscriptionViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t TranscriptionViewModel.$callerDisplayName.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$callerDisplayName.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void TranscriptionViewModel.$callUUID.modify(uint64_t a1, char a2, void (*a3)(void *))
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

uint64_t key path getter for TranscriptionViewModel.state : TranscriptionViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = TranscriptionViewModel.state.getter();
  *a1 = result;
  return result;
}

uint64_t (*TranscriptionViewModel.state.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t TranscriptionViewModel.$state.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22TranscriptionViewModelC5StateO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22TranscriptionViewModelC5StateOGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$state.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22TranscriptionViewModelC5StateO_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22TranscriptionViewModelC5StateOGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for TranscriptionViewModel.isGibberish : TranscriptionViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = TranscriptionViewModel.isGibberish.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*TranscriptionViewModel.isGibberish.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t TranscriptionViewModel.$isGibberish.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$isGibberish.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t TranscriptionViewModel.$captions.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit22TranscriptionViewModelC7CaptionVG_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$captions.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit22TranscriptionViewModelC7CaptionVG_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for TranscriptionViewModel.hidePrivacySensitiveContent : TranscriptionViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = TranscriptionViewModel.hidePrivacySensitiveContent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*TranscriptionViewModel.hidePrivacySensitiveContent.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t TranscriptionViewModel.$hidePrivacySensitiveContent.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$hidePrivacySensitiveContent.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for TranscriptionViewModel.initialScreeningResponse : TranscriptionViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptionViewModel.initialScreeningResponse.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*TranscriptionViewModel.initialScreeningResponse.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t TranscriptionViewModel.$initialScreeningResponse.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t TranscriptionViewModel.$initialScreeningResponse.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t TranscriptionViewModel.config.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel_config);

  return v1;
}

uint64_t TranscriptionViewModel.init(config:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_1();
  v47 = v4;
  v48 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  OUTLINED_FUNCTION_1();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v41 = v12;
  v42 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v39 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22TranscriptionViewModelC5StateOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__callUUID;
  v51 = 0;
  v52 = 0xE000000000000000;
  Published.init(initialValue:)();
  v23 = *(v18 + 32);
  v23(v2 + v22, v21, v16);
  v24 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__callerDisplayName;
  v51 = 0;
  v52 = 0xE000000000000000;
  Published.init(initialValue:)();
  v23(v2 + v24, v21, v16);
  LOBYTE(v51) = 0;
  Published.init(initialValue:)();
  v25 = OUTLINED_FUNCTION_75_1();
  v26(v25);
  v27 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__isGibberish;
  LOBYTE(v51) = 0;
  v28 = v40;
  Published.init(initialValue:)();
  v29 = v42;
  v30 = *(v41 + 32);
  v30(v2 + v27, v28, v42);
  v31 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__captions;
  v51 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
  v32 = v43;
  Published.init(initialValue:)();
  (*(v44 + 32))(v2 + v31, v32, v45);
  v33 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__hidePrivacySensitiveContent;
  LOBYTE(v51) = 1;
  Published.init(initialValue:)();
  v30(v2 + v33, v28, v29);
  v34 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__initialScreeningResponse;
  v51 = 0;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v35 = v46;
  Published.init(initialValue:)();
  (*(v47 + 32))(v2 + v34, v35, v48);
  v36 = (v2 + OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel_config);
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  return v2;
}

uint64_t TranscriptionViewModel.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_75_1();
  v3(v4);
  (v3)(v0 + OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__callerDisplayName, v1);
  v5 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22TranscriptionViewModelC5StateOGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_7_0();
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_75_1();
  v9(v10);
  v11 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__captions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v12 + 8))(v0 + v11);
  (v9)(v0 + OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__hidePrivacySensitiveContent, v7);
  v13 = OBJC_IVAR____TtC15ConversationKit22TranscriptionViewModel__initialScreeningResponse;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v14 + 8))(v0 + v13);

  return v0;
}

uint64_t TranscriptionViewModel.__deallocating_deinit()
{
  TranscriptionViewModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type TranscriptionViewModel.State and conformance TranscriptionViewModel.State()
{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel.State and conformance TranscriptionViewModel.State;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel.State and conformance TranscriptionViewModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel.State and conformance TranscriptionViewModel.State);
  }

  return result;
}

void type metadata completion function for TranscriptionViewModel()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<String>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<TranscriptionViewModel.State>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<[TranscriptionViewModel.Caption]>, &_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata completion function for TranscriptionViewModel.Caption()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [_NSRange]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [_NSRange]()
{
  if (!lazy cache variable for type metadata for [_NSRange])
  {
    type metadata accessor for _NSRange(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_NSRange]);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TranscriptionViewModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t ShareScreenButtonConfig.buttonConfig.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v0, v1);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
}

uint64_t key path getter for ShareScreenButtonConfig.buttonConfig : ShareScreenButtonConfig@<X0>(uint64_t *a1@<X8>)
{
  result = ShareScreenButtonConfig.buttonConfig.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ShareScreenButtonConfig()
{
  result = type metadata singleton initialization cache for ShareScreenButtonConfig;
  if (!type metadata singleton initialization cache for ShareScreenButtonConfig)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareScreenButtonConfig.buttonConfig.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_13_78();
    specialized ShareScreenButtonConfig.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t ShareScreenButtonConfig.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized ShareScreenButtonConfig.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ShareScreenButtonConfig.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*ShareScreenButtonConfig.buttonConfig.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23ShareScreenButtonConfig___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_211();
  v7 = lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return ShareScreenButtonConfig.buttonConfig.modify;
}

uint64_t ShareScreenButtonConfig.menuItems.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v0, v1);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
}

uint64_t key path getter for ShareScreenButtonConfig.menuItems : ShareScreenButtonConfig@<X0>(uint64_t *a1@<X8>)
{
  result = ShareScreenButtonConfig.menuItems.getter();
  *a1 = result;
  return result;
}

uint64_t ShareScreenButtonConfig.menuItems.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_13_78();
    specialized ShareScreenButtonConfig.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t closure #1 in ShareScreenButtonConfig.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void (*ShareScreenButtonConfig.menuItems.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23ShareScreenButtonConfig___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_211();
  v7 = lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return ShareScreenButtonConfig.menuItems.modify;
}

uint64_t ShareScreenButtonConfig.didTapAskToScreenShare.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_211();
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v1, v2);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
  v3 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v3;
}

uint64_t key path getter for ShareScreenButtonConfig.didTapAskToScreenShare : ShareScreenButtonConfig@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = ShareScreenButtonConfig.didTapAskToScreenShare.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant) -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for ShareScreenButtonConfig.didTapAskToScreenShare : ShareScreenButtonConfig(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant) -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return ShareScreenButtonConfig.didTapAskToScreenShare.setter(v4);
}

uint64_t ShareScreenButtonConfig.didTapAskToScreenShare.setter(uint64_t a1)
{
  swift_getKeyPath();
  specialized ShareScreenButtonConfig.withMutation<A, B>(keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

uint64_t ShareScreenButtonConfig.didTapAskToScreenShare.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void (*ShareScreenButtonConfig.didTapAskToScreenShare.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23ShareScreenButtonConfig___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_211();
  v7 = lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return ShareScreenButtonConfig.didTapAskToScreenShare.modify;
}

uint64_t ShareScreenButtonConfig.__allocating_init(buttonConfig:menuItems:didTapAskToScreenShare:)()
{
  OUTLINED_FUNCTION_17_6();
  v0 = swift_allocObject();
  ShareScreenButtonConfig.init(buttonConfig:menuItems:didTapAskToScreenShare:)();
  return v0;
}

void *ShareScreenButtonConfig.init(buttonConfig:menuItems:didTapAskToScreenShare:)()
{
  OUTLINED_FUNCTION_17_6();
  v0[4] = 0;
  v0[5] = 0;
  ObservationRegistrar.init()();
  v0[2] = v3;
  v0[3] = v2;

  ShareScreenButtonConfig.didTapAskToScreenShare.setter(v1);

  return v0;
}

uint64_t ShareScreenButtonConfig.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));
  v1 = OBJC_IVAR____TtC15ConversationKit23ShareScreenButtonConfig___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ShareScreenButtonConfig.__deallocating_deinit()
{
  ShareScreenButtonConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShareScreenButton.state.getter()
{
  ShareScreenButtonConfig.buttonConfig.getter();
  IconButtonConfig.stateHolder.getter();

  StateHolder.state.getter();

  return v1;
}

uint64_t ShareScreenButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy15ConversationKit15ScreenShareMenu33_B155EFFAAEA653D3D044D681EEEC2C88LLV014CommunicationsB010IconButtonVyAF0iJ11ActionStateVG_GMd);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - v11);
  v13 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_16;
  }

  while (((*(*static Defaults.shared + 168))() & 1) != 0)
  {
    v25 = v9;

    v9 = a1;
    v19 = *(ShareScreenButtonConfig.menuItems.getter() + 16);

    if (!v19)
    {

      break;
    }

    v24 = v5;
    ShareScreenButtonConfig.buttonConfig.getter();
    IconButtonConfig.stateHolder.getter();

    StateHolder.state.getter();

    if (v27)
    {

LABEL_12:
      v5 = v24;
      break;
    }

    v22 = v9;
    v23 = v3;
    v20 = ShareScreenButtonConfig.menuItems.getter();
    v5 = 0;
    a1 = *(v20 + 16);
    v3 = (v18 + 1);
    while (1)
    {
      if (a1 == v5)
      {

        *v12 = v22;
        v12[1] = 0x402C000000000000;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ScreenShareMenu and conformance ScreenShareMenu();
        OUTLINED_FUNCTION_4_144(&lazy protocol witness table cache variable for type IconButton<ShareMenuActionState> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
        return _ConditionalContent<>.init(storage:)();
      }

      if (v5 >= *(v20 + 16))
      {
        break;
      }

      outlined init with copy of Participant(v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v5++, v18);
      v9 = *(v3 + *(v13 + 24));
      outlined destroy of Participant(v18);
      if ((v9 & 1) == 0)
      {

        v3 = v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  ShareScreenButtonConfig.buttonConfig.getter();
  IconButton.init(config:action:)();
  (*(v5 + 16))(v12, v8, v3);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ScreenShareMenu and conformance ScreenShareMenu();
  OUTLINED_FUNCTION_4_144(&lazy protocol witness table cache variable for type IconButton<ShareMenuActionState> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
  _ConditionalContent<>.init(storage:)();
  return (*(v5 + 8))(v8, v3);
}

uint64_t ScreenShareMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v14 = a2;
  v15 = type metadata accessor for MenuOrder();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI8IconMenuVy15ConversationKit05ShareD11ActionStateV05SwiftB09TupleViewVyAG6ButtonVyAG4TextVG_AG19_ConditionalContentVyAG08ModifiedP0VyAnG32_EnvironmentKeyTransformModifierVySbGGAG0D0VyAmG7ForEachVySayAD11ParticipantVGA0_AVGGGtGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ShareScreenButtonConfig.buttonConfig.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AA19_ConditionalContentVyAA08ModifiedH0VyAhA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAgA7ForEachVySay15ConversationKit11ParticipantVGAwPGGGtGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AA19_ConditionalContentVyAA08ModifiedH0VyAhA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAgA7ForEachVySay15ConversationKit11ParticipantVGAwPGGGtGMd);
  IconMenu.init(config:content:)();
  static MenuOrder.fixed.getter();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconMenu<ShareMenuActionState, TupleView<(Button<Text>, _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>)>> and conformance IconMenu<A, B>, &_s16CommunicationsUI8IconMenuVy15ConversationKit05ShareD11ActionStateV05SwiftB09TupleViewVyAG6ButtonVyAG4TextVG_AG19_ConditionalContentVyAG08ModifiedP0VyAnG32_EnvironmentKeyTransformModifierVySbGGAG0D0VyAmG7ForEachVySayAD11ParticipantVGA0_AVGGGtGGMd);
  View.menuOrder(_:)();
  (*(v5 + 8))(v7, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in ScreenShareMenu.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAiA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;

  Button.init(action:label:)();
  ShareScreenButtonConfig.menuItems.getter();
  ScreenShareMenu.askToShareScreenMenu(participants:)(a1, v11, a3);

  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  outlined init with copy of _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>(v11, v8, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAiA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGMd);
  v20(a2, v15, v12);
  v21 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVG_AA19_ConditionalContentVyAA08ModifiedF0VyAfA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAeA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGtMd) + 48)];
  outlined init with copy of _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>(v8, v21, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAiA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGMd);
  outlined destroy of CallControlsService?(v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAiA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGMd);
  v22 = *(v13 + 8);
  v22(v18, v12);
  outlined destroy of CallControlsService?(v8, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAiA7ForEachVySay15ConversationKit11ParticipantVGAuNGGGMd);
  return (v22)(v15, v12);
}

uint64_t ScreenShareMenu.askToShareScreenMenu(participants:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay15ConversationKit11ParticipantVGAjA15ModifiedContentVyAA6ButtonVyAEGAA32_EnvironmentKeyTransformModifierVySbGGGGMd);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA4MenuVyAkA7ForEachVySay15ConversationKit11ParticipantVGAwPGG_GMd);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for Participant(0);
  v39 = *(v19 - 8);
  v20 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v40 = &v39 - v23;
  v24 = *(ShareScreenButtonConfig.menuItems.getter() + 16);

  if (v24 != 1)
  {
    goto LABEL_4;
  }

  v26 = ShareScreenButtonConfig.menuItems.getter();
  specialized Collection.first.getter(v26, v18);

  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    v25 = outlined destroy of CallControlsService?(v18, &_s15ConversationKit11ParticipantVSgMd);
LABEL_4:
    MEMORY[0x1EEE9AC00](v25);
    *(&v39 - 2) = a1;
    *(&v39 - 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit11ParticipantVGAfA15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGGMd);
    lazy protocol witness table accessor for type ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> ForEach<A, B, C>();
    Menu.init(content:label:)();
    v27 = v46;
    (*(v46 + 16))(v9, v7, v5);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay15ConversationKit11ParticipantVGAjA15ModifiedContentVyAA6ButtonVyAEGAA32_EnvironmentKeyTransformModifierVySbGGGGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v7, v5);
  }

  v29 = v40;
  outlined init with take of Participant(v18, v40);
  outlined init with copy of Participant(v29, v21);
  v30 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a3;
  outlined init with take of Participant(v21, v31 + v30);

  v32 = v42;
  Button.init(action:label:)();
  if (Participant.isActive.getter())
  {
    v33 = Participant.isRequestToScreenShareAvailable.getter() ^ 1;
  }

  else
  {
    v33 = 1;
  }

  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v33 & 1;
  v36 = v41;
  (*(v43 + 32))(v41, v32, v44);
  v37 = (v36 + *(v12 + 36));
  *v37 = KeyPath;
  v37[1] = partial apply for closure #1 in View.disabled(_:);
  v37[2] = v35;
  v38 = v45;
  outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>(v36, v45);
  outlined init with copy of _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>(v38, v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay15ConversationKit11ParticipantVGAjA15ModifiedContentVyAA6ButtonVyAEGAA32_EnvironmentKeyTransformModifierVySbGGGGMd);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of CallControlsService?(v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  return outlined destroy of Participant(v29);
}

uint64_t closure #1 in ScreenShareMenu.screenShareMenuItem()()
{
  ShareScreenButtonConfig.buttonConfig.getter();
  v0 = IconButtonConfig.didTap.getter();

  v0(v1);
}

uint64_t closure #2 in ScreenShareMenu.screenShareMenuItem()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x794D206572616853;
  v3._object = 0xEF6E656572635320;
  v4.value._countAndFlagsBits = 0x61737265766E6F43;
  v4.value._object = 0xEF74694B6E6F6974;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #3 in ScreenShareMenu.askToShareScreenMenu(participants:)(uint64_t a1, double a2)
{
  ShareScreenButtonConfig.menuItems.getter();
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [Participant] and conformance [A], &_sSay15ConversationKit11ParticipantVGMd);
  lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #3 in ScreenShareMenu.askToShareScreenMenu(participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-v13];
  outlined init with copy of Participant(a1, &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a4;
  outlined init with take of Participant(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v23 = a1;

  Button.init(action:label:)();
  if (Participant.isActive.getter())
  {
    v17 = Participant.isRequestToScreenShareAvailable.getter() ^ 1;
  }

  else
  {
    v17 = 1;
  }

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17 & 1;
  (*(v12 + 32))(a3, v14, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v21 = (a3 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = closure #1 in View.disabled(_:)partial apply;
  v21[2] = v19;
  return result;
}

void (*closure #1 in ScreenShareMenu.askToShareScreenMenu(participants:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  result = ShareScreenButtonConfig.didTapAskToScreenShare.getter();
  if (result)
  {
    v4 = result;
    result(a2);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  return result;
}

uint64_t closure #2 in ScreenShareMenu.askToShareScreenMenu(participants:)@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4FE020;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenShareMenu and conformance ScreenShareMenu()
{
  result = lazy protocol witness table cache variable for type ScreenShareMenu and conformance ScreenShareMenu;
  if (!lazy protocol witness table cache variable for type ScreenShareMenu and conformance ScreenShareMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenShareMenu and conformance ScreenShareMenu);
  }

  return result;
}

uint64_t type metadata completion function for ShareScreenButtonConfig()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ScreenShareMenu, IconButton<ShareMenuActionState>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ScreenShareMenu, IconButton<ShareMenuActionState>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ScreenShareMenu, IconButton<ShareMenuActionState>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy15ConversationKit15ScreenShareMenu33_B155EFFAAEA653D3D044D681EEEC2C88LLV014CommunicationsB010IconButtonVyAD0hI11ActionStateVGGMd);
    lazy protocol witness table accessor for type ScreenShareMenu and conformance ScreenShareMenu();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<ShareMenuActionState> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ScreenShareMenu, IconButton<ShareMenuActionState>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Menu<Text, ForEach<[Participant], Participant, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ShareScreenButtonConfig and conformance ShareScreenButtonConfig(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_17Tm()
{
  v1 = type metadata accessor for Participant(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v14 + 8))(v0 + v2);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v16 = v3 + *(v15 + 48);

      if (*(v16 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v16 + 96);
      }

      if (*(v16 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v15 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = v1[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v3 + v5);
  v7 = (v3 + v1[7]);
  if (*v7)
  {
  }

  v8 = v3 + v1[14];
  v9 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    OUTLINED_FUNCTION_2_3();
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v11, 1, v9))
  {
    OUTLINED_FUNCTION_2_3();
    (*(v12 + 8))(v8 + v11, v9);
  }

  return swift_deallocObject();
}

double AspectRatio.portrait.getter()
{
  result = *v0;
  if (*(v0 + 32))
  {
    return 1.0;
  }

  return result;
}

BOOL static AspectRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 1.0;
  if (*(a1 + 32))
  {
    v2 = 1.0;
    v3 = 1.0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a2 + 32))
  {
    v5 = 1.0;
    v6 = 1.0;
  }

  if (v2 != v5 || v3 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v8 = 1.0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = *(a2 + 16);
  }

  if (v8 != v4)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v10 = *(a1 + 24);
  if (*(a2 + 32))
  {
    v9 = 1.0;
  }

  if (*(a1 + 32))
  {
    v10 = 1.0;
  }

  return v10 == v9;
}

double AspectRatio.landscape.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 32))
  {
    return 1.0;
  }

  return result;
}

uint64_t AspectRatio.debugDescription.getter()
{
  if (*(v0 + 32))
  {
    return 0x6572617571732ELL;
  }

  _StringGuts.grow(_:)(17);
  MEMORY[0x1BFB20B10](0x676E61746365722ELL, 0xEB0000000028656CLL);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_4_145();
  MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_4_145();
  return 0;
}

uint64_t AspectRatio.init(with:allowNonSquareSizes:isLocalParticipant:needsLandscapeCameraOrientation:localOrientation:contentsRect:cachedLocalAspectRatio:localOrientationMatchesReceiver:)@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D2>, double a10@<D3>)
{
  if ((a2 & 1) == 0)
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_9;
  }

  if (a3)
  {
    static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(a1, a5, a4 & 1, a6, a7, &v39);
    v12 = v39;
    v13 = v40;
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v17 = v44;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationKit);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v35 = v17;
      v36 = v16;
      v37 = v15;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      v34 = v14;
      if (v14)
      {
        v23 = 0xE300000000000000;
        v24 = 7104878;
      }

      else
      {
        v39 = v12;
        v40 = v13;
        type metadata accessor for CGSize(0);
        v24 = String.init<A>(reflecting:)();
        v23 = v32;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v38);

      *(v21 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Updating the local video aspect ratio to %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);

      result = __swift_destroy_boxed_opaque_existential_1(a1);
      v16 = v36;
      v15 = v37;
      v17 = v35;
      if ((v34 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 1;
      goto LABEL_31;
    }

    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    static AspectRatio.remoteAspectRatios(with:contentsRect:)(a1, &v39, a9, a10);
    v12 = v39;
    v13 = v40;
    v31 = v41;
    v15 = v42;
    v16 = v43;
    v17 = v44;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (v31)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  if (v17)
  {
    v28 = v13;
  }

  else
  {
    v28 = v15;
  }

  if (v17)
  {
    v29 = v12;
  }

  else
  {
    v29 = v16;
  }

  if (v12 == v13)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v12;
  }

  if (v12 == v13)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v13;
  }

  if (v12 == v13)
  {
    v28 = 0.0;
    v29 = 0.0;
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

LABEL_31:
  *a8 = v26;
  *(a8 + 8) = v27;
  *(a8 + 16) = v28;
  *(a8 + 24) = v29;
  *(a8 + 32) = v30;
  return result;
}

uint64_t static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v43 = 0uLL;
  v44 = 1;
  outlined init with copy of IDSLookupManager(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for RemoteParticipantVideoProvider();
  if (swift_dynamicCast())
  {

    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v40 = COERCE_DOUBLE((*(v14 + 112))(v13, v14));
  }

  else
  {
    OUTLINED_FUNCTION_2_167(a1);
    v24 = OUTLINED_FUNCTION_0_212();
    v40 = COERCE_DOUBLE(v25(v24));
  }

  v17 = v15;
  v18 = v16;
  OUTLINED_FUNCTION_2_167(a1);
  v19 = OUTLINED_FUNCTION_0_212();
  *&v21 = COERCE_DOUBLE(v20(v19));
  v26 = v21;
  v27 = v22;
  if ((a2 | 2) == 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = a3;
  }

  if (a5 != 2 && (a5 & 1) != 0)
  {
    if (a2 != 1)
    {
      if (!((a2 != 3 || (v23 & 1) == 0) | v18 & 1))
      {
        OUTLINED_FUNCTION_3_159();
LABEL_23:
        if (!((a2 != 3) | v28 & 1))
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }

      if (a2)
      {
        if (((a2 == 2) & v18) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v23)
      {
        goto LABEL_30;
      }

      v18 = 0;
      v40 = *&v21;
      v17 = v22;
LABEL_20:
      v6 = v22;
      v7 = *&v21;
      if (a2 == 1)
      {
LABEL_21:
        if ((v28 & 1) == 0)
        {
LABEL_22:
          OUTLINED_FUNCTION_1_179();
          *&v43 = v26;
          *(&v43 + 1) = v27;
          _NF = v6 < v7;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!(v18 & 1 | ((v23 & 1) == 0)))
    {
      OUTLINED_FUNCTION_3_159();
      goto LABEL_21;
    }
  }

LABEL_19:
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  if ((v18 & 1) == 0 && ((v28 ^ 1) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_179();
    *&v43 = v40;
    *(&v43 + 1) = v17;
    _NF = v40 < v17;
LABEL_27:
    v44 = 0;
    if (_NF)
    {
      specialized closure #1 in static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(&v43, a2);
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*(a4 + 33))
  {
    OUTLINED_FUNCTION_1_179();
    __asm { FMOV            V0.2D, #1.0 }

    v43 = _Q0;
  }

  else
  {
    if (*(a4 + 32))
    {
      v34 = 0x3FF0000000000000;
    }

    else
    {
      v34 = *a4;
    }

    if (*(a4 + 32))
    {
      v35 = 0x3FF0000000000000;
    }

    else
    {
      v35 = *(a4 + 8);
    }

    OUTLINED_FUNCTION_1_179();
    *&v43 = v34;
    *(&v43 + 1) = v35;
  }

  v44 = 0;
LABEL_40:
  result = swift_beginAccess();
  v37 = v43;
  v38 = v44;
  *a6 = v43;
  *(a6 + 16) = v38;
  *(a6 + 24) = v37;
  *(a6 + 40) = v38;
  return result;
}

double static AspectRatio.remoteAspectRatios(with:contentsRect:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>)
{
  OUTLINED_FUNCTION_2_167(a1);
  v8 = OUTLINED_FUNCTION_0_212();
  *&v10 = COERCE_DOUBLE(v9(v8));
  if (v12)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = 1;
  }

  else
  {
    v15 = 1;
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = *&v10;
      }

      else
      {
        v13 = 0.0;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    }

    else
    {
      v13 = 0.0;
      v14 = 0.0;
    }
  }

  OUTLINED_FUNCTION_2_167(a1);
  v16 = OUTLINED_FUNCTION_0_212();
  *&v18 = COERCE_DOUBLE(v17(v16));
  if ((v20 & 1) != 0 || (v21 = *&v18, (v18 & 0x7FFFFFFFFFFFFFFFLL) == 0) || (v22 = v19, (*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0))
  {
    v21 = v14;
    v22 = v13;
    if (v15)
    {
      v23 = objc_opt_self();
      v24 = [v23 mainScreen];
      [v24 bounds];
      v26 = v25;
      v28 = v27;

      v13 = v26;
      v14 = v28;
      v29 = [v23 mainScreen];
      [v29 bounds];
      v31 = v30;

      v32 = [v23 mainScreen];
      [v32 bounds];
      v34 = v33;

      v21 = v31;
      v22 = v34;
    }

    goto LABEL_19;
  }

  if (!v15)
  {
LABEL_19:
    v39 = v14;
    v37 = v13;
    goto LABEL_20;
  }

  v35 = [objc_opt_self() mainScreen];
  [v35 bounds];
  v37 = v36;
  v39 = v38;

LABEL_20:
  result = v21 * a3;
  *a2 = v37 * a3;
  *(a2 + 8) = v39 * a4;
  *(a2 + 16) = 0;
  *(a2 + 24) = v21 * a3;
  *(a2 + 32) = v22 * a4;
  *(a2 + 40) = 0;
  return result;
}

uint64_t specialized closure #1 in static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(uint64_t *a1, uint64_t a2)
{
  if (static Platform.current.getter() < 2u || static Platform.current.getter() == 2)
  {
    swift_beginAccess();
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *a1;
    }

    else
    {
      v5 = a1[1];
    }

    if (*(a1 + 16))
    {
      v6 = a1[1];
    }

    else
    {
      v6 = *a1;
    }

    result = swift_beginAccess();
    *a1 = v5;
    a1[1] = v6;
    *(a1 + 16) = v4;
  }

  else
  {
    v8 = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v9 = 0x4008000000000000;
    }

    else
    {
      v9 = 0x4010000000000000;
    }

    if (v8)
    {
      v10 = 0x4010000000000000;
    }

    else
    {
      v10 = 0x4008000000000000;
    }

    result = swift_beginAccess();
    *a1 = v9;
    a1[1] = v10;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AspectRatio(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTag for AspectRatio(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AspectRatio(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = v2;
  return result;
}

char *PushToTalkLabelButtonView.init(button:labelText:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v3[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_button] = a1;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for PushToTalkLabelButtonView();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_button];
  v11 = v9;
  [v11 addSubview_];
  v12 = OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label;
  outlined bridged method (mbnn) of @objc UILabel.text.setter(a2, a3, *&v11[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label]);
  v13 = one-time initialization token for buttonLabel;
  v14 = *&v11[v12];
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setFont_];

  [*&v11[v12] setTextAlignment_];
  v15 = one-time initialization token for buttonLabel;
  v16 = *&v11[v12];
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setTextColor_];

  [v11 addSubview_];
  PushToTalkLabelButtonView.setupConstraints()();

  return v11;
}

id PushToTalkLabelButtonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkLabelButtonView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PushToTalkLabelButtonView.setupConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_button];
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4E74B0;
  v4 = [v1 topAnchor];
  v5 = [v0 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v6 = OUTLINED_FUNCTION_1_180();

  *(v3 + 32) = v6;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = OUTLINED_FUNCTION_1_180();

  *(v3 + 40) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = OUTLINED_FUNCTION_1_180();

  *(v3 + 48) = v12;
  v13 = [v1 heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v3 + 56) = v14;
  v15 = [v1 widthAnchor];
  v16 = [v15 constraintEqualToConstant_];

  *(v3 + 64) = v16;
  v17 = [v2 topAnchor];
  v18 = [v1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];

  *(v3 + 72) = v19;
  v20 = [v2 leadingAnchor];
  v21 = OUTLINED_FUNCTION_1_23([v0 leadingAnchor]);

  *(v3 + 80) = v21;
  v22 = [v2 trailingAnchor];
  v23 = OUTLINED_FUNCTION_1_23([v0 trailingAnchor]);

  *(v3 + 88) = v23;
  v24 = [v2 bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v3 + 96) = v26;
  v27 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

id PushToTalkLabelButtonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PushToTalkLabelButtonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkLabelButtonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallControlTextButton.init(config:)()
{
  type metadata accessor for CallControlsTextButtonConfiguration(0);
  OUTLINED_FUNCTION_0_213();
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v0, v1);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t CallControlTextButtonStyle.init(tint:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for CallControlTextButtonStyle(0);
  return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a2, a3 + *(v5 + 20), &_s7SwiftUI10ButtonRoleVSgMd);
}

uint64_t CallControlsTextButtonConfiguration.__allocating_init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_9_100();
  v17 = swift_allocObject();
  CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v15, v14, v13, v12, v11, v10, a7, a8, a9, a10);
  return v17;
}

uint64_t CallControlTextButton.config.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*CallControlTextButton.config.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t CallControlTextButton.$config.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t CallControlTextButton.buttonWithAccessbilityLabel()@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyACyAGyAGyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_15ConversationKit011CallControllkI0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentT0VGAXGAZGA0__GMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);
  Bindable.wrappedValue.getter();
  v10 = CallControlsTextButtonConfiguration.accessibilityLabel.getter();
  v12 = v11;

  CallControlTextButton.buttonWithAccessbilityIdentifier()(v6);
  if (v12)
  {
    v16[2] = v10;
    v16[3] = v12;
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGMd);

    v13 = &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v9, v3, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v14 = v9;
  }

  else
  {
    v13 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, v3, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v14 = v6;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v13);
}

uint64_t CallControlTextButton.buttonWithAccessbilityIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_15ConversationKit011CallControllkI0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentT0VGAX_GMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);
  Bindable.wrappedValue.getter();
  CallControlsTextButtonConfiguration.accessibilityIdentifier.getter();
  v11 = v10;

  CallControlTextButton.button()(v6);
  if (v11)
  {
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityIdentifier(_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    v12 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v9, v3, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v13 = v9;
  }

  else
  {
    v12 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, v3, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v13 = v6;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, v12);
}

uint64_t CallControlsTextButtonConfiguration.accessibilityLabel.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_213();
  v6 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v4, v5);
  OUTLINED_FUNCTION_53_4(v6, v7, v8, v9, v10, v11, v12, v13, v17, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = (v2 + *a2);
  OUTLINED_FUNCTION_22_2();
  v15 = *v14;

  return v15;
}

uint64_t CallControlTextButton.button()@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = type metadata accessor for CallControlTextButtonStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit35CallControlsTextButtonConfigurationCGMd);
  Bindable.wrappedValue.getter();
  v8 = CallControlsTextButtonConfiguration.text.getter();
  v10 = v9;

  v18 = v8;
  v19 = v10;
  Bindable.wrappedValue.getter();

  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  Bindable.wrappedValue.getter();
  outlined init with copy of CallControlTextButtonStyle(v18 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration_buttonStyle, v3);

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type CallControlTextButtonStyle and conformance CallControlTextButtonStyle, type metadata accessor for CallControlTextButtonStyle);
  v11 = v17;
  View.buttonStyle<A>(_:)();
  outlined destroy of CallControlTextButtonStyle(v3, type metadata accessor for CallControlTextButtonStyle);
  (*(v5 + 8))(v7, v4);
  Bindable.wrappedValue.getter();
  v12 = CallControlsTextButtonConfiguration.enabled.getter();

  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v12 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  v16 = (v11 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = partial apply for closure #1 in View.disabled(_:);
  v16[2] = v14;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.text.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_213();
  v3 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v1, v2);
  OUTLINED_FUNCTION_53_4(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = (v0 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__text);
  OUTLINED_FUNCTION_22_2();
  v12 = *v11;

  return v12;
}

uint64_t CallControlsTextButtonConfiguration.enabled.getter()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_213();
  v4 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  OUTLINED_FUNCTION_53_4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__enabled;
  swift_beginAccess();
  return *(v1 + v12);
}

uint64_t key path getter for CallControlsTextButtonConfiguration.text : CallControlsTextButtonConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlsTextButtonConfiguration.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CallControlsTextButtonConfiguration.text : CallControlsTextButtonConfiguration(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallControlsTextButtonConfiguration.text.setter(v1, v2);
}

uint64_t CallControlsTextButtonConfiguration.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__text);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallControlsTextButtonConfiguration.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CallControlsTextButtonConfiguration.text.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_213();
  v2 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v0, v1);
  OUTLINED_FUNCTION_53_4(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t closure #1 in CallControlsTextButtonConfiguration.text.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__text);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t specialized CallControlsTextButtonConfiguration.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_213();
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallControlsTextButtonConfiguration.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_213();
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallControlsTextButtonConfiguration.text.modify()
{
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_213();
  v4 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_6_121();
  return OUTLINED_FUNCTION_11_104();
}

uint64_t key path getter for CallControlsTextButtonConfiguration.accessibilityLabel : CallControlsTextButtonConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlsTextButtonConfiguration.accessibilityLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.accessibilityLabel.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.accessibilityLabel.modify()
{
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_213();
  v4 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_6_121();
  return OUTLINED_FUNCTION_11_104();
}

uint64_t key path getter for CallControlsTextButtonConfiguration.accessibilityIdentifier : CallControlsTextButtonConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlsTextButtonConfiguration.accessibilityIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CallControlsTextButtonConfiguration.accessibilityLabel : CallControlsTextButtonConfiguration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t CallControlsTextButtonConfiguration.accessibilityLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  if (specialized CaptionsStateSource.shouldNotifyObservers<A>(_:_:)(*v6, v6[1], a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallControlsTextButtonConfiguration.withMutation<A, B>(keyPath:_:)();
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
  }
}

uint64_t closure #1 in CallControlsTextButtonConfiguration.accessibilityLabel.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t CallControlsTextButtonConfiguration.accessibilityIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_213();
  v4 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_6_121();
  return OUTLINED_FUNCTION_11_104();
}

uint64_t key path getter for CallControlsTextButtonConfiguration.enabled : CallControlsTextButtonConfiguration@<X0>(_BYTE *a1@<X8>)
{
  result = CallControlsTextButtonConfiguration.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.enabled.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__enabled;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallControlsTextButtonConfiguration.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in CallControlsTextButtonConfiguration.enabled.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__enabled;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t CallControlsTextButtonConfiguration.enabled.modify()
{
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_213();
  v4 = lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_6_121();
  return OUTLINED_FUNCTION_11_104();
}

uint64_t CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_9_100();
  v17 = (v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__accessibilityLabel);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__accessibilityIdentifier);
  *v18 = 0;
  v18[1] = 0;
  ObservationRegistrar.init()();
  outlined init with take of CallControlTextButtonStyle(v16, v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration_buttonStyle);
  v19 = (v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__text);
  *v19 = v15;
  v19[1] = v14;

  *v17 = v13;
  v17[1] = v12;

  *v18 = v11;
  v18[1] = a7;
  *(v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__enabled) = a8;
  v20 = (v10 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration_didTap);
  *v20 = a9;
  v20[1] = a10;
  return v10;
}

uint64_t outlined init with copy of CallControlTextButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallControlTextButtonStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CallControlTextButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallControlTextButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CallControlsTextButtonConfiguration.deinit()
{
  outlined destroy of CallControlTextButtonStyle(v0 + OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration_buttonStyle, type metadata accessor for CallControlTextButtonStyle);
  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__text);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__accessibilityLabel);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration__accessibilityIdentifier);

  OUTLINED_FUNCTION_17_8(OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration_didTap);

  v1 = OBJC_IVAR____TtC15ConversationKit35CallControlsTextButtonConfiguration___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CallControlsTextButtonConfiguration.__deallocating_deinit()
{
  CallControlsTextButtonConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallControlTextButtonStyle.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallControlTextButtonStyle(0) + 20);

  return outlined init with copy of ButtonRole?(v3, a1);
}

uint64_t outlined init with copy of ButtonRole?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CallControlTextButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v4 = type metadata accessor for CallControlTextButtonDefaultStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v27 - v19;
  (*(v10 + 16))(v13, a1, v8, v18);
  Button<>.init(_:)();
  v21 = *v2;
  v22 = type metadata accessor for CallControlTextButtonStyle(0);
  outlined init with copy of ButtonRole?(v2 + *(v22 + 20), v7 + *(v4 + 20));
  *v7 = v21;
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v23, &_s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_4_146();
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(v24, v25);

  View.buttonStyle<A>(_:)();
  outlined destroy of CallControlTextButtonStyle(v7, type metadata accessor for CallControlTextButtonDefaultStyle);
  return (*(v16 + 8))(v20, v14);
}

uint64_t lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of CallControlTextButtonStyle(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

void type metadata completion function for CallControlTextButton()
{
  type metadata accessor for Bindable<CallControlsTextButtonConfiguration>(319, &lazy cache variable for type metadata for Bindable<CallControlsTextButtonConfiguration>, type metadata accessor for CallControlsTextButtonConfiguration, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for CallControlsTextButtonConfiguration()
{
  result = type metadata accessor for CallControlTextButtonStyle(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata accessor for Bindable<CallControlsTextButtonConfiguration>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyACyAEyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGAZGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGAXGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAA4TextVG_15ConversationKit011CallControlkjH0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentS0VGAVGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_26Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for CallControlTextButtonStyle()
{
  type metadata accessor for Bindable<CallControlsTextButtonConfiguration>(319, &lazy cache variable for type metadata for ButtonRole?, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t CallControlTextButtonDefaultStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewP014CommunicationsB0E17acceptsFirstMouseQryFQOyAA15ModifiedContentVyAIyAIyAA09PrimitiveC18StyleConfigurationV5LabelVAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_GMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v12);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP014CommunicationsB0E17acceptsFirstMouseQryFQOyAA15ModifiedContentVyAGyAGyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_Md);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  v18 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v32 = v17;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.acceptsFirstMouse()>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewP014CommunicationsB0E17acceptsFirstMouseQryFQOyAA15ModifiedContentVyAIyAIyAA09PrimitiveC18StyleConfigurationV5LabelVAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_GMd);
  lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
  v19 = v29;
  v20 = v27;
  View.buttonStyle<A>(_:)();
  (*(v28 + 8))(v6, v20);
  (*(v11 + 8))(v14, v10);
  v21 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
  static ButtonBorderShape.capsule.getter();
  *v21 = swift_getKeyPath();
  v22 = *v30;
  KeyPath = swift_getKeyPath();
  v32 = v22;

  v24 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGAUyAA03AnyzG0VSgGGMd);
  v26 = (v19 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  return result;
}

uint64_t closure #1 in CallControlTextButtonDefaultStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v42 = type metadata accessor for PrimitiveButtonStyleConfiguration.Label();
  v1 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v40 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGMd);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v40 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v40 - v8;
  PrimitiveButtonStyleConfiguration.label.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  v40 = xmmword_1BC4BAA20;
  *(inited + 16) = xmmword_1BC4BAA20;
  v11 = static Edge.Set.leading.getter();
  *(inited + 32) = v11;
  v12 = static Edge.Set.trailing.getter();
  *(inited + 33) = v12;
  v13 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v1 + 32))(v5, v3, v42);
  v22 = &v5[*(v41 + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = swift_initStackObject();
  *(v23 + 16) = v40;
  v24 = static Edge.Set.top.getter();
  *(v23 + 32) = v24;
  v25 = static Edge.Set.bottom.getter();
  *(v23 + 33) = v25;
  v26 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v5, v7, &_s7SwiftUI15ModifiedContentVyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGMd);
  v35 = &v7[*(v43 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  static Font.subheadline.getter();
  v36 = Font.bold()();

  KeyPath = swift_getKeyPath();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v7, v9, &_s7SwiftUI15ModifiedContentVyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGMd);
  v38 = &v9[*(v44 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.acceptsFirstMouse()();
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v9);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGMd);
    lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type PrimitiveButtonStyleConfiguration.Label and conformance PrimitiveButtonStyleConfiguration.Label, MEMORY[0x1E697CC80]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues._buttonBorderShape : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA33PrimitiveButtonStyleConfigurationV5LabelVAA14_PaddingLayoutVGAIGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewP014CommunicationsB0E17acceptsFirstMouseQryFQOyAA15ModifiedContentVyAIyAIyAA09PrimitiveC18StyleConfigurationV5LabelVAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_GMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.acceptsFirstMouse()>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewP014CommunicationsB0E17acceptsFirstMouseQryFQOyAA15ModifiedContentVyAIyAIyAA09PrimitiveC18StyleConfigurationV5LabelVAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_GMd);
    lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id CallsControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = one-time initialization token for shared;
  v8 = static Features.shared;
  if (v7 != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();

  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v9 = type metadata accessor for Features();
  v10 = [objc_allocWithZone(v9) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E6995EE0];
  v13 = (v11 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v13[3] = v0;
  v13[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v15 = (v11 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v15[3] = v9;
  v15[4] = &protocol witness table for Features;
  *v15 = v10;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  (*(v2 + 8))(v6, v0);
  return v8;
}

void CallsControlsRecipeGenerator.makeIncomingCall(using:isThirdParty:)()
{
  OUTLINED_FUNCTION_29();
  v223 = v0;
  v218 = v1;
  v225 = v2;
  v226 = v3;
  v5 = v4;
  v229 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  v10 = OUTLINED_FUNCTION_16(v9);
  v216 = type metadata accessor for SystemApertureIcon(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v208 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v23);
  v24 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v208 - v27;
  v29 = type metadata accessor for ConversationControlsAction();
  v219 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = MEMORY[0x1E69E7D40];
  v34 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2A0))();
  v36 = v35;
  ObjectType = swift_getObjectType();
  v38 = *(v36 + 112);
  v231 = ObjectType;
  v232 = v36;
  if ((v38(ObjectType, v36) & 1) == 0)
  {
    v209 = v14;
    v43 = *((*v33 & *v5) + 0x2C0);
    v230 = v5;
    v44 = v43();
    v217 = v24;
    v215 = v28;
    v222 = v32;
    v228 = v34;
    v210 = v17;
    if (v44)
    {
      v45 = v44;
      v46 = [v44 link];

      OUTLINED_FUNCTION_79_14();
      if (v46 && (outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v46, &selRef_displayName), v47))
      {

        v48 = 1;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = 0;
      OUTLINED_FUNCTION_79_14();
    }

    v49 = *(v232 + 72);
    v50 = v49(v231);
    v52 = v51;
    v53 = v43();
    if (v53)
    {
      v54 = v53;

      v55 = v223;
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v56 = [v54 remoteMembers], type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), lazy protocol witness table accessor for type TUConversationMember and conformance NSObject(), v57 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v56, v58 = specialized Set.count.getter(v57), , v58 > 1))
      {
        v59 = &selRef_inCallDisplayName;
      }

      else
      {
        v59 = &selRef_displayName;
      }

      v60 = [v54 *v59];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v61;
    }

    else
    {
      v55 = v223;
    }

    if ((v48 | v5))
    {

      v62 = v228;
      v50 = (v49)(v231, v232);
      v52 = v63;
      v64 = v222;
    }

    else
    {
      v64 = v222;
      v62 = v228;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v65._countAndFlagsBits = v50;
    v65._object = v52;
    v66.super.isa = NSAttributedString.__allocating_init(string:)(v65).super.isa;
    OUTLINED_FUNCTION_39_22(v66.super.isa);
    v67 = v230;
    v68 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v230);
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (!v69)
    {
LABEL_34:
      v89 = Features.callManagerEnabled.getter();
      v214 = v68;
      if (v89 & 1) != 0 && (TUCallCenter.needsMultipleRejection.getter(), (v90))
      {
        static ConversationControlsAction.acceptAndDeclineCall(controlsManager:)(v67, v64);
      }

      else
      {
        static ConversationControlsAction.acceptCall(controlsManager:)(v67, v64);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
      v91 = *(v219 + 72);
      v92 = (*(v219 + 80) + 32) & ~*(v219 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1BC4BAA20;
      v94 = (OUTLINED_FUNCTION_88_8(v93) + v92);
      static ConversationControlsAction.rejectCall(controlsManager:)(v67, v94);
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v64, &v94[v91]);
      if (v5)
      {
        v213 = 0;
        v212 = 0;
        v211 = 0;
        OUTLINED_FUNCTION_84_8(v235);
        v237 = v95;
        v96 = v232;
      }

      else
      {
        OUTLINED_FUNCTION_84_8(v235);
        v237 = 7;
        v96 = v232;
        v213 = CallsControlsRecipeGenerator.subtitleBadgeView(incomingCall:)(v62, v232);
        v212 = v97;
        v211 = v98;
      }

      v99 = type metadata accessor for AttributedString();
      v100 = v227;
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v99);
      specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(v62, v67, v5 & 1, v55, v231, v96);
      v105 = v104;
      ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v67, v104);
      v107 = v106;
      v109 = v108;
      v111 = v110;

      v64 = v217;
      v112 = *(v217 + 36);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v99);
      v116 = (v33 + *(v64 + 40));
      v117 = v33 + *(v64 + 60);
      *(v117 + 32) = 0;
      *v117 = 0u;
      *(v117 + 16) = 0u;
      *(v117 + 40) = -2;
      *(v33 + *(v64 + 64)) = 0;
      v118 = v33 + *(v64 + 68);
      v119 = (v33 + *(v64 + 72));
      *v119 = 1;
      OUTLINED_FUNCTION_13_7(v119, 0);
      outlined init with copy of ConversationControlsType(v235, v33);
      *(v33 + 48) = 0u;
      *(v33 + 64) = 0u;
      OUTLINED_FUNCTION_30_5();
      *(v33 + 80) = v121;
      *(v33 + 88) = v120;
      v122 = v212;
      *v116 = v213;
      v116[1] = v122;
      v116[2] = v211;
      OUTLINED_FUNCTION_39_22(v121);
      outlined assign with copy of AttributedString?(v100, v33 + v112);
      *(v33 + *(v64 + 44)) = 2;
      *(v33 + *(v64 + 48)) = 0;
      *(v33 + *(v64 + 52)) = 1;
      *(v33 + *(v64 + 56)) = 1;
      *v118 = v107;
      *(v118 + 8) = v109;
      *(v118 + 16) = v111 & 1;
      v123 = v219;
      v62 = *(v219 + 16);
      if (v62 <= 2)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v235);
        *v117 = v123;
        *(v117 + 8) = 0u;
        *(v117 + 24) = 0u;
        *(v117 + 40) = 0;
        OUTLINED_FUNCTION_1_181();
        OUTLINED_FUNCTION_26_3();
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v129, v130);
        v131 = OUTLINED_FUNCTION_21_3();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v64);
        OUTLINED_FUNCTION_0_214();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v33, v134);
        v5 = v229;
        OUTLINED_FUNCTION_64_17();
      }

      else
      {
        v5 = v229;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v124 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v124, &static Logger.conversationControls);

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v123 = OUTLINED_FUNCTION_42();
          v117 = OUTLINED_FUNCTION_23();
          v233 = v62;
          v234[0] = v117;
          *v123 = 136315138;
          v127 = String.init<A>(reflecting:)();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v234);

          *(v123 + 4) = v62;
          _os_log_impl(&dword_1BBC58000, v125, v126, "Too many trailing actions (%s)", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v117);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_2_2();
        }

        v135 = OUTLINED_FUNCTION_74_9();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v135, v136);
        outlined destroy of ConversationControlsType(v235);
        v64 = v217;
        OUTLINED_FUNCTION_64_17();
        OUTLINED_FUNCTION_0_214();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v33, v137);
        v33 = v220;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v138, v139, v140, v64);
      }

      v141 = OUTLINED_FUNCTION_18_12();
      if (__swift_getEnumTagSinglePayload(v141, v142, v64) == 1)
      {
        OUTLINED_FUNCTION_7_105();
        OUTLINED_FUNCTION_45_29();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_51_19();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v144, v145, v146, v64);
LABEL_75:
        OUTLINED_FUNCTION_30_0();
        return;
      }

      v147 = OUTLINED_FUNCTION_13_79();
      _s15ConversationKit0A14ControlsRecipeVWObTm_2(v147, v62);
      if (!SBUIIsSystemApertureEnabled())
      {
        OUTLINED_FUNCTION_7_105();
        OUTLINED_FUNCTION_45_29();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_51_19();

LABEL_64:
        OUTLINED_FUNCTION_1_181();
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v62, v5);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v174, v175, v176, v64);
        OUTLINED_FUNCTION_0_214();
        v178 = v62;
LABEL_74:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v178, v177);
        goto LABEL_75;
      }

      v148 = type metadata completion function for SyncedScreeningAlphaGradientView();
      SystemApertureIconFactory.makeStatusIcon(with:for:)(v148, v149, v123);
      OUTLINED_FUNCTION_61_12(v117, 1, &v236);
      if (!v150)
      {
        OUTLINED_FUNCTION_4_147();
        _s15ConversationKit0A14ControlsRecipeVWObTm_2(v117, v210);
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v163 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v163, &static Logger.conversationControls);

        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = OUTLINED_FUNCTION_42();
          v167 = OUTLINED_FUNCTION_23();
          v234[0] = v167;
          v168 = OUTLINED_FUNCTION_92_8(4.8751e-34);

          *(v166 + 4) = v168;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v169, v170, v171, v172, v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v167);
          v123 = v230;
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_26();
        }

        else
        {
        }

        v179 = (*((*MEMORY[0x1E69E7D40] & *v123) + 0x2B0))();
        if (Features.shouldShowFullScreenCallWaiting.getter())
        {
          LODWORD(v230) = 0;
          v180 = 3;
          if ((v179 & 1) == 0)
          {
            v180 = 4;
          }
        }

        else
        {
          if (Features.callManagerEnabled.getter())
          {
            *(v62 + *(v64 + 64)) = 1;
          }

          LODWORD(v230) = v179 & 1;
          v180 = 4;
        }

        v227 = v180;
        specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(v228, v123, v226 & 1, v223, v231, v232);
        v182 = v181;
        ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v123, v181);
        OUTLINED_FUNCTION_18_8();

        v183 = objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallLeadingView());
        v184 = OUTLINED_FUNCTION_15_14();
        SystemApertureIncomingCallLeadingView.init(leadingViewType:)(v184, v185, v186);
        OUTLINED_FUNCTION_14_73();
        v187 = v210;
        v188 = v209;
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v210, v209);
        v189 = type metadata accessor for SystemApertureIconView(0);
        v190 = objc_allocWithZone(v189);
        SystemApertureIconView.init(icon:isDetached:)();
        v192 = v191;
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v187, v188);
        v193 = objc_allocWithZone(v189);
        SystemApertureIconView.init(icon:isDetached:)();
        v195 = v194;
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v187, v188);
        v196 = objc_allocWithZone(v189);
        SystemApertureIconView.init(icon:isDetached:)();
        v198 = v197;
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_51_19();

        OUTLINED_FUNCTION_3_160();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v187, v200);
        OUTLINED_FUNCTION_7_105();
        v201 = v217;
        v202 = v215;
        v203 = &v215[*(v217 + 72)];
        memcpy(v234, v203, 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v234, &_s15ConversationKit21SystemApertureElementVSgMd);
        *v203 = v182;
        *(v203 + 1) = &protocol witness table for SystemApertureIncomingCallLeadingView;
        *(v203 + 2) = v192;
        *(v203 + 3) = &protocol witness table for SystemApertureIconView;
        *(v203 + 4) = v195;
        *(v203 + 5) = &protocol witness table for SystemApertureIconView;
        *(v203 + 6) = v198;
        *(v203 + 7) = &protocol witness table for SystemApertureIconView;
        OUTLINED_FUNCTION_54_18();
        *(v203 + 8) = v204;
        v203[72] = v230;
        OUTLINED_FUNCTION_1_181();
        _s15ConversationKit0A14ControlsActionOWOcTm_1(v202, v5);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v205, v206, v207, v201);
        OUTLINED_FUNCTION_0_214();
        v178 = v202;
        goto LABEL_74;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s15ConversationKit18SystemApertureIconVSgMd);
      if (one-time initialization token for conversationControls == -1)
      {
LABEL_54:
        v151 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v151, &static Logger.conversationControls);

        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = OUTLINED_FUNCTION_42();
          v155 = OUTLINED_FUNCTION_23();
          v234[0] = v155;
          v156 = OUTLINED_FUNCTION_92_8(4.8751e-34);

          *(v154 + 4) = v156;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v157, v158, v159, v160, v154, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v155);
          OUTLINED_FUNCTION_2_2();
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_45_29();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_51_19();
        }

        else
        {

          OUTLINED_FUNCTION_51_19();

          OUTLINED_FUNCTION_45_29();
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_7_105();
        goto LABEL_64;
      }

LABEL_79:
      OUTLINED_FUNCTION_0_0();
      goto LABEL_54;
    }

    v70 = v69;
    swift_unknownObjectRetain();
    v71 = [v70 displayContext];
    if (v71)
    {
      v72 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v71, &selRef_callDirectoryLabel);
      if (v73)
      {
        v74.super.isa = NSAttributedString.__allocating_init(string:)(*&v72).super.isa;
        OUTLINED_FUNCTION_51_19();

        v76 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v67);
        if (!specialized Array.count.getter(v76))
        {

          goto LABEL_33;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v76 & 0xC000000000000001) == 0, v76);
        if ((v76 & 0xC000000000000001) != 0)
        {
          LODWORD(v77) = MEMORY[0x1BFB22010](0, v76);
        }

        else
        {
          v77 = *(v76 + 32);
        }

        v78 = v77;

        v79 = MEMORY[0x1E69E7CC0];
        v238 = MEMORY[0x1E69E7CC0];
        specialized Array._checkIndex(_:)(0);
        if (specialized Array.count.getter(v79) < 0)
        {
          __break(1u);
        }

        else
        {
          v80 = specialized Array.count.getter(MEMORY[0x1E69E7CC0]);
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (!v81)
          {
            specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v82, 1);
            v83 = type metadata completion function for SyncedScreeningAlphaGradientView();
            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v83, v84, 1, v78, v85, v86, v87, v88, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
            v68 = v238;
LABEL_33:
            swift_unknownObjectRelease();
            isa = v74.super.isa;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    v74.super.isa = isa;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v24);
  OUTLINED_FUNCTION_30_0();

  swift_unknownObjectRelease();
}

void CallsControlsRecipeGenerator.makeOngoingTelephonyCall(using:)()
{
  OUTLINED_FUNCTION_29();
  v301 = v0;
  v273 = v1;
  v3 = v2;
  v295 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v314._object - v7;
  v272 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v17);
  v18 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v21);
  v296 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v293 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_13_2();
  v28 = *MEMORY[0x1E69E7D40] & v27;
  v29 = *(v28 + 0x2A0);
  v304 = v3;
  v291 = v28 + 672;
  v290 = v29;
  v30 = v29();
  v32 = v31;
  v33 = SBSIsSystemApertureAvailable();
  v294 = v18;
  v274 = v8;
  if ((v33 & 1) != 0 || (Features.isIncomingCallBannerEnabled.getter() & 1) == 0)
  {
    v34 = 0;
  }

  else
  {
    swift_getObjectType();
    if ((*(v32 + 112))())
    {
      v34 = 1;
    }

    else
    {
      v189 = OUTLINED_FUNCTION_57_1();
      v34 = v190(v189) == 1;
    }
  }

  ObjectType = swift_getObjectType();
  v36 = *(v32 + 104);
  v37 = v36(ObjectType, v32);
  v303 = v30;
  if ((v37 & 1) == 0)
  {
    v38 = OUTLINED_FUNCTION_57_1();
    v300 = v39;
    if (((v39(v38) | v34) & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v74 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v74, &static Logger.conversationControls);
      swift_unknownObjectRetain();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v304 = OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_49_0(v304);
        *v77 = 67109890;
        v78 = OUTLINED_FUNCTION_57_1();
        *(v77 + 4) = (v36)(v78) & 1;
        *(v77 + 8) = 1024;
        OUTLINED_FUNCTION_57_1();
        OUTLINED_FUNCTION_44_2();
        *(v77 + 10) = v79() & 1;
        *(v77 + 14) = 1024;
        v80 = OUTLINED_FUNCTION_57_1();
        *(v77 + 16) = v81(v80) & 1;
        swift_unknownObjectRelease();
        *(v77 + 20) = 2080;
        v82 = OUTLINED_FUNCTION_57_1();
        LODWORD(v311[0]) = v83(v82);
        type metadata accessor for TUCallStatus(0);
        v84 = String.init<A>(reflecting:)();
        v86 = v85;
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v306);

        *(v77 + 22) = v87;
        _os_log_impl(&dword_1BBC58000, v75, v76, "makeOngoingTelephonyCallRecipe returning nil, isConnected: %{BOOL}d, isOutgoing: %{BOOL}d, isConnecting: %{BOOL}d, call.status: %s", v77, 0x1Eu);
        OUTLINED_FUNCTION_55_20();
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_2_2();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      OUTLINED_FUNCTION_10_0();
      v194 = v294;
      goto LABEL_66;
    }
  }

  v40 = *(v32 + 48);
  v41 = OUTLINED_FUNCTION_57_1();
  v40(v41);
  v42 = ConversationControlsHelper.badge(forCall:)(v306);
  __swift_destroy_boxed_opaque_existential_1(v306);
  v43 = [v42 image];

  v44 = OUTLINED_FUNCTION_57_1();
  v40(v44);
  v45 = ConversationControlsHelper.badgeBackgroundColor(forCall:)(v306);
  __swift_destroy_boxed_opaque_existential_1(v306);
  v46 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  swift_unknownObjectRetain();
  v285 = v43;
  v284 = v45;
  v47 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v30, 0, v43, v284, v46, ObjectType, v32);
  OUTLINED_FUNCTION_55_20();
  ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(v45, v47);
  v49 = v48;
  v298 = v50;
  v297 = v51;
  v52 = *&v45[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags];
  v53 = [v52 sharePlayInCallsEnabled];
  v301 = 0;
  v300 = 0;
  if (v53)
  {
    v301 = [v47 view];
    OUTLINED_FUNCTION_55_20();
    OUTLINED_FUNCTION_13_2();
    v54 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v55) + 0x2A8))();
    v300 = (*((*v54 & *v47) + 0x58))(v26);
    (*(v293 + 8))(v26, v296);
  }

  if ((Features.sharePlayInCallsEnabled.getter() & 1) != 0 && (swift_beginAccess(), static ConversationControlsManager.shouldShowAVLessLeaveConfirmation == 1))
  {
    v56 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_29_41();
    v314._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v59, v60, v314);
    countAndFlagsBits = v61._countAndFlagsBits;
    object = v61._object;

    v64 = 2;
  }

  else
  {
    v65 = OUTLINED_FUNCTION_57_1();
    countAndFlagsBits = v66(v65);
    object = v67;
    v64 = 1;
  }

  v280 = v64;
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  v286 = v47;
  if (v68)
  {
    v69 = v68;
    swift_unknownObjectRetain();
    v70 = [v69 displayContext];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 callDirectoryLabel];

      if (v72)
      {

        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v73;
      }

      OUTLINED_FUNCTION_96_7();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_55_20();
  OUTLINED_FUNCTION_23_23();
  v290();
  v89 = v88;
  v90 = swift_getObjectType();
  LOBYTE(v89) = (*(v89 + 352))(v90, v89);
  swift_unknownObjectRelease();
  v289 = v49;
  if (v89)
  {
    v91 = 1;
  }

  else
  {
    swift_beginAccess();
    if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
    {
      v91 = 2;
    }

    else
    {
      v91 = 0;
    }
  }

  v279 = v91;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v93.super.isa = NSAttributedString.__allocating_init(string:)(v92).super.isa;
  v94 = *(v32 + 152);
  OUTLINED_FUNCTION_85_0();
  v95 = OUTLINED_FUNCTION_57_1();
  if (v94(v95))
  {
    v296 = object;
    v96 = countAndFlagsBits;
    v97 = v52;
    v98 = ConversationControlsHelper.assetsForCallHUD(controlsManager:)(v304);
    if (v98)
    {
      v100 = v98;
      v101 = v99;

      v93.super.isa = v100;
    }

    v52 = v97;
    countAndFlagsBits = v96;
    object = v296;
  }

  v307 = 6;
  v308 = 0u;
  v309 = 0u;
  v310 = 7;
  v102._countAndFlagsBits = countAndFlagsBits;
  v102._object = object;
  isa = NSAttributedString.__allocating_init(string:)(v102).super.isa;
  OUTLINED_FUNCTION_85_0();
  v103 = OUTLINED_FUNCTION_57_1();
  if (v94(v103))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1BC4BAC30;
    *(v104 + 32) = v93;
    v105 = v93.super.isa;
  }

  else
  {
    v104 = ConversationControlsStringProvider.callTypeSubtitles(for:)(v304);
  }

  v106 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_68_10();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
  v110 = [v52 sharePlayInCallsEnabled];
  v283 = v93.super.isa;
  if (v110)
  {
    ConversationControlsHelper.buttonShelfActions(controlsManager:)(v304, v311);
    v296 = v311[0];
    v293 = v311[1];
    v292 = v311[2];
    v281 = v312[0];
    v282 = v312[1];
    v111 = v313;
  }

  else
  {
    v296 = 0;
    v293 = 0;
    v292 = 0;
    v281 = 0;
    v282 = 0;
    v111 = 254;
  }

  v277 = v111;
  v112 = v294;
  v113 = v299;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v106);
  v117 = (v113 + v112[10]);
  v118 = v113 + v112[15];
  *(v118 + 4) = 0;
  *v118 = 0u;
  *(v118 + 1) = 0u;
  v118[40] = -2;
  *(v113 + v112[16]) = 0;
  v119 = v113 + v112[17];
  v120 = (v113 + v112[18]);
  *v120 = 1;
  OUTLINED_FUNCTION_13_7(v120, 0);
  outlined init with copy of ConversationControlsType(&v307, v113);
  v121 = v301;
  v113[6] = 0;
  v113[7] = v121;
  v122 = v300;
  v113[8] = 0;
  v113[9] = v122;
  v113[10] = isa;
  v113[11] = v104;
  v117[1] = 0;
  v117[2] = 0;
  *v117 = 0;
  v123 = v297 & 1;
  v124 = v289;
  v125 = v298;
  outlined copy of PreCallControlsContext(v289);
  outlined copy of ConversationControlsRecipe.View?(v121, 0);
  v126 = OUTLINED_FUNCTION_68_10();
  outlined assign with copy of AttributedString?(v126, v127);
  *(v113 + v112[11]) = v279;
  *(v113 + v112[12]) = 0;
  *(v113 + v112[13]) = v280;
  *(v113 + v112[14]) = 1;
  *v119 = v124;
  *(v119 + 1) = v125;
  v119[16] = v123;
  v128 = v277;
  v129 = v287;
  v130 = v282;
  v131 = v281;
  v132 = v293;
  if (v277 > 0xFD)
  {
    goto LABEL_52;
  }

  v133 = *(v296 + 16);
  if ((v277 & 0x80) != 0)
  {
    if (v133 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v153 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v153, &static Logger.conversationControls);
      v154 = v296;
      v155 = v293;
      OUTLINED_FUNCTION_75_13();
      OUTLINED_FUNCTION_41_27();
      outlined copy of ConversationControlsRecipe.Actions(v156, v157, v158, v159, v160);
      v280 = Logger.logObject.getter();
      v144 = static os_log_type_t.fault.getter();
      v296 = v154;
      v161 = v280;
      OUTLINED_FUNCTION_75_13();
      *(v163 - 256) = v162;
      OUTLINED_FUNCTION_41_27();
      outlined consume of ConversationControlsRecipe.Actions?(v164, v165, v166, v167, v168, v169);
      if (OUTLINED_FUNCTION_70_7())
      {
        v170 = OUTLINED_FUNCTION_42();
        v293 = v155;
        v148 = v170;
        v149 = OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_49_0(v149);
        *v148 = 136315138;
        v305 = v133;
        v171 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v172, v306);
        OUTLINED_FUNCTION_85_7();

        *(v148 + 4) = v161;
        v152 = "Too many buttonShelf actions (%s)";
        goto LABEL_51;
      }

LABEL_58:
      OUTLINED_FUNCTION_41_27();
      outlined consume of ConversationControlsRecipe.Actions?(v195, v196, v197, v198, v199, v200);
      v201 = OUTLINED_FUNCTION_68_10();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v201, v202);
      outlined destroy of ConversationControlsType(&v307);
      v181 = v286;
      goto LABEL_59;
    }

LABEL_52:
    v182 = OUTLINED_FUNCTION_68_10();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v182, v183);
    outlined destroy of ConversationControlsType(&v307);
    *v118 = v296;
    *(v118 + 1) = v132;
    *(v118 + 2) = v292;
    *(v118 + 3) = v131;
    *(v118 + 4) = v130;
    v118[40] = v128;
    OUTLINED_FUNCTION_1_181();
    v184 = v299;
    _s15ConversationKit0A14ControlsActionOWOcTm_1(v299, v129);
    v185 = OUTLINED_FUNCTION_21_3();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v112);
    OUTLINED_FUNCTION_0_214();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v184, v188);
    v181 = v286;
    goto LABEL_60;
  }

  if (v133 <= 2)
  {
    goto LABEL_52;
  }

  v134 = v281;
  v135 = v282;
  v280 = *(v296 + 16);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v136 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v136, &static Logger.conversationControls);
  v137 = v296;
  v138 = v293;
  OUTLINED_FUNCTION_75_13();
  v140 = *(v139 - 256);
  outlined copy of ConversationControlsRecipe.Actions(v141, v142, v140, v134, v135);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.fault.getter();
  v296 = v137;
  v293 = v138;
  OUTLINED_FUNCTION_75_13();
  *(v145 - 256) = v140;
  outlined consume of ConversationControlsRecipe.Actions?(v146, v147, v140, v134, v135, v128);
  if (!OUTLINED_FUNCTION_70_7())
  {

    OUTLINED_FUNCTION_78_7();
    goto LABEL_58;
  }

  v148 = OUTLINED_FUNCTION_42();
  v149 = OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_49_0(v149);
  *v148 = 136315138;
  v305 = v280;
  v150 = String.init<A>(reflecting:)();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v306);
  OUTLINED_FUNCTION_85_7();

  *(v148 + 4) = v143;
  v152 = "Too many trailing actions (%s)";
LABEL_51:
  _os_log_impl(&dword_1BBC58000, v144, v279, v152, v148, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v149);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_78_7();
  OUTLINED_FUNCTION_41_27();
  outlined consume of ConversationControlsRecipe.Actions?(v173, v174, v175, v176, v177, v178);
  v179 = OUTLINED_FUNCTION_68_10();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v179, v180);
  outlined destroy of ConversationControlsType(&v307);
  v181 = v286;
LABEL_59:
  OUTLINED_FUNCTION_0_214();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v299, v203);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v204, v205, v206, v112);
LABEL_60:
  v207 = OUTLINED_FUNCTION_18_12();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v207, v208, v112);
  v210 = v288;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v211 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v211, &static Logger.conversationControls);
    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v213))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v214, v215, v216, v217, v218, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_94_10();
    OUTLINED_FUNCTION_95_7();
    OUTLINED_FUNCTION_62_16();

    OUTLINED_FUNCTION_23_54();
    OUTLINED_FUNCTION_31_38();
    OUTLINED_FUNCTION_96_7();

    OUTLINED_FUNCTION_10_0();
    v194 = v112;
LABEL_66:
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
    goto LABEL_84;
  }

  v220 = OUTLINED_FUNCTION_13_79();
  _s15ConversationKit0A14ControlsRecipeVWObTm_2(v220, v210);
  if (SBUIIsSystemApertureEnabled())
  {
    v221 = v274;
    v222 = type metadata completion function for SyncedScreeningAlphaGradientView();
    SystemApertureIconFactory.makeStatusIcon(with:for:)(v222, v223, v304);
    v224 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_61_12(v224, v225, &v304);
    if (v226)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v221, &_s15ConversationKit18SystemApertureIconVSgMd);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v227 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v227, &static Logger.conversationControls);
      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v229))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v230, v231, v232, v233, v234, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      OUTLINED_FUNCTION_94_10();
      OUTLINED_FUNCTION_95_7();
      OUTLINED_FUNCTION_62_16();

      OUTLINED_FUNCTION_23_54();
      OUTLINED_FUNCTION_31_38();
      OUTLINED_FUNCTION_96_7();
    }

    else
    {
      OUTLINED_FUNCTION_4_147();
      _s15ConversationKit0A14ControlsRecipeVWObTm_2(v221, v276);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v237 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v237, &static Logger.conversationControls);
      v238 = Logger.logObject.getter();
      v239 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v239))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v240, v241, v242, v243, v244, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      type metadata accessor for SystemApertureInCallLeadingView();
      OUTLINED_FUNCTION_14_73();
      v245 = v275;
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v276, v275);
      OUTLINED_FUNCTION_55_20();
      OUTLINED_FUNCTION_23_23();
      v246 = (v290)();
      v248 = v247;
      v249 = swift_getObjectType();
      v306[0] = v246;
      v250 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v245, v306, v238, v249, *(v248 + 8));
      OUTLINED_FUNCTION_88_8(v250);
      objc_opt_self();
      v251 = swift_dynamicCastObjCClass();
      if (v251)
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for SystemApertureInCallWaveformTrailingView();
      static WaveformConfigurations.inCallNumberOfBands.getter();
      v252 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v251);
      OUTLINED_FUNCTION_36_38(v252, v312);
      v253 = v276;
      v254 = v275;
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v276, v275);
      v255 = type metadata accessor for SystemApertureIconView(0);
      v256 = objc_allocWithZone(v255);
      OUTLINED_FUNCTION_55_3();
      SystemApertureIconView.init(icon:isDetached:)();
      v258 = v257;
      _s15ConversationKit0A14ControlsActionOWOcTm_1(v253, v254);
      v259 = objc_allocWithZone(v255);
      OUTLINED_FUNCTION_18_12();
      SystemApertureIconView.init(icon:isDetached:)();
      v261 = v260;
      OUTLINED_FUNCTION_55_20();
      v262 = ConversationControlsManager.maximumLayoutMode.getter();
      OUTLINED_FUNCTION_62_16();

      OUTLINED_FUNCTION_23_54();
      outlined consume of PreCallControlsContext(v289);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_95_7();
      OUTLINED_FUNCTION_94_10();
      OUTLINED_FUNCTION_3_160();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v253, v264);
      v265 = (v210 + v112[18]);
      memcpy(v306, v265, 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v306, &_s15ConversationKit21SystemApertureElementVSgMd);
      *v265 = v302;
      v265[1] = &protocol witness table for SystemApertureInCallLeadingView;
      v265[2] = v299;
      v265[3] = &protocol witness table for SystemApertureInCallWaveformTrailingView;
      v265[4] = v258;
      v265[5] = &protocol witness table for SystemApertureIconView;
      v265[6] = v261;
      v265[7] = &protocol witness table for SystemApertureIconView;
      v265[8] = v262;
      *(v265 + 72) = 0x80;
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_10();
    OUTLINED_FUNCTION_95_7();
    OUTLINED_FUNCTION_62_16();

    OUTLINED_FUNCTION_23_54();
    OUTLINED_FUNCTION_31_38();

    OUTLINED_FUNCTION_96_7();
  }

  OUTLINED_FUNCTION_1_181();
  OUTLINED_FUNCTION_26_3();
  _s15ConversationKit0A14ControlsActionOWOcTm_1(v266, v267);
  v268 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v112);
  OUTLINED_FUNCTION_0_214();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_6(v210, v271);
LABEL_84:
  OUTLINED_FUNCTION_30_0();
}