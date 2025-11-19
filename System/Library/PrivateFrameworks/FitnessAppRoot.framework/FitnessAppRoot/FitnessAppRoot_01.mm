void sub_1E5A933C0(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  *&v90 = a1;
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = sub_1E5ACEEE8();
  v88 = *(v10 - 8);
  *&v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5ACEF08();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v77 - v19;
  v21 = sub_1E5ACEF78();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v26 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a4;
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v72 = sub_1E5ACF038();
    __swift_project_value_buffer(v72, qword_1EE300080);

    v58 = sub_1E5ACF018();
    v73 = sub_1E5ACFF08();
    if (!os_log_type_enabled(v58, v73))
    {

LABEL_37:
      v62 = 0;
      v65 = 0;
      v45 = 0;
      v68 = 0uLL;
      goto LABEL_38;
    }

    v74 = swift_slowAlloc();
    *v74 = 134218240;
    *(v74 + 4) = a2;
    *(v74 + 12) = 2048;
    if (a3 >> 62)
    {
      v75 = sub_1E5AD0178();
    }

    else
    {
      v75 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v74 + 14) = v75;

    _os_log_impl(&dword_1E5A79000, v58, v73, "[FloatingTabBarController] Failed to make transition element for item at index: %ld. View controller count: %ld", v74, 0x16u);
    v61 = v74;
    goto LABEL_35;
  }

  v85 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v25;
  v69 = v23;
  v70 = sub_1E5AD0178();
  if (v70 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v71 = v70;
  v23 = v69;
  v26 = v85;
  v25 = v86;
  if (v71 <= a2)
  {
    goto LABEL_27;
  }

LABEL_3:
  v84 = v23;
  v85 = v26;
  v86 = v25;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v27 = MEMORY[0x1E69347A0](a2, a3);
    goto LABEL_6;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(a3 + 8 * a2 + 32);
LABEL_6:
  v28 = v27;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29 || (v30 = [v29 topViewController]) == 0)
  {
    v31 = v28;
    goto LABEL_16;
  }

  v31 = v30;
  v32 = [v30 contentScrollViewForEdge_];
  if (!v32)
  {

LABEL_16:
    if (qword_1EE2FCA80 == -1)
    {
LABEL_17:
      v57 = sub_1E5ACF038();
      __swift_project_value_buffer(v57, qword_1EE300080);
      v58 = sub_1E5ACF018();
      v59 = sub_1E5ACFF08();
      if (!os_log_type_enabled(v58, v59))
      {
LABEL_36:

        goto LABEL_37;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1E5A79000, v58, v59, "[FloatingTabBarController] Failed to make transition element for non-scrollable controller", v60, 2u);
      v61 = v60;
LABEL_35:
      MEMORY[0x1E6935190](v61, -1, -1);
      goto LABEL_36;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v33 = v32;
  v82 = v31;
  v83 = v28;
  v35 = *(v9 + 80);
  v34 = *(v9 + 88);
  v36 = type metadata accessor for TabBarItemDescriptor();
  v78 = v33;
  v37 = *(v36 + 36);
  v38 = v90;
  v39 = (*(v34 + 56))(v35, v34);
  v80 = v40;
  v81 = v39;
  v79 = *v38;
  (*(v34 + 64))(&v92 + 1, v35, v34);
  v41 = v87;
  (*(v87 + 104))(v18, **(&unk_1E87884B8 + SBYTE1(v92)), v14);
  (*(v41 + 32))(v20, v18, v14);
  (*(v34 + 72))(&v92, v35, v34);
  LODWORD(v87) = v92;
  v77[2] = (*(v34 + 80))(v35, v34);
  v77[1] = v42;
  v43 = *(v5 + qword_1EE2FCEE0);
  v44 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v44);
  swift_getKeyPath();
  sub_1E5ACFA48();

  v45 = v78;
  (*(v34 + 88))(v13, v35, v34);
  (*(v88 + 8))(v13, v89);
  v46 = v85;
  sub_1E5ACEF58();
  v47 = *(v5 + qword_1EE2FCED0);
  [v45 contentOffset];
  v50 = sub_1E5AAB70C(v46, v48, v49);
  if (v51)
  {
    v52 = v82;
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v53 = sub_1E5ACF038();
    __swift_project_value_buffer(v53, qword_1EE300080);
    v54 = sub_1E5ACF018();
    v55 = sub_1E5ACFF08();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1E5A79000, v54, v55, "[FloatingTabBarController] Failed to make transition element for item with invalid height", v56, 2u);
      MEMORY[0x1E6935190](v56, -1, -1);
    }

    (*(v86 + 8))(v46, v84);
    goto LABEL_37;
  }

  v62 = v50;
  v63 = *&v50;
  [v47 heightExtension];
  v65 = (v64 + v63) * 0.5 < v63;
  [v45 contentOffset];
  v89 = v66;
  v90 = v67;

  (*(v86 + 8))(v46, v84);
  *&v68 = v89;
  *(&v68 + 1) = v90;
LABEL_38:
  v76 = v91;
  *v91 = v68;
  v76[2] = v62;
  v76[3] = v65;
  v76[4] = v45;
}

void sub_1E5A93C60(uint64_t a1, void *a2, double *a3)
{
  *(*(a1 + qword_1EE2FCED0) + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 0;
  v4 = *a3;
  v5 = a3[1];
  v6 = sub_1E5A8E470();
  [a2 _setContentOffset_animated_animationCurve_animationAdjustsForContentOffsetDelta_animation_];
}

Swift::Void __swiftcall FloatingTabBarController.contentScrollViewsDidChange()()
{
  ObjectType = swift_getObjectType();
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (!v2)
  {
    goto LABEL_18;
  }

  v14 = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 topViewController]) == 0)
  {

LABEL_18:
    v15.receiver = v0;
    v15.super_class = ObjectType;
    objc_msgSendSuper2(&v15, sel_viewWillLayoutSubviews);
    return;
  }

  v5 = v4;
  v6 = [v4 contentScrollViewForEdge_];
  v7 = [v5 contentScrollViewForEdge_];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      sub_1E5A7C10C(0, &qword_1EE2FC9F8, 0x1E69DCEF8);
      v9 = v8;
      if ((sub_1E5ACFFB8() & 1) == 0)
      {
        if (qword_1EE2FCA80 != -1)
        {
          swift_once();
        }

        v10 = sub_1E5ACF038();
        __swift_project_value_buffer(v10, qword_1EE300080);
        v11 = sub_1E5ACF018();
        v12 = sub_1E5ACFF28();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1E5A79000, v11, v12, "[TabBarController] Different scroll views found for top and bottom edge. Picking tallest.", v13, 2u);
          MEMORY[0x1E6935190](v13, -1, -1);
        }
      }
    }

    sub_1E5A92C88(v6);
  }
}

uint64_t sub_1E5A93F20()
{
  v0 = type metadata accessor for TabBarAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + qword_1EE2FCEE0);
    v7 = result;

    sub_1E5ACF9A8();

    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_1E5A940BC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1E5A8F9D0(a1, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1E5A94104(void *a1, uint64_t (*a2)(id))
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v4 = sub_1E5ACF038();
  __swift_project_value_buffer(v4, qword_1EE300080);
  sub_1E5ACF008();
  [a1 willMoveToParentViewController_];
  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    result = [a1 removeFromParentViewController];
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5A9421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TabBarItemDescriptor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v20 = a2;
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  v18 = v19;
  v17[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) != 0 && (sub_1E5ACFD38(), v13 = *v12, (*(v9 + 8))(v12, v8), (v13 & 1) == 0))
  {
    sub_1E5ACFD38();
    v15 = *(v8 + 36);
    v14 = TabBarItemProtocol.isSelectable.getter(a3, a4);
    (*(*(a3 - 8) + 8))(&v12[v15], a3);
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_1E5A94408()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  v3 = qword_1EE2FCEB8;
  type metadata accessor for FloatingPaletteContentView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = qword_1EE2FCED0;
  type metadata accessor for FloatingTitleView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v0 + qword_1EE2FCEF0;
  *v5 = 0;
  v5[8] = 1;
  v6 = qword_1EE2FCF08;
  v7 = *((v2 & v1) + 0x50);
  v8 = *((v2 & v1) + 0x58);
  type metadata accessor for TabBarItemDescriptor();
  *(v0 + v6) = sub_1E5ACFCA8();
  *(v0 + qword_1EE2FCED8) = MEMORY[0x1E69E7CC0];
  *(v0 + qword_1EE2FCEA8) = 0;
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5A94560(char *a1)
{
  v2 = sub_1E5ACF068();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = *&a1[qword_1EE2FCED0];
  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  sub_1E5ACFF88();
  sub_1E5ACF058();
  return sub_1E5ACFF98();
}

uint64_t sub_1E5A94654(unint64_t a1)
{
  v3 = qword_1EE2FCED8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v16 = *(v1 + v3);
    }

    v5 = sub_1E5AD0178();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      v8 = MEMORY[0x1E69347A0](a1);
LABEL_7:
      v9 = v8;
      swift_endAccess();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10 || (v11 = [v10 topViewController]) == 0)
      {
        v15 = 1;
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [v11 navigationItem];
      v14 = [v13 searchController];

      if (v14)
      {
        v15 = 0;
        v9 = v14;
LABEL_13:

        return v15;
      }

      return 1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= a1)
  {
    return 1;
  }

  result = swift_beginAccess();
  v7 = *(v1 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5A94820(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = type metadata accessor for TabBarAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v12 - v8);
  v10 = *(v1 + qword_1EE2FCEE0);
  sub_1E5ACF9A8();
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E5A94950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E5A93F20();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E5A94974()
{
  result = qword_1ED026C48;
  if (!qword_1ED026C48)
  {
    sub_1E5ACFA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026C48);
  }

  return result;
}

uint64_t sub_1E5A94A00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1E5A918A8(a1, a2);
}

uint64_t sub_1E5A94A78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5A94AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5A94B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5A94BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646469487369 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E5A94CAC(char a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](a1 & 1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A94CF4(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 0x6E65646469487369;
  }
}

BOOL sub_1E5A94D24(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5A94C74(*a1, *a2);
}

uint64_t sub_1E5A94D38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5A94CAC(*v1);
}

uint64_t sub_1E5A94D48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5A94C84(a1, *v2);
}

uint64_t sub_1E5A94D58(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E5A94C84(v7, *v2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A94DA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5A94CF4(*v1);
}

uint64_t sub_1E5A94DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5A94BA8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5A94DE0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5A959A8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5A94E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5A94E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarItemDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v17[1] = v4;
  type metadata accessor for TabBarItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5AD0318();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v17[2];
  sub_1E5AD03E8();
  v12 = *v11;
  v19 = 0;
  v13 = v17[3];
  sub_1E5AD02E8();
  if (!v13)
  {
    v14 = *(a2 + 36);
    v18 = 1;
    v15 = *(v17[0] + 16);
    sub_1E5AD0308();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TabBarItemDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabBarItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v35 = sub_1E5AD02A8();
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - v10;
  v34 = a3;
  v12 = type metadata accessor for TabBarItemDescriptor();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v36;
  sub_1E5AD03D8();
  if (!v17)
  {
    v36 = v12;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v38 = 0;
    v21 = sub_1E5AD0268();
    v28 = v15;
    *v15 = v21 & 1;
    v37 = 1;
    v22 = *(v20 + 8);
    v23 = a2;
    sub_1E5AD0288();
    (*(v18 + 8))(v11, v35);
    v25 = v36;
    v26 = v28;
    (*(v30 + 32))(&v28[*(v36 + 36)], v19, v23);
    (*(v29 + 32))(v31, v26, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TabBarItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1E5AD0398();
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 24);
  v7 = &v2[*(a2 + 36)];
  return sub_1E5ACFB48();
}

uint64_t TabBarItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  v3 = *v1;
  sub_1E5AD0398();
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 24);
  v6 = &v1[*(a1 + 36)];
  sub_1E5ACFB48();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A95498(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarItemDescriptor.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A95500(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5A95580(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E5A9570C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t DynamicContentFeature.init(environment:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for DynamicContentFeature() + 20)) = *a1;

  return MEMORY[0x1EEDC4ED8]();
}

uint64_t DynamicContentFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v52 = a3;
  v5 = type metadata accessor for DynamicContentFeature();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E40, &unk_1E5AD3710);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46[-v17];
  v19 = type metadata accessor for DynamicContentAction();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5A96354(a4, v22, type metadata accessor for DynamicContentAction);
  sub_1E5A85D40(v22, v18);
  sub_1E5A95F34(v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v48 = v8;
    v49 = v7;
    v25 = v50;
    v26 = v51;
    v47 = *v16;
    if (EnumCaseMultiPayload)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
      v28 = sub_1E5ACEEA8();
      (*(*(v28 - 8) + 8))(&v16[v27], v28);
    }

    v29 = v26;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v31 = v30[12];
    v32 = v30[16];
    v51 = v30[20];
    v33 = &v11[v30[24]];
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 4) = 0;
    sub_1E5A96354(v29, &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DynamicContentFeature);
    v34 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v35 = swift_allocObject();
    sub_1E5A963BC(&v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v35 + v34);
    *(v35 + v34 + v6) = v47;
    *v33 = &unk_1E5AD3730;
    v33[1] = v35;
    sub_1E5ACFD88();
    v36 = *MEMORY[0x1E6999B58];
    v37 = sub_1E5ACFA28();
    (*(*(v37 - 8) + 104))(&v11[v32], v36, v37);
    v38 = *MEMORY[0x1E6999B48];
    v39 = sub_1E5ACFA18();
    (*(*(v39 - 8) + 104))(&v11[v51], v38, v39);
    v40 = v48;
    v41 = v49;
    (*(v48 + 104))(v11, *MEMORY[0x1E6999AD8], v49);
    v42 = v52;
    v43 = *v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1E5A96948(0, v43[2] + 1, 1, v43, &qword_1ED026E88, qword_1E5AD37F8, &qword_1ED026E40, &unk_1E5AD3710);
    }

    v45 = v43[2];
    v44 = v43[3];
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1E5A96948(v44 > 1, v45 + 1, 1, v43, &qword_1ED026E88, qword_1E5AD37F8, &qword_1ED026E40, &unk_1E5AD3710);
    }

    sub_1E5A9661C(v18);
    v43[2] = v45 + 1;
    result = (*(v40 + 32))(v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, v11, v41);
    *v42 = v43;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E5A9661C(v18);
    return sub_1E5A9661C(v16);
  }

  else
  {
    return sub_1E5A9661C(v18);
  }

  return result;
}

uint64_t sub_1E5A95F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A95FA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a2;
  sub_1E5ACFD78();
  *(v3 + 24) = sub_1E5ACFD68();
  v5 = sub_1E5ACFD48();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5A96040, v5, v4);
}

uint64_t sub_1E5A96040()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = (v2 + *(type metadata accessor for DynamicContentFeature() + 20));
  v4 = v3[1];
  v8 = (*v3 + **v3);
  v5 = (*v3)[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1E5A96150;

  return v8(v1 == 1);
}

uint64_t sub_1E5A96150()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1E5A962F0;
  }

  else
  {
    v7 = sub_1E5A9628C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5A9628C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5A962F0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1E5A96354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A963BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentFeature();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A96420(uint64_t a1)
{
  v4 = *(type metadata accessor for DynamicContentFeature() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5A96520;

  return sub_1E5A95FA4(a1, v5, v6);
}

uint64_t sub_1E5A96520()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5A9661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5A96718()
{
  result = qword_1EE2FCA48;
  if (!qword_1EE2FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA48);
  }

  return result;
}

uint64_t sub_1E5A9676C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1E5A967DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E78, &qword_1E5AD37E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E80, &qword_1E5AD37F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E5A96948(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1E5A96B30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E58, &qword_1E5AD37C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E60, &qword_1E5AD37D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E5A96C68()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = v0[2];
    return v1(*v0);
  }

  return result;
}

uint64_t sub_1E5A96CA0()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    return v1(*v0);
  }

  return result;
}

uint64_t sub_1E5A96CD8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1E5A96C68();
}

uint64_t sub_1E5A96D14()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1E5A96CA0();
}

id HeadlessFeatureHosting<>.attach<A>(store:onAppear:onDisappear:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = sub_1E5A97040(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v10;
}

uint64_t HeadlessFeatureHosting<>.onAppear()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1E5A971B8(v5, v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t HeadlessFeatureHosting<>.onDisappear()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1E5A971B8(v5, v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 16))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

id sub_1E5A96F48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  v13 = sub_1E5A97040(a1, a2, a3, a4, a5, a6, a9, a7, a10, &protocol witness table for DynamicContentContainerViewController<A, B>);
  *a8 = v13;

  return v13;
}

uint64_t sub_1E5A96FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E5A97348(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E5A97040(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v27 = a1();
  v17 = *(a10 + 24);
  sub_1E5A972BC(a3);
  sub_1E5A972BC(a5);
  v18 = v17(v29, a7, a10);
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1E5A967DC(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    *v20 = sub_1E5A967DC((v23 > 1), v24 + 1, 1, v21);
  }

  v28[0] = v27;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v25 = type metadata accessor for HeadlessFeature();
  sub_1E5A96FA8(v24, v28, v20, v25, &off_1F5F69310);
  v18(v29, 0);
  return v11;
}

uint64_t sub_1E5A971B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5A972BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1E5A97348(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5A97360()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow5StoreCyxGAA7FeatureRzlyxIsegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5A973B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5A973FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 SignOutFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

double SignOutFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  v114 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E70, &qword_1E5AD37E0);
  v9 = *(v8 - 8);
  v115 = v8;
  v116 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v101 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v101 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v101 - v20;
  v22 = type metadata accessor for SignOutAction();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v4[1];
  v118 = *v4;
  v119 = v26;
  v27 = v4[3];
  v120 = v4[2];
  v121 = v27;
  sub_1E5A9A084(a4, v25, type metadata accessor for SignOutAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      result = v25[2];
      v100 = *(v25 + 24);
      *a1 = *v25;
      *(a1 + 16) = result;
      *(a1 + 24) = v100;
    }

    else
    {
      sub_1E5A999DC(v25, a2);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v49 = v48[12];
    v50 = v48[16];
    v51 = v48[20];
    v52 = &v21[v48[24]];
    v117[0] = 1;
    v113 = sub_1E5A97E08();
    sub_1E5AD0088();
    v53 = *MEMORY[0x1E6999B50];
    v54 = sub_1E5ACFA28();
    v55 = *(v54 - 8);
    v56 = *(v55 + 104);
    v112 = v53;
    v111 = v54;
    v110 = v56;
    v109 = v55 + 104;
    (v56)(&v21[v50], v53);
    v57 = *MEMORY[0x1E6999B40];
    v58 = sub_1E5ACFA18();
    v59 = *(v58 - 8);
    v60 = *(v59 + 104);
    v108 = v57;
    v107 = v58;
    v106 = v60;
    v105 = v59 + 104;
    (v60)(&v21[v51], v57);
    v61 = swift_allocObject();
    v62 = v119;
    v61[1] = v118;
    v61[2] = v62;
    v63 = v121;
    v61[3] = v120;
    v61[4] = v63;
    *v52 = &unk_1E5AD3940;
    *(v52 + 1) = v61;
    sub_1E5A9999C(&v118, v117);
    sub_1E5ACFD88();
    v64 = *(v116 + 104);
    v104 = *MEMORY[0x1E6999AD8];
    v103 = v64;
    v64(v21);
    v65 = *v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1E5A96924(0, *(v65 + 2) + 1, 1, v65);
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_1E5A96924(v66 > 1, v67 + 1, 1, v65);
    }

    *(v65 + 2) = v67 + 1;
    v68 = v115;
    v69 = *(v116 + 32);
    v70 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v71 = *(v116 + 72);
    v116 += 32;
    v102 = v69;
    v69(&v65[v70 + v71 * v67], v21, v115);
    v72 = v48[12];
    v73 = v48[16];
    v74 = v48[20];
    v75 = &v19[v48[24]];
    v117[0] = 2;
    sub_1E5AD0088();
    v110(&v19[v73], v112, v111);
    v106(&v19[v74], v108, v107);
    v76 = swift_allocObject();
    v77 = v119;
    v76[1] = v118;
    v76[2] = v77;
    v78 = v121;
    v76[3] = v120;
    v76[4] = v78;
    *v75 = &unk_1E5AD3950;
    *(v75 + 1) = v76;
    sub_1E5A9999C(&v118, v117);
    sub_1E5ACFD88();
    v103(v19, v104, v68);
    v80 = *(v65 + 2);
    v79 = *(v65 + 3);
    if (v80 >= v79 >> 1)
    {
      v65 = sub_1E5A96924(v79 > 1, v80 + 1, 1, v65);
    }

    v81 = v114;
    *(v65 + 2) = v80 + 1;
    v102(&v65[v70 + v80 * v71], v19, v68);
    *v81 = v65;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v30 = v29[12];
    v31 = v29[16];
    v32 = v29[20];
    v33 = &v16[v29[24]];
    v117[0] = 0;
    sub_1E5A97E08();
    sub_1E5AD0088();
    v34 = *MEMORY[0x1E6999B60];
    v35 = sub_1E5ACFA28();
    (*(*(v35 - 8) + 104))(&v16[v31], v34, v35);
    v36 = swift_allocObject();
    v37 = v119;
    v36[1] = v118;
    v36[2] = v37;
    v38 = v121;
    v36[3] = v120;
    v36[4] = v38;
    *v33 = &unk_1E5AD3930;
    *(v33 + 1) = v36;
    sub_1E5A9999C(&v118, v117);
    sub_1E5ACFD88();
    v39 = *MEMORY[0x1E6999B48];
    v40 = sub_1E5ACFA18();
    (*(*(v40 - 8) + 104))(&v16[v32], v39, v40);
    v41 = v115;
    v42 = v116;
    (*(v116 + 104))(v16, *MEMORY[0x1E6999AD8], v115);
    v43 = v114;
    v44 = *v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1E5A96924(0, v44[2] + 1, 1, v44);
    }

    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1E5A96924(v45 > 1, v46 + 1, 1, v44);
    }

    v44[2] = v46 + 1;
    (*(v42 + 32))(v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46, v16, v41);
    *v43 = v44;
  }

  else
  {
    *(a2 + *(type metadata accessor for SignOutState() + 20)) = 0;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v83 = v82[12];
    v84 = v82[16];
    v85 = v82[20];
    v86 = &v13[v82[24]];
    v117[0] = 3;
    sub_1E5A97E08();
    sub_1E5AD0088();
    v87 = *MEMORY[0x1E6999B50];
    v88 = sub_1E5ACFA28();
    (*(*(v88 - 8) + 104))(&v13[v84], v87, v88);
    v89 = swift_allocObject();
    v90 = v119;
    v89[1] = v118;
    v89[2] = v90;
    v91 = v121;
    v89[3] = v120;
    v89[4] = v91;
    *v86 = &unk_1E5AD3920;
    *(v86 + 1) = v89;
    sub_1E5A9999C(&v118, v117);
    sub_1E5ACFD88();
    v92 = *MEMORY[0x1E6999B48];
    v93 = sub_1E5ACFA18();
    (*(*(v93 - 8) + 104))(&v13[v85], v92, v93);
    v94 = v115;
    v95 = v116;
    (*(v116 + 104))(v13, *MEMORY[0x1E6999AD8], v115);
    v96 = v114;
    v97 = *v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_1E5A96924(0, v97[2] + 1, 1, v97);
    }

    v99 = v97[2];
    v98 = v97[3];
    if (v99 >= v98 >> 1)
    {
      v97 = sub_1E5A96924(v98 > 1, v99 + 1, 1, v97);
    }

    v97[2] = v99 + 1;
    (*(v95 + 32))(v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v99, v13, v94);
    *v96 = v97;
  }

  return result;
}

unint64_t sub_1E5A97E08()
{
  result = qword_1ED026E90;
  if (!qword_1ED026E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026E90);
  }

  return result;
}

uint64_t sub_1E5A97E5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SignOutAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC8, &qword_1E5AD3A90);
  v2[5] = v6;
  v7 = *(v6 - 8);
  v2[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026ED0, &qword_1E5AD3A98);
  v2[8] = v10;
  v11 = *(v10 - 8);
  v2[9] = v11;
  v12 = *(v11 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1E5ACFD78();
  v2[12] = sub_1E5ACFD68();
  v13 = *(a2 + 24);
  v17 = (*(a2 + 16) + **(a2 + 16));
  v14 = *(*(a2 + 16) + 4);
  v15 = swift_task_alloc();
  v2[13] = v15;
  *v15 = v2;
  v15[1] = sub_1E5A98078;

  return v17(v9);
}

uint64_t sub_1E5A98078()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v6 = sub_1E5ACFD48();
  *(v1 + 112) = v6;
  *(v1 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5A981BC, v6, v5);
}

uint64_t sub_1E5A981BC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E5ACFD98();
  (*(v3 + 8))(v2, v4);
  v5 = v0[11];
  v6 = sub_1E5ACFD68();
  v0[16] = v6;
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1E5A982AC;
  v9 = v0[10];
  v10 = v0[8];
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 19, v6, v11, v10);
}

uint64_t sub_1E5A982AC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5A983F0, v5, v4);
}

uint64_t sub_1E5A983F0()
{
  if (*(v0 + 152) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    swift_storeEnumTagMultiPayload();
    v8 = *(MEMORY[0x1E6999AF0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
    *v9 = v0;
    v9[1] = sub_1E5A98540;
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);

    return MEMORY[0x1EEE01A40](v11, v10);
  }
}

uint64_t sub_1E5A98540()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5A98698, v5, v4);
}

uint64_t sub_1E5A98698()
{
  v1 = v0[11];
  v2 = sub_1E5ACFD68();
  v0[16] = v2;
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1E5A982AC;
  v5 = v0[10];
  v6 = v0[8];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 19, v2, v7, v6);
}

uint64_t sub_1E5A98754(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for SignOutAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5ACFD78();
  v2[16] = sub_1E5ACFD68();
  v6 = *(a2 + 40);
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = *(*(a2 + 32) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1E5A98898;

  return v10(v2 + 7);
}

uint64_t sub_1E5A98898()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v6 = sub_1E5ACFD48();
  *(v1 + 144) = v6;
  *(v1 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5A989DC, v6, v5);
}

uint64_t sub_1E5A989DC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5ACFDB8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_1E5ACFD68();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E5A98BB4;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v7, v11);
}

uint64_t sub_1E5A98BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x1EEE6DFA0](sub_1E5A98CC8, v6, v7);
  }

  return result;
}

uint64_t sub_1E5A98CC8()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x1E6999AF0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
    *v8 = v0;
    v8[1] = sub_1E5A98DE4;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x1EEE01A40](v10, v9);
  }
}

uint64_t sub_1E5A98DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5A98F3C, v5, v4);
}

uint64_t sub_1E5A98F3C()
{
  v1 = v0[15];
  v2 = sub_1E5ACFD68();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1E5A98BB4;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v2, v6);
}

uint64_t sub_1E5A99018(uint64_t a1, int **a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SignOutAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AccountState() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v2[6] = sub_1E5ACFD78();
  v2[7] = sub_1E5ACFD68();
  v8 = a2[1];
  v12 = (*a2 + **a2);
  v9 = (*a2)[1];
  v10 = swift_task_alloc();
  v2[8] = v10;
  *v10 = v2;
  v10[1] = sub_1E5A99190;

  return v12(v7);
}

uint64_t sub_1E5A99190()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v11 = *v1;
  v3[9] = v2;

  v8 = sub_1E5ACFD48();
  v3[10] = v8;
  v3[11] = v7;
  if (v2)
  {
    v9 = sub_1E5A995C4;
  }

  else
  {
    v9 = sub_1E5A992F0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5A992F0()
{
  v1 = v0[3];
  sub_1E5A9A084(v0[5], v0[4], type metadata accessor for AccountState);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EC0, &qword_1E5AD3A88);
  *v3 = v0;
  v3[1] = sub_1E5A993D8;
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5A993D8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5A99530, v5, v4);
}

uint64_t sub_1E5A99530()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  sub_1E5A9A0EC(v3, type metadata accessor for AccountState);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5A995C4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_1E5A9963C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5ACFD78();
  v2[3] = sub_1E5ACFD68();
  v4 = *(a2 + 56);
  v8 = (*(a2 + 48) + **(a2 + 48));
  v5 = *(*(a2 + 48) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5A99744;

  return v8();
}

uint64_t sub_1E5A99744()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5ACFD48();
  if (v2)
  {
    v8 = sub_1E5A998A0;
  }

  else
  {
    v8 = sub_1E5A9628C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5A998A0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E5A99904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A9963C(a1, v1 + 16);
}

uint64_t sub_1E5A999DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A99A40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A96520;

  return sub_1E5A99018(a1, (v1 + 16));
}

uint64_t sub_1E5A99AD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A97E5C(a1, v1 + 16);
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1E5A99BC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5A9A14C;

  return sub_1E5A98754(a1, v1 + 16);
}

unint64_t sub_1E5A99CEC()
{
  result = qword_1ED026EA8;
  if (!qword_1ED026EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EA8);
  }

  return result;
}

uint64_t sub_1E5A99D88(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5A99DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E5A99E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignOutFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignOutFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5A99FE0()
{
  result = qword_1ED026EB8;
  if (!qword_1ED026EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EB8);
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

uint64_t sub_1E5A9A084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A9A0EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5A9A188(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v2, v3, v4, v7, WitnessTable);
}

uint64_t sub_1E5A9A204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a1;
  v18[5] = a2;
  sub_1E5ACFA78();
  swift_getWitnessTable();
  result = sub_1E5ACF0E8();
  *a9 = result;
  *(a9 + 8) = v20;
  *(a9 + 16) = v21 & 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  return result;
}

uint64_t HeadlessFeatureViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a1;
  v39 = a3;
  swift_getWitnessTable();
  sub_1E5ACF358();
  v34 = sub_1E5ACF1E8();
  v38 = *(v34 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - v6;
  v7 = sub_1E5ACF1E8();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v31 - v11;
  v12 = v3[1];
  v45 = *v3;
  v46 = v12;
  v47 = v3[2];
  v48 = *(v3 + 6);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v16 = v3[1];
  *(v13 + 32) = *v3;
  *(v13 + 48) = v16;
  *(v13 + 64) = v3[2];
  *(v13 + 80) = *(v3 + 6);
  v17 = *(*(a2 - 8) + 16);
  v17(v44, &v45, a2);
  WitnessTable = swift_getWitnessTable();
  v19 = v32;
  sub_1E5ACF668();

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v15;
  v21 = v46;
  *(v20 + 32) = v45;
  *(v20 + 48) = v21;
  *(v20 + 64) = v47;
  *(v20 + 80) = v48;
  v17(v44, &v45, a2);
  v22 = MEMORY[0x1E69805D0];
  v42 = WitnessTable;
  v43 = MEMORY[0x1E69805D0];
  v23 = v34;
  v24 = swift_getWitnessTable();
  v25 = v33;
  sub_1E5ACF5C8();

  (*(v38 + 8))(v19, v23);
  v40 = v24;
  v41 = v22;
  swift_getWitnessTable();
  v26 = v37;
  v27 = *(v37 + 16);
  v28 = v36;
  v27(v36, v25, v7);
  v29 = *(v26 + 8);
  v29(v25, v7);
  v27(v39, v28, v7);
  return (v29)(v28, v7);
}

Swift::Void __swiftcall HeadlessFeatureViewModifier.onAppeared()()
{
  v2 = *(v1 + 3);
  if (v2)
  {
    v7 = *v1;
    v8 = *(v1 + 16);
    v9 = *(v1 + 3);
    v10 = v1[2];
    v11 = *(v1 + 6);
    v3 = sub_1E5A9A188(v0);
    v2(v3, v4, v5, v6);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1E5A9A6F8();
  if (*(v0 + 56))
  {
    v4 = *(v0 + 64);
  }

  if (*(v0 + 72))
  {
    v5 = *(v0 + 80);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5A9A808(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  v5 = type metadata accessor for HeadlessFeatureViewModifier();
  return a1(v5);
}

Swift::Void __swiftcall HeadlessFeatureViewModifier.onDisappeared()()
{
  v2 = *(v1 + 5);
  if (v2)
  {
    v10 = *v1;
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v13 = *(v1 + 5);
    v14 = *(v1 + 6);
    v3 = sub_1E5A9A188(v0);
    v2(v3, v4, v5, v6, v7, v8, v9);
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5A9A970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E5A9A9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5A9AA2C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1E5A9AA84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5ACF3D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5ACF3E8();
  sub_1E5A9ABB0();
  sub_1E5A9AC08();
  sub_1E5ACF598();
  (*(v3 + 8))(v6, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EE8, &qword_1E5AD3C70);
  v8 = (a1 + *(result + 36));
  *v8 = sub_1E5A80070;
  v8[1] = 0;
  return result;
}

unint64_t sub_1E5A9ABB0()
{
  result = qword_1ED026ED8;
  if (!qword_1ED026ED8)
  {
    sub_1E5ACF3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026ED8);
  }

  return result;
}

unint64_t sub_1E5A9AC08()
{
  result = qword_1ED026EE0;
  if (!qword_1ED026EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EE0);
  }

  return result;
}

unint64_t sub_1E5A9AC5C()
{
  result = qword_1ED026EF0;
  if (!qword_1ED026EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026EE8, &qword_1E5AD3C70);
    sub_1E5ACF3D8();
    sub_1E5A9ABB0();
    sub_1E5A9AC08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026EF0);
  }

  return result;
}

uint64_t sub_1E5A9AD40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E5A9AD9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5A9AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a1;
  v44 = a6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026EF8, &qword_1E5AD3D78);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v38 - v11;
  v41 = a4 & 1;
  LOBYTE(v63[0]) = a4;
  *(&v63[0] + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  LODWORD(v40) = v57;
  v13 = sub_1E5ACF8A8();
  v15 = v14;
  v42 = a3;
  v16 = a2;
  sub_1E5A9B234(v53);
  v59 = v54;
  v60 = v55;
  v61 = v56;
  v57 = v53[0];
  v58 = v53[1];
  *&v62 = v13;
  *(&v62 + 1) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F08, &qword_1E5AD3D88);
  (*(*(v17 - 8) + 16))(v12, v39, v17);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F10, &qword_1E5AD3D90) + 36)];
  v19 = v60;
  v20 = v61;
  v21 = v58;
  *(v18 + 2) = v59;
  *(v18 + 3) = v19;
  v22 = v62;
  *(v18 + 4) = v20;
  *(v18 + 5) = v22;
  v23 = v56;
  *v18 = v57;
  *(v18 + 1) = v21;
  v63[2] = v54;
  v63[3] = v55;
  v63[4] = v23;
  v63[0] = v53[0];
  v63[1] = v53[1];
  v64 = v13;
  v65 = v15;
  sub_1E5A9B464(&v57, &v46, &qword_1ED026F18, &qword_1E5AD3D98);
  sub_1E5A9B8E8(v63, &qword_1ED026F18, &qword_1E5AD3D98);
  v24 = sub_1E5ACF8A8();
  v26 = v25;
  LOBYTE(v46) = a4;
  *&v47 = a5;
  sub_1E5ACF798();
  if (LOBYTE(v53[0]) == 1)
  {
    sub_1E5ACF6A8();
    v27 = sub_1E5ACF6D8();
  }

  else
  {
    v27 = sub_1E5ACF6B8();
  }

  if (v40)
  {
    v28 = 1.16;
  }

  else
  {
    v28 = 1.0;
  }

  v40 = xmmword_1E5AD3C90;
  *(v53 + 8) = xmmword_1E5AD3C90;
  *&v53[0] = v27;
  *(&v53[1] + 1) = 0x4022000000000000;
  *&v54 = sub_1E5A9B978;
  *(&v54 + 1) = 0;
  *&v55 = v24;
  *(&v55 + 1) = v26;
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F20, &qword_1E5AD3DA0) + 36)];
  v30 = v53[1];
  *v29 = v53[0];
  *(v29 + 1) = v30;
  v31 = v55;
  *(v29 + 2) = v54;
  *(v29 + 3) = v31;
  v46 = v27;
  v47 = v40;
  v48 = 0x4022000000000000;
  v49 = sub_1E5A9B978;
  v50 = 0;
  v51 = v24;
  v52 = v26;
  sub_1E5A9B464(v53, v45, &qword_1ED026F28, &qword_1E5AD3DA8);
  sub_1E5A9B8E8(&v46, &qword_1ED026F28, &qword_1E5AD3DA8);
  sub_1E5ACF928();
  v32 = &v12[*(v43 + 36)];
  *v32 = v28;
  *(v32 + 1) = v28;
  *(v32 + 2) = v33;
  *(v32 + 3) = v34;
  v35 = v42 & 1;
  v45[0] = sub_1E5A9B4CC(v16, v42 & 1) & 1;
  v36 = swift_allocObject();
  *(v36 + 16) = v16;
  *(v36 + 24) = v35;
  *(v36 + 32) = v41;
  *(v36 + 40) = a5;
  sub_1E5A9B6B4(v16, v35);
  sub_1E5A9B6C0();

  sub_1E5ACF688();

  return sub_1E5A9B8E8(v12, &qword_1ED026EF8, &qword_1E5AD3D78);
}

uint64_t sub_1E5A9B234@<X0>(uint64_t a1@<X8>)
{
  sub_1E5ACF118();
  v2 = sub_1E5ACF6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  result = sub_1E5ACF798();
  v4 = 1.0;
  if (!v5)
  {
    v4 = 0.0;
  }

  *a1 = 0xC004000000000000;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v2;
  *(a1 + 56) = v4;
  *(a1 + 64) = sub_1E5A9B978;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1E5A9B334()
{
  sub_1E5ACF8B8();
  sub_1E5ACF198();
}

uint64_t sub_1E5A9B3D0(uint64_t a1, char a2)
{
  sub_1E5A9B4CC(a1, a2 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  return sub_1E5ACF7A8();
}

uint64_t sub_1E5A9B464(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5A9B4CC(uint64_t a1, char a2)
{
  v4 = sub_1E5ACF258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v9 = sub_1E5ACFF18();
    v10 = sub_1E5ACF4D8();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E5AA2334(1819242306, 0xE400000000000000, &v14);
      _os_log_impl(&dword_1E5A79000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E6935190](v12, -1, -1);
      MEMORY[0x1E6935190](v11, -1, -1);
    }

    sub_1E5ACF248();
    swift_getAtKeyPath();
    sub_1E5A9B68C(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v15;
  }

  return a1 & 1;
}

uint64_t sub_1E5A9B68C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5A9B698()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1E5A9B334();
}

uint64_t sub_1E5A9B6B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E5A9B6C0()
{
  result = qword_1ED026F30;
  if (!qword_1ED026F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026EF8, &qword_1E5AD3D78);
    sub_1E5A9B74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F30);
  }

  return result;
}

unint64_t sub_1E5A9B74C()
{
  result = qword_1ED026F38;
  if (!qword_1ED026F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026F20, &qword_1E5AD3DA0);
    sub_1E5A9B804();
    sub_1E5A8CEF0(&qword_1ED026F58, &qword_1ED026F28, &qword_1E5AD3DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F38);
  }

  return result;
}

unint64_t sub_1E5A9B804()
{
  result = qword_1ED026F40;
  if (!qword_1ED026F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026F10, &qword_1E5AD3D90);
    sub_1E5A8CEF0(&qword_1ED026F48, &qword_1ED026F08, &qword_1E5AD3D88);
    sub_1E5A8CEF0(&qword_1ED026F50, &qword_1ED026F18, &qword_1E5AD3D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F40);
  }

  return result;
}

uint64_t sub_1E5A9B8E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5A9B948()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1E5A9B3D0(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1E5A9B990(uint64_t a1)
{
  v2 = sub_1E5A9C04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9B9CC(uint64_t a1)
{
  v2 = sub_1E5A9C04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BA08()
{
  v1 = 1701273968;
  if (*v0 != 1)
  {
    v1 = 0x686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1E5A9BA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A9CA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A9BA7C(uint64_t a1)
{
  v2 = sub_1E5A9BF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BAB8(uint64_t a1)
{
  v2 = sub_1E5A9BF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BAF4(uint64_t a1)
{
  v2 = sub_1E5A9BFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BB30(uint64_t a1)
{
  v2 = sub_1E5A9BFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A9BB6C(uint64_t a1)
{
  v2 = sub_1E5A9BFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A9BBA8(uint64_t a1)
{
  v2 = sub_1E5A9BFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabBarItemKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F60, &qword_1E5AD3DB0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F68, &qword_1E5AD3DB8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F70, &qword_1E5AD3DC0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F78, &qword_1E5AD3DC8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A9BF50();
  sub_1E5AD03E8();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E5A9BFF8();
      v12 = v26;
      sub_1E5AD02B8();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E5A9BFA4();
      v12 = v29;
      sub_1E5AD02B8();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E5A9C04C();
    sub_1E5AD02B8();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E5A9BF50()
{
  result = qword_1ED026F80;
  if (!qword_1ED026F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F80);
  }

  return result;
}

unint64_t sub_1E5A9BFA4()
{
  result = qword_1ED026F88;
  if (!qword_1ED026F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F88);
  }

  return result;
}

unint64_t sub_1E5A9BFF8()
{
  result = qword_1ED026F90;
  if (!qword_1ED026F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F90);
  }

  return result;
}

unint64_t sub_1E5A9C04C()
{
  result = qword_1ED026F98;
  if (!qword_1ED026F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026F98);
  }

  return result;
}

uint64_t TabBarItemKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FA0, &qword_1E5AD3DD0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FA8, &qword_1E5AD3DD8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FB0, &qword_1E5AD3DE0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026FB8, &unk_1E5AD3DE8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E5A9BF50();
  v20 = v43;
  sub_1E5AD03D8();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E5AD0298();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E5A82BF4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E5AD00F8();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
      *v30 = &type metadata for TabBarItemKind;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E5A9BFF8();
          sub_1E5AD0228();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E5A9BFA4();
          v33 = v22;
          sub_1E5AD0228();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E5A9C04C();
        sub_1E5AD0228();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t TabBarItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

unint64_t sub_1E5A9C6B8()
{
  result = qword_1ED026FC0;
  if (!qword_1ED026FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FC0);
  }

  return result;
}

unint64_t sub_1E5A9C760()
{
  result = qword_1ED026FC8;
  if (!qword_1ED026FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FC8);
  }

  return result;
}

unint64_t sub_1E5A9C7B8()
{
  result = qword_1ED026FD0;
  if (!qword_1ED026FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FD0);
  }

  return result;
}

unint64_t sub_1E5A9C810()
{
  result = qword_1ED026FD8;
  if (!qword_1ED026FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FD8);
  }

  return result;
}

unint64_t sub_1E5A9C868()
{
  result = qword_1ED026FE0;
  if (!qword_1ED026FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FE0);
  }

  return result;
}

unint64_t sub_1E5A9C8C0()
{
  result = qword_1ED026FE8;
  if (!qword_1ED026FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FE8);
  }

  return result;
}

unint64_t sub_1E5A9C918()
{
  result = qword_1ED026FF0;
  if (!qword_1ED026FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FF0);
  }

  return result;
}

unint64_t sub_1E5A9C970()
{
  result = qword_1ED026FF8;
  if (!qword_1ED026FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026FF8);
  }

  return result;
}

unint64_t sub_1E5A9C9C8()
{
  result = qword_1ED027000;
  if (!qword_1ED027000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027000);
  }

  return result;
}

unint64_t sub_1E5A9CA20()
{
  result = qword_1ED027008;
  if (!qword_1ED027008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027008);
  }

  return result;
}

uint64_t sub_1E5A9CA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id AppearanceHandlerAttaching<>.onAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E5A9CD5C(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t View.attach<A>(store:onAppear:onDisappear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1E5A972BC(a3);
  sub_1E5A972BC(a5);
  sub_1E5A9A204(a1, a2, a3, a4, a5, a6, a8, a10, &v26);
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v17 = type metadata accessor for HeadlessFeatureViewModifier();
  MEMORY[0x1E6933D20](&v22, a7, v17, a9);
  v18 = v24;
  v19 = v25;
  sub_1E5A9A6F8();
  sub_1E5A9CE98(v18);
  return sub_1E5A9CE98(v19);
}

id sub_1E5A9CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *v5;
  v8 = sub_1E5A9CD5C(a1, a2, a3, a4, &protocol witness table for DynamicContentContainerViewController<A, B>);
  *a5 = v8;

  return v8;
}

uint64_t sub_1E5A9CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 24);

  v12 = v11(v21, a3, a5);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1E5A96B30(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1E5A96B30((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  v19 = &v15[2 * v18];
  v19[4] = sub_1E5A9CED8;
  v19[5] = v10;
  v12(v21, 0);
  return v5;
}

uint64_t sub_1E5A9CE98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5A9CED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1E5A9CF5C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VibrantSegmentedControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1E5A9CFB0(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for VibrantSegmentedControl();
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  if (v10 != [v11 *a4])
  {
    sub_1E5A9DB14([v11 state]);
  }
}

id sub_1E5A9D05C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for VibrantSegmentedControl();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setApportionsSegmentWidthsByContent_];
  v10 = [objc_opt_self() systemFillColor];
  [v9 setSelectedSegmentTintColor_];

  [v9 setTransparentBackground_];
  [v9 _setAlwaysEmitValueChanged_];

  return v9;
}

void sub_1E5A9D1F0(id a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 titleTextAttributesForState_];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  type metadata accessor for Key(0);
  sub_1E5A9E124();
  v10 = sub_1E5ACFAF8();

  if (!*(v10 + 16) || (v11 = sub_1E5AAD618(*MEMORY[0x1E69DB648]), (v12 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1E5A9E0C8(*(v10 + 56) + 32 * v11, v17);

  sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = a1;
    goto LABEL_10;
  }

  if (a1)
  {
    v13 = [objc_opt_self() configurationWithFont_];
    a1 = [a1 imageWithConfiguration_];
  }

LABEL_10:
  v16.receiver = v4;
  v16.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v16, sel_insertSegmentWithImage_atIndex_animated_, a1, a2, a3 & 1);
}

void sub_1E5A9D420(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 titleTextAttributesForState_];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    v8 = sub_1E5ACFAF8();

    if (a1)
    {
      a1 = sub_1E5A9DF40(v8);
    }
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v10, sel_setImage_forSegmentAtIndex_, a1, a2);
}

void sub_1E5A9D67C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
  sub_1E5A9E17C();
  sub_1E5ACFE28();
  a1[OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment] = a5;
  v10 = a4;
  v11 = a1;
  v12 = sub_1E5ACFE18();

  v13.receiver = v11;
  v13.super_class = type metadata accessor for VibrantSegmentedControl();
  objc_msgSendSuper2(&v13, *a6, v12, v10);
}

void sub_1E5A9D764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A9D8D8(a1);
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 locationInView_];
    v19.x = v14;
    v19.y = v15;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    if (!CGRectContainsPoint(v20, v19))
    {
      *(v2 + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
    }

    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    sub_1E5A9E17C();
    v16 = sub_1E5ACFE18();
    v17.receiver = v2;
    v17.super_class = type metadata accessor for VibrantSegmentedControl();
    objc_msgSendSuper2(&v17, sel_touchesEnded_withEvent_, v16, a2);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    sub_1E5A9E17C();
    v16 = sub_1E5ACFE18();
    v18.receiver = v2;
    v18.super_class = type metadata accessor for VibrantSegmentedControl();
    objc_msgSendSuper2(&v18, sel_touchesEnded_withEvent_, v16, a2);
  }
}

uint64_t sub_1E5A9D8D8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1E5AD0028();
    v5 = v4;
    v6 = sub_1E5AD0078();
    v8 = v7;
    v9 = MEMORY[0x1E6934700](v3, v5, v6, v7);
    sub_1E5A9E1E4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1E5A9E1E4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1E5AD0018();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1E5A9E1F0(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1E5A9E1E4(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1E5A9DB14(id a1)
{
  v2 = v1;
  result = [v1 titleTextAttributesForState_];
  if (result)
  {
    v5 = result;
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    v6 = MEMORY[0x1E69E7CA0];
    v7 = sub_1E5ACFAF8();

    if ([v2 state] != a1)
    {
      goto LABEL_14;
    }

    result = [v2 numberOfSegments];
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    if (result)
    {
      v9 = 0;
      v10 = &off_1E8788000;
      v11 = *MEMORY[0x1E69DB648];
      do
      {
        v13 = [v2 v10[274]];
        if (v13)
        {
          v14 = v13;
          if (*(v7 + 16) && (v15 = sub_1E5AAD618(v11), (v16 & 1) != 0) && (sub_1E5A9E0C8(*(v7 + 56) + 32 * v15, v21), sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878), swift_dynamicCast()))
          {
            v17 = v11;
            v18 = v6;
            v19 = [objc_opt_self() configurationWithFont_];
            v12 = [v14 imageWithConfiguration_];

            v6 = v18;
            v11 = v17;
            v10 = &off_1E8788000;
          }

          else
          {
            v12 = v14;
          }

          [v2 setImage:v12 forSegmentAtIndex:v9];
        }

        ++v9;
      }

      while (v8 != v9);
    }

    else
    {
LABEL_14:
    }
  }

  return result;
}

void sub_1E5A9DD68(uint64_t a1, id a2)
{
  v3 = v2;
  if ([v3 state] == a2)
  {
    v5 = [v3 numberOfSegments];
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = v5;
      if (v5)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E69DB648];
        v9 = &qword_1ED027018;
        do
        {
          v11 = [v3 imageForSegmentAtIndex_];
          if (v11)
          {
            v12 = v11;
            if (a1 && *(a1 + 16) && (v13 = sub_1E5AAD618(v8), (v14 & 1) != 0) && (sub_1E5A9E0C8(*(a1 + 56) + 32 * v13, v20), sub_1E5A7C10C(0, v9, 0x1E69DB878), swift_dynamicCast()))
            {
              v18 = v19;
              v15 = v9;
              v16 = v8;
              v17 = [objc_opt_self() configurationWithFont_];
              v10 = [v12 imageWithConfiguration_];

              v8 = v16;
              v9 = v15;
            }

            else
            {
              v10 = v12;
            }

            [v3 setImage:v10 forSegmentAtIndex:{v7, v18}];
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }
}

id sub_1E5A9DF40(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    return v2;
  }

  if (!*(a1 + 16))
  {
    return v2;
  }

  v4 = sub_1E5AAD618(*MEMORY[0x1E69DB648]);
  if ((v5 & 1) == 0)
  {
    return v2;
  }

  sub_1E5A9E0C8(*(a1 + 56) + 32 * v4, v10);
  sub_1E5A7C10C(0, &qword_1ED027018, 0x1E69DB878);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  v6 = [objc_opt_self() configurationWithFont_];
  v7 = [v2 imageWithConfiguration_];

  return v7;
}

id sub_1E5A9E070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VibrantSegmentedControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5A9E0C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E5A9E124()
{
  result = qword_1ED0265F8;
  if (!qword_1ED0265F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0265F8);
  }

  return result;
}

unint64_t sub_1E5A9E17C()
{
  result = qword_1ED027028;
  if (!qword_1ED027028)
  {
    sub_1E5A7C10C(255, &qword_1ED027020, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027028);
  }

  return result;
}

uint64_t sub_1E5A9E1E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1E5A9E1F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E6934730](a1, a2, v7);
      sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
    if (sub_1E5AD0048() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1E5AD0058();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1E5ACFFA8();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1E5ACFFB8();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_1E5A9E49C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1E5ACFE88();
  if (!v26)
  {
    return sub_1E5ACFCA8();
  }

  v48 = v26;
  v52 = sub_1E5AD0148();
  v39 = sub_1E5AD0158();
  sub_1E5AD0128();
  result = sub_1E5ACFE68();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1E5ACFEE8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1E5AD0138();
      result = sub_1E5ACFE98();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E5A9E8BC(void *a1)
{
  v1 = a1;
  v2 = SidebarTabController.keyCommands.getter();

  if (v2)
  {
    sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
    v3 = sub_1E5ACFC68();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SidebarTabController.keyCommands.getter()
{
  ObjectType = swift_getObjectType();
  v2 = SidebarTabController.selectedViewController.getter();
  if (!v2)
  {
    v9.receiver = v0;
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_keyCommands);
    if (v7)
    {
      v3 = v7;
      sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
      v6 = sub_1E5ACFC78();
      goto LABEL_6;
    }

    return 0;
  }

  v3 = v2;
  v4 = [v2 keyCommands];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
  v6 = sub_1E5ACFC78();

LABEL_6:
  return v6;
}

uint64_t SidebarTabController.selectedViewController.getter()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = v1 + qword_1ED027038;
  swift_beginAccess();
  if (v3[8])
  {
    return 0;
  }

  v4 = *v3;
  v5 = qword_1ED027040;
  swift_beginAccess();
  v13 = *(v1 + v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  type metadata accessor for TabBarItemDescriptor();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) == 0)
  {
    return 0;
  }

  v8 = qword_1ED027050;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E69347A0](v4);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * v4 + 32);
LABEL_7:
    v12 = v11;
    swift_endAccess();
    return v12;
  }

  __break(1u);
  return result;
}

id sub_1E5A9EBE0(void *a1)
{
  v1 = a1;
  SidebarTabController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED026D30, &qword_1E5AD43E0);
  v2 = sub_1E5ACFC68();

  return v2;
}

uint64_t SidebarTabController.preferredFocusEnvironments.getter()
{
  v5 = SidebarTabController.selectedViewController.getter();
  v0 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v1 = swift_unknownObjectRetain();
    MEMORY[0x1E6934320](v1);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E5ACFC98();
    }

    sub_1E5ACFCC8();
    v0 = v4;
  }

  sub_1E5A8DF58(&v5);
  return v0;
}

uint64_t SidebarTabController.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = v2 + qword_1ED027038;
  swift_beginAccess();
  if (v5[8] == 1)
  {
    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
  }

  else
  {
    v8 = *v5;
    v9 = qword_1ED027040;
    swift_beginAccess();
    v16 = *(v2 + v9);
    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    v12 = type metadata accessor for TabBarItemDescriptor();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
    if (sub_1E5ACFEF8())
    {
      swift_beginAccess();
      v13 = *(v2 + v9);
      sub_1E5ACFD38();
      swift_endAccess();
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }
  }

  v15 = type metadata accessor for TabBarItemDescriptor();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t SidebarTabController.selectedIndex.getter()
{
  v1 = (v0 + qword_1ED027038);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

char *SidebarTabController.init(store:viewBuilder:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = v4 + qword_1ED027038;
  *v9 = 0;
  v9[8] = 1;
  v10 = qword_1ED027040;
  v11 = *((v8 & v7) + 0x50);
  v12 = *((v8 & v7) + 0x58);
  type metadata accessor for TabBarItemDescriptor();
  *(v4 + v10) = sub_1E5ACFCA8();
  *(v4 + qword_1ED027050) = MEMORY[0x1E69E7CC0];
  type metadata accessor for TabBarFeature();
  swift_getWitnessTable();
  sub_1E5ACF9D8();
  a1();
  *(v4 + qword_1ED027060) = sub_1E5ACF9B8();
  v13 = (v4 + qword_1ED027068);
  *v13 = a3;
  v13[1] = a4;
  v29.receiver = v4;
  v29.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v15 = qword_1ED027060;
  v16 = *&v14[qword_1ED027060];
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v17;
  sub_1E5ACFD08();
  v19 = v14;

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACF998();

  v20 = *&v14[v15];
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = v21;

  sub_1E5ACF998();

  v23 = *&v14[v15];
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = swift_allocObject();
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v24;
  sub_1E5ACF998();

  return v19;
}

uint64_t sub_1E5A9F3D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & v4) + 0x58);
  v7 = type metadata accessor for TabBarItemDescriptor();
  v8 = sub_1E5ACFFD8();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v74 = v63 - v11;
  v75 = *(v7 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = v63 - v13;
  v14 = sub_1E5AD01E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v63 - v20;
  result = [v2 isViewLoaded];
  if (result)
  {
    v64 = v8;
    v70 = v5;
    v71 = v6;
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v23 = sub_1E5ACF038();
    v24 = __swift_project_value_buffer(v23, qword_1EE300080);
    v63[1] = "ibrantSegmentedControl.swift";
    v63[2] = v24;
    sub_1E5ACF008();
    v77 = a1;
    v25 = qword_1ED027040;
    v72 = qword_1ED027040;
    swift_beginAccess();
    v76 = *&v2[v25];
    v26 = sub_1E5ACFD08();
    swift_getWitnessTable();
    v63[3] = swift_getWitnessTable();
    sub_1E5ACFB68();
    WitnessTable = swift_getWitnessTable();
    sub_1E5AD01F8();
    v73 = a1;
    v27 = *(v15 + 8);
    v27(v19, v14);
    v28 = sub_1E5AD01C8();
    v29 = (v27)(v21, v14);
    v67 = v63;
    v77 = v28;
    MEMORY[0x1EEE9AC00](v29);
    v30 = v70;
    v31 = v71;
    v63[-2] = v70;
    v63[-1] = v31;
    sub_1E5AD01D8();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    v32 = sub_1E5ACFC38();

    v77 = v32;
    v67 = swift_getWitnessTable();
    v33 = WitnessTable;
    v34 = sub_1E5ACFE48();
    v65 = v63;
    v77 = *&v2[v72];
    MEMORY[0x1EEE9AC00](v77);
    v63[-4] = v30;
    v63[-3] = v31;
    v63[-2] = v34;

    swift_getWitnessTable();
    v35 = sub_1E5AD0118();

    v76 = v35;
    v36 = sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
    swift_getTupleTypeMetadata2();
    v37 = sub_1E5ACFCA8();
    v38 = sub_1E5AA2AC0(v37, v7, v36, v33);

    v79 = v38;
    MEMORY[0x1EEE9AC00](v39);
    v63[-2] = v2;
    sub_1E5ACFB08();
    sub_1E5ACFC48();

    v41 = v77;
    v77 = v73;
    MEMORY[0x1EEE9AC00](v40);
    v63[-2] = v41;
    v63[-1] = v2;
    v42 = swift_getWitnessTable();
    v44 = sub_1E5A9E49C(sub_1E5AA32F8, &v63[-4], v26, v36, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);

    v45 = v74;
    SidebarTabController.selectedItem.getter(v74);
    v46 = v75;
    if ((*(v75 + 48))(v45, 1, v7) == 1)
    {
      (*(v68 + 8))(v45, v64);
      v47 = v73;
    }

    else
    {
      v48 = v69;
      (*(v46 + 32))(v69, v45, v7);
      v47 = v73;
      v76 = v73;
      sub_1E5ACFED8();
      if (v78 != 1)
      {
        sub_1E5AA0588(v77);
        (*(v46 + 8))(v48, v7);
        goto LABEL_24;
      }

      (*(v46 + 8))(v48, v7);
    }

    v49 = SidebarTabController.selectedViewController.getter();
    v50 = v71;
    if (v49)
    {
      v51 = v49;
      sub_1E5ACF008();
      [v51 willMoveToParentViewController_];
      result = [v51 view];
      if (!result)
      {
        goto LABEL_32;
      }

      v52 = result;
      [result removeFromSuperview];

      [v51 removeFromParentViewController];
    }

    v53 = &v2[qword_1ED027038];
    swift_beginAccess();
    v54 = v70;
    if ((v53[8] & 1) != 0 || (v55 = *v53, result = sub_1E5AA2EC4(v55, v47, v70, v50), (result & 1) == 0))
    {
      v55 = v2;
      sub_1E5AA0588(0);
      if (!sub_1E5AA2EC4(0, v47, v54, v50))
      {
LABEL_24:
        v59 = *&v2[v72];
        *&v2[v72] = v47;

        v60 = qword_1ED027050;
        swift_beginAccess();
        v61 = *&v2[v60];
        *&v2[v60] = v44;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v62 = 0;
LABEL_29:
        v57 = MEMORY[0x1E69347A0](v62, v44);
        goto LABEL_22;
      }

      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v56 = *(v44 + 32);
        goto LABEL_21;
      }

      __break(1u);
    }

    else if ((v44 & 0xC000000000000001) == 0)
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v55 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v56 = *(v44 + 8 * v55 + 32);
LABEL_21:
        v57 = v56;
LABEL_22:
        v58 = v57;
        sub_1E5AA18A4(v58, 0);

        goto LABEL_24;
      }

      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    v62 = v55;
    goto LABEL_29;
  }

  return result;
}

void sub_1E5A9FDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(v7);
  }
}

uint64_t sub_1E5A9FE18(uint64_t a1)
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5ACF038();
  __swift_project_value_buffer(v3, qword_1EE300080);
  sub_1E5ACF008();
  if ([v1 isViewLoaded])
  {
    v4 = &v1[qword_1ED027038];
    swift_beginAccess();
    return sub_1E5AA0664(a1, (v4[8] & 1) == 0, 0);
  }

  else
  {

    return sub_1E5AA0588(a1);
  }
}

void sub_1E5A9FF48(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E5A9FFA4(v2);
  }
}

uint64_t sub_1E5A9FFA4(uint64_t result)
{
  if (result)
  {
    result = [v1 isViewLoaded];
    if (result)
    {
      v2 = v1;
      v3 = SidebarTabController.selectedViewController.getter();
      if (v3)
      {
        v4 = v3;
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          v7 = [v5 viewControllers];
          sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
          v8 = sub_1E5ACFC78();

          v9 = v8 >> 62 ? sub_1E5AD0178() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v9 != 1)
          {

            if (qword_1EE2FCA80 != -1)
            {
              swift_once();
            }

            v10 = sub_1E5ACF038();
            __swift_project_value_buffer(v10, qword_1EE300080);
            sub_1E5ACF008();
            v11 = [v6 topViewController];
            if (v11)
            {
              v12 = v11;
              v13 = [v11 contentScrollViewForEdge_];
              if (v13)
              {
                v14 = v13;
                [v13 _scrollToTopIfPossible_];

                v4 = v14;
              }
            }
          }
        }
      }

      return sub_1E5AA0A94(v2);
    }
  }

  return result;
}

Swift::Void __swiftcall SidebarTabController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5ACF038();
  __swift_project_value_buffer(v1, qword_1EE300080);
  sub_1E5ACF008();
  v2 = *&v0[qword_1ED027060];
  sub_1E5ACF988();
}

void sub_1E5AA02BC(void *a1)
{
  v1 = a1;
  SidebarTabController.viewDidLoad()();
}

Swift::Void __swiftcall SidebarTabController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = type metadata accessor for TabBarAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1);
  v11 = *(v1 + qword_1ED027060);
  sub_1E5ACF9A8();
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  (*(v7 + 8))(v10, v6);
}

void sub_1E5AA0458(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SidebarTabController.viewWillAppear(_:)(a3);
}

void __swiftcall SidebarTabController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  ObjectType = swift_getObjectType();
  v5 = SidebarTabController.selectedViewController.getter();
  if (v5)
  {
    v6 = v5;
    [v5 contentScrollViewForEdge_];
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = ObjectType;
    v7 = [(UIScrollView_optional *)&v8 contentScrollViewForEdge:a2];
  }
}

id sub_1E5AA053C(void *a1, uint64_t a2, NSDirectionalRectEdge a3)
{
  v4 = a1;
  SidebarTabController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_1E5AA0588(uint64_t a1)
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5ACF038();
  __swift_project_value_buffer(v3, qword_1EE300080);
  sub_1E5ACF008();
  v4 = v1 + qword_1ED027038;
  result = swift_beginAccess();
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1E5AA0664(uint64_t a1, char a2, uint64_t (*a3)(id))
{
  v4 = v3;
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v8 = sub_1E5ACF038();
  __swift_project_value_buffer(v8, qword_1EE300080);
  sub_1E5ACF008();
  v9 = qword_1ED027040;
  swift_beginAccess();
  v10 = *(v3 + v9);
  v11 = *(v7 + 80);
  v12 = *(v7 + 88);
  type metadata accessor for TabBarItemDescriptor();

  v13 = sub_1E5ACFCD8();

  if (v13 > a1)
  {
    v14 = v3 + qword_1ED027038;
    result = swift_beginAccess();
    if ((v14[8] & 1) == 0 && *v14 == a1)
    {
      if (a3)
      {
        return a3(result);
      }

      return result;
    }

    swift_unknownObjectWeakInit();
    v22 = sub_1E5ACF018();
    v23 = sub_1E5ACFF28();
    v24 = os_log_type_enabled(v22, v23);
    if (a2)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35 = v26;
        *v25 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
        v27 = sub_1E5ACFFC8();
        v29 = sub_1E5AA2334(v27, v28, &v35);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2048;
        *(v25 + 14) = a1;
        v30 = "[SidebarTabController] Transitioning between item %s and %ld without custom animation";
LABEL_17:
        _os_log_impl(&dword_1E5A79000, v22, v23, v30, v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E6935190](v26, -1, -1);
        MEMORY[0x1E6935190](v25, -1, -1);
      }
    }

    else if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
      v31 = sub_1E5ACFFC8();
      v33 = sub_1E5AA2334(v31, v32, &v35);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2048;
      *(v25 + 14) = a1;
      v30 = "[SidebarTabController] Non-animated transition between item %s and %ld";
      goto LABEL_17;
    }

    sub_1E5AA2058(v36, a1, a3);
    return MEMORY[0x1E6935220](v36);
  }

  v16 = v3;
  v17 = sub_1E5ACF018();
  v18 = sub_1E5ACFF08();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = a1;
    *(v19 + 12) = 2048;
    v20 = *(v4 + v9);

    v21 = sub_1E5ACFCD8();

    *(v19 + 14) = v21;

    _os_log_impl(&dword_1E5A79000, v17, v18, "[SidebarTabController] Failed to select item at index out of bounds: %ld. Descriptor count: %ld", v19, 0x16u);
    MEMORY[0x1E6935190](v19, -1, -1);
  }

  else
  {

    v17 = v16;
  }

  return sub_1E5AA0588(a1);
}

uint64_t sub_1E5AA0A94(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1E5ACFA88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5ACFAA8();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
  v12 = sub_1E5ACFF58();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = *((v2 & v1) + 0x50);
  v14[3] = *((v2 & v1) + 0x58);
  v14[4] = v13;
  aBlock[4] = sub_1E5AA3278;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5AC4684;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  sub_1E5ACFA98();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5A94974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
  sub_1E5A8C710();
  sub_1E5AD0008();
  MEMORY[0x1E6934630](0, v11, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v18);
}

uint64_t sub_1E5AA0D80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for TabBarItemDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = sub_1E5AD01D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  (*(v14 + 16))(v20 - v12, a1, v10);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026C60, &unk_1E5AD3090);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = *(TupleTypeMetadata3 + 48);
  if (a1 == 1)
  {
    (*(v6 + 56))(a2, 1, 1, v5);
    return (*(v6 + 8))(&v13[v16], v5);
  }

  else
  {
    v20[1] = v2;
    v18 = v13[*(TupleTypeMetadata3 + 64) + 8];
    v19 = *(v6 + 32);
    v19(v9, &v13[v16], v5);
    if (v18 == 1)
    {
      v19(a2, v9, v5);
      return (*(v6 + 56))(a2, 0, 1, v5);
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      return (*(v6 + 56))(a2, 1, 1, v5);
    }
  }
}

BOOL sub_1E5AA100C(uint64_t a1)
{
  v2 = type metadata accessor for TabBarItemDescriptor();
  sub_1E5AD0328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  swift_allocObject();
  sub_1E5ACFC88();
  (*(v3 + 16))(v6, a1, v2);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_1E5ACFE78();

  return (v2 & 1) == 0;
}

uint64_t sub_1E5AA11D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x58);
  v6 = type metadata accessor for TabBarItemDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = qword_1ED027040;
  swift_beginAccess();
  v16 = *(a3 + v8);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1E5ACFED8();
  if ((v15 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(a3 + v8);
    sub_1E5ACFD38();
    swift_endAccess();
    v11 = qword_1ED027050;
    result = swift_beginAccess();
    v12 = *(a3 + v11);
    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 8 * v14 + 32);
LABEL_6:
        swift_endAccess();
        sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
        swift_getWitnessTable();
        sub_1E5ACFB08();
        return sub_1E5ACFB28();
      }

      __break(1u);
      return result;
    }

    MEMORY[0x1E69347A0]();
    goto LABEL_6;
  }

  return result;
}

void sub_1E5AA143C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v44 = a4;
  v47 = a2;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1E5ACEEE8();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v7 & v6) + 0x50);
  v13 = *((v7 & v6) + 0x58);
  v14 = type metadata accessor for TabBarItemDescriptor();
  sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
  swift_getWitnessTable();
  v15 = a1;
  sub_1E5ACFB18();
  v16 = v45;
  if (v45)
  {
    goto LABEL_12;
  }

  v17 = v13;
  v40 = v11;
  v41 = v8;
  v47 = v12;
  v18 = *(a3 + qword_1ED027068 + 8);
  v19 = *(v14 + 36);
  v42 = (*(a3 + qword_1ED027068))(v15 + v19);
  v39 = [v42 tabBarItem];
  if (!v39)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *(a3 + qword_1ED027060);
  v21 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v47;
  *(&v38 - 2) = v47;
  *(&v38 - 1) = v17;
  swift_getKeyPath();
  v23 = v40;
  sub_1E5ACFA48();

  v24 = *(v17 + 88);
  v38 = v19;
  v24(v23, v22, v17);
  v26 = v25;
  (*(v43 + 8))(v23, v41);
  if (v26)
  {
    v27 = sub_1E5ACFBA8();
  }

  else
  {
    v27 = 0;
  }

  v16 = v42;
  v28 = v39;
  [v39 setTitle_];

  v29 = v47;
  if (((*(v17 + 48))(v47, v17) & 1) == 0 || ((*(v17 + 80))(v29, v17), !v30))
  {
LABEL_10:
    v35 = [v16 tabBarItem];
    if (v35)
    {
      v36 = v35;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1E5AD00A8();
      MEMORY[0x1E69342D0](0xD000000000000013, 0x80000001E5ADFFC0);
      sub_1E5AD0338();
      v37 = sub_1E5ACFBA8();

      [v36 setAccessibilityIdentifier_];

LABEL_12:
      *v44 = v16;
      return;
    }

    goto LABEL_14;
  }

  v31 = [v16 tabBarItem];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1E5ACFBA8();

    v34 = [objc_opt_self() systemImageNamed_];

    [v32 setImage_];
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

id sub_1E5AA18A4(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v6 = sub_1E5ACF038();
  __swift_project_value_buffer(v6, qword_1EE300080);
  sub_1E5ACF008();
  [v2 addChildViewController_];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [v8 addSubview_];

  result = [a1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5AD2EC0;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = result;
  v13 = [result topAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v15 = [result topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = [result bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = result;
  v25 = [result leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  result = [a1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v11 + 56) = v32;
  sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
  v33 = sub_1E5ACFC68();

  [v30 activateConstraints_];

  [v3 setAdditionalSafeAreaInsets_];
  [a1 didMoveToParentViewController_];
  result = [a1 setNeedsFocusUpdate];
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_1E5AA1D84(uint64_t (*a1)(id))
{
  v2 = SidebarTabController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    sub_1E5AA2DAC(v2, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

void sub_1E5AA1E08(uint64_t (*a1)(id))
{
  v2 = SidebarTabController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    sub_1E5AA18A4(v2, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

id SidebarTabController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void SidebarTabController.init(nibName:bundle:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1E5AA3194();
}

void sub_1E5AA1F40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = a4;

  sub_1E5AA3194();
}

id SidebarTabController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5AA1FE8(uint64_t a1)
{
  v2 = *(a1 + qword_1ED027060);

  v3 = *(a1 + qword_1ED027068 + 8);

  v4 = *(a1 + qword_1ED027040);

  v5 = *(a1 + qword_1ED027050);
}

void sub_1E5AA2058(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E5AA1D84(0);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1E5AA0588(a2);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_1E5AA1E08(a3);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 view];

    if (v13)
    {
      [v13 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E5AA218C()
{
  v0 = type metadata accessor for TabBarAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + qword_1ED027060);
    v7 = result;

    sub_1E5ACF9A8();

    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_1E5AA2328(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1E5A9FF48(a1, a2);
}

uint64_t sub_1E5AA2334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5AA2400(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5A9E0C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5AA2400(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5AA250C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E5AD0108();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1E5AA250C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5AA2558(a1, a2);
  sub_1E5AA2688(&unk_1F5F68228);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E5AA2558(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5AA2774(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5AD0108();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5ACFC18();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5AA2774(v10, 0);
        result = sub_1E5AD0098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5AA2688(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E5AA27E8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5AA2774(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED0270F8, &unk_1E5AD43E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5AA27E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED0270F8, &unk_1E5AD43E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1E5AA28DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1E5ACFB38();

  return sub_1E5AA2938(a1, v9, a2, a3);
}

unint64_t sub_1E5AA2938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1E5ACFB78();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1E5AA2AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1E5ACFCD8())
  {
    sub_1E5AD01B8();
    v13 = sub_1E5AD01A8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E5ACFCD8();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1E5ACFCB8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E5AD00C8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E5AA28DC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

id sub_1E5AA2DAC(void *a1, uint64_t (*a2)(id))
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v4 = sub_1E5ACF038();
  __swift_project_value_buffer(v4, qword_1EE300080);
  sub_1E5ACF008();
  [a1 willMoveToParentViewController_];
  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    result = [a1 removeFromParentViewController];
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5AA2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TabBarItemDescriptor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v20 = a2;
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  v18 = v19;
  v17[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) != 0 && (sub_1E5ACFD38(), v13 = *v12, (*(v9 + 8))(v12, v8), (v13 & 1) == 0))
  {
    sub_1E5ACFD38();
    v15 = *(v8 + 36);
    v14 = TabBarItemProtocol.isSelectable.getter(a3, a4);
    (*(*(a3 - 8) + 8))(&v12[v15], a3);
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_1E5AA30B0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = v0 + qword_1ED027038;
  *v3 = 0;
  v3[8] = 1;
  v4 = qword_1ED027040;
  v5 = *((v2 & v1) + 0x50);
  v6 = *((v2 & v1) + 0x58);
  type metadata accessor for TabBarItemDescriptor();
  *(v0 + v4) = sub_1E5ACFCA8();
  *(v0 + qword_1ED027050) = MEMORY[0x1E69E7CC0];
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5AA3278()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E5AA218C();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5AA329C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1E5AA0D80(a1, a2);
}

BOOL sub_1E5AA32B8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E5AA100C(a1);
}

uint64_t sub_1E5AA3318(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001E5AE07D0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74497463656C6573 && a2 == 0xEA00000000006D65 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E497463656C6573 && a2 == 0xEB00000000786564 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E5AE07F0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E5AD0348();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1E5AA34E8(unsigned __int8 a1)
{
  v1 = 0x74497463656C6573;
  v2 = 0x6E497463656C6573;
  v3 = 0xD000000000000024;
  if (a1 != 3)
  {
    v3 = 0x6570704177656976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1E5AA35A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5AD0348();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

unint64_t sub_1E5AA3614(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AA34E8(*v1);
}

uint64_t sub_1E5AA3620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AA3318(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5AA3650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA36A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA36F8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5A80E1C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E5AA3728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA377C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA37E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA383C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA3890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA38E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA3938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA398C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA39E0@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_1E5AA3A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA3A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarAction.encode(to:)(void *a1, uint64_t a2)
{
  v84 = a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v6 = type metadata accessor for TabBarAction.ViewAppearedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v74 = v6;
  v7 = sub_1E5AD0318();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v57 - v9;
  v10 = type metadata accessor for TabBarAction.ScrolledToSelectedIndexContentOffsetCodingKeys();
  v11 = swift_getWitnessTable();
  v69 = v10;
  v67 = v11;
  v68 = sub_1E5AD0318();
  v66 = *(v68 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v57 - v13;
  v14 = type metadata accessor for TabBarAction.SelectIndexCodingKeys();
  v15 = swift_getWitnessTable();
  v62 = v14;
  v60 = v15;
  v64 = sub_1E5AD0318();
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v57 - v17;
  v18 = type metadata accessor for TabBarAction.SelectItemCodingKeys();
  v81 = swift_getWitnessTable();
  v82 = v18;
  v58 = sub_1E5AD0318();
  v59 = *(v58 - 8);
  v19 = *(v59 + 64);
  v20 = MEMORY[0x1EEE9AC00](v58);
  v80 = &v57 - v21;
  v78 = *(v4 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabBarAction.HandleActionAtIndexCodingKeys();
  v77 = swift_getWitnessTable();
  v76 = sub_1E5AD0318();
  v57 = *(v76 - 8);
  v24 = *(v57 + 64);
  v25 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v57 - v26;
  v27 = *(a2 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = (&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v3;
  type metadata accessor for TabBarAction.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_1E5AD0318();
  v87 = *(v31 - 8);
  v88 = v31;
  v32 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v57 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v86 = v34;
  sub_1E5AD03E8();
  (*(v27 + 16))(v30, v85, v84);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v76;
    v41 = v80;
    v43 = v78;
    v42 = v79;
    if (EnumCaseMultiPayload)
    {
      v53 = v4;
      (*(v78 + 32))(v83, v30, v4);
      v90 = 1;
      v54 = v41;
      v46 = v88;
      v47 = v86;
      sub_1E5AD02B8();
      v55 = *(v42 + 16);
      v56 = v58;
      sub_1E5AD0308();
      (*(v59 + 8))(v54, v56);
      (*(v43 + 8))(v83, v53);
    }

    else
    {
      v44 = *v30;
      v89 = 0;
      v45 = v75;
      v46 = v88;
      v47 = v86;
      sub_1E5AD02B8();
      sub_1E5AD02F8();
      (*(v57 + 8))(v45, v40);
    }

    return (*(v87 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = *v30;
    v91 = 2;
    v49 = v61;
    v46 = v88;
    v47 = v86;
    sub_1E5AD02B8();
    v50 = v64;
    sub_1E5AD02F8();
    (*(v63 + 8))(v49, v50);
    return (*(v87 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v92 = 3;
    v37 = v65;
    v38 = v88;
    v39 = v86;
    sub_1E5AD02B8();
    (*(v66 + 8))(v37, v68);
  }

  else
  {
    v93 = 4;
    v51 = v70;
    v38 = v88;
    v39 = v86;
    sub_1E5AD02B8();
    (*(v71 + 8))(v51, v72);
  }

  return (*(v87 + 8))(v39, v38);
}

uint64_t TabBarAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a4;
  v7 = type metadata accessor for TabBarAction.ViewAppearedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v108 = v7;
  v92 = sub_1E5AD02A8();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v106 = &v79 - v9;
  v10 = type metadata accessor for TabBarAction.ScrolledToSelectedIndexContentOffsetCodingKeys();
  v104 = swift_getWitnessTable();
  v105 = v10;
  v90 = sub_1E5AD02A8();
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v103 = &v79 - v12;
  v13 = type metadata accessor for TabBarAction.SelectIndexCodingKeys();
  v14 = swift_getWitnessTable();
  v101 = v13;
  v100 = v14;
  v88 = sub_1E5AD02A8();
  v87 = *(v88 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v102 = &v79 - v16;
  v17 = type metadata accessor for TabBarAction.SelectItemCodingKeys();
  v18 = swift_getWitnessTable();
  v98 = v17;
  v97 = v18;
  v86 = sub_1E5AD02A8();
  v85 = *(v86 - 8);
  v19 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v99 = &v79 - v20;
  v21 = type metadata accessor for TabBarAction.HandleActionAtIndexCodingKeys();
  v22 = swift_getWitnessTable();
  v95 = v21;
  v94 = v22;
  v84 = sub_1E5AD02A8();
  v83 = *(v84 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v96 = &v79 - v24;
  type metadata accessor for TabBarAction.CodingKeys();
  swift_getWitnessTable();
  v25 = sub_1E5AD02A8();
  v112 = *(v25 - 8);
  v113 = v25;
  v26 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v79 - v27;
  v114 = a2;
  v93 = a3;
  v111 = type metadata accessor for TabBarAction();
  v109 = *(v111 - 8);
  v29 = *(v109 + 64);
  v30 = MEMORY[0x1EEE9AC00](v111);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v79 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v79 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v79 - v39;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  v115 = v41;
  __swift_project_boxed_opaque_existential_1(v41, v43);
  v44 = v120;
  sub_1E5AD03D8();
  if (v44)
  {
    goto LABEL_15;
  }

  v80 = v38;
  v82 = v35;
  v81 = v32;
  v120 = v40;
  v45 = v113;
  v46 = v28;
  *&v116 = sub_1E5AD0298();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  *&v118 = sub_1E5ACFFF8();
  *(&v118 + 1) = v47;
  *&v119 = v48;
  *(&v119 + 1) = v49;
  sub_1E5ACFFE8();
  swift_getWitnessTable();
  sub_1E5ACFEA8();
  v50 = v116;
  v51 = v45;
  if (v116 == 5 || (v79 = v118, v116 = v118, v117 = v119, (sub_1E5ACFEC8() & 1) == 0))
  {
    v54 = sub_1E5AD00F8();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v56 = v111;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    (*(v112 + 8))(v46, v45);
    swift_unknownObjectRelease();
LABEL_15:
    v69 = v115;
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  if (v50 <= 1)
  {
    if (v50)
    {
      LOBYTE(v116) = 1;
      v65 = v99;
      sub_1E5AD0228();
      v66 = *(v93 + 8);
      v67 = v82;
      v68 = v86;
      sub_1E5AD0288();
      (*(v85 + 8))(v65, v68);
      (*(v112 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v76 = v111;
      swift_storeEnumTagMultiPayload();
      v77 = v109;
      v78 = v120;
      (*(v109 + 32))(v120, v67, v76);
    }

    else
    {
      LOBYTE(v116) = 0;
      v58 = v96;
      sub_1E5AD0228();
      v59 = v84;
      v60 = sub_1E5AD0278();
      v61 = v112;
      v74 = v60;
      (*(v83 + 8))(v58, v59);
      (*(v61 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v75 = v80;
      *v80 = v74;
      v76 = v111;
      swift_storeEnumTagMultiPayload();
      v77 = v109;
      v78 = v120;
      (*(v109 + 32))(v120, v75, v76);
    }

    v73 = v115;
    v53 = v110;
  }

  else if (v50 == 2)
  {
    LOBYTE(v116) = 2;
    v62 = v102;
    sub_1E5AD0228();
    v53 = v110;
    v63 = v88;
    v71 = sub_1E5AD0278();
    (*(v87 + 8))(v62, v63);
    (*(v112 + 8))(v46, v51);
    swift_unknownObjectRelease();
    v72 = v81;
    *v81 = v71;
    v76 = v111;
    swift_storeEnumTagMultiPayload();
    v77 = v109;
    v78 = v120;
    (*(v109 + 32))(v120, v72, v76);
    v73 = v115;
  }

  else
  {
    if (v50 == 3)
    {
      LOBYTE(v116) = 3;
      v52 = v103;
      sub_1E5AD0228();
      v53 = v110;
      (*(v89 + 8))(v52, v90);
    }

    else
    {
      LOBYTE(v116) = 4;
      v64 = v106;
      sub_1E5AD0228();
      v53 = v110;
      (*(v91 + 8))(v64, v92);
    }

    (*(v112 + 8))(v46, v45);
    swift_unknownObjectRelease();
    v78 = v120;
    v76 = v111;
    swift_storeEnumTagMultiPayload();
    v73 = v115;
    v77 = v109;
  }

  (*(v77 + 32))(v53, v78, v76);
  v69 = v73;
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t static TabBarAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  v43 = *(a3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  v7 = type metadata accessor for TabBarAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v39 - v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v39 - v21;
  v23 = *(v20 + 48);
  v44 = v8;
  v24 = *(v8 + 16);
  v24(&v39 - v21, v45, v7);
  v24(&v22[v23], v46, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v14;
    v27 = a3;
    v28 = v43;
    if (EnumCaseMultiPayload)
    {
      v32 = v26;
      v24(v26, v22, v7);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v28;
        v34 = v40;
        (*(v28 + 32))(v40, &v22[v23], v27);
        v35 = *(*(v41 + 24) + 8);
        v31 = sub_1E5ACFB78();
        v36 = v32;
        v37 = *(v33 + 8);
        v37(v34, v27);
        v37(v36, v27);
        v18 = v44;
        goto LABEL_18;
      }

      (*(v28 + 8))(v32, v27);
      goto LABEL_17;
    }

    v24(v16, v22, v7);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_17;
    }

    v29 = *v16;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_13:
        v31 = 1;
        v18 = v44;
        goto LABEL_18;
      }

LABEL_17:
      v31 = 0;
      v7 = TupleTypeMetadata2;
      goto LABEL_18;
    }

    v30 = v42;
    v24(v42, v22, v7);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v29 = *v30;
  }

  v31 = v29 == *&v22[v23];
  v18 = v44;
LABEL_18:
  (*(v18 + 8))(v22, v7);
  return v31 & 1;
}

uint64_t TabBarAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v8, v12, v3);
      MEMORY[0x1E6934A50](1);
      v20 = *(*(a2 + 24) + 24);
      sub_1E5ACFB48();
      return (*(v4 + 8))(v8, v3);
    }

    v17 = *v12;
    v18 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

      return MEMORY[0x1E6934A50](v16);
    }

    v17 = *v12;
    v18 = 2;
  }

  MEMORY[0x1E6934A50](v18);
  v16 = v17;
  return MEMORY[0x1E6934A50](v16);
}

uint64_t TabBarAction.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  TabBarAction.hash(into:)(v3, a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AA57C0(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarAction.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AA582C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5AA589C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1E5AA59DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_1E5AA5D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5AE0820 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E5AA5E50(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_1E5AA5E94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AA5E50(*v1);
}

uint64_t sub_1E5AA5EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AA5D78(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5AA5ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA5F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA5F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA5FD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AA6024@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1E5A80E1C();

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1E5AA606C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AA60C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModalitiesAction.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v50 = a2;
  v46 = type metadata accessor for SidebarModalitiesAction.ModalitySelectedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1E5AD0318();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v37 - v9;
  v52 = *(v3 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SidebarModalitiesAction.ViewAppearedCodingKeys();
  v13 = swift_getWitnessTable();
  v42 = v12;
  v40 = v13;
  v41 = sub_1E5AD0318();
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - v16;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v4;
  type metadata accessor for SidebarModalitiesAction.CodingKeys();
  swift_getWitnessTable();
  v53 = sub_1E5AD0318();
  v51 = *(v53 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v23 = &v37 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v55 = v23;
  v25 = v52;
  sub_1E5AD03E8();
  (*(v17 + 16))(v20, v54, v50);
  v26 = v3;
  if ((*(v25 + 48))(v20, 1, v3) == 1)
  {
    v56 = 0;
    v27 = v38;
    v28 = v53;
    v29 = v55;
    sub_1E5AD02B8();
    (*(v39 + 8))(v27, v41);
    return (*(v51 + 8))(v29, v28);
  }

  else
  {
    v31 = v51;
    v32 = v43;
    (*(v25 + 32))(v43, v20, v26);
    v57 = 1;
    v33 = v45;
    v34 = v53;
    sub_1E5AD02B8();
    v35 = v48;
    v36 = *(v49 + 16);
    sub_1E5AD0308();
    (*(v47 + 8))(v33, v35);
    (*(v25 + 8))(v32, v26);
    return (*(v31 + 8))(v55, v34);
  }
}

uint64_t SidebarModalitiesAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v69 = a4;
  v7 = type metadata accessor for SidebarModalitiesAction.ModalitySelectedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v7;
  v61 = sub_1E5AD02A8();
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v68 = &v53 - v9;
  v10 = type metadata accessor for SidebarModalitiesAction.ViewAppearedCodingKeys();
  v64 = swift_getWitnessTable();
  v65 = v10;
  v59 = sub_1E5AD02A8();
  v58 = *(v59 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v53 - v12;
  type metadata accessor for SidebarModalitiesAction.CodingKeys();
  swift_getWitnessTable();
  v72 = sub_1E5AD02A8();
  v74 = *(v72 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v53 - v14;
  v70 = a2;
  v73 = a3;
  v16 = type metadata accessor for SidebarModalitiesAction();
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v71 = v15;
  v24 = v79;
  sub_1E5AD03D8();
  if (!v24)
  {
    v54 = v20;
    v55 = v22;
    v25 = v73;
    v26 = v70;
    v57 = v16;
    v56 = 0;
    v79 = a1;
    v28 = v71;
    v27 = v72;
    *&v75 = sub_1E5AD0298();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    *&v77 = sub_1E5ACFFF8();
    *(&v77 + 1) = v29;
    *&v78 = v30;
    *(&v78 + 1) = v31;
    sub_1E5ACFFE8();
    swift_getWitnessTable();
    sub_1E5ACFEA8();
    v32 = v75;
    if (v75 == 2 || (v53 = v77, v75 = v77, v76 = v78, (sub_1E5ACFEC8() & 1) == 0))
    {
      v40 = sub_1E5AD00F8();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
      *v42 = v57;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v74 + 8))(v28, v27);
    }

    else
    {
      if (v32)
      {
        LOBYTE(v75) = 1;
        v33 = v68;
        v34 = v56;
        sub_1E5AD0228();
        v35 = v74;
        if (!v34)
        {
          v36 = *(v25 + 8);
          v37 = v54;
          v38 = v26;
          v39 = v61;
          sub_1E5AD0288();
          (*(v60 + 8))(v33, v39);
          (*(v35 + 8))(v28, v27);
          swift_unknownObjectRelease();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          v50 = *(v62 + 32);
          v51 = v55;
          v52 = v57;
          v50(v55, v37, v57);
          v50(v69, v51, v52);
LABEL_14:
          v44 = v79;
          return __swift_destroy_boxed_opaque_existential_1(v44);
        }
      }

      else
      {
        LOBYTE(v75) = 0;
        v46 = v63;
        v47 = v56;
        sub_1E5AD0228();
        v48 = v69;
        v35 = v74;
        if (!v47)
        {
          (*(v58 + 8))(v46, v59);
          (*(v35 + 8))(v28, v27);
          swift_unknownObjectRelease();
          v49 = v55;
          (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
          (*(v62 + 32))(v48, v49, v57);
          goto LABEL_14;
        }
      }

      (*(v35 + 8))(v28, v27);
    }

    swift_unknownObjectRelease();
    a1 = v79;
  }

  v44 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1E5AA6E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1E5AA6EE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1E5AA7068(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1E5AA7374(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for SidebarModalitiesFeature();
  swift_getWitnessTable();
  v7 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v2, v3, v4, v7, WitnessTable);
}

uint64_t sub_1E5AA7420(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  sub_1E5ACFFD8();
  v8 = *(*(a1 + 24) + 24);
  swift_getWitnessTable();
  v6 = sub_1E5ACF0D8();
  return a2(v6);
}

uint64_t SidebarModalitiesView.init(store:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SidebarModalitiesView();
  v15 = *(a6 + 24);
  v16 = a7 + *(v14 + 36);
  sub_1E5ACF0C8();
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a2;
  type metadata accessor for SidebarModalitiesFeature();
  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  result = sub_1E5ACF0E8();
  *a7 = result;
  *(a7 + 8) = v19;
  *(a7 + 16) = v20 & 1;
  v21 = (a7 + *(v14 + 40));
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t SidebarModalitiesView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = *(a1 + 16);
  v87 = *(a1 + 24);
  v80 = type metadata accessor for SidebarModality();
  v4 = sub_1E5ACFD08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027300, &qword_1E5AD4F40);
  v5 = sub_1E5ACFFD8();
  sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40);
  v113 = *(v87 + 24);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v112 = v113;
  sub_1E5ACF868();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = swift_getOpaqueTypeConformance2();
  v106 = v113;
  v84 = OpaqueTypeMetadata2;
  v108 = OpaqueTypeMetadata2;
  v109 = v5;
  v82 = v5;
  v110 = v85;
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v69 = swift_getOpaqueTypeMetadata2();
  v7 = sub_1E5ACF888();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - v12;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_1E5ACFA08();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - v17;
  v68 = v4;
  v19 = sub_1E5ACF958();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027310, &qword_1E5AD4F48);
  v80 = v7;
  v78 = sub_1E5ACF318();
  v77 = *(v78 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v25;
  v74 = a1;
  sub_1E5AA7374(a1);
  v79 = v3;
  v88 = v3;
  v89 = v87;
  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5ACF948();
  (*(v20 + 8))(v23, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = MEMORY[0x1E6981138];
  v28 = MEMORY[0x1E6981E60];
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = MEMORY[0x1E6981138];
    v30 = *v18;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v67 + 8))(v18, v15);
LABEL_8:
    v52 = sub_1E5ACF6B8();
    v53 = v73;
    v54 = v74;
    (*(v13 + 16))(v73, v86, v74);
    v55 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v56 = swift_allocObject();
    v57 = v87;
    *(v56 + 16) = v79;
    *(v56 + 24) = v57;
    (*(v13 + 32))(v56 + v55, v53, v54);
    v108 = v52;
    v109 = sub_1E5AAA464;
    v110 = v56;
    sub_1E5AAA3E0();
    WitnessTable = 0;
    v112 = 0;
    v50 = v84;
    v40 = v82;
    v93 = v84;
    v94 = v82;
    v41 = v81;
    v95 = v85;
    v96 = v81;
    v58 = swift_getOpaqueTypeConformance2();
    v90 = v27;
    v91 = v58;
    v92 = v28;
    swift_getWitnessTable();
    v59 = v76;
    sub_1E5AA82CC(&v108, v75);
    v48 = v59;

    goto LABEL_9;
  }

  v29 = MEMORY[0x1E6981138];
  v30 = *v18;
  v31 = sub_1E5ACEEA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  EnumCaseMultiPayload = (*(*(v31 - 8) + 8))(&v18[*(TupleTypeMetadata2 + 48)], v31);
LABEL_6:
  v33 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v34 = v87;
  *(&v66 - 4) = v35;
  *(&v66 - 3) = v34;
  v36 = v86;
  *(&v66 - 2) = v30;
  *(&v66 - 1) = v36;
  MEMORY[0x1EEE9AC00](v33);
  *(&v66 - 4) = v38;
  *(&v66 - 3) = v37;
  *(&v66 - 2) = v39;
  v40 = v82;
  v108 = v84;
  v109 = v82;
  v41 = v81;
  v110 = v85;
  WitnessTable = v81;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v71;
  sub_1E5AAA218(sub_1E5AA8ED4, (&v66 - 6), sub_1E5AAA20C, (&v66 - 6), MEMORY[0x1E6981148]);

  v102 = v29;
  v103 = v42;
  v104 = v28;
  v44 = v80;
  v45 = swift_getWitnessTable();
  v46 = v70;
  sub_1E5A9AA54(v43, v44, v45);
  v47 = *(v72 + 8);
  v47(v43, v44);
  sub_1E5A9AA54(v46, v44, v45);
  sub_1E5AAA3E0();
  v48 = v76;
  sub_1E5AAA2E8(v43, v75, v44);
  v49 = v43;
  v27 = v29;
  v50 = v84;
  v47(v49, v44);
  v51 = v46;
  v28 = MEMORY[0x1E6981E60];
  v47(v51, v44);
LABEL_9:
  v60 = sub_1E5AAA3E0();
  v108 = v50;
  v109 = v40;
  v110 = v85;
  WitnessTable = v41;
  v61 = swift_getOpaqueTypeConformance2();
  v99 = v27;
  v100 = v61;
  v101 = v28;
  v62 = swift_getWitnessTable();
  v97 = v60;
  v98 = v62;
  v63 = v78;
  v64 = swift_getWitnessTable();
  sub_1E5A9AA54(v48, v63, v64);
  return (*(v77 + 8))(v48, v63);
}

uint64_t sub_1E5AA81A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SidebarModalitiesAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = type metadata accessor for SidebarModalitiesView();
  sub_1E5AA7374(v8);
  (*(*(a2 - 8) + 56))(v7, 1, 1, a2);
  sub_1E5ACFA58();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E5AA82CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACF2F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5ACF308();
}

uint64_t sub_1E5AA83C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a2;
  v90 = a1;
  v102 = a5;
  v7 = sub_1E5ACFFD8();
  v8 = sub_1E5ACF838();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &KeyPath - v10;
  v98 = sub_1E5ACF4C8();
  v97 = *(v98 - 8);
  v11 = *(v97 + 64);
  v12 = MEMORY[0x1EEE9AC00](v98);
  v95 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v7 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &KeyPath - v15;
  v119 = *(a4 + 24);
  v16 = v119;
  WitnessTable = swift_getWitnessTable();
  v94 = sub_1E5ACF0A8();
  v93 = *(v94 - 8);
  v18 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &KeyPath - v19;
  v104 = type metadata accessor for SidebarModalitiesView();
  v86 = *(v104 - 8);
  v88 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v85 = &KeyPath - v20;
  type metadata accessor for SidebarModality();
  v21 = sub_1E5ACFD08();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027300, &qword_1E5AD4F40);
  v23 = sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40);
  v114 = v22;
  v115 = v7;
  v116 = v23;
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v22;
  v115 = v7;
  v116 = v23;
  v117 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v115 = a3;
  v116 = OpaqueTypeConformance2;
  v117 = v16;
  v26 = swift_getOpaqueTypeMetadata2();
  v76 = v26;
  v78 = v21;
  v75 = swift_getWitnessTable();
  v114 = v21;
  v115 = a3;
  v116 = v26;
  v117 = v75;
  v118 = v16;
  v27 = sub_1E5ACF868();
  v89 = *(v27 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v73 = &KeyPath - v29;
  v114 = OpaqueTypeMetadata2;
  v115 = a3;
  v116 = OpaqueTypeConformance2;
  v117 = v16;
  v67 = v16;
  v69 = swift_getOpaqueTypeConformance2();
  v113 = v69;
  v30 = swift_getWitnessTable();
  v114 = v27;
  v115 = v7;
  v71 = v27;
  v68 = v7;
  v116 = v30;
  v117 = WitnessTable;
  v31 = v30;
  v72 = v30;
  v70 = WitnessTable;
  v32 = swift_getOpaqueTypeMetadata2();
  v81 = v32;
  v87 = *(v32 - 8);
  v33 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v103 = &KeyPath - v34;
  v114 = v27;
  v115 = v7;
  v116 = v31;
  v117 = WitnessTable;
  v35 = swift_getOpaqueTypeConformance2();
  v80 = v35;
  v112 = v16;
  v79 = swift_getWitnessTable();
  v114 = v32;
  v115 = v7;
  v116 = v35;
  v117 = v79;
  v82 = MEMORY[0x1E697D1A8];
  v83 = swift_getOpaqueTypeMetadata2();
  v84 = *(v83 - 8);
  v36 = *(v84 + 64);
  v37 = MEMORY[0x1EEE9AC00](v83);
  v74 = &KeyPath - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v77 = &KeyPath - v39;
  v114 = v90;
  v110 = a3;
  v111 = a4;
  KeyPath = swift_getKeyPath();
  v40 = v86;
  v41 = v85;
  v42 = v104;
  (*(v86 + 16))(v85, v105, v104);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  *(v44 + 24) = a4;
  v65 = a3;
  v66 = a4;
  (*(v40 + 32))(v44 + v43, v41, v42);

  v45 = v73;
  sub_1E5ACF848();
  v46 = v91;
  sub_1E5AA7420(v42, MEMORY[0x1E697BDE8]);
  sub_1E5AA7374(v42);
  v108 = a3;
  v109 = a4;
  swift_getKeyPath();
  v47 = v92;
  sub_1E5ACFA48();

  v48 = v95;
  v49 = v71;
  v50 = v68;
  v51 = v72;
  v52 = v70;
  sub_1E5AB6808();
  MEMORY[0x1E6933CA0](v46, v47, v48, v49, v50, v51, v52);
  (*(v97 + 8))(v48, v98);
  (*(v96 + 8))(v47, v50);
  (*(v93 + 8))(v46, v94);
  (*(v89 + 8))(v45, v49);
  sub_1E5AA7374(v104);
  v106 = v65;
  v107 = v66;
  swift_getKeyPath();
  v53 = v99;
  sub_1E5ACFA68();

  v54 = v74;
  v55 = v81;
  v56 = v80;
  v57 = v79;
  v58 = v103;
  sub_1E5ACF608();
  (*(v100 + 8))(v53, v101);
  (*(v87 + 8))(v58, v55);
  v114 = v55;
  v115 = v50;
  v116 = v56;
  v117 = v57;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v77;
  v61 = v83;
  sub_1E5A9AA54(v54, v83, v59);
  v62 = *(v84 + 8);
  v62(v54, v61);
  sub_1E5A9AA54(v60, v61, v59);
  return (v62)(v60, v61);
}

uint64_t sub_1E5AA8EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a2;
  v81 = a1;
  v88 = a5;
  v7 = sub_1E5ACFFD8();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v59 - v9;
  v90 = *(a4 + 24);
  v99 = v90;
  v10 = v7;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E5ACF0A8();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v59 - v14;
  v65 = a4;
  v64 = type metadata accessor for SidebarModality();
  v63 = *(v64 - 8);
  v66 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v59 - v15;
  v60 = &v59 - v15;
  v61 = type metadata accessor for SidebarModalitiesView();
  v89 = *(v61 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v59 - v18;
  v59 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027300, &qword_1E5AD4F40);
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v59 - v22;
  v23 = sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40);
  v95 = v20;
  v96 = v10;
  v69 = v20;
  v68 = v10;
  v97 = v23;
  v98 = WitnessTable;
  v24 = v23;
  v70 = v23;
  v71 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v79 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v67 = &v59 - v27;
  v95 = v20;
  v96 = v10;
  v97 = v24;
  v98 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeMetadata2;
  v96 = a3;
  v97 = OpaqueTypeConformance2;
  v98 = v90;
  v76 = MEMORY[0x1E697CDA0];
  v77 = swift_getOpaqueTypeMetadata2();
  v78 = *(v77 - 8);
  v28 = *(v78 + 64);
  v29 = MEMORY[0x1EEE9AC00](v77);
  v62 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v72 = &v59 - v31;
  v32 = v89;
  v33 = v80;
  v34 = v61;
  (*(v89 + 16))(v19, v80, v61);
  v35 = v63;
  v36 = v81;
  v37 = v64;
  (*(v63 + 16))(v16, v81, v64);
  v38 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v39 = (v17 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v65;
  *(v40 + 16) = a3;
  *(v40 + 24) = v41;
  (*(v89 + 32))(v40 + v38, v59, v34);
  (*(v35 + 32))(v40 + v39, v60, v37);
  v91 = a3;
  v92 = v41;
  v42 = a3;
  v93 = v33;
  v94 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027320, &qword_1E5AD5058);
  sub_1E5A8CEF0(&qword_1ED027328, &qword_1ED027320, &qword_1E5AD5058);
  v43 = v73;
  sub_1E5ACF7C8();
  v44 = v83;
  sub_1E5AA7420(v34, MEMORY[0x1E697BDE8]);
  v45 = *(v42 - 8);
  v46 = v84;
  (*(v45 + 16))(v84, v36, v42);
  (*(v45 + 56))(v46, 0, 1, v42);
  v47 = v67;
  v48 = v69;
  v49 = v68;
  sub_1E5ACF618();
  (*(v87 + 8))(v46, v49);
  (*(v85 + 8))(v44, v86);
  (*(v82 + 8))(v43, v48);
  v50 = v62;
  v51 = v74;
  v52 = OpaqueTypeConformance2;
  v53 = v90;
  sub_1E5ACF5A8();
  (*(v79 + 8))(v47, v51);
  v95 = v51;
  v96 = v42;
  v97 = v52;
  v98 = v53;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v72;
  v56 = v77;
  sub_1E5A9AA54(v50, v77, v54);
  v57 = *(v78 + 8);
  v57(v50, v56);
  sub_1E5A9AA54(v55, v56, v54);
  return (v57)(v55, v56);
}

uint64_t sub_1E5AA97CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SidebarModalitiesAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SidebarModalitiesView();
  sub_1E5AA7374(v10);
  v11 = *(a3 - 8);
  (*(v11 + 16))(v9, a2, a3);
  (*(v11 + 56))(v9, 0, 1, a3);
  sub_1E5ACFA58();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E5AA993C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027330, &qword_1E5AD5060);
  sub_1E5AAADAC();
  return sub_1E5ACF768();
}

uint64_t sub_1E5AA99E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for SidebarModalitiesView() + 40);
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = type metadata accessor for SidebarModality();
  result = v7(a2 + *(v8 + 40));
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_1E5AA9A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v66 = a2;
  v64 = a5;
  v60 = sub_1E5ACF698();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a3 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5ACFFD8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v52 - v17;
  v19 = *(v13 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  v57 = *(type metadata accessor for SidebarModality() + 36);
  v67 = *(a1 + v57);
  sub_1E5AB3288();
  v63 = sub_1E5ACF748();
  v54 = a4;
  v28 = type metadata accessor for SidebarModalitiesView();
  sub_1E5AA7420(v28, MEMORY[0x1E697BDE0]);
  v29 = v65;
  v30 = *(v65 + 16);
  v59 = a1;
  v30(v25, a1, a3);
  v31 = v29;
  (*(v29 + 56))(v25, 0, 1, a3);
  v56 = TupleTypeMetadata2;
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = v19[2];
  v33(v18, v27, v13);
  v66 = v13;
  v33(&v18[v32], v25, v13);
  v34 = *(v31 + 48);
  if (v34(v18, 1, a3) == 1)
  {
    v35 = v19[1];
    v36 = v25;
    v37 = v66;
    v35(v36, v66);
    v35(v27, v37);
    if (v34(&v18[v32], 1, a3) == 1)
    {
      v35(v18, v66);
LABEL_9:
      result = sub_1E5ACF6E8();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v33(v62, v18, v66);
  if (v34(&v18[v32], 1, a3) == 1)
  {
    v38 = v19[1];
    v39 = v66;
    v38(v25, v66);
    v38(v27, v39);
    (*(v65 + 8))(v62, a3);
LABEL_6:
    (*(v55 + 8))(v18, v56);
    goto LABEL_7;
  }

  v42 = v65;
  v43 = v53;
  (*(v65 + 32))(v53, &v18[v32], a3);
  v44 = *(*(v54 + 24) + 8);
  v45 = v62;
  v46 = sub_1E5ACFB78();
  v47 = *(v42 + 8);
  v47(v43, a3);
  v48 = v19[1];
  v49 = v25;
  v50 = v66;
  v48(v49, v66);
  v48(v27, v50);
  v47(v45, a3);
  v48(v18, v50);
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_7:
  v40 = *(v59 + v57);
  (*(v58 + 104))(v61, *MEMORY[0x1E69814D8], v60);
  result = sub_1E5ACF6F8();
LABEL_10:
  v51 = v64;
  *v64 = v63;
  v51[1] = result;
  return result;
}

uint64_t sub_1E5AAA064@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5ACEEE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5ACFB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = type metadata accessor for SidebarModalitiesView();
  sub_1E5AA7374(v8);
  swift_getKeyPath();
  sub_1E5ACFA48();

  result = sub_1E5ACF538();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1E5AAA20C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E5AAA064(a1);
}

uint64_t sub_1E5AAA218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_1E5ACF878();
}

uint64_t sub_1E5AAA2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5ACF2F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5ACF308();
}

unint64_t sub_1E5AAA3E0()
{
  result = qword_1ED027318;
  if (!qword_1ED027318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027310, &qword_1E5AD4F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027318);
  }

  return result;
}

uint64_t sub_1E5AAA464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SidebarModalitiesView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E5AA81A4(v4, v1);
}

uint64_t sub_1E5AAA530(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v10 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = v10 + 7;
  v13 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v9;
  if (v8 >= a2)
  {
    goto LABEL_34;
  }

  v14 = ((v10 - ((-18 - v11) | v11) - ((-9 - v13) | v9) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v8;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_34:
    v23 = (a1 + v11 + 17) & ~v11;
    if (v7 < 0x7FFFFFFF)
    {
      v25 = *((v12 + v23 + ((v13 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    else
    {
      v24 = (*(v5 + 48))(v23);
      if (v24 >= 2)
      {
        return v24 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v8 + (v16 | v22) + 1;
}

void sub_1E5AAA6F0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v6 + 80);
  v13 = v12 | 7;
  v14 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v14;
  }

  v15 = v14 + 7;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v18 = a3 - v11;
    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v11;
    }

    else
    {
      v21 = 1;
    }

    if (((v14 - ((-18 - v13) | v13) - ((-9 - v12 - v16) | v12) + 5) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v11 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v5 == 2)
  {
    *(a1 + v17) = 0;
    goto LABEL_41;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  v24 = ~v12;
  v25 = ((a1 + v13 + 17) & ~v13);
  if (v9 < 0x7FFFFFFF)
  {
    v30 = (&v25[v15 + ((v12 + v16 + 8) & v24)] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v30 = a2 & 0x7FFFFFFF;
      v30[1] = 0;
    }

    else
    {
      *v30 = a2 - 1;
    }

    return;
  }

  if (v10 >= a2)
  {
    if (v9 >= a2)
    {
      v32 = *(v7 + 56);
      v33 = a2 + 1;
      v34 = (a1 + v13 + 17) & ~v13;

      v32(v34, v33);
    }

    else
    {
      if (v14 <= 3)
      {
        v31 = ~(-1 << (8 * v14));
      }

      else
      {
        v31 = -1;
      }

      if (v14)
      {
        v28 = v31 & (~v9 + a2);
        if (v14 <= 3)
        {
          v29 = v14;
        }

        else
        {
          v29 = 4;
        }

        bzero(v25, v14);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
            goto LABEL_53;
          }

          goto LABEL_69;
        }

LABEL_74:
        if (v29 == 3)
        {
          *v25 = v28;
          v25[2] = BYTE2(v28);
        }

        else
        {
          *v25 = v28;
        }
      }
    }
  }

  else
  {
    v26 = ((v12 + (v15 & 0xFFFFFFF8) + 8) & v24) + v14;
    if (v26 <= 3)
    {
      v27 = ~(-1 << (8 * v26));
    }

    else
    {
      v27 = -1;
    }

    if (v26)
    {
      v28 = v27 & (~v10 + a2);
      if (v26 <= 3)
      {
        v29 = v26;
      }

      else
      {
        v29 = 4;
      }

      bzero(v25, v26);
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
LABEL_53:
          *v25 = v28;
          return;
        }

LABEL_69:
        *v25 = v28;
        return;
      }

      goto LABEL_74;
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SidebarModalitiesView();
  v16 = *(*(v3 - 8) + 64);
  v17 = *(*(v3 - 8) + 80);
  v4 = (v0 + ((v17 + 32) & ~v17));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  sub_1E5A9A6F8();
  v8 = v4 + *(v3 + 36);
  v9 = *(v1 - 8);
  v10 = *(v9 + 48);
  if (!v10(v8, 1, v1))
  {
    (*(v9 + 8))(v8, v1);
  }

  sub_1E5ACFFD8();
  v18 = *(v2 + 24);
  swift_getWitnessTable();
  v11 = sub_1E5ACF0D8();
  v12 = *(v8 + *(v11 + 36));

  v13 = *(v11 + 40);
  if (!v10(v8 + v13, 1, v1))
  {
    (*(v9 + 8))(v8 + v13, v1);
  }

  v14 = *(v4 + *(v3 + 40) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5AAABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SidebarModalitiesView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1E5AA8EE0(a1, v8, v5, v6, a2);
}

uint64_t sub_1E5AAAC98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SidebarModalitiesView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SidebarModality() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1E5AA97CC(v0 + v4, v7, v1);
}

uint64_t sub_1E5AAAD88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1E5AA993C();
}

uint64_t sub_1E5AAAD94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1E5AA99E0(v1[4], v1[5], a1);
}