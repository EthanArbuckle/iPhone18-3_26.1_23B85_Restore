uint64_t sub_20E4098C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20E4098F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = *(a10 + 8 * v10);
  v12 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_1(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v9 = va_arg(va1, void);
  v4 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

id _gc_log_ui()
{
  if (_gc_log_ui_onceToken != -1)
  {
    _gc_log_ui_cold_1();
  }

  v1 = _gc_log_ui_Log;

  return v1;
}

uint64_t ___gc_log_ui_block_invoke()
{
  _gc_log_ui_Log = os_log_create("com.apple.gamecontroller", "UI");

  return MEMORY[0x2821F96F8]();
}

void sub_20E40C038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _DescendantPointerEvent(uint64_t a1)
{
  v1 = a1;
  if (a1 && IOHIDEventGetType() != 17)
  {
    Children = IOHIDEventGetChildren();
    if (Children && (v3 = Children, Count = CFArrayGetCount(Children), Count >= 1))
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        v8 = _DescendantPointerEvent(ValueAtIndex);
        if (v8)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, a5, a6, &buf, 0x1Cu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return IOHIDEventGetType();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return IOHIDEventGetTimeStamp();
}

id _gc_log_keyboard_and_mouse()
{
  if (_gc_log_keyboard_and_mouse_onceToken != -1)
  {
    _gc_log_keyboard_and_mouse_cold_1();
  }

  v1 = _gc_log_keyboard_and_mouse_Log;

  return v1;
}

uint64_t ___gc_log_keyboard_and_mouse_block_invoke()
{
  _gc_log_keyboard_and_mouse_Log = os_log_create("com.apple.gamecontroller", "Keyboard+Mouse");

  return MEMORY[0x2821F96F8]();
}

uint64_t (*implicit closure #1 in variable initialization expression of static GCGameControllerConnectingOptionDefinition.sceneDelegateMethod(uint64_t a1))()
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return implicit closure #2 in implicit closure #1 in variable initialization expression of static GCGameControllerConnectingOptionDefinition.sceneDelegateMethodpartial apply;
}

uint64_t _sSo29GCGameControllerSceneDelegate_pSo7UISceneCSo0aB17ActivationContextCIeggg_Ieggo_SoAA_pxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyAcEytIsegnnr_Iegnr_TR06_sSo42ab45ConnectingOptionDefinitionC04GameB2UIE19scened11MethodyySo7e9C_So0aB17fg9CtcSo0ab5C28I0_pcvpZfiyAF_AHtcSoAI_pcfu_Tf3nnpf_n@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of static GCGameControllerConnectingOptionDefinition.sceneDelegateMethod;
  *(v5 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIScene, @guaranteed GCGameControllerActivationContext) -> ();
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for static UISceneConnectionOptionDefinition.invokeSceneDelegate(_:scene:payload:) in conformance GCGameControllerConnectingOptionDefinition(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *a3;
  v7 = a2;
  return v3(&v7, &v6);
}

unint64_t lazy protocol witness table accessor for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box()
{
  result = lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box;
  if (!lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box;
  if (!lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCGameControllerActivationContext._Box and conformance GCGameControllerActivationContext._Box);
  }

  return result;
}

uint64_t protocol witness for static UISceneConnectionOptionDefinition.didFinishHandling(payload:for:) in conformance GCGameControllerConnectingOptionDefinition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for GCGameControllerConnectingOptionDefinition();

  return MEMORY[0x2821DD798](a1, a2, v7, a4);
}

uint64_t protocol witness for static UISceneConnectionOptionDefinition.didFailHandling(error:sceneSession:payload:) in conformance GCGameControllerConnectingOptionDefinition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for GCGameControllerConnectingOptionDefinition();

  return MEMORY[0x2821DD790](a1, a2, a3, v9, a5);
}

unint64_t type metadata accessor for GCGameControllerConnectingOptionDefinition()
{
  result = lazy cache variable for type metadata for GCGameControllerConnectingOptionDefinition;
  if (!lazy cache variable for type metadata for GCGameControllerConnectingOptionDefinition)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCGameControllerConnectingOptionDefinition);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIScene, @guaranteed GCGameControllerActivationContext) -> ()(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t GCGameControllerActivationContext.asBSAction(with:)()
{
  type metadata accessor for GCGameControllerConnectingOptionDefinition();
  lazy protocol witness table accessor for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition();
  v1 = v0;
  v2 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();

  return v2;
}

unint64_t lazy protocol witness table accessor for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition()
{
  result = lazy protocol witness table cache variable for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition;
  if (!lazy protocol witness table cache variable for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition)
  {
    type metadata accessor for GCGameControllerConnectingOptionDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition);
  }

  return result;
}

id @objc GCGameControllerActivationContext.asBSAction(with:)(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for GCGameControllerConnectingOptionDefinition();
  lazy protocol witness table accessor for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition();
  v5 = a3;
  v6 = a1;
  v7 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();

  return v7;
}

uint64_t GCGameControllerActivationContext._Box.encode(to:)(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = [a2 previousApplicationBundleID];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

id protocol witness for Decodable.init(from:) in conformance GCGameControllerActivationContext._Box@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized GCGameControllerActivationContext._Box.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id specialized GCGameControllerActivationContext._Box.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    if (v6)
    {
      v5 = MEMORY[0x20F32E1B0]();
    }

    else
    {
      v5 = 0;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277CCB070]) initWithPreviousApplication_];

    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id @objc UISceneConnectionOptions.gameControllerActivationContext.getter(void *a1)
{
  type metadata accessor for GCGameControllerConnectingOptionDefinition();
  lazy protocol witness table accessor for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition();
  v2 = a1;
  UISceneConnectionOptions.subscript.getter();

  return v4;
}

uint64_t UISceneConnectionOptions.gameControllerActivationContext.getter()
{
  type metadata accessor for GCGameControllerConnectingOptionDefinition();
  lazy protocol witness table accessor for type GCGameControllerConnectingOptionDefinition and conformance GCGameControllerConnectingOptionDefinition();
  UISceneConnectionOptions.subscript.getter();
  return v1;
}