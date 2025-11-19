Swift::Void __swiftcall DOCItemCollectionListCell.updateLabelsForDimming()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x3A8))() & 1) == 0)
  {
    v3 = (*((*v2 & *v0) + 0x208))();
    if (v3)
    {
      v12 = v3;
      v4 = (*((*v2 & *v3) + 0x910))();
      v5 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
      if (v4)
      {
        if (v5)
        {
          v6 = v5;
          [v5 setAlpha_];
        }

        v7 = 0.35;
        v8 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView) setAlpha_];
      }

      else
      {
        if (v5)
        {
          v9 = v5;
          [v5 setAlpha_];
        }

        v7 = 1.0;
        v8 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView) setAlpha_];
      }

      v10 = (*((*v2 & *v1) + 0x2A8))(v8);
      if (v10)
      {
        v11 = v10;
        [v10 setAlpha_];
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionListCell.updateHorizontalProgressViewIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v84 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v92 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v90 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v88 = v84 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v89 = v84 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v91 = v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = v84 - v21;
  v23 = MEMORY[0x277D85000];
  v24 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v25 = v24(v20);
  if (v25)
  {
    v26 = v25;
    v87 = v5;
    if (os_variant_has_internal_content() && (v27 = [objc_opt_self() standardUserDefaults], v28 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v29 = objc_msgSend(v27, sel_BOOLForKey_, v28), v27, v28, v23 = MEMORY[0x277D85000], (v29 & 1) != 0) || (v30 = (v24)()) != 0 && (v31 = v30, v32 = (*((*v23 & *v30) + 0x8F0))(), v31, (v32 & 1) != 0))
    {
      v33 = (*((*v23 & *v1) + 0x2A8))();
      if (v33)
      {

LABEL_21:
        v81 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
        v82 = (*((*v23 & *v26) + 0x568))();
        [v81 setObservedProgress_];

        v26 = v82;
LABEL_22:

        return;
      }

      (*((*v23 & *v26) + 0x2F0))(v93);
      v95 = v93[4];
      v96 = v93[5];
      v97 = v93[6];
      v98 = v93[7];
      v94[0] = v93[0];
      v94[1] = v93[1];
      v94[2] = v93[2];
      v94[3] = v93[3];
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v94) != 1)
      {
        v86 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        v46 = *(&v95 + 1);
        outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        v47 = objc_opt_self();

        v48 = v91;
        static UIButton.Configuration.borderless()();
        v49 = objc_opt_self();
        v50 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
        v51 = [v49 __systemImageNamedSwift_];

        UIButton.Configuration.image.setter();
        v52 = objc_opt_self();
        v85 = v46;
        v53 = [v52 configurationWithTextStyle_];
        UIButton.Configuration.preferredSymbolConfigurationForImage.setter();

        v84[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
        v54 = v92[2];
        v55 = v89;
        v54(v89, v48, v6);
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54(v88, v55, v6);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        v57 = swift_allocObject();
        *(v57 + 16) = partial apply for closure #2 in DOCItemCollectionListCell.createHorizontalStopButton(imageFontStyle:);
        *(v57 + 24) = v56;
        swift_retain_n();
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v58 = UIButton.init(configuration:primaryAction:)();

        v59 = (v92 + 1);
        v60 = v92[1];
        v60(v55, v6);

        v61 = v58;
        [v61 setTranslatesAutoresizingMaskIntoConstraints_];
        v62 = *((*v23 & *v1) + 0x2B0);
        v63 = v61;
        v62(v61);
        v64 = v91;
        v91 = v60;
        v89 = v59;
        v60(v64, v6);
        v65 = v87;
        UIButton.configuration.getter();
        v66 = v92;
        v67 = v6;
        v68 = v92[6];
        if (v68(v65, 1, v67) == 1)
        {
          v69 = v90;
          static UIButton.Configuration.plain()();
          v70 = v69;
          if (v68(v65, 1, v67) != 1)
          {
            outlined destroy of CharacterSet?(v65, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
          }
        }

        else
        {
          v70 = v90;
          (v66[4])(v90, v65, v67);
        }

        UIButton.Configuration.contentInsets.getter();
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v78 = v77;
        (v91)(v70, v67);
        v79 = [v63 widthAnchor];
        DOCItemCollectionListCell.addStatusSizeMatchingDimension(_:combinedMargin:)(v79, v74 + v78);

        v80 = [v63 heightAnchor];
        DOCItemCollectionListCell.addStatusSizeMatchingDimension(_:combinedMargin:)(v80, v72 + v76);

        DOCItemCollectionListCell.updateStatusViewAndStopButton()();
        v23 = MEMORY[0x277D85000];
        goto LABEL_21;
      }

LABEL_26:
      __break(1u);
      return;
    }

    v34 = v23;
    v35 = *((*v23 & *v1) + 0x2A8);
    v36 = v35();
    if (!v36)
    {
LABEL_12:
      v42 = v35();
      if (v42)
      {
        v43 = v42;
        [v42 removeFromSuperview];
      }

      (*((*v34 & *v1) + 0x2B0))(0);
      v44 = type metadata accessor for UICellAccessory();
      (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
      v45 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory;
      swift_beginAccess();
      outlined assign with copy of UICellAccessory?(v22, v1 + v45);
      swift_endAccess();
      DOCItemCollectionListCell.updateAccessories()();
      outlined destroy of CharacterSet?(v22, &_s5UIKit15UICellAccessoryVSgMd);
      [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress) setHidden_];
      goto LABEL_22;
    }

    v37 = v36;
    v38 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
    swift_beginAccess();
    v39 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + v38), v37);
    v40 = *(v1 + v38);
    if (v40 >> 62)
    {
      v83 = v39;
      v41 = __CocoaSet.count.getter();
      v39 = v83;
      if (v41 >= v83)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41 >= v39)
      {
LABEL_11:
        specialized Array.replaceSubrange<A>(_:with:)(v39, v41);
        swift_endAccess();

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_26;
  }
}

void closure #2 in DOCItemCollectionListCell.createHorizontalStopButton(imageFontStyle:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x2C0))();
  }
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateContents()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  v4 = *((*v2 & *v0) + 0x208);
  v5 = (v4)(v3);
  if (!v5)
  {
    return;
  }

  v74 = v5;
  (*((*v2 & *v5) + 0xAA0))(&v76);
  v6 = v76;
  v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
  v75 = v76;
  (*((*v2 & *v7) + 0xD0))(&v75);
  v8 = v6 == 1 && ((*((*v2 & *v74) + 0x800))() & 1) == 0;
  (*((*v2 & *v7) + 0x170))(v8);
  DOCItemCollectionListCell.updateTitleAndSubtitle()();
  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView);
  (*((*v2 & *v74) + 0x7E0))();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setTags_];

  v11 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel);
  v12 = [v11 text];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *((*v2 & *v74) + 0x738);
  v18 = v17();
  if (!v16)
  {

    goto LABEL_18;
  }

  if (v14 == v18 && v16 == v19)
  {

    goto LABEL_20;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
LABEL_18:
    v23 = (v17)(v22);
    v24 = MEMORY[0x24C1FAD20](v23);

    [v11 setText_];
  }

LABEL_20:
  v25 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel);
  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = *((*v2 & *v74) + 0x758);
  v32 = v31();
  if (!v30)
  {

    goto LABEL_31;
  }

  if (v28 == v32 && v30 == v33)
  {

    goto LABEL_33;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v35 & 1) == 0)
  {
LABEL_31:
    v37 = (v31)(v36);
    v38 = MEMORY[0x24C1FAD20](v37);

    [v25 setText_];
  }

LABEL_33:
  v39 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);
  v40 = [v39 text];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = *((*v2 & *v74) + 0x778);
  v46 = v45();
  if (!v44)
  {

LABEL_42:
    v50 = (v45)(v48);
    v51 = MEMORY[0x24C1FAD20](v50);

    [v39 setText_];

    goto LABEL_43;
  }

  if (v42 == v46 && v44 == v47)
  {

    goto LABEL_43;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v49 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  DOCItemCollectionListCell.updateAccessories()();
  v52 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailContainerView);
  v53 = *((*v2 & *v74) + 0x460);
  v54 = v53();
  if (v54 == 2)
  {
    __break(1u);
    goto LABEL_65;
  }

  v55 = (*((*v2 & *v52) + 0xB8))(v54 & 1);
  v56 = (v53)(v55);
  if (v56 == 2)
  {
LABEL_65:
    __break(1u);
    return;
  }

  if (v56)
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setAddDecoration_];
  }

  v57 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
  if (os_variant_has_internal_content() && (v58 = [objc_opt_self() standardUserDefaults], v59 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v60 = objc_msgSend(v58, sel_BOOLForKey_, v59), v58, v59, (v60 & 1) != 0))
  {
    v61 = 0;
  }

  else
  {
    v62 = v4();
    if (v62)
    {
      v63 = v62;
      v64 = (*((*v2 & *v62) + 0x8F0))();

      v61 = v64 ^ 1;
    }

    else
    {
      v61 = 1;
    }
  }

  v65 = (*((*v2 & *v1) + 0x2A8))([v57 setHidden_]);
  if (v65)
  {
    v66 = v65;
    if (os_variant_has_internal_content() && (v67 = [objc_opt_self() standardUserDefaults], v68 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v69 = objc_msgSend(v67, sel_BOOLForKey_, v68), v67, v68, (v69 & 1) != 0))
    {
      v70 = 0;
    }

    else
    {
      v71 = v4();
      if (v71)
      {
        v72 = v71;
        v73 = (*((*v2 & *v71) + 0x8F0))();

        v70 = v73 ^ 1;
      }

      else
      {
        v70 = 1;
      }
    }

    [v66 setHidden_];
  }

  DOCItemCollectionListCell.updateLayoutMetrics()();
  (*((*v2 & *v1) + 0x700))();
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateTraits()()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [v0 traitCollection];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v42 = static UITraitCollection.Traits.hSizeClass;
  v43 = qword_27EEE9C60;
  if (UITraitCollection.doc_hasSpecified(_:)(&v42))
  {

    v8 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v41 = v3;
    v11 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel);
    v12 = [v11 text];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v20 = *((*v8 & *v10) + 0x738);
    v21 = v20();
    if (v16)
    {
      if (v14 == v21 && v16 == v22)
      {

        goto LABEL_21;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
LABEL_21:
        DOCItemCollectionListCell.updateTitleAndSubtitle()();
        v28 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView);
        v29 = MEMORY[0x277D85000];
        v30 = (*((*MEMORY[0x277D85000] & *v10) + 0x368))();
        if (!v30 || (v31 = v30, v32 = [v30 horizontalSizeClass], v31, v33 = 1.5, v32 != 1))
        {
          v33 = 2.0;
        }

        [v28 setKnockOutBorderWidth_];
        DOCItemCollectionListCell.updateLayoutMetrics()();
        v34 = (*((*v29 & *v1) + 0x530))();
        v35 = v34;
        v36 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_previousStatusViewLocation;
        v37 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_previousStatusViewLocation);
        if (v37 == 2 || ((v37 ^ v34) & 1) != 0)
        {
          DOCItemCollectionListCell.updateStatusViewAndStopButton()();
          *(v1 + v36) = v35 & 1;
        }

        v38 = [v1 _bridgedConfigurationState];
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
        (*(v41 + 1))(v7, v2);
        [v1 _bridgedUpdateConfigurationUsingState_];

        return;
      }
    }

    else
    {
    }

    v26 = (v20)(v25);
    v27 = MEMORY[0x24C1FAD20](v26);

    [v11 setText_];

    goto LABEL_21;
  }

  v17 = [objc_opt_self() standardUserDefaults];
  v18 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
  [v17 BOOLForKey_];

  v19 = v41;
}

void DOCItemCollectionListCell.effectiveAppearanceDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for DOCItemCollectionListCell(0);
  v22.receiver = v1;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, sel_effectiveAppearanceDidChange_, a1);
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x2F8))(v14))
  {
    MEMORY[0x24C1FBB30]();
    v15 = type metadata accessor for UIBackgroundConfiguration();
    v16 = 0;
    if (!(*(*(v15 - 8) + 48))(v12, 1, v15))
    {
      v16 = UIBackgroundConfiguration.backgroundColor.getter();
    }

    outlined destroy of CharacterSet?(v12, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    v17 = [a1 backgroundColor];
    v18 = v17;
    if (v16)
    {
      if (v17)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          return;
        }

LABEL_12:
        v20 = [v2 _bridgedConfigurationState];
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
        (*(v5 + 8))(v8, v4);
        [v2 _bridgedUpdateConfigurationUsingState_];

        return;
      }

      v18 = v16;
LABEL_11:

      goto LABEL_12;
    }

    if (v17)
    {
      goto LABEL_11;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionListCell.updateForChangedContentSizeCategory()()
{
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel) invalidateIntrinsicContentSize];
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel);

  [v1 invalidateIntrinsicContentSize];
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateLoadingProgress()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  v4 = *((*v2 & *v0) + 0x208);
  v5 = (v4)(v3);
  if (v5)
  {
    v25 = v5;
    DOCItemCollectionListCell.updateAccessories()();
    if (os_variant_has_internal_content() && (v6 = [objc_opt_self() standardUserDefaults], v7 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v8 = objc_msgSend(v6, sel_BOOLForKey_, v7), v6, v7, (v8 & 1) != 0) || (v9 = v4()) != 0 && (v10 = v9, v11 = (*((*v2 & *v9) + 0x8F0))(), v10, (v11 & 1) != 0))
    {
      v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
      v13 = (*((*v2 & *v25) + 0x568))();
      [v12 setObservedProgress_];
    }

    if (((*((*v2 & *v25) + 0x8D0))() & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
    v15 = (*((*v2 & *v25) + 0x568))();
    (*((*v2 & *v14) + 0x1C8))(v15);
    if ((*((*v2 & *v25) + 0x580))() & 1) != 0 && ((v16 = *((*v2 & *v25) + 0x3D0), (v17 = v16()) != 0) && (v18 = [v17 isDownloading], swift_unknownObjectRelease(), (v18) || (v19 = v16()) != 0 && (v20 = objc_msgSend(v19, sel_isExternalDownloadPlaceholder), swift_unknownObjectRelease(), (v20)))
    {
      v21 = 1;
    }

    else
    {
      v21 = (*((*v2 & *v25) + 0x3D0))();
      if (v21)
      {
        v22 = [v21 isCopying];
        swift_unknownObjectRelease();
        v21 = v22;
      }
    }

    v23 = *((*v2 & *v14) + 0xB8);
    v23(v21);
    if ((*((*v2 & *v25) + 0x3D0))() && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v26), swift_unknownObjectRelease(), v26[0] != 1))
    {
      outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      v23(1);
    }

    else
    {
LABEL_18:
    }
  }
}

uint64_t DOCItemCollectionListCell.didUpdateIsSelectable()()
{
  DOCItemCollectionListCell.updateTitleAndSubtitle()();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x700);

  return v1();
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateLayout()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    v5 = *((*v2 & *v3) + 0x2F0);
    v5(v80);
    v85 = v80[4];
    v86 = v80[5];
    v87 = v80[6];
    v88 = v80[7];
    v81 = v80[0];
    v82 = v80[1];
    v83 = v80[2];
    v84 = v80[3];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v81) == 1)
    {
LABEL_38:

      return;
    }

    v60 = v5;
    v6 = *(&v81 + 1);
    v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
    v8 = v81;
    v9 = v6;
    v62 = v7;
    v10 = [v7 font];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
      v12 = v8;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
LABEL_8:
        v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel);
        v16 = [v15 font];
        if (v16)
        {
          v17 = v16;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
          v18 = v9;
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = v9;
        }

        [v15 setFont_];
LABEL_13:
        v57 = v15;

        v21 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel);
        v22 = [v21 font];
        v61 = v21;
        if (!v22 || (v23 = v22, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v24 = v8, v25 = static NSObject.== infix(_:_:)(), v23, v24, v21 = v61, (v25 & 1) == 0))
        {
          [v21 setFont_];
        }

        v58 = v9;
        v26 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel);
        v27 = [v26 font];
        if (!v27 || (v28 = v27, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v29 = v8, v30 = static NSObject.== infix(_:_:)(), v28, v29, (v30 & 1) == 0))
        {
          [v26 setFont_];
        }

        v59 = v26;
        v31 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);
        v32 = [v31 font];
        if (!v32 || (v33 = v32, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v34 = v8, v35 = static NSObject.== infix(_:_:)(), v33, v34, (v35 & 1) == 0))
        {
          [v31 setFont_];
        }

        (*((*v2 & *v4) + 0x3E8))(&v72);
        if (*(&v72 + 1))
        {
          v36 = v72;
        }

        else
        {
          v36 = 10;
        }

        outlined consume of DOCItemSortDescriptor?(v72, *(&v72 + 1));
        v37 = v82;
        LOBYTE(v72) = v36;
        v38 = DOCItemCollectionRowStyle.columns(with:)(&v72, v82);
        v39 = specialized Sequence<>.contains(_:)(2u, v38);

        LOBYTE(v72) = v36;
        v40 = DOCItemCollectionRowStyle.columns(with:)(&v72, v37);
        v41 = specialized Sequence<>.contains(_:)(1u, v40);

        LOBYTE(v72) = v36;
        v42 = DOCItemCollectionRowStyle.columns(with:)(&v72, v37);
        v43 = specialized Sequence<>.contains(_:)(3u, v42);

        v44 = [v61 layer];
        v45 = [v44 isHidden];

        if (((v39 ^ v45) & 1) == 0)
        {
          [v61 setHidden_];
        }

        v46 = [v59 layer];
        v47 = [v46 isHidden];

        if (((v41 ^ v47) & 1) == 0)
        {
          [v59 setHidden_];
        }

        v48 = [v31 layer];
        v49 = [v48 isHidden];

        if (((v43 ^ v49) & 1) == 0)
        {
          [v31 setHidden_];
        }

        DOCItemCollectionListCell.updateTitleAndSubtitle()();
        DOCItemCollectionListCell.updateAccessories()();
        v60(v71);
        v76 = v71[4];
        v77 = v71[5];
        v78 = v71[6];
        v79 = v71[7];
        v72 = v71[0];
        v73 = v71[1];
        v74 = v71[2];
        v75 = v71[3];
        v50 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v72);
        v51 = MEMORY[0x277D85000];
        if (v50 == 1)
        {
          __break(1u);
        }

        else
        {
          v52 = outlined destroy of CharacterSet?(v71, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
          v53 = *(&v73 + 1);
          (v60)(v63, v52);
          v67 = v63[4];
          v68 = v63[5];
          v69 = v63[6];
          v70 = v63[7];
          v64[0] = v63[0];
          v64[1] = v63[1];
          v65 = v63[2];
          v66 = v63[3];
          if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v64) != 1)
          {
            outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
            v54 = v65;
            if ([v62 numberOfLines] != v53)
            {
              [v62 setNumberOfLines_];
            }

            v55 = [v57 numberOfLines];
            if (v55 != v54)
            {
              v55 = [v57 setNumberOfLines_];
            }

            v56 = (*((*v51 & *v1) + 0x288))(v55);
            (*((*v51 & *v1) + 0x290))(v56);

            outlined destroy of CharacterSet?(v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
            goto LABEL_38;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v8;
    }

    [v7 setFont_];
    goto LABEL_8;
  }
}

CGSize __swiftcall DOCItemCollectionListCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  height = _.height;
  width = _.width;
  v6 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x208))(__PAIR128__(v7, *&_.width), __PAIR128__(v8, *&_.height), *&withHorizontalFittingPriority.rawValue, *&verticalFittingPriority.rawValue);
  if (v9)
  {
    v10 = v9;
    height = (*((*v6 & *v9) + 0x308))();
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateStackMetrics()()
{
  v1 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v10)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateConstraint);
  v3 = *((*v1 & *v10) + 0x520);
  v3(v11);
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v2 setConstant_];
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeConstraint);
  (v3)(v11, v4);
  if (v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = [v5 setConstant_];
  v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindConstraint);
  (v3)(v11, v6);
  if (v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = [v7 setConstant_];
  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView);
  (v3)(v11, v8);
  if (v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v9 setTagDimension_];
  DOCItemCollectionListCell.updateLayoutMetrics()();
}

Swift::Void __swiftcall DOCItemCollectionListCell.didUpdateThumbnail()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v2)
  {
    return;
  }

  v10 = v2;
  v3 = (*((*v1 & *v2) + 0xA80))();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    v5 = *((*v1 & *v10) + 0x940);
    v6 = v3;
    v7 = swift_unknownObjectRetain();
    [v4 updateImage:v6 addDecoration:v5(v7) & 1];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = (*((*v1 & *v10) + 0x460))();
    if (v8 == 2)
    {
      __break(1u);
      return;
    }

    v9 = v10;
    if (v8)
    {
      goto LABEL_9;
    }

    [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setThumbnail_];
  }

  v9 = v10;
LABEL_9:
}

Swift::Void __swiftcall DOCItemCollectionListCell.updateItemStatusConstraints()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x180))())
  {
    v2 = (*((*v1 & *v0) + 0x208))();
    if (v2)
    {
      v3 = v2;
      v4 = (*((*v1 & *v0) + 0x118))();
      if (v4)
      {
        v5 = v4;
        (*((*v1 & *v3) + 0x2F0))(&v14);
        *&v24[32] = v18;
        v25 = v19;
        v26 = v20;
        v27 = v21;
        v22 = v14;
        v23 = v15;
        *v24 = v16;
        *&v24[16] = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) == 1)
        {
          goto LABEL_20;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        [v5 setConstant_];
      }

      v6 = (*((*v1 & *v0) + 0x130))();
      if (v6)
      {
        v7 = v6;
        (*((*v1 & *v3) + 0x2F0))(&v14);
        *&v24[32] = v18;
        v25 = v19;
        v26 = v20;
        v27 = v21;
        v22 = v14;
        v23 = v15;
        *v24 = v16;
        *&v24[16] = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) == 1)
        {
LABEL_21:
          __break(1u);
          return;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        [v7 setConstant_];
      }

      v8 = (*((*v1 & *v0) + 0x198))();
      (*((*v1 & *v3) + 0x2F0))(&v14);
      *&v24[32] = v18;
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v22 = v14;
      v23 = v15;
      *v24 = v16;
      *&v24[16] = v17;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) != 1)
      {
        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        v13[0] = *&v24[8];
        v13[1] = *&v24[24];
        (*((*v1 & *v8) + 0x70))(v13);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v10, "Cannot update constraints in updateItemStatusConstraints because cellContent is nil", v11, 2u);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionListCell.updateItemAccessStatusConstraints()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1B0))())
  {
    v2 = (*((*v1 & *v0) + 0x208))();
    if (v2)
    {
      v3 = v2;
      v4 = (*((*v1 & *v0) + 0x148))();
      if (v4)
      {
        v5 = v4;
        (*((*v1 & *v3) + 0x2F0))(&v14);
        *&v24[32] = v18;
        v25 = v19;
        v26 = v20;
        v27 = v21;
        v22 = v14;
        v23 = v15;
        *v24 = v16;
        *&v24[16] = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) == 1)
        {
          goto LABEL_20;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        [v5 setConstant_];
      }

      v6 = (*((*v1 & *v0) + 0x160))();
      if (v6)
      {
        v7 = v6;
        (*((*v1 & *v3) + 0x2F0))(&v14);
        *&v24[32] = v18;
        v25 = v19;
        v26 = v20;
        v27 = v21;
        v22 = v14;
        v23 = v15;
        *v24 = v16;
        *&v24[16] = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) == 1)
        {
LABEL_21:
          __break(1u);
          return;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        [v7 setConstant_];
      }

      v8 = (*((*v1 & *v0) + 0x1C8))();
      (*((*v1 & *v3) + 0x2F0))(&v14);
      *&v24[32] = v18;
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v22 = v14;
      v23 = v15;
      *v24 = v16;
      *&v24[16] = v17;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v22) != 1)
      {
        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
        v13[0] = *&v24[8];
        v13[1] = *&v24[24];
        (*((*v1 & *v8) + 0x70))(v13);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v10, "Cannot update constraints in updateItemAccessStatusConstraints because cellContent is nil", v11, 2u);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionListCell.teardownRename(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewObserver);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewObserver) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint) = 0;

  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x390))();
  if (v6)
  {
    v7 = v6;
    v8 = DOCItemRenameTextView.clearButton.getter();

    [v8 removeFromSuperview];
  }

  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView) setAlpha_];

  DOCItemCollectionCell.teardownRename(_:)(a1);
}

Swift::Void __swiftcall DOCItemCollectionListCell.setupRename()()
{
  v1 = v0;
  DOCItemCollectionCell.setupRename()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x390))();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
    v5 = v3;
    v6 = [v4 font];
    [v5 setFont_];

    [v5 setTextAlignment_];
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    *(v5 + v7) = 0;
    DOCItemRenameTextView.updateBackground()();
    v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint);
    if (v8)
    {
      [v8 setActive_];
    }

    (*((*v2 & *v1) + 0x3F0))(v5);
    [v4 setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView) setAlpha_];
    [v1 layoutBelowIfNeeded];
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
    swift_beginAccess();
    *(v5 + v9) = 1;
    v10.receiver = v5;
    v10.super_class = type metadata accessor for DOCItemRenameTextView();
    objc_msgSendSuper2(&v10, sel_becomeFirstResponder);
    *(v5 + v9) = 0;
  }
}

void DOCItemCollectionListCell.installRenameTextView(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x398);
  v6 = a1;
  v7 = v5(a1);
  v8 = (*((*v4 & *v2) + 0x390))(v7);
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
    v10 = v8;
    swift_beginAccess();
    *(v9 + 8) = &protocol witness table for DOCItemCollectionCell;
    swift_unknownObjectWeakAssign();
  }

  *&v69[0] = v6;
  swift_getKeyPath();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  v13 = v6;
  v14 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewObserver);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewObserver) = v14;

  [v2 addSubview_];
  v73 = MEMORY[0x277D84F90];
  v16 = DOCItemRenameTextView.clearButton.getter();
  v17 = [v2 contentView];
  v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  v19 = v16;
  [v17 insertSubview:v19 aboveSubview:v18];

  v20 = (*((*v4 & *v2) + 0x208))();
  if (v20)
  {
    v21 = v20;
    (*((*v4 & *v20) + 0x2F0))(&v60);

    v68[4] = v64;
    v68[5] = v65;
    v68[6] = v66;
    v68[7] = v67;
    v68[0] = v60;
    v68[1] = v61;
    v68[2] = v62;
    v68[3] = v63;
    v69[0] = v60;
    v69[1] = v61;
    v69[2] = v62;
    v69[3] = v63;
    v69[4] = v64;
    v70 = v65;
    v71 = v66;
    v72 = v67;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v69) == 1)
    {
      __break(1u);
      return;
    }

    outlined destroy of CharacterSet?(v68, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v22 = v70;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v19 centerYAnchor];

  v24 = [v2 contentView];
  v25 = [v24 centerYAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  MEMORY[0x24C1FB090]();
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v27 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = (*((*v4 & *v2) + 0x3C0))(v27);

  v29 = v22 | ~v28;
  v30 = [v19 trailingAnchor];

  if (v29)
  {
    v31 = [v2 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];
  }

  else
  {
    v33 = [v2 contentView];
    v31 = [v33 trailingAnchor];

    v32 = [v30 constraintEqualToAnchor:v31 constant:-20.0];
  }

  v34 = v32;

  MEMORY[0x24C1FB090]();
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v35 = [objc_opt_self() mainScreen];
  [v35 scale];
  v37 = v36;

  v38 = [v13 heightAnchor];
  v39 = [v38 constraintEqualToConstant_];

  v40 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint;
  v41 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint) = v39;
  v42 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_249BA0470;
  *(v43 + 32) = v42;
  v59 = v42;
  v44 = [v13 centerYAnchor];
  v45 = [v2 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:1.0 / v37];

  *(v43 + 40) = v46;
  v47 = [v13 leadingAnchor];
  v48 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel) leadingAnchor];
  v49 = [v47 &selRef:v48 initWithBundleIdentifier:-5.0 + 6];

  *(v43 + 48) = v49;
  v50 = [v13 trailingAnchor];
  v51 = [v19 leadingAnchor];

  v52 = [v50 &selRef:v51 initWithBundleIdentifier:-5.0 + 6];
  *(v43 + 56) = v52;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewConstraints) = v43;

  specialized Array.append<A>(contentsOf:)(v53);
  [v13 setTextContainerInset_];
  [v2 bounds];
  v54 = CGRectGetHeight(v74) + -8.0;
  [v13 contentSize];
  if (v55 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

  [*(v2 + v40) setConstant_];
  v57 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints_];
}

void closure #1 in DOCItemCollectionListCell.installRenameTextView(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *((*MEMORY[0x277D85000] & *Strong) + 0x390);
    v7 = Strong;
    v8 = v6();

    if (v8)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {
        [v7 bounds];
        v9 = CGRectGetHeight(v12) + -8.0;
        [a4 contentSize];
        if (v10 < v9)
        {
          v9 = v10;
        }

        v11 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint);
        [v11 setConstant_];
      }
    }
  }
}

void DOCItemCollectionListCell.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, Class isa, uint64_t a5)
{
  v9 = a2;
  if (!a2)
  {
LABEL_12:
    outlined init with copy of DOCGridLayout.Spec?(a3, v26, &_sypSgMd);
    v15 = v27;
    if (v27)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x28223BE20](v16, v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v26);
      if (!isa)
      {
LABEL_15:
        v22 = type metadata accessor for DOCItemCollectionListCell(0);
        v25.receiver = v5;
        v25.super_class = v22;
        objc_msgSendSuper2(&v25, sel_observeValueForKeyPath_ofObject_change_context_, v9, v21, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v21 = 0;
      if (!isa)
      {
        goto LABEL_15;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_15;
  }

  if ((a1 != 0x53746E65746E6F63 || a2 != 0xEB00000000657A69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v11 = (*((*MEMORY[0x277D85000] & *v5) + 0x390))()) == 0)
  {
    v9 = MEMORY[0x24C1FAD20](a1, v9);
    goto LABEL_12;
  }

  v24 = v11;
  [v5 bounds];
  v12 = CGRectGetHeight(v29) + -8.0;
  [v24 contentSize];
  if (v13 < v12)
  {
    v12 = v13;
  }

  v14 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint);
  [v14 setConstant_];
}

void DOCItemCollectionListCell.__ivar_destroyer()
{

  memcpy(v1, (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics), sizeof(v1));
  outlined destroy of DOCItemCollectionListCell.LayoutMetrics(v1);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory, &_s5UIKit15UICellAccessoryVSgMd);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory, &_s5UIKit15UICellAccessoryVSgMd);
}

id DOCItemCollectionLargeTextListCell.anchorForSeparatorConstraint.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView) leadingAnchor];

  return v1;
}

id DOCItemCollectionListCell.configureHorizontalStackView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  [v1 setAxis_];
  [v1 setAlignment_];

  return [v1 setDistribution_];
}

uint64_t DOCItemCollectionLargeTextListCell.applyLayoutMetrics(_:)(double *a1)
{
  DOCItemCollectionListCell.applyLayoutMetrics(_:)(a1);
  memcpy(__dst, (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics), sizeof(__dst));
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 88);
  v28 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 72);
  v29 = v2;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 120);
  v30 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 104);
  v31 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 24);
  v27[0] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 8);
  v27[1] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 56);
  v27[2] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 40);
  v27[3] = v5;
  v6 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v27);
  v7 = *MEMORY[0x277D76918];
  if (v6 != 1)
  {
    v7 = *(&v28 + 1);
  }

  v8 = v7;
  v9 = objc_opt_self();
  outlined init with copy of DOCItemCollectionListCell.LayoutMetrics(__dst, v25);
  v24 = v8;
  v10 = [v9 preferredFontForTextStyle_];
  [v10 ascender];
  v12 = v11;
  [v10 descender];
  v14 = v13;

  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize) = ceil(fmax(v12 - v14, 27.0));
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 setConstant_];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return outlined destroy of DOCItemCollectionListCell.LayoutMetrics(__dst);
}

double DOCItemCollectionLargeTextListCell.layoutMetrics(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  DOCItemCollectionListCell.layoutMetrics(for:)(a1, a2);
  *(a2 + 160) = 0x4020000000000000;
  *(a2 + 184) = *(a2 + 184) + 4.0;
  result = 12.0;
  *(a2 + 240) = xmmword_249BB3FE0;
  *(a2 + 256) = 0x4010000000000000;
  return result;
}

Swift::Void __swiftcall DOCItemCollectionLargeTextListCell.generateConstraints(in:)(UIView *in)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  v5 = [v4 topAnchor];
  v6 = [(UIView *)in topAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v6 multiplier:1.0];

  v8 = [v4 topAnchor];
  v9 = [(UIView *)in topAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v9 multiplier:1.0];

  v11 = [v4 centerYAnchor];
  v12 = [(UIView *)in centerYAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  v43[0] = 1132068864;
  LODWORD(v45[0]) = 1092616192;
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v14) = __dst[0];
  [v13 setPriority_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA37E0;
  *(v16 + 32) = v7;
  *(v16 + 40) = v10;
  *(v16 + 48) = v13;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v42 = v7;
  v41 = v10;
  v40 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints_];

  memcpy(__dst, (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics), sizeof(__dst));
  v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 88);
  v46 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 72);
  v47 = v18;
  v19 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 120);
  v48 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 104);
  v49 = v19;
  v20 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 24);
  v45[0] = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 8);
  v45[1] = v20;
  v21 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 56);
  v45[2] = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 40);
  v45[3] = v21;
  v22 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v45);
  v23 = *MEMORY[0x277D76918];
  if (v22 != 1)
  {
    v23 = *(&v46 + 1);
  }

  v24 = v23;
  v25 = objc_opt_self();
  outlined init with copy of DOCItemCollectionListCell.LayoutMetrics(__dst, v43);
  v39 = v24;
  v26 = [v25 preferredFontForTextStyle_];
  [v26 ascender];
  v28 = v27;
  [v26 descender];
  v30 = v29;

  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize) = ceil(fmax(v28 - v30, 27.0));
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
  swift_beginAccess();
  v33 = *(v2 + v32);
  if (v33 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x24C1FC540](v35, v33);
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v36 = *(v33 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v36 setConstant_];

      ++v35;
      if (v38 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  outlined destroy of DOCItemCollectionListCell.LayoutMetrics(__dst);
}

Swift::Void __swiftcall DOCItemCollectionLargeTextListCell.updateForChangedContentSizeCategory()()
{
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel) invalidateIntrinsicContentSize];
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel) invalidateIntrinsicContentSize];
  memcpy(__dst, (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics), sizeof(__dst));
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 88);
  v26 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 72);
  v27 = v1;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 120);
  v28 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 104);
  v29 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 24);
  v25[0] = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 8);
  v25[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 56);
  v25[2] = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 40);
  v25[3] = v4;
  v5 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v25);
  v6 = *MEMORY[0x277D76918];
  if (v5 != 1)
  {
    v6 = *(&v26 + 1);
  }

  v7 = v6;
  v8 = objc_opt_self();
  outlined init with copy of DOCItemCollectionListCell.LayoutMetrics(__dst, v23);
  v22 = v7;
  v9 = [v8 preferredFontForTextStyle_];
  [v9 ascender];
  v11 = v10;
  [v9 descender];
  v13 = v12;

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize) = ceil(fmax(v11 - v13, 27.0));
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
  swift_beginAccess();
  v16 = *(v0 + v15);
  if (v16 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v19 setConstant_];

      ++v18;
      if (v21 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  outlined destroy of DOCItemCollectionListCell.LayoutMetrics(__dst);
}

uint64_t DOCItemCollectionLargeTextListCell.largeSubtitle.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0x368))();
  if (v4 && (v5 = v4, v6 = [v4 horizontalSizeClass], v5, v6 == 1))
  {
    v7 = (*((*v1 & *v3) + 0xB28))();
  }

  else
  {
    v7 = (*((*v1 & *v3) + 0xB30))();
  }

  v8 = v7;

  return v8;
}

uint64_t DOCItemCollectionLargeTextListCell.hideSubtitle(for:)(unint64_t a1)
{
  DOCItemCollectionLargeTextListCell.largeSubtitle.getter();
  v2 = String.count.getter();

  if (v2 < 1)
  {
    return (a1 >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t DOCItemCollectionLargeTextListCell.subtitleText(for:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0x368))();
  if (v4 && (v5 = v4, v6 = [v4 horizontalSizeClass], v5, v6 == 1))
  {
    v7 = (*((*v1 & *v3) + 0xB28))();
  }

  else
  {
    v7 = (*((*v1 & *v3) + 0xB30))();
  }

  v8 = v7;

  return v8;
}

void DOCItemCollectionLargeTextListCell.thumbnailFrameInCell.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
    [v5 frame];
    Height = CGRectGetHeight(v9);
    [v5 frame];
    v7.n128_f64[0] = CGRectGetHeight(v10);
    [v5 convertRect:v1 toCoordinateSpace:{0.0, 0.0, (*((*v2 & *v4) + 0x710))(v7), Height}];
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) bounds];
    [v8 convertRect:v1 toCoordinateSpace:?];
  }
}

Swift::Void __swiftcall DOCItemCollectionLargeTextListCell.didUpdateThumbnail()()
{
  DOCItemCollectionListCell.didUpdateThumbnail()();

  DOCItemCollectionListCell.updateTitleAndSubtitle()();
}

id DOCItemCollectionListCell.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DOCItemCollectionListCellSpringLoadedInteractionEffect.init(targetCell:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionListCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t outlined assign with copy of UICellAccessory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall DOCItemCollectionListCellSpringLoadedInteractionEffect.prepare()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layer];
    v3 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    LODWORD(v4) = 1045220557;
    [v3 setOpacity_];
    [v3 setCornerCurve_];
    v16 = v1;
    type metadata accessor for DOCItemCollectionCell();
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25SpringLoadedConfiguration_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of DOCGoToFolderCandidate(v14, v17);
      v6 = v18;
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v7 + 8))(v6, v7);
      [v3 setCornerRadius_];
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables25SpringLoadedConfiguration_pSgMd);
    }

    v11 = [objc_opt_self() blackColor];
    v12 = [v11 CGColor];

    [v3 setBackgroundColor_];
    [v2 addSublayer_];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v9, "Cannot prepare DOCItemCollectionListCellSpringLoadedInteractionEffect because targetCell is nil", v10, 2u);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }
}

id DOCItemCollectionListCellSpringLoadedInteractionEffect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL specialized static DOCItemCollectionListCell.LayoutMetrics.horizontal.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    v3 = v2 && a1[5] == a2[5];
    if (v3 && a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9])
    {
      return 1;
    }
  }

  return result;
}

uint64_t specialized static DOCItemCollectionListCell.LayoutMetrics.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 88);
  v138[4] = *(a1 + 72);
  v138[5] = v3;
  v4 = *(a1 + 120);
  v138[6] = *(a1 + 104);
  v138[7] = v4;
  v5 = *(a1 + 24);
  v138[0] = *(a1 + 8);
  v138[1] = v5;
  v6 = *(a1 + 56);
  v138[2] = *(a1 + 40);
  v138[3] = v6;
  v8 = *(a1 + 17);
  v7 = *(a1 + 18);
  v9 = a1[152];
  v10 = *(a1 + 13);
  v136[2] = *(a1 + 12);
  v136[3] = v10;
  v136[4] = *(a1 + 14);
  v11 = *(a1 + 10);
  v136[1] = *(a1 + 11);
  v136[0] = v11;
  v12 = *a2;
  v13 = *(a2 + 88);
  v139[4] = *(a2 + 72);
  v139[5] = v13;
  v14 = *(a2 + 120);
  v139[6] = *(a2 + 104);
  v139[7] = v14;
  v15 = *(a2 + 24);
  v139[0] = *(a2 + 8);
  v139[1] = v15;
  v16 = *(a2 + 56);
  v139[2] = *(a2 + 40);
  v139[3] = v16;
  v18 = *(a2 + 17);
  v17 = *(a2 + 18);
  v19 = a2[152];
  v20 = *(a2 + 13);
  v137[4] = *(a2 + 14);
  v21 = *(a2 + 11);
  v22 = *(a2 + 12);
  v137[3] = v20;
  v137[2] = v22;
  v137[0] = *(a2 + 10);
  v137[1] = v21;
  if (v2 != v12)
  {
    goto LABEL_20;
  }

  v75 = *(a1 + 15);
  v76 = *(a1 + 16);
  v73 = *(a2 + 15);
  v74 = *(a2 + 16);
  v25 = *(a1 + 72);
  v124 = *(a1 + 88);
  v26 = *(a1 + 120);
  v125 = *(a1 + 104);
  v126 = v26;
  v27 = *(a1 + 24);
  v119 = *(a1 + 8);
  v120 = v27;
  v28 = *(a1 + 56);
  v121 = *(a1 + 40);
  v122 = v28;
  v123 = v25;
  v29 = *(a2 + 8);
  v30 = *(a2 + 24);
  v31 = *(a2 + 40);
  v130 = *(a2 + 56);
  v129 = v31;
  v128 = v30;
  v127 = v29;
  v32 = *(a2 + 72);
  v33 = *(a2 + 88);
  v34 = *(a2 + 104);
  v134 = *(a2 + 120);
  v133 = v34;
  v132 = v33;
  v131 = v32;
  v35 = *(a1 + 8);
  v36 = *(a1 + 24);
  v37 = *(a1 + 40);
  v135[3] = *(a1 + 56);
  v135[2] = v37;
  v135[1] = v36;
  v135[0] = v35;
  v38 = *(a1 + 72);
  v39 = *(a1 + 88);
  v40 = *(a1 + 104);
  v135[7] = *(a1 + 120);
  v135[6] = v40;
  v135[5] = v39;
  v135[4] = v38;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v135) == 1)
  {
    v41 = *(a2 + 88);
    v99 = *(a2 + 72);
    v100 = v41;
    v42 = *(a2 + 120);
    v101 = *(a2 + 104);
    v102 = v42;
    v43 = *(a2 + 24);
    v95 = *(a2 + 8);
    v96 = v43;
    v44 = *(a2 + 56);
    v97 = *(a2 + 40);
    v98 = v44;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v95) == 1)
    {
      v45 = *(a1 + 88);
      v115 = *(a1 + 72);
      v116 = v45;
      v46 = *(a1 + 120);
      v117 = *(a1 + 104);
      v118 = v46;
      v47 = *(a1 + 24);
      v111 = *(a1 + 8);
      v112 = v47;
      v48 = *(a1 + 56);
      v113 = *(a1 + 40);
      v114 = v48;
      outlined init with copy of DOCGridLayout.Spec?(v138, &v87, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(v139, &v87, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      outlined destroy of CharacterSet?(&v111, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      goto LABEL_10;
    }

    outlined init with copy of DOCGridLayout.Spec?(v138, &v111, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v139, &v111, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
LABEL_8:
    v107 = v131;
    v108 = v132;
    v109 = v133;
    v110 = v134;
    v103 = v127;
    v104 = v128;
    v105 = v129;
    v106 = v130;
    v99 = v123;
    v100 = v124;
    v101 = v125;
    v102 = v126;
    v95 = v119;
    v96 = v120;
    v97 = v121;
    v98 = v122;
    outlined destroy of CharacterSet?(&v95, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSg_AFtMd);
    goto LABEL_20;
  }

  v49 = *(a1 + 88);
  v115 = *(a1 + 72);
  v116 = v49;
  v50 = *(a1 + 120);
  v117 = *(a1 + 104);
  v118 = v50;
  v51 = *(a1 + 24);
  v111 = *(a1 + 8);
  v112 = v51;
  v52 = *(a1 + 56);
  v113 = *(a1 + 40);
  v114 = v52;
  v87 = v111;
  v88 = v51;
  v89 = v113;
  v90 = v52;
  v91 = v115;
  v92 = v49;
  v93 = v117;
  v94 = v50;
  v53 = *(a2 + 56);
  v97 = *(a2 + 40);
  v98 = v53;
  v54 = *(a2 + 24);
  v95 = *(a2 + 8);
  v96 = v54;
  v55 = *(a2 + 120);
  v101 = *(a2 + 104);
  v102 = v55;
  v56 = *(a2 + 88);
  v99 = *(a2 + 72);
  v100 = v56;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v95) == 1)
  {
    v57 = *(a1 + 88);
    v83 = *(a1 + 72);
    v84 = v57;
    v58 = *(a1 + 120);
    v85 = *(a1 + 104);
    v86 = v58;
    v59 = *(a1 + 24);
    v79 = *(a1 + 8);
    v80 = v59;
    v60 = *(a1 + 56);
    v81 = *(a1 + 40);
    v82 = v60;
    outlined init with copy of DOCGridLayout.Spec?(v138, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v139, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v111, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v79);
    goto LABEL_8;
  }

  v61 = *(a2 + 88);
  v83 = *(a2 + 72);
  v84 = v61;
  v62 = *(a2 + 120);
  v85 = *(a2 + 104);
  v86 = v62;
  v63 = *(a2 + 24);
  v79 = *(a2 + 8);
  v80 = v63;
  v64 = *(a2 + 56);
  v81 = *(a2 + 40);
  v82 = v64;
  outlined init with copy of DOCGridLayout.Spec?(v138, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v139, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  outlined init with copy of DOCGridLayout.Spec?(&v111, v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v65 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v87, &v79);
  v77[4] = v83;
  v77[5] = v84;
  v77[6] = v85;
  v77[7] = v86;
  v77[0] = v79;
  v77[1] = v80;
  v77[2] = v81;
  v77[3] = v82;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v77);
  v78[4] = v91;
  v78[5] = v92;
  v78[6] = v93;
  v78[7] = v94;
  v78[0] = v87;
  v78[1] = v88;
  v78[2] = v89;
  v78[3] = v90;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v78);
  v66 = *(a1 + 88);
  v83 = *(a1 + 72);
  v84 = v66;
  v67 = *(a1 + 120);
  v85 = *(a1 + 104);
  v86 = v67;
  v68 = *(a1 + 24);
  v79 = *(a1 + 8);
  v80 = v68;
  v69 = *(a1 + 56);
  v81 = *(a1 + 40);
  v82 = v69;
  outlined destroy of CharacterSet?(&v79, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  if ((v65 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v8 != v18)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_20:
    v71 = 0;
    return v71 & 1;
  }

  if (v7 == v17)
  {
    v70 = v19;
  }

  else
  {
    v70 = 1;
  }

  if (v70)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!specialized static DOCItemCollectionListCell.LayoutMetrics.horizontal.== infix(_:_:)(v136, v137))
  {
    goto LABEL_20;
  }

  v71 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v75, v73), vceqq_f64(v76, v74))));
  return v71 & 1;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v29 = *a1 >> 62;
  if (v29)
  {
    goto LABEL_81;
  }

  v31 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x24C1FC540](v4, v2);
    }

    else
    {
      if (v4 >= *(v31 + 16))
      {
        goto LABEL_71;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if ([v7 firstItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
        v9 = a2;
        v10 = static NSObject.== infix(_:_:)();

        swift_unknownObjectRelease();
        if (v10)
        {

LABEL_25:
          v14 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
            goto LABEL_28;
          }

          while (2)
          {
            if (v2 >> 62)
            {
              if (v14 == __CocoaSet.count.getter())
              {
                return v4;
              }
            }

            else if (v14 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              return v4;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x24C1FC540](v14, v2);
            }

            else
            {
              if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_73;
              }

              if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_74;
              }

              v17 = *(v2 + 8 * v14 + 32);
            }

            v18 = v17;
            if ([v17 firstItem])
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
                v19 = a2;
                v20 = static NSObject.== infix(_:_:)();

                swift_unknownObjectRelease();
                if (v20)
                {

                  goto LABEL_30;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            if (![v18 secondItem])
            {

              goto LABEL_47;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
              v21 = a2;
              v22 = static NSObject.== infix(_:_:)();

              swift_unknownObjectRelease();
              if ((v22 & 1) == 0)
              {
LABEL_47:
                if (v4 != v14)
                {
LABEL_50:
                  if ((v2 & 0xC000000000000001) != 0)
                  {
                    v8 = MEMORY[0x24C1FC540](v4, v2);
                    v23 = MEMORY[0x24C1FC540](v14, v2);
                  }

                  else
                  {
                    if ((v4 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_78;
                    }

                    v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v4 >= v24)
                    {
                      goto LABEL_79;
                    }

                    if (v14 >= v24)
                    {
                      goto LABEL_80;
                    }

                    v25 = *(v2 + 32 + 8 * v14);
                    v8 = *(v2 + 32 + 8 * v4);
                    v23 = v25;
                  }

                  v26 = v23;
                  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                    v27 = (v2 >> 62) & 1;
                  }

                  else
                  {
                    LODWORD(v27) = 0;
                  }

                  v5 = v2 & 0xFFFFFFFFFFFFFF8;
                  v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
                  *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v26;

                  if ((v2 & 0x8000000000000000) != 0 || v27)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                    v5 = v2 & 0xFFFFFFFFFFFFFF8;
                    if ((v14 & 0x8000000000000000) != 0)
                    {
LABEL_70:
                      __break(1u);
LABEL_71:
                      __break(1u);
LABEL_72:
                      __break(1u);
LABEL_73:
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
                      v31 = v2 & 0xFFFFFFFFFFFFFF8;
                      v3 = __CocoaSet.count.getter();
                      goto LABEL_3;
                    }
                  }

                  else if ((v14 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_70;
                  }

                  if (v14 >= *(v5 + 16))
                  {
                    goto LABEL_77;
                  }

LABEL_28:
                  v15 = v5 + 8 * v14;
                  v16 = *(v15 + 32);
                  *(v15 + 32) = v8;

                  *a1 = v2;
                }

LABEL_29:
                v6 = __OFADD__(v4++, 1);
                if (v6)
                {
                  goto LABEL_76;
                }
              }

LABEL_30:
              v6 = __OFADD__(v14++, 1);
              if (v6)
              {
                goto LABEL_75;
              }

              continue;
            }

            break;
          }

          swift_unknownObjectRelease();
          if (v4 != v14)
          {
            goto LABEL_50;
          }

          goto LABEL_29;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if ([v8 secondItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
        v11 = a2;
        v12 = static NSObject.== infix(_:_:)();

        swift_unknownObjectRelease();
        if (v12)
        {
          goto LABEL_25;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      goto LABEL_72;
    }
  }

  if (v29)
  {
    return __CocoaSet.count.getter();
  }

  return *(v31 + 16);
}

uint64_t _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized DOCItemCollectionListCellSpringLoadedInteractionEffect.interaction(_:didChangeWith:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    Strong = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(Strong, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2493AC000, Strong, v17, "Missing targetCell in DOCItemCollectionListCellSpringLoadedInteractionEffect, ignoring", v18, 2u);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = objc_opt_self();
  [v3 setDisableActions_];
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [Strong layer];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v5 setFrame_];
  }

  [v3 setDisableActions_];
  v15 = [a1 state];
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v20 = MEMORY[0x24C1FAD20](0x7974696361706FLL, 0xE700000000000000);
      v21 = [objc_opt_self() animationWithKeyPath_];

      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v21 setToValue_];

      v23 = v21;
      [v23 setDuration_];
      [v23 setAutoreverses_];
      LODWORD(v24) = 2.0;
      [v23 setRepeatCount_];
      [v23 setRemovedOnCompletion_];

      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        v27 = MEMORY[0x24C1FAD20](0x6B6E696C62, 0xE500000000000000);
        [v26 addAnimation:v23 forKey:v27];
      }

      goto LABEL_20;
    }

    if (v15 != 3)
    {
LABEL_20:

      return;
    }
  }

  else if (v15)
  {
    if (v15 == 1)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
    }

    goto LABEL_20;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  [v19 removeFromSuperlayer];

  swift_unknownObjectWeakAssign();
}

unint64_t lazy protocol witness table accessor for type ItemIndentation and conformance ItemIndentation()
{
  result = lazy protocol witness table cache variable for type ItemIndentation and conformance ItemIndentation;
  if (!lazy protocol witness table cache variable for type ItemIndentation and conformance ItemIndentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ItemIndentation and conformance ItemIndentation);
  }

  return result;
}

void type metadata completion function for DOCItemCollectionListCell()
{
  type metadata accessor for UICellAccessory?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionListCell.LayoutMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionListCell.LayoutMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionListCell.StatusLocation and conformance DOCItemCollectionListCell.StatusLocation()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionListCell.StatusLocation and conformance DOCItemCollectionListCell.StatusLocation;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionListCell.StatusLocation and conformance DOCItemCollectionListCell.StatusLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionListCell.StatusLocation and conformance DOCItemCollectionListCell.StatusLocation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionListCell.LayoutMetrics.horizontal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionListCell.LayoutMetrics.horizontal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t USBFormat.skType.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000018;
}

uint64_t one-time initialization function for diskFormatting()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.diskFormatting);
  __swift_project_value_buffer(v0, static Logger.diskFormatting);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.diskFormatting.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for diskFormatting != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.diskFormatting);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t key path getter for ObservableString.value : ObservableString@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ObservableString.value : ObservableString(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ObservableString.value.getter()
{
  return ObservableString.value.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ObservableString.value.setter()
{
  return ObservableString.value.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ObservableString.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ObservableString.value.modify;
}

uint64_t key path setter for ObservableString.$value : ObservableString(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 120))(v8);
}

uint64_t ObservableString.$value.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ObservableString.$value.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return ObservableString.$value.modify;
}

uint64_t ObservableString.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableString.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ObservableString.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  return v0;
}

uint64_t ObservableString.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ObservableString@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableString(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t DOCEraseViewController.viewModel.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__viewModel;
  swift_beginAccess();
  *(v3 + 8) = a1;
}

uint64_t USBEraseViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  USBEraseViewModel.init()();
  return v0;
}

uint64_t DOCEraseViewController.$viewModel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__viewModel);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = type metadata accessor for USBEraseViewModel(0);
  v5 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);

  v6 = MEMORY[0x24C1F9D60](v3, v2, v4, v5);

  return v6;
}

uint64_t DOCEraseViewController.confirmPassword.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy26DocumentManagerExecutables16ObservableStringCGMd);
  State.wrappedValue.getter();
  return v1;
}

void (*DOCEraseViewController.confirmPassword.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__confirmPassword;
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__confirmPassword);
  *(v3 + 48) = v6;
  v7 = *(v5 + 8);
  v4[7] = v7;
  *v4 = v6;
  v4[1] = v7;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy26DocumentManagerExecutables16ObservableStringCGMd);
  State.wrappedValue.getter();
  return DOCEraseViewController.confirmPassword.modify;
}

void DOCEraseViewController.confirmPassword.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t DOCEraseViewController.$confirmPassword.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy26DocumentManagerExecutables16ObservableStringCGMd);
  State.projectedValue.getter();
  return v1;
}

void closure #1 in variable initialization expression of DOCEraseViewController.alertPresenter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = MEMORY[0x24C1FAD20]();
  v20 = MEMORY[0x24C1FAD20](a3, a4);
  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v22 = swift_allocObject();
  *(v22 + 16) = a9;
  *(v22 + 24) = a10;

  v23 = MEMORY[0x24C1FAD20](a5, a6);
  v36 = thunk for @callee_guaranteed () -> ()partial apply;
  v37 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v35 = &block_descriptor_119;
  v24 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  v27 = v21;
  [v27 addAction_];
  [v27 setPreferredAction_];

  if (a11 && a8)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a11;
    *(v28 + 24) = a12;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a11);

    v29 = MEMORY[0x24C1FAD20](a7, a8);
    v36 = partial apply for thunk for @callee_guaranteed () -> ();
    v37 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v35 = &block_descriptor_212_1;
    v30 = _Block_copy(&aBlock);

    v31 = [v25 actionWithTitle:v29 style:2 handler:v30];
    _Block_release(v30);

    [v27 addAction_];
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a11);
  }

  [a13 presentViewController:v27 animated:1 completion:0];
}

uint64_t DOCEraseViewController.alertPresenter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter);

  return v1;
}

void DOCEraseViewController.init(currentName:configState:preflight:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v97 = a8;
  v95 = a7;
  v96 = a6;
  v94 = a5;
  v90[1] = a4;
  v91 = a3;
  v90[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v90 - v14;
  v16 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__viewModel];
  v93 = type metadata accessor for USBEraseViewModel(0);
  swift_allocObject();
  USBEraseViewModel.init()();
  v92 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  *v16 = ObservedObject.init(wrappedValue:)();
  v16[1] = v17;
  v18 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__confirmPassword];
  type metadata accessor for ObservableString(0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v12 + 32))(v19 + v20, v15, v11);
  *&v99 = v19;
  State.init(wrappedValue:)();
  v21 = *(&v105 + 1);
  *v18 = v105;
  *(v18 + 1) = v21;
  v22 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter];
  *v22 = closure #1 in variable initialization expression of DOCEraseViewController.alertPresenter;
  v22[1] = 0;
  v23 = type metadata accessor for DOCEraseViewController();
  v104.receiver = v9;
  v104.super_class = v23;
  v24 = objc_msgSendSuper2(&v104, sel_initWithNibName_bundle_, 0, 0);
  v25 = MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *v24) + 0x68);
  v27 = v24;
  v28 = v26();
  (*(*v28 + 192))(0, 0xE000000000000000);

  v30 = *(*(v26)(v29) + 576);

  v31 = v90[0];
  v90[0] = a2;
  v30(v31, a2);

  (v26)(v32);
  v91();

  (v26)(v33);
  (*((*v25 & *v27) + 0x88))();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbycGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249B9FA70;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v38 = v94;
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v96;
  *(v35 + 32) = partial apply for closure #2 in DOCEraseViewController.init(currentName:configState:preflight:completion:);
  *(v35 + 40) = v37;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v35 + 48) = partial apply for closure #3 in DOCEraseViewController.init(currentName:configState:preflight:completion:);
  *(v35 + 56) = v39;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = swift_allocObject();
  v42 = v95;
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v97;

  v43 = ObservedObject.init(wrappedValue:)();
  v45 = v44;
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type ObservableString and conformance ObservableString, type metadata accessor for ObservableString);
  v46 = ObservedObject.init(wrappedValue:)();
  v48 = v47;

  *&v105 = v43;
  *(&v105 + 1) = v45;
  *&v106 = v46;
  *(&v106 + 1) = v48;
  *&v107 = partial apply for closure #1 in DOCEraseViewController.init(currentName:configState:preflight:completion:);
  *(&v107 + 1) = v34;
  *&v108 = v35;
  *(&v108 + 1) = partial apply for closure #4 in DOCEraseViewController.init(currentName:configState:preflight:completion:);
  v109 = v41;
  v101 = v107;
  v102 = v108;
  v103 = v41;
  v99 = v105;
  v100 = v106;
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy26DocumentManagerExecutables16EraseContentViewVGMd));
  outlined init with copy of EraseContentView(&v105, v98);
  v50 = UIHostingController.init(rootView:)();
  v51 = v27;
  v52 = v50;
  v53 = v51;
  v54 = v52;
  v55 = v53;
  v56 = v54;
  v57 = v55;
  v58 = v56;
  v59 = v57;
  v60 = v58;
  [v59 addChildViewController_];
  v61 = [v60 view];
  if (!v61)
  {
    __break(1u);
    goto LABEL_15;
  }

  v62 = v61;
  [v61 setTranslatesAutoresizingMaskIntoConstraints_];

  v63 = [v60 view];
  if (!v63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v64 = [objc_opt_self() clearColor];
  [v63 setBackgroundColor_];

  v65 = [v59 view];
  if (!v65)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v66 = [v60 view];

  if (!v66)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v65 addSubview_];

  [v60 didMoveToParentViewController_];
  [v59 setPreferredContentSize_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_249BA0470;
  v68 = [v60 view];

  if (!v68)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = [v68 centerXAnchor];

  v70 = [v59 view];
  if (!v70)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v71 = [v70 centerXAnchor];

  v72 = [v69 constraintEqualToAnchor_];
  *(v67 + 32) = v72;
  v73 = [v60 view];

  if (!v73)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v74 = [v73 centerYAnchor];

  v75 = [v59 view];
  if (!v75)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v76 = [v75 centerYAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v67 + 40) = v77;
  v78 = [v60 view];

  if (!v78)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v79 = [v78 widthAnchor];

  v80 = [v59 view];
  if (!v80)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v81 = [v80 widthAnchor];

  v82 = [v79 constraintEqualToAnchor_];
  *(v67 + 48) = v82;
  v83 = [v60 view];

  if (!v83)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v84 = [v83 heightAnchor];

  v85 = [v59 view];
  if (v85)
  {

    v86 = objc_opt_self();
    v87 = [v85 heightAnchor];

    v88 = [v84 constraintEqualToAnchor_];
    *(v67 + 56) = v88;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v86 activateConstraints_];

    outlined destroy of EraseContentView(&v105);

    return;
  }

LABEL_25:
  __break(1u);
}

void closure #1 in DOCEraseViewController.init(currentName:configState:preflight:completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void closure #2 in DOCEraseViewController.init(currentName:configState:preflight:completion:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *)@<X1>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x68))();
    v7 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter];
    v8 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter + 8];

    LOBYTE(v7) = a1(v6, v7, v8, v5);

    v9 = v7 & 1;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
}

void closure #3 in DOCEraseViewController.init(currentName:configState:preflight:completion:)(char *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v3 = Strong;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *Strong) + 0x68);
  v6 = *v5();
  v7 = (*(v6 + 520))();

  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v9 & 1) == 0))
  {

    goto LABEL_15;
  }

  v10 = *(*(v7 + 56) + v8);

  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = (*((*v4 & *v3) + 0x88))(v11);
  v13 = (*(*v12 + 88))(v12);
  v15 = v14;

  v17 = *(v5)(v16);
  v18 = (*(v17 + 328))();
  v20 = v19;

  if (v13 == v18 && v15 == v20)
  {

    goto LABEL_16;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_15:

LABEL_16:
    v42 = 1;
    goto LABEL_17;
  }

  v23 = _DocumentManagerBundle();
  if (!v23)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v43._object = 0x8000000249BF13C0;
  v25._object = 0x8000000249BF13A0;
  v43._countAndFlagsBits = 0xD000000000000037;
  v25._countAndFlagsBits = 0xD000000000000017;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v43);

  v29 = _DocumentManagerBundle();
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v44._object = 0x8000000249BF1440;
  v31._countAndFlagsBits = 0xD000000000000030;
  v31._object = 0x8000000249BF1400;
  v44._countAndFlagsBits = 0xD00000000000004ALL;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v44);

  v35 = _DocumentManagerBundle();
  if (v35)
  {
    v36 = v35;
    v45._object = 0x8000000249BF1490;
    v37._countAndFlagsBits = 19279;
    v37._object = 0xE200000000000000;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEB00000000656C62;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0xD000000000000017;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v45);

    v41 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter);

    v41(v28._countAndFlagsBits, v28._object, v34._countAndFlagsBits, v34._object, v40._countAndFlagsBits, v40._object, 0, 0, DOCGridLayout.specIconWidth.modify, 0, 0, 0, v3);

    v42 = 0;
LABEL_17:
    *a1 = v42;
    return;
  }

LABEL_21:
  __break(1u);
}

void *closure #4 in DOCEraseViewController.init(currentName:configState:preflight:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v44 = a2;
    v45 = a3;
    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      v8.value._object = 0xEB00000000656C62;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v9 = 0x1000000000000075;
      v46._object = 0x8000000249BE87A0;
      v10._countAndFlagsBits = 0x80E2206573617245;
      v10._object = 0xAF3F9D80E240259CLL;
      v46._countAndFlagsBits = 0xD00000000000003FLL;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v8, v7, v11, v46);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249B9A480;
      v13 = *((*MEMORY[0x277D85000] & *v6) + 0x68);
      v14 = *v13();
      v15 = (*(v14 + 568))();
      v17 = v16;

      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v12 + 32) = v15;
      *(v12 + 40) = v17;
      v18 = static String.localizedStringWithFormat(_:_:)();
      v20 = v19;

      v22 = *(v13)(v21);
      v23 = (*(v22 + 424))();

      result = _DocumentManagerBundle();
      v24 = result;
      if (v23)
      {
        if (!result)
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v25 = "ng USB volume alert";
      }

      else
      {
        if (!result)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v25 = "init(coder:) should not be here";
        v9 = 0x10000000000000A6;
      }

      v47._object = 0x8000000249BF12B0;
      v26._object = (v25 | 0x8000000000000000);
      v47._countAndFlagsBits = 0xD000000000000063;
      v26._countAndFlagsBits = v9;
      v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v27.value._object = 0xEB00000000656C62;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v24, v28, v47);

      result = _DocumentManagerBundle();
      if (result)
      {
        v30 = result;
        v43 = v20;
        v48._object = 0x8000000249BD2AF0;
        v31._countAndFlagsBits = 0x6C65636E6143;
        v31._object = 0xE600000000000000;
        v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v32.value._object = 0xEB00000000656C62;
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v48._countAndFlagsBits = 0xD00000000000001BLL;
        v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v48);

        result = _DocumentManagerBundle();
        if (result)
        {
          v35 = result;
          v49._object = 0x8000000249BE8740;
          v36._countAndFlagsBits = 0x6573617245;
          v49._countAndFlagsBits = 0xD00000000000002DLL;
          v36._object = 0xE500000000000000;
          v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v37.value._object = 0xEB00000000656C62;
          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v49);

          v40 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter);
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v42 = swift_allocObject();
          v42[2] = v41;
          v42[3] = v44;
          v42[4] = v45;

          v40(v18, v43, v29._countAndFlagsBits, v29._object, v34._countAndFlagsBits, v34._object, v39._countAndFlagsBits, v39._object, DOCGridLayout.specIconWidth.modify, 0, partial apply for closure #2 in closure #4 in DOCEraseViewController.init(currentName:configState:preflight:completion:), v42, v6);
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

void *closure #2 in closure #4 in DOCEraseViewController.init(currentName:configState:preflight:completion:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result dismissViewControllerAnimated:1 completion:0];
    (*((*MEMORY[0x277D85000] & *v4) + 0x68))(v5);
    a2();
  }

  return result;
}

uint64_t EraseContentView.init(viewModel:confirmPassword:dismissAction:preflight:completeAction:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  type metadata accessor for USBEraseViewModel(0);
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  v12 = ObservedObject.init(wrappedValue:)();
  v14 = v13;
  type metadata accessor for ObservableString(0);
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type ObservableString and conformance ObservableString, type metadata accessor for ObservableString);
  result = ObservedObject.init(wrappedValue:)();
  *a6 = v12;
  a6[1] = v14;
  a6[2] = result;
  a6[3] = v16;
  a6[4] = a1;
  a6[5] = a2;
  a6[6] = a3;
  a6[7] = a4;
  a6[8] = a5;
  return result;
}

id DOCEraseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCEraseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id DOCEraseViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCEraseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id USBFormat.localizedDescription.getter(unsigned __int8 a1)
{
  result = _DocumentManagerBundle();
  v3 = result;
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (result)
      {
        v11 = 0x8000000249BF0BB0;
        v4 = 0x5441467845;
        v6 = 0x617A696C61636F4CLL;
        v7 = 0xEB00000000656C62;
        v8 = 0xD00000000000001ELL;
        v5 = 0xE500000000000000;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    if (result)
    {
      v11 = 0x8000000249BF0BD0;
      v4 = 0x2820534F442D534DLL;
      v5 = 0xEC00000029544146;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v8 = 0xD000000000000021;
LABEL_12:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v6, v3, v9, *&v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    if (result)
    {
      v11 = 0x8000000249BF0B80;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v5 = 0x8000000249BF0B60;
      v8 = 0xD000000000000027;
      v4 = 0xD000000000000015;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (result)
  {
    v11 = 0x8000000249BF0B30;
    v6 = 0x617A696C61636F4CLL;
    v7 = 0xEB00000000656C62;
    v4 = 0xD000000000000018;
    v5 = 0x8000000249BF0B10;
    v8 = 0xD000000000000020;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t USBFormat.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736F64736DLL;
  v2 = 7562856;
  if (a1 != 2)
  {
    v2 = 1936093281;
  }

  if (a1)
  {
    v1 = 0x7461667865;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance USBFormat(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x736F64736DLL;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 7562856;
  if (v3 != 2)
  {
    v5 = 1936093281;
    v4 = 0xE400000000000000;
  }

  v6 = 0x7461667865;
  if (!*a1)
  {
    v6 = 0x736F64736DLL;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0xE300000000000000;
  v10 = 7562856;
  if (*a2 != 2)
  {
    v10 = 1936093281;
    v9 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x7461667865;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USBFormat()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance USBFormat()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USBFormat()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USBFormat@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized USBFormat.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance USBFormat(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x736F64736DLL;
  v4 = 0xE300000000000000;
  v5 = 7562856;
  if (*v1 != 2)
  {
    v5 = 1936093281;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x7461667865;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t USBFormatOption.localizedDescription.getter(char a1)
{
  if (!a1)
  {
    return 1701736270;
  }

  if (a1 == 1)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v2 = result;
      v12 = 0x8000000249BF0C40;
      v3 = 0x6574707972636E45;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xE900000000000064;
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
      v10 = 0xD00000000000002ALL;
LABEL_8:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v7, *&v8, *&v10)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v2 = result;
      v12 = 0x8000000249BF0C00;
      v3 = 0x6E65532065736143;
      v6 = 0xEE00657669746973;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v10 = 0xD000000000000030;
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t USBFormatOption.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x6574707972636E65;
  }

  return 0x736E655365736163;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance USBFormatOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6574707972636E65;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x736E655365736163;
    v4 = 0xED00006576697469;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6574707972636E65;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x736E655365736163;
    v8 = 0xED00006576697469;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USBFormatOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance USBFormatOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USBFormatOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USBFormatOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized USBFormatOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance USBFormatOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6574707972636E65;
  if (v2 != 1)
  {
    v5 = 0x736E655365736163;
    v4 = 0xED00006576697469;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x24C1FB1C0](v12, AssociatedTypeWitness))
  {
    v13 = specialized Set.init(_nonEmptyArrayLiteral:)(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v19 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x28223BE20](v14, v15);
  *(&v18 - 4) = a1;
  *(&v18 - 3) = a2;
  *(&v18 - 2) = a3;
  *(&v18 - 1) = &v19;
  v16 = Sequence.filter(_:)();

  return v16;
}

uint64_t closure #1 in Sequence<>.unique()(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness, v9);
  type metadata accessor for Set();
  v12 = Set.insert(_:)();
  (*(v3 + 8))(v11, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t key path getter for USBEraseViewModel.name : USBEraseViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for USBEraseViewModel.name : USBEraseViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t (*USBEraseViewModel.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t key path setter for USBEraseViewModel.$name : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 216))(v8);
}

uint64_t USBEraseViewModel.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$name.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.selectedFormat : USBEraseViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t USBEraseViewModel.selectedFormat.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t USBEraseViewModel.selectedFormat.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  v1 = static Published.subscript.setter();
  v2 = (*(*v0 + 232))(v1);
  return (*(*v0 + 696))(v2, 0);
}

uint64_t (*USBEraseViewModel.selectedFormat.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return USBEraseViewModel.selectedFormat.modify;
}

uint64_t USBEraseViewModel.selectedFormat.modify(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v3;

  v4 = static Published.subscript.setter();
  v5 = (*(*v2 + 232))(v4);
  return (*(*v2 + 696))(v5, 0);
}

uint64_t key path setter for USBEraseViewModel.$selectedFormat : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables9USBFormatO_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 264))(v8);
}

uint64_t USBEraseViewModel.$selectedFormat.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables9USBFormatO_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables9USBFormatOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$selectedFormat.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables9USBFormatO_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__selectedFormat;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables9USBFormatOGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.encrypted : USBEraseViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t USBEraseViewModel.encrypted.getter()
{
  return USBEraseViewModel.encrypted.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t USBEraseViewModel.encrypted.setter()
{
  return USBEraseViewModel.encrypted.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*USBEraseViewModel.encrypted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t key path setter for USBEraseViewModel.$encrypted : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 312))(v8);
}

uint64_t USBEraseViewModel.$encrypted.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$encrypted.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__encrypted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.password : USBEraseViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for USBEraseViewModel.password : USBEraseViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 336);

  return v4(v2, v3);
}

uint64_t (*USBEraseViewModel.password.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t key path setter for USBEraseViewModel.$password : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 360))(v8);
}

uint64_t USBEraseViewModel.$password.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$password.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__password;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.caseSensitive : USBEraseViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t (*USBEraseViewModel.caseSensitive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t key path setter for USBEraseViewModel.$caseSensitive : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 408))(v8);
}

uint64_t USBEraseViewModel.$caseSensitive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$caseSensitive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__caseSensitive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.isAESHardwareDisk : USBEraseViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t USBEraseViewModel.isAESHardwareDisk.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t USBEraseViewModel.isAESHardwareDisk.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*USBEraseViewModel.isAESHardwareDisk.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t key path setter for USBEraseViewModel.$isAESHardwareDisk : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 456))(v8);
}

uint64_t USBEraseViewModel.$isAESHardwareDisk.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$isAESHardwareDisk.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__isAESHardwareDisk;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.showingFormats : USBEraseViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t key path setter for USBEraseViewModel.showingFormats : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 480);

  return v2(v3);
}

uint64_t USBEraseViewModel.showingFormats.getter()
{
  return USBEraseViewModel.showingFormats.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t USBEraseViewModel.showingFormats.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*USBEraseViewModel.showingFormats.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

void ObservableString.value.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for USBEraseViewModel.$showingFormats : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay26DocumentManagerExecutables9USBFormatOG_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 504))(v8);
}

uint64_t USBEraseViewModel.$showingFormats.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay26DocumentManagerExecutables9USBFormatOG_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay26DocumentManagerExecutables9USBFormatOGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$showingFormats.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay26DocumentManagerExecutables9USBFormatOG_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingFormats;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay26DocumentManagerExecutables9USBFormatOGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t key path getter for USBEraseViewModel.showingOptions : USBEraseViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t key path setter for USBEraseViewModel.showingOptions : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 528);

  return v2(v3);
}

uint64_t USBEraseViewModel.showingOptions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return USBEraseViewModel.reflectOptions()();
}

uint64_t (*USBEraseViewModel.showingOptions.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return USBEraseViewModel.showingOptions.modify;
}

uint64_t USBEraseViewModel.showingOptions.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;

  if (a2)
  {

    static Published.subscript.setter();
    USBEraseViewModel.reflectOptions()();
  }

  else
  {
    static Published.subscript.setter();
    return USBEraseViewModel.reflectOptions()();
  }
}

uint64_t key path setter for USBEraseViewModel.$showingOptions : USBEraseViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy26DocumentManagerExecutables15USBFormatOptionOSbG_GMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(**a2 + 552))(v8);
}

uint64_t ObservableString.$value.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t USBEraseViewModel.$showingOptions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy26DocumentManagerExecutables15USBFormatOptionOSbG_GMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy26DocumentManagerExecutables15USBFormatOptionOSbGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*USBEraseViewModel.$showingOptions.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy26DocumentManagerExecutables15USBFormatOptionOSbG_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingOptions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy26DocumentManagerExecutables15USBFormatOptionOSbGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

void ObservableString.$value.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t USBEraseViewModel.originalName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_originalName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t USBEraseViewModel.originalName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_originalName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t USBEraseViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy26DocumentManagerExecutables15USBFormatOptionOSbGGMd);
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v55 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay26DocumentManagerExecutables9USBFormatOGGMd);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v52 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v7);
  v49 = &v45 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables9USBFormatOGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v46 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - v20;
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__name;
  v58 = 0;
  v59 = 0xE000000000000000;
  Published.init(initialValue:)();
  v23 = *(v18 + 32);
  v23(v0 + v22, v21, v17);
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__selectedFormat;
  LOBYTE(v58) = 3;
  Published.init(initialValue:)();
  (*(v13 + 32))(v0 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__encrypted;
  LOBYTE(v58) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  Published.init(initialValue:)();
  v26 = *(v47 + 32);
  v27 = v48;
  v26(v0 + v25, v11, v48);
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__password;
  v58 = 0;
  v59 = 0xE000000000000000;
  Published.init(initialValue:)();
  v23(v0 + v28, v21, v46);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__caseSensitive;
  LOBYTE(v58) = 2;
  Published.init(initialValue:)();
  v26(v0 + v29, v11, v27);
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__isAESHardwareDisk;
  LOBYTE(v58) = 0;
  v31 = v49;
  Published.init(initialValue:)();
  (*(v50 + 32))(v0 + v30, v31, v51);
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingFormats;
  v33 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables9USBFormatOGMd);
  v34 = v52;
  Published.init(initialValue:)();
  (*(v53 + 32))(v0 + v32, v34, v54);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingOptions;
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy26DocumentManagerExecutables15USBFormatOptionOSbGMd);
  v36 = v55;
  Published.init(initialValue:)();
  (*(v56 + 32))(v0 + v35, v36, v57);
  v37 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_originalName);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_supportedFormatsAndOptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatO_SDyAC0G6OptionOSbGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08D0;
  *(inited + 32) = 3;
  *(inited + 40) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(&outlined read-only object #0 of USBEraseViewModel.init());
  *(inited + 48) = 2;
  *(inited + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(&outlined read-only object #1 of USBEraseViewModel.init());
  *(inited + 64) = 1;
  *(inited + 72) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  *(inited + 80) = 0;
  *(inited + 88) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SDyAC0F6OptionOSbGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables9USBFormatO_SDyAA0D6OptionOSbGtMd);
  swift_arrayDestroy();
  *(v0 + v38) = v40;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_viableFormats) = &outlined read-only object #2 of USBEraseViewModel.init();
  v41 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_optionsForFormat;
  *(v0 + v41) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SDyAC0F6OptionOSbGTt0g5Tf4g_n(v33);
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_followOnFormats;
  v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SayAEGTt0g5Tf4g_n(&outlined read-only object #7 of USBEraseViewModel.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables9USBFormatO_SayACGtMd);
  swift_arrayDestroy();
  *(v0 + v42) = v43;
  (*(*v0 + 696))(3, 1);
  return v0;
}

uint64_t USBEraseViewModel.__allocating_init(fileSystems:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized USBEraseViewModel.init(fileSystems:)(a1);

  return v2;
}

uint64_t USBEraseViewModel.init(fileSystems:)(uint64_t a1)
{
  v1 = specialized USBEraseViewModel.init(fileSystems:)(a1);

  return v1;
}

uint64_t USBEraseViewModel.newName.getter()
{
  v7 = *(*v0 + 184);
  v1 = v7();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = *(*v0 + 656);
  }

  return v5();
}

uint64_t USBEraseViewModel.formats(for:)(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_followOnFormats);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v26 = *(v5 + 16);
    if (v26)
    {
      v25 = *(*v27 + 592);
      v24 = v5 + 32;

      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        v28 = v8;
        v9 = *(v24 + v7);
        v10 = v25(isUniquelyReferenced_nonNull_native);
        v11 = *(v10 + 16);
        v12 = (v10 + 32);
        while (1)
        {
          if (!v11)
          {

            v8 = v28;
            goto LABEL_6;
          }

          v14 = 1936093281;
          if (*v12 == 2)
          {
            v14 = 7562856;
            v15 = 0xE300000000000000;
          }

          else
          {
            v15 = 0xE400000000000000;
          }

          v16 = 0x7461667865;
          if (!*v12)
          {
            v16 = 0x736F64736DLL;
          }

          if (*v12 <= 1u)
          {
            v17 = v16;
          }

          else
          {
            v17 = v14;
          }

          if (*v12 <= 1u)
          {
            v18 = 0xE500000000000000;
          }

          else
          {
            v18 = v15;
          }

          if (v9 > 1)
          {
            if (v9 == 2)
            {
              v20 = 7562856;
            }

            else
            {
              v20 = 1936093281;
            }

            if (v9 == 2)
            {
              v19 = 0xE300000000000000;
            }

            else
            {
              v19 = 0xE400000000000000;
            }

            if (v17 != v20)
            {
              goto LABEL_8;
            }

            goto LABEL_34;
          }

          v19 = 0xE500000000000000;
          if (!v9)
          {
            break;
          }

          if (v17 == 0x7461667865)
          {
            goto LABEL_34;
          }

LABEL_8:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v12;
          --v11;
          if (v13)
          {
            goto LABEL_36;
          }
        }

        if (v17 != 0x736F64736DLL)
        {
          goto LABEL_8;
        }

LABEL_34:
        if (v18 != v19)
        {
          goto LABEL_8;
        }

LABEL_36:

        v8 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
          v8 = v28;
        }

        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v8 = v28;
        }

        *(v8 + 16) = v22 + 1;
        *(v8 + v22 + 32) = v9;
LABEL_6:
        if (++v7 == v26)
        {

          return v8;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    _StringGuts.grow(_:)(50);
    MEMORY[0x24C1FAEA0](0xD000000000000030, 0x8000000249BF0CB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall USBEraseViewModel.update(for:)(Swift::OpaquePointer a1)
{
  v16 = *(*v1 + 600);
  v16(MEMORY[0x277D84F90]);
  if (a1._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, a1._rawValue);
      }

      else
      {
        if (v4 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1._rawValue + v4 + 4);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v17 = v5;
      closure #1 in USBEraseViewModel.update(for:)(&v17, v1);

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v8 = (*v1 + 592);
  v9 = *v8;
  v10 = (*v8)();
  v17 = MEMORY[0x277D84FA0];
  v11 = specialized Sequence.filter(_:)(v10);

  v12 = v16(v11);
  v13 = (v9)(v12);
  if (*(v13 + 16))
  {
    v14 = *(v13 + 32);

    v15 = *(*v1 + 696);

    v15(v14, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in USBEraseViewModel.update(for:)(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 type];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  result = specialized USBFormat.init(skType:)(v5, v7);
  if (result != 4)
  {
    v9 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_supportedFormatsAndOptions);
    if (*(v9 + 16))
    {
      v10 = result;
      result = specialized __RawDictionaryStorage.find<A>(_:)(result);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * result);

        v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        if ([v3 isEncrypted])
        {
          if (!*(v12 + 16))
          {
            goto LABEL_12;
          }

          v14 = specialized __RawDictionaryStorage.find<A>(_:)(1u);
          if ((v15 & 1) == 0)
          {
            goto LABEL_12;
          }

          v16 = *(*(v12 + 56) + v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29[0] = v13;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, 1, isUniquelyReferenced_nonNull_native);
        }

        if (![v3 isCaseSensitive])
        {

          goto LABEL_14;
        }

        if (*(v12 + 16))
        {
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
          if (v19)
          {
            v20 = *(*(v12 + 56) + v18);

            v21 = swift_isUniquelyReferenced_nonNull_native();
            v29[0] = v13;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 2, v21);
LABEL_14:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMd);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_249B9A480;
            *(inited + 32) = v10;
            v23 = (*(*a2 + 608))(v29);
            specialized Array.append<A>(contentsOf:)(inited);
            v23(v29, 0);
            v24 = (*(*a2 + 632))(v29);
            v26 = v25;
            v27 = swift_isUniquelyReferenced_nonNull_native();
            v28 = *v26;
            *v26 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v10, v27);
            *v26 = v28;
            return v24(v29, 0);
          }
        }

LABEL_12:
      }
    }
  }

  return result;
}

Swift::Void __swiftcall USBEraseViewModel.select(format:updatePresentedFormats:)(DocumentManagerExecutables::USBFormat format, Swift::Bool updatePresentedFormats)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = format;
  v56 = format;
  v55 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_followOnFormats);
  if (*(v55 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(format), (v7 & 1) != 0))
  {
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v61 = inited;
  v9 = specialized Array.append<A>(contentsOf:)(v8);
  v10 = inited;
  v58 = *(inited + 16);
  if (!v58)
  {
    goto LABEL_41;
  }

  v11 = 0;
  v12 = inited + 32;
  v60 = v3;
  v57 = inited + 32;
  while (2)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    inited = *(v12 + v11);
    v59 = v11 + 1;
    v13 = (*(*v3 + 592))(v9);
    v14 = *(v13 + 16);
    v15 = (v13 + 32);
    while (v14)
    {
      v19 = *v15;
      if (v19 == 2)
      {
        v20 = 7562856;
      }

      else
      {
        v20 = 1936093281;
      }

      if (v19 == 2)
      {
        v21 = 0xE300000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (*v15)
      {
        v22 = 0x7461667865;
      }

      else
      {
        v22 = 0x736F64736DLL;
      }

      if (*v15 <= 1u)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      if (*v15 <= 1u)
      {
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = v21;
      }

      if (inited > 1)
      {
        if (inited == 2)
        {
          v16 = 7562856;
        }

        else
        {
          v16 = 1936093281;
        }

        if (inited == 2)
        {
          v17 = 0xE300000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }

        if (v23 != v16)
        {
          goto LABEL_17;
        }
      }

      else if (inited)
      {
        v17 = 0xE500000000000000;
        if (v23 != 0x7461667865)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = 0xE500000000000000;
        if (v23 != 0x736F64736DLL)
        {
          goto LABEL_17;
        }
      }

      if (v24 == v17)
      {

LABEL_46:

        v29 = *(*v60 + 232);
        v30 = v29(v28);
        if (inited > 1)
        {
          v33 = 1936093281;
          if (inited == 2)
          {
            v31 = 7562856;
          }

          else
          {
            v31 = 1936093281;
          }

          if (inited == 2)
          {
            v32 = 0xE300000000000000;
          }

          else
          {
            v32 = 0xE400000000000000;
          }
        }

        else
        {
          if (inited)
          {
            v31 = 0x7461667865;
          }

          else
          {
            v31 = 0x736F64736DLL;
          }

          v32 = 0xE500000000000000;
          v33 = 1936093281;
        }

        v34 = 0xE300000000000000;
        if (v30 == 2)
        {
          v33 = 7562856;
        }

        else
        {
          v34 = 0xE400000000000000;
        }

        if (v30)
        {
          v35 = 0x7461667865;
        }

        else
        {
          v35 = 0x736F64736DLL;
        }

        if (v30 <= 1u)
        {
          v36 = v35;
        }

        else
        {
          v36 = v33;
        }

        if (v30 <= 1u)
        {
          v37 = 0xE500000000000000;
        }

        else
        {
          v37 = v34;
        }

        if (v31 == v36 && v32 == v37)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            v38 = (*(*v60 + 240))(inited);
          }
        }

        if (updatePresentedFormats)
        {
          v40 = v29(v38);
          v41 = (*(*v60 + 672))(v40);
          v38 = (*(*v60 + 480))(v41);
        }

        v42 = v29(v38);
        v43 = (*(*v60 + 616))();
        if (*(v43 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42), (v45 & 1) != 0))
        {
          v46 = *(*(v43 + 56) + 8 * v44);

          v47 = v46;
        }

        else
        {

          v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        }

        (*(*v60 + 528))(v47);
        USBEraseViewModel.reflectOptions()();
        return;
      }

LABEL_17:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v15;
      --v14;
      if (v18)
      {

        goto LABEL_46;
      }
    }

    v12 = v57;
    v11 = v59;
    v10 = v61;
    v3 = v60;
    if (v59 != v58)
    {
      continue;
    }

    break;
  }

LABEL_41:
  inited = v3;
  _StringGuts.grow(_:)(98);
  MEMORY[0x24C1FAEA0](0xD00000000000001CLL, 0x8000000249BF0CF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0xD00000000000002BLL, 0x8000000249BF0D10);
  if (!*(v55 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v26 & 1) == 0))
  {
LABEL_82:
    v27 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v27 = *(*(v55 + 56) + 8 * v25);

LABEL_83:
  v48 = MEMORY[0x24C1FB0D0](v27, &type metadata for USBFormat);
  v50 = v49;

  MEMORY[0x24C1FAEA0](v48, v50);

  v51 = MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BF0D40);
  (*(*inited + 592))(v51);
  v52 = MEMORY[0x24C1FB0D0]();
  v54 = v53;

  MEMORY[0x24C1FAEA0](v52, v54);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t USBEraseViewModel.reflectOptions()()
{
  v1 = v0;
  v2 = (*v0 + 520);
  v3 = *v2;
  v4 = (*v2)();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);

    v8 = v7;
  }

  else
  {

    v8 = 2;
  }

  v9 = (*(*v1 + 288))(v8);
  v10 = (v3)(v9);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(2u), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + v11);

    v14 = v13;
  }

  else
  {

    v14 = 2;
  }

  v15 = *(*v1 + 384);

  return v15(v14);
}

uint64_t USBEraseViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__selectedFormat;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables9USBFormatOGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__encrypted;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__password, v2);
  v8(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__caseSensitive, v7);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__isAESHardwareDisk;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingFormats;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay26DocumentManagerExecutables9USBFormatOGGMd);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingOptions;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy26DocumentManagerExecutables15USBFormatOptionOSbGGMd);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  return v0;
}

uint64_t USBEraseViewModel.__deallocating_deinit()
{
  USBEraseViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance USBEraseViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for USBEraseViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t EraseContentView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void EraseContentView.$viewModel.getter()
{
  type metadata accessor for USBEraseViewModel(0);
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);

  JUMPOUT(0x24C1F9D60);
}

uint64_t EraseContentView.confirmPassword.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void EraseContentView.$confirmPassword.getter()
{
  type metadata accessor for ObservableString(0);
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type ObservableString and conformance ObservableString, type metadata accessor for ObservableString);

  JUMPOUT(0x24C1F9D60);
}

uint64_t key path setter for EraseContentView.dismissAction : EraseContentView(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 40) = v5;
  return result;
}

uint64_t EraseContentView.dismissAction.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EraseContentView.dismissAction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t EraseContentView.preflight.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t key path setter for EraseContentView.completeAction : EraseContentView(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 56) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  *(a2 + 64) = v5;
  return result;
}

uint64_t EraseContentView.completeAction.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EraseContentView.completeAction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t EraseContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0R5FieldVyATG_Qo_AA05EmptyC0VG_ARyAtA08ModifiedG0VyAcAE11pickerStyleyQrqd__AA06PickerY0Rd__lFQOyAA0Z0VyA0_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA10_GA10_ATGG_AA06InlinezY0VQo_AA31AccessibilityAttachmentModifierVGATGARyATA12_ySayA8_15USBFormatOptionOGA24_AA6ToggleVyATGGA0_GSgARyAtPyA3_yAA06SecureU0VyATGAA30_EnvironmentKeyWritingModifierVySSSgGG_A39_tGA3_yAtA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0pfG0VyAA0fN0VyytAA6ButtonVyATGG_AaFPAAE13containerTintyQrAA5ColorVSgFQOyA53_yytAcAE10fontWeightyQrAA4FontV6WeightVSgFQOyA3_yA3_yA56_AA32_EnvironmentKeyTransformModifierVySbGGA36_yA62_GG_Qo_G_Qo_tGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0N5FieldVyAQG_Qo_AA05EmptyC0VG_AOyAqA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerV0Rd__lFQOyAA0W0VyAY26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA7_GA7_AQGG_AA06InlinewV0VQo_AA31AccessibilityAttachmentModifierVGAQGAOyAQA9_ySayA5_15USBFormatOptionOGA21_AA6ToggleVyAQGGAYGSgAOyAqMyA0_yAA06SecureQ0VyAQGAA30_EnvironmentKeyWritingModifierVySSSgGG_A36_tGA0_yAqA14_OpacityEffectVGGSgtGG_SSQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0I5FieldVyALG_Qo_AA05EmptyC0VG_AJyAlA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAT26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA2_GA2_ALGG_AA06InlinerQ0VQo_AA31AccessibilityAttachmentModifierVGALGAJyALA4_ySayA0_0V6OptionOGA16_AA6ToggleVyALGGATGSgAJyAlHyAWyAA06SecureL0VyALGAA30_EnvironmentKeyWritingModifierVySSSgGG_A31_tGAWyAlA14_OpacityEffectVGGSgtGG_SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Form<TupleView<(Section<Text, <<opaque return type of View.disableAutocorrection(_:)>>.0, EmptyView>, Section<Text, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, Text>, Section<Text, ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>>, EmptyView>?, Section<Text, TupleView<(ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>)>, ModifiedContent<Text, _OpacityEffect>>?)>> and conformance Form<A>, &_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<Text>>, <<opaque return type of ToolbarContent.containerTint(_:)>>.0)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGMd) + 36);
  *v3 = v2;
  *(v3 + 8) = xmmword_249BB3FB0;
  *(v3 + 24) = xmmword_249BB3FB0;
  *(v3 + 40) = 0;
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v8 = Color.init(uiColor:)();
  v9 = static SafeAreaRegions.all.getter();
  v10 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyA65_AA30_SafeAreaRegionsIgnoringLayoutVGGGMd);
  v12 = a1 + *(result + 36);
  *v12 = v8;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v4;
  *(v12 + 32) = v6;
  return result;
}

id closure #1 in EraseContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v3);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0I5FieldVyALG_Qo_AA05EmptyC0VG_AJyAlA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAT26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA2_GA2_ALGG_AA06InlinerQ0VQo_AA31AccessibilityAttachmentModifierVGALGAJyALA4_ySayA0_0V6OptionOGA16_AA6ToggleVyALGGATGSgAJyAlHyAWyAA06SecureL0VyALGAA30_EnvironmentKeyWritingModifierVySSSgGG_A31_tGAWyAlA14_OpacityEffectVGGSgtGG_SSQo_Md);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v41 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0N5FieldVyAQG_Qo_AA05EmptyC0VG_AOyAqA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerV0Rd__lFQOyAA0W0VyAY26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA7_GA7_AQGG_AA06InlinewV0VQo_AA31AccessibilityAttachmentModifierVGAQGAOyAQA9_ySayA5_15USBFormatOptionOGA21_AA6ToggleVyAQGGAYGSgAOyAqMyA0_yAA06SecureQ0VyAQGAA30_EnvironmentKeyWritingModifierVySSSgGG_A36_tGA0_yAqA14_OpacityEffectVGGSgtGG_SSQo__Qo_Md);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v14);
  v46 = v41 - v15;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA0D0PAAE21disableAutocorrectionyQrSbSgFQOyAA0F5FieldVyAGG_Qo_AA05EmptyD0VG_AEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerN0Rd__lFQOyAA0O0VyAQ26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA_GA_AGGG_AA06InlineoN0VQo_AA31AccessibilityAttachmentModifierVGAGGAEyAGA1_ySayAY0S6OptionOGA13_AA6ToggleVyAGGGAQGSgAEyAgCyATyAA06SecureI0VyAGGAA022_EnvironmentKeyWritingY0VySSSgGG_A28_tGATyAgA14_OpacityEffectVGGSgtGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(Section<Text, <<opaque return type of View.disableAutocorrection(_:)>>.0, EmptyView>, Section<Text, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, Text>, Section<Text, ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>>, EmptyView>?, Section<Text, TupleView<(ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>)>, ModifiedContent<Text, _OpacityEffect>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA0D0PAAE21disableAutocorrectionyQrSbSgFQOyAA0F5FieldVyAGG_Qo_AA05EmptyD0VG_AEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerN0Rd__lFQOyAA0O0VyAQ26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA_GA_AGGG_AA06InlineoN0VQo_AA31AccessibilityAttachmentModifierVGAGGAEyAGA1_ySayAY0S6OptionOGA13_AA6ToggleVyAGGGAQGSgAEyAgCyATyAA06SecureI0VyAGGAA022_EnvironmentKeyWritingY0VySSSgGG_A28_tGATyAgA14_OpacityEffectVGGSgtGMd);
  Form.init(content:)();
  result = _DocumentManagerBundle();
  if (result)
  {
    v17 = result;
    v57._object = 0x8000000249BF0F80;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._object = 0x8000000249BF0F60;
    v19._countAndFlagsBits = 0x1000000000000013;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0xD000000000000016;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    v22 = (*(**(a1 + 8) + 568))();
    v41[1] = a1;
    v24 = v23;
    v25 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v26 = static String.localizedStringWithFormat(_:_:)();
    v28 = v27;

    v53 = v26;
    v54 = v28;
    v29 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Form<TupleView<(Section<Text, <<opaque return type of View.disableAutocorrection(_:)>>.0, EmptyView>, Section<Text, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, Text>, Section<Text, ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>>, EmptyView>?, Section<Text, TupleView<(ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>)>, ModifiedContent<Text, _OpacityEffect>>?)>> and conformance Form<A>, &_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
    v30 = lazy protocol witness table accessor for type String and conformance String();
    v31 = v13;
    View.navigationTitle<A>(_:)();

    (*(v42 + 8))(v8, v5);
    v32 = v48;
    v33 = v43;
    v34 = v50;
    (*(v48 + 104))(v43, *MEMORY[0x277CDDDC0], v50);
    v53 = v5;
    v54 = v25;
    v55 = v29;
    v56 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v46;
    v37 = v44;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v32 + 8))(v33, v34);
    v38 = (*(v45 + 8))(v31, v37);
    MEMORY[0x28223BE20](v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
    v53 = v37;
    v54 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<Text>>, <<opaque return type of ToolbarContent.containerTint(_:)>>.0)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
    v40 = v49;
    View.toolbar<A>(content:)();
    return (*(v47 + 8))(v36, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v129 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGMd);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v3);
  v121 = &v121 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v131 = &v121 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGMd);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v12);
  v122 = &v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v139 = &v121 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA05EmptyG0V26DocumentManagerExecutables9USBFormatOAA7ForEachVySayARGArEGG_AA06InlinejI0VQo_AA31AccessibilityAttachmentModifierVGAEGMd);
  v126 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v21);
  v137 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v140 = &v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE21disableAutocorrectionyQrSbSgFQOyAA0D5FieldVyAEG_Qo_AA05EmptyE0VGMd);
  v135 = *(v26 - 8);
  v136 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v134 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v121 - v31;
  v141 = a1;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v34 = result;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v148._object = 0x8000000249BF0FC0;
  v148._countAndFlagsBits = 0xD000000000000020;
  v36._countAndFlagsBits = 1701667150;
  v36._object = 0xE400000000000000;
  v35.value._object = 0xEB00000000656C62;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v35, v34, v37, v148);

  v142 = v38;
  lazy protocol witness table accessor for type String and conformance String();
  v142._countAndFlagsBits = Text.init<A>(_:)();
  v142._object = v39;
  v143 = v40 & 1;
  v144 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21disableAutocorrectionyQrSbSgFQOyAA9TextFieldVyAA0F0VG_Qo_Md);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v43 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>, &_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v145._countAndFlagsBits = v42;
  v145._object = v43;
  swift_getOpaqueTypeConformance2();
  v133 = v32;
  v44 = Section<>.init(header:content:)();
  MEMORY[0x28223BE20](v44, v45);
  v130 = a1;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = result;
  v132 = v17;
  v123 = v8;
  v149._object = 0x8000000249BF0FF0;
  v47._countAndFlagsBits = 0x74616D726F46;
  v149._countAndFlagsBits = 0xD00000000000001DLL;
  v47._object = 0xE600000000000000;
  v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v48.value._object = 0xEB00000000656C62;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v149);

  v142 = v50;
  v142._countAndFlagsBits = Text.init<A>(_:)();
  v142._object = v51;
  v143 = v52 & 1;
  v144 = v53;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v54 = result;
  v150._object = 0x8000000249BF1080;
  v55._countAndFlagsBits = 0xD00000000000006FLL;
  v55._object = 0x8000000249BF1010;
  v150._countAndFlagsBits = 0xD00000000000002DLL;
  v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v56.value._object = 0xEB00000000656C62;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v150);

  v145 = v58;
  v145._countAndFlagsBits = Text.init<A>(_:)();
  v145._object = v59;
  v146 = v60 & 1;
  v147 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V26DocumentManagerExecutables9USBFormatOAA7ForEachVySayANGAnA4TextVGG_AA06InlinehG0VQo_AA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v62 = Section<>.init(header:footer:content:)();
  v63 = *(**(v130 + 8) + 520);
  v64 = *(v63(v62) + 16);

  if (v64)
  {
    MEMORY[0x28223BE20](v65, v66);
    result = _DocumentManagerBundle();
    if (result)
    {
      v67 = result;
      v151._object = 0x8000000249BF10B0;
      v68._countAndFlagsBits = 0x736E6F6974704FLL;
      v68._object = 0xE700000000000000;
      v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v69.value._object = 0xEB00000000656C62;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v151._countAndFlagsBits = 0xD000000000000017;
      v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v151);

      v142 = v71;
      v142._countAndFlagsBits = Text.init<A>(_:)();
      v142._object = v72;
      v143 = v73 & 1;
      v144 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAfA6ToggleVyAA4TextVGGMd);
      lazy protocol witness table accessor for type ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>> and conformance <> ForEach<A, B, C>();
      v75 = v122;
      Section<>.init(header:content:)();
      v76 = v127;
      v77 = v139;
      v78 = v75;
      v79 = v128;
      (*(v127 + 32))(v139, v78, v128);
      v80 = 0;
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v80 = 1;
  v77 = v139;
  v79 = v128;
  v76 = v127;
LABEL_8:
  v81 = (*(v76 + 56))(v77, v80, 1, v79);
  v82 = v63(v81);
  if (!*(v82 + 16) || (v83 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v84 & 1) == 0))
  {

    v105 = 1;
    v88 = v129;
    v104 = v125;
    v101 = v124;
    v89 = v133;
    goto LABEL_14;
  }

  v85 = *(*(v82 + 56) + v83);

  v88 = v129;
  v89 = v133;
  if (v85 != 1)
  {
    v105 = 1;
    v104 = v125;
    v101 = v124;
    goto LABEL_14;
  }

  v90 = v133;
  MEMORY[0x28223BE20](v86, v87);
  v91 = v130;
  result = _DocumentManagerBundle();
  if (result)
  {
    v92 = result;
    v152._object = 0x8000000249BF10D0;
    v93._countAndFlagsBits = 0x6974707972636E45;
    v152._countAndFlagsBits = 0xD00000000000001ALL;
    v93._object = 0xEA00000000006E6FLL;
    v94.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v94.value._object = 0xEB00000000656C62;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v94, v92, v95, v152);

    v142 = v96;
    v145._countAndFlagsBits = Text.init<A>(_:)();
    v145._object = v97;
    v146 = v98 & 1;
    v147 = v99;
    closure #10 in closure #1 in closure #1 in EraseContentView.body.getter(v91, &v142);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGG_AOtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGG_AOtGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v100 = v121;
    Section<>.init(header:footer:content:)();
    v101 = v124;
    v102 = v100;
    v103 = v125;
    (*(v124 + 32))(v131, v102, v125);
    v104 = v103;
    v105 = 0;
    v89 = v90;
LABEL_14:
    v106 = v131;
    (*(v101 + 56))(v131, v105, 1, v104);
    v107 = v134;
    v108 = *(v135 + 16);
    v109 = v136;
    v108(v134, v89, v136);
    v110 = v126;
    v111 = *(v126 + 16);
    v111(v137, v140, v138);
    outlined init with copy of DOCGridLayout.Spec?(v139, v132, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGSgMd);
    v112 = v123;
    outlined init with copy of DOCGridLayout.Spec?(v106, v123, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGSgMd);
    v108(v88, v107, v109);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE21disableAutocorrectionyQrSbSgFQOyAA0D5FieldVyAEG_Qo_AA05EmptyE0VG_ACyAeA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAO26DocumentManagerExecutables9USBFormatOAA7ForEachVySayAYGAyEGG_AA06InlinenM0VQo_AA31AccessibilityAttachmentModifierVGAEGACyAEA_ySayAW0R6OptionOGA11_AA6ToggleVyAEGGAOGSgACyAeA05TupleE0VyARyAA06SecureH0VyAEGAA022_EnvironmentKeyWritingX0VySSSgGG_A28_tGARyAeA14_OpacityEffectVGGSgtMd);
    v115 = v137;
    v114 = v138;
    v111(&v88[v113[12]], v137, v138);
    v116 = v132;
    outlined init with copy of DOCGridLayout.Spec?(v132, &v88[v113[16]], &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v112, &v88[v113[20]], &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGSgMd);
    outlined destroy of CharacterSet?(v106, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGSgMd);
    outlined destroy of CharacterSet?(v139, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGSgMd);
    v117 = *(v110 + 8);
    v118 = v114;
    v117(v140, v114);
    v119 = v136;
    v120 = *(v135 + 8);
    v120(v133, v136);
    outlined destroy of CharacterSet?(v112, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA11SecureFieldVyAEGAA30_EnvironmentKeyWritingModifierVySSSgGG_AQtGAIyAeA14_OpacityEffectVGGSgMd);
    outlined destroy of CharacterSet?(v116, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAjA6ToggleVyAEGGAA9EmptyViewVGSgMd);
    v117(v115, v118);
    return (v120)(v134, v119);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - v6;
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v18[1] = v9;
  v18[2] = v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for USBEraseViewModel(0);
  v13 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  MEMORY[0x24C1F9D60](v11, v10, v12, v13);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v18[4] = (*(*v10 + 656))(v14);
  v18[5] = v15;
  lazy protocol witness table accessor for type String and conformance String();
  Text.init<A>(_:)();
  TextField<>.init(_:text:prompt:)();
  v16 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>, &_s7SwiftUI9TextFieldVyAA0C0VGMd);
  MEMORY[0x24C1FA5C0](1, v3, v16);
  return (*(v4 + 8))(v7, v3);
}

uint64_t closure #3 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewV26DocumentManagerExecutables9USBFormatOAA7ForEachVySayAHGAhA4TextVGGMd);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0V26DocumentManagerExecutables9USBFormatOAA7ForEachVySayALGAlA4TextVGG_AA06InlinefE0VQo_Md);
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = type metadata accessor for USBEraseViewModel(0);
  v19 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  MEMORY[0x24C1F9D60](v16, v17, v18, v19);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v35 = v31;
  v36 = v32;
  v37 = v33;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables9USBFormatOGAfA4TextVGMd);
  lazy protocol witness table accessor for type USBFormat and conformance USBFormat();
  lazy protocol witness table accessor for type ForEach<[USBFormat], USBFormat, Text> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  v20 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<EmptyView, USBFormat, ForEach<[USBFormat], USBFormat, Text>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV26DocumentManagerExecutables9USBFormatOAA7ForEachVySayAHGAhA4TextVGGMd);
  v21 = MEMORY[0x277CDDDA0];
  View.pickerStyle<A>(_:)();
  (*(v28 + 8))(v6, v3);
  (*(v25 + 8))(v10, v7);
  v31 = v7;
  v32 = v3;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  View.accessibilityIdentifier(_:)();
  return (*(v27 + 8))(v15, v22);
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in EraseContentView.body.getter(uint64_t a1)
{
  (*(**(a1 + 8) + 472))();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables9USBFormatOGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [USBFormat] and conformance [A], &_sSay26DocumentManagerExecutables9USBFormatOGMd);
  lazy protocol witness table accessor for type USBFormat and conformance USBFormat();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  USBFormat.localizedDescription.getter(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t closure #6 in closure #1 in closure #1 in EraseContentView.body.getter(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 520))();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_5:
    v10[0] = v4;
    specialized MutableCollection<>.sort(by:)(v10);

    v10[9] = v10[0];
    swift_getKeyPath();
    v6 = swift_allocObject();
    v7 = *(a1 + 48);
    *(v6 + 48) = *(a1 + 32);
    *(v6 + 64) = v7;
    *(v6 + 80) = *(a1 + 64);
    v8 = *(a1 + 16);
    *(v6 + 16) = *a1;
    *(v6 + 32) = v8;
    outlined init with copy of EraseContentView(a1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables15USBFormatOptionOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [USBFormatOption] and conformance [A], &_sSay26DocumentManagerExecutables15USBFormatOptionOGMd);
    lazy protocol witness table accessor for type USBFormatOption and conformance USBFormatOption();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
    return ForEach<>.init(_:id:content:)();
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables15USBFormatOptionO_Tt1g5(v3, 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(v10, v4 + 32, v3, v2);

  outlined consume of Set<UITouch>.Iterator._Variant();
  if (v5 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #6 in closure #1 in closure #1 in EraseContentView.body.getter(char *a1, uint64_t a2)
{
  v3 = *a1;
  v15[9] = USBFormatOption.localizedDescription.getter(*a1);
  v15[10] = v4;
  type metadata accessor for MainActor();
  outlined init with copy of EraseContentView(a2, v15);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 32);
  *(v6 + 80) = v8;
  *(v6 + 96) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v9;
  *(v6 + 104) = v3;
  outlined init with copy of EraseContentView(a2, v15);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  v12 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 32);
  *(v11 + 80) = v12;
  *(v11 + 96) = *(a2 + 64);
  v13 = *(a2 + 16);
  *(v11 + 32) = *a2;
  *(v11 + 48) = v13;
  *(v11 + 104) = v3;
  Binding.init(get:set:)();
  lazy protocol witness table accessor for type String and conformance String();
  return Toggle<>.init<A>(_:isOn:)();
}

uint64_t closure #1 in closure #2 in closure #6 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, _BYTE *a3@<X8>)
{
  v5 = (*(**(a1 + 8) + 520))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + v6);
  }

  else
  {

    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t closure #2 in closure #2 in closure #6 in closure #1 in closure #1 in EraseContentView.body.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a1;
  v7 = *(a4 + 8);
  v8 = (*(*v7 + 536))(v15);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a5, isUniquelyReferenced_nonNull_native);
  *v10 = v14;

  v8(v15, 0);
  if (a5 != 1)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6 & 1 | ((v13 & 1) == 0))
    {
      return result;
    }

    return (*(*v7 + 336))(0, 0xE000000000000000);
  }

  if ((v6 & 1) == 0)
  {
    return (*(*v7 + 336))(0, 0xE000000000000000);
  }

  return result;
}

id closure #8 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11SecureFieldVyAA4TextVGMd);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v75 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
  MEMORY[0x28223BE20](v86, v11);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v79 = &v75 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v76 = &v75 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v78 = &v75 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v87 = &v75 - v28;
  v29 = LocalizedStringKey.init(stringLiteral:)();
  v84 = v30;
  v85 = v29;
  v82 = v31;
  v83 = v32;
  v33 = *a1;
  v34 = a1[1];
  v35 = type metadata accessor for USBEraseViewModel(0);
  v36 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  MEMORY[0x24C1F9D60](v33, v34, v35, v36);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  result = _DocumentManagerBundle();
  if (result)
  {
    v38 = result;
    v39.value._object = 0xEB00000000656C62;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v91._object = 0x8000000249BF1150;
    v40._countAndFlagsBits = 0x64726F7773736150;
    v40._object = 0xE800000000000000;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v91._countAndFlagsBits = 0xD000000000000026;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v91);

    v90 = v42;
    v75 = lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    SecureField<>.init(_:text:prompt:)();
    KeyPath = swift_getKeyPath();
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v47 = *(v89 + 32);
    v89 += 32;
    v47(v25, v10, v88);
    v48 = v87;
    v49 = &v25[*(v86 + 36)];
    *v49 = KeyPath;
    v49[1] = v44;
    v49[2] = v46;
    outlined init with take of ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>(v25, v48);
    v50 = LocalizedStringKey.init(stringLiteral:)();
    v84 = v51;
    v85 = v50;
    v83 = v52;
    v53 = a1[2];
    v54 = a1[3];
    v55 = type metadata accessor for ObservableString(0);
    v56 = lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type ObservableString and conformance ObservableString, type metadata accessor for ObservableString);
    MEMORY[0x24C1F9D60](v53, v54, v55, v56);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    result = _DocumentManagerBundle();
    if (result)
    {
      v57 = result;
      v92._object = 0x8000000249BF1180;
      v58._countAndFlagsBits = 0x796669726556;
      v92._countAndFlagsBits = 0xD000000000000035;
      v58._object = 0xE600000000000000;
      v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v59.value._object = 0xEB00000000656C62;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v92);

      v90 = v61;
      Text.init<A>(_:)();
      v62 = v77;
      SecureField<>.init(_:text:prompt:)();
      v63 = swift_getKeyPath();
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
      v67 = v76;
      v47(v76, v62, v88);
      v68 = (v67 + *(v86 + 36));
      *v68 = v63;
      v68[1] = v64;
      v68[2] = v66;
      v69 = v78;
      outlined init with take of ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>(v67, v78);
      v70 = v87;
      v71 = v79;
      outlined init with copy of DOCGridLayout.Spec?(v87, v79, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      v72 = v80;
      outlined init with copy of DOCGridLayout.Spec?(v69, v80, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      v73 = v81;
      outlined init with copy of DOCGridLayout.Spec?(v71, v81, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGG_AMtMd);
      outlined init with copy of DOCGridLayout.Spec?(v72, v73 + *(v74 + 48), &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      outlined destroy of CharacterSet?(v69, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      outlined destroy of CharacterSet?(v70, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      outlined destroy of CharacterSet?(v72, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
      return outlined destroy of CharacterSet?(v71, &_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id closure #10 in closure #1 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v38._object = 0x8000000249BF1110;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._object = 0x8000000249BF10F0;
    v38._countAndFlagsBits = 0xD00000000000003BLL;
    v6._countAndFlagsBits = 0xD000000000000016;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v38);

    lazy protocol witness table accessor for type String and conformance String();
    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    static Font.caption.getter();
    v13 = Text.font(_:)();
    v15 = v14;
    v17 = v16;

    outlined consume of Text.Storage(v8, v10, v12 & 1);

    static Color.red.getter();
    v18 = Text.foregroundStyle<A>(_:)();
    v20 = v19;
    v36 = v21;
    v23 = v22;
    outlined consume of Text.Storage(v13, v15, v17 & 1);

    v25 = *(**(a1 + 24) + 88);
    v26 = (v25)(v24);
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v30 = 0.0;
    if (v29)
    {
      v31 = (*(**(a1 + 8) + 328))(result);
      v33 = v32;
      if (v31 == v25() && v33 == v34)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = 1.0;
        }
      }
    }

    *a2 = v18;
    *(a2 + 8) = v20;
    *(a2 + 16) = v36 & 1;
    *(a2 + 24) = v23;
    *(a2 + 32) = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t View.hidden(_:)(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  a4.n128_u64[0] = 1.0;
  if (a1)
  {
    a4.n128_f64[0] = 0.0;
  }

  return MEMORY[0x282133218](a2, a3, a4);
}

uint64_t closure #2 in closure #1 in EraseContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA4TextVGG_AA0C7ContentPAAE13containerTintyQrAA5ColorVSgFQOyACyytAA4ViewPAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA08ModifiedG0VyAYyAhA32_EnvironmentKeyTransformModifierVySbGGAA01_pq7WritingS0VyAOGG_Qo_G_Qo_tMd);
  MEMORY[0x28223BE20](v33, v3);
  v32 = &v27 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA15ModifiedContentVyAMyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_mn7WritingP0VyAA5ColorVSgGG_Qo_GMd);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v27 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ToolbarContentPAAE13containerTintyQrAA5ColorVSgFQOyAA0C4ItemVyytAA4ViewPAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA08ModifiedD0VyASyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_pq7WritingS0VyAGGG_Qo_G_Qo_Md);
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA4TextVGGMd);
  v14 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v15);
  v17 = &v27 - v16;
  static ToolbarItemPlacement.cancellationAction.getter();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.destructiveAction.getter();
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_kl7WritingN0VyAA5ColorVSgGG_Qo_Md);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_gh7WritingJ0VyAA5ColorVSgGGMd);
  v19 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v37 = v18;
  v38 = v19;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  static Color.red.getter();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type ToolbarItem<(), <<opaque return type of View.fontWeight(_:)>>.0> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA15ModifiedContentVyAMyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_mn7WritingP0VyAA5ColorVSgGG_Qo_GMd);
  v20 = v29;
  ToolbarContent.containerTint(_:)();

  (*(v31 + 8))(v7, v20);
  v21 = v32;
  v22 = *(v33 + 48);
  v23 = v28;
  (*(v14 + 16))(v32, v17, v28);
  v24 = &v21[v22];
  v25 = v30;
  (*(v8 + 16))(v24, v11, v30);
  TupleToolbarContent.init(_:)();
  (*(v8 + 8))(v11, v25);
  return (*(v14 + 8))(v17, v23);
}

id closure #1 in closure #2 in closure #1 in EraseContentView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17[-v4 - 8];
  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v19._object = 0x8000000249BF0FA0;
    v8._countAndFlagsBits = 0x6C65636E6143;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xE600000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000013;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v19);

    v18 = v11;
    static ButtonRole.cancel.getter();
    v12 = type metadata accessor for ButtonRole();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    v13 = swift_allocObject();
    v14 = *(a1 + 48);
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = v14;
    *(v13 + 80) = *(a1 + 64);
    v15 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v15;
    outlined init with copy of EraseContentView(a1, v17);
    lazy protocol witness table accessor for type String and conformance String();
    return Button<>.init<A>(_:role:action:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #2 in closure #1 in EraseContentView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_gh7WritingJ0VyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v8 - v2;
  EraseContentView.eraseButton.getter(&v8 - v2);
  v4 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v6 = &v3[*(v0 + 36)];
  *v6 = KeyPath;
  v6[1] = v4;
  static Font.Weight.semibold.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  return outlined destroy of CharacterSet?(v3, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_gh7WritingJ0VyAA5ColorVSgGGMd);
}

uint64_t EraseContentView.eraseButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v42[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42[-v11 - 8];
  static ButtonRole.destructive.getter();
  v13 = type metadata accessor for ButtonRole();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = swift_allocObject();
  v15 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v2 + 64);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  outlined init with copy of EraseContentView(v2, v42);
  v17 = Button.init(role:action:label:)();
  v18 = *(v2 + 8);
  v19 = (*(*v18 + 520))(v17);
  if (!*(v19 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v21 & 1) == 0))
  {
LABEL_10:

    goto LABEL_11;
  }

  v22 = *(*(v19 + 56) + v20);

  if (v22)
  {
    v24 = (*v18 + 328);
    v25 = *v24;
    v26 = (*v24)(v23);
    v28 = v27;

    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      v35 = 1;
      goto LABEL_12;
    }

    v31 = v25(v29);
    v33 = v32;
    if (v31 != (*(**(v2 + 24) + 88))() || v33 != v34)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = v40 ^ 1;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:
  v35 = 0;
LABEL_12:
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35 & 1;
  (*(v9 + 32))(a1, v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v39 = (a1 + *(result + 36));
  *v39 = KeyPath;
  v39[1] = partial apply for closure #1 in View.disabled(_:);
  v39[2] = v37;
  return result;
}

uint64_t closure #1 in EraseContentView.eraseButton.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(*v2 + 280))();
  if (v3 == 2)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    strcpy(v40, ", encrypted: ");
    HIWORD(v40[1]) = -4864;
    v6 = (v3 & 1) == 0;
    if (v3)
    {
      v7 = 28271;
    }

    else
    {
      v7 = 6710895;
    }

    if (v6)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    MEMORY[0x24C1FAEA0](v7, v8);

    v4 = v40[0];
    v5 = v40[1];
  }

  v9 = (*(*v2 + 376))();
  v10 = 0xE000000000000000;
  if (v9 == 2)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    _StringGuts.grow(_:)(19);

    v40[0] = 0xD000000000000011;
    v40[1] = 0x8000000249BF0F40;
    if (v12)
    {
      v13 = 28271;
    }

    else
    {
      v13 = 6710895;
    }

    if (v12)
    {
      v14 = 0xE200000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    MEMORY[0x24C1FAEA0](v13, v14);

    v11 = v40[0];
    v10 = v40[1];
  }

  v15 = *(a1 + 48);
  v16 = *(v15 + 16);
  v17 = v15 + 40;
  v18 = v16 + 1;
  while (--v18)
  {
    v19 = v17 + 16;
    v20 = *(v17 - 8);

    v20(v40, v21);

    v17 = v19;
    if ((v40[0] & 1) == 0)
    {
    }
  }

  v39 = v11;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.UI);
  outlined init with copy of EraseContentView(a1, v40);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  outlined destroy of EraseContentView(a1);

  if (os_log_type_enabled(v24, v25))
  {
    v38 = v4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v26 = 136315906;
    v28 = (*(*v2 + 664))();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v32 = (*(*v2 + 232))(v31);
    v33 = USBFormat.localizedDescription.getter(v32);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v40);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v5, v40);

    *(v26 + 24) = v36;
    *(v26 + 32) = 2080;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v10, v40);

    *(v26 + 34) = v37;
    _os_log_impl(&dword_2493AC000, v24, v25, "Erasing using name %s, format %s%s%s", v26, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v27, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  else
  {
  }

  return (*(a1 + 56))();
}

id closure #2 in EraseContentView.eraseButton.getter@<X0>(uint64_t a1@<X8>)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v10._object = 0x8000000249BF0F20;
    v4._countAndFlagsBits = 0x6573617245;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v4._object = 0xE500000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000012;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v10);

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance EraseContentView@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0R5FieldVyATG_Qo_AA05EmptyC0VG_ARyAtA08ModifiedG0VyAcAE11pickerStyleyQrqd__AA06PickerY0Rd__lFQOyAA0Z0VyA0_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA10_GA10_ATGG_AA06InlinezY0VQo_AA31AccessibilityAttachmentModifierVGATGARyATA12_ySayA8_15USBFormatOptionOGA24_AA6ToggleVyATGGA0_GSgARyAtPyA3_yAA06SecureU0VyATGAA30_EnvironmentKeyWritingModifierVySSSgGG_A39_tGA3_yAtA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0pfG0VyAA0fN0VyytAA6ButtonVyATGG_AaFPAAE13containerTintyQrAA5ColorVSgFQOyA53_yytAcAE10fontWeightyQrAA4FontV6WeightVSgFQOyA3_yA3_yA56_AA32_EnvironmentKeyTransformModifierVySbGGA36_yA62_GG_Qo_G_Qo_tGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0N5FieldVyAQG_Qo_AA05EmptyC0VG_AOyAqA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerV0Rd__lFQOyAA0W0VyAY26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA7_GA7_AQGG_AA06InlinewV0VQo_AA31AccessibilityAttachmentModifierVGAQGAOyAQA9_ySayA5_15USBFormatOptionOGA21_AA6ToggleVyAQGGAYGSgAOyAqMyA0_yAA06SecureQ0VyAQGAA30_EnvironmentKeyWritingModifierVySSSgGG_A36_tGA0_yAqA14_OpacityEffectVGGSgtGG_SSQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4FormVyAA05TupleC0VyAA7SectionVyAA4TextVAcAE21disableAutocorrectionyQrSbSgFQOyAA0I5FieldVyALG_Qo_AA05EmptyC0VG_AJyAlA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAT26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA2_GA2_ALGG_AA06InlinerQ0VQo_AA31AccessibilityAttachmentModifierVGALGAJyALA4_ySayA0_0V6OptionOGA16_AA6ToggleVyALGGATGSgAJyAlHyAWyAA06SecureL0VyALGAA30_EnvironmentKeyWritingModifierVySSSgGG_A31_tGAWyAlA14_OpacityEffectVGGSgtGG_SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Form<TupleView<(Section<Text, <<opaque return type of View.disableAutocorrection(_:)>>.0, EmptyView>, Section<Text, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, Text>, Section<Text, ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>>, EmptyView>?, Section<Text, TupleView<(ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>)>, ModifiedContent<Text, _OpacityEffect>>?)>> and conformance Form<A>, &_s7SwiftUI4FormVyAA9TupleViewVyAA7SectionVyAA4TextVAA0E0PAAE21disableAutocorrectionyQrSbSgFQOyAA0G5FieldVyAIG_Qo_AA05EmptyE0VG_AGyAiA15ModifiedContentVyAkAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAS26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA1_GA1_AIGG_AA06InlinepO0VQo_AA31AccessibilityAttachmentModifierVGAIGAGyAIA3_ySayA_0T6OptionOGA15_AA6ToggleVyAIGGASGSgAGyAiEyAVyAA06SecureJ0VyAIGAA022_EnvironmentKeyWritingZ0VySSSgGG_A30_tGAVyAiA14_OpacityEffectVGGSgtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<Text>>, <<opaque return type of ToolbarContent.containerTint(_:)>>.0)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA4TextVGG_AA0dE0PAAE13containerTintyQrAA5ColorVSgFQOyAEyytAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA08ModifiedE0VyA_yAjA32_EnvironmentKeyTransformModifierVySbGGAA01_qr7WritingT0VyAQGG_Qo_G_Qo_tGMd);
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGMd) + 36);
  *v3 = v2;
  *(v3 + 8) = xmmword_249BB3FB0;
  *(v3 + 24) = xmmword_249BB3FB0;
  *(v3 + 40) = 0;
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v8 = Color.init(uiColor:)();
  v9 = static SafeAreaRegions.all.getter();
  v10 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyA65_AA30_SafeAreaRegionsIgnoringLayoutVGGGMd);
  v12 = a1 + *(result + 36);
  *v12 = v8;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v4;
  *(v12 + 32) = v6;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_101:
    v6 = *v83;
    if (!*v83)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v76 = v5;
      v77 = *(v8 + 2);
      if (v77 >= 2)
      {
        while (*a3)
        {
          v78 = *&v8[16 * v77];
          v5 = *&v8[16 * v77 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v78), (*a3 + *&v8[16 * v77 + 16]), *a3 + v5, v6);
          if (v76)
          {
          }

          if (v5 < v78)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v77 - 2 >= *(v8 + 2))
          {
            goto LABEL_128;
          }

          v79 = &v8[16 * v77];
          *v79 = v78;
          *(v79 + 1) = v5;
          result = specialized Array.remove(at:)(v77 - 1);
          v77 = *(v8 + 2);
          if (v77 <= 1)
          {
          }
        }

        goto LABEL_138;
      }
    }

LABEL_134:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = (v7 + 1);
    if (v7 + 1 < v6)
    {
      v10 = *a3;
      if (v9[*a3] && v9[*a3] != 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v12 = (v7 + 2);
      if (v7 + 2 < v6)
      {
        v9 = v6 - 1;
        while (1)
        {
          if (v12[v10] && v12[v10] != 1)
          {

            if ((v11 & 1) == 0)
            {
              v9 = v12;
              goto LABEL_22;
            }
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v14 = v11 ^ v13;
            v9 = v6 - 1;
            if (v14)
            {
              v9 = v12 - 1;
              break;
            }
          }

          if (v6 == ++v12)
          {
            v12 = v6;
            break;
          }
        }
      }

      if (v11)
      {
        if (v12 < v7)
        {
          goto LABEL_133;
        }

        if (v7 <= v9)
        {
          v71 = v12 - 1;
          v72 = v7;
          do
          {
            if (v72 != v71)
            {
              v75 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v73 = v75[v72];
              v75[v72] = v71[v75];
              v71[v75] = v73;
            }
          }

          while (++v72 < v71--);
        }
      }

      v9 = v12;
    }

LABEL_22:
    v15 = a3[1];
    if (v9 < v15)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_130;
      }

      if (&v9[-v7] < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v9 < v7)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v26 = *(v8 + 2);
    v25 = *(v8 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v27;
    v28 = &v8[16 * v26];
    *(v28 + 4) = v7;
    *(v28 + 5) = v9;
    v29 = *v83;
    if (!*v83)
    {
      goto LABEL_139;
    }

    v7 = v9;
    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v8 + 4);
          v32 = *(v8 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_62:
          if (v34)
          {
            goto LABEL_118;
          }

          v47 = &v8[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_121;
          }

          v53 = &v8[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_125;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v57 = &v8[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_76:
        if (v52)
        {
          goto LABEL_120;
        }

        v60 = &v8[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_123;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_83:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v69 = *&v8[16 * v68 + 32];
        v6 = *&v8[16 * v30 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v69), (*a3 + *&v8[16 * v30 + 32]), &v6[*a3], v29);
        if (v5)
        {
        }

        if (v6 < v69)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v68 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v70 = &v8[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v6;
        result = specialized Array.remove(at:)(v30);
        v27 = *(v8 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v8[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_116;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_117;
      }

      v42 = &v8[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_119;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_122;
      }

      if (v46 >= v38)
      {
        v64 = &v8[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_126;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  v16 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_131;
  }

  if (v16 >= v15)
  {
    v16 = a3[1];
  }

  if (v16 < v7)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v9 == v16)
  {
    goto LABEL_42;
  }

  v80 = v5;
  v81 = v7;
  v6 = *a3;
  v17 = v7 - v9;
  v18 = &v9[*a3];
  v84 = v16;
LABEL_32:
  v19 = v9;
  v20 = v9[v6];
  v21 = v18;
  v22 = v17;
  while (1)
  {
    if (v20 > 1u)
    {

      if (!v6)
      {
        break;
      }

      goto LABEL_38;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v6)
    {
      break;
    }

LABEL_38:
    v20 = *v21;
    *v21 = *(v21 - 1);
    *--v21 = v20;
    if (__CFADD__(v22++, 1))
    {
LABEL_31:
      v9 = v19 + 1;
      --v17;
      ++v18;
      if (v19 + 1 == v84)
      {
        v9 = v84;
        v5 = v80;
        v7 = v81;
        goto LABEL_42;
      }

      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        --v5;
        v15 = v10;
        while (1)
        {
          v17 = *--v15;
          v16 = v17;
          if (v17)
          {
            if (v16 != 1)
            {
              break;
            }
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_38;
          }

          if ((v5 + 1) < v10 || v5 >= v10)
          {
            *v5 = *v15;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_45;
          }
        }

LABEL_38:
        v19 = v6 - 1;
        if (v5 + 1 != v6)
        {
          *v5 = *v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v19 > v7);
      v6 = v19;
      if (v19 == v4)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

LABEL_45:
    if (v6 != v4)
    {
LABEL_47:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (!*v6 || *v6 == 1)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          goto LABEL_14;
        }

        v12 = v4 + 1;
        v13 = v4;
        v14 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v12)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

LABEL_14:
      v14 = v6 + 1;
      v13 = v6;
      if (v7 >= v6 && v7 < v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_21:
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  if (v6 >= v10)
  {
    goto LABEL_47;
  }

  return 1;
}

uint64_t specialized USBFormat.init(skType:)(uint64_t a1, unint64_t a2)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

  if (a1 == 0xD000000000000018 && 0x8000000249BE8640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000017 && 0x8000000249BE8620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v11 == a2)
  {

LABEL_27:

    return 2;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_27;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v13 == a2)
  {

LABEL_32:

    return 3;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_32;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v21);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v16, v17, "Using an unexpected file system type %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  else
  {
  }

  return 4;
}

uint64_t lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t specialized Sequence.filter(_:)(uint64_t result)
{
  v2 = v1;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

    v8 = *(v5 + v3);
    result = specialized Set._Variant.insert(_:)(&v12, v8);
    ++v3;
    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v6;
      v11 = v2;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v13;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v6 = v13;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + v10 + 32) = v8;
      v3 = v7;
      v2 = v11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void specialized DOCEraseViewController.init(coder:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - v4;
  v6 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__viewModel);
  type metadata accessor for USBEraseViewModel(0);
  swift_allocObject();
  USBEraseViewModel.init()();
  lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type USBEraseViewModel and conformance USBEraseViewModel, type metadata accessor for USBEraseViewModel);
  *v6 = ObservedObject.init(wrappedValue:)();
  v6[1] = v7;
  v8 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController__confirmPassword);
  type metadata accessor for ObservableString(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables16ObservableString__value;
  v14 = 0;
  v15 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v2 + 32))(v9 + v10, v5, v1);
  v13[1] = v9;
  State.init(wrappedValue:)();
  v11 = v15;
  *v8 = v14;
  v8[1] = v11;
  v12 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEraseViewController_alertPresenter);
  *v12 = closure #1 in variable initialization expression of DOCEraseViewController.alertPresenter;
  v12[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized USBFormat.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USBFormat.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized USBFormatOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USBFormatOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v53 = &v41 - v11;
  v42 = v12;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v41 - v16;
  if (MEMORY[0x24C1FB170](v15))
  {
    type metadata accessor for _SetStorage();
    v18 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v46 = MEMORY[0x24C1FB1C0](v5, a2);
  if (!v46)
  {
    return v18;
  }

  v19 = 0;
  v51 = (v6 + 16);
  v52 = v18 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v17;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v21 = *(v6 + 16);
      v21(v17, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), a2);
      v22 = __OFADD__(v19, 1);
      v23 = v19 + 1;
      if (v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v21 = *v51;
      (*v51)(v17, &v54, a2);
      swift_unknownObjectRelease();
      v22 = __OFADD__(v19, 1);
      v23 = v19 + 1;
      if (v22)
      {
LABEL_20:
        __break(1u);
        return v18;
      }
    }

    v49 = v23;
    v47 = *(v6 + 32);
    v47(v53, v17, a2);
    v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v25 = v18;
    v26 = -1 << *(v18 + 32);
    v27 = v24 & ~v26;
    v28 = v27 >> 6;
    v29 = *(v52 + 8 * (v27 >> 6));
    v30 = 1 << v27;
    v31 = *(v6 + 72);
    if (((1 << v27) & v29) != 0)
    {
      v32 = ~v26;
      do
      {
        v21(v8, (*(v25 + 48) + v31 * v27), a2);
        v33 = a3;
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v50;
        (*v50)(v8, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v33;
          v6 = v43;
          v5 = v44;
          v18 = v25;
          goto LABEL_7;
        }

        v27 = (v27 + 1) & v32;
        v28 = v27 >> 6;
        v29 = *(v52 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        a3 = v33;
      }

      while (((1 << v27) & v29) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v28) = v30 | v29;
    v37 = *(v25 + 48) + v31 * v27;
    v18 = v25;
    result = (v47)(v37, v36, a2);
    v39 = *(v25 + 16);
    v22 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v22)
    {
      break;
    }

    *(v25 + 16) = v40;
LABEL_7:
    v17 = v45;
    v19 = v49;
    if (v49 == v46)
    {
      return v18;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized USBEraseViewModel.init(fileSystems:)(uint64_t a1)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy26DocumentManagerExecutables15USBFormatOptionOSbGGMd);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay26DocumentManagerExecutables9USBFormatOGGMd);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v53 = &v45 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v8);
  v50 = &v45 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables9USBFormatOGMd);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v47 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v45 - v21;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__name;
  v60 = 0;
  v61 = 0xE000000000000000;
  Published.init(initialValue:)();
  v46 = *(v19 + 32);
  v46(v1 + v23, v22, v18);
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__selectedFormat;
  LOBYTE(v60) = 3;
  Published.init(initialValue:)();
  (*(v14 + 32))(v1 + v24, v17, v13);
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__encrypted;
  LOBYTE(v60) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  Published.init(initialValue:)();
  v26 = *(v48 + 32);
  v27 = v49;
  v26(v1 + v25, v12, v49);
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__password;
  v60 = 0;
  v61 = 0xE000000000000000;
  Published.init(initialValue:)();
  v46(v1 + v28, v22, v47);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__caseSensitive;
  LOBYTE(v60) = 2;
  Published.init(initialValue:)();
  v26(v1 + v29, v12, v27);
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__isAESHardwareDisk;
  LOBYTE(v60) = 0;
  v31 = v50;
  Published.init(initialValue:)();
  (*(v51 + 32))(v1 + v30, v31, v52);
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingFormats;
  v33 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables9USBFormatOGMd);
  v34 = v53;
  Published.init(initialValue:)();
  (*(v54 + 32))(v1 + v32, v34, v55);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel__showingOptions;
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy26DocumentManagerExecutables15USBFormatOptionOSbGMd);
  v36 = v56;
  Published.init(initialValue:)();
  (*(v57 + 32))(v1 + v35, v36, v58);
  v37 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_originalName);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_supportedFormatsAndOptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatO_SDyAC0G6OptionOSbGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08D0;
  *(inited + 32) = 3;
  *(inited + 40) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(&outlined read-only object #0 of USBEraseViewModel.init(fileSystems:));
  *(inited + 48) = 2;
  *(inited + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(&outlined read-only object #1 of USBEraseViewModel.init(fileSystems:));
  *(inited + 64) = 1;
  *(inited + 72) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  *(inited + 80) = 0;
  *(inited + 88) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15USBFormatOptionO_SbTt0g5Tf4g_n(v33);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SDyAC0F6OptionOSbGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables9USBFormatO_SDyAA0D6OptionOSbGtMd);
  swift_arrayDestroy();
  *(v1 + v38) = v40;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_viableFormats) = &outlined read-only object #2 of USBEraseViewModel.init(fileSystems:);
  v41 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_optionsForFormat;
  *(v1 + v41) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SDyAC0F6OptionOSbGTt0g5Tf4g_n(v33);
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables17USBEraseViewModel_followOnFormats;
  v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables9USBFormatO_SayAEGTt0g5Tf4g_n(&outlined read-only object #7 of USBEraseViewModel.init(fileSystems:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables9USBFormatO_SayACGtMd);
  swift_arrayDestroy();
  *(v1 + v42) = v43;
  (*(*v1 + 680))(v59);
  return v1;
}

unint64_t lazy protocol witness table accessor for type USBFormat and conformance USBFormat()
{
  result = lazy protocol witness table cache variable for type USBFormat and conformance USBFormat;
  if (!lazy protocol witness table cache variable for type USBFormat and conformance USBFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USBFormat and conformance USBFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type USBFormat and conformance USBFormat;
  if (!lazy protocol witness table cache variable for type USBFormat and conformance USBFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USBFormat and conformance USBFormat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USBFormatOption and conformance USBFormatOption()
{
  result = lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption;
  if (!lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption;
  if (!lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USBFormatOption and conformance USBFormatOption);
  }

  return result;
}

void type metadata completion function for ObservableString()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<String>);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for USBEraseViewModel()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<String>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<USBFormat>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool?>(319, &lazy cache variable for type metadata for Published<Bool?>, &_sSbSgMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Bool>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Bool?>(319, &lazy cache variable for type metadata for Published<[USBFormat]>, &_sSay26DocumentManagerExecutables9USBFormatOGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<Bool?>(319, &lazy cache variable for type metadata for Published<[USBFormatOption : Bool]>, &_sSDy26DocumentManagerExecutables15USBFormatOptionOSbGMd);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of USBEraseViewModel.update(for:)()
{
  return (*(*v0 + 680))();
}

{
  return (*(*v0 + 688))();
}

void type metadata accessor for Published<String>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<Bool?>(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for EraseContentView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for EraseContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyA65_AA30_SafeAreaRegionsIgnoringLayoutVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA5ColorVAA30_SafeAreaRegionsIgnoringLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleH0VyAA7SectionVyAA4TextVAiAE21disableAutocorrectionyQrSbSgFQOyAA0U5FieldVyAZG_Qo_AA05EmptyH0VG_AXyAzCyAiAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA6_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AZGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAZGAXyAZA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAZGGA6_GSgAXyAzVyACyAA06SecureX0VyAZGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGACyAzA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0skD0VyAA0kQ0VyytAA6ButtonVyAZGG_AaLPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAiAE10fontWeightyQrAA4FontV6WeightVSgFQOyACyACyA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE29navigationBarTitleDisplayModeyQrAA0cL4ItemV0mnO0OFQOyAgAE0kM0yQrqd__SyRd__lFQOyAA4FormVyAA05TupleF0VyAA7SectionVyAA4TextVAgAE21disableAutocorrectionyQrSbSgFQOyAA0T5FieldVyAXG_Qo_AA05EmptyF0VG_AVyAxA08ModifiedJ0VyAgAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA4_26DocumentManagerExecutables9USBFormatOAA7ForEachVySayA14_GA14_AXGG_AA17InlinePickerStyleVQo_AA31AccessibilityAttachmentModifierVGAXGAVyAXA16_ySayA12_15USBFormatOptionOGA28_AA6ToggleVyAXGGA4_GSgAVyAxTyA7_yAA06SecureW0VyAXGAA30_EnvironmentKeyWritingModifierVySSSgGG_A43_tGA7_yAxA14_OpacityEffectVGGSgtGG_SSQo__Qo__AA0riJ0VyAA0iP0VyytAA6ButtonVyAXGG_AaJPAAE13containerTintyQrAA5ColorVSgFQOyA57_yytAgAE10fontWeightyQrAA4FontV6WeightVSgFQOyA7_yA7_yA60_AA32_EnvironmentKeyTransformModifierVySbGGA40_yA66_GG_Qo_G_Qo_tGQo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAA01_gh7WritingJ0VyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V26DocumentManagerExecutables9USBFormatOAA7ForEachVySayANGAnA4TextVGG_AA06InlinehG0VQo_AA31AccessibilityAttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewV26DocumentManagerExecutables9USBFormatOAA7ForEachVySayAHGAhA4TextVGGMd);
    type metadata accessor for InlinePickerStyle();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Picker<EmptyView, USBFormat, ForEach<[USBFormat], USBFormat, Text>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV26DocumentManagerExecutables9USBFormatOAA7ForEachVySayAHGAhA4TextVGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type USBEraseViewModel and conformance USBEraseViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables15USBFormatOptionOGAfA6ToggleVyAA4TextVGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[USBFormatOption], USBFormatOption, Toggle<Text>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<SecureField<Text>, _EnvironmentKeyWritingModifier<String?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA11SecureFieldVyAA4TextVGAA30_EnvironmentKeyWritingModifierVySSSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_182Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

unint64_t lazy protocol witness table accessor for type ForEach<[USBFormat], USBFormat, Text> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[USBFormat], USBFormat, Text> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[USBFormat], USBFormat, Text> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay26DocumentManagerExecutables9USBFormatOGAfA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[USBFormat], USBFormat, Text> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t *DOCTransitionableContext.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCTransitionableContext.shared;
}

id static DOCTransitionableContext.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCTransitionableContext.shared;

  return v0;
}

void static DOCTransitionableContext.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCTransitionableContext.shared;
  static DOCTransitionableContext.shared = a1;
}

uint64_t (*static DOCTransitionableContext.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCTransitionableContext.shared : DOCTransitionableContext.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCTransitionableContext.shared;
  *a1 = static DOCTransitionableContext.shared;

  return v2;
}

void key path setter for static DOCTransitionableContext.shared : DOCTransitionableContext.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DOCTransitionableContext.shared;
  static DOCTransitionableContext.shared = v2;
}

uint64_t DOCTransitionableContext.beginOverriding(settings:)(void (*a1)(char *))
{
  v2 = v1;
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))() & 1;
  a1(&v8);
  v4 = v8;
  type metadata accessor for DOCTransitionableContext.SettingsTransaction();
  v5 = swift_allocObject();
  UUID.init()();
  *(v5 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_settings) = v4;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCTransitionableContext_overrideSettingTransactions;
  swift_beginAccess();
  if (*(v2 + v6) >> 62 && (result = __CocoaSet.count.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);
    swift_endAccess();

    return v5;
  }

  return result;
}

uint64_t DOCTransitionableContext.SettingsTransaction.__allocating_init(settings:)(char a1)
{
  v2 = swift_allocObject();
  UUID.init()();
  *(v2 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_settings) = a1;
  return v2;
}

uint64_t type metadata accessor for DOCTransitionableContext.SettingsTransaction()
{
  result = type metadata singleton initialization cache for DOCTransitionableContext.SettingsTransaction;
  if (!type metadata singleton initialization cache for DOCTransitionableContext.SettingsTransaction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DOCTransitionableContext.endOverriding(_:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCTransitionableContext_overrideSettingTransactions;
  swift_beginAccess();

  v2 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v0 + v1));

  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    v5 = result;
    if (result >= v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= v2)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v2, v5);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

unint64_t DOCTransitionableContext.Settings.description.getter(char a1)
{
  _StringGuts.grow(_:)(29);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v2, v3);

  return 0xD00000000000001BLL;
}

uint64_t DOCTransitionableContext.currentSettings.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCTransitionableContext_overrideSettingTransactions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x24C1FC540](0, v2);

    v5 = *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_settings);
    swift_unknownObjectRelease();
    return v5;
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(*(v2 + 32) + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_settings);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCTransitionableContext.SettingsTransaction.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCTransitionableContext.SettingsTransaction.init(settings:)(char a1)
{
  UUID.init()();
  *(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_settings) = a1;
  return v1;
}

uint64_t DOCTransitionableContext.SettingsTransaction.deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCTransitionableContext.SettingsTransaction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCTransitionableContext19SettingsTransaction_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id DOCTransitionableContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTransitionableContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for DOCTransitionableContext.SettingsTransaction()
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

id specialized static UIBezierPath.folder.getter()
{
  if ((_UISolariumEnabled() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v0 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v0 moveToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:316.3999 controlPoint1:24.1122 controlPoint2:{286.13441, 0.1874679, 304.333565, 9.03163158}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:381.7517 controlPoint1:67.199 controlPoint2:{344.164142, 58.5135791, 362.440538, 67.199}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint_controlPoint1_controlPoint2_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint_controlPoint1_controlPoint2_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:887.894 controlPoint1:69.0112 controlPoint2:{876.09282, 67.5683172, 882.048781, 67.9601687}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:905.8547 controlPoint1:74.93 controlPoint2:{894.731542, 70.3118299, 900.356709, 72.1317913}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:921.1554 controlPoint1:86.0465 controlPoint2:{911.951756, 78.1345098, 916.86827, 81.7587957}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:932.2701 controlPoint1:101.3495 controlPoint2:{925.962322, 90.9796316, 929.519239, 95.9454391}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:938.188 controlPoint1:119.3129 controlPoint2:{935.355132, 107.611112, 937.10053, 113.261178}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:939.851 controlPoint1:138.2175 controlPoint2:{939.354594, 126.344689, 939.690688, 132.304781}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:939.98 controlPoint1:146.9016 controlPoint2:{939.944937, 142.558744, 939.96725, 144.7293}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:940.0 controlPoint1:155.1027 controlPoint2:{940.0, 151.457367, 940.0, 153.279833}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:939.98 controlPoint1:? controlPoint2:?];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:939.851 controlPoint1:? controlPoint2:?];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:938.188 controlPoint1:703.88704 controlPoint2:{939.630695, 692.083093, 939.238938, 698.040003}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:932.2701 controlPoint1:721.84944 controlPoint2:{936.887688, 710.724682, 935.067926, 716.351573}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:921.1554 controlPoint1:737.15248 controlPoint2:{929.066143, 727.947514, 925.442435, 732.864776}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:905.8547 controlPoint1:748.268967 controlPoint2:{916.222938, 741.960154, 911.2579, 745.51764}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:887.894 controlPoint1:754.187758 controlPoint2:{899.594066, 751.355326, 893.944861, 753.100047}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:868.9924 controlPoint1:755.85198 controlPoint2:{880.864203, 755.354511, 874.904088, 755.690709}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:860.3105 controlPoint1:755.978997 controlPoint2:{864.652006, 755.94543, 862.481, 755.966996}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:852.0627 controlPoint1:756.0 controlPoint2:{855.728833, 756.0, 853.895967, 756.0}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint_controlPoint1_controlPoint2_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:71.00664 controlPoint1:755.85198 controlPoint2:{75.3479306, 755.94368, 73.177845, 755.910488}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:52.105 controlPoint1:754.187758 controlPoint2:{63.9071383, 755.630646, 57.9511375, 755.238836}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:34.14535 controlPoint1:748.268967 controlPoint2:{45.268397, 752.887255, 39.6423752, 751.068124}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:18.84464 controlPoint1:737.15248 controlPoint2:{28.048194, 745.06447, 23.1316843, 741.440184}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:7.729852 controlPoint1:721.84944 controlPoint2:{14.0376967, 732.219349, 10.4807588, 727.253549}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:1.811965 controlPoint1:703.88704 controlPoint2:{4.64396403, 715.588775, 2.89951013, 709.937843}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.1479972 controlPoint1:684.98251 controlPoint2:{0.645390016, 696.855188, 0.309244106, 690.894235}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.0209996 controlPoint1:676.29835 controlPoint2:{0.054561455, 680.64031, 0.0329993675, 678.469893}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.0 controlPoint1:668.02825 controlPoint2:{0.0, 671.70385, 0.0, 669.86583}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.0209996 controlPoint1:79.7006 controlPoint2:{0.0, 83.3762444, 0.0, 81.5382}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.1479972 controlPoint1:71.0175 controlPoint2:{0.0563114231, 75.3591, 0.089498295, 73.1883}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:1.811965 controlPoint1:52.113 controlPoint2:{0.369297643, 63.9168633, 0.761047937, 57.96}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:7.729852 controlPoint1:34.1496 controlPoint2:{3.11226975, 45.2743803, 4.93112296, 39.6483565}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:18.84464 controlPoint1:18.8475 controlPoint2:{10.9338592, 28.0515597, 14.5575861, 23.1352043}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:34.14535 controlPoint1:7.731 controlPoint2:{23.777012, 14.0388284, 28.7420543, 10.4813826}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:52.105 controlPoint1:1.8112 controlPoint2:{40.4050557, 4.64455047, 46.0551148, 2.89895652}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:71.00664 controlPoint1:0.148 controlPoint2:{59.1357713, 0.644494141, 65.095815, 0.3083125}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:79.68947 controlPoint1:0.02 controlPoint2:{75.3481794, 0.0545, 77.518265, 0.03275}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:87.86832 controlPoint1:0.0 controlPoint2:{84.2332756, 0.0, 86.05102, 0.0}];
    [v0 addLineToPoint_];
    [v0 closePath];
    [v0 setUsesEvenOddFillRule_];
  }

  else
  {
    v0 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v0 moveToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:124.46 controlPoint1:11.58 controlPoint2:{121.41, 11.0, 123.06, 11.0}];
    [v0 addCurveToPoint:127.42 controlPoint1:14.54 controlPoint2:{125.8, 12.14, 126.86, 13.2}];
    [v0 addCurveToPoint:128.0 controlPoint1:20.88 controlPoint2:{128.0, 15.94, 128.0, 17.58}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:127.42 controlPoint1:? controlPoint2:?];
    [v0 addCurveToPoint:124.46 controlPoint1:99.42 controlPoint2:{126.86, 97.8, 125.8, 98.86}];
    [v0 addCurveToPoint:118.12 controlPoint1:100.0 controlPoint2:{123.06, 100.0, 121.41, 100.0}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:3.54 controlPoint1:99.42 controlPoint2:{6.58, 100.0, 4.94, 100.0}];
    [v0 addCurveToPoint:0.58 controlPoint1:96.46 controlPoint2:{2.2, 98.86, 1.14, 97.8}];
    [v0 addCurveToPoint:0.0 controlPoint1:90.12 controlPoint2:{0.0, 95.06, 0.0, 93.42}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.58 controlPoint1:3.54 controlPoint2:{0.0, 6.58, 0.0, 4.94}];
    [v0 addCurveToPoint:3.54 controlPoint1:0.58 controlPoint2:{1.14, 2.2, 2.2, 1.14}];
    [v0 addCurveToPoint:9.88 controlPoint1:0.0 controlPoint2:{4.94, 0.0, 6.58, 0.0}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:36.84 controlPoint1:0.33 controlPoint2:{34.58, 0.0, 35.76, 0.0}];
    [v0 addCurveToPoint:38.35 controlPoint1:1.06 controlPoint2:{37.38, 0.49, 37.89, 0.74}];
    [v0 addCurveToPoint:41.5 controlPoint1:4.46 controlPoint2:{39.29, 1.69, 40.02, 2.61}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:46.14 controlPoint1:9.52 controlPoint2:{43.8, 7.33, 44.83, 8.62}];
    [v0 addCurveToPoint:48.26 controlPoint1:10.54 controlPoint2:{46.79, 9.96, 47.51, 10.31}];
    [v0 addCurveToPoint:54.75 controlPoint1:11.0 controlPoint2:{49.78, 11.0, 51.44, 11.0}];
    [v0 addLineToPoint_];
    [v0 closePath];
  }

  return v0;
}

id specialized static UIBezierPath.document.getter()
{
  if ((_UISolariumEnabled() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v0 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v0 moveToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:434.6275 controlPoint1:15.292 controlPoint2:{411.964117, 0.167681818, 424.987409, 5.64934848}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:655.0 controlPoint1:257.349 controlPoint2:{649.665792, 230.623584, 655.0, 243.711803}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:622.8404 controlPoint1:878.0 controlPoint2:{654.7117, 863.8846, 640.424186, 878.0}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:0.0 controlPoint1:845.832 controlPoint2:{14.111715, 877.711624, 0.0, 863.42034}];
    [v0 addLineToPoint_];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:32.1596 controlPoint1:0.0 controlPoint2:{0.288301112, 14.1154002, 14.5758536, 0.0}];
    [v0 addLineToPoint_];
  }

  else
  {
    v0 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v0 moveToPoint_];
    [v0 addCurveToPoint:190.83 controlPoint1:248.93 controlPoint2:192.0];
    [v0 addCurveToPoint:184.92 controlPoint1:254.83 controlPoint2:{189.72, 251.6, 187.6, 253.72}];
    [v0 addCurveToPoint:172.25 controlPoint1:256.0 controlPoint2:{182.12, 256.0, 178.83, 256.0}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:7.08 controlPoint1:254.83 controlPoint2:?];
    [v0 addCurveToPoint:1.17 controlPoint1:248.93 controlPoint2:{4.4, 253.72, 2.28, 251.6}];
    [v0 addCurveToPoint:0.0 controlPoint1:236.28 controlPoint2:{0.0, 246.13, 0.0, 242.85}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:1.17 controlPoint1:7.07 controlPoint2:{0.0, 13.15, 0.0, 9.87}];
    [v0 addCurveToPoint:7.08 controlPoint1:1.16 controlPoint2:{2.28, 4.4, 4.4, 2.28}];
    [v0 addCurveToPoint:19.75 controlPoint1:0.0 controlPoint2:{9.88, 0.0, 13.17, 0.0}];
    [v0 addLineToPoint_];
    [v0 addCurveToPoint:134.18 controlPoint1:10.33 controlPoint2:{123.85, 0.0, 123.85, 0.0}];
    [v0 addCurveToPoint:181.67 controlPoint1:57.82 controlPoint2:{136.57, 12.71, 179.29, 55.43}];
    [v0 addCurveToPoint:192.0 controlPoint1:82.75 controlPoint2:{192.0, 68.15, 192.0, 68.15}];
    [v0 addLineToPoint_];
  }

  [v0 closePath];
  [v0 setUsesEvenOddFillRule_];
  return v0;
}

id specialized static UIBezierPath.document_44.getter()
{
  if ((_UISolariumEnabled() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {

    return specialized static UIBezierPath.document.getter();
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v1 moveToPoint_];
    [v1 addCurveToPoint:67.6 controlPoint1:85.57 controlPoint2:68.0];
    [v1 addCurveToPoint:65.57 controlPoint1:87.6 controlPoint2:{67.22, 86.49, 66.49, 87.22}];
    [v1 addCurveToPoint:61.21 controlPoint1:88.0 controlPoint2:{64.6, 88.0, 63.47, 88.0}];
    [v1 addLineToPoint_];
    [v1 addCurveToPoint:2.43 controlPoint1:87.6 controlPoint2:?];
    [v1 addCurveToPoint:0.4 controlPoint1:85.57 controlPoint2:{1.51, 87.22, 0.78, 86.49}];
    [v1 addCurveToPoint:0.0 controlPoint1:81.22 controlPoint2:{0.0, 84.61, 0.0, 83.48}];
    [v1 addLineToPoint_];
    [v1 addCurveToPoint:0.4 controlPoint1:2.43 controlPoint2:{0.0, 4.52, 0.0, 3.39}];
    [v1 addCurveToPoint:2.43 controlPoint1:0.4 controlPoint2:{0.78, 1.51, 1.51, 0.78}];
    [v1 addCurveToPoint:6.79 controlPoint1:0.0 controlPoint2:{3.4, 0.0, 4.53, 0.0}];
    [v1 addLineToPoint_];
    [v1 addCurveToPoint:47.44 controlPoint1:3.55 controlPoint2:{43.89, 0.0, 43.89, 0.0}];
    [v1 addCurveToPoint:64.45 controlPoint1:20.62 controlPoint2:{48.26, 4.37, 63.63, 19.8}];
    [v1 addCurveToPoint:68.0 controlPoint1:29.2 controlPoint2:{68.0, 24.17, 68.0, 24.17}];
    [v1 addLineToPoint_];
    [v1 closePath];
    [v1 setUsesEvenOddFillRule_];
    return v1;
  }
}

id specialized static UIBezierPath.document_84.getter()
{
  if ((_UISolariumEnabled() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {

    return specialized static UIBezierPath.document.getter();
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v1 moveToPoint_];
    [v1 addCurveToPoint:127.23 controlPoint1:? controlPoint2:?];
    [v1 addCurveToPoint:123.36 controlPoint1:167.24 controlPoint2:{126.51, 165.11, 125.11, 166.51}];
    [v1 addCurveToPoint:115.04 controlPoint1:168.0 controlPoint2:{121.52, 168.0, 119.36, 168.0}];
    [v1 addLineToPoint_];
    [v1 addCurveToPoint:4.64 controlPoint1:167.24 controlPoint2:?];
    [v1 addCurveToPoint:0.77 controlPoint1:163.36 controlPoint2:{2.89, 166.51, 1.49, 165.11}];
    [v1 addCurveToPoint:0.0 controlPoint1:155.06 controlPoint2:{0.0, 161.52, 0.0, 159.37}];
    [v1 addLineToPoint_];
    [v1 addCurveToPoint:0.77 controlPoint1:4.64 controlPoint2:{0.0, 8.63, 0.0, 6.48}];
    [v1 addCurveToPoint:4.64 controlPoint1:0.76 controlPoint2:{1.49, 2.89, 2.89, 1.49}];
    [v1 addCurveToPoint:12.96 controlPoint1:0.0 controlPoint2:{6.49, 0.0, 8.64, 0.0}];
    [v1 addCurveToPoint:74.38 controlPoint1:0.0 controlPoint2:{12.96, 0.0, 61.39, 0.0}];
    [v1 addCurveToPoint:90.74 controlPoint1:6.78 controlPoint2:{83.97, 0.0, 83.97, 0.0}];
    [v1 addCurveToPoint:121.22 controlPoint1:37.26 controlPoint2:{92.31, 8.34, 119.66, 35.69}];
    [v1 addCurveToPoint:128.0 controlPoint1:53.62 controlPoint2:{128.0, 44.03, 128.0, 44.03}];
    [v1 addLineToPoint_];
    [v1 closePath];
    [v1 setUsesEvenOddFillRule_];
    return v1;
  }
}