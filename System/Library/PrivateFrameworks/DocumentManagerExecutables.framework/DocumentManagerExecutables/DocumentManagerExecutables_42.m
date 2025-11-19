uint64_t DOCAPIRateLimiter._timeIntervalSinceLastCall(madeBy:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v70 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v74 = &v70 - v13;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v75 = &v70 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = (*(*v1 + 120))(v16);
  if (v22)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
    v24 = v19;
    v25 = v23;
    v26 = MEMORY[0x24C1FAD20](v18, v24);
    [v25 setHostIdentifier_];

    v72 = v8;
    if (v21)
    {
      v27 = MEMORY[0x24C1FAD20](v20, v21);
    }

    else
    {
      v27 = 0;
    }

    [v25 setRoleIdentifier_];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = MEMORY[0x24C1FAD20](v34);

    v36 = [v22 doc:v35 roleSpecificKeyForKey:v25 configuration:?];

    v37 = v36;
    if (!v36)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = MEMORY[0x24C1FAD20](v38);
    }

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = __swift_project_value_buffer(v42, static Logger.UI);

    v71 = v43;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v70 = v22;
      v47 = v25;
      v48 = v46;
      v49 = swift_slowAlloc();
      *&v78[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      *(v48 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v78);

      *(v48 + 14) = v50;
      _os_log_impl(&dword_2493AC000, v44, v45, "%s fetching last call to renameDocumentAtURL: timetstamp for key: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v49, -1, -1);
      v51 = v48;
      v25 = v47;
      v22 = v70;
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    else
    {
    }

    v53 = v74;
    v52 = v75;
    v54 = v73;
    v55 = [v22 valueForKey_];

    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
    }

    v56 = v72;
    v78[0] = v76;
    v78[1] = v77;
    if (!*(&v77 + 1))
    {

      outlined destroy of CharacterSet?(v78, &_sypSgMd);
      (*(v56 + 56))(v6, 1, 1, v7);
      goto LABEL_24;
    }

    v57 = swift_dynamicCast();
    (*(v56 + 56))(v6, v57 ^ 1u, 1, v7);
    if ((*(v56 + 48))(v6, 1, v7) == 1)
    {

LABEL_24:
      outlined destroy of CharacterSet?(v6, &_s10Foundation4DateVSgMd);
      return 0x4000000000000000;
    }

    (*(v56 + 32))(v52, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v59 = v58;
    (*(v56 + 16))(v54, v52, v7);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v78[0] = v73;
      *v62 = 136315650;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      *(v62 + 12) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v71 = v25;
      v66 = *(v56 + 8);
      v66(v54, v7);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v78);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2048;
      *(v62 + 24) = v59;
      _os_log_impl(&dword_2493AC000, v60, v61, "%s fetched date: %s time interval since now: %f", v62, 0x20u);
      v68 = v73;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v68, -1, -1);
      MEMORY[0x24C1FE850](v62, -1, -1);

      v66(v74, v7);
      v66(v75, v7);
    }

    else
    {

      v69 = *(v56 + 8);
      v69(v54, v7);
      v69(v53, v7);
      v69(v52, v7);
    }

    return v59;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.UI);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v78[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BE70C0, v78);
      _os_log_impl(&dword_2493AC000, v29, v30, "%s unable to load user defaults", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1FE850](v32, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    return 0;
  }
}

void __swiftcall DOCAPIRateLimiter.defaults()(NSUserDefaults_optional *__return_ptr retstr)
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSUserDefaults.docUserDefaults;
}

uint64_t DOCAPIRateLimiter.init()()
{
  result = v0;
  *(v0 + 16) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI()
{
  result = lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI;
  if (!lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAPIRateLimiterAPI and conformance DOCAPIRateLimiterAPI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t DOCViewDecorator.__allocating_init(_:wrappedForVibrancy:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  v3 = a1;
  return v2;
}

uint64_t DOCViewDecorator.__allocating_init(contentWithoutWrapping:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  v3 = a1;
  return v2;
}

void DOCViewDecorator<>.attributedText.setter(void *a1)
{
  specialized DOCViewDecorator<>.attributedText.setter(a1);
}

void DOCViewDecorator<>.textColor.setter(void *a1)
{
  specialized DOCViewDecorator<>.textColor.setter(a1);
}

uint64_t DOCViewDecorator<>.text.getter()
{
  v1 = [*(v0 + 24) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCViewDecorator<>.attributedText.getter()
{
  v1 = [*(v0 + 24) attributedText];

  return v1;
}

id DOCViewDecorator.widthAnchor.getter()
{
  v1 = [*(v0 + 16) widthAnchor];

  return v1;
}

id DOCViewDecorator.centerYAnchor.getter()
{
  v1 = [*(v0 + 16) centerYAnchor];

  return v1;
}

id DOCViewDecorator.leadingAnchor.getter()
{
  v1 = [*(v0 + 16) leadingAnchor];

  return v1;
}

id DOCViewDecorator.trailingAnchor.getter()
{
  v1 = [*(v0 + 16) trailingAnchor];

  return v1;
}

id DOCViewDecorator.heightAnchor.getter()
{
  v1 = [*(v0 + 16) heightAnchor];

  return v1;
}

id DOCViewDecorator.centerXAnchor.getter()
{
  v1 = [*(v0 + 16) centerXAnchor];

  return v1;
}

id DOCViewDecorator.topAnchor.getter()
{
  v1 = [*(v0 + 16) topAnchor];

  return v1;
}

id DOCViewDecorator.bottomAnchor.getter()
{
  v1 = [*(v0 + 16) bottomAnchor];

  return v1;
}

uint64_t DOCViewDecorator.init(contentWithoutWrapping:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  v2 = a1;
  return v1;
}

uint64_t DOCViewDecorator.init(_:wrappedForVibrancy:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  v2 = a1;
  return v1;
}

uint64_t DOCViewDecorator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DOCViewDecorator.setContentHuggingPriority(_:for:)(uint64_t a1, SEL *a2, float a3)
{
  [*(v3 + 16) *a2];
  v7 = *(v3 + 24);
  v8 = *a2;
  *&v9 = a3;

  return [v7 v8];
}

id DOCViewDecorator.layer.getter()
{
  v1 = [*(v0 + 16) layer];

  return v1;
}

id (*DOCViewDecorator.isHidden.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 16) isHidden];
  return DOCViewDecorator.isHidden.modify;
}

id (*DOCViewDecorator.alpha.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [*(v1 + 16) alpha];
  *a1 = v3;
  return DOCViewDecorator.alpha.modify;
}

id DOCViewDecorator.firstBaselineAnchor.getter()
{
  v1 = [*(v0 + 16) firstBaselineAnchor];

  return v1;
}

id DOCViewDecorator.lastBaselineAnchor.getter()
{
  v1 = [*(v0 + 16) lastBaselineAnchor];

  return v1;
}

id (*DOCViewDecorator.translatesAutoresizingMaskIntoConstraints.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 16) translatesAutoresizingMaskIntoConstraints];
  return DOCViewDecorator.translatesAutoresizingMaskIntoConstraints.modify;
}

id DOCViewDecorator.setNeedsDisplay()(SEL *a1)
{
  [*(v1 + 16) *a1];
  v3 = *(v1 + 24);
  v4 = *a1;

  return [v3 v4];
}

void DOCViewDecorator.tintColor.setter(void *a1)
{
  specialized DOCViewDecorator.tintColor.setter(a1);
}

void (*DOCViewDecorator.tintColor.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator.tintColor.getter();
  return DOCViewDecorator.tintColor.modify;
}

uint64_t (*DOCViewDecorator<>.configurationUpdateHandler.getter())()
{
  result = [*(v0 + 24) configurationUpdateHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  }

  return result;
}

uint64_t key path getter for DOCViewDecorator<>.configurationUpdateHandler : <A>DOCViewDecorator<A>@<X0>(void *a1@<X8>)
{
  result = DOCViewDecorator<>.configurationUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for DOCViewDecorator<>.configurationUpdateHandler : <A>DOCViewDecorator<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v4, v3);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
}

uint64_t DOCViewDecorator<>.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  specialized DOCViewDecorator<>.configurationUpdateHandler.setter(a1, a2);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
}

uint64_t (*DOCViewDecorator<>.configurationUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCViewDecorator<>.configurationUpdateHandler.getter();
  a1[1] = v3;
  return DOCViewDecorator<>.configurationUpdateHandler.modify;
}

uint64_t DOCViewDecorator<>.configurationUpdateHandler.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v2, v3);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }

  else
  {
    specialized DOCViewDecorator<>.configurationUpdateHandler.setter(v4, v3);
  }

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
}

void DOCViewDecorator<>.configuration.getter()
{
  v1 = *(v0 + 24);
  UIButton.configuration.getter();
}

uint64_t key path setter for DOCViewDecorator<>.configuration : <A>DOCViewDecorator<A>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  outlined init with copy of UIButton.Configuration?(a1, &v7 - v4);
  return DOCViewDecorator<>.configuration.setter(v5);
}

uint64_t DOCViewDecorator<>.configuration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v1 + 24);
  outlined init with copy of UIButton.Configuration?(a1, &v9 - v6);
  v7 = v5;
  UIButton.configuration.setter();

  return outlined destroy of UIButton.Configuration?(a1);
}

void (*DOCViewDecorator<>.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  DOCViewDecorator<>.configuration.getter();
  return DOCViewDecorator<>.configuration.modify;
}

void DOCViewDecorator<>.configuration.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of UIButton.Configuration?(v3, v2);
    DOCViewDecorator<>.configuration.setter(v2);
    outlined destroy of UIButton.Configuration?(v3);
  }

  else
  {
    DOCViewDecorator<>.configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

id DOCViewDecorator<>.menu.getter()
{
  v1 = [*(v0 + 24) menu];

  return v1;
}

void DOCViewDecorator<>.menu.setter(void *a1)
{
  specialized DOCViewDecorator<>.menu.setter(a1);
}

void (*DOCViewDecorator<>.menu.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) menu];
  return DOCViewDecorator<>.menu.modify;
}

void DOCViewDecorator<>.menu.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    [*(v2 + 24) setMenu_];
  }

  else
  {
    v3 = *a1;
    [*(v2 + 24) setMenu_];
  }
}

void DOCViewDecorator<>.font.setter(void *a1)
{
  specialized DOCViewDecorator<>.font.setter(a1);
}

void DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - v11;
  v21[0] = v3;
  v23 = *(v3 + 24);
  v24 = v23;
  v13 = v23;
  v14 = swift_readAtKeyPath();
  v15 = *(v6 + 16);
  v15(v12);
  v14(v22, 0);

  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    (v15)(v9, a2, v5);
    swift_setAtWritableKeyPath();
    v16 = *(v21[0] + 16);
    v17 = *(v21[0] + 24);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
    v18 = v16;
    v19 = v17;
    v20 = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      [v18 invalidateIntrinsicContentSize];
    }

    (*(v6 + 8))(v12, v5);
    v13 = v24;
  }
}

void (*DOCViewDecorator<>.font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator<>.font.getter();
  return DOCViewDecorator<>.font.modify;
}

void DOCViewDecorator<>.font.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = *a1;
  if (a2)
  {
    v3 = v2;
    specialized DOCViewDecorator<>.font.setter(v3);
  }

  else
  {
    specialized DOCViewDecorator<>.font.setter(v2);
  }
}

uint64_t DOCViewDecorator<>.numberOfLines.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v4, MEMORY[0x277D83BA8]);
}

uint64_t (*DOCViewDecorator<>.numberOfLines.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) numberOfLines];
  return DOCViewDecorator<>.numberOfLines.modify;
}

id DOCViewDecorator.tintColor.getter(SEL *a1)
{
  result = [*(v1 + 24) *a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void (*DOCViewDecorator<>.textColor.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCViewDecorator<>.textColor.getter();
  return DOCViewDecorator<>.textColor.modify;
}

void DOCViewDecorator.tintColor.modify(uint64_t a1, char a2, const char **a3)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + 24);
  v5 = *a3;
  v7 = *a1;
  if (a2)
  {
    v6 = v3;
    [v4 v5];
  }

  else
  {
    [v4 v5];
  }
}

void (*DOCViewDecorator<>.attributedText.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) attributedText];
  return DOCViewDecorator<>.attributedText.modify;
}

void DOCViewDecorator<>.attributedText.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized DOCViewDecorator<>.attributedText.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized DOCViewDecorator<>.attributedText.setter(*a1);
    v3 = v4;
  }
}

uint64_t key path setter for DOCViewDecorator<>.text : <A>DOCViewDecorator<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  specialized DOCViewDecorator<>.text.setter(v1, v2);
}

uint64_t DOCViewDecorator<>.text.setter(uint64_t a1, uint64_t a2)
{
  specialized DOCViewDecorator<>.text.setter(a1, a2);
}

void key path getter for UILabel.text : UILabel(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for UILabel.text : UILabel(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x24C1FAD20](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t (*DOCViewDecorator<>.text.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCViewDecorator<>.text.getter();
  a1[1] = v3;
  return DOCViewDecorator<>.text.modify;
}

uint64_t DOCViewDecorator<>.text.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    specialized DOCViewDecorator<>.text.setter(v3, v2);
  }

  else
  {
    specialized DOCViewDecorator<>.text.setter(*a1, v2);
  }
}

id (*DOCViewDecorator<>.textAlignment.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 24) textAlignment];
  return DOCViewDecorator<>.textAlignment.modify;
}

uint64_t DOCViewDecorator<>.adjustsFontForContentSizeCategory.setter(char a1)
{
  KeyPath = swift_getKeyPath();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v4, MEMORY[0x277D839C8]);
}

uint64_t (*DOCViewDecorator<>.adjustsFontForContentSizeCategory.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + 24) adjustsFontForContentSizeCategory];
  return DOCViewDecorator<>.adjustsFontForContentSizeCategory.modify;
}

uint64_t specialized DOCViewDecorator<>.attributedText.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v5 = a1;
  v3 = lazy protocol witness table accessor for type NSAttributedString? and conformance <A> A?();
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v5, v3);
}

void specialized DOCViewDecorator<>.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v8[3] = &block_descriptor_84;
    v5 = _Block_copy(v8);
    v6 = v3;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  }

  else
  {
    v7 = v3;
    v5 = 0;
  }

  [v3 setConfigurationUpdateHandler_];
  _Block_release(v5);
}

uint64_t specialized DOCViewDecorator<>.font.setter(void *a1)
{
  KeyPath = swift_getKeyPath();
  v6 = a1;
  v3 = lazy protocol witness table accessor for type UIFont? and conformance <A> A?();
  v4 = a1;
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, &v6, v3);
}

uint64_t specialized DOCViewDecorator<>.text.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v7[0] = a1;
  v7[1] = a2;
  v5 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, v7, v5);
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    lazy protocol witness table accessor for type String and conformance String();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIFont? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIFont? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIFont? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6UIFontCSgMd);
    lazy protocol witness table accessor for type UIFont and conformance NSObject(&lazy protocol witness table cache variable for type UIFont and conformance NSObject, &lazy cache variable for type metadata for UIFont);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFont? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedString? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo18NSAttributedStringCSgMd);
    lazy protocol witness table accessor for type UIFont and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedString? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIFont and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id QLItem.node.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 fpItem];
  if (v8)
  {

    return [v1 fpItem];
  }

  else
  {
    v10 = [v1 previewItemURL];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v12);
      v14 = v13;
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_opt_self() fiNodeFromURL_];

    return v15;
  }
}

void DOCPreviewController.reload(withUpdatedNode:previousNode:)()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
  if (v2 != 255)
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    if (v2)
    {
      outlined copy of DOCPreviewSource(*v1, *(v1 + 8), 1);
    }

    else
    {
      v16 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
      v22 = MEMORY[0x277D84F90];
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
LABEL_48:
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v0;
      v17 = v3;
      outlined copy of DOCPreviewSource(v4, v3, 0);
      if (v6)
      {
        v7 = 0;
        v3 = (v4 & 0xC000000000000001);
        v8 = MEMORY[0x277D84F90];
        while (2)
        {
          v0 = v7;
          while (1)
          {
            if (v3)
            {
              v9 = MEMORY[0x24C1FC540](v0, v4);
              v7 = v0 + 1;
              if (__OFADD__(v0, 1))
              {
                goto LABEL_44;
              }
            }

            else
            {
              if (v0 >= *(v5 + 16))
              {
                goto LABEL_45;
              }

              v9 = *(v4 + 8 * v0 + 32);
              swift_unknownObjectRetain();
              v7 = v0 + 1;
              if (__OFADD__(v0, 1))
              {
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }
            }

            swift_getObjectType();
            if ([v9 isActionable])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v0;
            if (v7 == v6)
            {
              goto LABEL_28;
            }
          }

          DOCNode.identifierKey.getter();
          swift_getObjectType();
          DOCNode.identifierKey.getter();
          v10 = MEMORY[0x24C1FC430](&v19, v18);
          outlined destroy of AnyHashable(v18);
          outlined destroy of AnyHashable(&v19);
          if (v10 & 1) != 0 || (DOCNode.identifierKey.getter(), swift_getObjectType(), DOCNode.identifierKey.getter(), v11 = MEMORY[0x24C1FC430](&v19, v18), outlined destroy of AnyHashable(v18), v12 = outlined destroy of AnyHashable(&v19), (v11))
          {
            swift_unknownObjectRelease();
            v12 = swift_unknownObjectRetain();
          }

          v0 = &v22;
          MEMORY[0x24C1FB090](v12);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v22;
          if (v7 != v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

LABEL_28:
      outlined consume of DOCPreviewSource?(v4, v17, v16);
      v3 = (v8 & 0xFFFFFFFFFFFFFF8);
      if (v8 >> 62)
      {
        v5 = __CocoaSet.count.getter();
      }

      else
      {
        v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = 0;
      while (1)
      {
        if (v5 == v4)
        {
          v14 = v15;
          v4 = [v15 currentPreviewItemIndex];
          goto LABEL_42;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v4, v8);
        }

        else
        {
          if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v0 = DOCNode.isEqualTo(node:)();
        swift_unknownObjectRelease();
        if (v0)
        {
          break;
        }

        if (__OFADD__(v4++, 1))
        {
          goto LABEL_47;
        }
      }

      v14 = v15;
LABEL_42:
      v19 = v8;
      v20 = 0;
      v21 = 0;
      (*((*MEMORY[0x277D85000] & *v14) + 0x1C8))(&v19, v4, 0);
      outlined consume of DOCPreviewSource?(v19, v20, v21);
    }
  }
}

void DOCPreviewController.reload(withDuplicatedNode:original:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getObjectType();

  specialized DOCPreviewController.reload(withDuplicatedNode:original:)(a1, a2, v2);
}

Swift::Int __swiftcall DOCPreviewSource.count()()
{
  v1 = *v0;
  if (v0[2])
  {
    return *(v1 + 16);
  }

  if (v1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t DOCPreviewSource.allQLItems.getter()
{
  v1 = *v0;
  v7 = MEMORY[0x277D84F90];
  if (v0[1])
  {
    v2 = *v0;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6 < 0)
      {
        __break(1u);
      }

      v3 = v6;
      if (v6)
      {
        goto LABEL_5;
      }

      return MEMORY[0x277D84F90];
    }
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v4 = 0;
  do
  {
    DOCPreviewSource.qlItemAt(_:)(v4);
    MEMORY[0x24C1FB090]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v3 != v4);
  return v7;
}

uint64_t DOCPreviewSource.qlItemAt(_:)(unint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v52 - v18;
  v22.n128_f64[0] = MEMORY[0x28223BE20](v20, v21);
  v24 = &v52 - v23;
  v25 = *v1;
  if (v1[2])
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(v25 + 16) > a1)
      {
        (*(v12 + 16))(v15, v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a1, v11, v22.n128_f64[0]);
        v26 = objc_allocWithZone(MEMORY[0x277CDAA48]);
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v30 = [v26 initWithURL_];

        (*(v12 + 8))(v15, v11);
        return v30;
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

  v53 = v25 + 8 * a1;
  v54 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v15 = MEMORY[0x24C1FC540](a1, v25, v22);
    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = *(v25 + 8 * a1 + 32);
  swift_unknownObjectRetain();
LABEL_9:
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    swift_unknownObjectRetain();
    v33 = [v32 fileURL];
    if (v33)
    {
      v34 = v33;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v12 + 32))(v24, v19, v11);
      v35 = objc_allocWithZone(MEMORY[0x277CDAA48]);
      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      v30 = [v35 initWithURL_];

      swift_unknownObjectRelease();
      (*(v12 + 8))(v24, v11);
      if (!v54)
      {
        goto LABEL_19;
      }

LABEL_16:
      v40 = v30;
      v41 = MEMORY[0x24C1FC540](a1, v25);
LABEL_20:
      v45 = [v41 contentType];
      swift_unknownObjectRelease();
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      static UTType.pdf.getter();
      v46 = UTType.conforms(to:)();
      v47 = *(v55 + 8);
      v48 = v6;
      v49 = v56;
      v47(v48, v56);
      v47(v10, v49);
      [v30 setUseFullPDFTransition_];

      swift_unknownObjectRelease();
      return v30;
    }

    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];
    if (v54)
    {
      goto LABEL_16;
    }

LABEL_19:
    v41 = *(v53 + 32);
    v44 = v30;
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  v42 = [v15 fpfs_fpItem];
  if (v42)
  {
    v43 = v42;
    v30 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];

    if (v54)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_27:
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v58 = 0xD000000000000015;
  v59 = 0x8000000249BE7150;
  v57 = v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v51 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v51);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DOCPreviewSource.canCopy.getter()
{
  v23 = *v0;
  v21 = v0[1];
  v22 = *(v0 + 16);
  if ((v22 & 1) == 0)
  {
    if (v23 >> 62)
    {
      goto LABEL_24;
    }

    v1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v23 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x24C1FC540](v2, v23);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_21:
            __break(1u);
            return 0;
          }

LABEL_10:
          v5 = [v3 providerDomainID];
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v7;

          if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
          {
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v11 & 1) == 0)
            {
              swift_unknownObjectRelease();
              goto LABEL_6;
            }
          }

          v12 = [v3 isAppContainer];
          swift_unknownObjectRelease();
          if (v12)
          {
            return 0;
          }

LABEL_6:
          ++v2;
          if (v4 == v1)
          {
            goto LABEL_25;
          }
        }

        if (v2 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v1 = __CocoaSet.count.getter();
        if (!v1)
        {
          goto LABEL_25;
        }
      }

      v3 = *(v23 + 8 * v2 + 32);
      swift_unknownObjectRetain();
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }
  }

LABEL_25:
  v14 = [objc_opt_self() defaultPermission];
  if ([(objc_class *)v14 hasOpenInRestrictions])
  {
    if ((v22 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19 = &selRef_canCopyNodes_;
LABEL_33:
      v13 = [v14 *v19];

      v14 = isa;
      goto LABEL_34;
    }

    v15 = [v21 providerDomain];
    if (v15)
    {
      v16 = v15;
      isa = [v15 topLevelBundleIdentifier];

      if (!isa)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        isa = MEMORY[0x24C1FAD20](v18);
      }

      v19 = &selRef_canCopyfromContainingBundleIdentifer_;
      goto LABEL_33;
    }
  }

  v13 = 1;
LABEL_34:

  return v13;
}

id DOCQLItemsPreviewController.init(previewItems:)(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems] = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCQLItemsPreviewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPreviewItems_, isa);

  return v3;
}

id DOCQLItemsPreviewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems] = MEMORY[0x277D84F90];
  if (a2)
  {
    v5 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCQLItemsPreviewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DOCQLItemsPreviewController.__allocating_init(previewItems:)()
{
  v1 = objc_allocWithZone(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithPreviewItems_];

  return v3;
}

uint64_t (*DOCPreviewController.editingDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_editingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t (*DOCPreviewController.visibilityDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_visibilityDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

void DOCPreviewController.actionManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCPreviewController.actionManager.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_actionManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void *DOCPreviewController.configuration.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCPreviewController.duplicatedNodeObserver.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.duplicatedNodeObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCPreviewController.duplicatedNodeSubscriber.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.duplicatedNodeSubscriber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id static DOCPreviewController.thumbnailCallbackQueue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BE71D0);
  [v0 setName_];

  return v0;
}

uint64_t DOCPreviewController.qlItems.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16) == 255)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return DOCPreviewSource.allQLItems.getter();
  }
}

void DOCPreviewController.set(_:defaultIndex:)(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v70 = a3;
  v67 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v64 - v16;
  v18 = *(a1 + 8);
  v78 = *a1;
  v19 = *(a1 + 16);
  if (v19 == 255)
  {
    v7 = 0;
    v30 = 0;
    v31 = v18;
    v32 = -1;
    v77 = v31;
    v33 = v78;
    goto LABEL_82;
  }

  v68 = *(a1 + 16);
  v69 = v18;
  if (v19)
  {
    v65 = v15;
    v66 = v4;
    v20 = v78;
    v4 = *(v78 + 16);
    outlined copy of DOCPreviewSource?(v78, v18, v19);
    v21 = v18;
    v77 = v4;
    if (!v4)
    {
      v22 = MEMORY[0x277D84F90];
LABEL_31:
      if (v70)
      {
        v7 = 0;
        v77 = v69;
        v4 = v66;
        goto LABEL_60;
      }

      v18 = v69;
      if ((v67 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v4 = v66;
        if (*(v20 + 16) > v67)
        {
          v39 = v65;
          (*(v7 + 16))(v65, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v67, v6);
          v40 = specialized Collection<>.firstIndex(of:)(v39, v22);
          v42 = v41;
          (*(v7 + 8))(v39, v6);
          if (v42)
          {
            v7 = 0;
          }

          else
          {
            v7 = v40;
          }

          v77 = v18;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_91;
    }

    v4 = 0;
    v18 = 0;
    v71 = (v7 + 8);
    v75 = (v7 + 32);
    v76 = v7 + 16;
    v22 = MEMORY[0x277D84F90];
    v73 = v7;
    v74 = v6;
    v72 = v12;
    while (v4 < *(v20 + 16))
    {
      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v24 = *(v7 + 72);
      (*(v7 + 16))(v17, v20 + v23 + v24 * v4, v6);
      if (closure #3 in DOCPreviewController.set(_:defaultIndex:)(v17))
      {
        v25 = *v75;
        (*v75)(v12, v17, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v20 = v78;
          v22 = v80;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
          v20 = v78;
          v22 = v80;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + v23 + v28 * v24;
        v12 = v72;
        v6 = v74;
        v25(v29, v72, v74);
        v7 = v73;
      }

      else
      {
        (*v71)(v17, v6);
      }

      if (v77 == ++v4)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v80 = MEMORY[0x277D84F90];
  v20 = v78;
  v6 = v78 & 0xFFFFFFFFFFFFFF8;
  if (v78 >> 62)
  {
LABEL_88:
    v34 = __CocoaSet.count.getter();
    goto LABEL_17;
  }

  v34 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  outlined copy of DOCPreviewSource(v20, v18, 0);
  if (!v34)
  {
    v18 = 0;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v35 = v4;
  v36 = 0;
  v18 = 0;
  v4 = v20 & 0xC000000000000001;
  while (v4)
  {
    v37 = MEMORY[0x24C1FC540](v36, v20);
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_28;
    }

LABEL_24:
    v79 = v37;
    if (closure #1 in DOCPreviewController.set(_:defaultIndex:)(&v79))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 = v78;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v36;
    if (v38 == v34)
    {
      goto LABEL_29;
    }
  }

  if (v36 >= *(v6 + 16))
  {
    goto LABEL_84;
  }

  v37 = *(v20 + 8 * v36 + 32);
  swift_unknownObjectRetain();
  v38 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v22 = v80;
  v4 = v35;
LABEL_40:
  if (v70)
  {
    v7 = 0;
    v77 = 0;
    goto LABEL_60;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x24C1FC540](v67, v20);
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

LABEL_46:
    if ((v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v6 = v4;
    v43 = *(v22 + 16);
LABEL_48:
    v7 = 0;
    v4 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v43 == v7)
      {
        swift_unknownObjectRelease();
        v7 = 0;
        v77 = 0;
        v4 = v6;
        goto LABEL_60;
      }

      if (v4)
      {
        v44 = v22;
        MEMORY[0x24C1FC540](v7, v22);
      }

      else
      {
        if (v7 >= *(v22 + 16))
        {
          goto LABEL_86;
        }

        v44 = v22;
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v45 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      if (v45)
      {
        break;
      }

      v46 = __OFADD__(v7++, 1);
      v22 = v44;
      if (v46)
      {
        goto LABEL_87;
      }
    }

    swift_unknownObjectRelease();
    v77 = 0;
    v4 = v6;
    v22 = v44;
LABEL_60:
    v18 = [objc_opt_self() defaultPermission];
    if (![v18 hasOpenInRestrictions])
    {
      goto LABEL_80;
    }

    if (v68)
    {
      v47 = v77;
      v48 = [v47 providerDomain];
      if (v48)
      {
        v49 = v22;
        v50 = v48;
        v51 = [v48 topLevelBundleIdentifier];

        if (!v51)
        {
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = MEMORY[0x24C1FAD20](v52);
        }

        v53 = [v18 dataOwnerStateForBundleIdentifier_];

        v54 = v68;
        outlined consume of DOCPreviewSource?(v78, v69, v68);

        v30 = v53 == 1;
        v22 = v49;
        goto LABEL_81;
      }

LABEL_80:
      v54 = v68;
      outlined consume of DOCPreviewSource?(v78, v69, v68);
      v30 = 0;
      goto LABEL_81;
    }

    v66 = v4;
    v4 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!(v22 >> 62))
    {
      v55 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_68:
      v6 = v22 & 0xC000000000000001;
      v20 = v22;

      v56 = 0;
      while (1)
      {
        if (v55 == v56)
        {
          goto LABEL_78;
        }

        if (v6)
        {
          v57 = MEMORY[0x24C1FC540](v56, v20);
          if (__OFADD__(v56, 1))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v56 >= *(v4 + 16))
          {
            goto LABEL_85;
          }

          v57 = *(v20 + 8 * v56 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v56, 1))
          {
LABEL_77:
            __break(1u);
LABEL_78:

            v22 = v20;
            outlined consume of DOCPreviewSource(v20, v77, 0);
            v54 = v68;
            outlined consume of DOCPreviewSource?(v78, v69, v68);
            v30 = 0;
            v4 = v66;
LABEL_81:
            v32 = v54 & 1;
            v33 = v22;
LABEL_82:
            v59 = v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source;
            v60 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
            v61 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 8);
            v62 = v77;
            *v59 = v33;
            *(v59 + 8) = v62;
            v63 = *(v59 + 16);
            *(v59 + 16) = v32;
            outlined copy of DOCPreviewSource?(v33, v62, v32);
            outlined consume of DOCPreviewSource?(v60, v61, v63);
            [v4 setIsContentManaged_];
            [v4 reloadDataWithIndex_];
            outlined consume of DOCPreviewSource?(v33, v62, v32);
            return;
          }
        }

        v58 = [v18 dataOwnerStateForNode_];
        swift_unknownObjectRelease();
        ++v56;
        if (v58 == 1)
        {

          v22 = v20;
          outlined consume of DOCPreviewSource(v20, v77, 0);
          v54 = v68;
          outlined consume of DOCPreviewSource?(v78, v69, v68);
          v30 = 1;
          v4 = v66;
          goto LABEL_81;
        }
      }
    }

LABEL_91:
    v55 = __CocoaSet.count.getter();
    goto LABEL_68;
  }

  if ((v67 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > v67)
  {
    v20 = *(v20 + 8 * v67 + 32);
    swift_unknownObjectRetain();
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_93:
    v6 = v4;
    v43 = __CocoaSet.count.getter();
    goto LABEL_48;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);

  (*v71)(v34, v6);

  __break(1u);
}

uint64_t closure #1 in DOCPreviewController.set(_:defaultIndex:)(void **a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v11 = *a1;
  swift_getObjectType();
  if ([v11 isFolder])
  {
    return 0;
  }

  v13 = [v11 nodeURL];
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (URL.isFileURL.getter())
  {
    (*(v3 + 8))(v10, v2);
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  (*(v3 + 16))(v6, v10, v2);
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v17;
    v19 = v18;
    v34 = swift_slowAlloc();
    v35 = v34;
    *v19 = 136315394;
    v32 = v16;
    v20 = DOCNode.nodeDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v35);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = *(v3 + 8);
    v26(v6, v2);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v35);

    *(v19 + 14) = v27;
    v28 = v32;
    _os_log_impl(&dword_2493AC000, v32, v33, "Filtering item: %s with invalid URL: %s from QL data source", v19, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);

    v26(v10, v2);
  }

  else
  {

    v30 = *(v3 + 8);
    v30(v6, v2);
    v30(v10, v2);
  }

  return 0;
}

BOOL closure #3 in DOCPreviewController.set(_:defaultIndex:)(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - v9;
  v30 = URL.startAccessingSecurityScopedResource()();
  v29 = a1;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = *MEMORY[0x277CBE7B8];
  v32 = 0;
  v33[0] = 0;
  v15 = [v12 getPromisedItemResourceValue:v33 forKey:v14 error:&v32];

  v16 = v33[0];
  if (v15)
  {
    v17 = v32;
    swift_unknownObjectRetain_n();
    v31 = v1;
    if (v16)
    {
LABEL_3:
      v33[0] = v16;
      v18 = type metadata accessor for UTType();
      v19 = swift_dynamicCast();
      (*(*(v18 - 8) + 56))(v10, v19 ^ 1u, 1, v18);
      goto LABEL_6;
    }
  }

  else
  {
    v20 = v32;
    swift_unknownObjectRetain_n();
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v31 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v18 = type metadata accessor for UTType();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
LABEL_6:
  outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  type metadata accessor for UTType();
  v22 = *(v18 - 8);
  v23 = *(v22 + 48);
  if (v23(v6, 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
LABEL_9:
    v27 = v23(v10, 1, v18) == 1;
    goto LABEL_11;
  }

  v24 = UTType.identifier.getter();
  v26 = String.isFolderUTI.getter(v24, v25);

  (*(v22 + 8))(v6, v18);
  if (v26)
  {
    goto LABEL_9;
  }

  v27 = 1;
LABEL_11:
  outlined destroy of CharacterSet?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  swift_unknownObjectRelease();
  if (v30)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return v27;
}

uint64_t (*DOCPreviewController.transitioningProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_transitioningProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

id DOCPreviewController.keyCommands.getter()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DOCPreviewController();
  v1 = objc_msgSendSuper2(&v17, sel_keyCommands);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *MEMORY[0x277D76AD8];
  v5 = objc_opt_self();
  v6 = [v5 keyCommandWithInput:v4 modifierFlags:0 action:sel_dismissViaKeyCommand];
  v7 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
  v8 = [v5 keyCommandWithInput:v7 modifierFlags:0 action:sel_dismissViaKeyCommand];

  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v18._object = 0x8000000249BE7210;
    v11._countAndFlagsBits = 0x207373696D736944;
    v11._object = 0xEF77656976657250;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD00000000000003ALL;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v18);

    v15 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

    [v8 setDiscoverabilityTitle_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA1010;
    *(inited + 32) = v8;
    *(inited + 40) = v6;
    specialized Array.append<A>(contentsOf:)(inited);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL DOCPreviewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (v7)
    {
      return 0;
    }
  }

  if (static Selector.== infix(_:_:)())
  {
    v9 = MEMORY[0x277CC5FD8];
LABEL_8:
    v10._rawValue = *v9;

    return DOCPreviewController.canPerformOperationOnCurrentItem(operation:)(v10);
  }

  if (static Selector.== infix(_:_:)())
  {
    v9 = MEMORY[0x277CC6048];
    goto LABEL_8;
  }

  outlined init with copy of DOCGridLayout.Spec?(a2, v21, &_sypSgMd);
  v11 = v22;
  if (v22)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12, v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for DOCPreviewController();
  v20.receiver = v2;
  v20.super_class = v18;
  v19 = objc_msgSendSuper2(&v20, sel_canPerformAction_withSender_, a1, v17);
  swift_unknownObjectRelease();
  return v19;
}

id DOCPreviewController.duplicate(_:)()
{
  v1 = v0;
  result = [v0 currentPreviewItem];
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v3 = QLItem.node.getter()) != 0)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = v1;
      v8[4] = partial apply for closure #1 in DOCPreviewController.duplicateCurrentItem();
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
      v8[3] = &block_descriptor_85;
      v6 = _Block_copy(v8);
      swift_unknownObjectRetain();
      v7 = v1;

      [v4 fetchParent_];
      _Block_release(v6);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id one-time initialization function for mapTable()
{
  result = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  static DOCPreviewController.mapTable = result;
  return result;
}

{
  result = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  static DOCInteractionManager.mapTable = result;
  return result;
}

void static DOCPreviewController.clearSharedController(for:)(void *a1)
{
  if (a1)
  {
    v1 = one-time initialization token for mapTable;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    [static DOCPreviewController.mapTable removeObjectForKey_];
  }

  else
  {
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();

    os_log(_:dso:log:type:_:)();
  }
}

void *DOCPreviewController.observation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_observation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.observation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_observation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCPreviewController.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_editingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_visibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed] = 0;
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = -1;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_transitioningProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_observation] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_linkNavigateInteraction] = 0;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_publishesUserActivity] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DOCPreviewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
  [v4 setDelegate_];
  [v4 setDataSource_];
  [v4 setAlwaysDisplayPreviewItemTitle_];

  return v4;
}

id DOCPreviewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCPreviewController.bumpLastUsedDate(of:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v32 = v12;
    swift_unknownObjectRetain();
    if (QLItem.node.getter())
    {
      swift_getObjectType();
      v16 = DOCNode.fpfs_syncFetchFPItem()();
      if (v16)
      {
        v17 = v16;
        Date.init()();
        FPItem.setLastOpenDate(_:delay:)(v15, 0.0);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (v32[1].isa)(v15, v11);
        return;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v6 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v18 = [a1 previewItemURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v6, v10, v2);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    (*(v3 + 32))(v22 + v21, v6, v2);
    *(v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v10, partial apply for closure #1 in URL.bumpLastOpenDate(delay:completionHandler:), v22);

    (*(v3 + 8))(v10, v2);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);
    swift_unknownObjectRetain();
    v32 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BE7250, &v34);
      *(v25 + 12) = 2080;
      v33 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13QLPreviewItem_pMd);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v34);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_2493AC000, v32, v24, "%s can't bump last used date of previewItem: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    else
    {
      v30 = v32;
    }
  }
}

void closure #1 in DOCPreviewController.viewWillAppear(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for FINodeEntity();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v30 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = MEMORY[0x277D85000];
    v20 = (*((*MEMORY[0x277D85000] & *Strong) + 0x240))();
    if (v20)
    {
      v20 = [v18 currentPreviewItem];
      if (v20)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && QLItem.node.getter())
        {
          swift_getObjectType();
          v21 = DOCNode.fpfs_syncFetchFPItem()();
          swift_unknownObjectRelease();
          if (v21)
          {
            (*((*MEMORY[0x277D85000] & *v18) + 0x270))(v21);
            v31 = v21;
            FINodeEntity.init(item:)(v31, v16);
            v22 = type metadata accessor for TaskPriority();
            (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
            outlined init with copy of FINodeEntity(v16, v12);
            type metadata accessor for MainActor();
            v23 = v18;
            v24 = static MainActor.shared.getter();
            v25 = (*(v9 + 80) + 40) & ~*(v9 + 80);
            v26 = swift_allocObject();
            v27 = MEMORY[0x277D85700];
            v26[2] = v24;
            v26[3] = v27;
            v26[4] = v23;
            v19 = MEMORY[0x277D85000];
            outlined init with take of FINodeEntity(v12, v26 + v25);
            _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:), v26);

            swift_unknownObjectRelease();
            v20 = outlined destroy of FINodeEntity(v16);
          }

          else
          {
            v20 = swift_unknownObjectRelease();
            v19 = MEMORY[0x277D85000];
          }
        }

        else
        {
          v20 = swift_unknownObjectRelease();
        }
      }
    }

    (*((*v19 & *v18) + 0x288))(v20);
    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
    swift_beginAccess();
    outlined assign with take of URL?(v3, v18 + v29);
    swift_endAccess();
  }
}

uint64_t closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for FINodeEntity();
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:), v7, v6);
}

id closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:)()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    outlined init with copy of FINodeEntity(v5, v4);
    lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
    EntityIdentifier.init<A>(for:)();
    v6 = type metadata accessor for EntityIdentifier();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    UIView.appEntityIdentifier.setter();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCPreviewController.loadLinkNavigateInteraction()()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &async function pointer to partial apply for closure #1 in DOCPreviewController.loadLinkNavigateInteraction();
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  v5 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_linkNavigateInteraction];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_linkNavigateInteraction] = v5;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DOCPreviewController.loadLinkNavigateInteraction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCPreviewController.loadLinkNavigateInteraction(), v5, v4);
}

uint64_t closure #1 in DOCPreviewController.loadLinkNavigateInteraction()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 currentPreviewItemIndex];
    v4 = [v2 numberOfPreviewItems];
    if (v3 >= v4)
    {
    }

    else
    {
      v5 = v4;
      result = IntentParameter.wrappedValue.getter();
      if (*(v0 + 72) == 1)
      {
        if (v5 - 1 >= v3 + 1)
        {
          v7 = v3 + 1;
        }

        else
        {
          v7 = v5 - 1;
        }
      }

      else
      {
        if (__OFSUB__(v3, 1))
        {
          __break(1u);
          return result;
        }

        v7 = (v3 - 1) & ~((v3 - 1) >> 63);
      }

      [v2 setCurrentPreviewItemIndex_];
      v10 = [v2 currentPreviewItemIndex];

      if (v3 != v10)
      {
        [v2 refreshCurrentPreviewItem];
      }
    }

    v11 = *(v0 + 40);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    v11[4] = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    __swift_allocate_boxed_opaque_existential_1(v11);
    static IntentResult.result<>()();

    v9 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed NavigateQuickLookIntent) -> (@out IntentResult, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v8(a1, v5);
}

Swift::Void __swiftcall DOCPreviewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for DOCPreviewController();
  objc_msgSendSuper2(&v19, sel_viewWillDisappear_, a1);
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:sel_reallyBecomeCurrent_ object:0];
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x260))(0);
  (*((*v4 & *v2) + 0x248))(0);
  v5 = (*((*v4 & *v2) + 0x1F0))(0);
  v6 = (*((*v4 & *v2) + 0x150))(v5);
  if (v6)
  {
    v7 = v6;
    v8 = (*((*v4 & **(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8))();
    v9 = (*((*v4 & *v2) + 0x168))(v8);
    if (v9)
    {
      v10 = v9;
      DOCNodeObserver.removeSubscriber(_:)();
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2493AC000, v12, v13, "[Interaction] Clearing last opened item in 'viewWillDisappear' (QL dismissing)", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v15 = (*((*v4 & *v2) + 0x138))();
  if (!v15 || (v16 = v15, v17 = [v15 sceneIdentifier], v16, !v17))
  {
    v17 = 0;
  }

  v18 = specialized static DOCInteractionManager.sharedManager(for:)(v17);

  (*((*v4 & *v18) + 0x68))(0);
}

void __swiftcall DOCPreviewController.topViewController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = [v1 childViewControllers];
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
  }

  [v6 topViewController];
}

uint64_t DOCPreviewController.publishesUserActivity.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_publishesUserActivity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCPreviewController.publishesUserActivity.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_publishesUserActivity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCPreviewController.currentUserActivity.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPreviewController.currentUserActivity.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  [v4 resignCurrent];
}

void (*DOCPreviewController.currentUserActivity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCPreviewController.currentUserActivity.modify;
}

void DOCPreviewController.currentUserActivity.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    [v8 resignCurrent];

    v10 = *v5;
  }

  else
  {
    [v8 resignCurrent];
  }

  free(v3);
}

uint64_t DOCPreviewController.publishUserActivity(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = [a1 itemID];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = partial apply for closure #1 in DOCPreviewController.publishUserActivity(_:);
  v4[4] = v2;
  v8[4] = partial apply for closure #1 in static DOCUserActivityController.userActivityFor(item:completion:);
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
  v8[3] = &block_descriptor_13_2;
  v5 = _Block_copy(v8);
  v6 = a1;

  FPCrossDeviceItemIDForItemID();
  _Block_release(v5);
}

uint64_t closure #1 in DOCPreviewController.publishUserActivity(_:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a1;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCPreviewController.publishUserActivity(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0x260);
    v6 = a2;
    v5(a2);
    DOCPreviewController.delayBecomeCurrent()();
  }
}

id DOCPreviewController.delayBecomeCurrent()()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  v7 = 5.0;
  if (v6)
  {
    if ([v6 valueForKey_])
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v9 < 0.0)
        {
          v7 = 5.0;
        }

        else
        {
          v7 = v9;
        }
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v12, &_sypSgMd);
    }
  }

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_reallyBecomeCurrent_ object:0];
  return [v0 performSelector:sel_reallyBecomeCurrent_ withObject:0 afterDelay:v7];
}

Swift::Void __swiftcall DOCPreviewController.reallyBecomeCurrent(_:)(NSUserActivity_optional a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x258))(a1.value.super.isa, *&a1.is_nil);
  [v3 becomeCurrent];

  if ([v1 currentPreviewItem])
  {
    (*((*v2 & *v1) + 0x208))();

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCPreviewController.resetRenameDelegate()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Rename);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BE7270, &v13);
      _os_log_impl(&dword_2493AC000, v4, v5, "%s: Resetting rename delegate to discard any rename operation", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    oslog = [v2 navigationItem];
    UINavigationItem.renameDelegate.setter();
    lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type DOCPreviewController and conformance DOCPreviewController, type metadata accessor for DOCPreviewController);
    swift_unknownObjectRetain();
    UINavigationItem.renameDelegate.setter();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.Rename);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BE7270, &v13);
      _os_log_impl(&dword_2493AC000, oslog, v9, "%s: Could not reset rename delegate", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }
}

Swift::Int __swiftcall DOCPreviewController.numberOfPreviewItems(in:)(QLPreviewController *in)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
  if (v2)
  {
    return *(v3 + 16);
  }

  if (v3 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t DOCPreviewController.previewController(_:willSaveEditedItem:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x2A0))();
  if (result == 1)
  {
    v6 = *((*v4 & *v2) + 0x208);

    return v6(a2);
  }

  return result;
}

uint64_t closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v103) = a4;
  v110 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v92 = &v90 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v101 = &v90 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v95 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v19, v20);
  v94 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v90 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v90 - v28;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    v99 = v7;
    v32 = *(v7 + 56);
    v32(v29, 1, 1, v6);
    v97 = swift_allocBox();
    v34 = v33;
    v100 = v6;
    v32(v33, 1, 1, v6);
    v35 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
    v98 = a2;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v39 = swift_allocObject();
    v39[2] = v31;
    v39[3] = a3;
    v39[4] = v34;
    v39[5] = v29;
    v102 = v29;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for closure #1 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:);
    *(v40 + 24) = v39;
    v96 = v39;
    v108 = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
    v109 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v105 = 1107296256;
    v106 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
    v107 = &block_descriptor_94_0;
    v41 = _Block_copy(&aBlock);
    v42 = v31;
    v90 = a3;
    swift_unknownObjectRetain();

    aBlock = 0;
    [v35 coordinateReadingItemAtURL:v38 options:1 error:&aBlock byAccessor:v41];
    _Block_release(v41);

    v43 = aBlock;
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      a2 = v98;
      if (v103)
      {
        URL.stopAccessingSecurityScopedResource()();
      }

      v38 = v100;
      if (!v43)
      {
        outlined init with copy of DOCGridLayout.Spec?(v102, v25, &_s10Foundation3URLVSgMd);
        v63 = v99;
        v64 = *(v99 + 48);
        if (v64(v25, 1, v38) == 1)
        {

          outlined destroy of CharacterSet?(v25, &_s10Foundation3URLVSgMd);
        }

        else
        {
          v65 = v95;
          v103 = *(v63 + 32);
          v103(v95, v25, v38);
          v66 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
          swift_beginAccess();
          v67 = v42 + v66;
          v68 = v94;
          outlined init with copy of DOCGridLayout.Spec?(v67, v94, &_s10Foundation3URLVSgMd);
          v69 = v64(v68, 1, v38);
          v91 = v42;
          if (v69 != 1)
          {
            v76 = v92;
            v77 = v68;
            v78 = v103;
            v103(v92, v77, v38);
            v101 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
            URL._bridgeToObjectiveC()(v79);
            v98 = v80;
            v81 = v93;
            (*(v63 + 16))(v93, v76, v38);
            v82 = (*(v63 + 80) + 16) & ~*(v63 + 80);
            v83 = swift_allocObject();
            v78(v83 + v82, v81, v38);
            v84 = swift_allocObject();
            *(v84 + 16) = partial apply for closure #2 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:);
            *(v84 + 24) = v83;
            v108 = thunk for @callee_guaranteed (@in_guaranteed URL) -> ()partial apply;
            v109 = v84;
            aBlock = MEMORY[0x277D85DD0];
            v105 = 1107296256;
            v106 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
            v107 = &block_descriptor_108;
            v85 = _Block_copy(&aBlock);

            aBlock = 0;
            v86 = v101;
            v87 = v98;
            [v101 coordinateReadingItemAtURL:v98 options:1 error:&aBlock byAccessor:v85];
            _Block_release(v85);

            v88 = *(v63 + 8);
            v88(v76, v38);
            v88(v95, v38);
            v89 = aBlock;
            LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

            if (v87)
            {
              __break(1u);
            }

            outlined destroy of CharacterSet?(v102, &_s10Foundation3URLVSgMd);
          }

          outlined destroy of CharacterSet?(v68, &_s10Foundation3URLVSgMd);
          v70 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v71 = v65;
          v72 = v93;
          (*(v63 + 16))(v93, v71, v38);
          v73 = (*(v63 + 80) + 24) & ~*(v63 + 80);
          v74 = (v8 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
          v75 = swift_allocObject();
          *(v75 + 16) = v70;
          v103((v75 + v73), v72, v38);
          *(v75 + v74) = v90;
          *(v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8)) = v97;
          swift_unknownObjectRetain();

          DOCRunInMainThread(_:)();

          (*(v63 + 8))(v71, v38);
        }

        goto LABEL_12;
      }

      v91 = v42;
      if (one-time initialization token for UI == -1)
      {
LABEL_7:
        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.UI);
        v45 = v99;
        v46 = v101;
        (*(v99 + 16))(v101, a2, v38);
        v47 = v43;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v46;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock = v52;
          *v51 = 136315394;
          lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v54;
          (*(v45 + 8))(v50, v38);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &aBlock);

          *(v51 + 4) = v56;
          *(v51 + 12) = 2080;
          v57 = v47;
          v58 = [v57 description];
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &aBlock);

          *(v51 + 14) = v62;
          _os_log_impl(&dword_2493AC000, v48, v49, "Unable to access file at URL: %s. Error: %s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v52, -1, -1);
          MEMORY[0x24C1FE850](v51, -1, -1);

LABEL_13:
          outlined destroy of CharacterSet?(v102, &_s10Foundation3URLVSgMd);
        }

        (*(v45 + 8))(v46, v38);
LABEL_12:

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_7;
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v47 = a4;
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v51 = (&v43 - v11);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v45 = &v43 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v52 = &v43 - v25;
  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocBox();
  v29 = v28;
  v44 = *(v17 + 56);
  v44(v28, 1, 1, v16);
  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = v26;
  v30[4] = v27;
  aBlock[4] = partial apply for closure #1 in DOCPreviewController.originalFileURL(for:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_124_0;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v32 = v26;

  [a3 fetchURL_];
  _Block_release(v31);
  OS_dispatch_semaphore.wait()();

  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v29, v15, &_s10Foundation3URLVSgMd);

  v33 = *(v17 + 48);
  if (v33(v15, 1, v16) == 1)
  {
    return outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
  }

  v34 = *(v17 + 32);
  v35 = v52;
  v34(v52, v15, v16);
  v15 = v51;
  DOCPreviewController.replacementFolder(for:)(v35, v51);
  if (v33(v15, 1, v16) == 1)
  {
    (*(v17 + 8))(v35, v16);
    return outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
  }

  v37 = v45;
  v34(v45, v15, v16);
  v38 = v47;
  outlined destroy of CharacterSet?(v47, &_s10Foundation3URLVSgMd);
  (*(v17 + 16))(v38, v37, v16);
  v44(v38, 0, 1, v16);
  v39 = v48;
  URL.lastPathComponent.getter();
  v40 = v46;
  URL.appendingPathComponent(_:)();

  v41 = v49;
  DOCPreviewController.copy(_:to:)(v39, v40, v49);
  v42 = *(v17 + 8);
  v42(v40, v16);
  v42(v37, v16);
  v42(v35, v16);
  return outlined assign with take of URL?(v41, v50);
}

void closure #2 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)()
{
  v0 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v0, v1);
  MEMORY[0x28223BE20](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  v10 = URL.startAccessingSecurityScopedResource()();
  v8 = [objc_opt_self() defaultManager];
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);

  if (v10)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

void closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0xF0))())
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = a4;
      v13 = *(v10 + 8);

      v13(v8, a2, a3, partial apply for closure #1 in closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:), v12, ObjectType, v10);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t closure #1 in closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v32 - v16;
  v18 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v9;
    outlined init with copy of DOCGridLayout.Spec?(a1, v17, &_s10Foundation3URLVSgMd);
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
    swift_beginAccess();
    outlined assign with take of URL?(v17, v20 + v21);
    swift_endAccess();
    swift_beginAccess();
    v22 = v3;
    outlined init with copy of DOCGridLayout.Spec?(v18, v13, &_s10Foundation3URLVSgMd);
    if ((*(v3 + 48))(v13, 1, v2) == 1)
    {

      return outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v23 = *(v3 + 32);
      v24 = v33;
      v23(v33, v13, v2);
      v25 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
      [v25 setMaxConcurrentOperationCount_];
      v26 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BE71D0);
      [v25 setName_];

      v27 = v32;
      (*(v22 + 16))(v32, v24, v2);
      v28 = (*(v22 + 80) + 24) & ~*(v22 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v20;
      v23((v29 + v28), v27, v2);
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:);
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_118;
      v30 = _Block_copy(aBlock);
      v31 = v20;

      [v25 addOperationWithBlock_];
      _Block_release(v30);

      return (*(v22 + 8))(v33, v2);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCPreviewController.previewControllerWillDismiss(_:)(QLPreviewController *a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x108))(a1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v1, ObjectType, v3);

    swift_unknownObjectRelease();
  }
}

Swift::Int closure #1 in DOCPreviewController.originalFileURL(for:)(uint64_t a1, void *a2)
{
  v4 = swift_projectBox();
  v5 = type metadata accessor for URL();
  if ((*(*(v5 - 8) + 48))(a1, 1, v5) == 1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    swift_unknownObjectRetain();
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315394;
      swift_getObjectType();
      v12 = DOCNode.nodeDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v20);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_2493AC000, v8, v9, "Unable to fetch URL for node: %s error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }

  swift_beginAccess();
  outlined assign with copy of URL?(a1, v4);
  return OS_dispatch_semaphore.signal()();
}

void DOCPreviewController.replacementFolder(for:)(uint64_t a1@<X0>, NSObject *a2@<X8>)
{
  v58 = a2;
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v51[-v14];
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51[-v18];
  v59 = URL.startAccessingSecurityScopedResource()();
  v20 = [objc_opt_self() defaultManager];
  v57 = a1;
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v61[0] = 0;
  v24 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:v22 create:1 error:v61];

  v25 = v61[0];
  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    (*(v4 + 56))(v19, 0, 1, v3);
    outlined init with take of URL?(v19, v58);
    if (!v59)
    {
      return;
    }

    goto LABEL_10;
  }

  v55 = v8;
  v56 = v15;
  v54 = v11;
  v27 = v61[0];
  v28 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v29 = v58;
  (*(v4 + 56))(v58, 1, 1, v3);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.UI);
  v31 = v56;
  outlined init with copy of DOCGridLayout.Spec?(v29, v56, &_s10Foundation3URLVSgMd);
  (*(v4 + 16))(v7, v57, v3);
  v32 = v28;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v58 = v33;
  if (!os_log_type_enabled(v33, v34))
  {

    (*(v4 + 8))(v7, v3);
    outlined destroy of CharacterSet?(v31, &_s10Foundation3URLVSgMd);
    if (!v59)
    {
      return;
    }

    goto LABEL_10;
  }

  v35 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v61[0] = v53;
  *v35 = 136315650;
  v52 = v34;
  v36 = v7;
  outlined init with copy of DOCGridLayout.Spec?(v31, v54, &_s10Foundation3URLVSgMd);
  v37 = String.init<A>(describing:)();
  v39 = v38;
  outlined destroy of CharacterSet?(v31, &_s10Foundation3URLVSgMd);
  v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v61);

  *(v35 + 4) = v40;
  *(v35 + 12) = 2080;
  lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42;
  (*(v4 + 8))(v36, v3);
  v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v61);

  *(v35 + 14) = v44;
  *(v35 + 22) = 2080;
  v60 = v28;
  v45 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v46 = String.init<A>(describing:)();
  v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v61);

  *(v35 + 24) = v48;
  v49 = v58;
  _os_log_impl(&dword_2493AC000, v58, v52, "Unable to create temporary directory at: %s appropriate for URL: %s error: %s", v35, 0x20u);
  v50 = v53;
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v50, -1, -1);
  MEMORY[0x24C1FE850](v35, -1, -1);

  if (v59)
  {
LABEL_10:
    URL.stopAccessingSecurityScopedResource()();
  }
}

id DOCPreviewController.copy(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v58[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v51 - v12;
  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v58[0] = 0;
  v21 = [v14 copyItemAtURL:v17 toURL:v19 error:v58];

  v56 = v58[0];
  if (v21)
  {
    v22 = v55;
    (*(v6 + 16))(v55, a2, v5);
    (*(v6 + 56))(v22, 0, 1, v5);
    v23 = v56;

    return v23;
  }

  else
  {
    v25 = v56;
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.UI);
    v28 = v6;
    v29 = *(v6 + 16);
    v29(v13, a1, v5);
    v29(v9, a2, v5);
    v30 = v26;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58[0] = v56;
      *v33 = 136315650;
      lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v54 = v31;
      v53 = v32;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v26;
      v36 = v35;
      v37 = *(v28 + 8);
      v37(v13, v5);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v58);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v37(v9, v5);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v58);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2080;
      v43 = v52;
      v57 = v52;
      v44 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v45 = String.init<A>(describing:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v58);

      *(v33 + 24) = v47;
      v48 = v54;
      _os_log_impl(&dword_2493AC000, v54, v53, "Unable to copy url: %s into: %s error: %s", v33, 0x20u);
      v49 = v56;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    else
    {

      v50 = *(v28 + 8);
      v50(v9, v5);
      v50(v13, v5);
    }

    return (*(v28 + 56))(v55, 1, 1, v5);
  }
}

void closure #1 in DOCPreviewController.previewController(_:transitionViewFor:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

id DOCQLItemsPreviewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void DOCPreviewController.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_editingDelegate);
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_visibilityDelegate);
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_actionManager);

  outlined consume of DOCPreviewSource?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 8), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16));
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL, &_s10Foundation3URLVSgMd);
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_transitioningProvider);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity);
}

id DOCQLItemsPreviewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void (*protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCPreviewController(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x268))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void closure #2 in DOCPreviewController.reload(withDuplicatedNode:original:)(void *a1)
{
  if (DOCPreviewController.canPerformOperationOnCurrentItem(operation:)(MEMORY[0x277CC6040]->_rawValue))
  {
    v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x238))();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 navigationController];

      if (v4)
      {
        [v4 rename_];
      }
    }
  }
}

void closure #1 in DOCDocumentManager.previewController(_:wantsToRevealNode:)(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.UI);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v3, "Move Previewed Item: unable to reveal item, since effective browser view controller can't be obtained", v4, 2u);
      MEMORY[0x24C1FE850](v4, -1, -1);
    }
  }
}

id closure #1 in DOCDocumentManager.previewController(_:import:nextTo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v24 = Strong;
  outlined init with copy of DOCGridLayout.Spec?(a1, v17, &_s10Foundation3URLVSgMd);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd);
LABEL_6:
    (*(v19 + 56))(v13, 1, 1, v18);
    v46(v13);
    return outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
  }

  (*(v19 + 32))(v22, v17, v18);
  if (a2)
  {
    (*(v19 + 8))(v22, v18);

    goto LABEL_6;
  }

  swift_getObjectType();
  v26 = DOCNode.displayName(withHiddenPathExtension:)(1);
  result = _DocumentManagerBundle();
  if (result)
  {
    v27 = result;
    v47._object = 0x8000000249BE74E0;
    v28._countAndFlagsBits = 0x79706F63204025;
    v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v29.value._object = 0xEB00000000656C62;
    v28._object = 0xE700000000000000;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000024;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249B9A480;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 32) = v26;
    v32 = static String.localizedStringWithFormat(_:_:)();
    v34 = v33;

    v35 = MEMORY[0x24C1FAD20](v32, v34);

    v36 = URL.pathExtension.getter();
    v37 = MEMORY[0x24C1FAD20](v36);

    v38 = [v35 stringByAppendingPathExtension_];

    if (v38)
    {
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v46;
    *(v42 + 24) = a5;
    v43 = *((*MEMORY[0x277D85000] & *v24) + 0x108);

    v43(v45, v39, v41, v22, 2, partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:), v42);

    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DOCPreviewController.reload(withDuplicatedNode:original:)(uint64_t a1, uint64_t a2, char *a3)
{
  v67 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTimeInterval();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v68 = (&v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v17, v18);
  MEMORY[0x28223BE20](v19, v20);
  v71 = a3;
  v25 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source];
  v26 = a3[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16];
  if (v26 == 255)
  {
    return;
  }

  v66 = v13;
  v28 = *v25;
  v27 = v25[1];
  if (v26)
  {
    v29 = v25[1];
    outlined copy of DOCPreviewSource(*v25, v29, 1);

    return;
  }

  v55 = v24;
  v56 = &v54 - v22;
  v57 = v23;
  v58 = v10;
  v59 = v8;
  v60 = v9;
  v61 = v5;
  v78 = v28;
  v63 = v21;
  v64 = v28 >> 62;
  v62 = v4;
  if (v28 >> 62)
  {
LABEL_33:
    v52 = v27;
    v53 = __CocoaSet.count.getter();
    v27 = v52;
    v30 = v53;
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v27;
  outlined copy of DOCPreviewSource?(v28, v27, v26);
  v65 = v31;
  outlined copy of DOCPreviewSource(v28, v31, 0);
  v32 = 0;
  while (1)
  {
    if (v30 == v32)
    {
      outlined consume of DOCPreviewSource?(v28, v65, v26);
      v35 = v71;
      v32 = [v71 currentPreviewItemIndex];
      goto LABEL_20;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v32, v28);
    }

    else
    {
      if (v32 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      swift_unknownObjectRetain();
    }

    v33 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    if (v33)
    {
      break;
    }

    if (__OFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  outlined consume of DOCPreviewSource?(v28, v65, v26);
  v35 = v71;
LABEL_20:
  v36 = (v32 + 1);
  if (__OFADD__(v32, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v64)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37 < v36)
  {
    goto LABEL_35;
  }

  if (v36 < 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v38 = v67;
  swift_unknownObjectRetain();
  specialized Array.replaceSubrange<A>(_:with:)((v32 + 1), (v32 + 1), v38);
  swift_unknownObjectRelease();
  aBlock = v78;
  v73 = 0;
  LOBYTE(v74) = 0;
  (*((*MEMORY[0x277D85000] & *v35) + 0x1C8))(&aBlock, v32, 0);
  outlined consume of DOCPreviewSource?(aBlock, v73, v74);
  if ([v35 respondsToSelector_])
  {
    [v35 setCurrentPreviewItemIndex:v32 + 1 animated:1];
  }

  else
  {
    [v35 setCurrentPreviewItemIndex_];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v71 = static OS_dispatch_queue.main.getter();
  v39 = v55;
  static DispatchTime.now()();
  v41 = v68;
  v40 = v69;
  *v68 = 1;
  v42 = v70;
  (*(v40 + 104))(v41, *MEMORY[0x277D85188], v70);
  v43 = v56;
  MEMORY[0x24C1FAA90](v39, v41);
  (*(v40 + 8))(v41, v42);
  v70 = *(v57 + 8);
  v44 = v63;
  v70(v39, v63);
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  v76 = partial apply for closure #2 in DOCPreviewController.reload(withDuplicatedNode:original:);
  v77 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v75 = &block_descriptor_146_0;
  v46 = _Block_copy(&aBlock);
  v47 = v35;

  v48 = v66;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v49 = v59;
  v50 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v71;
  MEMORY[0x24C1FB940](v43, v48, v49, v46);
  _Block_release(v46);

  (*(v61 + 8))(v49, v50);
  (*(v58 + 8))(v48, v60);
  v70(v43, v44);
}

uint64_t specialized DOCPreviewController.previewController(_:editingModeFor:)()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return *MEMORY[0x277CDAA78];
  }

  swift_unknownObjectRetain();
  v9 = QLItem.node.getter();
  if (!v9)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return *MEMORY[0x277CDAA78];
  }

  v10 = v9;
  if (([v9 isWritable] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v11 = [v10 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.movie.getter();
  LOBYTE(v11) = UTType.conforms(to:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v8, v0);
  if (v11)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id specialized static DOCPreviewController.sharedController(for:)(void *a1)
{
  if (a1)
  {
    v1 = one-time initialization token for mapTable;
    v2 = a1;
    if (v1 != -1)
    {
      v10 = v2;
      swift_once();
      v2 = v10;
    }

    v3 = static DOCPreviewController.mapTable;
    v4 = v2;
    v5 = [v3 objectForKey_];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v8 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
      v6 = DOCPreviewController.init()();
      v9 = v6;
      [v3 setObject:v9 forKey:v4];
    }

    return v6;
  }

  else
  {
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)();
    return 0;
  }
}

id outlined copy of DOCPreviewSource?(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of DOCPreviewSource(result, a2, a3 & 1);
  }

  return result;
}

uint64_t type metadata accessor for DOCPreviewController()
{
  result = type metadata singleton initialization cache for DOCPreviewController;
  if (!type metadata singleton initialization cache for DOCPreviewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized DOCPreviewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_editingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_visibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_configuration) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_duplicatedNodeSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed) = 0;
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -1;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_transitioningProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_observation) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_linkNavigateInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_publishesUserActivity) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_currentUserActivity) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized DOCPreviewController.previewController(_:previewItemAt:)(unint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
  if (v3 == 255)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CDAA48]);

    return [v9 init];
  }

  else
  {
    v5 = *v2;
    v10 = v2[1];
    v6 = v3 & 1;
    outlined copy of DOCPreviewSource(*v2, v10, v3 & 1);
    v7 = DOCPreviewSource.qlItemAt(_:)(a1);
    outlined consume of DOCPreviewSource(v5, v10, v6);
    return v7;
  }
}

void specialized DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain();
    v7 = QLItem.node.getter();
    if (v7)
    {
      v8 = v7;
      v17 = URL.startAccessingSecurityScopedResource()();
      v9 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
      [v9 setMaxConcurrentOperationCount_];
      v10 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BE71D0);
      [v9 setName_];

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v4 + 16))(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v3);
      v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      (*(v4 + 32))(v13 + v12, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
      v14 = v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v14 = v8;
      *(v14 + 8) = v17;
      aBlock[4] = partial apply for closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:);
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_85_1;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v9 addOperationWithBlock_];
      _Block_release(v15);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void specialized DOCDocumentManager.previewController(_:import:nextTo:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a2;
  (*(v9 + 32))(&v14[v13], aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = partial apply for closure #1 in DOCDocumentManager.previewController(_:import:nextTo:completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_72;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [a2 fetchURL_];
  _Block_release(v15);
}

void specialized DOCPreviewController.cleanupAfterImport(temporaryFolder:)(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v31[0] = 0;
  v11 = [v7 removeItemAtURL:v9 error:v31];

  v12 = v31[0];
  if (v11)
  {

    v13 = v12;
  }

  else
  {
    v30[1] = v31[0];
    v14 = v31[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    (*(v3 + 16))(v6, a1, v2);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136315394;
      lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v31);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v30[2] = v15;
      v26 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_2493AC000, v18, v19, "Error while cleaning up temporary folder: %s error: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

void *specialized DOCPreviewController.previewController(_:transitionViewFor:)()
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v1 = QLItem.node.getter();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x1D0))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);

      v7(v0, v2, partial apply for closure #1 in DOCPreviewController.previewController(_:transitionViewFor:), v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v8 = *(v3 + 16);
    v9 = v8;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v8;
}

uint64_t specialized DOCPreviewController.excludedActivityTypes(for:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16);
  if (v2 == 255)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *v1;
  v4 = v1[1];
  outlined copy of DOCPreviewSource(*v1, v4, v2 & 1);
  if (DOCPreviewSource.canCopy.getter())
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249B9A480;
    v6 = *MEMORY[0x277D54720];
    type metadata accessor for UIActivityType(0);
    *(v5 + 56) = v7;
    *(v5 + 32) = v6;
    v8 = v6;
  }

  outlined consume of DOCPreviewSource?(v3, v4, v2);
  return v5;
}

void specialized DOCPreviewController.navigationItem(_:didEndRenamingWith:)(uint64_t a1, void *a2)
{
  if ([v2 currentPreviewItem])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed];
      if (v5)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for QLItem);
        swift_unknownObjectRetain();
        v6 = v5;
        v7 = static NSObject.== infix(_:_:)();

        swift_unknownObjectRelease();
        if (v7)
        {
          v8._countAndFlagsBits = a1;
          v8._object = a2;
          DOCPreviewController.renameCurrentQLItem(withSuggestedName:)(v8);
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v9 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed] = 0;
}

uint64_t specialized DOCPreviewController.navigationItem(_:willBeginRenamingWith:selectedRange:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 currentPreviewItem];
  if (v4)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
      v4 = 0;
    }
  }

  v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed] = v4;

  return a1;
}

BOOL specialized DOCPreviewController.navigationItemShouldBeginRenaming(_:)()
{
  v1 = DOCPreviewController.canPerformOperationOnCurrentItem(operation:)(MEMORY[0x277CC6040]->_rawValue);
  if (v1)
  {
    v2 = [v0 currentPreviewItem];
    if (v2)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {
        swift_unknownObjectRelease();
        v2 = 0;
      }
    }

    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_itemBeingRenamed] = v2;
  }

  return v1;
}

void type metadata completion function for DOCPreviewController()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id partial apply for closure #1 in DOCDocumentManager.previewController(_:import:nextTo:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in DOCDocumentManager.previewController(_:import:nextTo:completion:)(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(v3, (v0 + v2), v5, v6);
}

void partial apply for closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(v4, v0 + v2, v5, v6);
}

void partial apply for closure #2 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)()
{
  type metadata accessor for URL();

  closure #2 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)();
}

void partial apply for closure #1 in closure #1 in closure #3 in closure #1 in DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  specialized DOCPreviewController.cleanupAfterImport(temporaryFolder:)(v2);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DOCPreviewController.loadLinkNavigateInteraction()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCPreviewController.loadLinkNavigateInteraction()(a1, a2, v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed NavigateQuickLookIntent) -> (@out IntentResult, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed NavigateQuickLookIntent) -> (@out IntentResult, @error @owned Error)(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError()
{
  result = lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError;
  if (!lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError;
  if (!lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in DOCPreviewController.viewWillAppear(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type DOCPreviewController and conformance DOCPreviewController(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assertUnrecognizedEnumValue(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v1 = _typeName(_:qualified:)();
  v3 = v2;
  _print_unlocked<A, B>(_:_:)();
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9FA70;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  os_log(_:dso:log:type:_:)();
}

uint64_t RenameItemIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t key path setter for RenameItemIntent.target : RenameItemIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t (*RenameItemIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t key path getter for RenameItemIntent.newName : RenameItemIntent@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t (*RenameItemIntent.newName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t key path getter for RenameItemIntent.overwriteExtension : RenameItemIntent@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*RenameItemIntent.overwriteExtension.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t static RenameItemIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static RenameItemIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RenameItemIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static RenameItemIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RenameItemIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static RenameItemIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static RenameItemIntent.authenticationPolicy : RenameItemIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static RenameItemIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static RenameItemIntent.authenticationPolicy : RenameItemIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static RenameItemIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static RenameItemIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables16RenameItemIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables16RenameItemIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE7560;
  v4._countAndFlagsBits = 0xD000000000000021;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables16RenameItemIntentV10AppIntents0H9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables16RenameItemIntentV10AppIntents0H9ParameterCySSGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent()
{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent;
  if (!lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RenameItemIntent and conformance RenameItemIntent);
  }

  return result;
}

uint64_t closure #1 in static RenameItemIntent.parameterSummary.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249BA0290;
  *(v1 + 32) = v0;

  return v2;
}

uint64_t one-time initialization function for needsInputFileDialog()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v11, static RenameItemIntent.needsInputFileDialog);
  __swift_project_value_buffer(v11, static RenameItemIntent.needsInputFileDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

uint64_t one-time initialization function for needsNewNameDialog()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v11, static RenameItemIntent.needsNewNameDialog);
  __swift_project_value_buffer(v11, static RenameItemIntent.needsNewNameDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

uint64_t static RenameItemIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static RenameItemIntent.openAppWhenRun = a1;
  return result;
}

uint64_t RenameItemIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for FINodeEntity();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](RenameItemIntent.perform(), 0, 0);
}

uint64_t RenameItemIntent.perform()()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  IntentParameter.wrappedValue.getter();
  v3 = *(v0 + 152);

  IntentParameter.wrappedValue.getter();
  v4 = *(v1 + *(v2 + 32));
  *(v0 + 112) = v4;
  v5 = v4;
  outlined destroy of FINodeEntity(v1);
  IntentParameter.wrappedValue.getter();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v0 + 120) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v3 & 1;
  *(v8 + 41) = 0;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  v10 = type metadata accessor for FPItem();
  *v9 = v0;
  v9[1] = RenameItemIntent.perform();

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000003CLL, 0x8000000249BE7590, partial apply for closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v8, v10);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = RenameItemIntent.perform();
  }

  else
  {

    v2 = RenameItemIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 32);
  FINodeEntity.init(item:)(v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249B9A480;
  outlined init with copy of FINodeEntity(v1, v5 + v4);
  *(v0 + 40) = specialized RevealItemsIntent.init(targets:)(v5);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  static IntentResult.result<A, B>(value:opensIntent:)();

  outlined destroy of FINodeEntity(v1);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t default argument 0 of RenameItemIntent.init(target:newName:overwriteExtension:)()
{
  v28 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v27 - v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v20 = type metadata accessor for LocalizedStringResource();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for FINodeEntity();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  if (one-time initialization token for needsInputFileDialog != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for IntentDialog();
  v23 = __swift_project_value_buffer(v22, static RenameItemIntent.needsInputFileDialog);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v11, v23, v22);
  v25 = *(v24 + 56);
  v25(v11, 0, 1, v22);
  v25(v7, 1, 1, v22);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v28);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t default argument 1 of RenameItemIntent.init(target:newName:overwriteExtension:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v23 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd);
  v17 = type metadata accessor for LocalizedStringResource();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = type metadata accessor for String.IntentInputOptions();
  v23[0] = 0;
  v23[1] = 0;
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  if (one-time initialization token for needsNewNameDialog != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for IntentDialog();
  v20 = __swift_project_value_buffer(v19, static RenameItemIntent.needsNewNameDialog);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v8, v20, v19);
  (*(v21 + 56))(v8, 0, 1, v19);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  return IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t default argument 2 of RenameItemIntent.init(target:newName:overwriteExtension:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v34 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v29 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v30 = type metadata accessor for LocalizedStringResource();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v13 + 104);
  v24(v16, v23, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v16, v23, v12);
  v25 = v32;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v25, 0, 1, v30);
  v38 = 0;
  v26 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  return IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t protocol witness for _EntityUpdatingIntent.target.setter in conformance RenameItemIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t (*protocol witness for _EntityUpdatingIntent.target.modify in conformance RenameItemIntent(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t static RenameItemIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = __swift_project_value_buffer(v2, static RenameItemIntent.__assistantSchemaIntent);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance RenameItemIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();

  return MEMORY[0x28210BFE8](a1, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance RenameItemIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return RenameItemIntent.perform()(a1, v4, v5, v6);
}

uint64_t protocol witness for AppIntent.init() in conformance RenameItemIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RenameItemIntent.init()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance RenameItemIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t specialized RenameItemIntent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v64 = v56 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v63 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v59 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v60 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v71 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v58 = v56 - v18;
  v19 = type metadata accessor for InputConnectionBehavior();
  v20 = *(v19 - 8);
  v73 = v19;
  v74 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v67 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = v56 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = v56 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = v56 - v37;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v39 = *(v13 + 56);
  v72 = v12;
  v69 = v39;
  v70 = v13 + 56;
  v39(v38, 1, 1, v12);
  v40 = type metadata accessor for FINodeEntity();
  (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  if (one-time initialization token for needsInputFileDialog != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for IntentDialog();
  v42 = __swift_project_value_buffer(v41, static RenameItemIntent.needsInputFileDialog);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v44(v30, v42, v41);
  v45 = *(v43 + 56);
  v45(v30, 0, 1, v41);
  v68 = v45;
  v45(v26, 1, 1, v41);
  v46 = *(v74 + 104);
  v47 = v67;
  v66 = *MEMORY[0x277CBA308];
  v74 += 104;
  v65 = v46;
  v46(v67);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  v57 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd);
  v69(v38, 1, 1, v72);
  v48 = type metadata accessor for String.IntentInputOptions();
  v75 = 0;
  v76 = 0;
  (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
  if (one-time initialization token for needsNewNameDialog != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v41, static RenameItemIntent.needsNewNameDialog);
  v44(v30, v49, v41);
  v68(v30, 0, 1, v41);
  v65(v47, v66, v73);
  v58 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56[0] = v30;
  v50 = *MEMORY[0x277CC9110];
  v51 = *(v61 + 104);
  v52 = v63;
  v53 = v62;
  v51(v63, v50, v62);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51(v52, v50, v53);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v69(v38, 0, 1, v72);
  LOBYTE(v75) = 0;
  v54 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
  v68(v56[0], 1, 1, v41);
  v65(v67, v66, v73);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v57;
}

uint64_t _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.isConsideredBackground(_:at:)(void *a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = [a1 indexPathForItemAtPoint_];
  if (v11)
  {
    v12 = v11;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    outlined destroy of IndexPath?(v10);
    return 0;
  }

  else
  {
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    outlined destroy of IndexPath?(v10);
    v16 = [a1 hitTest:0 withEvent:{a2, a3}];
    if (v16)
    {
      v17 = v16;
      v18 = (*((*MEMORY[0x277D85000] & *v3) + 0xD70))();
      v19 = v18;
      v20 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 >> 62)
      {
LABEL_20:
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v21 != i; ++i)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1FC540](i, v19);
        }

        else
        {
          if (i >= *(v20 + 16))
          {
            goto LABEL_19;
          }

          v23 = *(v19 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v25 = [v17 isDescendantOfView_];

        if (v25)
        {

          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t DOCTagRegistry.lightweightUserTags.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v2 array];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized _arrayConditionalCast<A, B>(_:)(v4);

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_6:
  v14 = v6;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v12 labelIndex];
      type metadata accessor for DSLightweightTagInfo();
      swift_allocObject();
      DSLightweightTagInfo.init(name:colorLabel:favorite:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v10);

    return v14;
  }

  return result;
}

void *DOCFolderIconCustomizationApplicator.fiNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode);
  v2 = v1;
  return v1;
}

uint64_t key path setter for DOCFolderIconCustomizationApplicator.allTags : DOCFolderIconCustomizationApplicator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_allTags;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t DOCFolderIconCustomizationApplicator.tagsControllerCreator.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagsControllerCreator);

  return v1;
}

void *DOCFolderIconCustomizationApplicator.folderObserver.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_folderObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCFolderIconCustomizationApplicator.folderObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_folderObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCFolderIconCustomizationApplicator.traitCollection.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_traitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCFolderIconCustomizationApplicator.traitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_traitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCFolderIconCustomizationApplicator.tagsController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator____lazy_storage___tagsController;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator____lazy_storage___tagsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator____lazy_storage___tagsController);
  }

  else
  {
    v4 = closure #1 in DOCFolderIconCustomizationApplicator.tagsController.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *closure #1 in DOCFolderIconCustomizationApplicator.tagsController.getter(uint64_t a1)
{
  v2 = (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagsControllerCreator))();
  [v2 setDelegate_];
  [v2 setDelayResizingUntilAppeared_];
  [v2 setUseParentNavigationItem_];
  swift_getObjectType();
  v3 = DOCNode.fpfs_syncFetchFPItem()();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA0290;
    *(v5 + 32) = v4;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v6 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setItems_];
  }

  return v2;
}

uint64_t DOCFolderIconCustomizationApplicator.__allocating_init(withNode:tagRegistry:tagsControllerCreator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a2, a3, a4, v5, ObjectType);

  return v12;
}

id DOCFolderIconCustomizationApplicator.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger];
  *v1 = DOCGridLayout.specIconWidth.modify;
  *(v1 + 1) = 0;

  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_folderObserver;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    [v3 stopObserving_];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCFolderIconCustomizationApplicator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

Swift::Void __swiftcall DOCFolderIconCustomizationApplicator.startObservingNode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode);
  if (v1)
  {
    v2 = objc_opt_self();
    v8 = v1;
    v3 = [v2 observerForFINode_withObserver_];
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v3);
    v6 = (*((*v4 & *v0) + 0xD8))(v5);
    if (v6)
    {
      v7 = v6;
      [v6 startObserving_];
    }
  }
}

uint64_t DOCFolderIconCustomizationApplicator.applyFolderIconConfig(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](DOCFolderIconCustomizationApplicator.applyFolderIconConfig(_:), 0, 0);
}

uint64_t DOCFolderIconCustomizationApplicator.applyFolderIconConfig(_:)()
{
  v1 = *(v0 + 24);
  dispatch thunk of DSFolderIconInfo.adornmentDictionary.getter();
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode);
  if (v2)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 setProperty:1668638316 asObject:isa];
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t DOCFolderIconCustomizationApplicator.fetchFolderIconConfig()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCFolderIconCustomizationApplicator.fetchFolderIconConfig(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x178))();
  v2 = *(v0 + 8);

  return v2(v1);
}

int64_t DOCFolderIconCustomizationApplicator.currentFolderConfig()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode];
  if (!v2)
  {
    v6 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_node] displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    type metadata accessor for DSFolderIconInfo();
    swift_allocObject();
    return DSFolderIconInfo.init(name:dictionary:folderEmpty:tags:)();
  }

  v3 = v2;
  v4 = [v3 propertyAsNSObject_];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = [v3 fetchTags_];
  v9 = DOCTagsFromFPTags();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_18:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_10:
  v27 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v26 = v3;
  v12 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v12, v10);
    }

    else
    {
      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    ++v12;
    v15 = [v13 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v14 labelIndex];
    type metadata accessor for DSLightweightTagInfo();
    swift_allocObject();
    DSLightweightTagInfo.init(name:colorLabel:favorite:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v11 != v12);

  v3 = v26;
  v16 = v27;
LABEL_19:
  v28 = v16;
  v17 = v1;
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v28, v17);
  if (v28 >> 62)
  {
    v25 = result;
    v18 = __CocoaSet.count.getter();
    result = v25;
    if (v18 >= v25)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v18 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 < result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  v19 = specialized Array.replaceSubrange<A>(_:with:)(result, v18);
  v20 = (*((*MEMORY[0x277D85000] & *v17) + 0x108))(v19);
  specialized Array.append<A>(contentsOf:)(v20);
  v21 = [v3 propertyAsNumber_];
  if (v21)
  {
    v22 = v21;
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v23 = [*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_node) displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DSFolderIconInfo();
  swift_allocObject();
  v24 = DSFolderIconInfo.init(name:dictionary:folderEmpty:tags:)();

  return v24;
}

BOOL closure #2 in DOCFolderIconCustomizationApplicator.currentFolderConfig()(uint64_t a1, void *a2)
{
  v2 = (*((*MEMORY[0x277D85000] & *a2) + 0x120))();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_15:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v6, v3);
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for DSLightweightTagInfo();
    v8 = static DSLightweightTagInfo.== infix(_:_:)();

    v6 = v7 + 1;
  }

  while ((v8 & 1) == 0);

  return v5 != v7;
}

uint64_t DOCFolderIconCustomizationApplicator.registerChangeTrigger(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger);
  *v3 = a1;
  v3[1] = a2;
}

void DOCFolderIconCustomizationApplicator.changed(_:for:)(void *a1, int a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode);
  if (v4)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    v7 = a1;
    v8 = v4;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if ((a1 & 1) != 0 && a2 == 1718903156)
    {
      v9 = MEMORY[0x277D85000];
      v10 = (*((*MEMORY[0x277D85000] & *v3) + 0x108))();
      if (v10 >> 62)
      {
        v22 = __CocoaSet.count.getter();

        if (!v22)
        {
LABEL_6:
          v13 = (*((*v9 & *v3) + 0x120))(v12);
          if (v13 >> 62)
          {
            v23 = __CocoaSet.count.getter();

            if (!v23)
            {
              return;
            }
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (!v14)
            {
              return;
            }
          }
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v15 = (*((*v9 & *v3) + 0x118))(v24);
      v16 = MEMORY[0x277D84F90];
      *v17 = MEMORY[0x277D84F90];

      v15(v24, 0);
      v18 = (*((*v9 & *v3) + 0x130))(v24);
      *v19 = v16;

      v18(v24, 0);
      v20 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger);

      v20(v21);
    }
  }
}

void @objc DOCFolderIconCustomizationApplicator.tagEditor(_:userDidSelect:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(v8);
  swift_unknownObjectRelease();
}

id DOCFolderIconCustomizationApplicator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for DSFolderIconCustomizationApplicator.applyFolderIconConfig(_:) in conformance DOCFolderIconCustomizationApplicator(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x168);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v7(a1);
}

uint64_t protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x170);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator;

  return v5();
}

uint64_t protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t specialized _ArrayProtocol.filter(_:)(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x24C1FC540](v3, a1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            return v11;
          }
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(a1 + 8 * v3 + 32);

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = specialized Set._Variant.insert(_:)(&v10, v5);

        if (v7)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v9;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v6 == v2)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Collection.firstIndex(where:)(unint64_t a1, void *a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = closure #2 in DOCFolderIconCustomizationApplicator.currentFolderConfig()(&v12, a2);

    if (v2)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

id specialized DOCFolderIconCustomizationApplicator.__allocating_init(withNode:tagRegistry:tagsControllerCreator:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for DOCFolderIconCustomizationApplicator());

  return specialized DOCFolderIconCustomizationApplicator.init(withNode:tagRegistry:tagsControllerCreator:)(a1, a2, a3, a4, v8);
}

uint64_t specialized DOCFolderIconCustomizationApplicator.tagEditor(_:userDidSelect:)(void *a1)
{
  v2 = v1;
  v4 = [a1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [a1 labelIndex];
  type metadata accessor for DSLightweightTagInfo();
  swift_allocObject();
  DSLightweightTagInfo.init(name:colorLabel:favorite:)();
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x130);

  v7 = v6(v18);
  v9 = v8;
  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v8);

  if (!(*v9 >> 62))
  {
    v11 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = __CocoaSet.count.getter();
  if (v11 < v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  specialized Array.replaceSubrange<A>(_:with:)(v10, v11);
  v7(v18, 0);
  v12 = *((*v5 & *v2) + 0x118);

  v10 = v12(v18);
  v14 = v13;
  MEMORY[0x24C1FB090]();
  if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10(v18, 0);
  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger);

  v15(v16);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1)
{
  v3 = *a1;
  v4 = specialized Collection.firstIndex(where:)(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == __CocoaSet.count.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v7, v3);
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

LABEL_16:
    type metadata accessor for DSLightweightTagInfo();
    v9 = static DSLightweightTagInfo.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v6, v3);
          v11 = MEMORY[0x24C1FC540](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v12)
          {
            goto LABEL_46;
          }

          if (v7 >= v12)
          {
            goto LABEL_47;
          }

          v10 = *(v3 + 32 + 8 * v6);
          v11 = *(v3 + 32 + 8 * v7);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v13 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

        if ((v3 & 0x8000000000000000) != 0 || v13)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_44;
        }

        *(v14 + 8 * v7 + 32) = v10;

        *a1 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized DOCFolderIconCustomizationApplicator.tagEditor(_:userDidDeselect:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v3 labelIndex];
  type metadata accessor for DSLightweightTagInfo();
  swift_allocObject();
  DSLightweightTagInfo.init(name:colorLabel:favorite:)();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x118))(v18);
  v8 = v7;
  v9 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v7);
  if (!(*v8 >> 62))
  {
    v10 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = v9;
  v10 = __CocoaSet.count.getter();
  v9 = v17;
  if (v10 < v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  specialized Array.replaceSubrange<A>(_:with:)(v9, v10);
  v6(v18, 0);
  v11 = [v3 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v3 labelIndex];
  swift_allocObject();
  DSLightweightTagInfo.init(name:colorLabel:favorite:)();
  v3 = (*((*v5 & *v2) + 0x130))(v18);
  v13 = v12;
  MEMORY[0x24C1FB090]();
  if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v3)(v18, 0);
  v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger);

  v14(v15);
}

uint64_t dispatch thunk of DOCFolderIconCustomizationApplicator.applyFolderIconConfig(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x168);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v7(a1);
}

uint64_t dispatch thunk of DOCFolderIconCustomizationApplicator.fetchFolderIconConfig()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x170);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of DOCFolderIconCustomizationApplicator.fetchFolderIconConfig();

  return v5();
}

uint64_t dispatch thunk of DOCFolderIconCustomizationApplicator.fetchFolderIconConfig()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t CreateFolderIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t CreateFolderTarget.description.getter()
{
  v1 = 0x746E656D75636F44;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C6E776F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727543;
  }
}

DocumentManagerExecutables::CreateFolderTarget_optional __swiftcall CreateFolderTarget.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id one-time initialization function for itemManager(uint64_t a1)
{
  return one-time initialization function for itemManager(a1, &static CreateFolderTargetProvider.itemManager);
}

{
  return one-time initialization function for itemManager(a1, &static CreateFolderIntent.itemManager);
}

uint64_t CreateFolderTargetProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  return FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v0, 1);
}

uint64_t CreateFolderTargetProvider.results()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CreateFolderTargetProvider.results();

  return specialized CreateFolderTargetProvider.results()();
}

uint64_t CreateFolderTargetProvider.getFileEntity(for:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 40) = *a2;
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = CreateFolderTargetProvider.getFileEntity(for:);

  return specialized CreateFolderTargetProvider.getItem(for:)((v2 + 40));
}

uint64_t CreateFolderTargetProvider.getFileEntity(for:)(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](CreateFolderTargetProvider.getFileEntity(for:), 0, 0);
}

uint64_t CreateFolderTargetProvider.getFileEntity(for:)()
{
  v1 = v0[4];
  if (v1)
  {
    FINodeEntity.init(item:)(v1, v0[2]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[2];
  v4 = type metadata accessor for FINodeEntity();
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t CreateFolderTargetProvider.defaultResult()(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](CreateFolderTargetProvider.defaultResult(), 0, 0);
}

{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](CreateFolderTargetProvider.defaultResult(), 0, 0);
}

uint64_t CreateFolderTargetProvider.defaultResult()()
{
  *(v0 + 32) = 0;
  *(v0 + 56) = byte_285C81DB0;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = CreateFolderTargetProvider.defaultResult();

  return specialized CreateFolderTargetProvider.getItem(for:)((v0 + 56));
}

{
  v1 = *(v0 + 48);
  if (v1)
  {
    FINodeEntity.init(item:)(v1, *(v0 + 24));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 24);
  v4 = type metadata accessor for FINodeEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, v2, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    outlined init with take of FINodeEntity(*(v0 + 24), *(v0 + 16));
    v8 = 0;
    goto LABEL_8;
  }

  v7 = *(v0 + 32);
  outlined destroy of CharacterSet?(*(v0 + 24), &_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  if (v7 == 2)
  {
    v8 = 1;
LABEL_8:
    v6(*(v0 + 16), v8, 1, v4);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 32) + 1;
  *(v0 + 32) = v11;
  *(v0 + 56) = *(&outlined read-only object #0 of CreateFolderTargetProvider.defaultResult() + v11 + 32);
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = CreateFolderTargetProvider.defaultResult();

  return specialized CreateFolderTargetProvider.getItem(for:)((v0 + 56));
}

uint64_t CreateFolderTargetProvider.getItem(for:)(unsigned __int8 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CreateFolderTargetProvider.getItem(for:);

  return specialized CreateFolderTargetProvider.getItem(for:)(a1);
}

uint64_t CreateFolderTargetProvider.getCurrentBrowserLocation()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return specialized CreateFolderTargetProvider.getCurrentBrowserLocation()();
}

void closure #1 in CreateFolderTargetProvider.getItem(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  if (one-time initialization token for itemManager != -1)
  {
    swift_once();
  }

  v7 = static CreateFolderTargetProvider.itemManager;
  URL._bridgeToObjectiveC()(&OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController);
  v9 = v8;
  (*(v3 + 16))(v6, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in CreateFolderTargetProvider.getItem(for:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_86;
  v12 = _Block_copy(aBlock);

  [v7 fetchItemForURL:v9 completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in CreateFolderTargetProvider.getItem(for:)(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
      a2 = 0;
    }

    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance CreateFolderTargetProvider(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);

  return specialized CreateFolderTargetProvider.results()();
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance CreateFolderTargetProvider(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return CreateFolderTargetProvider.defaultResult()(a1);
}

uint64_t CreateFolderTargetProvider.results(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator;

  return FileEntitySpotlight.Source.fetchEntities(matching:)(a1, a2);
}

uint64_t protocol witness for SearchableDynamicOptionsProvider.results(for:) in conformance CreateFolderTargetProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = protocol witness for SearchableDynamicOptionsProvider.results(for:) in conformance CreateFolderTargetProvider;

  return FileEntitySpotlight.Source.fetchEntities(matching:)(a2, a3);
}

double key path getter for CreateFolderIntent.fileName : CreateFolderIntent@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t (*CreateFolderIntent.fileName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t key path setter for CreateFolderIntent.target : CreateFolderIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t (*CreateFolderIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t (*CreateFolderIntent.bounceOnCollision.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t static CreateFolderIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables18CreateFolderIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables18CreateFolderIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE7890;
  v4._countAndFlagsBits = 0xD000000000000023;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t closure #1 in static CreateFolderIntent.parameterSummary.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249BA0290;
  *(v1 + 32) = v0;

  return v2;
}

uint64_t static CreateFolderIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static CreateFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateFolderIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static CreateFolderIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateFolderIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static CreateFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static CreateFolderIntent.authenticationPolicy : CreateFolderIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static CreateFolderIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static CreateFolderIntent.authenticationPolicy : CreateFolderIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static CreateFolderIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static CreateFolderIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static CreateFolderIntent.openAppWhenRun = a1;
  return result;
}

id one-time initialization function for itemManager(uint64_t a1, void *a2)
{
  result = [objc_opt_self() defaultManager];
  *a2 = result;
  return result;
}

uint64_t CreateFolderIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for FINodeEntity();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](CreateFolderIntent.perform(), 0, 0);
}

uint64_t CreateFolderIntent.perform()()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  IntentParameter.wrappedValue.getter();
  v3 = *(v1 + *(v2 + 32));
  *(v0 + 112) = v3;
  v4 = v3;
  outlined destroy of FINodeEntity(v1);
  IntentParameter.wrappedValue.getter();
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
  }

  else
  {
    if (one-time initialization token for untitledFolderName != -1)
    {
      swift_once();
    }

    v6 = static DOCCreateFolderOperation.untitledFolderName;
    v5 = *algn_27EEF0938;
  }

  *(v0 + 120) = v6;
  *(v0 + 128) = v5;
  if (one-time initialization token for itemManager != -1)
  {
    swift_once();
  }

  IntentParameter.wrappedValue.getter();
  v7 = (*(v0 + 160) == 2) | *(v0 + 160);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5;
  *(v8 + 40) = 1;
  *(v8 + 41) = v7 & 1;
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = type metadata accessor for FPItem();
  *v9 = v0;
  v9[1] = CreateFolderIntent.perform();

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000004FLL, 0x8000000249BE78C0, partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:), v8, v10);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = CreateFolderIntent.perform();
  }

  else
  {

    v2 = CreateFolderIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = _convertErrorToNSError(_:)();
  v2 = NSError.isFilenameCollisionError.getter();

  if (v2)
  {
    IntentParameter.projectedValue.getter();
    if (one-time initialization token for renameCollisionBaseString != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v5;
    *(v8 + 40) = v4;
    String.init(format:_:)();
    IntentDialog.init(stringLiteral:)();
    v9 = type metadata accessor for IntentDialog();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    type metadata accessor for AppIntentError();
    lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type AppIntentError and conformance AppIntentError, MEMORY[0x277CB9BB0]);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    outlined destroy of CharacterSet?(v7, &_s10AppIntents12IntentDialogVSgMd);
    swift_willThrow();
  }

  else
  {
    v10 = v0[19];
    v11 = v0[14];

    lazy protocol witness table accessor for type DOCLinkDeferredLocalizedError and conformance DOCLinkDeferredLocalizedError();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 32);
  FINodeEntity.init(item:)(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  outlined init with copy of FINodeEntity(v1, v6 + v5);
  *(v0 + 40) = specialized RevealItemsIntent.init(targets:)(v6);
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  static IntentResult.result<A, B>(value:opensIntent:)();

  outlined destroy of FINodeEntity(v1);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t default argument 0 of CreateFolderIntent.init(fileName:target:bounceOnCollision:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v21 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSSgGMd);
  v17 = type metadata accessor for LocalizedStringResource();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = type metadata accessor for String.IntentInputOptions();
  v21[0] = 0;
  v21[1] = 0;
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  return IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t default argument 1 of CreateFolderIntent.init(fileName:target:bounceOnCollision:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - v12;
  v27 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - v16;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v18 = type metadata accessor for LocalizedStringResource();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = type metadata accessor for FINodeEntity();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v20 = swift_allocObject();
  v25 = xmmword_249B9A480;
  *(v20 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  v21 = type metadata accessor for IntentDialog();
  v22 = *(*(v21 - 8) + 56);
  v22(v9, 1, 1, v21);
  v22(v28, 1, 1, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v25;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v33 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v23, 1);
  (*(v31 + 104))(v30, *MEMORY[0x277CBA308], v32);
  lazy protocol witness table accessor for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t default argument 2 of CreateFolderIntent.init(fileName:target:bounceOnCollision:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v34 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v29 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v30 = type metadata accessor for LocalizedStringResource();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v13 + 104);
  v24(v16, v23, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v16, v23, v12);
  v25 = v32;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v25, 0, 1, v30);
  v38 = 1;
  v26 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  return IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t static CreateFolderIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = __swift_project_value_buffer(v2, static CreateFolderIntent.__assistantSchemaIntent);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance CreateFolderIntent(uint64_t a1)
{
  FolderIntent = lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();

  return MEMORY[0x28210BFE8](a1, FolderIntent);
}

uint64_t protocol witness for AppIntent.perform() in conformance CreateFolderIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return CreateFolderIntent.perform()(a1, v4, v5, v6);
}

uint64_t protocol witness for AppIntent.init() in conformance CreateFolderIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized CreateFolderIntent.init()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance CreateFolderIntent(uint64_t a1)
{
  FolderIntent = lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();

  return MEMORY[0x28210B538](a1, FolderIntent);
}

uint64_t specialized CreateFolderTargetProvider.getCurrentBrowserLocation()()
{
  return MEMORY[0x2822009F8](specialized CreateFolderTargetProvider.getCurrentBrowserLocation(), 0, 0);
}

{
  v1 = [objc_opt_self() sharedStore];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundlePath];

  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x24C1FAD20](v4);
  }

  v5 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier_];

  v6 = [v1 interfaceStateForConfiguration_];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v6 mostRecentlyVisitedBrowsedState_FullBrowser];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v11 = v0[7];
  v12 = v0[9];
  v13 = [v11 node];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [v13 fpfs_fpItem];
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_10:

    outlined consume of Data._Representation(v8, v10);
    goto LABEL_11;
  }

  v15 = *MEMORY[0x277CC6028];
  v22 = v12;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v16;
  v21 = v16;
  LOBYTE(v15) = specialized static DOCActionManager.canPerform(_:on:)(v15, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  outlined consume of Data._Representation(v8, v10);
  swift_unknownObjectRelease();

  v18 = v16;
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_11:
  v18 = 0;
LABEL_12:
  v19 = v0[1];

  return v19(v18);
}

uint64_t specialized CreateFolderTargetProvider.getItem(for:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for URL();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  v5 = *a1;
  *(v1 + 128) = v5;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    v7 = v4;
    type metadata accessor for DOCNamedLocationResolver(0);
    v8 = swift_task_alloc();
    *(v1 + 88) = v8;
    *v8 = v1;
    v8[1] = specialized CreateFolderTargetProvider.getItem(for:);

    return static DOCNamedLocationResolver.resolve(_:)(v7, v6);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v1 + 80) = v10;
    *v10 = v1;
    v10[1] = specialized CreateFolderTargetProvider.getItem(for:);

    return specialized CreateFolderTargetProvider.getCurrentBrowserLocation()();
  }
}

uint64_t specialized CreateFolderTargetProvider.getItem(for:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized CreateFolderTargetProvider.getItem(for:)()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized CreateFolderTargetProvider.getItem(for:);
  }

  else
  {
    v2 = specialized CreateFolderTargetProvider.getItem(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
  *v3 = v0;
  v3[1] = specialized CreateFolderTargetProvider.getItem(for:);

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0x286D657449746567, 0xED0000293A726F66, partial apply for closure #1 in CreateFolderTargetProvider.getItem(for:), v2, v4);
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized CreateFolderTargetProvider.getItem(for:);
  }

  else
  {

    v2 = specialized CreateFolderTargetProvider.getItem(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2(v1);
}

{
  v17 = v0;
  v1 = *(v0 + 96);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.AppIntents);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    if (v6 == 2)
    {
      v9 = 0x64616F6C6E776F44;
    }

    else
    {
      v9 = 0x746E656D75636F44;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, 0xE900000000000073, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_2493AC000, v4, v5, "Unable to resolve %s with error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(0);
}

{
  v20 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 120);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.AppIntents);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    if (v9 == 2)
    {
      v12 = 0x64616F6C6E776F44;
    }

    else
    {
      v12 = 0x746E656D75636F44;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, 0xE900000000000073, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_2493AC000, v7, v8, "Unable to resolve %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t specialized CreateFolderTargetProvider.results()()
{
  v1 = type metadata accessor for FINodeEntity();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd) - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CreateFolderTargetProvider.results(), 0, 0);
}

{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 104) = byte_285C81D88;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = specialized CreateFolderTargetProvider.results();

  return specialized CreateFolderTargetProvider.getItem(for:)((v0 + 104));
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    FINodeEntity.init(item:)(v1, *(v0 + 56));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  (*(*(v0 + 24) + 56))(*(v0 + 56), v2, 1, *(v0 + 16));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 80);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, *(v0 + 80));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1, v4);
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v4[2] = v6 + 1;
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  outlined init with take of FINodeEntity?(v8, v10 + v11 * v6);
  if (v7 == 2)
  {
    v12 = v4[2];
    if (v12)
    {
      v13 = *(v0 + 24);
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v0 + 64);
        v16 = *(v0 + 48);
        v17 = *(v0 + 16);
        outlined init with copy of FINodeEntity?(v10, v15);
        outlined init with take of FINodeEntity?(v15, v16);
        v18 = (*(v13 + 48))(v16, 1, v17);
        v19 = *(v0 + 48);
        if (v18 == 1)
        {
          outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables12FINodeEntityVSgMd);
        }

        else
        {
          outlined init with take of FINodeEntity(v19, *(v0 + 32));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
          }

          v21 = v14[2];
          v20 = v14[3];
          if (v21 >= v20 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v14);
          }

          v22 = *(v0 + 32);
          v14[2] = v21 + 1;
          outlined init with take of FINodeEntity(v22, v14 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21);
        }

        v10 += v11;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v26 = *(v0 + 8);

    return v26(v14);
  }

  else
  {
    v23 = *(v0 + 72) + 1;
    *(v0 + 72) = v23;
    *(v0 + 80) = v4;
    *(v0 + 104) = *(&outlined read-only object #0 of CreateFolderTargetProvider.results() + v23 + 32);
    v24 = swift_task_alloc();
    *(v0 + 88) = v24;
    *v24 = v0;
    v24[1] = specialized CreateFolderTargetProvider.results();

    return specialized CreateFolderTargetProvider.getItem(for:)((v0 + 104));
  }
}

uint64_t specialized CreateFolderTargetProvider.results()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](specialized CreateFolderTargetProvider.results(), 0, 0);
}

unint64_t lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent()
{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent;
  if (!lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderIntent and conformance CreateFolderIntent);
  }

  return result;
}

uint64_t specialized CreateFolderIntent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v70 = &v54 - v2;
  v69 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v3);
  v68 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v73 = &v54 - v17;
  v78 = type metadata accessor for InputConnectionBehavior();
  v18 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v19);
  v77 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v58 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v54 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v54 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v54 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSSgGMd);
  v36 = *(v12 + 56);
  v61 = v11;
  v36(v35, 1, 1, v11);
  v60 = v36;
  v62 = v12 + 56;
  v37 = type metadata accessor for String.IntentInputOptions();
  v79 = 0;
  v80 = 0;
  (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
  v38 = type metadata accessor for IntentDialog();
  v39 = *(v38 - 8);
  v71 = *(v39 + 56);
  v72 = v39 + 56;
  v71(v27, 1, 1, v38);
  v74 = *MEMORY[0x277CBA308];
  v40 = *(v18 + 104);
  v75 = v18 + 104;
  v76 = v40;
  v40(v77);
  v56 = v35;
  v63 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v36(v35, 1, 1, v11);
  v41 = type metadata accessor for FINodeEntity();
  (*(*(v41 - 8) + 56))(v73, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v42 = swift_allocObject();
  v54 = xmmword_249B9A480;
  *(v42 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  v55 = v27;
  v43 = v38;
  v59 = v38;
  v44 = v38;
  v45 = v71;
  v71(v27, 1, 1, v44);
  v45(v58, 1, 1, v43);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v79 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v46, 1);
  v76(v77, v74, v78);
  lazy protocol witness table accessor for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider();
  lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  v47 = v56;
  v73 = IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = *MEMORY[0x277CC9110];
  v49 = v68;
  v50 = *(v67 + 104);
  v51 = v69;
  v50(v68, v48, v69);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50(v49, v48, v51);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v60(v47, 0, 1, v61);
  LOBYTE(v79) = 1;
  v52 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v52 - 8) + 56))(v70, 1, 1, v52);
  v71(v55, 1, 1, v59);
  v76(v77, v74, v78);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v63;
}

unint64_t lazy protocol witness table accessor for type CreateFolderTarget and conformance CreateFolderTarget()
{
  result = lazy protocol witness table cache variable for type CreateFolderTarget and conformance CreateFolderTarget;
  if (!lazy protocol witness table cache variable for type CreateFolderTarget and conformance CreateFolderTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderTarget and conformance CreateFolderTarget);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in CreateFolderTargetProvider.getItem(for:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);

  return closure #1 in closure #1 in CreateFolderTargetProvider.getItem(for:)(a1, a2);
}

uint64_t outlined init with take of FINodeEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of FINodeEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_10Foundation3URLVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for URL();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    while (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        return;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](v3, a1);
      goto LABEL_8;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 32 + 8 * v3);
LABEL_8:
    v6 = v5;
    v7 = [v5 displayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *a2 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
      *a2 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
  }
}

void FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = v9;
  v19 = _DocumentManagerBundle();
  if (!v19)
  {
    __break(1u);
    goto LABEL_61;
  }

  v20 = v19;
  v70._object = 0x8000000249BD09D0;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  v22._object = 0x8000000249BD0990;
  v23._object = 0x8000000249BD09B0;
  v70._countAndFlagsBits = 0xD000000000000031;
  v23._countAndFlagsBits = 0xD000000000000010;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v70);
  countAndFlagsBits = v24._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x68736172542ELL;
  v25 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v24;

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, String)(inited + 32);
  if (!a2)
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = a4 & 1;
    *(v28 + 24) = v14;
    *(v28 + 32) = a6 & 1;
    *(v28 + 40) = v24;
    *(v28 + 56) = v12;
    *(v28 + 64) = a3;
    *(v28 + 72) = a5;
    *(v28 + 80) = a7;
    *(v28 + 88) = a8;
    *(v28 + 96) = a1;
    aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_87;
    v29 = _Block_copy(aBlock);
    v30 = a5;

    v31 = v14;

    [v27 fetchProviderDomainForItem:v31 cachePolicy:1 completionHandler:v29];
    _Block_release(v29);
    return;
  }

  object = v24._object;
  v11 = MEMORY[0x277D84F90];
  v68 = a1;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a4)
  {
    if (a1 >> 62 && __CocoaSet.count.getter() < 0)
    {
      __break(1u);
LABEL_20:
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), inited, 1, v34);
      goto LABEL_12;
    }

    v26 = v14;

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v26);
  }

  else
  {
  }

  v10 = &selRef_initWithFrame_;
  if ([v14 isTrashed] && (a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  a1 = a2;
  if (DOCProviderDomainIsSharedServerDomain())
  {
LABEL_27:

    goto LABEL_28;
  }

  v32 = DOCLocalizedDisplayName();
  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v33;

  v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  a4 = *(v34 + 2);
  v35 = *(v34 + 3);
  inited = a4 + 1;
  if (a4 >= v35 >> 1)
  {
    goto LABEL_20;
  }

LABEL_12:
  *(v34 + 2) = inited;
  v36 = &v34[16 * a4];
  *(v36 + 4) = a2;
  *(v36 + 5) = v25;
  aBlock[0] = v34;
  a2 = v68;
  if (v68 >> 62)
  {
    if (v68 < 0)
    {
      inited = v68;
    }

    else
    {
      inited = v68 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = &selRef_initWithFrame_;
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_27;
    }

    if (!__CocoaSet.count.getter())
    {
      __break(1u);
      goto LABEL_27;
    }

LABEL_61:
    swift_isUniquelyReferenced_nonNull_bridgeObject();
    goto LABEL_15;
  }

  v10 = &selRef_initWithFrame_;
  if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
LABEL_15:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  }

  v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_57;
  }

  v38 = v37 - 1;
  v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
  *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v38;

  v68 = a2;
LABEL_28:
  specialized Sequence.forEach(_:)(v68, aBlock);
  if (a6)
  {
    a2 = aBlock[0];
    if (*(aBlock[0] + 2) < 3uLL || (*(aBlock[0] + 6) != 0x736568736172542ELL || *(aBlock[0] + 7) != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      a4 = object;
      if (![v14 v10[86]] || !*(a2 + 16))
      {
        goto LABEL_45;
      }

      v41 = *(a2 + 32);
      v42 = *(a2 + 40);

      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      aBlock[0] = a2;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v41, v42);

      inited = *(a2 + 16);
      if (inited)
      {
        aBlock[0] = a2;
        v43 = *(a2 + 24);

        if (inited < v43 >> 1)
        {
LABEL_43:
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, a4);
LABEL_44:

          aBlock[0] = a2;
          goto LABEL_45;
        }

LABEL_59:
        a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, inited + 1, 1, a2);
        aBlock[0] = a2;
        goto LABEL_43;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    a4 = v68;
    specialized Array.remove(at:)(1uLL);

    specialized Array.remove(at:)(1uLL);

    a2 = aBlock[0];
    inited = *(aBlock[0] + 2);
    if (inited)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || inited >= *(a2 + 24) >> 1)
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, inited + 1, 1, a2);
        aBlock[0] = a2;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, object);
      goto LABEL_44;
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v14 v10[86]];
  a2 = aBlock[0];
LABEL_45:
  v44 = *(a2 + 16);
  if (v44)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
    v45 = v11;
    v46 = (a2 + 40);
    do
    {
      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = *(v12 + 16);

      if (v49)
      {
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
        if (v51)
        {
          v52 = (*(v12 + 56) + 16 * v50);
          v48 = *v52;
          v53 = v52[1];

          v47 = v53;
        }
      }

      v55 = v45[2];
      v54 = v45[3];
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
      }

      v45[2] = v55 + 1;
      v56 = &v45[2 * v55];
      v56[4] = v48;
      v56[5] = v47;
      v46 += 2;
      --v44;
    }

    while (v44);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v57 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v45, a5);
  v58 = pathForCopy(fromPathComponents:layoutDirection:)(v45, a3);
  v60 = v59;

  v61 = swift_allocObject();
  v61[2] = a7;
  v61[3] = a8;
  v61[4] = v57;
  v61[5] = v58;
  v61[6] = v60;

  v62 = v57;
  DOCRunInMainThread(_:)();
}

void arrowImageString #1 () in pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(void *a1)
{
  v2 = [objc_opt_self() configurationWithScale_];
  v3 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, 0xEF64726177726F66);
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() textAttachmentWithImage_];
    v6 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v7 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v8 = [v6 initWithString_];

    v9 = [objc_opt_self() attributedStringWithAttachment_];
    [v8 appendAttributedString_];

    v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v11 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v12 = [v10 initWithString_];

    [v8 appendAttributedString_];
    if (a1)
    {
      v13 = *MEMORY[0x277D740C0];
      v14 = a1;
      [v8 addAttribute:v13 value:v14 range:{0, objc_msgSend(v8, sel_length)}];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t pathForCopy(fromPathComponents:layoutDirection:)(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v5 = a1[4];
  v4 = a1[5];
  if (a2 == 1)
  {
    v6 = 0x208297E220;
  }

  else
  {
    v6 = 0x20B896E220;
  }

  v7 = one-time initialization token for bidiIsolateBeginFSI;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = MEMORY[0x277D85000];
  v25 = *((*MEMORY[0x277D85000] & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58);
  v28 = v25();

  MEMORY[0x24C1FAEA0](v5, v4);

  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v24 = *((*v8 & *static DOCUnicode.bidiIsolateEnd) + 0x58);
  v9 = v24();
  v11 = v10;

  MEMORY[0x24C1FAEA0](v9, v11);

  v12 = v28;

  v13 = v2 - 1;
  if (v2 != 1)
  {
    v14 = a1 + 7;
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      v17 = MEMORY[0x24C1FAEA0](v6, 0xA500000000000000);
      v26 = (v25)(v17);
      v27 = v18;

      MEMORY[0x24C1FAEA0](v16, v15);

      v20 = (v24)(v19);
      v22 = v21;

      MEMORY[0x24C1FAEA0](v20, v22);

      MEMORY[0x24C1FAEA0](v26, v27);

      v14 += 2;
      --v13;
    }

    while (v13);
    v12 = v28;
  }

  return v12;
}

uint64_t closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:)(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10, uint64_t a11, void *a12, unint64_t a13)
{
  v18 = a12;
  v20 = a10;
  v19 = a11;
  v21 = a9;
  v22 = MEMORY[0x277D84F90];
  v61 = a13;
  v62 = MEMORY[0x277D84F90];
  if (a3)
  {
    if (a13 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v22 = MEMORY[0x277D84F90];
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v21, 1, v26);
        goto LABEL_10;
      }
    }

    v23 = a4;
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v23);
  }

  else
  {
  }

  v20 = &selRef_initWithFrame_;
  if (([a4 isTrashed] & (a5 ^ 1) & 1) != 0 || !a1)
  {
    goto LABEL_23;
  }

  v18 = a1;
  if (DOCProviderDomainIsSharedServerDomain())
  {

    goto LABEL_23;
  }

  v59 = a6;
  a6 = v22;
  v24 = DOCLocalizedDisplayName();
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v25;

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v26 + 2);
  v27 = *(v26 + 3);
  v21 = v22 + 1;
  if (v22 >= v27 >> 1)
  {
    goto LABEL_18;
  }

LABEL_10:
  *(v26 + 2) = v21;
  v28 = &v26[16 * v22];
  *(v28 + 4) = a1;
  *(v28 + 5) = v19;
  v62 = v26;
  v29 = a13;
  if (a13 >> 62)
  {
    v22 = a6;
    if (__CocoaSet.count.getter() > 0)
    {
      if (__CocoaSet.count.getter())
      {
        swift_isUniquelyReferenced_nonNull_bridgeObject();
        v22 = a6;
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_22:

    a6 = v59;
    goto LABEL_23;
  }

  v22 = a6;
  if (!*((a13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
LABEL_13:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew()(a13);
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a6 = v59;
  if (!v30)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v31 = v30 - 1;
  v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
  *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) = v31;

  v61 = v29;
LABEL_23:
  specialized Sequence.forEach(_:)(v61, &v62);
  if ((a5 & 1) == 0)
  {
    [a4 v20[86]];
    v29 = v62;
    goto LABEL_41;
  }

  v29 = v62;
  if (*(v62 + 2) < 3uLL || (*(v62 + 6) == 0x736568736172542ELL ? (v33 = *(v62 + 7) == 0xE800000000000000) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (![a4 v20[86]])
    {
      goto LABEL_41;
    }

    a5 = a6;
    a6 = a7;
    if (!*(v29 + 16))
    {
      goto LABEL_41;
    }

    v20 = v22;
    v36 = *(v29 + 32);
    v37 = *(v29 + 40);

    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v62 = v29;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v36, v37);

    v22 = *(v29 + 16);
    if (v22)
    {
      v62 = v29;
      v38 = *(v29 + 24);

      if (v22 < v38 >> 1)
      {
LABEL_40:
        v22 = v20;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, a5, a6);

        v62 = v29;
        goto LABEL_41;
      }

LABEL_57:
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v22 + 1, 1, v29);
      v62 = v29;
      goto LABEL_40;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v20 = v61;
  v34 = v22;
  specialized Array.remove(at:)(1uLL);

  specialized Array.remove(at:)(1uLL);

  v29 = v62;
  v22 = *(v62 + 2);
  if (!v22)
  {
    __break(1u);
    goto LABEL_55;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v22 >= *(v29 + 24) >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v29);
    v62 = v29;
  }

  v22 = v34;
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, a6, a7);

  v62 = v29;
LABEL_41:
  v39 = *(v29 + 16);
  if (v39)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
    v40 = v22;
    v41 = (v29 + 40);
    do
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v44 = *(a8 + 16);

      if (v44)
      {
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42);
        if (v46)
        {
          v47 = (*(a8 + 56) + 16 * v45);
          v43 = *v47;
          v48 = v47[1];

          v42 = v48;
        }
      }

      v50 = v40[2];
      v49 = v40[3];
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      }

      v40[2] = v50 + 1;
      v51 = &v40[2 * v50];
      v51[4] = v43;
      v51[5] = v42;
      v41 += 2;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v52 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v40, a10);
  v53 = pathForCopy(fromPathComponents:layoutDirection:)(v40, a9);
  v55 = v54;

  v56 = swift_allocObject();
  v56[2] = a11;
  v56[3] = a12;
  v56[4] = v52;
  v56[5] = v53;
  v56[6] = v55;

  v57 = v52;
  DOCRunInMainThread(_:)();
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = one-time initialization token for bidiIsolateBeginFSI;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x277D85000];
    v37 = *((*MEMORY[0x277D85000] & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58);
    v39 = v37();
    v41 = v9;

    MEMORY[0x24C1FAEA0](v6, v5);

    if (one-time initialization token for bidiIsolateEnd != -1)
    {
      swift_once();
    }

    v36 = *((*v8 & *static DOCUnicode.bidiIsolateEnd) + 0x58);
    v10 = v36();
    v12 = v11;

    MEMORY[0x24C1FAEA0](v10, v12);

    v13 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v14 = MEMORY[0x24C1FAD20](v39, v41);

    v15 = [v13 initWithString_];

    v16 = v2 - 1;
    v17 = v37;
    if (v2 != 1)
    {
      v18 = a1 + 7;
      v35 = a2;
      do
      {
        v38 = v16;
        v20 = *(v18 - 1);
        v19 = *v18;

        arrowImageString #1 () in pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(a2);
        v22 = v21;
        [v15 appendAttributedString_];

        v40 = v17();
        v42 = v23;

        MEMORY[0x24C1FAEA0](v20, v19);

        v25 = (v36)(v24);
        v27 = v26;

        MEMORY[0x24C1FAEA0](v25, v27);

        a2 = v35;

        v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v29 = MEMORY[0x24C1FAD20](v40, v42);

        v17 = v37;
        v30 = [v28 initWithString_];

        [v15 appendAttributedString_];
        v18 += 2;
        v16 = v38 - 1;
      }

      while (v38 != 1);
    }

    return v15;
  }

  else
  {
    v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v33 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
    v34 = [v32 initWithString_];

    return v34;
  }
}

uint64_t objectdestroy_2Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id UIViewController.associatedObjectStorage.getter()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
}

id UIView.doc_inWindowPerformingSnapshotting.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = [v3 _isPerformingSystemSnapshot];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static UIView.doc_performAllowingAnimations(_:block:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    return a2();
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  *(v8 + 24) = v7;
  v10[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_88;
  v9 = _Block_copy(v10);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id UIViewController.doc_inWindowPerformingSnapshotting.getter()
{
  v1 = [v0 viewIfLoaded];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 doc_inWindowPerformingSnapshotting];

  return v3;
}

void UIViewController.doc_removeFromParentViewController(removeSubview:)(void (*a1)(void))
{
  v2 = v1;
  v4 = [v1 parentViewController];
  if (v4)
  {

    [v1 willMoveToParentViewController_];
    v5 = [v1 viewIfLoaded];
    v6 = [v5 superview];

    if (!v6)
    {
LABEL_14:

      [v2 removeFromParentViewController];
      return;
    }

    if (!a1)
    {
      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 removeFromSuperview];

        goto LABEL_14;
      }

      goto LABEL_24;
    }

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      a1();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = [v1 viewIfLoaded];
  v10 = [v9 superview];

  if (!v10)
  {
    return;
  }

  if (a1)
  {

    v11 = [v1 view];
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = v11;
    a1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  }

  else
  {
    v15 = [v1 view];
    if (!v15)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v16 = v15;
    [v15 removeFromSuperview];
  }
}