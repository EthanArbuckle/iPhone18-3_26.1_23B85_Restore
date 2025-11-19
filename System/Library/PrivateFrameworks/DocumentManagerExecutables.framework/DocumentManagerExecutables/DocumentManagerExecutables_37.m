uint64_t getter of isFolder #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, void *a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *a2) + 0x800))();
    swift_beginAccess();
    *v2 = v3 & 1;
  }

  return v3 & 1;
}

uint64_t getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x780))();
    v5 = v4;
    swift_beginAccess();
    *(a1 + 16) = v3;
    *(a1 + 24) = v5;
  }

  return v3;
}

uint64_t getter of date #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    if (getter of isFolder #1 in DOCItemCollectionGridCell.updateSubtitleString()(a2, a3))
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      v4 = (*((*MEMORY[0x277D85000] & *a3) + 0x738))();
      v6 = v7;
    }

    swift_beginAccess();
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
  }

  return v4;
}

uint64_t getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x840))();
    v5 = v4;
    swift_beginAccess();
    *(a1 + 16) = v3;
    *(a1 + 24) = v5;
  }

  return v3;
}

uint64_t getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x7C0))();
    v5 = v4;
    swift_beginAccess();
    *(a1 + 16) = v3;
    *(a1 + 24) = v5;
  }

  return v3;
}

uint64_t getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x758))();
    v5 = v4;
    swift_beginAccess();
    *(a1 + 16) = v3;
    *(a1 + 24) = v5;
  }

  return v3;
}

uint64_t getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    swift_beginAccess();
    *(a1 + 16) = v2;
    *(a1 + 24) = v5;
  }

  return v2;
}

id DOCItemCollectionGridCell.updateCellTextColors(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit24UICellConfigurationStateVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for UICellConfigurationState();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v23 = v22;
  outlined init with copy of DOCGridLayout.Spec?(v21, v15, &_s5UIKit24UICellConfigurationStateVSgMd);
  v24 = *(v17 + 48);
  v25 = v24(v15, 1, v23);
  v70 = v23;
  v71 = v17;
  if (v25 == 1)
  {
    v26 = [v2 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v70;
    v27 = v24(v15, 1, v70);
    v28 = v20;
    if (v27 != 1)
    {
      v27 = outlined destroy of CharacterSet?(v15, &_s5UIKit24UICellConfigurationStateVSgMd);
    }
  }

  else
  {
    v27 = (*(v17 + 32))(v20, v15, v23);
    v28 = v20;
  }

  v29 = MEMORY[0x277D85000];
  v30 = *((*MEMORY[0x277D85000] & *v2) + 0x208);
  v31 = (v30)(v27);
  if (v31)
  {
    v32 = v31;
    v66 = (*((*v29 & *v31) + 0x670))();
  }

  else
  {
    v66 = 0;
  }

  static UIBackgroundConfiguration.listCell()();
  v72[3] = v23;
  v72[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v34 = *(v71 + 16);
  v67 = v28;
  v34(boxed_opaque_existential_1, v28, v23);
  UIBackgroundConfiguration.updated(for:)();
  v35 = v69;
  v36 = *(v68 + 8);
  v36(v7, v69);
  __swift_destroy_boxed_opaque_existential_0(v72);
  result = [v2 tintColor];
  if (result)
  {
    v38 = result;
    isa = UIBackgroundConfiguration.resolvedBackgroundColor(for:)(result).super.isa;

    v36(v11, v35);
    v40 = isa;
    v41 = [v2 tintColor];
    if (v41)
    {
      v42 = v41;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v43 = static NSObject.== infix(_:_:)();

      v44 = v70;
      v45 = v71;
      v46 = MEMORY[0x277D85000];
      if (v43)
      {
        v47 = v30();
        v48 = v66;
        if (v47)
        {
          v49 = v47;
          v50 = [objc_opt_self() whiteColor];
          (*((*v46 & *v49) + 0x678))(v50);
        }

        v51 = v30();
        if (v51)
        {
          v52 = v51;
          v53 = v44;
          v54 = &selRef_whiteColor;
LABEL_20:
          v59 = [objc_opt_self() *v54];
          (*((*v46 & *v52) + 0x690))(v59);

          v44 = v53;
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else
    {

      v44 = v70;
      v45 = v71;
      v46 = MEMORY[0x277D85000];
    }

    v55 = v30();
    v48 = v66;
    if (v55)
    {
      v56 = v55;
      v57 = [objc_opt_self() labelColor];
      (*((*v46 & *v56) + 0x678))(v57);
    }

    v58 = v30();
    if (v58)
    {
      v52 = v58;
      v53 = v44;
      v54 = &selRef_secondaryLabelColor;
      goto LABEL_20;
    }

LABEL_21:

    v60 = v30();
    if (v60)
    {
      v61 = v60;
      v62 = (*((*v46 & *v60) + 0x670))();

      if (v48)
      {
        if (v62)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
          v63 = v48;
          v64 = static NSObject.== infix(_:_:)();

          if (v64)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        if (!v62)
        {
          return (*(v45 + 8))(v67, v44);
        }
      }
    }

    else if (!v48)
    {
      return (*(v45 + 8))(v67, v44);
    }

    (*((*v46 & *v2) + 0x820))();
    v63 = v48;
LABEL_31:

    return (*(v45 + 8))(v67, v44);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateLabelsForDimming()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v3)
  {
    return;
  }

  v18 = v3;
  v4 = (*((*v2 & *v3) + 0x910))();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
  v6 = objc_opt_self();
  if (v4)
  {
    v7 = v6;
    v8 = [v6 quaternaryLabelColor];
    [v5 setTextColor_];

    v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
    v10 = [v7 quaternaryLabelColor];
    [v9 setTextColor_];

    v11 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
    if (v11)
    {
      v12 = v11;
      [v11 setAlpha_];
LABEL_8:
    }
  }

  else
  {
    v13 = v6;
    v14 = [v6 secondaryLabelColor];
    [v5 setTextColor_];

    v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
    v16 = [v13 secondaryLabelColor];
    [v15 setTextColor_];

    v17 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
    if (v17)
    {
      v12 = v17;
      [v17 setAlpha_];
      goto LABEL_8;
    }
  }
}

uint64_t DOCItemCollectionGridCell.shouldShowSelectionBackround.getter()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v4);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (((*((*v7 & *v8) + 0xB70))() & 1) == 0)
  {

LABEL_6:
    v11 = 0;
    return v11 & 1;
  }

  if ((*((*v7 & *v0) + 0x3A8))())
  {
    v10 = (*((*v7 & *v0) + 0x3C0))();
LABEL_10:
    v11 = v10;

    return v11 & 1;
  }

  v12 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v12) = UICellConfigurationState.isSelected.getter();
  v13 = (*(v2 + 8))(v6, v1);
  if ((v12 & 1) == 0)
  {
    v10 = (*((*v7 & *v9) + 0x4C0))(v13);
    goto LABEL_10;
  }

  v11 = 1;
  return v11 & 1;
}

void DOCItemCollectionGridCell.updateSelectionView()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolEffectOptions();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplaceSymbolEffect();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellConfigurationState();
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v14);
  if (v18)
  {
    v19 = *((*v17 & *v18) + 0xB70);
    v55 = v18;
    if (v19())
    {
      v53 = v2;
      v54 = v7;
      v52 = v3;
      v20 = DOCItemCollectionGridCell.shouldShowSelectionBackround.getter();
      v21 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView);
      if (v21)
      {
        [v21 setHidden_];
      }

      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView;
      v23 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView);
      if (v23)
      {
        v24 = v23;
        v25 = v8;
        v26 = [v1 _bridgedConfigurationState];
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = v25;
        DOCItemCollectionCell.BackgroundStateView.configurationState.setter(v16);

        v27 = *(v1 + v22);
        if (v27)
        {
          [v27 setHidden_];
        }
      }

      if (_UISolariumEnabled())
      {
        v28 = *(v1 + v22);
        if (v28)
        {
          [v28 _setCornerRadius_];
        }
      }

      [v1 setNeedsLayout];
      v29 = _UISolariumEnabled();
      v30 = v54;
      if (v29)
      {
        v31 = DOCItemCollectionGridCell.selectionView.getter();
        [v31 alpha];
        v33 = v32;

        if (v33 > 0.0)
        {
          v34 = DOCItemCollectionGridCell.effectiveSelectionImages.getter();
          v35 = v34;
          v37 = v36;
          if (v34)
          {
            v38 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionView);
            v39 = v8;
            v40 = v34;
            v41 = v38;
            MEMORY[0x24C1FA900]();
            static SymbolEffectOptions.default.getter();
            lazy protocol witness table accessor for type ReplaceSymbolEffect and conformance ReplaceSymbolEffect(&lazy protocol witness table cache variable for type ReplaceSymbolEffect and conformance ReplaceSymbolEffect, MEMORY[0x277CE1598]);
            UIImageView.setSymbolImage<A>(_:contentTransition:options:completion:)();

            (*(v52 + 8))(v6, v53);
            (*(v39 + 8))(v11, v30);
          }

          v42 = DOCItemCollectionGridCell.selectionShadowView.getter();
          [v42 setImage_];
        }
      }

      else if ((*((*v17 & *v1) + 0xE8))())
      {
        v45 = v44;
        ObjectType = swift_getObjectType();
        LOBYTE(v45) = (*(v45 + 48))(v1, ObjectType, v45);
        swift_unknownObjectRelease();
        if (v45)
        {
          v47 = DOCItemCollectionGridCell.selectionView.getter();
          v48 = DOCItemCollectionGridCell.selectionShadowView.getter();
          v49 = DOCItemCollectionGridCell.effectiveSelectionImages.getter();
          v51 = v50;
          [v47 setImage_];

          [v48 setImage_];
        }
      }
    }

    else
    {
      v43 = v55;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateHighlighting()()
{
  v1 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v3)
  {
    if ([v0 isHighlighted] && *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics + 9) == 1)
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setDrawMode_];
    }

    else
    {
      if ((*((*v1 & *v3) + 0x930))())
      {
        v2 = 3;
      }

      else
      {
        v2 = 0;
      }

      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setDrawMode_];
    }
  }
}

uint64_t DOCItemCollectionGridCell.isLayoutBackgroundStateViewNeeded()()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v4);
  if (v7)
  {

    v8 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v9 = 1;
    }

    else
    {
      v9 = UICellConfigurationState.isEditing.getter();
    }

    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v5);
  if (result)
  {

    v9 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      v16 = UICellConfigurationState.isEditing.getter();
      result = (*(v3 + 8))(v7, v2);
      if ((v16 & 1) == 0)
      {
        return result;
      }
    }

    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded();
    *(v12 + 24) = v11;
    aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_157;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateCircularProgressViewIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v4 = v3();
  if (!v4)
  {
    return;
  }

  v50 = v4;
  if (((*((*v2 & *v4) + 0x8D0))() & 1) == 0)
  {
    v30 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView;
    v31 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView);
    if (v31)
    {
      v32 = v31;
      [v32 removeFromSuperview];

      v33 = *(v1 + v30);
      *(v1 + v30) = 0;
    }

    else
    {
      v33 = v50;
    }

    v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder) = 0;

    v35 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile) = 0;
    goto LABEL_34;
  }

  v5 = v3();
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView))
  {
LABEL_21:

    goto LABEL_22;
  }

  v7 = v5;
  if (((*((*v2 & *v5) + 0x8D0))() & 1) == 0)
  {
    v5 = v7;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = (*((*v2 & *v7) + 0x580))();

  if (v9)
  {
    v10 = [objc_allocWithZone(DOCDownloadProgressView) init];
    v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    v12 = v10;
    [v11 addSubview_];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = _UISolariumEnabled();
    v14 = v13 == 0;
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v17 = &selRef_bottomAnchor;
    if (!v14)
    {
      v17 = &selRef_centerYAnchor;
    }

    v18 = [v15 *v17];
    v19 = [v16 centerYAnchor];
    v49 = [v18 constraintEqualToAnchor:v19 constant:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolderConstant)];

    v20 = [v12 centerYAnchor];
    v21 = [v11 centerYAnchor];
    v48 = [v20 constraintEqualToAnchor_];

    [v49 setActive_];
    [v48 setActive_];
    v22 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249BA0290;
    v24 = [v12 centerXAnchor];

    v25 = [v11 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v23 + 32) = v26;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints_];

    v28 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder) = v49;

    v29 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile) = v48;

    v5 = *(v1 + v6);
    *(v1 + v6) = v12;
    goto LABEL_21;
  }

LABEL_22:
  v36 = (*((*v2 & *v50) + 0x568))();
  if ((*((*v2 & *v50) + 0x580))() & 1) != 0 && ((v37 = *((*v2 & *v50) + 0x3D0), (v38 = v37()) != 0) && (v39 = [v38 isDownloading], swift_unknownObjectRelease(), (v39) || (v40 = v37()) != 0 && (v41 = objc_msgSend(v40, sel_isExternalDownloadPlaceholder), swift_unknownObjectRelease(), (v41)))
  {
    v42 = 1;
  }

  else
  {
    v43 = (*((*v2 & *v50) + 0x3D0))();
    if (v43)
    {
      v42 = [v43 isCopying];
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
    }
  }

  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView) setObservedProgress_];
  [*(v1 + v44) setCanShowStopButton_];
  if (!(*((*v2 & *v50) + 0x3D0))() || (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v51), swift_unknownObjectRelease(), v51[0] == 1))
  {

    v35 = v50;
LABEL_34:

    return;
  }

  outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
  v46 = *(v1 + v44);
  if (v46)
  {
    v47 = v46;
    [v47 setCanShowStopButton_];
  }
}

void *DOCItemCollectionGridCell.needToInstantiateHorizontalProgressView.getter()
{
  if (os_variant_has_internal_content())
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0);
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      return (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_horizontalProgressView) == 0);
    }
  }

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  result = v6();
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_horizontalProgressView))
    {
    }

    else
    {
      v7 = result;
      if (os_variant_has_internal_content() && (v8 = [objc_opt_self() standardUserDefaults], v9 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v10 = objc_msgSend(v8, sel_BOOLForKey_, v9), v8, v9, (v10 & 1) != 0) || (v11 = v6()) != 0 && (v12 = v11, v13 = (*((*v5 & *v11) + 0x8F0))(), v12, (v13 & 1) != 0))
      {
        v14 = (*((*v5 & *v7) + 0x580))();

        return (v14 & 1);
      }
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateHorizontalProgressViewIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v4 = v3();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_horizontalProgressView;
  v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_horizontalProgressView);
  if (v7)
  {
    v8 = v7;
    if (!os_variant_has_internal_content() || (v9 = [objc_opt_self() standardUserDefaults], v10 = MEMORY[0x24C1FAD20](0xD000000000000034, 0x8000000249BE22E0), v11 = objc_msgSend(v9, sel_BOOLForKey_, v10), v9, v10, (v11 & 1) == 0))
    {
      v12 = v3();
      if (!v12 || (v13 = v12, v14 = (*((*v2 & *v12) + 0x8F0))(), v13, (v14 & 1) == 0))
      {
        v38 = (*((*v2 & *v1) + 0x2A8))([v8 removeFromSuperview]);
        if (v38)
        {
          v39 = v38;
          [v38 removeFromSuperview];
        }

        [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setClipsToBounds_];
        v40 = *(v1 + v6);
        *(v1 + v6) = 0;

        (*((*v2 & *v1) + 0x2B0))(0);
        v41 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint);
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint) = 0;

        v42 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint);
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint) = 0;

        v43 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint);
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint) = 0;

        v44 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint);
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint) = 0;

        v45 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint);
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint) = 0;

        return;
      }
    }
  }

  if (DOCItemCollectionGridCell.needToInstantiateHorizontalProgressView.getter())
  {
    v92 = v5;
    v15 = [objc_allocWithZone(MEMORY[0x277D758F0]) init];
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    v17 = v15;
    [v16 addSubview_];
    v18 = *(v1 + v6);
    *(v1 + v6) = v17;
    v19 = v17;

    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v19 bottomAnchor];

    v21 = [v16 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-12.0];

    v23 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint);
    v96 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint) = v22;

    v24 = [v19 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    v26 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint);
    v95 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint) = v25;

    v27 = [v19 leadingAnchor];
    v28 = [v16 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:12.0];

    v30 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint);
    v94 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint) = v29;

    v31 = [v19 trailingAnchor];
    v32 = [v16 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-12.0];

    v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint);
    v93 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint) = v33;

    v35 = *((*v2 & *v1) + 0x2A8);
    v36 = v35();
    if (v36)
    {
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v47 = objc_allocWithZone(type metadata accessor for DOCCircularCancelButton());
      v48 = DOCCircularCancelButton.init(primaryAction:)(v46);
      v37 = (*((*v2 & *v1) + 0x2B0))(v48);
    }

    v97 = v6;
    v49 = (v35)(v37);
    if (v49)
    {
      v50 = v49;
      v51 = [v1 contentView];
      v52 = v50;
      [v51 addSubview_];

      [v16 setClipsToBounds_];
      v53 = [v52 centerXAnchor];

      v54 = [v16 leadingAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      v56 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint;
      v57 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint) = v55;

      v58 = [v52 centerYAnchor];
      v59 = [v16 topAnchor];
      v60 = [v58 constraintEqualToAnchor_];

      v61 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterYConstraint;
      v62 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterYConstraint);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterYConstraint) = v60;

      v63 = *(v1 + v95);
      v64 = *(v1 + v94);
      v65 = *(v1 + v93);
      v100 = *(v1 + v96);
      v101 = v63;
      v66 = *(v1 + v56);
      v67 = *(v1 + v61);
      v102 = v64;
      v103 = v65;
      v104 = v66;
      v105 = v67;
      v98 = MEMORY[0x277D84F90];
      v68 = v67;
      v69 = v100;
      v70 = v63;
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v74 = 0;
      v2 = MEMORY[0x277D85000];
      v6 = v97;
LABEL_19:
      if (v74 <= 6)
      {
        v75 = 6;
      }

      else
      {
        v75 = v74;
      }

      while (1)
      {
        if (v74 == 6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSLayoutConstraintCSgMd);
          swift_arrayDestroy();
          v82 = objc_opt_self();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v82 activateConstraints_];

          v5 = v92;
          goto LABEL_29;
        }

        if (v75 == v74)
        {
          break;
        }

        v76 = v99[v74++ + 4];
        if (v76)
        {
          v77 = v76;
          MEMORY[0x24C1FB090](v77, v78, v79, v80, v81);
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v6 = v97;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v84 = *(v1 + v6);
    if (v84)
    {
      v85 = *((*v2 & *v5) + 0x568);
      v86 = v84;
      v91 = v85(v86, v87, v88, v89, v90);
      [v86 setObservedProgress_];
    }
  }
}

void closure #1 in DOCItemCollectionGridCell.createHorizontalStopButton()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x2C0))();
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.resetThumbnailViewThumbnail(updateCreateImage:)(Swift::Bool updateCreateImage)
{
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setThumbnail_];
  if (updateCreateImage)
  {
    (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView)) + 0xD0))(0);
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.teardownRename(_:)(Swift::Bool a1)
{
  v2 = v1;
  DOCItemCollectionCell.teardownRename(_:)(a1);
  v3 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel) setAlpha_];
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x208);
  v7 = (v6)(v3);
  if (v7)
  {
    v8 = v7;
    (*((*v5 & *v7) + 0x2D8))(&v36);
    v55 = v44;
    v56 = v45;
    v57[0] = v46[0];
    *(v57 + 9) = *(v46 + 9);
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v66 = v44;
    v67 = v45;
    v68[0] = v46[0];
    *(v68 + 9) = *(v46 + 9);
    v62 = v40;
    v63 = v41;
    v64 = v42;
    v65 = v43;
    v58 = v36;
    v59 = v37;
    v60 = v38;
    v61 = v39;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v58) == 1)
    {
      __break(1u);
      goto LABEL_47;
    }

    v9 = outlined destroy of CharacterSet?(&v47, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    if (v60 > 0)
    {
      v10 = (*((*v5 & *v1) + 0x3A8))(v9);

      if ((v10 & 1) != [v4 isHidden])
      {
        goto LABEL_10;
      }

LABEL_8:
      v11 = 0;
      goto LABEL_11;
    }
  }

  if ([v4 isHidden])
  {
    goto LABEL_8;
  }

  v10 = 1;
LABEL_10:
  [v4 setHidden_];
  v11 = 1;
LABEL_11:
  v12 = [v4 font];
  v13 = [v4 font];
  v14 = v13;
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v13 || (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v15 = v12, v16 = static NSObject.== infix(_:_:)(), v15, v14, (v16 & 1) == 0))
  {
LABEL_17:
    [v4 setFont_];
    v11 = 1;
  }

LABEL_18:
  [v4 _hyphenationFactor];
  v18 = v17;
  [v4 _hyphenationFactor];
  if (v18 == *&v19)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *&v19 = v18;
    [v4 _setHyphenationFactor_];
  }

  [v4 invalidateIntrinsicContentSize];
LABEL_23:

  v20 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
  v21 = v6();
  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = v21;
  v23 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v21) + 0x2D8))(&v47);
  v66 = v55;
  v67 = v56;
  v68[0] = v57[0];
  *(v68 + 9) = *(v57 + 9);
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v61 = v50;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v58) != 1)
  {
    v24 = outlined destroy of CharacterSet?(&v47, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    if (v60 > 1)
    {
      v25 = (*((*v23 & *v2) + 0x3A8))(v24);

      if ((v25 & 1) != [v20 isHidden])
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (([v20 isHidden] & 1) == 0)
    {
      v25 = 1;
LABEL_32:
      [v20 setHidden_];
      v26 = 1;
LABEL_33:
      v27 = [v20 font];
      v28 = [v20 font];
      v29 = v28;
      if (v27)
      {
        if (v28)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
          v30 = v27;
          v31 = static NSObject.== infix(_:_:)();

          if (v31)
          {
LABEL_40:
            [v20 _hyphenationFactor];
            v33 = v32;
            [v20 _hyphenationFactor];
            if (v33 == *&v34)
            {
              v35 = &selRef_initWithFrame_;
              if ((v26 & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            else
            {
              *&v34 = v33;
              [v20 _setHyphenationFactor_];
              v35 = &selRef_initWithFrame_;
            }

            [v20 v35[44]];
LABEL_45:

            *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewConstraints) = MEMORY[0x277D84F90];

            DOCItemCollectionGridCell.updateSelectionView()();
            return;
          }
        }
      }

      else
      {
        if (!v28)
        {
          goto LABEL_40;
        }
      }

      [v20 setFont_];
      v26 = 1;
      goto LABEL_40;
    }

LABEL_30:
    v26 = 0;
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionGridCell.setupRename()()
{
  v1 = v0;
  DOCItemCollectionCell.setupRename()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x390))();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
    v5 = v3;
    v6 = [v4 font];
    [v5 setFont_];

    [v5 setTextAlignment_];
    LOBYTE(v6) = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics + 8);
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    *(v5 + v7) = v6;
    DOCItemRenameTextView.updateBackground()();
    [v5 setTextContainerInset_];

    v8 = v5;
    [v8 verticalScrollIndicatorInsets];
    [v8 setVerticalScrollIndicatorInsets_];

    (*((*v2 & *v1) + 0x3F0))(v8);
    v9 = [v4 setAlpha_];
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
    v40 = *((*v2 & *v1) + 0x208);
    v11 = (v40)(v9);
    if (v11)
    {
      v12 = v11;
      (*((*v2 & *v11) + 0x2D8))(&v41);
      v60 = v49;
      v61 = v50;
      v62[0] = v51[0];
      *(v62 + 9) = *(v51 + 9);
      v56 = v45;
      v57 = v46;
      v58 = v47;
      v59 = v48;
      v52 = v41;
      v53 = v42;
      v54 = v43;
      v55 = v44;
      v71 = v49;
      v72 = v50;
      v73[0] = v51[0];
      *(v73 + 9) = *(v51 + 9);
      v67 = v45;
      v68 = v46;
      v69 = v47;
      v70 = v48;
      v63 = v41;
      v64 = v42;
      v65 = v43;
      v66 = v44;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v63) == 1)
      {
        __break(1u);
        goto LABEL_49;
      }

      v13 = outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      if (v65 > 0)
      {
        v14 = (*((*v2 & *v1) + 0x3A8))(v13);

        if ((v14 & 1) != [v10 isHidden])
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    if (([v10 isHidden] & 1) == 0)
    {
      v14 = 1;
LABEL_11:
      [v10 setHidden_];
      v15 = 1;
LABEL_12:
      v16 = [v10 font];
      v17 = [v10 font];
      v18 = v17;
      if (v16)
      {
        if (v17)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
          v19 = v16;
          v20 = static NSObject.== infix(_:_:)();

          v2 = MEMORY[0x277D85000];
          if (v20)
          {
LABEL_19:
            [v10 _hyphenationFactor];
            v22 = v21;
            [v10 _hyphenationFactor];
            if (v22 == *&v23)
            {
              if ((v15 & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            else
            {
              *&v23 = v22;
              [v10 _setHyphenationFactor_];
            }

            [v10 invalidateIntrinsicContentSize];
LABEL_24:

            v24 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
            v25 = v40();
            if (!v25)
            {
              goto LABEL_30;
            }

            v26 = v25;
            (*((*v2 & *v25) + 0x2D8))(&v52);
            v71 = v60;
            v72 = v61;
            v73[0] = v62[0];
            *(v73 + 9) = *(v62 + 9);
            v67 = v56;
            v68 = v57;
            v69 = v58;
            v70 = v59;
            v63 = v52;
            v64 = v53;
            v65 = v54;
            v66 = v55;
            if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v63) != 1)
            {
              v27 = outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
              if (v65 > 1)
              {
                v28 = (*((*v2 & *v1) + 0x3A8))(v27);

                if ((v28 & 1) != [v24 isHidden])
                {
                  goto LABEL_33;
                }

                goto LABEL_31;
              }

LABEL_30:
              if (([v24 isHidden] & 1) == 0)
              {
                v28 = 1;
LABEL_33:
                [v24 setHidden_];
                v29 = 1;
LABEL_34:
                v30 = [v24 font];
                v31 = [v24 font];
                v32 = v31;
                if (v30)
                {
                  if (v31)
                  {
                    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
                    v33 = v30;
                    v34 = static NSObject.== infix(_:_:)();

                    if (v34)
                    {
LABEL_41:
                      [v24 _hyphenationFactor];
                      v36 = v35;
                      [v24 _hyphenationFactor];
                      if (v36 == *&v37)
                      {
                        if ((v29 & 1) == 0)
                        {
                          goto LABEL_46;
                        }
                      }

                      else
                      {
                        *&v37 = v36;
                        [v24 _setHyphenationFactor_];
                      }

                      [v24 invalidateIntrinsicContentSize];
LABEL_46:

                      [v1 setNeedsUpdateConfiguration];
                      [v1 layoutBelowIfNeeded];
                      v38 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
                      swift_beginAccess();
                      *(v8 + v38) = 1;
                      v39 = type metadata accessor for DOCItemRenameTextView();
                      v74.receiver = v8;
                      v74.super_class = v39;
                      objc_msgSendSuper2(&v74, sel_becomeFirstResponder);
                      *(v8 + v38) = 0;
                      DOCItemCollectionGridCell.updateSelectionView()();

                      return;
                    }
                  }
                }

                else
                {
                  if (!v31)
                  {
                    goto LABEL_41;
                  }
                }

                [v24 setFont_];
                v29 = 1;
                goto LABEL_41;
              }

LABEL_31:
              v29 = 0;
              goto LABEL_34;
            }

LABEL_49:
            __break(1u);
            return;
          }
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      [v10 setFont_];
      v15 = 1;
      goto LABEL_19;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_12;
  }
}

void DOCItemCollectionGridCell.installRenameTextView(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x398);
  v6 = a1;
  v7 = v5(a1);
  v8 = *((*v4 & *v2) + 0x390);
  v9 = (v8)(v7);
  if (v9)
  {
    v10 = v9 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
    v11 = v9;
    swift_beginAccess();
    *(v10 + 8) = &protocol witness table for DOCItemCollectionCell;
    swift_unknownObjectWeakAssign();
  }

  v12 = [v2 contentView];
  [v12 addSubview_];

  LOBYTE(v12) = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics + 8);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  v6[v13] = v12;
  DOCItemRenameTextView.updateBackground()();
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  v15 = swift_beginAccess();
  v16 = v6[v14];
  v6[v14] = 0;
  if (v16)
  {
    v17 = DOCItemRenameTextView.clearButton.getter();
    [v17 removeFromSuperview];
  }

  v18 = (*((*v4 & *v2) + 0x208))(v15);
  if (!v18)
  {
    v23 = 2;
    goto LABEL_9;
  }

  v19 = v18;
  (*((*v4 & *v18) + 0x2D8))(&v49);

  v60[8] = v57;
  v60[9] = v58;
  v61[0] = v59[0];
  *(v61 + 9) = *(v59 + 9);
  v60[4] = v53;
  v60[5] = v54;
  v60[6] = v55;
  v60[7] = v56;
  v60[0] = v49;
  v60[1] = v50;
  v60[2] = v51;
  v60[3] = v52;
  v69 = v57;
  v70 = v58;
  v71[0] = v59[0];
  *(v71 + 9) = *(v59 + 9);
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v62[0] = v49;
  v62[1] = v50;
  v63 = v51;
  v64 = v52;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v62) == 1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v20 = v63 > 0;
  v21 = __OFADD__(*(&v62[0] + 1), v20);
  v22 = *(&v62[0] + 1) + v20;
  if (v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  *&v62[0] = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(0x4D0A, 0xE200000000000000, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  *&v62[0] = 77;
  *(&v62[0] + 1) = 0xE100000000000000;
  MEMORY[0x24C1FAEA0](v24, v26);

  v27 = DOCItemRenameTextView.heightByMeasuring(_:)(*&v62[0], *(&v62[0] + 1));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_249BA0470;
  v29 = [v6 topAnchor];
  v30 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel) topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v28 + 32) = v31;
  v32 = [v6 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v28 + 40) = v33;
  v34 = [v6 leadingAnchor];
  v35 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackView);
  v36 = [v35 leadingAnchor];
  v37 = v8;
  v38 = v8();
  v39 = 0.0;
  v40 = 0.0;
  if (v38)
  {

    v40 = 5.0;
  }

  v41 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewAdditionalPadding;
  v42 = [v34 constraintEqualToAnchor:v36 constant:-(v40 + *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewAdditionalPadding))];

  *(v28 + 48) = v42;
  v43 = [v6 trailingAnchor];
  v44 = [v35 trailingAnchor];
  v45 = v37();
  if (v45)
  {

    v39 = 5.0;
  }

  v46 = [v43 constraintEqualToAnchor:v44 constant:v39 + *(v2 + v41)];

  *(v28 + 56) = v46;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewConstraints) = v28;

  v47 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v47 activateConstraints_];
}

uint64_t DOCItemCollectionGridCell.__ivar_destroyer()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_backgroundConfigurationProvider, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
}

id DOCNotifyingStackView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void (*protocol witness for DOCItemCollectionGridCell_ConcreteSubclassProtocol.isSelectionHighlightingTemporarilyHidden.modify in conformance DOCItemCollectionGridCell(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x578))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

double one-time initialization function for defaultGridItemTraits()
{
  static DOCGridLayout.Spec.LayoutMetrics.default.getter(&v3);
  v0 = *&v3;
  static DOCGridLayout.Spec.LayoutMetrics.default.getter(&v3);
  v1 = v5;
  static DOCGridLayout.Spec.LayoutMetrics.default.getter(&v3);
  result = v3 + v4 + v4;
  defaultGridItemTraits = v0;
  qword_27EEEBB78 = v1;
  *&qword_27EEEBB80 = result;
  return result;
}

void specialized DOCItemCollectionGridCell.cellContent.setter(void *a1)
{
  specialized DOCItemCollectionCell.cellContent.setter(a1);
  if (one-time initialization token for defaultGridItemTraits != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
  v4 = swift_beginAccess();
  if (v3)
  {
    (*((*v2 & *v3) + 0x2D8))(v5, v4);
    v14 = v5[8];
    v15 = v5[9];
    v16[0] = v6[0];
    *(v16 + 9) = *(v6 + 9);
    v10 = v5[4];
    v11 = v5[5];
    v12 = v5[6];
    v13 = v5[7];
    v7[0] = v5[0];
    v7[1] = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v7) != 1)
    {
      defaultGridItemTraits = v9;
      qword_27EEEBB78 = v10;
      outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      qword_27EEEBB80 = *(&v8 + 1);
    }
  }

  swift_endAccess();
}

uint64_t lazy protocol witness table accessor for type ReplaceSymbolEffect and conformance ReplaceSymbolEffect(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DOCItemCollectionGridCell.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionGridCell.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined init with take of DOCFastLabel.LabelInformation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCFastLabel.LabelInformation(uint64_t a1)
{
  v2 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DOCItemCellIconWidth.bestWidthForCalculatedWidth(_:displayScale:)(double a1)
{
  swift_beginAccess();
  if (*&static DOCItemCellIconWidth.size_largest <= a1)
  {
    a1 = *&static DOCItemCellIconWidth.size_largest;
  }

  swift_beginAccess();
  if (*&static DOCItemCellIconWidth.size_smallest > a1)
  {
    a1 = *&static DOCItemCellIconWidth.size_smallest;
  }

  result = specialized static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)(a1, 1.0);
  if (v3)
  {
    return UIRoundToScale();
  }

  return result;
}

uint64_t static DOCItemCellIconWidth.undefined.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.undefined = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_smallest.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_smallest = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_66.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_66 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_84.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_84 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_90.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_90 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_128.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_128 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_135.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_135 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_170.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_170 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_226.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_226 = *&a1;
  return result;
}

uint64_t static DOCItemCellIconWidth.size_largest.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCellIconWidth.size_largest = *&a1;
  return result;
}

uint64_t DOCItemCellIconWidth.hash(into:)(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x24C1FCC00](*&a1);
}

Swift::Int DOCItemCellIconWidth.hashValue.getter(double a1)
{
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x24C1FCC00](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemCellIconWidth()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x24C1FCC00](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCellIconWidth()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x24C1FCC00](*&v2);
  return Hasher._finalize()();
}

uint64_t specialized static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)(double a1, double a2)
{
  v2 = 0;
  v3 = 13;
  while (1)
  {
    v4 = v2 + v3;
    if (__OFADD__(v2, v3))
    {
      break;
    }

    if ((v4 - 28) < 0xFFFFFFFFFFFFFFE3)
    {
      goto LABEL_13;
    }

    v5 = v4 / 2;
    v6 = outlined read-only object #0 of static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)[v5 + 4];
    if (vabdd_f64(a1, v6) < a2)
    {
      return *&outlined read-only object #0 of static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)[v5 + 4];
    }

    if (v6 >= a1)
    {
      v3 = v5 - 1;
      if (v5 <= v2)
      {
        return 0;
      }
    }

    else
    {
      v2 = v5 + 1;
      if (v3 <= v5)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCellIconWidth and conformance DOCItemCellIconWidth()
{
  result = lazy protocol witness table cache variable for type DOCItemCellIconWidth and conformance DOCItemCellIconWidth;
  if (!lazy protocol witness table cache variable for type DOCItemCellIconWidth and conformance DOCItemCellIconWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCellIconWidth and conformance DOCItemCellIconWidth);
  }

  return result;
}

uint64_t DOCBrowserHistoryController.historyPresentationDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCBrowserHistoryController.historyPresentationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DOCFileProviderSyncStateFooterViewModel.delegate.modify;
}

uint64_t DOCBrowserHistoryController.notificationsController.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC017DOCBrowserHistoryF0CGMd);
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_weakAssign();
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t DOCBrowserHistoryController.__allocating_init(dataSource:hierarchyController:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  DOCBrowserHistoryController.init(dataSource:hierarchyController:)(a1, a2);
  return v4;
}

void DOCBrowserHistoryController.init(dataSource:hierarchyController:)(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v3 + 64) = 0;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a1;
  v7 = objc_opt_self();
  v8 = a1;
  v9 = a2;
  v10 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE29B0);
  v11 = [v7 __systemImageNamedSwift_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_29;
  }

  v117 = v9;
  v118 = v8;
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for DOCHistoryNavigationButtonItem();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in DOCBrowserHistoryController.init(dataSource:hierarchyController:);
  *(v13 + 24) = v12;

  swift_retain_n();
  LOBYTE(v13) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14 = v11;
  v125.value.super.isa = v11;
  v125.is_nil = v13;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v16, 0, v125, 0, v15);
  v18 = v17;
  LOBYTE(aBlock) = 0;
  (*((*MEMORY[0x277D85000] & *v17) + 0x70))(&aBlock);

  v19 = *(v3 + 56);
  *(v3 + 56) = v18;
  v20 = v18;

  v21 = _DocumentManagerBundle();
  if (!v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = v21;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24._countAndFlagsBits = 0xD000000000000013;
  swift__string._object = 0x8000000249BE29F0;
  v24._object = 0x8000000249BE29D0;
  v23.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 1801675074;
  v25._object = 0xE400000000000000;
  swift__string._countAndFlagsBits = 0xD000000000000020;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, swift__string);

  v27 = MEMORY[0x24C1FAD20](v26._countAndFlagsBits, v26._object);

  [v20 setTitle_];

  v28 = *(v3 + 56);
  if (!v28)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = objc_opt_self();
  v30 = v28;
  [v29 navBarButton];
  swift_getObjCClassMetadata();
  v31 = [swift_getObjCClassFromMetadata() backInHistory];
  if (!v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = MEMORY[0x24C1FAD20](v32);
  }

  [v30 setAccessibilityIdentifier_];

  v33 = *(v3 + 56);
  if (!v33)
  {
    goto LABEL_31;
  }

  v34 = v33;
  v35 = _DocumentManagerBundle();
  if (!v35)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v36 = v35;
  v37._countAndFlagsBits = 0xD00000000000001CLL;
  swift__stringa._object = 0x8000000249BE2A70;
  v37._object = 0x8000000249BE2A20;
  v38._countAndFlagsBits = 0xD000000000000021;
  v38._object = 0x8000000249BE2A40;
  v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v39.value._object = 0xEB00000000656C62;
  swift__stringa._countAndFlagsBits = 0xD000000000000020;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v39, v36, v38, swift__stringa);

  v41 = MEMORY[0x24C1FAD20](v40._countAndFlagsBits, v40._object);

  [v34 setAccessibilityHint_];

  v42 = *(v3 + 56);
  if (!v42)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v42 setSpringLoaded_];
  v43 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, 0xEF64726177726F66);
  v44 = [v7 __systemImageNamedSwift_];

  if (!v44)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = swift_allocObject();
  swift_weakInit();

  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #2 in DOCBrowserHistoryController.init(dataSource:hierarchyController:);
  *(v46 + 24) = v45;
  swift_retain_n();
  LOBYTE(v46) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v47 = v44;
  v126.value.super.isa = v44;
  v126.is_nil = v46;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v49, 0, v126, 0, v48);
  v51 = v50;
  LOBYTE(aBlock) = 1;
  (*((*MEMORY[0x277D85000] & *v50) + 0x70))(&aBlock);

  v52 = *(v3 + 64);
  *(v3 + 64) = v51;
  v53 = v51;

  v54 = _DocumentManagerBundle();
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v55 = v54;
  v56._countAndFlagsBits = 0xD000000000000016;
  swift__stringb._object = 0x8000000249BE2AC0;
  v57._countAndFlagsBits = 0x64726177726F46;
  v56._object = 0x8000000249BE2AA0;
  swift__stringb._countAndFlagsBits = 0xD000000000000023;
  v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v58.value._object = 0xEB00000000656C62;
  v57._object = 0xE700000000000000;
  v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v58, v55, v57, swift__stringb);

  v60 = MEMORY[0x24C1FAD20](v59._countAndFlagsBits, v59._object);

  [v53 setTitle_];

  v61 = *(v3 + 64);
  if (!v61)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v62 = v61;
  [v29 navBarButton];
  swift_getObjCClassMetadata();
  v63 = [swift_getObjCClassFromMetadata() forwardInHistory];
  if (!v63)
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = MEMORY[0x24C1FAD20](v64);
  }

  [v62 setAccessibilityIdentifier_];

  v65 = *(v3 + 64);
  if (!v65)
  {
    goto LABEL_37;
  }

  v66 = v65;
  v67 = _DocumentManagerBundle();
  if (!v67)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v68 = v67;
  v69._countAndFlagsBits = 0xD00000000000001FLL;
  swift__stringc._object = 0x8000000249BE2B10;
  v69._object = 0x8000000249BE2AF0;
  v70._countAndFlagsBits = 0xD000000000000021;
  v70._object = 0x8000000249BE2A40;
  swift__stringc._countAndFlagsBits = 0xD000000000000023;
  v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71.value._object = 0xEB00000000656C62;
  v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v71, v68, v70, swift__stringc);

  v73 = MEMORY[0x24C1FAD20](v72._countAndFlagsBits, v72._object);

  [v66 setAccessibilityHint_];

  v74 = *(v3 + 64);
  if (!v74)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v74 setSpringLoaded_];
  v75 = *(v3 + 56);
  if (!v75)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v76 = v75;
  v77 = [v76 accessibilityIdentifier];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    aBlock = v79;
    v120 = v81;

    MEMORY[0x24C1FAEA0](0x756E656D2ELL, 0xE500000000000000);

    v82 = MEMORY[0x24C1FAD20](aBlock, v120);
  }

  else
  {
    v82 = 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = 0;
  v123 = partial apply for closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:);
  v124 = v86;
  aBlock = MEMORY[0x277D85DD0];
  v120 = 1107296256;
  v121 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v122 = &block_descriptor_68;
  v87 = _Block_copy(&aBlock);

  v88 = [v84 elementWithUncachedProvider_];
  _Block_release(v87);
  *(preferredElementSize + 32) = v88;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v127.value.super.isa = 0;
  v127.is_nil = v82;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v90, v89, 0, v127, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  v92 = v91;

  [v76 setMenu_];
  v93 = *(v3 + 64);
  if (!v93)
  {
    goto LABEL_41;
  }

  v94 = v93;
  v95 = [v94 accessibilityIdentifier];
  if (v95)
  {
    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    aBlock = v97;
    v120 = v99;

    MEMORY[0x24C1FAEA0](0x756E656D2ELL, 0xE500000000000000);

    v100 = MEMORY[0x24C1FAD20](aBlock, v120);
  }

  else
  {
    v100 = 0;
  }

  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_249BA0290;
  v102 = swift_allocObject();
  swift_weakInit();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = 1;
  v123 = closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)partial apply;
  v124 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v120 = 1107296256;
  v121 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v122 = &block_descriptor_20_1;
  v104 = _Block_copy(&aBlock);

  v105 = [v84 elementWithUncachedProvider_];
  _Block_release(v104);
  *(v101 + 32) = v105;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v128.value.super.isa = 0;
  v128.is_nil = v100;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v107, v106, 0, v128, 0, 0xFFFFFFFFFFFFFFFFLL, v101, v116);
  v109 = v108;

  [v94 setMenu_];
  DOCBrowserHistoryController.updateHistoryButtons()();
  v110 = DOCBrowserHistoryController.notificationsController.getter();
  if (one-time initialization token for didChange != -1)
  {
    swift_once();
  }

  v111 = static DOCBrowserHistoryDataSource.didChange;
  v112 = *(v3 + 40);
  v122 = type metadata accessor for DOCBrowserHistoryDataSource();
  aBlock = v112;
  v113 = objc_opt_self();
  v114 = v112;
  v115 = [v113 mainQueue];
  (*(*v110 + 144))(v111, &aBlock, v115, closure #1 in DOCBrowserHistoryController.startObservingForChanges(), 0);

  outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
}

void *static DOCHistoryNavigationButtonItem.newItem(_:image:actionHandler:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  type metadata accessor for DOCHistoryNavigationButtonItem();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  LOBYTE(a4) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = a2;
  v16.value.super.isa = a2;
  v16.is_nil = a4;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, 0, v16, 0, v10);
  v13 = v12;
  v15 = v7;
  (*((*MEMORY[0x277D85000] & *v12) + 0x70))(&v15);
  return v13;
}

uint64_t closure #1 in DOCBrowserHistoryController.init(dataSource:hierarchyController:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    HIBYTE(v10) = a2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    (*(*v8 + 272))(&v10 + 7, v6);

    return outlined destroy of DOCBrowserHistoryItem(v6, type metadata accessor for DOCBrowserHistoryShiftAmount);
  }

  return result;
}

uint64_t DOCBrowserHistoryController.historyButtonItems.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_249BA1010;
  v2 = *(v0 + 56);
  if (v2)
  {
    *(result + 32) = v2;
    v3 = *(v0 + 64);
    if (v3)
    {
      *(result + 40) = v3;
      v4 = result;
      v5 = v2;
      v6 = v3;
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

uint64_t DOCBrowserHistoryController.canPerformShiftAction(direction:amount:)(char *a1)
{
  v2 = *(v1 + 40);
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x190))(&v4) & 1;
}

Swift::Void __swiftcall DOCBrowserHistoryController.applyItemFilter()()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x160);

  v3(partial apply for closure #1 in DOCBrowserHistoryController.applyItemFilter(), v2);
}

uint64_t closure #1 in DOCBrowserHistoryController.applyItemFilter()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  if (!(*(*Strong + 152))())
  {

LABEL_5:
    v6 = 1;
    return v6 & 1;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(a1, ObjectType, v4);

  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t DOCBrowserHistoryController.canShift(direction:amount:checkDataSourceOnly:)(_BYTE *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12, v13);
  v16 = &v28[-v15];
  v17 = v4[5];
  v29[0] = *a1;
  v18 = (*((*MEMORY[0x277D85000] & *v17) + 0x190))(v29, a2, v14);
  v19 = a3 & v18;
  if (a3 & 1) == 0 && (v18)
  {
    v20 = v4[4];
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v20 + v21, v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v22 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v11, 1, v22) == 1)
    {
      v25 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCGridLayout.Spec?(v20 + v25, v16, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      if (v24(v11, 1, v22) != 1)
      {
        outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      }
    }

    else
    {
      outlined init with take of DOCBrowserHistoryItem(v11, v16, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      (*(v23 + 56))(v16, 0, 1, v22);
    }

    if (v24(v16, 1, v22) == 1)
    {
      outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v19 = 1;
    }

    else
    {
      v26 = v16[*(v22 + 24)];
      outlined destroy of DOCBrowserHistoryItem(v16, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v19 = (v26 & 1) != 0 || v4[10] != 0;
    }
  }

  return v19 & 1;
}

void DOCBrowserHistoryController.shift(direction:amount:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v88 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v85 = &v80 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v80 - v24;
  LODWORD(v26) = *a1;
  v90 = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v27 = a2;
  MEMORY[0x24C1FAEA0](0xD00000000000002ALL, 0x8000000249BE2F60);
  if (v26)
  {
    v28 = 0x64726177726F66;
  }

  else
  {
    v28 = 0x647261776B636162;
  }

  if (v26)
  {
    v29 = 0xE700000000000000;
  }

  else
  {
    v29 = 0xE800000000000000;
  }

  MEMORY[0x24C1FAEA0](v28, v29);

  MEMORY[0x24C1FAEA0](0x746E756F6D61202CLL, 0xEB00000000203D20);
  type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v31 = v90;
  v30 = v91;
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.BrowserHistory);

  v89 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v81 = v6;
    v37 = v3;
    v38 = v25;
    v39 = v36;
    v40 = swift_slowAlloc();
    v41 = v31;
    v42 = v27;
    v43 = v26;
    v26 = v7;
    v44 = v40;
    v90 = v40;
    *v39 = 136315138;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v30, &v90);
    _os_log_impl(&dword_2493AC000, v34, v35, "[History] %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v45 = v44;
    v7 = v26;
    LOBYTE(v26) = v43;
    v27 = v42;
    MEMORY[0x24C1FE850](v45, -1, -1);
    v46 = v39;
    v25 = v38;
    v3 = v37;
    v6 = v81;
    MEMORY[0x24C1FE850](v46, -1, -1);
  }

  LOBYTE(v90) = v26;
  if (DOCBrowserHistoryController.canShift(direction:amount:checkDataSourceOnly:)(&v90, v27, 0))
  {
    v47 = v3[5];
    v48 = MEMORY[0x277D85000];
    v49 = *((*MEMORY[0x277D85000] & *v47) + 0x170);
    v49();
    LOBYTE(v90) = v26;
    v50 = (*((*v48 & *v47) + 0x1A0))(&v90, v27);
    v51 = v85;
    (v49)(v50);
    if ((v86)[6](v51, 1, v87) == 1)
    {
      outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v90 = v55;
        *v54 = 136315138;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BE2FC0, &v90);
        _os_log_impl(&dword_2493AC000, v52, v53, "[History] %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1FE850](v55, -1, -1);
        MEMORY[0x24C1FE850](v54, -1, -1);
      }

      v56 = v25;
    }

    else
    {
      v61 = v88;
      outlined init with take of DOCBrowserHistoryItem(v51, v88, type metadata accessor for DOCBrowserHistoryItem);
      v62 = v3[4];
      v87 = v25;
      v63 = v82;
      outlined init with copy of DOCGridLayout.Spec?(v25, v82, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      v64 = v84;
      outlined init with copy of DOCBrowserHistoryItem(v61, v84);
      v65 = swift_allocObject();
      v89 = v3;
      v66 = v65;
      swift_weakInit();
      type metadata accessor for DOCBrowserHistoryShiftRequest(0);
      LOBYTE(v61) = v26;
      v67 = swift_allocObject();
      outlined init with copy of DOCGridLayout.Spec?(v63, v67 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_previousItem, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      outlined init with copy of DOCBrowserHistoryItem(v64, v67 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem);
      *(v67 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_shiftDirection) = v61;
      v86 = v62;

      v68 = v83;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v7 + 8))(v68, v6);
      v69 = specialized Collection.prefix(_:)(6);
      v71 = v70;
      v73 = v72;
      v75 = v74;

      outlined destroy of DOCBrowserHistoryItem(v64, type metadata accessor for DOCBrowserHistoryItem);
      outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      *(v67 + 16) = v69;
      *(v67 + 24) = v71;
      *(v67 + 32) = v73;
      *(v67 + 40) = v75;
      *(v67 + 56) = 0;
      swift_unknownObjectWeakInit();
      *(v67 + 88) = 0;
      *(v67 + 64) = v86;
      *(v67 + 72) = partial apply for closure #1 in DOCBrowserHistoryController.shift(direction:amount:);
      *(v67 + 80) = v66;
      v76 = v89;

      v77 = *(*v76 + 152);

      v77(v78);
      *(v67 + 56) = v79;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      if (v76[10])
      {
        DOCBrowserHistoryController.enqueueBrowserChange(shiftRequest:)(v67);
      }

      else
      {
        DOCBrowserHistoryController.performBrowserChange(shiftRequest:)(v67);
      }

      outlined destroy of DOCBrowserHistoryItem(v88, type metadata accessor for DOCBrowserHistoryItem);
      v56 = v87;
    }

    outlined destroy of CharacterSet?(v56, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90 = v60;
      *v59 = 136315138;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE2F90, &v90);
      _os_log_impl(&dword_2493AC000, v57, v58, "[History] %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1FE850](v60, -1, -1);
      MEMORY[0x24C1FE850](v59, -1, -1);
    }
  }
}

uint64_t closure #1 in DOCBrowserHistoryController.shift(direction:amount:)(void *a1)
{
  _StringGuts.grow(_:)(39);

  v13[0] = 0xD000000000000025;
  v13[1] = 0x8000000249BE2FF0;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];

  v6 = MEMORY[0x24C1FAE00](v2, v3, v5, v4);
  MEMORY[0x24C1FAEA0](v6);

  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.BrowserHistory);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000249BE2FF0, v13);
    _os_log_impl(&dword_2493AC000, v8, v9, "[History] %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCBrowserHistoryController.performNextEnqueuedBrowserChange()();
  }

  return result;
}

uint64_t DOCBrowserHistoryController.activeShiftRequest.didset()
{
  v1 = v0;
  _StringGuts.grow(_:)(33);

  v18 = 0xD00000000000001FLL;
  v19 = 0x8000000249BE2E70;
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2[5];

    v7 = MEMORY[0x24C1FAE00](v3, v4, v5, v6);
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x24C1FAEA0](v7, v9);

  v11 = v18;
  v10 = v19;
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.BrowserHistory);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v18);
    _os_log_impl(&dword_2493AC000, v13, v14, "[History] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  return (*((*MEMORY[0x277D85000] & **(v1 + 40)) + 0x1C0))(*(v1 + 80) != 0);
}

uint64_t DOCBrowserHistoryController.enqueueBrowserChange(shiftRequest:)(uint64_t a1)
{
  v2 = v1;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  MEMORY[0x24C1FAEA0](0xD00000000000002DLL, 0x8000000249BE2F30);
  v11[3] = a1;
  type metadata accessor for DOCBrowserHistoryShiftRequest(0);
  _print_unlocked<A, B>(_:_:)();
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.BrowserHistory);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v11);
    _os_log_impl(&dword_2493AC000, v5, v6, "[History] %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x24C1FB090](v9);
  if (*((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t DOCBrowserHistoryController.performNextEnqueuedBrowserChange()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 72);
  if (v2 >> 62)
  {
LABEL_46:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_47:
    swift_endAccess();
    *(v1 + 80) = 0;

    return DOCBrowserHistoryController.activeShiftRequest.didset();
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

LABEL_3:
  specialized RangeReplaceableCollection.removeFirst()();
  v4 = v3;
  swift_endAccess();
  v5 = &unk_2810DF000;
  while (1)
  {
    v7 = *(v1 + 72);
    if (v7 >> 62)
    {
      if (__CocoaSet.count.getter() < 1)
      {
LABEL_37:
        v41 = 0;
        v42 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        MEMORY[0x24C1FAEA0](0xD000000000000034, 0x8000000249BE2E90);
        v29 = v4[2];
        v30 = v4[3];
        v31 = v4[4];
        v32 = v4[5];

        v33 = MEMORY[0x24C1FAE00](v29, v30, v31, v32);
        MEMORY[0x24C1FAEA0](v33);

        v35 = v41;
        v34 = v42;
        if (v5[159] != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.BrowserHistory);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = v40;
          *v39 = 136315138;
          *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v41);
          _os_log_impl(&dword_2493AC000, v37, v38, "[History] %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x24C1FE850](v40, -1, -1);
          MEMORY[0x24C1FE850](v39, -1, -1);
        }

        DOCBrowserHistoryController.performBrowserChange(shiftRequest:)(v4);
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_37;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    MEMORY[0x24C1FAEA0](0xD000000000000035, 0x8000000249BE2ED0);
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[4];
    v11 = v4[5];

    v12 = MEMORY[0x24C1FAE00](v8, v9, v10, v11);
    MEMORY[0x24C1FAEA0](v12);

    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BE2F10);
    v14 = v41;
    v13 = v42;
    if (v5[159] != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.BrowserHistory);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v41);
      _os_log_impl(&dword_2493AC000, v16, v17, "[History] %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1FE850](v20, -1, -1);
      v21 = v19;
      v5 = v18;
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    swift_beginAccess();
    v6 = *(v1 + 72);
    v22 = v6 >> 62;
    if (!(v6 >> 62))
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_15;
    }

    if (!__CocoaSet.count.getter())
    {
      break;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_49;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_50;
    }

LABEL_15:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C1FC540](0, v6);
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v23 = *(v6 + 32);

      v24 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v22)
      {
LABEL_18:
        v25 = *(v24 + 16);
        if (!v25)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_44;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_45;
    }

    v25 = __CocoaSet.count.getter();
LABEL_30:
    v27 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_43;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 72) = v6;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v22)
      {
LABEL_4:
        __CocoaSet.count.getter();
      }

LABEL_5:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      *(v1 + 72) = v6;
      goto LABEL_6;
    }

    if (v22)
    {
      goto LABEL_4;
    }

    if (v27 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    *(v1 + 72) = v6;
    swift_endAccess();

    v4 = v23;
  }

  result = swift_endAccess();
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t DOCBrowserHistoryController.performBrowserChange(shiftRequest:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  MEMORY[0x24C1FAEA0](0xD00000000000002DLL, 0x8000000249BE2E40);
  v22 = a1;
  type metadata accessor for DOCBrowserHistoryShiftRequest(0);
  _print_unlocked<A, B>(_:_:)();
  v9 = v20;
  v8 = v21;
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.BrowserHistory);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v20);
    _os_log_impl(&dword_2493AC000, v11, v12, "[History] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  *(v2 + 80) = a1;

  DOCBrowserHistoryController.activeShiftRequest.didset();
  v15 = *(v2 + 40);
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem;
  swift_beginAccess();
  outlined init with copy of DOCBrowserHistoryItem(a1 + v16, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v2;
  v18 = *((*MEMORY[0x277D85000] & *v15) + 0x1F8);

  v18(v7, partial apply for closure #1 in DOCBrowserHistoryController.performBrowserChange(shiftRequest:), v17);

  return outlined destroy of DOCBrowserHistoryItem(v7, type metadata accessor for DOCBrowserHistoryItem);
}

uint64_t closure #1 in DOCBrowserHistoryController.performBrowserChange(shiftRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem;
  swift_beginAccess();
  outlined assign with copy of DOCBrowserHistoryItem(a1, a2 + v6);
  result = swift_endAccess();
  v8 = *(a3 + 80);
  if (v8)
  {
    v9 = v8 == a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return DOCBrowserHistoryShiftRequest.applyChange(to:)(*(a2 + 64));
  }

  return result;
}

void DOCBrowserHistoryController.updateHistoryButtons()()
{
  v1 = v0;
  v2 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  if (v6)
  {
    v7 = *(v0 + 40);
    v21 = 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v18[1] = v9 + 56;
    v19 = v10;
    v10(v5, 1, 1, v8);
    v11 = MEMORY[0x277D85000];
    v12 = *((*MEMORY[0x277D85000] & *v7) + 0x190);
    v13 = v6;
    v14 = v12(&v21, v5);
    outlined destroy of DOCBrowserHistoryItem(v5, type metadata accessor for DOCBrowserHistoryShiftAmount);
    (*((*v11 & *v13) + 0xA0))(v14 & 1);

    v15 = *(v1 + 64);
    if (v15)
    {
      v20 = 1;
      v19(v5, 1, 1, v8);
      v16 = v15;
      v17 = v12(&v20, v5);
      outlined destroy of DOCBrowserHistoryItem(v5, type metadata accessor for DOCBrowserHistoryShiftAmount);
      (*((*MEMORY[0x277D85000] & *v16) + 0xA0))(v17 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  v59 = a1;
  v6 = type metadata accessor for DOCBrowserHistoryItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v46 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v59(MEMORY[0x277D84F90]);
  }

  v27 = Strong;
  v52 = a2;
  v28 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D85000];
  if ((*(Strong + 88) & 1) != 0 && (v30 = DOCBrowserHistoryController.notificationsController.getter(), (*(*v30 + 160))(v30), , type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue), v48 = static OS_dispatch_queue.main.getter(), static DispatchTime.now()(), + infix(_:_:)(), v31 = *(v18 + 8), v50 = v18 + 8, v51 = v31, v49 = v17, v31(v21, v17), aBlock[4] = partial apply for closure #1 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:), aBlock[5] = v27, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> (), aBlock[3] = &block_descriptor_137_1, v47 = _Block_copy(aBlock), , , v32 = v53, static DispatchQoS.unspecified.getter(), aBlock[0] = MEMORY[0x277D84F90], lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd), lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](), v33 = v54, v34 = v58, dispatch thunk of SetAlgebra.init<A>(_:)(), v35 = v47, v36 = v48, MEMORY[0x24C1FB940](v25, v32, v33, v47), _Block_release(v35), v36, (*(v57 + 8))(v33, v34), (*(v55 + 8))(v32, v56), v51(v25, v49), v37 = *(v27 + 40), v38 = *((*MEMORY[0x277D85000] & *v37) + 0x1E8), v39 = v37, LOBYTE(v32) = v38(5.0), v39, v28 = MEMORY[0x277D84F90], v29 = MEMORY[0x277D85000], (v32 & 1) == 0))
  {
    v59(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = v28;
    if (a4)
    {
      result = (*((*v29 & **(v27 + 40)) + 0x180))();
    }

    else
    {
      result = (*((*v29 & **(v27 + 40)) + 0x178))();
    }

    v42 = result;
    aBlock[0] = v40;
    v43 = *(result + 16);
    if (v43)
    {
      v44 = 0;
      while (v44 < *(v42 + 16))
      {
        outlined init with copy of DOCBrowserHistoryItem(v42 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, v10);
        closure #2 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(v10, v27, a4 & 1);
        v45 = outlined destroy of DOCBrowserHistoryItem(v10, type metadata accessor for DOCBrowserHistoryItem);
        MEMORY[0x24C1FB090](v45);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v44;
        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v43 == v44)
        {
          v40 = aBlock[0];
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:

      v59(v40);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(uint64_t a1)
{
  v2 = DOCBrowserHistoryController.notificationsController.getter();
  if (one-time initialization token for didChange != -1)
  {
    swift_once();
  }

  v3 = static DOCBrowserHistoryDataSource.didChange;
  v4 = *(a1 + 40);
  v9[3] = type metadata accessor for DOCBrowserHistoryDataSource();
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainQueue];
  (*(*v2 + 144))(v3, v9, v7, closure #1 in DOCBrowserHistoryController.startObservingForChanges(), 0);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd);
}

id closure #2 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for DOCBrowserHistoryItem(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = *(a1 + *(v8 + 40));
  v10 = *(a1 + *(v8 + 28));
  v11 = v9;
  v12 = DOCLocationDisplayProperties.actionMenuDisplayIcon.getter(v10, v11);
  v13 = DOCConcreteLocation.displayCategory.getter();
  v43 = a3;
  if (v14 == 255)
  {
    goto LABEL_5;
  }

  v15 = v13;
  if (v14 != 2)
  {
    outlined consume of DOCConcreteLocation.DisplayCategory?(v13, v14);
LABEL_5:
    v19 = [v10 displayName];
    if (v19)
    {
      v20 = v19;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v21;
    }

    else
    {

      v42 = 0;
      v18 = 0xE000000000000000;
    }

    goto LABEL_8;
  }

  v16 = [v11 displayName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  outlined consume of DOCConcreteLocation.DisplayCategory?(v15, 2u);
LABEL_8:
  v22 = v41;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v23 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DOCBrowserHistoryItem(a1, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v22 + 80) + 25) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = (v43 & 1) == 0;
  *(v25 + 24) = v43 & 1;
  if (v26)
  {
    v27 = 0x647261776B636162;
  }

  else
  {
    v27 = 0x64726177726F66;
  }

  if (v26)
  {
    v28 = 0xE800000000000000;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  outlined init with take of DOCBrowserHistoryItem(&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for DOCBrowserHistoryItem);
  v29 = v12;

  v30 = v42;
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v32 = objc_opt_self();
  v33 = v31;
  [v32 navBarButton];
  swift_getObjCClassMetadata();
  v34 = [swift_getObjCClassFromMetadata() historyMenuPrefix];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v44 = v35;
  v45 = v37;
  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  MEMORY[0x24C1FAEA0](v27, v28);

  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  MEMORY[0x24C1FAEA0](v30, v18);

  v38 = MEMORY[0x24C1FAD20](v44, v45);

  [v33 setAccessibilityIdentifier_];

  return v33;
}

id DOCLocationDisplayProperties.actionMenuDisplayIcon.getter(void *a1, uint64_t a2)
{
  v4 = [a1 representedTag];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() shared];
    v7 = [v6 tintedSystemImageForTag:v5 variant:0];
  }

  else if ([a1 isRoot])
  {

    type metadata accessor for DOCSourceListInterface_Default();
    return [swift_initStaticObject() iconForSource_];
  }

  else
  {
    v8 = [a1 fileProviderItem];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for DOCSourceListInterface_Default();
      v7 = [swift_initStaticObject() nonThumbnailedIconForItem_];
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t DOCLocationDisplayProperties.actionMenuDisplayName.getter(void *a1, void *a2)
{
  v4 = DOCConcreteLocation.displayCategory.getter();
  if (v5 != 255)
  {
    if (v5 == 2)
    {
      v6 = v4;
      v7 = [a2 displayName];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      outlined consume of DOCConcreteLocation.DisplayCategory?(v6, 2u);
      return v8;
    }

    outlined consume of DOCConcreteLocation.DisplayCategory?(v4, v5);
  }

  v9 = [a1 displayName];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t closure #1 in closure #2 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = type metadata accessor for DOCBrowserHistoryShiftAmount(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    *(result + 88) = 0;
    HIBYTE(v13) = a3 & 1;
    outlined init with copy of DOCBrowserHistoryItem(a4, v9);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemV07historyF0_tMd);
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    DOCBrowserHistoryController.shift(direction:amount:)(&v13 + 7, v9);
    outlined destroy of DOCBrowserHistoryItem(v9, type metadata accessor for DOCBrowserHistoryShiftAmount);
    *(v11 + 88) = 1;
  }

  return result;
}

id *DOCBrowserHistoryController.deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?((v0 + 2));

  return v0;
}

uint64_t DOCBrowserHistoryController.__deallocating_deinit()
{
  DOCBrowserHistoryController.deinit();

  return swift_deallocClassInstance();
}

uint64_t DOCHistoryNavigationButtonItem.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCHistoryNavigationButtonItem.direction.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t DOCHistoryNavigationButtonItem.canEnable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canEnable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*DOCHistoryNavigationButtonItem.canEnable.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return DOCHistoryNavigationButtonItem.canEnable.modify;
}

uint64_t DOCHistoryNavigationButtonItem.canPerformShiftAction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canPerformShiftAction;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCHistoryNavigationButtonItem.canEnable.setter(char a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_beginAccess();
  *(v2 + v4) = a1;
  v6 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x80))(v5))
  {
    v7 = (*((*v6 & *v2) + 0x98))();
  }

  else
  {
    v7 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return objc_msgSendSuper2(&v9, sel_setEnabled_, v7 & 1);
}

uint64_t (*DOCHistoryNavigationButtonItem.canPerformShiftAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return DOCHistoryNavigationButtonItem.canPerformShiftAction.modify;
}

void DOCHistoryNavigationButtonItem.canEnable.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & **(v3 + 40)) + 0x80))(v4))
    {
      v6 = (*((*v5 & **(v3 + 40)) + 0x98))();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v3 + 40);
    v8 = type metadata accessor for DOCHistoryNavigationButtonItem();
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    objc_msgSendSuper2((v3 + 24), sel_setEnabled_, v6 & 1);
  }

  free(v3);
}

id DOCHistoryNavigationButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCHistoryNavigationButtonItem.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canEnable) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canPerformShiftAction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCHistoryNavigationButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCHistoryNavigationButtonItem.init()()
{
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction] = 2;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canEnable] = 1;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canPerformShiftAction] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCHistoryNavigationButtonItem.isEnabled.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return objc_msgSendSuper2(&v2, sel_isEnabled);
}

id DOCHistoryNavigationButtonItem.isEnabled.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return objc_msgSendSuper2(&v4, sel_setEnabled_, a1 & 1);
}

id DOCHistoryNavigationButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DOCConcreteLocation.displayCategory.getter()
{
  result = [v0 representedTag];
  if (!result)
  {
    if ([v0 isRoot])
    {
      return [v0 sourceIdentifier];
    }

    else
    {
      return [v0 fileProviderItem];
    }
  }

  return result;
}

id DOCLocationDisplayProperties.defaultMenuIdentifier.getter(void *a1, void *a2)
{
  v4 = [a1 representedTag];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 displayName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x24C1FAEA0](v7, v9);

    v10 = MEMORY[0x24C1FAD20](0x203A676154, 0xE500000000000000);
  }

  else if ([a1 isRoot])
  {

    return [a2 identifier];
  }

  else
  {
    v11 = [a1 fileProviderItem];
    if (v11)
    {
      v12 = v11;
      v10 = [v11 itemIdentifier];
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t LogID.init()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  v5 = specialized Collection.prefix(_:)(6);

  return v5;
}

uint64_t DOCBrowserHierarchyChangeRequest.didFinish(success:)(char a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(41);

  strcpy(v20, "Shift request ");
  HIBYTE(v20[1]) = -18;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);

  v8 = MEMORY[0x24C1FAE00](v4, v5, v6, v7);
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE2E20);
  if (a1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (a1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v9, v10);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v12 = v20[0];
  v11 = v20[1];
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.BrowserHistory);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v20);
    _os_log_impl(&dword_2493AC000, v14, v15, "[History] %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  *(v2 + 88) = 1;
  v18 = *(v2 + 72);

  v18(v2, a1 & 1);
}

uint64_t DOCBrowserHierarchyChangeRequest.__deallocating_deinit()
{

  outlined destroy of weak DOCPresentationPreheatable?(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t DOCBrowserHistoryShiftRequest.applyChange(to:)(char *a1)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for DOCBrowserHistoryItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v44 = &v43 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v43 - v19;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem;
  swift_beginAccess();
  outlined init with copy of DOCBrowserHistoryItem(v1 + v21, v20);
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_previousItem;
  outlined init with copy of DOCGridLayout.Spec?(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_previousItem, v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v23 = v11;
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(&v9[*(v10 + 36)], aBlock, &_sypSgMd);
    if (v48)
    {
      if (swift_dynamicCast())
      {

        outlined destroy of DOCBrowserHistoryItem(v9, type metadata accessor for DOCBrowserHistoryItem);
        v25 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(aBlock, &_sypSgMd);
    }

    outlined destroy of DOCBrowserHistoryItem(v9, type metadata accessor for DOCBrowserHistoryItem);
  }

  v25 = 0;
LABEL_9:
  outlined init with copy of DOCGridLayout.Spec?(&v20[*(v10 + 36)], aBlock, &_sypSgMd);
  if (!v48)
  {
    outlined destroy of CharacterSet?(aBlock, &_sypSgMd);
    if (v25)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_22:
    DOCBrowserHistoryShiftRequest.performTransition(to:in:)(v20, v46);
    return outlined destroy of DOCBrowserHistoryItem(v20, type metadata accessor for DOCBrowserHistoryItem);
  }

  if ((v25 & 1) == 0 || v51)
  {
LABEL_15:

    goto LABEL_22;
  }

LABEL_17:
  outlined init with copy of DOCGridLayout.Spec?(v1 + v22, v5, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  if (v24(v5, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    goto LABEL_22;
  }

  v26 = *&v5[*(v10 + 20)];
  outlined destroy of DOCBrowserHistoryItem(v5, type metadata accessor for DOCBrowserHistoryItem);
  v27 = *&v20[*(v10 + 20)];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v28 = v27;
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = v44;
  outlined init with copy of DOCBrowserHistoryItem(v20, v44);
  v31 = v45;
  outlined init with copy of DOCBrowserHistoryItem(v30, v45);
  v32 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v1;
  outlined init with take of DOCBrowserHistoryItem(v30, v34 + v32, type metadata accessor for DOCBrowserHistoryItem);
  v35 = v46;
  *(v34 + v33) = v46;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #1 in DOCBrowserHistoryShiftRequest.applyChange(to:);
    *(v38 + 24) = v34;
    v49 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v50 = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v48 = &block_descriptor_114;
    v39 = _Block_copy(aBlock);
    v40 = v35;

    [v37 hierarchyController:v40 prepareByDismissingSearchWithCompletion:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    v42 = v35;

    DOCBrowserHistoryShiftRequest.performTransition(to:in:)(v31, v42);
  }

  outlined destroy of DOCBrowserHistoryItem(v31, type metadata accessor for DOCBrowserHistoryItem);
  return outlined destroy of DOCBrowserHistoryItem(v20, type metadata accessor for DOCBrowserHistoryItem);
}

unint64_t DOCBrowserHistoryShiftRequest.performTransition(to:in:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v32 = a1;
  v5 = type metadata accessor for DOCBrowserHistoryShiftRequest.Transition(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCBrowserHistoryShiftRequest.transition(forApplyingChangeTo:)(a2, v8);
  v9 = *v8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 56);
    v11 = v8;
    ObjectType = swift_getObjectType();
    v13 = a2;
    v14 = *(v10 + 16);

    v15 = ObjectType;
    v8 = v11;
    v16 = v14(v32, v9 != 2, partial apply for closure #1 in DOCBrowserHistoryShiftRequest.performTransition(to:in:), v2, v15, v10);
    a2 = v13;
    v17 = v16;
    swift_unknownObjectRelease();

    if (v17)
    {
      return outlined destroy of DOCBrowserHistoryItem(v8, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
    }
  }

  v18 = v32;
  if (v9 == 2)
  {

    DOCBrowserHistoryShiftRequest.performGenericTransition(_:animated:in:completion:)(v8, 1, a2, partial apply for closure #1 in DOCBrowserHistoryShiftRequest.performTransition(to:in:), v2);
    goto LABEL_7;
  }

  if (v9)
  {
    v19 = *(v18 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20));
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in DOCBrowserHistoryShiftRequest.performTransition(to:in:);
    *(v20 + 24) = v3;
    swift_retain_n();
    DOCHierarchyController.applyUpdate(popToLocation:animated:completion:)(v19, 1, partial apply for thunk for @callee_guaranteed () -> (), v20);

LABEL_7:

    return outlined destroy of DOCBrowserHistoryItem(v8, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
  }

  result = DOCBrowserHistoryShiftRequest.Transition.calculateCommonality(from:)(0);
  v23 = v22;
  if (!(result >> 62))
  {
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_10;
    }

LABEL_17:

    v28 = 0;
    goto LABEL_18;
  }

  v29 = result;
  v24 = __CocoaSet.count.getter();
  result = v29;
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_10:
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_21:
    v27 = MEMORY[0x24C1FC540](v26);
    goto LABEL_15;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(result + 8 * v26 + 32);
LABEL_15:
    v28 = v27;

LABEL_18:
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #2 in DOCBrowserHistoryShiftRequest.performTransition(to:in:);
    *(v30 + 24) = v3;

    DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(v23, v28, 1, 1, 1, 1, thunk for @callee_guaranteed () -> ()partial apply, v30);

    return outlined destroy of DOCBrowserHistoryItem(v8, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
  }

  __break(1u);
  return result;
}

unint64_t DOCBrowserHistoryShiftRequest.Transition.calculateCommonality(from:)(id a1)
{
  v40 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for DOCBrowserHistoryShiftRequest.Transition(0);
  v4 = *(v1 + *(v3 + 28));
  v5 = *(v1 + *(v3 + 24));
  v38 = v5;
  v39 = v4;
  if (a1)
  {
    v36 = v4 >> 62;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_150:
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v5;

    a1 = a1;
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        goto LABEL_21;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v4);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_134;
      }
    }

    if (v8 >= 1)
    {
      if (v36)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *(v6 + 16);
      }

      if (result < v8)
      {
        __break(1u);
        goto LABEL_153;
      }

      v5 = &v39;
      specialized Array.replaceSubrange<A>(_:with:)(0, v8);
    }

LABEL_21:
    v13 = v37;
    v6 = v37 >> 62;
    if (v37 >> 62)
    {
      v35 = __CocoaSet.count.getter();
      v13 = v37;
      v14 = v35;
    }

    else
    {
      v14 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v15 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v14 == v4)
      {
        goto LABEL_39;
      }

      if (v15)
      {
        v16 = MEMORY[0x24C1FC540](v4);
      }

      else
      {
        if (v4 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v16 = *(v13 + 8 * v4 + 32);
      }

      v17 = v16;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v11 = __OFADD__(v4++, 1);
      v13 = v37;
      if (v11)
      {
        goto LABEL_135;
      }
    }

    if (v4 <= 0)
    {
      goto LABEL_39;
    }

    if (v6)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v4)
    {
      v5 = &v38;
      specialized Array.replaceSubrange<A>(_:with:)(0, v4);
LABEL_39:

      goto LABEL_40;
    }

LABEL_153:
    __break(1u);
    return result;
  }

LABEL_40:
  v18 = MEMORY[0x277D84F90];
  v19 = v39;
  while (1)
  {
    v6 = v19 >> 62;
    if (v19 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_127;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_127;
    }

    v20 = v38;
    v21 = v38 >> 62;
    if (v38 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_127;
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_127;
    }

    if (v6)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v22)
    {
      goto LABEL_129;
    }

    v4 = v19 & 0xC000000000000001;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C1FC540](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_131;
      }

      v23 = *(v19 + 32);
    }

    v24 = v23;
    if (v21)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v25)
    {
      goto LABEL_130;
    }

    a1 = (v20 & 0xC000000000000001);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x24C1FC540](0, v20);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_132;
      }

      v26 = *(v20 + 32);
    }

    v27 = v26;
    v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      break;
    }

    if (v6)
    {
      if (v19 < 0)
      {
        v5 = v19;
      }

      else
      {
        v5 = v19 & 0xFFFFFFFFFFFFFF8;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_138;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_140;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_139;
    }

    if (v4)
    {
      MEMORY[0x24C1FC540](0, v19);
      swift_unknownObjectRelease();
      v28 = v19 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v28 = v19 & 0xFFFFFFFFFFFFFF8;
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_148;
      }

      if (!v6)
      {
LABEL_70:
        v29 = *(v28 + 16);
        if (!v29)
        {
          goto LABEL_141;
        }

        goto LABEL_80;
      }
    }

    if (v19 < 0)
    {
      v5 = v19;
    }

    else
    {
      v5 = v28;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_141;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_142;
    }

    v29 = __CocoaSet.count.getter();
LABEL_80:
    v5 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_136;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v19;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v6)
      {
        if (v5 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

LABEL_86:
      __CocoaSet.count.getter();
      goto LABEL_87;
    }

    if (v6)
    {
      goto LABEL_86;
    }

LABEL_87:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v39 = v19;
LABEL_88:
    v5 = &v39;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v39 = v19;
    if (v21)
    {
      if (v20 < 0)
      {
        v5 = v20;
      }

      else
      {
        v5 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_144;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_145;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_143;
    }

    if (a1)
    {
      MEMORY[0x24C1FC540](0, v20);
      swift_unknownObjectRelease();
      v31 = v20 & 0xFFFFFFFFFFFFFF8;
      if (!v21)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v31 = v20 & 0xFFFFFFFFFFFFFF8;
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      if (!v21)
      {
LABEL_98:
        v32 = *(v31 + 16);
        if (!v32)
        {
          goto LABEL_146;
        }

        goto LABEL_108;
      }
    }

    if (v20 < 0)
    {
      v5 = v20;
    }

    else
    {
      v5 = v31;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_146;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_147;
    }

    v32 = __CocoaSet.count.getter();
LABEL_108:
    v5 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      goto LABEL_137;
    }

    v33 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v20;
    if (v33)
    {
      if (!v21)
      {
        if (v5 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

LABEL_114:
      __CocoaSet.count.getter();
      goto LABEL_115;
    }

    if (v21)
    {
      goto LABEL_114;
    }

LABEL_115:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v38 = v20;
LABEL_116:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v38 = v20;
    v34 = v24;
    MEMORY[0x24C1FB090]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v5 = &v40;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v18 = v40;
  }

LABEL_127:

  return v18;
}

uint64_t DOCBrowserHistoryShiftRequest.performGenericTransition(_:animated:in:completion:)(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5)
{
  v67 = a2;
  v9 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DOCBrowserHistoryShiftRequest.Transition(0);
  outlined init with copy of DOCBrowserHistoryItem(a1 + *(v63 + 20), v12);
  v13 = *&v12[v9[7]];
  v14 = v13;
  v64 = a1;
  v15 = DOCBrowserHistoryShiftRequest.Transition.calculateCommonality(from:)(v13);
  v17 = v16;
  v69 = v15;
  v65 = v15 >> 62;
  if (v15 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v68 = a3;
  v19 = a4;
  if (one-time initialization token for BrowserHistory != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.BrowserHistory);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v17;
    v24 = a5;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2493AC000, v21, v22, "No common suffix transitions implies this should have been handled as a pop", v25, 2u);
    v26 = v25;
    a5 = v24;
    v17 = v23;
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  a4 = v19;
  a3 = v68;
LABEL_8:
  v27 = DOCHierarchyController.effectiveRootLocation.getter();
  if (v27)
  {
    v28 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_21:
    if (!v27)
    {
      goto LABEL_41;
    }

LABEL_22:
    if (!v28)
    {
      goto LABEL_42;
    }

    v32 = a4;
    v33 = v17;
    v61 = v32;
    v62 = v12;
    v60 = a5;
    v34 = v28;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    v35 = v27;
    v68 = v34;
    v36 = v34;
    LOBYTE(v29) = static NSObject.== infix(_:_:)();

    if (v18 < 2)
    {
      a5 = v60;
      v12 = v62;
      a4 = v61;
      goto LABEL_72;
    }

    v17 = v33;
    if ((v67 & 1) == 0)
    {
      a5 = v60;
      a4 = v61;
      v12 = v62;
      goto LABEL_72;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_91;
    }

    a5 = v60;
    a4 = v61;
    v12 = v62;
    if ((v17 & 0x4000000000000000) == 0)
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_92:
      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_72;
      }

LABEL_51:
      if ((v29 & 1) == 0)
      {
        goto LABEL_72;
      }

      v9 = v63;
      v37 = v64;
      v38 = *(v64 + *(v63 + 24));
      if (v38 >> 62)
      {
        v39 = __CocoaSet.count.getter();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = *(v37 + v9[7]);
      if (v40 >> 62)
      {
        v59 = *(v37 + v9[7]);
        v41 = __CocoaSet.count.getter();
        v40 = v59;
      }

      else
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = 1;
      if (v39 < v41)
      {
        v42 = 2;
      }

      if (*(v66 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_shiftDirection))
      {
        v29 = v42;
      }

      else
      {
        v29 = 2;
      }

      if (*(v66 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_shiftDirection))
      {
        v18 = v69;
        if (!v65)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v43 = v39 < v41;
        v18 = v69;
        if (!v43)
        {
          v29 = (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo19DOCConcreteLocationC_Tt1g5(v69, v40) & 1) == 0;
        }

        if (!v65)
        {
LABEL_65:
          v44 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v44)
          {
            goto LABEL_77;
          }

          goto LABEL_66;
        }
      }

      v44 = __CocoaSet.count.getter();
      if (!v44)
      {
LABEL_77:
        v48 = v17;

        v47 = 0;
        goto LABEL_78;
      }

LABEL_66:
      v45 = __OFSUB__(v44, 1);
      v30 = v44 - 1;
      if (v45)
      {
        goto LABEL_87;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        goto LABEL_88;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v30 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v46 = *(v18 + 8 * v30 + 32);
        goto LABEL_71;
      }

      __break(1u);
LABEL_91:
      a5 = v60;
      a4 = v61;
      v12 = v62;
    }
  }

  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v29 = *&a3[v31];
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_18;
    }

LABEL_33:
    v27 = 0;
    v28 = v13;
    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((v29 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x24C1FC540](0, v29);

    v28 = v13;
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_86;
    }

    v27 = *(v29 + 32);
    v28 = v13;
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_10:
  v29 = *&v12[v9[6]];
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_36:
    if (v27)
    {
      v28 = 0;
      goto LABEL_42;
    }

LABEL_46:
    v68 = 0;
    if (v18 < 2 || (v67 & 1) == 0)
    {
      goto LABEL_72;
    }

    v68 = 0;
    LOBYTE(v29) = 1;
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_49;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_36;
  }

LABEL_12:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x24C1FC540](0, v29);
    if (!v27)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v29 + 32);
    if (!v27)
    {
LABEL_41:
      if (v28)
      {
LABEL_42:
        v68 = v28;
        if (v18 < 2 || (v67 & 1) == 0)
        {
          goto LABEL_72;
        }

        LOBYTE(v29) = 0;
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_92;
        }

LABEL_49:
        if ((v17 & 0x4000000000000000) != 0)
        {
          goto LABEL_92;
        }

LABEL_50:
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_51;
        }

LABEL_72:

        v49 = *&v12[v9[6]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249BA0290;
        v51 = *&v12[v9[5]];
        *(inited + 32) = v51;
        v70 = v49;

        v52 = v51;
        specialized Array.append<A>(contentsOf:)(inited);
        v53 = v70;
        if (v70 >> 62)
        {
          if (__CocoaSet.count.getter() <= 7)
          {
            goto LABEL_74;
          }
        }

        else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 7)
        {
LABEL_74:
          v54 = swift_allocObject();
          *(v54 + 16) = a4;
          *(v54 + 24) = a5;

          DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(v53, v13, 1, 0, 0, thunk for @callee_guaranteed () -> ()partial apply, v54);

LABEL_81:
          v56 = v68;
          goto LABEL_82;
        }

        v57 = swift_allocObject();
        *(v57 + 16) = a4;
        *(v57 + 24) = a5;

        DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v52, v13, 0, 1, 0, thunk for @callee_guaranteed () -> ()partial apply, v57);

        goto LABEL_81;
      }

      goto LABEL_46;
    }

    goto LABEL_22;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  v46 = MEMORY[0x24C1FC540](v30, v18);
LABEL_71:
  v47 = v46;
  v48 = v17;

LABEL_78:
  v55 = swift_allocObject();
  *(v55 + 16) = a4;
  *(v55 + 24) = a5;

  DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(v48, v47, 0, 1, v29, v29 != 0, thunk for @callee_guaranteed () -> ()partial apply, v55);

  v56 = v27;
  v27 = v47;
LABEL_82:

  return outlined destroy of DOCBrowserHistoryItem(v12, type metadata accessor for DOCBrowserHistoryItem);
}

uint64_t DOCBrowserHistoryShiftRequest.transition(forApplyingChangeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v81 = type metadata accessor for DOCBrowserHistoryShiftRequest.Transition(0);
  MEMORY[0x28223BE20](v81, v5);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = MEMORY[0x277D84F90];
  v13 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
  if (Strong)
  {
    v79 = v2;
    v14 = *(v2 + 7);
    ObjectType = swift_getObjectType();
    v16 = objc_opt_self();
    v17 = [v16 browseStartingPointsLocation];
    v18 = [objc_allocWithZone(type metadata accessor for DOCBrowseStartingPointsDocumentSource()) init];
    v19 = &v10[v7[9]];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    UUID.init()();
    *&v10[v7[5]] = v17;
    *&v10[v7[6]] = v12;
    *&v10[v7[7]] = 0;
    *&v10[v7[8]] = v18;
    LOBYTE(v14) = (*(v14 + 8))(v10, ObjectType, v14);
    swift_unknownObjectRelease();
    outlined destroy of DOCBrowserHistoryItem(v10, type metadata accessor for DOCBrowserHistoryItem);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v12 = swift_allocObject();
      v13 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
      *(v12 + 16) = xmmword_249BA0290;
      *(v12 + 32) = [v16 browseStartingPointsLocation];
      v3 = v79;
    }

    else
    {
      v3 = v79;
      v13 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
    }
  }

  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v21 = *(a1 + v20);
  v84 = v12;

  specialized Array.append<A>(contentsOf:)(v21);
  v22 = v84;
  v23 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem];
  swift_beginAccess();
  v83 = v12;

  specialized Array.append<A>(contentsOf:)(v24);
  v25 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = v13[41];
  v27 = *&v23[v7[5]];
  *(inited + 32) = v27;
  v83 = v25;
  v28 = v27;
  specialized Array.append<A>(contentsOf:)(inited);
  v29 = v83;
  v30 = v22 >> 62;
  if (!(v22 >> 62))
  {
    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_14:
    v35 = 0;
    goto LABEL_15;
  }

  v31 = __CocoaSet.count.getter();
  if (!v31)
  {
    goto LABEL_14;
  }

LABEL_7:
  v32 = __OFSUB__(v31, 1);
  result = v31 - 1;
  if (v32)
  {
    goto LABEL_77;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (result >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  for (i = *(v22 + 8 * result + 32); ; i = MEMORY[0x24C1FC540](result, v22))
  {
    v35 = i;
LABEL_15:
    v36 = v29 >> 62;
    v37 = v29 >> 62 ? __CocoaSet.count.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v37)
    {
      break;
    }

    result = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_73;
    }

    v12 = v29 & 0xC000000000000001;
    if ((v29 & 0xC000000000000001) != 0)
    {
      goto LABEL_74;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v29 + 8 * result + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  v38 = MEMORY[0x24C1FC540](result, v29);
LABEL_23:
  v39 = v38;
  v40 = v3;
  v41 = v81;
  v42 = v23;
  v43 = v82;
  outlined init with copy of DOCBrowserHistoryItem(v42, &v82[*(v81 + 20)]);
  *v43 = 2;
  *&v43[*(v41 + 24)] = v29;
  *&v43[*(v41 + 28)] = v22;
  v78 = v35;
  v79 = v39;
  if (v35)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

    v44 = v39;
    v45 = v35;
    v46 = static NSObject.== infix(_:_:)();

    if (v46)
    {

      v47 = 2;
LABEL_69:
      *v43 = v47;
      return outlined init with take of DOCBrowserHistoryItem(v43, v80, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
    }
  }

  else
  {
  }

  if (v40[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_shiftDirection])
  {

    if (v36)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      if ((v49 & 0x8000000000000000) == 0)
      {
        if (v36)
        {
          result = __CocoaSet.count.getter();
          if (result < 0)
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          result = __CocoaSet.count.getter();
        }

        else
        {
          result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v49)
        {
          if (v12 && v49)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

            v52 = 0;
            do
            {
              v53 = v52 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v52);
              v52 = v53;
            }

            while (v49 != v53);
          }

          else
          {
          }

          if (v36)
          {
            _CocoaArrayWrapper.subscript.getter();
            v57 = v62;
            v56 = v63;
            v58 = v64;

            v59 = v78;
            if (v78)
            {
LABEL_51:
              v83 = v59;
              MEMORY[0x28223BE20](v54, v55);
              *(&v78 - 2) = &v83;
              specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), (&v78 - 4), v57, v56, v58);
              v61 = v60;

              swift_unknownObjectRelease();
              if (v61)
              {
                *v43 = 0;
              }

              return outlined init with take of DOCBrowserHistoryItem(v43, v80, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
            }
          }

          else
          {
            v56 = 0;
            v57 = (v29 & 0xFFFFFFFFFFFFFF8) + 32;
            v58 = (2 * v49) | 1;
            v59 = v78;
            if (v78)
            {
              goto LABEL_51;
            }
          }

          swift_unknownObjectRelease();
          v51 = v79;
LABEL_55:

          return outlined init with take of DOCBrowserHistoryItem(v43, v80, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
        }

        goto LABEL_83;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v30)
  {
    v48 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = v48;
    if (v48 >= 2)
    {
LABEL_58:
      v65 = v48 - 1;
      if (result >= (v48 - 1))
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

          v66 = 0;
          do
          {
            v67 = v66 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v66);
            v66 = v67;
          }

          while (v65 != v67);
        }

        else
        {
        }

        if (v30)
        {
          _CocoaArrayWrapper.subscript.getter();
          v70 = v72;
          v30 = v73;
          v71 = v74;
        }

        else
        {
          v70 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
          v71 = (2 * v65) | 1;
        }

        v75 = v79;
        v83 = v79;
        MEMORY[0x28223BE20](v68, v69);
        *(&v78 - 2) = &v83;
        specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v78 - 4), v70, v30, v71);
        v77 = v76;

        swift_unknownObjectRelease();
        if ((v77 & 1) == 0)
        {
          return outlined init with take of DOCBrowserHistoryItem(v43, v80, type metadata accessor for DOCBrowserHistoryShiftRequest.Transition);
        }

        v47 = 1;
        goto LABEL_69;
      }

      goto LABEL_84;
    }

LABEL_39:

    v51 = v78;
    goto LABEL_55;
  }

  v50 = __CocoaSet.count.getter();
  if (v50 < 2)
  {
    goto LABEL_39;
  }

  v48 = v50;
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    result = __CocoaSet.count.getter();
    goto LABEL_58;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t static DOCBrowserHistoryItem.browseStartingPointsItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() browseStartingPointsLocation];
  v3 = [objc_allocWithZone(type metadata accessor for DOCBrowseStartingPointsDocumentSource()) init];
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  v5 = (a1 + v4[9]);
  *v5 = 0u;
  v5[1] = 0u;
  result = UUID.init()();
  *(a1 + v4[5]) = v2;
  *(a1 + v4[6]) = MEMORY[0x277D84F90];
  *(a1 + v4[7]) = 0;
  *(a1 + v4[8]) = v3;
  return result;
}

uint64_t DOCBrowserHistoryShiftRequest.__deallocating_deinit()
{

  outlined destroy of weak DOCPresentationPreheatable?(v0 + 48);

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_previousItem;

  outlined destroy of CharacterSet?(v0 + v1, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined destroy of DOCBrowserHistoryItem(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_32E6B20DB90898F1F17EAA299C28CC0C29DOCBrowserHistoryShiftRequest_targetItem, type metadata accessor for DOCBrowserHistoryItem);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for browserHistory()
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.browserHistory = result;
  return result;
}

uint64_t *OS_os_log.browserHistory.unsafeMutableAddressor()
{
  if (one-time initialization token for browserHistory != -1)
  {
    swift_once();
  }

  return &static OS_os_log.browserHistory;
}

id static OS_os_log.browserHistory.getter()
{
  if (one-time initialization token for browserHistory != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.browserHistory;

  return v1;
}

void outlined consume of DOCConcreteLocation.DisplayCategory?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of DOCConcreteLocation.DisplayCategory(a1, a2);
  }
}

void outlined consume of DOCConcreteLocation.DisplayCategory(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

void type metadata completion function for DOCBrowserHistoryShiftRequest()
{
  type metadata accessor for DOCBrowserHistoryItem?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DOCBrowserHistoryItem(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DOCBrowserHistoryItem?()
{
  if (!lazy cache variable for type metadata for DOCBrowserHistoryItem?)
  {
    type metadata accessor for DOCBrowserHistoryItem(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCBrowserHistoryItem?);
    }
  }
}

unint64_t partial apply for closure #1 in DOCBrowserHistoryShiftRequest.applyChange(to:)()
{
  v1 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return DOCBrowserHistoryShiftRequest.performTransition(to:in:)(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with take of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DOCBrowserHistoryItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with copy of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCBrowserHistoryItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return closure #1 in closure #2 in closure #1 in DOCBrowserHistoryController.menu(for:shiftDirection:)(a1, v4, v5, v6);
}

void type metadata completion function for DOCBrowserHistoryShiftRequest.Transition()
{
  type metadata accessor for DOCBrowserHistoryShiftRequest.TransitionType?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DOCBrowserHistoryItem(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [DOCConcreteLocation]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DOCBrowserHistoryShiftRequest.TransitionType?()
{
  if (!lazy cache variable for type metadata for DOCBrowserHistoryShiftRequest.TransitionType?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCBrowserHistoryShiftRequest.TransitionType?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCBrowserHistoryShiftRequest.TransitionType and conformance DOCBrowserHistoryShiftRequest.TransitionType()
{
  result = lazy protocol witness table cache variable for type DOCBrowserHistoryShiftRequest.TransitionType and conformance DOCBrowserHistoryShiftRequest.TransitionType;
  if (!lazy protocol witness table cache variable for type DOCBrowserHistoryShiftRequest.TransitionType and conformance DOCBrowserHistoryShiftRequest.TransitionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserHistoryShiftRequest.TransitionType and conformance DOCBrowserHistoryShiftRequest.TransitionType);
  }

  return result;
}

id DOCItemDateGroupCategory.localizedTitle.getter(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    countAndFlagsBits = a1;
LABEL_17:
    outlined copy of DOCItemDateGroupCategory(a1, a2, a3);
    return countAndFlagsBits;
  }

  if (a1 <= 1)
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    if (a1 | a2)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v8 = result;
        v24 = 0x8000000249BE30E0;
        v9 = 0x6164726574736559;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v12 = 0xD000000000000035;
        v13 = 0xE900000000000079;
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v8 = result;
      v24 = 0x8000000249BE3120;
      v9 = 0x7961646F54;
      v10 = 0x617A696C61636F4CLL;
      v11 = 0xEB00000000656C62;
      v12 = 0xD000000000000031;
      v13 = 0xE500000000000000;
LABEL_12:
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, *&v10, v8, v22, *&v12)._countAndFlagsBits;

      a3 = v4;
      a2 = v5;
LABEL_16:
      a1 = v6;
      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = a3;
  v6 = a1;
  v15 = a2;
  if (!(a1 ^ 2 | a2))
  {
    result = _DocumentManagerBundle();
    if (!result)
    {
      goto LABEL_19;
    }

    v16 = result;
    v25 = 0x8000000249BE3090;
    v17 = 0x73756F6976657250;
    v18 = 0xEF73796164203720;
    v19 = 0x617A696C61636F4CLL;
    v20 = 0xEB00000000656C62;
    v21 = 0xD000000000000042;
LABEL_15:
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v17, *&v19, v16, v23, *&v21)._countAndFlagsBits;

    a3 = v14;
    a2 = v15;
    goto LABEL_16;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v16 = result;
    v25 = 0x8000000249BE3040;
    v19 = 0x617A696C61636F4CLL;
    v20 = 0xEB00000000656C62;
    v18 = 0x8000000249BE3020;
    v21 = 0xD000000000000043;
    v17 = 0xD000000000000010;
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t DOCItemDateGroupCategory.groupIdentifier.getter(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    v4 = 0x7961646F54;
    if (a1 ^ 2 | a2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x73756F6976657250;
    }

    if (a1 | a2)
    {
      v4 = 0x6164726574736559;
    }

    if (a1 <= 1)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  else
  {
    v3 = a1;
  }

  outlined copy of DOCItemDateGroupCategory(a1, a2, a3);
  return v3;
}

uint64_t DOCItemDateGroupCategory.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 5;
LABEL_5:
    MEMORY[0x24C1FCBD0](v4);

    return String.hash(into:)();
  }

  if (a2 > 1)
  {
    if (a2 ^ 2 | a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = (a2 | a3) != 0;
  }

  return MEMORY[0x24C1FCBD0](v6);
}

Swift::Int DOCItemDateGroupCategory.hashValue.getter(unint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (!a3)
  {
    v6 = 4;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 5;
LABEL_5:
    MEMORY[0x24C1FCBD0](v6);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a1 > 1)
  {
    if (a1 ^ 2 | a2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = (a1 | a2) != 0;
  }

  MEMORY[0x24C1FCBD0](v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCItemDateGroupCategory()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v3 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 5;
LABEL_5:
    MEMORY[0x24C1FCBD0](v3);

    return String.hash(into:)();
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = (v2 | v1) != 0;
  }

  return MEMORY[0x24C1FCBD0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemDateGroupCategory()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 5;
LABEL_5:
    MEMORY[0x24C1FCBD0](v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = (v2 | v1) != 0;
  }

  MEMORY[0x24C1FCBD0](v5);
  return Hasher._finalize()();
}

unint64_t protocol witness for DOCItemGroupCategory.groupIdentifier.getter in conformance DOCItemDateGroupCategory()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16) && v3 != 1)
  {
    v5 = 0x7961646F54;
    if (v1 ^ 2 | v2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x73756F6976657250;
    }

    if (v1 | v2)
    {
      v5 = 0x6164726574736559;
    }

    if (v1 <= 1)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = *v0;
  }

  outlined copy of DOCItemDateGroupCategory(v1, v2, v3);
  return v4;
}

uint64_t specialized static DOCItemDateGroupCategory.== infix(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (!(a1 ^ 2 | a2))
    {
      return a6 == 2 && a4 == 2 && !a5;
    }

    return a6 == 2 && a4 == 3 && !a5;
  }

  else
  {
    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    return a6 == 2 && a4 == 1 && !a5;
  }
}

uint64_t specialized static DOCDateGrouping.categorize(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v128 = *(v2 - 8);
  v129 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v127 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v124 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle();
  v132 = *(v8 - 8);
  v133 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v130 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v131 = &v107 - v13;
  v14 = type metadata accessor for DateComponents();
  v136 = *(v14 - 8);
  v137 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v134 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v135 = &v107 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v107 - v22;
  v24 = type metadata accessor for Calendar();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v107 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v107 - v40;
  outlined init with copy of Date?(a1, v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    outlined destroy of Date?(v32);
    return 0;
  }

  (*(v34 + 32))(v41, v32, v33);
  static Calendar.current.getter();
  if (Calendar.isDateInToday(_:)())
  {
    (*(v25 + 8))(v28, v24);
    (*(v34 + 8))(v41, v33);
    return 0;
  }

  if ((Calendar.isDateInYesterday(_:)() & 1) == 0)
  {
    v120 = v34;
    v122 = v24;
    v123 = v25;
    Date.init()();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
    v44 = type metadata accessor for Calendar.Component();
    v45 = *(v44 - 8);
    v121 = v37;
    v119 = v23;
    v46 = v45;
    v47 = *(v45 + 72);
    v48 = *(v45 + 80);
    v49 = (v48 + 32) & ~v48;
    v117 = 2 * v47;
    v114 = v48;
    v116 = v43;
    v50 = swift_allocObject();
    v118 = v41;
    v51 = v50;
    *(v50 + 16) = xmmword_249BA08C0;
    v109 = v49;
    v52 = v50 + v49;
    v53 = *MEMORY[0x277CC9968];
    v110 = v46;
    v54 = v119;
    v55 = v121;
    v56 = *(v46 + 104);
    v56(v52, v53, v44);
    v57 = *MEMORY[0x277CC9998];
    v115 = v47;
    v58 = v52 + v47;
    v59 = v55;
    v56(v58, v57, v44);
    v60 = v52 + v117;
    v112 = *MEMORY[0x277CC9988];
    v117 = v46 + 104;
    v113 = v56;
    (v56)(v60);
    v61 = v28;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v51);
    swift_setDeallocating();
    v111 = v44;
    swift_arrayDestroy();
    v62 = v118;
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:to:)();

    v63 = DateComponents.year.getter();
    if (v64 & 1) != 0 || (v65 = v63, v66 = DateComponents.month.getter(), (v67) || (v68 = v66, v69 = DateComponents.day.getter(), (v70))
    {
      (*(v136 + 8))(v54, v137);
      v71 = *(v120 + 8);
      v71(v55, v33);
      (*(v123 + 8))(v61, v122);
      v71(v62, v33);
      return 0;
    }

    v72 = v68 | v65;
    v73 = v122;
    v74 = v123;
    v75 = v120;
    if (!v72)
    {
      if (v69 >= -7)
      {
        (*(v136 + 8))(v54, v137);
        v105 = *(v75 + 8);
        v105(v59, v33);
        (*(v74 + 8))(v28, v73);
        v105(v62, v33);
        return 2;
      }

      if (v69 >= 0xFFFFFFFFFFFFFFE2)
      {
        (*(v136 + 8))(v54, v137);
        v106 = *(v75 + 8);
        v106(v59, v33);
        (*(v74 + 8))(v28, v73);
        v106(v62, v33);
        return 3;
      }
    }

    v76 = v109;
    v77 = swift_allocObject();
    v107 = xmmword_249B9A480;
    *(v77 + 16) = xmmword_249B9A480;
    v78 = v111;
    v108 = v61;
    v113(v77 + v76, v112, v111);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v77);
    swift_setDeallocating();
    v79 = *(v110 + 8);
    v79(v77 + v76, v78);
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v80 = swift_allocObject();
    *(v80 + 16) = v107;
    v113(v80 + v76, v112, v78);
    v81 = v108;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v80);
    swift_setDeallocating();
    v79(v80 + v76, v78);
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v82 = DateComponents.year.getter();
    v84 = v83;
    v85 = DateComponents.year.getter();
    if (v84)
    {
      v87 = v120;
      if ((v86 & 1) == 0)
      {
LABEL_22:
        v97 = v130;
        MEMORY[0x24C1F7560](v85);
        v98 = v127;
        static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
        v99 = v131;
        Date.FormatStyle.year(_:)();
        (*(v128 + 8))(v98, v129);
        v100 = v133;
        v101 = *(v132 + 8);
        v101(v97, v133);
        lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
        Date.formatted<A>(_:)();
        v101(v99, v100);
        v102 = v137;
        v103 = *(v136 + 8);
        v103(v134, v137);
        v103(v135, v102);
        v103(v54, v102);
        v104 = *(v87 + 8);
        v104(v121, v33);
        (*(v123 + 8))(v81, v122);
        v104(v62, v33);
        return v138;
      }
    }

    else
    {
      v87 = v120;
      if ((v86 & 1) != 0 || v82 != v85)
      {
        goto LABEL_22;
      }
    }

    v88 = v130;
    v89 = MEMORY[0x24C1F7560](v85);
    v90 = v124;
    MEMORY[0x24C1F7D90](v89);
    v91 = v131;
    Date.FormatStyle.month(_:)();
    (*(v125 + 8))(v90, v126);
    v92 = v133;
    v93 = *(v132 + 8);
    v93(v88, v133);
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
    Date.formatted<A>(_:)();
    v93(v91, v92);
    v94 = v137;
    v95 = *(v136 + 8);
    v95(v134, v137);
    v95(v135, v94);
    v95(v54, v94);
    v96 = *(v87 + 8);
    v96(v121, v33);
    (*(v123 + 8))(v81, v122);
    v96(v62, v33);
    return v138;
  }

  (*(v25 + 8))(v28, v24);
  (*(v34 + 8))(v41, v33);
  return 1;
}

unint64_t lazy protocol witness table accessor for type DOCItemDateGroupCategory and conformance DOCItemDateGroupCategory()
{
  result = lazy protocol witness table cache variable for type DOCItemDateGroupCategory and conformance DOCItemDateGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemDateGroupCategory and conformance DOCItemDateGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemDateGroupCategory and conformance DOCItemDateGroupCategory);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables24DOCItemDateGroupCategoryO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t destructiveInjectEnumTag for DOCItemDateGroupCategory(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

void specialized DOCViewOptionsView.embeddedInHostingController()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy26DocumentManagerExecutables18DOCViewOptionsViewVyAD0hiJ5ModelCGGMd));

  v6 = UIHostingController.init(rootView:)();
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = v6;
  v10 = MEMORY[0x24C1FAD20](v8, v7);
  [v9 setTitle_];

  v11 = [v9 view];
  if (v11)
  {
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];

    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCViewOptionsViewController.viewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  *(v5 + 8) = a1;

  v4(v7, 0);
}

id DOCViewOptionsViewController.init(viewModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___doneBarButtonButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___dismissAction] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel] = a1;
  type metadata accessor for DOCViewOptionsViewModel();
  lazy protocol witness table accessor for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel();
  swift_retain_n();
  v4 = ObservedObject.init(wrappedValue:)();
  specialized DOCViewOptionsView.embeddedInHostingController()(v4, v5);
  v7 = v6;

  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController] = v7;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_initWithRootViewController_, v7);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() viewOptionsRoot];
    if (!v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = MEMORY[0x24C1FAD20](v12);
    }

    [v10 setAccessibilityIdentifier_];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel()
{
  result = lazy protocol witness table cache variable for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel;
  if (!lazy protocol witness table cache variable for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel)
  {
    type metadata accessor for DOCViewOptionsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel);
  }

  return result;
}

uint64_t key path setter for DOCViewOptionsViewController.viewModel : DOCViewOptionsViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = dispatch thunk of UIHostingController.rootView.modify();
  *(v6 + 8) = v2;

  return v5(v8, 0);
}

void (*DOCViewOptionsViewController.viewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return DOCViewOptionsViewController.viewModel.modify;
}

void DOCViewOptionsViewController.viewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = dispatch thunk of UIHostingController.rootView.modify();
    *(v6 + 8) = v4;

    v5(v3, 0);
  }

  free(v3);
}

id DOCViewOptionsViewController.doneBarButtonButtonItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___doneBarButtonButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___doneBarButtonButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___doneBarButtonButtonItem);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v4 = v0;
    v5 = DOCViewOptionsViewController.dismissAction.getter();
    UIBarButtonItem.init(systemItem:primaryAction:menu:)(v6, UIBarButtonSystemItemDone, v5, 0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DOCViewOptionsViewController.dismissAction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___dismissAction;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___dismissAction);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void closure #1 in DOCViewOptionsViewController.dismissAction.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall DOCViewOptionsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
  v3 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController] navigationItem];
  if ([v1 _isInPopoverPresentation])
  {
    v4 = 0;
  }

  else
  {
    v4 = DOCViewOptionsViewController.doneBarButtonButtonItem.getter();
  }

  [v3 setRightBarButtonItem_];

  swift_beginAccess();

  [v1 _isInPopoverPresentation];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

void DOCViewOptionsViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = [*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController] navigationItem];
  if ([v3 _isInPopoverPresentation])
  {
    v8 = 0;
  }

  else
  {
    v8 = DOCViewOptionsViewController.doneBarButtonButtonItem.getter();
  }

  [v7 setRightBarButtonItem_];

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (LOBYTE(aBlock[0]) != 2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    aBlock[4] = partial apply for closure #1 in DOCViewOptionsViewController.viewWillTransition(to:with:);
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    aBlock[3] = &block_descriptor_69;
    v10 = _Block_copy(aBlock);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

uint64_t closure #1 in DOCViewOptionsViewController.viewWillTransition(to:with:)(int a1, id a2)
{
  [a2 _isInPopoverPresentation];
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id DOCViewOptionsViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewOptionsHostingController];
  [v3 preferredContentSize];
  v5 = v4;
  v6 = [v1 navigationBar];
  [v6 intrinsicContentSize];
  v8 = v7;

  [v3 preferredContentSize];
  return [v1 setPreferredContentSize_];
}

id DOCViewOptionsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCViewOptionsViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

void DOCViewOptionsViewController.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController____lazy_storage___dismissAction);
}

id DOCViewOptionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCPickerViewController.placeholderViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPickerViewController.placeholderViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCPickerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCPickerViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCPickerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCPickerViewController.__allocating_init(source:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source] = a1;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id DOCPickerViewController.init(source:configuration:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source] = a1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCPickerViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall DOCPickerViewController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [objc_opt_self() linkColor];
  [v2 setTintColor_];

  v4 = objc_opt_self();
  v5 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source] pickerExtension];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v40[4] = partial apply for closure #1 in DOCPickerViewController.viewDidLoad();
  v40[5] = v6;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSCopying?, @guaranteed _UIDocumentPickerRemoteViewController?, @guaranteed Error?) -> ();
  v40[3] = &block_descriptor_70;
  v7 = _Block_copy(v40);
  v8 = v0;

  v9 = [v4 instantiateWithExtension:v5 completion:v7];
  _Block_release(v7);

  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v8) + 0x78))(v9);
  v12 = *((*v10 & *v8) + 0x70);
  v13 = (v12)(v11);
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 delayDisplayOfRemoteController];

  v15 = v12();
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v15 view];

  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 setAutoresizingMask_];

  v18 = v12();
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 view];

  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = [v8 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame_];
  v31 = v12();
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  [v8 addChildViewController_];

  v33 = [v8 view];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = v33;
  v35 = v12();
  if (!v35)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v35;
  v37 = [v35 view];

  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v34 addSubview_];

  v38 = v12();
  if (v38)
  {
    v39 = v38;
    [v38 didMoveToParentViewController_];

    return;
  }

LABEL_25:
  __break(1u);
}

void closure #1 in DOCPickerViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249B9FA70;
    v6 = [*(a4 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source) pickerExtension];
    v7 = [v6 identifier];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v5 + 32) = v8;
      *(v5 + 40) = v10;
      v11 = _convertErrorToNSError(_:)();
      *(v5 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      *(v5 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
      *(v5 + 72) = v11;
      os_log(_:dso:log:type:_:)();

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *a4) + 0x70))();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 remoteViewController];

  if (!v15)
  {
LABEL_15:
    __break(1u);
    return;
  }

  (*((*v12 & *a4) + 0xA8))(v15);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSCopying?, @guaranteed _UIDocumentPickerRemoteViewController?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void DOCPickerViewController.configureRemoteViewController(remoteViewController:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v90 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v92 = &v90 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v90 - v17;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v90 - v22;
  [a1 setPublicController_];
  v24 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source];
  v25 = [v24 providerDomain];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 identifier];
  }

  else
  {
    v27 = 0;
  }

  [a1 setIdentifier_];

  [a1 setEdgesForExtendedLayout_];
  v28 = objc_opt_self();
  v100 = closure #1 in DOCPickerViewController.configureRemoteViewController(remoteViewController:);
  v101 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v98 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v99 = &block_descriptor_3_3;
  v29 = _Block_copy(&aBlock);
  v30 = [v28 pickerExtensionForRemoteViewController:a1 errorHandler:v29];
  _Block_release(v29);
  if (v30)
  {
    v93 = v2;
    v31 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration];
    DOCDocumentPickerExtensionUpdateWithConfiguration();
    v32 = [v31 urls];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v34 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_8;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x24C1FC540](0, v34);
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_44;
          }

          v35 = *(v34 + 32);
        }

        v36 = v35;

        v37 = [v36 url];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v9 + 32))(v23, v18, v8);
        (*(v9 + 16))(v7, v23, v8);
        (*(v9 + 56))(v7, 0, 1, v8);
        v38 = [v31 interactionMode];
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          v40 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v39);
          v40 = v45;
          (*(v9 + 8))(v7, v8);
        }

        v46 = [objc_opt_self() wrapperWithURL:v40 readonly:v38 == 2];

        [v30 _setUploadURLWrapper_];
        (*(v9 + 8))(v23, v8);
LABEL_23:
        v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v47 = &selRef_initWithFrame_;
        if ([v31 interactionMode] != 3 && objc_msgSend(v31, sel_interactionMode) != 1)
        {
          goto LABEL_31;
        }

        v48 = [v24 providerDomain];
        if (!v48)
        {
LABEL_28:
          if (one-time initialization token for Source != -1)
          {
            swift_once();
          }

          static os_log_type_t.error.getter();
          os_log(_:dso:log:type:_:)();
          goto LABEL_31;
        }

        v49 = v48;

        v50 = [v24 providerDomain];
        if (v50)
        {
          v51 = v50;
          v52 = [v50 storageURLs];

          v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = *(v53 + 16);

          if (!v54)
          {
            goto LABEL_28;
          }

LABEL_31:
          v55 = [v24 providerDomain];
          v56 = v93;
          if (v55)
          {
            v57 = v55;
            v58 = [v55 storageURLs];

            v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v59 + 16))
            {
              v60 = *(v9 + 16);
              v61 = v91;
              v60(v91, v59 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

              v62 = v92;
              (*(v9 + 32))(v92, v61, v8);
              v99 = v8;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
              v60(boxed_opaque_existential_1, v62, v8);
              outlined init with take of Any(&aBlock, v95);
              v64 = v96;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v94 = v64;
              v47 = &selRef_initWithFrame_;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 0xD000000000000012, 0x8000000249BE3300, isUniquelyReferenced_nonNull_native);
              (*(v9 + 8))(v62, v8);
              v96 = v94;
            }

            else
            {
            }
          }

          v66 = [v24 v47[248]];
          if (v66)
          {
            v67 = v66;
            v68 = [v66 identifier];

            type metadata accessor for FPProviderDomainID(0);
            v99 = v69;
            *&aBlock = v68;
            outlined init with take of Any(&aBlock, v95);
            v70 = v96;
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v94 = v70;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 0xD000000000000012, 0x8000000249BE32E0, v71);
            v96 = v94;
          }

          else
          {
            specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x8000000249BE32E0, &aBlock);
            outlined destroy of Any?(&aBlock);
          }

          v72 = [v24 fileProviderDocumentGroup];
          v73 = MEMORY[0x277D837D0];
          if (v72)
          {
            v74 = v72;
            v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            v99 = v73;
            *&aBlock = v75;
            *(&aBlock + 1) = v77;
            outlined init with take of Any(&aBlock, v95);
            v78 = v96;
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v94 = v78;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 0x746E656D75636F64, 0xED000070756F7247, v79);
            v80 = v94;
          }

          else
          {
            specialized Dictionary._Variant.removeValue(forKey:)(0x746E656D75636F64, 0xED000070756F7247, &aBlock);
            outlined destroy of Any?(&aBlock);
            v80 = v96;
          }

          v81 = [v24 displayName];
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;

          v99 = v73;
          *&aBlock = v82;
          *(&aBlock + 1) = v84;
          outlined init with take of Any(&aBlock, v95);
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v94 = v80;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 0x657A696C61636F6CLL, 0xED0000656D614E64, v85);
          specialized _dictionaryUpCast<A, B, C, D>(_:)(v94);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v87 = swift_allocObject();
          *(v87 + 16) = v56;
          v100 = partial apply for closure #2 in DOCPickerViewController.configureRemoteViewController(remoteViewController:);
          v101 = v87;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v98 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UIApplicationSystemVersion) -> ();
          v99 = &block_descriptor_9_4;
          v88 = _Block_copy(&aBlock);
          v89 = v56;

          [v30 _prepareWithExtensionInfo_completionHandler_];
          _Block_release(v88);
          swift_unknownObjectRelease();

          return;
        }

LABEL_44:
        __break(1u);
        return;
      }
    }

    [v30 _setUploadURLWrapper_];
    goto LABEL_23;
  }

  if (one-time initialization token for Source != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.Source);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2493AC000, v42, v43, "nil proxy", v44, 2u);
    MEMORY[0x24C1FE850](v44, -1, -1);
  }
}

void closure #1 in DOCPickerViewController.configureRemoteViewController(remoteViewController:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_249B9A480;
    v4 = _convertErrorToNSError(_:)();
    *(v3 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v3 + 64) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v3 + 32) = v4;
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned UIApplicationSystemVersion) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void DOCPickerViewController._didSelect(_:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = partial apply for closure #1 in DOCPickerViewController._didSelect(_:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v10 = _Block_copy(aBlock);

  [v1 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void closure #1 in DOCPickerViewController._didSelect(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration;
    v6 = [*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration) useSharedQuickLook];
    v7 = MEMORY[0x277D85000];
    if (v6)
    {
      v8 = [*(v4 + v5) sceneIdentifier];
      if (v8)
      {
        v9 = one-time initialization token for mapTable;
        v10 = v8;
        if (v9 != -1)
        {
          v27 = v10;
          swift_once();
          v10 = v27;
        }

        v11 = static DOCPreviewController.mapTable;
        v12 = v10;
        v13 = [v11 objectForKey_];
        if (!v13)
        {
          v14 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
          v13 = DOCPreviewController.init()();
          [v11 setObject:v13 forKey:v12];
        }

        (*((*v7 & *v13) + 0x1D8))(0, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
        v15 = type metadata accessor for URL();
        v16 = *(v15 - 8);
        v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_249B9A480;
        (*(v16 + 16))(v18 + v17, a2, v15);
        LOBYTE(v30) = 1;
        v19 = *v7 & *v13;
        v20 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source);
        v28 = v18;
        v29 = v20;
        v21 = *(v19 + 456);
        v22 = v20;
        v21(&v28, 0, 1);

        outlined consume of DOCPreviewSource?(v28, v29, v30);
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

    if ([*(v4 + v5) interactionMode] == 1)
    {
      v23 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source) supportsInteractionMode_] ^ 1;
    }

    else
    {
      v23 = 0;
    }

    if ((*((*v7 & *v4) + 0x88))())
    {
      v25 = v24;
      ObjectType = swift_getObjectType();
      (*(v25 + 24))(a2, v23, ObjectType, v25);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCPickerViewController._dismissViewController()()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x88))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCPickerViewController._displayLocationsMenu(from:)(__C::CGRect from)
{
  height = from.size.height;
  width = from.size.width;
  y = from.origin.y;
  x = from.origin.x;
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x88))())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v1, ObjectType, v7, x, y, width, height);

    swift_unknownObjectRelease();
  }
}

id DOCPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id DOCPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void partial apply for closure #2 in DOCPickerViewController.configureRemoteViewController(remoteViewController:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  [v1 endDelayingDisplayOfRemoteController];
}

void partial apply for closure #1 in DOCPickerViewController._didSelect(_:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in DOCPickerViewController._didSelect(_:)(v2, v3);
}

id OutlineGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OutlineGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OutlineGradientView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id OutlineGradientView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutlineGradientView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void OutlineGradientView.frame.setter(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = type metadata accessor for OutlineGradientView();
  objc_msgSendSuper2(&v9, sel_setFrame_, a1, a2, a3, a4);
  OutlineGradientView.frame.didset();
}

void OutlineGradientView.frame.didset()
{
  v33 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  [v0 frame];
  v2 = CGRectGetWidth(v35) + -24.0 + -20.0 + -20.0;
  [v0 frame];
  v3 = v2 / CGRectGetWidth(v36);
  [v0 frame];
  Width = CGRectGetWidth(v37);
  [v0 frame];
  v5 = CGRectGetWidth(v38);
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA08C0;
    v7 = objc_opt_self();
    v8 = [v7 clearColor];
    v9 = [v8 CGColor];

    type metadata accessor for CGColorRef(0);
    v11 = v10;
    *(v6 + 56) = v10;
    *(v6 + 32) = v9;
    v12 = [v7 whiteColor];
    v13 = [v12 CGColor];

    *(v6 + 88) = v11;
    *(v6 + 64) = v13;
    v14 = [v7 whiteColor];
    v15 = [v14 CGColor];

    *(v6 + 120) = v11;
    *(v6 + 96) = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setColors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249BA37E0;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    *(v17 + 32) = NSNumber.init(floatLiteral:)(0.0);
    *(v17 + 40) = NSNumber.init(floatLiteral:)(1.0 - v3);
    v18 = 1.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249BA08C0;
    v20 = objc_opt_self();
    v21 = [v20 whiteColor];
    v22 = [v21 colorWithAlphaComponent_];

    v23 = [v22 CGColor];
    type metadata accessor for CGColorRef(0);
    v25 = v24;
    *(v19 + 56) = v24;
    *(v19 + 32) = v23;
    v26 = [v20 whiteColor];
    v27 = [v26 colorWithAlphaComponent_];

    v28 = [v27 CGColor];
    *(v19 + 88) = v25;
    *(v19 + 64) = v28;
    v29 = [v20 clearColor];
    v30 = [v29 CGColor];

    *(v19 + 120) = v25;
    *(v19 + 96) = v30;
    v31 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setColors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249BA37E0;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    *(v17 + 32) = NSNumber.init(floatLiteral:)(0.0);
    *(v17 + 40) = NSNumber.init(floatLiteral:)(v3);
    v18 = (Width + -24.0 + -20.0) / v5;
  }

  *(v17 + 48) = NSNumber.init(floatLiteral:)(v18);
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setLocations_];

  [v1 setStartPoint_];
  [v1 setEndPoint_];
}

id OutlineGradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OutlineGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutlineGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCFileOperationCollectionSource.__allocating_init(manager:filteringPredicate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DOCFileOperationCollectionSource.init(manager:filteringPredicate:)(a1, a2, a3);
  return v6;
}

void *DOCFileOperationCollectionSource.init(manager:filteringPredicate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[6] = a1;
  v8 = MEMORY[0x277D84F90];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = v8;
  swift_beginAccess();
  v4[3] = a2;
  v4[4] = a3;
  v9 = a1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  specialized DOCFilterableOperationProgressCollectionSource.updateItems(andNotify:)(0);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0xF8);

  v10(v11);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);

  return v4;
}

uint64_t @objc DOCFileOperationCollectionSource.didUpdateInProgressOperations(in:)()
{

  specialized DOCFilterableOperationProgressCollectionSource.updateItems(andNotify:)(1);
}

uint64_t DOCFileOperationCollectionSource.rawUnorderedItemsFromUnderlyingSource.getter()
{
  v1 = *(v0 + 48);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
  v3 = v1;
  v4 = v2();

  return v4;
}

uint64_t DOCFileOperationCollectionSource.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));

  return v0;
}

uint64_t DOCFilterableOperationProgressCollectionSource.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));

  return v0;
}

uint64_t DOCFileOperationCollectionSource.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t DOCFilterableOperationProgressCollectionSource.setItemDidUpdateHandler(forClient:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    DOCFilterableOperationProgressCollectionSource.installHandler(forClient:handler:)(a1, a2, a3);

    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  }

  else
  {

    return DOCFilterableOperationProgressCollectionSource.removeHandler(forClient:)(a1);
  }
}

uint64_t DOCFilterableOperationProgressCollectionSource.filteringPredicate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCFilterableOperationProgressCollectionSource.filteringPredicate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t specialized DOCFilterableOperationProgressCollectionSource.updateItems(andNotify:)(int a1)
{
  v58 = a1;
  v2 = type metadata accessor for DOCFileOperation();
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v57 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v57 - v13;
  v59 = (*(*v1 + 128))(v12);
  v15 = (*(*v1 + 176))();
  v16 = *(v15 + 16);
  v63 = v1;

  v18 = MEMORY[0x277D84F90];
  v60 = v16;
  if (v16)
  {
    v19 = 0;
    while (1)
    {
      if (v19 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v21 = *(v62 + 72);
      outlined init with copy of DOCFileOperation(v15 + v20 + v21 * v19, v14);
      *(&v69 + 1) = v61;
      v70 = &protocol witness table for DOCFileOperation;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
      v23 = outlined init with copy of DOCFileOperation(v14, boxed_opaque_existential_1);
      v24 = (*(*v63 + 152))(v23);
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = v24(&v68);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25);
      __swift_destroy_boxed_opaque_existential_0(&v68);
      if (v26)
      {
        goto LABEL_10;
      }

      result = outlined destroy of DOCFileOperation(v14);
LABEL_4:
      if (v60 == ++v19)
      {
        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v68);
LABEL_10:
    outlined init with take of DOCFileOperation(v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
      v18 = v64[0];
    }

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
      v18 = v64[0];
    }

    *(v18 + 16) = v29 + 1;
    result = outlined init with take of DOCFileOperation(v10, v18 + v20 + v29 * v21);
    goto LABEL_4;
  }

LABEL_15:

  v30 = v63;

  v31 = specialized _arrayForceCast<A, B>(_:)(v18);
  (*(*v30 + 136))(v31);
  if (v58)
  {
    v32 = v59;
    v33 = *(v59 + 16);
    if (v33)
    {
      v34 = MEMORY[0x277D84F90];
      v67 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
      v35 = v67;
      v36 = v32 + 32;
      v37 = v57;
      do
      {
        outlined init with copy of DOCSidebarItemIconProvider(v36, v64);
        v38 = v65;
        v39 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        (*(v39 + 8))(&v68, v38, v39);
        __swift_destroy_boxed_opaque_existential_0(v64);
        v67 = v35;
        v41 = *(v35 + 16);
        v40 = *(v35 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v35 = v67;
        }

        *(v35 + 16) = v41 + 1;
        v42 = v35 + 40 * v41;
        v43 = v68;
        v44 = v69;
        *(v42 + 64) = v70;
        *(v42 + 32) = v43;
        *(v42 + 48) = v44;
        v36 += 40;
        --v33;
      }

      while (v33);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
      v37 = v57;
      v34 = MEMORY[0x277D84F90];
    }

    v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SayAEGTt0g5Tf4g_n(v35);

    v46 = *(v18 + 16);
    if (v46)
    {
      v64[0] = v34;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
      v47 = v64[0];
      v48 = v18 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v49 = *(v62 + 72);
      do
      {
        outlined init with copy of DOCFileOperation(v48, v37);
        outlined init with copy of AnyHashable(v37, &v68);
        outlined destroy of DOCFileOperation(v37);
        v64[0] = v47;
        v51 = *(v47 + 16);
        v50 = *(v47 + 24);
        if (v51 >= v50 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
          v47 = v64[0];
        }

        *(v47 + 16) = v51 + 1;
        v52 = v47 + 40 * v51;
        v53 = v68;
        v54 = v69;
        *(v52 + 64) = v70;
        *(v52 + 32) = v53;
        *(v52 + 48) = v54;
        v48 += v49;
        --v46;
      }

      while (v46);
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    v55 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SayAEGTt0g5Tf4g_n(v47);

    v56 = _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(v45, v55);

    if ((v56 & 1) == 0)
    {
      return specialized DOCFilterableOperationProgressCollectionSource.notifyClientHandlers()();
    }
  }

  else
  {
  }

  return result;
}

uint64_t DOCFilterableOperationProgressCollectionSource.installHandler(forClient:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DOCFilterableOperationProgressCollectionSource.removeHandler(forClient:)(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_beginAccess();
  v8 = *(v3 + 40);
  swift_unknownObjectRetain();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v3 + 40) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  v12[4] = a1;
  v12[5] = _s26DocumentManagerExecutables45DOCProgressProvidingOperationCollectionSource_pIegg_AaB_pytIegnr_TRTA_0;
  v12[6] = v7;
  *(v3 + 40) = v8;
  return swift_endAccess();
}

uint64_t DOCFilterableOperationProgressCollectionSource.removeHandler(forClient:)(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v1 + 40, a1);
  result = swift_unknownObjectRelease();
  v5 = *(*(v1 + 40) + 16);
  if (v5 < v3)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v3, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t specialized DOCFilterableOperationProgressCollectionSource.notifyClientHandlers()()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v15[0];
    v6 = *(v15[0] + 16);
    v7 = 40;
    do
    {
      v8 = *(v3 + v7);
      v15[0] = v5;
      v9 = *(v5 + 24);
      v14 = v8;

      if (v6 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v6 + 1, 1);
        v5 = v15[0];
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 16 * v6 + 32) = v14;
      v7 += 24;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v10 = *(v5 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  v12 = v5 + 40;
  while (v11 < *(v5 + 16))
  {
    ++v11;
    v13 = *(v12 - 8);
    v15[0] = v1;
    v15[1] = &protocol witness table for DOCFilterableOperationProgressCollectionSource<A>;

    v13(v15);

    v12 += 16;
    if (v10 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for DOCFilterableOperationProgressCollectionSource.filteringPredicate : <A>DOCFilterableOperationProgressCollectionSource<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 152))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCProgressProvidingOperation) -> (@unowned Bool);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCFilterableOperationProgressCollectionSource.filteringPredicate : <A>DOCFilterableOperationProgressCollectionSource<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCProgressProvidingOperation) -> (@out Bool);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 160);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCFilterableOperationProgressCollectionSource.__deallocating_deinit()
{
  DOCFilterableOperationProgressCollectionSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DOCFileOperationCollectionSource()
{
  result = type metadata singleton initialization cache for DOCFileOperationCollectionSource;
  if (!type metadata singleton initialization cache for DOCFileOperationCollectionSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCProgressProvidingOperation) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

id DOCGoToSuggestionsCollectionView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewDelegate];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v8(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *&v1[v4] = v5;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCGoToSuggestionsCollectionView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t protocol witness for DOCFocusableCollectionView.focusableCollectionViewDelegate.setter in conformance DOCGoToSuggestionsCollectionView(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewDelegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id DOCGoToSuggestionsViewController.__allocating_init(metrics:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestions] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections] = v4;
  v5 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics];
  v6 = a1[5];
  v5[4] = a1[4];
  v5[5] = v6;
  v5[6] = a1[6];
  v7 = a1[1];
  *v5 = *a1;
  v5[1] = v7;
  v8 = a1[3];
  v5[2] = a1[2];
  v5[3] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v12.receiver = v3;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCollectionViewLayout_, v9);

  return v10;
}

id DOCGoToSuggestionsViewController.init(metrics:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestions] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections] = v3;
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics];
  v5 = a1[5];
  v4[4] = a1[4];
  v4[5] = v5;
  v4[6] = a1[6];
  v6 = a1[1];
  *v4 = *a1;
  v4[1] = v6;
  v7 = a1[3];
  v4[2] = a1[2];
  v4[3] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCGoToSuggestionsViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCollectionViewLayout_, v8);

  return v9;
}

uint64_t DOCGoToSuggestionsViewController.SuggestionCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22[-1] - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22[-1] - v13;
  static UIBackgroundConfiguration.clear()();
  v15 = type metadata accessor for UICellConfigurationState();
  v22[3] = v15;
  v22[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a1, v15);
  UIBackgroundConfiguration.updated(for:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v18 = &selRef_systemGray4Color;
LABEL_4:
    v19 = [objc_opt_self() *v18];
    UIBackgroundConfiguration.backgroundColor.setter();
    goto LABEL_5;
  }

  if (_UISolariumEnabled())
  {
    v18 = &selRef_clearColor;
    goto LABEL_4;
  }

LABEL_5:
  if (_UISolariumEnabled())
  {
    UIBackgroundConfiguration.backgroundInsets.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
  }

  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  MEMORY[0x24C1FBB40](v5);
  return (v17)(v14, v6);
}

id @objc DOCGoToSuggestionsViewController.SuggestionCell.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id @objc DOCGoToSuggestionsViewController.SuggestionCell.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t DOCGoToSuggestionsViewController.suggestionsTableViewDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCGoToSuggestionsViewController.suggestionsTableViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

void DOCGoToSuggestionsViewController.suggestions.didset(uint64_t a1)
{
  DOCGoToSuggestionsViewController.updateSections()(a1);
  v2 = [v1 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 reloadData];

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 adjustedContentInset];
  v7 = v6;

  [v8 setContentOffset:0 animated:{0.0, -v7}];
}

void DOCGoToSuggestionsViewController.suggestions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  DOCGoToSuggestionsViewController.suggestions.didset(v4);
}

void (*DOCGoToSuggestionsViewController.suggestions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCGoToSuggestionsViewController.suggestions.modify;
}

void DOCGoToSuggestionsViewController.suggestions.modify(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCGoToSuggestionsViewController.suggestions.didset(v3);
  }
}

uint64_t DOCGoToSuggestionsViewController.isFiltering.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCGoToSuggestionsViewController.isFiltering.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCGoToSuggestionsViewController.selectedSuggestion.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 indexPathsForSelectedItems];

    if (v15)
    {
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v16 + 16))
      {
        (*(v4 + 16))(v7, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

        (*(v4 + 32))(v12, v7, v3);
        DOCGoToSuggestionsViewController.suggestion(at:)(a1);
        (*(v4 + 8))(v12, v3);
        return;
      }
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

id DOCGoToSuggestionsViewController.createLayout()()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.ContentHuggingElements();
  MEMORY[0x28223BE20](v0, v1);
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = swift_allocBox();
  (*(v3 + 104))(v6, *MEMORY[0x277D74D60], v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v8 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay5UIKit35UICollectionLayoutListConfigurationV22ContentHuggingElementsVGMd);
  lazy protocol witness table accessor for type [UICollectionLayoutListConfiguration.ContentHuggingElements] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  UICollectionLayoutListConfiguration.contentHuggingElements.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = partial apply for closure #2 in DOCGoToSuggestionsViewController.createLayout();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_42_0;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithSectionProvider_];
  _Block_release(v12);

  return v13;
}

id closure #1 in DOCGoToSuggestionsViewController.createLayout()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListSeparatorConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v10 + 16))(a2, a1, v9);
  }

  v15 = Strong;
  v22 = v5;
  v16 = a2;
  (*(v10 + 16))(v13, a1, v9);
  UIListSeparatorConfiguration.topSeparatorInsets.getter();
  v17 = UIListSeparatorConfiguration.bottomSeparatorInsets.getter();
  v18 = (*((*MEMORY[0x277D85000] & *v15) + 0xC8))(v17);
  v19 = IndexPath.row.getter();
  if (v18)
  {
    if (!v19)
    {
      (*(v22 + 104))(v8, *MEMORY[0x277D74C98], v4);
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
    }

    goto LABEL_9;
  }

  if (v19)
  {
LABEL_9:
    UIListSeparatorConfiguration.topSeparatorInsets.setter();
    UIListSeparatorConfiguration.bottomSeparatorInsets.setter();

    return (*(v10 + 32))(v16, v13, v9);
  }

  result = [v15 view];
  if (result)
  {
    v21 = result;
    [result directionalLayoutMargins];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *closure #2 in DOCGoToSuggestionsViewController.createLayout()(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v46 = a1;
  v47 = type metadata accessor for UICollectionLayoutListConfiguration();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 16);
    v13 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 32);
    v50 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics);
    v51 = v14;
    v52 = v13;
    v15 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 96);
    v17 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 48);
    v16 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 64);
    v55[0] = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 80);
    v55[1] = v15;
    v53 = v17;
    v54 = v16;
    v18 = Strong;
    outlined init with copy of DOCGoToMetrics(&v50, &v49);

    _Q1 = v50;
    _Q0 = v51;
    v21 = v52;
    v22 = BYTE8(v52);
    v59 = BYTE8(v52);
    v58[0] = *(&v52 + 9);
    *(v58 + 3) = HIDWORD(v52);
    v23 = v53;
    v24 = v54;
    v25 = v55[0];
    v57 = v55[0];
    v56[0] = *(v55 + 1);
    *(v56 + 3) = DWORD1(v55[0]);
    v26 = *(v55 + 8);
    v27 = *(&v55[1] + 1);
  }

  else
  {
    v21 = 0;
    v25 = 1;
    v59 = 1;
    v57 = 1;
    v26 = 0uLL;
    __asm
    {
      FMOV            V0.2D, #12.0
      FMOV            V1.2D, #16.0
    }

    v27 = 0;
    v22 = 1;
    v23 = 0uLL;
    v24 = 0uLL;
  }

  v50 = _Q1;
  v51 = _Q0;
  *&v52 = v21;
  BYTE8(v52) = v22;
  *(&v52 + 9) = v58[0];
  HIDWORD(v52) = *(v58 + 3);
  v53 = v23;
  v54 = v24;
  LOBYTE(v55[0]) = v25;
  *(v55 + 1) = v56[0];
  DWORD1(v55[0]) = *(v56 + 3);
  *(v55 + 8) = v26;
  *(&v55[1] + 1) = v27;
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32 && (v33 = v32, v34 = (*((*MEMORY[0x277D85000] & *v32) + 0xC8))(), v33, (v34 & 1) != 0))
  {
    v35 = MEMORY[0x277D74DA0];
  }

  else
  {
    v35 = MEMORY[0x277D74D90];
  }

  (*(v7 + 104))(v10, *v35, v6);
  swift_beginAccess();
  UICollectionLayoutListConfiguration.headerMode.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  swift_endAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
  swift_beginAccess();
  v36 = v47;
  (*(v2 + 16))(v5, v11, v47);
  v37 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v2 + 8))(v5, v36);
  v38 = [v37 boundarySupplementaryItems];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v39 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v41 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x24C1FC540](v41, v39);
      }

      else
      {
        if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      [v42 setPinToVisibleBounds_];

      ++v41;
      if (v44 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  outlined destroy of DOCGoToMetrics(&v50);

  return v37;
}

Swift::Void __swiftcall DOCGoToSuggestionsViewController.viewDidLoad()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DOCGoToSuggestionsViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  type metadata accessor for DOCGoToSuggestionsViewController.SuggestionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = MEMORY[0x24C1FAD20](0xD00000000000002ELL, 0x8000000249BE3600);
  [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  type metadata accessor for DOCGoToSuggestionsViewController.HeaderView();
  v7 = swift_getObjCClassFromMetadata();
  v8 = *MEMORY[0x277D767D8];
  v9 = MEMORY[0x24C1FAD20](0xD00000000000002ALL, 0x8000000249BE3630);
  [v6 registerClass:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v9];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 setShowsVerticalScrollIndicator_];

  v12 = [v0 collectionView];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setShowsHorizontalScrollIndicator_];

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setPreservesSuperviewLayoutMargins_];

  v16 = [v0 collectionView];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 setAllowsSelection_];

  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    return;
  }

LABEL_15:
  __break(1u);
}

Swift::Void __swiftcall DOCGoToSuggestionsViewController.selectFirst()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21[-v4 - 8];
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x24C1F8100](0, 0, v9);
  DOCGoToSuggestionsViewController.suggestion(at:)(v21);
  if (v22)
  {
    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
    v12 = [v0 collectionView];
    if (v12)
    {
      v13 = v12;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v13 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      v15 = [v1 collectionView];
      if (v15)
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        v18 = swift_conformsToProtocol2();
        if (v18)
        {
          v19 = v18;
          (*(v7 + 16))(v5, v11, v6);
          (*(v7 + 56))(v5, 0, 1, v6);
          DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(v5, ObjectType, v19);
        }
      }

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }
}

unint64_t DOCGoToSuggestionsViewController.suggestion(at:)@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xC8))() & 1) == 0)
  {
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      result = IndexPath.section.getter();
      v9 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections;
      if (result < *(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections) + 16))
      {
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) != 0)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v1 + v9);
        if (result >= *(v10 + 16))
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v11 = *(v10 + 16 * result + 40);

        if ((IndexPath.row.getter() & 0x8000000000000000) == 0 && IndexPath.row.getter() < *(v11 + 16))
        {
          result = IndexPath.row.getter();
          if ((result & 0x8000000000000000) == 0)
          {
            if (result < *(v11 + 16))
            {
              outlined init with copy of DOCSidebarItemIconProvider(v11 + 40 * result + 32, a1);
              goto LABEL_16;
            }

LABEL_26:
            __break(1u);
            return result;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }
    }

LABEL_20:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v5 = IndexPath.row.getter();
  v6 = *((*v3 & *v1) + 0xB0);
  v7 = *(v6() + 16);

  if (v5 >= v7)
  {
    goto LABEL_20;
  }

  v8 = IndexPath.row.getter();
  result = v6();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 >= *(result + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  outlined init with copy of DOCSidebarItemIconProvider(result + 40 * v8 + 32, a1);
LABEL_16:
}

uint64_t DOCGoToSuggestionsViewController.updateSections()(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = 0;
  v3 = 0;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v28 = (*MEMORY[0x277D85000] & *v1) + 176;
  v29 = v4;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v2;
    v5 = *(&outlined read-only object #0 of DOCGoToSuggestionsViewController.updateSections() + v3 + 32);
    result = v29(isUniquelyReferenced_nonNull_native);
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      break;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_17:

    if (*(v11 + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v25 = *(v31 + 2);
      v24 = *(v31 + 3);
      if (v25 >= v24 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v26 = v31;
      *(v31 + 2) = v25 + 1;
      v27 = &v26[16 * v25];
      v27[32] = v5;
      *(v27 + 5) = v11;
    }

    else
    {
    }

    v2 = 1;
    v3 = 1u;
    if (v32)
    {
      *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections) = v31;
    }
  }

  v9 = 0;
  v10 = result + 32;
  v11 = MEMORY[0x277D84F90];
  while (v9 < *(v7 + 16))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v10, &v36);
    v12 = v37;
    v13 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, v37);
    (*(v13 + 40))(v33, v12, v13);
    if (LOBYTE(v33[0]) == 2 || ((v5 ^ LOBYTE(v33[0])) & 1) != 0)
    {
      result = __swift_destroy_boxed_opaque_existential_0(&v36);
    }

    else
    {
      outlined init with take of DOCGoToFolderCandidate(&v36, v33);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v11;
      if ((v14 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
        v11 = v39;
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      v17 = v34;
      v18 = v35;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v20 = MEMORY[0x28223BE20](v19, v19);
      v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22, v20);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16, v22, &v39, v17, v18);
      result = __swift_destroy_boxed_opaque_existential_0(v33);
      v11 = v39;
    }

    ++v9;
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id DOCGoToSuggestionsViewController.resizedImage(with:size:)(void *a1, double a2, double a3)
{
  if (([a1 isSymbolImage] & 1) != 0 || ((objc_msgSend(a1, sel_size), v7 == a2) ? (v8 = v6 == a3) : (v8 = 0), v8))
  {

    return a1;
  }

  else
  {
    v9 = [v3 traitCollection];
    v10 = [objc_opt_self() formatForTraitCollection_];

    v11 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v10 format:{a2, a3}];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    *(v12 + 32) = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RawImageIconProvider.iconByResizing(_:toSize:forCell:);
    *(v13 + 24) = v12;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    aBlock[3] = &block_descriptor_71;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    v16 = [v11 imageWithActions_];

    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      return v16;
    }
  }

  return result;
}

uint64_t DOCGoToSuggestionsViewController.collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x24C1FAD20](0xD00000000000002ELL, 0x8000000249BE3600, v7);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  DOCGoToSuggestionsViewController.suggestion(at:)(&v45);
  if (v46)
  {
    v44 = v12;
    v14 = outlined init with take of DOCGoToFolderCandidate(&v45, v48);
    MEMORY[0x24C1FBBF0](v14);
    v15 = v49;
    v16 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v16 + 16))(v15, v16);
    v17 = UIListContentConfiguration.attributedText.setter();
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x98))(v17))
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      v21 = (*(v19 + 8))(v1, v48, ObjectType, v19);
      swift_unknownObjectRelease();
      if (v21)
      {
        v22 = [v1 traitCollection];
        v23 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v22);
        v25 = v24;

        DOCGoToSuggestionsViewController.resizedImage(with:size:)(v21, v23, v25);
        UIListContentConfiguration.image.setter();
        static UIListContentConfiguration.ImageProperties.standardDimension.getter();
        v26 = UIListContentConfiguration.imageProperties.modify();
        UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
        v26(&v45, 0);
      }
    }

    v27 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics];
    if ((v2[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics + 40] & 1) == 0)
    {
      UIListContentConfiguration.imageToTextPadding.setter();
    }

    if ((v27[80] & 1) == 0)
    {
      UIListContentConfiguration.directionalLayoutMargins.setter();
    }

    v28 = [v2 traitCollection];
    v29 = [v28 preferredContentSizeCategory];
    if (UIContentSizeCategory.isAccessibilityCategory.getter())
    {
      v30 = static UIContentSizeCategory.> infix(_:_:)();

      if (v30)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {

      v31 = 0;
    }

    specialized Sequence<>.contains(_:)(v31, &outlined read-only object #0 of DOCGoToSuggestionsViewController.collectionView(_:cellForItemAt:));
    v32 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v32(&v45, 0);
    v33 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.lineBreakMode.setter();
    v33(&v45, 0);
    v34 = *(v27 + 11);
    if (v34)
    {
      v35 = v34;
      v36 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v36(&v45, 0);
    }

    v37 = *(v27 + 12);
    if (v37)
    {
      v38 = v37;
      v39 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.font.setter();
      v39(&v45, 0);
    }

    v46 = v4;
    v47 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (*(v5 + 16))(boxed_opaque_existential_1, v9, v4);
    v41 = v44;
    MEMORY[0x24C1FBB20](&v45);

    (*(v5 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    outlined destroy of CharacterSet?(&v45, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }

  return v13;
}

unint64_t DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v98 = &v87 - v9;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v95 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UIButton.Configuration();
  v93 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v16);
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v89 = &v87 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v90 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v87 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v87 - v34;
  v101 = type metadata accessor for UIListContentConfiguration();
  v103 = *(v101 - 8);
  v37 = MEMORY[0x28223BE20](v101, v36);
  v102 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x24C1FAD20](a2, a3, v37);
  v40 = MEMORY[0x24C1FAD20](0xD00000000000002ALL, 0x8000000249BE3630);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [a1 dequeueReusableSupplementaryViewOfKind:v39 withReuseIdentifier:v40 forIndexPath:isa];

  type metadata accessor for DOCGoToSuggestionsViewController.HeaderView();
  v104 = swift_dynamicCastClassUnconditional();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v44 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections);
  if (result >= *(v44 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v87 = v3;
  v45 = *(v44 + 16 * result + 32);

  v46 = v102;
  static UIListContentConfiguration.header()();
  LOBYTE(v105[0]) = v45;
  DOCGoToLocationSection.localizedName.getter();
  UIListContentConfiguration.text.setter();

  v47 = v101;
  v105[3] = v101;
  v105[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(v103 + 16))(boxed_opaque_existential_1, v46, v47);
  v100 = v42;
  v49 = MEMORY[0x24C1FBB20](v105);
  MEMORY[0x24C1FBB30](v49);
  v50 = type metadata accessor for UIBackgroundConfiguration();
  v51 = *(*(v50 - 8) + 48);
  if (v51(v35, 1, v50))
  {
    outlined init with copy of UIBackgroundConfiguration?(v35, v27);
    MEMORY[0x24C1FBB40](v27);
    outlined destroy of CharacterSet?(v35, &_s5UIKit25UIBackgroundConfigurationVSgMd);
    if (_UISolariumEnabled())
    {
      goto LABEL_5;
    }

LABEL_9:
    v53 = v100;

    v52 = v104;
    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  UIBackgroundConfiguration.visualEffect.setter();
  MEMORY[0x24C1FBB40](v35);
  if (!_UISolariumEnabled())
  {
    goto LABEL_9;
  }

LABEL_5:
  v52 = v104;
  MEMORY[0x24C1FBB30]();
  if (!v51(v31, 1, v50))
  {
    v55 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    MEMORY[0x24C1FBB40](v31);
    v53 = v100;

    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v54 = v53;
    UICollectionViewListCell.accessories.setter();

LABEL_16:
    (*(v103 + 8))(v102, v47);
    return v52;
  }

  outlined init with copy of UIBackgroundConfiguration?(v31, v27);
  MEMORY[0x24C1FBB40](v27);
  v53 = v100;

  outlined destroy of CharacterSet?(v31, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  if (v45)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = _DocumentManagerBundle();
  if (result)
  {
    v56 = result;
    v106._object = 0x8000000249BE3680;
    v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v57.value._object = 0xEB00000000656C62;
    v58._countAndFlagsBits = 0x7261656C43;
    v59._object = 0x8000000249BE3660;
    v106._countAndFlagsBits = 0xD00000000000003ALL;
    v59._countAndFlagsBits = 0xD00000000000001ALL;
    v58._object = 0xE500000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v57, v56, v58, v106);

    v60 = objc_opt_self();
    v61 = v90;
    static UIButton.Configuration.borderless()();
    closure #1 in DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)();

    v62 = UIButton.Configuration.contentInsets.modify();
    *(v63 + 24) = 0;
    v62(v105, 0);
    if (_UISolariumEnabled())
    {
      v64 = objc_opt_self();
      v65 = [v64 tintColor];
      v66 = [v64 _doc_safeTintColor_];

      UIButton.Configuration.baseForegroundColor.setter();
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
    v67 = v93;
    v68 = *(v93 + 16);
    v69 = v89;
    v70 = v99;
    v68(v89, v61, v99);
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68(v88, v69, v70);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v72 = swift_allocObject();
    *(v72 + 16) = partial apply for closure #4 in DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:);
    *(v72 + 24) = v71;
    swift_retain_n();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v73 = UIButton.init(configuration:primaryAction:)();

    v93 = *(v67 + 8);
    (v93)(v69, v70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_249B9A480;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd);
    v75 = v95;
    v76 = &v95[*(v74 + 48)];
    v77 = *MEMORY[0x277D74A98];
    v78 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v78 - 8) + 104))(v75, v77, v78);
    *v76 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v76[1] = 0;
    (*(v91 + 104))(v75, *MEMORY[0x277D74AD8], v92);
    v79 = *MEMORY[0x277D74AB0];
    v80 = type metadata accessor for UICellAccessory.LayoutDimension();
    v81 = *(v80 - 8);
    v82 = v61;
    v83 = v98;
    (*(v81 + 104))(v98, v79, v80);
    (*(v81 + 56))(v83, 0, 1, v80);
    v84 = v100;
    v85 = v73;
    v86 = v94;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    static UICellAccessory.customView(configuration:)();
    (*(v96 + 8))(v86, v97);
    v52 = v104;
    UICollectionViewListCell.accessories.setter();

    (v93)(v82, v99);
    v47 = v101;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}