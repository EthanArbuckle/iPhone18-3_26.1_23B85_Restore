id DOCLevelOfDetailButton.Metrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D75030];
  v3 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  v5 = *MEMORY[0x277D76968];
  *(a1 + *(v4 + 20)) = *MEMORY[0x277D76968];
  *(a1 + *(v4 + 24)) = 0;

  return v5;
}

uint64_t DOCLevelOfDetailButton.Metrics.buttonSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *DOCLevelOfDetailButton.Metrics.textStyle.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCLevelOfDetailButton.Metrics(0) + 20));
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall DOCLevelOfDetailButton.Metrics.applyProperties(andTitle:toButton:inContainer:avoidZeroInsetsAtLargestSize:)(Swift::String andTitle, UIButton *toButton, UIView_optional *inContainer, Swift::Bool avoidZeroInsetsAtLargestSize)
{
  v48 = avoidZeroInsetsAtLargestSize;
  countAndFlagsBits = andTitle._countAndFlagsBits;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = toButton;
  UIButton.configuration.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of CharacterSet?(v22, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    return;
  }

  (*(v24 + 32))(v27, v22, v23);
  if (inContainer)
  {
    v44 = inContainer;
  }

  else
  {
    v44 = v50;
  }

  v43 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  v28 = *(v51 + *(v43 + 20));
  v29 = inContainer;
  if (v28)
  {
    v30 = v28;
    v31 = [(UIView_optional *)v44 traitCollection];
    AttributeContainer.init()();

    AttributedString.init(_:attributes:)();
    v52 = [objc_opt_self() preferredFontForTextStyle:v30 compatibleWithTraitCollection:v31];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();

    v32 = type metadata accessor for AttributedString();
    (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
    UIButton.Configuration.attributedTitle.setter();
  }

  else
  {

    UIButton.Configuration.title.setter();
  }

  (*(v46 + 16))(v9, v51, v47);
  UIButton.Configuration.buttonSize.setter();
  v33 = v44;
  if (!v48)
  {
    goto LABEL_14;
  }

  v34 = [(UIView_optional *)v44 traitCollection];
  v35 = [v34 preferredContentSizeCategory];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v38 != v39)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_15;
    }

LABEL_14:

    UIButton.Configuration.contentInsets.setter();
    goto LABEL_15;
  }

LABEL_15:
  if ((*(v51 + *(v43 + 24)) & 1) == 0)
  {
    v41 = [(UIView_optional *)v33 tintColor];
    UIButton.Configuration.baseForegroundColor.setter();
  }

  v42 = v49;
  (*(v24 + 16))(v49, v27, v23);
  (*(v24 + 56))(v42, 0, 1, v23);
  UIButton.configuration.setter();

  (*(v24 + 8))(v27, v23);
}

uint64_t DOCLevelOfDetailButton.levelOfDetailTitle.setter(uint64_t result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle];
  v5 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle + 8];
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
  [v2 layoutBelowIfNeeded];
LABEL_11:
}

uint64_t DOCLevelOfDetailButton.contentInsets.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v19 - v15;
  UIButton.configuration.getter();
  if ((*(v5 + 48))(v3, 1, v4))
  {
    return outlined destroy of CharacterSet?(v3, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  (*(v5 + 16))(v8, v3, v4);
  outlined destroy of CharacterSet?(v3, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  UIButton.Configuration.updated(for:)();
  v18 = *(v5 + 8);
  v18(v8, v4);
  (*(v5 + 32))(v16, v12, v4);
  UIButton.Configuration.contentInsets.getter();
  return (v18)(v16, v4);
}

uint64_t DOCLevelOfDetailButton.setupButtonConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = aBlock - v4;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = aBlock - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x120))();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  DOCLevelOfDetailButton.levelOfDetailTitle.setter(v17, v19);
  v20 = *(v7 + 16);
  v20(v14, &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics], v6);
  v21 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  v20(v11, v14, v6);
  UIButton.Configuration.buttonSize.setter();

  v22 = type metadata accessor for UIButton.Configuration();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  UIButton.configuration.setter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #2 in DOCLevelOfDetailButton.setupButtonConfiguration();
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_215;
  v24 = _Block_copy(aBlock);

  [v1 setConfigurationUpdateHandler_];
  _Block_release(v24);
  LODWORD(v25) = 1144750080;
  [v1 setContentHuggingPriority:0 forAxis:v25];
  LODWORD(v26) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v26];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 setDoc:v27 primaryAction:?];

  return (*(v7 + 8))(v14, v6);
}

uint64_t outlined init with copy of DOCLevelOfDetailButton.Metrics(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void closure #2 in DOCLevelOfDetailButton.setupButtonConfiguration()(uint64_t a1)
{
  v49 = a1;
  v1 = type metadata accessor for UIButton.Configuration.Size();
  v48 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for UIButton.Configuration();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = (Strong + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle);
    v26 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_levelOfDetailTitle + 8);
    v44 = v1;
    v45 = v14;
    if (v26)
    {
      v43 = *v25;
      v46 = v26;
    }

    else
    {
      v43 = 0;
      v46 = 0xE000000000000000;
    }

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics;

    v28 = v24;
    UIButton.configuration.getter();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    else
    {
      v29 = &v24[v27];
      (*(v19 + 32))(v22, v17, v18);
      v42 = type metadata accessor for DOCLevelOfDetailButton.Metrics(0);
      v30 = *&v29[*(v42 + 20)];
      if (v30)
      {
        v31 = v30;
        v32 = v28;
        v41 = v29;
        v33 = v32;
        v34 = v31;
        v35 = [v33 traitCollection];
        AttributeContainer.init()();

        AttributedString.init(_:attributes:)();
        v50 = [objc_opt_self() preferredFontForTextStyle:v34 compatibleWithTraitCollection:v35];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v29 = v41;
        v36 = type metadata accessor for AttributedString();
        (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
        UIButton.Configuration.attributedTitle.setter();
      }

      else
      {
        v37 = v28;

        UIButton.Configuration.title.setter();
      }

      v38 = v45;
      (*(v48 + 16))(v47, v29, v44);
      UIButton.Configuration.buttonSize.setter();

      UIButton.Configuration.contentInsets.setter();
      if ((v29[*(v42 + 24)] & 1) == 0)
      {
        v39 = [v28 tintColor];
        UIButton.Configuration.baseForegroundColor.setter();
      }

      (*(v19 + 16))(v38, v22, v18);
      (*(v19 + 56))(v38, 0, 1, v18);
      UIButton.configuration.setter();

      (*(v19 + 8))(v22, v18);
    }
  }
}

void closure #3 in DOCLevelOfDetailButton.setupButtonConfiguration()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 setLevelOfDetail_];
    }
  }
}

uint64_t DOCLevelOfDetailButton.__ivar_destroyer()
{
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metadataView);

  outlined destroy of DOCLevelOfDetailButton.Metrics(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLevelOfDetailButton_metrics);
}

uint64_t closure #1 in static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v43 - v23;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v43 - v23, &_s10Foundation3URLVSgMd);
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v48 = *(v26 + 48);
  if (v48(v24, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    v45 = 0;
  }

  else
  {
    v45 = URL.startAccessingSecurityScopedResource()();
    (*(v26 + 8))(v24, v25);
  }

  outlined init with copy of DOCGridLayout.Spec?(a1, v20, &_s10Foundation3URLVSgMd);
  if (v48(v20, 1, v25) == 1)
  {
    v28 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v28 = v29;
    (*(v26 + 8))(v20, v25);
  }

  v30 = [objc_opt_self() pdfMetadataProviderWithNode:a2 levelOfDetail:a3 URL:v28];

  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd);
  v31 = v48(v16, 1, v25);
  v43 = v26;
  if (v31 == 1)
  {
    v33 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v32);
    v33 = v34;
    (*(v26 + 8))(v16, v25);
  }

  v35 = a3;
  v36 = [objc_opt_self() imageMetadataProviderWithNode:a2 levelOfDetail:a3 URL:v33];

  v37 = specialized static DOCMediaMetadataProvider.mediaMetadataProvider(with:levelOfDetail:url:)(a2, v35, a1);
  v38 = swift_allocObject();
  v38[2] = v46;
  v38[3] = a6;
  v38[4] = v47;
  v38[5] = v30;
  v38[6] = v36;
  v38[7] = v37;

  swift_bridgeObjectRetain_n();

  v39 = v30;
  v40 = v36;
  DOCRunInMainThread(_:)();

  if (v45)
  {
    v41 = v44;
    outlined init with copy of DOCGridLayout.Spec?(a1, v44, &_s10Foundation3URLVSgMd);
    if (v48(v41, 1, v25) == 1)
    {

      return outlined destroy of CharacterSet?(v41, &_s10Foundation3URLVSgMd);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();

      return (*(v43 + 8))(v41, v25);
    }
  }

  else
  {
  }
}

BOOL closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v29 = a1[2];
  v30 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a3 + 16);
  v9 = v8 == 0;
  v10 = v6;
  v11 = *a2;
  v33 = v5;
  v12 = *a1;
  v31 = a2[2];
  v32 = a2[3];
  v13 = 0;
  if (v8)
  {
    v28 = a3;
    v14 = (a3 + 40);
    while (*(v14 - 1) != v4 || *v14 != v5)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = v10;
        v7 = v11;
        v5 = v33;
        v4 = v12;
        break;
      }

      ++v13;
      v14 += 2;
      v9 = v8 == v13;
      v6 = v10;
      v7 = v11;
      v5 = v33;
      v4 = v12;
      if (v8 == v13)
      {
        v13 = 0;
        break;
      }
    }

    a3 = v28;
  }

  v16 = v8 == 0;
  if (v8)
  {
    v17 = 0;
    v18 = (a3 + 40);
    while (*(v18 - 1) != v7 || *v18 != v6)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v33;
      if (v20)
      {
        break;
      }

      v4 = v12;
      v7 = v11;
      v6 = v10;
      ++v17;
      v18 += 2;
      v16 = v8 == v17;
      if (v8 == v17)
      {
        goto LABEL_20;
      }
    }

    if (v9)
    {
      return 0;
    }

    return v16 || v17 < v13;
  }

LABEL_20:
  if (!v9)
  {
    v17 = 0;
    return v16 || v17 < v13;
  }

  v21 = v6;
  v22 = v7;
  v23 = v5;
  v24 = v4;

  DOCMetadataKey.localizedTitle.getter(v24, v23, v29, v30);

  DOCMetadataKey.localizedTitle.getter(v22, v21, v31, v32);

  lazy protocol witness table accessor for type String and conformance String();
  v25 = StringProtocol.localizedCompare<A>(_:)();

  return v25 == 1;
}

objc_class *DOCMetadataKey.localizedTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v27 = _DocumentManagerBundle();
        if (v27)
        {
          v14 = v27;
          v81 = 0x8000000249BD1880;
          v15 = 0x65704F207473614CLL;
          v19 = 0xEB0000000064656ELL;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000041;
          goto LABEL_44;
        }

        goto LABEL_103;
      }

      if (a2 == 7)
      {
        v31 = _DocumentManagerBundle();
        if (v31)
        {
          v14 = v31;
          v81 = 0x8000000249BD1820;
          v15 = 0x74616D726F46;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000057;
          v19 = 0xE600000000000000;
          goto LABEL_44;
        }

        goto LABEL_107;
      }

      v23 = _DocumentManagerBundle();
      if (v23)
      {
        v14 = v23;
        v81 = 0x8000000249BD17C0;
        v15 = 0x7974696361706143;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000052;
        v19 = 0xE800000000000000;
        goto LABEL_44;
      }

      goto LABEL_100;
    }

    if (a2 == 9)
    {
      v29 = _DocumentManagerBundle();
      if (v29)
      {
        v14 = v29;
        v81 = 0x8000000249BD1760;
        v15 = 0x6C62616C69617641;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000059;
        v19 = 0xE900000000000065;
        goto LABEL_44;
      }

      goto LABEL_105;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {
        return 0;
      }

      goto LABEL_38;
    }

    v33 = _DocumentManagerBundle();
    if (!v33)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v14 = v33;
    v81 = 0x8000000249BD1700;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD000000000000054;
    v15 = 1684370261;
LABEL_37:
    v19 = 0xE400000000000000;
    goto LABEL_44;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = _DocumentManagerBundle();
      if (v28)
      {
        v14 = v28;
        v16 = 0xD000000000000035;
        v81 = 0x8000000249BD1960;
        v15 = 0x6572656857;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      goto LABEL_104;
    }

    if (a2 != 4)
    {
      v24 = _DocumentManagerBundle();
      if (v24)
      {
        v14 = v24;
        v81 = 0x8000000249BD18D0;
        v15 = 0x6465696669646F4DLL;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000042;
        v19 = 0xE800000000000000;
        goto LABEL_44;
      }

      goto LABEL_101;
    }

    v32 = _DocumentManagerBundle();
    if (!v32)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v14 = v32;
    v81 = 0x8000000249BD1920;
    v15 = 0x64657461657243;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD00000000000003ELL;
LABEL_43:
    v19 = 0xE700000000000000;
    goto LABEL_44;
  }

  switch(a2)
  {
    case 0:
      v26 = _DocumentManagerBundle();
      if (!v26)
      {
LABEL_102:
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
        goto LABEL_108;
      }

      v14 = v26;
      v16 = 0xD000000000000034;
      v81 = 0x8000000249BD1A70;
      v17 = 0x617A696C61636F4CLL;
      v18 = 0xEB00000000656C62;
      v15 = 1684957515;
      goto LABEL_37;
    case 1:
      v30 = _DocumentManagerBundle();
      if (v30)
      {
        v14 = v30;
        v15 = 0xD000000000000010;
        v81 = 0x8000000249BD1A20;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD1A00;
        v16 = 0xD000000000000045;
        goto LABEL_44;
      }

      goto LABEL_106;
    case 2:
      v13 = _DocumentManagerBundle();
      if (v13)
      {
        v14 = v13;
        v15 = 0xD000000000000010;
        v16 = 0xD000000000000035;
        v81 = 0x8000000249BD19C0;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD19A0;
        v20.super.isa = v14;
        v21 = 1702521171;
        v22 = 0xE400000000000000;
LABEL_45:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, *&v17, v20, *&v21, *&v16)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
  }

LABEL_38:
  v12 = a3;
  v4 = a4;
  if (a1 == 0x726F68747541 && a2 == 0xE600000000000000 || (countAndFlagsBits = a1, v6 = a2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v34 = _DocumentManagerBundle();
    if (!v34)
    {
LABEL_110:
      __break(1u);
LABEL_111:
      if (countAndFlagsBits == 0x6F69736E656D6944 && v6 == v10 + 1279 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v47 = _DocumentManagerBundle();
        if (v47)
        {
          v14 = v47;
          v81 = 0x8000000249BD13F0;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = v10 + 1279;
          v15 = 0x6F69736E656D6944;
          goto LABEL_72;
        }

        __break(1u);
LABEL_175:
        if (countAndFlagsBits == 1701536077 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v58 = _DocumentManagerBundle();
          if (v58)
          {
            v14 = v58;
            v18 = 0xEB00000000656C62;
            v19 = 0xEB00000000656B61;
            v81 = 0x8000000249BD10D0;
            v15 = 0x4D20656369766544;
            v17 = 0x617A696C61636F4CLL;
            v16 = v11 + 13;
            goto LABEL_44;
          }

          goto LABEL_206;
        }

        goto LABEL_181;
      }

      goto LABEL_117;
    }

    v14 = v34;
    v16 = 0xD000000000000034;
    v81 = 0x8000000249BD16C0;
    v15 = 0x73726F68747541;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    goto LABEL_43;
  }

  if ((countAndFlagsBits != 0x7974697275636553 || v6 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v36 = 0x7365676150;
    if (countAndFlagsBits == 0x7365676150 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v37 = _DocumentManagerBundle();
      if (v37)
      {
        v14 = v37;
        v81 = 0x8000000249BD1620;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = 0xD000000000000042;
        v15 = 0x7365676150;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      __break(1u);
LABEL_123:
      v36 = 0x657275736F707845;
      if (countAndFlagsBits == 0x657275736F707845 && v6 == 0xEC000000656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v49 = _DocumentManagerBundle();
        if (!v49)
        {
          __break(1u);
          goto LABEL_187;
        }

        v14 = v49;
        v81 = 0x8000000249BD13A0;
        v19 = 0xED0000656D695420;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v16 = v11 + 14;
        v15 = 0x657275736F707845;
LABEL_44:
        v20.super.isa = v14;
        v21 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_45;
      }

      goto LABEL_129;
    }

    v7 = 0x656C746954;
    if (countAndFlagsBits == 0x656C746954 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v38 = _DocumentManagerBundle();
      if (v38)
      {
        v14 = v38;
        v16 = 0xD000000000000033;
        v81 = 0x8000000249BD15E0;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v15 = 0x656C746954;
        v19 = 0xE500000000000000;
        goto LABEL_44;
      }

      __break(1u);
LABEL_129:
      if (countAndFlagsBits == v36 && v6 == 0xEF6D6172676F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v50 = _DocumentManagerBundle();
        if (!v50)
        {
          __break(1u);
          goto LABEL_194;
        }

        v14 = v50;
        v15 = v11 - 40;
        v81 = 0x8000000249BD1350;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v19 = 0x8000000249BD1330;
        v16 = v11 + 17;
        goto LABEL_44;
      }

LABEL_135:
      v8 = 0xEC00000065646F4DLL;
      if (countAndFlagsBits == 0x676E69726574654DLL && v6 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v51 = _DocumentManagerBundle();
        if (v51)
        {
          v14 = v51;
          v81 = 0x8000000249BD12E0;
          v19 = 0xED000065646F4D20;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = v11 + 9;
          v15 = 0x676E69726574654DLL;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_200;
      }

      goto LABEL_141;
    }

    if ((countAndFlagsBits != 0x6E6F6973726556 || v6 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v10 = 0xEA00000000006E6FLL;
      if (countAndFlagsBits == 0x6974756C6F736552 && v6 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v40 = _DocumentManagerBundle();
        if (v40)
        {
          v14 = v40;
          v81 = 0x8000000249BD1560;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v15 = 0x6974756C6F736552;
          v19 = 0xEA00000000006E6FLL;
LABEL_72:
          v20.super.isa = v14;
          v21 = 0;
          v22 = 0xE000000000000000;
          v16 = 0xD000000000000038;
          goto LABEL_45;
        }

        __break(1u);
LABEL_141:
        if (countAndFlagsBits == 0x6572757472657041 && v6 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v52 = _DocumentManagerBundle();
          if (v52)
          {
            v14 = v52;
            v81 = 0x8000000249BD1290;
            v19 = 0xEE0065756C615620;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 15;
            v15 = 0x6572757472657041;
            goto LABEL_44;
          }

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
          goto LABEL_205;
        }

        goto LABEL_147;
      }

      if (countAndFlagsBits == 0x72656375646F7250 && v6 == 0xE800000000000000 || ((v11 = 0xE800000000000000, v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), countAndFlagsBits == 0x6572617774666F73) ? (v43 = v6 == 0xE800000000000000) : (v43 = 0), !v43 ? (v44 = 0) : (v44 = 1), (v42 & 1) != 0 || (v44 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v41 = _DocumentManagerBundle();
        if (v41)
        {
          v14 = v41;
          v15 = 0xD000000000000011;
          v81 = 0x8000000249BD1510;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0x8000000249BD14F0;
          v16 = 0xD000000000000049;
          goto LABEL_44;
        }

        __break(1u);
LABEL_147:
        if (countAndFlagsBits == 0x64656570534F5349 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v53 = _DocumentManagerBundle();
          if (v53)
          {
            v14 = v53;
            v19 = 0xE900000000000064;
            v81 = 0x8000000249BD1240;
            v15 = 0x65657053204F5349;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 16;
            goto LABEL_44;
          }

          goto LABEL_201;
        }

        if (countAndFlagsBits == 0x6C61426574696857 && v6 == 0xEC00000065636E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v54 = _DocumentManagerBundle();
          if (v54)
          {
            v14 = v54;
            v81 = 0x8000000249BD11F0;
            v15 = 0x6142206574696857;
            v19 = 0xED000065636E616CLL;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 20;
            goto LABEL_44;
          }

          goto LABEL_202;
        }

        goto LABEL_158;
      }

      v9 = 0x726F7461657243;
      if (countAndFlagsBits == 0x726F7461657243 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0x54726F7461657243 && v6 == 0xEB000000006C6F6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v45 = _DocumentManagerBundle();
        if (v45)
        {
          v14 = v45;
          v81 = 0x8000000249BD14A0;
          v15 = 0x20746E65746E6F43;
          v19 = 0xEF726F7461657243;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v16 = 0xD000000000000049;
          goto LABEL_44;
        }

        __break(1u);
LABEL_158:
        if (countAndFlagsBits == 0x6E654C6C61636F46 && v6 == 0xEB00000000687467 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v55 = _DocumentManagerBundle();
          if (v55)
          {
            v14 = v55;
            v81 = 0x8000000249BD11A0;
            v15 = 0x654C206C61636F46;
            v19 = 0xEC0000006874676ELL;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v16 = v11 + 19;
            goto LABEL_44;
          }

          goto LABEL_203;
        }

        if (countAndFlagsBits == 0x6465526873616C46 && v6 == 0xEB00000000657945 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v56 = _DocumentManagerBundle();
          if (v56)
          {
            v14 = v56;
            v81 = 0x8000000249BD1160;
            v15 = 0x65794520646552;
            v17 = 0x617A696C61636F4CLL;
            v18 = 0xEB00000000656C62;
            v19 = 0xE700000000000000;
            goto LABEL_72;
          }

          goto LABEL_204;
        }

LABEL_169:
        if ((countAndFlagsBits != 0x6873616C46 || v6 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_175;
        }

        v57 = _DocumentManagerBundle();
        if (v57)
        {
          v14 = v57;
          v81 = 0x8000000249BD1120;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v15 = 0x6873616C46;
          v19 = 0xE500000000000000;
          goto LABEL_72;
        }

LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
        goto LABEL_208;
      }

      v11 = 0xD000000000000038;
      if (countAndFlagsBits == 0xD000000000000011 && 0x8000000249BD0C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v46 = _DocumentManagerBundle();
        if (v46)
        {
          v14 = v46;
          v15 = 0xD000000000000013;
          v81 = 0x8000000249BD1450;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0x8000000249BD1430;
          v16 = 0xD00000000000004BLL;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_169;
      }

      goto LABEL_111;
    }

    v39 = _DocumentManagerBundle();
    if (!v39)
    {
      __break(1u);
      goto LABEL_135;
    }

    v14 = v39;
    v81 = 0x8000000249BD15A0;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD00000000000003CLL;
    v15 = 0x6E6F6973726556;
    goto LABEL_43;
  }

  v35 = _DocumentManagerBundle();
  if (v35)
  {
    v14 = v35;
    v81 = 0x8000000249BD1670;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = 0xD000000000000041;
    v15 = 0x7974697275636553;
    v19 = 0xE800000000000000;
    goto LABEL_44;
  }

  __break(1u);
LABEL_117:
  if ((countAndFlagsBits != 0x7265626D754E46 || v6 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_123;
  }

  v48 = _DocumentManagerBundle();
  if (v48)
  {
    v14 = v48;
    v81 = 0x8000000249BD12E0;
    v15 = 0x7265626D754E2046;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v16 = v11 + 9;
    v19 = 0xE800000000000000;
    goto LABEL_44;
  }

  __break(1u);
LABEL_181:
  if (countAndFlagsBits == 0x6C65646F4DLL && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v59 = _DocumentManagerBundle();
    if (v59)
    {
      v14 = v59;
      v81 = 0x8000000249BD1080;
      v15 = 0x4D20656369766544;
      v19 = 0xEC0000006C65646FLL;
      v17 = 0x617A696C61636F4CLL;
      v18 = 0xEB00000000656C62;
      v16 = v11 + 14;
      goto LABEL_44;
    }

    goto LABEL_207;
  }

LABEL_187:
  if (countAndFlagsBits == 0x65646F4D736E654CLL && v6 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v60 = _DocumentManagerBundle();
    if (!v60)
    {
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    v14 = v60;
    v16 = v11 - 2;
    v19 = v10 - 522;
    v81 = 0x8000000249BD1040;
    v15 = 0x646F4D20736E654CLL;
LABEL_192:
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    goto LABEL_44;
  }

LABEL_194:
  if (countAndFlagsBits == 0x6F7250726F6C6F43 && v6 == 0xEC000000656C6966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v61 = _DocumentManagerBundle();
    if (!v61)
    {
      __break(1u);
      goto LABEL_215;
    }

    v14 = v61;
    v81 = 0x8000000249BD0FF0;
    v15 = 0x725020726F6C6F43;
    v19 = 0xED0000656C69666FLL;
    v16 = v11 + 10;
    goto LABEL_192;
  }

LABEL_209:
  if (countAndFlagsBits == 0x617053726F6C6F43 && v6 == v10 - 2316 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v62 = _DocumentManagerBundle();
    if (v62)
    {
      v14 = v62;
      v18 = 0xEB00000000656C62;
      v19 = 0xEB00000000656361;
      v81 = 0x8000000249BD0FA0;
      v15 = 0x705320726F6C6F43;
      v16 = v11 + 8;
      v17 = 0x617A696C61636F4CLL;
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_221;
  }

LABEL_215:
  if (countAndFlagsBits == 0x6E6F697461727544 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v63 = _DocumentManagerBundle();
    if (v63)
    {
      v14 = v63;
      v81 = 0x8000000249BD0F60;
      v16 = v11 + 2;
      v15 = 0x6E6F697461727544;
      goto LABEL_261;
    }

    __break(1u);
LABEL_227:
    if (countAndFlagsBits != 0x746974614C535047 || v6 != 0xEB00000000656475)
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v66 = countAndFlagsBits == 0x656475746974616CLL && v6 == 0xE800000000000000;
      v67 = v66;
      if ((v65 & 1) == 0 && !v67 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_241;
      }
    }

    v68 = _DocumentManagerBundle();
    if (!v68)
    {
      __break(1u);
      goto LABEL_250;
    }

    v14 = v68;
    v15 = 0x656475746974614CLL;
    v81 = 0x8000000249BD0ED0;
    v16 = v11 + 6;
LABEL_261:
    v19 = 0xE800000000000000;
    goto LABEL_192;
  }

LABEL_221:
  if ((countAndFlagsBits != 0x736365646F43 || v6 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_227;
  }

  v64 = _DocumentManagerBundle();
  if (v64)
  {
    v14 = v64;
    v81 = 0x8000000249BD0F10;
    v16 = v11 + 12;
    v15 = 0x736365646F43;
    v19 = 0xE600000000000000;
    goto LABEL_192;
  }

  __break(1u);
LABEL_241:
  if (countAndFlagsBits == 0x69676E6F4C535047 && v6 == v8 + 1575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0x64757469676E6F6CLL && v6 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v69 = _DocumentManagerBundle();
    if (v69)
    {
      v14 = v69;
      v15 = 0x64757469676E6F4CLL;
      v81 = 0x8000000249BD0E90;
      v16 = v11 + 7;
      v19 = 0xE900000000000065;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_256;
  }

LABEL_250:
  if (countAndFlagsBits == v7 + 32 && v6 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v70 = _DocumentManagerBundle();
    if (v70)
    {
      v14 = v70;
      v16 = v11 - 1;
      v81 = 0x8000000249BD0E50;
      v15 = v7;
      v19 = 0xE500000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_263;
  }

LABEL_256:
  if (countAndFlagsBits == v9 + 32 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v71 = _DocumentManagerBundle();
    if (v71)
    {
      v14 = v71;
      v81 = 0x8000000249BD0E10;
      v15 = 0x7265736F706D6F43;
      v16 = v11 + 2;
      goto LABEL_261;
    }

    __break(1u);
    goto LABEL_269;
  }

LABEL_263:
  if (countAndFlagsBits == 0x6867697279706F63 && v6 == v10 + 1285 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v72 = _DocumentManagerBundle();
    if (v72)
    {
      v14 = v72;
      v15 = 0x6867697279706F43;
      v81 = 0x8000000249BD0DD0;
      v19 = 0xE900000000000074;
      v16 = v11 + 3;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_275;
  }

LABEL_269:
  if (countAndFlagsBits == 1701869940 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v73 = _DocumentManagerBundle();
    if (v73)
    {
      v14 = v73;
      v81 = 0x8000000249BD0D90;
      v15 = 0x206C61636973754DLL;
      v19 = 0xED000065726E6547;
      v16 = v11 + 7;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_281;
  }

LABEL_275:
  if (countAndFlagsBits == 0x747369747261 && v6 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v74 = _DocumentManagerBundle();
    if (v74)
    {
      v14 = v74;
      v81 = 0x8000000249BD0D50;
      v15 = 0x73726F68747541;
      v16 = v11 + 1;
      v19 = 0xE700000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_287;
  }

LABEL_281:
  if (countAndFlagsBits == 0x6D614E6D75626C61 && v6 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v75 = _DocumentManagerBundle();
    if (v75)
    {
      v14 = v75;
      v81 = 0x8000000249BD0D10;
      v15 = 0x6D75626C41;
      v16 = v11 + 5;
      v19 = 0xE500000000000000;
      goto LABEL_192;
    }

    __break(1u);
    goto LABEL_293;
  }

LABEL_287:
  if (countAndFlagsBits == 0x6168706C41736168 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v76 = _DocumentManagerBundle();
    if (v76)
    {
      v14 = v76;
      v81 = 0x8000000249BD0CD0;
      v15 = 0x6843206168706C41;
      v19 = 0xED00006C656E6E61;
      v16 = v11 + 6;
      goto LABEL_192;
    }

    __break(1u);
LABEL_299:
    v77 = one-time initialization token for UI;

    if (v77 != -1)
    {
      swift_once();
    }

    static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_249B9FA70;
    v79 = MEMORY[0x277D837D0];
    *(v78 + 56) = MEMORY[0x277D837D0];
    v80 = lazy protocol witness table accessor for type String and conformance String();
    *(v78 + 32) = countAndFlagsBits;
    *(v78 + 40) = v6;
    *(v78 + 96) = v79;
    *(v78 + 104) = v80;
    *(v78 + 64) = v80;
    *(v78 + 72) = v12;
    *(v78 + 80) = v4;

    os_log(_:dso:log:type:_:)();

    return countAndFlagsBits;
  }

LABEL_293:
  if ((countAndFlagsBits != 0x746964657243 || v6 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_299;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v14 = result;
    v16 = v11 - 1;
    v81 = 0x8000000249BD0C90;
    v15 = 0x746964657243;
    v19 = 0xE600000000000000;
    goto LABEL_192;
  }

  __break(1u);
  return result;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

id DOCMetadataKey.placeholderValue.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 - 8) < 3)
  {
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BD0BC0;
      v8 = 0xE2676E6964616F4CLL;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v7 = 0xD00000000000005DLL;
      v6 = 0xAA0000000000A680;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
LABEL_4:
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BD07E0;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0x8000000249BD07C0;
      v7 = 0xD00000000000004DLL;
      v8 = 0xD000000000000010;
LABEL_6:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, *&v4, v3, v9, *&v7)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v11 = 0x8000000249BD0B60;
    v8 = 0x74616C75636C6143;
    v6 = 0xAE00A680E2676E69;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v7 = 0xD000000000000059;
    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_opt_self() defaultManager];
  v17 = [a1 itemID];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v21[4] = partial apply for closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
  v21[3] = &block_descriptor_181;
  v19 = _Block_copy(v21);
  v20 = a1;

  outlined copy of DOCMetadataKey(a5, a6);

  [v16 fetchParentsForItemID:v17 recursively:1 completionHandler:v19];
  _Block_release(v19);
}

void closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    if (!a1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_249B9A480;
      *(v20 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      *(v20 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
      *(v20 + 32) = a3;
      v21 = a3;
      goto LABEL_5;
    }

    v18 = a9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v19 = a3;
    v22 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v19, 3);

    v23 = swift_allocObject();
    v23[2] = a5;
    v23[3] = countAndFlagsBits;
    v23[4] = a7;
    v23[5] = a8;
    v23[6] = a9;
    v78 = v23;
    v23[7] = a10;

    outlined copy of DOCMetadataKey(a7, a8);
    v24 = _DocumentManagerBundle();
    if (v24)
    {
      v25 = v24;
      v83._object = 0x8000000249BD09D0;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._countAndFlagsBits = 0xD00000000000001CLL;
      v27._object = 0x8000000249BD0990;
      v28._object = 0x8000000249BD09B0;
      v83._countAndFlagsBits = 0xD000000000000031;
      v28._countAndFlagsBits = 0xD000000000000010;
      v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v83);
      countAndFlagsBits = v29._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = 0x68736172542ELL;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v29;

      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd);
      v31 = a1;
      if (!v22)
      {
        v46 = objc_opt_self();
        v47 = swift_allocObject();
        *(v47 + 16) = 0;
        *(v47 + 24) = v19;
        *(v47 + 32) = 1;
        *(v47 + 40) = v29;
        *(v47 + 56) = v18;
        *(v47 + 64) = a4;
        *(v47 + 72) = 0;
        *(v47 + 80) = partial apply for closure #1 in closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
        *(v47 + 88) = v78;
        *(v47 + 96) = a1;
        aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
        aBlock[5] = v47;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_190;
        v48 = _Block_copy(aBlock);
        v49 = v19;

        [v46 fetchProviderDomainForItem:v49 cachePolicy:1 completionHandler:v48];

        _Block_release(v48);
        return;
      }

      object = v29._object;
      v32 = MEMORY[0x277D84F90];
      aBlock[0] = MEMORY[0x277D84F90];

      v33 = &selRef_initWithFrame_;
      [v19 isTrashed];
      v34 = v22;
      if (DOCProviderDomainIsSharedServerDomain())
      {
LABEL_31:

        specialized Sequence.forEach(_:)(v31, aBlock);
        v50 = aBlock[0];
        v76 = v34;
        if (*(aBlock[0] + 2) >= 3uLL && (*(aBlock[0] + 6) == 0x736568736172542ELL && *(aBlock[0] + 7) == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          specialized Array.remove(at:)(1uLL);

          specialized Array.remove(at:)(1uLL);

          v50 = aBlock[0];
          v51 = *(aBlock[0] + 2);
          if (v51)
          {
            a8 = object;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v51 < *(v50 + 3) >> 1)
            {
              goto LABEL_44;
            }

            v53 = v51 + 1;
            goto LABEL_39;
          }

          __break(1u);
        }

        else
        {
          if (![v19 v33[86]])
          {
            v57 = *(v50 + 2);
            if (v57)
            {
LABEL_46:
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
              v58 = v32;
              v59 = (v50 + 40);
              do
              {
                v60 = *(v59 - 1);
                v61 = *v59;
                v62 = *(v18 + 16);

                if (v62)
                {
                  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
                  if (v64)
                  {
                    v65 = (*(v18 + 56) + 16 * v63);
                    v60 = *v65;
                    v66 = v65[1];

                    v61 = v66;
                  }
                }

                v68 = v58[2];
                v67 = v58[3];
                if (v68 >= v67 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
                }

                v58[2] = v68 + 1;
                v69 = &v58[2 * v68];
                v69[4] = v60;
                v69[5] = v61;
                v59 += 2;
                --v57;
              }

              while (v57);

              goto LABEL_56;
            }

LABEL_55:

            v58 = MEMORY[0x277D84F90];
LABEL_56:

            v70 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v58, 0);
            v71 = pathForCopy(fromPathComponents:layoutDirection:)(v58, a4);
            v73 = v72;

            v74 = swift_allocObject();
            v74[2] = partial apply for closure #1 in closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
            v74[3] = v78;
            v74[4] = v70;
            v74[5] = v71;
            v74[6] = v73;

            v75 = v70;
            DOCRunInMainThread(_:)();

            return;
          }

          a8 = object;
          if (!*(v50 + 2))
          {
LABEL_45:
            v57 = *(v50 + 2);
            if (v57)
            {
              goto LABEL_46;
            }

            goto LABEL_55;
          }

          v54 = *(v50 + 4);
          v55 = *(v50 + 5);

          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
          aBlock[0] = v50;
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v54, v55);

          v51 = *(v50 + 2);
          if (v51)
          {
            aBlock[0] = v50;
            v56 = *(v50 + 3);

            if (v51 < v56 >> 1)
            {
              goto LABEL_44;
            }

            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_59:
        v53 = v51 + 1;
        isUniquelyReferenced_nonNull_native = 1;
LABEL_39:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v53, 1, v50);
        aBlock[0] = v50;
LABEL_44:
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, a8);

        goto LABEL_45;
      }

      a8 = v34;
      v35 = DOCLocalizedDisplayName();
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[16 * v41];
      *(v42 + 4) = v36;
      *(v42 + 5) = v38;
      aBlock[0] = v39;
      if (!(a1 >> 62))
      {
        v34 = a8;
        v32 = MEMORY[0x277D84F90];
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_30:
          v33 = &selRef_initWithFrame_;
          goto LABEL_31;
        }

        v33 = &selRef_initWithFrame_;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (__CocoaSet.count.getter() <= 0)
      {
LABEL_29:
        v31 = a1;
        v34 = a8;
        v32 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }

      if (!__CocoaSet.count.getter())
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    v31 = a1;
    swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = a8;
    v32 = MEMORY[0x277D84F90];
    v33 = &selRef_initWithFrame_;
LABEL_21:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
LABEL_22:
    v43 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      v44 = v43 - 1;
      v45 = *((v31 & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 0x20);
      *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) = v44;

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9FA70;
  *(v11 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  *(v11 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
  *(v11 + 32) = a3;
  v12 = a3;
  v13 = _convertErrorToNSError(_:)();
  *(v11 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
  *(v11 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
  *(v11 + 72) = v13;
LABEL_5:
  os_log(_:dso:log:type:_:)();
}

void closure #2 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 25) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v14 = Strong;
    swift_beginAccess();
    v15 = *(a7 + 16);
    v16 = *(a7 + 24);
    v17 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v18 = MEMORY[0x24C1FAD20](v15, v16);

    v19 = [v17 initWithString_];

    (*((*MEMORY[0x277D85000] & *v14) + 0x1B8))(a3, a4, a5, a6, v19, 0, 0, 0);
    goto LABEL_35;
  }

  v21 = *(a1 + 24);
  v22 = *(a1 + 2);
  v42 = *a1;
  swift_beginAccess();
  *(a8 + 32) = v42;
  *(a8 + 48) = v22;
  *(a8 + 56) = v21;
  *(a8 + 57) = 0;
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    swift_beginAccess();
    v25 = DOCMetadataFolderSizingViewModel.sizeText.getter();
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v29 = MEMORY[0x24C1FAD20](v25, v27);

    v30 = [v28 initWithString_];

    swift_beginAccess();
    if (*(a8 + 57) & 1) != 0 || (*(a8 + 40))
    {
      v31 = 1;
    }

    else
    {
      v32 = *(a8 + 32);
      v33 = *(a8 + 48);
      v35 = v32 == -1 || v33 == -1;
      v37 = v32 < 0 && v33 >= 0;
      if (*(a8 + 16) != 1)
      {
        v38 = v35;
      }

      else
      {
        v38 = v37;
      }

      if (v35)
      {
        v38 = v35;
      }

      v31 = (*(a8 + 56) & 1) != 0 || v38;
    }

    (*((*MEMORY[0x277D85000] & *v24) + 0x1B8))(a3, a4, a5, a6, v30, 0, 0, v31);
  }

  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v19 = v39;
    if (*(v39 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) == 1)
    {
      *(v39 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
    }

    else
    {
      v40 = *(v39 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
      *(v39 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
      if (v40 == 1)
      {
        v41 = (*((*MEMORY[0x277D85000] & *v39) + 0x128))();
        if (v41)
        {
          [v41 metadataViewDidFinishPreheat_];
          swift_unknownObjectRelease();
        }
      }
    }

LABEL_35:
  }
}

void closure #1 in closure #3 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (*(a1 + 25) & 1) != 0 || (a1[1])
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
LABEL_6:
    dispatch_group_leave(a4);
    return;
  }

  v6 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (!v9)
  {
    *(a2 + 16) = v10;
    goto LABEL_6;
  }

  __break(1u);
}

void closure #4 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v15 = objc_opt_self();
    swift_beginAccess();
    v16 = [v15 stringFromByteCount:*(a3 + 16) countStyle:0];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    swift_beginAccess();
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v25 = MEMORY[0x24C1FAD20](v23, v22);

    v26 = [v24 initWithString_];

    (*((*MEMORY[0x277D85000] & *v21) + 0x1B8))(a5, a6, a7, a8, v26, 0, 0, 0);
  }
}

void closure #5 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1B8))(a7, a8, a9, a10, a3, a4, a5, 0);
  }
}

void closure #9 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 8))
  {
    v11 = *(a1 + 40);
    v12 = objc_opt_self();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v13 = [v12 stringFromByteCount:v11 countStyle:0];
    if (!v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = MEMORY[0x24C1FAD20](v14);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v16 = Strong;
    v17 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
      return;
    }

    v16 = v19;
    swift_beginAccess();
    v20 = *(a7 + 16);
    v21 = *(a7 + 24);
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v13 = MEMORY[0x24C1FAD20](v20, v21);

    v17 = [v22 initWithString_];
  }

  v23 = v17;

  (*((*MEMORY[0x277D85000] & *v16) + 0x1B8))(a3, a4, a5, a6, v23, 0, 0, 0);
  v13 = v23;
LABEL_10:
}

void closure #10 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    v11 = a1[2];
    v12 = a1[4];
    v13 = objc_opt_self();
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v13;
      v48 = a4;
      v49 = a5;
      v15 = [v13 stringFromByteCount:v11 countStyle:0];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if ((v12 & 0x8000000000000000) == 0)
      {
        v47 = a6;
        v19 = [v14 stringFromByteCount:v12 countStyle:0];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = _DocumentManagerBundle();
        if (v23)
        {
          v24 = v23;
          v50._object = 0x8000000249BD0AA0;
          v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v25.value._object = 0xEB00000000656C62;
          v26._object = 0x8000000249BD0A80;
          v50._countAndFlagsBits = 0xD000000000000059;
          v26._countAndFlagsBits = 0xD000000000000011;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v50);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_249B9FA70;
          v29 = MEMORY[0x277D837D0];
          *(v28 + 56) = MEMORY[0x277D837D0];
          v30 = lazy protocol witness table accessor for type String and conformance String();
          *(v28 + 32) = v16;
          *(v28 + 40) = v18;
          *(v28 + 96) = v29;
          *(v28 + 104) = v30;
          *(v28 + 64) = v30;
          *(v28 + 72) = v20;
          *(v28 + 80) = v22;
          v31 = static String.localizedStringWithFormat(_:_:)();
          v33 = v32;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v37 = MEMORY[0x24C1FAD20](v31, v33);

            v38 = [v36 initWithString_];

            (*((*MEMORY[0x277D85000] & *v35) + 0x1B8))(a3, v48, v49, v47, v38, 0, 0, 0);
          }

          else
          {
          }

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    swift_beginAccess();
    v42 = *(a7 + 16);
    v43 = *(a7 + 24);
    v44 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v45 = MEMORY[0x24C1FAD20](v42, v43);

    v46 = [v44 initWithString_];

    (*((*MEMORY[0x277D85000] & *v41) + 0x1B8))(a3, a4, a5, a6, v46, 0, 0, 0);
  }
}

void closure #11 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    v7 = a1[5];
    v8 = a1[2];
    v9 = v7 - v8;
    if (v7 < v8)
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
      [v10 setAllowedUnits_];
      v11 = [v10 stringFromByteCount_];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [objc_opt_self() stringFromByteCount:v9 countStyle:0];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = _DocumentManagerBundle();
      if (v19)
      {
        v20 = v19;
        v50._object = 0x8000000249BD0B00;
        v21._countAndFlagsBits = 0x6F204025280A4025;
        v21._object = 0xEF296B736964206ELL;
        v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v22.value._object = 0xEB00000000656C62;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        v50._countAndFlagsBits = 0xD000000000000054;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v50);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_249B9FA70;
        v25 = MEMORY[0x277D837D0];
        *(v24 + 56) = MEMORY[0x277D837D0];
        v26 = lazy protocol witness table accessor for type String and conformance String();
        *(v24 + 32) = v12;
        *(v24 + 40) = v14;
        *(v24 + 96) = v25;
        *(v24 + 104) = v26;
        *(v24 + 64) = v26;
        *(v24 + 72) = v16;
        *(v24 + 80) = v18;
        v27 = static String.localizedStringWithFormat(_:_:)();
        v29 = v28;

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v33 = MEMORY[0x24C1FAD20](v27, v29);

          v34 = [v32 initWithString_];

          (*((*MEMORY[0x277D85000] & *v31) + 0x1B8))(a3, a4, a5, a6, v34, 0, 0, 0);
        }

        else
        {
        }

        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
    return;
  }

  v41 = v40;
  swift_beginAccess();
  v42 = *(a7 + 16);
  v43 = *(a7 + 24);
  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v45 = MEMORY[0x24C1FAD20](v42, v43);

  v10 = [v44 initWithString_];

  (*((*MEMORY[0x277D85000] & *v41) + 0x1B8))(a3, a4, a5, a6, v10, 0, 0, 0);
LABEL_10:
}

DocumentManagerExecutables::DOCMetadataLabelAlignment_optional __swiftcall DOCMetadataLabelAlignment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = DocumentManagerExecutables_DOCMetadataLabelAlignment_leadingTrailing;
  }

  else
  {
    v1.value = DocumentManagerExecutables_DOCMetadataLabelAlignment_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCMetadataLabelAlignment@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void __swiftcall DOCMetadataKeyValueRow.Metrics.init()(DocumentManagerExecutables::DOCMetadataKeyValueRow::Metrics *__return_ptr retstr)
{
  *&retstr->regularHeightLayoutMargins.top = xmmword_249BA37D0;
  retstr->regularHeightLayoutMargins.bottom = 8.0;
  *&retstr->regularHeightLayoutMargins.right = 0u;
  *&retstr->compactHeightLayoutMargins.left = 0u;
  retstr->compactHeightLayoutMargins.right = 0.0;
}

uint64_t DOCMetadataKeyValueRow.shouldBeHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataKeyValueRow.shouldBeHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCMetadataKeyValueRow.canCopyDetail.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataKeyValueRow.canCopyDetail.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCMetadataKeyValueRow.value.getter();
  (*((*MEMORY[0x277D85000] & **(v4 + 24)) + 0x90))(*(v1 + v3));
}

void (*DOCMetadataKeyValueRow.canCopyDetail.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.canCopyDetail.modify;
}

void DOCMetadataKeyValueRow.canCopyDetail.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.value.getter();
    (*((*MEMORY[0x277D85000] & **(v6 + 24)) + 0x90))(*(v4 + v5));
  }

  free(v3);
}

uint64_t DOCMetadataKeyValueRow.detailLink.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataKeyValueRow.detailLink.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCMetadataKeyValueRow.value.getter();
  (*((*MEMORY[0x277D85000] & **(v4 + 24)) + 0xA8))(*(v1 + v3));
}

void (*DOCMetadataKeyValueRow.detailLink.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.detailLink.modify;
}

void DOCMetadataKeyValueRow.detailLink.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.value.getter();
    (*((*MEMORY[0x277D85000] & **(v6 + 24)) + 0xA8))(*(v4 + v5));
  }

  free(v3);
}

uint64_t DOCMetadataKeyValueRow.compactRowHeight.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.compactRowHeight.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v7 = 16;
    v8 = 8;
    v9 = 56;
    if (a1)
    {
      v8 = 40;
      v7 = 48;
    }

    else
    {
      v9 = 24;
    }

    if (a1)
    {
      v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics + 32);
    }

    else
    {
      v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v11 = *(v6 + v9);
    v12 = *(v6 + v7);
    v13 = *(v6 + v8);
    v14 = *v10;
    v15 = DOCMetadataKeyValueRow.stackView.getter();
    [v15 setLayoutMargins_];
  }
}

void (*DOCMetadataKeyValueRow.compactRowHeight.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.compactRowHeight.modify;
}

void DOCMetadataKeyValueRow.compactRowHeight.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v8 = 24;
    v9 = 16;
    v10 = 8;
    if (v5)
    {
      v10 = 40;
      v9 = 48;
      v8 = 56;
      v11 = (v7 + 32);
    }

    else
    {
      v11 = (v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v12 = (v7 + v10);
    v13 = (v7 + v9);
    v14 = (v7 + v8);
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v16 = 16;
    v17 = 8;
    v18 = 56;
    if (v5)
    {
      v17 = 40;
      v16 = 48;
      v11 = (v15 + 32);
    }

    else
    {
      v18 = 24;
      v11 = (v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v12 = (v15 + v17);
    v13 = (v15 + v16);
    v14 = (v15 + v18);
  }

  v19 = *v14;
  v20 = *v13;
  v21 = *v12;
  v22 = *v11;
  v23 = DOCMetadataKeyValueRow.stackView.getter();
  [v23 setLayoutMargins_];

LABEL_13:

  free(v2);
}

double DOCMetadataKeyValueRow.columnWidth.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.columnWidth.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
    [v5 setConstant_];

    v6 = *((*MEMORY[0x277D85000] & *v1) + 0x158);
    v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
    [v7 setActive_];
  }
}

void (*DOCMetadataKeyValueRow.columnWidth.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCMetadataKeyValueRow.columnWidth.modify;
}

void DOCMetadataKeyValueRow.columnWidth.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v1[4];
    v7 = v1[5];
    v8 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
    [v8 setConstant_];

    v9 = *((*MEMORY[0x277D85000] & *v6) + 0x158);
    v10 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
    [v10 setActive_];
  }

  free(v1);
}

uint64_t DOCMetadataKeyValueRow.labelAlignment.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.labelAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v4 != (a1 & 1))
  {
    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

void (*DOCMetadataKeyValueRow.labelAlignment.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.labelAlignment.modify;
}

void DOCMetadataKeyValueRow.labelAlignment.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCMetadataKeyValueRow.updateLabelLayout()();
  }

  free(v1);
}

uint64_t DOCMetadataKeyValueRow.showsTopSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCMetadataKeyValueRow.showsTopSeparator.modify(uint64_t *a1))(id **a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.showsTopSeparator.modify;
}

uint64_t DOCMetadataKeyValueRow.showsBottomSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCMetadataKeyValueRow.showsTopSeparator.setter(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = v2[v5];
  v2[v5] = a1;
  if (v7 != v4)
  {
    return [v2 setNeedsDisplay];
  }

  return result;
}

uint64_t (*DOCMetadataKeyValueRow.showsBottomSeparator.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.showsBottomSeparator.modify;
}

void *DOCMetadataKeyValueRow.menu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCMetadataKeyValueRow.menu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = DOCMetadataKeyValueRow.menuButton.getter();
  v7 = *(v1 + v3);
  [v6 setMenu_];
}

void (*DOCMetadataKeyValueRow.menu.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.menu.modify;
}

void DOCMetadataKeyValueRow.menu.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.menuButton.getter();
    v7 = *(v4 + v5);
    [v6 setMenu_];
  }

  free(v3);
}

id DOCMetadataKeyValueRow.columnWidthConstraint.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
  }

  else
  {
    v4 = DOCMetadataKeyValueRow.label.getter();
    v5 = [v4 widthAnchor];

    (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
    v6 = [v5 constraintEqualToConstant_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id closure #1 in DOCMetadataKeyValueRow.label.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setFont_];
  [v2 setTextAlignment_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];
  return v2;
}

uint64_t DOCMetadataKeyValueRow.value.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value);
  }

  else
  {
    v2 = closure #1 in DOCMetadataKeyValueRow.value.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in DOCMetadataKeyValueRow.value.getter(uint64_t a1)
{
  type metadata accessor for DOCCopyableLabel();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setFont_];
  [v2 setTextAlignment_];

  v3 = [objc_opt_self() labelColor];
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(v3);
  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCViewDecoratorCyAA16DOCCopyableLabelCGMd);
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v4;
  return result;
}

id DOCMetadataKeyValueRow.spacerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView);
  }

  else
  {
    v4 = closure #1 in DOCMetadataKeyValueRow.spacerView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCMetadataKeyValueRow.spacerView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v3) = v5;
  [v2 setPriority_];
  [v2 setActive_];

  return v0;
}

id closure #1 in DOCMetadataKeyValueRow.menuButton.getter(void *a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration.Size();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UIButton.Configuration();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v43 - v25;
  static UIButton.Configuration.plain()();
  (*(v15 + 104))(v18, *MEMORY[0x277D75018], v14);
  UIButton.Configuration.buttonSize.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.imagePadding.setter();
  (*(v10 + 104))(v13, *MEMORY[0x277D75000], v9);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v46;
  v29 = v28;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v30 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  UIConfigurationColorTransformer.init(_:)();
  v31 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v31 - 8) + 56))(v4, 0, 1, v31);
  UIButton.Configuration.indicatorColorTransformer.setter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.setter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
  v33 = v44;
  v32 = v45;
  (*(v44 + 16))(v22, v26, v45);
  v34 = UIButton.init(configuration:primaryAction:)();
  [v34 setShowsMenuAsPrimaryAction_];
  [v34 setChangesSelectionAsPrimaryAction_];
  v35 = v34;
  [v35 setPreferredMenuElementOrder_];
  LODWORD(v36) = 1132068864;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v35 setContentHuggingPriority:0 forAxis:v37];

  v38 = (*((*MEMORY[0x277D85000] & *v29) + 0x1B8))();
  [v35 setMenu_];

  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  aBlock[4] = partial apply for closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_202;
  v40 = _Block_copy(aBlock);
  v41 = v29;

  [v35 setConfigurationUpdateHandler_];
  _Block_release(v40);

  (*(v33 + 8))(v26, v32);
  return v35;
}

uint64_t closure #1 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataFont);
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  v8 = v7;
  AttributeContainer.subscript.setter();
  [objc_opt_self() labelColor];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
  return AttributeContainer.subscript.setter();
}

id closure #2 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

void closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v40 - v15;
  v17 = [a1 menu];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = [v17 selectedElements];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_20:

    return;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1FC540](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 image];
  if (v23)
  {
    v24 = v23;
    v25 = [a2 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    v27 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v27 scaledValueForValue:0 compatibleWithTraitCollection:16.0];
    v29 = v28;
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          UIButton.configuration.getter();
          v30 = type metadata accessor for UIButton.Configuration();
          if ((*(*(v30 - 8) + 48))(v11, 1, v30))
          {
            outlined init with copy of DOCGridLayout.Spec?(v11, v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
            UIButton.configuration.setter();

            outlined destroy of CharacterSet?(v11, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
            return;
          }

          v41 = v26;
          v32 = v29;
          v33 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
          v34 = swift_allocObject();
          *(v34 + 16) = v24;
          *(v34 + 24) = v32;
          *(v34 + 32) = v32;
          v35 = swift_allocObject();
          *(v35 + 16) = partial apply for closure #1 in closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
          *(v35 + 24) = v34;
          aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
          aBlock[5] = v35;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
          aBlock[3] = &block_descriptor_211;
          v36 = _Block_copy(aBlock);
          v37 = v24;

          v38 = [v33 imageWithActions_];

          _Block_release(v36);
          LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            UIButton.Configuration.image.setter();
            UIButton.configuration.setter();

            return;
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [a1 setChangesSelectionAsPrimaryAction_];
  [a1 setMenu_];
  UIButton.configuration.getter();
  v31 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v31 - 8) + 48))(v16, 1, v31))
  {
    outlined init with copy of DOCGridLayout.Spec?(v16, v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    UIButton.configuration.setter();

    outlined destroy of CharacterSet?(v16, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    v39 = [v22 title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }
}

id DOCMetadataKeyValueRow.label.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in DOCMetadataKeyValueRow.stackView.getter(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8) == 1)
  {
    v2 = DOCMetadataKeyValueRow.menuButton.getter();
  }

  else
  {
    v2 = *(DOCMetadataKeyValueRow.value.getter() + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA37E0;
  *(v3 + 32) = DOCMetadataKeyValueRow.label.getter();
  *(v3 + 40) = DOCMetadataKeyValueRow.spacerView.getter();
  *(v3 + 48) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v5 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithArrangedSubviews_];

  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setLayoutMarginsRelativeArrangement_];
  [v8 setLayoutMargins_];

  [v8 setAxis_];
  [v8 setSpacing_];
  [v8 setAlignment_];

  return v8;
}

char *DOCMetadataKeyValueRow.init(frame:metadataKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_getObjectType();
  v17 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics];
  *v17 = xmmword_249BA37D0;
  *(v17 + 2) = 0x4020000000000000;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 7) = 0;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataFont;
  *&v8[v18] = [objc_opt_self() preferredFontForTextStyle_];
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden] = 1;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail] = 0;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink] = 0;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth] = 0;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment] = 1;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator] = 0;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___label] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___menuButton] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView] = 0;
  v21 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey];
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  swift_beginAccess();
  v8[v20] = 1;
  swift_beginAccess();
  v8[v19] = a2 == 3;
  outlined copy of DOCMetadataKey(a1, a2);
  v57.receiver = v8;
  v57.super_class = type metadata accessor for DOCMetadataKeyValueRow();
  v22 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a5, a6, a7, a8);
  v23 = objc_opt_self();
  v24 = v22;
  [v23 itemInfoView];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = DOCMetadataKey.localizedTitle.getter(a1, a2, a3, a4);
  v28 = v27;
  outlined consume of DOCMetadataKey(a1, a2);
  v29 = MEMORY[0x24C1FAD20](v26, v28);

  v30 = [ObjCClassFromMetadata metadataRowWithLabel_];

  if (!v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = MEMORY[0x24C1FAD20](v31);
  }

  [v24 setAccessibilityIdentifier_];

  v32 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  v33 = DOCMetadataKeyValueRow.stackView.getter();
  [v24 addSubview_];

  v34 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249BA0D00;
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView;
  v37 = [*&v24[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView] widthAnchor];
  v38 = [v24 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 multiplier:1.0];

  *(v35 + 32) = v39;
  v40 = [*&v24[v36] topAnchor];
  v41 = [v24 topAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v35 + 40) = v42;
  v43 = [*&v24[v36] bottomAnchor];
  v44 = [v24 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v35 + 48) = v45;
  v46 = [*&v24[v36] leadingAnchor];
  v47 = [v24 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v35 + 56) = v48;
  v49 = [*&v24[v36] trailingAnchor];
  v50 = [v24 trailingAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v35 + 64) = v51;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_249B9A480;
  v54 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v55 = MEMORY[0x277D74DB8];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v24;
}

Swift::Void __swiftcall DOCMetadataKeyValueRow.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 clearColor];
    v10 = [v9 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextFillRect(v7, v17);
    v11 = [v8 separatorColor];
    color = [v11 CGColor];

    v12 = 1.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v1 contentScaleFactor];
      v12 = v13;
    }

    v14 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x188))())
    {
      CGContextSetFillColorWithColor(v7, color);
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = width;
      v18.size.height = 1.0 / v12;
      CGContextFillRect(v7, v18);
    }

    if ((*((*v14 & *v1) + 0x1A0))())
    {
      CGContextSetFillColorWithColor(v7, color);
      v19.origin.x = 0.0;
      v19.origin.y = height + -1.0;
      v19.size.width = width;
      v19.size.height = 1.0 / v12;
      CGContextFillRect(v7, v19);
    }
  }
}

Swift::Void __swiftcall DOCMetadataKeyValueRow.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCMetadataKeyValueRow();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

void DOCMetadataKeyValueRow.updateLabelLayout()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v18 = static UITraitCollection.Traits.sizeCategory;
  v19 = qword_27EEE9CC0;

  v3 = UITraitCollection.doc_hasSpecified(_:)(&v18);

  if (v3)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v7 = DOCMetadataKeyValueRow.stackView.getter();
    [v7 setAxis_];

    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView) setAlignment_];
    if (v6)
    {
      v9 = DOCMetadataKeyValueRow.label.getter();
      [v9 setTextAlignment_];

      [*(DOCMetadataKeyValueRow.value.getter() + 24) setTextAlignment_];

      v17 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
      [v17 setActive_];
    }

    else
    {
      v10 = 2 * ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 0);
      v11 = DOCMetadataKeyValueRow.label.getter();
      v12 = MEMORY[0x277D85000];
      v13 = *((*MEMORY[0x277D85000] & *v1) + 0x170);
      if (v13())
      {
        v14 = 4;
      }

      else
      {
        v14 = v10;
      }

      [v11 setTextAlignment_];

      v15 = DOCMetadataKeyValueRow.value.getter();
      if (v13())
      {
        v16 = v10;
      }

      else
      {
        v16 = 4;
      }

      [*(v15 + 24) setTextAlignment_];

      v17 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
      [v17 setActive_];
    }
  }
}

uint64_t DOCMetadataKeyValueRow.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8);

  return outlined consume of DOCMetadataKey(v1, v2);
}

id DOCLevelOfDetailButton.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DOCMetadataView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))(v4);
}

uint64_t (*DOCMetadataView.nodes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCMetadataView.nodes.modify;
}

uint64_t DOCMetadataView.nodes.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x1C0))(result);
  }

  return result;
}

uint64_t DOCMetadataView.showsItemLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.showsItemLocation.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))(result);
  }

  return result;
}

void (*DOCMetadataView.showsItemLocation.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.showsItemLocation.modify;
}

void DOCMetadataView.showsItemLocation.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x1C0))();
  }

  free(v1);
}

uint64_t DOCMetadataView.showsSeparators.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.showsSeparators.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

void (*DOCMetadataView.showsSeparators.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.showsSeparators.modify;
}

void DOCMetadataView.showsSeparators.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x1C8))();
  }

  free(v1);
}

double DOCMetadataView.columnWidth.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.columnWidth.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

void (*DOCMetadataView.columnWidth.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCMetadataView.columnWidth.modify;
}

void DOCMetadataView.columnWidth.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[4]) + 0x1C8))();
  }

  free(v1);
}

Swift::String __swiftcall DOCMetadataView.levelOfDetailButtonTitle()()
{
  v1 = [v0 levelOfDetail];
  countAndFlagsBits = _DocumentManagerBundle();
  v4 = countAndFlagsBits;
  if (!v1)
  {
    if (countAndFlagsBits)
    {
      v13 = 0x8000000249BD0160;
      v5 = 0x726F4D20776F6853;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v8 = 0xE900000000000065;
      goto LABEL_6;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!countAndFlagsBits)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = 0x8000000249BD0120;
  v5 = 0x73654C20776F6853;
  v6 = 0x617A696C61636F4CLL;
  v7 = 0xEB00000000656C62;
  v8 = 0xE900000000000073;
LABEL_6:
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0xD000000000000037;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v6, v4, v9, *(&v13 - 1));

  countAndFlagsBits = v11._countAndFlagsBits;
  object = v11._object;
LABEL_9:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t DOCMetadataView.metadataViewDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCMetadataView.metadataViewDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataViewDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCMetadataView.labelAlignment.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCMetadataView.labelAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1 & 1;
  if (v5 != (a1 & 1))
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*DOCMetadataView.labelAlignment.modify(uint64_t *a1))(id **a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.labelAlignment.modify;
}

void DOCMetadataKeyValueRow.showsTopSeparator.modify(id **a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if (v6 != v7)
  {
    [v3[3] *a3];
  }

  free(v3);
}

uint64_t DOCMetadataView.canShowAdditionalMetadataValues.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.canShowAdditionalMetadataValues.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCMetadataView.levelOfDetail.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration);
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 standardUserDefaults];
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v9 doc:isa setObject:*MEMORY[0x277D05E48] forRoleKey:v8 configuation:?];
    }

    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

id DOCMetadataView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCMetadataView.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 416))(&outlined read-only object #0 of one-time initialization function for allValues, 0);
  swift_deallocPartialClassInstance();
  return v1;
}

char *DOCMetadataView.init(metadataKeys:configuration:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries] = v5;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing] = 1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration] = a2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys] = a1;
  v6 = a2;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showTopAndBottomSeparator] = _UISolariumEnabled();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DOCMetadataView();
  v7 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setAxis_];
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = v6;
    v10 = [v8 standardUserDefaults];
    v11 = [v10 doc:*MEMORY[0x277D05E48] roleSpecificKeyForKey:v9 configuration:?];

    if (!v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = MEMORY[0x24C1FAD20](v12);
    }

    v13 = [v8 standardUserDefaults];
    v14 = [v13 integerForKey_];

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail;
    swift_beginAccess();
    *&v7[v15] = v14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249B9A480;
  v17 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v7;
}

Swift::Void __swiftcall DOCMetadataView.updateArrangedViews()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCMetadataView.updateArrangedViews();
  *(v3 + 24) = v2;
  v7[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_22;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void DOCMetadataView._reloadArrangedViews()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v86 = static UITraitCollection.Traits.sizeCategory;
    v87 = qword_27EEE9CC0;

    v3 = UITraitCollection.doc_hasSpecified(_:)(&v86);

    if ((v3 & 1) == 0)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
    swift_beginAccess();
    v4 = *(v2 + v1);
    v85 = MEMORY[0x277D84F90];
    v5 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v2 = v7;
      if ((*((*MEMORY[0x277D85000] & *v7) + 0xF8))())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = &v85;
        specialized ContiguousArray._endMutation()();
      }

      ++v6;
      if (v9 == v5)
      {
        v10 = v85;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9FA70;
  v12 = [v1 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v15;
  *(v11 + 32) = v14;
  v16 = [v1 subviews];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v11 + 96) = MEMORY[0x277D83B88];
  *(v11 + 104) = MEMORY[0x277D83C10];
  *(v11 + 72) = v18;
  os_log(_:dso:log:type:_:)();

  v19 = [v1 subviews];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v20 >> 62;
  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_39:
    static os_log_type_t.debug.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_249B9FA70;
    v27 = [v1 arrangedSubviews];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      goto LABEL_95;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      *(v26 + 56) = MEMORY[0x277D83B88];
      *(v26 + 64) = MEMORY[0x277D83C10];
      *(v26 + 32) = i;
      if (v21)
      {
        v30 = __CocoaSet.count.getter();
      }

      else
      {
        v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 96) = MEMORY[0x277D83B88];
      *(v26 + 104) = MEMORY[0x277D83C10];
      *(v26 + 72) = v30;
      os_log(_:dso:log:type:_:)();

      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249B9A480;
      v32 = v10;
      if (v10 < 0)
      {
        v26 = 1;
      }

      else
      {
        v26 = (v10 >> 62) & 1;
      }

      v76 = v30;
      if (v26 == 1)
      {
        v75 = __CocoaSet.count.getter();
        v32 = v10;
        v33 = v75;
      }

      else
      {
        v33 = *(v10 + 16);
      }

      v84 = v32;
      v34 = MEMORY[0x277D84F90];
      if (v33)
      {
        v85 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33 & ~(v33 >> 63), 0);
        if (v33 < 0)
        {
          goto LABEL_99;
        }

        v80 = v26;
        v82 = v31;
        v35 = 0;
        v34 = v85;
        v36 = v10;
        v37 = v10 & 0xC000000000000001;
        do
        {
          if (v37)
          {
            v38 = MEMORY[0x24C1FC540](v35, v36);
          }

          else
          {
            v38 = *(v36 + 8 * v35 + 32);
          }

          v39 = v38;
          v40 = DOCMetadataKey.localizedTitle.getter(*&v38[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey], *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8], *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16], *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24]);
          v42 = v41;

          v85 = v34;
          v44 = *(v34 + 16);
          v43 = *(v34 + 24);
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
            v34 = v85;
          }

          ++v35;
          *(v34 + 16) = v44 + 1;
          v45 = v34 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v36 = v84;
        }

        while (v33 != v35);
        v10 = v84;
        v31 = v82;
        v26 = v80;
      }

      *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      *(v31 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      *(v31 + 32) = v34;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
      v20 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      if (v26)
      {
        v46 = __CocoaSet.count.getter();
        v47 = v10;
        v21 = v46;
        if (!v46)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v47 = v10;
        v21 = *(v10 + 16);
        if (!v21)
        {
LABEL_86:

          static os_log_type_t.debug.getter();
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_249B9FA70;
          v70 = [v1 arrangedSubviews];
          v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v71 >> 62)
          {
            v72 = __CocoaSet.count.getter();
          }

          else
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v73 = MEMORY[0x277D83B88];
          *(v69 + 56) = MEMORY[0x277D83B88];
          v74 = MEMORY[0x277D83C10];
          *(v69 + 64) = MEMORY[0x277D83C10];
          *(v69 + 72) = v76;
          *(v69 + 32) = v72;
          *(v69 + 96) = v73;
          *(v69 + 104) = v74;
          os_log(_:dso:log:type:_:)();

          [v1 invalidateIntrinsicContentSize];
          return;
        }
      }

      v10 = 0;
      v83 = v47 & 0xC000000000000001;
      v77 = v47 + 32;
      v78 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showTopAndBottomSeparator;
      v79 = v21 - 1;
      v48 = __OFSUB__(v21, 1);
      v81 = v48;
      while (1)
      {
        if (v83)
        {
          v56 = MEMORY[0x24C1FC540](v10);
        }

        else
        {
          if (v10 >= *(v47 + 16))
          {
            goto LABEL_91;
          }

          v56 = *(v47 + 8 * v10 + 32);
        }

        v57 = v56;
        v58 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v59 = [v1 addArrangedSubview_];
        v60 = MEMORY[0x277D85000];
        v61 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
        v26 = (*MEMORY[0x277D85000] & *v1) + 240;
        v62 = v61(v59);
        v63 = *((*v60 & *v57) + 0x1A8);
        v64 = v63(v62 & 1);
        if (v10 || (v61(v64) & 1) == 0)
        {
          v65 = 0;
        }

        else
        {
          v65 = *(v1 + v78);
        }

        v20 = v57;
        (*((*MEMORY[0x277D85000] & *v57) + 0x190))(v65);
        if (v81)
        {
          goto LABEL_92;
        }

        if (v83)
        {
          v66 = MEMORY[0x24C1FC540](v79, v84);
        }

        else
        {
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }

          if (v79 >= *(v84 + 16))
          {
            goto LABEL_94;
          }

          v66 = *(v77 + 8 * v79);
        }

        v67 = v66;
        type metadata accessor for DOCMetadataKeyValueRow();
        v26 = v57;
        v68 = static NSObject.== infix(_:_:)();

        if ((v68 & 1) != 0 && (*(v1 + v78) & 1) == 0)
        {
          v63(0);
        }

        v49 = MEMORY[0x277D85000];
        v50 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();
        v51 = (*((*v49 & *v26) + 0x160))(v50);
        v52 = *((*v49 & *v1) + 0x140);
        v53 = v52(v51);
        v54 = (*((*v49 & *v26) + 0x148))((v53 & 1) == 0);
        v55 = v52(v54);
        v20 = v26;
        (*((*v49 & *v26) + 0x178))(v55 & 1);

        ++v10;
        v47 = v84;
        if (v58 == v21)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      ;
    }
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_26:
  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](j, v20);
      }

      else
      {
        v24 = *(v20 + 8 * j + 32);
      }

      v25 = v24;
      [v24 removeFromSuperview];
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

void DOCMetadataView.updateMetadataValue(for:value:copyableValue:isPlaceholder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
  swift_beginAccess();
  v64 = v8;
  v13 = *(v8 + v12);
  v68 = a8;
  v67 = a5;
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
LABEL_58:

    return;
  }

  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v17 = (v13 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v16)
    {
      v18 = MEMORY[0x24C1FC540](v15, v13);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_82;
      }

      v18 = *(v13 + 8 * v15 + 32);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_57;
      }
    }

    v20 = v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey;
    v21 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8);
    v22 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16);
    v23 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24);
    if (v21 > 5)
    {
      if (v21 <= 8)
      {
        if (v21 == 6)
        {
          if (a2 == 6)
          {
            goto LABEL_59;
          }
        }

        else if (v21 == 7)
        {
          if (a2 == 7)
          {
            goto LABEL_59;
          }
        }

        else if (a2 == 8)
        {
          goto LABEL_59;
        }

        goto LABEL_6;
      }

      switch(v21)
      {
        case 9:
          if (a2 == 9)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        case 10:
          if (a2 == 10)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        case 11:
          if (a2 == 11)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
      }

LABEL_45:
      if (a2 >= 0xC)
      {
        v24 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey) == a1 && v21 == a2;
        v63 = v18;
        if (v24 || (v25 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v63, (v25 & 1) != 0))
        {
          if (v22 == a3 && v23 == a4 || (v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v63, (v26 & 1) != 0))
          {
LABEL_59:
            a2 = v18;
            v62 = v20 + 8;

            goto LABEL_60;
          }
        }
      }

      goto LABEL_6;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v21 == 4)
      {
        if (a2 == 4)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    }

    if (!v21)
    {
      if (!a2)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    }

    if (v21 == 1)
    {
      break;
    }

    if (v21 != 2)
    {
      goto LABEL_45;
    }

    if (a2 == 2)
    {
      a2 = v18;

      v62 = v20 + 8;
      if (!v67)
      {
        DOCMetadataKeyValueRow.value.getter();
        LOBYTE(v16) = v68;
        goto LABEL_72;
      }

      v17 = v67;
      v30 = DOCMetadataKey.placeholderValue.getter(a1, 2);
      v32 = v31;
      v33 = [v17 string];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      LOBYTE(v16) = v68;
      if (v30 == v34 && v32 == v36)
      {

LABEL_80:
        v72 = DOCMetadataKey.placeholderValue.getter(a1, 2);
        v73 = v59;
        MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
        v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v61 = MEMORY[0x24C1FAD20](v72, v73);

        v27 = [v60 initWithString_];

        goto LABEL_61;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v58)
      {
        goto LABEL_80;
      }

LABEL_82:

      v27 = v17;
      DOCMetadataKeyValueRow.value.getter();
      goto LABEL_62;
    }

LABEL_6:

    ++v15;
    if (v19 == v14)
    {
      goto LABEL_58;
    }
  }

  if (a2 != 1)
  {
    goto LABEL_6;
  }

  a2 = v18;
  v62 = v20 + 8;

  v38 = MEMORY[0x277D85000];
  v39 = (*((*MEMORY[0x277D85000] & *v64) + 0x128))(v37);
  if (v39)
  {
    v40 = [v39 metadataViewAlwaysOpenWithMenu_];
    swift_unknownObjectRelease();
    LOBYTE(v16) = v68;
    v27 = v67;
    if (v40)
    {
      v41 = *((*v38 & *a2) + 0x1C0);
      v42 = v40;
      v41(v40);
    }

    v43 = v67;
  }

  else
  {
LABEL_60:
    v27 = v67;
    v28 = v67;
    LOBYTE(v16) = v68;
  }

LABEL_61:
  DOCMetadataKeyValueRow.value.getter();
  if (v27)
  {
LABEL_62:
    v29 = v27;
    goto LABEL_73;
  }

LABEL_72:
  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v45 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  v29 = [v44 initWithString_];

  v27 = 0;
LABEL_73:
  KeyPath = swift_getKeyPath();
  v47 = v27;
  specialized DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, v29);

  v48 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
  v49 = a2;
  v50 = MEMORY[0x277D85000];
  v51 = *((*MEMORY[0x277D85000] & **(*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value) + 24)) + 0xE8);

  v51(a6, a7);

  v52 = *(v49 + v48);
  v53 = objc_opt_self();

  v54 = &selRef_placeholderTextColor;
  if ((v16 & 1) == 0)
  {
    v54 = &selRef_labelColor;
  }

  v55 = [v53 *v54];
  [*(v52 + 24) setTextColor_];

  if (*v62 == 3)
  {
    (*((*v50 & *v49) + 0x130))(1);
    v56 = *((*v50 & **(*(v49 + v48) + 24)) + 0x100);

    v57 = v64;
    v56(v64, &protocol witness table for DOCMetadataView);
  }

  else
  {
  }
}

Swift::Void __swiftcall DOCMetadataView.updateMetadataKeys()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = (*((*v2 & *v0) + 0xC0))();
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v5 == 1)
  {
    v6 = &outlined read-only object #0 of one-time initialization function for allValues;
  }

  else
  {
LABEL_6:
    v6 = &outlined read-only object #0 of one-time initialization function for limitedValues;
  }

  v7 = *((*v2 & *v1) + 0xC0);
  v8 = (v7)(v3);
  if (v8 >> 62)
  {
LABEL_42:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 <= 1)
  {
    v11 = (v7)(v10);
    if (v11 >> 62)
    {
      v24 = v11;
      v25 = __CocoaSet.count.getter();
      v11 = v24;
      if (v25)
      {
LABEL_12:
        if ((v11 & 0xC000000000000001) == 0)
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          swift_unknownObjectRetain();
          goto LABEL_15;
        }

        goto LABEL_60;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(v6 + 2);
    if (!v13)
    {
LABEL_47:
      v7 = v13;
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = *(v6 + 2);
    if (!v13)
    {
      goto LABEL_47;
    }

LABEL_17:
    v14 = 0;
    v7 = 0;
    while (*&v6[v14 + 40] != 1)
    {
      ++v7;
      v14 += 32;
      if (v13 == v7)
      {
        goto LABEL_47;
      }
    }

    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    while (v15 != v13)
    {
      if (v15 >= v13)
      {
        goto LABEL_39;
      }

      v19 = *&v6[v14 + 72];
      if (v19 != 1)
      {
        if (v15 != v7)
        {
          if (v7 >= v13)
          {
            goto LABEL_40;
          }

          v31 = *&v6[v14 + 80];
          v32 = *&v6[v14 + 64];
          v20 = &v6[32 * v7 + 32];
          v29 = *v20;
          v30 = *(v20 + 16);
          outlined copy of DOCMetadataKey(*v20, *(v20 + 8));
          outlined copy of DOCMetadataKey(v32, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          v21 = &v6[32 * v7];
          v22 = *(v21 + 4);
          v23 = *(v21 + 5);
          *(v21 + 2) = v32;
          *(v21 + 3) = v31;
          outlined consume of DOCMetadataKey(v22, v23);
          if (v15 >= *(v6 + 2))
          {
            goto LABEL_41;
          }

LABEL_24:
          v16 = &v6[v14];
          v17 = *&v6[v14 + 64];
          v18 = *&v6[v14 + 72];
          *(v16 + 4) = v29;
          *(v16 + 5) = v30;
          outlined consume of DOCMetadataKey(v17, v18);
          v13 = *(v6 + 2);
        }

        ++v7;
      }

      ++v15;
      v14 += 32;
    }

    if (v13 < v7)
    {
      __break(1u);
LABEL_44:
      v5 = __CocoaSet.count.getter();
      goto LABEL_4;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_48:
    if (!__OFADD__(v13, v7 - v13))
    {
      break;
    }

    __break(1u);
LABEL_60:
    MEMORY[0x24C1FC540](0);
LABEL_15:

    swift_getObjectType();
    v12 = DOCNode.supportsAlwaysOpenWith.getter();
    swift_unknownObjectRelease();
    if (v12)
    {
      goto LABEL_56;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > *(v6 + 3) >> 1)
  {
    if (v13 <= v7)
    {
      v27 = v7;
    }

    else
    {
      v27 = v13;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v6);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v13, 0);
LABEL_56:
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys) = v6;

  v28 = *((*v2 & *v1) + 0x1C8);

  v28();
}

Swift::Void __swiftcall DOCMetadataView.updatedMetadataValues()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    v5 = (v1)(v4);
    v6 = [v0 levelOfDetail];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(v5, v6, partial apply for closure #1 in DOCMetadataView.updatedMetadataValues(), v7);
  }
}

NSObject *closure #1 in DOCMetadataView.updatedMetadataValues()(unint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  v85 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v89 = a5;
  result = swift_unknownObjectWeakLoadStrong();
  v91 = result;
  if (result)
  {
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
    v20 = v91;
    swift_beginAccess();
    v88 = v19;
    v21 = *(&v20->isa + v19);
    v77 = v14;
    v76 = v13;
    v75 = v15;
    if (v21 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v94 = *(&v91->isa + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys);
      v22 = v94;
      v23 = *((*MEMORY[0x277D85000] & v91->isa) + 0x190);
      swift_bridgeObjectRetain_n();
      v23((a2 | a3 | a4) != 0);
      v24 = *(v22 + 2);
      v79 = v9;
      v78 = v10;
      if (!v24)
      {
LABEL_8:

        goto LABEL_20;
      }

      v25 = 0;
      v26 = 32;
      while (*&v22[v26 + 8] != 11)
      {
        ++v25;
        v26 += 32;
        if (v24 == v25)
        {
          goto LABEL_8;
        }
      }

      v27 = specialized Array.remove(at:)(v25);
      outlined consume of DOCMetadataKey(v27, v28);
      specialized DOCNodeMetadataContent.orderedMetadata.getter(a2, a3, a4);
      v10 = *(v29 + 16);
      if (!v10)
      {
        break;
      }

      a4 = v94;
      v30 = *(v94 + 2);
      v83 = v29;
      v31 = (v29 + 56);
      v84 = -v25;
      while (v30 >= v25)
      {
        a2 = *(v31 - 2);
        v90 = *(v31 - 3);
        a3 = *v31;
        v86 = *(v31 - 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v30 >= *(a4 + 3) >> 1)
        {
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30 + 1, 1, a4);
        }

        v9 = &a4[v26];
        swift_arrayDestroy();
        memmove(&a4[v26 + 32], &a4[v26], 32 * (v84 + *(a4 + 2)));
        v30 = *(a4 + 2) + 1;
        *(a4 + 2) = v30;
        *v9 = v90;
        *(v9 + 1) = a2;
        *(v9 + 2) = v86;
        *(v9 + 3) = a3;
        v31 += 4;
        if (!--v10)
        {

          v22 = a4;
          v94 = a4;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_43:
      ;
    }

    v22 = v94;
LABEL_20:
    v86 = *(&v91->isa + v88);
    *(&v91->isa + v88) = MEMORY[0x277D84F90];
    v81 = v22;
    v33 = *(v22 + 2);
    if (v33)
    {
      v34 = (*MEMORY[0x277D85000] & v91->isa) + 240;
      v84 = *((*MEMORY[0x277D85000] & v91->isa) + 0xF0);
      v83 = v34;
      swift_beginAccess();
      v82 = type metadata accessor for DOCMetadataKeyValueRow();
      v35 = (v81 + 56);
      do
      {
        v90 = v33;
        v38 = *(v35 - 3);
        v37 = *(v35 - 2);
        v40 = *(v35 - 1);
        v39 = *v35;
        v41 = objc_allocWithZone(v82);
        outlined copy of DOCMetadataKey(v38, v37);
        outlined copy of DOCMetadataKey(v38, v37);
        v42 = DOCMetadataKeyValueRow.init(frame:metadataKey:)(v38, v37, v40, v39, 0.0, 0.0, 0.0, 0.0);
        v43 = [v42 setTranslatesAutoresizingMaskIntoConstraints_];
        v44 = v91;
        v45 = (v84)(v43);
        (*((*MEMORY[0x277D85000] & *v42) + 0x1A8))(v45 & 1);
        v46 = v88;
        swift_beginAccess();
        v47 = v42;
        MEMORY[0x24C1FB090]();
        if (*((*(&v44->isa + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v44->isa + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        if (i)
        {

          outlined consume of DOCMetadataKey(v38, v37);
          v36 = v90;
        }

        else
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v36 = v90;
          if (Strong)
          {
            v49 = Strong;
            (*((*MEMORY[0x277D85000] & *Strong) + 0x1B8))(v38, v37, v40, v39, 0, 0, 0, 0);

            outlined consume of DOCMetadataKey(v38, v37);
          }

          else
          {

            outlined consume of DOCMetadataKey(v38, v37);
          }
        }

        v35 += 4;
        v33 = v36 - 1;
      }

      while (v33);
    }

    result = dispatch_group_create();
    i = result;
    v50 = *(&v91->isa + v88);
    if (v50 >> 62)
    {
      result = __CocoaSet.count.getter();
      v90 = result;
    }

    else
    {
      v90 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v90)
    {
      if (v90 < 1)
      {
        __break(1u);
        return result;
      }

      v84 = v50 & 0xC000000000000001;

      swift_beginAccess();
      v51 = 0;
      v88 = v50;
      do
      {
        if (v84)
        {
          v52 = MEMORY[0x24C1FC540](v51, v50);
        }

        else
        {
          v52 = *(v50 + 8 * v51 + 32);
        }

        v53 = v52;
        ++v51;
        v54 = i;
        dispatch_group_enter(i);
        v55 = *&v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey];
        v56 = *&v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
        v58 = *&v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
        v57 = *&v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
        v59 = v91;
        v60 = [v91 effectiveUserInterfaceLayoutDirection];
        v61 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v62 = v54;
        v63 = v86;

        v64 = v53;
        v65 = v59;
        specialized DOCMetadataKey.value(for:in:layoutDirection:completion:)(v85, v65, v60, v55, v56, v58, v57, v62, v63, v64, v65, aBlock);

        MEMORY[0x24C1FE970](aBlock);
        v50 = v88;
      }

      while (v90 != v51);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v66 = static OS_dispatch_queue.main.getter();
    v67 = swift_allocObject();
    swift_beginAccess();
    v68 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = partial apply for closure #2 in closure #1 in DOCMetadataView.updatedMetadataValues();
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_133;
    v69 = _Block_copy(aBlock);

    v70 = v80;
    static DispatchQoS.unspecified.getter();
    v92 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v71 = v76;
    v72 = v79;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = i;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v69);

    (*(v78 + 8))(v71, v72);
    (*(v75 + 8))(v70, v77);
  }

  return result;
}

void specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, NSObject *a7, unint64_t a8, void *a9, void *a10)
{
  if (a8 >> 62)
  {
LABEL_82:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = a9;
  a9 = (a9 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey);
  if (!v12)
  {
LABEL_58:

    v25 = a3;
    goto LABEL_68;
  }

  v13 = 0;
  while (1)
  {
    if ((a8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v13, a8);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v13 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_82;
      }

      v14 = *(a8 + 8 * v13 + 32);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_57;
      }
    }

    v16 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
    v17 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
    v18 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
    v19 = a9[1];
    v21 = a9[2];
    v20 = a9[3];
    if (v16 > 5)
    {
      break;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (v19 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v16 == 4)
      {
        if (v19 == 4)
        {
          goto LABEL_59;
        }
      }

      else if (v19 == 5)
      {
        goto LABEL_59;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        if (v19 == 1)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_45;
        }

        if (v19 == 2)
        {
          goto LABEL_59;
        }
      }
    }

    else if (!v19)
    {
      goto LABEL_59;
    }

LABEL_6:

    ++v13;
    if (v15 == v12)
    {
      goto LABEL_58;
    }
  }

  if (v16 <= 8)
  {
    if (v16 == 6)
    {
      if (v19 == 6)
      {
        goto LABEL_59;
      }
    }

    else if (v16 == 7)
    {
      if (v19 == 7)
      {
        goto LABEL_59;
      }
    }

    else if (v19 == 8)
    {
      goto LABEL_59;
    }

    goto LABEL_6;
  }

  switch(v16)
  {
    case 9:
      if (v19 == 9)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    case 10:
      if (v19 == 10)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    case 11:
      if (v19 == 11)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
  }

LABEL_45:
  if (v19 < 0xC)
  {
    goto LABEL_6;
  }

  v22 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey] == *a9 && v16 == v19;
  v59 = v14;
  if (!v22)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v59;
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v17 != v21 || v18 != v20)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v59;
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_59:
  v26 = v14;
  v27 = [*(DOCMetadataKeyValueRow.value.getter() + 24) text];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v25 = a3;
    if (v32 && (a6 & 1) != 0)
    {
      v33 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
      v25 = [*(*&v26[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value] + 24) attributedText];
      v34 = *((*MEMORY[0x277D85000] & **(*&v26[v33] + 24)) + 0xE0);

      a4 = v34(v35);
      a5 = v36;

      goto LABEL_69;
    }
  }

  else
  {

    v25 = a3;
  }

LABEL_68:
  v37 = v25;
LABEL_69:
  v38 = *a9;
  v40 = a9[2];
  v39 = a9[3];
  v68 = a9[1];
  if (v68 != 1)
  {
    v45 = v25;
    v46 = v25 == 0;
    v47 = v62;
    v48 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v62) + 0x100))(v46);
    goto LABEL_86;
  }

  v41 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v42 = [v41 isEnabled];

  if (!v42)
  {
    goto LABEL_85;
  }

  v43 = (*((*MEMORY[0x277D85000] & *a10) + 0xC0))();
  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

LABEL_84:

LABEL_85:
    v45 = v25;
    v47 = v62;
    v48 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v62) + 0x100))(1);
    goto LABEL_86;
  }

  v49 = v43;
  v50 = __CocoaSet.count.getter();
  v43 = v49;
  if (!v50)
  {
    goto LABEL_84;
  }

LABEL_73:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x24C1FC540](0);
LABEL_76:

    if ([v44 isFolder] & 1) != 0 || (objc_msgSend(v44, sel_doc_isCollaborationInvitation))
    {
      swift_unknownObjectRelease();
      goto LABEL_85;
    }

    v45 = v25;
    v47 = v62;
    v48 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v62) + 0x100))(0);
    swift_unknownObjectRelease();
LABEL_86:
    (*((*v48 & *v47) + 0x118))(1);
    v51 = DOCMetadataKeyValueRow.label.getter();
    if (a2)
    {
      v52 = a1;
    }

    else
    {
      v52 = 0;
    }

    if (a2)
    {
      v53 = a2;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v54 = MEMORY[0x24C1FAD20](v52, v53);
    v55 = v48;
    v56 = v54;

    [v51 setText_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v58 = Strong;
      (*((*v55 & *Strong) + 0x1B8))(v38, v68, v40, v39, v45, a4, a5, a6 & 1);
    }

    dispatch_group_leave(a7);
  }

  else
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v43 + 32);
      swift_unknownObjectRetain();
      goto LABEL_76;
    }

    __break(1u);
  }
}

void closure #2 in closure #1 in DOCMetadataView.updatedMetadataValues()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1A8))();
    v4 = *((*v2 & *v1) + 0x128);
    v5 = v4(v3);
    if (v5)
    {
      [v5 metadataViewWithDidLoadMetadataValues_];
      v5 = swift_unknownObjectRelease();
    }

    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) == 1)
    {
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) = 0;
      if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing))
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) = 0;
      if (v6 == *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) || *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing))
      {
        goto LABEL_11;
      }
    }

    v7 = v4(v5);
    if (v7)
    {
      [v7 metadataViewDidFinishPreheat_];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_11;
  }
}

id DOCLevelOfDetailButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCMetadataView.__ivar_destroyer()
{

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataViewDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration);
}

id DOCMetadataKeyValueRow.accessibilityElementWithValue.getter()
{
  v0 = *(DOCMetadataKeyValueRow.value.getter() + 24);

  return v0;
}

void specialized DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = *(v2 + 24);
  v20 = v19;
  v5 = v19;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(&v18, 0);

  if (v8)
  {
    if (a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
      v10 = v9;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {

        v5 = v10;
        goto LABEL_9;
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v18 = a2;
  v13 = a2;
  swift_setAtWritableKeyPath();
  v14 = *(v3 + 16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v15 = v5;
  v16 = v14;
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    v5 = v20;
  }

  else
  {
    [v16 invalidateIntrinsicContentSize];

    v5 = v20;
  }

LABEL_9:
}

id key path getter for UILabel.attributedText : UILabel@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributedText];
  *a2 = result;
  return result;
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
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
        type metadata accessor for DOCSearchSuggestion();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
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
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
  v8 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v48 = &v34 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  MEMORY[0x28223BE20](v37, v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v23, v18, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      outlined init with copy of DOCGridLayout.Spec?(v21, v13, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      v24 = static IndexPath.< infix(_:_:)();
      outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      outlined init with take of (key: URL, value: FPItem)(v23, v36, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (key: URL, value: FPItem)(v25, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v47 = &v33 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v16 + 16);
    v45 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v22 = (v19 + v20 * (a3 - 1));
    v40 = -v20;
    v41 = (v16 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v38 = v22;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      v25 = v46;
      v26 = v44;
      (v44)(v46, v24, v8, v17);
      v27 = v47;
      v26(v47, v22, v8);
      v28 = static IndexPath.< infix(_:_:)();
      v29 = *v21;
      (*v21)(v27, v8);
      v29(v25, v8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v22 = &v38[v34];
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v22, v31, v8);
      v22 += v40;
      v24 += v40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = MEMORY[0x277D85000];
LABEL_5:
    v19 = a3;
    v8 = *(v4 + 8 * a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*v7 & *v8) + 0x1B8);
      v11 = v8;
      v12 = v9;
      v13 = v10();
      LOBYTE(v9) = (*((*v7 & *v12) + 0x1B8))();

      if (v13 >= v9)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 8;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v14;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  MEMORY[0x28223BE20](v37, v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v23, v18, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      outlined init with copy of DOCGridLayout.Spec?(v21, v13, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      v24 = static Date.> infix(_:_:)();
      outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      outlined init with take of (key: URL, value: FPItem)(v23, v36, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (key: URL, value: FPItem)(v25, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 menuSortOrder];
      v13 = [v11 menuSortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v51 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v51, v8);
  v58 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v14 = &v45[-v13];
  v46 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v50 = *a4;
    v16 = v50 + 40 * a3;
    v17 = a1 - a3;
LABEL_6:
    v49 = a3;
    v47 = v17;
    v18 = v17;
    v48 = v16;
    v19 = v58;
    while (1)
    {
      v69 = v18;
      outlined init with copy of DOCSidebarItemIconProvider(v16, &v66);
      v60 = v16;
      v59 = (v16 - 40);
      outlined init with copy of DOCSidebarItemIconProvider(v16 - 40, v63);
      v20 = v67;
      v21 = v68;
      v22 = __swift_project_boxed_opaque_existential_1(&v66, v67);
      v23 = *(v21 + 16);
      v54 = v22;
      v57 = v20;
      v56 = v21;
      v55 = v23;
      v23(v20, v21);
      v25 = v64;
      v24 = v65;
      v26 = __swift_project_boxed_opaque_existential_1(v63, v64);
      v27 = *(v24 + 16);
      v52 = v26;
      v53 = v27;
      v27(v25, v24);
      v28 = static Date.< infix(_:_:)();
      v29 = *v15;
      v30 = v19;
      v31 = v51;
      (*v15)(v30, v51);
      v29(v14, v31);
      if (v28)
      {
        __swift_destroy_boxed_opaque_existential_0(v63);
        __swift_destroy_boxed_opaque_existential_0(&v66);
        v19 = v58;
        v32 = v69;
        v33 = v60;
      }

      else
      {
        v55(v57, v56);
        v34 = v58;
        v53(v25, v24);
        v35 = static Date.> infix(_:_:)();
        v29(v34, v31);
        v29(v14, v31);
        if (v35)
        {
          __swift_destroy_boxed_opaque_existential_0(v63);
          __swift_destroy_boxed_opaque_existential_0(&v66);
LABEL_5:
          a3 = v49 + 1;
          v16 = v48 + 40;
          v17 = v47 - 1;
          if (v49 + 1 == v46)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = v67;
        v37 = v68;
        __swift_project_boxed_opaque_existential_1(&v66, v67);
        (*(v37 + 8))(v62, v36, v37);
        v38 = AnyHashable.hashValue.getter();
        outlined destroy of AnyHashable(v62);
        v39 = v64;
        v40 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        (*(v40 + 8))(v61, v39, v40);
        v41 = AnyHashable.hashValue.getter();
        outlined destroy of AnyHashable(v61);
        __swift_destroy_boxed_opaque_existential_0(v63);
        __swift_destroy_boxed_opaque_existential_0(&v66);
        v42 = v38 < v41;
        v19 = v58;
        v32 = v69;
        v33 = v60;
        if (!v42)
        {
          goto LABEL_5;
        }
      }

      if (!v50)
      {
        break;
      }

      outlined init with take of DOCDSCopyEngineConnection(v33, &v66);
      v16 = v59;
      v43 = v59[1];
      *v33 = *v59;
      *(v33 + 16) = v43;
      *(v33 + 32) = *(v16 + 32);
      outlined init with take of DOCDSCopyEngineConnection(&v66, v16);
      v44 = __CFADD__(v32, 1);
      v18 = v32 + 1;
      if (v44)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v144 = &v123 - v17;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        specialized Array.remove(at:)(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x277D84F90];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      LODWORD(v137) = dispatch thunk of static Comparable.< infix(_:_:)();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
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

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        specialized Array.remove(at:)(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v113 = dispatch thunk of static Comparable.< infix(_:_:)();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (__dst != a2 || &a2[4 * v13] <= __dst)
    {
      v32 = __dst;
      memmove(__dst, a2, 32 * v13);
      __dst = v32;
    }

    v15 = &__dst[4 * v13];
    v14 = __dst;
    if (v11 < 32 || v6 <= v7)
    {
      v31 = v6;
      goto LABEL_53;
    }

    v63 = __dst;
    __dstb = v6;
    v60 = v7;
    while (1)
    {
      v33 = 0;
      v34 = v15;
      v61 = __dstb - 4;
      v62 = v5;
      while (1)
      {
        v35 = v34;
        v36 = &v34[v33];
        v37 = &v34[v33 - 4];
        v39 = v34[v33 - 3];
        v38 = v34[v33 - 2];
        v40 = *(v36 - 1);
        v71 = *v37;
        v72 = v39;
        v73 = v38;
        v74 = v40;
        v41 = *(__dstb - 3);
        v42 = *(__dstb - 2);
        v43 = *(__dstb - 1);
        v67 = *(__dstb - 4);
        v68 = v41;
        v69 = v42;
        v70 = v43;

        v44 = v75;
        v45 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v71, &v67, a5);
        v75 = v44;
        if (v44)
        {

          v53 = v63;
          v31 = __dstb;
          v54 = v35 - v63 + v33 * 8;
          v55 = v54 + 31;
          if (v54 >= 0)
          {
            v55 = v35 - v63 + v33 * 8;
          }

          v56 = v55 >> 5;
          if (__dstb < v63 || __dstb >= (v63 + (v55 & 0xFFFFFFFFFFFFFFE0)))
          {
            v52 = 32 * v56;
          }

          else
          {
            if (__dstb == v63)
            {
              goto LABEL_61;
            }

            v52 = 32 * v56;
          }

          goto LABEL_60;
        }

        v46 = v45;

        if (v46)
        {
          break;
        }

        v47 = &v62[v33];
        v34 = v35;
        if (&v62[v33] != v36)
        {
          v48 = *(v37 + 16);
          *(v47 - 2) = *v37;
          *(v47 - 1) = v48;
        }

        v33 -= 4;
        v15 = &v35[v33];
        v14 = v63;
        if (&v35[v33] <= v63)
        {
          v31 = __dstb;
LABEL_53:
          v57 = v15 - v14;
          v58 = v57 + 31;
          if (v57 >= 0)
          {
            v58 = v57;
          }

          if (v31 >= v14 && v31 < (v14 + (v58 & 0xFFFFFFFFFFFFFFE0)) && v31 == v14)
          {
            goto LABEL_61;
          }

          v52 = 32 * (v58 >> 5);
LABEL_59:
          v53 = v14;
LABEL_60:
          memmove(v31, v53, v52);
          goto LABEL_61;
        }
      }

      v5 = &v62[v33 - 4];
      if (&v62[v33] != __dstb)
      {
        v49 = *(__dstb - 1);
        *v5 = *v61;
        *&v62[v33 - 2] = v49;
      }

      v15 = &v35[v33];
      v14 = v63;
      if (&v35[v33] > v63)
      {
        __dstb -= 4;
        if (v61 > v60)
        {
          continue;
        }
      }

      v15 = &v35[v33];
      v31 = v61;
      goto LABEL_53;
    }
  }

  v14 = __dst;
  if (__dst != __src || &__src[4 * v10] <= __dst)
  {
    memmove(__dst, __src, 32 * v10);
  }

  v15 = &v14[4 * v10];
  if (v8 < 32 || v6 >= v5)
  {
LABEL_21:
    v31 = v7;
    goto LABEL_53;
  }

  __dsta = &v14[4 * v10];
  while (1)
  {
    v16 = v5;
    v17 = v7;
    v18 = v6[1];
    v19 = v6[2];
    v20 = v6[3];
    v71 = *v6;
    v72 = v18;
    v73 = v19;
    v74 = v20;
    v21 = v14[1];
    v22 = v14[2];
    v23 = v14[3];
    v67 = *v14;
    v68 = v21;
    v69 = v22;
    v70 = v23;

    v24 = v75;
    v25 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v71, &v67, a5);
    v75 = v24;
    if (v24)
    {
      break;
    }

    v26 = v25;

    if (!v26)
    {
      v27 = v14;
      v28 = v17;
      v29 = v17 == v14;
      v14 += 4;
      v5 = v16;
      if (v29)
      {
        goto LABEL_19;
      }

LABEL_18:
      v30 = *(v27 + 1);
      *v28 = *v27;
      *(v28 + 1) = v30;
      goto LABEL_19;
    }

    v27 = v6;
    v28 = v17;
    v29 = v17 == v6;
    v6 += 4;
    v5 = v16;
    if (!v29)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 = v28 + 4;
    v15 = __dsta;
    if (v14 >= __dsta || v6 >= v5)
    {
      goto LABEL_21;
    }
  }

  v50 = __dsta - v14 + 31;
  if (__dsta - v14 >= 0)
  {
    v50 = __dsta - v14;
  }

  v51 = v50 >> 5;
  if (v7 < v14 || v7 >= (v14 + (v50 & 0xFFFFFFFFFFFFFFE0)))
  {
    v52 = 32 * v51;
    v31 = v7;
    v53 = v14;
    goto LABEL_60;
  }

  if (v7 != v14)
  {
    v52 = 32 * v51;
    v31 = v7;
    goto LABEL_59;
  }

LABEL_61:

  return 1;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for Date();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          LOBYTE(v36) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        LOBYTE(v23) = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54);
}

{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  MEMORY[0x28223BE20](v45, v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = a4 + v18;
      v41 = a4;
      v42 = -v14;
      v40 = a1;
      do
      {
        v38 = v26;
        v27 = a2;
        v28 = a2 + v24;
        v43 = v27;
        while (1)
        {
          v30 = v46;
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v38;
            goto LABEL_60;
          }

          v39 = v26;
          v46 += v24;
          v31 = v25 + v24;
          outlined init with copy of DOCGridLayout.Spec?(v31, v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v44;
          outlined init with copy of DOCGridLayout.Spec?(v33, v44, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          v36 = static IndexPath.< infix(_:_:)();
          v37 = v35;
          v12 = v34;
          outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v46 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
            a1 = v40;
          }

          else
          {
            v28 = v32;
            a1 = v40;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v42;
          v27 = v43;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_59;
          }
        }

        if (v30 < v43 || v46 >= v43)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v24 = v42;
        }

        else
        {
          v26 = v39;
          a1 = v40;
          a2 = v32;
          v24 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_59:
    v49 = a2;
    v47 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < v46)
    {
      v42 = v14;
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(a2, v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        v20 = v44;
        outlined init with copy of DOCGridLayout.Spec?(a4, v44, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        v21 = static IndexPath.< infix(_:_:)();
        outlined destroy of CharacterSet?(v20, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        if (v21)
        {
          v22 = a2 + v14;
          if (a1 < a2 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v22;
        }

        else
        {
          v23 = a4 + v14;
          if (a1 < a4 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v23;
          a4 = v23;
        }

        v14 = v42;
        a1 += v42;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v46);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
}

{
  v58 = type metadata accessor for IndexPath();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v9);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = static IndexPath.< infix(_:_:)();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = static IndexPath.< infix(_:_:)();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v61, &v60, &v59, MEMORY[0x277CC9AF8]);
}

{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  MEMORY[0x28223BE20](v45, v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = a4 + v18;
      v41 = a4;
      v42 = -v14;
      v40 = a1;
      do
      {
        v38 = v26;
        v27 = a2;
        v28 = a2 + v24;
        v43 = v27;
        while (1)
        {
          v30 = v46;
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v38;
            goto LABEL_60;
          }

          v39 = v26;
          v46 += v24;
          v31 = v25 + v24;
          outlined init with copy of DOCGridLayout.Spec?(v31, v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v44;
          outlined init with copy of DOCGridLayout.Spec?(v33, v44, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
          v36 = static Date.> infix(_:_:)();
          v37 = v35;
          v12 = v34;
          outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
          outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v46 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
            a1 = v40;
          }

          else
          {
            v28 = v32;
            a1 = v40;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v42;
          v27 = v43;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_59;
          }
        }

        if (v30 < v43 || v46 >= v43)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v24 = v42;
        }

        else
        {
          v26 = v39;
          a1 = v40;
          a2 = v32;
          v24 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_59:
    v49 = a2;
    v47 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < v46)
    {
      v42 = v14;
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(a2, v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
        v20 = v44;
        outlined init with copy of DOCGridLayout.Spec?(a4, v44, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
        v21 = static Date.> infix(_:_:)();
        outlined destroy of CharacterSet?(v20, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
        outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
        if (v21)
        {
          v22 = a2 + v14;
          if (a1 < a2 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v22;
        }

        else
        {
          v23 = a4 + v14;
          if (a1 < a4 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v23;
          a4 = v23;
        }

        v14 = v42;
        a1 += v42;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v46);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47);
}

uint64_t specialized static DOCMetadataKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a6 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a6 == 7)
        {
          return 1;
        }
      }

      else if (a6 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a6 == 9;
      case 10:
        return a6 == 10;
      case 11:
        return a6 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a6 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a6 == 4)
        {
          return 1;
        }
      }

      else if (a6 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a6;
      case 1:
        return a6 == 1;
      case 2:
        return a6 == 2;
    }
  }

  if (a6 < 0xC)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6 || (v10 = a3, v11 = a4, v12 = a8, v13 = a7, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v10, a4 = v11, a7 = v13, a8 = v12, v15 = v14, result = 0, (v15 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t outlined copy of DOCMetadataKey(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t outlined consume of DOCMetadataKey(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

id partial apply for closure #1 in DOCMetadataView.updateArrangedViews()()
{
  v1 = *(v0 + 16);
  DOCMetadataView._reloadArrangedViews()();

  return [v1 layoutBelowIfNeeded];
}

void specialized static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a2;
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v66[-v12];
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v66[-v16];
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v66[-v20];
  MEMORY[0x28223BE20](v22, v23);
  v74 = &v66[-v24];
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_8:
    v33 = swift_allocObject();
    v33[2] = v76;
    v33[3] = a4;
    v33[4] = a1;
    v33[5] = 0;
    v33[6] = 0;
    v33[7] = 0;
    swift_bridgeObjectRetain_n();

    DOCRunInMainThread(_:)();

LABEL_9:

    return;
  }

  v72 = v25;
  v73 = v26;
  v71 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v31 = [v30 providerDomainID];
  v32 = DOCProviderDomainIDIsSharedServerDomainID();

  if (v32)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v34 = swift_allocObject();
  v36 = v75;
  v35 = v76;
  v34[2] = v30;
  v34[3] = v36;
  v34[4] = a1;
  v34[5] = v35;
  v34[6] = a4;
  swift_unknownObjectRetain();

  v37 = [v30 nodeURL];
  if (!v37)
  {
    DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(0, partial apply for closure #1 in static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:), v34);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v38 = v37;
  v68 = v34;
  v39 = v29;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v73;
  v40 = v74;
  v42 = *(v73 + 16);
  v69 = v39;
  v43 = v39;
  v44 = v72;
  v42(v74, v43, v72);
  (*(v41 + 56))(v40, 0, 1, v44);
  outlined init with copy of DOCGridLayout.Spec?(v40, v21, &_s10Foundation3URLVSgMd);
  v70 = *(v41 + 48);
  if (v70(v21, 1, v44) == 1)
  {
    outlined destroy of CharacterSet?(v21, &_s10Foundation3URLVSgMd);
    v67 = 0;
  }

  else
  {
    v67 = URL.startAccessingSecurityScopedResource()();
    (*(v41 + 8))(v21, v44);
  }

  outlined init with copy of DOCGridLayout.Spec?(v40, v17, &_s10Foundation3URLVSgMd);
  v45 = v70(v17, 1, v44);
  swift_unknownObjectRetain();
  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v46);
    v47 = v48;
    (*(v73 + 8))(v17, v44);
  }

  v49 = [objc_opt_self() pdfMetadataProviderWithNode:v30 levelOfDetail:v75 URL:v47];
  swift_unknownObjectRelease();

  outlined init with copy of DOCGridLayout.Spec?(v40, v13, &_s10Foundation3URLVSgMd);
  v50 = v70(v13, 1, v44);
  swift_unknownObjectRetain();
  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v51);
    v52 = v53;
    (*(v73 + 8))(v13, v44);
  }

  v54 = objc_opt_self();
  v55 = v75;
  v56 = [v54 imageMetadataProviderWithNode:v30 levelOfDetail:v75 URL:v52];
  swift_unknownObjectRelease();

  v57 = specialized static DOCMediaMetadataProvider.mediaMetadataProvider(with:levelOfDetail:url:)(v30, v55, v40);
  v58 = swift_allocObject();
  v58[2] = v76;
  v58[3] = a4;
  v58[4] = a1;
  v58[5] = v49;
  v58[6] = v56;
  v58[7] = v57;
  swift_retain_n();

  swift_bridgeObjectRetain_n();
  v59 = v49;
  v60 = v56;
  v61 = v59;
  v62 = v60;
  DOCRunInMainThread(_:)();

  if (v67)
  {
    v63 = v71;
    outlined init with copy of DOCGridLayout.Spec?(v40, v71, &_s10Foundation3URLVSgMd);
    v64 = v72;
    if (v70(v63, 1, v72) == 1)
    {

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd);
      (*(v73 + 8))(v69, v64);
      outlined destroy of CharacterSet?(v63, &_s10Foundation3URLVSgMd);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd);
      v65 = *(v73 + 8);
      v65(v69, v64);
      v65(v63, v64);
    }
  }

  else
  {

    swift_unknownObjectRelease();

    outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd);
    (*(v73 + 8))(v69, v72);
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v21 = v8 + 1;
    }

    else
    {
      v127 = v7;
      v10 = *a3;
      v11 = (*a3 + 32 * (v8 + 1));
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[3];
      v136 = *v11;
      v137 = v12;
      v138 = v13;
      v139 = v14;
      v15 = (v10 + 32 * v8);
      v16 = v15[1];
      v17 = v15[2];
      v18 = v15[3];
      v132 = *v15;
      v133 = v16;
      v134 = v17;
      v135 = v18;

      LODWORD(__dst) = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v136, &v132, a5);
      if (v6)
      {
        swift_bridgeObjectRelease_n();
      }

      v19 = v8 + 2;
      v121 = v8;
      v123 = 32 * v8;
      v20 = (v10 + 32 * v8 + 48);
      while (1)
      {
        v21 = v127;
        if (v127 == v19)
        {
          break;
        }

        v22 = v20[3];
        v23 = v20[4];
        v24 = v20[5];
        v136 = v20[2];
        v137 = v22;
        v138 = v23;
        v139 = v24;
        v25 = *(v20 - 1);
        v26 = *v20;
        v27 = v20[1];
        v132 = *(v20 - 2);
        v133 = v25;
        v134 = v26;
        v135 = v27;

        v28 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v136, &v132, a5);

        ++v19;
        v20 += 4;
        if ((__dst ^ v28))
        {
          v21 = v19 - 1;
          break;
        }
      }

      v8 = v121;
      if (__dst)
      {
        if (v21 < v121)
        {
          goto LABEL_125;
        }

        if (v121 < v21)
        {
          v29 = 32 * v21 - 16;
          v30 = v123 + 24;
          v31 = v21;
          v32 = v121;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v34 = (v33 + v30);
              v35 = (v33 + v29);
              v36 = *(v34 - 3);
              v37 = *(v34 - 1);
              v38 = *v34;
              v39 = *v35;
              *(v34 - 3) = *(v35 - 1);
              *(v34 - 1) = v39;
              *(v35 - 1) = v36;
              *v35 = v37;
              *(v35 + 1) = v38;
            }

            ++v32;
            v29 -= 32;
            v30 += 32;
          }

          while (v32 < v31);
        }
      }
    }

    v40 = a3[1];
    if (v21 >= v40)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v21, v8))
    {
      goto LABEL_121;
    }

    if (v21 - v8 >= a4)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v40)
    {
      v41 = a3[1];
    }

    else
    {
      v41 = v8 + a4;
    }

    if (v41 < v8)
    {
      goto LABEL_124;
    }

    if (v21 == v41)
    {
LABEL_28:
      v42 = v21;
      if (v21 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      __dst = v6;
      v93 = *a3;
      v94 = (*a3 + 32 * v21 - 32);
      v122 = v8;
      v125 = v41;
      v95 = v8 - v21;
      do
      {
        v128 = v21;
        v96 = (v93 + 32 * v21);
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = v96[3];
        v118 = v95;
        v119 = v94;
        v101 = v95;
        do
        {
          v136 = v97;
          v137 = v98;
          v138 = v99;
          v139 = v100;
          v102 = v94[1];
          v103 = v94[2];
          v104 = v94[3];
          v132 = *v94;
          v133 = v102;
          v134 = v103;
          v135 = v104;

          v105 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v136, &v132, a5);
          if (__dst)
          {
            swift_bridgeObjectRelease_n();
          }

          v106 = v105;

          if (!v106)
          {
            break;
          }

          if (!v93)
          {
            goto LABEL_127;
          }

          v97 = v94[4];
          v98 = v94[5];
          v99 = v94[6];
          v100 = v94[7];
          v107 = *(v94 + 1);
          *(v94 + 2) = *v94;
          *(v94 + 3) = v107;
          *v94 = v97;
          v94[1] = v98;
          v94[2] = v99;
          v94[3] = v100;
          v94 -= 4;
        }

        while (!__CFADD__(v101++, 1));
        v21 = v128 + 1;
        v94 = v119 + 4;
        v95 = v118 - 1;
        v42 = v125;
      }

      while (v128 + 1 != v125);
      v8 = v122;
      v6 = 0;
      if (v125 < v122)
      {
        goto LABEL_120;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v44 = *(v9 + 2);
    v43 = *(v9 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v9);
    }

    *(v9 + 2) = v45;
    v46 = &v9[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v42;
    v124 = v42;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v44)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v124;
    if (v124 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v47 = v45 - 1;
    if (v45 >= 4)
    {
      v52 = &v9[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_107;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_108;
      }

      v59 = &v9[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_110;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_113;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_119;
        }

        if (v50 < v84)
        {
          v47 = v45 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v45 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_48:
      if (v51)
      {
        goto LABEL_109;
      }

      v64 = &v9[16 * v45];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_112;
      }

      v70 = &v9[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_116;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v45 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v74 = &v9[16 * v45];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_62:
    if (v69)
    {
      goto LABEL_111;
    }

    v77 = &v9[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_114;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_69:
    v85 = v47 - 1;
    if (v47 - 1 >= v45)
    {
      break;
    }

    v86 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v87 = *&v9[16 * v85 + 32];
    v88 = *&v9[16 * v47 + 40];
    v89 = (v86 + 32 * v87);
    v90 = (v86 + 32 * *&v9[16 * v47 + 32]);
    v91 = (v86 + 32 * v88);

    specialized _merge<A>(low:mid:high:buffer:by:)(v89, v90, v91, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v88 < v87)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v85 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v92 = &v9[16 * v85];
    *(v92 + 4) = v87;
    *(v92 + 5) = v88;
    v140 = v9;
    specialized Array.remove(at:)(v47);
    v9 = v140;
    v45 = *(v140 + 2);
    if (v45 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
LABEL_91:
  v140 = v9;
  v109 = *(v9 + 2);
  if (v109 < 2)
  {
LABEL_99:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v110 = *a3;
      if (!*a3)
      {
        break;
      }

      v111 = *&v9[16 * v109];
      v112 = *&v9[16 * v109 + 24];
      v113 = (v110 + 32 * v111);
      v114 = (v110 + 32 * *&v9[16 * v109 + 16]);
      v115 = (v110 + 32 * v112);

      specialized _merge<A>(low:mid:high:buffer:by:)(v113, v114, v115, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v112 < v111)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v109 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v116 = &v9[16 * v109];
      *v116 = v111;
      *(v116 + 1) = v112;
      v140 = v9;
      specialized Array.remove(at:)(v109 - 1);
      v9 = v140;
      v109 = *(v140 + 2);
      if (v109 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}