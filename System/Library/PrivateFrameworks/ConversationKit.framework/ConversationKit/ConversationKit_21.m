void (*LinkDetailHeaderView.$title.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailHeaderView.$title.modify;
}

id closure #1 in LinkDetailHeaderView.linkLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  [v0 setTextAlignment_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 labelColor];
  [v3 setTintColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  return v3;
}

id LinkDetailHeaderView.linkLabel.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in LinkDetailHeaderView.linkDetailImage.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_opt_self() effectForBlurEffect:v2 style:6];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 layer];
  v7 = [v0 layer];
  [v7 cornerRadius];
  v9 = v8;

  [v6 setCornerRadius_];
  [v5 setClipsToBounds_];
  v10 = [v5 contentView];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v10 setBackgroundColor_];

  [v0 addSubview_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v13 = [objc_opt_self() configurationWithTextStyle_];
  v14 = @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v11 whiteColor];
  [v16 setTintColor_];

  [v0 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4C48E0;
  v20 = [v5 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [v5 bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [v5 leadingAnchor];
  v27 = [v0 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v5 trailingAnchor];

  v30 = [v0 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  v32 = [v16 centerXAnchor];
  v33 = [v0 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v19 + 64) = v34;
  v35 = [v16 centerYAnchor];

  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v19 + 72) = v37;
  v38 = [v0 widthAnchor];
  v39 = [v38 constraintEqualToConstant_];

  *(v19 + 80) = v39;
  v40 = [v0 heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v19 + 88) = v41;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints_];

  return v0;
}

id LinkDetailHeaderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *LinkDetailHeaderView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd);
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title;
  v27 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v14, v6, v1);
  v15 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage) = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
  *(v0 + v16) = Dictionary.init(dictionaryLiteral:)();
  v17 = type metadata accessor for LinkDetailHeaderView();
  v26[0] = v0;
  v26[1] = v17;
  v18 = OUTLINED_FUNCTION_18_1();
  v21 = objc_msgSendSuper2(v19, v20, v18);
  v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x160);
  v23 = v21;
  v22();
  LinkDetailHeaderView.setupDisplayProperties()();
  if (specialized Array.count.getter(v15))
  {
    v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  LinkDetailHeaderView.populateHeaderImage(with:)(v24);

  return v23;
}

uint64_t type metadata accessor for LinkDetailHeaderView()
{
  result = type metadata singleton initialization cache for LinkDetailHeaderView;
  if (!type metadata singleton initialization cache for LinkDetailHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id LinkDetailHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LinkDetailHeaderView.init(coder:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__invitedMemberHandles;
  v16[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd);
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView__title;
  v16[0] = 0;
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v14, v6, v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage) = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
  *(v0 + v15) = Dictionary.init(dictionaryLiteral:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LinkDetailHeaderView.setupViews()()
{
  v1 = v0;
  v2 = LinkDetailHeaderView.linkDetailImage.getter();
  OUTLINED_FUNCTION_1_70(v2, sel_addSubview_);

  v3 = LinkDetailHeaderView.linkLabel.getter();
  OUTLINED_FUNCTION_1_70(v3, sel_addSubview_);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BC370;
  v5 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage;
  v6 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkDetailImage] topAnchor];
  v7 = [v1 safeAreaLayoutGuide];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [*&v1[v5] centerXAnchor];
  v11 = [v1 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel;
  v14 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel] topAnchor];
  v15 = [*&v1[v5] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];

  *(v4 + 48) = v16;
  v17 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  OUTLINED_FUNCTION_30_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *&v1[v17];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, 0, isUniquelyReferenced_nonNull_native);
  *&v1[v17] = v43;
  swift_endAccess();
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BA7F0;
  v21 = [*&v1[v13] centerXAnchor];
  v22 = [v1 centerXAnchor];
  v23 = OUTLINED_FUNCTION_79();
  v25 = [v23 v24];

  *(v20 + 32) = v25;
  v26 = [*&v1[v13] leadingAnchor];
  v27 = [v1 leadingAnchor];
  v28 = OUTLINED_FUNCTION_79();
  v30 = [v28 v29];

  *(v20 + 40) = v30;
  v31 = [*&v1[v13] trailingAnchor];
  v32 = [v1 trailingAnchor];
  v33 = OUTLINED_FUNCTION_79();
  v35 = [v33 v34];

  *(v20 + 48) = v35;
  v36 = [*&v1[v13] bottomAnchor];
  v37 = [v1 bottomAnchor];
  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v20 + 56) = v40;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  OUTLINED_FUNCTION_30_2();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&v1[v17];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x1E69E7CC0], 1, v42);
  *&v1[v17] = v44;
  swift_endAccess();
}

void LinkDetailHeaderView.setupDisplayProperties()()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  OUTLINED_FUNCTION_1();
  v14[1] = v1;
  v14[2] = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Set<TUHandle>?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  Publisher<>.sink(receiveValue:)();

  v12 = OUTLINED_FUNCTION_1_5();
  v13(v12);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in LinkDetailHeaderView.setupDisplayProperties()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = LinkDetailHeaderView.linkLabel.getter();
    if (v2)
    {
      v6 = MEMORY[0x1BFB209B0](v1, v2);
    }

    else
    {
      v6 = 0;
    }

    [v5 setText_];
  }
}

void closure #2 in LinkDetailHeaderView.setupDisplayProperties()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      LinkDetailHeaderView.populateHeaderImage(with:)(v1);
    }
  }
}

void LinkDetailHeaderView.populateHeaderImage(with:)(uint64_t a1)
{
  v57[5] = *MEMORY[0x1E69E9840];
  v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  v57[0] = 0;
  v7 = [v3 tu:isa contactsForHandles:v6 keyDescriptors:v57 error:?];

  v8 = v57[0];
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v8;
  }

  else
  {
    v11 = v57[0];
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = 0;
  }

  v55 = MEMORY[0x1E69E7CC0];
  v54 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v57[0];
    v13 = v57[1];
    v14 = v57[2];
    v15 = v57[3];
    v16 = v57[4];
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = (a1 + 56);
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = (v19 & *(a1 + 56));

    v15 = 0;
  }

  v20 = (v14 + 64) >> 6;
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v22 = v15;
  v23 = v16;
  v24 = v15;
  if (!v16)
  {
    while (1)
    {
      v24 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        goto LABEL_37;
      }

      v23 = v13[v24];
      ++v22;
      if (v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_15:
  v25 = (v23 - 1) & v23;
  v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
  if (v26)
  {
    while (1)
    {
      if (!v9 || !*(v9 + 16))
      {
        goto LABEL_31;
      }

      v27 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v28 & 1) == 0)
      {
        goto LABEL_30;
      }

      v29 = *(*(v9 + 56) + 8 * v27);

      if (v29 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_30:

LABEL_31:
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
          v33 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v26);
          v35 = v34;
          v36 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v26);
          v32 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v33, v35, v36, v37);
          goto LABEL_32;
        }
      }

      else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1BFB22010](0, v29);
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v30 = *(v29 + 32);
      }

      v31 = v30;

      v32 = v31;
LABEL_32:
      v38 = v32;
      MEMORY[0x1BFB20CC0](v32);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v21 = v55;
      v15 = v24;
      v16 = v25;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v26 = v56;
        v24 = v15;
        v25 = v16;
        if (v56)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_37:
  outlined consume of Set<TUHandle>.Iterator._Variant();
  v39 = specialized Array.count.getter(v21);
  v40 = v39 > 0;
  if (v39 < 1)
  {
    v41 = v54;
    v45 = *(v54 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController);
    if (!v45)
    {
      v40 = 0;
      goto LABEL_47;
    }

    v46 = [v45 view];
    if (v46)
    {
      v44 = v46;
      [v46 setHidden_];
      goto LABEL_44;
    }

LABEL_56:
    __break(1u);
    return;
  }

  v41 = v54;
  LinkDetailHeaderView.updateAvatarController(with:)();
  v42 = *(v54 + OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController);
  if (!v42)
  {
    v40 = 1;
    goto LABEL_47;
  }

  v43 = [v42 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_56;
  }

  v44 = v43;
  [v43 setHidden_];
LABEL_44:

LABEL_47:
  v47 = LinkDetailHeaderView.linkDetailImage.getter();
  [v47 setHidden_];

  v48 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
  swift_beginAccess();
  if (!specialized Dictionary.subscript.getter(v39 < 1, *(v41 + v48)))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v49 = v39 > 0;
  v50 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v50 deactivateConstraints_];

  if (!specialized Dictionary.subscript.getter(v49, *(v41 + v48)))
  {
    goto LABEL_54;
  }

  v52 = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_1_70(v53, sel_activateConstraints_);
}

void LinkDetailHeaderView.updateAvatarController(with:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_avatarController];
  if (!v3)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695D158]);

    v10 = OUTLINED_FUNCTION_36_14();
    v14 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v10, v11, v12, v13);
    v15 = [objc_allocWithZone(MEMORY[0x1E695D150]) initWithGroup_];
    v16 = [v15 view];
    if (v16)
    {
      v17 = v16;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];

      v18 = *&v1[v2];
      *&v1[v2] = v15;
      v19 = v15;

      v20 = OUTLINED_FUNCTION_41_11();
      if (v20)
      {
        v21 = v20;
        OUTLINED_FUNCTION_1_70(v20, sel_addSubview_);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BC4BA920;
        v23 = LinkDetailHeaderView.linkLabel.getter();
        v24 = [v23 topAnchor];

        v25 = OUTLINED_FUNCTION_41_11();
        if (v25)
        {
          v26 = v25;
          v27 = [v25 bottomAnchor];

          v28 = [v24 constraintEqualToAnchor:v27 constant:0.0];
          *(v22 + 32) = v28;
          v29 = OUTLINED_FUNCTION_41_11();
          if (v29)
          {
            v30 = v29;
            v31 = [v29 topAnchor];

            v32 = [v1 safeAreaLayoutGuide];
            v33 = [v32 topAnchor];

            v34 = [v31 constraintEqualToAnchor_];
            *(v22 + 40) = v34;
            v35 = OUTLINED_FUNCTION_41_11();
            if (v35)
            {
              v36 = v35;
              v37 = [v35 leadingAnchor];

              v38 = [v1 safeAreaLayoutGuide];
              v39 = [v38 leadingAnchor];

              v40 = [v37 constraintEqualToAnchor_];
              *(v22 + 48) = v40;
              v41 = OUTLINED_FUNCTION_41_11();
              if (v41)
              {
                v42 = v41;
                v43 = [v41 trailingAnchor];

                v44 = [v1 safeAreaLayoutGuide];
                v45 = [v44 trailingAnchor];

                v46 = [v43 constraintEqualToAnchor_];
                *(v22 + 56) = v46;
                v47 = OUTLINED_FUNCTION_41_11();

                if (v47)
                {
                  v48 = [v47 heightAnchor];

                  v49 = [v48 constraintEqualToConstant_];
                  *(v22 + 64) = v49;
                  v50 = OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView_constraintsForAvatarViewVisible;
                  OUTLINED_FUNCTION_30_2();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v53 = *&v1[v50];
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1, isUniquelyReferenced_nonNull_native);
                  *&v1[v50] = v53;
                  swift_endAccess();

                  return;
                }

                goto LABEL_19;
              }

LABEL_18:
              __break(1u);
LABEL_19:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  objc_allocWithZone(MEMORY[0x1E695D158]);
  v4 = v3;

  v5 = OUTLINED_FUNCTION_36_14();
  v52 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v5, v6, v7, v8);
  [v4 groupIdentityDidUpdate_];
}

id LinkDetailHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_30_0();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_6_45();
    v25(v24);
    OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)();
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSaySo18NSLayoutConstraintCGGMd, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSaySo18NSLayoutConstraintCGGMR, specialized _NativeDictionary._insert(at:key:value:), a9, a10, a11, a12, a13, a14);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSayyycGGMd, &_ss17_NativeDictionaryVy15ConversationKit33MultiwayViewConstraintsControllerC18OverallLayoutStateVSayyycGGMR, specialized _NativeDictionary._insert(at:key:value:), a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  OUTLINED_FUNCTION_12_32();
  specialized __RawDictionaryStorage.find<A>(_:)(v23 & 1, v22, v24 & v25);
  OUTLINED_FUNCTION_0_72();
  if (v28)
  {
    __break(1u);
    goto LABEL_13;
  }

  v29 = v26;
  v30 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  if (!OUTLINED_FUNCTION_16_30())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_32();
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v22, v20 & v31);
  if ((v30 & 1) != (v34 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v29 = v33;
LABEL_5:
  if (v30)
  {
    *(*(*v14 + 56) + 8 * v29) = v46;
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_3();

    return v43(v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, a11, a12, a13, a14);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSay15ConversationKit11ParticipantV7CaptionVGGMd, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSay15ConversationKit11ParticipantV7CaptionVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v38 = v16;
  v18 = v17;
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v19);
  OUTLINED_FUNCTION_0_72();
  if (v20)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for TUCallReceptionistState(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  v21 = OUTLINED_FUNCTION_5_43();
  v23 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v22);
  if (v23)
  {
    v26 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v26);
    OUTLINED_FUNCTION_7_43();
    if (!v27)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_14_21(v23, v24, v25, *v14);
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_1_3();

    return v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v38, a11, a12, a13, a14);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSaySo12RTTUtteranceCGGMd, &_ss17_NativeDictionaryVySo23TUCallReceptionistStateVSaySo12RTTUtteranceCGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSDySSAC11ApplicationVGGMd, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSDySSAC11ApplicationVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSayAC11ApplicationVGGMd, &_ss17_NativeDictionaryVy15ConversationKit28SharePlayDiscoverabilityTypeOSayAC11ApplicationVGGMR, specialized _NativeDictionary._insert(at:key:value:), a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_34_0();
  v40 = v17;
  v19 = v18;
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v20 & 1);
  OUTLINED_FUNCTION_0_72();
  if (v23)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v21;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(v19);
  v26 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v26, v27))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v15 & 1);
    OUTLINED_FUNCTION_9_32();
    if (!v29)
    {
      goto LABEL_14;
    }

    v24 = v28;
  }

  if (v25)
  {
    *(*(*v16 + 56) + 8 * v24) = v14;
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();

    return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40, a11, a12, a13, a14);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_72();
  if (v6)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for NSAttributedStringKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo21NSAttributedStringKeyayXlGMd);
  if (OUTLINED_FUNCTION_19_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v2;
  if (v8)
  {
    *(*(v11 + 56) + 8 * v7) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v7, a2, a1, v11);

    return a2;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v12);
  OUTLINED_FUNCTION_0_72();
  if (v13)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for CNKGameControllerButton(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo23CNKGameControllerButtonVSay15ConversationKit04GameD7ManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGGMd);
  v14 = OUTLINED_FUNCTION_5_43();
  v16 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
  if (v16)
  {
    v19 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v19);
    OUTLINED_FUNCTION_7_43();
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_14_21(v16, v17, v18, *v10);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    return specialized _NativeDictionary._insert(at:key:value:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1)
{
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_72();
  if (v5)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit34ContextMenuNotificationUserInfoKeyOypGMd);
  if (OUTLINED_FUNCTION_19_15())
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_7_43();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  v10 = *v1;
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_49_9();

    outlined init with take of Any(v11, v12);
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v6, a1, v10);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_10_28(v4, v5);
  specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  OUTLINED_FUNCTION_0_72();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(_ss17_NativeDictionaryVySSypGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    v9 = OUTLINED_FUNCTION_1_5();
    specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    OUTLINED_FUNCTION_9_32();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_49_9();
    OUTLINED_FUNCTION_49();

    return outlined init with take of Any(v12, v13);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_39_5();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v3, v0, v18);
    OUTLINED_FUNCTION_49();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySbSaySo18NSLayoutConstraintCGGMd);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v14, a2 & 1, a1, v18);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_46(a1, a2);
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_72();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
  v10 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_9_32();
    if (!v13)
    {
      goto LABEL_12;
    }

    v8 = v12;
  }

  v14 = *v3;
  if (v9)
  {
    v15 = OUTLINED_FUNCTION_49_9();

    outlined init with take of Any(v15, v16);
  }

  else
  {
    outlined init with copy of AnyHashable(v4, v17);
    specialized _NativeDictionary._insert(at:key:value:)(v8, v17, v2, v14);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double a2, double a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMd);
  result = OUTLINED_FUNCTION_19_15();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = (*(v14 + 56) + 16 * v10);
    *v15 = a2;
    v15[1] = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v10, a1, v14);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20_2();
  specialized __RawDictionaryStorage.find<A>(_:)(v7);
  OUTLINED_FUNCTION_0_72();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit19InCallControlsStateOSo6CGRectVGMd);
  result = OUTLINED_FUNCTION_19_15();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  if (v12)
  {
    v15 = (*(*v1 + 56) + 32 * v11);
    *v15 = v5;
    v15[1] = v4;
    v15[2] = v3;
    v15[3] = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();

    return specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18);
  }

  return result;
}

void type metadata completion function for LinkDetailHeaderView()
{
  type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<Set<TUHandle>?>, &_sShySo8TUHandleCGSgMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Set<TUHandle>?>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void outlined consume of SensitiveContentController.HistoryCheckStatus(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t outlined assign with take of (AutoplayAction, AutoplayCandidate)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ParticipantContactDetails.init(handle:cache:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();
  v8 = v9;

  static ParticipantContactDetails.initialsFor(_:)(v9);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.localizedUppercase.getter();
  v6 = v5;

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v4;
  a2[6] = v6;
  return result;
}

uint64_t TUHandle.formattedValue.getter()
{
  v1 = [v0 type];
  if (v1 == 2)
  {
    TUHandle.formattedPhoneNumber.getter();
    if (v2)
    {
      return OUTLINED_FUNCTION_46();
    }
  }

  else if (v1 != 3)
  {
    return OUTLINED_FUNCTION_46();
  }

  v3 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return OUTLINED_FUNCTION_46();
}

id ParticipantContactDetails.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ParticipantContactDetails.displayName.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ParticipantContactDetails.shortName.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ParticipantContactDetails.initials.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t static ParticipantContactDetails.defaultMeContactDetails.getter@<X0>(void *a1@<X8>)
{
  v4 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_14_2();
  v5.super.isa = v4;
  OUTLINED_FUNCTION_17_0(17741, 0xE200000000000000, v6, v7, v5);
  OUTLINED_FUNCTION_7_19();

  *a1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v2;
  return swift_bridgeObjectRetain_n();
}

uint64_t ParticipantContactDetails.init(contact:displayName:shortName:initials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t ParticipantContactDetails.init(contact:displayName:shortName:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  static ParticipantContactDetails.initialsFor(_:)(a1);
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.localizedUppercase.getter();
  v14 = v13;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v12;
  a6[6] = v14;
  return result;
}

uint64_t static ParticipantContactDetails.initialsFor(_:)(void *a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  PersonNameComponents.init()();
  if (a1)
  {
    v9 = [a1 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PersonNameComponents.givenName.setter();
    v10 = [a1 familyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_7_19();
  }

  else
  {
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.givenName.setter();
  }

  OUTLINED_FUNCTION_62_0();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  swift_beginAccess();
  v11 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_7_19();

  (*(v4 + 8))(v8, v2);
  return OUTLINED_FUNCTION_62_0();
}

uint64_t ParticipantContactDetails.init(meCard:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v4 = a1;
  static ParticipantContactDetails.initialsFor(_:)(a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.localizedUppercase.getter();
  v7 = v6;

  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v5;
  a2[6] = v7;
  return swift_bridgeObjectRetain_n();
}

__n128 ParticipantContactDetails.init(participant:cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ParticipantContactDetailsCache.contactDetails(for:)();

  outlined destroy of Participant(a1);
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

void ParticipantContactDetailsCache.contactDetails(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v121 = v3;
  v134 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v119 = v9 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v124 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v111 - v19;
  v20 = ParticipantContactDetailsCache.key(for:)(v2);
  v122 = v2;
  v123 = v20;
  v120 = v0;
  if (v20)
  {
    v21 = *(v0 + 24);
    v22 = v20;
    v23 = [v21 objectForKey_];
    if (v23)
    {
      v24 = v23;
      v117 = v6;
      v118 = v4;
      v25 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details];
      v26 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 8];
      v27 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 16];
      v114 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 24];
      v28 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 32];
      v113 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 40];
      v29 = *&v23[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 48];
      v115 = v25;
      v112 = v25;

      v30 = MEMORY[0x1BFB209B0](v26, v27);
      v31 = [v30 destinationIdIsTemporary];

      v2 = v122;
      if (!v31 || !*&v122[v10[9] + 8])
      {

        v32 = v121;
        *v121 = v115;
        v32[1] = v26;
        v33 = v114;
        v32[2] = v27;
        v32[3] = v33;
        v34 = v113;
        v32[4] = v28;
        v32[5] = v34;
        v32[6] = v29;
        goto LABEL_43;
      }

      v22 = v112;
      v0 = v120;
      v6 = v117;
      v4 = v118;
    }

    else
    {
      v2 = v122;
    }
  }

  v35 = *&v2[v10[7]];
  if (!v35)
  {
    v78 = *(v0 + 16);
    v79 = [objc_opt_self() settingsWithContactStore_];
    v80 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
    v81 = [v80 descriptorForRequiredKeys];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1BC4BAC30;
    *(v82 + 32) = v81;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v128 = 0;
    v18 = [v78 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    v84 = v128;
    if (v18)
    {
      v85 = v18;
      v86 = v84;
      v128 = static ParticipantContactDetails.initialsFor(_:)(v18);
      v129 = v87;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();
      OUTLINED_FUNCTION_17_27();

      v124 = v85;

      swift_unknownObjectRelease();
      swift_bridgeObjectRetain_n();
      v77 = 1;
    }

    else
    {
      v90 = v128;
      v91 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v92 = OUTLINED_FUNCTION_13_12();
      *(v92 + 16) = xmmword_1BC4BA940;
      v128 = v91;
      v93 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v94 = String.init<A>(reflecting:)();
      v96 = v95;
      *(v92 + 56) = MEMORY[0x1E69E6158];
      *(v92 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v92 + 32) = v94;
      *(v92 + 40) = v96;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v97 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_14_2();
      v98.super.isa = v97;
      OUTLINED_FUNCTION_17_0(17741, 0xE200000000000000, v99, v100, v98);
      OUTLINED_FUNCTION_17_27();

      v18 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
      swift_unknownObjectRelease();
      swift_bridgeObjectRetain_n();
      v77 = 0;
    }

    goto LABEL_38;
  }

  v117 = v6;
  v118 = v4;
  v115 = v35;
  v36 = [v115 value];
  if (!v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = MEMORY[0x1BFB209B0](v37);
  }

  LODWORD(v114) = [v36 destinationIdIsPseudonym];

  v38 = *&v2[v10[11]];
  v39 = 1 << *(v38 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v38 + 56);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  if (!v41)
  {
    while (1)
    {
LABEL_15:
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v44 >= v42)
      {
        break;
      }

      v41 = *(v38 + 56 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_19;
      }
    }

    v49 = v122;
    v50 = v123;
    if (v114)
    {
      goto LABEL_26;
    }

    v88 = 0;
    goto LABEL_32;
  }

LABEL_19:
  while (1)
  {
    outlined init with copy of Participant(*(v38 + 48) + *(v124 + 9) * (__clz(__rbit64(v41)) | (v43 << 6)), v18);
    outlined init with take of Participant(v18, v15);
    v45 = *&v15[v10[7]];
    if (v45)
    {
      v46 = [v45 value];
      if (!v46)
      {
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = MEMORY[0x1BFB209B0](v47);
      }

      v48 = [v46 destinationIdIsPseudonym];

      if ((v48 & 1) == 0)
      {
        break;
      }
    }

    v41 &= v41 - 1;
    outlined destroy of Participant(v15);
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  v109 = v116;
  outlined init with take of Participant(v15, v116);
  v88 = *(v109 + v10[7]);
  if (v88)
  {
    v110 = v88;
  }

  outlined destroy of Participant(v109);
  v49 = v122;
  v50 = v123;
  if ((v114 & 1) == 0)
  {
LABEL_32:
    OUTLINED_FUNCTION_16_31();
    v18 = *(v89 - 256);
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();

    goto LABEL_33;
  }

  if (v88)
  {
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();

LABEL_33:
    v77 = 0;
    OUTLINED_FUNCTION_22_20();
    if (!v50)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_26:
  v51 = *&v49[v10[12]];
  if (v51)
  {
    v124 = v51;
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();
    v52 = v129;
    v122 = v128;
    v53 = v130;
    v113 = v131;
    v112 = v132;
    v114 = v133;
    v54 = objc_opt_self();
    v55 = [v54 conversationKit];
    OUTLINED_FUNCTION_6_46();
    OUTLINED_FUNCTION_14_2();
    v56.super.isa = v55;
    OUTLINED_FUNCTION_17_0(v57, v58, 0x61737265766E6F43, v59, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v60 = OUTLINED_FUNCTION_13_12();
    v111 = xmmword_1BC4BA940;
    *(v60 + 16) = xmmword_1BC4BA940;
    v61 = MEMORY[0x1E69E6158];
    *(v60 + 56) = MEMORY[0x1E69E6158];
    v62 = lazy protocol witness table accessor for type String and conformance String();
    *(v60 + 64) = v62;
    *(v60 + 32) = v52;
    *(v60 + 40) = v53;
    v116 = v53;

    String.init(format:_:)();
    OUTLINED_FUNCTION_17_27();

    v63 = [v54 conversationKit];
    OUTLINED_FUNCTION_6_46();
    OUTLINED_FUNCTION_14_2();
    v64.super.isa = v63;
    OUTLINED_FUNCTION_17_0(v65, v66, v67, v68, v64);
    OUTLINED_FUNCTION_7_19();

    v69 = OUTLINED_FUNCTION_13_12();
    *(v69 + 16) = v111;
    *(v69 + 56) = v61;
    *(v69 + 64) = v62;
    v70 = v112;
    *(v69 + 32) = v113;
    *(v69 + 40) = v70;

    OUTLINED_FUNCTION_62_0();
    String.init(format:_:)();

    v43 = v119;
    PersonNameComponents.init()();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.givenName.setter();
    type metadata completion function for SyncedScreeningAlphaGradientView();
    PersonNameComponents.familyName.setter();
    if (one-time initialization token for initials != -1)
    {
LABEL_52:
      OUTLINED_FUNCTION_3_16();
    }

    swift_beginAccess();
    v71 = static NSPersonNameComponentsFormatter.initials;
    v72 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v73 = [v71 stringFromPersonNameComponents_];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    (*(v117 + 8))(v43, v118);
    v125 = v74;
    v126 = v76;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedUppercase.getter();

    v77 = 0;
    v18 = 0;
LABEL_38:
    if (!v123)
    {
      goto LABEL_41;
    }

LABEL_39:
    v101 = *(v120 + 24);
    v102 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
    v103 = objc_allocWithZone(v102);
    OUTLINED_FUNCTION_26_17(&v103[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details]);
    v127.receiver = v104;
    v127.super_class = v102;
    v105 = v18;

    v106 = objc_msgSendSuper2(&v127, sel_init);
    [v101 setObject:v106 forKey:v123];

    v50 = v123;
LABEL_40:

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_16_31();
  v108 = *(v107 - 256);
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();

  OUTLINED_FUNCTION_22_20();
  v77 = 0;
  if (v50)
  {
    goto LABEL_40;
  }

LABEL_41:
  OUTLINED_FUNCTION_26_17(v121);
  if (v77)
  {
  }

LABEL_43:
  OUTLINED_FUNCTION_30_0();
}

void ParticipantContactDetailsCache.contactDetails(for:nickname:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v100 = v8;
  v102 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v99 = v10 - v9;
  type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_1();
  v97 = v12;
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = ParticipantContactDetailsCache.key(for:)(v4);
  v17 = *(v0 + 24);
  v18 = [v17 objectForKey_];
  v104 = v17;
  v105 = v16;
  v106 = v6;
  if (v18)
  {
    v19 = v18;
    v20 = *&v18[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 8];
    v21 = *&v18[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details + 16];
    v96 = *&v18[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details];

    v22 = MEMORY[0x1BFB209B0](v20, v21);
    v23 = [v22 destinationIdIsTemporary];

    if (!v23 || !v2)
    {

      goto LABEL_53;
    }

    v16 = v105;
  }

  v24 = [v4 value];
  if (!v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = MEMORY[0x1BFB209B0](v25);
  }

  v26 = [v24 destinationIdIsPseudonym];

  if ((v26 & 1) == 0)
  {
    v27 = v2;
    v28 = *(v0 + 16);
    v29 = [v4 value];
    if (!v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = MEMORY[0x1BFB209B0](v30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BAC30;
    *(v31 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    v32.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v28 contactForDestinationId:v29 keysToFetch:v32.super.isa];

    if (!v33)
    {
      if (v27)
      {
        v56 = one-time initialization token for conversationKit;

        if (v56 != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v57 = OUTLINED_FUNCTION_13_12();
        *(v57 + 16) = xmmword_1BC4BA940;
        v58 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        v59 = v4;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_7_19();
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v57 + 32) = v58;
        *(v57 + 40) = v32;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_12_33();

        v60 = 0;
      }

      else
      {
        TUHandle.formattedPhoneNumber.getter();
        if (v70)
        {
          OUTLINED_FUNCTION_80_0();
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v71 = OUTLINED_FUNCTION_13_12();
          *(v71 + 16) = xmmword_1BC4BA940;
          v72 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
          v73 = v4;
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_7_19();
          *(v71 + 56) = MEMORY[0x1E69E6158];
          *(v71 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v71 + 32) = v72;
          *(v71 + 40) = v4;
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_12_33();
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v80 = OUTLINED_FUNCTION_13_12();
          *(v80 + 16) = xmmword_1BC4BA940;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
          v81 = v4;
          v82 = String.init<A>(reflecting:)();
          v84 = v83;
          *(v80 + 56) = MEMORY[0x1E69E6158];
          *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v80 + 32) = v82;
          *(v80 + 40) = v84;
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_12_33();

          v85 = [v81 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_80_0();
        }

        v60 = 0;
        v33 = 0;
      }

      goto LABEL_52;
    }

    v34 = v33;
    outlined bridged method (pb) of @objc CNContact.displayName.getter(v34);
    if (v35)
    {
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v36 = StringProtocol.trimmingCharacters(in:)();
      v37 = v15;
      v39 = v38;
      (*(v97 + 8))(v37, v98);
    }

    else
    {
      v36 = 0;
      v39 = 0xE000000000000000;
    }

    v61 = [objc_opt_self() stringFromContact:v34 style:1000];

    v101 = v34;
    v103 = v33;
    if (v61)
    {
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    if ((v39 & 0x2000000000000000) != 0)
    {
      v65 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v65 = v36 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v64;
    if ((v64 & 0x2000000000000000) != 0)
    {
      v67 = HIBYTE(v64) & 0xF;
    }

    else
    {
      v67 = v62 & 0xFFFFFFFFFFFFLL;
    }

    TUHandle.formattedPhoneNumber.getter();
    v69 = v68;
    if (v65)
    {

      if (v67)
      {
        v33 = v103;
        v60 = v103;
LABEL_52:
        v86 = v33;
        static ParticipantContactDetails.initialsFor(_:)(v60);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.localizedUppercase.getter();

        v87 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
        v88 = objc_allocWithZone(v87);
        OUTLINED_FUNCTION_23_22(&v88[OBJC_IVAR____TtCC15ConversationKit30ParticipantContactDetailsCacheP33_84AC34FA5CB4344A8378F61D97FA6ADC12BoxedDetails_details]);
        v107.receiver = v89;
        v107.super_class = v87;
        v90 = v60;

        v91 = objc_msgSendSuper2(&v107, sel_init);
        [v104 setObject:v91 forKey:v105];

        goto LABEL_53;
      }
    }

    else
    {

      if (!v67)
      {
        v74 = MEMORY[0x1E69E6158];

        v33 = v103;
        if (v69)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v75 = OUTLINED_FUNCTION_13_12();
          *(v75 + 16) = xmmword_1BC4BA940;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
          v76 = v101;
          v77 = String.init<A>(reflecting:)();
          v79 = v78;
          *(v75 + 56) = v74;
          *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v75 + 32) = v77;
          *(v75 + 40) = v79;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v33 = v103;
          v60 = v103;
          goto LABEL_52;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v92 = OUTLINED_FUNCTION_13_12();
        *(v92 + 16) = xmmword_1BC4BA940;
        v93 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
        v94 = v101;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_7_19();
        *(v92 + 56) = v74;
        *(v92 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v92 + 32) = v66;
        *(v92 + 40) = v93;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_12_33();

        v95 = [v4 value];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_80_0();

        goto LABEL_39;
      }
    }

    v33 = v103;
LABEL_39:
    v60 = v33;
    goto LABEL_52;
  }

  if (!v2)
  {
    v40 = objc_opt_self();
    v41 = [v40 conversationKit];
    v42 = OUTLINED_FUNCTION_24_19();
    v43.super.isa = v41;
    OUTLINED_FUNCTION_17_0(v42, v44, v45, v46, v43);

    v47 = [v40 conversationKit];
    v48 = OUTLINED_FUNCTION_24_19();
    v49.super.isa = v47;
    OUTLINED_FUNCTION_17_0(v48, v50, v51, v52, v49);
    OUTLINED_FUNCTION_80_0();
  }

  swift_bridgeObjectRetain_n();
  PersonNameComponents.init()();
  type metadata completion function for SyncedScreeningAlphaGradientView();
  PersonNameComponents.givenName.setter();
  type metadata completion function for SyncedScreeningAlphaGradientView();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  swift_beginAccess();
  v53 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v55 = [v53 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v100 + 8))(v99, v102);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedUppercase.getter();

LABEL_53:
  OUTLINED_FUNCTION_23_22(v106);
  OUTLINED_FUNCTION_30_0();
}

void ParticipantContactDetails.init(handle:conversation:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  _s15ConversationKit30ParticipantContactDetailsCacheC5cache3forAcA0A0_p_tFZTf4en_nSo14TUConversationC_Tt0g5(a2);
  OUTLINED_FUNCTION_5_6();
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();
  v8 = v10;

  static ParticipantContactDetails.initialsFor(_:)(v10);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.localizedUppercase.getter();
  v7 = v6;

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v5;
  a3[6] = v7;
}

uint64_t static ParticipantContactDetailsCache.cache(for:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static ParticipantContactDetailsCache.cache(for:)(v3, v1, v2);
}

void ParticipantContactDetails.init(handle:call:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for ParticipantContactDetailsCache();
  v6 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  if (one-time initialization token for queue != -1)
  {
    v6 = OUTLINED_FUNCTION_1_71();
  }

  MEMORY[0x1EEE9AC00](v6);
  OS_dispatch_queue.sync<A>(execute:)();
  OUTLINED_FUNCTION_5_6();
  ParticipantContactDetailsCache.contactDetails(for:nickname:)();
  v10 = v11;

  static ParticipantContactDetails.initialsFor(_:)(v11);
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.localizedUppercase.getter();
  v9 = v8;

  *v5 = v11;
  v5[1] = v12;
  v5[2] = v13;
  v5[3] = v14;
  v5[4] = v15;
  v5[5] = v7;
  v5[6] = v9;
  OUTLINED_FUNCTION_30_0();
}

uint64_t static ParticipantContactDetailsCache.cache(for:)()
{
  OUTLINED_FUNCTION_55();
  swift_getObjectType();

  return specialized static ParticipantContactDetailsCache.cache(for:)();
}

uint64_t static ParticipantContactDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 24);
    v18 = *(a2 + 48);
    v19 = *(a2 + 40);
    v20 = *(a1 + 48);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    v11 = v7;
    v12 = v2;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = *(a1 + 24);
    v18 = *(a2 + 48);
    v19 = *(a2 + 40);
    v20 = *(a1 + 48);
    if (v7)
    {
      return 0;
    }
  }

  v14 = v3 == v6 && v4 == v8;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v22 == v9 && v5 == v10;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v21 == v19 && v20 == v18)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t ParticipantContactDetails.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  OUTLINED_FUNCTION_30_0();

  return String.hash(into:)();
}

Swift::Int ParticipantContactDetails.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantContactDetails()
{
  Hasher.init(_seed:)();
  ParticipantContactDetails.hash(into:)();
  return Hasher._finalize()();
}

void *one-time initialization function for faceTime()
{
  type metadata accessor for ParticipantContactDetailsCache();
  v0 = TUPreferredFaceTimeBundleIdentifier();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_7_19();

  OUTLINED_FUNCTION_62_0();
  result = ParticipantContactDetailsCache.__allocating_init(bundleIdentifier:)();
  static ParticipantContactDetailsCache.faceTime = result;
  return result;
}

uint64_t ParticipantContactDetailsCache.__allocating_init(bundleIdentifier:)()
{
  OUTLINED_FUNCTION_55();
  v2 = objc_opt_self();
  v3 = MEMORY[0x1BFB209B0](v1, v0);

  v4 = [v2 tu:v3 contactStoreConfigurationForBundleIdentifier:?];

  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  OUTLINED_FUNCTION_19_16();
  v6 = swift_allocObject();
  ParticipantContactDetailsCache.init(contactStore:)(v5);
  return v6;
}

uint64_t static ParticipantContactDetailsCache.faceTime.getter()
{
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }
}

void one-time initialization function for queue()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_8();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v0);
  static ParticipantContactDetailsCache.queue = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  OUTLINED_FUNCTION_30_0();
}

void *one-time initialization function for cachesByBundleIdentifiers()
{
  type metadata accessor for ParticipantContactDetailsCache();
  result = Dictionary.init(dictionaryLiteral:)();
  static ParticipantContactDetailsCache.cachesByBundleIdentifiers = result;
  return result;
}

uint64_t closure #1 in static ParticipantContactDetailsCache.cache(for:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 264))(v3, v4);
  v7 = static ParticipantContactDetailsCache.queue_cache(forBundleIdentifier:)(v5, v6);

  *a2 = v7;
  return result;
}

id ParticipantContactDetailsCache.BoxedDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ParticipantContactDetailsCache.__allocating_init(contactStore:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19_16();
  v2 = swift_allocObject();
  ParticipantContactDetailsCache.init(contactStore:)(a1);
  return v2;
}

uint64_t ParticipantContactDetailsCache.init(contactStore:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t ParticipantContactDetailsCache.key(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Participant(0);
  v6 = *(a1 + *(v5 + 28));
  if (v6)
  {
    v7 = v6;
    v8 = ParticipantContactDetailsCache.key(for:)(v7);
  }

  else
  {
    v9 = v5;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA940;
    outlined init with copy of Participant(a1, v4);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
    specialized >> prefix<A>(_:)();
    v12 = v11;
    v14 = v13;
    outlined destroy of Participant?(v4);
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v8;
}

uint64_t ParticipantContactDetailsCache.key(for:)(void *a1)
{
  v1 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.localizedLowercase.getter();
  v3 = MEMORY[0x1BFB209B0](v2);

  return v3;
}

id TUHandle.formattedPhoneNumber.getter()
{
  if ([v0 type] != 2)
  {
    return OUTLINED_FUNCTION_62_0();
  }

  result = [v0 value];
  if (result)
  {
    v2 = result;
    v3 = PNCopyBestGuessCountryCodeForNumber();

    if (!v3)
    {
      return OUTLINED_FUNCTION_62_0();
    }

    result = [v0 value];
    if (result)
    {
      v4 = result;
      v5 = CFPhoneNumberCreate();

      if (v5)
      {
        String = CFPhoneNumberCreateString();
        if (String)
        {
          v7 = String;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_7_19();

          return OUTLINED_FUNCTION_62_0();
        }
      }

      return OUTLINED_FUNCTION_62_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ParticipantContactDetailsCache.__deallocating_deinit()
{
  ParticipantContactDetailsCache.deinit();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc CNContact.displayName.getter(void *a1)
{
  v1 = [a1 displayName];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t _s15ConversationKit30ParticipantContactDetailsCacheC5cache3forAcA0A0_p_tFZTf4en_nSo14TUConversationC_Tt0g5(void *a1)
{
  type metadata accessor for ParticipantContactDetailsCache();
  v6[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  v6[4] = &protocol witness table for TUConversation;
  v6[0] = a1;
  v2 = one-time initialization token for queue;
  v3 = a1;
  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v3);
  OS_dispatch_queue.sync<A>(execute:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v5;
}

uint64_t specialized static ParticipantContactDetailsCache.cache(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55();
  v11[3] = v5;
  v11[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v8 = (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v3, a3);
  if (one-time initialization token for queue != -1)
  {
    v8 = OUTLINED_FUNCTION_1_71();
  }

  MEMORY[0x1EEE9AC00](v8);
  OS_dispatch_queue.sync<A>(execute:)();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v10;
}

unint64_t lazy protocol witness table accessor for type ParticipantContactDetails and conformance ParticipantContactDetails()
{
  result = lazy protocol witness table cache variable for type ParticipantContactDetails and conformance ParticipantContactDetails;
  if (!lazy protocol witness table cache variable for type ParticipantContactDetails and conformance ParticipantContactDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantContactDetails and conformance ParticipantContactDetails);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantContactDetails(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ParticipantContactDetails(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

Swift::Void __swiftcall CallControlsMenuViewController.checkForDynamicState()()
{
  OUTLINED_FUNCTION_0_73();
  v3 = CallControlsMenuViewController.menuBlurView.getter(v1, v2);
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = Strong;
  if (Strong)
  {
    [Strong frame];
    v30 = v14;
    v31 = v15;
    v29 = v16;
    v32 = v17;

    *&v19 = v29;
    *&v18 = v30;
    *(&v18 + 1) = v31;
    *(&v19 + 1) = v32;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v33[0] = v5;
  v33[1] = v7;
  v33[2] = v9;
  v33[3] = v11;
  v34 = v18;
  v35 = v19;
  v36 = v13 == 0;
  v37 = 0;
  CallControlsMenuViewController.dodgingFrames.setter(v33);
  v20 = [v0 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 window];

    if (v22)
    {
      [v22 frame];
      v24 = v23;
      v26 = v25;

      v27 = v24;
      v28 = v26;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    CallControlsMenuViewController.windowSize.setter(v27, v28, v22 == 0);
  }

  else
  {
    __break(1u);
  }
}

UILayoutGuide __swiftcall CallControlsMenuViewController.updateViewDependencies(containingView:topCornerView:dodgingView:usesPaddingInsteadOfSafeArea:)(UIView *containingView, UIView_optional *topCornerView, UIView *dodgingView, Swift::Bool usesPaddingInsteadOfSafeArea)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v79 = topCornerView;
  if (!Strong)
  {
    goto LABEL_5;
  }

  v10 = Strong;
  v11 = [Strong owningView];
  if (!v11 || (v12 = v11, v11, v12 != containingView))
  {

LABEL_5:
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  }

  [(UIView *)containingView addLayoutGuide:v10];
  if (usesPaddingInsteadOfSafeArea)
  {
    v13 = [v10 topAnchor];
    v14 = [(UIView *)containingView topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:40.0];

    v78 = v15;
    v16 = [v10 bottomAnchor];
    v17 = [(UIView *)containingView bottomAnchor];
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.isICUIRedesignEnabled.getter() & 1) == 0 || (v18 = objc_opt_self(), v19 = [v18 currentDevice], v20 = objc_msgSend(v19, sel_userInterfaceIdiom), v19, v20) || (v74 = objc_msgSend(v18, sel_currentDevice), v75 = objc_msgSend(v74, sel_userInterfaceIdiom), v74, v21 = 0.0, !v75) && (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), static AmbientState.isPresented == 1) && (Features.isICUIRedesignEnabled.getter())
    {
      v21 = -static CallControlsMenuView.Constants.verticalPadding.getter();
    }

    v22 = [v16 constraintEqualToAnchor:v17 constant:v21];

    v81 = v22;
    v23 = [v10 trailingAnchor];
    v24 = [(UIView *)containingView trailingAnchor];
    static CallControlsMenuView.Constants.horizontalPadding.getter();
    v25 = OUTLINED_FUNCTION_7_44();

    v80 = v25;
    v26 = [v10 leadingAnchor];
    v27 = [(UIView *)containingView leadingAnchor];
    static CallControlsMenuView.Constants.horizontalPadding.getter();
    v28 = OUTLINED_FUNCTION_7_44();

    v29 = v28;
    v30 = v10;
  }

  else
  {
    v31 = v10;
    v32 = [v31 topAnchor];
    v33 = OUTLINED_FUNCTION_13_34();
    v34 = [v33 topAnchor];

    v35 = [v32 constraintEqualToAnchor_];
    v78 = v35;
    v36 = [v31 bottomAnchor];
    v37 = OUTLINED_FUNCTION_13_34();
    v38 = [v37 bottomAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    v81 = v39;
    v40 = [v31 trailingAnchor];
    v41 = OUTLINED_FUNCTION_13_34();
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor:v42 constant:-(static CallControlsMenuView.Constants.horizontalPadding.getter)()];
    v80 = v43;
    v44 = [v31 leadingAnchor];
    v45 = OUTLINED_FUNCTION_13_34();
    v46 = [v45 leadingAnchor];

    static CallControlsMenuView.Constants.horizontalPadding.getter();
    v47 = [v44 constraintEqualToAnchor:v46 constant:?];

    v29 = v47;
  }

  result.super.isa = [v5 view];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v50 = [(objc_class *)result.super.isa leadingAnchor];

    v51 = [v10 trailingAnchor];
    v76 = [v50 constraintEqualToAnchor_];

    v52 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1BC4BA7F0;
    *(v53 + 32) = v78;
    *(v53 + 40) = v81;
    *(v53 + 48) = v29;
    *(v53 + 56) = v80;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v52 activateConstraints_];

    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();

    if (v79)
    {
      v55 = [v10 topAnchor];
      v56 = [(UIView_optional *)v79 bottomAnchor];
      static CallControlsMenuView.Constants.horizontalPadding.getter();
      v57 = OUTLINED_FUNCTION_7_44();

      v58 = &v5[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints];
      v59 = *&v5[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints];
      v60 = *&v5[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints + 8];
      *v58 = v78;
      *(v58 + 1) = v57;
      v61 = v78;
      outlined consume of ConversationControlsRecipe.View?(v59, v60);
    }

    v62 = [v10 bottomAnchor];
    OUTLINED_FUNCTION_0_73();
    v65 = CallControlsMenuViewController.menuBlurView.getter(v63, v64);
    v66 = [v65 topAnchor];

    v67 = [v62 constraintEqualToAnchor:v66 constant:-10.0];
    v68 = OUTLINED_FUNCTION_5_44(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_bottomConstraints);
    *v69 = v81;
    v69[1] = v67;
    outlined consume of ConversationControlsRecipe.View?(v68, v70);
    v71 = OUTLINED_FUNCTION_5_44(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_trailingConstraints);
    *v72 = v80;
    v72[1] = v77;
    outlined consume of ConversationControlsRecipe.View?(v71, v73);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CallControlsMenuViewController.isPresentingMoreMenuPopover.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_moreMenuButtonViewModel))
  {
    return 0;
  }

  v1 = MoreMenuButtonViewModel.isMoreMenuPresented.getter();

  return v1 & 1;
}

uint64_t CallControlsMenuViewController.isOneToOneModeEnabled.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

id CallControlsMenuViewController.init(controlsManager:isScreenLocked:rosterViewProvider:service:sidebarStateStream:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_11_34(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater);
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled) = 1;
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize);
  *(v12 + 16) = v13;
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_bottomConstraints);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_trailingConstraints);
  v14 = v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0;
  *(v14 + 65) = v15;
  v16 = v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___screenShareService;
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___moreMenuService;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuViewModel) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuShadowView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_menuBlurTrailingConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_moreMenuButtonViewModel) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_cancellables) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_34();
  OUTLINED_FUNCTION_12_34();
  OUTLINED_FUNCTION_12_34();
  OUTLINED_FUNCTION_12_34();
  v18 = OUTLINED_FUNCTION_11_34(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_rosterViewProvider);
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_controlsManager) = a1;
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isScreenLocked) = a2;
  *(v18 + 8) = a4;
  swift_unknownObjectWeakAssign();
  outlined init with copy of IDSLookupManager(a5, v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service);
  *(v6 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sidebarStateStream) = a6;
  v19 = a1;

  OUTLINED_FUNCTION_3_0();
  v22 = objc_msgSendSuper2(v20, v21);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v22;
}

id CallControlsMenuViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsMenuViewController.init(coder:)()
{
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater);
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_bottomConstraints);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_trailingConstraints);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 65) = 1;
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___screenShareService;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___moreMenuService;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuShadowView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_menuBlurTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_moreMenuButtonViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_cancellables) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_11_34(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_rosterViewProvider);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsMenuViewController.viewDidLoad()()
{
  v2 = v0;
  v69.receiver = v0;
  v69.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 24];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service], v3);
  v5 = (*(v4 + 24))(v3, v4);
  CallControlsMenuViewController.blurConfiguration(conversationState:)(v5, v70);
  v6 = CallControlsMenuViewController.menuBlurView.getter(&OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView, closure #1 in CallControlsMenuViewController.menuBlurView.getter);
  v7 = [v6 trailingAnchor];

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v8 trailingAnchor];

  v11 = [v7 constraintEqualToAnchor:v10 constant:v71];
  v12 = *&v2[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_menuBlurTrailingConstraint];
  *&v2[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_menuBlurTrailingConstraint] = v11;
  v13 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA7F0;
  v15 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView;
  v16 = [*&v2[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView] topAnchor];
  v17 = OUTLINED_FUNCTION_6_13();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = OUTLINED_FUNCTION_8_4();
  *(v14 + 32) = v20;
  v21 = [*&v2[v15] leadingAnchor];
  v22 = OUTLINED_FUNCTION_6_13();
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = OUTLINED_FUNCTION_8_4();
  *(v14 + 40) = v25;
  *(v14 + 48) = v13;
  v26 = *&v2[v15];
  v68 = v13;
  v27 = [v26 bottomAnchor];
  v28 = OUTLINED_FUNCTION_6_13();
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = OUTLINED_FUNCTION_8_4();
  *(v14 + 56) = v31;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v33 = CallControlsMenuViewController.menuBlurView.getter(&OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuShadowView, closure #1 in CallControlsMenuViewController.menuShadowView.getter);
  v34 = [v33 topAnchor];

  v35 = [*&v2[v15] topAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(inited + 32) = v36;
  v37 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuShadowView;
  v38 = [*&v2[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuShadowView] trailingAnchor];
  v39 = [*&v2[v15] trailingAnchor];
  v40 = OUTLINED_FUNCTION_2_69();

  *(inited + 40) = v40;
  specialized Array.append<A>(contentsOf:)(inited);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1BC4BA7F0;
  OUTLINED_FUNCTION_0_73();
  v44 = CallControlsMenuViewController.menuBlurView.getter(v42, v43);
  v45 = [v44 topAnchor];

  v46 = [v2 view];
  if (!v46)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = OUTLINED_FUNCTION_2_69();
  *(v41 + 32) = v49;
  v50 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuView;
  v51 = [*&v2[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuView] leadingAnchor];
  v52 = [v2 view];
  if (!v52)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v53 = v52;
  v54 = [v52 leadingAnchor];

  v55 = OUTLINED_FUNCTION_2_69();
  *(v41 + 40) = v55;
  v56 = [*&v2[v50] trailingAnchor];
  v57 = [v2 view];
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = v57;
  v59 = [v57 trailingAnchor];

  v60 = OUTLINED_FUNCTION_2_69();
  *(v41 + 48) = v60;
  v61 = [*&v2[v50] bottomAnchor];
  v62 = [v2 view];
  if (!v62)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v63 = v62;
  v64 = [v62 bottomAnchor];

  v65 = OUTLINED_FUNCTION_2_69();
  *(v41 + 56) = v65;
  specialized Array.append<A>(contentsOf:)(v41);
  v66 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v66 activateConstraints_];

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    [*&v2[v15] setHidden_];
    [*&v2[v37] setHidden_];
  }

  CallControlsMenuViewController.menuViewModel.getter();
  CallControlsMenuViewModel.startContextObservation()();

  CallControlsMenuViewController.observeState()();
  CallControlsMenuViewController.checkForDynamicState()();

  outlined destroy of CallControlsMenuViewController.BlurConfiguration(v70);
}

uint64_t CallControlsMenuViewController.blurConfiguration(conversationState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  swift_beginAccess();
  if ((*(v2 + v5) & 1) == 0 && a1 != 1)
  {
    v6 = 5.0;
    v7 = 64;
    result = 0x4034000000000000;
    v9 = 6.0;
LABEL_6:
    *a2 = v9;
    *(a2 + 8) = result;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = v7;
    *(a2 + 49) = *v11;
    *(a2 + 52) = *&v11[3];
    *(a2 + 56) = v6;
    return result;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v10 = [objc_opt_self() conversationKit];
  result = @nonobjc UIImage.init(named:in:)(0xD000000000000016, 0x80000001BC4FAF40, v10);
  if (result)
  {
    v7 = 0x80;
    v6 = 90.0;
    v9 = 1.15;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id CallControlsMenuViewController.menuBlurView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t CallControlsMenuViewController.menuViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuViewModel;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuViewModel);
  }

  else
  {
    v3 = v0;
    outlined init with copy of IDSLookupManager(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service, v6);
    v4 = CallControlsMenuViewController.isAppFrontMost.getter();
    type metadata accessor for CallControlsMenuViewModel();
    swift_allocObject();
    v2 = CallControlsMenuViewModel.init(service:isAppFrontMost:)(v6, v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t CallControlsMenuViewController.observeState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v23 = &v21 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGAGySo014TUConversationI0VALGGMd);
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC0A6LatestVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGAIySo014TUConversationK0VANGGSo9NSRunLoopCGMd);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v21 - v9;
  v28 = SidebarStateStream.states.getter();
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 24);
  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service), v10);
  v29 = (*(v11 + 56))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo19TUConversationStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<SidebarState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUConversationState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo19TUConversationStateVs5NeverOGMd);
  Publisher.combineLatest<A>(_:)();

  v12 = [objc_opt_self() mainRunLoop];
  v28 = v12;
  v13 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v14 = v23;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v13);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<AnyPublisher<SidebarState, Never>, AnyPublisher<TUConversationState, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGAGySo014TUConversationI0VALGGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v15 = v22;
  v16 = v24;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  (*(v25 + 8))(v6, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in CallControlsMenuViewController.observeState();
  *(v18 + 24) = v17;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CombineLatest<AnyPublisher<SidebarState, Never>, AnyPublisher<TUConversationState, Never>>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC0A6LatestVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGAIySo014TUConversationK0VANGGSo9NSRunLoopCGMd);
  v19 = v26;
  Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v15, v19);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall CallControlsMenuViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
}

uint64_t key path getter for CallControlsMenuViewController.sizeUpdater : CallControlsMenuViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CallControlsMenuViewController.sizeUpdater : CallControlsMenuViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CallControlsMenuViewController.sizeUpdater.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t CallControlsMenuViewController.sizeUpdater.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallControlsMenuViewController.sizeUpdater.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t CallControlsMenuViewController.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CallControlsMenuViewController.isHidden : CallControlsMenuViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void CallControlsMenuViewController.isHidden.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setHidden_];

      CallControlsMenuViewController.updateDogingState(animated:)(0);
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v17 = partial apply for closure #1 in CallControlsMenuViewController.isHidden.didset;
      v18 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = thunk for @escaping @callee_guaranteed () -> ();
      v16 = &block_descriptor_19;
      v8 = _Block_copy(&aBlock);
      v9 = v1;

      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v17 = partial apply for closure #2 in CallControlsMenuViewController.isHidden.didset;
      v18 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v16 = &block_descriptor_25;
      v11 = _Block_copy(&aBlock);
      v12 = v9;

      [v6 animateWithDuration:v8 animations:v11 completion:0.2];
      _Block_release(v11);
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void CallControlsMenuViewController.updateDogingState(animated:)(char a1)
{
  v2 = v1;
  v4 = SidebarStateStream.currentState.getter();
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 24);
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service), *(v2 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service + 24));
  v7 = (*(v6 + 24))(v5, v6);
  CallControlsMenuViewController.updateBlur(sidebarState:conversationState:)(v4 & 1, v7);
  v8 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
  swift_beginAccess();
  if (*(v2 + v8))
  {
    v9 = CallControlsMenuViewController.updateTopConstraints(dodging:)(0, &OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v10 = objc_opt_self();
      v11 = [v10 currentDevice];
      v12 = [v11 userInterfaceIdiom];

      if (!v12)
      {
        v22 = [v10 currentDevice];
        v23 = [v22 userInterfaceIdiom];

        if (v23 || (swift_beginAccess(), static AmbientState.isPresented != 1) || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v24 = 0;
LABEL_25:
          v27 = CallControlsMenuViewController.updateTrailingConstraints(dodging:)(v24);
          if ((v9 & 1) == 0 && (v27 & 1) == 0)
          {
            return;
          }

          goto LABEL_13;
        }
      }
    }

    v13 = 0;
  }

  else
  {
    v14 = CallControlsMenuViewController.shouldDodgeTop()();
    v9 = CallControlsMenuViewController.updateTopConstraints(dodging:)(v14 & 1, &OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_topConstraints);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v15 = objc_opt_self();
      v16 = [v15 currentDevice];
      v17 = [v16 userInterfaceIdiom];

      if (!v17)
      {
        v25 = [v15 currentDevice];
        v26 = [v25 userInterfaceIdiom];

        if (v26 || (swift_beginAccess(), static AmbientState.isPresented != 1) || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v24 = 1;
          goto LABEL_25;
        }
      }
    }

    v13 = CallControlsMenuViewController.shouldDodgeBottom()() & 1;
  }

  if (((v9 | CallControlsMenuViewController.updateTopConstraints(dodging:)(v13, &OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_bottomConstraints)) & 1) == 0)
  {
    return;
  }

LABEL_13:
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      [Strong setNeedsLayout];
      v28[0] = xmmword_1BC4C4CB0;
      v28[1] = xmmword_1BC4C4CC0;
      v29 = 0;
      v30 = 0;
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = v19;
      _sSo6UIViewC15ConversationKitE7animate4with5delay10animations10completionyAC15AnimationTiming_p_SdSgyycySbcSgtFZTf4ennnn_nAC06SpringI10ParametersV_Tt3g5(v28, 0, 0, partial apply for closure #1 in CallControlsMenuViewController.updateDogingState(animated:), v20, 0, 0);
    }
  }
}

void closure #1 in CallControlsMenuViewController.isHidden.didset(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
    swift_beginAccess();
    v5 = 1.0;
    if (*(a1 + v4))
    {
      v5 = 0.0;
    }

    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in CallControlsMenuViewController.isHidden.didset(int a1, unsigned __int8 *a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
    swift_beginAccess();
    [v4 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void (*CallControlsMenuViewController.isHidden.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isHidden;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return CallControlsMenuViewController.isHidden.modify;
}

uint64_t CallControlsMenuViewController.isOneToOneModeEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CallControlsMenuViewController.isOneToOneModeEnabled : CallControlsMenuViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void CallControlsMenuViewController.isOneToOneModeEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    CallControlsMenuViewController.updateDogingState(animated:)(0);
  }
}

void (*CallControlsMenuViewController.isOneToOneModeEnabled.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return CallControlsMenuViewController.isOneToOneModeEnabled.modify;
}

void CallControlsMenuViewController.isHidden.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

void CallControlsMenuViewController.dodgingFrames.setter(const void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames), 0x42uLL);
  memcpy((v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames), a1, 0x42uLL);
  CallControlsMenuViewController.dodgingFrames.didset(__dst);
}

uint64_t CallControlsMenuViewController.windowSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize;
  v5 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize);
  v6 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 8);
  v7 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 16);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return CallControlsMenuViewController.windowSize.didset(v5, v6, v7);
}

uint64_t CallControlsMenuViewController.windowSize.didset(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (*(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 16))
    {
      return result;
    }

    v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize);
    v5 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 8);
    goto LABEL_9;
  }

  if ((*(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 16) & 1) == 0)
  {
    v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize);
    v5 = *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 8);
    if (*&result != v4 || *&a2 != *(v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_windowSize + 8))
    {
LABEL_9:
      v7 = v3 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sizeUpdater;
      swift_beginAccess();
      *&result = COERCE_DOUBLE(swift_unknownObjectWeakLoadStrong());
      if (*&result != 0.0)
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(ObjectType, v8, v4, v5);
        *&result = COERCE_DOUBLE(swift_unknownObjectRelease());
      }
    }
  }

  return result;
}

void CallControlsMenuViewController.dodgingFrames.didset(uint64_t a1)
{
  if (*(a1 + 65))
  {
    return;
  }

  v2 = v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_dodgingFrames + 65))
  {
    return;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (*(a1 + 64))
  {
    if ((*(v2 + 64) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12.origin.x = v3;
    v12.origin.y = v4;
    v12.size.width = v5;
    v12.size.height = v6;
    v13.origin.x = v7;
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    if (CGRectEqualToRect(v12, v13))
    {
      return;
    }

    goto LABEL_10;
  }

  if ((*(v2 + 64) & 1) == 0 && CGRectEqualToRect(*(a1 + 32), *(v2 + 32)))
  {
    goto LABEL_9;
  }

LABEL_10:

  CallControlsMenuViewController.updateDogingState(animated:)(1);
}

uint64_t CallControlsMenuViewController.screenShareService.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___screenShareService;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v3, &v9, &_s15ConversationKit30ScreenShareCallControlsService_pSgMd);
  if (v10)
  {
    return outlined init with take of TapInteractionHandler(&v9, a1);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v9, &_s15ConversationKit30ScreenShareCallControlsService_pSgMd);
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_controlsManager);
  v6 = type metadata accessor for InCallScreenShareCallControlsService();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  a1[3] = v6;
  a1[4] = &protocol witness table for InCallScreenShareCallControlsService;
  *a1 = v7;
  outlined init with copy of IDSLookupManager(a1, &v9);
  swift_beginAccess();
  v8 = v5;
  outlined assign with take of Participant?(&v9, v1 + v3, &_s15ConversationKit30ScreenShareCallControlsService_pSgMd);
  return swift_endAccess();
}

uint64_t CallControlsMenuViewController.moreMenuService.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___moreMenuService;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v3, &v8, &_s15ConversationKit23MoreMenuControlsService_pSgMd);
  if (v9)
  {
    return outlined init with take of TapInteractionHandler(&v8, a1);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v8, &_s15ConversationKit23MoreMenuControlsService_pSgMd);
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_controlsManager);
  v6 = type metadata accessor for InCallMoreMenuControlsService();
  swift_allocObject();
  v7 = InCallMoreMenuControlsService.init(controlsManager:)(v5);
  a1[3] = v6;
  a1[4] = &protocol witness table for InCallMoreMenuControlsService;
  *a1 = v7;
  outlined init with copy of IDSLookupManager(a1, &v8);
  swift_beginAccess();
  outlined assign with take of Participant?(&v8, v1 + v3, &_s15ConversationKit23MoreMenuControlsService_pSgMd);
  return swift_endAccess();
}

uint64_t CallControlsMenuViewController.isAppFrontMost.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySbGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-v2];
  v6[15] = 1;
  Just.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>, &_s7Combine4JustVySbGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id closure #1 in CallControlsMenuViewController.menuBlurView.getter(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service];
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  CallControlsMenuViewController.blurConfiguration(conversationState:)(v5, &v12);
  v6 = v12;
  v15 = v13;
  v16[0] = v14[0];
  *(v16 + 9) = *(v14 + 9);
  v7 = objc_allocWithZone(type metadata accessor for VariableBlurUIView());
  outlined init with copy of CallControlsMenuViewController.BlurConfiguration(&v12, &v11);
  v8 = VariableBlurUIView.init(radius:blurMask:)(&v15, v6);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setUserInteractionEnabled_];

  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result addSubview_];

    outlined destroy of CallControlsMenuViewController.BlurConfiguration(&v12);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in CallControlsMenuViewController.menuShadowView.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v2 = [objc_opt_self() conversationKit];
  v3 = @nonobjc UIImage.init(named:in:)(0xD000000000000016, 0x80000001BC4FAF40, v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v6 setAlpha_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setUserInteractionEnabled_];
  [v6 setContentMode_];

  UIView.setCHCRPriority(_:)(1132068864);
  result = [a1 view];
  if (result)
  {
    v8 = result;
    [result addSubview_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CallControlsMenuViewController.presentMoreMenuWithUIKit()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v2 = partial apply for closure #1 in CallControlsMenuViewController.presentMoreMenuWithUIKit();
  }

  CallControlsMenuViewController.moreMenuService.getter(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 88))(0, v2, v3, v4, v5);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void closure #1 in CallControlsMenuViewController.presentMoreMenuWithUIKit()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      v6 = 1.0;
      if (a1)
      {
        v6 = 0.0;
      }

      [v4 setAlpha_];

      v3 = v5;
    }
  }
}

void closure #1 in CallControlsMenuViewController.menuView.getter(char *a1)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32[1] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CallControlsMenuView();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = v32 - v11;
  if (static Platform.current.getter() == 3 || (v12 = [objc_opt_self() currentDevice], v13 = objc_msgSend(v12, sel_userInterfaceIdiom), v12, v13 == 1))
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = partial apply for closure #1 in closure #1 in CallControlsMenuViewController.menuView.getter;
  }

  v16 = CallControlsMenuViewController.menuViewModel.getter();
  outlined init with copy of IDSLookupManager(&a1[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_service], v36);
  CallControlsMenuViewController.screenShareService.getter(v35);
  CallControlsMenuViewController.moreMenuService.getter(v34);
  v17 = *&a1[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_sidebarStateStream];
  v18 = *&a1[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isScreenLocked];

  v19 = v33;
  CallControlsMenuView.init(viewModel:service:screenShareService:moreMenuService:sidebarStateStream:isScreenLocked:moreMenuDidTap:)(v16, v36, v35, v34, v17, v18, v14, v15, v33);
  *&a1[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_moreMenuButtonViewModel] = *(v19 + *(v4 + 20));

  outlined init with copy of CallControlsMenuView(v19, v10);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCyAA20CallControlsMenuViewVGMd));
  outlined init with copy of CallControlsMenuView(v10, v7);
  v21 = UIHostingController.init(rootView:)();
  outlined destroy of CallControlsMenuView(v10);
  v22 = v21;
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v23 = v22;
  [a1 addChildViewController_];
  v24 = [a1 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = [v23 view];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  [v25 addSubview_];

  [v23 didMoveToParentViewController_];
  v28 = [v23 view];

  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  v29 = [v23 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor_];

  v31 = [v23 view];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);

  if (v31)
  {
    outlined destroy of CallControlsMenuView(v33);

    return;
  }

LABEL_15:
  __break(1u);
}

void closure #1 in closure #1 in CallControlsMenuViewController.menuView.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CallControlsMenuViewController.presentMoreMenuWithUIKit()();
  }
}

uint64_t CallControlsMenuViewController.shouldDodgeTop()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  swift_beginAccess();
  if (*(v0 + v1) != 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isHidden];

    if (v6)
    {
      goto LABEL_11;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    v5 = v7;
    if (!v7)
    {
      goto LABEL_12;
    }

    [v7 alpha];
    v9 = v8;

    if (v9 <= 0.0)
    {
      goto LABEL_11;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      goto LABEL_12;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    UIPopoverPresentationControllerSourceItem.frame(in:)(&v15, v3);

    if (v15.is_nil)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      goto LABEL_12;
    }

    x = v15.value.origin.x;
    y = v15.value.origin.y;
    width = v15.value.size.width;
    height = v15.value.size.height;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      UIPopoverPresentationControllerSourceItem.frame(in:)(&v16, v3);

      if (!v16.is_nil)
      {
        LOBYTE(v5) = CallControlsMenuViewController.shouldDodge(top:bottom:threshold:)(v16.value.origin.x, v16.value.origin.y, v16.value.size.width, v16.value.size.height, x, y, width, height, 20.0);
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

LABEL_12:

  return v5 & 1;
}

uint64_t CallControlsMenuViewController.shouldDodge(top:bottom:threshold:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && ((v25 = objc_opt_self(), v26 = [v25 currentDevice], v27 = objc_msgSend(v26, sel_userInterfaceIdiom), v26, v27) || (v29 = objc_msgSend(v25, sel_currentDevice), v30 = objc_msgSend(v29, sel_userInterfaceIdiom), v29, !v30) && (swift_beginAccess(), static AmbientState.isPresented == 1) && (Features.isICUIRedesignEnabled.getter()))
  {
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    v44.origin.x = a5;
    v44.origin.y = a6;
    v44.size.width = a7;
    v44.size.height = a8;
    if (CGRectIntersectsRect(v36, v44))
    {
      return 1;
    }

    else
    {
      v38.origin.x = a5;
      v38.origin.y = a6;
      v38.size.width = a7;
      v38.size.height = a8;
      MinY = CGRectGetMinY(v38);
      v39.origin.x = a1;
      v39.origin.y = a2;
      v39.size.width = a3;
      v39.size.height = a4;
      v31 = MinY - CGRectGetMaxY(v39);
      if (v31 < 0.0 || v31 > a9)
      {
        return 0;
      }

      v40.origin.x = a1;
      v40.origin.y = a2;
      v40.size.width = a3;
      v40.size.height = a4;
      MinX = CGRectGetMinX(v40);
      v41.origin.x = a5;
      v41.origin.y = a6;
      v41.size.width = a7;
      v41.size.height = a8;
      if (MinX >= CGRectGetMaxX(v41))
      {
        return 0;
      }

      else
      {
        v42.origin.x = a1;
        v42.origin.y = a2;
        v42.size.width = a3;
        v42.size.height = a4;
        MaxX = CGRectGetMaxX(v42);
        v43.origin.x = a5;
        v43.origin.y = a6;
        v43.size.width = a7;
        v43.size.height = a8;
        return CGRectGetMinX(v43) < MaxX;
      }
    }
  }

  else
  {
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    v45.origin.x = a5;
    v45.origin.y = a6;
    v45.size.width = a7;
    v45.size.height = a8;
    return CGRectIntersectsRect(v37, v45);
  }
}

uint64_t CallControlsMenuViewController.shouldDodgeBottom()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_isOneToOneModeEnabled;
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (v2 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      UIPopoverPresentationControllerSourceItem.frame(in:)(&v11, v3);

      if (v11.is_nil || (x = v11.value.origin.x, y = v11.value.origin.y, width = v11.value.size.width, height = v11.value.size.height, v9 = CallControlsMenuViewController.menuBlurView.getter(&OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuView, closure #1 in CallControlsMenuViewController.menuView.getter), UIPopoverPresentationControllerSourceItem.frame(in:)(&v12, v3), v9, v12.is_nil))
      {
        LOBYTE(Strong) = 0;
      }

      else
      {
        LOBYTE(Strong) = CallControlsMenuViewController.shouldDodge(top:bottom:threshold:)(x, y, width, height, v12.value.origin.x, v12.value.origin.y, v12.value.size.width, v12.value.size.height, 0.0);
      }
    }
  }

  else
  {
    LOBYTE(Strong) = 0;
  }

  return Strong & 1;
}

uint64_t CallControlsMenuViewController.updateTopConstraints(dodging:)(char a1, void *a2)
{
  v3 = v2 + *a2;
  v4 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = v6;
      v10 = v4;
      v11 = [v8 owningView];

      if (!v11)
      {
        v14 = 0;
LABEL_21:

        return v14;
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      if (!v12)
      {
        v14 = 0;
        v17 = v10;
LABEL_20:

        v9 = v17;
        v10 = v11;
        goto LABEL_21;
      }

      v13 = v12;
      if (v11 != v12)
      {
        v14 = 0;
        v15 = v12;
        v16 = v11;
        v11 = v9;
LABEL_7:
        v9 = v10;
LABEL_18:
        v10 = v9;

        v9 = v16;
LABEL_19:
        v17 = v11;
        v11 = v10;
        goto LABEL_20;
      }

      v18 = [v12 superview];
      if (v18)
      {

        v19 = [v10 isActive];
        if (a1)
        {
          if (v19)
          {
            [v10 setActive_];
            if (!v6)
            {
              v14 = 1;
              v9 = v13;
              goto LABEL_19;
            }

            v16 = v9;
            v14 = 1;
            [v16 setActive_];

            v15 = v11;
            v11 = v16;
            goto LABEL_7;
          }
        }

        else if ((v19 & 1) == 0)
        {
          if (v6)
          {
            [v9 setActive_];
          }

          v14 = 1;
          [v10 setActive_];
          v15 = v10;
          v16 = v13;
          goto LABEL_18;
        }
      }

      v14 = 0;
      v15 = v9;
      v16 = v10;
      v9 = v13;
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t CallControlsMenuViewController.updateTrailingConstraints(dodging:)(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_trailingConstraints);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_trailingConstraints + 8);
    v5 = v4;
    v6 = v2;
    v7 = [v6 isActive];
    if (a1)
    {
      if (v7)
      {
        [v6 setActive_];
        if (!v4)
        {
          v9 = 1;
          goto LABEL_14;
        }

        v8 = v5;
        v9 = 1;
        [v8 setActive_];

        goto LABEL_9;
      }
    }

    else if ((v7 & 1) == 0)
    {
      if (v4)
      {
        [v5 setActive_];
      }

      v9 = 1;
      [v6 setActive_];
      v8 = v6;
      goto LABEL_13;
    }

    v9 = 0;
    v8 = v5;
LABEL_9:
    v5 = v6;
LABEL_13:

    v6 = v5;
LABEL_14:

    return v9;
  }

  return 0;
}

__n128 CallControlsMenuViewController.BlurConfiguration.init(radius:mask:trailingPadding:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = a3;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v7;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = a4;
  return result;
}

void CallControlsMenuViewController.updateBlur(sidebarState:conversationState:)(char a1, uint64_t a2)
{
  CallControlsMenuViewController.blurConfiguration(conversationState:)(a2, &v19);
  v4 = a1 & 1;
  if (v4)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  aBlock[4] = partial apply for closure #1 in CallControlsMenuViewController.updateBlur(sidebarState:conversationState:);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20;
  v8 = _Block_copy(aBlock);
  v9 = v2;

  [v6 animateWithDuration:0 delay:v8 options:0 animations:v5 completion:v5];
  _Block_release(v8);
  v10 = CallControlsMenuViewController.menuBlurView.getter(&OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView, closure #1 in CallControlsMenuViewController.menuBlurView.getter);
  v11 = v19;
  v12 = OBJC_IVAR____TtC15ConversationKit18VariableBlurUIView_radius;
  swift_beginAccess();
  *&v10[v12] = v11;
  VariableBlurUIView.setupLayers()();

  v13 = *&v9[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView];
  v23 = v20;
  v24[0] = v21[0];
  *(v24 + 9) = *(v21 + 9);
  v14 = v13;
  outlined init with copy of CallControlsMenuViewController.BlurConfiguration(&v19, aBlock);
  VariableBlurUIView.blurMask.setter(&v23);

  v15 = *&v9[OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController_menuBlurTrailingConstraint];
  if (v15)
  {
    v16 = v22;
    v17 = v15;
    [v17 setConstant_];
    outlined destroy of CallControlsMenuViewController.BlurConfiguration(&v19);
  }

  else
  {
    outlined destroy of CallControlsMenuViewController.BlurConfiguration(&v19);
  }
}

void closure #1 in CallControlsMenuViewController.updateBlur(sidebarState:conversationState:)(uint64_t a1, char a2)
{
  v3 = CallControlsMenuViewController.menuBlurView.getter(&OBJC_IVAR____TtC15ConversationKit30CallControlsMenuViewController____lazy_storage___menuBlurView, closure #1 in CallControlsMenuViewController.menuBlurView.getter);
  v5 = v3;
  v4 = 1.0;
  if (a2)
  {
    v4 = 0.0;
  }

  [v3 setAlpha_];
}

void closure #1 in CallControlsMenuViewController.observeState()(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    CallControlsMenuViewController.updateBlur(sidebarState:conversationState:)(a1 & 1, a2);
  }
}

id CallControlsMenuViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CallControlsMenuViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CallControlsMenuViewController.BlurConfiguration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 64))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for CallControlsMenuViewController.BlurConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0;
      *(result + 24) = 0u;
      *(result + 8) = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t outlined init with copy of CallControlsMenuView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallControlsMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CallControlsMenuView(uint64_t a1)
{
  v2 = type metadata accessor for CallControlsMenuView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1BFB209B0]();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = OUTLINED_FUNCTION_40_2();
  v9 = MEMORY[0x1BFB209B0](v8);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v9 preferredStyle:a5];

  return v10;
}

id @nonobjc UIAlertAction.__allocating_init(title:style:handler:)()
{
  OUTLINED_FUNCTION_244();
  v3 = v2;
  if (!v4)
  {
    v5 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = MEMORY[0x1BFB209B0]();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[4] = v1;
  v9[5] = v0;
  OUTLINED_FUNCTION_1_25();
  OUTLINED_FUNCTION_301();
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_425;
  v6 = _Block_copy(v9);

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 style:v3 handler:v6];
  _Block_release(v6);

  return v7;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItemType(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_82();
  v4 = type metadata accessor for RecentCallRecentItemMetadata(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_211();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_7_8();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v6 = *(v0 + *(v4 + 52));
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_45_1();
      RecentsListViewController.presentVideoMessagePlayer(callItem:url:indicatorModel:bypassSafety:)();
    }

    OUTLINED_FUNCTION_5_45();
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:)(uint64_t a1, void *a2)
{
  v83 = a2;
  OUTLINED_FUNCTION_20_2();
  v88 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v84 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v85 = v19;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v86 = v21;
  v87 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v82 = v23;
  v24 = OUTLINED_FUNCTION_4_24();
  v25 = type metadata accessor for RecentsCallItem(v24);
  v26 = OUTLINED_FUNCTION_9_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_39_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_83_1();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  if ((Features.lvmEverywhereEnabled.getter() & 1) == 0 || *(v2 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) != 1)
  {
    v54 = RecentsCallItem.messageIndicatorViewModel.getter();
    if (v54)
    {
      v55 = v54;
      v56 = [v54 mediaURL];

      v57 = v87;
      if (v56)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      OUTLINED_FUNCTION_258(v12, v58);
      OUTLINED_FUNCTION_77();
      outlined init with take of URL?();
      OUTLINED_FUNCTION_115(v15, 1, v57);
      if (!v59)
      {
        v61 = OUTLINED_FUNCTION_304();
        v62(v61);
        RecentsListViewController.presentVoicemail(url:and:)();
        v63 = OUTLINED_FUNCTION_44_0();
        return v64(v63);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v87);
    }

    v60 = v15;
    return outlined destroy of CallControlsService?(v60, &_s10Foundation3URLVSgMd);
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8F0))(&v89);
  if (!v90)
  {
    outlined destroy of CallControlsService?(&v89, &_s15ConversationKit25RecentsListViewControllerC23VoicemailDetailBuilding_pSgMd);
LABEL_22:
    v65 = RecentsCallItem.messageIndicatorViewModel.getter();
    v66 = v87;
    if (v65)
    {
      v67 = v65;
      v68 = [v65 mediaURL];

      if (v68)
      {
        v69 = v84;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = 0;
      }

      else
      {
        v70 = 1;
        v69 = v84;
      }

      OUTLINED_FUNCTION_258(v69, v70);
      v71 = v85;
      outlined init with take of URL?();
      OUTLINED_FUNCTION_115(v71, 1, v66);
      if (!v59)
      {
        v72 = OUTLINED_FUNCTION_33_0();
        v73(v72);
        RecentsListViewController.presentVoicemail(url:and:)();
        v74 = OUTLINED_FUNCTION_206();
        return v75(v74);
      }
    }

    else
    {
      v71 = v85;
      OUTLINED_FUNCTION_258(v85, 1);
    }

    v60 = v71;
    return outlined destroy of CallControlsService?(v60, &_s10Foundation3URLVSgMd);
  }

  outlined init with take of TapInteractionHandler(&v89, v91);
  v33 = RecentsCallItem.messageStoreMessage.getter();
  if (!v33)
  {
LABEL_21:
    __swift_destroy_boxed_opaque_existential_1(v91);
    goto LABEL_22;
  }

  v34 = v33;
  v80 = v92;
  v78 = v93;
  v79 = __swift_project_boxed_opaque_existential_1(v91, v92);
  OUTLINED_FUNCTION_20();
  v35 = swift_allocObject();
  v76[4] = v35;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_72();
  v76[2] = v36;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v37 = *(v28 + 80);
  v81 = v34;
  v38 = ((v37 + 24) & ~v37) + v30;
  v76[1] = ((v37 + 24) & ~v37);
  v77 = swift_allocObject();
  *(v77 + 16) = v35;
  OUTLINED_FUNCTION_111_0();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  OUTLINED_FUNCTION_20();
  v39 = swift_allocObject();
  v76[3] = v39;
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  OUTLINED_FUNCTION_20();
  v41 = swift_allocObject();
  v76[0] = v2;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_252();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v42 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = v81;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v45 = (v43 + v42);
  *v45 = v6;
  v45[1] = v5;
  v45[2] = v4;
  v45[3] = v3;
  v46 = v83;
  *(v43 + ((v42 + 39) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v47 = v78;
  v48 = *(v78 + 8);
  v49 = v46;

  v50 = v48(v44, partial apply for closure #1 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:), v77, partial apply for closure #2 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:), v40, partial apply for closure #3 in RecentsListViewController.presentVoicemailDetail(callItem:sourceRect:sourceView:), v43, v80, v47);

  if (!v50)
  {

    goto LABEL_21;
  }

  v51 = [v76[0] navigationController];
  if (v51)
  {
    v52 = v51;
    [v51 pushViewController:v50 animated:1];
  }

  return __swift_destroy_boxed_opaque_existential_1(v91);
}

void RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v56 = v4;
  v5 = OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for RecentOngoingConversationMetadata(v5);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = OUTLINED_FUNCTION_79_0();
  v9 = type metadata accessor for RecentCallRecentItemMetadata(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_3();
  RecentsListViewController.engaged(with:)();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_246_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_4_47();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  if (EnumCaseMultiPayload == 3 || (v3 & 1) != 0)
  {
    RecentsCallItem.tuHandles.getter();
    specialized Collection.first.getter(v20);
    OUTLINED_FUNCTION_212();

    if (v0)
    {
      v21 = objc_opt_self();
      v22 = [v21 sharedInstance];
      v23 = [v22 providerManager];

      v24 = [v23 faceTimeProvider];
      v25 = [v24 prioritizedSenderIdentities];

      v26 = [v25 firstObject];
      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity);
        if (swift_dynamicCast())
        {
          v27 = v57;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        outlined destroy of CallControlsService?(&v60, &_sypSgMd);
        v27 = 0;
      }

      OUTLINED_FUNCTION_176();
      v29 = (*(v28 + 752))();
      v30 = [v21 sharedInstance];
      v31 = [v30 providerManager];

      v32 = [v31 faceTimeProvider];
      v33 = RecentsCallItem.contact.getter();
      (*(*v29 + 136))(v32, 1, v33, v0, v27, 0, 8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_47();
    OUTLINED_FUNCTION_304();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_110_0();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        v37 = TUConversationManager.conversation(with:)(v0);
        if (v37)
        {
          v38 = v37;
          RecentsListViewController.joinOngoingConversation(_:)(v37);
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v41 = OUTLINED_FUNCTION_13_12();
          *(v41 + 16) = xmmword_1BC4BA940;
          specialized >> prefix<A>(_:)(v56, v42, v43, v44, v45, v46, v47, v48, v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1));
          v50 = v49;
          v52 = v51;
          *(v41 + 56) = MEMORY[0x1E69E6158];
          *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v41 + 32) = v50;
          *(v41 + 40) = v52;
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)();
        }

        goto LABEL_27;
      case 2u:
        v34 = *v14;
        v35 = RecentsCallItem.wantsStagingArea.getter();
        RecentsListViewController.joinConversationLink(_:wantsStagingArea:)(v34, v35);

        break;
      case 3u:
      case 4u:
        OUTLINED_FUNCTION_4_47();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        OUTLINED_FUNCTION_283();
        (*((*MEMORY[0x1E69E7D40] & v17) + 0x2C0))(&v60);
        __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
        v18 = OUTLINED_FUNCTION_44_0();
        v19(v18);
        goto LABEL_5;
      default:
        OUTLINED_FUNCTION_9_34();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
        RecentsCallItem.conversationLink.getter();
        v36 = v60;
        if (v60)
        {
          goto LABEL_23;
        }

        v39 = (v1 + *(v9 + 44));
        if (*v39)
        {
          v36 = *v39;

LABEL_23:
          v40 = RecentsCallItem.wantsStagingArea.getter();
          RecentsListViewController.joinConversationLink(_:wantsStagingArea:)(v36, v40);

          OUTLINED_FUNCTION_5_45();
LABEL_27:
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        }

        else
        {
          OUTLINED_FUNCTION_176();
          (*(v53 + 704))(&v60);
          __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
          v54 = OUTLINED_FUNCTION_44_0();
          v55(v54);
          OUTLINED_FUNCTION_5_45();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_5:
          __swift_destroy_boxed_opaque_existential_1(&v60);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.showLinkDetailViewController(for:)()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_72();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  type metadata accessor for LinkDetailViewModel();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_170();
  result = LinkDetailViewModel.init(recentsCallItem:)(v3);
  if (result)
  {
    v5 = result;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (v16)
    {
      outlined init with take of TapInteractionHandler(&v15, v17);
      v6 = *(*v5 + 416);
      v7 = swift_unknownObjectRetain();
      v6(v7, &protocol witness table for RecentsListViewController);

      RecentsListViewController.linkController.getter();
      outlined init with copy of IDSLookupManager(v17, &v15);
      v8 = objc_allocWithZone(type metadata accessor for LinkDetailViewController());
      v9 = OUTLINED_FUNCTION_91_2();
      v12 = LinkDetailViewController.init(viewModel:linkController:detailControllerFactory:)(v9, v10, v11);
      v13 = [v0 navigationController];
      if (v13)
      {
        v14 = v13;
        [v13 pushViewController:v12 animated:1];
      }

      RecentsListViewController.engaged(with:)();

      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {

      return outlined destroy of CallControlsService?(&v15, &_s15ConversationKit41RecentCallDetailControllerFactoryProtocol_pSgMd);
    }
  }

  return result;
}

Swift::Void __swiftcall RecentsListViewController.updateMarkAsReadButton()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = type metadata accessor for AttributeContainer();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v62[2] = v7 - v6;
  OUTLINED_FUNCTION_4_24();
  v64 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v62[1] = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v62[3] = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_7();
  v63 = OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton;
  v22 = *(v0 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton);
  if (v22)
  {
    v23 = v22;
    UIButton.configuration.getter();
  }

  else
  {
    type metadata accessor for UIButton.Configuration();
    v24 = OUTLINED_FUNCTION_84_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }

  v28 = type metadata accessor for UIButton.Configuration();
  v29 = OUTLINED_FUNCTION_90_2();
  v31 = 0;
  v32 = 0;
  if (!__swift_getEnumTagSinglePayload(v29, v30, v28))
  {
    UIButton.Configuration.attributedTitle.getter();
    v33 = OUTLINED_FUNCTION_311();
    v34 = v64;
    if (__swift_getEnumTagSinglePayload(v33, v35, v64))
    {
      outlined destroy of CallControlsService?(v2, &_s10Foundation16AttributedStringVSgMd);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v36 = *(v9 + 16);
      v36(v13, v2, v34);
      outlined destroy of CallControlsService?(v2, &_s10Foundation16AttributedStringVSgMd);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v37 = OUTLINED_FUNCTION_28_14();
      (v36)(v37);
      v38 = NSAttributedString.init(_:)();
      v2 = [v38 string];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v39;

      (*(v9 + 8))(v13, v64);
    }
  }

  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_293();
  v41 = (*(v40 + 1656))();
  v42 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v41);
  if (v42 && (v43 = *(v42 + 16), , v43 >= 2))
  {
    v44 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    v45 = 0x80000001BC4FAFA0;
    v46 = 0xD000000000000013;
  }

  else
  {
    v44 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    v46 = OUTLINED_FUNCTION_180_0();
  }

  v47.super.isa = v44;
  v48 = OUTLINED_FUNCTION_17_0(v46, v45, v13, v2, v47);
  v50 = v49;

  if (v32)
  {
    v51 = v31;
  }

  else
  {
    v51 = 0;
  }

  if (v32)
  {
    v52 = v32;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  if (v48 == v51 && v50 == v52)
  {
    swift_bridgeObjectRelease_n();
LABEL_25:

    goto LABEL_26;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_25;
  }

  v55 = OUTLINED_FUNCTION_90_2();
  if (__swift_getEnumTagSinglePayload(v55, v56, v28))
  {
  }

  else
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v64);
    v50 = v1;
    UIButton.Configuration.attributedTitle.setter();
  }

  v60 = *(v3 + v63);
  if (v60)
  {
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v61 = v60;
    OUTLINED_FUNCTION_6_4();
    UIButton.configuration.setter();
  }

LABEL_26:
  outlined destroy of CallControlsService?(v1, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  OUTLINED_FUNCTION_30_0();
}

uint64_t key path getter for RecentsListViewController.macCatalystDelegate : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RecentsListViewController.macCatalystDelegate : RecentsListViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t RecentsListViewController.macCatalystDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t RecentsListViewController.macCatalystDelegate.setter()
{
  OUTLINED_FUNCTION_55();
  v2 = v1 + OBJC_IVAR___FTRecentsListViewController_macCatalystDelegate;
  OUTLINED_FUNCTION_3_5();
  *(v2 + 8) = v0;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RecentsListViewController.macCatalystDelegate.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR___FTRecentsListViewController_macCatalystDelegate;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v7;
  return RecentsListViewController.macCatalystDelegate.modify;
}

void RecentsListViewController.macCatalystDelegate.modify()
{
  OUTLINED_FUNCTION_297();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t RecentsListViewController.recentCallProvider.setter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_recentCallProvider;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2();
  __swift_destroy_boxed_opaque_existential_1(v0 + v1);
  v2 = OUTLINED_FUNCTION_295();
  outlined init with take of RecentCallProviding & RecentsControllable(v2, v3);
  return swift_endAccess();
}

void *RecentsListViewController.avatarViewControllerSettings.getter()
{
  v1 = *(v0 + OBJC_IVAR___FTRecentsListViewController_avatarViewControllerSettings);
  v2 = v1;
  return v1;
}

uint64_t key path getter for RecentsListViewController.callCreator : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result;
  return result;
}

uint64_t key path getter for RecentsListViewController.callItemBlockContactsDelegate : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x320))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.callItemBlockContactsDelegate : RecentsListViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x328);
  v4 = *a1;
  return v3(v2);
}

void *RecentsListViewController.callItemBlockContactsDelegate.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_callItemBlockContactsDelegate;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RecentsListViewController.contactAvatarCustomConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___FTRecentsListViewController_contactAvatarCustomConfig;
  type metadata accessor for ContactAvatarTileViewCustomConfiguration();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t key path getter for RecentsListViewController.faceTimeReportSpamManager : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x380))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.faceTimeReportSpamManager : RecentsListViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x388);

  return v2(v3);
}

uint64_t RecentsListViewController.faceTimeReportSpamManager.getter()
{
  return RecentsListViewController.faceTimeReportSpamManager.getter();
}

{
  OUTLINED_FUNCTION_19_1();
}

uint64_t key path getter for RecentsListViewController.spamAlertBuilder : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x398))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.spamAlertBuilder : RecentsListViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3A0);

  return v2(v3);
}

uint64_t key path setter for RecentsListViewController.currentCallItemPresentedInDetailsView : RecentsListViewController(uint64_t a1, void **a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x418))(v5);
}

uint64_t RecentsListViewController.currentCallItemPresentedInDetailsView.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_1();
  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

uint64_t RecentsListViewController.currentCallItemPresentedInDetailsView.setter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_295();
  outlined assign with take of RecentsCallItem?();
  return swift_endAccess();
}

uint64_t key path getter for RecentsListViewController.callItemToBlockUnblockDisplayName : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.callItemToBlockUnblockDisplayName : RecentsListViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4A8);

  return v2(v3);
}

uint64_t RecentsListViewController.faceTimeReportSpamManager.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_5();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t key path getter for RecentsListViewController.presentScreenTimeShield : RecentsListViewController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUFilteredRequest) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.presentScreenTimeShield : RecentsListViewController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUFilteredRequest) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4C0);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t RecentsListViewController.presentScreenTimeShield.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t RecentsListViewController.presentScreenTimeShield.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t RecentsListViewController.presentScreenTimeShield.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return RecentsListViewController.presentScreenTimeShield.didset();
  }

  return result;
}

uint64_t key path getter for RecentsListViewController.sourceView : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x500))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.sourceView : RecentsListViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x508);
  v4 = *a1;
  return v3(v2);
}

void *RecentsListViewController.sourceView.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_sourceView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path getter for RecentsListViewController.setPreventsApplicationTerminationWhenModal : RecentsListViewController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x518))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.setPreventsApplicationTerminationWhenModal : RecentsListViewController(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x520);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ()), v5);
}

uint64_t RecentsListViewController.setPreventsApplicationTerminationWhenModal.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t RecentsListViewController.setPreventsApplicationTerminationWhenModal.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + OBJC_IVAR___FTRecentsListViewController_setPreventsApplicationTerminationWhenModal);
  OUTLINED_FUNCTION_3_5();
  *v3 = v2;
  v3[1] = v0;
}

uint64_t key path getter for RecentsListViewController.headerView : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x530))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.headerView : RecentsListViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x538);
  v4 = *a1;
  return v3(v2);
}

void *RecentsListViewController.headerView.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController_headerView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *RecentsListViewController.facetimeLinkTipPopoverReferenceItem.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x530);
  result = v2();
  v4 = result;
  if (result)
  {
    [result bounds];
    OUTLINED_FUNCTION_40_1();

    v7.origin.x = OUTLINED_FUNCTION_35();
    Width = CGRectGetWidth(v7);
    result = v2();
    if (result)
    {
      v6 = result;
      (*((*v1 & *result) + 0xE8))();

      return *&Width;
    }
  }

  return result;
}

uint64_t key path setter for RecentsListViewController.currentFilterMode : RecentsListViewController(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for FilterMenuViewModel.Action();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x570))(v7);
}

void RecentsListViewController.currentFilterMode.setter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for UICollectionLayoutListConfiguration();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v6 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_13_2();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x630))();
  OUTLINED_FUNCTION_27_15();
  v13 = (*(v12 + 184))();

  (*(v8 + 16))(v1, v0, v6);
  (*((*v10 & *v13) + 0x218))(v1);

  static RecentsListViewController.recommendedHeaderMode(for:)();
  RecentsListViewController.collectionLayoutConfiguration.getter();
  UICollectionLayoutListConfiguration.headerMode.setter();
  RecentsListViewController.collectionLayoutConfiguration.setter();
  RecentsListViewController.updateLeftBarButton()();
  v14 = OUTLINED_FUNCTION_76();
  v15(v14);
  OUTLINED_FUNCTION_30_0();
}

void (*RecentsListViewController.currentFilterMode.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_47(v2) = v0;
  v3 = type metadata accessor for FilterMenuViewModel.Action();
  v1[1] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = __swift_coroFrameAllocStub(v6);
  RecentsListViewController.currentFilterMode.getter();
  return RecentsListViewController.currentFilterMode.modify;
}

void RecentsListViewController.currentFilterMode.modify()
{
  RecentsListViewController.currentFilterMode.modify();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  if (v5)
  {
    OUTLINED_FUNCTION_284();
    v6 = OUTLINED_FUNCTION_62_0();
    v7(v6);
    v2(v3);
    v8 = OUTLINED_FUNCTION_308();
    v9(v8);
  }

  else
  {
    v1(*(*v0 + 32));
  }

  free(v4);
  free(v3);
  OUTLINED_FUNCTION_49();

  free(v10);
}

id RecentsListViewController.configurationProvider.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController____lazy_storage___configurationProvider;
  v2 = *(v0 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___configurationProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___configurationProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8AF8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t key path getter for RecentsListViewController.dataSource : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x630))();
  *a2 = result;
  return result;
}

uint64_t key path getter for RecentsListViewController.collectionView : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x678))();
  *a2 = result;
  return result;
}

void (*RecentsListViewController.collectionView.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = RecentsListViewController.collectionView.getter();
  return RecentsListViewController.collectionView.modify;
}

uint64_t key path setter for RecentsListViewController.cellBackgroundConfiguration : RecentsListViewController(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x698))(v7);
}

void RecentsListViewController.cellBackgroundConfiguration.getter()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_308();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v5, v6, v4);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_32_2();
    outlined destroy of CallControlsService?(v8, v9);
    static UIBackgroundConfiguration.clear()();
    OUTLINED_FUNCTION_71();
    v10 = OUTLINED_FUNCTION_45_1();
    v11(v10);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    v15 = OUTLINED_FUNCTION_76();
    v16(v15);
  }

  OUTLINED_FUNCTION_49();
}

void RecentsListViewController.cellBackgroundConfiguration.setter()
{
  RecentsListViewController.cellBackgroundConfiguration.setter();
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_318();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_174();
  v4 = v0(0);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_157();
  v6(v5);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of RecentsCallItem?();
  swift_endAccess();
  OUTLINED_FUNCTION_49();
}

void (*RecentsListViewController.cellBackgroundConfiguration.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_47(v2) = v0;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v1[1] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = __swift_coroFrameAllocStub(v6);
  RecentsListViewController.cellBackgroundConfiguration.getter();
  return RecentsListViewController.cellBackgroundConfiguration.modify;
}

id closure #1 in closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    RecentsListViewController.getSwipeActions(at:)(a1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
    v4 = @nonobjc UISwipeActionsConfiguration.__allocating_init(actions:)();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
    return @nonobjc UISwipeActionsConfiguration.__allocating_init(actions:)();
  }

  return v4;
}

id @nonobjc UISwipeActionsConfiguration.__allocating_init(actions:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() configurationWithActions_];

  return v1;
}

uint64_t RecentsListViewController.getSwipeActions(at:)(uint64_t a1)
{
  v3 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for RecentsCallItem(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))(v8);
  (*(v9 + 280))(a1);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit15RecentsCallItemVSgMd);
    return MEMORY[0x1E69E7CC0];
  }

  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    return MEMORY[0x1E69E7CC0];
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  v12 = RecentsListViewController.deleteAction(of:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAC30;
  *(v10 + 32) = v12;
  v24 = v10;
  type metadata accessor for SpamFlowController();
  inited = swift_initStackObject();
  v22 = v7;
  v23 = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  outlined init with take of TapInteractionHandler(&v21, inited + 16);
  v14 = v12;
  v15 = SpamFlowController.determineFlow()();
  if (one-time initialization token for spam != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Logger.spam);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_1BBC58000, v17, v18, "spamFlowController: %ld", v19, 0xCu);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  switch(v15)
  {
    case ConversationKit_SpamFlowController_Flow_groupIntiatorReport:
    case ConversationKit_SpamFlowController_Flow_knownContact:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 16);
      break;
    default:
      RecentsListViewController.groupReportAndBlockAction(of:)();
      MEMORY[0x1BFB20CC0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v24;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 16);

      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      break;
  }

  return v10;
}

uint64_t closure #2 in closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v5 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListSeparatorConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 16))(a3, a2, v11);
  }

  v16 = Strong;
  v45 = v9;
  v46 = v5;
  v44 = v8;
  v17 = (*(v12 + 16))(v14, a2, v11);
  v18 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x678);
  v19 = v18(v17);
  v20 = outlined bridged method (ob) of @objc UICollectionView.indexPathsForSelectedItems.getter(v19);
  if (!v20)
  {

    return (*(v12 + 32))(a3, v14, v11);
  }

  v21 = v20;
  v42 = a3;
  v43 = v7;
  v22 = v49;
  result = IndexPath.row.getter();
  v24 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v41 = v11;
  v25 = IndexPath.section.getter();
  v26 = v48;
  v27 = MEMORY[0x1BFB1A640](v24, v25);
  v28 = v18(v27);
  v29 = [v28 numberOfItemsInSection_];

  MEMORY[0x1EEE9AC00](v30);
  *(&v40 - 2) = v26;
  v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v40 - 4), v21);
  if (v31)
  {

    v33 = v45;
    v32 = v46;
    v34 = v43;
LABEL_6:
    (*(v47 + 104))(v34, *MEMORY[0x1E69DC180], v32);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
    v35 = v29 - 1;
    v36 = __OFSUB__(v29, 1);
    goto LABEL_19;
  }

  MEMORY[0x1EEE9AC00](v31);
  *(&v40 - 2) = v22;
  v37 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v40 - 4), v21);

  v33 = v45;
  v32 = v46;
  v34 = v43;
  if (v37)
  {
    result = IndexPath.row.getter();
    if (__OFADD__(result, 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if ((result + 1) != v29)
    {
      goto LABEL_6;
    }
  }

  result = IndexPath.row.getter();
  v35 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (result < v35)
  {
    v38 = [v16 traitCollection];
    v39 = [v38 userInterfaceIdiom];

    if (v39 == 5)
    {
      (*(v47 + 104))(v34, *MEMORY[0x1E69DC180], v32);
      UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
    }
  }

  v36 = 0;
LABEL_19:
  result = IndexPath.row.getter();
  if (v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result == v35)
  {
    (*(v47 + 104))(v34, *MEMORY[0x1E69DC178], v32);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }

  UIListSeparatorConfiguration.topSeparatorInsets.setter();

  (*(v33 + 8))(v48, v44);
  return (*(v12 + 32))(v42, v14, v41);
}

uint64_t key path getter for RecentsListViewController.avatarViewControllerDelegate : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x870))();
  *a2 = result;
  return result;
}

id RecentsListViewController.avatarViewControllerDelegate.getter()
{
  v1 = OBJC_IVAR___FTRecentsListViewController____lazy_storage___avatarViewControllerDelegate;
  v2 = *&v0[OBJC_IVAR___FTRecentsListViewController____lazy_storage___avatarViewControllerDelegate];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___FTRecentsListViewController____lazy_storage___avatarViewControllerDelegate];
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for AvatarViewControllerDelegateWrapper());
    v6 = AvatarViewControllerDelegateWrapper.init(hostingViewController:)(v0);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id AvatarViewControllerDelegateWrapper.__allocating_init(hostingViewController:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_247());
  v1 = OUTLINED_FUNCTION_28_0();
  return AvatarViewControllerDelegateWrapper.init(hostingViewController:)(v1);
}

void (*RecentsListViewController.avatarViewControllerDelegate.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = RecentsListViewController.avatarViewControllerDelegate.getter();
  return RecentsListViewController.avatarViewControllerDelegate.modify;
}

id RecentsListViewController.viewDidFinishInitialLoad.getter()
{
  result = [v1 isViewLoaded];
  if (result)
  {
    v3 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_137();
    (*(v4 + 1584))();
    OUTLINED_FUNCTION_27_15();
    (*(v5 + 184))();
    OUTLINED_FUNCTION_247();

    OUTLINED_FUNCTION_11_23();
    v7 = (*((*v3 & v6) + 0x180))();

    return (v7 & 1);
  }

  return result;
}

uint64_t key path getter for RecentsListViewController.contactStore : RecentsListViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x8D8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsListViewController.contactStore : RecentsListViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x8E0);
  v4 = *a1;
  return v3(v2);
}

uint64_t RecentsListViewController.voicemailDetailBuilder.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_1();
  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

_BYTE *RecentsListViewController.__allocating_init(recentCallProvider:detailControllerFactory:contactStore:)()
{
  OUTLINED_FUNCTION_318();
  v1 = objc_allocWithZone(OUTLINED_FUNCTION_212());
  v2 = OUTLINED_FUNCTION_1_5();
  return RecentsListViewController.init(recentCallProvider:detailControllerFactory:contactStore:)(v2, v3, v0);
}

id RecentsListViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void RecentsListViewController.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_331();
  a20 = v22;
  a21 = v23;
  v24 = v21;
  *(v21 + OBJC_IVAR___FTRecentsListViewController_macCatalystDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR___FTRecentsListViewController_indexPathForMenu;
  type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_258(v24 + v25, 1);
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___callCreator) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_callItemBlockContactsDelegate) = 0;
  ContactAvatarTileViewCustomConfiguration.init(needsHStackingSpacing:)();
  *(v24 + OBJC_IVAR___FTRecentsListViewController_videoMessagesSink) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_autoplaySink) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_linkCoordinator) = 0;
  v26 = OBJC_IVAR___FTRecentsListViewController_faceTimeReportSpamManager;
  type metadata accessor for ReportSpamManager();
  a13 = 1;
  *(v24 + v26) = ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)(&a13, 0, 0);
  v27 = OBJC_IVAR___FTRecentsListViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *(v24 + v27) = swift_allocObject();
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___videoMessagingReportSpamManager) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeButton) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeDeleteButton) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeMarkAsReadButton) = 0;
  v28 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_13_6(v28);
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonWidthConstraints) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonStandardConstraints) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_newFaceTimeEditModeButtonAXConstraints) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_callFilteringTipView) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_callFilteringOnboardingViewController) = 0;
  v29 = OBJC_IVAR___FTRecentsListViewController_callItemToBlockUnblockDisplayName;
  *(v24 + v29) = Dictionary.init(dictionaryLiteral:)();
  v30 = (v24 + OBJC_IVAR___FTRecentsListViewController_presentScreenTimeShield);
  *v30 = 0;
  v30[1] = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager) = 0;
  v31 = (v24 + OBJC_IVAR___FTRecentsListViewController_actionCompletionHandler);
  *v31 = 0;
  v31[1] = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_sourceView) = 0;
  OUTLINED_FUNCTION_185((v24 + OBJC_IVAR___FTRecentsListViewController_setPreventsApplicationTerminationWhenModal));
  *(v24 + OBJC_IVAR___FTRecentsListViewController_headerView) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_headerViewIsPresented) = 0;
  v32 = OBJC_IVAR___FTRecentsListViewController_featureFlags;
  *(v24 + v32) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v24 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___configurationProvider) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_currentRequestCountSink) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_currentVoicemailCountSink) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController_currentVideomailCountSink) = 0;
  v33 = OBJC_IVAR___FTRecentsListViewController_isJunkFilteringEnabled;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  *(v24 + v33) = Features.isJunkFilteringEnabled.getter() & 1;
  v34 = OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled;
  *(v24 + v34) = Features.isFaceTimeLaunchPageEnabled.getter() & 1;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___linkController) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___sensitiveContentTipViewModel) = 1;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___dataSource) = 0;
  v35 = (v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___supplementaryViewProvider);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___cellProvider);
  *v36 = 0;
  v36[1] = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___collectionView) = 0;
  v37 = type metadata accessor for UIBackgroundConfiguration();
  OUTLINED_FUNCTION_13_6(v37);
  v38 = OBJC_IVAR___FTRecentsListViewController_cellRegistrationForRecentsCallItemCalls;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGMd);
  OUTLINED_FUNCTION_54_6(v24 + v38);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForRecentsSensitveCallItemCalls);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForRecentsCallItemOngoingCalls);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForRecentsCallItemLinks);
  v39 = OBJC_IVAR___FTRecentsListViewController_cellRegistrationForJunk;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGMd);
  OUTLINED_FUNCTION_54_6(v24 + v39);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForRequests);
  v40 = OBJC_IVAR___FTRecentsListViewController_cellRegistrationForGridRecentsCallItemCalls;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGMd);
  OUTLINED_FUNCTION_54_6(v24 + v40);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForGridRecentsSensitveCallItemCalls);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForGridRecentsCallItemOngoingCalls);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForGridRecentsCallItemLinks);
  OUTLINED_FUNCTION_49_10(OBJC_IVAR___FTRecentsListViewController_cellRegistrationForGridRecentsCallItemSuggestion);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB8ListCellCGMd);
  OUTLINED_FUNCTION_13_6(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit020RecentsHeaderButtonsB0CGMd);
  OUTLINED_FUNCTION_13_6(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_So0aB4CellCGMd);
  OUTLINED_FUNCTION_13_6(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_6TipKit0faB4CellCGMd);
  OUTLINED_FUNCTION_13_6(v44);
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___deleteButtonItem) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___flexibleSpaceButtonItem) = 0;
  v45 = type metadata accessor for UICollectionLayoutListConfiguration();
  OUTLINED_FUNCTION_13_6(v45);
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___editMenu) = 0;
  *(v24 + OBJC_IVAR___FTRecentsListViewController____lazy_storage___avatarViewControllerDelegate) = 0;
  v46 = (v24 + OBJC_IVAR___FTRecentsListViewController_pseudonymForDeferredLinkDetailPresentation);
  *v46 = 0;
  v46[1] = 0;
  v47 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_6(v47);
  v48 = OBJC_IVAR___FTRecentsListViewController_onboardingController;
  *(v24 + v48) = [objc_allocWithZone(CNKCNSharedProfileOnboardingController) init];
  *(v24 + OBJC_IVAR___FTRecentsListViewController_contactStore) = 0;
  v49 = OBJC_IVAR___FTRecentsListViewController_snapController;
  v50 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v51 = [objc_allocWithZone(MEMORY[0x1E695D1A0]) initWithContactStore_];

  *(v24 + v49) = v51;
  v52 = v24 + OBJC_IVAR___FTRecentsListViewController_voicemailDetailBuilder;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0;
  OUTLINED_FUNCTION_258(v24 + OBJC_IVAR___FTRecentsListViewController_joinCallThrottlingIndexPath, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id key path getter for UIScrollView.contentOffset : UICollectionView@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

float64x2_t closure #1 in RecentsListViewController.viewDidLoad()@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vrndmq_f64(*a1);
  *a2 = result;
  return result;
}

void closure #2 in RecentsListViewController.viewDidLoad()(double *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v40 - v9);
  v11 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v43 = v8;
    v45 = v2;
    v46 = v10;
    v41 = v4;
    v15 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x678);
    v42 = v15();
    v44 = v14;
    v16 = v15();
    v17 = [v16 subviews];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    v20 = specialized Array.count.getter(v18);
    v21 = 0;
    v22 = v18 & 0xC000000000000001;
    while (v20 != v21)
    {
      if (v22)
      {
        v23 = MEMORY[0x1BFB22010](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        outlined destroy of CallControlsService?(v22, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
        __break(1u);
        return;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x1BFB20CC0]();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v47;
        ++v21;
      }

      else
      {

        ++v21;
      }
    }

    v25 = specialized Array.count.getter(v19);
    v26 = 0;
    v22 = v19 & 0xC000000000000001;
    while (v25 != v26)
    {
      if (v22)
      {
        v27 = MEMORY[0x1BFB22010](v26, v19);
      }

      else
      {
        if (v26 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v27 = *(v19 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_33;
      }

      [v27 frame];
      if (v29 == v11 || ([v28 frame], v30 == v12))
      {

        goto LABEL_26;
      }

      ++v26;
    }

    v28 = v42;
LABEL_26:

    v31 = v44;
    v32 = *((*MEMORY[0x1E69E7D40] & *v44) + 0x630);
    v33 = v28;
    v32();
    v34 = specialized VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)(15);

    v35 = static AutoplayAction.uponScrolling(in:candidates:isUsingGridLayout:scrollDirection:allowsSimultaneous:)(0, v33, v34, 1, 0, 0);

    v36 = specialized _NativeDictionary.filter(_:)(v35);

    v37 = v46;
    specialized Collection.first.getter(v36, v46);

    v38 = v43;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v38, 1, v45) == 1)
    {
      outlined destroy of CallControlsService?(v37, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetSgMd);
    }

    else
    {
      v39 = v41;
      outlined init with take of URL?();
      closure #5 in closure #2 in RecentsListViewController.viewDidLoad()(v39, v31);

      outlined destroy of CallControlsService?(v39, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
      outlined destroy of CallControlsService?(v37, &_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetSgMd);
    }
  }
}

uint64_t specialized VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)(uint64_t a1)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17AutoplayCandidateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v66 - v3;
  v5 = type metadata accessor for AutoplayCandidate(0);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v68 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v66 - v9;
  v76 = type metadata accessor for IndexPath();
  v74 = *(v76 - 8);
  v11 = MEMORY[0x1EEE9AC00](v76);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v75 = v66 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v66 - v24;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v69 = v15;
  v72 = v1;
  v78 = RecentsCollectionViewDataSource.visibleIndexPaths()();

  specialized MutableCollection<>.sort(by:)();

  v70.i64[0] = v78;
  specialized Collection.first.getter(v78, v25);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v27 = v76;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v76);
  v66[1] = v10;
  if (EnumTagSinglePayload == 1)
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = v6;
    v30 = v74;
    v31 = v69;
    (*(v74 + 32))(v69, v23, v27);
    v67 = specialized IndexPathMappable.prefetchIndexPathsFor(_:amount:)(v31, -3);
    v32 = v30;
    v6 = v29;
    (*(v32 + 8))(v31, v27);
  }

  v33 = v75;
  outlined destroy of CallControlsService?(v25, &_s10Foundation9IndexPathVSgMd);
  specialized BidirectionalCollection.last.getter(v70.i64[0], v33);
  v34 = v73;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v35 = __swift_getEnumTagSinglePayload(v34, 1, v27);
  v66[2] = v6;
  if (v35 == 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v74;
  }

  else
  {
    v37 = v74;
    v38 = v69;
    (*(v74 + 32))(v69, v34, v27);
    v36 = specialized IndexPathMappable.prefetchIndexPathsFor(_:amount:)(v38, 3);
    (*(v37 + 8))(v38, v27);
  }

  outlined destroy of CallControlsService?(v33, &_s10Foundation9IndexPathVSgMd);
  v77 = v67;
  specialized Array.append<A>(contentsOf:)(v70.i64[0]);
  specialized Array.append<A>(contentsOf:)(v36);
  v39 = 0;
  v40 = v77;
  v73 = v77[2];
  v75 = (v37 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  v41 = (v37 + 8);
  v70 = vdupq_n_s64(0x43E0000000000000uLL);
LABEL_10:
  v42 = v76;
  while (1)
  {
    if (v73 == v39)
    {

      return v69;
    }

    if (v39 >= v40[2])
    {
      break;
    }

    v43 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39;
    v44 = *(v37 + 16);
    v44(v13, v43, v42);
    v45 = RecentsCollectionViewDataSource.videoId(for:)(v13);
    if (v46)
    {
      v47 = 1;
    }

    else
    {
      v48 = v45;
      if (RecentsCollectionViewDataSource.container(at:)())
      {
        v50 = v49;
        v44(&v4[v5[5]], v13, v76);
        ObjectType = swift_getObjectType();
        v52 = (*(v50 + 40))(ObjectType, v50);
        v54 = v53;
        v56 = v55;
        v58 = v57;
        swift_unknownObjectRelease();
        *v4 = v48;
        v59 = &v4[v5[6]];
        *v59 = v52;
        *(v59 + 1) = v54;
        *(v59 + 2) = v56;
        *(v59 + 3) = v58;
      }

      else
      {
        v44(&v4[v5[5]], v13, v76);
        *v4 = v48;
        v60 = &v4[v5[6]];
        *v60 = v70;
        v60[1].i64[0] = 0;
        v60[1].i64[1] = 0;
      }

      v47 = 0;
      *&v4[v5[7]] = v71;
    }

    v37 = v74;
    __swift_storeEnumTagSinglePayload(v4, v47, 1, v5);
    v42 = v76;
    (*v41)(v13, v76);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v61 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v61 = v64;
      }

      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      v69 = v61;
      if (v63 >= v62 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v65;
      }

      ++v39;
      *(v69 + 2) = v63 + 1;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      goto LABEL_10;
    }

    outlined destroy of CallControlsService?(v4, &_s15ConversationKit17AutoplayCandidateVSgMd);
    ++v39;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #5 in closure #2 in RecentsListViewController.viewDidLoad()(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-v5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v11 = *(v4 + 56);
  v12 = &v6[v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd) + 48)];
  v13 = type metadata accessor for AutoplayCandidate(0);
  (*(v8 + 16))(v10, &v12[*(v13 + 20)], v7);
  v14 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  v15 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x678))(v14);
  v16 = [v15 indexPathsForVisibleItems];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a2;
  v21 = v10;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #5 in closure #2 in RecentsListViewController.viewDidLoad(), v19, v17);

  return (*(v8 + 8))(v10, v7);
}

void closure #1 in closure #5 in closure #2 in RecentsListViewController.viewDidLoad()(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x678))();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v3 cellForItemAtIndexPath_];

  if (v5)
  {
    type metadata accessor for RecentsCollectionViewGridCell();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = static IndexPath.== infix(_:_:)();
      (*((*v2 & *v7) + 0x98))(v9 & 1);
    }
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.viewWillAppear(_:), v6, v5);
}

void RecentsListViewController.updateFilterMenu()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28[-1] - v3;
  v5 = RecentsListViewController.filterBarButtonItem.getter();
  isa = RecentsListViewController.generateFilterMenu()().super.super.isa;
  [(objc_class *)v5 setMenu:isa];

  v7 = RecentsListViewController.filterBarButtonItem.getter();
  RecentsListViewController.getFilterMenuBadge()(v4);
  UIBarButtonItem.badge.setter();

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315138;
    v14 = RecentsListViewController.filterBarButtonItem.getter();
    UIBarButtonItem.badge.getter();

    specialized >> prefix<A>(_:)(v4, v15, v16, v17, v18, v19, v20, v21, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8]);
    v23 = v22;
    v25 = v24;
    outlined destroy of CallControlsService?(v4, &_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMd);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v28);

    *(v12 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Updating filter menu badge to be %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  RecentsListViewController.updateLeftBarButton()();
}

uint64_t closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:), v6, v5);
}

uint64_t closure #1 in closure #2 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsListViewController.updateFilterMenu()();
  }

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t closure #1 in RecentsListViewController.viewWillAppear(_:)()
{
  OUTLINED_FUNCTION_238();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v0, v6, v7, v5);
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_201(v8);
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_182();

  static MainActor.shared.getter();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v2;
  v9[3] = v10;
  v9[4] = v8;

  type metadata completion function for SyncedScreeningAlphaGradientView();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

Swift::Void __swiftcall RecentsListViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))();
  OUTLINED_FUNCTION_20_8();
  (*(v4 + 320))();

  OUTLINED_FUNCTION_11_23();
  (*((*v3 & v5) + 0x2C0))(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = OUTLINED_FUNCTION_40_2();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1);
  RecentsListViewController.tipKitStartObservation()();
}

id RecentsListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id RecentItemContactsViewControllerDelegate.__allocating_init(_:faceTimeReportSpamManager:)()
{
  OUTLINED_FUNCTION_55();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_45_1();
  return RecentItemContactsViewControllerDelegate.init(_:faceTimeReportSpamManager:)();
}

id RecentItemContactsViewControllerDelegate.init(_:faceTimeReportSpamManager:)()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_1_72();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  *&v1[OBJC_IVAR____TtC15ConversationKit40RecentItemContactsViewControllerDelegate_faceTimeReportSpamManager] = v0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RecentItemContactsViewControllerDelegate(0);
  v2 = objc_msgSendSuper2(&v4, sel_init);
  OUTLINED_FUNCTION_0_74();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  return v2;
}

void specialized ReportSpamManager.reportFaceTimeCallSpam<A>(call:)()
{
  ReportSpamManager.fetchLocalFaceTimeHandles()();
  specialized Collection.first.getter(v1);
  if (v2)
  {

    RecentsCallItem.spamModel(with:)();

    memcpy(__dst, __src, sizeof(__dst));
    ReportSpamManager.SpamDataModel.mapToDict.getter();
    v4 = v3;
    outlined destroy of ReportSpamManager.SpamDataModel(__src);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static ReportSpamManager.logger);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      __dst[0] = v9;
      *v8 = 136315138;
      if (v4)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, __dst);

      *(v8 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v6, v7, "ReportSpamManager: report spam, model.dictionary: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    v22 = *(v0 + 16);
    if (v4)
    {
      v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v23.super.isa = 0;
    }

    v24 = [v22 reportSpamMessage_];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "ReportSpamManager: report spam was sent successfully";
LABEL_24:
        _os_log_impl(&dword_1BBC58000, v25, v26, v29, v28, 2u);
        MEMORY[0x1BFB23DF0](v28, -1, -1);
      }
    }

    else if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_24;
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static ReportSpamManager.logger);

  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    __src[0] = v16;
    *v15 = 136315138;
    v17 = Set.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, __src);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, oslog, v14, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  else
  {
  }
}

{
  OUTLINED_FUNCTION_29();
  ReportSpamManager.fetchLocalFaceTimeHandles()();
  specialized Collection.first.getter(v1);
  if (v2)
  {

    OUTLINED_FUNCTION_209();
    CHRecentCall.spamModel(with:)();

    memcpy(__dst, __src, sizeof(__dst));
    ReportSpamManager.SpamDataModel.mapToDict.getter();
    v4 = v3;
    outlined destroy of ReportSpamManager.SpamDataModel(__src);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_131();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static ReportSpamManager.logger);
    OUTLINED_FUNCTION_6_4();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_42();
      v9 = OUTLINED_FUNCTION_23();
      __dst[0] = v9;
      *v8 = 136315138;
      if (v4)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, __dst);

      *(v8 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v6, v7, "ReportSpamManager: report spam, model.dictionary: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    v24 = *(v0 + 16);
    if (v4)
    {
      v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v25.super.isa = 0;
    }

    v26 = [v24 reportSpamMessage_];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = OUTLINED_FUNCTION_25(v28);
    if (v26)
    {
      if (v29)
      {
        goto LABEL_23;
      }
    }

    else if (v29)
    {
LABEL_23:
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v30);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_25;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_131();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static ReportSpamManager.logger);
  OUTLINED_FUNCTION_6_4();

  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_23();
    __src[0] = v16;
    *v15 = 136315138;
    Set.description.getter();

    v17 = OUTLINED_FUNCTION_32_2();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v19);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, oslog, v14, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_27();

LABEL_25:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_30_0();
}

id RecentsListViewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t RecentsListViewController.createCellRegistrationForJunk()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  type metadata accessor for RecentsCallItem(0);

  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t closure #1 in RecentsListViewController.createCellRegistrationForJunk()()
{
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVy014CommunicationsB012JunkCellViewVAA05EmptyH0VGMd);
  v1[4] = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type UIHostingConfiguration<JunkCellView, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVy014CommunicationsB012JunkCellViewVAA05EmptyH0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v1);
  type metadata accessor for JunkCellView();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type JunkCellView and conformance JunkCellView, MEMORY[0x1E69959A8]);
  UIHostingConfiguration<>.init(content:)();
  return MEMORY[0x1BFB216E0](v1);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.createCellRegistrationForJunk()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  return JunkCellView.init(item:)(v4, a1);
}

uint64_t RecentsListViewController.createCellRegistrationForRequests()()
{
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  type metadata accessor for RecentsCallItem(0);
  v1 = v0;

  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t closure #1 in RecentsListViewController.createCellRegistrationForRequests()(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for RecentsCallItem(0);
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v19 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - v5;
  v6 = type metadata accessor for RequestsCellView();
  v7 = *(v6 - 8);
  v20 = v6;
  v21 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v18 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  *(swift_allocObject() + 16) = v9;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v12 = v18;
  RequestsCellView.init(item:acceptAction:deleteAction:)(v17, partial apply for closure #1 in closure #1 in RecentsListViewController.createCellRegistrationForRequests(), partial apply for closure #2 in closure #1 in RecentsListViewController.createCellRegistrationForRequests(), v11, v18);
  v23 = v12;
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVy014CommunicationsB016RequestsCellViewVAA05EmptyH0VGMd);
  v24[4] = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type UIHostingConfiguration<RequestsCellView, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVy014CommunicationsB016RequestsCellViewVAA05EmptyH0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v24);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type RequestsCellView and conformance RequestsCellView, MEMORY[0x1E6995A10]);
  v13 = v20;
  UIHostingConfiguration<>.init(content:)();
  MEMORY[0x1BFB216E0](v24);
  return (*(v21 + 8))(v12, v13);
}

void closure #1 in closure #1 in RecentsListViewController.createCellRegistrationForRequests()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x508);
    v5 = a1;
    v4(a1);
    RecentsListViewController.presentAcceptUI(for:)();
  }
}

void RecentsListViewController.presentAcceptUI(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_249();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4_47();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    v8 = 0;
LABEL_3:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v65 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_9_34();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
  v8 = *(v1 + *(v6 + 24));
  if (!v8)
  {
    OUTLINED_FUNCTION_5_45();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    goto LABEL_3;
  }

  v60 = v2;
  v15 = type metadata accessor for RequestsHandler();
  v16 = v8;
  static RequestsHandler.localHandle(for:)();
  v66 = v17;
  v11 = v18;
  v63 = static RequestsHandler.sourceBundleID(for:)(v16);
  v9 = v19;
  v20 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v16);
  if (v20 && (specialized Collection.first.getter(v20), OUTLINED_FUNCTION_28_0(), , v15))
  {
    v14 = CHHandle.tuHandle.getter();
  }

  else
  {
    v14 = 0;
  }

  v21 = [objc_opt_self() contactForRecentCall:v16 metadataCache:0];
  if (!v21)
  {
    OUTLINED_FUNCTION_5_45();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();

    v12 = 0;
LABEL_15:
    v65 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v22 = v21;
  objc_opt_self();
  v12 = v22;
  v23 = OUTLINED_FUNCTION_2_52();
  v25 = [v23 v24];
  if (!v25)
  {
    OUTLINED_FUNCTION_5_45();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();

    goto LABEL_15;
  }

  v26 = v25;
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v27;

  OUTLINED_FUNCTION_5_45();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_16:
  v2 = v60;
  v8 = v63;
  v10 = v66;
LABEL_17:
  if (!RecentsCallItem.messageStoreMessage.getter())
  {
    v67 = v10;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_23:

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_1_20();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v35, static Logger.conversationKit);
    v36 = static os_log_type_t.error.getter();
    v37 = Logger.logObject.getter();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = OUTLINED_FUNCTION_33();
      *v38 = 0;
      _os_log_impl(&dword_1BBC58000, v37, v36, "[RecentsListViewController] Could not find remote handle", v38, 2u);
      OUTLINED_FUNCTION_27();
    }

    RecentsListViewController.executeCompletionHandler(_:)(0);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_34_2();

  v67 = dispatch thunk of Message.recipient.getter();
  v11 = v28;
  v29 = [objc_opt_self() mainBundle];
  v8 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v29);
  v9 = v30;
  v31 = dispatch thunk of Message.senderHandle.getter();

  v14 = v31;
  if (!v31)
  {
    goto LABEL_23;
  }

LABEL_19:
  v32 = [v14 type];
  if (v32 == 2)
  {
    v61 = v12;
    v64 = v8;
    v33 = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNUIAcceptedContactConfiguration);
    v39 = [v14 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_243_0();

    OUTLINED_FUNCTION_77();
  }

  else
  {
    if (v32 != 3)
    {

      RecentsListViewController.executeCompletionHandler(_:)(0);

      goto LABEL_44;
    }

    v61 = v12;
    v64 = v8;
    v33 = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNUIAcceptedContactConfiguration);
    v34 = [v14 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v40 = @nonobjc CNUIAcceptedContactConfiguration.__allocating_init(forEmailAddress:)();
  v41 = *&v4[*(type metadata accessor for RecentsCallItem(0) + 24) + 8];
  v42 = v40;
  if (v41)
  {
    v43 = OUTLINED_FUNCTION_76();
    v41 = MEMORY[0x1BFB209B0](v43);
  }

  [v40 setSubtitle_];

  if (v13)
  {
    v44 = MEMORY[0x1BFB209B0](v65, v13);
  }

  else
  {
    v44 = 0;
  }

  v45 = OUTLINED_FUNCTION_253();
  [v45 v46];

  v47 = OUTLINED_FUNCTION_2_52();
  [v47 v48];
  if (v11)
  {
    v49 = MEMORY[0x1BFB209B0](v67, v11);
  }

  else
  {
    v49 = 0;
  }

  v50 = OUTLINED_FUNCTION_253();
  [v50 v51];

  if (v9)
  {
    v52 = MEMORY[0x1BFB209B0](v64, v9);
  }

  else
  {
    v52 = 0;
  }

  v53 = OUTLINED_FUNCTION_253();
  [v53 v54];

  v55 = [objc_allocWithZone(MEMORY[0x1E695D1A8]) initWithConfiguration_];
  v56 = OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager;
  v57 = *(v33 + OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager);
  *(v33 + OBJC_IVAR___FTRecentsListViewController_acceptedContactActionsManager) = v55;
  v58 = v55;

  if (v58)
  {
    [v58 setDelegate_];
  }

  v59 = *(v33 + v56);
  [v59 presentAcceptedContactViewController];

  v12 = v14;
LABEL_44:

  OUTLINED_FUNCTION_30_0();
}

void *closure #2 in closure #1 in RecentsListViewController.createCellRegistrationForRequests()(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *((*MEMORY[0x1E69E7D40] & *result) + 0x508);
    v5 = a1;
    v4(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
    type metadata accessor for RecentsCallItem(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    RecentsListViewController.presentDeleteandSpamAlert(_:)(v6);
  }

  return result;
}

Swift::Void __swiftcall RecentsListViewController.presentDeleteandSpamAlert(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_34_0();
  v3 = v1;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 conversationKit];
  OUTLINED_FUNCTION_307();
  v9.super.isa = v7;
  v10 = OUTLINED_FUNCTION_17_0(v8 + 5, 0x80000001BC4FB0D0, v2, 0xEF74694B6E6F6974, v9);
  v12 = v11;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v13 = type metadata completion function for SyncedScreeningAlphaGradientView();
  v15 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v13, v14, v10, v12, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v16 = [v6 &off_1E7FE9588];
  v17.super.isa = v16;
  OUTLINED_FUNCTION_17_0(0x4554454C4544, 0xE600000000000000, v2, 0xEF74694B6E6F6974, v17);

  OUTLINED_FUNCTION_24();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v5;
  v19 = v3;

  v20 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v21 = [v6 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v22.super.isa = v21;
  OUTLINED_FUNCTION_17_0(v23, v24, v25, v26, v22);

  OUTLINED_FUNCTION_24();
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v5;
  v28 = v19;

  OUTLINED_FUNCTION_43_0();
  v34 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v15 addAction_];
  [v15 addAction_];
  v29 = [v15 popoverPresentationController];
  if (v29)
  {
    v30 = v29;
    v31 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x500))();
    [v30 setSourceView_];
  }

  OUTLINED_FUNCTION_259(v28, sel_presentViewController_animated_completion_, v15);

  OUTLINED_FUNCTION_1_3();
}

uint64_t closure #3 in closure #1 in RecentsListViewController.createCellRegistrationForRequests()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestsCellView();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemCalls()(UIView *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RecentsCallItem(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    if (swift_getEnumCaseMultiPayload() - 1 <= 1)
    {

      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      return;
    }

    v12 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    v13 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0x690))(v12);
    v14 = type metadata accessor for UIBackgroundConfiguration();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
    v15 = MEMORY[0x1BFB216F0](v8);
    v16 = *((*v13 & a1->super.super.isa) + 0x80);
    v17 = (v16)(v15);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = *(v11 + OBJC_IVAR___FTRecentsListViewController_avatarViewControllerSettings);
      if (!v19)
      {
        goto LABEL_9;
      }

      v20 = objc_allocWithZone(MEMORY[0x1E695D0C8]);
      v35 = v19;
      v21 = [v20 initWithSettings_];
      v22 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x870))();
      [v21 setObjectViewControllerDelegate_];

      v23 = *((*MEMORY[0x1E69E7D40] & a1->super.super.isa) + 0x88);
      v33[1] = (*MEMORY[0x1E69E7D40] & a1->super.super.isa) + 136;
      v34 = v23;
      v24 = v21;
      v18 = v21;
      v34(v24);
    }

LABEL_9:
    v25 = v16();
    if (v25)
    {
      v26 = v25;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v26 setContacts_];
    }

    RecentsCollectionViewCell.configure(with:)(a3);
    RecentsCallItem.hasVideoMessage.getter();
    if (v28)
    {
      v29 = partial apply for closure #1 in closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemCalls();
    }

    else
    {
      RecentsCallItem.hasAudioMessage.getter();
      if ((v30 & 1) == 0)
      {
LABEL_16:
        v32 = (*((*MEMORY[0x1E69E7D40] & a1->super.super.isa) + 0xB0))(v30);
        [v32 addTarget:v11 action:sel_didSelectAccessoryViewForRecentCallWithSender_ forControlEvents:64];

        RecentsListViewController.prepareSubviewsForFilter(view:)(a1);
        return;
      }

      v29 = partial apply for closure #2 in closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemCalls();
    }

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    *(swift_allocObject() + 16) = v31;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();

    RecentsCollectionViewCell.messageTapHandler.setter(v29);

    goto LABEL_16;
  }
}

void closure #1 in closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemCalls()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)();
  }
}

void closure #2 in closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemCalls()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsListViewController.presentVoicemail(url:and:)();
  }
}

void RecentsListViewController.presentVoicemail(url:and:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_149();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_1();
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v15 = OUTLINED_FUNCTION_82();
  type metadata accessor for RecentsCallItemType(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_252();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  OUTLINED_FUNCTION_28_14();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_4_47();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_13;
  }

  v18 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (!v18)
  {
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
LABEL_9:
    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 messageUUID];

  if (v20)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v21, 1, v11);
  outlined init with take of URL?();
  OUTLINED_FUNCTION_115(v2, 1, v11);
  if (v22)
  {
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_43_0();
  v24(v23);
  v25 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v27 = [v25 phoneAppVoicemailURLForMessageUUID_];

  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = OUTLINED_FUNCTION_316();
    v29(v28);
    URL._bridgeToObjectiveC()(v30);
    OUTLINED_FUNCTION_271();

    v31 = OUTLINED_FUNCTION_45_1();
    v32(v31);
  }

  (*(v13 + 8))(v1, v11);
LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsListViewController.prepareSubviewsForFilter(view:)(UIView *view)
{
  OUTLINED_FUNCTION_272();
  v2 = v1;
  if (!_UISolariumEnabled())
  {
    OUTLINED_FUNCTION_194_0();
    return;
  }

  v3 = [v2 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_206();
        v9 = MEMORY[0x1BFB22010](v8);
      }

      else
      {
        v9 = *(v4 + 8 * i + 32);
      }

      v10 = v9;
      RecentsListViewController.prepareSubviewsForFilter(view:)(v9);
    }
  }

  v11 = [v2 layer];
  [v11 setAllowsGroupBlending_];

  [objc_msgSend(v2 layer)];
  OUTLINED_FUNCTION_194_0();
}

void closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemOngoingCalls()(UIView *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for UUID();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    return;
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  RecentsCallItemType.conversationUUID()();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

    outlined destroy of CallControlsService?(v10, &_s10Foundation4UUIDVSgMd);
    return;
  }

  v17 = v45;
  (*(v45 + 32))(v13, v10, v11);
  v18 = *(v16 + OBJC_IVAR___FTRecentsListViewController_conversationManager);
  v19 = TUConversationManager.conversation(with:)(v13);

  v44 = v19;
  if (!v19)
  {
    (*(v17 + 8))(v13, v11);

    return;
  }

  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x690))();
  v21 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v21);
  v22 = MEMORY[0x1BFB216F0](v7);
  v23 = *((*v20 & a1->super.super.isa) + 0x80);
  v24 = (v23)(v22);
  if (v24)
  {
    v25 = v24;
LABEL_12:

    goto LABEL_13;
  }

  v26 = *(v16 + OBJC_IVAR___FTRecentsListViewController_avatarViewControllerSettings);
  if (v26)
  {
    v27 = objc_allocWithZone(MEMORY[0x1E695D0C8]);
    v43 = v26;
    v28 = [v27 initWithSettings_];
    v29 = (*((*v20 & *v16) + 0x870))();
    [v28 setObjectViewControllerDelegate_];

    v30 = (*v20 & a1->super.super.isa) + 136;
    v31 = *((*v20 & a1->super.super.isa) + 0x88);
    v42[1] = v30;
    v32 = v28;
    v25 = v28;
    v31(v32);

    goto LABEL_12;
  }

LABEL_13:
  v33 = v23();
  v34 = MEMORY[0x1E69E7D40];
  if (v33)
  {
    v35 = v33;
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x2C0))(v46);
    v36 = v47;
    v37 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v37 + 56))(v44, v36, v37);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    isa = Array._bridgeToObjectiveC()().super.isa;

    __swift_destroy_boxed_opaque_existential_1(v46);
    [v35 setContacts_];
  }

  RecentsCollectionViewCell.configure(with:)(a3);
  v39 = (*((*v34 & a1->super.super.isa) + 0x98))();
  if (v39)
  {
    v40 = v39;
    [v39 addTarget:v16 action:sel_didSelectAccessoryViewForOngoingCallWithSender_ forControlEvents:64];
  }

  v41 = (*((*v34 & a1->super.super.isa) + 0xB0))();
  [v41 addTarget:v16 action:sel_didSelectAccessoryViewForRecentCallWithSender_ forControlEvents:64];

  RecentsListViewController.prepareSubviewsForFilter(view:)(a1);
  (*(v45 + 8))(v13, v11);
}

void closure #1 in RecentsListViewController.createCellRegistrationForRecentsCallItemLinks()(UIView *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    RecentsCallItem.hasURL.getter();
    if (v10)
    {
      v11 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x690))();
      v12 = type metadata accessor for UIBackgroundConfiguration();
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
      MEMORY[0x1BFB216F0](v7);
      RecentsCollectionViewCell.configure(with:)(a3);
      v13 = [*(v9 + OBJC_IVAR___FTRecentsListViewController_featureFlags) recentsCallTapTargetsEnabled];
      v14 = (*((*v11 & a1->super.super.isa) + 0xB0))();
      v15 = v14;
      v16 = &selRef_didSelectAccessoryViewForLinkWithSender_;
      if (v13)
      {
        v16 = &selRef_didSelectAccessoryViewForRecentCallWithSender_;
      }

      [v14 addTarget:v9 action:*v16 forControlEvents:64];

      RecentsListViewController.prepareSubviewsForFilter(view:)(a1);
    }
  }
}

void closure #1 in RecentsListViewController.createCellRegistrationForGridRecentsCallItemOngoingCalls()(void *a1, void *a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      RecentsCallItemType.conversationUUID()();
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {

        outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd);
      }

      else
      {
        v13 = v7;
        (*(v7 + 32))(v9, v5, v6);
        v14 = *(v12 + OBJC_IVAR___FTRecentsListViewController_conversationManager);
        v15 = TUConversationManager.conversation(with:)(v9);

        if (v15)
        {
          v17 = MEMORY[0x1E69E7D40];
          v18 = v13;
          v19 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x8D8))(v16);
          RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)();
          v21 = v20;

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v23 = [v12 accessibilityCustomActionsForIndexPath_];
          v28 = v15;
          v24 = v23;

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
          v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          (*(*v21 + 472))(v25);
          (*((*v17 & *a1) + 0x190))(v21);
          v26 = *((*v17 & *a1) + 0xF8);
          v27 = v12;
          v26(v12, &protocol witness table for RecentsListViewController);
          (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC8))(1);

          (*(v18 + 8))(v9, v6);
        }

        else
        {
          (*(v13 + 8))(v9, v6);
        }
      }
    }

    else
    {

      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }
  }
}

void closure #1 in RecentsListViewController.createCellRegistrationForGridRecentsCallItemLinks()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    RecentsCallItem.hasURL.getter();
    if (v4)
    {
      RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)();
      v6 = v5;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v8 = [v3 accessibilityCustomActionsForIndexPath_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*v6 + 472))(v9);
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0x190))(v6);
      v11 = *((*v10 & *a1) + 0xF8);
      v12 = v3;
      v11(v3, &protocol witness table for RecentsListViewController);
    }

    else
    {
    }
  }
}

uint64_t RecentsListViewController.createCallFilteringTipRegistration()()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TipUICollectionViewCell();

  return UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
}

void *closure #1 in RecentsListViewController.createSectionHeaderViewRegistrationForSupplementalView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*((*MEMORY[0x1E69E7D40] & *result) + 0x630))();
    (*(v15 + 272))(v31, a4);

    v16 = v31[0];
    if (LOBYTE(v31[0]) == 15)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BA940;
      v18 = type metadata accessor for IndexPath();
      (*(*(v18 - 8) + 16))(v8, a4, v18);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
      specialized >> prefix<A>(_:)(v8, v19, v20, v21, v22, v23, v24, v25, v31[0], v31[1], v31[2], v32, v33, v34, v35, v36, v37, v38);
      v27 = v26;
      v29 = v28;
      outlined destroy of CallControlsService?(v8, &_s10Foundation9IndexPathVSgMd);
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v27;
      *(v17 + 40) = v29;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      static UIListContentConfiguration.header()();
      LOBYTE(v31[0]) = v16;
      RecentsCollectionViewSection.title()();
      UIListContentConfiguration.text.setter();
      v32 = v9;
      v33 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
      (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
      MEMORY[0x1BFB216E0](v31);
      [v14 accessibilityPrepareHeaderView_];

      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

void closure #1 in RecentsListViewController.createHeaderButtonsViewRegistration()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit7WeakBoxCyAA25RecentsListViewControllerCGMd);
    swift_allocObject();
    v4 = v3;
    v5 = specialized WeakBox.init(_:)(v3);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))(v5, &protocol witness table for <> WeakBox<A>, &protocol witness table for WeakBox<A>);
    v7 = *((*v6 & *v4) + 0x538);
    v8 = a1;
    v7(a1);
  }
}

void closure #1 in RecentsListViewController.createCallFilteringTipRegistration()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD00000000000002BLL, 0x80000001BC4FC8B0, a1);
    type metadata accessor for ScreenAndFilterUnknownCallersTipController();
    static ScreenAndFilterUnknownCallersTipController.shared.getter();
    *(swift_allocObject() + 16) = v3;
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
    ScreenAndFilterUnknownCallersTipController.configureFaceTimeFilteringTip(for:actionHandler:dismiss:)();

    v5 = *&v4[OBJC_IVAR___FTRecentsListViewController_callFilteringTipView];
    *&v4[OBJC_IVAR___FTRecentsListViewController_callFilteringTipView] = a1;
    v6 = a1;
  }
}

uint64_t closure #1 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()()
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();

  RecentsListViewController.handleCallFilteringAction()();
  RecentsListViewController.dismissCallFilteringTip()();
  OUTLINED_FUNCTION_13();

  return v0();
}

Swift::Void __swiftcall RecentsListViewController.performCallFilteringTipAction()()
{
  RecentsListViewController.handleCallFilteringAction()();

  RecentsListViewController.dismissCallFilteringTip()();
}

uint64_t closure #2 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration()()
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in RecentsListViewController.createCallFilteringTipRegistration(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();

  RecentsListViewController.dismissCallFilteringTip()();
  OUTLINED_FUNCTION_13();

  return v0();
}

Swift::Void __swiftcall RecentsListViewController.dismissCallFilteringTip()()
{
  v1 = *(v0 + OBJC_IVAR___FTRecentsListViewController_callFilteringTipView);
  *(v0 + OBJC_IVAR___FTRecentsListViewController_callFilteringTipView) = 0;

  OUTLINED_FUNCTION_13_2();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x630))();
  OUTLINED_FUNCTION_27_15();
  v5 = (*(v4 + 184))();

  (*((*v2 & *v5) + 0x438))(closure #1 in RecentsListViewController.dismissCallFilteringTip(), 0);
}

uint64_t one-time initialization function for videoMessageCellTapped()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000026, 0x80000001BC4FC7C0);
  static NSNotificationName.videoMessageCellTapped = result;
  return result;
}

uint64_t one-time initialization function for showCallFilteringSettings()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000019, 0x80000001BC4FC7A0);
  static NSNotificationName.showCallFilteringSettings = result;
  return result;
}

uint64_t RecentsListViewController.deleteAllRecents(_:)()
{
  v1 = v0;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))(v20);
  v2 = v21;
  v3 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v4 = OUTLINED_FUNCTION_6_4();
  v6 = v5(v4, v3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  RecentsListViewController.linkController.getter();
  OUTLINED_FUNCTION_20_8();
  (*(v8 + 272))();
  OUTLINED_FUNCTION_173();

  v20[0] = v7;

  specialized Array.append<A>(contentsOf:)(v9);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit15RecentsCallItemV_SayAFGTt0g5();
  v10 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit15RecentsCallItemV_ShyAFGTt0g5();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, static Logger.conversationKit);
  swift_bridgeObjectRetain_n();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_23();
    *v14 = 134218496;
    v15 = *(v7 + 16);

    *(v14 + 4) = v15;

    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v2 + 16);

    *(v14 + 22) = 2048;
    v16 = *(v10 + 16);

    *(v14 + 24) = v16;

    _os_log_impl(&dword_1BBC58000, v12, v13, "Deleting %ld call items, %ld link items. Total %ld items", v14, 0x20u);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  if (*(v2 + 16))
  {
    v17 = v1;

    v18 = v17;
    OUTLINED_FUNCTION_247();

    specialized RecentsLinkController.showDeleteConfirmationIfRequired(for:isRemovingAllRecents:from:completionHandler:)();
  }

  else
  {

    OUTLINED_FUNCTION_29_6();
    doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)();
  }
}

uint64_t doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)()
{
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_296(v4);
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v5, v6, "Starting links deletion");
    OUTLINED_FUNCTION_2_2();
  }

  RecentsListViewController.linkController.getter();
  OUTLINED_FUNCTION_27_15();
  (*(v7 + 288))();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_296(v10);
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v11, v12, "Starting recent calls deletion");
    OUTLINED_FUNCTION_2_2();
  }

  OUTLINED_FUNCTION_176();
  (*(v13 + 704))(v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v14 = OUTLINED_FUNCTION_32_2();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v17))
  {
    v18 = OUTLINED_FUNCTION_33();
    *v18 = 0;
    _os_log_impl(&dword_1BBC58000, v16, v17, "Starting dataSource deletion", v18, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_176();
  (*(v19 + 1584))();
  OUTLINED_FUNCTION_20_8();
  (*(v20 + 304))(v0, closure #1 in doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:), 0);
}

void closure #1 in doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)()
{
  closure #1 in doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)();
}

{
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
  oslog = Logger.logObject.getter();
  v3 = v1();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v4);
    _os_log_impl(&dword_1BBC58000, oslog, v3, v0, v1, 2u);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t closure #1 in RecentsListViewController.deleteAllRecents(_:)(uint64_t result)
{
  if (result)
  {
    return doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)();
  }

  return result;
}

id RecentsListViewController.handleNewFaceTimeMenuAction()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "New FaceTime menu action received", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  return [v1 didTapNewCallButton];
}

void RecentsListViewController.willEnterForegroundNotification(_:)()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Logger.videoMessaging);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "RecentsListViewController Entering foreground", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v6 = MEMORY[0x1E69E7D40];
    v7 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))();
    (*(v7 + 312))();

    (*((*v6 & *v1) + 0x2C0))(v11, v8);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 128))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    RecentsListViewController.handleDeferredVideoMessagePresentation()();
    RecentsListViewController.updateLeftBarButton()();
  }
}

uint64_t RecentsListViewController.handleDeferredVideoMessagePresentation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v86 = &v74 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGAJGMd);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGALGSo9NSRunLoopCGMd);
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  v91 = v20;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v74 - v21;
  swift_beginAccess();
  v23 = v1;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return outlined destroy of CallControlsService?(v12, &_s10Foundation4UUIDVSgMd);
  }

  v26 = v14 + 32;
  v25 = *(v14 + 32);
  v25(v22, v12, v13);
  if (![v23 isViewLoaded])
  {
    return (*(v14 + 8))(v22, v13);
  }

  v27 = v13;
  v83 = v22;
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, &static Logger.videoMessaging);
  v77 = v14;
  v29 = v14 + 16;
  v30 = *(v14 + 16);
  v31 = v27;
  v30(v19, v83, v27);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v80 = v29;
  v81 = v31;
  v82 = v30;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v93 = v75;
    *v35 = 136315138;
    v82(v10, v19, v31);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v31);
    specialized >> prefix<A>(_:)(v10, v36, v37, v38, v39, v40, v41, v42, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    v74 = v43;
    v44 = v25;
    v46 = v45;
    outlined destroy of CallControlsService?(v10, &_s10Foundation4UUIDVSgMd);
    v47 = v77;
    v48 = v77[1];
    v78 = (v77 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79 = v48;
    v48(v19, v31);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v46, &v93);
    v25 = v44;

    *(v35 + 4) = v49;
    _os_log_impl(&dword_1BBC58000, v32, v33, "Waiting for video message to load. uuid %s", v35, 0xCu);
    v50 = v75;
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1BFB23DF0](v50, -1, -1);
    v51 = v35;
    v30 = v82;
    MEMORY[0x1BFB23DF0](v51, -1, -1);
  }

  else
  {

    v47 = v77;
    v53 = v77[1];
    v78 = (v77 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79 = v53;
    v52 = (v53)(v19, v31);
  }

  v76 = v25;
  v54 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x630))(v52);
  v55 = (*(*v54 + 176))(v54);

  v93 = v55;
  v56 = v92;
  v57 = v81;
  v30(v92, v83, v81);
  v77 = v23;
  v58 = *(v47 + 80);
  v59 = swift_allocObject();
  v25((v59 + ((v58 + 16) & ~v58)), v56, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
  type metadata accessor for RecentsCallItem(0);
  v75 = v26;
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[RecentsCallItem], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
  v60 = v84;
  Publisher.compactMap<A>(_:)();

  v61 = [objc_opt_self() mainRunLoop];
  v93 = v61;
  v62 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v63 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v62);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<[RecentsCallItem], Never>, RecentsCallItem> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGAJGMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v65 = v87;
  v64 = v88;
  Publisher.receive<A>(on:options:)();
  outlined destroy of CallControlsService?(v63, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  (*(v85 + 8))(v60, v65);
  v66 = swift_allocObject();
  v67 = v77;
  swift_unknownObjectWeakInit();
  v68 = v92;
  v69 = v83;
  v70 = v81;
  v82(v92, v83, v81);
  v71 = swift_allocObject();
  *(v71 + 16) = v66;
  v76(v71 + ((v58 + 24) & ~v58), v68, v70);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CompactMap<AnyPublisher<[RecentsCallItem], Never>, RecentsCallItem>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA12AnyPublisherVySay15ConversationKit15RecentsCallItemVGs5NeverOGALGSo9NSRunLoopCGMd);
  v72 = v90;
  v73 = Publisher<>.sink(receiveValue:)();

  (*(v89 + 8))(v64, v72);
  v79(v69, v70);
  *(v67 + OBJC_IVAR___FTRecentsListViewController_videoMessagesSink) = v73;
}

id RecentsListViewController.didEnterBackgroundNotification(_:)()
{
  v1 = v0;
  result = [v0 isViewLoaded];
  if (result)
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.videoMessaging);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "RecentsListViewController didEnter background", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v7 = MEMORY[0x1E69E7D40];
    v8 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x630))();
    (*(v8 + 320))();

    (*((*v7 & *v1) + 0x2C0))(v12, v9);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v11 + 128))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return RecentsListViewController.clearDeferredVideoMessagePresetation()();
  }

  return result;
}

uint64_t RecentsListViewController.clearDeferredVideoMessagePresetation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  *(v0 + OBJC_IVAR___FTRecentsListViewController_videoMessagesSink) = 0;

  v4 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  swift_beginAccess();
  outlined assign with take of RecentsCallItem?();
  return swift_endAccess();
}

uint64_t RecentsListViewController.collectionViewIndexPath(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x678);
  v4 = v3();
  v5 = OUTLINED_FUNCTION_16_0();
  [v5 v6];
  v8 = v7;
  v10 = v9;

  v11 = v3();
  v12 = [v11 indexPathForItemAtPoint_];

  if (v12)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for IndexPath();

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v14);
}

void RecentsListViewController.joinCall(at:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v107 = v7;
  v108 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v105 = v9 - v8;
  OUTLINED_FUNCTION_4_24();
  v106 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v104 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v103 = v13 - v12;
  OUTLINED_FUNCTION_4_24();
  v100 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_1();
  v99 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v98 = (v17 - v16);
  OUTLINED_FUNCTION_4_24();
  v110 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v102 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v109 = v21;
  OUTLINED_FUNCTION_4_24();
  v22 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v111 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v94 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v90 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v101 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_7();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_82();
  v39 = type metadata accessor for RecentsCallItem(v38);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v41 = v5;
  v42 = v0;
  RecentsListViewController.recentsCallItem(at:)();
  v43 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v43, v44, v39);
  if (!v51)
  {
    OUTLINED_FUNCTION_3_66();
    v93 = v3;
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    v45 = OBJC_IVAR___FTRecentsListViewController_joinCallThrottlingIndexPath;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v46 = *(v111 + 16);
    v92 = v111 + 16;
    v91 = v46;
    (v46)(v1, v41, v22);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v22);
    v50 = *(v27 + 48);
    v95 = v42;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    OUTLINED_FUNCTION_115(v30, 1, v22);
    v52 = v22;
    if (v51)
    {
      outlined destroy of CallControlsService?(v1, &_s10Foundation9IndexPathVSgMd);
      OUTLINED_FUNCTION_115(&v30[v50], 1, v22);
      if (v51)
      {
        outlined destroy of CallControlsService?(v30, &_s10Foundation9IndexPathVSgMd);
LABEL_15:
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_1_20();
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v81, static Logger.conversationKit);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_25(v83))
        {
          v84 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v84);
          OUTLINED_FUNCTION_132();
          _os_log_impl(v85, v86, v87, v88, v89, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_0_74();
        goto LABEL_20;
      }
    }

    else
    {
      v53 = v96;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      OUTLINED_FUNCTION_115(&v30[v50], 1, v22);
      if (!v54)
      {
        v75 = v111;
        v76 = v94;
        (*(v111 + 32))(v94, &v30[v50], v52);
        OUTLINED_FUNCTION_32_10();
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v77, v78);
        v90 = v45;
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *(v75 + 8);
        v80(v76, v52);
        outlined destroy of CallControlsService?(v1, &_s10Foundation9IndexPathVSgMd);
        v80(v53, v52);
        outlined destroy of CallControlsService?(v30, &_s10Foundation9IndexPathVSgMd);
        if (v79)
        {
          goto LABEL_15;
        }

LABEL_13:
        v55 = v101;
        v56 = OUTLINED_FUNCTION_32_2();
        v91(v56);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
        OUTLINED_FUNCTION_30_2();
        outlined assign with take of RecentsCallItem?();
        swift_endAccess();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v111 = static OS_dispatch_queue.main.getter();
        v60 = v97;
        static DispatchTime.now()();
        v61 = v98;
        *v98 = 300;
        (*(v99 + 104))(v61, *MEMORY[0x1E69E7F38], v100);
        DispatchTime.advanced(by:)();
        v62 = OUTLINED_FUNCTION_312();
        v63(v62);
        v102 = *(v102 + 8);
        (v102)(v60, v110);
        OUTLINED_FUNCTION_20();
        v64 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v112[4] = partial apply for closure #1 in RecentsListViewController.joinCall(at:);
        v112[5] = v64;
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 1107296256;
        v112[2] = thunk for @escaping @callee_guaranteed () -> ();
        v112[3] = &block_descriptor_21;
        v65 = _Block_copy(v112);

        v66 = v103;
        static DispatchQoS.unspecified.getter();
        v112[0] = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v67 = v105;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v68 = v109;
        v69 = v111;
        MEMORY[0x1BFB21510](v109, v66, v67, v65);
        _Block_release(v65);

        v70 = OUTLINED_FUNCTION_157();
        v71(v70);
        (*(v104 + 8))(v66, v106);
        (v102)(v68, v110);
        v72 = OUTLINED_FUNCTION_84_1();
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v52);
        OUTLINED_FUNCTION_76();
        RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();
        outlined destroy of CallControlsService?(v55, &_s10Foundation9IndexPathVSgMd);
        OUTLINED_FUNCTION_0_74();
LABEL_20:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        goto LABEL_21;
      }

      outlined destroy of CallControlsService?(v1, &_s10Foundation9IndexPathVSgMd);
      (*(v111 + 8))(v53, v22);
    }

    outlined destroy of CallControlsService?(v30, &_s10Foundation9IndexPathVSg_ADtMd);
    goto LABEL_13;
  }

  outlined destroy of CallControlsService?(v2, &_s15ConversationKit15RecentsCallItemVSgMd);
LABEL_21:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsListViewController.didSelectAccessoryViewForRecentCall(sender:)(UIButton *sender)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34_15();
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  RecentsListViewController.collectionViewIndexPath(for:)(v2);
  v8 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v8, v9, v6);
  if (v10)
  {
    outlined destroy of CallControlsService?(v2, &_s10Foundation9IndexPathVSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = OUTLINED_FUNCTION_13_12();
    *(v11 + 16) = xmmword_1BC4BA940;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
    v12 = sender;
    v13 = String.init<A>(reflecting:)();
    v15 = v14;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_40_2();
    v17(v16);
    if ([*(v1 + OBJC_IVAR___FTRecentsListViewController_featureFlags) recentsCallTapTargetsEnabled])
    {
      RecentsListViewController.joinCall(at:)();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_309();
      RecentsListViewController.showDetailsAtIndexPath(_:from:)(v18);
    }

    v19 = OUTLINED_FUNCTION_1_5();
    v20(v19);
  }
}

uint64_t RecentsListViewController.showDetailsAtIndexPath(_:from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-1] - v6;
  RecentsListViewController.recentsCallItem(at:)();
  v8 = type metadata accessor for RecentsCallItem(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit15RecentsCallItemVSgMd);
  }

  else
  {
    RecentsCallItem.conversationLink.getter();
    v9 = v17[0];
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    if (v9)
    {
      outlined consume of ConversationLink?(v9);
      return RecentsListViewController.showLinkDetailViewController(at:)(a1);
    }
  }

  UIView.windowRect.getter(v17);
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if ((v18 & 1) == 0)
  {
    v13 = *&v17[2];
    v14 = *&v17[3];
    v11 = *v17;
    v12 = *&v17[1];
  }

  RecentsListViewController.showRecentCallDetailsViewController(at:sourceRect:)(a1, v11, v12, v13, v14);
  v15 = type metadata accessor for Tips.InvalidationReason();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
  RecentsListViewController.tipKitDismissTip(_:)(v4);
  return outlined destroy of CallControlsService?(v4, &_s6TipKit4TipsO18InvalidationReasonOSgMd);
}

void RecentsListViewController.didSelectAccessoryViewForOngoingCall(sender:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34_15();
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  RecentsListViewController.collectionViewIndexPath(for:)(v0);
  v10 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v10, v11, v8);
  if (v12)
  {
    outlined destroy of CallControlsService?(v0, &_s10Foundation9IndexPathVSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v13 = OUTLINED_FUNCTION_13_12();
    *(v13 + 16) = xmmword_1BC4BA940;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
    v14 = v5;
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_281();
    v19(v18);
    v3(v1);
    v20 = OUTLINED_FUNCTION_157();
    v21(v20);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.showLinkDetailViewController(at:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v8);
  RecentsListViewController.recentsCallItem(at:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit15RecentsCallItemVSgMd);
  }

  else
  {
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
    RecentsCallItem.conversationLink.getter();
    if (v24)
    {
      outlined consume of ConversationLink?(v24);
      RecentsListViewController.showLinkDetailViewController(for:)();
      return _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
    }

    _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 16))(v4, a1, v11);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  specialized >> prefix<A>(_:)(v4, v12, v13, v14, v15, v16, v17, v18, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v20 = v19;
  v22 = v21;
  outlined destroy of CallControlsService?(v4, &_s10Foundation9IndexPathVSgMd);
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = v20;
  *(v10 + 40) = v22;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}