uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for CloudSyncAssetData(void *a1)
{
  a1[1] = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncAssetData and conformance CloudSyncAssetData, type metadata accessor for CloudSyncAssetData);
  a1[2] = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncAssetData and conformance NSObject, type metadata accessor for CloudSyncAssetData);
  result = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncAssetData and conformance CloudSyncAssetData, type metadata accessor for CloudSyncAssetData);
  a1[3] = result;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in variable initialization expression of static MessageCollectionViewCell.registration(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0xF0);

  return v1(v2);
}

uint64_t static MessageCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MessageCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MessageCollectionViewCell.usePhoneString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_usePhoneString);

  return v1;
}

id MessageCollectionViewCell.activityIndicator.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setHidesWhenStopped_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id MessageCollectionViewCell.contentStackView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView);
  }

  else
  {
    v4 = closure #1 in MessageCollectionViewCell.contentStackView.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in MessageCollectionViewCell.contentStackView.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21658E180;
  *(v2 + 32) = MessageCollectionViewCell.activityIndicator.getter();
  *(v2 + 40) = (*((*MEMORY[0x277D85000] & *a1) + 0x68))();
  v3 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArrangedSubviews_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAxis_];
  [v5 setAlignment_];
  [v5 setSpacing_];
  return v5;
}

uint64_t MessageCollectionViewCell.viewModel.setter()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*(*Strong + 368))();
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
    v7 = *(*v3 + 208);

    v9 = v7(v8);
    v11 = v10;

    if (v4)
    {
      v12 = (*((*v5 & *v1) + 0x100))(v9, v11);
      v13 = &selRef_startAnimating;
    }

    else
    {
      v12 = (*((*v5 & *v1) + 0x108))(v9, v11);
      v13 = &selRef_stopAnimating;
    }

    [v6 setAttributedText_];

    v14 = MessageCollectionViewCell.activityIndicator.getter();
    [v14 *v13];
  }
}

void (*MessageCollectionViewCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MessageCollectionViewCell.viewModel.modify;
}

void MessageCollectionViewCell.viewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v3[4];
      v7 = (*(*Strong + 368))();
      v8 = MEMORY[0x277D85000];
      v9 = (*((*MEMORY[0x277D85000] & *v6) + 0x68))();
      v10 = *(*v5 + 208);

      v12 = v10(v11);
      v14 = v13;

      if (v7)
      {
        v15 = (*((*v8 & *v6) + 0x100))(v12, v14);

        [v9 setAttributedText_];

        v16 = MessageCollectionViewCell.activityIndicator.getter();
        [v16 startAnimating];
      }

      else
      {
        v17 = (*((*v8 & *v6) + 0x108))(v12, v14);

        [v9 setAttributedText_];

        v16 = MessageCollectionViewCell.activityIndicator.getter();
        [v16 stopAnimating];
      }
    }
  }

  free(v3);
}

id MessageCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MessageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

NSAttributedString __swiftcall MessageCollectionViewCell.configureSimpleAttributedString(text:)(Swift::String_optional text)
{
  if (text.value._object)
  {
    object = text.value._object;
    countAndFlagsBits = text.value._countAndFlagsBits;
    v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v3 setLineSpacing_];
    [v3 setAlignment_];
    [v3 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658E190;
    v5 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v6 = v5;
    v7 = specialized static CommonTheme.Font.footnoteShortFont()();
    *(inited + 64) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
    if (!v7)
    {
      v7 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v8 = MEMORY[0x277D740C0];
    *(inited + 40) = v7;
    v9 = *v8;
    *(inited + 72) = *v8;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 secondaryLabelColor];
    v13 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
    *(inited + 80) = v12;
    v14 = *MEMORY[0x277D74118];
    *(inited + 104) = v13;
    *(inited + 112) = v14;
    outlined init with copy of Any(v22, inited + 120);
    v15 = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithString:v17 attributes:isa];

    __swift_destroy_boxed_opaque_existential_1(v22);
    return v19;
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CCA898]);

    return [v21 init];
  }
}

NSAttributedString __swiftcall MessageCollectionViewCell.configureMessageString(deviceNameString:)(Swift::String_optional deviceNameString)
{
  v2 = v1;
  object = deviceNameString.value._object;
  countAndFlagsBits = deviceNameString.value._countAndFlagsBits;
  v69 = v2;
  swift_getObjectType();
  v59 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v59);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v75._object = 0x80000002165788A0;
  v8._object = 0x8000000216578860;
  v75._countAndFlagsBits = 0xD000000000000057;
  v8._countAndFlagsBits = 0x100000000000003ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v75);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21658CA50;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (object)
  {
    v11 = countAndFlagsBits;
  }

  else
  {
    v11 = 0;
  }

  if (object)
  {
    v12 = object;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *(v10 + 32) = v11;
  *(v10 + 40) = v12;

  v13 = static String.localizedStringWithFormat(_:_:)();
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v16 setLineSpacing_];
  [v16 setAlignment_];
  [v16 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v68 = v16;
  [v16 setParagraphSpacing_];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  v66 = xmmword_21658E190;
  *(inited + 16) = xmmword_21658E190;
  v18 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v65 = v18;
  v19 = specialized static CommonTheme.Font.footnoteShortFont()();
  v20 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
  v21 = v19;
  v67 = v20;
  *(inited + 64) = v20;
  v22 = MEMORY[0x277D76968];
  if (!v19)
  {
    v21 = [objc_opt_self() preferredFontForTextStyle_];
  }

  v23 = MEMORY[0x277D740C0];
  *(inited + 40) = v21;
  v24 = *v23;
  *(inited + 72) = *v23;
  v25 = objc_opt_self();
  v63 = v24;
  v26 = [v25 secondaryLabelColor];
  v27 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v26;
  v28 = *MEMORY[0x277D74118];
  v62 = v27;
  *(inited + 104) = v27;
  *(inited + 112) = v28;
  outlined init with copy of Any(v74, inited + 120);
  v60 = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v72 = 32;
  v73 = 0xE100000000000000;
  v70 = v13;
  v71 = v15;
  v70 = String.init<A>(_:)();
  v71 = v29;
  String.append<A>(contentsOf:)();
  v30 = v70;
  v31 = v71;
  v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v33 = MEMORY[0x21CE91FC0](v30, v31);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v36 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v37 = (*((*MEMORY[0x277D85000] & *v69) + 0xE8))();
  if (!v37)
  {
    goto LABEL_17;
  }

  v38 = v58;
  (*(*v37 + 280))(v37);

  v39 = (v38 + *(v59 + 32));
  v40 = v39[1];
  if (!v40)
  {
    outlined destroy of Client(v38);
    goto LABEL_17;
  }

  if (*v39 != 0xD000000000000011 || v40 != 0x8000000216578900)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined destroy of Client(v38);
    if (v41)
    {
      goto LABEL_16;
    }

LABEL_17:
    v42 = &selRef_systemBlueColor;
    goto LABEL_18;
  }

  outlined destroy of Client(v38);
LABEL_16:
  v42 = &selRef_systemIndigoColor;
LABEL_18:
  v43 = [v25 *v42];
  v44 = swift_initStackObject();
  *(v44 + 16) = v66;
  *(v44 + 32) = v65;
  v45 = [objc_opt_self() preferredFontForTextStyle_];
  v46 = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

  *(v44 + 40) = v46;
  v48 = v62;
  v47 = v63;
  *(v44 + 64) = v67;
  *(v44 + 72) = v47;
  *(v44 + 80) = v43;
  v49 = v60;
  *(v44 + 104) = v48;
  *(v44 + 112) = v49;
  outlined init with copy of Any(v74, v44 + 120);
  v50 = v43;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  v51 = *(v69 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_usePhoneString);
  v52 = *(v69 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_usePhoneString + 8);
  v53 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v54 = MEMORY[0x21CE91FC0](v51, v52);
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  v56 = [v53 initWithString:v54 attributes:v55];

  [v36 appendAttributedString_];
  __swift_destroy_boxed_opaque_existential_1(v74);
  return v36;
}

Swift::Void __swiftcall MessageCollectionViewCell.configureViews()()
{
  v1 = MessageCollectionViewCell.contentStackView.getter();
  [v0 addSubview_];

  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v3 = v2();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = v2();
  [v4 setTextAlignment_];

  v5 = v2();
  [v5 setAdjustsFontForContentSizeCategory_];

  v6 = v2();
  [v6 setMaximumContentSizeCategory_];

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21658E1A0;
  v9 = OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView;
  v10 = [*(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView) topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v8 + 32) = v12;
  v13 = [*(v0 + v9) bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v8 + 40) = v15;
  v16 = [*(v0 + v9) centerXAnchor];
  v17 = [v0 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v8 + 48) = v18;
  v19 = [*(v0 + v9) leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor_];

  *(v8 + 56) = v21;
  v22 = [*(v0 + v9) trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(v8 + 64) = v24;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints_];
}

uint64_t MessageCollectionViewCell.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MessageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized MessageCollectionViewCell.init(frame:)()
{
  v1 = &v0[OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_usePhoneString];
  v2 = type metadata accessor for MessageCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v16._object = 0x80000002165789E0;
  v5._object = 0x80000002165789C0;
  v5._countAndFlagsBits = 0x1000000000000018;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD00000000000003BLL;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  *v1 = v7;
  *&v0[OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___activityIndicator] = 0;
  *&v0[OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView] = 0;
  swift_weakInit();
  v15.receiver = v0;
  v15.super_class = v2;
  v8 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = *((*MEMORY[0x277D85000] & *v8) + 0x110);
  v10 = v8;
  v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658CA50;
  v12 = type metadata accessor for UITraitUserInterfaceStyle();
  v13 = MEMORY[0x277D74BF0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  MEMORY[0x21CE92C30](v11, sel_handleTraitChange);

  swift_unknownObjectRelease();

  return v10;
}

void specialized MessageCollectionViewCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell_usePhoneString);
  type metadata accessor for MessageCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v7._object = 0x80000002165789E0;
  v4._object = 0x80000002165789C0;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v4._countAndFlagsBits = 0x1000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7);

  *v1 = v6;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25MessageCollectionViewCell____lazy_storage___contentStackView) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t outlined destroy of Client(uint64_t a1)
{
  v2 = type metadata accessor for Client();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall UIImageView.blurView()()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v0 bounds];
  [v2 setFrame_];
  [v2 setAutoresizingMask_];
  [v0 addSubview_];
}

void closure #1 in variable initialization expression of ContactView.label()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    v6 = v0;
    [v6 setAlpha_];
    [v6 setMaximumContentSizeCategory_];

    v7 = [objc_opt_self() labelColor];
    [v6 setTextColor_];

    [v6 setNumberOfLines_];
    [v6 setLineBreakMode_];
    [v6 setTextAlignment_];
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

void *ContactView.leadingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11ContactView_leadingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ContactView.leadingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11ContactView_leadingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ContactView.trailingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11ContactView_trailingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ContactView.trailingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11ContactView_trailingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ContactView.topConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11ContactView_topConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ContactView.topConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11ContactView_topConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ContactView.bottomConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ContactView.bottomConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ContactView.init(viewModel:style:)(void *a1, char *a2)
{
  v40 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for SnowGlobeView()) init];
  v5 = OBJC_IVAR____TtC9MomentsUI11ContactView_blurView;
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v9 = v6;
  [v9 bounds];
  [v8 setFrame_];
  [v8 setAutoresizingMask_];
  [v9 addSubview_];

  [v9 setContentMode_];
  *&v2[v5] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI11ContactView_label;
  closure #1 in variable initialization expression of ContactView.label();
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI11ContactView_stackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setAlignment_];
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC9MomentsUI11ContactView_leadingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI11ContactView_leadingConstraint] = 0;
  v15 = OBJC_IVAR____TtC9MomentsUI11ContactView_trailingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI11ContactView_trailingConstraint] = 0;
  v16 = OBJC_IVAR____TtC9MomentsUI11ContactView_topConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI11ContactView_topConstraint] = 0;
  v17 = OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint] = 0;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v18 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v19 = static ContactView.Constants.accessibilityString;
    v20 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v21 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v22 = a1;
    *&v2[v20] = [v21 init];
    swift_unknownObjectWeakInit();
    v23 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v40;
    v41.receiver = v2;
    v41.super_class = type metadata accessor for AssetView();
    v25 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v26 = *((*MEMORY[0x277D85000] & *v25) + 0xE8);
    v27 = v25;
    v26();
    AssetView.setFallBackView()();
    [v27 setIsAccessibilityElement_];
    v28 = [v27 accessibilityTraits];
    if ((v18 & ~v28) != 0)
    {
      v29 = v18;
    }

    else
    {
      v29 = 0;
    }

    [v27 setAccessibilityTraits_];
    v30 = MEMORY[0x21CE91FC0](v19, *(&v19 + 1));
    [v27 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21658CA50;
    v32 = type metadata accessor for UITraitUserInterfaceStyle();
    v33 = MEMORY[0x277D74BF0];
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    v34 = v27;
    MEMORY[0x21CE92C30](v31, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v34 handleTraitChange];
    [v34 setTranslatesAutoresizingMaskIntoConstraints_];

    [v34 setClipsToBounds_];
    v35 = v34;
    ContactView.addSubViews()();
    UIView.fillSuper(horizontalMargin:verticalMargin:)(-150.0, -150.0);

    ContactView.adjustConstraints()();
    v36 = *&v35[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v37 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578A50);
    v38 = [objc_opt_self() systemImageNamed_];

    [v36 setImage_];
    return v25;
  }

  else
  {

    type metadata accessor for ContactView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

Swift::Void __swiftcall ContactView.addSubViews()()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI11ContactView_stackView];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView];
  [v1 addArrangedSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI11ContactView_label];
  [v1 addArrangedSubview_];
  [v0 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

Swift::Void __swiftcall ContactView.addConstraints()()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(-150.0, -150.0);

  ContactView.adjustConstraints()();
}

Swift::Void __swiftcall ContactView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578A50);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

id ContactView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall ContactView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);

  [v1 setHidden_];
}

Swift::Void __swiftcall ContactView.showViews()()
{
  AssetView.showViews()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);

  [v1 setHidden_];
}

uint64_t ContactView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = ContactView.updateAndShowViews();

  return ContactView.updateData()();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ContactView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  ContactView.adjustConstraints()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ContactView.updateData()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](ContactView.updateData(), v3, v2);
}

void ContactView.updateData()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 48) = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  *(v0 + 56) = v4;
  if (!v4)
  {

LABEL_9:

LABEL_10:
    v14 = *(v0 + 8);

    v14();
    return;
  }

  v5 = v4;
  *(v0 + 64) = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11ContactView_blurView);
  *(v0 + 72) = swift_getObjectType();
  v6 = *(v5 + 32);
  *(v0 + 80) = v6;
  *(v0 + 88) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0xDCD2000000000000;
  v7 = v6();
  *(v0 + 96) = v7;
  if (v7)
  {
    v8 = *(v0 + 16);
    v9 = (*((*v1 & *v8) + 0x88))();
    v10 = (*((*v1 & *v8) + 0xD8))(v9);
    v11 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
    *(v0 + 104) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = ContactView.updateData();

    Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 128), 1, v10, v11, 0x6144657461647075, 0xEC00000029286174);
    return;
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  [*(v0 + 64) setImage_];
  if ((*(v16 + 48))(v15, v16))
  {
    v17 = (*(v0 + 80))(*(v0 + 72), *(v0 + 56));
    if (v17)
    {
      v18 = v17;
      v19 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21658E210;
      *(v20 + 32) = v18;
      v21 = *((*v1 & *v19) + 0x78);
      v22 = v18;
      v21(v20);

LABEL_26:

      goto LABEL_27;
    }
  }

  v23 = (*(*(v0 + 56) + 16))(*(v0 + 72));
  if (!v23)
  {
LABEL_27:
    v37 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
    v38 = (*(*(v0 + 56) + 24))(*(v0 + 72));
    if (v39)
    {
      v40 = MEMORY[0x21CE91FC0](v38);
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v0 + 48);
    [v37 setText_];

    goto LABEL_10;
  }

  v24 = v23;
  v25 = 0;
  v43 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v26 = *(v23 + 16);
  v27 = v23 + 40;
  v42 = v23 + 40;
LABEL_18:
  v28 = (v27 + 16 * v25);
  while (1)
  {
    if (v26 == v25)
    {
      v36 = *(v0 + 16);

      (*((*MEMORY[0x277D85000] & **(v36 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView)) + 0x78))(v43);
      goto LABEL_26;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    v29 = v28 + 2;
    ++v25;
    v31 = *(v28 - 1);
    v30 = *v28;
    ObjectType = swift_getObjectType();
    v33 = *(v30 + 32);
    v34 = v31;
    v35 = v33(ObjectType, v30);

    v28 = v29;
    if (v35)
    {
      MEMORY[0x21CE92260]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v43 = v44;
      v27 = v42;
      goto LABEL_18;
    }
  }

  __break(1u);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  [*(v0 + 64) setImage_];

  if ((*(v3 + 48))(v2, v3))
  {
    v4 = (*(v0 + 80))(*(v0 + 72), *(v0 + 56));
    if (v4)
    {
      v5 = v4;
      v6 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21658E210;
      *(v7 + 32) = v5;
      v8 = *((*MEMORY[0x277D85000] & *v6) + 0x78);
      v9 = v5;
      v8(v7);

LABEL_14:

      goto LABEL_15;
    }
  }

  v10 = (*(*(v0 + 56) + 16))(*(v0 + 72));
  if (!v10)
  {
LABEL_15:
    v24 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
    v25 = (*(*(v0 + 56) + 24))(*(v0 + 72));
    if (v26)
    {
      v27 = MEMORY[0x21CE91FC0](v25);
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v0 + 48);
    [v24 setText_];

    v29 = *(v0 + 8);

    v29();
    return;
  }

  v11 = v10;
  v12 = 0;
  v31 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v13 = *(v10 + 16);
  v14 = v10 + 40;
  v30 = v10 + 40;
LABEL_6:
  v15 = (v14 + 16 * v12);
  while (1)
  {
    if (v13 == v12)
    {
      v23 = *(v0 + 16);

      (*((*MEMORY[0x277D85000] & **(v23 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView)) + 0x78))(v31);
      goto LABEL_14;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v16 = v15 + 2;
    ++v12;
    v17 = *(v15 - 1);
    v18 = *v15;
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 32);
    v21 = v17;
    v22 = v20(ObjectType, v18);

    v15 = v16;
    if (v22)
    {
      MEMORY[0x21CE92260]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v31 = v32;
      v14 = v30;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t ContactView.updateData()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 120) = a1;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);

  return MEMORY[0x2822009F8](ContactView.updateData(), v6, v5);
}

Swift::Void __swiftcall ContactView.adjustConstraints()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
  if (v3)
  {
    v4 = v3;
    [*(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView) removeConstraint_];
  }

  v5 = (*((*v2 & *v1) + 0x160))();
  if (v5)
  {
    v6 = v5;
    [*(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView) removeConstraint_];
  }

  v7 = (*((*v2 & *v1) + 0x178))();
  if (v7)
  {
    v8 = v7;
    [*(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView) removeConstraint_];
  }

  v9 = (*((*v2 & *v1) + 0x190))();
  if (v9)
  {
    v10 = v9;
    [*(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView) removeConstraint_];
  }

  (*((*v2 & *v1) + 0x88))(&v111);
  if (v111 <= 3u)
  {
    if (v111 > 1u)
    {
      if (v111 != 2)
      {
        goto LABEL_27;
      }

      v26 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
      [v26 setHidden_];
      [v26 setTextAlignment_];
      v20 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);
      [v20 setAxis_];
      v27 = [v20 superview];
      if (v27)
      {
        v28 = v27;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v29 = [v20 topAnchor];
        v30 = [v28 topAnchor];
        v31 = [v29 constraintEqualToAnchor_];

        [v31 setConstant_];
        if (v31)
        {
          [v31 setActive_];
        }
      }

      else
      {
        v31 = 0;
      }

      (*((*v2 & *v1) + 0x180))(v31);
      v83 = [v20 superview];
      if (v83)
      {
        v84 = v83;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v85 = [v20 bottomAnchor];
        v86 = [v84 bottomAnchor];
        v87 = [v85 constraintEqualToAnchor_];

        if (v87)
        {
          [v87 setConstant_];
          [v87 setActive_];
        }
      }

      else
      {
        v87 = 0;
      }

      (*((*v2 & *v1) + 0x198))(v87);
      v93 = [v20 superview];
      if (v93)
      {
        v94 = v93;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v95 = [v20 leadingAnchor];
        v96 = [v94 leadingAnchor];
        v97 = [v95 constraintEqualToAnchor_];

        [v97 setConstant_];
        if (v97)
        {
          [v97 setActive_];
        }
      }

      else
      {
        v97 = 0;
      }

      (*((*v2 & *v1) + 0x150))(v97);
      v103 = [v20 superview];
      if (!v103)
      {
        v102 = 0;
        goto LABEL_102;
      }

      v99 = v103;
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v104 = [v20 trailingAnchor];
      v105 = [v99 trailingAnchor];
      v102 = [v104 constraintEqualToAnchor_];

      [v102 setConstant_];
      if (v102)
      {
        [v102 setActive_];
      }
    }

    else
    {
      if (!v111)
      {
        goto LABEL_32;
      }

      v19 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
      [v19 setHidden_];
      [v19 setTextAlignment_];
      v20 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);
      [v20 setAxis_];
      v21 = [v20 superview];
      if (v21)
      {
        v22 = v21;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v23 = [v20 topAnchor];
        v24 = [v22 topAnchor];
        v25 = [v23 constraintEqualToAnchor_];

        [v25 setConstant_];
        if (v25)
        {
          [v25 setActive_];
        }
      }

      else
      {
        v25 = 0;
      }

      (*((*v2 & *v1) + 0x180))(v25);
      v78 = [v20 superview];
      if (v78)
      {
        v79 = v78;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v80 = [v20 bottomAnchor];
        v81 = [v79 bottomAnchor];
        v82 = [v80 constraintEqualToAnchor_];

        if (v82)
        {
          [v82 setConstant_];
          [v82 setActive_];
        }
      }

      else
      {
        v82 = 0;
      }

      (*((*v2 & *v1) + 0x198))(v82);
      v88 = [v20 superview];
      if (v88)
      {
        v89 = v88;
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
        v90 = [v20 leadingAnchor];
        v91 = [v89 leadingAnchor];
        v92 = [v90 constraintEqualToAnchor_];

        [v92 setConstant_];
        if (v92)
        {
          [v92 setActive_];
        }
      }

      else
      {
        v92 = 0;
      }

      (*((*v2 & *v1) + 0x150))(v92);
      v98 = [v20 superview];
      if (!v98)
      {
        v102 = 0;
        goto LABEL_102;
      }

      v99 = v98;
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v100 = [v20 trailingAnchor];
      v101 = [v99 trailingAnchor];
      v102 = [v100 constraintEqualToAnchor_];

      [v102 setConstant_];
      if (v102)
      {
        [v102 setActive_];
      }
    }

LABEL_102:
    (*((*v2 & *v1) + 0x168))(v102);
    v106 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
    [v20 setCustomSpacing:v106 afterView:8.0];
    v107 = [v106 widthAnchor];
    v108 = [v106 heightAnchor];
    v109 = [v107 constraintEqualToAnchor_];

    [v109 setActive_];
    return;
  }

  if (v111 <= 6u)
  {
    if (v111 - 4 < 2)
    {
      v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
      [v11 setHidden_];
      [v11 setTextAlignment_];
      v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);
      [v12 setAxis_];
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        [v12 setTranslatesAutoresizingMaskIntoConstraints_];
        v15 = [v12 topAnchor];
        v16 = [v14 topAnchor];
        v17 = [v15 constraintEqualToAnchor_];

        [v17 setConstant_];
        if (v17)
        {
          [v17 setActive_];
        }

        v18 = &unk_27821E000;
      }

      else
      {
        v17 = 0;
        v18 = &unk_27821E000;
      }

      (*((*v2 & *v1) + 0x180))(v17);
      v60 = [v12 superview];
      if (v60)
      {
        v61 = v60;
        [v12 v18[440]];
        v62 = [v12 bottomAnchor];
        v63 = [v61 bottomAnchor];
        v64 = [v62 &selRef_safeAreaLayoutGuide + 5];

        v65 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (v64)
        {
          [v64 setConstant_];
          [v64 setActive_];
        }
      }

      else
      {
        v64 = 0;
        v65 = 0x1FAE0C000;
      }

      (*((*v2 & *v1) + 0x198))(v64);
      v66 = [v12 superview];
      if (v66)
      {
        v67 = v66;
        [v12 v18[440]];
        v68 = [v12 leadingAnchor];
        v69 = [v67 leadingAnchor];
        v70 = [v68 &selRef_safeAreaLayoutGuide + 5];

        v65 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        [v70 setConstant_];
        if (v70)
        {
          [v70 setActive_];
        }
      }

      else
      {
        v70 = 0;
      }

      (*((*v2 & *v1) + 0x150))(v70);
      v71 = [v12 superview];
      if (v71)
      {
        v72 = v71;
        [v12 v18[440]];
        v73 = v65;
        v74 = [v12 trailingAnchor];
        v75 = [v72 trailingAnchor];
        v76 = [v74 &selRef_safeAreaLayoutGuide + 5];

        [v76 (v73 + 2450)];
        if (v76)
        {
          [v76 setActive_];
        }
      }

      else
      {
        v76 = 0;
      }

      (*((*v2 & *v1) + 0x168))(v76);
      v77 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
      [v12 setCustomSpacing:v77 afterView:8.0];
      v41 = [v77 widthAnchor];
      v42 = [v77 heightAnchor];
      v43 = [v41 &selRef_safeAreaLayoutGuide + 5];
      goto LABEL_67;
    }

LABEL_27:
    v32 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_label);
    [v32 setHidden_];
    [v32 setTextAlignment_];
    v33 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);
    [v33 setAxis_];
    [v33 setAlignment_];
    v34 = [v33 superview];
    if (v34)
    {
      v35 = v34;
      [v33 setTranslatesAutoresizingMaskIntoConstraints_];
      v36 = [v33 topAnchor];
      v37 = [v35 topAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      [v38 setConstant_];
      if (v38)
      {
        [v38 setActive_];
      }
    }

    else
    {
      v38 = 0;
    }

    (*((*v2 & *v1) + 0x180))(v38);
    v44 = [v33 superview];
    if (v44)
    {
      v45 = v44;
      [v33 setTranslatesAutoresizingMaskIntoConstraints_];
      v46 = [v33 bottomAnchor];
      v47 = [v45 bottomAnchor];
      v48 = [v46 constraintEqualToAnchor_];

      if (v48)
      {
        [v48 setConstant_];
        [v48 setActive_];
      }
    }

    else
    {
      v48 = 0;
    }

    (*((*v2 & *v1) + 0x198))(v48);
    v49 = [v33 superview];
    if (v49)
    {
      v50 = v49;
      [v33 setTranslatesAutoresizingMaskIntoConstraints_];
      v51 = [v33 leadingAnchor];
      v52 = [v50 leadingAnchor];
      v53 = [v51 constraintEqualToAnchor_];

      [v53 setConstant_];
      if (v53)
      {
        [v53 setActive_];
      }
    }

    else
    {
      v53 = 0;
    }

    (*((*v2 & *v1) + 0x150))(v53);
    v54 = [v33 superview];
    if (v54)
    {
      v55 = v54;
      [v33 setTranslatesAutoresizingMaskIntoConstraints_];
      v56 = [v33 trailingAnchor];
      v57 = [v55 trailingAnchor];
      v58 = [v56 constraintEqualToAnchor_];

      [v58 setConstant_];
      if (v58)
      {
        [v58 setActive_];
      }
    }

    else
    {
      v58 = 0;
    }

    (*((*v2 & *v1) + 0x168))(v58);
    v59 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
    [v33 setCustomSpacing:v59 afterView:8.0];
    v41 = [v59 widthAnchor];
    v42 = [v59 heightAnchor];
    v43 = [v41 constraintEqualToAnchor_];
    goto LABEL_67;
  }

  if (v111 != 7)
  {
    return;
  }

LABEL_32:
  [*(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_label) setHidden_];
  v39 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_stackView);
  UIView.fillSuper(horizontalMargin:verticalMargin:)(4.0, 4.0);

  v40 = *(v1 + OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView);
  [v39 setCustomSpacing:v40 afterView:0.0];
  v41 = [v40 widthAnchor];
  v42 = [v40 heightAnchor];
  v43 = [v41 constraintEqualToAnchor_];
LABEL_67:
  v110 = v43;

  [v110 setActive_];
}

id ContactView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ContactView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint);
}

id ContactView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance ContactView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 432))(a1, &v6);
  *a3 = result;
  return result;
}

void protocol witness for AssetViewBase.addConstraints() in conformance ContactView()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(-150.0, -150.0);

  ContactView.adjustConstraints()();
}

void protocol witness for AssetViewBase.configureFallback() in conformance ContactView()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578A50);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

uint64_t type metadata accessor for ContactView()
{
  result = type metadata singleton initialization cache for ContactView;
  if (!type metadata singleton initialization cache for ContactView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ContactView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11ContactView_snowGlobeView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SnowGlobeView()) init];
  v2 = OBJC_IVAR____TtC9MomentsUI11ContactView_blurView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v6 = v3;
  [v6 bounds];
  [v5 setFrame_];
  [v5 setAutoresizingMask_];
  [v6 addSubview_];

  [v6 setContentMode_];
  *(v0 + v2) = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI11ContactView_label;
  closure #1 in variable initialization expression of ContactView.label();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9MomentsUI11ContactView_stackView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v10 setAlignment_];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI11ContactView_bottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableStateOfMindViewModel.build()()
{
  v1 = v0;
  v166[30] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for DateInterval();
  v158 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v126 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v153 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v126 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v155 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v157 = &v126 - v23;
  MEMORY[0x28223BE20](v22);
  v160 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v31 = &v126 - v30;
  v159 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v159)
  {
    return 0;
  }

  v140 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v140)
  {
    return 0;
  }

  v149 = v10;
  v151 = v28;
  v152 = v17;
  v146 = v29;
  v137 = v2;
  v138 = v8;
  v32 = type metadata accessor for StateOfMind();
  v33 = *(*(v32 - 8) + 56);
  v33(v31, 1, 1, v32);
  v34 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v154 = v1;
  v35 = *(v1 + v34);
  v139 = v4;
  v36 = v159;
  if (v35)
  {
    v37 = v35;
    v38 = v146;
    StateOfMind.init(from:)(v37, v146);
    outlined destroy of UTType?(v31, &_s9MomentsUI11StateOfMindVSgMd);
    v33(v38, 0, 1, v32);
    outlined init with take of StateOfMind?(v38, v31);
  }

  v40 = v154;
  v129 = *(v152 + 16);
  v130 = v152 + 16;
  v129(v160, v154 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v16);
  v41 = (v40 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v42 = v41[1];
  v131 = *v41;
  v150 = v42;
  v43 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v40 + v43, v15, &_s10Foundation12DateIntervalVSgMd);
  v44 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v128 = v44;
  v45 = *(v40 + v44);
  v136 = v31;
  outlined init with copy of DateInterval?(v31, v151, &_s9MomentsUI11StateOfMindVSgMd);
  v46 = v40 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle;
  swift_beginAccess();
  v47 = *(v46 + 1);
  v135 = *v46;
  v48 = (v40 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
  swift_beginAccess();
  v49 = v48[1];
  v134 = *v48;
  v50 = (v40 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
  swift_beginAccess();
  v51 = v50[1];
  v133 = *v50;
  v52 = v40 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading;
  swift_beginAccess();
  v53 = *(v52 + 1);
  v132 = *v52;
  v54 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
  swift_beginAccess();
  v127 = v54;
  v55 = *(v40 + v54);
  v147 = v16;
  v148 = v15;
  v144 = v47;
  v145 = v45;
  v142 = v51;
  v143 = v49;
  v141 = v53;
  if (!v55)
  {

    v71 = v45;

    v60 = 0;
    goto LABEL_25;
  }

  v56 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v58 = v145;

    if (i)
    {
      v59 = 0;
      v60 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x21CE93180](v59, v55);
        }

        else
        {
          if (v59 >= *(v56 + 16))
          {
            goto LABEL_68;
          }

          v61 = *(v55 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        v166[0] = 0;
        v164 = 0;
        v165[0] = 0;
        v163 = 0;
        [v61 getRed:v166 green:v165 blue:&v164 alpha:&v163];

        v64 = v166[0];
        v66 = v164;
        v65 = v165[0];
        v67 = v163;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
        }

        v69 = *(v60 + 2);
        v68 = *(v60 + 3);
        if (v69 >= v68 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v60);
        }

        *(v60 + 2) = v69 + 1;
        v70 = &v60[32 * v69];
        *(v70 + 4) = v64;
        *(v70 + 5) = v65;
        *(v70 + 6) = v66;
        *(v70 + 7) = v67;
        ++v59;
        if (v63 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_24:

    v40 = v154;
LABEL_25:
    v72 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
    swift_beginAccess();
    v126 = v72;
    v55 = *(v40 + v72);
    v73 = v158;
    if (!v55)
    {
      v77 = 0;
      goto LABEL_45;
    }

    v74 = v55 & 0xFFFFFFFFFFFFFF8;
    v75 = v55 >> 62 ? __CocoaSet.count.getter() : *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v75)
    {
      break;
    }

    v161 = v75;
    v76 = 0;
    v56 = v55 & 0xC000000000000001;
    v77 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v56)
      {
        v78 = MEMORY[0x21CE93180](v76, v55);
      }

      else
      {
        if (v76 >= *(v74 + 16))
        {
          goto LABEL_70;
        }

        v78 = *(v55 + 8 * v76 + 32);
      }

      v79 = v78;
      v80 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v164 = 0;
      v165[0] = 0;
      v162 = 0;
      v163 = 0;
      [v78 getRed:v165 green:&v164 blue:&v163 alpha:&v162];

      v82 = v164;
      v81 = v165[0];
      v84 = v162;
      v83 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
      }

      v86 = *(v77 + 2);
      v85 = *(v77 + 3);
      if (v86 >= v85 >> 1)
      {
        v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v77);
      }

      *(v77 + 2) = v86 + 1;
      v87 = &v77[32 * v86];
      *(v87 + 4) = v81;
      *(v87 + 5) = v82;
      *(v87 + 6) = v83;
      *(v87 + 7) = v84;
      ++v76;
      v88 = v80 == v161;
      v74 = v55 & 0xFFFFFFFFFFFFFF8;
      if (v88)
      {
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_44:

  v73 = v158;
  v40 = v154;
LABEL_45:
  v89 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v40 + v89, v149, &_s10Foundation4UUIDVSgMd);
  v90 = *(v40 + v128);
  v91 = v140;
  LODWORD(v161) = v90 && (v92 = v90, v93 = Image.uiImage.getter(), v92, v94 = v154, v93) && (v93, *(v94 + v127)) && *(v94 + v126);
  v95 = v157;
  UUID.init()();
  v96 = v95;
  v97 = v147;
  v98 = v129;
  v129(v155, v96, v147);
  v98(v156, v160, v97);
  v99 = *(v91 + 16);
  if (v99)
  {
    v164 = MEMORY[0x277D84F90];
    v100 = v159;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
    v101 = v164;
    v102 = (v91 + 32);
    v103 = *(v164 + 16);
    v104 = v150;
    do
    {
      v106 = *v102++;
      v105 = v106;
      v164 = v101;
      v107 = *(v101 + 24);
      if (v103 >= v107 >> 1)
      {
        v108 = v104;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v103 + 1, 1);
        v104 = v108;
        v101 = v164;
      }

      *(v101 + 16) = v103 + 1;
      *(v101 + v103++ + 32) = v105;
      --v99;
    }

    while (v99);
    v73 = v158;
  }

  else
  {
    v109 = v159;
    v101 = MEMORY[0x277D84F90];
    v104 = v150;
  }

  v110 = v131;
  if (!v104)
  {
    v110 = 0;
  }

  v158 = v110;
  v111 = 0xE000000000000000;
  if (v104)
  {
    v111 = v104;
  }

  v154 = v111;
  v112 = v153;
  outlined init with copy of DateInterval?(v148, v153, &_s10Foundation12DateIntervalVSgMd);
  v113 = v73[6];
  v114 = v137;
  if ((v113)(v112, 1, v137) == 1)
  {
    v115 = v139;
    DateInterval.init()();
    if ((v113)(v112, 1, v114) != 1)
    {
      outlined destroy of UTType?(v112, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    v115 = v139;
    (v73[4])(v139, v112, v114);
  }

  v116 = v145;
  v153 = specialized static DBAssetModel.baseImage2DB(_:)(v145);
  v117 = v151;
  v118 = v146;
  outlined init with copy of DateInterval?(v151, v146, &_s9MomentsUI11StateOfMindVSgMd);
  v119 = v149;
  v120 = v138;
  outlined init with copy of DateInterval?(v149, v138, &_s10Foundation4UUIDVSgMd);
  LOBYTE(v164) = v161;
  type metadata accessor for DBStateOfMindModel();
  swift_allocObject();
  v125 = v120;
  v121 = v159;
  v122 = specialized DBStateOfMindModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(v155, v156, v159, v101, v158, v154, v115, v153, v118, v135, v144, v134, v143, v133, v142, v132, v141, v60, v77, v125, &v164);

  v123 = *(v152 + 8);
  v124 = v147;
  v123(v157, v147);
  outlined destroy of UTType?(v119, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v117, &_s9MomentsUI11StateOfMindVSgMd);
  outlined destroy of UTType?(v148, &_s10Foundation12DateIntervalVSgMd);
  v123(v160, v124);
  outlined destroy of UTType?(v136, &_s9MomentsUI11StateOfMindVSgMd);
  return v122;
}

uint64_t outlined init with take of StateOfMind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TransferContactViewModel.name.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TransferContactViewModel.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

BOOL TransferContactViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferContactViewModel.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL TransferContactViewModel.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferContactViewModel.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferContactViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferContactViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferContactViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TransferContactViewModel.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferContactViewModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TransferContactViewModel.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferContactViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferContactViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferContactViewModel.init(coder:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name);
  type metadata accessor for NSString();
  *v3 = 0;
  v3[1] = 0;
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0;

  v5 = specialized AssetViewModel.init(coder:)(a1);

  return v5;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

Swift::Void __swiftcall TransferContactViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x210))();
  if (v4)
  {
    v5 = MEMORY[0x21CE91FC0](v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

void TransferContactViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferContactViewModel.init(dbObject:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferContactViewModel.init(contactViewModel:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v32 - v7;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI24TransferContactViewModel_name];
  *v8 = 0;
  v8[1] = 0;
  v9 = swift_getObjectType();
  v10 = *(a2 + 24);
  v11 = v10(v9, a2);
  v13 = v12;
  swift_beginAccess();
  *v8 = v11;
  v8[1] = v13;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v14 = static ScreenSize.zero;
  v15 = (*(a2 + 32))(v9, a2);
  v32 = v10(v9, a2);
  v17 = v16;
  v18 = *(*(a2 + 8) + 24);
  v19 = v35;
  v18(v9);
  v33 = a1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];
  v20 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v21 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v23 = type metadata accessor for DateInterval();
  (*(*(v23 - 8) + 56))(&v3[v22], 1, 1, v23);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v14;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v24 = *&v3[v20];
  *&v3[v20] = v15;
  v25 = v14;
  v26 = v15;

  swift_beginAccess();
  *v21 = v32;
  v21[1] = v17;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v19, &v3[v22]);
  v27 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v33;
  (*(ObjectType + 328))(v37, v27);
  LOBYTE(v24) = v37[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 112) = v24;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
  v29 = type metadata accessor for AssetViewModel();
  v36.receiver = v3;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);

  outlined destroy of DateInterval?(v19);
  return v30;
}

id TransferContactViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferContactViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TransferContactViewModel()
{
  result = type metadata singleton initialization cache for TransferContactViewModel;
  if (!type metadata singleton initialization cache for TransferContactViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferContactViewModel.CodingKeys and conformance TransferContactViewModel.CodingKeys);
  }

  return result;
}

uint64_t withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t withTimeout<A>(seconds:operation:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = withTimeout<A>(seconds:operation:);
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](withTimeout<A>(seconds:operation:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for Optional();
  *(v6 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t closure #1 in withTimeout<A>(seconds:operation:)()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;

  v0[10] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v9 = type metadata accessor for ThrowingTaskGroup();
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #1 in closure #1 in withTimeout<A>(seconds:operation:), v8);
  outlined destroy of TaskPriority?(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v3;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #2 in closure #1 in withTimeout<A>(seconds:operation:), v10);
  outlined destroy of TaskPriority?(v1);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = closure #1 in withTimeout<A>(seconds:operation:);
  v12 = v0[8];

  return MEMORY[0x2822004D0](v12, 0, 0, v9);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v2 = closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[10];
    v6 = v0[3];
    (*(v3 + 32))(v0[2], v2, v1);
    MEMORY[0x21CE924D0](*v6, v1, v5, MEMORY[0x277D84950]);

    v7 = v0[1];

    return v7();
  }

  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in withTimeout<A>(seconds:operation:)(a1, a2, v7, v8, v6, v9);
}

uint64_t closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return v8(a1);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of TaskPriority?(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(double a1)
{
  *(v1 + 16) = a1;
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t closure #2 in closure #1 in withTimeout<A>(seconds:operation:)()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = closure #2 in closure #1 in withTimeout<A>(seconds:operation:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v5 = closure #2 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  lazy protocol witness table accessor for type TimeoutError and conformance TimeoutError();
  swift_allocError();
  *v1 = 0xD000000000000013;
  v1[1] = 0x8000000216578C70;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

MomentsUI::TimeoutError __swiftcall TimeoutError.init()()
{
  v0 = 0x8000000216578C70;
  v1 = 0xD000000000000013;
  result.message._object = v0;
  result.message._countAndFlagsBits = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeoutError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TimeoutError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t partial apply for closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in withTimeout<A>(seconds:operation:)()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(v2);
}

unint64_t lazy protocol witness table accessor for type TimeoutError and conformance TimeoutError()
{
  result = lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError;
  if (!lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionsSyncOnboardingViewController.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_sessionUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SuggestionsSyncOnboardingViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SuggestionsSyncOnboardingViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

uint64_t SuggestionsSyncOnboardingViewController.onboardingOnlyPresentation.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_onboardingOnlyPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionsSyncOnboardingViewController.onboardingOnlyPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_onboardingOnlyPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SuggestionsSyncOnboardingViewController.__allocating_init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = specialized SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall SuggestionsSyncOnboardingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_sessionUUID;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, &v2[v12], v5);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  (*(v6 + 32))(v16 + v15, v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:), v16);

  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1);
}

uint64_t closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:);

  return CloudManager.retainUIActive(_:_:_:)(v5, "viewDidAppear(_:)", 17, 2, 32);
}

Swift::Void __swiftcall SuggestionsSyncOnboardingViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewDidDisappear_, a1);
  v11 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_sessionUUID;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 16))(v7, &v1[v11], v4);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  (*(v5 + 32))(v15 + v14, v7, v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:), v15);
}

uint64_t closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "viewDidDisappear(_:)", 20, 2, 42);
}

void SuggestionsSyncOnboardingViewController.addCuratedForYouBulletedListItem()()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v16._object = 0x8000000216577B20;
  v4._countAndFlagsBits = 0x2064657461727543;
  v4._object = 0xEF756F5920726F66;
  v16._countAndFlagsBits = 0xD000000000000027;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v7 = MEMORY[0x21CE91FC0](v6._countAndFlagsBits, v6._object);

  v8 = [v2 bundleForClass_];
  v17._object = 0x8000000216577BB0;
  v9._countAndFlagsBits = 0xD00000000000005CLL;
  v9._object = 0x8000000216578D30;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000026;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v17);

  v12 = MEMORY[0x21CE91FC0](v11._countAndFlagsBits, v11._object);

  v13 = MEMORY[0x21CE91FC0](0x6C7562746867696CLL, 0xED000078616D2E62);
  v14 = [objc_opt_self() systemBlueColor];
  [v0 addBulletedListItemWithTitle:v7 description:v12 symbolName:v13 tintColor:v14];
}

Swift::Void __swiftcall SuggestionsSyncOnboardingViewController.onboardButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Journaling Suggestions Sync] Tapped Sync to iPad button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_onboardingOnlyPresentation;
    swift_beginAccess();
    (*(v7 + 8))(v1, *(v1 + v9), ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall SuggestionsSyncOnboardingViewController.notNowButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Journaling Suggestions Sync] Tapped Not Now button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v1, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t SuggestionsSyncOnboardingViewController.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_sessionUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;

  return outlined destroy of weak SuggestionsOnboardingViewControllerDelegate?(v3);
}

id SuggestionsSyncOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  UUID.init()();
  v6 = v3 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  *(v3 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_onboardingOnlyPresentation;
  *(v3 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_onboardingOnlyPresentation) = 0;
  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v3 + v7) = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v19._object = 0x8000000216577C40;
  v11._countAndFlagsBits = 0xD000000000000022;
  v11._object = 0x8000000216578D90;
  v19._countAndFlagsBits = 0xD000000000000027;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19);

  v14 = [v9 bundleForClass_];
  v20._object = 0x8000000216578DC0;
  v15._countAndFlagsBits = 0x206F7420636E7953;
  v15._object = 0xEC00000064615069;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000020;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  return OnboardingViewController.init(title:detailText:onboardButtonTitle:)(v13._countAndFlagsBits, v13._object, 0, 0, v17._countAndFlagsBits, v17._object);
}

uint64_t partial apply for closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionsSyncOnboardingViewController.viewDidDisappear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t type metadata accessor for SuggestionsSyncOnboardingViewController()
{
  result = type metadata singleton initialization cache for SuggestionsSyncOnboardingViewController;
  if (!type metadata singleton initialization cache for SuggestionsSyncOnboardingViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SuggestionsSyncOnboardingViewController()
{
  result = type metadata accessor for UUID();
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

uint64_t closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in SuggestionsSyncOnboardingViewController.viewDidAppear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t SuggestionsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SuggestionsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

Swift::Void __swiftcall SuggestionsViewController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SuggestionsViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "SuggestionsViewController viewDidLoad", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }
}

id SuggestionsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SuggestionsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = MEMORY[0x21CE91FC0](a1, a2);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SuggestionsViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id SuggestionsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SuggestionsViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SuggestionsViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SuggestionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppIconProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:350.0 scale:{350.0, v3}];
  return v0;
}

uint64_t *AppIconProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static AppIconProvider.shared;
}

uint64_t static AppIconProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id one-time initialization function for iconDescriptor()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:50.0 scale:{50.0, v2}];
  static AppIconProvider.iconDescriptor = result;
  return result;
}

void static AppIconProvider.getImageFor(bundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v9 = MEMORY[0x21CE91FC0](a1, a2);
  v10 = [v8 initWithBundleIdentifier_];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v11 = static AppIconProvider.iconDescriptor;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v14[4] = partial apply for closure #1 in static AppIconProvider.getImageFor(bundleIdentifier:completion:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v14[3] = &block_descriptor_2;
  v13 = _Block_copy(v14);

  [v10 getCGImageForImageDescriptor:v11 completion:v13];
  _Block_release(v13);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void static AppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v11 = MEMORY[0x21CE91FC0](a1, a2);
  v12 = [v10 initWithBundleIdentifier_];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v13 = static AppIconProvider.iconDescriptor;
  [static AppIconProvider.iconDescriptor setShouldApplyMask_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v16[4] = partial apply for closure #1 in static AppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:);
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v16[3] = &block_descriptor_6;
  v15 = _Block_copy(v16);

  [v12 getCGImageForImageDescriptor:v13 completion:v15];
  _Block_release(v15);
}

void closure #1 in static AppIconProvider.getImageFor(bundleIdentifier:completion:)(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = a1;
    v6 = [v4 initWithCGImage_];
    a2();
  }

  else
  {
    a2();
  }
}

uint64_t AppIconProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AppIconProvider.init()()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:350.0 scale:{350.0, v3}];
  return v0;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SuggestionSeparatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SuggestionSeparatorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SuggestionSeparatorView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [objc_opt_self() separatorColor];
  [v9 setBackgroundColor_];

  return v9;
}

id SuggestionSeparatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SuggestionSeparatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSeparatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SuggestionViewModel.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t key path setter for SuggestionViewModel.suggestionID : SuggestionViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd);
  return (*(**a2 + 192))(v6);
}

uint64_t SuggestionViewModel.suggestionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionViewModel.title.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t SuggestionViewModel.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void *SuggestionViewModel.suggestionRanking.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionViewModel.suggestionRanking.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *SuggestionViewModel.prompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt);
  v2 = v1;
  return v1;
}

uint64_t key path setter for SuggestionViewModel.client : SuggestionViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Client(a1, v6);
  return (*(**a2 + 288))(v6);
}

uint64_t SuggestionViewModel.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client;
  swift_beginAccess();
  return outlined init with copy of Client(v1 + v3, a1);
}

uint64_t outlined init with copy of Client(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionViewModel.suggestionID.setter(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t outlined assign with take of Client(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionViewModel.assets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SuggestionViewModel.__allocating_init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = swift_allocObject();
  v33 = *a10;
  v34 = *a11;
  UUID.init()();
  v17 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16 + v17, 1, 1, v18);
  v20 = (v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v21 = 0;
  v21[1] = 0;
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v22 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  (*(v19 + 16))(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, a1, v18);
  swift_beginAccess();
  *v20 = a2;
  v20[1] = a3;
  swift_beginAccess();
  *v21 = a4;
  v21[1] = a5;
  outlined init with copy of DateInterval?(a6, v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(a7, v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(a8, v16 + v17);
  swift_endAccess();
  if (a9)
  {

    v35[0] = specialized Array._copyToContiguousArray()(v23, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(v35);

    outlined destroy of UTType?(a8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(a7, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(a6, &_s10Foundation4DateVSgMd);
    (*(v19 + 8))(a1, v18);
    v24 = v35[0];
  }

  else
  {
    outlined destroy of UTType?(a8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(a7, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(a6, &_s10Foundation4DateVSgMd);
    (*(v19 + 8))(a1, v18);
    v24 = 0;
  }

  swift_beginAccess();
  *(v16 + v22) = v24;
  *(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v33;
  *(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v34;
  swift_beginAccess();
  *(v16 + v32) = a12;
  outlined init with take of Client(a14, v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v16 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v16;
}

uint64_t SuggestionViewModel.init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v34 = *a10;
  v35 = *a11;
  UUID.init()();
  v17 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v14 + v17, 1, 1, v18);
  v20 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v21 = 0;
  v21[1] = 0;
  v33 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v22 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  (*(v19 + 16))(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, a1, v18);
  swift_beginAccess();
  *v20 = a2;
  v20[1] = a3;
  swift_beginAccess();
  *v21 = a4;
  v21[1] = a5;
  outlined init with copy of DateInterval?(a6, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(a7, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(a8, v14 + v17);
  swift_endAccess();
  if (a9)
  {

    v36[0] = specialized Array._copyToContiguousArray()(v23, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(v36);

    outlined destroy of UTType?(a8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(a7, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(a6, &_s10Foundation4DateVSgMd);
    (*(v19 + 8))(a1, v18);
    v24 = v36[0];
  }

  else
  {
    outlined destroy of UTType?(a8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(a7, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(a6, &_s10Foundation4DateVSgMd);
    (*(v19 + 8))(a1, v18);
    v24 = 0;
  }

  swift_beginAccess();
  *(v14 + v22) = v24;

  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v34;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v35;
  swift_beginAccess();
  v25 = *(v14 + v33);
  *(v14 + v33) = a12;

  outlined init with take of Client(a14, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v14;
}

uint64_t static SuggestionViewModel.sortedAssets(_:)(uint64_t result)
{
  if (result)
  {

    v2 = specialized Array._copyToContiguousArray()(v1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(&v2);
    return v2;
  }

  return result;
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Client(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SuggestionViewModel.== infix(_:_:)()
{
  type metadata accessor for MosaicSuggestionViewModel();
  v0 = swift_dynamicCastClass();
  if (v0 && (v1 = v0, (v2 = swift_dynamicCastClass()) != 0))
  {
    v3 = v2;

    v4 = specialized static MosaicSuggestionViewModel.== infix(_:_:)(v1, v3);

    return v4 & 1;
  }

  else
  {

    return static UUID.== infix(_:_:)();
  }
}

uint64_t SuggestionViewModel.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

BOOL closure #1 in static SuggestionViewModel.sortedAssets(_:)(void **a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & **a1) + 0x88))(v6);
  if ((v13 & 1) == 0)
  {
    v14 = *&v12;
    v15 = COERCE_DOUBLE((*((*v11 & *v10) + 0x88))());
    if ((v16 & 1) == 0)
    {
      return v14 < v15;
    }
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static CommonLogger.assets);
  v18 = v9;
  v19 = v10;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v22;
    v41 = swift_slowAlloc();
    v42 = v41;
    *v22 = 136315394;
    v38 = v19;
    v36 = *(v5 + 16);
    v36(v8, v18 + OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID, v4);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v40 = v20;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v39 = v21;
    v26 = *(v5 + 8);
    v26(v8, v4);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

    v29 = v37;
    v28 = v38;
    *(v37 + 1) = v27;
    *(v29 + 6) = 2080;
    v36(v8, &v28[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v4);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v26(v8, v4);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v42);

    *(v29 + 14) = v33;
    v20 = v40;
    _os_log_impl(&dword_21607C000, v40, v39, "assets do not have priorityScore, %s, %s", v29, 0x16u);
    v34 = v41;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v29, -1, -1);
  }

  return 0;
}

id SuggestionViewModel.asTransferrableSuggestion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v126 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v113 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v130 = &v113 - v8;
  MEMORY[0x28223BE20](v7);
  v127 = &v113 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v113 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v128 = &v113 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v113 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v132 = &v113 - v31;
  v32 = (*(*v0 + 208))(v30);
  if (!v33)
  {
    return 0;
  }

  v34 = v33;
  v122 = v32;
  v123 = v6;
  v124 = v11;
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v20, &_s10Foundation4DateVSgMd);
  v35 = *(v22 + 48);
  if (v35(v20, 1, v21) == 1)
  {

    outlined destroy of UTType?(v20, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v120 = v29;
  v121 = v10;
  v36 = v132;
  v37 = v20;
  v38 = *(v22 + 32);
  v38(v132, v37, v21);
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, v18, &_s10Foundation4DateVSgMd);
  if (v35(v18, 1, v21) == 1)
  {
    (*(v22 + 8))(v36, v21);

    outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v39 = v120;
  v40 = (v38)(v120, v18, v21);
  v41 = v127;
  (*(*v0 + 184))(v40);
  v42 = v124;
  v43 = v124 + 48;
  v44 = *(v124 + 48);
  v45 = v121;
  v46 = v44(v41, 1, v121);
  v119 = v21;
  v118 = v0;
  v115 = v43;
  v114 = v44;
  if (v46 == 1)
  {
    UUID.init()();
    v47 = v44(v41, 1, v45);
    v48 = v22;
    v49 = v132;
    if (v47 != 1)
    {
      outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v42 + 32))(v131, v41, v45);
    v48 = v22;
    v49 = v132;
  }

  v50 = type metadata accessor for TemplatedString();
  v51 = objc_allocWithZone(v50);
  v52 = &v51[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  *v52 = v122;
  *(v52 + 1) = v34;
  v136.receiver = v51;
  v136.super_class = v50;
  v122 = objc_msgSendSuper2(&v136, sel_init);
  v53 = *(v48 + 16);
  v54 = v128;
  v55 = v49;
  v56 = v119;
  v53(v128, v55, v119);
  v57 = v129;
  v53(v129, v39, v56);
  v58 = type metadata accessor for DateRange();
  v59 = v48;
  v60 = objc_allocWithZone(v58);
  v53(&v60[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v54, v56);
  v53(&v60[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v57, v56);
  v135.receiver = v60;
  v135.super_class = v58;
  v61 = objc_msgSendSuper2(&v135, sel_init);
  v62 = *(v59 + 8);
  v62(v57, v56);
  v129 = (v59 + 8);
  v63 = (v62)(v54, v56);
  v64 = v118;
  v65 = (*(*v118 + 256))(v63);
  v66 = (*(*v64 + 304))();
  v117 = v62;
  v127 = v61;
  v128 = v65;
  if (v66)
  {
    v67 = v66;
    v134 = MEMORY[0x277D84F90];
    v68 = v66 & 0xFFFFFFFFFFFFFF8;
    if (v66 >> 62)
    {
LABEL_37:
      v69 = __CocoaSet.count.getter();
    }

    else
    {
      v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    while (v69 != v70)
    {
      if ((v67 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x21CE93180](v70, v67);
      }

      else
      {
        if (v70 >= *(v68 + 16))
        {
          goto LABEL_36;
        }

        v72 = *(v67 + 8 * v70 + 32);
      }

      v73 = v72;
      v74 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v75 = Asset.transferrable.getter();

      ++v70;
      if (v75)
      {
        MEMORY[0x21CE92260]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v71 = v134;
        v70 = v74;
      }
    }

    v76 = v130;
    v77 = v124;
    v64 = v118;
    v78 = v71;
    v79 = v121;
  }

  else
  {
    v78 = 0;
    v76 = v130;
    v79 = v121;
    v77 = v124;
  }

  v80 = *(v64 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType);
  v81 = *(v64 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  v116 = *(v64 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt);
  v82 = *(v77 + 56);
  v82(v76, 1, 1, v79);
  v83 = v123;
  v82(v123, 1, 1, v79);
  v118 = type metadata accessor for Suggestion();
  v84 = objc_allocWithZone(v118);
  v85 = v84;
  v86 = v77;
  v87 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v84[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  if (v80 == 13)
  {

    outlined destroy of UTType?(v83, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v76, &_s10Foundation4UUIDVSgMd);
    (*(v77 + 8))(v131, v79);
    v88 = v119;
    v89 = v117;
    v117(v120, v119);
    v89(v132, v88);

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v77 + 16))(&v84[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v131, v79);
  v91 = v122;
  *&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v122;
  *&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = 0;
  *&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = v127;
  swift_beginAccess();
  v92 = v76;
  v93 = v128;
  *&v85[v87] = v128;
  *&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = v78;
  v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v80;
  v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v81;
  *&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = v116;
  outlined init with copy of DateInterval?(v92, &v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID], &_s10Foundation4UUIDVSgMd);
  v94 = v126;
  outlined init with copy of DateInterval?(v83, v126, &_s10Foundation4UUIDVSgMd);
  v95 = v114;
  if (v114(v94, 1, v79) == 1)
  {
    v96 = v116;
    v97 = v91;
    v98 = v127;
    v99 = v127;
    v100 = v93;
    v101 = v95;
    v102 = v125;
    UUID.init()();
    if (v101(v94, 1, v79) != 1)
    {
      outlined destroy of UTType?(v94, &_s10Foundation4UUIDVSgMd);
    }

    v103 = v132;
    v104 = v122;
    v105 = &unk_27821E000;
    v83 = v123;
    v106 = v124;
  }

  else
  {
    v102 = v125;
    (*(v86 + 32))(v125, v94, v79);
    v107 = v116;
    v104 = v91;
    v108 = v91;
    v98 = v127;
    v109 = v127;
    v100 = v93;
    v106 = v86;
    v103 = v132;
    v105 = &unk_27821E000;
  }

  (*(v106 + 32))(&v85[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v102, v79);
  v133.receiver = v85;
  v133.super_class = v118;
  v110 = objc_msgSendSuper2(&v133, v105[420]);

  outlined destroy of UTType?(v83, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v130, &_s10Foundation4UUIDVSgMd);
  (*(v106 + 8))(v131, v79);
  v111 = v119;
  v112 = v117;
  v117(v120, v119);
  v112(v103, v111);
  return v110;
}

uint64_t SuggestionViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v2);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, &_s10Foundation4UUIDVSgMd);

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);

  outlined destroy of Client(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);

  return v0;
}

uint64_t SuggestionViewModel.__deallocating_deinit()
{
  SuggestionViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Int SuggestionViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 336))(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance SuggestionViewModel@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionViewModel()
{
  Hasher.init(_seed:)();
  (*(**v0 + 336))(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SuggestionViewModel()
{
  type metadata accessor for MosaicSuggestionViewModel();
  v0 = swift_dynamicCastClass();
  if (v0 && (v1 = v0, (v2 = swift_dynamicCastClass()) != 0))
  {
    v3 = v2;

    v4 = specialized static MosaicSuggestionViewModel.== infix(_:_:)(v1, v3);

    return v4 & 1;
  }

  else
  {

    return static UUID.== infix(_:_:)();
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Asset();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Suggestion();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  if (a3 != a2)
  {
    v11 = *a4;
    v50 = (v8 + 8);
    v51 = (v8 + 16);
    v12 = v11 + 8 * a3 - 8;
    v13 = a1 - a3;
    v14 = MEMORY[0x277D85000];
    *&v9 = 136315394;
    v49 = v9;
LABEL_7:
    v64 = v12;
    v65 = a3;
    v15 = *(v11 + 8 * a3);
    v63 = v13;
    while (1)
    {
      v16 = *v12;
      v17 = *((*v14 & *v15) + 0x88);
      v18 = v15;
      v19 = v16;
      v20 = v17();
      if (v21 & 1) != 0 || (v22 = *&v20, v23 = (*((*v14 & *v19) + 0x88))(), (v24))
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static CommonLogger.assets);
        v29 = v18;
        v30 = v19;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v55 = v33;
          v60 = swift_slowAlloc();
          v66 = v60;
          *v33 = v49;
          v58 = v31;
          v56 = *v51;
          v57 = v32;
          v34 = v52;
          v35 = v53;
          v56(v52, &v29[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v53);
          v54 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v36 = dispatch thunk of CustomStringConvertible.description.getter();
          v59 = v29;
          v38 = v37;
          v61 = v30;
          v39 = *v50;
          (*v50)(v34, v35);
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v66);

          v41 = v55;
          *(v55 + 1) = v40;
          *(v41 + 6) = 2080;
          v42 = v41;
          v56(v34, &v61[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v35);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          v39(v34, v35);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v66);

          *(v42 + 14) = v46;
          v31 = v58;
          _os_log_impl(&dword_21607C000, v58, v57, "assets do not have priorityScore, %s, %s", v42, 0x16u);
          v47 = v60;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v47, -1, -1);
          MEMORY[0x21CE94770](v42, -1, -1);
        }

        else
        {
        }

LABEL_6:
        a3 = v65 + 1;
        v12 = v64 + 8;
        v13 = v63 - 1;
        if (v65 + 1 == v62)
        {
          return;
        }

        goto LABEL_7;
      }

      v25 = *&v23;

      if (v22 >= v25)
      {
        goto LABEL_6;
      }

      if (!v11)
      {
        break;
      }

      v26 = *v12;
      v15 = *(v12 + 8);
      *v12 = v15;
      *(v12 + 8) = v26;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 pixelWidth];
      v11 = [v8 pixelHeight];
      v12 = v10 * v11;
      if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
      {
        break;
      }

      v13 = [v9 pixelWidth];
      v14 = [v9 pixelHeight];

      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        goto LABEL_14;
      }

      if (v12 < v13 * v14)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        v15 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v15;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v4 = v19 + 8;
      v5 = v18 - 1;
      if (v20 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v24 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_6:
    v7 = *(v24 + 8 * v4);
    v8 = v6;
    v23 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*MEMORY[0x277D85000] & *v7) + 0xA8);
      v11 = v7;
      v12 = v9;
      v13 = v10();
      if (!v13 || (v14 = *&v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore], v15 = v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8], v13, (v15 & 1) != 0) || (v16 = (*((*MEMORY[0x277D85000] & *v12) + 0xA8))()) == 0)
      {

LABEL_5:
        ++v4;
        v5 = v23 + 8;
        --v6;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v17 = v16;
      v18 = *(v16 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
      v19 = *(v16 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);

      if ((v19 & 1) != 0 || v18 >= v14)
      {
        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v20 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v20;
      v5 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v147 = a1;
  v160 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v160);
  v159 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_111:
    v5 = *v147;
    if (!*v147)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_144:
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    }

    v169 = v14;
    v140 = *(v14 + 2);
    if (v140 >= 2)
    {
      while (*a3)
      {
        v141 = *&v14[16 * v140];
        v142 = *&v14[16 * v140 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v141), (*a3 + 8 * *&v14[16 * v140 + 16]), (*a3 + 8 * v142), v5);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v142 < v141)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        if (v140 - 2 >= *(v14 + 2))
        {
          goto LABEL_138;
        }

        v143 = &v14[16 * v140];
        *v143 = v141;
        *(v143 + 1) = v142;
        v169 = v14;
        specialized Array.remove(at:)(v140 - 1);
        v14 = v169;
        v140 = *(v169 + 2);
        if (v140 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_148;
    }

LABEL_121:

    return;
  }

  v146 = a4;
  v13 = 0;
  v151 = (v9 + 8);
  v152 = (v9 + 16);
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D85000];
  *&v10 = 136315394;
  v150 = v10;
  v148 = a3;
  while (1)
  {
    v16 = v13++;
    v162 = v16;
    if (v13 >= v12)
    {
      goto LABEL_30;
    }

    v17 = *a3;
    v18 = *(*a3 + 8 * v13);
    v167 = *(*a3 + 8 * v16);
    v19 = v167;
    v168[0] = v18;
    v5 = v18;
    v20 = v19;
    LODWORD(v165) = closure #1 in static SuggestionViewModel.sortedAssets(_:)(v168, &v167);
    if (v6)
    {

      return;
    }

    v13 = v16 + 2;
    if (v16 + 2 < v12)
    {
      v145 = 0;
      v21 = (v17 + 8 * v16 + 16);
      v163 = v12;
      while (1)
      {
        v166 = v13;
        v23 = *(v21 - 1);
        v24 = *((*MEMORY[0x277D85000] & **v21) + 0x88);
        v5 = *v21;
        v25 = v23;
        v26 = v24();
        if (v27 & 1) != 0 || (v28 = *&v26, v29 = (*((*MEMORY[0x277D85000] & *v25) + 0x88))(), (v30))
        {
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static CommonLogger.assets);
          v32 = v5;
          v5 = v25;
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v154 = v35;
            v161 = swift_slowAlloc();
            v168[0] = v161;
            LODWORD(v35->isa) = v150;
            v157 = v33;
            v155 = *v152;
            v156 = v34;
            v36 = v159;
            v164 = v5;
            v5 = v160;
            (v155)(v159, &v32[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v160);
            v153 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v158 = v32;
            v39 = v38;
            v40 = *v151;
            (*v151)(v36, v5);
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v168);

            v42 = v154;
            *(&v154->isa + 4) = v41;
            WORD2(v42[1].isa) = 2080;
            (v155)(v36, &v164[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v5);
            v43 = dispatch thunk of CustomStringConvertible.description.getter();
            v45 = v44;
            v40(v36, v5);
            a3 = v148;
            v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v168);

            *(&v42[1].isa + 6) = v46;
            v33 = v157;
            _os_log_impl(&dword_21607C000, v157, v156, "assets do not have priorityScore, %s, %s", v42, 0x16u);
            v47 = v161;
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v47, -1, -1);
            MEMORY[0x21CE94770](v42, -1, -1);
          }

          else
          {
          }

          v13 = v166;
          v22 = v163;
          if (v165)
          {
            v6 = v145;
            v15 = MEMORY[0x277D85000];
            v16 = v162;
            if (v166 < v162)
            {
              goto LABEL_141;
            }

LABEL_24:
            if (v16 < v13)
            {
              v50 = 8 * v13 - 8;
              v51 = 8 * v16;
              v52 = v13;
              v53 = v16;
              do
              {
                if (v53 != --v52)
                {
                  v54 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_147;
                  }

                  v55 = *(v54 + v51);
                  *(v54 + v51) = *(v54 + v50);
                  *(v54 + v50) = v55;
                }

                ++v53;
                v50 -= 8;
                v51 += 8;
              }

              while (v53 < v52);
            }

            goto LABEL_30;
          }
        }

        else
        {
          v48 = *&v29;

          v49 = v28 >= v48;
          v13 = v166;
          v22 = v163;
          if (((v165 ^ v49) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        ++v13;
        ++v21;
        if (v22 == v13)
        {
          v13 = v22;
LABEL_19:
          v6 = v145;
          v16 = v162;
          break;
        }
      }
    }

    v15 = MEMORY[0x277D85000];
    if (v165)
    {
      if (v13 < v16)
      {
        goto LABEL_141;
      }

      goto LABEL_24;
    }

LABEL_30:
    v56 = a3[1];
    if (v13 >= v56)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v13, v162))
    {
      goto LABEL_140;
    }

    if (v13 - v162 >= v146)
    {
LABEL_55:
      v58 = v162;
      goto LABEL_56;
    }

    v57 = v162 + v146;
    if (__OFADD__(v162, v146))
    {
      goto LABEL_142;
    }

    if (v57 >= v56)
    {
      v57 = a3[1];
    }

    if (v57 < v162)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v58 = v162;
    if (v13 != v57)
    {
      break;
    }

LABEL_56:
    if (v13 < v58)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v95 = *(v14 + 2);
    v94 = *(v14 + 3);
    v96 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v14);
    }

    *(v14 + 2) = v96;
    v97 = &v14[16 * v95];
    *(v97 + 4) = v162;
    *(v97 + 5) = v13;
    v98 = *v147;
    if (!*v147)
    {
      goto LABEL_149;
    }

    if (v95)
    {
      v15 = MEMORY[0x277D85000];
      while (1)
      {
        v99 = v96 - 1;
        if (v96 >= 4)
        {
          break;
        }

        if (v96 == 3)
        {
          v100 = *(v14 + 4);
          v101 = *(v14 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_77:
          if (v103)
          {
            goto LABEL_128;
          }

          v116 = &v14[16 * v96];
          v118 = *v116;
          v117 = *(v116 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_131;
          }

          v122 = &v14[16 * v99 + 32];
          v124 = *v122;
          v123 = *(v122 + 1);
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_135;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              v99 = v96 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v126 = &v14[16 * v96];
        v128 = *v126;
        v127 = *(v126 + 1);
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_91:
        if (v121)
        {
          goto LABEL_130;
        }

        v129 = &v14[16 * v99];
        v131 = *(v129 + 4);
        v130 = *(v129 + 5);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_133;
        }

        if (v132 < v120)
        {
          goto LABEL_108;
        }

LABEL_98:
        v137 = v99 - 1;
        if (v99 - 1 >= v96)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v138 = *&v14[16 * v137 + 32];
        v5 = *&v14[16 * v99 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v138), (*a3 + 8 * *&v14[16 * v99 + 32]), (*a3 + 8 * v5), v98);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v5 < v138)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        if (v137 >= *(v14 + 2))
        {
          goto LABEL_125;
        }

        v139 = &v14[16 * v137];
        *(v139 + 4) = v138;
        *(v139 + 5) = v5;
        v169 = v14;
        specialized Array.remove(at:)(v99);
        v14 = v169;
        v96 = *(v169 + 2);
        v15 = MEMORY[0x277D85000];
        if (v96 <= 1)
        {
          goto LABEL_108;
        }
      }

      v104 = &v14[16 * v96 + 32];
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_126;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_127;
      }

      v111 = &v14[16 * v96];
      v113 = *v111;
      v112 = *(v111 + 1);
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_129;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_132;
      }

      if (v115 >= v107)
      {
        v133 = &v14[16 * v99 + 32];
        v135 = *v133;
        v134 = *(v133 + 1);
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_136;
        }

        if (v102 < v136)
        {
          v99 = v96 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    v15 = MEMORY[0x277D85000];
LABEL_108:
    v12 = a3[1];
    if (v13 >= v12)
    {
      goto LABEL_111;
    }
  }

  v163 = v57;
  v145 = v6;
  v59 = *a3;
  v60 = v59 + 8 * v13 - 8;
  v61 = (v162 - v13);
LABEL_42:
  v165 = v60;
  v166 = v13;
  v62 = *(v59 + 8 * v13);
  v164 = v61;
  v63 = v61;
  while (1)
  {
    v64 = *v60;
    v65 = *((*v15 & *v62) + 0x88);
    v66 = v62;
    v5 = v64;
    v67 = v65();
    v15 = MEMORY[0x277D85000];
    if (v68 & 1) != 0 || (v69 = *&v67, v70 = (*((*MEMORY[0x277D85000] & *v5) + 0x88))(), (v71))
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static CommonLogger.assets);
      v76 = v66;
      v5 = v5;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v161 = v5;
        v80 = v79;
        v153 = v79;
        v157 = swift_slowAlloc();
        v168[0] = &v157->isa;
        *v80 = v150;
        v156 = v78;
        v154 = *v152;
        v155 = v77;
        v81 = &v76[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID];
        v82 = v159;
        v158 = v76;
        v83 = v160;
        (v154)(v159, v81, v160);
        v149 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        v5 = *v151;
        (*v151)(v82, v83);
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v168);

        v88 = v153;
        *(v153 + 4) = v87;
        *(v88 + 12) = 2080;
        (v154)(v82, v161 + OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID, v83);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        (v5)(v82, v83);
        v15 = MEMORY[0x277D85000];
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v168);

        *(v88 + 14) = v92;
        v77 = v155;
        _os_log_impl(&dword_21607C000, v155, v156, "assets do not have priorityScore, %s, %s", v88, 0x16u);
        v93 = v157;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v93, -1, -1);
        MEMORY[0x21CE94770](v88, -1, -1);
      }

      else
      {
      }

LABEL_41:
      v13 = v166 + 1;
      v60 = v165 + 8;
      v61 = v164 - 1;
      if (v166 + 1 == v163)
      {
        v13 = v163;
        v6 = v145;
        a3 = v148;
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v72 = *&v70;

    if (v69 >= v72)
    {
      goto LABEL_41;
    }

    if (!v59)
    {
      break;
    }

    v73 = *v60;
    v62 = *(v60 + 8);
    *v60 = v62;
    *(v60 + 8) = v73;
    v60 -= 8;
    if (__CFADD__(v63++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v71 = type metadata accessor for UUID();
  v8 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v65 = a1;
    if (a4 != a2 || &a2[8 * v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v25 = &a4[8 * v14];
    if (a3 - a2 < 8 || a2 <= v65)
    {
      v16 = &a4[8 * v14];
      goto LABEL_45;
    }

    v67 = (v8 + 8);
    v68 = (v8 + 16);
    *&v9 = 136315394;
    v66 = v9;
    while (1)
    {
      v26 = (a2 - 8);
      a3 -= 8;
      v16 = v25;
      v69 = a2;
      v81 = (a2 - 8);
      while (1)
      {
        v27 = *(v16 - 1);
        v83 = v16 - 8;
        v84 = v25;
        v28 = *v26;
        v29 = *((*MEMORY[0x277D85000] & *v27) + 0x88);
        v30 = v27;
        v31 = v28;
        v32 = v29();
        if (v33 & 1) != 0 || (v34 = *&v32, v35 = (*((*MEMORY[0x277D85000] & *v31) + 0x88))(), (v36))
        {
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static CommonLogger.assets);
          v38 = v30;
          v39 = v31;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v76 = v39;
            v43 = v42;
            v78 = swift_slowAlloc();
            v86 = v78;
            *v43 = v66;
            v79 = v38;
            v80 = a3;
            v74 = *v68;
            v44 = &v38[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID];
            v77 = v41;
            v45 = v70;
            v46 = v71;
            v74(v70, v44, v71);
            v73 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v47 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v40;
            v48 = a4;
            v50 = v49;
            v72 = *v67;
            v72(v45, v46);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, &v86);
            a4 = v48;

            *(v43 + 4) = v51;
            *(v43 + 12) = 2080;
            v52 = v76;
            v74(v45, &v76[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v46);
            a3 = v80;
            v53 = dispatch thunk of CustomStringConvertible.description.getter();
            v55 = v54;
            v72(v45, v46);
            a2 = v69;
            v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v86);

            *(v43 + 14) = v56;
            v57 = v75;
            _os_log_impl(&dword_21607C000, v75, v77, "assets do not have priorityScore, %s, %s", v43, 0x16u);
            v58 = v78;
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v58, -1, -1);
            MEMORY[0x21CE94770](v43, -1, -1);
          }

          else
          {
          }

          v25 = v84;
          v26 = v81;
          goto LABEL_37;
        }

        v59 = *&v35;

        v60 = v65;
        v25 = v84;
        v26 = v81;
        if (v34 < v59)
        {
          break;
        }

LABEL_37:
        v16 = v83;
        if (a3 + 8 != v25)
        {
          *a3 = *v83;
        }

        a3 -= 8;
        v25 = v16;
        if (v16 <= a4)
        {
          goto LABEL_45;
        }
      }

      if (a3 + 8 != a2)
      {
        *a3 = *v81;
      }

      if (v25 > a4)
      {
        a2 = v26;
        if (v26 > v60)
        {
          continue;
        }
      }

      v16 = v25;
      a2 = v26;
      goto LABEL_45;
    }
  }

  v15 = a1;
  if (a4 != a1 || &a1[8 * v12] <= a4)
  {
    memmove(a4, a1, 8 * v12);
  }

  v16 = &a4[8 * v12];
  if (a2 - a1 >= 8)
  {
    while (1)
    {
      if (a2 >= a3)
      {
        goto LABEL_10;
      }

      v86 = *a2;
      v85 = *a4;
      v19 = v85;
      v20 = v86;
      v21 = v19;
      v22 = v82;
      v23 = closure #1 in static SuggestionViewModel.sortedAssets(_:)(&v86, &v85);
      v82 = v22;
      if (v22)
      {

        if (v15 != a4 || v15 >= &a4[(v16 - a4 + (v16 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
        {
          v61 = 8 * ((v16 - a4) / 8);
          v62 = v15;
          goto LABEL_48;
        }

        return 1;
      }

      v24 = v23;

      if (v24)
      {
        break;
      }

      v17 = a4;
      v18 = v15 == a4;
      a4 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v15 += 8;
      if (a4 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = a2;
    v18 = v15 == a2;
    a2 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v15 = *v17;
    goto LABEL_13;
  }

LABEL_10:
  a2 = v15;
LABEL_45:
  if (a2 != a4 || a2 >= &a4[(v16 - a4 + (v16 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    v61 = 8 * ((v16 - a4) / 8);
    v62 = a2;
LABEL_48:
    memmove(v62, a4, v61);
  }

  return 1;
}

{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v55 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v57 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v55)
    {
      v49 = (v8 + 8);
      v50 = a4;
LABEL_27:
      v48 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v57;
      v51 = a1 - 8;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v56 = v31;
        v34 = v31 + 8;
        v35 = *v30;
        v36 = *(*v33 + 456);

        v38 = v52;
        v39 = v36(v37);
        v40 = v53;
        (*(*v35 + 456))(v39);
        v41 = static Date.> infix(_:_:)();
        v42 = *v49;
        v43 = v40;
        v44 = v54;
        (*v49)(v43, v54);
        v42(v38, v44);

        if (v41)
        {
          a4 = v50;
          v46 = v51;
          a3 = v56;
          if (v34 != v48)
          {
            *v56 = *v51;
          }

          if (v57 <= a4 || (a1 = v46, v46 <= v55))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v50;
        v45 = v56;
        if (v34 != v57)
        {
          *v56 = *v32;
        }

        v31 = v45 - 8;
        v57 = v32;
        v30 = v51;
      }

      while (v32 > a4);
      v57 = v32;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v57 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v56 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v55 = a1;
        v17 = *a4;
        v18 = *(**a2 + 456);

        v20 = v52;
        v21 = v18(v19);
        v22 = v53;
        (*(*v17 + 456))(v21);
        v23 = static Date.> infix(_:_:)();
        v24 = *v16;
        v25 = v22;
        v26 = v54;
        (*v16)(v25, v54);
        v24(v20, v26);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v55;
        v29 = v55 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v57 || a2 >= v56)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v55;
      v29 = v55 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v57 - a4) / 8));
  }

  return 1;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE93180](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE93180](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE93180](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE93180](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SuggestionViewModel()
{
  result = type metadata singleton initialization cache for SuggestionViewModel;
  if (!type metadata singleton initialization cache for SuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SuggestionViewModel()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Client();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CloudSuggestionsDB.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudSuggestionsDB.Class = a1;
  unk_27CA8E8E8 = a2;
  byte_27CA8E8F0 = a3;
  return result;
}

uint64_t static CloudSuggestionsDB.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSuggestionsDB.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudSuggestionsDB.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudSuggestionsDB@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSuggestionsDB.cloudRecordTypes.getter()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudSuggestionsDB.cloudRecordTypes.setter(uint64_t a1)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSuggestionsDB.cloudRecordTypes = a1;
}

uint64_t (*static CloudSuggestionsDB.cloudRecordTypes.modify())()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t key path getter for static CloudSuggestionsDB.cloudRecordTypes : CloudSuggestionsDB.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CloudSuggestionsDB.cloudRecordTypes;
}

uint64_t key path setter for static CloudSuggestionsDB.cloudRecordTypes : CloudSuggestionsDB.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for cloudRecordTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSuggestionsDB.cloudRecordTypes = v1;
}

uint64_t one-time initialization function for defaultSuggestionsStateURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, static CloudSuggestionsDB.defaultSuggestionsStateURL);
  __swift_project_value_buffer(v4, static CloudSuggestionsDB.defaultSuggestionsStateURL);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v13[0] = 0xD000000000000015;
      v13[1] = 0x8000000216579390;
      (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v8, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for defaultSuggestionsDBURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, static CloudSuggestionsDB.defaultSuggestionsDBURL);
  __swift_project_value_buffer(v4, static CloudSuggestionsDB.defaultSuggestionsDBURL);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v13[0] = 0xD000000000000013;
      v13[1] = 0x8000000216579370;
      (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v8, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CloudSuggestionsDB.Log.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static CloudSuggestionsDB.defaultSuggestionsStateURL.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t key path setter for CloudSuggestionsDB.cloudManager : CloudSuggestionsDB(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CloudSuggestionsDB.cloudManager.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t CloudSuggestionsDB._dbManager.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CloudSuggestionsDB.dbManagerPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t CloudSuggestionsDB.pendingDBChangesPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CloudSuggestionsDB.snapshotGenerationPublisher.getter(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(a4, a2);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CloudSuggestionsDB.State.currentUser.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CloudSuggestionsDB.State.currentUser.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudSuggestionsDB.State.snapshotGeneration.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CloudSuggestionsDB.State.snapshotGeneration.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CloudSuggestionsDB.State.CodingKeys()
{
  v1 = 1701080941;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x55746E6572727563;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudSuggestionsDB.State.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CloudSuggestionsDB.State.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudSuggestionsDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudSuggestionsDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSuggestionsDB.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI18CloudSuggestionsDBC5StateV10CodingKeys33_2A45C7A53849FBA5CF4C3C0C075EF393LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    lazy protocol witness table accessor for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode()
{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode);
  }

  return result;
}

void __swiftcall CloudSuggestionsDB.State.init()(MomentsUI::CloudSuggestionsDB::State *__return_ptr retstr)
{
  retstr->currentUser.value._countAndFlagsBits = 0;
  retstr->currentUser.value._object = 0;
  retstr->mode = MomentsUI_CloudSuggestionsDB_SuggestionsDBMode_noDB;
  retstr->snapshotGeneration.value._countAndFlagsBits = 0;
  retstr->snapshotGeneration.value._object = 0;
}

void __swiftcall CloudSuggestionsDB.State.init(currentUser:mode:snapshotGeneration:)(MomentsUI::CloudSuggestionsDB::State *__return_ptr retstr, Swift::String_optional currentUser, MomentsUI::CloudSuggestionsDB::SuggestionsDBMode mode, Swift::String_optional snapshotGeneration)
{
  retstr->currentUser = currentUser;
  retstr->mode = mode;
  retstr->snapshotGeneration = snapshotGeneration;
}

double CloudSuggestionsDB.State.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized CloudSuggestionsDB.State.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance CloudSuggestionsDB.State@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized CloudSuggestionsDB.State.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

const char *CloudSuggestionsDB.SuggestionsDBMode.stringValue.getter(unsigned __int8 a1)
{
  v1 = ".noDB";
  v2 = ".cloudPrimaryDB";
  if (a1 != 2)
  {
    v2 = ".cloudSecondaryDB";
  }

  if (a1)
  {
    v1 = ".localDB";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CloudSuggestionsDB.SuggestionsDBMode@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CloudSuggestionsDB.SuggestionsDBMode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t CloudSuggestionsDB.__allocating_init(emptyDB:config:)(int a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CloudSuggestionsDB.init(emptyDB:config:)(a1, a2);
  return v4;
}

uint64_t *CloudSuggestionsDB.init(emptyDB:config:)(int a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  LODWORD(v58) = a1;
  v69 = *v2;
  v4 = type metadata accessor for Logger();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v60 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  swift_defaultActor_initialize();
  v21 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsStateURL;
  if (one-time initialization token for defaultSuggestionsStateURL != -1)
  {
    swift_once();
  }

  v65 = v4;
  v22 = __swift_project_value_buffer(v10, static CloudSuggestionsDB.defaultSuggestionsStateURL);
  v23 = *(v11 + 16);
  v56 = v22;
  v23(v3 + v21);
  v24 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  v62 = v21;
  if (one-time initialization token for defaultSuggestionsDBURL != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, static CloudSuggestionsDB.defaultSuggestionsDBURL);
  v61 = v24;
  v57 = v25;
  v70 = v23;
  v23(v3 + v24);
  v26 = (v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB___dbManager;
  *&v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI9DBManagerCSgMd);
  Published.init(initialValue:)();
  (*(v18 + 32))(v3 + v27, v20, v17);
  v28 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_snapshotGenerationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySSSgs5NeverOGMd);
  swift_allocObject();
  *(v3 + v28) = PassthroughSubject.init()();
  v29 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_pendingDBChangesSubject;
  LOBYTE(v72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  *(v3 + v29) = CurrentValueSubject.init(_:)();
  v30 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_latestLocalSnapshotSequenceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6UInt64V8sequence_AESg11suggestionstSgs5NeverOGMd);
  swift_allocObject();
  *(v3 + v30) = PassthroughSubject.init()();
  *(v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_modeChangeSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_protectedDataAvailableSubscription) = 0;
  static Date.distantPast.getter();
  static Date.distantPast.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21658CA50;
  v32 = MEMORY[0x277D839D8];
  *(v31 + 56) = MEMORY[0x277D839B0];
  *(v31 + 64) = v32;
  *(v31 + 32) = v58 & 1;
  static CloudLog.LogBegin(_:_:)(v31, "init(emptyDB:config:)", 21, 2, v69, &protocol witness table for CloudSuggestionsDB);

  if (*(v71 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000216578F60), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v71 + 56) + 32 * v33, &v72);
    v35 = v59;
    v36 = swift_dynamicCast();
    v58 = *(v11 + 56);
    v58(v35, v36 ^ 1u, 1, v10);
    v37 = *(v11 + 48);
    v38 = v37(v35, 1, v10);
    v39 = v62;
    v40 = v60;
    if (v38 != 1)
    {
      (*(v11 + 32))(v60, v35, v10);
      v41 = v68;
      goto LABEL_13;
    }

    v41 = v68;
    v70(v60, v56, v10);
  }

  else
  {
    v35 = v59;
    v58 = *(v11 + 56);
    v58(v59, 1, 1, v10);
    v41 = v68;
    v39 = v62;
    v40 = v60;
    v70(v60, v56, v10);
  }

  v37 = *(v11 + 48);
  if (v37(v35, 1, v10) != 1)
  {
    outlined destroy of UTType?(v35, &_s10Foundation3URLVSgMd);
  }

LABEL_13:
  swift_beginAccess();
  v42 = *(v11 + 40);
  v42(v3 + v39, v40, v10);
  swift_endAccess();
  if (*(v71 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000216578F80), v41 = v68, (v44 & 1) != 0))
  {
    outlined init with copy of Any(*(v71 + 56) + 32 * v43, &v72);

    v45 = swift_dynamicCast();
    v58(v41, v45 ^ 1u, 1, v10);
    if (v37(v41, 1, v10) != 1)
    {
      v46 = v63;
      (*(v11 + 32))(v63, v41, v10);
      goto LABEL_20;
    }
  }

  else
  {

    v58(v41, 1, 1, v10);
  }

  v46 = v63;
  v70(v63, v57, v10);
  if (v37(v41, 1, v10) != 1)
  {
    outlined destroy of UTType?(v41, &_s10Foundation3URLVSgMd);
  }

LABEL_20:
  v47 = v61;
  swift_beginAccess();
  v42(v3 + v47, v46, v10);
  swift_endAccess();
  v48 = v64;
  v70(v64, v3 + v39, v10);
  v49 = Data.init(contentsOf:options:)();
  v51 = v50;
  (*(v11 + 8))(v48, v10);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v49, v51);

  v53 = v73;
  v54 = v74;
  v55 = v3 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  *v55 = v72;
  v55[16] = v53;
  *(v55 + 24) = v54;
  static CloudLog.LogEnd(_:)("init(emptyDB:config:)", 21, 2, v69, &protocol witness table for CloudSuggestionsDB);
  return v3;
}

uint64_t CloudSuggestionsDB.initialized()()
{
  v1[16] = v0;
  v1[17] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_GGMd);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AC6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGAGy_AIy_AMySbSg_GGGAGy_AIy_AMy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGAQGMd);
  v1[35] = v7;
  v1[36] = *(v7 - 8);
  v1[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  v1[38] = v8;
  v1[39] = *(v8 - 8);
  v1[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd);
  v1[41] = v9;
  v1[42] = *(v9 - 8);
  v1[43] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGMd);
  v1[44] = v10;
  v1[45] = *(v10 - 8);
  v1[46] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v1[47] = v11;
  v1[48] = *(v11 - 8);
  v1[49] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGMd);
  v1[50] = v12;
  v1[51] = *(v12 - 8);
  v1[52] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGGMd);
  v1[53] = v13;
  v1[54] = *(v13 - 8);
  v1[55] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v1[56] = v14;
  v1[57] = *(v14 - 8);
  v1[58] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);
  v1[59] = v15;
  v1[60] = *(v15 - 8);
  v1[61] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGMd);
  v1[62] = v16;
  v1[63] = *(v16 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v0, 0);
}

{
  v1 = v0[16];
  static CloudLog.LogBeginInfo(_:_:)(0, "initialized()", 13, 2, v0[17], &protocol witness table for CloudSuggestionsDB);
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  v3 = *v2;
  v0[66] = *v2;
  if (v3)
  {
    v4 = v2[1];
    v0[67] = v4;
    v0[68] = swift_getObjectType();
    v0[69] = *(v4 + 272);
    v0[70] = (v4 + 272) & 0xFFFFFFFFFFFFLL | 0xB31A000000000000;
    swift_unknownObjectRetain();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[71] = v6;
    v0[72] = v5;

    return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v6, v5);
  }

  else
  {
    static CloudLog.LogEndInfo(_:)("initialized()", 13, 2, v0[17], &protocol witness table for CloudSuggestionsDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(v0 + 128);
  (*(v0 + 552))(*(v0 + 544), *(v0 + 536));

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v1 = v0[67];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[17];
  v0[73] = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v0[74] = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  Publisher<>.removeDuplicates()();
  v9 = *(v6 + 8);
  v0[75] = v9;
  v0[76] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v7);
  *(swift_allocObject() + 16) = v8;
  v0[77] = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<String?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);
  Publisher.filter(_:)();

  v10 = *(v3 + 8);
  v0[78] = v10;
  v0[79] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v5);
  v0[80] = *(v1 + 264);
  v0[81] = (v1 + 264) & 0xFFFFFFFFFFFFLL | 0xBE62000000000000;
  v11 = v0[72];
  v12 = v0[71];

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v12, v11);
}

{
  v1 = *(v0 + 128);
  (*(v0 + 640))(*(v0 + 544), *(v0 + 536));

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v1 = v0[67];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[17];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySbSg_GMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd);
  Publisher<>.removeDuplicates()();
  (*(v7 + 8))(v4, v6);
  *(swift_allocObject() + 16) = v8;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<Bool?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGMd);
  Publisher.filter(_:)();

  (*(v3 + 8))(v2, v5);
  v0[82] = *(v1 + 248);
  v0[83] = (v1 + 248) & 0xFFFFFFFFFFFFLL | 0xB8A8000000000000;
  v9 = v0[72];
  v10 = v0[71];

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v10, v9);
}

{
  v1 = *(v0 + 128);
  (*(v0 + 656))(*(v0 + 544), *(v0 + 536));

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v1 = v0[67];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[17];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  Publisher.removeDuplicates(by:)();
  (*(v7 + 8))(v4, v6);
  *(swift_allocObject() + 16) = v8;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd);
  Publisher.filter(_:)();

  (*(v3 + 8))(v2, v5);
  v0[84] = *(v1 + 328);
  v0[85] = (v1 + 328) & 0xFFFFFFFFFFFFLL | 0x5804000000000000;
  v9 = v0[72];
  v10 = v0[71];

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v10, v9);
}

{
  v1 = *(v0 + 128);
  (*(v0 + 672))(*(v0 + 544), *(v0 + 536));

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v12 = v0[78];
  v1 = v0[75];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[56];
  v13 = v0[37];
  v6 = v0[17];
  v14 = v0[16];
  Publisher<>.removeDuplicates()();
  v1(v3, v5);
  *(swift_allocObject() + 16) = v6;
  Publisher.filter(_:)();

  v12(v2, v4);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.RemoveDuplicates<Published<String?>.Publisher>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.RemoveDuplicates<Published<Bool?>.Publisher>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGMd);
  Publisher.combineLatest<A, B, C>(_:_:_:)();
  v7 = lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(&lazy protocol witness table cache variable for type CloudSuggestionsDB and conformance CloudSuggestionsDB, type metadata accessor for CloudSuggestionsDB);
  v8 = swift_task_alloc();
  v0[86] = v8;
  *(v8 + 16) = v14;
  *(v8 + 24) = v13;
  v9 = swift_task_alloc();
  v0[87] = v9;
  *v9 = v0;
  v9[1] = CloudSuggestionsDB.initialized();
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v9, v14, v7, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #6 in CloudSuggestionsDB.initialized(), v8, v10);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v26 = v0;
  v1 = v0[16];
  v2 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
  v3 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_protectedDataAvailableSubscription) = v3;

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = __swift_project_value_buffer(v5, static CloudSuggestionsDB.Log);
  v0[88] = v7;
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[89] = v8;
  v0[90] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[29];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446466;
    swift_beginAccess();
    v17 = StaticString.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v25);
    _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s Waiting for CloudManager to see our dbManager", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  v20 = *(v14 + 8);
  v20(v12, v13);
  v0[91] = v20;
  v21 = v0[67] + 256;
  v0[92] = *v21;
  v0[93] = v21 & 0xFFFFFFFFFFFFLL | 0x114E000000000000;
  v22 = v0[72];
  v23 = v0[71];

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v23, v22);
}

{
  v1 = *(v0 + 128);
  (*(v0 + 736))(*(v0 + 544), *(v0 + 536));

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v1, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  MEMORY[0x21CE912F0](v3, v4);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), 0, 0);
}

{
  (*(v0[22] + 16))(v0[23], v0[24], v0[21]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = CloudSuggestionsDB.initialized();
  v3 = v0[18];

  return MEMORY[0x282200308](v0 + 14, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[19];
    v3 = v2[20];
    v5 = v2[18];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudSuggestionsDB.initialized();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[14];
  v0[95] = v1;
  if (v1 == 1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v4 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v4 + 8))(v2, v3);
    v5 = v0[16];

    return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v5, 0);
  }

  else
  {
    v0[15] = v1;
    v6 = swift_task_alloc();
    v0[96] = v6;
    *v6 = v0;
    v6[1] = CloudSuggestionsDB.initialized();
    v7 = v0[16];

    return specialized closure #8 in CloudSuggestionsDB.initialized()(v0 + 15, v7);
  }
}

{
  if (*(v0 + 776) == 1)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    (*(v3 + 8))(v1, v2);
    v4 = *(v0 + 128);

    return MEMORY[0x2822009F8](CloudSuggestionsDB.initialized(), v4, 0);
  }

  else
  {
    v5 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
    v6 = swift_task_alloc();
    *(v0 + 752) = v6;
    *v6 = v0;
    v6[1] = CloudSuggestionsDB.initialized();
    v7 = *(v0 + 144);

    return MEMORY[0x282200308](v0 + 112, v7, v5);
  }
}

{
  v45 = v0;
  (*(v0 + 712))(*(v0 + 240), *(v0 + 704), *(v0 + 224));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v28 = *(v0 + 728);
    v42 = *(v0 + 520);
    v3 = *(v0 + 504);
    v4 = *(v0 + 496);
    v36 = *(v0 + 432);
    v38 = *(v0 + 424);
    v40 = *(v0 + 440);
    v5 = *(v0 + 360);
    v32 = *(v0 + 512);
    v34 = *(v0 + 368);
    v30 = *(v0 + 352);
    v6 = *(v0 + 264);
    v26 = *(v0 + 272);
    v24 = *(v0 + 240);
    v25 = *(v0 + 256);
    v23 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v7 = 136446466;
    swift_beginAccess();
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v44);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v44);
    _os_log_impl(&dword_21607C000, v1, v2, "%{public}s.%{public}s CloudManager saw our dbManager", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);

    swift_unknownObjectRelease();
    v28(v24, v23);
    (*(v6 + 8))(v26, v25);
    v12 = *(v3 + 8);
    v12(v32, v4);
    (*(v5 + 8))(v34, v30);
    (*(v36 + 8))(v40, v38);
    v12(v42, v4);
  }

  else
  {
    v29 = *(v0 + 728);
    v43 = *(v0 + 520);
    v13 = *(v0 + 504);
    v14 = *(v0 + 432);
    v39 = *(v0 + 424);
    v41 = *(v0 + 440);
    v15 = *(v0 + 360);
    v35 = *(v0 + 512);
    v37 = *(v0 + 368);
    v31 = *(v0 + 496);
    v33 = *(v0 + 352);
    v16 = *(v0 + 264);
    v27 = *(v0 + 272);
    v17 = *(v0 + 256);
    v18 = *(v0 + 240);
    v19 = *(v0 + 224);

    swift_unknownObjectRelease();
    v29(v18, v19);
    (*(v16 + 8))(v27, v17);
    v20 = *(v13 + 8);
    v20(v35, v31);
    (*(v15 + 8))(v37, v33);
    (*(v14 + 8))(v41, v39);
    v20(v43, v31);
  }

  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  static CloudLog.LogEndInfo(_:)("initialized()", 13, 2, *(v0 + 136), &protocol witness table for CloudSuggestionsDB);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t CloudSuggestionsDB.initialized()(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 760);
  if (v1)
  {
    v8 = *(v5 + 152);
    v7 = *(v5 + 160);
    v9 = *(v5 + 144);

    outlined consume of DBManager??(v6);
    (*(v8 + 8))(v7, v9);
    v10 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    *(v5 + 776) = a1 & 1;
    outlined consume of DBManager??(v6);
    v10 = CloudSuggestionsDB.initialized();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t closure #2 in CloudSuggestionsDB.initialized()(char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446722;
    swift_beginAccess();
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v20);
    *(v10 + 22) = 2080;
    v19[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_21607C000, v8, v9, "%{public}s.%{public}s Got onboarded: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v11, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

BOOL closure #3 in CloudSuggestionsDB.initialized()(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 3)
  {
    if (v4 == 3)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v4 == 3)
  {
    return 0;
  }

  v7 = 0xE900000000000064;
  v8 = 0x65696E6544636374;
  v9 = 0xE800000000000000;
  if (v2 == 1)
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v8 = 0x6E4964656E676973;
  }

  if (*a1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x754F64656E676973;
  }

  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE900000000000074;
  }

  v12 = 0x65696E6544636374;
  if (v4 != 1)
  {
    v12 = 0x6E4964656E676973;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x754F64656E676973;
  }

  if (*a2)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0xE900000000000074;
  }

  if (v10 == v13 && v11 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_27:
  result = (v3 | v5) == 0;
  if (v3)
  {
    v16 = v5 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    v17 = v5;
    v18 = v3;
    v19 = static NSObject.== infix(_:_:)();

    return v19 & 1;
  }

  return result;
}

uint64_t closure #4 in CloudSuggestionsDB.initialized()(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v8, v2);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v32 = v7;
    v33 = v11;
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v12 = 136446978;
    swift_beginAccess();
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v34);
    *(v12 + 22) = 2080;
    v16 = 0xE900000000000074;
    v17 = 0x754F64656E676973;
    v18 = 0xE800000000000000;
    v19 = 0x6E4964656E676973;
    if (v6 != 2)
    {
      v19 = 7104878;
      v18 = 0xE300000000000000;
    }

    if (v6)
    {
      v17 = 0x65696E6544636374;
      v16 = 0xE900000000000064;
    }

    if (v6 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v6 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2080;
    if (v32)
    {
      v23 = [v9 recordName];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v33;
    }

    else
    {
      v26 = 0xE300000000000000;
      v27 = v33;
      v24 = 7104878;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v34);

    *(v12 + 34) = v28;
    _os_log_impl(&dword_21607C000, v10, v27, "%{public}s.%{public}s Got accountState: (%s, %s)", v12, 0x2Au);
    v29 = v31;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

uint64_t closure #1 in CloudSuggestionsDB.initialized()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v6 + 16))(v8, v11, v5);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v10;
    v17 = v16;
    v30 = v16;
    *v15 = 136446722;
    swift_beginAccess();
    v18 = StaticString.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v30);
    *(v15 + 22) = 2080;
    v28 = v26;
    v29 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_21607C000, v12, v13, v27, v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v17, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t closure #6 in CloudSuggestionsDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v40 = a1;
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v3 = *(v39 - 8);
  v38 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC0A7Latest4Vy_AC6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGAIy_AKy_AOySbSg_GGGAIy_AKy_AOy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGASGSo17OS_dispatch_queueCGMd);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v42 = v20;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AC6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGAGy_AIy_AMySbSg_GGGAGy_AIy_AMy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGAQGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<Publishers.Filter<Publishers.RemoveDuplicates<Published<String?>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<Bool?>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<String?>.Publisher>>> and conformance Publishers.CombineLatest4<A, B, C, D>, &_s7Combine10PublishersO0A7Latest4Vy_AC6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGAGy_AIy_AMySbSg_GGGAGy_AIy_AMy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGAQGMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of UTType?(v7, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v32 + 8))(v14, v33);
  v22 = v36;
  v23 = v39;
  (*(v3 + 16))(v36, v40, v39);
  v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 16) = v41;
  *(v25 + 24) = v19;
  (*(v3 + 32))(v25 + v24, v22, v23);
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in closure #6 in CloudSuggestionsDB.initialized();
  *(v27 + 24) = v25;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CombineLatest4<Publishers.Filter<Publishers.RemoveDuplicates<Published<String?>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<Bool?>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher>>, Publishers.Filter<Publishers.RemoveDuplicates<Published<String?>.Publisher>>>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC0A7Latest4Vy_AC6FilterVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGGAIy_AKy_AOySbSg_GGGAIy_AKy_AOy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGGASGSo17OS_dispatch_queueCGMd);

  v28 = v34;
  v29 = Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v18, v28);
  *(v26 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_modeChangeSubscription) = v29;
}

uint64_t closure #1 in closure #6 in CloudSuggestionsDB.initialized()(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a6;
  v34 = a7;
  v32 = a1;
  v15 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v17 = *(v16 - 8);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  if (v15 != 2)
  {
    v30 = *a4;
    v31 = "deleteCKRecordZone(_:purged:)";
    (*(v17 + 16))(v20, a10, v16);
    v21 = a2;
    v22 = a8;
    v23 = (*(v17 + 80) + 80) & ~*(v17 + 80);
    v24 = swift_allocObject();
    v25 = v32;
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    *(v24 + 32) = v21;
    *(v24 + 40) = a3 & 1;
    *(v24 + 41) = v30;
    v26 = v33;
    v27 = v34;
    *(v24 + 48) = a5;
    *(v24 + 56) = v26;
    *(v24 + 64) = v27;
    *(v24 + 72) = a9;
    (*(v17 + 32))(v24 + v23, v20, v16);

    v28 = a5;

    return specialized BTask.init(name:operation:)(0xD000000000000037, v31 | 0x8000000000000000, &async function pointer to partial apply for closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized(), v24);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 96) = v10;
  *(v8 + 146) = a7;
  *(v8 + 145) = a6;
  *(v8 + 80) = a5;
  *(v8 + 88) = a8;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized(), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized()()
{
  *(v0 + 144) = *(v0 + 146);
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = [v1 recordName];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 128) = v5;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized();
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 145);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  return CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(v11, v10, v9, (v0 + 144), v3, v5, v7, v8);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized(), 0, 0);
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = *(v0 + 112);
    swift_beginAccess();
    *(v2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #7 in CloudSuggestionsDB.initialized()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #7 in CloudSuggestionsDB.initialized(), v6);
  }

  return result;
}

uint64_t closure #1 in closure #7 in CloudSuggestionsDB.initialized()()
{
  CloudSuggestionsDB.handleProtectedDataAvailable()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudSuggestionsDB.handleProtectedDataAvailable()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for URL();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v1;
  static Published.subscript.getter();

  if (v34)
  {
  }

  v30 = v11;
  v31 = v8;
  v15 = v32;
  v16 = v33;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state + 16))
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(&lazy protocol witness table cache variable for type CloudSuggestionsDB and conformance CloudSuggestionsDB, type metadata accessor for CloudSuggestionsDB);
    v19 = swift_allocObject();
    v19[2] = v1;
    v19[3] = v18;
    v19[4] = v1;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CloudSuggestionsDB.handleProtectedDataAvailable(), v19);
  }

  v21 = v5;
  static Date.now.getter();
  v22 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  (*(v16 + 16))(v7, v14 + v22, v21);
  swift_beginAccess();
  LOBYTE(v22) = _s9MomentsUI10CloudSubDBPAAE15bgAssertDBFiles5dbURL9className11mustAcquireSb10Foundation0J0V_s12StaticStringVSbtFZAA0c4SyncE0C_Tt2g5(v7, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0, 1);
  (*(v16 + 8))(v7, v21);
  v23 = v15;
  v24 = v31;
  if (v22)
  {
    v25 = *(v15 + 16);
    v26 = v30;
    v25(v30, v13, v31);
    v27 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshSuccess;
    swift_beginAccess();
    (*(v23 + 40))(v14 + v27, v26, v24);
    swift_endAccess();
  }

  v28 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshAttempt;
  swift_beginAccess();
  (*(v23 + 40))(v14 + v28, v13, v24);
  return swift_endAccess();
}

uint64_t closure #1 in CloudSuggestionsDB.handleProtectedDataAvailable()()
{
  v1 = v0[2] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[3] = v2;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = closure #1 in CloudSuggestionsDB.handleProtectedDataAvailable();

  return CloudSuggestionsDB._openDatabase(snapshotGeneration:)(v3, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CloudSuggestionsDB._openDatabase(snapshotGeneration:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd);
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd);
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd);
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v3[41] = swift_task_alloc();
  v8 = type metadata accessor for ModelConfiguration();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v3[46] = v9;
  v3[47] = *(v9 - 8);
  v3[48] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v2, 0);
}

uint64_t CloudSuggestionsDB._openDatabase(snapshotGeneration:)()
{
  *(v0 + 424) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 432) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v2, v1);
}

{
  v1 = v0[53];
  v2 = v0[28];

  v0[55] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v2, 0);
}

{
  v1 = v0[55];
  v2 = [v1 isProtectedDataAvailable];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v0[23];
  if (v3)
  {

    if (v2)
    {
      v5 = v0[47];
      v4 = v0[48];
      v6 = v0[46];
      v7 = v0[28];
      static Date.now.getter();
      v8 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
      swift_beginAccess();
      (*(v5 + 16))(v4, v7 + v8, v6);
      swift_beginAccess();
      LOBYTE(v7) = _s9MomentsUI10CloudSubDBPAAE15bgAssertDBFiles5dbURL9className11mustAcquireSb10Foundation0J0V_s12StaticStringVSbtFZAA0c4SyncE0C_Tt2g5(v4, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0, 1);
      (*(v5 + 8))(v4, v6);
      if (v7)
      {
        v9 = v0[51];
        v10 = v0[49];
        v11 = v0[50];
        v12 = v0[28];
        (*(v11 + 16))(v9, v0[52], v10);
        v13 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshSuccess;
        swift_beginAccess();
        (*(v11 + 40))(v12 + v13, v9, v10);
        swift_endAccess();
      }

      v14 = v0[52];
      v15 = v0[49];
      v16 = v0[50];
      v17 = v0[28];
      v18 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshAttempt;
      swift_beginAccess();
      (*(v16 + 40))(v17 + v18, v14, v15);
      swift_endAccess();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v0[25] = v3;

    static Published.subscript.setter();
  }

  else
  {
    v24 = v0[47];
    v23 = v0[48];
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[43];
    v35 = v0[44];
    v36 = v0[42];
    v28 = v0[28];
    v37 = v0[27];
    v38 = v0[26];
    v29 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
    swift_beginAccess();
    v30 = (*(v24 + 16))(v23, v28 + v29, v25);
    MEMORY[0x21CE91CE0](v30);
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v27 + 16))(v35, v26, v36);
    type metadata accessor for DBManager();
    swift_allocObject();

    v31 = DBManager.init(configuration:snapshotGeneration:isProtectedDataAvailable:)(v35, v38, v37, v2);
    v0[56] = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[24] = v31;
    swift_retain_n();

    static Published.subscript.setter();
    if (v31)
    {
      v32 = swift_task_alloc();
      v0[57] = v32;
      *v32 = v0;
      v32[1] = CloudSuggestionsDB._openDatabase(snapshotGeneration:);

      return DBManager.initialized()();
    }

    (*(v0[43] + 8))(v0[45], v0[42]);
    v3 = v0[56];
  }

  v0[58] = v3;
  v19 = v0[27];
  if (v19)
  {
    if (v3)
    {
      v20 = swift_task_alloc();
      v0[59] = v20;
      *v20 = v0;
      v20[1] = CloudSuggestionsDB._openDatabase(snapshotGeneration:);
      v21 = v0[26];

      return DBManager.setSnapshotGeneration(_:)(v21, v19);
    }

    goto LABEL_20;
  }

  if (!v3)
  {
LABEL_20:
    *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;

    *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

    v33 = v0[1];
    v34 = v0[58];

    return v33(v34);
  }

  v0[60] = v3;

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v3, 0);
}

{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  (*(v0[43] + 8))(v0[45], v0[42]);
  v1 = v0[56];
  v0[58] = v1;
  v2 = v0[27];
  if (v2)
  {
    if (v1)
    {
      v3 = swift_task_alloc();
      v0[59] = v3;
      *v3 = v0;
      v3[1] = CloudSuggestionsDB._openDatabase(snapshotGeneration:);
      v4 = v0[26];

      return DBManager.setSnapshotGeneration(_:)(v4, v2);
    }

    goto LABEL_10;
  }

  if (!v1)
  {
LABEL_10:
    *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;

    *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

    v6 = v0[1];
    v7 = v0[58];

    return v6(v7);
  }

  v0[60] = v1;

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  v1 = *(v0 + 464);
  *(v0 + 480) = v1;
  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  v1 = *(v0 + 224);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  Publisher<>.removeDuplicates()();
  (*(v6 + 8))(v3, v5);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<Bool>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySb_GGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  v8 = v0[58];
  *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = v7;

  if (v8)
  {
    v9 = v0[58];

    return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v9, 0);
  }

  else
  {
    *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

    v10 = v0[1];
    v11 = v0[58];

    return v10(v11);
  }
}

{
  v1 = *(v0 + 224);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._openDatabase(snapshotGeneration:), v1, 0);
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd);
  Publisher.removeDuplicates(by:)();
  (*(v6 + 8))(v3, v5);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  *(v0[28] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = v7;

  v8 = v0[1];
  v9 = v0[58];

  return v8(v9);
}

uint64_t closure #1 in CloudSuggestionsDB._openDatabase(snapshotGeneration:)()
{

  CurrentValueSubject.send(_:)();
}

uint64_t closure #2 in CloudSuggestionsDB._openDatabase(snapshotGeneration:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 17);
  if ((*(a1 + 17) & 1) == 0)
  {
    v3 = *a2;
    if (*(a2 + 17))
    {
      v3 = 0;
    }

    if (*a1 != v3)
    {
      v2 = 1;
    }

    if (*(a1 + 16))
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = (*(a1 + 8) == a2[1]) & ~*(a2 + 16);
    }

    if (v2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  return v2 & 1;
}

uint64_t closure #3 in CloudSuggestionsDB._openDatabase(snapshotGeneration:)()
{

  PassthroughSubject.send(_:)();
}

uint64_t CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 464) = a8;
  *(v9 + 472) = v8;
  *(v9 + 448) = a6;
  *(v9 + 456) = a7;
  *(v9 + 432) = a2;
  *(v9 + 440) = a5;
  *(v9 + 372) = a3;
  *(v9 + 424) = a1;
  *(v9 + 480) = *v8;
  type metadata accessor for ModelConfiguration.CloudKitDatabase();
  *(v9 + 488) = swift_task_alloc();
  v11 = type metadata accessor for ModelConfiguration();
  *(v9 + 496) = v11;
  *(v9 + 504) = *(v11 - 8);
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  *(v9 + 528) = v12;
  *(v9 + 536) = *(v12 - 8);
  *(v9 + 544) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);
  *(v9 + 552) = v13;
  *(v9 + 560) = *(v13 - 8);
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v9 + 584) = v14;
  *(v9 + 592) = *(v14 - 8);
  *(v9 + 600) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v9 + 608) = v15;
  *(v9 + 616) = *(v15 - 8);
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 373) = *a4;

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v8, 0);
}

uint64_t CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)()
{
  v158 = v0;
  v1 = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_21658E7C0;
  v4 = MEMORY[0x277D837D0];
  v5 = MEMORY[0x277D83838];
  if (v1)
  {
    v6 = *(v0 + 424);
    v7 = MEMORY[0x277D83838];
    v8 = v1;
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v9 = 0;
    v7 = 0;
    *(v2 + 48) = 0;
  }

  v10 = *(v0 + 373);
  v11 = *(v0 + 448);
  v12 = *(v0 + 372);
  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  *(v2 + 56) = v9;
  *(v2 + 64) = v7;
  v13 = MEMORY[0x277D839D8];
  *(v2 + 96) = MEMORY[0x277D839B0];
  *(v2 + 104) = v13;
  *(v2 + 72) = v12;
  *(v0 + 370) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd);
  v14 = String.init<A>(describing:)();
  v3[17] = v4;
  v3[18] = v5;
  v3[14] = v14;
  v3[15] = v15;
  if (v11)
  {
    v16 = *(v0 + 440);
    v17 = MEMORY[0x277D83838];
    v18 = MEMORY[0x277D837D0];
    v19 = *(v0 + 448);
  }

  else
  {
    v16 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v3[21] = 0;
  }

  v20 = *(v0 + 480);
  v21 = *(v0 + 456);
  v22 = *(v0 + 464);
  v3[19] = v16;
  v3[20] = v19;
  v3[22] = v18;
  v3[23] = v17;
  v3[27] = v4;
  v3[28] = v5;
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 7104878;
  }

  v24 = 0xE300000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v3[24] = v23;
  v3[25] = v24;

  static CloudLog.LogBeginInfo(_:_:)(v3, "_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v20, &protocol witness table for CloudSuggestionsDB);

  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 624);
    v26 = *(v0 + 616);
    v27 = *(v0 + 608);
    v28 = __swift_project_value_buffer(v27, static CloudSuggestionsDB.Log);
    swift_beginAccess();
    (*(v26 + 16))(v25, v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    v33 = *(v0 + 616);
    v34 = *(v0 + 608);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v157[0] = v36;
      *v35 = 136446466;
      swift_beginAccess();
      v37 = StaticString.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v157);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, v157);
      _os_log_impl(&dword_21607C000, v29, v30, "%{public}s.%{public}s DEBUG_NO_NETWORK: Leave suggestion DB state alone", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v36, -1, -1);
      MEMORY[0x21CE94770](v35, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 400))
    {

LABEL_21:
      static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, *(v0 + 480), &protocol witness table for CloudSuggestionsDB);

      v40 = *(v0 + 8);

      return v40();
    }

    *(v0 + 824) = objc_opt_self();
    type metadata accessor for MainActor();
    *(v0 + 832) = static MainActor.shared.getter();
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v53 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    v54 = v50;
    v55 = v52;
    goto LABEL_88;
  }

  v140 = v1;
  v42 = *(v0 + 472);
  swift_beginAccess();
  v43 = qword_2811A6918;
  v138 = static CloudManager.currentID;
  swift_beginAccess();
  v143 = static CloudManager.systemIdiom;
  v44 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  *(v0 + 656) = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  v45 = v42 + v44;
  v46 = *(v42 + v44 + 16);
  v48 = *(v42 + v44);
  v47 = *(v45 + 8);
  if (v47)
  {
    if (!v48 && v47 == 0xE000000000000000 || (v49 = *(v45 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      if (*(v0 + 373) == 3)
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        goto LABEL_34;
      }

      v48 = *(v0 + 440);
      v49 = *(v0 + 448);
    }
  }

  else
  {
    v49 = 0;
  }

  swift_bridgeObjectRetain_n();
LABEL_34:
  v142 = v48;
  v56 = one-time initialization token for Log;
  v146 = v43;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 648);
  v58 = *(v0 + 616);
  v59 = *(v0 + 608);
  v60 = __swift_project_value_buffer(v59, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  v154 = v60;
  v153 = *(v58 + 16);
  v153(v57, v60, v59);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  v155 = v49;
  v152 = v45;
  if (!os_log_type_enabled(v61, v62))
  {
    v68 = *(v0 + 648);
    v69 = *(v0 + 616);
    v70 = *(v0 + 608);

    v71 = *(v69 + 8);
    v71(v68, v70);
    v72 = v146;
    if (!v22)
    {
      goto LABEL_57;
    }

LABEL_39:
    v148 = *(v0 + 456);
    v150 = *(v0 + 464);
    if (!v143)
    {
      goto LABEL_58;
    }

    goto LABEL_40;
  }

  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v157[0] = v64;
  *v63 = 136446978;
  swift_beginAccess();
  v65 = StaticString.description.getter();
  v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v157);

  *(v63 + 4) = v67;
  *(v63 + 12) = 2082;
  *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, v157);
  *(v63 + 22) = 2082;
  v137 = v46;
  v80 = *(v0 + 616);
  v149 = *(v0 + 608);
  v151 = *(v0 + 648);
  v81 = StaticString.description.getter();
  v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v157);

  *(v63 + 24) = v83;
  *(v63 + 32) = 2080;
  if (v49)
  {
    v84 = v142;
  }

  else
  {
    v84 = 7104878;
  }

  if (v49)
  {
    v85 = v49;
  }

  else
  {
    v85 = 0xE300000000000000;
  }

  v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v157);

  *(v63 + 34) = v86;
  _os_log_impl(&dword_21607C000, v61, v62, "%{public}s.%{public}s currentMode %{public}s, currentUser %s", v63, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v64, -1, -1);
  MEMORY[0x21CE94770](v63, -1, -1);

  v71 = *(v80 + 8);
  v71(v151, v149);
  v45 = v152;
  v46 = v137;
  v72 = v146;
  if (v22)
  {
    goto LABEL_39;
  }

LABEL_57:
  v148 = *(v45 + 24);
  v150 = *(v45 + 32);

  if (!v143)
  {
LABEL_58:
    v87 = *(v0 + 373);
    if (v87 < 2)
    {

      v76 = 0;
      v77 = 0;
      LODWORD(v75) = 1;
      goto LABEL_73;
    }

    if (v87 != 2)
    {

LABEL_66:
      v77 = v155;

      LODWORD(v75) = v46;
      v76 = v142;
      goto LABEL_73;
    }

    if (v140)
    {
      if (v138 == *(v0 + 424) && *(v0 + 432) == v72)
      {

        LODWORD(v75) = 2;
        goto LABEL_72;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        LODWORD(v75) = 2;
        goto LABEL_72;
      }
    }

    else
    {
    }

    LODWORD(v75) = 1;
    goto LABEL_72;
  }

LABEL_40:
  v73 = *(v0 + 372);

  if (v73 != 1 || (v74 = *(v0 + 373), v74 < 2))
  {
    LODWORD(v75) = 0;
    v76 = 0;
    v77 = 0;
    goto LABEL_73;
  }

  if (v74 != 2)
  {
    goto LABEL_66;
  }

  if (v140 && ((v78 = *(v0 + 432), (v78 & 0x2000000000000000) != 0) ? (v79 = HIBYTE(v78) & 0xF) : (v79 = *(v0 + 424) & 0xFFFFFFFFFFFFLL), v79))
  {
    LODWORD(v75) = 3;
  }

  else
  {
    LODWORD(v75) = 0;
  }

LABEL_72:
  v76 = *(v0 + 440);
  v77 = *(v0 + 448);

LABEL_73:
  v147 = v77;
  if (v46 <= 1)
  {
    if (v46)
    {
      goto LABEL_77;
    }

LABEL_79:

LABEL_80:
    LOBYTE(v89) = 1;
    goto LABEL_81;
  }

  if (v46 == 2)
  {
LABEL_77:

    v89 = 9u >> (v75 & 0xF);
LABEL_81:
    v156 = v89;
    goto LABEL_82;
  }

  if (v75 <= 2)
  {
    goto LABEL_79;
  }

  if (v155)
  {
    if (!v77 || !v142 && v155 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v142 == v76 && v155 == v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v156 = 0;
    }

    else
    {
      v145 = v71;
      v153(*(v0 + 640), v154, *(v0 + 608));

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();

      v122 = os_log_type_enabled(v120, v121);
      v123 = *(v0 + 640);
      v139 = *(v0 + 608);
      if (v122)
      {
        v136 = *(v0 + 640);
        v124 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v157[0] = v135;
        *v124 = 136447490;
        swift_beginAccess();
        v125 = StaticString.description.getter();
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, v157);

        *(v124 + 4) = v127;
        *(v124 + 12) = 2082;
        *(v124 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, v157);
        *(v124 + 22) = 2080;
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v155, v157);

        *(v124 + 24) = v128;
        *(v124 + 32) = 2080;
        *(v124 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v157);
        *(v124 + 42) = 2082;
        v129 = StaticString.description.getter();
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v157);

        *(v124 + 44) = v131;
        *(v124 + 52) = 2082;
        v132 = StaticString.description.getter();
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, v157);

        *(v124 + 54) = v134;
        v45 = v152;
        _os_log_impl(&dword_21607C000, v120, v121, "%{public}s.%{public}s Will delete since it looks like the user changed from %s to %s, during a mode change from %{public}s to %{public}s", v124, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v135, -1, -1);
        MEMORY[0x21CE94770](v124, -1, -1);

        v71 = v145;
        v145(v136, v139);
        goto LABEL_80;
      }

      v71 = v145;
      v145(v123, v139);
      v156 = 1;
    }
  }

  else
  {
    v156 = 0;
  }

LABEL_82:
  v153(*(v0 + 632), v154, *(v0 + 608));
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v144 = v71;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v157[0] = v93;
    *v92 = 136446978;
    swift_beginAccess();
    v94 = StaticString.description.getter();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v157);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2082;
    *(v92 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, v157);
    *(v92 + 22) = 2082;
    v99 = StaticString.description.getter();
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v157);

    *(v92 + 24) = v101;
    *(v92 + 32) = 2082;
    v141 = v75;
    v102 = *(v0 + 632);
    v103 = *(v0 + 608);
    v104 = StaticString.description.getter();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v157);

    *(v92 + 34) = v75;
    _os_log_impl(&dword_21607C000, v90, v91, "%{public}s.%{public}s Switching mode from %{public}s to %{public}s", v92, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v93, -1, -1);
    MEMORY[0x21CE94770](v92, -1, -1);

    v144(v102, v103);
    v45 = v152;
    LOBYTE(v75) = v141;
  }

  else
  {
    v97 = *(v0 + 632);
    v98 = *(v0 + 608);

    v71(v97, v98);
  }

  *v45 = v76;
  *(v45 + 8) = v147;
  *(v45 + 16) = v75;
  *(v45 + 24) = v148;
  *(v45 + 32) = v150;

  if (v156)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v54 = *(v0 + 384);
    *(v0 + 664) = v54;
    if (v54)
    {
      v53 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
      v55 = 0;
LABEL_88:

      return MEMORY[0x2822009F8](v53, v54, v55);
    }

    v106 = *(v0 + 600);
    v107 = *(v0 + 592);
    v108 = *(v0 + 584);
    v109 = *(v0 + 472);
    v110 = v109 + *(v0 + 656);
    v111 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
    swift_beginAccess();
    (*(v107 + 16))(v106, v109 + v111, v108);
    swift_beginAccess();
    static CloudSubDB.deleteDBFiles(dbURL:className:)(v106, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0);
    (*(v107 + 8))(v106, v108);
    *(v110 + 24) = 0;
    *(v110 + 32) = 0;
  }

  CloudSuggestionsDB.persistLocalData()();
  if (v112)
  {
  }

  v113 = *(v0 + 472);
  v114 = v113 + *(v0 + 656);
  if (*(v114 + 16) - 1 >= 2)
  {
    if (!*(v114 + 16))
    {
      *(v113 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = 0;

      *(v113 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;

      *(v113 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

      *(v0 + 371) = 0;

      CurrentValueSubject.send(_:)();

      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 369) = 1;

      PassthroughSubject.send(_:)();

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 376) = 0;

      static Published.subscript.setter();
      *(v114 + 24) = 0;
      *(v114 + 32) = 0;

      CloudSuggestionsDB.deleteLocalData()();
      if (v119)
      {
      }

      goto LABEL_21;
    }

    v116 = *(v114 + 24);
    v115 = *(v114 + 32);
    *(v0 + 760) = v115;

    v117 = swift_task_alloc();
    *(v0 + 768) = v117;
    *v117 = v0;
    v118 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
  }

  else
  {
    v116 = *(v114 + 24);
    v115 = *(v114 + 32);
    *(v0 + 680) = v115;

    v117 = swift_task_alloc();
    *(v0 + 688) = v117;
    *v117 = v0;
    v118 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
  }

  v117[1] = v118;

  return CloudSuggestionsDB._openDatabase(snapshotGeneration:)(v116, v115);
}

{
  DBManager.deleteAll()();
  *(v0 + 672) = v1;
  v2 = *(v0 + 472);
  if (v1)
  {
    v3 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
  }

  else
  {
    v3 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 392) = 0;

  static Published.subscript.setter();

  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 472);
  v5 = v4 + *(v0 + 656);
  v6 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  swift_beginAccess();
  static CloudSubDB.deleteDBFiles(dbURL:className:)(v1, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0);
  (*(v2 + 8))(v1, v3);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;

  CloudSuggestionsDB.persistLocalData()();
  if (v7)
  {
  }

  v8 = *(v0 + 472);
  v9 = v8 + *(v0 + 656);
  if (*(v9 + 16) - 1 < 2)
  {
    v11 = *(v9 + 24);
    v10 = *(v9 + 32);
    *(v0 + 680) = v10;

    v12 = swift_task_alloc();
    *(v0 + 688) = v12;
    *v12 = v0;
    v13 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
LABEL_12:
    v12[1] = v13;

    return CloudSuggestionsDB._openDatabase(snapshotGeneration:)(v11, v10);
  }

  if (*(v9 + 16))
  {
    v11 = *(v9 + 24);
    v10 = *(v9 + 32);
    *(v0 + 760) = v10;

    v12 = swift_task_alloc();
    *(v0 + 768) = v12;
    *v12 = v0;
    v13 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    goto LABEL_12;
  }

  *(v8 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = 0;

  *(v8 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;

  *(v8 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

  *(v0 + 371) = 0;

  CurrentValueSubject.send(_:)();

  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 369) = 1;

  PassthroughSubject.send(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 376) = 0;

  static Published.subscript.setter();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;

  CloudSuggestionsDB.deleteLocalData()();
  if (v14)
  {
  }

  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, *(v0 + 480), &protocol witness table for CloudSuggestionsDB);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[87];
  if (v1)
  {
    v2 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    v3 = 0;
LABEL_5:

    return MEMORY[0x2822009F8](v2, v1, v3);
  }

  v4 = (v0[59] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  v5 = *v4;
  v0[88] = *v4;
  if (v5)
  {
    v6 = v0[59] + v0[82];
    v7 = v4[1];
    v0[89] = v7;
    v0[90] = swift_getObjectType();
    v0[91] = *(v6 + 24);
    v0[92] = *(v6 + 32);
    v0[93] = *(v7 + 144);
    v0[94] = (v7 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
    swift_unknownObjectRetain();

    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v2 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    v1 = v8;
    v3 = v10;
    goto LABEL_5;
  }

  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 472);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v1, 0);
}

{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[59];
  v8 = v0[60];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v4, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<String?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);

  v10 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v7 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = v10;

  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 472);
  (*(v0 + 744))(*(v0 + 728), *(v0 + 736), *(v0 + 720), *(v0 + 712));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v1, 0);
}

{
  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, *(v0 + 480), &protocol witness table for CloudSuggestionsDB);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = (v0[59] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  v2 = *v1;
  v0[98] = *v1;
  if (v2)
  {
    v3 = v1[1];
    v0[99] = v3;
    v0[100] = swift_getObjectType();
    v0[101] = *(v3 + 328);
    v0[102] = (v3 + 328) & 0xFFFFFFFFFFFFLL | 0x5804000000000000;
    swift_unknownObjectRetain();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v5, v4);
  }

  else
  {

    *(v0[59] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = 0;

    static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = *(v0 + 472);
  (*(v0 + 808))(*(v0 + 800), *(v0 + 792));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v1, 0);
}

{
  v1 = v0[97];
  v2 = v0[71];
  v3 = v0[70];
  v13 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v8 = v0[59];
  v7 = v0[60];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v4, v6);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v1;
  v9[4] = v7;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<String?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);

  v10 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v2, v13);
  *(v0[59] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = v10;

  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[103];
  v2 = v0[59];

  v0[105] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v2, 0);
}

{
  v1 = v0[105];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v18 = v0[62];
  v8 = v0[59];
  v19 = [v1 isProtectedDataAvailable];

  v9 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  v10 = (*(v3 + 16))(v2, v8 + v9, v4);
  MEMORY[0x21CE91CE0](v10);
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  (*(v7 + 16))(v6, v5, v18);
  v11 = *(v8 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state + 24);
  v12 = *(v8 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state + 32);
  type metadata accessor for DBManager();
  swift_allocObject();

  v13 = DBManager.init(configuration:snapshotGeneration:isProtectedDataAvailable:)(v6, v11, v12, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[51] = v13;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v0[52];
  v0[106] = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    v0[107] = v15;
    *v15 = v0;
    v15[1] = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);

    return DBManager.initialized()();
  }

  else
  {
    (*(v0[63] + 8))(v0[65], v0[62]);
    static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

    v17 = v0[1];

    return v17();
  }
}

{
  v1 = *(*v0 + 472);

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v1, 0);
}

{
  (*(v0[63] + 8))(v0[65], v0[62]);
  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, v0[60], &protocol witness table for CloudSuggestionsDB);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 672);

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 472);
  v6 = v5 + *(v0 + 656);
  v7 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v7, v4);
  swift_beginAccess();
  static CloudSubDB.deleteDBFiles(dbURL:className:)(v2, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0);
  (*(v3 + 8))(v2, v4);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;

  CloudSuggestionsDB.persistLocalData()();
  if (v8)
  {
  }

  v9 = *(v0 + 472);
  v10 = v9 + *(v0 + 656);
  if (*(v10 + 16) - 1 < 2)
  {
    v12 = *(v10 + 24);
    v11 = *(v10 + 32);
    *(v0 + 680) = v11;

    v13 = swift_task_alloc();
    *(v0 + 688) = v13;
    *v13 = v0;
    v14 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
LABEL_12:
    v13[1] = v14;

    return CloudSuggestionsDB._openDatabase(snapshotGeneration:)(v12, v11);
  }

  if (*(v10 + 16))
  {
    v12 = *(v10 + 24);
    v11 = *(v10 + 32);
    *(v0 + 760) = v11;

    v13 = swift_task_alloc();
    *(v0 + 768) = v13;
    *v13 = v0;
    v14 = CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    goto LABEL_12;
  }

  *(v9 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerSnapshotGenerationChangesSubscription) = 0;

  *(v9 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerPendingDBChangesSubscription) = 0;

  *(v9 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_dbManagerLatestLocalSnapshotSequenceSubscription) = 0;

  *(v0 + 371) = 0;

  CurrentValueSubject.send(_:)();

  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 369) = 1;

  PassthroughSubject.send(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 376) = 0;

  static Published.subscript.setter();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;

  CloudSuggestionsDB.deleteLocalData()();
  if (v15)
  {
  }

  static CloudLog.LogEndInfo(_:)("_updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)", 72, 2, *(v0 + 480), &protocol witness table for CloudSuggestionsDB);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1)
{
  v2 = *(*v1 + 472);
  *(*v1 + 696) = a1;

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v2, 0);
}

{
  v2 = *(*v1 + 472);
  *(*v1 + 776) = a1;

  return MEMORY[0x2822009F8](CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v2, 0);
}

uint64_t closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a2 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  *(v8 + 24) = *a1;
  *(v8 + 32) = v6;

  if (v6)
  {

    _StringGuts.grow(_:)(52);
    swift_beginAccess();
    v10 = StaticString.description.getter();
    MEMORY[0x21CE92100](v10);

    MEMORY[0x21CE92100](46, 0xE100000000000000);
    MEMORY[0x21CE92100](0xD000000000000048, 0x8000000216579290);
    MEMORY[0x21CE92100](0xD00000000000002FLL, 0x80000002165792E0);
    v11 = swift_allocObject();
    v11[2] = v7;
    v11[3] = v6;
    v11[4] = a3;
    v11[5] = a4;

    return specialized BTask.init(name:operation:)(0, 0xE000000000000000, &async function pointer to partial apply for closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v11);
  }

  return result;
}

uint64_t closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = type metadata accessor for Logger();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), 0, 0);
}

uint64_t closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)()
{
  v24 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v3, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v7)
  {
    v21 = v0[8];
    v22 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446722;
    swift_beginAccess();
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, &v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v23);
    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Setting snapshot generation %s on DBManager", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (v0[10])
  {
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:);
    v18 = v0[8];
    v17 = v0[9];

    return DBManager.setSnapshotGeneration(_:)(v18, v17);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}