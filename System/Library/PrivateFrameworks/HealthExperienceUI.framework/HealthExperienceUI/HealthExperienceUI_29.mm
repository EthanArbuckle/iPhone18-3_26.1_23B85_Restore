id sub_1BA219238(int a1, id a2, unsigned __int8 a3)
{
  if (([a2 isSelected] & 1) != 0 || objc_msgSend(a2, sel_isHighlighted))
  {
    if (a3 - 6 < 2)
    {
      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 tertiarySystemGroupedBackgroundColor];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FD7F54;
      v24 = v14;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v10 = &block_descriptor_58;
      goto LABEL_8;
    }

    if (a3 == 4 || a3 == 12)
    {
      v5 = objc_opt_self();
      v6 = [v5 systemGray5Color];
      v7 = [v5 systemGray4Color];
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = v7;
      v8[4] = 0;
      v8[5] = v6;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v8;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v10 = &block_descriptor_16;
LABEL_8:
      v21 = sub_1B9F7EBBC;
      v22 = v10;
      v15 = _Block_copy(&v19);
      v16 = [v9 initWithDynamicProvider_];
      _Block_release(v15);

      return v16;
    }

    v18 = [objc_opt_self() systemGray5Color];
  }

  else if ((a3 | 8) == 0xC)
  {
    v18 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  }

  return v18;
}

Swift::Void __swiftcall DataTypeNoDataAvailableCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    countAndFlagsBits = with.value._countAndFlagsBits;
    object = with.value._object;

    v5 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v6 = [v2 contentView];
    sub_1B9F25350();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5460;
    *(v7 + 32) = countAndFlagsBits;
    *(v7 + 40) = object;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;
    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    v9 = [v1 contentView];
    [v9 setAccessibilityIdentifier_];
  }
}

id DataTypeNoDataAvailableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeNoDataAvailableCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA219774(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v104 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v104 - v12;
  sub_1B9F6A90C(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v108 = &v104 - v15;
  v112 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v112);
  v110 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v17);
  v109 = &v104 - v19;
  v20 = [a1 navigationController];
  if (!v20)
  {
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v21 = v20;
  v115 = v5;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v22, &v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!*(&v130 + 1))
  {
    sub_1B9F44170(&v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_10;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v106 = v7;
  v114 = v4;
  v23 = *&v121[0];
  v24 = sub_1BA4A2758();
  v25 = sub_1BA1591A8(v24);

  v107 = v25;
  if (!v25)
  {

    v4 = v114;
LABEL_10:
    sub_1BA4A3DD8();
    v32 = v2;
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v114 = v4;
      v37 = v36;
      *&v121[0] = v36;
      *v35 = 136380675;
      ObjectType = v10;
      v111 = v21;
      sub_1B9F374E8(v2 + v22, &v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, v121);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B9F07000, v33, v34, "Item kind wrong: %{private}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);

      v115[1](ObjectType, v114);
    }

    else
    {

      v115[1](v10, v4);
    }

    return;
  }

  v105 = v23;
  v26 = UIViewController.resolvedHealthStore.getter();
  if (v26)
  {
    v111 = v21;
    v27 = v26;
    v28 = [v26 profileIdentifier];
    UIViewController.resolvedPresentation.getter(&v129);
    v29 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v28, &v129);

    UIViewController.resolvedHealthExperienceStore.getter(v128);
    v30 = v27;
    UIViewController.resolvedPinnedContentManager.getter(v127);
    sub_1B9F0A534(v128, v121);
    *(&v122 + 1) = v30;
    LOBYTE(v123) = v29;
    sub_1BA4A2488();
    swift_allocObject();
    v31 = v30;
    *(&v123 + 1) = sub_1BA4A2468();
    sub_1B9F374E8(v127, &v116, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    if (v117)
    {

      sub_1B9F44170(v127, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      __swift_destroy_boxed_opaque_existential_1(v128);
      sub_1B9F25598(&v116, &v118);
    }

    else
    {
      v54 = sub_1BA4A22B8();
      v55 = sub_1BA4A22A8();
      v119 = v54;
      v120 = MEMORY[0x1E69A3CF8];
      *&v118 = v55;
      sub_1B9F44170(v127, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      __swift_destroy_boxed_opaque_existential_1(v128);
      if (v117)
      {
        sub_1B9F44170(&v116, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      }
    }

    sub_1B9F25598(&v118, v124);
    v126 = 0;
    v133 = v124[0];
    v134 = v124[1];
    v129 = v121[0];
    v130 = v121[1];
    v131 = v122;
    v132 = v123;
    v136 = 0;
    v135 = v125;
    v56 = v107;
    v57 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v107, &v129);
    sub_1BA114E30(&v129);
    swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58 && v57)
    {
      v59 = v58;
      v115 = v57;
      v60 = v57;
      v61 = v31;
      v106 = v31;
      v114 = v60;
      UIViewController.resolvedPinnedContentManager.getter(&v129);
      v62 = v105;
      UIViewController.resolvedPresentation.getter(v121);
      LODWORD(ObjectType) = LOBYTE(v121[0]);
      v63 = v110;
      *v110 = xmmword_1BA4B7EA0;
      *(v63 + 16) = xmmword_1BA4B7EA0;
      v64 = v112;
      v65 = *(v112 + 44);
      v66 = sub_1BA4A22F8();
      (*(*(v66 - 8) + 56))(v63 + v65, 1, 1, v66);
      v67 = (v63 + *(v64 + 52));
      *v67 = 0;
      v67[1] = 0;
      v68 = [v62 userData];
      if (v68)
      {
        v69 = v68;
        v70 = sub_1BA4A1608();
        v72 = v71;
      }

      else
      {
        v70 = 0;
        v72 = 0xF000000000000000;
      }

      sub_1B9F6AC8C(*v63, *(v63 + 8));
      *v63 = v70;
      *(v63 + 8) = v72;
      v76 = [v62 actionHandlerUserData];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1BA4A1608();
        v80 = v79;
      }

      else
      {
        v78 = 0;
        v80 = 0xF000000000000000;
      }

      v31 = v61;
      sub_1B9F6AC8C(*(v63 + 16), *(v63 + 24));
      *(v63 + 16) = v78;
      *(v63 + 24) = v80;
      *(v63 + 32) = v106;
      sub_1B9F0A534(&v129, v63 + 48);
      v81 = [v62 uniqueIdentifier];
      v82 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v84 = v83;

      *(v63 + 88) = v82;
      *(v63 + 96) = v84;
      v85 = v112;
      sub_1BA4A26B8();
      v86 = v108;
      sub_1BA4A2788();
      sub_1B9F6ACA0(v86, v63 + v65);
      *(v63 + 40) = ObjectType;
      v87 = [v62 baseAutomationIdentifier];
      if (v87)
      {
        v88 = v87;
        v89 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v91 = v90;

        v63 = v110;
      }

      else
      {
        v89 = 0;
        v91 = 0;
      }

      v75 = v105;
      v92 = (v63 + *(v85 + 48));
      *v92 = v89;
      v92[1] = v91;
      if (FeedItem.pluginInfo.getter())
      {
        v93 = sub_1BA4A3AD8();

        v94 = [v62 actionHandlerClassName];
        if (v94)
        {
          v95 = v94;
          v96 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v98 = v97;

          __swift_destroy_boxed_opaque_existential_1(&v129);
          v99 = swift_allocObject();
          *(v99 + 2) = v93;
          *(v99 + 3) = v96;
          v63 = v110;
          *(v99 + 4) = v98;
          v85 = v112;
          *v67 = sub_1BA028D88;
          v67[1] = v99;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v129);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v129);
      }

      v100 = v109;
      sub_1B9F6AD20(v63, v109);
      v101 = v114;
      v102 = swift_getObjectType();
      *(&v130 + 1) = v85;
      *&v131 = &protocol witness table for BasicFeedItemViewControllerContext;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v129);
      sub_1BA21A724(v100, boxed_opaque_existential_1);
      (*(v59 + 24))(&v129, v102, v59);

      sub_1BA21A788(v100);
      v74 = v111;
      v56 = v107;
      v57 = v115;
    }

    else
    {
      v73 = v57;
      v74 = v111;
      v75 = v105;
    }

    [v74 pushViewController:v57 animated:1];
  }

  else
  {
    sub_1BA4A3DD8();
    v41 = v107;
    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v129 = v112;
      *v44 = 136315394;
      v45 = sub_1BA4A85D8();
      v47 = sub_1B9F0B82C(v45, v46, &v129);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = [v41 identifier];
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v51 = v50;

      v52 = sub_1B9F0B82C(v49, v51, &v129);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_1B9F07000, v42, v43, "[%s]: Unable to push DTDR for %s, cannot resolve health store.", v44, 0x16u);
      v53 = v112;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
    }

    else
    {
    }

    v115[1](v13, v114);
  }
}

uint64_t sub_1BA21A724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA21A788(uint64_t a1)
{
  v2 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SpecifierHeaderViewConfiguration.init(image:description:status:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

uint64_t SpecifierHeaderViewConfiguration.init(image:content:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1B9F1D830(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v8 = sub_1BA4A66D8();
  v10 = v9;

  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t SpecifierHeaderViewConfiguration.init(iconIdentifier:isWatchIcon:content:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1B9F1D830(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v12 = sub_1BA4A66D8();
  v14 = v13;

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 | 0x80;
  *(a6 + 24) = v12;
  *(a6 + 32) = v14;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

uint64_t sub_1BA21A9AC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA21AAA8()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA21AB90()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA21AC88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA21DBDC();
  *a1 = result;
  return result;
}

void sub_1BA21ACB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7470697263736564;
  if (v2 != 3)
  {
    v4 = 0x737574617473;
    v3 = 0xE600000000000000;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001BA4E10A0;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001BA4E1060;
  if (*v1)
  {
    v5 = 0xD000000000000019;
    v6 = 0x80000001BA4E1080;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BA21AD70()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  if (v1 != 3)
  {
    v2 = 0x737574617473;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA21AE24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA21DBDC();
  *a1 = result;
  return result;
}

uint64_t sub_1BA21AE4C(uint64_t a1)
{
  v2 = sub_1BA21B4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA21AE88(uint64_t a1)
{
  v2 = sub_1BA21B4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpecifierHeaderViewConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA21B9C8(0, &qword_1EBBEE888, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1BA21B4B4();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = a2;
  v11 = v46;
  LOBYTE(v47) = 3;
  v12 = sub_1BA4A8188();
  v45 = v13;
  v44 = v12;
  LOBYTE(v47) = 4;
  v42 = sub_1BA4A8138();
  v43 = v15;
  v49 = 0;
  sub_1BA21B508();
  sub_1BA4A8178();
  v16 = v48;
  if (v48 >> 60 == 15)
  {
    LOBYTE(v47) = 1;
    v17 = sub_1BA4A8138();
    v41 = 0;
    if (v18)
    {
      v40 = v18;
      v38 = v17;
      LOBYTE(v47) = 2;
      v34 = sub_1BA4A8148();
      (*(v11 + 8))(v8, v6);
      v35 = v34 & 1 | 0x80;
      v36 = v40;
LABEL_12:
      v24 = v38;
      *v10 = v38;
      *(v10 + 8) = v36;
      *(v10 + 16) = v35;
      v25 = v45;
      *(v10 + 24) = v44;
      *(v10 + 32) = v25;
      *(v10 + 40) = v42;
      *(v10 + 48) = v43;
      v26 = v36;
      sub_1B9FCF11C(v24, v36, v35);

      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_1B9FCF0B4(v24, v26, v35);
    }

    v44 = sub_1BA4A7E68();
    swift_allocError();
    v31 = v30;
    sub_1BA21B55C();
    v42 = *(v32 + 48);
    *(v31 + 24) = &type metadata for SpecifierHeaderViewConfiguration.CodingKeys;
    *(v31 + 32) = v9;
    *v31 = 0;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BA4A8518();
    sub_1BA4A7E48();
    (*(*(v44 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    (*(v11 + 8))(v8, v6);
    v29 = a1;
  }

  else
  {
    v41 = 0;
    v19 = v47;
    v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1B9F206D4(v19, v16);
    v40 = sub_1BA4A15F8();
    v21 = v20;
    v22 = v16;
    v23 = [v21 initWithData_];

    v39 = v19;
    v40 = v22;
    sub_1B9F6AC8C(v19, v22);
    v38 = v23;
    if (v23)
    {
      (*(v11 + 8))(v8, v6);
      sub_1B9F6AC8C(v39, v40);
      v35 = 0;
      v36 = 0;
      goto LABEL_12;
    }

    v44 = sub_1BA4A7E68();
    swift_allocError();
    v42 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BA4A8518();
    v28 = v42;
    sub_1BA4A7E48();
    (*(*(v44 - 8) + 104))(v28, *MEMORY[0x1E69E6B00]);
    swift_willThrow();
    sub_1B9F6AC8C(v39, v40);
    (*(v11 + 8))(v8, v6);
    v29 = a1;
  }

  v33 = v41;
  __swift_destroy_boxed_opaque_existential_1(v29);

  if (!v33)
  {
  }

  return result;
}

unint64_t sub_1BA21B4B4()
{
  result = qword_1EBBEE890;
  if (!qword_1EBBEE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE890);
  }

  return result;
}

unint64_t sub_1BA21B508()
{
  result = qword_1EBBEE898;
  if (!qword_1EBBEE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE898);
  }

  return result;
}

void sub_1BA21B55C()
{
  if (!qword_1EBBEE8A0)
  {
    sub_1B9F0D950(255, &qword_1EBBEE8A8);
    sub_1BA4A7E58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE8A0);
    }
  }
}

void SpecifierHeaderViewConfiguration.encode(to:)(void *a1)
{
  sub_1BA21B9C8(0, &qword_1EBBEE8B0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v35 = *(v1 + 16);
  v10 = *(v1 + 48);
  v30 = *(v1 + 40);
  v31 = v8;
  v28 = v9;
  v29 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA21B4B4();
  v11 = v4;
  sub_1BA4A8548();
  LOBYTE(v33) = 3;
  v12 = v32;
  sub_1BA4A8248();
  if (v12)
  {
    goto LABEL_3;
  }

  v13 = v31;
  v14 = v28;
  v15 = v35;
  LOBYTE(v33) = 4;
  sub_1BA4A8208();
  if (v15 < 0)
  {
    LOBYTE(v33) = 1;

    sub_1BA4A8248();
    sub_1B9FCF0B4(v13, v14, v15);
    LOBYTE(v33) = 2;
    sub_1BA4A8258();
LABEL_3:
    (*(v5 + 8))(v7, v11);
    return;
  }

  v32 = 0;
  v16 = v13;
  v17 = UIImagePNGRepresentation(v16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BA4A1608();
    v21 = v20;

    v30 = v19;
    v33 = v19;
    v34 = v21;
    v36 = 0;
    sub_1BA21BA98();
    sub_1BA4A8288();
    (*(v5 + 8))(v7, v11);
    sub_1B9FCF0B4(v13, v14, v15);
    sub_1B9F2BB4C(v30, v21);
  }

  else
  {
    v22 = sub_1BA4A7E98();
    v32 = swift_allocError();
    v24 = v23;
    sub_1BA21BA2C();
    v27 = *(v25 + 48);
    v24[3] = sub_1B9F0ADF8(0, &qword_1EDC6E370);
    *v24 = v16;
    v29 = v7;
    v30 = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v26 = v16;
    sub_1BA4A8538();
    sub_1BA4A7E48();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B30], v22);
    swift_willThrow();
    sub_1B9FCF0B4(v31, v14, v35);
    (*(v5 + 8))(v29, v30);
  }
}

void sub_1BA21B9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA21B4B4();
    v7 = a3(a1, &type metadata for SpecifierHeaderViewConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA21BA2C()
{
  if (!qword_1EBBEE8B8)
  {
    sub_1BA4A7E88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE8B8);
    }
  }
}

unint64_t sub_1BA21BA98()
{
  result = qword_1EBBEE8C0;
  if (!qword_1EBBEE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE8C0);
  }

  return result;
}

uint64_t sub_1BA21BB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA21BB70(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1BA21BBCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA21BC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1BA21BCA4(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel] = 0;
  v3 = sub_1BA4A6758();
  v4 = [a1 propertyForKey_];

  if (v4)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v25;
      v6 = v26;
      v7 = v28;
      v8 = v29;
      v9 = v30;
      v10 = v31;
      v11 = v27;
      v12 = &v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration];
      *v12 = v25;
      *(v12 + 1) = v6;
      v12[16] = v11;
      *(v12 + 3) = v7;
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
      *(v12 + 6) = v10;
      sub_1B9FCF11C(v5, v6, v11);
      v24.receiver = v1;
      v24.super_class = type metadata accessor for SpecifierHeaderView();

      v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v14 = sub_1BA21C074();
      [v13 addSubview_];

      v15 = sub_1BA21C9C8();
      [v13 addSubview_];

      v16 = sub_1BA21CE90();
      [v13 addSubview_];

      sub_1BA21D368();
      sub_1BA21D5D4();
      sub_1BA21D76C();
      sub_1B9FCF0B4(v5, v6, v11);

      return v13;
    }
  }

  else
  {
    sub_1B9F23224(v34);
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v18 = sub_1BA4A77C8();
  sub_1B9F2EAC0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  swift_getMetatypeMetadata();
  v20 = sub_1BA4A6808();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1B9F1BE20();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_1BA4A77D8();

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

id sub_1BA21C074()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView];
  }

  else
  {
    v4 = sub_1BA21C0D8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA21C0D8(void *a1)
{
  sub_1B9F6C030(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];

  v6 = sub_1BA4A6C88();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1BA4A6C68();
  v7 = v5;
  v8 = a1;
  v9 = sub_1BA4A6C58();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;
  sub_1BA0BF220(0, 0, v4, &unk_1BA4C7688, v10);

  return v7;
}

uint64_t sub_1BA21C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1BA4A6C68();
  v5[7] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA21C308, v7, v6);
}

uint64_t sub_1BA21C308()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  sub_1B9FCF11C(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1BA21C3C8;

  return sub_1BA21C5A8(v0 + 16);
}

uint64_t sub_1BA21C3C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 88) = a1;

  sub_1B9FCF0B4(*(v2 + 16), *(v2 + 24), *(v3 + 32));
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BA21C528, v5, v4);
}

uint64_t sub_1BA21C528()
{
  v1 = v0[11];
  v2 = v0[5];

  [v2 setImage_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BA21C5A8(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 88) = *(a1 + 16);
  sub_1BA4A6C68();
  *(v2 + 40) = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA21C650, v4, v3);
}

uint64_t sub_1BA21C650()
{
  v1 = *(v0 + 88);
  if (v1 < 0)
  {
    v6 = *(v0 + 32);
    v7 = [*(v0 + 16) traitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:80.0 scale:{80.0, v9}];
    v11 = v10;
    *(v0 + 64) = v10;
    if (v1)
    {
      [v10 setShape_];
    }

    sub_1B9F0ADF8(0, &qword_1EBBEE960);
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1BA21C814;
    v14 = *(v0 + 24);

    return MEMORY[0x1EEE0FA78](v14, v6, v11);
  }

  else
  {
    v2 = *(v0 + 24);

    v3 = *(v0 + 24);
    v15 = *(v0 + 8);
    v4 = v2;

    return v15(v3);
  }
}

uint64_t sub_1BA21C814(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BA21C95C, v5, v4);
}

uint64_t sub_1BA21C95C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

id sub_1BA21C9C8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel);
  }

  else
  {
    v41 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setAdjustsFontForContentSizeCategory_];

    v10 = sub_1BA4A6758();

    [v9 setText_];

    v11 = *MEMORY[0x1E69DDD80];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v44);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1B9F6C030(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v44);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v44);
        v16 = v39;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v37;
        *v37 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v41);
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];

      v0 = v40;
    }

    [v9 setFont_];

    v33 = [objc_opt_self() labelColor];
    [v9 setTextColor_];

    [v9 setTextAlignment_];
    [v9 setNumberOfLines_];
    v34 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v35 = v7;
  return v8;
}

id sub_1BA21CE90()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel);
  }

  else
  {
    v41 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setAdjustsFontForContentSizeCategory_];
    if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration + 48))
    {

      v10 = sub_1BA4A6758();
    }

    else
    {
      v10 = 0;
    }

    [v9 setText_];

    v11 = *MEMORY[0x1E69DDD08];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v44);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1B9F6C030(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v44);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v44);
        v16 = v39;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v37;
        *v37 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v41);
      v0 = v40;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    v33 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor_];

    [v9 setTextAlignment_];
    [v9 setNumberOfLines_];
    v34 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v35 = v7;
  return v8;
}

void sub_1BA21D368()
{
  v1 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = sub_1BA21C074();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:20.0];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView] centerXAnchor];
  v9 = [v0 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v2 + 48) = v12;
  v13 = [*&v0[v7] heightAnchor];
  v14 = [*&v0[v7] widthAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v16 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id sub_1BA21D5D4()
{
  v1 = sub_1BA21C9C8();
  [v1 hk:v0 alignHorizontalConstraintsWithView:0.0 margin:?];

  v2 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5470;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel) topAnchor];
  v6 = sub_1BA21C074();
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
  *(v3 + 32) = v8;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v9 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  v10 = *(v0 + v4);
  LODWORD(v11) = 1148846080;

  return [v10 setContentHuggingPriority:1 forAxis:v11];
}

id sub_1BA21D76C()
{
  v1 = sub_1BA21CE90();
  [v1 hk:v0 alignHorizontalConstraintsWithView:0.0 margin:?];

  v2 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B7510;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel;
  v5 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel] topAnchor];
  v6 = sub_1BA21C9C8();
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
  *(v3 + 32) = v8;
  v9 = [*&v0[v4] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintLessThanOrEqualToAnchor_];

  *(v3 + 40) = v11;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v12 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  v13 = *&v0[v4];
  LODWORD(v14) = 1148846080;

  return [v13 setContentHuggingPriority:1 forAxis:v14];
}

id sub_1BA21D9D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpecifierHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA21DAD8()
{
  result = qword_1EBBEE948;
  if (!qword_1EBBEE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE948);
  }

  return result;
}

unint64_t sub_1BA21DB30()
{
  result = qword_1EBBEE950;
  if (!qword_1EBBEE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE950);
  }

  return result;
}

unint64_t sub_1BA21DB88()
{
  result = qword_1EBBEE958;
  if (!qword_1EBBEE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE958);
  }

  return result;
}

uint64_t sub_1BA21DBDC()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BA21DC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA0C2E3C;

  return sub_1BA21C270(a1, v4, v5, v7, v6);
}

uint64_t sub_1BA21DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = result;
    sub_1B9F0A534(a3, v9);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    type metadata accessor for SnapshotDataSourceItemSwizzler();
    result = swift_dynamicCast();
    if (result)
    {
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
      swift_beginAccess();
      sub_1B9F0A534(v8 + v7, v9);
      (*(v5 + 16))(v9, ObjectType, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CategoryViewControllerDataSource.__allocating_init(displayCategory:healthStore:healthExperienceStore:)(void *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BA21FD1C(a1, a2, a3);

  return v6;
}

uint64_t CategoryViewControllerDataSource.init(displayCategory:healthStore:healthExperienceStore:)(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA21FD1C(a1, a2, a3);

  return v4;
}

uint64_t CategoryViewControllerDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CategoryViewControllerDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21E058(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = sub_1BA4A3EA8();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2201C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BA4A3488();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v38);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  v13 = sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v14 = v36;
    sub_1B9F1B560(0, &qword_1EDC5DCA0, &qword_1EDC6AD50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BA4B5480;
    v38[3] = v13;
    v38[4] = sub_1B9F3237C(&qword_1EDC6AD98, MEMORY[0x1E69A3DD0]);
    v38[0] = v14;
    v16 = type metadata accessor for SnapshotDataSourceItemSwizzler();
    v17 = swift_allocObject();
    type metadata accessor for DataTypeNoDataAvailableCell();
    v18 = v14;
    sub_1BA4A71C8();
    sub_1BA4A3478();
    (*(v10 + 16))(v17 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution, v12, v9);
    sub_1BA4A3428();
    swift_storeEnumTagMultiPayload();
    sub_1B9F0A534(v38, v17 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);
    v19 = [v18 uniqueIdentifier];
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;

    (*(v10 + 8))(v12, v9);
    *(v17 + 16) = v20;
    *(v17 + 24) = v22;
    __swift_destroy_boxed_opaque_existential_1(v38);
    *(v15 + 56) = v16;
    *(v15 + 64) = sub_1B9F3237C(&qword_1EDC63588, type metadata accessor for SnapshotDataSourceItemSwizzler);
    *(v15 + 32) = v17;

    return v15;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v38);
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315394;
      v36 = a3;
      swift_getMetatypeMetadata();
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v37);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      sub_1B9F0A534(v38, &v36);
      v31 = sub_1BA4A6808();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v34 = sub_1B9F0B82C(v31, v33, &v37);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    (*(v5 + 8))(v7, v35);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA21E5B0@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1B9F3237C(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1BA21E78C()
{

  v1 = qword_1EDC84B68;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21E844(void *a1, void *a2, void *a3)
{
  sub_1BA1863C8();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  sub_1BA21FB24(a1);
  v8 = MEMORY[0x1BFAED000]();

  v9 = [a1 categoryID];
  v10 = [a1 embeddedDisplayName];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;

  sub_1BA3F0744(v9, v11, v13, &v78);

  v75 = v78;
  v76 = v79;
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  v71 = v8;
  v77 = v8;
  v15 = a2;
  *(v14 + 32) = [a2 profileIdentifier];
  *(v14 + 40) = 0;
  v73 = a1;
  v16 = [a1 categoryID];
  v17 = a3[3];
  v74 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v18 = sub_1BA4A1B68();
  if (v16 == 12)
  {
    v38 = *MEMORY[0x1E696B898];
    v39 = objc_allocWithZone(MEMORY[0x1E696C178]);
    v66 = v77;
    v40 = v75;
    v41 = v76;
    sub_1BA048494(v75, v76);
    v67 = [v39 initWithFeatureIdentifier:v38 healthStore:a2];
    v78 = v67;
    sub_1B9F0ADF8(0, &qword_1EBBF15E0);
    v78 = sub_1BA4A39A8();
    sub_1BA0B9D44();
    sub_1B9F3237C(&qword_1EDC5F500, sub_1BA0B9D44);
    v42 = v68;
    sub_1BA4A4FE8();

    sub_1B9F3237C(&qword_1EBBED118, sub_1BA1863C8);
    v43 = v70;
    sub_1BA4A4F98();
    (*(v69 + 8))(v42, v43);
    v44 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource());
    *&v44[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
    v45 = &v44[qword_1EBBED128];
    *v45 = 0;
    *(v45 + 1) = 0;
    v46 = &v44[qword_1EBBED130];
    *v46 = 0;
    *(v46 + 1) = 0;
    v47 = &v44[qword_1EBBED138];
    v48 = v71;
    *v47 = v71;
    v47[8] = 1;
    *&v44[qword_1EBBED140] = v14;
    v80 = v48;
    v81 = 1;
    v78 = v40;
    v79 = v41;
    v49 = v66;

    v50 = v18;
    v34 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v50, v14, &v80, &v78);
    v51 = sub_1BA186BA8(0);
    v52 = qword_1EDC84AD8;
    swift_beginAccess();
    v53 = [*&v34[v52] fetchRequest];
    [v53 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    sub_1BA18682C();
    v54 = v40;
    v28 = v77;
    sub_1BA220238(v54, v41);

    v56 = v73;
    v55 = v74;
LABEL_12:
    v58 = v72;
    goto LABEL_13;
  }

  if (v16 == 10)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E69A3B30]);
    v20 = v75;
    v21 = v76;
    sub_1BA048494(v75, v76);
    v22 = [v19 initWithHealthStore_];
    v23 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource());
    v24 = &v23[qword_1EBBED908];
    *v24 = 0;
    *(v24 + 1) = 0;
    *&v23[qword_1EBBED900] = v22;
    v25 = &v23[qword_1EBBED910];
    v26 = v71;
    *v25 = v71;
    v25[8] = 1;
    *&v23[qword_1EBBED918] = v14;
    v27 = &v23[qword_1EBBED920];
    *v27 = 0;
    *(v27 + 1) = 0;
    v80 = v26;
    v81 = 1;
    v78 = v20;
    v79 = v21;
    v28 = v77;
    v29 = v77;

    v30 = v18;
    v31 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v30, v14, &v80, &v78);
    v32 = qword_1EBBED900;
    v33 = *&v31[qword_1EBBED900];
    v34 = v31;
    v35 = [v33 getCurrentPregnancyModel];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 state];
    }

    else
    {
      v37 = 0;
    }

    v59 = *&v34[qword_1EBBED920];
    if (v59)
    {

      v60 = v59(v37, v36 == 0);
      sub_1B9F0E310(v59);
    }

    else
    {
      v60 = sub_1BA1BACA0(v37, v36 == 0);
    }

    v56 = v73;
    v61 = qword_1EDC84AD8;
    swift_beginAccess();
    v62 = [*&v34[v61] fetchRequest];
    [v62 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    [*&v31[v32] registerObserver:v34 isUserInitiated:1];
    sub_1BA220238(v75, v76);
    v55 = v74;
    goto LABEL_12;
  }

  v80 = v71;
  v81 = 1;
  v78 = v75;
  v79 = v76;
  v57 = objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource());
  v34 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v18, v14, &v80, &v78);
  v56 = v73;
  v55 = v74;
  v58 = v72;
  v28 = v77;
LABEL_13:
  *(v58 + qword_1EDC84A98) = sub_1B9FDCB68(&unk_1F37FBD90);
  *(v58 + qword_1EDC84AA0) = 0x7FFFFFFFFFFFFFFFLL;
  v63 = sub_1BA0488BC(v34, 0x7FFFFFFFFFFFFFFFLL);

  __swift_destroy_boxed_opaque_existential_1(v55);
  return v63;
}

uint64_t sub_1BA21F020()
{

  v1 = qword_1EDC84B68;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21F0EC(uint64_t a1, void *a2, void *a3)
{
  v43 = a2;
  v44 = a3;
  v46 = v3;
  v45 = *v3;
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  sub_1BA4A7258();
  v42 = MEMORY[0x1BFAED000]();

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1B9F1BE20();
  *(v8 + 64) = v10;
  *(v8 + 32) = 0xD000000000000013;
  *(v8 + 40) = 0x80000001BA4EF0F0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69A3BB8], v4);
  v11 = sub_1BA4A1C58();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v13;
  v14 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  *(v15 + 32) = [v43 profileIdentifier];
  v16 = MEMORY[0x1BFAED1E0](v15);

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  v18 = v42;
  *(v17 + 48) = v42;
  v19 = v14;
  v20 = v16;
  v21 = v18;
  v22 = sub_1BA4A6AE8();

  v23 = [objc_opt_self() andPredicateWithSubpredicates_];

  v24 = MEMORY[0x1BFAED110]();
  [v24 setPredicate_];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5470;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1BA4A6758();
  v28 = [v26 initWithKey:v27 ascending:1 selector:sel_localizedStandardCompare_];

  *(v25 + 32) = v28;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = sub_1BA4A6AE8();

  [v24 setSortDescriptors_];

  v30 = v44;
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v31 = v24;
  v32 = sub_1BA4A1B68();
  v33 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  v37 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v45;
  v39 = sub_1B9F17A68(v37, sub_1BA2201B8, v38, 0);

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v39;
}

uint64_t sub_1BA21F5FC(void *a1, void *a2, void *a3)
{
  sub_1BA047740(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  sub_1BA4A27B8();
  sub_1BA21FB24(a1);
  v9 = MEMORY[0x1BFAED000]();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v40 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  *(v10 + 32) = [a2 profileIdentifier];
  *(v10 + 40) = 0;
  v39 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController());
  sub_1BA047740(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69A3C00], v11);
  v15 = sub_1BA4A0FA8();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v9;
  v17 = MEMORY[0x1BFAED020](v14, 0, v8, v10);

  sub_1B9F1C1B0(v8);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B7510;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v19 = v16;
  v20 = v17;
  v21 = sub_1BA4A6AE8();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = v22;
  v25 = sub_1BA4A6758();
  v26 = [v23 initWithKey:v25 ascending:0];

  v27 = MEMORY[0x1BFAED110]();
  [v27 setPredicate_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5470;
  *(v28 + 32) = v26;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v29 = v26;
  v30 = sub_1BA4A6AE8();

  [v27 setSortDescriptors_];

  [v27 setFetchLimit_];
  v31 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v32 = v40;
  v33 = [v31 initWithFetchRequest:v27 managedObjectContext:v40 sectionNameKeyPath:0 cacheName:0];
  v34 = &v39[qword_1EDC61AF0];
  *v34 = sub_1BA236D80;
  v34[1] = 0;
  v35 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v33);

  v36 = sub_1BA0488BC(v35, 3);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v36;
}

unint64_t sub_1BA21FB24(void *a1)
{
  v1 = [a1 categoryID];
  v2 = sub_1BA4A7258();
  v3 = v2;
  if (v1 == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 identifier];
        v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v12 = v11;

        if (v10 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v12 == v13)
        {
        }

        else
        {
          v15 = sub_1BA4A8338();

          if (v15)
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }
        }

        ++v5;
        if (v8 == i)
        {
          v16 = v18;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

    return v16;
  }

  return v3;
}

uint64_t sub_1BA21FD1C(void *a1, void *a2, uint64_t a3)
{
  sub_1B9F0A534(a3, v38);
  v6 = a2;
  v7 = sub_1BA4A3BC8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  sub_1BA4A27B8();
  sub_1BA4A7258();
  v9 = MEMORY[0x1BFAED000]();

  *(inited + 32) = v9;
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v10 = sub_1BA28ED0C(v6, v38, v7, inited);

  v11 = sub_1B9F1E00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B9F1E00C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v11 + 16) = v13 + 1;
  v14 = v11 + 16 * v13;
  *(v14 + 32) = v10;
  *(v14 + 40) = &protocol witness table for CompoundSectionedDataSource;
  v15 = [v6 profileIdentifier];
  v16 = [v15 type];

  if (v16 == 1)
  {
    sub_1B9F0A534(a3, v38);
    type metadata accessor for CategoryNoDataDataSource(0);
    swift_allocObject();
    v17 = v6;
    v18 = a1;
    v19 = sub_1BA21F0EC(v18, v17, v38);

    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      v11 = sub_1B9F1E00C(v20 > 1, v21 + 1, 1, v11);
    }

    *(v11 + 16) = v21 + 1;
    v22 = v11 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = &protocol witness table for MutableArrayDataSource;
  }

  sub_1B9F0A534(a3, v38);
  type metadata accessor for CategoryPromotionsDataSource(0);
  swift_allocObject();
  v23 = v6;
  v24 = a1;
  v25 = sub_1BA21F5FC(v24, v23, v38);

  v27 = *(v11 + 16);
  v26 = *(v11 + 24);
  if (v27 >= v26 >> 1)
  {
    v11 = sub_1B9F1E00C(v26 > 1, v27 + 1, 1, v11);
  }

  *(v11 + 16) = v27 + 1;
  v28 = v11 + 16 * v27;
  *(v28 + 32) = v25;
  *(v28 + 40) = &protocol witness table for DataSourceWithSectionItemLimit<A>;
  sub_1B9F0A534(a3, v38);
  type metadata accessor for CategoryArticleDataSource(0);
  swift_allocObject();
  v29 = v23;
  v30 = v24;
  v31 = sub_1BA21E844(v30, v29, v38);
  v33 = *(v11 + 16);
  v32 = *(v11 + 24);
  if (v33 >= v32 >> 1)
  {
    v37 = v31;
    v11 = sub_1B9F1E00C(v32 > 1, v33 + 1, 1, v11);
    v31 = v37;
  }

  *(v11 + 16) = v33 + 1;
  v34 = v11 + 16 * v33;
  *(v34 + 32) = v31;
  *(v34 + 40) = &protocol witness table for DataSourceWithSectionItemLimit<A>;
  v35 = CompoundSectionedDataSource.init(_:)(v11);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v35;
}

void sub_1BA2201C0()
{
  if (!qword_1EDC5E4F8)
  {
    type metadata accessor for DataTypeNoDataAvailableCell();
    sub_1B9F0D950(255, &qword_1EDC6AD50);
    v0 = sub_1BA4A71D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E4F8);
    }
  }
}

uint64_t sub_1BA220238(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t MicaAnimationView.Animation.init(name:bundle:supportsDarkMode:supportsRightToLeft:supportsNumberingSystems:supportsPad:maxStateWithDurations:maxLoopCount:initialDelay:restartLoopDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13)
{
  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = a5;
  *(a9 + 26) = a6;
  *(a9 + 27) = a7;
  v15 = *(a8 + 16);
  *(a9 + 32) = *a8;
  *(a9 + 48) = v15;
  *(a9 + 64) = v13;
  *(a9 + 72) = v14;
  *(a9 + 80) = a11;
  *(a9 + 88) = a10;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t ScaleMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t MicaAnimationView.init(animation:inset:scaleMode:)(__int128 *a1, char a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 72);
  v50 = *(a1 + 56);
  v51 = v12;
  v52 = *(a1 + 88);
  v53 = *(a1 + 104);
  v13 = *(a1 + 40);
  v48 = *(a1 + 24);
  v49 = v13;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] = 0;
  v14 = *a3;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_transitionSpeed] = 1065353216;
  v15 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
  v45 = *a1;
  v46[0] = v11;
  *&v46[5] = *(a1 + 56);
  *&v46[7] = *(a1 + 72);
  *&v46[9] = *(a1 + 88);
  v47 = *(a1 + 104);
  *&v46[1] = *(a1 + 24);
  *&v46[3] = *(a1 + 40);
  sub_1BA221D18();
  v16 = sub_1BA4A6758();

  v17 = sub_1BA4A6758();
  v18 = [v11 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_1BA221FE4();
    sub_1BA4A1588();

    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = sub_1BA220868(v10, v19, v20, 0);
    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_package] = v21;
    v22 = 2.0;
    if (a2)
    {
      v22 = 0.0;
    }

    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_insetSize] = v22;
    v23 = v21;
    v24 = sub_1BA220A30(v23);
    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer] = v24;
    v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = 0;
    v25 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation];
    *v25 = v54;
    v26 = v51;
    *(v25 + 56) = v50;
    *(v25 + 72) = v26;
    *(v25 + 88) = v52;
    v27 = v49;
    *(v25 + 24) = v48;
    *(v25 + 2) = v11;
    v25[104] = v53;
    *(v25 + 40) = v27;
    v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] = v14;
    [v24 bounds];
    v28 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
    *v28 = v29;
    v28[1] = v30;
    v31 = type metadata accessor for MicaAnimationView();
    v44.receiver = v4;
    v44.super_class = v31;
    v32 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v32 setUserInteractionEnabled_];
    [v32 setBackgroundColor_];
    v33 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer;
    v34 = *&v32[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];
    sub_1BA220EC8(&v45);
    v43[0] = v45;
    v43[1] = *v46;
    v43[2] = *&v46[2];
    [v34 setAffineTransform_];

    v35 = [v32 layer];
    v36 = [objc_opt_self() mainScreen];
    [v36 scale];
    v38 = v37;

    [v35 setRasterizationScale_];
    v39 = [v32 layer];
    [v39 setShouldRasterize_];

    v40 = [v32 layer];
    v41 = *&v32[v33];
    [v40 addSublayer_];

    return v32;
  }

  else
  {
    __break(1u);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000028, 0x80000001BA4F5500);
    *&v43[0] = v10;
    sub_1B9FED358();
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA220868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A1548();
  v7 = sub_1BA4A6758();

  if (a4)
  {
    v8 = sub_1BA4A6618();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BA4A15D8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BA4A1488();

    swift_willThrow();
    v15 = sub_1BA4A15D8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_1BA220A30(void *a1)
{
  result = [a1 rootLayer];
  if (result)
  {
    v3 = result;
    [result setGeometryFlipped_];
    [v3 setContentsGravity_];
    [v3 setMasksToBounds_];
    [v3 setFillMode_];
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    [v3 setContentsScale_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MicaAnimationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MicaAnimationView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_transitionSpeed) = 1065353216;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA220D4C()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MicaAnimationView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize + 8];
  [v0 bounds];
  v6 = v2 == v5 && v3 == v4;
  if (v6 || v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] == 2)
  {
    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];
    [v0 bounds];
    UIRectGetCenter();
    return [v7 setPosition_];
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];
    sub_1BA220EC8(v14);
    v12[0] = v14[0];
    v12[1] = v14[1];
    v12[2] = v14[2];
    [v9 setAffineTransform_];
    [v0 bounds];
    UIRectGetCenter();
    [v9 setPosition_];
    [v0 bounds];
    *v1 = v10;
    *(v1 + 1) = v11;
    return [v0 invalidateIntrinsicContentSize];
  }
}

CGFloat sub_1BA220EC8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode) > 1u)
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer) contentsScale];
    if (v5 < 3.0)
    {
      v5 = v5 * 1.5;
    }

    v4 = 1.0 / v5;
  }

  else
  {
    v4 = sub_1BA220FA0();
  }

  [v3 contentsTransform];
  CGAffineTransformScale(&v9, &v10, v4, v4);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a1 = *&v9.a;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

double sub_1BA220FA0()
{
  [v0 bounds];
  result = 1.0;
  if (v1 != 0.0 || v2 != 0.0)
  {
    if (v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode])
    {
      if (v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] == 1)
      {
        result = v1 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
        if (result <= v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8])
        {
          return v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8];
        }
      }
    }

    else
    {
      result = v1 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
      if (v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8] < result)
      {
        return v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8];
      }
    }
  }

  return result;
}

id sub_1BA221040()
{
  v1 = [v0 layer];
  [v1 setShouldRasterize_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];

  return sub_1BA2210A8(v2);
}

id sub_1BA2210A8(uint64_t a1)
{
  v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = 0;
  v3 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController;
  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] = v3;

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  v7 = *&v1[v4];
  if (v7)
  {
    LODWORD(v6) = 1.0;
    [v7 setInitialStatesOfLayer:a1 transitionSpeed:v6];
  }

  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 88];

  return [v1 performSelector:sel_stepAnimationForLayer_ withObject:a1 afterDelay:v8];
}

void sub_1BA22117C()
{
  v1 = [v0 layer];
  [v1 setShouldRasterize_];

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] cancelTimers];
  v3 = *&v0[v2];
  if (v3)
  {
    if ([v3 removeAllStateChanges])
    {
      sub_1BA4A7BF8();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  sub_1B9F23224(&v7);
  v4 = *&v0[v2];
  *&v0[v2] = 0;

  *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
}

void sub_1BA221280(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](*(v5 - 8));
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state;
  v13 = v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state];
  v14 = &v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation];
  v15 = v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 72];
  v16 = 1;
  if (v15 <= 1)
  {
    if (v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 72])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else if (v15 == 2)
  {
    v17 = 3;
  }

  else
  {
    if (v15 != 3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_24;
    }

    v17 = 4;
  }

  v18 = v13 >= v17;
  v16 = v13 >= v17;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 8u >> (v13 & 0xF);
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 4u >> (v13 & 0xF);
  }

  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2u >> (v13 & 0xF);
  }

  if (v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1u >> (v13 & 0xF);
  }

  if (v18)
  {
    v23 = 0;
  }

  else
  {
    v23 = v13 + 1;
  }

LABEL_24:
  v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = v23;
  v24 = *(v14 + 72);
  v76 = ObjectType;
  v77 = v12;
  v78 = v9;
  if (v24 <= 1)
  {
    if (v24)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((v22 & 1) == 0)
    {
LABEL_49:
      if (v23 != 1)
      {
        v33 = v14[4];
        v32 = v14[5];
LABEL_73:
        v30 = 0;
        if (!v23)
        {
          goto LABEL_83;
        }

        v33 = v32;
        goto LABEL_81;
      }

      v29 = 0;
      v23 = 1;
      goto LABEL_58;
    }
  }

  else if (v24 == 2)
  {
    if ((v20 & 1) == 0)
    {
LABEL_44:
      if (v23 != 3)
      {
        v33 = v14[4];
        v32 = v14[5];
        v31 = v14[6];
        v34 = v14[7];
        goto LABEL_68;
      }

      v29 = 2;
      v23 = 3;
      goto LABEL_58;
    }
  }

  else if (v24 == 3)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (!v16)
  {
    goto LABEL_46;
  }

  v25 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount];
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = v27;
  v28 = *(v14 + 72);
  v23 = v2[v12];
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      if (v28 == 3)
      {
LABEL_42:
        if (v23 != 4)
        {
          v33 = v14[4];
          v32 = v14[5];
          v31 = v14[6];
          v34 = v14[7];
          goto LABEL_62;
        }

        v29 = 3;
        v23 = 4;
        goto LABEL_58;
      }

LABEL_46:
      if (v23)
      {
        v30 = 0;
        v31 = 0.0;
LABEL_82:
        v80[0] = 0x206574617453;
        v80[1] = 0xE600000000000000;
        v79 = v23;
        v35 = sub_1BA4A82D8();
        MEMORY[0x1BFAF1350](v35);

        v33 = v31;
        goto LABEL_83;
      }

      v23 = 0;
      v29 = 4;
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if (!*(v14 + 72))
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v23 != 2)
  {
    v33 = v14[4];
    v32 = v14[5];
    v31 = v14[6];
    goto LABEL_75;
  }

  v29 = 1;
  v23 = 2;
LABEL_58:
  if (*&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] >= *(v14 + 10))
  {
    v33 = v14[12];
    v30 = *(v14 + 104);
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
    v23 = v2[v12];
    if (!v23)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v33 = v14[4];
  v32 = v14[5];
  v31 = v14[6];
  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_73;
    }

LABEL_75:
    v30 = 0;
    if (v23)
    {
      if (v23 != 1)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    }

    goto LABEL_83;
  }

  v34 = v14[7];
  if (v29 != 2)
  {
    if (v29 == 3)
    {
LABEL_62:
      if (v23 > 1u)
      {
        if (v23 != 2)
        {
          if (v23 != 3)
          {
            v30 = 0;
            v31 = v14[8];
            v23 = 4;
            goto LABEL_82;
          }

LABEL_71:
          v30 = 0;
          v31 = v34;
          goto LABEL_82;
        }

LABEL_77:
        v30 = 0;
        goto LABEL_82;
      }

      v30 = 0;
      if (v23)
      {
        goto LABEL_79;
      }

      goto LABEL_83;
    }

    v33 = 0.0;
    v30 = 0;
    if (!v23)
    {
      goto LABEL_83;
    }

LABEL_81:
    v31 = v33;
    goto LABEL_82;
  }

LABEL_68:
  v30 = 0;
  if (v23)
  {
    if (v23 != 1)
    {
      if (v23 != 2)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

LABEL_79:
    v31 = v32;
    goto LABEL_82;
  }

LABEL_83:
  v36 = sub_1BA4A6758();

  v37 = [a1 stateWithName_];

  v39 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController];
  if (v39)
  {
    LODWORD(v38) = 1.0;
    [v39 setState:v37 ofLayer:a1 transitionSpeed:v38];
  }

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  if (v30)
  {
    v40 = v37;
    v41 = v78;
    v42 = v7;
    sub_1BA4A3DD8();
    v43 = v2;
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v75 = v42;
      v47 = v46;
      v48 = swift_slowAlloc();
      v80[0] = v48;
      *v47 = 136315394;
      v49 = sub_1BA4A85D8();
      v51 = v5;
      v52 = sub_1B9F0B82C(v49, v50, v80);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      LOBYTE(v79) = v2[v77];
      v53 = sub_1BA4A6808();
      v55 = sub_1B9F0B82C(v53, v54, v80);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1B9F07000, v44, v45, "[%s] Nil duration, ending animation for state: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      MEMORY[0x1BFAF43A0](v47, -1, -1);

      (*(v41 + 8))(v75, v51);
    }

    else
    {

      (*(v41 + 8))(v42, v5);
    }
  }

  else
  {
    v75 = a1;
    v56 = v33;
    sub_1BA4A3DD8();
    v57 = v2;
    v58 = sub_1BA4A3E88();
    v59 = v11;
    v60 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v58, v60))
    {
      v61 = swift_slowAlloc();
      v74 = v5;
      v62 = v61;
      v63 = swift_slowAlloc();
      v80[0] = v63;
      *v62 = 136315650;
      v64 = sub_1BA4A85D8();
      v76 = v59;
      v66 = sub_1B9F0B82C(v64, v65, v80);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = v78;
      LOBYTE(v79) = v2[v77];
      v68 = sub_1BA4A6808();
      v70 = sub_1B9F0B82C(v68, v69, v80);

      *(v62 + 14) = v70;
      *(v62 + 22) = 2080;
      v71 = sub_1BA4A6CC8();
      v73 = sub_1B9F0B82C(v71, v72, v80);

      *(v62 + 24) = v73;
      _os_log_impl(&dword_1B9F07000, v58, v60, "[%s] Scheduling animation for state: %s duration: %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v63, -1, -1);
      MEMORY[0x1BFAF43A0](v62, -1, -1);

      (*(v67 + 8))(v76, v74);
    }

    else
    {

      (*(v78 + 8))(v59, v5);
    }

    [v57 performSelector:sel_stepAnimationForLayer_ withObject:v75 afterDelay:v56];
  }
}

id MicaAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MicaAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MicaAnimationView.Animation.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 MicaAnimationView.Animation.maxStateWithDurations.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

id sub_1BA221D18()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  v6 = objc_opt_self();
  result = [v6 _currentTraitCollection];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = result;
  v24 = v3;
  v25 = v4;
  v9 = [result userInterfaceStyle];

  result = [objc_opt_self() currentLocale];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = result;
  v11 = [result numberingSystem];

  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  v15 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  result = [v6 _currentTraitCollection];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = v9 == 2;
  v18 = [result userInterfaceIdiom];

  if ((v17 & v2) != 1)
  {
    if (v12 == 1650553441 && v14 == 0xE400000000000000 || ((v21 = sub_1BA4A8338(), v12 == 1635149156) ? (v22 = v14 == 0xE400000000000000) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), (v21 & 1) != 0 || (v23 & 1) != 0))
    {
      if (!v25)
      {
LABEL_20:

        if (((v15 == 1) & v24) != 1)
        {
          goto LABEL_22;
        }

        v19 = 1819570733;
        v20 = 0xE400000000000000;
        goto LABEL_6;
      }
    }

    else if ((sub_1BA4A8338() & v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    MEMORY[0x1BFAF1350](v12, v14);

    MEMORY[0x1BFAF1350](45, 0xE100000000000000);

    goto LABEL_22;
  }

  v19 = 0x6B7261642DLL;
  v20 = 0xE500000000000000;
LABEL_6:
  MEMORY[0x1BFAF1350](v19, v20);
LABEL_22:
  if (((v18 == 1) & v5) == 1)
  {
    MEMORY[0x1BFAF1350](1684107309, 0xE400000000000000);
  }

  return v1;
}

unint64_t sub_1BA221FE4()
{
  result = qword_1EBBEE988;
  if (!qword_1EBBEE988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE988);
  }

  return result;
}

HealthExperienceUI::MicaAnimationView::AnimationState_optional __swiftcall MicaAnimationView.AnimationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BA222074()
{
  result = qword_1EBBEE9C8;
  if (!qword_1EBBEE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9C8);
  }

  return result;
}

unint64_t sub_1BA2220CC()
{
  result = qword_1EBBEE9D0;
  if (!qword_1EBBEE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9D0);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BA222208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1BA222250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA222384(uint64_t a1)
{
  if (*(a1 + 40) <= 3u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1BA22239C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

void CellSelectionHandling.deselectOnRegularHorizontalSizeClass(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

uint64_t CellSelectionHandling<>.didSelectCell(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v10, a3, a5);
  if (v10[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      if (*(&v12 + 1))
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 16))(a1, a2, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v10, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  return sub_1B9F43A50(&v11, qword_1EDC67B40, &qword_1EDC6CCF0);
}

uint64_t getEnumTagSinglePayload for CellDeselectionBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CellDeselectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1BA22290C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrganDonationRegisteredViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OrganDonationRegisteredDataSource.HeaderItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OrganDonationRegisteredDataSource.HeaderItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrganDonationRegisteredDataSource.HeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA222A14(uint64_t a1)
{
  v2 = sub_1BA224C98();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA222A80(uint64_t a1)
{
  v2 = sub_1BA224C44();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA222ACC()
{
  sub_1B9F12538();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ContentConfigurationItem();
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A4428();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v0;
  swift_unknownObjectWeakInit();
  sub_1BA4A43A8();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();
  v12 = [objc_opt_self() systemBlueColor];
  v58 = v11;
  v13 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v13(&v61, 0);
  sub_1B9F1C048(0, &qword_1EDC5DC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F1B3E0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 56) = &type metadata for OrganDonationRegisteredDataSource.HeaderItem;
  *(v15 + 64) = sub_1BA223E20();
  v16 = swift_allocObject();
  *(v15 + 32) = v16;
  *&v61 = 0x7449726564616548;
  *(&v61 + 1) = 0xEB000000005F6D65;
  sub_1BA4A1788();
  sub_1B9F2AA5C(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v17 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v17);

  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = *(&v61 + 1);
  v16[2] = v61;
  v16[3] = v19;
  *&v61 = type metadata accessor for OrganDonationRegisteredHeaderCell();
  sub_1BA2240DC(0, &qword_1EBBE9DB8, type metadata accessor for OrganDonationRegisteredHeaderCell);
  v16[4] = sub_1BA4A6808();
  v16[5] = v20;
  *(v15 + 96) = &type metadata for OrganDonationRegisteredDataSource.BodyItem;
  *(v15 + 104) = sub_1BA223ED0();
  v21 = swift_allocObject();
  *(v15 + 72) = v21;
  *&v61 = 0x6D65744979646F42;
  *(&v61 + 1) = 0xE90000000000005FLL;
  sub_1BA4A1788();
  v22 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v22);

  v18(v8, v5);
  v23 = *(&v61 + 1);
  v21[2] = v61;
  v21[3] = v23;
  *&v61 = type metadata accessor for OrganDonationRegisteredBodyCell();
  sub_1BA2240DC(0, &qword_1EBBE9DB0, type metadata accessor for OrganDonationRegisteredBodyCell);
  v21[4] = sub_1BA4A6808();
  v21[5] = v24;
  sub_1BA4A1788();
  v25 = sub_1BA4A1748();
  v27 = v26;
  v18(v8, v5);
  v28 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v28);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v15;
  v29 = Array<A>.identifierToIndexDict()(v15);

  *(inited + 56) = v29;
  *(inited + 64) = v25;
  *(inited + 72) = v27;
  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(&v61, "MutableArray<");
  HIWORD(v61) = -4864;
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  v18(v8, v5);
  MEMORY[0x1BFAF1350](v30, v32);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v33 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v61, *(&v61 + 1));

  sub_1BA4A1788();
  v34 = sub_1BA4A1748();
  v36 = v35;
  v18(v8, v5);
  v37 = MEMORY[0x1E69DC110];
  v38 = v60;
  *(v4 + 12) = v60;
  *(v4 + 13) = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 9);
  (*(v59 + 16))(boxed_opaque_existential_1, v58, v38);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = v54;
  v42 = *(v54 + 40);
  v43 = sub_1BA4A4168();
  (*(*(v43 - 8) + 56))(&v4[v42], 1, 1, v43);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;

  sub_1BA119108(&v61, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v62 + 1) = &type metadata for BasicCellSelectionHandler;
  v63 = &off_1F381BCC8;
  *&v61 = sub_1BA224B6C;
  *(&v61 + 1) = v40;
  LOBYTE(v62) = 2;
  sub_1B9F2F698(&v61, (v4 + 16));
  *&v4[v41[12]] = 0;
  *&v4[v41[13]] = 0;
  *v4 = v34;
  *(v4 + 1) = v36;
  v4[112] = 0;
  *(v4 + 15) = MEMORY[0x1E69E7CC0];
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v44 = &v4[v41[11]];
  *v44 = 0;
  *(v44 + 1) = 0;
  sub_1BA119108(&v61, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

  v45 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v47 = v55;
  v46 = v56;
  v48 = v57;
  (*(v56 + 16))(v55, &v33[v45], v57);
  v49 = sub_1BA4A4578();
  result = (*(v46 + 8))(v47, v48);
  if (v49[2])
  {
    v51 = v49[4];
    v52 = v49[5];

    sub_1BA224128(v4, v51, v52, v33);

    (*(v59 + 8))(v58, v60);
    sub_1BA224B74(v4);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA2233C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = swift_unknownObjectWeakAssign();
    sub_1BA2238D0(v1);
  }

  return result;
}

void sub_1BA223460()
{
  v0 = sub_1BA4A6478();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A64C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v8 = sub_1BA4A7308();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BA224C3C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_30_0;
  v10 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F2AA5C(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F2AA5C(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  v11 = [objc_opt_self() defaultCenter];
  v12 = sub_1BA4A73D8();
  [v11 removeObserver:v13[1] name:v12 object:0];
}

uint64_t sub_1BA223790()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA2238D0();
  }

  return result;
}

void sub_1BA2238D0()
{
  v1 = v0;
  sub_1BA4A2998();
  v2 = sub_1BA4A2988();
  v3 = sub_1BA4A2968();

  LOBYTE(v2) = sub_1BA4A2C08();
  sub_1BA1698F8(v3);
  if (v2)
  {
    v4 = [objc_opt_self() defaultCenter];
    v14 = sub_1BA4A73D8();
    [v4 addObserver:v1 selector:sel_listenForMedicalIDUpdatesWithNotification_ name:v14 object:0];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69A4450]) init];
    v6 = sub_1BA4A2988();
    v7 = sub_1BA4A2968();

    if (v7 >= 3)
    {
      [v5 setMedicalIDData_];
    }

    sub_1BA1698F8(v7);
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BA224C34;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA40695C;
    aBlock[3] = &block_descriptor_59;
    v9 = _Block_copy(aBlock);

    [v5 setRegistrationCompletionHandler_];
    _Block_release(v9);
    v10 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [Strong navigationController];

      if (v13)
      {
        [v13 presentViewController:v10 animated:1 completion:0];
      }
    }
  }
}

void sub_1BA223B48()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_6:

      return;
    }

    v1 = Strong;
    type metadata accessor for OrganDonationRegisteredViewController();
    if (swift_dynamicCastClass())
    {
      v2 = swift_unknownObjectWeakLoadStrong();

      if (v2)
      {
        [v2 dismissViewControllerAnimated:1 completion:0];
        sub_1BA22C664();

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_6;
    }
  }
}

uint64_t OrganDonationRegisteredDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredDataSource_cachedPresentingViewController);
  return v0;
}

uint64_t OrganDonationRegisteredDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredDataSource_cachedPresentingViewController);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA223E20()
{
  result = qword_1EBBEE9D8;
  if (!qword_1EBBEE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9D8);
  }

  return result;
}

unint64_t sub_1BA223E78()
{
  result = qword_1EBBEE9E0;
  if (!qword_1EBBEE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9E0);
  }

  return result;
}

unint64_t sub_1BA223ED0()
{
  result = qword_1EBBEE9E8;
  if (!qword_1EBBEE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9E8);
  }

  return result;
}

unint64_t sub_1BA223F28()
{
  result = qword_1EBBEE9F0;
  if (!qword_1EBBEE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9F0);
  }

  return result;
}

uint64_t type metadata accessor for OrganDonationRegisteredDataSource()
{
  result = qword_1EBBEEA00;
  if (!qword_1EBBEEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2240DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA224128(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v81 = a1;
  v82 = a2;
  v75 = *a4;
  v6 = sub_1BA4A1798();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v80 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v77 = type metadata accessor for ContentConfigurationItem();
  v94[3] = v77;
  v76 = sub_1B9F2AA5C(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  v94[4] = v76;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  v20 = v81;
  v81 = boxed_opaque_existential_1;
  sub_1BA224BD0(v20, boxed_opaque_existential_1);
  if (a3)
  {
    v78 = v9;
    v21 = a3;
  }

  else
  {
    v82 = v8;
    v22 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    (*(v13 + 16))(v18, &a4[v22], v12);
    v23 = sub_1BA4A4578();
    (*(v13 + 8))(v18, v12);
    v24 = *(v23 + 16);
    if (!v24)
    {

      sub_1B9F1B3E0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v94, v67 + 32);
      v68 = v82;
      sub_1BA4A1788();
      v69 = sub_1BA4A1748();
      v71 = v70;
      (*(v78 + 8))(v68, v6);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v73 = Array<A>.identifierToIndexDict()(v72);

      v83 = 0uLL;
      v84 = v67;
      v85 = v73;
      v86 = v69;
      v87 = v71;
      sub_1BA0E8FD4(&v83, 0);

      return __swift_destroy_boxed_opaque_existential_1(v94);
    }

    v78 = v9;
    v25 = (v23 + 16 + 16 * v24);
    v21 = v25[1];
    v82 = *v25;
  }

  v26 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v27 = a4;
  swift_beginAccess();
  (*(v13 + 16))(v15, &a4[v26], v12);
  v28 = v82;
  *&v83 = v82;
  *(&v83 + 1) = v21;

  sub_1BA4A44E8();
  v30 = v29;
  (*(v13 + 8))(v15, v12);
  if (v30)
  {
    v31 = v79;
    sub_1BA4A3D88();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();

    v34 = v21;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v83 = v36;
      *v35 = 136315650;
      nullsub_1(v75, v37);
      v38 = sub_1BA4A85D8();
      v40 = sub_1B9F0B82C(v38, v39, &v83);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAC50, &v83);
      *(v35 + 22) = 2080;
      v41 = sub_1B9F0B82C(v82, v34, &v83);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] %s Failed to append item to given section with id: %s, because it doesn't exist.", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {
    }

    (*(v80 + 8))(v31, v78);
  }

  else
  {
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BA4B5480;
    v43 = v81[1];
    *(v42 + 32) = *v81;
    *(v42 + 40) = v43;
    *&v90 = v28;
    *(&v90 + 1) = v21;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    v44 = sub_1BA0E7AC0();
    v46 = sub_1BA0F0994(v93, v28, v21);
    if (*(v45 + 16))
    {
      v47 = v45;
      v82 = v27;
      sub_1B9F0A534(v94, &v83);
      v48 = *(v47 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 16) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_1B9F281E8(0, v48[2] + 1, 1, v48);
        *(v47 + 16) = v48;
      }

      v51 = v48[2];
      v50 = v48[3];
      if (v51 >= v50 >> 1)
      {
        *(v47 + 16) = sub_1B9F281E8((v50 > 1), v51 + 1, 1, v48);
      }

      v52 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v85);
      v53 = MEMORY[0x1EEE9AC00](v52);
      v55 = &v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55, v53);
      v91 = v77;
      v92 = v76;
      v57 = __swift_allocate_boxed_opaque_existential_1(&v90);
      sub_1BA058CEC(v55, v57);
      v58 = *(v47 + 16);
      *(v58 + 16) = v51 + 1;
      sub_1B9F1134C(&v90, v58 + 40 * v51 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      *(v47 + 24) = Array<A>.identifierToIndexDict()(*(v47 + 16));

      (v46)(v93, 0);

      (v44)(v88, 0);
      v27 = v82;
    }

    else
    {
      (v46)(v93, 0);

      (v44)(v88, 0);
    }

    sub_1B9F0A534(v94, &v90);
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v88, &v83);
      __swift_project_boxed_opaque_existential_1(&v83, v85);
      v59 = sub_1BA4A2D58();
      v61 = v60;
      __swift_project_boxed_opaque_existential_1(&v83, v85);
      v62 = sub_1BA4A2E58();
      v64 = v63;
      v65 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      swift_beginAccess();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v88[0] = *(v27 + v65);
      *(v27 + v65) = 0x8000000000000000;
      sub_1B9F248E4(v62, v64, v59, v61, v66);

      *(v27 + v65) = *&v88[0];
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v83);
    }

    else
    {
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      sub_1BA119108(v88, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    }

    sub_1BA0EF3D0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v94);
}

uint64_t sub_1BA224B74(uint64_t a1)
{
  v2 = type metadata accessor for ContentConfigurationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA224BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentConfigurationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA224C44()
{
  result = qword_1EBBEEA10;
  if (!qword_1EBBEEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA10);
  }

  return result;
}

unint64_t sub_1BA224C98()
{
  result = qword_1EBBEEA18;
  if (!qword_1EBBEEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA18);
  }

  return result;
}

uint64_t CoreDataFeedItemSearchResultProvider.__allocating_init(healthExperienceStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B9F25598(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BA224D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA4A27B8();
  v6 = sub_1BA225028(a1, a2);
  v7 = sub_1BA4A26C8();

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v8 = sub_1BA4A1B78();
  v9 = sub_1BA4A7598();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1BA4A7CC8();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1BA4A7F08();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFAF2860](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 objectID];

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
    }

    while (v10 != v12);

    return v16;
  }

  return result;
}

uint64_t CoreDataFeedItemSearchResultProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA224FB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = sub_1BA224D90(a2, a3);
  v4 = *(v3 + 8);

  return v4();
}

id sub_1BA225028(uint64_t a1, uint64_t a2)
{
  sub_1B9F1BFFC();
  sub_1B9F2EAC0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B9F1BE20();
  strcpy((v4 + 32), "localizedTitle");
  *(v4 + 47) = -18;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v7 = sub_1BA4A6EE8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x80000001BA4F58D0;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v9 = sub_1BA4A6EE8();
  sub_1B9F109F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = v7;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = objc_opt_self();
  v15 = [v14 orPredicateWithSubpredicates_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  *(v16 + 56) = v5;
  *(v16 + 64) = v6;
  strcpy((v16 + 32), "indexForSearch");
  *(v16 + 47) = -18;
  v17 = sub_1BA4A6EE8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B7510;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = v15;
  v20 = v17;
  v21 = sub_1BA4A6AE8();

  v22 = [v14 andPredicateWithSubpredicates_];

  return v22;
}

uint64_t HeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

unint64_t sub_1BA2253B4()
{
  result = qword_1EBBE9718;
  if (!qword_1EBBE9718)
  {
    type metadata accessor for TitleValueTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9718);
  }

  return result;
}

uint64_t HeightItem.uniqueIdentifier.getter()
{
  sub_1BA2254B4();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0();
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

unint64_t sub_1BA2254B4()
{
  result = qword_1EBBEEA20;
  if (!qword_1EBBEEA20)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEEA20);
  }

  return result;
}

uint64_t sub_1BA2254FC()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

uint64_t sub_1BA225538()
{
  sub_1BA2254B4();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0();
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

uint64_t sub_1BA2255E8(uint64_t a1)
{
  v2 = sub_1BA120ACC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t HeightItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t HeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 1;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

unint64_t sub_1BA2257D0()
{
  result = qword_1EBBEEA28;
  if (!qword_1EBBEEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA28);
  }

  return result;
}

uint64_t sub_1BA225824()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2258B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2258FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CoreTextView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CoreTextView.SizingStrategy.hashValue.getter()
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

unint64_t static CoreTextView.defaultAttributes.getter()
{
  sub_1BA22BEE0(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = v1;
  v5 = [v2 preferredFontForTextStyle_];
  v6 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v10;
  v11 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1BA225B84()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA225BC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  *&v2[v8] = a1;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v7 = sub_1BA4A7308();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1BA4A6528();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    [v2 setNeedsLayout];
    return [v2 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1BA225D34(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BA4A64F8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return sub_1BA225E24;
}

void sub_1BA225E24(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    *v4 = sub_1BA4A7308();
    (*(v6 + 104))(v4, *MEMORY[0x1E69E8020], v5);
    v7 = sub_1BA4A6528();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    v8 = v3[3];
    [v8 setNeedsLayout];
    [v8 invalidateIntrinsicContentSize];
  }

  free(v4);

  free(v3);
}

id sub_1BA225F2C()
{
  v0 = [objc_opt_self() defaultParagraphStyle];
  [v0 mutableCopy];

  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1B9F0ADF8(0, &qword_1EDC5E340);
  swift_dynamicCast();
  [v2 setParagraphSpacing_];
  [v2 setLineBreakMode_];
  return v2;
}

double sub_1BA226004()
{
  result = 0.0;
  xmmword_1EBBEEA30 = 0u;
  unk_1EBBEEA40 = 0u;
  LOWORD(xmmword_1EBBEEA50) = 1;
  *(&xmmword_1EBBEEA50 + 1) = MEMORY[0x1E69E7CC0];
  qword_1EBBEEA60 = MEMORY[0x1E69E7CC0];
  return result;
}

id sub_1BA226034()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_onLinkTap_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t CoreTextView.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for CoreTextView());
  v1 = CoreTextView.init(frame:columns:)(1, 0, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t CoreTextView.init(frame:columns:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1BA4A64F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText] = 0;
  v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] = 1;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor;
  *&v7[v18] = [objc_opt_self() linkColor];
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_gutter] = 0x4030000000000000;
  v19 = &v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 6) = 0;
  *v17 = sub_1BA4A7308();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  LOBYTE(v19) = sub_1BA4A6528();
  result = (*(v15 + 8))(v17, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = a1;
  }

  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns] = v21;
  if (v21 < 1)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for CoreTextView();
  v32.receiver = v7;
  v32.super_class = v22;
  v23 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a3, a4, a5, a6);
  [v23 setOpaque_];
  v24 = [v23 layer];
  [v24 setNeedsDisplayOnBoundsChange_];

  v25 = sub_1BA226034();
  [v23 addGestureRecognizer_];

  v26 = [v23 layer];
  v27 = [v23 layer];

  v28 = [v27 contentsAreFlipped];
  v29 = MEMORY[0x1E6979DC0];
  if (!v28)
  {
    v29 = MEMORY[0x1E6979E08];
  }

  v30 = *v29;
  [v26 setContentsGravity_];

  v31 = v23;
  [v31 setIsAccessibilityElement_];
  [v31 setAccessibilityContainerType_];

  return v31;
}

uint64_t sub_1BA226598()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText];
  if (!v1)
  {
    return 0;
  }

  [v1 mutableCopy];
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1B9F0ADF8(0, &qword_1EDC6B520);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v45;
  v3 = [v45 length];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] != 1)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v4 = *MEMORY[0x1E69DB670];
  v5 = swift_allocObject();
  *(v5 + 16) = v45;
  *(v5 + 24) = v0;
  v6 = swift_allocObject();
  *&v38 = sub_1BA22C070;
  *(v6 + 16) = sub_1BA22C070;
  *(v6 + 24) = v5;
  v42 = sub_1BA22C258;
  v43 = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v40 = sub_1BA49B910;
  v41 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);
  v8 = v2;
  v9 = v0;

  [v8 enumerateAttribute:v4 inRange:0 options:v3 usingBlock:{0, v7}];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v11 = v38;
LABEL_8:
    swift_beginAccess();
    v12 = *MEMORY[0x1E69DB688];
    v13 = [objc_opt_self() defaultParagraphStyle];
    [v13 mutableCopy];

    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
    sub_1B9F0ADF8(0, &qword_1EDC5E340);
    swift_dynamicCast();
    v14 = v44;
    [v44 setParagraphSpacing_];
    [v14 setLineBreakMode_];
    [v2 addAttribute:v12 value:v14 range:{0, v3}];

    v15 = [objc_opt_self() preferredLanguages];
    v16 = sub_1BA4A6B08();

    if (v16[2] && (v17 = v16[4], v18 = v16[5], , v19 = , *&aBlock = 45, *(&aBlock + 1) = 0xE100000000000000, MEMORY[0x1EEE9AC00](v19), p_aBlock = &aBlock, v20 = sub_1BA49D4AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B9F13FDC, v36, v17, v18, &v38), *(v20 + 16)))
    {
      v38 = *(v20 + 32);
      v22 = *(v20 + 48);
      v21 = *(v20 + 56);

      sub_1BA22C0AC(0, &qword_1EDC5DB70, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B9FD0;
      *(inited + 32) = sub_1BA4A7B08();
      *(inited + 40) = v24;
      *(inited + 48) = v25;
      *(inited + 56) = v26;
      *(inited + 64) = sub_1BA4A7B08();
      *(inited + 72) = v27;
      *(inited + 80) = v28;
      *(inited + 88) = v29;
      v30 = sub_1BA4A7B08();
      *(inited + 96) = v30;
      *(inited + 104) = v31;
      *(inited + 112) = v32;
      *(inited + 120) = v33;
      aBlock = v38;
      v40 = v22;
      v41 = v21;
      MEMORY[0x1EEE9AC00](v30);
      p_aBlock = &aBlock;
      v34 = sub_1BA011A3C(sub_1BA22C050, v36, inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v34)
      {
        isa = NSAttributedString.copyWithUnbreakableWords()().super.super.isa;

        sub_1B9F0E310(v11);
        return isa;
      }
    }

    else
    {
    }

    sub_1B9F0E310(v11);
    return v2;
  }

  __break(1u);
  return result;
}

NSMutableAttributedString __swiftcall NSAttributedString.copyWithUnbreakableWords()()
{
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v1 = [v26 string];
  if (!v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v2 = sub_1BA4A6758();

    v1 = v2;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = v1;
  Length = CFStringGetLength(v4);
  v6 = CFLocaleGetSystem();
  v27.location = 0;
  v27.length = Length;
  v7 = CFStringTokenizerCreate(v3, v4, v27, 0, v6);

  result.super.super.isa = CFStringTokenizerAdvanceToNextToken(v7);
  v25 = v4;
  for (i = MEMORY[0x1E69E7CC0]; result.super.super.isa; result.super.super.isa = CFStringTokenizerAdvanceToNextToken(v7))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1BA280138(0, *(i + 2) + 1, 1, i);
    }

    v12 = *(i + 2);
    v11 = *(i + 3);
    if (v12 >= v11 >> 1)
    {
      i = sub_1BA280138((v11 > 1), v12 + 1, 1, i);
    }

    *(i + 2) = v12 + 1;
    *&i[16 * v12 + 32] = CurrentTokenRange;
  }

  v24 = v7;
  v13 = *(i + 2);
  if (v13)
  {
    v14 = &i[16 * v13 + 24];
    while (v13 <= *(i + 2))
    {
      --v13;
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = [v26 mutableString];
      v18 = [v17 substringWithRange_];

      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;

      v22 = [v26 mutableString];
      sub_1BA229FF8(v19, v21);

      v23 = sub_1BA4A6758();

      [v22 replaceCharactersInRange:v15 withString:{v16, v23}];

      v14 -= 16;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return v26;
  }

  return result;
}

__n128 sub_1BA226E24@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v166 = type metadata accessor for CoreTextView.Link();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v172 = (&v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v140 - v16;
  v18 = sub_1BA4A15D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  *&v173 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA226598();
  if (!v21)
  {
    if (qword_1EBBE8528 != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_64;
  }

  v22 = v21;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  v24 = *&v5[v23];
  if (v24 <= 1)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = (v24 - 1) * 16.0;
  }

  v188.origin.x = a2;
  v188.origin.y = a3;
  v188.size.width = a4;
  v188.size.height = a5;
  Width = CGRectGetWidth(v188);
  v189.origin.x = a2;
  v189.origin.y = a3;
  v189.size.width = a4;
  v189.size.height = a5;
  Height = CGRectGetHeight(v189);
  v150 = CTFramesetterCreateWithAttributedString(v22);
  if (v24 < 0)
  {
    goto LABEL_83;
  }

  v151 = v22;
  v141 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    v28 = 0;
    v156 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v118 = [(__CFAttributedString *)v151 length];
    v119 = *(v156 + 2);
    v120 = MEMORY[0x1E69E7CC0];
    if (v119)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];

      sub_1BA067060(0, v119, 0);
      v120 = aBlock;
      v121 = *(aBlock + 16);
      v122 = 4 * v121;
      v123 = v156 + 56;
      do
      {
        v124 = *(v123 - 1);
        v125 = *v123;
        *&aBlock = v120;
        v126 = v120[3];
        v127 = v121 + 1;
        if (v121 >= v126 >> 1)
        {
          v176 = v124;
          v175 = v125;
          sub_1BA067060((v126 > 1), v121 + 1, 1);
          v125 = v175;
          v124 = v176;
          v120 = aBlock;
        }

        v120[2] = v127;
        v128 = &v120[v122];
        *(v128 + 2) = v124;
        *(v128 + 3) = v125;
        v122 += 4;
        v123 += 48;
        v121 = v127;
        --v119;
      }

      while (v119);
    }

    v129 = v120[2];
    a1 = v141;
    if (v129)
    {
      v130 = v120 + 7;
      *&v131 = v120[7];
      *&v132 = v120[4];
      *&v133 = v120[5];
      v134.n128_u64[0] = v120[6];
      v135 = v120[2];
      do
      {
        *&v132 = CGRectUnion(*&v132, *(v130 - 3));
        v130 += 4;
        --v135;
      }

      while (v135);
      v176 = v132;
      v175 = v134;
      v174 = v133;
      v173 = v131;

      v136.n128_u64[0] = v175.n128_u64[0];
      v136.n128_u64[1] = v173;
      v175 = v136;
      *&v137 = v176;
      *(&v137 + 1) = v174;
      v138 = &v186;
    }

    else
    {

      v137 = 0uLL;
      v176 = 0u;
      v138 = &v185;
    }

    *(v138 - 16) = v137;

    LOBYTE(aBlock) = v129 == 0;
    v117 = (v129 == 0) | ((v28 != v118) << 8);
    v116 = v156;
    goto LABEL_78;
  }

  v170 = v17;
  v171 = v14;
  v144.origin.x = a2;
  v144.origin.y = a3;
  v144.size.width = a4;
  v144.size.height = a5;
  v155 = v5;
  v28 = 0;
  v29 = 0;
  v143 = &v182;
  a1 = v19 + 56;
  v30 = (v19 + 48);
  v169 = (v19 + 32);
  v164 = (v19 + 16);
  v163 = (v19 + 8);
  v31 = (Width - v25) / v24;
  v148 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled;
  v168 = *MEMORY[0x1E69DB670];
  v32 = 0.0;
  v142 = 1107296256;
  v156 = MEMORY[0x1E69E7CC0];
  v147 = v24;
  v146 = v31;
  while (1)
  {
    v33 = [v155 effectiveUserInterfaceLayoutDirection];
    v190.origin.y = 0.0;
    v190.origin.x = v32;
    v190.size.width = v31;
    v190.size.height = Height;
    v191 = CGRectIntegral(v190);
    y = v191.origin.y;
    v35 = v191.size.width;
    v36 = v191.size.height;
    if (v33 == 1)
    {
      x = v191.origin.x;
      v38 = CGRectGetWidth(v144) - v191.origin.x;
      v192.origin.x = x;
      v192.origin.y = y;
      v192.size.width = v35;
      v192.size.height = v36;
      v191.origin.x = v38 - CGRectGetWidth(v192);
    }

    v39 = v151;
    v40 = y;
    v41 = v35;
    v42 = v36;
    v43 = CGPathCreateWithRect(v191, 0);
    v44 = [(__CFAttributedString *)v39 length];
    if (__OFSUB__(v44, v28))
    {
      goto LABEL_80;
    }

    v187.location = v28;
    v175.n128_u64[0] = v44 - v28;
    v187.length = v44 - v28;
    Frame = CTFramesetterCreateFrame(v150, v187, v43, 0);
    v152 = v43;

    v160 = Frame;
    sub_1BA228008(&v179);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if ((v180 & 1) == 0)
    {
      *&v46 = CGRectOffset(v179, v32, 0.0);
      v47 = v50;
      v48 = v51;
      v49 = v52;
    }

    *&v176 = v28;
    v154 = v46;
    v153 = v29;
    v53 = sub_1BA2283C8();
    v54 = *(v53 + 2);
    if (v54)
    {
      v55 = v53 + 56;
      v56 = MEMORY[0x1E69E7CC0];
      do
      {
        v193 = CGRectOffset(*(v55 - 24), v32, 0.0);
        v57 = v193.origin.x;
        v58 = v193.origin.y;
        v59 = v193.size.width;
        v60 = v193.size.height;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1BA28027C(0, *(v56 + 2) + 1, 1, v56);
        }

        v62 = *(v56 + 2);
        v61 = *(v56 + 3);
        if (v62 >= v61 >> 1)
        {
          v56 = sub_1BA28027C((v61 > 1), v62 + 1, 1, v56);
        }

        *(v56 + 2) = v62 + 1;
        v63 = &v56[32 * v62];
        v63[4] = v57;
        v63[5] = v58;
        v63[6] = v59;
        v63[7] = v60;
        v55 += 32;
        --v54;
      }

      while (v54);
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    if (*(v155 + v148) == 1)
    {
      break;
    }

LABEL_55:
    v108 = v160;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v156;
    }

    else
    {
      v109 = sub_1BA2803A4(0, *(v156 + 2) + 1, 1, v156);
    }

    v111 = *(v109 + 2);
    v110 = *(v109 + 3);
    v112 = v154;
    if (v111 >= v110 >> 1)
    {
      v115 = sub_1BA2803A4((v110 > 1), v111 + 1, 1, v109);
      v112 = v154;
      v109 = v115;
    }

    *(v109 + 2) = v111 + 1;
    v156 = v109;
    v113 = &v109[48 * v111];
    *(v113 + 4) = v108;
    *(v113 + 5) = v112;
    *(v113 + 6) = v47;
    *(v113 + 7) = v48;
    *(v113 + 8) = v49;
    *(v113 + 9) = v56;
    VisibleStringRange = CTFrameGetVisibleStringRange(v108);

    v28 = VisibleStringRange.location + VisibleStringRange.length;
    if (__OFADD__(VisibleStringRange.location, VisibleStringRange.length))
    {
      goto LABEL_81;
    }

    v29 = v153 + 1;
    v31 = v146;
    v32 = v146 + v32 + 16.0;
    if (v153 + 1 == v147)
    {
      goto LABEL_66;
    }
  }

  v145 = v56;
  v177 = MEMORY[0x1E69E7CC0];
  v64 = swift_allocObject();
  v65 = v151;
  *(v64 + 16) = v151;
  *(v64 + 24) = &v177;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1BA22BF7C;
  *(v66 + 24) = v64;
  *&v183 = sub_1BA22BF84;
  *(&v183 + 1) = v66;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = v142;
  *&v182 = sub_1BA49B910;
  *(&v182 + 1) = &block_descriptor_60;
  v67 = _Block_copy(&aBlock);
  v68 = v65;

  *&v174 = v68;
  [(__CFAttributedString *)v68 enumerateAttribute:v168 inRange:v176 options:v175.n128_u64[0] usingBlock:0, v67];
  _Block_release(v67);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if (v67)
  {
    goto LABEL_82;
  }

  v69 = v177;

  v159 = *(v69 + 16);
  if (!v159)
  {
LABEL_54:

    v56 = v145;
    goto LABEL_55;
  }

  v70 = 0;
  v157 = v69 + 32;
  v71 = MEMORY[0x1E69E7CA0];
  v158 = v69;
  while (v70 < *(v69 + 16))
  {
    v162 = v70;
    v72 = (v157 + 16 * v70);
    v73 = v72[1];
    v175.n128_u64[0] = *v72;
    v167 = v73;
    v74 = sub_1BA228700(v175.n128_u64[0], v73);
    v75 = *(v74 + 2);
    v161 = v74;
    if (v75)
    {
      v76 = v74 + 56;
      do
      {
        *&v176 = v27;
        v194 = CGRectOffset(*(v76 - 24), v32, 0.0);
        v77 = v194.origin.x;
        v78 = v194.origin.y;
        v79 = v194.size.width;
        v80 = v194.size.height;
        v81 = [v174 attributesAtIndex:v175.n128_u64[0] effectiveRange:0];
        type metadata accessor for Key(0);
        sub_1BA0262E4();
        v82 = sub_1BA4A6628();

        if (*(v82 + 16))
        {
          v83 = sub_1B9F4E588(v168);
          v84 = v171;
          if (v85)
          {
            sub_1B9F0AD9C(*(v82 + 56) + 32 * v83, &aBlock);
          }

          else
          {

            aBlock = 0u;
            v182 = 0u;
          }
        }

        else
        {

          aBlock = 0u;
          v182 = 0u;
          v84 = v171;
        }

        sub_1B9FF168C(&aBlock, &v177);
        if (v178)
        {
          v86 = swift_dynamicCast();
          v87 = *a1;
          (*a1)(v84, v86 ^ 1u, 1, v18);
          if ((*v30)(v84, 1, v18) != 1)
          {
            sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v71 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
            v88 = v170;
            (*v169)();
            v89 = v88;
            v90 = 0;
            goto LABEL_47;
          }
        }

        else
        {
          sub_1BA22BF8C(&v177, &qword_1EDC6E300, v71 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
          v87 = *a1;
          (*a1)(v84, 1, 1, v18);
        }

        sub_1BA22BF8C(v84, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
        sub_1B9FF168C(&aBlock, &v177);
        if (!v178)
        {
          v91 = MEMORY[0x1E69E6720];
          sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v71 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
          p_aBlock = &v177;
          v93 = v71 + 8;
          v94 = v91;
          goto LABEL_46;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          v94 = MEMORY[0x1E69E6720];
          p_aBlock = &aBlock;
          v93 = v71 + 8;
LABEL_46:
          sub_1BA22BF8C(p_aBlock, &qword_1EDC6E300, v93, v94, sub_1BA22C0AC);
          v88 = v170;
          v89 = v170;
          v90 = 1;
LABEL_47:
          v87(v89, v90, 1, v18);
          goto LABEL_48;
        }

        v88 = v170;
        sub_1BA4A15C8();

        sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v71 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
LABEL_48:
        if ((*v30)(v88, 1, v18) == 1)
        {
          sub_1BA22BF8C(v88, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
          v27 = v176;
        }

        else
        {
          v95 = v30;
          v96 = a1;
          v97 = v173;
          (*v169)(v173, v88, v18);
          v98 = [v174 attributedSubstringFromRange_];
          v99 = [v98 string];

          v100 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v102 = v101;

          v103 = v166;
          v104 = v172;
          (*v164)(v172 + *(v166 + 20), v97, v18);
          *v104 = v77;
          v104[1] = v78;
          v104[2] = v79;
          v104[3] = v80;
          v105 = (v104 + *(v103 + 24));
          *v105 = v100;
          v105[1] = v102;
          v27 = v176;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1BA2804DC(0, v27[2] + 1, 1, v27);
          }

          v107 = v27[2];
          v106 = v27[3];
          a1 = v96;
          v30 = v95;
          if (v107 >= v106 >> 1)
          {
            v27 = sub_1BA2804DC(v106 > 1, v107 + 1, 1, v27);
          }

          v71 = MEMORY[0x1E69E7CA0];
          (*v163)(v173, v18);
          v27[2] = v107 + 1;
          sub_1BA22BFEC(v172, v27 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v107);
        }

        v76 += 32;
        --v75;
      }

      while (v75);
    }

    v70 = v162 + 1;

    v69 = v158;
    if (v70 == v159)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  swift_once();
LABEL_64:
  aBlock = xmmword_1EBBEEA30;
  v182 = unk_1EBBEEA40;
  v183 = xmmword_1EBBEEA50;
  v116 = qword_1EBBEEA60;
  v184 = qword_1EBBEEA60;
  v175 = unk_1EBBEEA40;
  v176 = xmmword_1EBBEEA30;
  v27 = *(&xmmword_1EBBEEA50 + 1);
  v117 = xmmword_1EBBEEA50;
  sub_1BA22BF44(&aBlock, &v179);
LABEL_78:
  result = v175;
  *a1 = v176;
  *(a1 + 16) = result;
  *(a1 + 32) = v117;
  *(a1 + 40) = v27;
  *(a1 + 48) = v116;
  return result;
}

uint64_t sub_1BA228008@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  ascent[1] = *MEMORY[0x1E69E9840];
  v3 = CTFrameGetLines(v1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v6 = v5;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v8 = v5;
    if (!(v5 >> 62))
    {
LABEL_6:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }
  }

  v9 = sub_1BA4A7CC8();
LABEL_7:

  v10 = v2;
  v43 = sub_1BA22AAE0(v9, v10);

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v12 = 0;
    v13 = v6 & 0xC000000000000001;
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = (v43 + 40);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v6;
    while (1)
    {
      if (v13)
      {
        v18 = MEMORY[0x1BFAF2860](v12, v6);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        v18 = *(v6 + 8 * v12 + 32);
      }

      v19 = v18;
      if (v12 >= *(v43 + 16))
      {
        break;
      }

      v20 = *(v15 - 1);
      v21 = *v15;
      ascent[0] = 0.0;
      descent[0] = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v18, ascent, descent, 0);
      v23 = ascent[0];
      v24 = descent[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BA28027C(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_1BA28027C((v25 > 1), v26 + 1, 1, v16);
      }

      ++v12;
      v27 = v21 + v23;

      *(v16 + 2) = v26 + 1;
      v28 = &v16[32 * v26];
      *(v28 + 4) = v20;
      *(v28 + 5) = v27;
      *(v28 + 6) = TypographicBounds;
      *(v28 + 7) = v21 - v24 - v27;
      v15 += 2;
      v6 = v17;
      if (i == v12)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v29 = *(v16 + 2);
  if (v29)
  {
    v30 = v16 + 56;
    v31 = *(v16 + 7);
    v32 = *(v16 + 4);
    v33 = *(v16 + 5);
    v34 = *(v16 + 6);
    v35 = *(v16 + 2);
    do
    {
      *&v32 = CGRectUnion(*&v32, *(v30 - 24));
      v30 += 32;
      --v35;
    }

    while (v35);
    v44 = v32;
    v40 = v31;
    v41 = v34;
    v39 = v33;

    *&v37 = v44;
    *(&v37 + 1) = v39;
    *&v38 = v41;
    *(&v38 + 1) = v40;
  }

  else
  {

    v37 = 0uLL;
    v38 = 0uLL;
  }

  *a1 = v37;
  *(a1 + 16) = v38;
  *(a1 + 32) = v29 == 0;
  return result;
}

char *sub_1BA2283C8()
{
  ascent[1] = *MEMORY[0x1E69E9840];
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v4 = v3;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = CTFrameGetLines(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v6 = v3;
    if (!(v3 >> 62))
    {
LABEL_6:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }
  }

  v7 = sub_1BA4A7CC8();
LABEL_7:

  v8 = v0;
  v27 = sub_1BA22AAE0(v7, v8);

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v10 = 0;
    v11 = v4 & 0xC000000000000001;
    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    v13 = (v27 + 40);
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v4;
    while (1)
    {
      if (v11)
      {
        v16 = MEMORY[0x1BFAF2860](v10, v4);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_24;
        }

        v16 = v4[v10 + 4];
      }

      v4 = v16;
      if (v10 >= *(v27 + 16))
      {
        break;
      }

      v17 = *(v13 - 1);
      v18 = *v13;
      ascent[0] = 0.0;
      descent[0] = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v16, ascent, descent, 0);
      v20 = ascent[0];
      v21 = descent[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BA28027C(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      if (v23 >= v22 >> 1)
      {
        v14 = sub_1BA28027C((v22 > 1), v23 + 1, 1, v14);
      }

      ++v10;
      v24 = v18 + v20;

      *(v14 + 2) = v23 + 1;
      v25 = &v14[32 * v23];
      *(v25 + 4) = v17;
      *(v25 + 5) = v24;
      *(v25 + 6) = TypographicBounds;
      *(v25 + 7) = v18 - v21 - v24;
      v13 += 2;
      v4 = v15;
      if (i == v10)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v14;
}

char *sub_1BA228700(NSUInteger a1, NSUInteger a2)
{
  v3 = v2;
  ascent[1] = *MEMORY[0x1E69E9840];
  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v9 = v8;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = CTFrameGetLines(v3);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }

LABEL_28:
    v12 = sub_1BA4A7CC8();
    goto LABEL_7;
  }

  ascent[0] = 0.0;
  type metadata accessor for CTLine(0);
  sub_1BA4A6AF8();

  v11 = v8;
  if (v8 >> 62)
  {
    goto LABEL_28;
  }

LABEL_6:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v13 = v3;
  v14 = sub_1BA22AAE0(v12, v13);

  if (v9 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v14;
  if (!v15)
  {
LABEL_32:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

LABEL_9:
  v16 = 0;
  v17 = v14 + 5;
  v18 = MEMORY[0x1E69E7CC0];
  v37 = v14 + 5;
  do
  {
    v39 = v18;
    v14 = &v17[2 * v16];
    v19 = v16;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFAF2860](v19, v9);
      }

      else
      {
        if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v20 = *(v9 + 8 * v19 + 32);
      }

      v21 = v20;
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v15 = sub_1BA4A7CC8();
        v38 = v14;
        if (!v15)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      StringRange = CTLineGetStringRange(v20);
      v44.location = a1;
      v44.length = a2;
      v22 = NSIntersectionRange(StringRange, v44);
      if (v22.length >= 1)
      {
        break;
      }

      ++v19;
      v14 += 2;
      if (v16 == v15)
      {
        v18 = v39;
        goto LABEL_33;
      }
    }

    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v21, v22.location, 0);
    if (__OFADD__(v22.location, v22.length))
    {
      __break(1u);
LABEL_35:
      __break(1u);
    }

    v24 = OffsetForStringIndex;
    v25 = CTLineGetOffsetForStringIndex(v21, v22.location + v22.length, 0);
    if (v19 >= *(v38 + 2))
    {
      goto LABEL_35;
    }

    v26 = v25;
    v27 = *(v14 - 1);
    v28 = *v14;
    ascent[0] = 0.0;
    descent[0] = 0.0;
    CTLineGetTypographicBounds(v21, ascent, descent, 0);
    v29 = ascent[0];
    v30 = descent[0];
    v31 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1BA28027C(0, *(v39 + 2) + 1, 1, v39);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    v40 = v31;
    if (v33 >= v32 >> 1)
    {
      v40 = sub_1BA28027C((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = v28 + v29;

    v18 = v40;
    *(v40 + 2) = v33 + 1;
    v35 = &v40[32 * v33];
    v35[4] = v24 + v27;
    v35[5] = v34;
    v35[6] = v26 - v24;
    v35[7] = v28 - v30 - v34;
    v17 = v37;
  }

  while (v16 != v15);
LABEL_33:

  return v18;
}

uint64_t sub_1BA228B24(CGFloat a1)
{
  v6 = v1;
  v8 = sub_1BA4A64F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v11 = sub_1BA4A7308();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1BA4A6528();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_55;
  }

  result = sub_1BA226598();
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  v13 = *(v6 + v18);
  if (v13 <= 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (v13 - 1) * 16.0;
  }

  v11 = CTFramesetterCreateWithAttributedString(v17);
  v48 = v13;
  if (v13 == 2)
  {
    v46 = v17;
    v47 = v6;
    v19 = v17;
    v20 = [(__CFAttributedString *)v19 length];
    v12 = v20 / 2;
    v45 = v20;
    if (v20 <= v20 / 2)
    {
      v13 = v20 / 2;
    }

    else
    {
      v13 = v20;
    }

    v21 = 80;
    v3 = 4294959064;
    do
    {
      if (v13 == v12)
      {
        break;
      }

      v22 = [(__CFAttributedString *)v19 string];
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;

      v26 = sub_1BA22907C(v12, v23, v25);
      v4 = v27;

      result = sub_1BA22A280(v26, v4);
      if ((result & 0x100000000) != 0)
      {
        __break(1u);
        return result;
      }

      v28 = result;

      v29 = (v28 - 14) <= 0xFFFFFFFB && (v28 - 8232) >= 2;
      if (!v29 || v28 == 133)
      {

        v2 = sub_1BA280510(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v13 = *(v2 + 2);
        v15 = *(v2 + 3);
        v4 = v13 + 1;
        if (v13 >= v15 >> 1)
        {
          goto LABEL_57;
        }

        goto LABEL_26;
      }

      ++v12;
      --v21;
    }

    while (v21);

    v2 = MEMORY[0x1E69E7CC0];
    v17 = v46;
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v12)
  {
LABEL_44:
    v39 = (a1 - v5) / v48;
    height = 0.0;
    v41 = (v2 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = v39;
      v52.size.height = 1.79769313e308;
      v53 = CGRectIntegral(v52);
      v53.origin.x = v53.size.width;
      v53.origin.y = v53.size.height;
      v51.location = v42;
      v51.length = v43;
      v44 = CTFramesetterSuggestFrameSizeWithConstraints(v11, v51, 0, v53.origin, 0);
      if (height <= v44.height)
      {
        height = v44.height;
      }

      v41 += 2;
      --v12;
    }

    while (v12);
    goto LABEL_48;
  }

LABEL_29:
  while (1)
  {
    v34 = [(__CFAttributedString *)v17 length];
    v15 = v48;
    if (v48 >= 1)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v2 = sub_1BA280510((v15 > 1), v4, 1, v2);
LABEL_26:
    v17 = v46;
    *(v2 + 2) = v4;
    v30 = &v2[16 * v13];
    *(v30 + 4) = 0;
    *(v30 + 5) = v12;
    v31 = v45;
    v32 = v45 - v12;
    if (__OFSUB__(v45, v12))
    {
      __break(1u);
LABEL_59:
      v2 = sub_1BA280510((v31 > 1), v3, 1, v2);
      goto LABEL_28;
    }

    v31 = *(v2 + 3);
    v3 = v13 + 2;
    if (v13 + 2 > (v31 >> 1))
    {
      goto LABEL_59;
    }

LABEL_28:
    *(v2 + 2) = v3;
    v33 = &v2[16 * v4];
    *(v33 + 4) = v12;
    *(v33 + 5) = v32;
    v12 = *(v2 + 2);
    if (v12)
    {
      goto LABEL_44;
    }
  }

  v3 = v34;
  if (v34 >= 1)
  {
    v13 = 0;
    v4 = v34 / v48;
    while (1)
    {
      v15 = v3 - v13;
      if (__OFSUB__(v3, v13))
      {
        break;
      }

      if (v4 >= v15)
      {
        v35 = v3 - v13;
      }

      else
      {
        v35 = v4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1BA280510(0, *(v2 + 2) + 1, 1, v2);
      }

      v37 = *(v2 + 2);
      v36 = *(v2 + 3);
      v12 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v2 = sub_1BA280510((v36 > 1), v37 + 1, 1, v2);
      }

      *(v2 + 2) = v12;
      v15 = &v2[16 * v37];
      *(v15 + 32) = v13;
      *(v15 + 40) = v35;
      v38 = __OFADD__(v13, v35);
      v13 += v35;
      if (v38)
      {
        goto LABEL_54;
      }

      if (v13 >= v3)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v12 = *(v2 + 2);
  if (v12)
  {
    goto LABEL_44;
  }

  height = 0.0;
LABEL_48:
  sub_1BA226E24(v49, 0.0, 0.0, a1, height);

  if (v50)
  {
    sub_1BA22BF8C(v49, &unk_1EDC695D8, &type metadata for CoreTextView.TypesettingResult, MEMORY[0x1E69E6720], sub_1BA22C0AC);
  }
}

uint64_t sub_1BA22907C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1BA22A680(0xFuLL, a1, a2, a3);
  v6 = sub_1BA22A3D0(v5, a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    v10 = sub_1BA4A7DE8();
  }

  else
  {
    v7 = v6 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v17[0] = a2;
      v17[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = v17 + v7;
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v8 = sub_1BA4A7EB8();
      }

      v9 = (v8 + v7);
    }

    v10 = *v9;
    if (*v9 < 0)
    {
      v13 = (__clz(v10 ^ 0xFF) - 24);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
        }
      }

      else if (v13 != 1)
      {
        v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
      }
    }
  }

  if (v10 >= 0x80)
  {
    v14 = (v10 & 0x3F) << 8;
    if (v10 >= 0x800)
    {
      v15 = (v14 | (v10 >> 6) & 0x3F) << 8;
      v16 = (((v15 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
      v11 = (v10 >> 12) + v15 + 8487393;
      if (HIWORD(v10))
      {
        v11 = v16;
      }
    }

    else
    {
      v11 = (v10 >> 6) + v14 + 33217;
    }
  }

  else
  {
    v11 = v10 + 1;
  }

  v17[0] = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
  return sub_1BA4A68B8();
}

void sub_1BA229254(CGFloat a1, CGFloat a2)
{
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v7 = sub_1BA4A7308();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1BA4A6528();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (a1 <= 0.0)
    {
      sub_1BA226E24(v10, 0.0, 0.0, a1, a2);
      if (v11)
      {
        sub_1BA22BF8C(v10, &unk_1EDC695D8, &type metadata for CoreTextView.TypesettingResult, MEMORY[0x1E69E6720], sub_1BA22C0AC);
      }
    }

    else
    {
      sub_1BA228B24(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA229490(void *a1)
{
  v3 = type metadata accessor for CoreTextView.Link();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] == 1 && [a1 state] == 3)
  {
    [a1 locationInView_];
    v37 = v1;
    v10 = &v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 8];
    v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 16];
    v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 24];
    v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 32];
    v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
    if (v15)
    {
      v17 = v8;
      v18 = v9;
      v19 = *v10;
      v20 = v10[1];
      v21 = v10[2];
      v22 = v10[3];
      v23 = v10[4];
      v36 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
      sub_1BA22BD98(v19, v20, v21, v22, v23, v15);

      sub_1BA22BDDC(v11, v12, v13, v14, v16, v36);
      v24 = *(v36 + 16);
      if (v24)
      {
        v38 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate;
        v25 = v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v26 = *(v4 + 72);
        v27 = v37;
        do
        {
          sub_1BA22BE20(v25, v7);
          v28 = *v7;
          v29 = v7[1];
          v30 = v7[2];
          v31 = v7[3];
          [v27 bounds];
          v32 = CGRectGetHeight(v41) - v29;
          v42.origin.x = v28;
          v42.origin.y = v29;
          v42.size.width = v30;
          v42.size.height = v31;
          v43.origin.y = v32 - CGRectGetHeight(v42);
          v43.origin.x = v28;
          v43.size.width = v30;
          v43.size.height = v31;
          v40.x = v17;
          v40.y = v18;
          if (CGRectContainsPoint(v43, v40))
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v33 = v3;
              v34 = off_1F3809018;
              type metadata accessor for DataTypeDetailDescriptionCell();
              v27 = v37;
              v34();
              v3 = v33;
              swift_unknownObjectRelease();
            }
          }

          sub_1BA22BE84(v7);
          v25 += v26;
          --v24;
        }

        while (v24);
      }

      else
      {
      }
    }

    else
    {
      sub_1BA22BD98(*v10, v10[1], v10[2], v10[3], v10[4], 0);

      sub_1BA22BDDC(v11, v12, v13, v14, v16, 0);
    }
  }
}

id CoreTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CoreTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGPoint **sub_1BA2299EC(CGPoint **result, uint64_t *a2, CTFrameRef frame)
{
  v3 = *result;
  if (*result)
  {
    v10.location = 0;
    v10.length = 0;
    CTFrameGetLineOrigins(frame, v10, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLine(0);
      sub_1BA4A6AF8();

      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *a2 = v9;
        return result;
      }
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_4;
      }
    }

    v9 = sub_1BA4A7CC8();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA229AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  sub_1BA229CC0(a1, &v22 - v13);
  v15 = sub_1BA4A15D8();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  result = sub_1BA22BF8C(v14, &qword_1EDC6AE90, v10, v11, sub_1BA22BEE0);
  if (v16 != 1)
  {
    v18 = *a6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v18;
    if ((result & 1) == 0)
    {
      result = sub_1BA280138(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
      *a6 = result;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1BA280138((v19 > 1), v20 + 1, 1, v18);
      v18 = result;
      *a6 = result;
    }

    *(v18 + 16) = v20 + 1;
    v21 = v18 + 16 * v20;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
  }

  return result;
}

uint64_t sub_1BA229CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  sub_1B9FF168C(a1, v16);
  v7 = MEMORY[0x1E69E7CA0];
  if (v17)
  {
    v8 = sub_1BA4A15D8();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    v11 = *(v10 + 56);
    v11(v6, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v6, 1, v8) != 1)
    {
      (*(v10 + 32))(a2, v6, v8);
      return v11(a2, 0, 1, v8);
    }
  }

  else
  {
    sub_1BA22BF8C(v16, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
    v13 = sub_1BA4A15D8();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1BA22BF8C(v6, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
  sub_1B9FF168C(a1, v16);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      sub_1BA4A15C8();
    }
  }

  else
  {
    sub_1BA22BF8C(v16, &qword_1EDC6E300, v7 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
  }

  v14 = sub_1BA4A15D8();
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

unint64_t sub_1BA229FF8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = 4 * v2;
    v4 = MEMORY[0x1E69E7CC0];
    sub_1B9F252FC();
    do
    {
      sub_1BA4A7B98();
      v6 = v5;
      v7 = sub_1BA4A69E8();
      v8 = MEMORY[0x1BFAF12A0](v7);
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BA27EE34(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1BA27EE34((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      v14 = &v4[16 * v12];
      *(v14 + 4) = v8;
      *(v14 + 5) = v10;
    }

    while (v3 > v6 >> 14);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  if (v13 < 3)
  {
    if (v13 != 2)
    {
LABEL_25:
      sub_1BA22C0AC(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1B9F1D768();
      v20 = sub_1BA4A66D8();

      return v20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) <= 5uLL)
    {
      v18 = 3;
      goto LABEL_23;
    }

LABEL_24:
    sub_1BA1727D4(1uLL, 1, 1, 10519010, 0xA300000000000000);
    goto LABEL_25;
  }

  v15 = swift_isUniquelyReferenced_nonNull_native();
  if (!v15 || v13 >= *(v4 + 3) >> 1)
  {
    v4 = sub_1BA27EE34(v15, v13 + 1, 1, v4);
  }

  result = sub_1BA1727D4(v13 - 1, v13 - 1, 1, 10519010, 0xA300000000000000);
  v17 = *(v4 + 2);
  if (v17)
  {
    if (v17 >= *(v4 + 3) >> 1)
    {
      v18 = v17 + 1;
      isUniquelyReferenced_nonNull_native = 1;
LABEL_23:
      sub_1BA27EE34(isUniquelyReferenced_nonNull_native, v18, 1, v4);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA22A280(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BA22A3D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1BA4A7DE8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1BA4A7EB8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1BA22A3D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BA22A468(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BA22A4DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BA22A468(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BA3BB450(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA22A4DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BA4A7EB8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1BA22A600(void *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3] && *a1 >> 16 == *a2 >> 16 && a1[1] >> 16 == a2[1] >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1BA4A82C8() & 1;
  }
}

unint64_t sub_1BA22A680(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1BA22A850(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (result >= 0x10000)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BA4A68A8();
      }

      else
      {
        v15 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21 = a3;
          v22 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v21 + v15 - 1) & 0xC0) == 0x80)
          {
            v18 = &v21 + v15 - 2;
            v19 = 1;
            do
            {
              ++v19;
              v20 = *v18--;
            }

            while ((v20 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }

          v15 -= v19;
        }

        else
        {
          v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v16 = sub_1BA4A7EB8();
          }

          do
          {
            v17 = *(v16 - 1 + v15--) & 0xC0;
          }

          while (v17 == 128);
        }

        result = (v15 << 16) | 5;
      }

      if (--v14 <= a2)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BA4A6898();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21 = a3;
          v22 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v21 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1BA4A7EB8();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
      }

      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA22A850(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BA22A8E8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BA22A4DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BA22A8E8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BA3BB450(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

id sub_1BA22A980(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText] = a1;
  v9 = a1;

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v7 = sub_1BA4A7308();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1BA4A6528();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    [v2 setNeedsDisplay];
    return [v2 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA22AAE0(unint64_t result, const __CTFrame *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    type metadata accessor for CGPoint(0);
    v5 = sub_1BA4A6B98();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v6[0] = (v5 + 32);
  v6[1] = v4;
  result = sub_1BA2299EC(v6, &v7, a2);
  if (v2)
  {
    if (v7 <= v4)
    {
      *(v5 + 16) = v7;

      return v5;
    }

    goto LABEL_12;
  }

  if (v7 <= v4)
  {
    *(v5 + 16) = v7;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1BA22ABA8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled) = 1;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor;
  *(v0 + v1) = [objc_opt_self() linkColor];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_gutter) = 0x4030000000000000;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA22ACA0(void *a1, double a2, double a3, double a4, double a5)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_1BA4A6758();
    v12 = [v10 BOOLForKey_];

    if (v12)
    {
      if (a1)
      {
        v13 = a1;
      }

      else
      {
        v13 = [objc_opt_self() redColor];
      }

      v14 = a1;
      [v13 setStroke];

      v15 = a2;
      v16 = a3;
      v17 = a4;
      v18 = a5;

      UIRectFrame(*&v15);
    }
  }
}

void sub_1BA22ADEC()
{
  v3 = v0;
  v131 = type metadata accessor for CoreTextView.Link();
  v4 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v114 - v7);
  v9 = sub_1BA4A64F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v12 = sub_1BA4A7308();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1BA4A6528();
  v15 = *(v10 + 8);
  v14 = (v10 + 8);
  v15(v12, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_56;
  }

  v16 = UIGraphicsGetCurrentContext();
  if (v16)
  {
    v1 = v16;
    [v3 bounds];
    CGContextClearRect(v1, v135);
    [v3 bounds];
    sub_1BA226E24(v133, v17, v18, v19, v20);
    v21 = &v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v22 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v23 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 8];
    v24 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 16];
    v25 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 24];
    v26 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 32];
    v27 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
    v28 = v133[1];
    *v21 = v133[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v133[2];
    *(v21 + 6) = v134;
    sub_1BA22BDDC(v22, v23, v24, v25, v26, v27);
    v2 = *(v21 + 5);
    if (v2)
    {
      v29 = *(v21 + 1);
      v118 = *v21;
      v119 = *&v29;
      v30 = *(v21 + 3);
      v120 = *(v21 + 2);
      v121 = *&v30;
      v122 = *(v21 + 4);
      v14 = *(v21 + 6);

      CGContextSaveGState(v1);
      v132.a = 1.0;
      v132.b = 0.0;
      v132.c = 0.0;
      v132.d = 1.0;
      v132.tx = 0.0;
      v132.ty = 0.0;
      CGContextSetTextMatrix(v1, &v132);
      [v3 bounds];
      CGContextTranslateCTM(v1, 0.0, v31);
      CGContextScaleCTM(v1, 1.0, -1.0);
      v32 = v14[2];
      if (v32)
      {

        v33 = 4;
        do
        {
          CTFrameDraw(v14[v33], v1);
          v33 += 6;
          --v32;
        }

        while (v32);
      }

      CGContextRestoreGState(v1);
      *&v132.a = MEMORY[0x1E69E7CC0];
      v34 = [objc_allocWithZone(MEMORY[0x1E69DC608]) initWithAccessibilityContainer_];
      [v3 bounds];
      [v34 setAccessibilityFrameInContainerSpace_];
      [v34 setAccessibilityAttributedLabel_];
      [v34 setAccessibilityTraits_];
      v12 = v34;
      MEMORY[0x1BFAF1510]();
      if (*((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_57;
      }

      while (1)
      {
        v127 = v14;
        v116 = v12;
        sub_1BA4A6BB8();
        v35 = v2[2];
        if (v35)
        {
          v115 = v1;
          v36 = *MEMORY[0x1E69DD9E0];
          v37 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
          v114 = v4;
          v38 = *(v4 + 72);
          v117 = v2;

          do
          {
            sub_1BA22BE20(v37, v8);
            v39 = *v8;
            v40 = v8[1];
            v41 = v8[2];
            v42 = v8[3];
            [v3 bounds];
            v43 = CGRectGetHeight(v136) - v40;
            v137.origin.x = v39;
            v137.origin.y = v40;
            v137.size.width = v41;
            v137.size.height = v42;
            v44 = v43 - CGRectGetHeight(v137);
            v45 = [objc_allocWithZone(MEMORY[0x1E69DC608]) initWithAccessibilityContainer_];
            [v45 setAccessibilityFrameInContainerSpace_];
            [v45 setAccessibilityTraits_];
            v46 = sub_1BA4A6758();
            [v45 setAccessibilityLabel_];

            v47 = v45;
            MEMORY[0x1BFAF1510]();
            if (*((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();

            v48 = *&v132.a;
            sub_1BA22BE84(v8);
            v37 += v38;
            --v35;
          }

          while (v35);
          v2 = v117;

          v1 = v115;
          v4 = v114;
        }

        else
        {
          v48 = *&v132.a;
        }

        v49 = sub_1BA326790(v48);
        sub_1B9FE6208(v49);

        v50 = sub_1BA4A6AE8();

        [v3 setAccessibilityElements_];

        v51 = objc_opt_self();
        v12 = &selRef_didTapSave_;
        if (![v51 isAppleInternalInstall] || (v131 = objc_opt_self(), v52 = objc_msgSend(v131, sel_standardUserDefaults), v130 = "v40@?0@8{_NSRange=QQ}16^B32", v14 = sub_1BA4A6758(), v53 = objc_msgSend(v52, sel_BOOLForKey_, v14), v52, v14, !v53))
        {

          sub_1BA22BDDC(*&v118, *&v119, *&v120, *&v121, v122, v2);
          return;
        }

        v114 = v4;
        v115 = v1;
        [v3 bounds];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v4 = objc_opt_self();
        v62 = [v4 redColor];
        sub_1BA22ACA0(v62, v55, v57, v59, v61);

        if ((v122 & 1) == 0)
        {
          v63 = v118;
          v64 = v119;
          v65 = v120;
          v66 = v121;
          [v3 bounds];
          v67 = CGRectGetHeight(v138) - v64;
          v139.origin.x = v63;
          v139.origin.y = v64;
          v139.size.width = v65;
          v139.size.height = v66;
          v68 = v67 - CGRectGetHeight(v139);
          v69 = [v4 greenColor];
          sub_1BA22ACA0(v69, v63, v68, v65, v66);
        }

        v70 = v127;
        v124 = v127[2];
        v117 = v2;
        if (!v124)
        {
          break;
        }

        v123 = v127 + 4;

        v1 = 0;
        v2 = &selRef_createListViewController_;
        while (v1 < v70[2])
        {
          v71 = &v123[6 * v1];
          v72 = v71[3];
          v73 = v71[4];
          v8 = *(v71 + 5);
          v74 = v71[1];
          v75 = v71[2];
          v129 = *v71;

          [v3 v12[237]];
          Height = CGRectGetHeight(v140);
          v141.origin.x = v74;
          v141.origin.y = v75;
          v141.size.width = v72;
          v141.size.height = v73;
          v77 = CGRectGetHeight(v141);
          v14 = [v4 purpleColor];
          if ([v51 isAppleInternalInstall] && (v78 = objc_msgSend(v131, sel_standardUserDefaults), v79 = sub_1BA4A6758(), v80 = objc_msgSend(v78, sel_BOOLForKey_, v79), v78, v79, v12 = &selRef_didTapSave_, v80))
          {
            v81 = v14;
            if (!v14)
            {
              v81 = [v4 redColor];
            }

            v82 = v14;
            [v81 setStroke];

            v142.origin.x = v74;
            v142.origin.y = Height - v75 - v77;
            v142.size.width = v72;
            v142.size.height = v73;
            UIRectFrame(v142);

            v83 = *(v8 + 2);
            v12 = &selRef_didTapSave_;
            if (v83)
            {
LABEL_33:
              v126 = v1;

              v84 = v83 - 1;
              v125 = v8;
              for (i = v8 + 7; ; i += 4)
              {
                v86 = *(i - 3);
                v87 = *(i - 2);
                v88 = *(i - 1);
                v89 = *i;
                [v3 v12[237]];
                v90 = CGRectGetHeight(v143);
                v144.origin.x = v86;
                v144.origin.y = v87;
                v144.size.width = v88;
                v144.size.height = v89;
                v91 = CGRectGetHeight(v144);
                v14 = [v4 blueColor];
                if ([v51 isAppleInternalInstall] && (v92 = objc_msgSend(v131, sel_standardUserDefaults), v93 = sub_1BA4A6758(), v94 = objc_msgSend(v92, sel_BOOLForKey_, v93), v92, v93, v12 = &selRef_didTapSave_, v94))
                {
                  v95 = v14;
                  if (!v14)
                  {
                    v95 = [v4 redColor];
                  }

                  v96 = v14;
                  [v95 setStroke];

                  v145.origin.x = v86;
                  v145.origin.y = v90 - v87 - v91;
                  v145.size.width = v88;
                  v145.size.height = v89;
                  UIRectFrame(v145);

                  v12 = &selRef_didTapSave_;
                  if (!v84)
                  {
LABEL_23:
                    v8 = v125;

                    v1 = v126;
                    break;
                  }
                }

                else
                {

                  if (!v84)
                  {
                    goto LABEL_23;
                  }
                }

                --v84;
              }
            }
          }

          else
          {

            v83 = *(v8 + 2);
            if (v83)
            {
              goto LABEL_33;
            }
          }

          v1 = (v1 + 1);

          v70 = v127;
          if (v1 == v124)
          {

            v2 = v117;
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        sub_1BA4A6B68();
      }

LABEL_44:

      sub_1BA22BDDC(*&v118, *&v119, *&v120, *&v121, v122, v2);
      v97 = v2[2];
      if (v97)
      {
        v98 = v117 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
        v99 = *(v114 + 72);
        for (j = v97 - 1; ; --j)
        {
          v101 = v128;
          sub_1BA22BE20(v98, v128);
          v102 = *v101;
          v103 = *(v101 + 8);
          v104 = *(v101 + 16);
          v105 = *(v101 + 24);
          sub_1BA22BE84(v101);
          [v3 v12[237]];
          v106 = CGRectGetHeight(v146);
          v147.origin.x = v102;
          v147.origin.y = v103;
          v147.size.width = v104;
          v147.size.height = v105;
          v107 = CGRectGetHeight(v147);
          v108 = [v4 yellowColor];
          if ([v51 isAppleInternalInstall] && (v109 = objc_msgSend(v131, sel_standardUserDefaults), v110 = sub_1BA4A6758(), v111 = objc_msgSend(v109, sel_BOOLForKey_, v110), v109, v110, v12 = &selRef_didTapSave_, v111))
          {
            v112 = v108;
            if (!v108)
            {
              v112 = [v4 redColor];
            }

            v113 = v108;
            [v112 setStroke];

            v148.origin.x = v102;
            v148.origin.y = v106 - v103 - v107;
            v148.size.width = v104;
            v148.size.height = v105;
            UIRectFrame(v148);

            v12 = &selRef_didTapSave_;
            if (!j)
            {
              break;
            }
          }

          else
          {

            if (!j)
            {
              break;
            }
          }

          v98 += v99;
        }
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1BA22BB3C()
{
  result = qword_1EBBEEAA8;
  if (!qword_1EBBEEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAA8);
  }

  return result;
}

uint64_t sub_1BA22BCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA22BCF0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t type metadata accessor for CoreTextView.Link()
{
  result = qword_1EDC69598;
  if (!qword_1EDC69598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA22BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1BA22BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1BA22BE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTextView.Link();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA22BE84(uint64_t a1)
{
  v2 = type metadata accessor for CoreTextView.Link();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA22BEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA22BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA22BFEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTextView.Link();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BA22C070(void *result, uint64_t a2, uint64_t a3)
{
  if (result[3])
  {
    return [*(v3 + 16) addAttribute:*MEMORY[0x1E69DB650] value:*(*(v3 + 24) + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor) range:{a2, a3}];
  }

  return result;
}

void sub_1BA22C0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA22C0FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA22C144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA22C1C8()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1BA4A15D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1BA22C264()
{
  v0 = sub_1BA4A2A28();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BA4A29F8();
  UIViewController.resolvedPinnedContentManager.getter(v14);
  v3 = objc_allocWithZone(type metadata accessor for FeedItemSuggestedActionViewController());
  v4 = FeedItemSuggestedActionViewController.init(_:pinnedContentManager:)(v2, v14);
  v5 = sub_1BA22CC24();
  v6 = &v4[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate];
  swift_beginAccess();
  *(v6 + 1) = v5;
  swift_unknownObjectWeakAssign();
  type metadata accessor for OrganDonationDataSourceItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v4;
  v10 = [v8 bundleForClass_];
  sub_1BA4A1318();

  v11 = sub_1BA4A6758();

  [v9 setTitle_];

  return v9;
}

void sub_1BA22C444()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for OrganDonationStatusViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  type metadata accessor for OrganDonationDataSourceItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1BA4A1318();

  v3 = sub_1BA4A6758();

  [v0 setTitle_];

  sub_1BA22C664();
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BA4A6AE8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA22C664()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController];
  if (v3)
  {
    [v3 willMoveToParentViewController_];
    v3 = *&v0[v2];
    if (v3)
    {
      result = [v3 view];
      if (!result)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      v5 = result;
      [result removeFromSuperview];

      v3 = *&v1[v2];
    }
  }

  [v3 removeFromParentViewController];
  v6 = objc_opt_self();
  if (([v6 hasStoredRegistrant] & 1) != 0 || objc_msgSend(v6, sel_shouldShowStoreDemoOrganDonation))
  {
    *(objc_allocWithZone(type metadata accessor for OrganDonationRegisteredViewController()) + OBJC_IVAR____TtC18HealthExperienceUI37OrganDonationRegisteredViewController_organDonationRegisteredViewControllerDelegate + 8) = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for OrganDonationRegisteredDataSource();
    swift_allocObject();
    v7 = sub_1BA222ACC();
    sub_1B9F1DEA0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    *(v8 + 32) = v7;
    *(v8 + 40) = &protocol witness table for MutableArrayDataSource;
    type metadata accessor for CompoundSectionedDataSource();
    swift_allocObject();

    v9 = CompoundSectionedDataSource.init(_:)(v8);
    v10 = CompoundDataSourceCollectionViewController.init(dataSource:)(v9);

    *&v10[OBJC_IVAR____TtC18HealthExperienceUI37OrganDonationRegisteredViewController_organDonationRegisteredViewControllerDelegate + 8] = &off_1F380FFF8;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v10 = sub_1BA22C264();
  }

  v11 = *&v1[v2];
  *&v1[v2] = v10;
  v12 = v10;

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = result;
  result = *&v1[v2];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = [result view];
  if (!result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = result;
  [v13 addSubview_];

  result = *&v1[v2];
  if (!result)
  {
    return result;
  }

  result = [result view];
  if (!result)
  {
    goto LABEL_22;
  }

  v15 = result;
  v16 = [v1 view];
  [v15 hk:v16 alignConstraintsWithView:?];

  result = *&v1[v2];
  if (result)
  {

    return [result didMoveToParentViewController_];
  }

  return result;
}

id sub_1BA22CA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrganDonationStatusViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA22CAF0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B9F07000, v4, v5, "Organ Donation sign up cancelled", v6, 2u);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1BA22CC24()
{
  result = qword_1EBBEEAB8;
  if (!qword_1EBBEEAB8)
  {
    type metadata accessor for OrganDonationStatusViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAB8);
  }

  return result;
}

id TextTableViewItemCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TextTableViewItemCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = (*(ObjectType + 88))();
  if (a3)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for TextTableViewItemCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, v8, v9);

  v11 = v10;
  sub_1BA22D0EC();

  return v11;
}

id TextTableViewItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TextTableViewItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item];
  v4 = type metadata accessor for TextTableViewItemCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1BA22D0EC();
  }

  return v6;
}

uint64_t sub_1BA22D0EC()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v6, v62);
  if (v63)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBEEAD0);
    if (swift_dynamicCast())
    {
      if (*(&v65 + 1))
      {
        sub_1B9F1134C(&v64, v67);
        v7 = [v1 textLabel];
        if (v7)
        {
          v8 = v7;
          v9 = v68;
          v10 = v69;
          __swift_project_boxed_opaque_existential_1(v67, v68);
          (*(v10 + 16))(v9, v10);
          if (v11)
          {
            v12 = sub_1BA4A6758();
          }

          else
          {
            v12 = 0;
          }

          [v8 setText_];
        }

        v23 = [v1 textLabel];
        if (v23)
        {
          v24 = v23;
          v25 = v68;
          v26 = v69;
          __swift_project_boxed_opaque_existential_1(v67, v68);
          v27 = (*(v26 + 24))(v25, v26);
          [v24 setTextColor_];
        }

        v28 = v68;
        v29 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        v30 = (*(v29 + 48))(v28, v29);
        if (v30)
        {
          v31 = v30;
          v32 = [v1 textLabel];
          if (v32)
          {
            v33 = v32;
            [v32 setFont_];
          }
        }

        v34 = [v1 textLabel];
        if (v34)
        {
          v35 = v34;
          [v34 setNumberOfLines_];
        }

        v36 = [v1 detailTextLabel];
        if (v36)
        {
          v37 = v36;
          v38 = v68;
          v39 = v69;
          __swift_project_boxed_opaque_existential_1(v67, v68);
          (*(v39 + 32))(v38, v39);
          if (v40)
          {
            v41 = sub_1BA4A6758();
          }

          else
          {
            v41 = 0;
          }

          [v37 setText_];
        }

        v42 = [v1 detailTextLabel];
        if (v42)
        {
          v43 = v42;
          v44 = v68;
          v45 = v69;
          __swift_project_boxed_opaque_existential_1(v67, v68);
          v46 = (*(v45 + 40))(v44, v45);
          [v43 setTextColor_];
        }

        v47 = v68;
        v48 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        v49 = (*(v48 + 48))(v47, v48);
        if (v49)
        {
          v50 = v49;
          v51 = [v1 detailTextLabel];
          if (v51)
          {
            v52 = v51;
            [v51 setFont_];
          }
        }

        v53 = [v1 detailTextLabel];
        if (v53)
        {
          v54 = v53;
          [v53 setNumberOfLines_];
        }

        sub_1B9F0A534(v67, v62);
        sub_1B9F0D950(0, qword_1EDC61778);
        if (swift_dynamicCast())
        {
          v55 = *(&v65 + 1);
          v56 = v66;
          __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
          v57 = (*(v56 + 8))(v55, v56);
          v59 = v58;
          __swift_destroy_boxed_opaque_existential_1(&v64);
          v60 = v57;
        }

        else
        {
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          sub_1B9F43A50(&v64, &qword_1EDC61770, qword_1EDC61778);
          v60 = 0;
          v59 = 0;
        }

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v60, v59);

        return __swift_destroy_boxed_opaque_existential_1(v67);
      }
    }

    else
    {
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v62, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
  }

  sub_1B9F43A50(&v64, &qword_1EBBEEAC8, &qword_1EBBEEAD0);
  sub_1BA4A3E28();
  v13 = v1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v67[0] = v17;
    *v16 = 136315138;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    *&v64 = v18;
    sub_1BA0928CC();
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, v67);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1B9F07000, v14, v15, "Incorrect ViewModel for TextTableViewItemCell %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA22D7E8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA22D0EC();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA22D870@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA22D8C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA22D0EC();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA22D94C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA22D9B0;
}

uint64_t sub_1BA22D9B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA22D0EC();
  }

  return result;
}

void sub_1BA22D9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];

    v5 = [v3 textLabel];
    if (v5)
    {
      v6 = v5;

      MEMORY[0x1BFAF1350](0x6554656C7469542ELL, 0xEA00000000007478);
      v7 = sub_1BA4A6758();

      [v6 setAccessibilityIdentifier_];
    }

    v8 = [v3 detailTextLabel];
    if (v8)
    {
      v9 = v8;

      MEMORY[0x1BFAF1350](0x546C69617465442ELL, 0xEB00000000747865);
      v13 = sub_1BA4A6758();

      [v9 setAccessibilityIdentifier_];

LABEL_10:
    }
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v10 = [v2 textLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setAccessibilityIdentifier_];
    }

    v12 = [v3 detailTextLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setAccessibilityIdentifier_];
      goto LABEL_10;
    }
  }
}

id TextTableViewItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextTableViewItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA22DDAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA23257C();
  sub_1BA4A0E98();
  if (v3)
  {
    v30 = v7;

    sub_1BA4A3E28();
    v11 = v3;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = a1;
      v16 = v15;
      v32 = v15;
      *v14 = 136315394;
      v31 = &type metadata for StandardDataLoggingActionHandler.UserData;
      sub_1BA23303C();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v32);
      v29 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v31 = v3;
      v21 = v3;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v32);

      *(v14 + 14) = v24;
      a2 = v29;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v28;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v30);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v3 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);

    *a3 = v32;
  }

  return result;
}

uint64_t sub_1BA22E0A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for DataLoggingPluginViewModel();
  sub_1BA232990(&qword_1EBBE9840, type metadata accessor for DataLoggingPluginViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEECD8, type metadata accessor for DataLoggingPluginViewModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1BA22E3E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  sub_1BA232990(&qword_1EBBEBA18, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEECD0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1BA22E724(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA232990(&qword_1EDC67D08, type metadata accessor for PromptTileViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEEC90, type metadata accessor for PromptTileViewModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1BA22EA64(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for StandardCategoryTileViewModel();
  sub_1BA232990(&qword_1EDC6C088, type metadata accessor for StandardCategoryTileViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEEC98, type metadata accessor for StandardCategoryTileViewModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1BA22EDA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA232C40();
  sub_1BA4A0E98();
  if (v3)
  {
    v33 = v7;

    sub_1BA4A3E28();
    v11 = v3;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = a1;
      v16 = v15;
      *&v34[0] = v15;
      *v14 = 136315394;
      v35 = &type metadata for HKTypeGroupCategoryTileViewModel;
      sub_1BA232C94();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, v34);
      v32 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v35 = v3;
      v21 = v3;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v34);

      *(v14 + 14) = v24;
      a2 = v32;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v31;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v33);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v3 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);

    v28 = v34[1];
    *a3 = v34[0];
    a3[1] = v28;
    v29 = v34[3];
    a3[2] = v34[2];
    a3[3] = v29;
  }

  return result;
}

uint64_t sub_1BA22F0A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  sub_1BA232990(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEECB0, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1BA22F3E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for AccountSidebarContentConfigurationModel(0);
  sub_1BA232990(&qword_1EBBEECB8, type metadata accessor for AccountSidebarContentConfigurationModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEECC0, type metadata accessor for AccountSidebarContentConfigurationModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22F724()
{
  v1 = v0;
  v41 = sub_1BA4A3EA8();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 72);
  if (v13 >> 60 == 15)
  {
    sub_1BA4A3E28();

    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315650;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v43);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1B9F0B82C(0x63656C6553646964, 0xEB00000000292874, &v43);
      *(v17 + 22) = 2080;
      v22 = *(v1 + 72);
      v42[0] = *(v1 + 64);
      v42[1] = v22;
      sub_1B9F6AD84(v42[0], v22);
      sub_1B9F85D98(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v43);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "%s %s Could not access action handler user data: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v41);
  }

  else
  {
    v40 = v10;
    v14 = *(v1 + 64);
    sub_1B9F6AD84(v14, v13);
    sub_1B9F206D4(v14, v13);
    sub_1BA22DDAC(v14, v13, v42);
    v26 = [objc_opt_self() displayTypeWithIdentifier_];
    if (v26)
    {
      v27 = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      v28 = v42[0];
      v29 = [objc_opt_self() sharedInstanceForHealthStore_];
      sub_1BA4A1718();
      v30 = sub_1BA4A16B8();
      (*(v9 + 8))(v12, v40);
      v31 = [v27 wd:v28 addDataViewControllerWithHealthStore:v29 healthToolBox:v30 initialStartDate:?];

      v32 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      [*(v1 + 88) presentViewController:v32 animated:1 completion:0];
      sub_1B9F6AC8C(v14, v13);
    }

    else
    {
      sub_1BA4A3E28();
      v33 = sub_1BA4A3E88();
      v34 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42[0] = v36;
        *v35 = 136315394;
        v37 = sub_1BA4A85D8();
        v39 = sub_1B9F0B82C(v37, v38, v42);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_1B9F0B82C(0x63656C6553646964, 0xEB00000000292874, v42);
        _os_log_impl(&dword_1B9F07000, v33, v34, "%s %s Could not access display type", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        MEMORY[0x1BFAF43A0](v35, -1, -1);

        sub_1B9F6AC8C(v14, v13);
      }

      else
      {
        sub_1B9F6AC8C(v14, v13);
      }

      (*(v2 + 8))(v7, v41);
    }
  }
}

id StandardDataLoggingActionHandler.UserData.displayType.getter()
{
  result = [objc_opt_self() displayTypeWithIdentifier_];
  if (!result)
  {
    sub_1BA231AD4();
    swift_allocError();
    swift_willThrow();
    return 0;
  }

  return result;
}

void StandardDataLoggingActionHandler.UserData.init(displayType:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 displayTypeIdentifier];

  *a2 = v4;
}