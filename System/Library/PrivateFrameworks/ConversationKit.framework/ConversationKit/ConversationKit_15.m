uint64_t static PipZoomControl.zoomFactors(cameraDeviceType:virtualDeviceSwitchOverVideoZoomFactors:secondaryNativeResolutionZoomFactors:minimumZoomFactor:maximumZoomFactor:)(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_29;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BC4BAC30;
    v49 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v50 = a1;
    *(v48 + 32) = [v49 initWithFloat_];
    v108 = v48;
    v51 = specialized Array.count.getter(a4);
    if (v51 >= 1)
    {
      v52 = v51;
      v5 = a5;
      v53 = OUTLINED_FUNCTION_3_43();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v53, v54, a4);
      if ((a4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_13_27();
      }

      else
      {
        v55 = *(a4 + 32);
      }

      v56 = v55;
      [v55 floatValue];
      v58 = v57;

      v59 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v60) = v58;
      [v59 initWithFloat_];
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_8_37();
      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v62);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v52 == 1)
      {
        v48 = v108;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_25_15();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v64, v65, a4);
        if ((a4 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1BFB22010](1, a4);
        }

        else
        {
          v66 = *(a4 + 40);
        }

        v67 = v66;
        [v66 floatValue];
        v69 = v68;

        v70 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v71) = v69;
        [v70 initWithFloat_];
        MEMORY[0x1BFB20CC0]();
        OUTLINED_FUNCTION_6_30();
        if (v73)
        {
          OUTLINED_FUNCTION_59_3(v72);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = v108;
      }
    }

    v74 = *(a5 + 16);
    if (!v74)
    {
      goto LABEL_58;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v75 = (a5 + 32);
    do
    {
      v76.super.super.isa = NSNumber.init(floatLiteral:)(*v75).super.super.isa;
      v77 = OUTLINED_FUNCTION_27_11(v76.super.super.isa);
      MEMORY[0x1EEE9AC00](v77);
      OUTLINED_FUNCTION_24_14();
      if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v78, v48))
      {
      }

      else
      {
        v79 = v5;
        OUTLINED_FUNCTION_33_11();
        OUTLINED_FUNCTION_6_30();
        if (v73)
        {
          OUTLINED_FUNCTION_59_3(v80);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v48 = v108;
      }

      ++v75;
      --v74;
    }

    while (v74);
    specialized MutableCollection<>.sort(by:)(&v108);
    return v108;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    goto LABEL_51;
  }

  v21 = OUTLINED_FUNCTION_20_15();

  if (v21)
  {
    goto LABEL_52;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
LABEL_51:

LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1BC4BAC30;
    v82 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v83 = a1;
    *(v81 + 32) = [v82 initWithFloat_];
    v108 = v81;
    if (specialized Array.count.getter(a4) >= 1)
    {
      v84 = OUTLINED_FUNCTION_3_43();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v84, v85, a4);
      if ((a4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_13_27();
      }

      else
      {
        v86 = *(a4 + 32);
      }

      v87 = v86;
      [v86 floatValue];
      v89 = v88;

      v90 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v91) = v89;
      [v90 initWithFloat_];
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_8_37();
      v94 = *(v92 + 16);
      v93 = *(v92 + 24);
      if (v94 >= v93 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v93);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_58;
  }

  v27 = OUTLINED_FUNCTION_20_15();

  if (v27)
  {
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BAC30;
  v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v30 = a1;
  *(v28 + 32) = [v29 initWithFloat_];
  v108 = v28;
  if (specialized Array.count.getter(a4) >= 1)
  {
    v5 = (a4 & 0xC000000000000001);
    v31 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v31, v32, a4);
    if ((a4 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v33 = *(a4 + 32);
    }

    v34 = v33;
    [v33 floatValue];
    v36 = v35;

    v37 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v38) = v36;
    [v37 initWithFloat_];
    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_8_37();
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v40);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v108;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
LABEL_58:
      v95 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v96 = a2;
      [v95 initWithFloat_];
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_8_37();
      v99 = *(v97 + 16);
      v98 = *(v97 + 24);
      if (v99 >= v98 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v98);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return v108;
    }
  }

  v101 = *(a5 + 16);
  if (!v101)
  {
    goto LABEL_58;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  v102 = (a5 + 32);
  do
  {
    v103.super.super.isa = NSNumber.init(floatLiteral:)(*v102).super.super.isa;
    v104 = OUTLINED_FUNCTION_27_11(v103.super.super.isa);
    MEMORY[0x1EEE9AC00](v104);
    OUTLINED_FUNCTION_24_14();
    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v105, v28))
    {
    }

    else
    {
      v106 = v5;
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_6_30();
      if (v73)
      {
        OUTLINED_FUNCTION_59_3(v107);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v108;
    }

    ++v102;
    --v101;
  }

  while (v101);
  return v108;
}

Swift::Void __swiftcall PipZoomControl.removeControl(from:)(UIView *from)
{
  [*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl) removeFromSuperview];
  v3 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton) setAlpha_];
  [*(v1 + v3) removeFromSuperview];
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchGestureRecognizer);

  [(UIView *)from removeGestureRecognizer:v4];
}

void PipZoomControl.reapplyCameraZoom(currentInputDevice:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v30 = v4;
    v8 = 7104878;
    v9 = OUTLINED_FUNCTION_23();
    v31 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v31);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (OUTLINED_FUNCTION_12_20())
    {

      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v31);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    if (a1)
    {
      v4 = v30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice);
      v17 = v30;
      v8 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v4 = v30;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v19, &v31);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_1BBC58000, v6, v7, "PipZoomControl -reapplyCameraZoom currentZoomFactor: %s currentCameraUID: %s currentInputDevice: %s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v21 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor;
  if (*(v5 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor) != 0.0)
  {
    v22 = MEMORY[0x1E69E7D40];
    v23 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x228))();
    if (v23)
    {
      if (a1)
      {
        v24 = [v4 uniqueID];
        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v5 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentCameraUID + 8);
      if (v26)
      {
        if (!v27)
        {

          return;
        }

        if (a1 == *(v5 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentCameraUID) && v26 == v27)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v27)
      {
        return;
      }

      (*((*v22 & *v5) + 0x210))(v23, *(v5 + v21));
    }
  }
}

id PipZoomControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PipZoomControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PipZoomControl.zoomControl(_:didChangeZoomFactor:interactionType:)(double a1)
{
  v3 = a1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor) = v3;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 videoDeviceController];

  [v5 setCameraZoomFactor_];
}

id @nonobjc UIPinchGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ15ConversationKit22RecipientResultWrapperC_Tt0g5Tm(uint64_t result, void (*a2)(void))
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
      a2(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm(uint64_t result, unint64_t *a2)
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
      type metadata accessor for NSObject(0, a2);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v112;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v96 = v6 + 16;
      v97 = *(v6 + 2);
      while (v97 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v98 = v6;
        v6 += 16 * v97;
        v99 = *v6;
        v100 = &v96[2 * v97];
        v101 = *(v100 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v6), (*a3 + 8 * *v100), (*a3 + 8 * v101), v110);
        if (v5)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_119;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_120;
        }

        *v6 = v99;
        *(v6 + 1) = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_121;
        }

        v97 = *v96 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v100 + 16, v102, v100);
        *v96 = v97;
        v6 = v98;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_isRecordingAllowed;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v104 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[346]];
      v16 = v15;
      [v14 v7[346]];
      v18 = v17;

      v107 = v9;
      v19 = v9 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v21 = *(v12 - 1);
        v6 = *v12;
        v22 = v21;
        [v6 v7[346]];
        v24 = v23;
        [v22 v7[346]];
        v26 = v25;

        ++v12;
        v19 = v20 + 1;
        if (v16 < v18 == v24 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v16 >= v18)
      {
        v6 = v104;
        v8 = v107;
      }

      else
      {
        v8 = v107;
        if (v5 < v107)
        {
          goto LABEL_125;
        }

        if (v107 >= v5)
        {
          v6 = v104;
        }

        else
        {
          if (v4 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v4;
          }

          v28 = 8 * v27 - 8;
          v29 = v5;
          v30 = v107;
          v6 = v104;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v94;
    }

    v50 = *(v6 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v6 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v95;
    }

    *(v6 + 2) = v51;
    v52 = v6 + 32;
    v53 = &v6[16 * v50 + 32];
    *v53 = v8;
    *(v53 + 1) = v5;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v50)
    {
      v109 = v5;
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v6[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v6 + 4);
          v58 = *(v6 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_60:
          if (v60)
          {
            goto LABEL_110;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_118;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v51 < 2)
        {
          goto LABEL_112;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_75:
        if (v75)
        {
          goto LABEL_115;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v82 < v74)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v86 = &v52[16 * v54 - 16];
        v87 = *v86;
        v88 = v54;
        v89 = &v52[16 * v54];
        v90 = *(v89 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v86), (*a3 + 8 * *v89), (*a3 + 8 * v90), v110);
        if (v112)
        {
          goto LABEL_103;
        }

        if (v90 < v87)
        {
          goto LABEL_105;
        }

        v5 = v52;
        v91 = v7;
        v92 = v6;
        v6 = *(v6 + 2);
        if (v88 > v6)
        {
          goto LABEL_106;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v6)
        {
          goto LABEL_107;
        }

        v51 = (v6 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v89 + 16, &v6[-v88 - 1], v89);
        *(v92 + 2) = v6 - 1;
        v93 = v6 > 2;
        v6 = v92;
        v7 = v91;
        v52 = v5;
        v5 = v109;
        if (!v93)
        {
          goto LABEL_89;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_108;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_109;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_111;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_114;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v34)
  {
    goto LABEL_39;
  }

  v105 = v6;
  v35 = *a3;
  v36 = *a3 + 8 * v5 - 8;
  v108 = v8;
  v110 = v34;
  v37 = v8 - v5;
LABEL_32:
  v38 = *(v35 + 8 * v5);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    [v42 v7[346]];
    v45 = v44;
    [v43 v7[346]];
    v47 = v46;

    if (v45 >= v47)
    {
LABEL_37:
      ++v5;
      v36 += 8;
      --v37;
      if (v5 == v110)
      {
        v5 = v110;
        v6 = v105;
        v8 = v108;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v48 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v48;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v89 = (v8 + 16);
      v90 = *(v8 + 16);
      while (v90 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v91 = v8;
        v92 = (v8 + 16 * v90);
        v93 = *v92;
        v8 = &v89[2 * v90];
        v94 = *(v8 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v92), (*a3 + 8 * *v8), (*a3 + 8 * v94), v106);
        if (v5)
        {
          break;
        }

        if (v94 < v93)
        {
          goto LABEL_117;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_118;
        }

        *v92 = v93;
        v92[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_119;
        }

        v90 = *v89 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 16), v95, v8);
        *v89 = v90;
        v8 = v91;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v97 = v8;
    v99 = v5;
    v106 = v6;
    v11 = (*a3 + 8 * v7);
    v12 = 8 * v7;
    v14 = *v11;
    v13 = v11 + 2;
    v5 = *(*a3 + 8 * v10);
    v15 = v10;
    v16 = v14;
    [v5 windowLevel];
    [v16 windowLevel];
    type metadata accessor for UIWindowLevel(0);
    lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
    v8 = v9;
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();

    v18 = v106;
    v10 = v15;
    v101 = v8;
    v19 = v8 + 2;
    do
    {
      v20 = v19;
      v21 = v10 + 1;
      if (v21 >= v18)
      {
        v10 = v18;
        if (v17)
        {
          goto LABEL_8;
        }

LABEL_20:
        v8 = v97;
        v5 = v99;
        v9 = v101;
        goto LABEL_22;
      }

      v22 = *(v13 - 1);
      v8 = v21;
      v23 = *v13;
      v5 = v22;
      [v23 windowLevel];
      [v5 windowLevel];
      LODWORD(v22) = dispatch thunk of static Comparable.< infix(_:_:)() & 1;

      v10 = v8;
      ++v13;
      v19 = v20 + 1;
      v18 = v106;
    }

    while ((v17 & 1) == v22);
    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v101;
    if (v10 < v101)
    {
      goto LABEL_123;
    }

    if (v101 >= v10)
    {
      v8 = v97;
      v5 = v99;
    }

    else
    {
      v24 = v18 >= v20 ? v20 : v18;
      v25 = 8 * v24 - 8;
      v26 = v10;
      v27 = v101;
      v8 = v97;
      v5 = v99;
      do
      {
        if (v27 != --v26)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v29 = *(v28 + v12);
          *(v28 + v12) = *(v28 + v25);
          *(v28 + v25) = v29;
        }

        ++v27;
        v25 -= 8;
        v12 += 8;
      }

      while (v27 < v26);
    }

LABEL_22:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v87;
    }

    v44 = *(v8 + 16);
    v45 = v44 + 1;
    if (v44 >= *(v8 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v88;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v10;
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v106 = v10;
    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        v49 = (v46 + 16 * (v45 - 1));
        v50 = (v8 + 16 * v45);
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v51 = *(v8 + 32);
          v52 = *(v8 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_59:
          if (v54)
          {
            goto LABEL_108;
          }

          v66 = *v50;
          v65 = v50[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_111;
          }

          v70 = v49[1];
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_116;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v45 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v45 < 2)
        {
          goto LABEL_110;
        }

        v73 = *v50;
        v72 = v50[1];
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_74:
        if (v69)
        {
          goto LABEL_113;
        }

        v75 = *v49;
        v74 = v49[1];
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_115;
        }

        if (v76 < v68)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v80 = v8;
        v81 = (v46 + 16 * (v48 - 1));
        v82 = *v81;
        v83 = v48;
        v84 = v46 + 16 * v48;
        v8 = *(v84 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v81), (*a3 + 8 * *v84), (*a3 + 8 * v8), v105);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v8 < v82)
        {
          goto LABEL_103;
        }

        v5 = *(v80 + 16);
        if (v83 > v5)
        {
          goto LABEL_104;
        }

        *v81 = v82;
        v81[1] = v8;
        if (v83 >= v5)
        {
          goto LABEL_105;
        }

        v85 = v83;
        v45 = (v5 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v84 + 16), &v5[-v85 - 1], v84);
        v8 = v80;
        *(v80 + 16) = v5 - 1;
        v86 = v5 > 2;
        v5 = 0;
        if (!v86)
        {
          goto LABEL_88;
        }
      }

      v55 = v46 + 16 * v45;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_106;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_107;
      }

      v62 = v50[1];
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_109;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_112;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = v49[1];
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_120;
        }

        if (v53 < v79)
        {
          v48 = v45 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v10;
    v6 = a3[1];
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v9 + a4 >= v30)
  {
    v31 = a3[1];
  }

  else
  {
    v31 = (v9 + a4);
  }

  if (v31 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v31)
  {
    goto LABEL_39;
  }

  v98 = v8;
  v100 = v5;
  v32 = *a3;
  type metadata accessor for UIWindowLevel(0);
  v33 = v32 + 8 * v10 - 8;
  v102 = v9;
  v34 = v9 - v10;
  v104 = v31;
LABEL_32:
  v106 = v10;
  v35 = *(v32 + 8 * v10);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    [v39 windowLevel];
    [v40 windowLevel];
    lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
    v41 = dispatch thunk of static Comparable.< infix(_:_:)();

    if ((v41 & 1) == 0)
    {
LABEL_37:
      v10 = v106 + 1;
      v33 += 8;
      --v34;
      if ((v106 + 1) == v104)
      {
        v10 = v104;
        v8 = v98;
        v5 = v100;
        v9 = v102;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 floatValue];
      v17 = v16;
      [v15 floatValue];
      v19 = v18;

      if (v17 >= v19)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 floatValue];
    v30 = v29;
    [v28 floatValue];
    v32 = v31;

    v33 = v5 + 1;
    if (v30 < v32)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 windowLevel];
      [v15 windowLevel];
      type metadata accessor for UIWindowLevel(0);
      lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
      LOBYTE(v13) = dispatch thunk of static Comparable.< infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v30 = v4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v20 = v7;
    v21 = v18;
    v22 = *v18;
    v23 = *(v10 - 1);
    v24 = v22;
    [v23 windowLevel];
    [v24 windowLevel];
    type metadata accessor for UIWindowLevel(0);
    lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
    LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();

    v25 = v5 + 1;
    if (v22)
    {
      v17 = v25 == v6;
      v26 = v21;
      v6 = v21;
      v7 = v20;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_15;
    }

    if (v10 != v25)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v18 = v21;
    v7 = v20;
    v4 = v30;
  }

LABEL_28:
  v27 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, 8 * v27);
  }

  return 1;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t VideoStatusProvider.__allocating_init(callCenter:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [a1 videoDeviceController];

  *(v2 + 16) = v3;
  return v2;
}

uint64_t VideoStatusProvider.init(callCenter:)(void *a1)
{
  v3 = [a1 videoDeviceController];

  *(v1 + 16) = v3;
  return v1;
}

uint64_t VideoStatusProvider.hasNoVideo.getter()
{
  v1 = *(v0 + 16);
  if (([v1 isPreviewRunning] & 1) == 0)
  {
    v3 = [v1 currentInputDevice];
    v4 = v3;
    if (!v3)
    {
      VideoStatusProvider.activeDevice.getter();
      if (!v5)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.conversationKit);
        v9 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1BBC58000, v9, v15, "VideoStatusProvider has no camera", v16, 2u);
          MEMORY[0x1BFB23DF0](v16, -1, -1);
        }

        v2 = 1;
        goto LABEL_12;
      }

      v4 = v5;
    }

    v6 = one-time initialization token for conversationKit;
    v7 = v3;
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationKit);
    v9 = v4;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v9 isSuspended];

      _os_log_impl(&dword_1BBC58000, v10, v11, "VideoStatusProvider camera isSuspended: %{BOOL}d", v12, 8u);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v2 = [v9 isSuspended];
LABEL_12:

    return v2;
  }

  return 0;
}

uint64_t VideoStatusProvider.videoInfoDidChange.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGytGMd);
  OUTLINED_FUNCTION_1();
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
  NSNotificationCenter.publisher(for:object:)();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.merge(with:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  Publisher.map<A>(_:)();
  (*(v2 + 8))(v5, v0);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, ()> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGytGMd);
  v20 = v24;
  v21 = Publisher.eraseToAnyPublisher()();

  (*(v25 + 8))(v9, v20);
  v22 = *(v12 + 8);
  v22(v15, v10);
  v22(v18, v10);
  return v21;
}

void VideoStatusProvider.activeDevice.getter()
{
  v1 = [*(v0 + 16) inputDevices];
  type metadata accessor for AVCaptureDevice();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
LABEL_11:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v5 isConnected] && !objc_msgSend(v6, sel_isSuspended))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t VideoStatusProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for AVCaptureDevice()
{
  result = lazy cache variable for type metadata for AVCaptureDevice;
  if (!lazy cache variable for type metadata for AVCaptureDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVCaptureDevice);
  }

  return result;
}

uint64_t key path setter for ConversationDetailsView.recipe : ConversationDetailsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xB0))(v6);
}

uint64_t ConversationDetailsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_recipe;
  OUTLINED_FUNCTION_4_5();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t ConversationDetailsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  ConversationDetailsView.updateStatus()();
  return outlined destroy of ConversationControlsRecipe(a1);
}

void (*ConversationDetailsView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ConversationDetailsView.recipe.modify;
}

void ConversationDetailsView.recipe.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ConversationDetailsView.updateStatus()();
  }
}

double ConversationDetailsView.titleLabelGlyphInset.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v2 = v1();
  [v2 _tightBoundingRectOfFirstLine];
  v4 = v3;
  v6 = v5;

  v7 = v1();
  [v7 convertPoint:v0 toCoordinateSpace:{v4, v6}];
  v9 = v8;

  return v9;
}

uint64_t key path getter for ConversationDetailsView.conversationDetailsVStack : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

void *closure #1 in ConversationDetailsView.conversationDetailsVStack.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  v3 = MEMORY[0x1E69E7D40];
  *(v2 + 32) = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))();
  *(v2 + 40) = (*((*v3 & *a1) + 0xE0))();
  UIStackView.__allocating_init(arrangedSubviews:)(v4, v2);
  v6 = v5;
  [v5 setAxis_];
  [v6 setAlignment_];
  return v6;
}

uint64_t ConversationDetailsView.conversationDetailsVStack.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = ConversationDetailsView.conversationDetailsVStack.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for ConversationDetailsView.conversationSubtitleHStack : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationDetailsView.conversationSubtitleHStack.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  v3 = MEMORY[0x1E69E7D40];
  *(v2 + 32) = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x128))();
  *(v2 + 40) = (*((*v3 & *a1) + 0x140))();
  UIStackView.__allocating_init(arrangedSubviews:)(v4, v2);
  v6 = v5;
  [v5 setAxis_];
  [v6 setAlignment_];
  [v6 setDistribution_];
  static Layout.ConversationControls.values.getter(v10);
  [v6 setSpacing_];
  v7 = *((*v3 & *a1) + 0x178);
  v8 = v6;
  v7();
  [v8 setAlpha_];

  return v8;
}

uint64_t ConversationDetailsView.conversationSubtitleHStack.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = ConversationDetailsView.conversationSubtitleHStack.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for ConversationDetailsView.leadingAccessoryView : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationDetailsView.leadingAccessoryView : ConversationDetailsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x100);
  v4 = *a1;
  return v3(v2);
}

void *ConversationDetailsView.leadingAccessoryView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_leadingAccessoryView;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationDetailsView.leadingAccessoryView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_leadingAccessoryView;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ConversationDetailsView.conversationTitleLabel : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationDetailsView.conversationTitleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = ConversationDetailsView.titleLabelFont.getter();
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  [v0 _setWantsContentAwareTypesettingLanguage_];
  return v0;
}

uint64_t ConversationDetailsView.conversationTitleLabel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = ConversationDetailsView.conversationTitleLabel.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for ConversationDetailsView.conversationSubtitleLabel : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationDetailsView.conversationSubtitleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = ConversationDetailsView.chevronLabelFont.getter();
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  [v0 _setWantsContentAwareTypesettingLanguage_];
  return v0;
}

uint64_t ConversationDetailsView.conversationSubtitleLabel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = ConversationDetailsView.conversationSubtitleLabel.getter();
  return OUTLINED_FUNCTION_8_1();
}

id ConversationDetailsView.conversationDetailsVStack.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t key path getter for ConversationDetailsView.chevronLabel : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationDetailsView.chevronLabel.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v3 = *MEMORY[0x1E69DDD80];
  v17[64] = 0;
  v18[0] = 0x2E6E6F7276656863;
  v18[1] = 0xEF64726177726F66;
  v18[2] = 1;
  v18[3] = v3;
  v19 = 0;
  v20 = 4;
  v21 = 0;
  v22 = 0;
  v23[0] = 0x2E6E6F7276656863;
  v23[1] = 0xEF64726177726F66;
  v23[2] = 1;
  v23[3] = v3;
  v24 = 0;
  v25 = 4;
  v26 = 0;
  v27 = 0;
  v4 = v3;
  outlined init with copy of SymbolImageDescription(v18, v17);
  outlined destroy of SymbolImageDescription(v23);
  v5 = static UIImage.symbolImage(for:)(v18);
  outlined destroy of SymbolImageDescription(v18);
  if (v5)
  {
    [v2 setNumberOfLines_];
    v6 = v2;
    v7 = ConversationDetailsView.chevronLabelFont.getter([v6 setClipsToBounds_]);
    [v6 setFont_];

    [v6 setAdjustsFontForContentSizeCategory_];
    v8 = [objc_opt_self() secondaryLabelColor];
    [v6 setTextColor_];

    LODWORD(v9) = 1144750080;
    v10 = [v6 setContentCompressionResistancePriority:0 forAxis:v9];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x170))(v10);
    [v6 setAlpha_];

    v11 = [objc_opt_self() textAttachmentWithImage_];
    v12 = [objc_opt_self() attributedStringWithAttachment_];

    [v6 setAttributedText_];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, &static Logger.conversationControls);
    v12 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BBC58000, v12, v14, "Unable to obtain chevron.forward for chevronLabel", v15, 2u);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }
  }

  return v2;
}

uint64_t ConversationDetailsView.chevronLabel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = ConversationDetailsView.chevronLabel.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for ConversationDetailsView.conversationSubtitleBadge : ConversationDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationDetailsView.conversationSubtitleBadge : ConversationDetailsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

void *ConversationDetailsView.conversationSubtitleBadge.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_conversationSubtitleBadge;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationDetailsView.conversationSubtitleBadge.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_conversationSubtitleBadge;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double ConversationDetailsView.chevronLabelAlpha.getter()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_10_19();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0xA8))();
  LODWORD(v2) = *(v0 + *(v2 + 56));
  outlined destroy of ConversationControlsRecipe(v0);
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

double ConversationDetailsView.subtitleAlpha.getter()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v9(v6);
  v10 = 1.0;
  if (!specialized Array.count.getter(*(v8 + 11)))
  {
    (v9)();
    v11 = &v4[*(v1 + 40)];
    v12 = *v11;
    v13 = *(v11 + 1);
    outlined copy of ConversationControlsRecipe.View?(*v11, v13);
    outlined destroy of ConversationControlsRecipe(v4);
    if (v12)
    {
      outlined consume of ConversationControlsRecipe.View?(v12, v13);
    }

    else
    {
      v10 = 0.0;
    }
  }

  outlined destroy of ConversationControlsRecipe(v8);
  return v10;
}

id ConversationDetailsView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDetailsView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void ConversationDetailsView.frame.setter()
{
  OUTLINED_FUNCTION_20_2();
  v4 = type metadata accessor for ConversationDetailsView();
  v1 = OUTLINED_FUNCTION_18_1();
  objc_msgSendSuper2(v2, v3, v1, v0, v4);
  ConversationDetailsView.frame.didset();
}

void ConversationDetailsView.frame.didset()
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  [v0 bounds];
  [v2 setPreferredMaxLayoutWidth_];
}

id ConversationDetailsView.init(recipe:presentationStyle:controlsManager:)(uint64_t a1, char *a2, void *a3)
{
  v6 = *a2;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationDetailsVStack] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationSubtitleHStack] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_leadingAccessoryView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationTitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationSubtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___chevronLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_conversationSubtitleBadge] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_durationController] = 0;
  outlined init with copy of ConversationControlsRecipe(a1, &v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_recipe]);
  v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_presentationStyle] = v6;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_controlsManager] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ConversationDetailsView();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationDetailsView.configureSubviews()();
  ConversationDetailsView.updateStatus()();

  outlined destroy of ConversationControlsRecipe(a1);
  return v8;
}

id ConversationDetailsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationDetailsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationDetailsVStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationSubtitleHStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_leadingAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___conversationSubtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView____lazy_storage___chevronLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_conversationSubtitleBadge) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_durationController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationDetailsView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for ConversationDetailsView();
  objc_msgSendSuper2(&v27, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = isa;
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [(objc_class *)v3 preferredContentSizeCategory];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v14 = MEMORY[0x1E69E7D40];
        v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v13);
        v16 = ConversationDetailsView.titleLabelFont.getter();
        v17 = OUTLINED_FUNCTION_16_0();
        [v17 v18];

        OUTLINED_FUNCTION_13_2();
        v20 = (*((*v14 & v19) + 0x128))();
        v21 = ConversationDetailsView.chevronLabelFont.getter(v20);
        v22 = OUTLINED_FUNCTION_16_0();
        [v22 v23];

        OUTLINED_FUNCTION_13_2();
        v25 = (*((*v14 & v24) + 0x140))();
        v26 = ConversationDetailsView.chevronLabelFont.getter(v25);
        [v25 setFont_];

        v3 = v26;
      }
    }
  }
}

objc_class *ConversationDetailsView.titleLabelFont.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_presentationStyle);
  v2 = objc_opt_self();
  if (v1 != 1)
  {
    v5 = [v2 preferredFontForTextStyle_];
    isa = UIFont.withTraits(_:)(0x8002u).super.isa;

    goto LABEL_5;
  }

  result = [v2 _preferredFontForTextStyle_weight_];
  if (result)
  {
    isa = result;
LABEL_5:
    v6 = UIFont.caseSensitive()().super.isa;

    return v6;
  }

  __break(1u);
  return result;
}

Class ConversationDetailsView.subtitleLabelFont.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  v2 = UIFont.caseSensitive()().super.isa;
  return v2;
}

uint64_t ConversationDetailsView.activitySessionExists.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_controlsManager);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0);
  v3 = v1;
  v4 = v2();

  if (v4)
  {
    v5 = [v4 activitySessions];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v5) = specialized Set.isEmpty.getter(v6);

    v7 = v5 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void ConversationDetailsView.updateStatus()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v149 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v5);
  v152 = (&v146 - v6);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v146 - v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v150 = (&v146 - v10);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v146 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v146 - v15);
  OUTLINED_FUNCTION_13_2();
  v17 = MEMORY[0x1E69E7D40];
  v19 = (*MEMORY[0x1E69E7D40] & v18) + 272;
  v20 = *((*MEMORY[0x1E69E7D40] & v18) + 0x110);
  v21 = v20();
  v22 = *((*v17 & *v0) + 0xA8);
  v23 = (*v17 & *v0) + 168;
  v22();
  v24 = v16[10];
  outlined destroy of ConversationControlsRecipe(v16);
  [v21 setAttributedText_];

  v148 = v19;
  v147 = v20;
  v25 = v20();
  v26 = v2;
  v27 = v25;
  v22();
  v28 = *(v16 + *(v2 + 52));
  v153 = v16;
  outlined destroy of ConversationControlsRecipe(v16);
  [v27 setNumberOfLines_];

  v22();
  outlined init with copy of ConversationControlsType(v13, v160);
  outlined destroy of ConversationControlsRecipe(v13);
  LODWORD(v27) = v161;
  outlined destroy of ConversationControlsType(v160);
  OUTLINED_FUNCTION_11_23();
  v30 = *((*MEMORY[0x1E69E7D40] & v29) + 0x128);
  v31 = v30();
  v32 = v31;
  v154 = v23;
  v155 = v22;
  if (v27 == 1)
  {
    v33 = [v31 numberOfLines];

    v34 = v30();
    if (v33 < 2)
    {
      v51 = v151;
      OUTLINED_FUNCTION_4_30();
      v155();
      v52 = v51[11];

      outlined destroy of ConversationControlsRecipe(v51);
      v53 = specialized Array.count.getter(v52);
      v38 = MEMORY[0x1E69E7D40];
      if (v53)
      {
        OUTLINED_FUNCTION_8_38();
        if (v16)
        {
          OUTLINED_FUNCTION_28_15();
        }

        else
        {
          v54 = *(v52 + 32);
        }

        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      [v34 setAttributedText_];

      v57 = v30();
      [v57 setLineBreakMode_];
    }

    else
    {
      v35 = v150;
      OUTLINED_FUNCTION_4_30();
      v155();
      v36 = *(v35 + 11);

      outlined destroy of ConversationControlsRecipe(v35);
      v37 = specialized Array.count.getter(v36);
      v38 = MEMORY[0x1E69E7D40];
      if (v37)
      {
        OUTLINED_FUNCTION_8_38();
        if (v16)
        {
          OUTLINED_FUNCTION_28_15();
        }

        else
        {
          v39 = *(v36 + 32);
        }

        v40 = v39;

        v41 = [v40 string];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {

        v42 = 0;
        v44 = 0xE000000000000000;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v160[0]._countAndFlagsBits = v42;
      v160[0]._object = v44;

      MEMORY[0x1BFB20B10](10, 0xE100000000000000);

      isa = NSAttributedString.__allocating_init(string:)(v160[0]).super.isa;
      [v34 setAttributedText_];

      v57 = v30();
      [v57 setLineBreakMode_];
    }

    v47 = v153;
  }

  else
  {
    v45 = v152;
    v22();
    v46 = *(v45 + 11);

    outlined destroy of ConversationControlsRecipe(v45);
    if (specialized Array.count.getter(v46))
    {
      OUTLINED_FUNCTION_8_38();
      v47 = v153;
      if (v45)
      {
        OUTLINED_FUNCTION_28_15();
      }

      else
      {
        v48 = *(v46 + 32);
      }

      v49 = v48;
      v50 = v155;
    }

    else
    {
      v49 = 0;
      v50 = v155;
      v47 = v153;
    }

    [v32 setAttributedText_];

    v56 = v30();
    [v56 setLineBreakMode_];

    v57 = v30();
    v50();
    v58 = *(v47 + *(v26 + 56));
    outlined destroy of ConversationControlsRecipe(v47);
    [v57 setNumberOfLines_];
    v38 = MEMORY[0x1E69E7D40];
  }

  OUTLINED_FUNCTION_7_35();
  v60 = v38;
  v61 += 37;
  v62 = *v61;
  v153 = v61;
  v63 = v62();
  v64 = v62();
  v65 = [v64 numberOfLines];

  [v63 setMarqueeEnabled_];
  v66 = v62();
  v152 = v62;
  v67 = v62();
  v68 = v60;
  v69 = v67;
  v70 = [v67 numberOfLines];

  [v66 setMarqueeRunning_];
  OUTLINED_FUNCTION_4_30();
  v155();
  OUTLINED_FUNCTION_19_9();
  outlined destroy of ConversationControlsRecipe(v47);
  OUTLINED_FUNCTION_3_44(24);
  v159 = 7;
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_17_20();
  outlined destroy of ConversationControlsType(v160);
  if (v69)
  {
    v71 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_controlsManager;
    OUTLINED_FUNCTION_2_46();
    v72 += 84;
    v73 = *v72;
    v74 = v72;
    v76 = v75;
    v73();
    OUTLINED_FUNCTION_27_12();
    ObjectType = swift_getObjectType();
    v78 = (v74[26])(ObjectType, v74);
    swift_unknownObjectRelease();
    if (v78 != 2)
    {
      v79 = *(v1 + v71);
      ConversationControlsManager.heldCalls()(v79, v80, v81, v82, v83, v84, v85, v86, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, *(&v157 + 1));
      v88 = v87;

      v89 = specialized Array.count.getter(v88);

      v90 = v155;
      if (v89 >= 1 && (OUTLINED_FUNCTION_4_30(), v90(), OUTLINED_FUNCTION_19_9(), outlined destroy of ConversationControlsRecipe(v47), OUTLINED_FUNCTION_3_44(24), v159 = 7, OUTLINED_FUNCTION_18_22(), OUTLINED_FUNCTION_17_20(), outlined destroy of ConversationControlsType(v160), (v89 & 1) != 0))
      {
        v151 = type metadata accessor for DurationLabelController();
        OUTLINED_FUNCTION_2_46();
        v91 += 84;
        v92 = *v91;
        v93 = v91;
        v95 = v94;
        v92();
        OUTLINED_FUNCTION_27_12();
        v96 = swift_getObjectType();
        v97 = v147();
        v98 = [objc_opt_self() labelColor];
        v90();
        v99 = *(v47 + 80);
        outlined destroy of ConversationControlsRecipe(v47);
        v160[0]._countAndFlagsBits = v93;
        v100 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v160, v97, v98, 0, 0, v99, v151, v96, v74[1]);
        v101 = v152;
      }

      else
      {
        OUTLINED_FUNCTION_2_46();
        v110 = *(v109 + 672);
        v112 = v111;
        v110();
        OUTLINED_FUNCTION_27_12();
        swift_getObjectType();
        OUTLINED_FUNCTION_23_16();
        v114 = v113();
        swift_unknownObjectRelease();
        LODWORD(v110) = [v114 isTelephonyProvider];

        v115 = objc_opt_self();
        v116 = &selRef_secondaryLabelColor;
        if (!v110)
        {
          v116 = &selRef_systemGreenColor;
        }

        v151 = [v115 *v116];
        OUTLINED_FUNCTION_2_46();
        v118 = *(v117 + 672);
        v120 = v119;
        v121 = v118();
        v123 = v122;

        v101 = v152;
        v124 = v152();
        v125 = v149;
        v90();
        v126 = v125[11];

        outlined destroy of ConversationControlsRecipe(v125);
        if (specialized Array.count.getter(v126))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v126 & 0xC000000000000001) == 0, v126);
          if ((v126 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_28_15();
          }

          else
          {
            v127 = *(v126 + 32);
          }

          v128 = v127;
        }

        else
        {

          v128 = 0;
        }

        v129 = type metadata accessor for DurationLabelController();
        v130 = swift_getObjectType();
        v160[0]._countAndFlagsBits = v121;
        v100 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v160, v124, v151, 0, 0, v128, v129, v130, *(v123 + 8));
      }

      *(v1 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_durationController) = v100;

      (*(*v100 + 248))(v131);

      v68 = MEMORY[0x1E69E7D40];
      v106 = v155;
      goto LABEL_40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_30();
    v155();
    OUTLINED_FUNCTION_19_9();
    outlined destroy of ConversationControlsRecipe(v47);
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    v159 = 7;
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_17_20();
    outlined destroy of ConversationControlsType(v160);
    OUTLINED_FUNCTION_4_30();
    v155();
    OUTLINED_FUNCTION_19_9();
    outlined destroy of ConversationControlsRecipe(v47);
    OUTLINED_FUNCTION_3_44(6);
    v159 = 7;
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_17_20();
    outlined destroy of ConversationControlsType(v160);
  }

  v102 = OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_durationController;
  v103 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ConversationDetailsView_durationController);
  if (v103)
  {
    v104 = *(*v103 + 256);

    v104(v105);
  }

  v106 = v155;
  v101 = v152;
  *(v1 + v102) = 0;

  v100 = (v101)(v107);
  v108 = [objc_opt_self() secondaryLabelColor];
  [v100 setTextColor_];

LABEL_40:
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_4_30();
    v106();
    OUTLINED_FUNCTION_19_9();
    outlined destroy of ConversationControlsRecipe(v47);
    OUTLINED_FUNCTION_3_44(15);
    v159 = 7;
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_17_20();
    outlined destroy of ConversationControlsType(v160);
    if (v100)
    {
      OUTLINED_FUNCTION_7_35();
      v133 = (*(v132 + 496))();
      v134 = v101();
      v135 = v134;
      if (v133 >= 5)
      {
        v136 = 5;
      }

      else
      {
        v136 = v133;
      }

      [v134 setNumberOfLines_];
    }

    else
    {
      OUTLINED_FUNCTION_4_30();
      v106();
      OUTLINED_FUNCTION_19_9();
      outlined destroy of ConversationControlsRecipe(v47);
      OUTLINED_FUNCTION_3_44(14);
      v159 = 7;
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_17_20();
      outlined destroy of ConversationControlsType(v160);
    }
  }

  OUTLINED_FUNCTION_7_35();
  v138 = (*(v137 + 320))();
  OUTLINED_FUNCTION_11_23();
  (*((*v68 & v139) + 0x170))();
  [v138 setAlpha_];

  OUTLINED_FUNCTION_7_35();
  v141 = *(v140 + 224);
  v142 = v141();
  OUTLINED_FUNCTION_11_23();
  v144 = *((*v68 & v143) + 0x178);
  v144();
  [v142 setAlpha_];

  v145 = v141();
  [v145 setHidden_];
}

Swift::Void __swiftcall ConversationDetailsView.updateSubtitleLeadingBadge()()
{
  v0 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_13_2();
  v4 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & v5) + 0x158))();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_5_27();
    v9 = (*(v8 + 224))();
    [v9 removeArrangedSubview_];

    [v7 removeFromSuperview];
  }

  OUTLINED_FUNCTION_5_27();
  (*(v10 + 168))();
  v11 = *&v3[*(v0 + 40)];
  if (v11)
  {
    v12 = v11;
    outlined destroy of ConversationControlsRecipe(v3);
    OUTLINED_FUNCTION_13_2();
    v14 = *((*v4 & v13) + 0x160);
    v15 = v12;
    v14(v11);
    OUTLINED_FUNCTION_5_27();
    v17 = (*(v16 + 224))();
    [v17 insertArrangedSubview:v15 atIndex:0];
  }

  else
  {
    outlined destroy of ConversationControlsRecipe(v3);
  }
}

void ConversationDetailsView.configureSubviews()()
{
  v2 = v0;
  v3 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_10_19();
  v4 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0xC8);
  v7 = v6();
  [(UIView *)v2 addSubview:v7];

  v8 = v6();
  UIView.addConstraintsToFill(_:insets:)(v2, *MEMORY[0x1E69DC5C0]);

  OUTLINED_FUNCTION_11_23();
  (*((*v4 & v9) + 0x1E0))();
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_6_9();
    v11 = *(v10 + 168);
    OUTLINED_FUNCTION_4_30();
    v11();
    outlined init with copy of ConversationControlsType(v1, v47);
    outlined destroy of ConversationControlsRecipe(v1);
    OUTLINED_FUNCTION_22_14(15);
    v46 = 7;
    v12 = static ConversationControlsType.== infix(_:_:)(v47, v45);
    outlined destroy of ConversationControlsType(v45);
    outlined destroy of ConversationControlsType(v47);
    if (v12 & 1) != 0 || (OUTLINED_FUNCTION_4_30(), v11(), outlined init with copy of ConversationControlsType(v1, v47), outlined destroy of ConversationControlsRecipe(v1), OUTLINED_FUNCTION_22_14(14), v46 = 7, v13 = static ConversationControlsType.== infix(_:_:)(v47, v45), outlined destroy of ConversationControlsType(v45), outlined destroy of ConversationControlsType(v47), (v13))
    {
      OUTLINED_FUNCTION_6_9();
      v14 += 34;
      v15 = *v14;
      v16 = (*v14)();
      v17 = [v16 widthAnchor];

      v18 = v6();
      v19 = [v18 widthAnchor];

      v20 = OUTLINED_FUNCTION_16_0();
      v22 = [v20 v21];

      [v22 setActive_];
      v23 = v15();
      [v23 setTranslatesAutoresizingMaskIntoConstraints_];

      OUTLINED_FUNCTION_6_9();
      v25 = *(v24 + 224);
      v26 = v25();
      v27 = [v26 widthAnchor];

      v28 = v6();
      v29 = [v28 widthAnchor];

      v30 = OUTLINED_FUNCTION_16_0();
      v32 = [v30 v31];

      [v32 setActive_];
      v33 = v25();
      v34 = [v33 heightAnchor];

      OUTLINED_FUNCTION_11_23();
      v36 = (*((*v4 & v35) + 0x128))();
      v37 = [v36 heightAnchor];

      v38 = OUTLINED_FUNCTION_16_0();
      v40 = [v38 v39];

      [v40 setActive_];
      v41 = v25();
      [v41 setTranslatesAutoresizingMaskIntoConstraints_];

      v42 = v25();
      OUTLINED_FUNCTION_11_23();
      v44 = (*((*v4 & v43) + 0x140))();
      [v42 removeArrangedSubview_];
    }
  }
}

Swift::Int __swiftcall ConversationDetailsView.enhancedEmergencySubtitleMaxNumberOfLines()()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = v3 * 0.6;
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  v6 = outlined bridged method (ob) of @objc UILabel.text.getter(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = MEMORY[0x1BFB209B0](v6, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = ConversationDetailsView.chevronLabelFont.getter(v11);
  *(inited + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v12;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v21.origin.x = outlined bridged method (mnnbnnn) of @objc NSString.boundingRect(with:options:attributes:context:)(1, v4, 3.40282347e38, v13, 0, v9);
  Height = CGRectGetHeight(v21);
  v16 = ConversationDetailsView.chevronLabelFont.getter(v15);
  [v16 lineHeight];
  v18 = v17;

  v20 = ceil(Height / v18);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v20 < 9.22337204e18)
  {
    return v20;
  }

LABEL_10:
  __break(1u);
  return result;
}

id ConversationDetailsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ConversationDetailsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for SystemApertureControlsStatusView.recipe.modify in conformance ConversationDetailsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t type metadata accessor for ConversationDetailsView()
{
  result = type metadata singleton initialization cache for ConversationDetailsView;
  if (!type metadata singleton initialization cache for ConversationDetailsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc UILabel.text.getter(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

double outlined bridged method (mnnbnnn) of @objc NSString.boundingRect(with:options:attributes:context:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a6 boundingRectWithSize:a1 options:isa attributes:a5 context:{a2, a3}];
  v13 = v12;

  return v13;
}

uint64_t type metadata completion function for ConversationDetailsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
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

unint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationActivitySession);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
  }

  return result;
}

Swift::Int DeviceInactivityObserver.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeviceInactivityObserver.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DeviceInactivityObserver.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for DeviceInactivityObserver.state : DeviceInactivityObserver@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t DeviceInactivityObserver.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DeviceInactivityObserver.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for DeviceInactivityObserver.$state : DeviceInactivityObserver(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return DeviceInactivityObserver.$state.setter(v5);
}

uint64_t DeviceInactivityObserver.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24DeviceInactivityObserverC5StateOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DeviceInactivityObserver.$state.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd);
  OUTLINED_FUNCTION_1_17();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v1, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24DeviceInactivityObserverC5StateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v1);
}

uint64_t DeviceInactivityObserver.__allocating_init(inactivityTimeout:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DeviceInactivityObserver.init(inactivityTimeout:)(a1);
  return v2;
}

uint64_t DeviceInactivityObserver.init(inactivityTimeout:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24DeviceInactivityObserverC5StateOGMd);
  OUTLINED_FUNCTION_1_17();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit24DeviceInactivityObserver__state;
  v11[15] = 2;
  Published.init(initialValue:)();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + 16) = IOHIDEventSystemClientCreateWithType();
  *(v1 + 24) = a1;
  DeviceInactivityObserver.registerForHIDActivity()();
  return v1;
}

Swift::Void __swiftcall DeviceInactivityObserver.invalidate()()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_47();
  v3 = v2;
  IOHIDEventSystemClientUnregisterPropertyChangedCallback();

  MEMORY[0x1EEDC80A8](v1);
}

void DeviceInactivityObserver.handleHIDActivityStateChanged()()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_47();
  v3 = v2;
  v4 = IOHIDEventSystemClientCopyProperty(v1, v2);

  if (v4 && (v22 = v4, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Log.screenSharing);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v6, v7, "HID activity state changed to new value: %u", v8, 8u);
      OUTLINED_FUNCTION_27();
    }

    if (v21 > 2)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = v21;
        _os_log_impl(&dword_1BBC58000, v18, v19, "Unknown HID activity state value: %u", v20, 8u);
        OUTLINED_FUNCTION_27();
      }
    }

    DeviceInactivityObserver.state.setter();
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Log.screenSharing);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v10, v11))
    {
      swift_unknownObjectRelease();

      return;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    if (v4)
    {
      swift_unknownObjectRetain();
      v14 = String.init<A>(reflecting:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Unable to get activity state from IOHIDEventSystemClient property: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  swift_unknownObjectRelease();
}

void DeviceInactivityObserver.registerForHIDActivity()()
{
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_4_31();
  IOHIDEventSystemClientSetMatching();

  type metadata accessor for OS_dispatch_queue();
  v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_4_31();
  IOHIDEventSystemClientScheduleWithDispatchQueue();

  OUTLINED_FUNCTION_2_47();
  v3 = v2;
  OUTLINED_FUNCTION_4_31();
  IOHIDEventSystemClientRegisterPropertyChangedCallback();

  v4 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC4F6780);
  v5 = UInt._bridgeToObjectiveC()().super.super.isa;
  v6 = OUTLINED_FUNCTION_4_31();
  IOHIDEventSystemClientSetProperty(v6, v7, v5);

  DeviceInactivityObserver.handleHIDActivityStateChanged()();
}

uint64_t closure #1 in DeviceInactivityObserver.registerForHIDActivity()(uint64_t result)
{
  if (result)
  {

    DeviceInactivityObserver.handleHIDActivityStateChanged()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc closure #1 in DeviceInactivityObserver.registerForHIDActivity()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  closure #1 in DeviceInactivityObserver.registerForHIDActivity()(a1);

  return swift_unknownObjectRelease();
}

uint64_t DeviceInactivityObserver.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24DeviceInactivityObserver__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24DeviceInactivityObserverC5StateOGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DeviceInactivityObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24DeviceInactivityObserver__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24DeviceInactivityObserverC5StateOGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type DeviceInactivityObserver.State and conformance DeviceInactivityObserver.State()
{
  result = lazy protocol witness table cache variable for type DeviceInactivityObserver.State and conformance DeviceInactivityObserver.State;
  if (!lazy protocol witness table cache variable for type DeviceInactivityObserver.State and conformance DeviceInactivityObserver.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceInactivityObserver.State and conformance DeviceInactivityObserver.State);
  }

  return result;
}

uint64_t type metadata accessor for DeviceInactivityObserver()
{
  result = type metadata singleton initialization cache for DeviceInactivityObserver;
  if (!type metadata singleton initialization cache for DeviceInactivityObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DeviceInactivityObserver()
{
  type metadata accessor for Published<DeviceInactivityObserver.State>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<DeviceInactivityObserver.State>()
{
  if (!lazy cache variable for type metadata for Published<DeviceInactivityObserver.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<DeviceInactivityObserver.State>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DeviceInactivityObserver.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t key path setter for VideoMessageInboxController.callItems : VideoMessageInboxController(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t VideoMessageInboxController.callItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t key path getter for VideoMessageInboxController.messageDeletionHandler : VideoMessageInboxController@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 128))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [UUID]) -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for VideoMessageInboxController.messageDeletionHandler : VideoMessageInboxController(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 136);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ()), v5);
}

uint64_t (*VideoMessageInboxController.messageDeletionHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v0 + 24);
    v2 = partial apply for closure #1 in VideoMessageInboxController.messageDeletionHandler.getter;
    *(v0 + 24) = partial apply for closure #1 in VideoMessageInboxController.messageDeletionHandler.getter;
    *(v0 + 32) = v3;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v2;
}

uint64_t closure #1 in VideoMessageInboxController.messageDeletionHandler.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = VideoMessageInboxController.messageStoreController.getter();

    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v8[5] = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t closure #1 in closure #1 in VideoMessageInboxController.messageDeletionHandler.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #1 in VideoMessageInboxController.messageDeletionHandler.getter;

  return MEMORY[0x1EEE03C10](a5);
}

uint64_t closure #1 in closure #1 in VideoMessageInboxController.messageDeletionHandler.getter()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.videoMessaging);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "Successfully deleted messages", v3, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  v18 = v0;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.videoMessaging);
  v4 = OUTLINED_FUNCTION_28_0();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  if (v7)
  {
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_38_3();
    *v1 = 136315138;
    *(v0 + 16) = v8;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v13, v14, "Failed to delete messages with error %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t VideoMessageInboxController.messageDeletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t (*VideoMessageInboxController.messageDeletionHandler.modify(uint64_t (**a1)(uint64_t a1)))(void *a1, char a2)
{
  a1[2] = v1;
  *a1 = VideoMessageInboxController.messageDeletionHandler.getter();
  a1[1] = v3;
  return VideoMessageInboxController.messageDeletionHandler.modify;
}

uint64_t VideoMessageInboxController.messageDeletionHandler.modify(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *(v2 + 24) = *a1;
  *(v2 + 32) = v3;
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_15_14();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15_14();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }
}

Swift::Void __swiftcall VideoMessageInboxController.deleteVideoMessageCallItems(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v35 = (v9 - v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v32 = &v29 - v13;
  v33 = v14;
  v15 = 0;
  v16 = *(a1._rawValue + 2);
  v34 = (v14 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    v18 = type metadata accessor for RecentsCallItem(0);
    OUTLINED_FUNCTION_9_0(v18);
    closure #1 in VideoMessageInboxController.deleteVideoMessageCallItems(_:)(a1._rawValue + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v20 + 72) * v15, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
      ++v15;
    }

    else
    {
      v30 = v17;
      v31 = v1;
      v21 = *v34;
      v22 = v32;
      (*v34)(v32, v6, v7);
      v23 = v22;
      v17 = v30;
      v29 = v21;
      v21(v35, v23, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v26;
      }

      v24 = *(v17 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v17 + 24) >> 1)
      {
        v30 = v24 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v30;
        v17 = v27;
      }

      ++v15;
      *(v17 + 16) = v25;
      v29((v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24), v35, v7);
      v1 = v31;
    }
  }

  v28 = (*(*v1 + 128))(v12);
  v28(v17);
}

uint64_t closure #1 in VideoMessageInboxController.deleteVideoMessageCallItems(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 messageUUID];

    if (v18)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for UUID();
      v20 = 0;
    }

    else
    {
      v19 = type metadata accessor for UUID();
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v20, 1, v19);
    outlined init with take of UUID?(v12, v15);
    type metadata accessor for UUID();
    if (__swift_getEnumTagSinglePayload(v15, 1, v19) != 1)
    {
      (*(*(v19 - 8) + 32))(a2, v15, v19);
      v33 = a2;
      v34 = 0;
      v32 = v19;
      return __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
    }
  }

  else
  {
    v21 = type metadata accessor for UUID();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4UUIDVSgMd);
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, &static Logger.videoMessaging);
  outlined init with copy of RecentsCallItemType(a1, v9, type metadata accessor for RecentsCallItem);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    outlined init with copy of RecentsCallItemType(v9, v6, type metadata accessor for RecentsCallItem);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v28 = v27;
    v30 = v29;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit15RecentsCallItemVSgMd);
    outlined destroy of RecentsCallItemType(v9, type metadata accessor for RecentsCallItem);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Ignoring request to delete a call item without a video message: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
    MEMORY[0x1BFB23DF0](v25, -1, -1);
  }

  else
  {

    outlined destroy of RecentsCallItemType(v9, type metadata accessor for RecentsCallItem);
  }

  v32 = type metadata accessor for UUID();
  v33 = a2;
  v34 = 1;
  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
}

uint64_t VideoMessageInboxController.markCallItemAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v53 - v6;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v55 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v54 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v60 = &v53 - v32;
  outlined init with copy of RecentsCallItemType(a1, v9, type metadata accessor for RecentsCallItemType);
  OUTLINED_FUNCTION_4_31();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    outlined destroy of RecentsCallItemType(v9, type metadata accessor for RecentsCallItemType);
LABEL_9:
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd);
  }

  if ((EnumCaseMultiPayload - 3) >= 2)
  {
    v34 = v14;
  }

  else
  {
    v34 = v17;
  }

  v35 = OUTLINED_FUNCTION_4_31();
  outlined init with take of RecentCallRecentItemMetadata(v35, v36, v37);
  v38 = *(v34 + *(v10 + 52));
  v39 = v38;
  outlined destroy of RecentsCallItemType(v34, type metadata accessor for RecentCallRecentItemMetadata);
  if (!v38)
  {
    goto LABEL_9;
  }

  v40 = [v39 messageUUID];

  if (v40)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v41, 1, v26);
  outlined init with take of UUID?(v22, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s10Foundation4UUIDVSgMd);
  }

  v43 = v55;
  v53 = *(v55 + 32);
  v44 = v60;
  v53(v60, v25, v26);
  v45 = v56;
  static TaskPriority.userInitiated.getter();
  v46 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v47 = v54;
  (*(v43 + 16))(v54, v44, v26);
  v48 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = v57;
  v53(&v49[v48], v47, v26);
  v50 = &v49[(v29 + v48 + 7) & 0xFFFFFFFFFFFFFFF8];
  v51 = v59;
  *v50 = v58;
  *(v50 + 1) = v51;

  v52 = OUTLINED_FUNCTION_4_31();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v52);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  return (*(v43 + 8))(v60, v26);
}

uint64_t closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v7[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:), 0, 0);
}

uint64_t closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)()
{
  OUTLINED_FUNCTION_44();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v0[11] = VideoMessageInboxController.messageStoreController.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_1BC4BA940;
  v6 = *(v2 + 16);
  v0[13] = v6;
  v0[14] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v4, v3, v1);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:);

  return MEMORY[0x1EEE03C20](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  v21 = v0;

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v3 = *(v0 + 128);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.videoMessaging);
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 128);
  if (v8)
  {
    swift_slowAlloc();
    v2 = OUTLINED_FUNCTION_38_3();
    v20 = v2;
    *v1 = 136315138;
    *(v0 + 16) = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v14, v15, "Marking video message as read failed: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_23_17(v16);
  type metadata accessor for MainActor();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
  static MainActor.shared.getter();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_8_39(v17, MEMORY[0x1E69E85E0]);

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_23_1();
  a18 = v20;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v24 = v20[13];
  v23 = v20[14];
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, &static Logger.videoMessaging);
  v27 = OUTLINED_FUNCTION_15_14();
  v24(v27);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[9];
  v31 = v20[10];
  v33 = v20[8];
  if (v30)
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_38_3();
    a9 = v23;
    *v26 = 136315138;
    lazy protocol witness table accessor for type MessageFetchOptions and conformance MessageFetchOptions(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v32 + 8))(v31, v33);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &a9);

    *(v26 + 4) = v37;
    _os_log_impl(&dword_1BBC58000, v28, v29, "Marked video message as read %s", v26, 0xCu);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v38 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_23_17(v38);
  type metadata accessor for MainActor();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v23);
  static MainActor.shared.getter();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_8_39(v39, MEMORY[0x1E69E85E0]);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t closure #1 in closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:), v7, v6);
}

uint64_t closure #1 in closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t RecentsCallItem.init(_:type:)@<X0>(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  dispatch thunk of Message.from.getter();
  v4 = objc_opt_self();
  v5 = OUTLINED_FUNCTION_46();
  v6 = MEMORY[0x1BFB209B0](v5);

  v7 = [v4 normalizedHandleWithDestinationID_];

  if (!v7)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_11_4();
  }

  v8 = OUTLINED_FUNCTION_46();
  ParticipantContactDetails.init(from:cache:)(v8, v9);
  v10 = v28;
  if (v28)
  {
    v12 = v26;
    v11 = v27;
    if (v26)
    {

      v13 = v26;
      v14 = v28;
      v15 = v27;
      goto LABEL_9;
    }

    v14 = v28;
    v15 = v27;
  }

  else
  {
LABEL_7:
    v11 = dispatch thunk of Message.from.getter();
    v14 = v16;
    v15 = 0;
    v10 = 0;
  }

  type metadata accessor for TUHandle();
  dispatch thunk of Message.from.getter();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_25_16();
  v20 = TUHandle.__allocating_init(type:value:)(v17, v18, v19);
  v13 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

  v12 = 0;
LABEL_9:
  v21 = v13;
  RecentsCallItem.init(message:title:contact:messageType:)(a1, v11, v14, v13, a2, a3);
  outlined consume of ParticipantContactDetails?(v12, v15, v10);

  v22 = type metadata accessor for RecentsCallItem(0);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
}

uint64_t VideoMessageInboxController.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));

  return v0;
}

uint64_t VideoMessageInboxController.__deallocating_deinit()
{
  VideoMessageInboxController.deinit();
  OUTLINED_FUNCTION_14_16();

  return swift_deallocClassInstance();
}

uint64_t VideoMessageInboxController.__allocating_init()()
{
  OUTLINED_FUNCTION_14_16();
  v0 = swift_allocObject();
  VideoMessageInboxController.init()();
  return v0;
}

uint64_t @objc VideoMessageInboxController.messageStoreDidAddMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a5(v6);
}

double ParticipantContactDetails.init(fromDestinationID:)@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = OUTLINED_FUNCTION_4_31();
  v4 = MEMORY[0x1BFB209B0](v3);

  v5 = [v2 normalizedHandleWithDestinationID_];

  if (!v5)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_11_4();
  }

  v6 = OUTLINED_FUNCTION_15_14();
  ParticipantContactDetails.init(from:cache:)(v6, v7);
  if (v10)
  {
    result = *&v11;
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
  }

  else
  {
LABEL_6:
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t ParticipantContactDetails.init(from:cache:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 value];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x1BFB209B0](v5);
  }

  v6 = [v4 destinationIdIsTemporary];

  if (v6)
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();
    v8 = v17;
    v9 = v18;
    v13 = v14;

    static ParticipantContactDetails.initialsFor(_:)(v14);
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.localizedUppercase.getter();
    v11 = v12;

    *a2 = v14;
    a2[1] = v15;
    a2[2] = v16;
  }

  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)(v4, v9, v10, v11, v0 + v7, v13, v14);
}

void outlined consume of ParticipantContactDetails?(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20FaceTimeMessageStore0E4TypeOSayAC0E0CGGMd);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 2 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v31 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    v21 = MessageType.rawValue.getter();
    Hasher._combine(_:)(v21);
    result = Hasher._finalize()();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 2 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AutoplayCandidate(0);
  v6 = OUTLINED_FUNCTION_9_0(v5);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15ConversationKit17AutoplayCandidateVGMd);
  OUTLINED_FUNCTION_4_31();
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v37 = v3;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v10 + 64);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(*(v10 + 48) + 8 * v23);
    v25 = *(v38 + 72);
    v26 = *(v10 + 56) + v25 * v23;
    if (v39)
    {
      outlined init with take of RecentCallRecentItemMetadata(v26, v9, type metadata accessor for AutoplayCandidate);
    }

    else
    {
      outlined init with copy of RecentsCallItemType(v26, v9, type metadata accessor for AutoplayCandidate);
    }

    result = MEMORY[0x1BFB22620](*(v12 + 40), v24);
    v27 = -1 << *(v12 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v12 + 48) + 8 * v30) = v24;
    result = outlined init with take of RecentCallRecentItemMetadata(v9, *(v12 + 56) + v25 * v30, type metadata accessor for AutoplayCandidate);
    ++*(v12 + 16);
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v19 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_0(v4);

  return closure #1 in closure #1 in VideoMessageInboxController.markCallItemAsRead(_:completion:)(v6, v7, v8, v2, v1);
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageInboxController.messageDeletionHandler.getter()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_0(v4);

  return closure #1 in closure #1 in VideoMessageInboxController.messageDeletionHandler.getter(v6, v7, v8, v2, v1);
}

Swift::Int StatusViewPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for ConversationHUDControlsStatusView.recipe : ConversationHUDControlsStatusView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA0))(v6);
}

void ConversationHUDControlsStatusView.recipe.didset(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v54 - v8;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  outlined init with copy of ConversationControlsRecipe(a1, v9);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v54[1] = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136315394;
    v18 = ConversationControlsRecipe.debugDescription.getter();
    v20 = v19;
    outlined destroy of ConversationControlsRecipe(v9);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_recipe;
    swift_beginAccess();
    outlined init with copy of ConversationControlsRecipe(&v11[v22], v6);
    v23 = ConversationControlsRecipe.debugDescription.getter();
    v25 = v24;
    outlined destroy of ConversationControlsRecipe(v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &aBlock);

    *(v16 + 14) = v26;
    v14 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    _os_log_impl(&dword_1BBC58000, v12, v13, "oldRecipe:%s\nnewRecipe:%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v17, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsRecipe(v9);
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 72);
  v29 = &v11[v14[252]];
  swift_beginAccess();
  v30 = *(v29 + 7);
  v31 = v30 == 0;
  if (v30)
  {
    v32 = *(v29 + 9);
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = 0;
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  if (v30)
  {
    v33 = v28 == v32;
  }

  else
  {
    v33 = 0;
  }

  v31 = v33;
LABEL_14:
  v34 = *(v55 + 40);
  v35 = a1 + v34;
  v36 = *(a1 + v34);
  v37 = &v29[v34];
  v38 = *&v29[v34];
  v39 = v38 == 0;
  if (v38)
  {
    v40 = *(v37 + 2);
    if (v36)
    {
LABEL_16:
      v41 = *(v35 + 16);
      if (v38)
      {
        v42 = v41 == v40;
      }

      else
      {
        v42 = 0;
      }

      v39 = v42;
    }
  }

  else
  {
    v40 = 0;
    if (v36)
    {
      goto LABEL_16;
    }
  }

  v43 = objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v44 = !v39;
  v45 = !v31;
  v46 = (*(*static Defaults.shared + 1056))();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  v48 = (*(v56 + 80) + 26) & ~*(v56 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v45;
  *(v49 + 25) = v44;
  outlined init with take of ConversationControlsRecipe(v6, v49 + v48);
  v61 = partial apply for closure #1 in ConversationHUDControlsStatusView.recipe.didset;
  v62 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed () -> ();
  v60 = &block_descriptor_10;
  v50 = _Block_copy(&aBlock);

  v51 = swift_allocObject();
  *(v51 + 16) = v45;
  *(v51 + 24) = v11;
  *(v51 + 32) = v44;
  v61 = partial apply for closure #2 in ConversationHUDControlsStatusView.recipe.didset;
  v62 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v60 = &block_descriptor_24;
  v52 = _Block_copy(&aBlock);
  v53 = v11;

  [v43 animateWithDuration:v50 animations:v52 completion:v46];
  _Block_release(v52);
  _Block_release(v50);
}

void closure #1 in ConversationHUDControlsStatusView.recipe.didset(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v66 - v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v18 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    v19 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))();
    if (v19)
    {
      v20 = v19;
      [v19 setAlpha_];
    }
  }

  v66 = v9;
  v67 = v7;
  if (a3)
  {
    v21 = (*((*v18 & *v17) + 0xF8))();
    v22 = (*((*v18 & *v21) + 0x158))();

    if (v22)
    {
      [v22 setAlpha_];
    }
  }

  v23 = [*(a4 + 80) string];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v68 = *((*v18 & *v17) + 0x98);
  v68();
  v27 = v15[10];
  outlined destroy of ConversationControlsRecipe(v15);
  v28 = [v27 string];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v24 == v29 && v26 == v31)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      v35 = MEMORY[0x1E69E7D40];
      v36 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xF8))(v34);
      v37 = (*((*v35 & *v36) + 0x110))();

      [v37 setAlpha_];
    }
  }

  v38 = *(a4 + 88);
  if (specialized Array.count.getter(v38))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v38 & 0xC000000000000001) == 0, v38);
    v40 = v66;
    v39 = v67;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1BFB22010](0, v38);
    }

    else
    {
      v41 = *(v38 + 32);
    }

    v42 = v41;
    v43 = [v41 string];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v40 = v66;
    v39 = v67;
  }

  v68();
  v47 = *(v12 + 11);

  outlined destroy of ConversationControlsRecipe(v12);
  if (specialized Array.count.getter(v47))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v47 & 0xC000000000000001) == 0, v47);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1BFB22010](0, v47);
    }

    else
    {
      v48 = *(v47 + 32);
    }

    v49 = v48;

    v50 = [v49 string];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    if (v46)
    {
      if (v53)
      {
        if (v44 == v51 && v46 == v53)
        {

          goto LABEL_36;
        }

        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v56)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_34:

LABEL_35:
      v57 = MEMORY[0x1E69E7D40];
      v58 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xF8))(v54);
      v59 = (*((*v57 & *v58) + 0xE0))();

      [v59 setAlpha_];
      goto LABEL_36;
    }

    if (v53)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v46)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  v60 = *(a4 + *(v39 + 48));
  (v68)(v54);
  v61 = *(v40 + *(v39 + 48));
  v62 = outlined destroy of ConversationControlsRecipe(v40);
  if (v60 != v61)
  {
    v63 = MEMORY[0x1E69E7D40];
    v64 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xF8))(v62);
    v65 = (*((*v63 & *v64) + 0x140))();

    [v65 setAlpha_];
  }
}

void closure #2 in ConversationHUDControlsStatusView.recipe.didset(uint64_t a1, char a2, void *a3, char a4)
{
  v6 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    ConversationHUDControlsStatusView.updateLeadingAccessoryView()();
    v7 = (*((*v6 & *a3) + 0x110))();
    if (v7)
    {
      v8 = v7;
      [v7 setAlpha_];
    }
  }

  if (a4)
  {
    v9 = *((*v6 & *a3) + 0xF8);
    v10 = v9();
    (*((*v6 & *v10) + 0x1E0))();

    v11 = v9();
    v12 = (*((*v6 & *v11) + 0x158))();

    if (v12)
    {
      [v12 setAlpha_];
    }
  }

  v13 = objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = (*(*static Defaults.shared + 1056))();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = partial apply for closure #1 in closure #2 in ConversationHUDControlsStatusView.recipe.didset;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed () -> ();
  v17[3] = &block_descriptor_28_0;
  v16 = _Block_copy(v17);

  [v13 animateWithDuration:v16 animations:v14];
  _Block_release(v16);
}

void ConversationHUDControlsStatusView.updateLeadingAccessoryView()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*v1 & *v0) + 0xC8))();
    [v4 removeArrangedSubview_];

    [v3 removeFromSuperview];
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v5)
  {
    v7 = *((*v1 & *v0) + 0x118);

    v7(0);
  }

  else
  {
    v8 = ConversationHUDControlsStatusView.createLeadingAccessoryView()();
    if (v8)
    {
      v9 = v8;
      v10 = *((*v1 & *v0) + 0x118);
      v11 = v8;
      v12 = v10(v9);
      v13 = (*((*v1 & *v0) + 0xC8))(v12);
      [v13 insertArrangedSubview:v11 atIndex:0];
    }
  }
}

void closure #1 in closure #2 in ConversationHUDControlsStatusView.recipe.didset()
{
  v0 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))();
    if (v6)
    {
      v7 = v6;
      [v6 setAlpha_];
    }

    v8 = *((*v5 & *v4) + 0xF8);
    v9 = v8();
    v10 = *((*v5 & *v4) + 0x98);
    v10();
    (*((*v5 & *v9) + 0xB0))(v2);

    v11 = v8();
    v12 = (*((*v5 & *v11) + 0x158))();

    if (v12)
    {
      [v12 setAlpha_];
    }

    v13 = v8();
    v14 = (*((*v5 & *v13) + 0x110))();

    [v14 setAlpha_];
    v15 = (*((*v5 & *v4) + 0xE0))();
    v10();
    (*((*v5 & *v15) + 0x90))(v2);
  }
}

uint64_t ConversationHUDControlsStatusView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_recipe;
  OUTLINED_FUNCTION_4_0();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t ConversationHUDControlsStatusView.recipe.setter(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_recipe;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v8);
  swift_endAccess();
  ConversationHUDControlsStatusView.recipe.didset(v7);
  outlined destroy of ConversationControlsRecipe(a1);
  return outlined destroy of ConversationControlsRecipe(v7);
}

void (*ConversationHUDControlsStatusView.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_recipe;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  return ConversationHUDControlsStatusView.recipe.modify;
}

void ConversationHUDControlsStatusView.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of ConversationControlsRecipe(v4, v3);
    ConversationHUDControlsStatusView.recipe.setter(v3);
    outlined destroy of ConversationControlsRecipe(v4);
  }

  else
  {
    ConversationHUDControlsStatusView.recipe.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for ConversationHUDControlsStatusView.conversationStatusHStack : ConversationHUDControlsStatusView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationHUDControlsStatusView.conversationStatusHStack.getter(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v5 setAxis_];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  [v5 setAlignment_];
  static Layout.ConversationControls.values.getter(v13);
  [v5 setSpacing_];

  v7 = MEMORY[0x1E69E7D40];
  if ((v4 & 1) == 0)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))();
    if (v8)
    {
      v9 = v8;
      [v5 addArrangedSubview_];
    }
  }

  v10 = (*((*v7 & *a1) + 0xF8))();
  [v5 addArrangedSubview_];

  if (((*((*v7 & *a1) + 0x130))() & 1) == 0)
  {
    v11 = (*((*v7 & *a1) + 0xE0))();
    [v5 addArrangedSubview_];
  }

  return v5;
}

void (*ConversationHUDControlsStatusView.conversationStatusHStack.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDControlsStatusView.conversationStatusHStack.getter();
  return ConversationHUDControlsStatusView.conversationStatusHStack.modify;
}

uint64_t key path getter for ConversationHUDControlsStatusView.trailingActionsView : ConversationHUDControlsStatusView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

id ConversationHUDControlsStatusView.trailingActionsView.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___trailingActionsView;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___trailingActionsView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___trailingActionsView);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_controlsManager);
    v11 = v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_menuHostViewController;
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = *(v11 + 1);
    v14 = *(v1 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_context);
    objc_allocWithZone(type metadata accessor for ConversationControlsTrailingActionsView());
    v15 = ConversationControlsTrailingActionsView.init(recipe:controlsManager:menuHostViewController:context:)(v6, v10, Strong, v13, v14);
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = *(v1 + v7);
    *(v1 + v7) = v15;
    v9 = v15;

    v8 = 0;
  }

  v17 = v8;
  return v9;
}

void (*ConversationHUDControlsStatusView.trailingActionsView.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDControlsStatusView.trailingActionsView.getter();
  return ConversationHUDControlsStatusView.trailingActionsView.modify;
}

id ConversationHUDControlsStatusView.conversationStatusHStack.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t key path getter for ConversationHUDControlsStatusView.conversationDetailsView : ConversationHUDControlsStatusView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

id closure #1 in ConversationHUDControlsStatusView.conversationDetailsView.getter(void *a1)
{
  v2 = type metadata accessor for ConversationControlsRecipe();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x98))(v3);
  v11 = *(a1 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_presentationStyle);
  v6 = *(a1 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_controlsManager);
  v7 = objc_allocWithZone(type metadata accessor for ConversationDetailsView());
  v8 = ConversationDetailsView.init(recipe:presentationStyle:controlsManager:)(v5, &v11, v6);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  return v8;
}

void (*ConversationHUDControlsStatusView.conversationDetailsView.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDControlsStatusView.conversationDetailsView.getter();
  return ConversationHUDControlsStatusView.conversationDetailsView.modify;
}

uint64_t key path getter for ConversationHUDControlsStatusView.leadingAccessoryView : ConversationHUDControlsStatusView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDControlsStatusView.leadingAccessoryView : ConversationHUDControlsStatusView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDControlsStatusView.leadingAccessoryView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_leadingAccessoryView;
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDControlsStatusView.leadingAccessoryView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_leadingAccessoryView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double ConversationHUDControlsStatusView.conversationStatusHStackLeadingPadding.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (v1)
  {

    return 0.0;
  }

  else
  {
    static Layout.ConversationControls.values.getter(v3);
    return v3[13];
  }
}

uint64_t ConversationHUDControlsStatusView.needsExplicitLayoutForInfoButton.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  LOBYTE(v1) = (*((*v1 & *v2) + 0x108))();

  return v1 & 1;
}

id ConversationHUDControlsStatusView.init(recipe:controlsManager:menuHostViewController:context:presentationStyle:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char *a6)
{
  v12 = *a6;
  v13 = &v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_menuHostViewController];
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_menuHostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___conversationStatusHStack] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___trailingActionsView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___conversationDetailsView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_leadingAccessoryView] = 0;
  outlined init with copy of ConversationControlsRecipe(a1, &v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_recipe]);
  *&v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_controlsManager] = a2;
  v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_context] = a5;
  *(v13 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v6[OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_presentationStyle] = v12;
  v17.receiver = v6;
  v17.super_class = type metadata accessor for ConversationHUDControlsStatusView();
  v14 = a2;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 setupRootView];

  outlined destroy of ConversationControlsRecipe(a1);
  return v15;
}

id ConversationHUDControlsStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDControlsStatusView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___conversationStatusHStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___trailingActionsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView____lazy_storage___conversationDetailsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_leadingAccessoryView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDControlsStatusView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ConversationHUDControlsStatusView();
  objc_msgSendSuper2(&v20, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = isa;
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [(objc_class *)v3 preferredContentSizeCategory];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        v14 = [v13 preferredContentSizeCategory];

        LOBYTE(v13) = UIContentSizeCategory.isAccessibilityCategory.getter();
        v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
        v16 = v15();
        [v16 setAxis_];

        v17 = v15();
        v18 = v17;
        if (v13)
        {
          v19 = 1;
        }

        else
        {
          v19 = 3;
        }

        [v17 setAlignment_];

        ConversationHUDControlsStatusView.updateLeadingAccessoryView()();
      }
    }
  }
}

id ConversationHUDControlsStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDControlsStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ConversationHUDControlsStatusView.setupRootView()()
{
  v1 = v0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v0 addInteraction_];
  v2 = ConversationHUDControlsStatusView.createLeadingAccessoryView()();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v2);
  v5 = (*((*v3 & *v0) + 0xC8))(v4);
  [v1 addSubview_];

  if ((*((*v3 & *v1) + 0x130))())
  {
    v6 = (*((*v3 & *v1) + 0xE0))();
    [v1 addSubview_];
  }

  v7 = (*((*v3 & *v1) + 0xF8))();
  (*((*v3 & *v7) + 0x1E0))();

  ConversationHUDControlsStatusView.setupLayoutConstraints()();
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_presentationStyle) == 1)
  {
    v8 = (*((*v3 & *v1) + 0xE0))();
    [v8 setHidden_];
  }
}

void *ConversationHUDControlsStatusView.createLeadingAccessoryView()()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v9(v6);
  v10 = *(v8 + 7);
  if (v10)
  {
    v11 = v10;
    outlined destroy of ConversationControlsRecipe(v8);
    v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_presentationStyle);
    v39 = v9;
    v40 = v10;
    if (v12)
    {
      static Layout.ConversationControls.values.getter(v44);
      v13 = &v46;
    }

    else
    {
      static Layout.ConversationControls.values.getter(v44);
      v13 = &v45;
    }

    v27 = *v13;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA930;
    v30 = [v11 heightAnchor];
    v31 = [v30 constraintEqualToConstant_];

    *(v29 + 32) = v31;
    v32 = [v11 widthAnchor];
    v33 = [v32 constraintEqualToConstant_];

    *(v29 + 40) = v33;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints_];

    v39();
    outlined init with copy of ConversationControlsType(v4, &v42);
    outlined destroy of ConversationControlsRecipe(v4);
    *(&v41[1] + 9) = *(v43 + 9);
    v41[0] = v42;
    v41[1] = v43[0];
    if (BYTE8(v43[1]) == 7 && *&v41[0] == 12 && (v35 = vorrq_s8(*(v41 + 8), *(&v41[1] + 8)), !*&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL))))
    {
      v36 = [v11 layer];
      [v36 setCornerRadius_];

      v37 = [v11 layer];
      [v37 setMasksToBounds_];
    }

    else
    {
      outlined destroy of ConversationControlsType(v41);
    }

    return v40;
  }

  else
  {
    outlined destroy of ConversationControlsRecipe(v8);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = 0;
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = v9;
      v22 = v20;
      v44[0] = v20;
      *v19 = 136315138;
      v21();
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v44);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Unable to obtain leadingAccessoryView for recipe: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      v26 = v19;
      v10 = v40;
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }
  }

  return v10;
}

Swift::Void __swiftcall ConversationHUDControlsStatusView.setupLayoutConstraints()()
{
  v1 = v0;
  v41 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  v4 = v3();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v6 = v3();
  v7 = [v6 topAnchor];

  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(inited + 32) = v9;
  v10 = v3();
  v11 = [v10 leadingAnchor];

  v12 = [v1 leadingAnchor];
  (*((*v2 & *v1) + 0x128))();
  v13 = [v11 constraintEqualToAnchor:v12 constant:?];

  *(inited + 40) = v13;
  v14 = v3();
  v15 = [v14 bottomAnchor];

  v16 = [v1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(inited + 48) = v17;
  v18 = specialized Array.append<A>(contentsOf:)(inited);
  if ((*((*v2 & *v1) + 0x130))(v18))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BC370;
    v20 = v3();
    v21 = [v20 trailingAnchor];

    v22 = *((*v2 & *v1) + 0xE0);
    v23 = v22();
    v24 = [v23 leadingAnchor];

    static Layout.ConversationControls.values.getter(v42);
    v25 = [v21 constraintEqualToAnchor:v24 constant:-v42[15]];

    *(v19 + 32) = v25;
    v26 = v22();
    v27 = [v26 centerYAnchor];

    v28 = v3();
    v29 = [v28 centerYAnchor];

    v30 = [v27 constraintEqualToAnchor_];
    *(v19 + 40) = v30;
    v31 = v22();
    v32 = [v31 centerXAnchor];

    v33 = [v1 trailingAnchor];
    static Layout.ConversationControls.values.getter(v43);
    v34 = [v32 constraintEqualToAnchor:v33 constant:v43[25] * -0.5];

    *(v19 + 48) = v34;
    specialized Array.append<A>(contentsOf:)(v19);
  }

  else
  {
    v35 = v3();
    v36 = [v35 trailingAnchor];

    v37 = [v1 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    MEMORY[0x1BFB20CC0]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v39 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints_];
}

UIPointerRegion_optional __swiftcall ConversationHUDControlsStatusView.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = [(objc_class *)_.super.isa view];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerRegion);
    [v5 bounds];
    v6 = UIPointerRegion.init(rect:identifier:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  result.value.super.isa = v7;
  result.is_nil = v4;
  return result;
}

UIPointerStyle_optional __swiftcall ConversationHUDControlsStatusView.pointerInteraction(_:styleFor:)(UIPointerInteraction _, UIPointerRegion styleFor)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for UIPointerEffect();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v13 = (v12 - v11);
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_context) == 2 || ((*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit33ConversationHUDControlsStatusView_controlsManager)) + 0x380))() & 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [(objc_class *)_.super.isa view];
    if (v14)
    {
      static Layout.ConversationControls.values.getter(v40);
      v16 = v40[13];
      static Layout.ConversationControls.values.getter(&v41);
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
      [v14 bounds];
      v22 = UIEdgeInsetsInsetRect(v18, v19, v20, v21, -v16, -v16);
      v26 = [objc_opt_self() bezierPathWithRect_];
      [v17 setVisiblePath_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedPreview);
      v27 = v14;
      v39 = v27;
      v38.super.isa = v17;
      isa = UITargetedPreview.__allocating_init(view:parameters:)(v27, v38).super.isa;
      v37 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UITargetedPreviewC_5UIKit15UIPointerEffectO8TintModeO09preferredfG0Sb13prefersShadowSb0I13ScaledContenttMd);
      v30 = v29[12];
      v31 = v29[16];
      v32 = v29[20];
      *v13 = isa;
      v33 = *MEMORY[0x1E69DBF88];
      v34 = type metadata accessor for UIPointerEffect.TintMode();
      (*(*(v34 - 8) + 104))(v13 + v30, v33, v34);
      *(v13 + v31) = 0;
      *(v13 + v32) = 0;
      (*(v9 + 104))(v13, *MEMORY[0x1E69DBF78], v8);
      v35 = type metadata accessor for UIPointerShape();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v35);
      v36 = isa;
      v14 = UIPointerStyle.init(effect:shape:)();
    }
  }

  v15 = v14;
  result.value.super.super.isa = v15;
  result.is_nil = v10;
  return result;
}

UITargetedPreview __swiftcall UITargetedPreview.__allocating_init(view:parameters:)(UIView *view, UIPreviewParameters parameters)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:view parameters:parameters.super.isa];

  return v4;
}

uint64_t type metadata accessor for ConversationHUDControlsStatusView()
{
  result = type metadata singleton initialization cache for ConversationHUDControlsStatusView;
  if (!type metadata singleton initialization cache for ConversationHUDControlsStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StatusViewPresentationStyle and conformance StatusViewPresentationStyle()
{
  result = lazy protocol witness table cache variable for type StatusViewPresentationStyle and conformance StatusViewPresentationStyle;
  if (!lazy protocol witness table cache variable for type StatusViewPresentationStyle and conformance StatusViewPresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusViewPresentationStyle and conformance StatusViewPresentationStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [StatusViewPresentationStyle] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [StatusViewPresentationStyle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [StatusViewPresentationStyle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit27StatusViewPresentationStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [StatusViewPresentationStyle] and conformance [A]);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusViewPresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for ConversationHUDControlsStatusView()
{
  result = type metadata accessor for ConversationControlsRecipe();
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

uint64_t outlined init with take of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in ConversationHUDControlsStatusView.recipe.didset()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0 + ((*(v2 + 80) + 26) & ~*(v2 + 80));

  closure #1 in ConversationHUDControlsStatusView.recipe.didset(v3, v4, v5, v6);
}

id ConversationHUDInCallBackdropView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ConversationHUDInCallBackdropView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_18_1();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
  v5 = [v4 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAA20;
  v7 = ConversationHUDInCallBackdropView.colorMatrixFilter.getter();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  *(v6 + 56) = v8;
  *(v6 + 32) = v7;
  v9 = ConversationHUDInCallBackdropView.gaussianBlurFilter.getter();
  *(v6 + 88) = v8;
  *(v6 + 64) = v9;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v6, v5);

  return v4;
}

id ConversationHUDInCallBackdropView.colorMatrixFilter.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = CAFilter.__allocating_init(type:)(v0, v1);
  v6[0] = xmmword_1BC4C0320;
  v6[1] = xmmword_1BC4C0330;
  v6[2] = xmmword_1BC4C0340;
  v6[3] = xmmword_1BC4C0350;
  v6[4] = xmmword_1BC4C0360;
  v3 = [objc_opt_self() valueWithCAColorMatrix_];
  v4 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F6B50);
  [v2 setValue:v3 forKey:v4];

  return v2;
}

id ConversationHUDInCallBackdropView.gaussianBlurFilter.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = CAFilter.__allocating_init(type:)(v0, v1);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
  [v2 setValue:isa forKey:v4];

  v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
  [v2 setValue:v5 forKey:v6];

  return v2;
}

id ConversationHUDInCallBackdropView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ConversationHUDInCallBackdropView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ConversationHUDInCallBackdropView.setCaptureGroup(_:)(uint64_t a1, uint64_t a2)
{
  v4 = ConversationHUDInCallBackdropView.backdropLayer.getter();
  if (a2)
  {
    v5 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setGroupName_];
}

uint64_t ConversationHUDInCallBackdropView.backdropLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc CALayer.filters.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setFilters_];
}

id InCallControlsAddParticipantCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsAddParticipantCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v12 = v0;
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_18_1();
  v4 = objc_msgSendSuper2(v2, v3, v1);
  v5 = *&v4[OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_button];
  v10 = &type metadata for SymbolImageDescribers.DrawerTable;
  v11 = &protocol witness table for SymbolImageDescribers.DrawerTable;
  v9[0] = 1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);
  v7 = v5;
  v6(v9);

  outlined destroy of SymbolImageDescribing?(v9);
  return v4;
}

uint64_t outlined destroy of SymbolImageDescribing?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SymbolImageDescribing_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id InCallControlsAddParticipantCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InCallControlsAddParticipantCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UISecureHostingController.init(rootView:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_2();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + class metadata base offset for UISecureHostingController);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v10 - v7, a1, v3, v6);
  v8 = UIHostingController.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v8;
}

void *UISecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_2();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + class metadata base offset for UISecureHostingController);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v13 - v8, v7);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id UISecureHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UISecureHostingController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_13_2();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UISecureHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UISecureHostingController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_13_2();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UISecureHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AudioVisualizationView.audioVisualizationLayer.getter()
{
  v1 = [v0 layer];
  type metadata accessor for AudioVisualizationLayer();
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id AudioVisualizationView.init(colorStyle:)(unsigned __int8 *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_gradient] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_colorStyle] = v2;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AudioVisualizationView();
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = v3;
  if (v2 == 1)
  {
    v5 = v3;
    v6 = AudioVisualizationView.audioVisualizationLayer.getter();
    if (one-time initialization token for overlayContent != -1)
    {
      swift_once();
    }

    v7 = static Colors.ParticipantViews.overlayContent;
    v8 = static Colors.ParticipantViews.overlayContent;
    AudioVisualizationLayer.color.setter(v7);
  }

  return v4;
}

id AudioVisualizationView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AudioVisualizationView.init()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_gradient) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id AudioVisualizationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void AudioVisualizationView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_gradient) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

id AudioVisualizationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AudioVisualizationView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_gradient) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

float AudioVisualizationView.scale.getter()
{
  v0 = AudioVisualizationView.audioVisualizationLayer.getter();
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit23AudioVisualizationLayer_scale];
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void AudioVisualizationView.scale.setter(float a1)
{
  v2 = AudioVisualizationView.audioVisualizationLayer.getter();
  v3 = &v2[OBJC_IVAR____TtC15ConversationKit23AudioVisualizationLayer_scale];
  swift_beginAccess();
  *v3 = a1;
}

void (*AudioVisualizationView.scale.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AudioVisualizationView.scale.getter();
  return AudioVisualizationView.scale.modify;
}

uint64_t key path getter for AudioVisualizationView.gradient : AudioVisualizationView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AudioVisualizationView.gradient : AudioVisualizationView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v2(v3);
}

void AudioVisualizationView.gradient.didset()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_colorStyle) & 1) == 0)
  {
    v1 = AudioVisualizationView.audioVisualizationLayer.getter();
    swift_beginAccess();

    v3 = specialized Array<A>.interpolatedColor(percent:)(v2, 0.25);

    v4 = UIColor.screenBlendedColor.getter();

    AudioVisualizationLayer.color.setter(v4);
  }
}

id specialized Array<A>.interpolatedColor(percent:)(unint64_t a1, double a2)
{
  if (specialized Array.count.getter(a1) && ((specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1), (a1 & 0xC000000000000001) != 0) ? (v4 = MEMORY[0x1BFB22010](0, a1)) : (v4 = *(a1 + 32)), v5 = v4, v6 = UIColor.hslaComponents.getter(), v8 = v7, v10 = v9, v12 = v11, v5, (v13 = specialized BidirectionalCollection.last.getter(a1)) != 0))
  {
    v14 = v13;
    v15 = UIColor.hslaComponents.getter();
    v17 = v16;
    v19 = v18;
    v24 = v20;

    v21 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v21 initWithHue:(1.0 - a2) * v6 + v15 * a2 saturation:(1.0 - a2) * v8 + v17 * a2 brightness:(1.0 - a2) * v10 + v19 * a2 alpha:(1.0 - a2) * v12 + v24 * a2];
  }

  else
  {
    v23 = [objc_opt_self() clearColor];

    return v23;
  }
}

void AudioVisualizationView.gradient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22AudioVisualizationView_gradient;
  swift_beginAccess();
  *(v1 + v3) = a1;

  AudioVisualizationView.gradient.didset();
}

void (*AudioVisualizationView.gradient.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AudioVisualizationView.gradient.modify;
}

void AudioVisualizationView.gradient.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    AudioVisualizationView.gradient.didset();
  }
}

void AudioVisualizationView.startAnimation()(void (*a1)(void))
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = AudioVisualizationView.audioVisualizationLayer.getter();
    a1();
  }

  else
  {
    __break(1u);
  }
}

id AudioVisualizationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioVisualizationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallRecordingButtonViewModel.__allocating_init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_4_32();
  v0 = swift_allocObject();
  CallRecordingButtonViewModel.init(_:_:_:_:_:)();
  return v0;
}

void CallRecordingButtonViewModel.recordingAvailability.setter(int a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 60) = a1;
  CallRecordingButtonViewModel.updateButtonState()();
}

Swift::Void __swiftcall CallRecordingButtonViewModel.updateCallUUID(_:)(Swift::String a1)
{
  *(v1 + 40) = a1;
}

void CallRecordingButtonViewModel.delegate.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void (*CallRecordingButtonViewModel.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CallRecordingButtonViewModel.delegate.modify;
}

void CallRecordingButtonViewModel.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[5] + 3) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path getter for CallRecordingButtonViewModel.recordingAvailability : CallRecordingButtonViewModel@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 60);
  return result;
}

uint64_t (*CallRecordingButtonViewModel.recordingAvailability.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CallRecordingButtonViewModel.recordingAvailability.modify;
}

uint64_t key path getter for CallRecordingButtonViewModel.recordingState : CallRecordingButtonViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 68);
  *a2 = *(v3 + 64);
  *(a2 + 4) = v5;
  return result;
}

void CallRecordingButtonViewModel.recordingState.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 64) = a1;
  *(v1 + 68) = BYTE4(a1) & 1;
  CallRecordingButtonViewModel.updateButtonState()();
}

uint64_t (*CallRecordingButtonViewModel.recordingState.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CallRecordingButtonViewModel.recordingState.modify;
}

void CallRecordingButtonViewModel.recordingAvailability.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CallRecordingButtonViewModel.updateButtonState()();
  }
}

uint64_t CallRecordingButtonViewModel.educationScreenShown.getter()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MEMORY[0x1BFB209B0](*(v0 + 72), *(v0 + 80));
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v8, &_sypSgMd);
    return 0;
  }

  return result;
}

void CallRecordingButtonViewModel.educationScreenShown.setter(char a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = MEMORY[0x1BFB209B0](*(v1 + 72), *(v1 + 80));
  [v3 setBool:a1 & 1 forKey:v4];
}

void (*CallRecordingButtonViewModel.educationScreenShown.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CallRecordingButtonViewModel.educationScreenShown.getter() & 1;
  return CallRecordingButtonViewModel.educationScreenShown.modify;
}

uint64_t CallRecordingButtonViewModel.init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_4_32();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0xD000000000000030;
  *(v1 + 80) = 0x80000001BC4F6CF0;
  *(v1 + 88) = MEMORY[0x1E69E7CD0];
  *(v1 + 40) = v6;
  *(v1 + 48) = v5;
  *(v1 + 60) = v4;
  swift_beginAccess();
  *(v1 + 64) = v3;
  *(v1 + 68) = BYTE4(v3) & 1;
  *(v1 + 33) = v0;
  *(v1 + 32) = v2;
  CallRecordingButtonViewModel.observeNotification()();
  CallRecordingButtonViewModel.updateButtonState()();
  return v1;
}

Swift::Void __swiftcall CallRecordingButtonViewModel.observeNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v35 - v1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v46 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v42 = objc_opt_self();
  v14 = [v42 defaultCenter];
  OUTLINED_FUNCTION_8_40();

  v40 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15 = static OS_dispatch_queue.main.getter();
  v47 = v15;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v44);
  v43 = lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  v41 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v45 = v3;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v2, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v16 = v9;
  v17 = *(v5 + 8);
  v37 = v5 + 8;
  v17(v8, v3);
  OUTLINED_FUNCTION_20();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = lazy protocol witness table accessor for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>();
  Publisher<>.sink(receiveValue:)();

  v35 = *(v46 + 8);
  v46 += 8;
  v35(v13, v16);
  OUTLINED_FUNCTION_2_48();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v20 = [v42 defaultCenter];
  OUTLINED_FUNCTION_8_40();

  v21 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_0_47(v21);
  v22 = v45;
  OUTLINED_FUNCTION_3_45();
  outlined destroy of TapInteractionHandler?(v2, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v39 = v17;
  v17(v8, v22);
  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  swift_weakInit();
  v38 = v19;
  Publisher<>.sink(receiveValue:)();

  v36 = v16;
  v24 = v16;
  v25 = v35;
  v35(v13, v24);
  OUTLINED_FUNCTION_2_48();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = [v42 defaultCenter];
  if (one-time initialization token for startCallRecordingStateFailedNotification != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_40();

  v27 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_0_47(v27);
  v28 = v45;
  OUTLINED_FUNCTION_3_45();
  outlined destroy of TapInteractionHandler?(v2, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v39(v8, v28);
  OUTLINED_FUNCTION_20();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v36;
  Publisher<>.sink(receiveValue:)();

  v25(v13, v30);
  OUTLINED_FUNCTION_2_48();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v31 = [v42 defaultCenter];
  v32 = v25;
  if (one-time initialization token for startCallRecordingStateCancelledNotification != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_40();

  v33 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_0_47(v33);
  v34 = v45;
  OUTLINED_FUNCTION_3_45();
  outlined destroy of TapInteractionHandler?(v2, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v39(v8, v34);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v32(v13, v30);
  OUTLINED_FUNCTION_2_48();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall CallRecordingButtonViewModel.startRecordingButtonTapped()()
{
  if (CallRecordingButtonViewModel.educationScreenShown.getter())
  {
    *(v0 + 56) = 1;
    CallRecordingButtonViewModel.updateButtonState()();

    CallRecordingButtonViewModel.startRecordingCountdown()();
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);
    }
  }
}

Swift::Void __swiftcall CallRecordingButtonViewModel.startRecordingCountdown()()
{
  OUTLINED_FUNCTION_4_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
  }

  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for startCallRecordingCountdownNotification != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:static NSNotificationName.startCallRecordingCountdownNotification object:0];
}

void closure #1 in CallRecordingButtonViewModel.observeNotification()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (!v13)
    {

      outlined destroy of TapInteractionHandler?(v12, &_sypSgMd);
      return;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = [v11 callUUID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == *(v1 + 40) && v5 == *(v1 + 48))
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    *(v1 + 56) = 0;
    v8 = [v11 recordingSession];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 recordingState];
    }

    else
    {
      v10 = 0;
    }

    swift_beginAccess();
    *(v1 + 64) = v10;
    *(v1 + 68) = v9 == 0;
    CallRecordingButtonViewModel.updateButtonState()();
    goto LABEL_17;
  }
}

uint64_t closure #3 in CallRecordingButtonViewModel.observeNotification()(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.recordingSession);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v8, a3, v9, 2u);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    *(v5 + 56) = 0;
    CallRecordingButtonViewModel.updateButtonState()();
  }

  return result;
}

uint64_t CallRecordingButtonViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return v0;
}

uint64_t CallRecordingButtonViewModel.__deallocating_deinit()
{
  CallRecordingButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  return OUTLINED_FUNCTION_38_7();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_11_24();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_11_24();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_11_24();
}

{
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_38_7();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_11_24();
}

{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_18_23();
  switch(v0)
  {
    case 2:
      break;
    default:
      OUTLINED_FUNCTION_27_4();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_18_23();
  switch(v0)
  {
    case 1:
    case 5:
    case 6:
      goto LABEL_4;
    case 2:
    case 4:
      OUTLINED_FUNCTION_27_4();
      break;
    case 3:
      OUTLINED_FUNCTION_65_0();
LABEL_4:
      OUTLINED_FUNCTION_18_23();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_11_24();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return MEMORY[0x1BFB22640]((a2 & 1u) + 1);
}

{
  switch(a2)
  {
    case 2:
    case 6:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  v2 = VideoReaction.rawValue.getter(a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return MEMORY[0x1BFB22640](qword_1BC4C1588[a2]);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ImageNames.Staging.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ImageNames.ParticipantView.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t static RemoteControlRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for RemoteControlRequest(0);
  OUTLINED_FUNCTION_48_5(v0);

  return static Date.== infix(_:_:)();
}

uint64_t RemoteControlRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int RemoteControlRequest.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

uint64_t RemoteControlRequest.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 1684632949;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  IntelligenceRecipeGenerator.IntelligenceConfiguration.LeadingViewStyle.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RemoteControlRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RemoteControlRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RemoteControlRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RemoteControlRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteControlRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlRequestV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  OUTLINED_FUNCTION_52_1(a1);
  lazy protocol witness table accessor for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys();
  OUTLINED_FUNCTION_61_3();
  v14[15] = 0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v9, v10);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_58_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for RemoteControlRequest(0);
    OUTLINED_FUNCTION_50_5();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
    OUTLINED_FUNCTION_58_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys);
  }

  return result;
}

uint64_t RemoteControlRequest.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);
  OUTLINED_FUNCTION_40_4();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteControlRequest(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  lazy protocol witness table accessor for type UUID and conformance UUID(v2, v3);
  OUTLINED_FUNCTION_44_0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int RemoteControlRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);
  OUTLINED_FUNCTION_53_4(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteControlRequest(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  v12 = lazy protocol witness table accessor for type UUID and conformance UUID(v10, v11);
  OUTLINED_FUNCTION_53_4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void RemoteControlRequest.init(from:)()
{
  OUTLINED_FUNCTION_57_4();
  v3 = v2;
  v26 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v28 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v25 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v27 = v9 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlRequestV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v11 = type metadata accessor for RemoteControlRequest(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_76();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  lazy protocol witness table accessor for type RemoteControlRequest.CodingKeys and conformance RemoteControlRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    lazy protocol witness table accessor for type UUID and conformance UUID(v18, v19);
    OUTLINED_FUNCTION_67_3();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v25 + 32))(v15, v27, v28);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v20, v21);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = OUTLINED_FUNCTION_33_12();
    v23(v22, v29);
    (*(v24 + 32))(v15 + *(v11 + 20), v1, v26);
    outlined init with copy of RemoteControlRequest();
    __swift_destroy_boxed_opaque_existential_1(v3);
    outlined destroy of RemoteControlRequest();
  }

  OUTLINED_FUNCTION_51_2();
}

uint64_t RemoteControlRequest.init(uuid:date:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 32))(v3, v1);
  v5 = *(type metadata accessor for RemoteControlRequest(0) + 20);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v7 = *(v6 + 32);

  return v7(v3 + v5, v0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlRequest()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t RemoteControlRequest.date.getter@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  a2(0);
  OUTLINED_FUNCTION_7_0();
  v9 = *(v8 + 16);

  return v9(a3, v3 + v6, v7);
}

uint64_t RemoteControlResponse.date.getter()
{
  type metadata accessor for RemoteControlResponse(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_40_4();

  return v1(v0);
}

uint64_t static RemoteControlResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v2 = type metadata accessor for RemoteControlResponse(0), OUTLINED_FUNCTION_48_5(v2), (static UUID.== infix(_:_:)()) && (static Date.== infix(_:_:)())
  {
    v3 = *(v1 + *(v2 + 28)) ^ *(v0 + *(v2 + 28)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t RemoteControlResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F43776F6C6C61 && a2 == 0xEC0000006C6F7274)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t RemoteControlResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x5574736575716572;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6E6F43776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RemoteControlResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RemoteControlResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RemoteControlResponse.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RemoteControlResponse.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RemoteControlResponse.encode(to:)()
{
  OUTLINED_FUNCTION_57_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit21RemoteControlResponseV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_52_1(v3);
  lazy protocol witness table accessor for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys();
  OUTLINED_FUNCTION_61_3();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v8, v9);
  OUTLINED_FUNCTION_37_13();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for RemoteControlResponse(0);
    OUTLINED_FUNCTION_37_13();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v10, v11);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_37_13();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_37_13();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_51_2();
}

unint64_t lazy protocol witness table accessor for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys);
  }

  return result;
}

void RemoteControlResponse.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2);
  OUTLINED_FUNCTION_29_6();
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for RemoteControlResponse(0);
  OUTLINED_FUNCTION_29_6();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5);
  OUTLINED_FUNCTION_29_6();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v3 + 28)));
}

Swift::Int RemoteControlResponse.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for RemoteControlResponse(0);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  v6 = lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5);
  OUTLINED_FUNCTION_53_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v3 + 28)));
  return Hasher._finalize()();
}

void RemoteControlResponse.init(from:)()
{
  OUTLINED_FUNCTION_57_4();
  v51 = v1;
  v3 = v2;
  v42 = v4;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v43 = v5;
  v44 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v50 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v45 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v38 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit21RemoteControlResponseV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v47 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for RemoteControlResponse(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_52_1(v3);
  lazy protocol witness table accessor for type RemoteControlResponse.CodingKeys and conformance RemoteControlResponse.CodingKeys();
  v48 = v20;
  v23 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v39 = v9;
    v40 = v14;
    v51 = v21;
    v41 = v0;
    OUTLINED_FUNCTION_2_49();
    lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25);
    v26 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v41;
    v28 = v26;
    v29 = v50;
    v46 = *(v45 + 32);
    (v46)(v41, v28, v50);
    OUTLINED_FUNCTION_50_5();
    v30 = v40;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v46)(v27 + v51[5], v30, v29);
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v31, v32);
    v33 = v39;
    v34 = v43;
    v46 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v3;
    (*(v44 + 32))(v27 + v51[6], v33, v34);
    OUTLINED_FUNCTION_74_1();
    v36 = v48;
    OUTLINED_FUNCTION_37_13();
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v47 + 8))(v36, v49);
    *(v27 + v51[7]) = v37 & 1;
    outlined init with copy of RemoteControlRequest();
    __swift_destroy_boxed_opaque_existential_1(v35);
    outlined destroy of RemoteControlRequest();
  }

  OUTLINED_FUNCTION_51_2();
}

uint64_t RemoteControlResponse.init(uuid:requestUUID:date:allowControl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for RemoteControlResponse(0);
  v12(a5 + v13[5], a2, v10);
  v14 = v13[6];
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  result = (*(v15 + 32))(a5 + v14, a3);
  *(a5 + v13[7]) = a4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlResponse(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 28)));
  return Hasher._finalize()();
}

uint64_t outlined init with copy of RemoteControlRequest()
{
  OUTLINED_FUNCTION_6_7();
  v2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t outlined destroy of RemoteControlRequest()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t RemoteControlSuspensionReason.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_78_0();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_78_0();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RemoteControlRequest.uuid.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_40_4();

  return v2(v1, v0);
}

uint64_t RemoteControlSuspendRequest.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RemoteControlSuspendRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

BOOL static RemoteControlSuspendRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v2 = type metadata accessor for RemoteControlSuspendRequest(0), OUTLINED_FUNCTION_48_5(v2), (static Date.== infix(_:_:)()))
  {
    return *(v1 + *(v2 + 24)) == *(v0 + *(v2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t RemoteControlSuspendRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t RemoteControlSuspendRequest.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 1702125924;
  }

  return 0x6E6F73616572;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RemoteControlSuspendRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RemoteControlSuspendRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RemoteControlSuspendRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RemoteControlSuspendRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlSuspendRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlSuspendRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteControlSuspendRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit27RemoteControlSuspendRequestV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_52_1(a1);
  lazy protocol witness table accessor for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys();
  OUTLINED_FUNCTION_61_3();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v8, v9);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_37_13();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for RemoteControlSuspendRequest(0);
    OUTLINED_FUNCTION_50_5();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v10, v11);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_37_13();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    lazy protocol witness table accessor for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason();
    OUTLINED_FUNCTION_37_13();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t RemoteControlSuspendRequest.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2);
  OUTLINED_FUNCTION_40_4();
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for RemoteControlSuspendRequest(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5);
  OUTLINED_FUNCTION_76();
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x1BFB22640](*(v0 + *(v3 + 24)));
}

Swift::Int RemoteControlSuspendRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_49();
  v3 = lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2);
  OUTLINED_FUNCTION_53_4(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25);
  dispatch thunk of Hashable.hash(into:)();
  v11 = type metadata accessor for RemoteControlSuspendRequest(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_51();
  v14 = lazy protocol witness table accessor for type UUID and conformance UUID(v12, v13);
  OUTLINED_FUNCTION_53_4(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x1BFB22640](*(v0 + *(v11 + 24)));
  return Hasher._finalize()();
}

void RemoteControlSuspendRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_57_4();
  v16 = v15;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v33 = v17;
  v34 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v36 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v32 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v35 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit27RemoteControlSuspendRequestV10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v24 = type metadata accessor for RemoteControlSuspendRequest(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_52_1(v16);
  lazy protocol witness table accessor for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    lazy protocol witness table accessor for type UUID and conformance UUID(v26, v27);
    OUTLINED_FUNCTION_67_3();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v32 + 32))(v12, v35, v36);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_1_51();
    lazy protocol witness table accessor for type UUID and conformance UUID(v28, v29);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 32))(v12 + *(v24 + 20), v14, v33);
    lazy protocol witness table accessor for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = OUTLINED_FUNCTION_46_7();
    v31(v30);
    *(v12 + *(v24 + 24)) = a12;
    outlined init with copy of RemoteControlRequest();
    __swift_destroy_boxed_opaque_existential_1(v16);
    outlined destroy of RemoteControlRequest();
  }

  OUTLINED_FUNCTION_51_2();
}

uint64_t RemoteControlSuspendRequest.init(uuid:date:reason:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = v2;
  v5 = *v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(v3, v1);
  v7 = type metadata accessor for RemoteControlSuspendRequest(0);
  v8 = *(v7 + 20);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  result = (*(v9 + 32))(v3 + v8, v0);
  *(v3 + *(v7 + 24)) = v5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlSuspendRequest(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x1BFB22640](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t static RemoteControlMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v44 = type metadata accessor for RemoteControlSuspendRequest(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v50 = v7 - v6;
  v8 = OUTLINED_FUNCTION_4_24();
  v45 = type metadata accessor for RemoteControlResponse(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v49 = v11 - v10;
  v12 = OUTLINED_FUNCTION_4_24();
  v51 = type metadata accessor for RemoteControlRequest(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v48 = v14 - v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v47 = v43 - v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  v46 = v43 - v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v43[1] = v43 - v21;
  v22 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RemoteControlMessage(v22);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_70();
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageO_ACtMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_66_0();
  outlined init with copy of RemoteControlRequest();
  outlined init with copy of RemoteControlRequest();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_76();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2() != 1)
      {
        OUTLINED_FUNCTION_6_32();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_22_16();
      v36 = v49;
      outlined init with take of RemoteControlRequest();
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        v37 = *(v45 + 28);
        v38 = *(v4 + v37);
        v39 = *(v36 + v37);
        OUTLINED_FUNCTION_6_32();
        outlined destroy of RemoteControlRequest();
        if (v38 == v39)
        {
          OUTLINED_FUNCTION_6_32();
          goto LABEL_43;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_32();
        outlined destroy of RemoteControlRequest();
      }

      OUTLINED_FUNCTION_6_32();
      goto LABEL_53;
    case 2u:
      OUTLINED_FUNCTION_4_33();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2() != 2)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_46();
      outlined init with take of RemoteControlRequest();
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_48();
        outlined destroy of RemoteControlRequest();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_72_0();
      v34 = static Date.== infix(_:_:)();
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      if ((v34 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 3u:
      OUTLINED_FUNCTION_4_33();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2() != 3)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_46();
      outlined init with take of RemoteControlRequest();
      OUTLINED_FUNCTION_59_0();
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_48();
        outlined destroy of RemoteControlRequest();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_72_0();
      v35 = static Date.== infix(_:_:)();
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      if ((v35 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 4u:
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_29_6();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2() != 4)
      {
        OUTLINED_FUNCTION_7_37();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_24_15();
      v30 = v50;
      outlined init with take of RemoteControlRequest();
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        v31 = *(v44 + 24);
        v32 = *(v3 + v31);
        v33 = *(v30 + v31);
        OUTLINED_FUNCTION_7_37();
        outlined destroy of RemoteControlRequest();
        if (v32 == v33)
        {
          OUTLINED_FUNCTION_7_37();
          goto LABEL_43;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_37();
        outlined destroy of RemoteControlRequest();
      }

      OUTLINED_FUNCTION_7_37();
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_0();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2() != 5)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_46();
      outlined init with take of RemoteControlRequest();
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_48();
        outlined destroy of RemoteControlRequest();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_72_0();
      v40 = static Date.== infix(_:_:)();
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      if ((v40 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 6u:
      if (OUTLINED_FUNCTION_60_2() == 6)
      {
        goto LABEL_44;
      }

      goto LABEL_35;
    default:
      OUTLINED_FUNCTION_4_33();
      outlined init with copy of RemoteControlRequest();
      if (OUTLINED_FUNCTION_60_2())
      {
LABEL_33:
        OUTLINED_FUNCTION_0_48();
LABEL_34:
        outlined destroy of RemoteControlRequest();
LABEL_35:
        outlined destroy of (RemoteControlMessage, RemoteControlMessage)(v2);
        return 0;
      }

      OUTLINED_FUNCTION_3_46();
      outlined init with take of RemoteControlRequest();
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_48();
        outlined destroy of RemoteControlRequest();
LABEL_52:
        OUTLINED_FUNCTION_0_48();
LABEL_53:
        outlined destroy of RemoteControlRequest();
        OUTLINED_FUNCTION_30_8();
        return 0;
      }

      OUTLINED_FUNCTION_72_0();
      v41 = static Date.== infix(_:_:)();
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      if ((v41 & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_42:
      OUTLINED_FUNCTION_0_48();
LABEL_43:
      outlined destroy of RemoteControlRequest();
LABEL_44:
      OUTLINED_FUNCTION_30_8();
      return 1;
  }
}

uint64_t RemoteControlMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65526C65636E6163 && a2 == 0xED00007473657571;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72746E6F43646E65 && a2 == 0xEA00000000006C6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x43646E6570737573 && a2 == 0xEE006C6F72746E6FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F43656D75736572 && a2 == 0xED00006C6F72746ELL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001BC4F6E50 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t RemoteControlMessage.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x65736E6F70736572;
      break;
    case 2:
      result = 0x65526C65636E6163;
      break;
    case 3:
      result = 0x72746E6F43646E65;
      break;
    case 4:
      result = 0x43646E6570737573;
      break;
    case 5:
      result = 0x6F43656D75736572;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RemoteControlMessage.CancelRequestCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int RemoteControlMessage.CancelRequestCodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RemoteControlMessage.CancelRequestCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_6();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.CancelRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.CancelRequestCodingKeys and conformance RemoteControlMessage.CancelRequestCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.CancelRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.CancelRequestCodingKeys and conformance RemoteControlMessage.CancelRequestCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlResponse.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RemoteControlMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RemoteControlMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RemoteControlMessage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RemoteControlMessage.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.CodingKeys and conformance RemoteControlMessage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.CodingKeys and conformance RemoteControlMessage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.EndControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.EndControlCodingKeys and conformance RemoteControlMessage.EndControlCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.EndControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.EndControlCodingKeys and conformance RemoteControlMessage.EndControlCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RemoteControlMessage.PlaybackServerMessageCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RemoteControlMessage.PlaybackServerMessageCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.PlaybackServerMessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.PlaybackServerMessageCodingKeys and conformance RemoteControlMessage.PlaybackServerMessageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.PlaybackServerMessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.PlaybackServerMessageCodingKeys and conformance RemoteControlMessage.PlaybackServerMessageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.RequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.RequestCodingKeys and conformance RemoteControlMessage.RequestCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.RequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.RequestCodingKeys and conformance RemoteControlMessage.RequestCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.ResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.ResponseCodingKeys and conformance RemoteControlMessage.ResponseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.ResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.ResponseCodingKeys and conformance RemoteControlMessage.ResponseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.ResumeControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.ResumeControlCodingKeys and conformance RemoteControlMessage.ResumeControlCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.ResumeControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.ResumeControlCodingKeys and conformance RemoteControlMessage.ResumeControlCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlMessage.CancelRequestCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteControlMessage.SuspendControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.SuspendControlCodingKeys and conformance RemoteControlMessage.SuspendControlCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RemoteControlMessage.SuspendControlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RemoteControlMessage.SuspendControlCodingKeys and conformance RemoteControlMessage.SuspendControlCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RemoteControlMessage.encode(to:)()
{
  OUTLINED_FUNCTION_57_4();
  v2 = v1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO014PlaybackServerH10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v63 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  v62 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO06ResumeG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO07SuspendG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RemoteControlSuspendRequest(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO03EndG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v60 = v11;
  v61 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v59 = v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO23CancelRequestCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO18ResponseCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  v16 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RemoteControlResponse(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO17RequestCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v19 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RemoteControlRequest(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_70();
  MEMORY[0x1EEE9AC00](v23);
  type metadata accessor for RemoteControlMessage(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15ConversationKit20RemoteControlMessageO10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v66 = v25;
  v67 = v26;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_34();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type RemoteControlMessage.CodingKeys and conformance RemoteControlMessage.CodingKeys();
  v65 = v0;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_4_33();
  outlined init with copy of RemoteControlRequest();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with take of RemoteControlRequest();
      lazy protocol witness table accessor for type RemoteControlMessage.ResponseCodingKeys and conformance RemoteControlMessage.ResponseCodingKeys();
      v36 = v0;
      v35 = v66;
      OUTLINED_FUNCTION_21_15();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_23_18();
      lazy protocol witness table accessor for type UUID and conformance UUID(v47, v48);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v49 = OUTLINED_FUNCTION_47_5();
      v50(v49);
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_76();
      outlined init with take of RemoteControlRequest();
      lazy protocol witness table accessor for type RemoteControlMessage.CancelRequestCodingKeys and conformance RemoteControlMessage.CancelRequestCodingKeys();
      v35 = v66;
      OUTLINED_FUNCTION_21_15();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_28();
      lazy protocol witness table accessor for type UUID and conformance UUID(v41, v42);
      OUTLINED_FUNCTION_62_2();
      v43 = OUTLINED_FUNCTION_35_5();
      v44(v43, v58);
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      v33 = *(v67 + 8);
      v32 = v65;
      goto LABEL_9;
    case 3u:
      outlined init with take of RemoteControlRequest();
      OUTLINED_FUNCTION_74_1();
      lazy protocol witness table accessor for type RemoteControlMessage.EndControlCodingKeys and conformance RemoteControlMessage.EndControlCodingKeys();
      v36 = v0;
      v35 = v66;
      OUTLINED_FUNCTION_21_15();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_28();
      lazy protocol witness table accessor for type UUID and conformance UUID(v45, v46);
      OUTLINED_FUNCTION_62_2();
      (*(v60 + 8))(v59, v61);
      OUTLINED_FUNCTION_0_48();
      goto LABEL_8;
    case 4u:
      outlined init with take of RemoteControlRequest();
      lazy protocol witness table accessor for type RemoteControlMessage.SuspendControlCodingKeys and conformance RemoteControlMessage.SuspendControlCodingKeys();
      v36 = v0;
      v35 = v66;
      OUTLINED_FUNCTION_21_15();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_25_17();
      lazy protocol witness table accessor for type UUID and conformance UUID(v37, v38);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = OUTLINED_FUNCTION_47_5();
      v40(v39);
      goto LABEL_8;
    case 5u:
      outlined init with take of RemoteControlRequest();
      lazy protocol witness table accessor for type RemoteControlMessage.ResumeControlCodingKeys and conformance RemoteControlMessage.ResumeControlCodingKeys();
      v36 = v0;
      v35 = v66;
      OUTLINED_FUNCTION_21_15();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_28();
      lazy protocol witness table accessor for type UUID and conformance UUID(v51, v52);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v53 = OUTLINED_FUNCTION_47_5();
      v54(v53);
LABEL_8:
      outlined destroy of RemoteControlRequest();
      v33 = *(v67 + 8);
      v32 = v36;
LABEL_9:
      v34 = v35;
      goto LABEL_10;
    case 6u:
      lazy protocol witness table accessor for type RemoteControlMessage.PlaybackServerMessageCodingKeys and conformance RemoteControlMessage.PlaybackServerMessageCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v62, v64);
      v55 = OUTLINED_FUNCTION_28_16();
      v56(v55, v66);
      goto LABEL_11;
    default:
      outlined init with take of RemoteControlRequest();
      lazy protocol witness table accessor for type RemoteControlMessage.RequestCodingKeys and conformance RemoteControlMessage.RequestCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_28();
      lazy protocol witness table accessor for type UUID and conformance UUID(v28, v29);
      OUTLINED_FUNCTION_62_2();
      v30 = OUTLINED_FUNCTION_35_5();
      v31(v30, v57);
      OUTLINED_FUNCTION_0_48();
      outlined destroy of RemoteControlRequest();
      v32 = OUTLINED_FUNCTION_33_12();
      v34 = v66;
LABEL_10:
      v33(v32, v34);
LABEL_11:
      OUTLINED_FUNCTION_51_2();
      return;
  }
}

uint64_t RemoteControlMessage.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for RemoteControlSuspendRequest(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for RemoteControlResponse(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_49_3();
  type metadata accessor for RemoteControlRequest(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  type metadata accessor for RemoteControlMessage(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_33();
  outlined init with copy of RemoteControlRequest();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_22_16();
      outlined init with take of RemoteControlRequest();
      MEMORY[0x1BFB22640](1);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_2_49();
      lazy protocol witness table accessor for type UUID and conformance UUID(v17, v18);
      dispatch thunk of Hashable.hash(into:)();
      OUTLINED_FUNCTION_44_0();
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_1_51();
      lazy protocol witness table accessor for type UUID and conformance UUID(v19, v20);
      OUTLINED_FUNCTION_44_0();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v0 + *(v7 + 28)));
      OUTLINED_FUNCTION_6_32();
      return outlined destroy of RemoteControlRequest();
    case 2u:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_59_0();
      outlined init with take of RemoteControlRequest();
      v12 = 2;
      goto LABEL_8;
    case 3u:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_59_0();
      outlined init with take of RemoteControlRequest();
      v12 = 3;
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_24_15();
      outlined init with take of RemoteControlRequest();
      MEMORY[0x1BFB22640](4);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_2_49();
      lazy protocol witness table accessor for type UUID and conformance UUID(v13, v14);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_1_51();
      lazy protocol witness table accessor for type UUID and conformance UUID(v15, v16);
      OUTLINED_FUNCTION_44_0();
      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x1BFB22640](*(v6 + *(v2 + 24)));
      OUTLINED_FUNCTION_7_37();
      return outlined destroy of RemoteControlRequest();
    case 5u:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_59_0();
      outlined init with take of RemoteControlRequest();
      v12 = 5;
      goto LABEL_8;
    case 6u:
      return MEMORY[0x1BFB22640](6);
    default:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_59_0();
      outlined init with take of RemoteControlRequest();
      v12 = 0;
LABEL_8:
      MEMORY[0x1BFB22640](v12);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_2_49();
      lazy protocol witness table accessor for type UUID and conformance UUID(v21, v22);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_1_51();
      lazy protocol witness table accessor for type UUID and conformance UUID(v23, v24);
      OUTLINED_FUNCTION_29_6();
      dispatch thunk of Hashable.hash(into:)();
      OUTLINED_FUNCTION_0_48();
      return outlined destroy of RemoteControlRequest();
  }
}

Swift::Int RemoteControlMessage.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  RemoteControlMessage.hash(into:)();
  return Hasher._finalize()();
}

void RemoteControlMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_57_4();
  a26 = v30;
  a27 = v31;
  v160 = v27;
  v33 = v32;
  v152 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO014PlaybackServerH10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v144 = v36;
  v145 = v35;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_1();
  v151 = v38;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO06ResumeG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v146 = v39;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_1();
  v157 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO07SuspendG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v142 = v43;
  v143 = v42;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_1();
  v150 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO03EndG10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v140 = v47;
  v141 = v46;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_1();
  v149 = v49;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO23CancelRequestCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v138 = v50;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_1();
  v156 = v52;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO18ResponseCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v136[10] = v53;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_1();
  v148 = v55;
  v136[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO17RequestCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v136[8] = v56;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_1();
  v147 = v58;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15ConversationKit20RemoteControlMessageO10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOGMd);
  OUTLINED_FUNCTION_1();
  v154 = v59;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v60);
  v62 = v136 - v61;
  v155 = type metadata accessor for RemoteControlMessage(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_17();
  v136[7] = v64 - v65;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v66);
  v136[6] = v136 - v67;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = v136 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v136 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = v136 - v77;
  v79 = v33[3];
  v159 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v79);
  lazy protocol witness table accessor for type RemoteControlMessage.CodingKeys and conformance RemoteControlMessage.CodingKeys();
  v80 = v160;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v80)
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v159);
LABEL_11:
    OUTLINED_FUNCTION_51_2();
    return;
  }

  v136[2] = v75;
  v136[3] = v72;
  v136[4] = v29;
  v136[5] = v28;
  v81 = v155;
  v160 = v78;
  v82 = v158;
  v83 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15ConversationKit20RemoteControlMessageO10CodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLO_Tt1g5(v83, 0);
  if (v85 == v86 >> 1)
  {
LABEL_8:
    v99 = v82;
    v100 = type metadata accessor for DecodingError();
    swift_allocError();
    v102 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v102 = v81;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v100 - 8) + 104))(v102, *MEMORY[0x1E69E6AF8], v100);
    swift_willThrow();
    swift_unknownObjectRelease();
    v96 = OUTLINED_FUNCTION_28_16();
    v97 = v99;
LABEL_9:
    v98(v96, v97);
    goto LABEL_10;
  }

  v136[1] = 0;
  if (v85 < (v86 >> 1))
  {
    v136[0] = *(v84 + v85);
    specialized ArraySlice.subscript.getter(v85 + 1, v86 >> 1, started, v84, v85, v86);
    v89 = v88;
    v91 = v90;
    swift_unknownObjectRelease();
    if (v89 == v91 >> 1)
    {
      switch(v136[0])
      {
        case 1:
          a12 = 1;
          lazy protocol witness table accessor for type RemoteControlMessage.ResponseCodingKeys and conformance RemoteControlMessage.ResponseCodingKeys();
          OUTLINED_FUNCTION_14_17(&unk_1F3AD0000, &a12);
          type metadata accessor for RemoteControlResponse(0);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_23_18();
          lazy protocol witness table accessor for type UUID and conformance UUID(v111, v112);
          v113 = v137;
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_75_2();
          if (v82)
          {
            swift_unknownObjectRelease();
            v114 = OUTLINED_FUNCTION_35_5();
            v115(v114, v113);
            (*(v82 + 8))(v62, v158);
            goto LABEL_10;
          }

          OUTLINED_FUNCTION_26_13();
          v129 = OUTLINED_FUNCTION_35_5();
          v130(v129, v113);
          MEMORY[8](v62, v158);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_9_23();
          goto LABEL_26;
        case 2:
          a13 = 2;
          lazy protocol witness table accessor for type RemoteControlMessage.CancelRequestCodingKeys and conformance RemoteControlMessage.CancelRequestCodingKeys();
          OUTLINED_FUNCTION_14_17(&unk_1F3AD0090, &a13);
          type metadata accessor for RemoteControlRequest(0);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_5_28();
          lazy protocol witness table accessor for type UUID and conformance UUID(v105, v106);
          OUTLINED_FUNCTION_36_10();
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_75_2();
          if (v82)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 3:
          OUTLINED_FUNCTION_74_1();
          lazy protocol witness table accessor for type RemoteControlMessage.EndControlCodingKeys and conformance RemoteControlMessage.EndControlCodingKeys();
          OUTLINED_FUNCTION_13_28(&unk_1F3AD0120, &a14);
          type metadata accessor for RemoteControlRequest(0);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_5_28();
          lazy protocol witness table accessor for type UUID and conformance UUID(v107, v108);
          OUTLINED_FUNCTION_36_10();
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_75_2();
          if (v82)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 4:
          a15 = 4;
          lazy protocol witness table accessor for type RemoteControlMessage.SuspendControlCodingKeys and conformance RemoteControlMessage.SuspendControlCodingKeys();
          OUTLINED_FUNCTION_13_28(&unk_1F3AD01B0, &a15);
          type metadata accessor for RemoteControlSuspendRequest(0);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_25_17();
          lazy protocol witness table accessor for type UUID and conformance UUID(v103, v104);
          OUTLINED_FUNCTION_36_10();
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_75_2();
          if (v82)
          {
LABEL_17:
            swift_unknownObjectRelease();
            v109 = OUTLINED_FUNCTION_15_15();
            v110(v109);
            v96 = OUTLINED_FUNCTION_32_7();
            goto LABEL_9;
          }

LABEL_22:
          OUTLINED_FUNCTION_26_13();
          v121 = OUTLINED_FUNCTION_15_15();
          v122(v121);
          v123 = OUTLINED_FUNCTION_32_7();
          v124(v123);
          OUTLINED_FUNCTION_77();
LABEL_25:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_9_23();
          goto LABEL_26;
        case 5:
          a16 = 5;
          lazy protocol witness table accessor for type RemoteControlMessage.ResumeControlCodingKeys and conformance RemoteControlMessage.ResumeControlCodingKeys();
          OUTLINED_FUNCTION_13_28(&unk_1F3AD0240, &a16);
          type metadata accessor for RemoteControlRequest(0);
          OUTLINED_FUNCTION_5_28();
          lazy protocol witness table accessor for type UUID and conformance UUID(v116, v117);
          OUTLINED_FUNCTION_36_10();
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_26_13();
          v131 = OUTLINED_FUNCTION_15_15();
          v132(v131);
          v133 = OUTLINED_FUNCTION_16_27();
          v134(v133);
          OUTLINED_FUNCTION_77();
          goto LABEL_25;
        case 6:
          a17 = 6;
          lazy protocol witness table accessor for type RemoteControlMessage.PlaybackServerMessageCodingKeys and conformance RemoteControlMessage.PlaybackServerMessageCodingKeys();
          v118 = v151;
          OUTLINED_FUNCTION_13_28(&unk_1F3AD0260, &a17);
          OUTLINED_FUNCTION_26_13();
          (*(v144 + 8))(v118, v145);
          v119 = OUTLINED_FUNCTION_16_27();
          v120(v119);
          swift_storeEnumTagMultiPayload();
          goto LABEL_27;
        default:
          a11 = 0;
          lazy protocol witness table accessor for type RemoteControlMessage.RequestCodingKeys and conformance RemoteControlMessage.RequestCodingKeys();
          OUTLINED_FUNCTION_13_28(&unk_1F3ACFF70, &a11);
          type metadata accessor for RemoteControlRequest(0);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_5_28();
          lazy protocol witness table accessor for type UUID and conformance UUID(v92, v93);
          OUTLINED_FUNCTION_41_7();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (v82)
          {
            swift_unknownObjectRelease();
            v94 = OUTLINED_FUNCTION_54_3();
            v95(v94);
            v96 = OUTLINED_FUNCTION_73_1();
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_26_13();
          v125 = OUTLINED_FUNCTION_54_3();
          v126(v125);
          v127 = OUTLINED_FUNCTION_73_1();
          v128(v127);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_9_23();
LABEL_26:
          outlined init with take of RemoteControlRequest();
LABEL_27:
          v135 = v159;
          OUTLINED_FUNCTION_9_23();
          outlined init with take of RemoteControlRequest();
          __swift_destroy_boxed_opaque_existential_1(v135);
          break;
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlMessage()
{
  Hasher.init(_seed:)();
  RemoteControlMessage.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspendRequest.CodingKeys and conformance RemoteControlSuspendRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason()
{
  result = lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason;
  if (!lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlSuspensionReason and conformance RemoteControlSuspensionReason);
  }

  return result;
}