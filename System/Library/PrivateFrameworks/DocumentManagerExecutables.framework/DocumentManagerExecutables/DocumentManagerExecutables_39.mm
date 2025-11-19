void closure #1 in DOCFolderThumbnailView.thumbnailLoaded(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
    if (v4)
    {
      v5 = v4 == a2;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = Strong;
      v7 = [v4 thumbnail];
      [v6 setImage_];

      Strong = v7;
    }
  }
}

void @objc DOCRenameThumbnailView.thumbnailLoaded(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  swift_unknownObjectRetain_n();
  v7 = a1;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

uint64_t DOCFolderThumbnailView.recalculateIcon()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v29 = static UITraitCollection.Traits.displayScale;
  v30 = qword_27EEE9C90;
  v3 = one-time initialization token for userInterfaceStyle;

  if (v3 != -1)
  {
    swift_once();
  }

  v31 = static UITraitCollection.Traits.userInterfaceStyle;
  v32 = qword_27EEE9CA8;

  _StringGuts.grow(_:)(18);

  *v26 = 0x6172287469617254;
  *&v26[8] = 0xEF3A65756C615677;
  v28[0] = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v5 = *v26;
  *v26 = 0;
  *&v26[8] = v5;

  specialized OptionSet<>.insert(_:)(v28, v29, *(&v29 + 1), v30);

  v7 = *(&v31 + 1);
  v6 = v32;
  v8 = v31;

  specialized OptionSet<>.insert(_:)(v28, v8, v7, v6);

  swift_arrayDestroy();
  v9 = UITraitCollection.doc_hasSpecified(_:)(v26);

  if (v9)
  {
    v11 = [v1 traitCollection];
    [v11 displayScale];
    v13 = v12;

    v14 = [v1 traitCollection];
    v15 = [v14 userInterfaceStyle];

    if (v15 >= 3)
    {
      type metadata accessor for UIUserInterfaceStyle(0);
      v27 = v17;
      *v26 = v15;
      doc_warnUnrecognizedEnumValueEncountered(_:)(v26);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v16 = 1;
    }

    else
    {
      v16 = qword_249BAD7B0[v15];
    }

    v18 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize];
    v19 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize + 8];
    v20 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_item];
    v21 = [v20 isFolder];
    v22 = [objc_allocWithZone(MEMORY[0x277D063C0]) initWithSize:v16 scale:1 style:0 isFolded:v21 isInteractive:v18 isFolder:{v19, v13}];
    v23 = [objc_opt_self() sharedGenerator];
    v24 = [v23 iconForNode:v20 descriptor:v22];

    v25 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail] = v24;
    swift_unknownObjectRetain();
    DOCFolderThumbnailView.thumbnail.didset(v25);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFolderThumbnailView.__ivar_destroyer()
{

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCFilenameView.DOCFilenameViewTextFieldUpdateType.applyChanges(on:)(UITextField *on)
{
  if (v1 == 2)
  {
    if ([(UITextField *)on isFirstResponder])
    {

      [(UITextField *)on resignFirstResponder];
    }
  }

  else
  {
    if (v1 == 3)
    {
      v6 = [(UITextField *)on window];
      if (!v6)
      {
        return;
      }

      v9 = v6;
      if (([v6 isKeyWindow] & 1) == 0)
      {
        [v9 makeKeyWindow];
      }
    }

    else
    {
      if (v1 == 4)
      {
        v2 = on;
        v3 = [(UITextField *)on beginningOfDocument];
        v4 = [(UITextField *)v2 endOfDocument];
        v5 = [(UITextField *)v2 textRangeFromPosition:v3 toPosition:v4];
      }

      else
      {
        v8 = v1;
        v2 = on;
        if (([(UITextField *)on isFirstResponder]& 1) != 0)
        {
          return;
        }

        [(UITextField *)v2 becomeFirstResponder];
        if ((v8 & 1) == 0)
        {
          return;
        }

        v3 = [(UITextField *)v2 beginningOfDocument];
        v4 = [(UITextField *)v2 endOfDocument];
        v5 = [(UITextField *)v2 textRangeFromPosition:v3 toPosition:v4];
      }

      v9 = v5;

      [(UITextField *)v2 setSelectedTextRange:v9];
    }
  }
}

BOOL static DOCFilenameView.DOCFilenameViewTextFieldUpdateType.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

void DOCFilenameView.DOCFilenameViewTextFieldUpdateType.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 3:
      v2 = 2;
      goto LABEL_7;
    case 4:
      v2 = 3;
LABEL_7:
      MEMORY[0x24C1FCBD0](v2);
      return;
  }

  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(a2 & 1);
}

Swift::Int DOCFilenameView.DOCFilenameViewTextFieldUpdateType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(a1 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  v1 = *v0;
  switch(v1)
  {
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 3:
      v2 = 2;
      goto LABEL_7;
    case 4:
      v2 = 3;
LABEL_7:
      MEMORY[0x24C1FCBD0](v2);
      return;
  }

  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 - 2;
  v5 = v3 == 2;
  v6 = v3 == 3;
  v7 = v3 == 4;
  v8 = v3 ^ v2 ^ 1;
  if (v4 < 3)
  {
    v8 = 0;
  }

  if (v2 == 4)
  {
    v8 = v7;
  }

  if (v2 == 3)
  {
    v8 = v6;
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

char *DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle;
  v9 = *MEMORY[0x277D76A20];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] = *MEMORY[0x277D76A20];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates] = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView] = a1;
  type metadata accessor for DOCInsetTextField();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = v9;
  v92 = a1;
  v13 = [v11 init];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] = v13;
  LODWORD(v15) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = *&v3[v14];
  v17 = objc_opt_self();
  v18 = *&v3[v8];
  v19 = v16;
  v20 = [v17 preferredFontForTextStyle_];
  [v19 setFont_];

  [*&v3[v14] setAdjustsFontForContentSizeCategory_];
  [*&v3[v14] setBorderStyle_];
  [*&v3[v14] setReturnKeyType_];
  [*&v3[v14] setClearButtonMode_];
  v21 = [*&v3[v14] layer];
  [v21 setCornerCurve_];

  v22 = [*&v3[v14] layer];
  [v22 setCornerRadius_];

  v23 = *&v3[v14];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 tertiarySystemBackgroundColor];
  [v25 setBackgroundColor_];

  [*&v3[v14] setEnablesReturnKeyAutomatically_];
  v27 = *&v3[v14];
  result = _DocumentManagerBundle();
  if (result)
  {
    v29 = result;
    v30.value._object = 0xEB00000000656C62;
    v94._object = 0x8000000249BE5020;
    v31._countAndFlagsBits = 0x6E207265646C6F46;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31._object = 0xEB00000000656D61;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0xD000000000000030;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v94);

    v34 = MEMORY[0x24C1FAD20](v33._countAndFlagsBits, v33._object);

    [v27 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249BA1010;
    v36 = *&v3[v10];
    v37 = *&v3[v14];
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    v38 = objc_allocWithZone(MEMORY[0x277D75A68]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
    v39 = v36;
    v40 = v37;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = [v38 initWithArrangedSubviews_];

    v43 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView;
    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] = v42;
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v3[v43] setAlignment_];
    [*&v3[v43] setSpacing_];
    v44 = [*&v3[v14] widthAnchor];
    v45 = [*&v3[v43] widthAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45 multiplier:1.0];

    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_maxTextFieldWidthLandscapeConstraint] = v46;
    v93.receiver = v3;
    v93.super_class = ObjectType;
    v91 = ObjectType;
    v47 = objc_msgSendSuper2(&v93, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v48 = [v47 traitCollection];
    v49 = [v17 preferredFontForTextStyle:*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] compatibleWithTraitCollection:v48];
    [v49 lineHeight];
    v51 = v50;

    v52 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField;
    v53 = [*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] heightAnchor];
    v54 = [v53 constraintGreaterThanOrEqualToConstant_];

    v55 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView;
    [v47 addSubview_];
    v90 = objc_opt_self();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_249BA5C40;
    v57 = [v47 leadingAnchor];
    v58 = [*&v47[v55] leadingAnchor];
    v59 = [v57 constraintLessThanOrEqualToAnchor:v58 constant:-15.0];

    *(v56 + 32) = v59;
    v60 = [v47 trailingAnchor];
    v61 = [*&v47[v55] trailingAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61 constant:15.0];

    *(v56 + 40) = v62;
    v63 = [*&v47[v55] centerXAnchor];
    v64 = [v47 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v56 + 48) = v65;
    v66 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView;
    v67 = [*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView] widthAnchor];
    v68 = [v67 constraintLessThanOrEqualToConstant_];

    *(v56 + 56) = v68;
    v69 = [*&v47[v52] widthAnchor];
    v70 = [v69 constraintEqualToConstant_];

    v71 = DOCConstraintWithPriority();
    *(v56 + 64) = v71;
    v72 = [v47 topAnchor];
    v73 = [*&v47[v55] topAnchor];
    v74 = [v72 constraintLessThanOrEqualToAnchor:v73 constant:-15.0];

    *(v56 + 72) = v74;
    v75 = [v47 bottomAnchor];
    v76 = [*&v47[v55] bottomAnchor];
    v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:15.0];

    *(v56 + 80) = v77;
    v78 = [*&v47[v55] centerYAnchor];
    v79 = [v47 centerYAnchor];

    v80 = [v78 constraintEqualToAnchor_];
    *(v56 + 88) = v80;
    v81 = [*&v47[v66] heightAnchor];
    v82 = [v81 constraintLessThanOrEqualToConstant_];

    *(v56 + 96) = v82;
    *(v56 + 104) = v54;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v83 = v54;
    v84 = Array._bridgeToObjectiveC()().super.isa;

    [v90 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_249B9A480;
    v86 = type metadata accessor for UITraitPreferredContentSizeCategory();
    v87 = MEMORY[0x277D74DB8];
    *(v85 + 32) = v86;
    *(v85 + 40) = v87;
    v88 = swift_allocObject();
    *(v88 + 16) = v83;
    *(v88 + 24) = v91;
    v89 = v83;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(char *a1, uint64_t a2, void *a3)
{
  v5 = [a1 traitCollection];
  v6 = [objc_opt_self() preferredFontForTextStyle:*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] compatibleWithTraitCollection:v5];
  [v6 lineHeight];
  v8 = v7;

  return [a3 setConstant_];
}

id DOCFilenameView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCFilenameView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle) = *MEMORY[0x277D76A20];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates) = MEMORY[0x277D84FA0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  DOCFilenameView.updateStackLayout()();
  DOCFilenameView.updateTextFieldIfPossible()();
}

id DOCFilenameView.updateStackLayout()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  [v0 bounds];
  v7 = specialized DOCFilenameView.layout(for:)(v3, v4, v5, v6);
  if (v7)
  {
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] setAxis_];
    v8 = v2 == 1;
    v9 = v2 == 1;
    v10 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField];
    if (v8)
    {
      v11 = &selRef_setPaddingRight_;
    }

    else
    {
      v11 = &selRef_setPaddingLeft_;
    }

    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] setTextAlignment_];
    LODWORD(v12) = 15.0;
    [v10 *v11];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] setAxis_];
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] setTextAlignment_];
  }

  v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_maxTextFieldWidthLandscapeConstraint];

  return [v13 setActive_];
}

uint64_t DOCFilenameView.updateTextFieldIfPossible()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v2 frame];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 0.0;
  v19.size.height = 0.0;
  result = CGRectEqualToRect(v18, v19);
  if ((result & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
    swift_beginAccess();
    for (i = *(v0 + v4); *(i + 16); i = *(v1 + v4))
    {
      v6 = 0;
      v7 = (i + 56);
      v8 = 1 << *(i + 32);
      v9 = (v8 + 63) >> 6;
      while (1)
      {
        v11 = *v7++;
        v10 = v11;
        if (v11)
        {
          break;
        }

        v6 -= 64;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      v8 = __clz(__rbit64(v10)) - v6;
LABEL_11:
      v12 = specialized Set._Variant.remove(at:)(v8, *(i + 36));
      swift_endAccess();
      if (v12 == 2)
      {
        if ([v2 isFirstResponder])
        {
          [v2 resignFirstResponder];
        }
      }

      else if (v12 == 3)
      {
        v16 = [v2 window];
        if (v16)
        {
          v17 = v16;
          if (([v16 isKeyWindow] & 1) == 0)
          {
            [v17 makeKeyWindow];
          }
        }
      }

      else if (v12 == 4 || ([v2 isFirstResponder] & 1) == 0 && (objc_msgSend(v2, sel_becomeFirstResponder), (v12 & 1) != 0))
      {
        v13 = [v2 beginningOfDocument];
        v14 = [v2 endOfDocument];
        v15 = [v2 textRangeFromPosition:v13 toPosition:v14];

        [v2 setSelectedTextRange_];
      }

      swift_beginAccess();
    }

    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall DOCFilenameView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  DOCFilenameView.updateTextFieldIfPossible()();
}

void @objc DOCSafeAreaView.safeAreaInsetsDidChange()(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

Swift::Void __swiftcall DOCFilenameView.focusTextField(selectContent:)(Swift::Bool selectContent)
{
  v3 = selectContent;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v5 = *(v1 + v4);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != 3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v1 + v4);
    v11 = v30;
    *(v1 + v4) = 0x8000000000000000;
    if (*(v11 + 24) <= *(v11 + 16))
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeSet.resize(capacity:)();
      }

      else
      {
        specialized _NativeSet.copyAndResize(capacity:)();
      }

      v11 = v30;
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](2);
      v12 = Hasher._finalize()();
      v13 = -1 << *(v30 + 32);
      v8 = v12 & ~v13;
      if ((*(v30 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v14 = ~v13;
        while (*(*(v30 + 48) + v8) != 3)
        {
          v8 = (v8 + 1) & v14;
          if (((*(v30 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_34;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v11 = v30;
    }

LABEL_15:
    *(v11 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
    *(*(v11 + 48) + v8) = 3;
    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v11 + 16) = v17;
    *(v1 + v4) = v11;
  }

  swift_endAccess();
  LOBYTE(v8) = v3;
  swift_beginAccess();
  v18 = *(v1 + v4);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v3);
  v19 = Hasher._finalize()();
  v20 = -1 << *(v18 + 32);
  v11 = v19 & ~v20;
  if ((*(v18 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v21 = ~v20;
    do
    {
      v22 = *(*(v18 + 48) + v11);
      if ((v22 - 2) >= 3 && ((v22 ^ v3) & 1) == 0)
      {
        goto LABEL_37;
      }

      v11 = (v11 + 1) & v21;
    }

    while (((*(v18 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v1 + v4);
  v2 = v31;
  *(v1 + v4) = 0x8000000000000000;
  if (v2[3] > v2[2])
  {
    if ((v23 & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v2 = v31;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v2 = v31;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v3);
  v24 = Hasher._finalize()();
  v25 = -1 << *(v31 + 32);
  v11 = v24 & ~v25;
  if ((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v26 = ~v25;
    while (1)
    {
      v27 = *(*(v31 + 48) + v11);
      if ((v27 - 2) >= 3 && ((v27 ^ v3) & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1) & v26;
      if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_35:
  *(v2 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v11;
  *(v2[6] + v11) = v8;
  v28 = v2[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v16)
  {
    v2[2] = v29;
    *(v1 + v4) = v2;
LABEL_37:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

LABEL_39:
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.stopFocusingTextField()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (*(*(v2 + 48) + v5) != 2)
    {
      v5 = (v5 + 1) & v6;
      if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_17;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v1);
  v8 = v15;
  *(v0 + v1) = 0x8000000000000000;
  if (v8[3] <= v8[2])
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v8 = v15;
    Hasher.init(_seed:)();
    MEMORY[0x24C1FCBD0](1);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v15 + 32);
    v5 = v9 & ~v10;
    if ((*(v15 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v11 = ~v10;
      while (*(*(v15 + 48) + v5) != 2)
      {
        v5 = (v5 + 1) & v11;
        if (((*(v15 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_19;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v8 = v15;
  }

LABEL_15:
  *(v8 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v5;
  *(v8[6] + v5) = 2;
  v12 = v8[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    v8[2] = v14;
    *(v0 + v1) = v8;
LABEL_17:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.selectContent()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](3);
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (*(*(v2 + 48) + v5) != 4)
    {
      v5 = (v5 + 1) & v6;
      if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_17;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v1);
  v8 = v15;
  *(v0 + v1) = 0x8000000000000000;
  if (v8[3] <= v8[2])
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v8 = v15;
    Hasher.init(_seed:)();
    MEMORY[0x24C1FCBD0](3);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v15 + 32);
    v5 = v9 & ~v10;
    if ((*(v15 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v11 = ~v10;
      while (*(*(v15 + 48) + v5) != 4)
      {
        v5 = (v5 + 1) & v11;
        if (((*(v15 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_19;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v8 = v15;
  }

LABEL_15:
  *(v8 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v5;
  *(v8[6] + v5) = 4;
  v12 = v8[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    v8[2] = v14;
    *(v0 + v1) = v8;
LABEL_17:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id DOCFilenameView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCFilenameViewController.dismissing.didset()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSafeAreaView();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing;
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing])
    {
      v5 = 3;
    }

    else
    {
      v5 = v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState];
    }

    *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) = v5;

    v6 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v7 = (v0[v4] & 1) == 0;

    return [v6 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCFilenameViewController.visibilityState.didset()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for DOCSafeAreaView();
  v3 = swift_dynamicCastClassUnconditional();
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing))
  {
    v4 = 3;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState);
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) = v4;

  (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v6 = [v0 navigationController];
      if (!v6)
      {
        return;
      }

      v8 = v6;
      [v6 setNavigationBarHidden:0 animated:1];
    }

    else
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v7 = [v0 navigationController];
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 setNavigationBarHidden:1 animated:1];
    }
  }
}

void DOCFilenameViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Bool __swiftcall DOCFilenameViewController.present(from:animated:)(UIViewController *from, Swift::Bool animated)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BA0290;
  *(v6 + 32) = v2;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v7 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setViewControllers:isa animated:0];

  v9 = v5;
  [v9 setModalPresentationStyle_];
  v10 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy];
  v11 = type metadata accessor for DOCFilenameTransitioningDelegate();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate_transitionProxy] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  swift_unknownObjectRetain();
  v13 = [(UIViewController *)&v18 init];
  [v9 setTransitioningDelegate_];

  objc_setAssociatedObject(v9, "DOCFilenameTransitioningDelegate", v13, 1);
  v14 = [v7 view];
  if (v14)
  {
    v15 = v14;
    [v14 layoutIfNeeded];

    v16 = [v9 navigationBar];
    [v16 setTranslucent_];

    [(UIViewController *)from presentViewController:v9 animated:animated completion:0];
    LOBYTE(v14) = 1;
  }

  else
  {
    __break(1u);
  }

  return v14;
}

Swift::Void __swiftcall DOCFilenameViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView];
  v2 = objc_allocWithZone(type metadata accessor for DOCSafeAreaView());
  v3 = DOCSafeAreaView.init(safeAreaView:)(v1);
  [v0 setView_];
}

Swift::Void __swiftcall DOCFilenameViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = [objc_opt_self() isOnScreen];
  (*((*MEMORY[0x277D85000] & *v1) + 0x118))(2);
}

Swift::Void __swiftcall DOCFilenameViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  DOCFilenameViewController.dismissing.didset();
}

Swift::Void __swiftcall DOCFilenameViewController.cancelViewController()()
{
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 1;
    v1 = v0;
    DOCFilenameViewController.dismissing.didset();
    DOCFilenameView.stopFocusingTextField()();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v5[4] = partial apply for closure #1 in DOCFilenameViewController.cancelViewController();
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_77;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t DOCFilenameViewController.keyCommands.getter()
{
  v0 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void DOCFilenameViewController.editingDidEnd(_:)()
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) text];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = v0;
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v15))
    {
      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      v16 = swift_allocError();
      *v17 = 2;
    }

    else
    {
      CharacterSet.init(charactersIn:)();
      v48[4] = v10;
      v48[5] = v12;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if (v18)
      {
        (*(v3 + 8))(v7, v2);
        DOCFilenameView.stopFocusingTextField()();
        v19 = swift_allocObject();
        *(v19 + 16) = v0;
        v20 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
        v21 = v0;
        v20(v10, v12, 0, partial apply for closure #1 in DOCFilenameViewController.editingDidEnd(_:), v19);

        return;
      }

      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      v16 = swift_allocError();
      *v22 = 3;
      (*(v3 + 8))(v7, v2);
    }

    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    v26 = MEMORY[0x24C1FAD20]();
    v27 = [objc_opt_self() alertControllerWithTitle:0 message:v26 preferredStyle:1];

    v28 = v27;
    v29 = _DocumentManagerBundle();
    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = v29;
    v50._object = 0xE200000000000000;
    v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31.value._object = 0xEB00000000656C62;
    v32._countAndFlagsBits = 19279;
    v32._object = 0xE200000000000000;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v50._countAndFlagsBits = 19279;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v50);

    v35 = MEMORY[0x24C1FAD20](v34._countAndFlagsBits, v34._object);

    v36 = [objc_opt_self() actionWithTitle:v35 style:0 handler:0];

    [v28 addAction_];
    v37 = [v28 actions];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertAction);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    if (v38 >> 62)
    {
      v40 = __CocoaSet.count.getter();
      v41 = v14;
      if (v40)
      {
LABEL_18:
        v42 = __OFSUB__(v40, 1);
        v43 = v40 - 1;
        if (!v42)
        {
          if ((v39 & 0xC000000000000001) == 0)
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_31;
            }

            if (v43 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v44 = *(v39 + 8 * v43 + 32);
              goto LABEL_23;
            }

            __break(1u);
LABEL_33:
            __break(1u);
            return;
          }

LABEL_29:
          v44 = MEMORY[0x24C1FC540](v43, v39);
LABEL_23:
          v45 = v44;
          v1 = MEMORY[0x277D837D0];

          [v28 setPreferredAction_];

          [v41 presentViewController:v28 animated:1 completion:0];
          if (one-time initialization token for UI == -1)
          {
LABEL_24:
            static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_249B9FA70;
            *(v46 + 56) = v1;
            v47 = lazy protocol witness table accessor for type String and conformance String();
            *(v46 + 32) = 0xD000000000000011;
            *(v46 + 40) = 0x8000000249BE5100;
            *(v46 + 96) = v1;
            *(v46 + 104) = v47;
            *(v46 + 64) = v47;
            *(v46 + 72) = v23;
            *(v46 + 80) = v25;
            os_log(_:dso:log:type:_:)();

            return;
          }

LABEL_31:
          swift_once();
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v14;
      if (v40)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t closure #1 in DOCFilenameViewController.editingDidEnd(_:)(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCFilenameViewController.editingDidEnd(_:)(uint64_t result, void *a2)
{
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *a2) + 0x118))(0);
  }

  if ((*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 1;
    DOCFilenameViewController.dismissing.didset();

    return [a2 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void DOCFilenameViewController.editingDidChange(_:)()
{
  v1 = [*(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == 0xE000000000000000;
    }

    if (v6)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v8 = [v0 navigationItem];
        v10 = [v8 rightBarButtonItem];

        if (!v10)
        {
          return;
        }

        [v10 setEnabled_];
        goto LABEL_12;
      }
    }
  }

  v9 = [v0 navigationItem];
  v10 = [v9 rightBarButtonItem];

  if (!v10)
  {
    return;
  }

  [v10 setEnabled_];
LABEL_12:
}

uint64_t @objc DOCFilenameViewController.editingDidEnd(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(&v9);
}

Swift::Void __swiftcall DOCFilenameViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCFilenameViewController();
  v5 = [(UIWindow_optional *)&v6 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x110))(v5);
  }
}

Swift::Void __swiftcall DOCFilenameViewController.updateAppearance()()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  type metadata accessor for DOCSafeAreaView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  if (specialized Sequence<>.contains(_:)(v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState], &outlined read-only object #0 of DOCFilenameViewController.updateAppearance()))
  {
    [v4 setEffect_];
LABEL_14:

LABEL_15:
    v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView];
    v14 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField];
    v15 = [v13 tintColor];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() _doc_safeTintColor_];

      [v14 setTintColor_];
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!v6)
  {
    goto LABEL_14;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      v18 = [v0 traitCollection];
      v19 = [v18 userInterfaceStyle];

      type metadata accessor for UIUserInterfaceStyle(0);
      v21[3] = v20;
      v21[0] = v19;
      doc_warnUnrecognizedEnumValueEncountered(_:)(v21);

      __swift_destroy_boxed_opaque_existential_0(v21);
      goto LABEL_15;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.125 alpha:1.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA37E0;
    *(v8 + 32) = [objc_opt_self() colorEffectSaturate_];
    v9 = [objc_opt_self() effectWithBlurRadius_];
    if (!v9)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v8 + 40) = v9;
    v10 = [objc_opt_self() effectCompositingColor:v7 withMode:5 alpha:1.0];
    if (v10)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.92 alpha:1.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BA37E0;
  *(v8 + 32) = [objc_opt_self() colorEffectSaturate_];
  v11 = [objc_opt_self() effectWithBlurRadius_];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v8 + 40) = v11;
  v10 = [objc_opt_self() effectCompositingColor:v7 withMode:1 alpha:1.0];
  if (v10)
  {
LABEL_13:
    *(v8 + 48) = v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIVisualEffect);
    v2 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setBackgroundEffects_];

    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void DOCFilenameViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v6, sel_effectiveAppearanceDidChange_, a1);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [v1 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = [a1 backgroundColor];
      [v4 setBackgroundColor_];
    }
  }
}

Swift::Void __swiftcall DOCFilenameViewController.focusTextField(forceSelectContent:)(Swift::Bool_optional forceSelectContent)
{
  if (forceSelectContent.value == 2)
  {
    value = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected);
  }

  else
  {
    value = forceSelectContent.value;
  }

  DOCFilenameView.focusTextField(selectContent:)(value);
}

Swift::Void __swiftcall DOCFilenameViewController.selectContentIfNeeded()()
{
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected) & 1) != 0 || ([objc_opt_self() currentDevice], GSEventIsHardwareKeyboardAttached()))
  {
    DOCFilenameView.selectContent()();
  }
}

id DOCFilenameViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t (*DOCRenameViewController.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate;
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

objc_class *DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v4 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

objc_class *DOCRenameViewController.init(renamingURL:name:transitionProxy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v75 = a2;
  v76 = a3;
  ObjectType = swift_getObjectType();
  v81 = type metadata accessor for URL();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v7);
  v74 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v73 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v71[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v18 - 8, v19);
  countAndFlagsBits = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v71[-v23];
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v71[-v27];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v82 = a1;
  URL.contentType.getter(v28);
  static UTType.folder.getter();
  (*(v10 + 56))(v24, 0, 1, v9);
  v29 = *(v14 + 56);
  outlined init with copy of UTType?(v28, v17);
  outlined init with copy of UTType?(v24, &v17[v29]);
  v30 = *(v10 + 48);
  if (v30(v17, 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    if (v30(&v17[v29], 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  outlined init with copy of UTType?(v17, countAndFlagsBits);
  if (v30(&v17[v29], 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    (*(v10 + 8))(countAndFlagsBits, v9);
LABEL_6:
    outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd);
    goto LABEL_7;
  }

  v41 = &v17[v29];
  v42 = v73;
  (*(v10 + 32))(v73, v41, v9);
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
  v43 = countAndFlagsBits;
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v10 + 8);
  v44(v42, v9);
  outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  v44(v43, v9);
  outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  if (v72)
  {
LABEL_10:
    result = _DocumentManagerBundle();
    if (result)
    {
      v32 = result;
      v70 = 0x8000000249BE51A0;
      v33 = 0x4620656D616E6552;
      v34 = 0xED00007265646C6FLL;
      v35 = 0x617A696C61636F4CLL;
      v36 = 0xEB00000000656C62;
      v38.super.isa = v32;
      v39 = 0;
      v40 = 0xE000000000000000;
      v37 = 0xD000000000000033;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_7:
  result = _DocumentManagerBundle();
  if (result)
  {
    v32 = result;
    v70 = 0x8000000249BE5160;
    v33 = 0x4420656D616E6552;
    v34 = 0xEF746E656D75636FLL;
    v35 = 0x617A696C61636F4CLL;
    v36 = 0xEB00000000656C62;
    v37 = 0xD000000000000035;
    v38.super.isa = v32;
    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_12:
    v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v33, *&v35, v38, *&v39, *&v37);
    countAndFlagsBits = v45._countAndFlagsBits;

    v46 = v79;
    v47 = v74;
    (*(v79 + 16))(v74, v82, v81);
    v48 = objc_allocWithZone(type metadata accessor for DOCThumbnailFittingImageView());
    v49 = DOCThumbnailFittingImageView.init(size:url:)(v47);
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = v78;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = 0;
    v50 = objc_allocWithZone(type metadata accessor for DOCFilenameView());
    swift_unknownObjectRetain();
    v51 = v49;
    v52 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v51, 186.0, 186.0);
    v53 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v52;
    [v52 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v5[v53] setAlpha_];
    v54 = *(*&v5[v53] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v55 = MEMORY[0x24C1FAD20](v75, v76);

    [v54 setText_];

    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 0;
    v56 = type metadata accessor for DOCFilenameViewController();
    v84.receiver = v5;
    v84.super_class = v56;
    v57 = objc_msgSendSuper2(&v84, sel_initWithNibName_bundle_, 0, 0);
    v58 = MEMORY[0x24C1FAD20](countAndFlagsBits, v45._object);

    [v57 setTitle_];

    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    [*(*&v57[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v57 action:sel_editingDidEnd_ forControlEvents:0x80000];
    v60 = *(*&v57[v59] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    [v60 addTarget:v57 action:sel_editingDidChange_ forControlEvents:0x20000];

    v61 = [v57 navigationItem];
    v83[3] = swift_getObjectType();
    v83[0] = v57;
    v62 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v63 = v57;
    v64 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v83);
    v65 = [v62 initWithBarButtonSystemItem:0 target:v64 action:sel_editingDidEnd_];
    swift_unknownObjectRelease();
    [v61 setRightBarButtonItem_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v66 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v63, sel_cancelViewController);
    [v61 setLeftBarButtonItem_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_249B9A480;
    v68 = type metadata accessor for UITraitUserInterfaceStyle();
    v69 = MEMORY[0x277D74BF0];
    *(v67 + 32) = v68;
    *(v67 + 40) = v69;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v46 + 8))(v82, v81);
    return v63;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void DOCRenameViewController.didChooseName(_:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t), uint64_t a5)
{
  if ((*((*MEMORY[0x277D85000] & *v5) + 0x130))())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v5, a1, a2, ObjectType, v12);
    a4(1);

    swift_unknownObjectRelease();
    return;
  }

  v14 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item);
  if (!v14)
  {
    __break(1u);
    return;
  }

  v70 = v14;
  v15 = [v70 displayName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = a4;
      v22[3] = a5;
      v22[4] = v21;
      v22[5] = v70;
      v23 = objc_opt_self();
      v24 = v70;

      v68 = [v23 defaultManager];
      v71 = swift_allocObject();
      v71[2] = 0;
      v25 = objc_opt_self();
      v26 = v24;
      v27 = [v25 shared];
      v28 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
      v29 = v26;
      v67 = v29;
      if (a3)
      {
        outlined copy of DOCRenameOperation.NameType();
        v30 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v29, a1, a2, 0, 1, v27, v28);

        v31 = swift_allocObject();
        *(v31 + 16) = a1;
        *(v31 + 24) = a2;
        *(v31 + 32) = v68;
        *(v31 + 40) = v71;
        *(v31 + 48) = v5;
        *(v31 + 56) = 1;
        *(v31 + 64) = partial apply for closure #1 in DOCRenameViewController.didChooseName(_:completion:);
        *(v31 + 72) = v22;
        *(v31 + 80) = 0;
        *(v31 + 88) = 0;
        v32 = *((*MEMORY[0x277D85000] & *v30) + 0x190);
        outlined copy of DOCRenameOperation.NameType();
        v33 = v30;
        v34 = v68;

        v35 = v5;

        v32(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node11newFileName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_0, v31);
        v36 = *((*MEMORY[0x277D85000] & *v30) + 0x178);

        v36(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v71);
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.Rename);
        v69 = v33;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v34;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v72 = v43;
          *v41 = 136315394;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x8000000249BD25A0, &v72);
          *(v41 + 12) = 2112;
          *(v41 + 14) = v69;
          *v42 = v33;
          v44 = v69;
          _os_log_impl(&dword_2493AC000, v38, v39, "%s: Adding Rename Operation %@", v41, 0x16u);
          outlined destroy of CharacterSet?(v42, &_sSo8NSObjectCSgMd);
          MEMORY[0x24C1FE850](v42, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x24C1FE850](v43, -1, -1);
          v45 = v41;
          v34 = v40;
          MEMORY[0x24C1FE850](v45, -1, -1);
        }

        (*((*MEMORY[0x277D85000] & *v69) + 0x1B8))();
      }

      else
      {
        outlined copy of DOCRenameOperation.NameType();
        v47 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v29, a1, a2, 1, 1, v27, v28);

        v48 = swift_allocObject();
        *(v48 + 16) = v68;
        *(v48 + 24) = v71;
        *(v48 + 32) = a1;
        *(v48 + 40) = a2;
        *(v48 + 48) = v5;
        *(v48 + 56) = 1;
        *(v48 + 64) = partial apply for closure #1 in DOCRenameViewController.didChooseName(_:completion:);
        *(v48 + 72) = v22;
        *(v48 + 80) = 0;
        *(v48 + 88) = 0;
        v49 = MEMORY[0x277D85000];
        v50 = *((*MEMORY[0x277D85000] & *v47) + 0x190);
        outlined copy of DOCRenameOperation.NameType();
        v51 = v5;

        v52 = v68;

        v50(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node14newDisplayName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_0, v48);
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = *((*v49 & *v47) + 0x148);

        v54(partial apply for closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v53);

        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        *(v57 + 24) = v56;
        v58 = *((*v49 & *v47) + 0x160);

        v58(partial apply for closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v57);

        v59 = *((*v49 & *v47) + 0x178);

        v59(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v71);
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Logger.Rename);
        v69 = v47;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v72 = v65;
          *v63 = 136315394;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &v72);
          *(v63 + 12) = 2112;
          *(v63 + 14) = v69;
          *v64 = v47;
          v66 = v69;
          _os_log_impl(&dword_2493AC000, v61, v62, "%s: Adding Rename Operation %@", v63, 0x16u);
          outlined destroy of CharacterSet?(v64, &_sSo8NSObjectCSgMd);
          MEMORY[0x24C1FE850](v64, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x24C1FE850](v65, -1, -1);
          MEMORY[0x24C1FE850](v63, -1, -1);
        }

        (*((*MEMORY[0x277D85000] & *v69) + 0x1B8))();
      }

      v46 = v69;
      goto LABEL_25;
    }
  }

  a4(1);
  v46 = v70;
LABEL_25:
}

uint64_t closure #1 in DOCRenameViewController.didChooseName(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a4;
  v10[6] = a5;

  v11 = a1;

  v12 = a5;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:)(void (*a1)(BOOL, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v25, v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(a3 == 0, v16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_333_0;
  v21 = _Block_copy(aBlock);

  v22 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v13, v21);
  _Block_release(v21);

  (*(v10 + 8))(v13, v9);
  return (*(v14 + 8))(v18, v25);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy);
    v5 = Strong;
    swift_unknownObjectRetain();

    if (v4)
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_249BA0290;
      *(v6 + 32) = a2;
      v7 = a2;
      DOCTransitionable.reveal(nodes:completionBlock:)(v6, DOCGridLayout.specIconWidth.modify, 0);

      swift_unknownObjectRelease();
    }
  }

  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
}

id DOCInsetTextField.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void), SEL *a3)
{
  v6.receiver = v3;
  v6.super_class = a2();
  return objc_msgSendSuper2(&v6, *a3);
}

uint64_t (*DOCCreateFolderViewController.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;
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

char *DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(a1, a2, a3, a4);

  return v5;
}

void DOCRenameViewController.init(coder:)(uint64_t a1, void *a2)
{
  *(v2 + *a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc DOCRenameViewController.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void DOCCreateFolderViewController.didChooseName(newDisplayName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v10 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_parentItem);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = 0;
  v14 = type metadata accessor for DOCBlockOperation();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v16 = partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:);
  v16[1] = v13;
  v33.receiver = v15;
  v33.super_class = v14;

  v17 = v10;

  v18 = objc_msgSendSuper2(&v33, sel_init);
  v19 = objc_allocWithZone(type metadata accessor for DOCCreateNewFolderPostflightUIOperation());
  v20 = &v19[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v20 = a1;
  *(v20 + 1) = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v32.receiver = v19;
  v32.super_class = type metadata accessor for DOCActionUIOperation();

  v21 = objc_msgSendSuper2(&v32, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249BA1010;
  *(v22 + 32) = v18;
  *(v22 + 40) = v21;
  v23 = objc_allocWithZone(type metadata accessor for DOCChainOperation());
  v24 = v18;
  v25 = v21;
  v26 = DOCChainOperation.init(operations:)(v22);
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in DOCCreateFolderViewController.didChooseName(newDisplayName:completion:);
  *(v27 + 24) = v12;
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *v26) + 0xB0);

  v29(partial apply for closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v27);
  v31 = 1;
  (*((*v28 & *v26) + 0x150))(&v31);
  v30 = [objc_opt_self() mainQueue];
  [v30 addOperation_];
}

uint64_t closure #1 in DOCCreateFolderViewController.didChooseName(newDisplayName:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(BOOL))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v6, a1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = a1;
      }

      if (*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy])
      {
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_249BA0290;
        *(v11 + 32) = a1;
        v12 = a1;
        swift_unknownObjectRetain();
        DOCTransitionable.reveal(nodes:completionBlock:)(v11, DOCGridLayout.specIconWidth.modify, 0);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return a3(a1 != 0);
}

uint64_t DOCCreateFolderViewController.__ivar_destroyer()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;

  return outlined destroy of weak DOCPresentationPreheatable?(v1);
}

id DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail] = 0;
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_group;
  *&v3[v9] = dispatch_group_create();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v15[4] = partial apply for closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:);
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
    v15[3] = &block_descriptor_268_0;
    v12 = _Block_copy(v15);
    v13 = v10;

    [a2 getTransitionControllerForItem:a1 completionBlock:v12];

    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v10;
}

void closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = partial apply for closure #1 in closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ();
    v7[3] = &block_descriptor_274;
    v5 = _Block_copy(v7);
    v6 = a2;

    [a1 getDisplayInformation:0 withCompletionBlock:v5];
    _Block_release(v5);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ()(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v14 = a2;
  v13(a2, a3, a4, a5, a6, a7);
}

uint64_t DOCFilenameTransitionCoordinator.animateTransition(using:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_group];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in DOCFilenameTransitionCoordinator.animateTransition(using:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_142_0;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in DOCFilenameTransitionCoordinator.animateTransition(using:)(void *a1)
{
  v2 = &selRef_removeFromSuperlayer;
  v3 = [a1 viewControllerForKey_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v11 = [a1 viewControllerForKey_];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 topViewController];
  if (!v6)
  {
    goto LABEL_8;
  }

  v2 = v6;
  type metadata accessor for DOCFilenameViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_8:
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = [v8 topViewController];
    if (!v9)
    {
      goto LABEL_18;
    }

    v2 = v9;
    type metadata accessor for DOCFilenameViewController();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(v10, a1);
      goto LABEL_12;
    }

LABEL_17:

LABEL_18:
    __break(1u);
    return;
  }

  DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(v7, a1);
LABEL_12:
}

void DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v69 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 containerView];
  v16 = [a2 viewForKey_];
  if (v16)
  {
    v17 = v16;
    v65 = v7;
    v66 = v6;
    [v16 setAutoresizingMask_];
    [v15 bounds];
    [v17 setFrame_];
    [v17 setAlpha_];
    [v15 addSubview_];
    [v17 layoutBelowIfNeeded];
    v18 = *MEMORY[0x277D77240];
    v70 = a2;
    v19 = [a2 viewControllerForKey_];
    v64 = v11;
    if (v19 && (v20 = v19, type metadata accessor for DOCFilenameViewController(), v21 = swift_dynamicCastClass(), v20, v21))
    {
      [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = dispatch_group_create();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = MEMORY[0x277D85000];
    v26 = (*((*MEMORY[0x277D85000] & *a1) + 0x118))(2);
    (*((*v25 & *a1) + 0x120))(v26);
    v27 = (v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect);
    v28 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect + 32);
    v71 = v24;
    if (v28 & 1) != 0 || (v29 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail)) == 0 || (*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle + 8))
    {
      dispatch_group_enter(v23);
      v30 = swift_allocObject();
      *(v30 + 16) = v22;
      *(v30 + 24) = 0x3FD999999999999ALL;
      *(v30 + 32) = a1;
      *(v30 + 40) = v23;
      *(v24 + 16) = partial apply for closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
      *(v24 + 24) = v30;
    }

    else
    {
      v52 = *v27;
      v63 = v27[1];
      v67 = v52;
      v53 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle);
      v54 = v29;
      dispatch_group_enter(v23);
      v55 = swift_allocObject();
      v56 = v70;
      *(v55 + 16) = v15;
      *(v55 + 24) = v56;
      *(v55 + 32) = 0x3FD999999999999ALL;
      *(v55 + 40) = a1;
      *(v55 + 48) = v54;
      *(v55 + 56) = v53;
      v57 = v63;
      *(v55 + 64) = v67;
      *(v55 + 80) = v57;
      *(v55 + 96) = v23;
      *(v55 + 104) = v22;
      *(v71 + 16) = partial apply for closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
      *(v71 + 24) = v55;
      v58 = v15;
      v24 = v71;
      swift_unknownObjectRetain();
    }

    *&v63 = v10;
    *&v67 = v15;
    v31 = a1;
    v32 = v23;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(0);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v62 = v33 + 16;
    dispatch_group_enter(v32);
    v61 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for DOCSafeAreaViewDidLayout != -1)
    {
      swift_once();
    }

    v60 = static NSNotificationName.DOCSafeAreaViewDidLayout;
    v34 = [v31 view];
    v35 = [objc_opt_self() mainQueue];
    v36 = swift_allocObject();
    v36[2] = v33;
    v36[3] = v24;
    v36[4] = v31;
    v36[5] = v17;
    v36[6] = 0x3FD999999999999ALL;
    v36[7] = v32;
    v77 = partial apply for closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v78 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v76 = &block_descriptor_157_0;
    v37 = _Block_copy(&aBlock);
    v38 = v31;
    v39 = v32;

    v59 = v17;

    v40 = v61;
    v41 = [v61 addObserverForName:v60 object:v34 queue:v35 usingBlock:v37];
    _Block_release(v37);

    swift_beginAccess();
    v62 = v33;
    *(v33 + 16) = v41;
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v42 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = v70;
    v77 = partial apply for closure #4 in DOCModalBlurViewControllerTransition.present(using:);
    v78 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v76 = &block_descriptor_163;
    v44 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v45 = v68;
    static DispatchQoS.unspecified.getter();
    v72 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v46 = v63;
    v47 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v44);

    (*(v65 + 8))(v46, v47);
    (*(v69 + 8))(v45, v64);

    if ([*(*&v38[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) isFirstResponder])
    {
      v48 = v38[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear];
      if ((v48 == 2 || (v48 & 1) == 0) && ![objc_opt_self() shouldMinimizeForHardwareKeyboard])
      {

        v50 = v67;
        goto LABEL_18;
      }
    }

    v49 = [v38 view];
    v50 = v67;
    if (v49)
    {
      v51 = v49;
      type metadata accessor for DOCSafeAreaView();
      swift_dynamicCastClassUnconditional();
      DOCSafeAreaView.updateLayout()();

LABEL_18:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(char *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v68 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = [a2 containerView];
  v13 = *MEMORY[0x277D77238];
  result = [a2 viewForKey_];
  if (result)
  {
    v63 = result;
    v65 = v6;
    v66 = v5;
    v15 = dispatch_group_create();
    v16 = v15;
    v17 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect);
    v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect + 32);
    v64 = v9;
    if (v18 & 1) != 0 || (v19 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail)) == 0 || (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle + 8))
    {
      dispatch_group_enter(v15);
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      v76 = partial apply for closure #2 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
      v77 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v75 = &block_descriptor_232;
      v22 = _Block_copy(&aBlock);
      v23 = a1;

      v24 = swift_allocObject();
      *(v24 + 16) = v16;
      v76 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
      v77 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v75 = &block_descriptor_238_0;
      v25 = _Block_copy(&aBlock);
      v26 = v16;

      [v20 animateWithDuration:0 delay:v22 options:v25 animations:0.4 completion:0.0];
      _Block_release(v25);
      _Block_release(v22);
    }

    else
    {
      v44 = v17[2];
      v43 = v17[3];
      v46 = *v17;
      v45 = v17[1];
      v62 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle);
      v59 = v19;
      dispatch_group_enter(v16);
      v61 = objc_opt_self();
      v57 = v70;
      v60 = [a2 viewForKey_];
      v58 = [a2 viewForKey_];
      v47 = *(*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView);
      v48 = swift_allocObject();
      *(v48 + 16) = v16;
      v76 = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
      v77 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v75 = &block_descriptor_262;
      v49 = _Block_copy(&aBlock);
      v50 = v59;
      v51 = v47;
      v52 = v16;

      LOWORD(v56) = 257;
      v53 = v57;
      v54 = v60;
      v55 = v58;
      [v61 performZoomTransitionInContainer:v57 withSourceView:v60 destinationView:v58 duration:v51 alterativeView:v50 thumbnail:v62 thumbnailStyle:0.48 location:v46 presenting:v45 fadingSource:v44 completion:{v43, v56, v49}];
      _Block_release(v49);
    }

    dispatch_group_enter(v16);
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    v76 = partial apply for closure #4 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
    v77 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v75 = &block_descriptor_244;
    v29 = _Block_copy(&aBlock);
    v30 = a1;

    v31 = swift_allocObject();
    v32 = v63;
    v31[2] = v63;
    v31[3] = v30;
    v31[4] = v16;
    v76 = partial apply for closure #5 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
    v77 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v75 = &block_descriptor_250;
    v33 = _Block_copy(&aBlock);
    v34 = v16;
    v35 = v30;
    v36 = v32;

    [v27 animateWithDuration:v29 animations:v33 completion:0.48];
    _Block_release(v33);
    _Block_release(v29);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = a2;
    v76 = partial apply for closure #2 in DOCModalBlurViewControllerTransition.dismiss(using:);
    v77 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v75 = &block_descriptor_256;
    v39 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v40 = v67;
    static DispatchQoS.unspecified.getter();
    v71 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v69;
    v42 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v39);

    (*(v65 + 8))(v41, v42);
    (*(v68 + 8))(v40, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, void *a6, char a7, double a8, double a9, double a10, double a11, double a12)
{
  v21 = objc_opt_self();
  v22 = [a2 viewForKey_];
  v23 = [a2 viewForKey_];
  v24 = *(*&a3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView);
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v42 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
  v43 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v41 = &block_descriptor_172;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v28 = a6;

  LOWORD(v34) = 256;
  [v21 performZoomTransitionInContainer:a1 withSourceView:v22 destinationView:v23 duration:v27 alterativeView:a4 thumbnail:a5 thumbnailStyle:a8 location:a9 presenting:a10 fadingSource:a11 completion:{a12, v34, v26}];
  _Block_release(v26);

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  if (a7)
  {
    v42 = partial apply for closure #2 in closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v43 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_184;
    v31 = _Block_copy(&aBlock);
    v32 = a3;

    [v29 animateWithDuration:0 delay:v31 options:0 animations:a8 * 0.33 completion:a8 * 0.67];
  }

  else
  {
    v42 = partial apply for closure #3 in closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v43 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_178;
    v31 = _Block_copy(&aBlock);
    v33 = a3;

    [v29 animateWithDuration:0 delay:v31 options:0 animations:a8 * 0.33 completion:0.0];
  }

  _Block_release(v31);
}

void closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(char a1, void *a2, void *a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  if (a1)
  {
    v22 = partial apply for closure #1 in closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v23 = v9;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v21 = &block_descriptor_220;
    v10 = _Block_copy(&v18);
    v11 = a2;

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    v22 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
    v23 = v12;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_226;
    v13 = _Block_copy(&v18);
    v14 = a3;

    [v8 animateWithDuration:0 delay:v10 options:v13 animations:a4 * 0.33 completion:a4 * 0.67];
  }

  else
  {
    v22 = partial apply for closure #3 in closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v23 = v9;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v21 = &block_descriptor_208_0;
    v10 = _Block_copy(&v18);
    v15 = a2;

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v22 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
    v23 = v16;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_214;
    v13 = _Block_copy(&v18);
    v17 = a3;

    [v8 animateWithDuration:0 delay:v10 options:v13 animations:a4 * 0.33 completion:0.0];
  }

  _Block_release(v13);
  _Block_release(v10);
}

void closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  swift_beginAccess();
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v16 = *(a4 + 16);
  if (v16)
  {

    v16(v17);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16);
  }

  v18 = [a5 navigationController];
  if (v18)
  {
    v19 = v18;
    [v18 setNavigationBarHidden:1 animated:0];
  }

  [a6 setAlpha_];
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  v32 = partial apply for closure #1 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
  v33 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v31 = &block_descriptor_196;
  v22 = _Block_copy(&aBlock);
  v23 = a5;

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a7;
  v32 = partial apply for closure #2 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
  v33 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v31 = &block_descriptor_202_1;
  v25 = _Block_copy(&aBlock);
  v26 = v23;
  v27 = a7;

  [v20 animateWithDuration:v22 animations:v25 completion:a1];
  _Block_release(v25);
  _Block_release(v22);
}

void closure #2 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v28 = 1 << *(v2 + 32);
        if (v28 >= 64)
        {
          bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v28;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      if (v19 <= 3)
      {
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v20 = 3;
          }

          else
          {
            v20 = 4;
          }

          goto LABEL_34;
        }

        if (!v19)
        {
          v20 = 0;
          goto LABEL_34;
        }

        if (v19 == 1)
        {
          v20 = 2;
          goto LABEL_34;
        }
      }

      else
      {
        if (v19 <= 5)
        {
          if (v19 == 4)
          {
            v20 = 5;
          }

          else
          {
            v20 = 6;
          }

          goto LABEL_34;
        }

        switch(v19)
        {
          case 6:
            v20 = 7;
            goto LABEL_34;
          case 7:
            v20 = 8;
            goto LABEL_34;
          case 8:
            v20 = 9;
LABEL_34:
            MEMORY[0x24C1FCBD0](v20);
            goto LABEL_35;
        }
      }

      MEMORY[0x24C1FCBD0](1);
      String.hash(into:)();
LABEL_35:
      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v28 = 1 << *(v2 + 32);
        if (v28 >= 64)
        {
          bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v28;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      if (v19 <= 4)
      {
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v20 = 2;
          }

          else if (v19 == 3)
          {
            v20 = 3;
          }

          else
          {
            v20 = 4;
          }

          goto LABEL_38;
        }

        if (!v19)
        {
          v20 = 0;
          goto LABEL_38;
        }

        if (v19 == 1)
        {
          v20 = 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v19 <= 7)
        {
          if (v19 == 5)
          {
            v20 = 5;
          }

          else if (v19 == 6)
          {
            v20 = 6;
          }

          else
          {
            v20 = 7;
          }

          goto LABEL_38;
        }

        switch(v19)
        {
          case 8:
            v20 = 8;
            goto LABEL_38;
          case 9:
            v20 = 9;
            goto LABEL_38;
          case 10:
            v20 = 11;
LABEL_38:
            MEMORY[0x24C1FCBD0](v20);
            goto LABEL_39;
        }
      }

      MEMORY[0x24C1FCBD0](10);
      String.hash(into:)();
LABEL_39:
      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v36 = type metadata accessor for UTType();
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for DSLightweightTagInfo();
      lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Task.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(v2 + 48) + 56 * (v17 | (v5 << 6));
      v21 = *v20;
      v22 = *(v20 + 48);
      v23 = *(v20 + 32);
      v33 = *(v20 + 16);
      v34 = v23;
      v35 = v22;
      v32 = v21;
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(&v32 + 1, v34);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v4 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 56 * v12;
      v14 = v32;
      v15 = v33;
      v16 = v34;
      *(v13 + 48) = v35;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      bzero((v2 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v14 = v5;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v5 >= v10)
          {
            break;
          }

          v15 = v6[v5];
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v9 = (v15 - 1) & v15;
            goto LABEL_15;
          }
        }

        v25 = 1 << *(v2 + 32);
        if (v25 >= 64)
        {
          bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v25;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        goto LABEL_36;
      }

      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      if (v16 == 2)
      {
        v17 = 1;
        goto LABEL_21;
      }

      if (v16 == 3)
      {
        break;
      }

      if (v16 == 4)
      {
        v17 = 3;
LABEL_21:
        MEMORY[0x24C1FCBD0](v17);
        goto LABEL_23;
      }

      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v16 & 1);
LABEL_23:
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v17 = 2;
    goto LABEL_21;
  }

LABEL_36:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v26 = *v17;
      *v27 = v17[1];
      *&v27[9] = *(v17 + 25);
      Hasher.init(_seed:)();
      DOCSidebarItem.hashComparableValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 48 * v12);
      *v13 = v26;
      v13[1] = *v27;
      *(v13 + 25) = *&v27[9];
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      result = Hasher._finalize()();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v28 = *(v17 + 8);
      Hasher.init(_seed:)();
      v19 = MEMORY[0x24C1FAF70](v18, v28);
      MEMORY[0x24C1FCBD0](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo20UICollectionViewCellCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo8FPActionaGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo12FPProviderIDaGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo7UITouchCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo6FINodeCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo6DOCTagCGMd);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMR, outlined copy of ColumnType);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = outlined init with copy of AnyHashable(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMR, outlined copy of DOCItemFileTypeGroupCategory);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        result = outlined init with copy of DOCIdentityHashableLocation(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = outlined copy of DOCSidebarItem(v19, v20, v21, v22, v23, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo20UICollectionViewCellCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo8FPActionaGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo12FPProviderIDaGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo7UITouchCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo6FINodeCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo6DOCTagCGMd);
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 16 * (v18 | (v12 << 6));
        v22 = *(*(v6 + 48) + v21);
        *(*(v8 + 48) + v21) = v22;
        result = a3(v22, *(&v22 + 1));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_47:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v19 = 3;
        }

        else
        {
          v19 = 4;
        }

        goto LABEL_34;
      }

      if (!v18)
      {
        v19 = 0;
        goto LABEL_34;
      }

      if (v18 == 1)
      {
        v19 = 2;
        goto LABEL_34;
      }
    }

    else
    {
      if (v18 <= 5)
      {
        if (v18 == 4)
        {
          v19 = 5;
        }

        else
        {
          v19 = 6;
        }

        goto LABEL_34;
      }

      switch(v18)
      {
        case 6:
          v19 = 7;
          goto LABEL_34;
        case 7:
          v19 = 8;
          goto LABEL_34;
        case 8:
          v19 = 9;
LABEL_34:
          MEMORY[0x24C1FCBD0](v19);
          goto LABEL_35;
      }
    }

    MEMORY[0x24C1FCBD0](1);

    String.hash(into:)();
LABEL_35:
    result = Hasher._finalize()();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v10 + 8 * v22);
        if (v26 != -1)
        {
          v11 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_49;
    }

    v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = (*(v4 + 48) + 16 * v11);
    *v12 = v17;
    v12[1] = v18;
    ++*(v4 + 16);
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_47;
    }

    v15 = *(v2 + 56 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v8 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_51:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    if (v18 <= 4)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v19 = 2;
        }

        else if (v18 == 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 4;
        }

        goto LABEL_38;
      }

      if (!v18)
      {
        v19 = 0;
        goto LABEL_38;
      }

      if (v18 == 1)
      {
        v19 = 1;
        goto LABEL_38;
      }
    }

    else
    {
      if (v18 <= 7)
      {
        if (v18 == 5)
        {
          v19 = 5;
        }

        else if (v18 == 6)
        {
          v19 = 6;
        }

        else
        {
          v19 = 7;
        }

        goto LABEL_38;
      }

      switch(v18)
      {
        case 8:
          v19 = 8;
          goto LABEL_38;
        case 9:
          v19 = 9;
          goto LABEL_38;
        case 10:
          v19 = 11;
LABEL_38:
          MEMORY[0x24C1FCBD0](v19);
          goto LABEL_39;
      }
    }

    MEMORY[0x24C1FCBD0](10);

    String.hash(into:)();
LABEL_39:
    result = Hasher._finalize()();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v10 + 8 * v22);
        if (v26 != -1)
        {
          v11 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_53;
    }

    v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = (*(v4 + 48) + 16 * v11);
    *v12 = v17;
    v12[1] = v18;
    ++*(v4 + 16);
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_51;
    }

    v15 = *(v2 + 56 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v8 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v33 = type metadata accessor for UTType();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for DSLightweightTagInfo();
      lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();

      Task.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      outlined init with copy of DOCIdentityHashableLocation(*(v2 + 48) + 56 * (v16 | (v5 << 6)), v26);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v26 + 1, v27);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 56 * v11;
      v13 = v26[0];
      v14 = v26[1];
      v15 = v27;
      *(v12 + 48) = v28;
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_34:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    switch(v15)
    {
      case 2:
        v16 = 1;
        goto LABEL_21;
      case 3:
        v16 = 2;
        goto LABEL_21;
      case 4:
        v16 = 3;
LABEL_21:
        MEMORY[0x24C1FCBD0](v16);
        goto LABEL_23;
    }

    MEMORY[0x24C1FCBD0](0);
    Hasher._combine(_:)(v15 & 1);
LABEL_23:
    result = Hasher._finalize()();
    v17 = -1 << *(v4 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v10 + 8 * v19);
        if (v23 != -1)
        {
          v11 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v4 + 48) + v11) = v15;
    ++*(v4 + 16);
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_34;
    }

    v14 = *(v2 + 56 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v8 = (v14 - 1) & v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v18 = (*(v2 + 48) + 48 * (v15 | (v5 << 6)));
      v20 = *v18;
      v19 = v18[1];
      *(v30 + 9) = *(v18 + 25);
      v29 = v20;
      v30[0] = v19;
      Hasher.init(_seed:)();
      outlined init with copy of DOCSidebarItem(&v29, v28);
      DOCSidebarItem.hashComparableValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 48 * v11);
      v13 = v29;
      v14 = v30[0];
      *(v12 + 25) = *(v30 + 9);
      *v12 = v13;
      v12[1] = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
LABEL_13:
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      result = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v9 + 8 * (v13 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v12) >> 6;
        while (++v14 != v16 || (v15 & 1) == 0)
        {
          v17 = v14 == v16;
          if (v14 == v16)
          {
            v14 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v14);
          if (v18 != -1)
          {
            v10 = __clz(__rbit64(~v18)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v10 = __clz(__rbit64((-1 << v13) & ~*(v9 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v7 &= v7 - 1;
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++*(v3 + 16);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 56 + 8 * v11);
      ++v4;
      if (v7)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v3;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      Hasher.init(_seed:)();

      v21 = MEMORY[0x24C1FAF70](v18, v19);
      MEMORY[0x24C1FCBD0](v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo20UICollectionViewCellCGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo8FPActionaGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo12FPProviderIDaGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo7UITouchCGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo6FINodeCGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo6DOCTagCGMd);
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v19 = v18;
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(at:)(uint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    specialized _NativeSet.copy()();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + isUniquelyReferenced_nonNull_native);
  specialized _NativeSet._delete(at:)(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

char *specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, _BYTE *a6)
{
  v12 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = a1;
  v13 = [swift_unknownObjectRetain() filename];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v12 = v14;
  v12[1] = v16;

  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = a4;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = a5;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = a1;
    v19 = a4;
    v20 = MEMORY[0x24C1FAD20](a2, a3);

    v27.receiver = a6;
    v27.super_class = type metadata accessor for DOC_FIRenameOperation();
    v21 = objc_msgSendSuper2(&v27, sel_initWithNode_rawName_, v17, v20);
  }

  else
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v18 = a1;
    v19 = a4;
    v20 = MEMORY[0x24C1FAD20](a2, a3);

    v28.receiver = a6;
    v28.super_class = type metadata accessor for DOC_FIRenameOperation();
    v21 = objc_msgSendSuper2(&v28, sel_initWithItem_rawName_, v22, v20);
  }

  v23 = v21;

  if (v23)
  {

    if (v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
    {
      v24 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
      v25 = v23;
      [v24 registerUndoOperationForSender_];
    }
  }

  else
  {
  }

  return v23;
}

objc_class *specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v56 - v15;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.folder.getter();
  LOBYTE(v17) = static UTType.== infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v16, v8);
  result = _DocumentManagerBundle();
  v20 = result;
  if ((v17 & 1) == 0)
  {
    if (result)
    {
      v55 = 0x8000000249BE5160;
      v21 = 0x4420656D616E6552;
      v22 = 0xEF746E656D75636FLL;
      v23 = 0x617A696C61636F4CLL;
      v24 = 0xEB00000000656C62;
      v28 = 0xD000000000000035;
      v25.super.isa = v20;
      v26 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v55 = 0x8000000249BE51A0;
  v21 = 0x4620656D616E6552;
  v22 = 0xED00007265646C6FLL;
  v23 = 0x617A696C61636F4CLL;
  v24 = 0xEB00000000656C62;
  v25.super.isa = v20;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = 0xD000000000000033;
LABEL_6:
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, *&v23, v25, *&v26, *&v28);

  if (a3)
  {
    if ([a3 isRepresentativeIcon])
    {
      swift_unknownObjectRetain();
    }

    else
    {
      a3 = 0;
    }
  }

  v58 = a3;
  v30 = objc_allocWithZone(type metadata accessor for DOCRenameThumbnailView());
  swift_unknownObjectRetain();
  v31 = a1;
  v32 = DOCRenameThumbnailView.init(item:initialThumbnail:maxThumbnailSize:)(a1, a3, 186.0, 186.0);
  v33 = [v31 displayName];
  if (!v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = MEMORY[0x24C1FAD20](v34);
  }

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = a2;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = a1;
  v35 = objc_allocWithZone(type metadata accessor for DOCFilenameView());
  swift_unknownObjectRetain();
  v36 = v32;
  v57 = v31;
  v37 = v36;
  v38 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v37, 186.0, 186.0);
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v39] setAlpha_];
  v40 = *(*&v4[v39] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v40 setText_];

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 0;
  v41 = type metadata accessor for DOCFilenameViewController();
  v61.receiver = v4;
  v61.super_class = v41;
  v42 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);
  v43 = MEMORY[0x24C1FAD20](v29._countAndFlagsBits, v29._object);

  [v42 setTitle_];

  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
  [*(*&v42[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v42 action:sel_editingDidEnd_ forControlEvents:0x80000];
  v45 = *(*&v42[v44] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v45 addTarget:v42 action:sel_editingDidChange_ forControlEvents:0x20000];

  v46 = [v42 navigationItem];
  v60[3] = swift_getObjectType();
  v60[0] = v42;
  v47 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v48 = v42;
  v49 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v60);
  v50 = [v47 initWithBarButtonSystemItem:0 target:v49 action:sel_editingDidEnd_];
  swift_unknownObjectRelease();
  [v46 setRightBarButtonItem_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v51 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v48, sel_cancelViewController);
  [v46 setLeftBarButtonItem_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_249B9A480;
  v53 = type metadata accessor for UITraitUserInterfaceStyle();
  v54 = MEMORY[0x277D74BF0];
  *(v52 + 32) = v53;
  *(v52 + 40) = v54;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v48;
}

char *specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_parentItem] = a1;
  v10 = a1;
  result = _DocumentManagerBundle();
  if (result)
  {
    v12 = result;
    v39._object = 0x8000000249BE5AD0;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0x646C6F462077654ELL;
    v15._object = 0x8000000249BE5AB0;
    v39._countAndFlagsBits = 0xD000000000000033;
    v15._countAndFlagsBits = 0xD000000000000012;
    v14._object = 0xEA00000000007265;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v13, v12, v14, v39);

    v17 = objc_allocWithZone(type metadata accessor for DOCFolderThumbnailView());
    v18 = DOCFolderThumbnailView.init(item:maxThumbnailSize:)(v10, 186.0, 186.0);
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = a4;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = 0;
    objc_allocWithZone(type metadata accessor for DOCFilenameView());
    swift_unknownObjectRetain();
    v19 = v18;
    v20 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v19, 186.0, 186.0);
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v5[v21] setAlpha_];
    v22 = *(*&v5[v21] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v23 = MEMORY[0x24C1FAD20](a2, a3);

    [v22 setText_];

    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 1;
    v38.receiver = v5;
    v38.super_class = type metadata accessor for DOCFilenameViewController();
    v24 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
    v25 = MEMORY[0x24C1FAD20](v16._countAndFlagsBits, v16._object);

    [v24 setTitle_];

    v26 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    [*(*&v24[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v24 action:sel_editingDidEnd_ forControlEvents:0x80000];
    v27 = *(*&v24[v26] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    [v27 addTarget:v24 action:sel_editingDidChange_ forControlEvents:0x20000];

    v28 = [v24 navigationItem];
    v37[3] = swift_getObjectType();
    v37[0] = v24;
    v29 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v30 = v24;
    v31 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v37);
    v32 = [v29 initWithBarButtonSystemItem:0 target:v31 action:sel_editingDidEnd_];
    swift_unknownObjectRelease();
    [v28 setRightBarButtonItem_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v33 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v30, sel_cancelViewController);
    [v28 setLeftBarButtonItem_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9A480;
    v35 = type metadata accessor for UITraitUserInterfaceStyle();
    v36 = MEMORY[0x277D74BF0];
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    UIViewController.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError()
{
  result = lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError;
  if (!lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  result = lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType;
  if (!lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilenameValidationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FilenameValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for FilenameValidationError(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for FilenameValidationError(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCFilenameView.DOCFilenameViewTextFieldUpdateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}