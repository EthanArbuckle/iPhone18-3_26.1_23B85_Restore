char *WorldLineGuide.init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)(char a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, char a17)
{
  v107 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_backingPlanes;
  *&v17[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_backingPlanes] = 0;
  v19 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState;
  v17[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState] = 0;
  v126 = 1;
  v125 = 1;
  v20 = &v17[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  v106 = v20;
  v20[80] = 1;
  swift_beginAccess();
  v17[v19] = a17 & 1;
  v113 = v17;
  v17[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_guideType] = a1;
  type metadata accessor for WorldAnchor();
  v21 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v22 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v23 = swift_allocObject();
  v24 = swift_slowAlloc();
  *v24 = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = v24;
  *(v21 + v22) = v23;
  *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v25 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *v27 = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = v27;
  *(v21 + v25) = v26;
  v28 = (v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v29 = a9;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v30 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v31 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v32 = swift_allocObject();
  v33 = v30;
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v32 + 16) = v33;
  *(v32 + 24) = v34;
  *(v21 + v31) = v32;
  swift_endAccess();

  swift_beginAccess();

  v35 = swift_allocObject();
  v36 = swift_slowAlloc();
  *v36 = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = v36;
  *(v21 + v25) = v35;
  swift_endAccess();
  v37 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v38 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v39 = swift_allocObject();
  v40 = v37;
  v41 = swift_slowAlloc();
  *v41 = 0;
  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  *(v21 + v38) = v39;
  swift_endAccess();

  v42 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v43 = swift_allocObject();
  v44 = swift_slowAlloc();
  *v44 = 0;
  *(v43 + 16) = 0;
  *(v43 + 24) = v44;
  *(v21 + v42) = v43;
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v45 = *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v46 = *(v45 + 24);

  os_unfair_lock_lock(v46);
  swift_beginAccess();
  v47 = *(v45 + 16);
  os_unfair_lock_unlock(v46);

  sub_2584031E0(v47);

  v48 = *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v49 = *(v48 + 24);

  os_unfair_lock_lock(v49);
  swift_beginAccess();
  v50 = *(v48 + 16);
  os_unfair_lock_unlock(v49);

  sub_2584031E0(v50);

  v51 = *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v52 = *(v51 + 24);

  os_unfair_lock_lock(v52);
  swift_beginAccess();
  v53 = *(v51 + 16);
  v54 = v53;
  os_unfair_lock_unlock(v52);

  if (v53)
  {
    sub_2584031E0(v54);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v121);
    v56 = v122;
    v55 = v123;
    __swift_project_boxed_opaque_existential_0(v121, v122);
    (*(v55 + 8))(v21, v56, v55);
    __swift_destroy_boxed_opaque_existential_0(v121);
  }

  *&v113[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end1Anchor] = v21;
  v57 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v58 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  v59 = swift_allocObject();
  v60 = swift_slowAlloc();
  *(v57 + v58) = v59;
  *v60 = 0;
  *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v59 + 16) = 0;
  *(v59 + 24) = v60;
  *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v61 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  v62 = swift_allocObject();
  v63 = swift_slowAlloc();
  *v63 = 0;
  *(v57 + v61) = v62;
  *(v62 + 16) = 0;
  *(v62 + 24) = v63;
  v64 = (v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v65 = a13;
  v65[1] = a14;
  v65[2] = a15;
  v65[3] = a16;
  v66 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v67 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v68 = swift_allocObject();
  v69 = v66;
  v70 = swift_slowAlloc();
  *v70 = 0;
  *(v68 + 16) = v69;
  *(v68 + 24) = v70;
  *(v57 + v67) = v68;
  swift_endAccess();

  swift_beginAccess();

  v71 = swift_allocObject();
  v72 = swift_slowAlloc();
  *v72 = 0;
  *(v71 + 16) = 0;
  *(v71 + 24) = v72;
  *(v57 + v61) = v71;
  swift_endAccess();
  v73 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v74 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v75 = swift_allocObject();
  v76 = v73;
  v77 = swift_slowAlloc();
  *v77 = 0;
  *(v75 + 16) = v76;
  *(v75 + 24) = v77;
  *(v57 + v74) = v75;
  swift_endAccess();

  v78 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v79 = swift_allocObject();
  v80 = swift_slowAlloc();
  *v80 = 0;
  *(v79 + 16) = 0;
  *(v79 + 24) = v80;
  *(v57 + v78) = v79;
  swift_endAccess();
  *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v81 = *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v82 = *(v81 + 24);

  os_unfair_lock_lock(v82);
  swift_beginAccess();
  v83 = *(v81 + 16);
  os_unfair_lock_unlock(v82);

  sub_2584031E0(v83);

  v84 = *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v85 = *(v84 + 24);

  os_unfair_lock_lock(v85);
  swift_beginAccess();
  v86 = *(v84 + 16);
  os_unfair_lock_unlock(v85);

  sub_2584031E0(v86);

  v87 = *(v57 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v88 = *(v87 + 24);

  os_unfair_lock_lock(v88);
  swift_beginAccess();
  v89 = *(v87 + 16);
  v90 = v89;
  os_unfair_lock_unlock(v88);

  if (v89)
  {
    sub_2584031E0(v90);
  }

  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v121);
    v91 = v122;
    v92 = v123;
    __swift_project_boxed_opaque_existential_0(v121, v122);
    (*(v92 + 8))(v57, v91, v92);
    __swift_destroy_boxed_opaque_existential_0(v121);
  }

  *&v113[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end2Anchor] = v57;
  swift_beginAccess();
  *&v113[v107] = a8;

  if ((a4 & 1) == 0 && (a7 & 1) == 0)
  {
    swift_beginAccess();
    v106->n128_u64[0] = a2;
    v106->n128_u64[1] = a3;
    v106[1].n128_u64[0] = a5;
    v106[1].n128_u64[1] = a6;
    v106[2].n128_u8[0] = 0;
  }

  v93 = a12;
  v93.n128_u32[3] = 0;
  v118 = v93;
  v94 = a16;
  v94.n128_u32[3] = 0;
  v120 = v94;
  swift_beginAccess();
  v106[3] = v118;
  v106[4] = v120;
  v106[5].n128_u8[0] = 0;
  v95 = type metadata accessor for WorldLineGuide();
  v124.receiver = v113;
  v124.super_class = v95;
  v96 = objc_msgSendSuper2(&v124, sel_init);
  v97 = *&v96[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v98 = *(v97 + 24);
  v99 = v96;

  os_unfair_lock_lock(v98);
  swift_beginAccess();
  *(v97 + 16) = 8;
  os_unfair_lock_unlock(v98);

  return v99;
}

Swift::Void __swiftcall WorldLineGuide.update(end1:end2:)(simd_float4x4 *end1, simd_float4x4 *end2)
{
  v89 = v8;
  v90 = v9;
  v87 = v6;
  v88 = v7;
  v85 = v4;
  v86 = v5;
  v83 = v2;
  v84 = v3;
  type metadata accessor for WorldAnchor();
  v10 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v11 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = v13;
  *(v10 + v11) = v12;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v14 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = v16;
  *(v10 + v14) = v15;
  v17 = (v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v18 = v83;
  v18[1] = v84;
  v18[2] = v85;
  v18[3] = v86;
  v19 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v20 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v21 = swift_allocObject();
  v22 = v19;
  v23 = swift_slowAlloc();
  *v23 = 0;
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  *(v10 + v20) = v21;
  swift_endAccess();

  swift_beginAccess();

  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *v25 = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = v25;
  *(v10 + v14) = v24;
  swift_endAccess();
  v26 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v27 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v28 = swift_allocObject();
  v29 = v26;
  v30 = swift_slowAlloc();
  *v30 = 0;
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v10 + v27) = v28;
  swift_endAccess();

  v31 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v32 = swift_allocObject();
  v33 = swift_slowAlloc();
  *v33 = 0;
  *(v32 + 16) = 0;
  *(v32 + 24) = v33;
  *(v10 + v31) = v32;
  swift_endAccess();
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v34 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v35 = *(v34 + 24);

  os_unfair_lock_lock(v35);
  swift_beginAccess();
  v36 = *(v34 + 16);
  os_unfair_lock_unlock(v35);

  sub_2584031E0(v36);

  v37 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v38 = *(v37 + 24);

  os_unfair_lock_lock(v38);
  swift_beginAccess();
  v39 = *(v37 + 16);
  os_unfair_lock_unlock(v38);

  sub_2584031E0(v39);

  v40 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v41 = *(v40 + 24);

  os_unfair_lock_lock(v41);
  swift_beginAccess();
  v42 = *(v40 + 16);
  v43 = v42;
  os_unfair_lock_unlock(v41);

  if (v42)
  {
    sub_2584031E0(v43);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v91);
    v44 = v92;
    v45 = v93;
    __swift_project_boxed_opaque_existential_0(v91, v92);
    (*(v45 + 8))(v10, v44, v45);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  *(v82 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end1Anchor) = v10;

  v46 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v47 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  v48 = swift_allocObject();
  v49 = swift_slowAlloc();
  *(v46 + v47) = v48;
  *v49 = 0;
  *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v48 + 16) = 0;
  *(v48 + 24) = v49;
  *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v50 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  v51 = swift_allocObject();
  v52 = swift_slowAlloc();
  *v52 = 0;
  *(v46 + v50) = v51;
  *(v51 + 16) = 0;
  *(v51 + 24) = v52;
  v53 = (v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v53 = 0;
  v53[1] = 0;
  v54 = (v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v54 = v87;
  v54[1] = v88;
  v54[2] = v89;
  v54[3] = v90;
  v55 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v56 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v57 = swift_allocObject();
  v58 = v55;
  v59 = swift_slowAlloc();
  *v59 = 0;
  *(v57 + 16) = v58;
  *(v57 + 24) = v59;
  *(v46 + v56) = v57;
  swift_endAccess();

  swift_beginAccess();

  v60 = swift_allocObject();
  v61 = swift_slowAlloc();
  *v61 = 0;
  *(v60 + 16) = 0;
  *(v60 + 24) = v61;
  *(v46 + v50) = v60;
  swift_endAccess();
  v62 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v63 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v64 = swift_allocObject();
  v65 = v62;
  v66 = swift_slowAlloc();
  *v66 = 0;
  *(v64 + 16) = v65;
  *(v64 + 24) = v66;
  *(v46 + v63) = v64;
  swift_endAccess();

  v67 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v68 = swift_allocObject();
  v69 = swift_slowAlloc();
  *v69 = 0;
  *(v68 + 16) = 0;
  *(v68 + 24) = v69;
  *(v46 + v67) = v68;
  swift_endAccess();
  *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v70 = *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v71 = *(v70 + 24);

  os_unfair_lock_lock(v71);
  swift_beginAccess();
  v72 = *(v70 + 16);
  os_unfair_lock_unlock(v71);

  sub_2584031E0(v72);

  v73 = *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v74 = *(v73 + 24);

  os_unfair_lock_lock(v74);
  swift_beginAccess();
  v75 = *(v73 + 16);
  os_unfair_lock_unlock(v74);

  sub_2584031E0(v75);

  v76 = *(v46 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v77 = *(v76 + 24);

  os_unfair_lock_lock(v77);
  swift_beginAccess();
  v78 = *(v76 + 16);
  v79 = v78;
  os_unfair_lock_unlock(v77);

  if (v78)
  {
    sub_2584031E0(v79);
  }

  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v91);
    v80 = v92;
    v81 = v93;
    __swift_project_boxed_opaque_existential_0(v91, v92);
    (*(v81 + 8))(v46, v80, v81);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  *(v82 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end2Anchor) = v46;
}

__n128 WorldLineGuide.updatePrimarySegment(end1:end2:)(__n128 a1, __n128 a2)
{
  v3 = (v2 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments);
  swift_beginAccess();
  result = a2;
  *v3 = a1;
  v3[1] = a2;
  v3[2].n128_u8[0] = 0;
  return result;
}

__n128 WorldLineGuide.updateVisibleSegment(end1:end2:)(__n128 a1, __n128 a2)
{
  v3 = (v2 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments);
  swift_beginAccess();
  result = a2;
  v3[3] = a1;
  v3[4] = a2;
  v3[5].n128_u8[0] = 0;
  return result;
}

id WorldLineGuide.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25840EAEC()
{
}

id WorldLineGuide.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldLineGuide();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25840EBF4()
{
  result = qword_27F929438;
  if (!qword_27F929438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929438);
  }

  return result;
}

unint64_t sub_25840EC4C()
{
  result = qword_27F929440;
  if (!qword_27F929440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929440);
  }

  return result;
}

uint64_t sub_25840ECA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_guideType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25840ECF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_guideType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_25840ED4C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = *(v3 + 80);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_25840EDB8(uint64_t a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments;
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy81_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25840EE74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25840EE94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GuideAnchorState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuideAnchorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WorldPlaneType.description.getter(unsigned __int8 a1)
{
  v1 = 0x74694B7261;
  v2 = 0x6863746170;
  if (a1 != 5)
  {
    v2 = 0x706544656C707061;
  }

  v3 = 0x6C61636F6CLL;
  if (a1 != 3)
  {
    v3 = 0x73756F6976657270;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6465727265666E69;
  if (a1 != 1)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void WorldPlaneHitTestResult.init(position:normal:confidence:type:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, float32x4_t a4@<Q1>, float a5@<S2>)
{
  _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(a3, a4);
  sceneKitToARKit(_:)(v9, v8);
  v22 = v11;
  v23 = v10;
  v20 = v13;
  v21 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v15 = swift_allocObject();
  *(v15 + 24) = xmmword_25842EC50;
  *(v15 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v16 = swift_allocObject();
  v17 = v14;
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v15 + 16) = v16;
  swift_endAccess();
  *(v15 + 48) = a1;
  *(v15 + 52) = 1.0 - a5;
  *(v15 + 56) = 1065353216;
  v26 = 1;
  memset(v24, 0, sizeof(v24));
  v25 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v17, v24, static SIMD3<>.zero);

  sub_258411874();
  *a2 = xmmword_25842EC60;
  *(a2 + 16) = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v21;
  *(a2 + 64) = v20;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v15;
  *(a2 + 112) = v19;
}

Swift::Float __swiftcall WorldPlaneHitTestResult.distanceToCamera(in:)(ARFrame in)
{
  v8 = v1[4];
  v2 = [(objc_class *)in.super.isa camera];
  [v2 transform];
  v7 = v3;

  v4 = vsubq_f32(v8, v7);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
}

uint64_t WorldPlane.__allocating_init(anchor:type:uncertainty:confidenceMultiplier:)(void *a1, char a2, float a3, float a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = xmmword_25842EC50;
  *(v8 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v9 = swift_allocObject();
  v10 = a1;
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v8 + 16) = v9;
  swift_endAccess();
  *(v8 + 48) = a2;
  *(v8 + 52) = a3;
  *(v8 + 56) = a4;
  v15 = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v10, v13, static SIMD3<>.zero);

  return v8;
}

void WorldPlaneHitTestResult.init(transform:plane:)(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  sub_258411874();
  *a2 = xmmword_25842EC60;
  *(a2 + 16) = a3;
  *(a2 + 32) = a4;
  *(a2 + 48) = a5;
  *(a2 + 64) = a6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = a1;
  *(a2 + 112) = v8;
}

Swift::Float __swiftcall WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(ARFrame in)
{
  v8 = v1[4];
  v2 = [(objc_class *)in.super.isa camera];
  [v2 transform];
  v7 = v3;

  v4 = vsubq_f32(v8, v7);
  v5 = vmulq_f32(v4, v4);
  return v5.f32[2] + vaddv_f32(*v5.f32);
}

double WorldPlaneHitTestResult.init(arHitResult:withPlaneType:)@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_258411D3C(a1, a2, v9);

  v5 = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = v5;
  *(a3 + 96) = v14;
  *(a3 + 112) = v15;
  v6 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a3 + 32) = v10;
  *(a3 + 48) = v8;
  return result;
}

unint64_t sub_25840F644@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s17MeasureFoundation14WorldPlaneTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25840F6C0()
{
  v1 = *v0;
  v2 = 0x74694B7261;
  v3 = 0x6863746170;
  if (v1 != 5)
  {
    v3 = 0x706544656C707061;
  }

  v4 = 0x6C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x73756F6976657270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6465727265666E69;
  if (v1 != 1)
  {
    v5 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t property wrapper backing initializer of WorldPlane.anchor(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v2 = swift_allocObject();
  v3 = a1;
  v4 = swift_slowAlloc();
  *v4 = 0;

  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return v2;
}

uint64_t sub_25840F804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  *a2 = v6;
  return result;
}

uint64_t sub_25840F898(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 24);

  v6 = v2;
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v7 = *(v4 + 16);
  *(v4 + 16) = v6;

  os_unfair_lock_unlock(v5);
}

id WorldPlane.anchor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t WorldPlane.hash(into:)()
{
  v1 = v0;
  v2 = sub_2584283F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);

  v9 = [v8 identifier];

  sub_2584283D0();
  sub_2584120B0(&qword_27F927FC8, 255, MEMORY[0x277CC95F0]);
  sub_258428590();
  (*(v3 + 8))(v5, v2);
  return MEMORY[0x259C7ECE0](*(v1 + 48));
}

uint64_t WorldPlane.label.getter()
{
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v2);

  v4 = sub_2583E2618(v3);

  return v4;
}

float WorldPlane.confidence.getter()
{
  v1 = *(v0 + 48);
  if (v1 > 2)
  {
    if (*(v0 + 48) <= 4u && v1 != 3)
    {
      v2 = *(v0 + 52);
      v3 = 0.0;
      if (v2 != 0.0)
      {
        v4 = 1.0 - v2;
        v5 = 0.9;
LABEL_18:
        v3 = v4 * v5;
        return v3 * *(v0 + 56);
      }

      return v3 * *(v0 + 56);
    }

    v9 = *(v0 + 52);
LABEL_12:
    v3 = 1.0 - v9;
    return v3 * *(v0 + 56);
  }

  if (!*(v0 + 48))
  {
    v9 = *(v0 + 52);
    v3 = 0.0;
    if (v9 == 0.0)
    {
      return v3 * *(v0 + 56);
    }

    goto LABEL_12;
  }

  if (v1 == 1)
  {
    if (qword_27F927AC8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = *(v0 + 16);
    v7 = *(v6 + 24);

    os_unfair_lock_lock(v7);
    swift_beginAccess();
    v8 = *(v6 + 16);
    os_unfair_lock_unlock(v7);

    v3 = sub_2583E279C(v8);
  }

  else
  {
    v11 = *(v0 + 52);
    v3 = 0.0;
    if (v11 != 0.0)
    {
      v4 = 1.0 - v11;
      v5 = 0.8;
      goto LABEL_18;
    }
  }

  return v3 * *(v0 + 56);
}

Swift::Float __swiftcall WorldPlane.estimatedErrorAlongNormal(distanceFromObservation:)(Swift::Float distanceFromObservation)
{
  v3 = *(v1 + 48);
  if (v3 == 4 || v3 == 2)
  {
    LOBYTE(v3) = WorldPlane.baseType.getter();
  }

  result = -1.0;
  if (v3 > 3u)
  {
    if (v3 == 4)
    {
      return result;
    }

    if (v3 == 5)
    {
      return (distanceFromObservation * 0.01) + ((*(v1 + 52) + 1.0) * 0.03);
    }

    v8 = *(v1 + 52);
    v9 = 0.1;
    return v8 * v9;
  }

  if (v3 >= 2u)
  {
    if (v3 == 2)
    {
      return result;
    }

    v8 = (*(v1 + 52) * 3.0) + 1.0;
    v9 = 0.01;
    return v8 * v9;
  }

  v6 = [objc_opt_self() jasperAvailable];
  result = -0.98;
  if (v6)
  {
    result = 0.04;
  }

  v7 = 0.02;
  if (!v6)
  {
    v7 = -1.0;
  }

  if (v3 != 1)
  {
    return v7;
  }

  return result;
}

uint64_t WorldPlane.baseType.getter()
{
  if ([objc_opt_self() jasperAvailable])
  {
    swift_beginAccess();
    v1 = *(v0 + 16);
    v2 = *(v1 + 24);

    os_unfair_lock_lock(v2);
    swift_beginAccess();
    v3 = *(v1 + 16);
    os_unfair_lock_unlock(v2);

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (!v4)
    {
      v5 = *(v0 + 48);
      if (v5 == 5)
      {
        v6 = 5;
      }

      else
      {
        v6 = 6;
      }

      v7 = v5 == 3;
      goto LABEL_10;
    }

    return 0;
  }

  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = *(v8 + 24);

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  v10 = *(v8 + 16);
  os_unfair_lock_unlock(v9);

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();

  if (v11)
  {
    return 0;
  }

  v5 = *(v0 + 48);
  v7 = v5 == 3;
  v6 = 5;
LABEL_10:
  if (v7)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t WorldPlane.description.getter()
{
  v1 = v0;
  sub_258428FC0();
  MEMORY[0x259C7DFF0](0xD000000000000015, 0x8000000258438580);
  v2 = WorldPlane.baseType.getter();
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6863746170;
  if (v2 != 5)
  {
    v5 = 0x706544656C707061;
    v4 = 0xEA00000000006874;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6C61636F6CLL;
  if (v2 != 3)
  {
    v7 = 0x73756F6976657270;
    v6 = 0xE800000000000000;
  }

  if (v2 <= 4)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6B6361626C6C6166;
  if (v2 == 1)
  {
    v8 = 0x6465727265666E69;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74694B7261;
  }

  if (v2)
  {
    v3 = 0xE800000000000000;
  }

  if (v2 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x259C7DFF0](v10, v11);

  MEMORY[0x259C7DFF0](0x203A65707974202CLL, 0xE800000000000000);
  v12 = *(v0 + 48);
  v13 = 0xE500000000000000;
  v14 = 0x6863746170;
  if (v12 != 5)
  {
    v14 = 0x706544656C707061;
    v13 = 0xEA00000000006874;
  }

  v15 = 0xE500000000000000;
  v16 = 0x6C61636F6CLL;
  if (v12 != 3)
  {
    v16 = 0x73756F6976657270;
    v15 = 0xE800000000000000;
  }

  if (*(v0 + 48) <= 4u)
  {
    v14 = v16;
    v13 = v15;
  }

  v17 = 0xE500000000000000;
  v18 = 0x6B6361626C6C6166;
  if (v12 == 1)
  {
    v18 = 0x6465727265666E69;
  }

  if (*(v0 + 48))
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v18 = 0x74694B7261;
  }

  if (*(v0 + 48) <= 2u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (*(v0 + 48) <= 2u)
  {
    v20 = v17;
  }

  else
  {
    v20 = v13;
  }

  MEMORY[0x259C7DFF0](v19, v20);

  MEMORY[0x259C7DFF0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  WorldPlane.confidence.getter();
  sub_2584289C0();
  MEMORY[0x259C7DFF0](0xD000000000000018, 0x80000002584385A0);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](0x3A6C6562616C202CLL, 0xE900000000000020);
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = *(v0 + 16);
  v22 = *(v21 + 24);

  os_unfair_lock_lock(v22);
  swift_beginAccess();
  v23 = *(v21 + 16);
  os_unfair_lock_unlock(v22);

  sub_2583E2618(v23);

  sub_2584290D0();
  MEMORY[0x259C7DFF0](0xD000000000000013, 0x80000002584385C0);
  v24 = *(v1 + 16);
  v25 = *(v24 + 24);

  os_unfair_lock_lock(v25);
  swift_beginAccess();
  v26 = *(v24 + 16);
  os_unfair_lock_unlock(v25);

  sub_2583E279C(v26);

  sub_2584289C0();
  MEMORY[0x259C7DFF0](41, 0xE100000000000000);
  return 0;
}

uint64_t WorldPlane.init(anchor:type:uncertainty:confidenceMultiplier:)(void *a1, char a2, float a3, float a4)
{
  *(v4 + 24) = xmmword_25842EC50;
  *(v4 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v9 = swift_allocObject();
  v10 = a1;
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v4 + 16) = v9;
  swift_endAccess();
  *(v4 + 48) = a2;
  *(v4 + 52) = a3;
  *(v4 + 56) = a4;
  v15 = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v10, v13, static SIMD3<>.zero);

  return v4;
}

uint64_t WorldPlane.similar(to:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v3 + 16);
  os_unfair_lock_unlock(v4);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);

  [v5 transform];
  v21 = v9;
  [v8 transform];
  v11 = vmulq_f32(v21, v10);
  if ((v11.f32[2] + vaddv_f32(*v11.f32)) <= 0.996)
  {
  }

  else
  {
    [v5 transform];
    v22 = v12;
    [v5 transform];
    v20 = v13;
    [v8 transform];
    v19 = v14;
    [v8 transform];
    v18 = v15;

    v16 = vadd_f32(vmul_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v18, v18, 8uLL))), vadd_f32(vmul_f32(vzip1_s32(*v22.i8, *v19.i8), vzip1_s32(*v20.i8, *v18.i8)), vmul_f32(vzip2_s32(*v22.i8, *v19.i8), vzip2_s32(*v20.i8, *v18.i8))));
    if (fabsf(vsub_f32(v16, vdup_lane_s32(v16, 1)).f32[0]) < 0.025)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t WorldPlane.distanceToEdge(point:)(float32x4_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  os_unfair_lock_unlock(v3);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = v5;
  if (v5)
  {
    [v5 transform];
    v26 = __invert_f4(v25);
    *&v7 = simd_float4x4.apply(to:)(a1, v26.columns[0], v26.columns[1], v26.columns[2], v26.columns[3]);
    *v23 = v7;
    v8 = [v6 geometry];
    v9 = sub_258428C90();

    v10 = *(v9 + 16);
    if (v10)
    {
      v24 = MEMORY[0x277D84F90];
      sub_258392214(0, v10, 0);
      v11 = v24;
      v12 = *(v24 + 16);
      v13 = 32;
      do
      {
        v14 = (v9 + v13);
        v15 = *vld2_f32(v14).val;
        v16 = *(v24 + 24);
        if (v12 >= v16 >> 1)
        {
          sub_258392214((v16 > 1), v12 + 1, 1);
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + 16 * v12 + 32) = vcvtq_f64_f32(v15);
        v13 += 16;
        ++v12;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    _s17MeasureFoundation6CVUtilC14signedDistance5point7contour12CoreGraphics7CGFloatVSo7CGPointV_SayAKGtFZ_0(v11, v23[0], v23[2]);
    v19 = v18;

    v20 = v19;
    v17 = LODWORD(v20) ^ 0x80000000;
  }

  else
  {

    v17 = 0;
  }

  return v17 | ((v6 == 0) << 32);
}

unint64_t WorldPlane.distanceToEdge(normalizedPoint:frame:)(void *a1)
{
  v1 = [a1 camera];
  LOBYTE(v2) = 1;
  v17 = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 1;
  v3 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v1, v15);
  v10 = v4;
  v11 = v3;

  WorldPlane.hitTest(hitRay:withPlaneType:)(7, v12, v11, v10);
  v5 = v14;
  if (v14)
  {
    v6 = v13;
    v6.i32[3] = 0;
    v7 = WorldPlane.distanceToEdge(point:)(v6);
    v8 = v7;
    v2 = HIDWORD(v7) & 1;
    sub_2583E3B04(v12);
    v5 = v8;
  }

  return v5 | (v2 << 32);
}

uint64_t WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(void *a1, uint64_t a2, float32x4_t a3)
{
  v46 = a3;
  v47 = *(a2 + 64);
  v48 = v47;
  v6 = sub_2584283F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v44.i8[-v11];
  swift_beginAccess();
  v13 = *(v3 + 16);
  v14 = *(v13 + 24);

  os_unfair_lock_lock(v14);
  swift_beginAccess();
  v15 = *(v13 + 16);
  os_unfair_lock_unlock(v14);

  v16 = [v15 identifier];

  sub_2584283D0();
  v17 = [a1 identifier];
  sub_2584283D0();

  LOBYTE(v17) = sub_2584283C0();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v12, v6);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    v24 = *(v3 + 16);
    v25 = *(v24 + 24);

    os_unfair_lock_lock(v25);
    swift_beginAccess();
    v26 = *(v24 + 16);
    *(v24 + 16) = a1;
    v27 = a1;

    os_unfair_lock_unlock(v25);

    return 0;
  }

  v20 = v19;
  v21 = (*(v3 + 52) == 0.0) | v48;
  v22 = *(a2 + 48);
  v44 = *(a2 + 32);
  v45 = v22;
  v23 = a1;
  if ((v47 & 1) == 0)
  {
    if ((v21 & 1) == 0)
    {
      v36 = vsubq_f32(v46, v45);
      v37 = vmulq_f32(v36, v36);
      v38 = vaddv_f32(*v37.f32);
      if (sqrtf(vmuls_lane_f32(v36.f32[2], v36, 2) + v38) >= 2.0)
      {
        goto LABEL_5;
      }

      v39 = COERCE_UNSIGNED_INT(v37.f32[2] + v38);
      v40 = vrsqrte_f32(v39);
      v41 = vmul_f32(v40, vrsqrts_f32(v39.u32[0], vmul_f32(v40, v40)));
      v42 = vmulq_n_f32(v36, vmul_f32(v41, vrsqrts_f32(v39.u32[0], vmul_f32(v41, v41))).f32[0]);
      v41.f32[0] = (0.0 - *v44.i32) * *v42.i32;
      *v42.i8 = vmul_f32(vsub_f32(0, *&vextq_s8(v44, v44, 4uLL)), *&vextq_s8(v42, v42, 4uLL));
      if ((*&v42.i32[1] + (v41.f32[0] + *v42.i32)) <= 0.866)
      {
        goto LABEL_5;
      }

      [v20 uncertaintyAlongNormal];
      if (v43 >= *(v3 + 52))
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    v30 = *(v3 + 16);
    v31 = *(v30 + 24);

    os_unfair_lock_lock(v31);
    v28 = 1;
    swift_beginAccess();
    v32 = *(v30 + 16);
    *(v30 + 16) = v23;
    v33 = v23;

    os_unfair_lock_unlock(v31);

    [v20 uncertaintyAlongNormal];
    v35 = v34;

    *(v3 + 52) = v35;
    return v28;
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_5:

  return 0;
}

double WorldPlane.hitTest(normalizedPoint:frame:withPlaneType:)@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = [a1 camera];
  v23 = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 1;
  v6 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v5, v21);
  v12 = v7;
  v13 = v6;

  WorldPlane.hitTest(hitRay:withPlaneType:)(a2, v14, v13, v12);
  v8 = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v8;
  *(a3 + 96) = v19;
  *(a3 + 112) = v20;
  v9 = v14[1];
  *a3 = v14[0];
  *(a3 + 16) = v9;
  result = *&v15;
  v11 = v16;
  *(a3 + 32) = v15;
  *(a3 + 48) = v11;
  return result;
}

void WorldPlane.hitTest(hitRay:withPlaneType:)(char a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>)
{
  v5 = v4;
  swift_beginAccess();
  v8 = *(v5 + 16);
  v9 = *(v8 + 24);

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  v10 = *(v8 + 16);
  os_unfair_lock_unlock(v9);

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    if (WorldPlane.baseType.getter() == 3)
    {
      if (qword_27F927AC8 != -1)
      {
        swift_once();
      }

      sub_2583DEFAC(&v71, a3, a4);
      v60 = v72;
      v65 = v71;
      v56 = v74;
      v58 = v73;
      v68 = v75;
      v55 = v76;
      v16 = v77;
      v5 = v78;
      v17 = v79;

      goto LABEL_11;
    }

    if (WorldPlane.baseType.getter() == 5)
    {
      [v10 transform];
      v61 = v25;
      [v10 transform];
      v27 = vmulq_f32(a4, a4);
      *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
      *v27.f32 = vrsqrte_f32(v28);
      *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
      v29 = vmulq_n_f32(a4, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
      v30 = vmulq_f32(v26, v29);
      v31 = v30.f32[2] + vaddv_f32(*v30.f32);
      if (v31 == 0.0)
      {
        goto LABEL_13;
      }

      v26.i32[3] = 0;
      v32 = vmulq_f32(v26, vsubq_f32(v61, a3));
      _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(COERCE_DOUBLE(vadd_f32(*a3.f32, vmul_n_f32(*v29.f32, (v32.f32[2] + vaddv_f32(*v32.f32)) / v31))), v26);
      sceneKitToARKit(_:)(v34, v33);
      v59 = v36;
      v62 = v35;
      v57 = v37;
      v69 = v38;
      LOBYTE(v16) = 1;
      v66 = xmmword_25842EC60;
      v71 = xmmword_25842EC60;
      v72 = v35;
      v73 = v36;
      v74 = v37;
      v39 = 0uLL;
      v75 = v38;
    }

    else
    {
      if (![objc_opt_self() jasperAvailable])
      {
        goto LABEL_13;
      }

      if (WorldPlane.baseType.getter() != 6)
      {
        goto LABEL_13;
      }

      [v10 transform];
      v63 = v41;
      [v10 transform];
      v43 = vmulq_f32(a4, a4);
      *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
      *v43.f32 = vrsqrte_f32(v44);
      *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
      v45 = vmulq_n_f32(a4, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
      v46 = vmulq_f32(v42, v45);
      v47 = v46.f32[2] + vaddv_f32(*v46.f32);
      if (v47 == 0.0)
      {
        goto LABEL_13;
      }

      v42.i32[3] = 0;
      v48 = vmulq_f32(v42, vsubq_f32(v63, a3));
      v48.f32[0] = (v48.f32[2] + vaddv_f32(*v48.f32)) / v47;
      v49 = vmuls_lane_f32(v48.f32[0], v45, 2);
      *v48.f32 = vadd_f32(*a3.f32, vmul_n_f32(*v45.f32, v48.f32[0]));
      v48.f32[2] = a3.f32[2] + v49;
      v70 = v48;
      [v10 transform];
      v59 = v51;
      v62 = v50;
      v57 = v52;
      v53 = v70;
      v53.i32[3] = v54;
      v69 = v53;
      LOBYTE(v16) = 1;
      v66 = xmmword_25842EC60;
      v71 = xmmword_25842EC60;
      v72 = v50;
      v73 = v51;
      v74 = v52;
      v39 = 0uLL;
      v75 = v53;
    }

    v76 = v39;
    LOBYTE(v77) = 1;
    v78 = v5;
    v79 = 0;

    sub_258411874();
    v17 = v40;

    v19 = 0uLL;
    v18 = v57;
    v23 = v59;
    v20 = v66;
    v21 = v69;
    v22 = v62;
    v24 = 0;
    goto LABEL_14;
  }

  v12 = v11;
  v10 = v10;
  v13 = [v12 _hitTestFromOrigin_withDirection_usingExtent_usingGeometry_];
  if (!v13)
  {

LABEL_13:
    v5 = 0;
    LOBYTE(v16) = 0;
    v24 = 0;
    v20 = 0uLL;
    v17 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v18 = 0uLL;
    v21 = 0uLL;
    v19 = 0uLL;
    goto LABEL_14;
  }

  if (a1 == 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = a1;
  }

  v15 = v13;
  sub_258411D3C(v13, v14, &v71);
  v60 = v72;
  v65 = v71;
  v56 = v74;
  v58 = v73;
  v68 = v75;
  v55 = v76;
  v16 = v77;
  v5 = v78;
  v17 = v79;

LABEL_11:
  v19 = v55;
  v18 = v56;
  v20 = v65;
  v21 = v68;
  v23 = v58;
  v22 = v60;
  v24 = v16 & 0xFFFFFFFFFFFFFF00;
LABEL_14:
  *a2 = v20;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 48) = v18;
  *(a2 + 64) = v21;
  *(a2 + 80) = v19;
  *(a2 + 96) = v24 | v16;
  *(a2 + 104) = v5;
  *(a2 + 112) = v17;
}

uint64_t WorldPlane.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorldPlane.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2584283F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584293C0();
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);

  v9 = [v8 identifier];

  sub_2584283D0();
  sub_2584120B0(&qword_27F927FC8, 255, MEMORY[0x277CC95F0]);
  sub_258428590();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x259C7ECE0](*(v1 + 48));
  return sub_2584293F0();
}

uint64_t sub_2584116B4()
{
  sub_2584293C0();
  (*(**v0 + 184))(v2);
  return sub_2584293F0();
}

double WorldPlaneHitTestResult.localPosition.getter()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 104);
    swift_beginAccess();
    v2 = *(v1 + 16);
    v3 = *(v2 + 24);

    os_unfair_lock_lock(v3);
    swift_beginAccess();
    v4 = *(v2 + 16);
    os_unfair_lock_unlock(v3);

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() transform];
    v14 = v6;
    v15 = v5;
    v12 = v8;
    v13 = v7;

    v16.columns[1] = v14;
    v16.columns[0] = v15;
    v16.columns[3] = v12;
    v16.columns[2] = v13;
    v17 = __invert_f4(v16);
    v9 = v17.columns[0];
    v17.columns[0] = *(v0 + 64);
    v17.columns[0].i32[3] = 0;
    *&v10 = simd_float4x4.apply(to:)(v17.columns[0], v9, v17.columns[1], v17.columns[2], v17.columns[3]);
    *(v0 + 80) = v10;
    *(v0 + 96) = 0;
  }

  else
  {
    *&v10 = *(v0 + 80);
  }

  return *&v10;
}

void sub_258411874()
{
  v1 = *(v0[6].i64[1] + 48);
  if (v1 <= 6 && (((1 << v1) & 0x68) != 0 || ((1 << v1) & 0x14) != 0 || v1 == 1) || (v2 = v0[4], v2.i32[3] = 0, (WorldPlane.distanceToEdge(point:)(v2) & 0x100000000) == 0))
  {
    WorldPlane.confidence.getter();
  }
}

uint64_t WorldPlaneContext.MeasureType.hashValue.getter(char a1)
{
  sub_2584293C0();
  MEMORY[0x259C7ECE0](a1 & 1);
  return sub_2584293F0();
}

uint64_t WorldPlaneContext.fallbackPlane.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

double WorldPlaneContext.init(measureType:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1 & 1;
  *(a2 + 1) = 0;
  *(a2 + 136) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  return result;
}

BOOL _s17MeasureFoundation10WorldPlaneC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(v11 + 24);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v11 + 16);
  os_unfair_lock_unlock(v12);

  v14 = [v13 identifier];

  sub_2584283D0();
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(v15 + 24);

  os_unfair_lock_lock(v16);
  swift_beginAccess();
  v17 = *(v15 + 16);
  os_unfair_lock_unlock(v16);

  v18 = [v17 identifier];

  sub_2584283D0();
  LOBYTE(v18) = sub_2584283C0();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v10, v4);
  return (v18 & 1) != 0 && *(a1 + 48) == *(a2 + 48);
}

void sub_258411D3C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 anchor];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for WorldPlane();
    v8 = swift_allocObject();
    *(v8 + 24) = xmmword_25842EC50;
    *(v8 + 40) = 0x3F5DB22D40000000;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
    v9 = swift_allocObject();
    v10 = v7;
    v11 = swift_slowAlloc();
    *v11 = 0;
    *(v9 + 16) = v10;
    *(v9 + 24) = v11;
    *(v8 + 16) = v9;
    swift_endAccess();
    *(v8 + 48) = a2;
    *(v8 + 52) = 0x3F80000000000000;
    memset(v21, 0, sizeof(v21));
    v22 = 1;
    if (qword_27F9279F0 != -1)
    {
      swift_once();
    }

    WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v10, v21, static SIMD3<>.zero);

    [a1 worldTransform];
    v19 = v13;
    v20 = v12;
    v17 = v15;
    v18 = v14;
    sub_258411874();
    *a3 = xmmword_25842EC60;
    *(a3 + 16) = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 1;
    *(a3 + 104) = v8;
    *(a3 + 112) = v16;
  }

  else
  {
    __break(1u);
  }
}

unint64_t _s17MeasureFoundation14WorldPlaneTypeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_258411F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258411FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_258412014()
{
  result = qword_27F929448;
  if (!qword_27F929448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929448);
  }

  return result;
}

uint64_t sub_2584120B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2584120FC()
{
  result = qword_27F929458;
  if (!qword_27F929458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorldPlaneType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorldPlaneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy116_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2584122D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25841231C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2584123B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_258412414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

unint64_t sub_2584124AC()
{
  result = qword_27F929460;
  if (!qword_27F929460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929460);
  }

  return result;
}

double WorldPoint.resultRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  sub_258414E40(v1, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v7[0];
  *(a1 + 77) = *(v7 + 13);
  result = v6[0].n128_f64[0];
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t static WorldPointType.default.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static WorldPointType.default = a1;
  return result;
}

uint64_t WorldPointType.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1885433459;
      }

      if (a1 == 1)
      {
        return 0x726F6A616DLL;
      }

LABEL_20:
      result = sub_258429340();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x726F6E696DLL;
    }

    else
    {
      return 0x6E726F4370616E73;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0xD000000000000011;
        case 7:
          return 0x6976694470616E73;
        case 8:
          return 0xD000000000000010;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0x6567644570616E73;
    }

    else
    {
      return 0x6469754770616E73;
    }
  }
}

unint64_t sub_25841287C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_258415304(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2584129F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_258412A58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *WorldPoint.parentLine.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *WorldPoint.snapLine.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void WorldPoint.snapLine.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_258412C08(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t WorldPoint.partOfRectangleId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t WorldPoint.delegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void (*WorldPoint.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_258412E1C;
}

void sub_258412E1C(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48)) = *(*a1 + 24);
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  free(v2);
}

__n128 WorldPoint.transform.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v3);

  v6 = *(v4 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);

  return v6;
}

uint64_t WorldPoint.connectedEndpoint.getter()
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v4 = *&v3[v0];
  if (v4 >> 62)
  {
    result = sub_258428F10();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x259C7E900](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v3 = *(v4 + 32);
  }

  v2 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v6 = *&v3[v2];
  if (v6 >> 62)
  {
    result = sub_258428F10();
    if (result < 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
LABEL_8:

      return 0;
    }
  }

  v1 = *&v3[v2];
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_35:

    v7 = MEMORY[0x259C7E900](0, v1);

    v1 = *&v3[v2];
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  result = *(v1 + 32);
  v7 = result;
  if ((v1 & 0xC000000000000001) == 0)
  {
LABEL_17:
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(v1 + 40);
      goto LABEL_19;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_36:

  v8 = MEMORY[0x259C7E900](1, v1);

LABEL_19:
  v9 = (v0 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = &v7[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
  swift_beginAccess();
  v13 = *v12 == v10 && *(v12 + 1) == v11;
  if (v13 || (sub_258429310() & 1) != 0)
  {

    return v8;
  }

  else
  {
    v14 = &v8[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
    swift_beginAccess();
    if (*v14 == v10 && *(v14 + 1) == v11)
    {
    }

    else
    {
      v16 = sub_258429310();

      if ((v16 & 1) == 0)
      {

        return 0;
      }
    }

    return v7;
  }
}

uint64_t property wrapper backing initializer of WorldPoint.anchor(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929498);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  *v3 = 0;

  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t WorldPoint.anchor.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v3);

  return v4;
}

uint64_t WorldPoint.anchor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  *(v4 + 16) = a1;

  os_unfair_lock_unlock(v5);

  sub_25841430C();
}

void (*WorldPoint.anchor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);

  os_unfair_lock_unlock(v7);

  *(v4 + 96) = v8;
  return sub_25841348C;
}

void sub_25841348C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*(*a1 + 104) + *(*a1 + 112));
  v5 = *(v4 + 24);
  if (a2)
  {
    swift_retain_n();

    os_unfair_lock_lock(v5);
    swift_beginAccess();
    *(v4 + 16) = v3;

    os_unfair_lock_unlock(v5);

    sub_25841430C();
  }

  else
  {

    os_unfair_lock_lock(v5);
    swift_beginAccess();
    *(v4 + 16) = v3;

    os_unfair_lock_unlock(v5);

    sub_25841430C();
  }

  free(v2);
}

uint64_t WorldPoint.triangulationAnchor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_triangulationAnchor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t property wrapper backing initializer of WorldPoint.type(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9294A8);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t WorldPoint.type.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__type;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  os_unfair_lock_unlock(v3);

  return v4;
}

uint64_t WorldPoint.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  v7 = *(v1 + v3);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  *(v7 + 16) = a1;
  os_unfair_lock_unlock(v8);

  v9 = *(v1 + v3);
  v10 = *(v9 + 24);

  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = *(v9 + 16);
  os_unfair_lock_unlock(v10);

  if (v6 != v11)
  {
    v13 = (v1 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate);
    result = swift_beginAccess();
    if (*v13)
    {
      v14 = v13[1];
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 8);
      swift_unknownObjectRetain();
      v16(v1, ObjectType, v14);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*WorldPoint.type.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__type;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);

  *(v4 + 48) = v8;
  return sub_258413AD4;
}

void sub_258413AD4(uint64_t a1)
{
  v1 = *a1;
  WorldPoint.type.setter(*(*a1 + 48));

  free(v1);
}

uint64_t WorldPoint.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t WorldPoint.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  v4 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  v7 = *(v1 + v3);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  *(v7 + 16) = a1;
  os_unfair_lock_unlock(v8);

  v9 = *(v1 + v3);
  v10 = *(v9 + 24);

  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = *(v9 + 16);
  os_unfair_lock_unlock(v10);

  if (v6 != v11)
  {
    v13 = (v1 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate);
    result = swift_beginAccess();
    if (*v13)
    {
      v14 = v13[1];
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 8);
      swift_unknownObjectRetain();
      v16(v1, ObjectType, v14);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*WorldPoint.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  os_unfair_lock_unlock(v6);

  *(v4 + 24) = v7;
  return sub_258413E98;
}

void sub_258413E98(uint64_t a1)
{
  v1 = *a1;
  WorldPoint.state.setter(*(*a1 + 24));

  free(v1);
}

id WorldPoint.init(anchor:type:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine] = 0;
  v7 = &v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_triangulationAnchor] = 0;
  v9 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929498);
  v10 = swift_allocObject();

  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  *&v3[v9] = v10;
  swift_endAccess();
  v12 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__type;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9294A8);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = a2;
  *(v13 + 24) = v14;
  *&v3[v12] = v13;
  swift_endAccess();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for WorldPoint();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  WorldPoint.state.setter(a3);
  sub_25841430C();

  return v15;
}

uint64_t WorldPoint.addLine(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x259C7E150]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2584288B0();
  }

  sub_258428900();
  return swift_endAccess();
}

void WorldPoint.addParentLine(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
}

void WorldPoint.removeLine(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_258428F10();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C7E900](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        v9 = sub_25838664C(v6);
        swift_endAccess();

        return;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

Swift::Void __swiftcall WorldPoint.removeParentLine()()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_25841430C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v3 + 16);

  os_unfair_lock_unlock(v4);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v5 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_258415C64;
  v7[1] = v6;

  sub_2583B640C(v8, v9);

  v10 = (v1 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate);
  swift_beginAccess();
  if (*v10)
  {
    v11 = v10[1];
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 8);
    swift_unknownObjectRetain();
    v13(v1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  v14 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_triangulationAnchor;
  result = swift_beginAccess();
  if (!*(v1 + v14))
  {
    v16 = *(v1 + v2);
    v17 = *(v16 + 24);

    os_unfair_lock_lock(v17);
    swift_beginAccess();
    v18 = *(v16 + 16);

    os_unfair_lock_unlock(v17);

    v19 = sub_258405B2C(v18, 1);

    *(v1 + v14) = v19;

    v20 = (v19 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    sub_2583B640C(v21, v22);
  }

  return result;
}

void sub_258414570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_delegate);
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    v4 = v1[1];
    swift_unknownObjectRetain();

    if (v3)
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v6, ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall WorldPoint.markAsPartOfRectangle(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = (v1 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
  swift_beginAccess();
  *v4 = countAndFlagsBits;
  v4[1] = object;
}

id WorldPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_258414754()
{

  swift_unknownObjectRelease();
}

id WorldPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldPoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2584148DC()
{
  v1 = *v0;
  v2 = 0x6D726F4E77656976;
  v3 = 0x6E656469666E6F63;
  if (v1 != 6)
  {
    v3 = 0x6E6F43656E616C70;
  }

  v4 = 0x726F4E656E616C70;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 2)
  {
    v5 = 0x707954656E616C70;
  }

  if (*v0)
  {
    v2 = 0x7473694477656976;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2584149FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25841596C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258414A30(uint64_t a1)
{
  v2 = sub_258415338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258414A6C(uint64_t a1)
{
  v2 = sub_258415338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorldPoint.ResultRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9294B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_258415338();
  sub_258429440();
  v14 = *v3;
  v15 = *(v3 + 16);
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A38);
  sub_25841538C();
  sub_258429240();
  if (!v2)
  {
    v10 = *(v3 + 24);
    LOBYTE(v14) = 1;
    v13 = v10;
    sub_258429230();
    LOBYTE(v14) = *(v3 + 25);
    v13 = 2;
    sub_2584153F0();
    sub_258429240();
    LOBYTE(v14) = *(v3 + 26);
    v13 = 3;
    sub_258415444();
    sub_258429240();
    v14 = v3[2];
    v15 = *(v3 + 48);
    v13 = 4;
    sub_258429240();
    v14 = v3[4];
    v15 = *(v3 + 80);
    v13 = 5;
    sub_258429240();
    LOBYTE(v14) = 6;
    sub_258429270();
    v11 = *(v3 + 92);
    LOBYTE(v14) = 7;
    v13 = v11;
    sub_258429230();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_258414DE8@<D0>(uint64_t a1@<X8>)
{
  sub_258414E40(*v1, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v7[0];
  *(a1 + 77) = *(v7 + 13);
  result = v6[0].n128_f64[0];
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

__n128 sub_258414E40@<Q0>(char *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v5 = *(*&a1[v4] + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();

  os_unfair_lock_unlock(v5);

  v6 = WorldAnchor.viewDirection.getter();
  v44 = v7;
  v45 = v6;
  v9 = v8;

  v50 = v9 & 1;
  v10 = *(*&a1[v4] + 24);

  os_unfair_lock_lock(v10);
  swift_beginAccess();

  os_unfair_lock_unlock(v10);

  v11 = WorldAnchor.distanceToViewAnchor.getter();

  v43 = v11;
  v49 = BYTE4(v11) & 1;
  v12 = *&a1[v4];
  v13 = *(v12 + 24);

  os_unfair_lock_lock(v13);
  swift_beginAccess();
  v14 = *(v12 + 16);

  os_unfair_lock_unlock(v13);

  v15 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 24);

  os_unfair_lock_lock(v17);
  swift_beginAccess();
  v18 = *(v16 + 16);

  os_unfair_lock_unlock(v17);

  if (v18)
  {
    v19 = qword_27F927AC8;

    if (v19 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = *(v18 + 16);
    v21 = *(v20 + 24);

    os_unfair_lock_lock(v21);
    swift_beginAccess();
    v22 = *(v20 + 16);
    os_unfair_lock_unlock(v21);

    v23 = sub_2583E2618(v22);

    v24 = *(v18 + 48);
    swift_beginAccess();
    v25 = *(v18 + 16);
    v26 = *(v25 + 24);

    os_unfair_lock_lock(v26);
    swift_beginAccess();
    v27 = *(v25 + 16);
    os_unfair_lock_unlock(v26);

    [v27 transform];
    v46 = v28;

    v29 = v46;
    v29.n128_u32[3] = 0;
    v47 = v29;
  }

  else
  {
    v47 = 0u;
    v24 = 7;
    v23 = 33;
  }

  v30 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_triangulationAnchor;
  swift_beginAccess();
  if (*&a1[v30])
  {

    v31 = WorldAnchor.viewDirection.getter();
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v35 = 1;
  }

  v48 = v35 & 1;
  v36 = *&a1[v4];
  v37 = *(v36 + 24);

  os_unfair_lock_lock(v37);
  swift_beginAccess();
  v38 = *(v36 + 16);

  os_unfair_lock_unlock(v37);

  v39 = (v38 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
  swift_beginAccess();
  v40 = *v39;

  if (v18)
  {

    v41 = WorldPlane.confidence.getter();
  }

  else
  {

    v41 = 0.0;
  }

  a2->n128_u64[0] = v45;
  a2->n128_u64[1] = v44;
  a2[1].n128_u8[0] = v50;
  a2[1].n128_u32[1] = v43;
  a2[1].n128_u8[8] = v49;
  a2[1].n128_u8[9] = v23;
  a2[1].n128_u8[10] = v24;
  result = v47;
  a2[2] = v47;
  a2[3].n128_u8[0] = v18 == 0;
  a2[4].n128_u64[0] = v31;
  a2[4].n128_u64[1] = v33;
  a2[5].n128_u8[0] = v48;
  a2[5].n128_u32[1] = v40;
  a2[5].n128_f32[2] = v41;
  a2[5].n128_u8[12] = v18 == 0;
  return result;
}

unint64_t sub_258415304(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_258415338()
{
  result = qword_27F9294C0;
  if (!qword_27F9294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294C0);
  }

  return result;
}

unint64_t sub_25841538C()
{
  result = qword_27F929158;
  if (!qword_27F929158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929158);
  }

  return result;
}

unint64_t sub_2584153F0()
{
  result = qword_27F9294C8;
  if (!qword_27F9294C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294C8);
  }

  return result;
}

unint64_t sub_258415444()
{
  result = qword_27F9294D0;
  if (!qword_27F9294D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294D0);
  }

  return result;
}

unint64_t sub_25841549C()
{
  result = qword_27F9294D8;
  if (!qword_27F9294D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294D8);
  }

  return result;
}

uint64_t sub_2584154F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_258415554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2584155C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

__n128 __swift_memcpy93_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_258415650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 93))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 26);
  if (v3 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = *(a1 + 26);
  }

  v5 = v4 - 8;
  if (v3 < 7)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_2584156A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorldPoint.ResultRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorldPoint.ResultRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258415868()
{
  result = qword_27F9294E0;
  if (!qword_27F9294E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294E0);
  }

  return result;
}

unint64_t sub_2584158C0()
{
  result = qword_27F9294E8;
  if (!qword_27F9294E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294E8);
  }

  return result;
}

unint64_t sub_258415918()
{
  result = qword_27F9294F0;
  if (!qword_27F9294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9294F0);
  }

  return result;
}

uint64_t sub_25841596C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D726F4E77656976 && a2 == 0xEA00000000006C61 || (sub_258429310() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694477656976 && a2 == 0xEC00000065636E61 || (sub_258429310() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_258429310() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954656E616C70 && a2 == 0xE900000000000065 || (sub_258429310() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F4E656E616C70 && a2 == 0xEB000000006C616DLL || (sub_258429310() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000258438840 == a2 || (sub_258429310() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_258429310() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F43656E616C70 && a2 == 0xEF65636E65646966)
  {

    return 7;
  }

  else
  {
    v5 = sub_258429310();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_258415C2C()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t MeasurementEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2584283F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MeasurementEvent.time.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2584283A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t MeasurementEvent.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t MeasurementEvent.init(name:results:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v12 = type metadata accessor for MeasurementEvent();
  _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
  v13 = (a6 + *(v12 + 40));
  *v13 = a1;
  v13[1] = a2;
  v20[5] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v14 = sub_258428980();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_2583D5394(sub_258415ED4, v20, v14, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  *(a6 + *(v12 + 44)) = v18;
  return result;
}

uint64_t sub_258415F18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_258429310() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_258429310() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_258429310() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_258429310();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2584160A8(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 1701667182;
  if (a1 != 2)
  {
    v2 = 0x73746C75736572;
  }

  if (a1)
  {
    v1 = 1701669236;
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

uint64_t sub_258416138()
{
  sub_2584293C0();
  sub_258416080(v2, *v0);
  return sub_2584293F0();
}

uint64_t sub_25841618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258415F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2584161BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2584169C0();
  *a1 = result;
  return result;
}

uint64_t sub_2584161E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25841623C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MeasurementEvent.encode(to:)(void *a1, uint64_t a2)
{
  v13 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v5;
  type metadata accessor for MeasurementEvent.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_258429290();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_258429440();
  LOBYTE(v17) = 0;
  sub_2584283F0();
  sub_2584165FC(&qword_27F9294F8, MEMORY[0x277CC95F0]);
  v10 = v14;
  sub_258429280();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  LOBYTE(v17) = 1;
  sub_2584283A0();
  sub_2584165FC(qword_27F929500, MEMORY[0x277CC9578]);
  sub_258429280();
  LOBYTE(v17) = 2;
  sub_258429250();
  v17 = *(v3 + *(v13 + 44));
  v16 = 3;
  swift_getAssociatedTypeWitness();
  sub_258428980();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_258429280();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2584165FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25841665C()
{
  result = sub_2584283F0();
  if (v1 <= 0x3F)
  {
    result = sub_2584283A0();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_258428980();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_258416734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2584283F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2584283A0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_258416858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2584283F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2584283A0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2584169C8(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[1].i64[0];
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    sub_258392234(0, v3, 0);
    result = v21;
    v7 = a1 + 2;
    while ((*(a2 + 128) & 1) == 0)
    {
      v8 = *(a2 + 112);
      v9.i64[0] = v8;
      v9.i64[1] = *(a2 + 120);
      v10 = *v7;
      v22 = result;
      v12 = *(result + 16);
      v11 = *(result + 24);
      if (v12 >= v11 >> 1)
      {
        v19 = *v7;
        v20 = v6;
        v18 = v9;
        sub_258392234((v11 > 1), v12 + 1, 1);
        v9 = v18;
        v10 = v19;
        v6 = v20;
        result = v22;
      }

      v13.i64[0] = __PAIR64__(v9.u32[1], v8);
      v13.i64[1] = vextq_s8(v9, v9, 8uLL).u64[0];
      v14 = vsubq_f32(v13, v10);
      v15 = vmulq_f32(v14, v14);
      *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
      *v15.f32 = vrsqrte_f32(v16);
      *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
      v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
      v17.i32[3] = v6;
      *(result + 16) = v12 + 1;
      *(result + 16 * v12 + 32) = v17;
      ++v7;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258416B1C(const void *a1)
{
  v3 = v1[2];
  v4 = *(v3 + 2);
  v5 = *v1;
  if (v4 >= *v1)
  {
    v9 = v1[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_2583A7C5C(v3);
      v3 = result;
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v9 < *(v3 + 2))
        {
          v10 = &v3[304 * v9];
          memcpy(__dst, v10 + 32, 0x130uLL);
          memcpy(v10 + 32, a1, 0x130uLL);
          sub_25841AC14(a1, &v11);
          result = sub_25841AC4C(__dst);
          v1[2] = v3;
          if (v5)
          {
            v1[1] = (v9 + 1) % v5;
            return result;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_25841AC14(a1, __dst);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25839DDFC(0, v4 + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  if (v7 >= v6 >> 1)
  {
    v3 = sub_25839DDFC((v6 > 1), v7 + 1, 1, v3);
  }

  *(v3 + 2) = v7 + 1;
  result = memcpy(&v3[304 * v7 + 32], a1, 0x130uLL);
  v1[2] = v3;
  return result;
}

__n128 WorldRectangleData.orientation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 WorldRectangleData.screenCoordinates.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *a1 = *(v1 + 240);
  *(a1 + 16) = v2;
  result = *(v1 + 272);
  v4 = *(v1 + 288);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

double WorldRectangleData.cgSize.getter()
{
  result = *(v0 + 148);
  if (*(v0 + 156))
  {
    return 0.0;
  }

  return result;
}

void WorldRectangleData.init(_:screenCoordinates:keyFrame:)(unint64_t a1@<X0>, unint64_t a2@<X1>, float32x4_t *a3@<X2>, os_unfair_lock_s *a4@<X8>)
{
  v10 = sub_2584283A0();
  v11 = *&v10[-2]._os_unfair_lock_opaque;
  MEMORY[0x28223BE20](v10);
  v67.i64[0] = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v74[9] + 4) = 0;
  memset(v74, 0, 32);
  BYTE12(v74[9]) = 1;
  v13 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
      goto LABEL_3;
    }

LABEL_86:

    goto LABEL_87;
  }

  while (2)
  {
    if (sub_258428F10() != 4)
    {
      goto LABEL_86;
    }

LABEL_3:
    v14 = *(a2 + 16);
    v74[15] = *a2;
    v74[16] = v14;
    v15 = *(a2 + 48);
    v74[17] = *(a2 + 32);
    v74[18] = v15;
    v16 = (a1 & 0xC000000000000001);
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_92:
      v17 = MEMORY[0x259C7E900](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_94;
      }
    }

    v69 = *(v17 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 16);

    v18 = v69;
    v18.i32[3] = 0;
    v63 = v18;
    v74[13] = v18;
    LOBYTE(v74[14]) = 0;
    if (a3)
    {
      v19 = [(float32x4_t *)a3 camera];
      [v19 transform];
      v66 = v20;

      v21 = vmulq_f32(v69, v66);
      v22 = v21.f32[2] + vaddv_f32(*v21.f32);
    }

    else
    {
      v22 = 1.0;
    }

    v66.i64[0] = v10;
    *(&v74[11] + 1) = v22;
    BYTE8(v74[11]) = 0;
    *&v74[1] = a1;
    *&v74[0] = MEMORY[0x277D84F90];
    if (v13)
    {
      v10 = sub_258428F10();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65.i64[0] = v11;
    v60 = a3;
    v61 = a4;

    a3 = MEMORY[0x277D84F90];
    v68 = a1;
    if (!v10)
    {
LABEL_26:
      *(&v74[0] + 1) = a3;

      v26 = v67.i64[0];
      _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
      sub_258428380();
      v4 = v27;
      (*(v65.i64[0] + 8))(v26, v66.i64[0]);
      *&v74[10] = v4;
      BYTE8(v74[10]) = 0;
      if (!a3)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        return;
      }

      sub_25841A414(a3);
      *(&v74[10] + 3) = v28;
      LOBYTE(v74[11]) = 0;
      if (v28 > 0.05)
      {

        a4 = v61;
        goto LABEL_87;
      }

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_25842BFA0;
      if (a3[1].i64[0] >= 2uLL)
      {
        a2 = v29;
        v30 = v29 + 32;
        v31 = vsubq_f32(a3[3], a3[2]);
        v32 = vmulq_f32(v31, v31);
        *(v29 + 32) = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
        if (a3[1].i64[0] >= 4uLL)
        {
          v33 = vsubq_f32(a3[5], a3[2]);
          v34 = vmulq_f32(v33, v33);
          *(v29 + 36) = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
          v77 = min(_:)(v29);
          if ((*&v77.is_nil & 0x100000000) != 0)
          {
            goto LABEL_104;
          }

          v35 = v77.value.index + 1;
          if (!__OFADD__(v77.value.index, 1))
          {
            if (v35 >= 0)
            {
              v36 = v35 & 1;
            }

            else
            {
              v36 = -(v35 & 1);
            }

            if (v77.value.index <= 1uLL)
            {
              if (*(v30 + 4 * v77.value.index) < 0.005 || *(v30 + 4 * v36) > 100.0)
              {

                swift_setDeallocating();
                swift_deallocClassInstance();
                a4 = v61;
                goto LABEL_87;
              }

              v59 = a2;
              v16 = sub_25841A5A8(a3, v63);
              v37 = 0;
              a1 = *&v74[1];
              v63 = xmmword_25842D9A0;
              v62 = v16;
              while (a1)
              {
                v11 = a1 + 8 * v37;
                v13 = a1 & 0xC000000000000001;
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x259C7E900](v37, a1);
                }

                else
                {
                  if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_83;
                  }
                }

                v39 = *(v38 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 16);
                v69 = *(v38 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
                v66 = *(v38 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 32);
                v67 = v39;

                v40 = swift_allocObject();
                v40[1] = v63;
                if (v37 >= v16[1].i64[0])
                {
                  goto LABEL_82;
                }

                v41 = v16[v37 + 2];
                v40[2].i64[0] = v41.i64[0];
                v40[2].i32[2] = v41.i32[2];
                v40[2].i32[3] = 1065353216;
                sub_258381F24(v40);
                v65 = v42;
                swift_setDeallocating();
                swift_deallocClassInstance();
                if (v13)
                {
                  a4 = MEMORY[0x259C7E900](v37, a1);
                }

                else
                {
                  if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
LABEL_90:
                    __break(1u);
LABEL_91:
                    __break(1u);
                    goto LABEL_92;
                  }

                  a4 = *(v11 + 32);
                }

                v43 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
                swift_beginAccess();
                v16 = *(&a4->_os_unfair_lock_opaque + v43);
                v10 = v16[1].i64[1];

                os_unfair_lock_lock(v10);
                swift_beginAccess();
                v44 = v16[1].i64[0];

                os_unfair_lock_unlock(v10);

                if (v13)
                {
                  a4 = MEMORY[0x259C7E900](v37, a1);
                }

                else
                {
                  if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_90;
                  }

                  a4 = *(v11 + 32);
                }

                v16 = (a4 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
                swift_beginAccess();
                LODWORD(v4) = v16->i32[0];

                if (v13)
                {
                  v45 = MEMORY[0x259C7E900](v37, a1);
                }

                else
                {
                  if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_91;
                  }

                  v45 = *(v11 + 32);
                }

                v73[0] = 1;
                memset(v75, 0, sizeof(v75));
                v76 = 1;
                v13 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
                swift_beginAccess();
                v46 = *(v45 + v13);

                type metadata accessor for WorldAnchor();
                swift_allocObject();
                a2 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)(v75[0].i8, v44, v46, v75, v69, v67, v66, v65, *&v4);
                a1 = *&v74[1];
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
                {
                  a1 = sub_2583A7C70(a1);
                }

                v16 = v62;
                if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_84;
                }

                *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v37 + 0x20) = a2;

                *&v74[1] = a1;
                if (++v37 == 4)
                {

                  *&v74[0] = v16;
                  v47 = v16[1].u64[0];
                  if (!v47)
                  {
                    goto LABEL_98;
                  }

                  v48 = v60;
                  a4 = v61;
                  if (v47 < 3)
                  {
                    goto LABEL_99;
                  }

                  if (v47 == 3)
                  {
                    goto LABEL_100;
                  }

                  v49 = vsubq_f32(v16[2], v16[4]);
                  v50 = vmulq_f32(v49, v49);
                  v51 = vsubq_f32(v16[3], v16[5]);
                  v52 = vmulq_f32(v51, v51);
                  v53 = vadd_f32(vzip1_s32(*v50.i8, *v52.i8), vzip2_s32(*v50.i8, *v52.i8));
                  v54 = vextq_s8(v50, v50, 8uLL).u64[0];
                  v55 = COERCE_DOUBLE(vsqrt_f32(vadd_f32(vzip1_s32(v54, *&vextq_s8(v52, v52, 8uLL)), v53)));
                  if (*&v55 <= *(&v55 + 1))
                  {
                    *&v55 = *(&v55 + 1);
                  }

                  v54.i32[0] = 0.5;
                  *&v55 = *&v55 * 0.5;
                  DWORD1(v74[14]) = LODWORD(v55);
                  BYTE8(v74[14]) = 0;
                  *&v56 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(v16, v55, *&v54);
                  LOBYTE(v74[8]) = 0;
                  HIDWORD(v74[11]) = 0;
                  LOWORD(v74[12]) = 0;
                  DWORD1(v74[8]) = 0;
                  BYTE8(v74[8]) = 0;
                  HIDWORD(v74[8]) = 1065353216;
                  LOBYTE(v74[9]) = 0;
                  *(&v74[1] + 1) = MEMORY[0x277D84F90];
                  memset(&v74[2], 0, 17);
                  v57 = *(MEMORY[0x277D860B0] + 16);
                  v58 = *(MEMORY[0x277D860B0] + 32);
                  v74[4] = *MEMORY[0x277D860B0];
                  v74[5] = v57;
                  v74[7] = v56;
                  v74[6] = v58;
                  sub_258417A4C();

                  if (BYTE12(v74[9]))
                  {
                    goto LABEL_105;
                  }

                  LODWORD(v4) = DWORD1(v74[9]);
                  if (*(&v74[9] + 1) == 0.0 || (v5 = *(&v74[9] + 2), *(&v74[9] + 2) == 0.0) || (*(&v74[8] + 3) = *(&v74[9] + 2) / *(&v74[9] + 1), LOBYTE(v74[9]) = 0, (*(&v74[9] + 2) / *(&v74[9] + 1)) > 100.0) || (*(&v74[9] + 2) / *(&v74[9] + 1)) < 1.0)
                  {

                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    goto LABEL_87;
                  }

                  goto LABEL_78;
                }
              }

              goto LABEL_102;
            }

LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    a2 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = 1;
    while (v16)
    {
      v11 = MEMORY[0x259C7E900](a2, v68);
      a4 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_77;
      }

LABEL_20:
      if (!v23)
      {
        goto LABEL_101;
      }

      v69 = *(v11 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_25839D2FC(0, a3[1].i64[0] + 1, 1, a3);
      }

      a1 = a3[1].u64[0];
      v24 = a3[1].u64[1];
      if (a1 >= v24 >> 1)
      {
        a3 = sub_25839D2FC((v24 > 1), a1 + 1, 1, a3);
      }

      v25 = v69;
      v25.i32[3] = 0;
      a3[1].i64[0] = a1 + 1;
      a3[a1 + 2] = v25;
      *&v74[0] = a3;
      ++a2;
      v23 = a3;
      if (a4 == v10)
      {
        goto LABEL_26;
      }
    }

    if (a2 >= *(v13 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      continue;
    }

    break;
  }

  v11 = *(v68 + 8 * a2 + 32);

  a4 = (a2 + 1);
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_20;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  *(&v74[11] + 3) = *&v4 / v5;
  LOBYTE(v74[12]) = 0;
  BYTE1(v74[12]) = (*&v4 / v5) >= 0.9;

  swift_setDeallocating();
  swift_deallocClassInstance();
  *(&v74[8] + 1) = *&v4 * v5;
  BYTE8(v74[8]) = 0;
  if ((*&v4 * v5) <= 100.0 && (*&v4 * v5) >= 0.0001)
  {
    memcpy(v70, v74, sizeof(v70));
    memcpy(v71, v74, sizeof(v71));
    nullsub_1(v71);
    memcpy(v72, v74, 0x130uLL);
    sub_25841AC14(v70, v73);
    sub_25841AC4C(v72);
    memcpy(v73, v71, sizeof(v73));
    goto LABEL_88;
  }

LABEL_87:

  sub_25837E2F8(v73);
LABEL_88:
  memcpy(a4, v73, 0x130uLL);
}

uint64_t sub_258417A4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
  result = swift_allocObject();
  *(result + 16) = xmmword_25842BFA0;
  v3 = *v1;
  if (*v1)
  {
    v4 = v3[1].u64[0];
    if (v4 < 2)
    {
      __break(1u);
    }

    else
    {
      v0 = result;
      v5 = v3[2];
      v6 = vsubq_f32(v3[3], v5);
      v6.i32[3] = 0;
      *(result + 32) = v6;
      if (v4 >= 4)
      {
        v7 = vsubq_f32(v3[5], v5);
        v7.i32[3] = 0;
        *(result + 48) = v7;

        *(v1 + 24) = v0;
        if (*(v0 + 2) >= 2uLL)
        {
          v8 = *(v0 + 2);
          v9 = *(v0 + 3);
          v10 = vmulq_f32(v9, v9);
          v11 = vmulq_f32(v8, v8);
          *v10.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v11.i8, *v10.i8), vzip2_s32(*v11.i8, *v10.i8))));
          *(v1 + 148) = v10.u32[1] | (v10.u32[0] << 32);
          *(v1 + 156) = 0;
          if (*v10.i32 >= *&v10.i32[1])
          {
            goto LABEL_12;
          }

          v22 = v8;
          v23 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_22;
          }

          while (1)
          {
            if (*(v0 + 2))
            {
              *(v0 + 2) = v23;
              *(v1 + 24) = v0;
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                goto LABEL_9;
              }
            }

            else
            {
              __break(1u);
            }

            result = sub_2583A7BE4(v0);
            v0 = result;
LABEL_9:
            if (*(v0 + 2) < 2uLL)
            {
              __break(1u);
              goto LABEL_26;
            }

            *(v0 + 3) = v22;
            *(v1 + 24) = v0;
            if (*(v1 + 156))
            {
              goto LABEL_29;
            }

            *(v1 + 148) = vrev64_s32(*(v1 + 148));
LABEL_12:
            if (!v0)
            {
              goto LABEL_27;
            }

            v12 = *(v0 + 2);
            if (v12)
            {
              v13 = *(v0 + 2);
              v14 = vmulq_f32(v13, v13);
              *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
              *v14.f32 = vrsqrte_f32(v15);
              *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
              v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
              *(v1 + 32) = v16;
              *(v1 + 48) = 0;
              if (v12 != 1)
              {
                if (*(v1 + 224))
                {
                  goto LABEL_28;
                }

                v17 = *(v0 + 3);
                v18 = *(v1 + 208);
                v19 = *(v1 + 216);
                v20 = vmulq_f32(v17, v17);
                *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
                *v20.f32 = vrsqrte_f32(v21);
                *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
                *(v1 + 64) = vmulq_n_f32(v17, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
                *(v1 + 80) = v18;
                *(v1 + 88) = v19;
                *(v1 + 96) = v16;
                return result;
              }
            }

            else
            {
LABEL_20:
              __break(1u);
            }

            __break(1u);
LABEL_22:
            v0 = sub_2583A7BE4(v0);
          }
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static WorldRectangleData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 168);
  result = *(a2 + 168);
  if ((v3 & 1) == 0)
  {
    return (*(a1 + 160) == *(a2 + 160)) & ~result;
  }

  return result;
}

void sub_258417CBC(float32x4_t a1)
{
  v2 = v1;
  if (!*v1)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v4 = sub_2584169C8(v3, v1);

  v5 = *(v4 + 16);
  v6._rawValue = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_258392194(0, v5, 0);
    v6._rawValue = v28;
    v7 = (v4 + 32);
    v8 = v28[2];
    v9 = a1;
    do
    {
      v10 = *v7;
      v11 = v28[3];
      if (v8 >= v11 >> 1)
      {
        v25 = *v7;
        sub_258392194((v11 > 1), v8 + 1, 1);
        v10 = v25;
        v9 = a1;
      }

      v12 = vmulq_f32(v10, v9);
      v28[2] = v8 + 1;
      *(v28 + v8 + 8) = v12.f32[2] + vaddv_f32(*v12.f32);
      ++v7;
      ++v8;
      --v5;
    }

    while (v5);
  }

  v30 = max(_:)(v6);
  if ((*&v30.is_nil & 0x100000000) != 0)
  {
    goto LABEL_45;
  }

  index = v30.value.index;
  if (!v30.value.index)
  {

    return;
  }

  if (v30.value.index < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v14 = 0;
  do
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v16 = *v2;
    if (!*v2)
    {
      goto LABEL_41;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = sub_2583A7BE4(v16);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_38;
      }
    }

    v18 = v17 - 1;
    v27 = *(v16 + 2);
    memmove(v16 + 32, v16 + 48, 16 * (v17 - 1));
    *(v16 + 2) = v18;
    *v2 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_25839D2FC(0, *(v16 + 2) + 1, 1, v16);
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = sub_25839D2FC((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    *&v16[16 * v20 + 32] = v27;
    *v2 = v16;
    v21 = v2[2];
    if (!v21)
    {
      goto LABEL_42;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v21 >> 62)
    {
      v21 = sub_2583A7C70(v21);
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_39;
    }

    v23 = v22 - 1;
    v24 = memmove(((v21 & 0xFFFFFFFFFFFFFF8) + 32), ((v21 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v22 - 1));
    *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) = v23;
    v2[2] = v21;
    if (!v21)
    {
      goto LABEL_43;
    }

    MEMORY[0x259C7E150](v24);
    if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2584288B0();
    }

    sub_258428900();
    ++v14;
  }

  while (v15 != index);

  sub_258417A4C();
}

uint64_t static WorldRectangleData.pointLiesWithinRectangle(point:rectangle:pointsCoplanar:)(uint64_t result, char a2, float32x4_t a3)
{
  v3 = result;
  if ((a2 & 1) == 0)
  {
    result = _s17MeasureFoundation18WorldRectangleDataV014projectPointToD05point9rectangles5SIMD3VySfGAI_ACtFZ_0(result);
  }

  v4 = v3[3];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4[1].i64[0];
  result = MEMORY[0x277D84F90];
  v41 = a3;
  if (v5)
  {
    v42 = MEMORY[0x277D84F90];
    sub_258392234(0, v5, 0);
    result = v42;
    v7 = v4 + 2;
    v8 = *(v42 + 16);
    do
    {
      v9 = *v7;
      v43 = result;
      v10 = *(result + 24);
      if (v8 >= v10 >> 1)
      {
        v37 = *v7;
        v40 = v6;
        sub_258392234((v10 > 1), v8 + 1, 1);
        v9 = v37;
        v6 = v40;
        result = v43;
      }

      v11 = vmulq_f32(v9, v9);
      *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
      *v11.f32 = vrsqrte_f32(v12);
      *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
      v13 = vmulq_n_f32(v9, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
      v13.i32[3] = v6;
      *(result + 16) = v8 + 1;
      *(result + 16 * v8 + 32) = v13;
      ++v7;
      ++v8;
      --v5;
    }

    while (v5);
    a3 = v41;
  }

  v14 = *v3;
  if (!*v3)
  {
    goto LABEL_30;
  }

  if (!v14[1].i64[0])
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(result + 16);
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = 0;
  v17 = v14[2];
  v18 = a3.f32[2];
  v19 = COERCE_FLOAT(v14[2].i64[1]);
  v20 = vsubq_f32(a3, v17);
  v20.f32[2] = a3.f32[2] - v19;
  v21 = *(result + 32);
  v22 = vmulq_f32(v20, v21);
  v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  if (v23 > 0.0)
  {
    v24 = vmuls_lane_f32(v23, v21, 2);
    v25 = vsubq_f32(a3, vaddq_f32(v17, vmulq_n_f32(v21, v23)));
    v25.f32[2] = a3.f32[2] - (v19 + v24);
    v26 = vmulq_f32(v25, v25);
    v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    if (v27 > 0.0)
    {
      if (v4[1].i64[0] < 2uLL)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v28 = vmulq_f32(v4[3], v4[3]);
      v16 = v27 < sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
    }
  }

  if (v15 == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20.i32[3] = 0;
  v36 = v14[2];
  v38 = v20;
  v39 = *(result + 48);

  v29 = vmulq_f32(v38, v39);
  v30 = v29.f32[2] + vaddv_f32(*v29.f32);
  if (v30 > 0.0)
  {
    v31 = vmuls_lane_f32(v30, v39, 2);
    v32 = vsubq_f32(v41, vaddq_f32(v36, vmulq_n_f32(v39, v30)));
    v32.f32[2] = v18 - (v19 + v31);
    v33 = vmulq_f32(v32, v32);
    v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    if (v34 > 0.0)
    {
      if (v4[1].i64[0])
      {
        v35 = vmulq_f32(v4[2], v4[2]);
        result = v34 < sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
        if (v16)
        {
          return result;
        }

        return 0;
      }

      goto LABEL_28;
    }
  }

  return 0;
}

uint64_t sub_2584182B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 168);
  result = *(a2 + 168);
  if ((v3 & 1) == 0)
  {
    return (*(a1 + 160) == *(a2 + 160)) & ~result;
  }

  return result;
}

uint64_t sub_2584182F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), sizeof(__dst));
  memcpy(a2, (v3 + v4), 0x130uLL);
  return sub_25841ACF4(__dst, &v6);
}

uint64_t sub_25841836C(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(v8, (v3 + v4), sizeof(v8));
  memcpy((v3 + v4), __dst, 0x130uLL);
  sub_25841ACF4(__dst, &v6);
  return sub_25841AD88(v8);
}

void *WorldRectangle.data.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_25841ACF4(__dst, &v5);
  return memcpy(a1, __dst, 0x130uLL);
}

uint64_t WorldRectangle.rectangleDataBuffer.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_rectangleDataBuffer);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t WorldRectangle.rectangleDataBuffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_rectangleDataBuffer);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t WorldRectangle.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t WorldRectangle.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  v4 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  v7 = *(v1 + v3);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  *(v7 + 16) = a1;
  os_unfair_lock_unlock(v8);

  return sub_2584187C0(v6);
}

uint64_t sub_2584187C0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  v5 = *(v2 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  os_unfair_lock_unlock(v6);

  if (v7 == a1)
  {
    return result;
  }

  v9 = *(v2 + v4);
  v10 = *(v9 + 24);

  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = *(v9 + 16);
  os_unfair_lock_unlock(v10);

  if (v11 == 6)
  {
    sub_2584197AC();
  }

  v12 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_edges;
  result = swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
LABEL_6:
    if (v14 >= 1)
    {

      v15 = 0;
      v51 = v14;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x259C7E900](v15, v13);
        }

        else
        {
          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = *(v2 + v4);
        v19 = *(v18 + 24);

        os_unfair_lock_lock(v19);
        swift_beginAccess();
        v20 = *(v18 + 16);
        os_unfair_lock_unlock(v19);

        v21 = *&v17[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
        v22 = *(v21 + 24);

        os_unfair_lock_lock(v22);
        swift_beginAccess();
        *(v21 + 16) = v20;
        os_unfair_lock_unlock(v22);

        v23 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = MEMORY[0x259C7E900](0, v24);
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = sub_258428F10();
            v14 = result;
            if (!result)
            {
              goto LABEL_21;
            }

            goto LABEL_6;
          }

          v25 = *(v24 + 32);
        }

        v26 = *(v2 + v4);
        v27 = *(v26 + 24);

        os_unfair_lock_lock(v27);
        swift_beginAccess();
        v28 = *(v26 + 16);
        os_unfair_lock_unlock(v27);

        WorldPoint.state.setter(v28);

        v29 = *&v17[v23];
        if ((v29 & 0xC000000000000001) != 0)
        {

          v30 = MEMORY[0x259C7E900](1, v29);
        }

        else
        {
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_32;
          }

          v30 = *(v29 + 40);
        }

        ++v15;
        v31 = *(v2 + v4);
        v32 = *(v31 + 24);

        os_unfair_lock_lock(v32);
        swift_beginAccess();
        v33 = *(v31 + 16);
        os_unfair_lock_unlock(v32);

        WorldPoint.state.setter(v33);

        v34 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
        swift_beginAccess();
        v35 = *&v17[v34];
        v36 = *(v2 + v4);
        v37 = *(v36 + 24);
        v38 = v35;

        os_unfair_lock_lock(v37);
        swift_beginAccess();
        v39 = *(v36 + 16);
        os_unfair_lock_unlock(v37);

        WorldPoint.state.setter(v39);

        if (v51 == v15)
        {

          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_21:
    v40 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_splitters;
    result = swift_beginAccess();
    v41 = *(v2 + v40);
    if (v41 >> 62)
    {
      result = sub_258428F10();
      v42 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        return result;
      }
    }

    if (v42 < 1)
    {
      goto LABEL_38;
    }

    v43 = 0;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x259C7E900](v43, v41);
      }

      else
      {
        v44 = *(v41 + 8 * v43 + 32);
      }

      v45 = v44;
      ++v43;
      v46 = *(v2 + v4);
      v47 = *(v46 + 24);

      os_unfair_lock_lock(v47);
      swift_beginAccess();
      v48 = *(v46 + 16);
      os_unfair_lock_unlock(v47);

      v49 = *&v45[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
      v50 = *(v49 + 24);

      os_unfair_lock_lock(v50);
      swift_beginAccess();
      *(v49 + 16) = v48;
      os_unfair_lock_unlock(v50);
    }

    while (v42 != v43);
  }

  return result;
}

void (*WorldRectangle.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  v6 = *(v1 + v5);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);

  *(v4 + 120) = v8;
  return sub_258418DB8;
}

void sub_258418DB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 120);
  v3 = *(*(*a1 + 128) + *(*a1 + 136));
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4);
  v5 = v1[16];
  v6 = v1[17];
  swift_beginAccess();
  v7 = *(v3 + 16);
  os_unfair_lock_unlock(v4);

  v8 = *(v5 + v6);
  v9 = *(v8 + 24);

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  *(v8 + 16) = v2;
  os_unfair_lock_unlock(v9);

  sub_2584187C0(v7);

  free(v1);
}

uint64_t WorldRectangle.init(data:edges:splitters:)(const void *a1, unint64_t a2, unint64_t a3)
{
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_edges] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_splitters] = v7;
  v8 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  sub_25837E2F8(__src);
  memcpy(&v3[v8], __src, 0x130uLL);
  v9 = &v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_rectangleDataBuffer];
  v10 = sub_25839DDFC(0, 10, 0, v7);
  *v9 = xmmword_2584318A0;
  *(v9 + 2) = v10;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationTime] = 0x4000000000000000;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationTimer] = 0;
  v11 = &v3[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationAction];
  v12 = type metadata accessor for WorldRectangle();
  *v11 = 0;
  *(v11 + 1) = 0;
  v46.receiver = v3;
  v46.super_class = v12;
  v13 = objc_msgSendSuper2(&v46, sel_init);
  v14 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  v15 = *&v13[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v16 = *(v15 + 24);

  os_unfair_lock_lock(v16);
  swift_beginAccess();
  v17 = *(v15 + 16);
  os_unfair_lock_unlock(v16);

  v18 = *&v13[v14];
  v19 = *(v18 + 24);

  os_unfair_lock_lock(v19);
  swift_beginAccess();
  *(v18 + 16) = 1;
  os_unfair_lock_unlock(v19);

  sub_2584187C0(v17);
  memcpy(__dst, a1, sizeof(__dst));
  nullsub_1(__dst);
  v20 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(v49, &v13[v20], 0x130uLL);
  memcpy(&v13[v20], __dst, 0x130uLL);
  sub_25841AD88(v49);
  v21 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_edges;
  swift_beginAccess();
  *&v13[v21] = a2;

  v22 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_splitters;
  swift_beginAccess();
  *&v13[v22] = a3;

  if (a2 >> 62)
  {
    result = sub_258428F10();
    v24 = result;
  }

  else
  {
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    if (v24 < 1)
    {
      __break(1u);
      goto LABEL_25;
    }

    v25 = &v13[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_beginAccess();
      v26 = 0;
      do
      {
        MEMORY[0x259C7E900](v26++, a2);
        v27 = *v25;
        v28 = v25[1];

        v29._countAndFlagsBits = v27;
        v29._object = v28;
        WorldLine.markAsPartOfComposedObject(withId:)(v29);
        swift_unknownObjectRelease();
      }

      while (v24 != v26);
    }

    else
    {
      swift_beginAccess();
      v30 = 32;
      do
      {
        v31 = *v25;
        v32 = v25[1];
        v33 = *(a2 + v30);

        v34._countAndFlagsBits = v31;
        v34._object = v32;
        WorldLine.markAsPartOfComposedObject(withId:)(v34);

        v30 += 8;
        --v24;
      }

      while (v24);
    }
  }

  if (!(a3 >> 62))
  {
    v35 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_13;
    }

LABEL_20:

    sub_2584197AC();
    return v13;
  }

  result = sub_258428F10();
  v35 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v35 >= 1)
  {
    v36 = &v13[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_beginAccess();
      v37 = 0;
      do
      {
        MEMORY[0x259C7E900](v37++, a3);
        v38 = *v36;
        v39 = v36[1];

        v40._countAndFlagsBits = v38;
        v40._object = v39;
        WorldLine.markAsPartOfComposedObject(withId:)(v40);
        swift_unknownObjectRelease();
      }

      while (v35 != v37);
    }

    else
    {
      swift_beginAccess();
      v41 = 32;
      do
      {
        v42 = *v36;
        v43 = v36[1];
        v44 = *(a3 + v41);

        v45._countAndFlagsBits = v42;
        v45._object = v43;
        WorldLine.markAsPartOfComposedObject(withId:)(v45);

        v41 += 8;
        --v35;
      }

      while (v35);
    }

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void WorldRectangle.updateLinesWithRectangle(_:onExpiration:)(void *__src, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v9 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(v46, (v5 + v9), 0x130uLL);
  v10 = sub_25841ADF0(v46);
  if (v10 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v46[8])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v46[7];
  v38 = v46[7];
  memcpy(v44, (v5 + v9), 0x130uLL);
  v10 = sub_25841ADF0(v44);
  if (v10 == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v44[0])
  {
LABEL_34:
    __break(1u);
LABEL_35:
    v16 = v10;
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  if (!*(v44[0] + 16))
  {
    goto LABEL_27;
  }

  v12.i64[0] = __PAIR64__(v38.u32[1], v11);
  v12.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
  v13 = vsubq_f32(v12, *(v44[0] + 32));
  v14 = vmulq_f32(v13, v13);
  v12.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v12.u32[0]);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v14.f32, *v14.f32)));
  v39 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  sub_25841AC14(__src, v43);
  sub_258417CBC(v39);
  v4 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_edges;
  swift_beginAccess();
  v15 = *(v5 + v4);
  v36 = a2;
  v37 = a3;
  v35 = v9;
  if (v15 >> 62)
  {
LABEL_28:
    v10 = sub_258428F10();
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_8:
    v17 = 4;
    do
    {
      v18 = v17 - 4;
      v19 = *(v5 + v4);
      if ((v19 & 0xC000000000000001) != 0)
      {

        v21 = MEMORY[0x259C7E900](v17 - 4, v19);
      }

      else
      {
        if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v20 = *(v19 + 8 * v17);

        v21 = v20;
      }

      v22 = v21;
      v23 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
      swift_beginAccess();
      v24 = *&v22[v23];

      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x259C7E900](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v25 = *(v24 + 32);
      }

      v26 = v25;

      v27 = __dst[2];
      if (!__dst[2])
      {
        goto LABEL_30;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x259C7E900](v17 - 4, v27);
      }

      else
      {
        if (v18 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v28 = *(v27 + 8 * v17);
      }

      v29 = sub_258405B2C(v28, 2);

      v30 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
      swift_beginAccess();
      v31 = *&v26[v30];
      v32 = *(v31 + 24);

      os_unfair_lock_lock(v32);
      swift_beginAccess();
      *(v31 + 16) = v29;

      os_unfair_lock_unlock(v32);

      sub_25841430C();

      ++v17;
      --v16;
    }

    while (v16);
  }

LABEL_36:
  memcpy(__srca, __dst, sizeof(__srca));
  memcpy(v41, __dst, sizeof(v41));
  sub_25841AC14(__srca, v43);
  sub_25841AC4C(v41);
  memcpy(v42, __srca, sizeof(v42));
  nullsub_1(v42);
  memcpy(v43, (v5 + v35), sizeof(v43));
  memcpy((v5 + v35), v42, 0x130uLL);
  sub_25841AD88(v43);
  v33 = (v5 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationAction);
  v34 = *(v5 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationAction);
  *v33 = v36;
  v33[1] = v37;
  sub_2583B4A50(v36);
  sub_2583B4A40(v34);
  sub_2584197AC();
}

void sub_2584197AC()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationTimer;
  [*&v0[OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationTimer] invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_25841AFD4;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_258419998;
  v8[3] = &block_descriptor_4;
  v4 = _Block_copy(v8);
  v5 = v0;

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:2.0];
  _Block_release(v4);
  v7 = *&v0[v1];
  *&v0[v1] = v6;
}

uint64_t sub_2584198D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  if (v6 != 5 && v6 != 9)
  {
    v9 = *(a2 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationAction);
    if (v9)
    {

      v9(a1);
      return sub_2583B4A40(v9);
    }
  }

  return result;
}

void sub_258419998(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall WorldRectangle.cleanup()()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_edges;
  swift_beginAccess();
  v40 = v0;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258428F10())
  {
    v45 = v2 & 0xC000000000000001;
    v41 = v2 + 32;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;

    v4 = 0;
    v43 = i;
    v44 = v2;
    while (1)
    {
      if (v45)
      {
        v5 = MEMORY[0x259C7E900](v4, v2);
      }

      else
      {
        if (v4 >= *(v42 + 16))
        {
          goto LABEL_46;
        }

        v5 = *(v41 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v8 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
      swift_beginAccess();
      v9 = *&v6[v8];
      if ((v9 & 0xC000000000000001) != 0)
      {

        v10 = MEMORY[0x259C7E900](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v10 = *(v9 + 32);
      }

      WorldPoint.removeLine(_:)(v6);

      v11 = *&v6[v8];
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x259C7E900](1, v11);
      }

      else
      {
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_44;
        }

        v12 = *(v11 + 40);
      }

      WorldPoint.removeLine(_:)(v6);

      v13 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
      swift_beginAccess();
      v14 = *&v6[v13];
      v15 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
      swift_beginAccess();
      v16 = *(v14 + v15);
      *(v14 + v15) = 0;

      v17 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints;
      swift_beginAccess();
      v18 = *&v6[v17];
      if (v18 >> 62)
      {
        v19 = sub_258428F10();
        if (v19)
        {
          goto LABEL_18;
        }

LABEL_27:

        if (v4 == i)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_27;
        }

LABEL_18:
        if (v19 < 1)
        {
          goto LABEL_45;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x259C7E900](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          ++v20;
          v23 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
          swift_beginAccess();
          v24 = *&v22[v23];
          *&v22[v23] = 0;
        }

        while (v19 != v20);

        i = v43;
        v2 = v44;
        if (v4 == v43)
        {
LABEL_28:

          goto LABEL_29;
        }
      }
    }

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
    ;
  }

LABEL_29:
  if (qword_27F927B48 != -1)
  {
    swift_once();
  }

  v26 = qword_27F92F3E8;
  v25 = unk_27F92F3F0;
  sub_258428FC0();

  v27 = (v40 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];

  MEMORY[0x259C7DFF0](v29, v28);

  MEMORY[0x259C7DFF0](0x64657261656C4320, 0xE800000000000000);
  sub_258428C70();
  v30 = qword_27F927A30;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = off_27F928850;
  if (*(off_27F928850 + 2) && (v33 = sub_258384364(v26, v25), (v34 & 1) != 0))
  {
    v35 = *(v32[7] + 8 * v33);
    swift_endAccess();
    v36 = v35;
  }

  else
  {
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v37 = sub_258428D90();
    swift_beginAccess();
    v36 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v36, v26, v25, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v46;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25842CCB0;
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = sub_258385D08();
  *(v39 + 32) = 0x636552646C726F57;
  *(v39 + 40) = 0xEF20656C676E6174;

  sub_258428440();
}

Swift::Void __swiftcall WorldRectangle.rememberCurrentRectangle()()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_rectangleDataBuffer);
  swift_beginAccess();
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      if (v5 == 0x8000000000000000 && v4 == -1)
      {
        goto LABEL_22;
      }

      v7 = v5 % v4;
      if (v7 < v3)
      {
        v8 = v2 + 304 * v7;
        v9 = *(v8 + 192);
        v10 = *(v8 + 200);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = 1;
  v9 = 0.0;
LABEL_10:
  v11 = OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data;
  swift_beginAccess();
  memcpy(__dst, (v0 + v11), 0x130uLL);
  if (sub_25841ADF0(__dst) == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = __dst[21];
  if (v10)
  {
    if (__dst[21])
    {
      return;
    }

LABEL_17:
    memcpy(v15, (v0 + v11), sizeof(v15));
    memcpy(__src, (v0 + v11), 0x130uLL);
    if (sub_25841ADF0(__src) != 1)
    {
      memcpy(v18, __src, sizeof(v18));
      swift_beginAccess();
      memcpy(v14, v15, sizeof(v14));
      sub_25841AC14(v14, &v13);
      sub_258416B1C(v18);
      swift_endAccess();
      sub_25841AD88(v15);
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v9 != *&__dst[20])
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_17;
  }
}

id WorldRectangle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25841A2A4()
{

  memcpy(v2, (v0 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_data), sizeof(v2));
  sub_25841AD88(v2);

  return sub_2583B4A40(*(v0 + OBJC_IVAR____TtC17MeasureFoundation14WorldRectangle_expirationAction));
}

id WorldRectangle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldRectangle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

float32x4_t *sub_25841A414(float32x4_t *result)
{
  if (result[1].i64[0] == 4)
  {
    v1 = result[2];
    result += 2;
    v2 = v1;
    v3 = vsubq_f32(result[1], v1);
    v4 = vsubq_f32(result[3], v1);
    v5 = vmulq_f32(v3, v3);
    *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
    *v5.f32 = vrsqrte_f32(v6);
    *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
    v5.i32[0] = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).u32[0];
    v7 = vmulq_f32(v4, v4);
    *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
    v9 = vmulq_n_f32(v3, v5.f32[0]);
    *v5.f32 = vrsqrte_f32(v8);
    *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v8, vmul_f32(*v5.f32, *v5.f32)));
    v10 = vmulq_f32(v9, vmulq_n_f32(v4, vmul_f32(*v5.f32, vrsqrts_f32(v8, vmul_f32(*v5.f32, *v5.f32))).f32[0]));
    v11 = fmaxf(fabsf(v10.f32[2] + vaddv_f32(*v10.f32)), 0.0);
    v12 = result + 2;
    v13 = -3;
    do
    {
      if (v13 == -1)
      {
        v15 = 2;
        v14 = v2;
      }

      else
      {
        v14 = *v12;
        v15 = v13 + 3;
      }

      v16 = v12[-1];
      v17 = vsubq_f32(v14, v16);
      v18 = vsubq_f32(result[v15], v16);
      v19 = vmulq_f32(v17, v17);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v17, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmulq_f32(v18, v18);
      *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      *v22.f32 = vrsqrte_f32(v23);
      *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
      v24 = vmulq_f32(v21, vmulq_n_f32(v18, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]));
      v25 = fabsf(v24.f32[2] + vaddv_f32(*v24.f32));
      if (v11 < v25)
      {
        v11 = v25;
      }

      ++v12;
    }

    while (!__CFADD__(v13++, 1));
  }

  return result;
}

uint64_t sub_25841A5A8(uint64_t a1, int32x4_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
  v5 = swift_allocObject();
  v5[1] = xmmword_25842D9A0;
  v6 = *(a1 + 16);
  if (v6 < 2)
  {
    __break(1u);
    goto LABEL_42;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = (v5 + 2);
  *&v9 = vsubq_f32(v8, v7).u64[0];
  v10 = COERCE_FLOAT(*(a1 + 56));
  v11 = COERCE_FLOAT(*(a1 + 40));
  *(&v9 + 2) = v10 - v11;
  HIDWORD(v9) = 0;
  v5[2] = v9;
  if (v6 == 2)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12 = *(a1 + 64);
  *&v13 = vsubq_f32(v12, v8).u64[0];
  v14 = COERCE_FLOAT(*(a1 + 72));
  *(&v13 + 1) = COERCE_UNSIGNED_INT(v14 - v10);
  v5[3] = v13;
  if (v6 < 4)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v76 = a1 + 32;
  v77 = v6;
  v15 = *(a1 + 80);
  *&v16 = vsubq_f32(v15, v12).u64[0];
  v17 = COERCE_FLOAT(*(a1 + 88));
  *(&v16 + 1) = COERCE_UNSIGNED_INT(v17 - v14);
  *&v18 = vsubq_f32(v7, v15).u64[0];
  *(&v18 + 1) = COERCE_UNSIGNED_INT(v11 - v17);
  v5[4] = v16;
  v5[5] = v18;
  v74 = a1;

  v19 = 0;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v22 = 2.0;
  v3 = 1;
  v23 = 3;
  v89 = v2;
  v90.i64[0] = MEMORY[0x277D84F90];
  do
  {
    if (v20 == 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20 + 1;
    }

    a1 = (v20 - 1) & 3;
    v79 = *(v2 + 16 * v20);
    v82 = *(v2 + 16 * a1);
    v25 = v90.i64[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_25839D310(0, *(v90.i64[0] + 16) + 1, 1, v90.i64[0]);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_25839D310((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = vmulq_f32(v79, v79);
    *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
    *v28.f32 = vrsqrte_f32(v29);
    *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
    v30 = vmulq_n_f32(v79, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
    v31 = vmulq_f32(v82, v82);
    *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    *v31.f32 = vrsqrte_f32(v32);
    *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
    v80 = vmulq_n_f32(v82, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
    v83 = v30;
    v33 = vmulq_f32(v30, v80);
    v34 = fabsf(v33.f32[2] + vaddv_f32(*v33.f32));
    *(v25 + 2) = v27 + 1;
    v90.i64[0] = v25;
    v35 = v25 + 32;
    *&v35[4 * v27] = v34;
    v78 = *(v89 + 16 * v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_25839D310(0, *(v21 + 2) + 1, 1, v21);
    }

    v37 = *(v21 + 2);
    v36 = *(v21 + 3);
    v38 = v87.i32[3];
    v39 = v88.i32[3];
    v40 = v85.i32[3];
    if (v37 >= v36 >> 1)
    {
      v49 = sub_25839D310((v36 > 1), v37 + 1, 1, v21);
      v40 = v85.i32[3];
      v38 = v87.i32[3];
      v39 = v88.i32[3];
      v21 = v49;
    }

    v42 = v80;
    v41 = v83;
    v41.i32[3] = v38;
    v42.i32[3] = v40;
    v43 = vmulq_f32(v78, v78);
    *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
    *v43.f32 = vrsqrte_f32(v44);
    *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
    v46 = vmulq_n_f32(v78, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
    v45 = vmulq_f32(v41, v46);
    v46.i32[3] = v39;
    v47 = v34 + fabsf(v45.f32[2] + vaddv_f32(*v45.f32));
    if (v47 < v22)
    {
      v19 = v20;
    }

    v48 = v20 + 1;
    *(v21 + 2) = v37 + 1;
    *&v21[4 * v37 + 32] = v47;
    if (v47 < v22)
    {
      v23 = (v20 - 1) & 3;
      v3 = v24;
    }

    v85 = v42;
    v87 = v41;
    if (v47 < v22)
    {
      v22 = v47;
    }

    v88 = v46;
    ++v20;
    v2 = v89;
  }

  while (v48 != 4);

  if (v19 >= v77)
  {
    goto LABEL_44;
  }

  if (v3 >= v77)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v87 = *(v76 + 16 * v3);
  v88 = *(v76 + 16 * v19);
  v50 = swift_allocObject();
  v51 = *(v89 + 16 * v23);
  v52.i64[1] = 0;
  v53.i64[0] = vsubq_f32(0, v51).u64[0];
  v53.f32[2] = 0.0 - COERCE_FLOAT(*(v89 + 16 * v23 + 8));
  v53.i32[3] = 0;
  *(v50 + 32) = v53;
  if (v3 > 3)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v54 = *(v89 + 16 * v3);
  *(v50 + 48) = v54;
  v55 = *(v90.i64[0] + 16);
  if (v19 >= v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v3 >= v55)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v51.i32[0] = *&v35[4 * v19];
  v52.i32[0] = *&v35[4 * v3];
  if (vabds_f32(v51.f32[0], v52.f32[0]) <= 0.00000011921)
  {
    v84 = vmulq_f32(v53, v53);
    v86 = v53;
    v81 = v54;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v56 = vmulq_f32(v81, v81);
    *v56.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v84, v84, 8uLL)), vadd_f32(vzip1_s32(*v56.i8, *v84.i8), vzip2_s32(*v56.i8, *v84.i8)));
    v57 = vrsqrte_f32(v56.u32[1]);
    v58 = vmul_f32(v57, vrsqrts_f32(v56.u32[1], vmul_f32(v57, v57)));
    v59 = vmulq_n_f32(v86, vmul_f32(v58, vrsqrts_f32(v56.u32[1], vmul_f32(v58, v58))).f32[0]);
    *v56.i8 = vsqrt_f32(*v56.i8);
    *v60.f32 = vmul_f32(vmul_n_f32(*v59.f32, vadd_f32(*v56.i8, vdup_lane_s32(*v56.i8, 1)).f32[0]), 0x3F0000003F000000);
    v60.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(vaddv_f32(*v56.i8), v59, 2) * 0.5);
    v85 = v60;
  }

  else
  {
    v51.f32[0] = v51.f32[0] - v52.f32[0];
    v52.i64[0] = 0;
    v85 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v52, v51), 0), v53, v54);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if (v19 <= 3)
  {
    v90 = *(v89 + 16 * v19);

    a1 = v19 + 3;
    v2 = v74;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_2583A7BE4(v2);
  v2 = result;
LABEL_33:
  v62 = a1 & 3;
  if (a1 <= 0)
  {
    v62 = -(-a1 & 3);
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v63 = *(v2 + 16);
  if (v62 >= v63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v64 = vmulq_f32(v90, v90);
  *&v65 = v64.f32[2] + vaddv_f32(*v64.f32);
  *v64.f32 = vrsqrte_f32(v65);
  *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
  v66 = vmulq_n_f32(v90, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
  v67 = vmulq_f32(v85, v85);
  v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(v66)), a2, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
  v66.i32[0] = vextq_s8(v68, v68, 8uLL).u32[0];
  v69 = sqrtf(v67.f32[2] + vaddv_f32(*v67.f32));
  v66.i32[1] = v68.i32[0];
  v70 = vmul_n_f32(*v66.f32, v69);
  v71 = vmuls_lane_f32(v69, *v68.i8, 1);
  *v68.i8 = vadd_f32(*v88.f32, v70);
  *&v68.i32[2] = v88.f32[2] + v71;
  v68.i32[3] = 0;
  *(v2 + 32 + 16 * v62) = v68;
  v72 = (v3 + 1) & 3;
  if (v3 + 1 <= 0)
  {
    v72 = -(-(v3 + 1) & 3);
  }

  if (v72 < v63)
  {
    *&v73 = vadd_f32(*v87.f32, v70);
    *(&v73 + 1) = COERCE_UNSIGNED_INT(v87.f32[2] + v71);
    *(v2 + 32 + 16 * v72) = v73;

    return v2;
  }

LABEL_53:
  __break(1u);
  return result;
}

_BYTE *_s17MeasureFoundation18WorldRectangleDataV014projectPointToD05point9rectangles5SIMD3VySfGAI_ACtFZ_0(_BYTE *result)
{
  if (!*result)
  {
    goto LABEL_6;
  }

  if (!*(*result + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result[224])
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_25841ACF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25841AD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25841ADF0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25841AE8C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25841AEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25841AF9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25841AFF4()
{
  result = swift_getKeyPath();
  strcpy(&qword_27F92F388, "PlaneSelection");
  unk_27F92F397 = -18;
  qword_27F92F398 = result;
  return result;
}

uint64_t sub_25841B044()
{
  result = swift_getKeyPath();
  qword_27F92F3A0 = 0x636E41646C726F57;
  *algn_27F92F3A8 = 0xEB00000000726F68;
  qword_27F92F3B0 = result;
  return result;
}

uint64_t sub_25841B090()
{
  result = swift_getKeyPath();
  qword_27F92F3B8 = 0x6564695665726F43;
  unk_27F92F3C0 = 0xE90000000000006FLL;
  qword_27F92F3C8 = result;
  return result;
}

uint64_t sub_25841B0D8()
{
  result = swift_getKeyPath();
  strcpy(&qword_27F92F3D0, "MeasureObject");
  *&algn_27F92F3D8[6] = -4864;
  qword_27F92F3E0 = result;
  return result;
}

uint64_t sub_25841B128()
{
  result = swift_getKeyPath();
  strcpy(&qword_27F92F3E8, "WorldRectangle");
  unk_27F92F3F7 = -18;
  qword_27F92F3F8 = result;
  return result;
}

uint64_t sub_25841B1A0()
{
  result = swift_getKeyPath();
  qword_27F92F400 = 0x616D726F66726550;
  *algn_27F92F408 = 0xEB0000000065636ELL;
  qword_27F92F410 = result;
  return result;
}

uint64_t sub_25841B1EC()
{
  result = swift_getKeyPath();
  strcpy(&qword_27F92F418, "Uncategorized");
  unk_27F92F426 = -4864;
  qword_27F92F428 = result;
  return result;
}

uint64_t sub_25841B2A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t NSUserDefaults.performOnChange<A>(to:on:action:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27F927B60 != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  return sub_25841B550(a1, a2, v5, a3, a4);
}

uint64_t sub_25841B3CC()
{
  if (qword_27F927B68 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.internalDefaults;
  v1 = type metadata accessor for NSUserDefaults._DefaultsStore();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore_actions] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore_managedDefaults] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  swift_bridgeObjectRetain_n();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_25841B824(v0);

  static NSUserDefaults.standardStore = v3;
  return result;
}

uint64_t *NSUserDefaults.standardStore.unsafeMutableAddressor()
{
  if (qword_27F927B60 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.standardStore;
}

id static NSUserDefaults.standardStore.getter()
{
  if (qword_27F927B60 != -1)
  {
    swift_once();
  }

  v1 = static NSUserDefaults.standardStore;

  return v1;
}

uint64_t sub_25841B550(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = swift_allocObject();
  v13 = *(v11 + *MEMORY[0x277D84DE8] + 8);
  v12[2] = v13;
  v12[3] = a2;
  v12[4] = a4;
  v12[5] = a5;

  v35 = a2;
  result = sub_258428E30();
  if (!v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = result;
  v17 = v15;
  v33 = a3;
  v34 = a4;
  v18 = OBJC_IVAR____TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore_actions;
  swift_beginAccess();
  v19 = *(v6 + v18);
  if (*(v19 + 16))
  {
    v20 = sub_258384364(v16, v17);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();

      goto LABEL_7;
    }
  }

  else
  {
  }

  swift_endAccess();
  v23 = MEMORY[0x277D84F90];
LABEL_7:
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25841C5A0;
  *(v24 + 24) = v12;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_25839CEB0(0, v23[2] + 1, 1, v23);
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_25839CEB0((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v27 = &v23[2 * v26];
  v27[4] = sub_25841C5E4;
  v27[5] = v24;
  result = sub_258428E30();
  if (v28)
  {
    v29 = result;
    v30 = v28;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v6 + v18);
    *(v6 + v18) = 0x8000000000000000;
    sub_258384F08(v23, v29, v30, isUniquelyReferenced_nonNull_native);

    *(v6 + v18) = v37;
    swift_endAccess();
    v36[3] = v13;
    v37 = v33;
    __swift_allocate_boxed_opaque_existential_1(v36);
    v32 = v33;
    swift_getAtKeyPath();

    sub_25841BBC8(v36, v35, v34, a5, v13);

    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

LABEL_14:
  __break(1u);
  return result;
}

char *sub_25841B824(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258428F10())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v24 = MEMORY[0x277D84F90];
    result = sub_258392134(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v24;
    if ((v1 & 0xC000000000000001) == 0)
    {
      v12 = v1 + 32;
      while (1)
      {

        v1 = sub_258428E30();
        v14 = v13;

        if (!v14)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 16);
        v15 = *(v24 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_258392134((v15 > 1), v16 + 1, 1);
        }

        *(v24 + 16) = v16 + 1;
        v17 = v24 + 16 * v16;
        *(v17 + 32) = v1;
        *(v17 + 40) = v14;
        v12 += 8;
        if (!--i)
        {
          goto LABEL_17;
        }
      }
    }

    v5 = 0;
    while (1)
    {
      MEMORY[0x259C7E900](v5, v1);
      v6 = sub_258428E30();
      v8 = v7;
      swift_unknownObjectRelease();
      if (!v8)
      {
        break;
      }

      v10 = *(v24 + 16);
      v9 = *(v24 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_258392134((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v24 + 16) = v10 + 1;
      v11 = v24 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      if (i == v5)
      {
        goto LABEL_17;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_17:
  v18 = *(v3 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v3 + 40;
    while (v19 < *(v3 + 16))
    {
      ++v19;
      v21 = objc_opt_self();

      v1 = [v21 standardUserDefaults];
      v22 = sub_258428630();
      [v1 addObserver:v23 forKeyPath:v22 options:1 context:0];

      v20 += 16;
      if (v18 == v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_25841BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a2;
  v9 = sub_258428470();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258428490();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25839783C(a1, v22);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  sub_2583897F8(v22, (v17 + 24));
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  aBlock[4] = sub_25841C64C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258383428;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  sub_258428480();
  v20[1] = MEMORY[0x277D84F90];
  sub_2583A3EE8(&qword_27F928600, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
  sub_2583A3F30();
  sub_258428E70();
  MEMORY[0x259C7E5E0](0, v16, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
}

uint64_t sub_25841BE94(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  swift_getDynamicType();
  if (swift_dynamicCastMetatype() && ((sub_258385DB0(0, &qword_27F928320), swift_dynamicCastMetatype()) || (sub_258385DB0(0, qword_27F928620), swift_dynamicCastMetatype())))
  {
    sub_25839783C(a1, v23);
    swift_dynamicCast();
    v11 = v22;
    v12 = [v22 BOOLValue];

    LOBYTE(v21) = v12;
  }

  else
  {
    if (!swift_dynamicCastMetatype() || (sub_258385DB0(0, &qword_27F928320), !swift_dynamicCastMetatype()) && (sub_258385DB0(0, qword_27F928620), !swift_dynamicCastMetatype()))
    {
      if (swift_dynamicCastMetatype())
      {
        sub_258385DB0(0, &qword_27F928320);
        if (swift_dynamicCastMetatype())
        {
          sub_25839783C(a1, v23);
          swift_dynamicCast();
          v16 = v21;
          v17 = [v21 integerValue];

          v22 = v17;
          goto LABEL_15;
        }

        sub_258385DB0(0, qword_27F928620);
        if (swift_dynamicCastMetatype())
        {
          sub_25839783C(a1, v23);
          swift_dynamicCast();
          v18 = v22;
          v19 = [v22 intValue];

          LODWORD(v21) = v19;
          goto LABEL_15;
        }
      }

      sub_25839783C(a1, v23);
      goto LABEL_15;
    }

    sub_25839783C(a1, v23);
    swift_dynamicCast();
    v13 = v22;
    [v22 floatValue];
    v15 = v14;

    LODWORD(v21) = v15;
  }

LABEL_15:
  swift_dynamicCast();
  a2(v10);
  return (*(v7 + 8))(v10, a4);
}

uint64_t PartialKeyPath<A>.keyString.getter()
{
  result = sub_258428E30();
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults._DefaultsStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NSUserDefaults._DefaultsStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sSo14NSUserDefaultsC17MeasureFoundationE01_B5StoreC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  v5 = v4;
  if (!a4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (!*(a4 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  result = sub_258385EA0(*MEMORY[0x277CCA2F0]);
  if ((v9 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_25839783C(*(a4 + 56) + 32 * result, v17);
  v10 = OBJC_IVAR____TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore_actions;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16) && (v12 = sub_258384364(v7, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    v15 = swift_endAccess();
    MEMORY[0x28223BE20](v15);
    v16[2] = v17;

    sub_25841B2A0(sub_25841C528, v16, v14);
  }

  else
  {
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_25841C560()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25841C5AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25841C60C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25841C674(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_firstEdge;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorldRectangleGuide.firstEdge.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_firstEdge;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_25841C728(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *WorldRectangleGuide.secondEdge.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *WorldRectangleGuide.data.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_data;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_25841AC14(__dst, &v5);
  return memcpy(a1, __dst, 0x130uLL);
}

uint64_t WorldRectangleGuide.data.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_data;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x130uLL);
  return sub_25841AC4C(__dst);
}

id WorldRectangleGuide.__allocating_init(data:baseEdge:)(const void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge] = 0;
  memcpy(&v5[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_data], a1, 0x130uLL);
  *&v5[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_firstEdge] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id WorldRectangleGuide.init(data:baseEdge:)(void *__src, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge] = 0;
  memcpy(&v2[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_data], __src, 0x130uLL);
  *&v2[OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_firstEdge] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for WorldRectangleGuide();
  return objc_msgSendSuper2(&v5, sel_init);
}

void WorldRectangleGuide.addSecondEdge(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
}

id WorldRectangleGuide.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorldRectangleGuide.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldRectangleGuide();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25841CBC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_firstEdge;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_25841CC2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation19WorldRectangleGuide_secondEdge;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_25841CD00@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logPlaneSelection];
  *a2 = result;
  return result;
}

id sub_25841CD48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logWorldAnchor];
  *a2 = result;
  return result;
}

id sub_25841CD90@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logCoreVideo];
  *a2 = result;
  return result;
}

id sub_25841CDD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logMeasureObject];
  *a2 = result;
  return result;
}

id sub_25841CE20@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logWorldRectangle];
  *a2 = result;
  return result;
}

id sub_25841CE68@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logPerf];
  *a2 = result;
  return result;
}

id sub_25841CEB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logMisc];
  *a2 = result;
  return result;
}

uint64_t *NSUserDefaults.internalDefaults.unsafeMutableAddressor()
{
  if (qword_27F927B68 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.internalDefaults;
}

float sub_25841CF48(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  [v1 floatForKey_];
  v4 = v3;

  return v4;
}

float NSUserDefaults.kReticleADSlerpFactor.getter()
{
  v1 = sub_258428630();
  [v0 floatForKey_];
  v3 = v2;

  return v3;
}

void sub_25841D01C(void *a1, float a2)
{
  v5 = a1;
  v3 = sub_258428630();
  *&v4 = a2;
  [v5 setFloat:v3 forKey:v4];
}

void NSUserDefaults.kReticleADSlerpFactor.setter(float a1)
{
  v4 = sub_258428630();
  *&v3 = a1;
  [v1 setFloat:v4 forKey:v3];
}

id NSUserDefaults.kADDemoEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kADDemoEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kADShowDepth.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kADShowDepth.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841D358(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kADGuidedFilterEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841D424(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kADGuidedFilterEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841D518(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShouldReportMeasurements.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841D5E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShouldReportMeasurements.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kPEShowStats.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kPEShowStats.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kPEShowAccuracy.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kPEShowAccuracy.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841D918(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kPEShowHitPoints.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841D9E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kPEShowHitPoints.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kPEShowHitRay.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kPEShowHitRay.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841DC00(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kResetDefaultOnStart.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841DCCC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kResetDefaultOnStart.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841DDC0(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kDrawDebugPlanes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841DE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kDrawDebugPlanes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kShowStatistics.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kShowStatistics.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841E0A8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowOverallState.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841E174(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowOverallState.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841E268(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowFeaturePoints.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841E334(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowFeaturePoints.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kHideTapToRadar.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kHideTapToRadar.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841E550(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowWorldAnchorDebugInfo.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841E61C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowWorldAnchorDebugInfo.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841E710(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowRectangleDebugInfo.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841E7DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowRectangleDebugInfo.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841E8D0(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldEnableObjectMeasurements.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841E99C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldEnableObjectMeasurements.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841EA90(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldShowObjectDebugViews.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841EB5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldShowObjectDebugViews.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841EC50(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldRenderOpaqueSurfaces.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841ED1C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldRenderOpaqueSurfaces.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841EE10(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldVERefinePredictedBoundingBoxes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841EEDC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldVERefinePredictedBoundingBoxes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841EFD0(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldTuriRefinePredictedBoundingBoxes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F09C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldTuriRefinePredictedBoundingBoxes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841F190(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldUseNormalsForBoxOrientation.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F25C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldUseNormalsForBoxOrientation.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841F350(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.shouldArchiveSpatialMappingData.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F41C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.shouldArchiveSpatialMappingData.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841F510(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowLightIntensityDebugInfo.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F5DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowLightIntensityDebugInfo.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841F6D0(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kDisableAllCoachingAndOnboarding.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F79C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kDisableAllCoachingAndOnboarding.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841F890(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kCoachingCalloutEnabledV1.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841F95C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kCoachingCalloutEnabledV1.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841FA50(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kEnableRectangleDetection.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841FB1C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kEnableRectangleDetection.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841FC10(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kEnableRectangleTracking.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841FCDC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kEnableRectangleTracking.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841FDD0(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kHideRectangleSuggestions.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25841FE9C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kHideRectangleSuggestions.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_25841FF90(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kADEdgeDetectionEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25842005C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kADEdgeDetectionEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.throttleEdges.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.throttleEdges.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.showEDLines.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.showEDLines.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.showFinalPlanes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.showFinalPlanes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_2584204B8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showRefinementPlanes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258420584(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.showRefinementPlanes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258420678(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showFilteredRefinementPlanes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258420744(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.showFilteredRefinementPlanes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258420838(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showSnappableEdges.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258420904(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.showSnappableEdges.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

float sub_2584209F8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  [v1 floatForKey_];
  v4 = v3;

  return v4;
}

float NSUserDefaults.kRayCastDistThreshold.getter()
{
  v1 = sub_258428630();
  [v0 floatForKey_];
  v3 = v2;

  return v3;
}

void sub_258420ACC(void *a1, float a2)
{
  v5 = a1;
  v3 = sub_258428630();
  *&v4 = a2;
  [v5 setFloat:v3 forKey:v4];
}

void NSUserDefaults.kRayCastDistThreshold.setter(float a1)
{
  v4 = sub_258428630();
  *&v3 = a1;
  [v1 setFloat:v4 forKey:v3];
}

float sub_258420BC8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  [v1 floatForKey_];
  v4 = v3;

  return v4;
}

float NSUserDefaults.kRayCastAngleThreshold.getter()
{
  v1 = sub_258428630();
  [v0 floatForKey_];
  v3 = v2;

  return v3;
}

void sub_258420C9C(void *a1, float a2)
{
  v5 = a1;
  v3 = sub_258428630();
  *&v4 = a2;
  [v5 setFloat:v3 forKey:v4];
}

void NSUserDefaults.kRayCastAngleThreshold.setter(float a1)
{
  v4 = sub_258428630();
  *&v3 = a1;
  [v1 setFloat:v4 forKey:v3];
}

id sub_258420D98(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.guideSnapPointsEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258420E64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.guideSnapPointsEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258420F58(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showGuideSnapPoints.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258421024(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.showGuideSnapPoints.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421118(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kEdgeDetectionEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_2584211E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kEdgeDetectionEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_2584212D8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kSnapReticleToEdges.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_2584213A4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kSnapReticleToEdges.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421498(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kEdgeDetectionDebugReticleEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258421564(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kEdgeDetectionDebugReticleEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421658(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kEdgeDetectionUniqueContours.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258421724(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kEdgeDetectionUniqueContours.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421818(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowPreciseMeasurement.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_2584218E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowPreciseMeasurement.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_2584219D8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.kShowOppositeUnits.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258421AA4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.kShowOppositeUnits.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kLPShowPlane.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kLPShowPlane.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id NSUserDefaults.kLPShowPoints.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.kLPShowPoints.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421DD8(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showsOnlyYukonEModes.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258421EA4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.showsOnlyYukonEModes.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258421F98(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.isLabelOcclusionEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258422064(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.isLabelOcclusionEnabled.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258422158(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.labelFadesInAtSpot.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_258422224(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_258428630();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.labelFadesInAtSpot.setter(char a1)
{
  v3 = sub_258428630();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_258422318(void *a1)
{
  v1 = a1;
  v2 = sub_258428630();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.isLineOcclusionEnabled.getter()
{
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}