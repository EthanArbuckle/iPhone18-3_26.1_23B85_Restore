uint64_t sub_24604CF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A350, &unk_2460969A0);
    v16 = *v3;
    v17 = sub_245FFF3EC(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_246074FD8();
        v22 = v27;
      }

      (*(v11 + 32))(v9, *(v22 + 56) + *(v11 + 72) * v19, v10);
      sub_246073D04(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_245F8E744(v9, &qword_27EE3A350, &unk_2460969A0);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_2460745A4(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_24604D170(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3ACE0, &unk_246098880);
    sub_246072638(a2, v8);
    v15 = sub_246091834();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_245F8E744(v8, &qword_27EE3ACE0, &unk_246098880);
  }

  else
  {
    sub_24608199C(a1, v13, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_2460741D0(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_246091834();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_24604D390(char *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460917D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  LODWORD(v16) = a1[1];
  v41 = *(a1 + 1);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x4A8))(v12);
  if (result)
  {
    v46 = 1;
    v18 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    v18[64] = 1;
    sub_2460917A4();
    v19 = sub_245FA3174();
    (*(v5 + 16))(v8, v19, v4);
    v40 = v8;
    v20 = sub_2460918D4();
    v21 = sub_246091FC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = v9;
      v23 = v22;
      v24 = swift_slowAlloc();
      v38 = v10;
      v36 = v24;
      v45[0] = v24;
      *v23 = 136380931;
      *(v23 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, v45);
      *(v23 + 12) = 2082;
      v42 = v15;
      v43 = v16;
      v44 = v41;
      v25 = sub_246091C54();
      v37 = v16;
      v16 = v5;
      v27 = sub_245F8D3C0(v25, v26, v45);
      v35 = v4;
      v28 = v27;

      *(v23 + 14) = v28;
      _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: Called startCapturing in area mode with options = %{public}s", v23, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      v10 = v38;
      MEMORY[0x24C1989D0](v29, -1, -1);
      v30 = v23;
      v9 = v39;
      MEMORY[0x24C1989D0](v30, -1, -1);

      v31 = (*(v16 + 8))(v40, v35);
      LOBYTE(v16) = v37;
    }

    else
    {

      v31 = (*(v5 + 8))(v40, v4);
    }

    v32 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
    MEMORY[0x28223BE20](v31);
    *(&v34 - 4) = v14;
    *(&v34 - 24) = v15;
    *(&v34 - 23) = v16;
    *(&v34 - 2) = v41;
    *(&v34 - 1) = v2;
    sub_246092044();
    v33 = v42;
    (*(v10 + 8))(v14, v9);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_24604D794@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X8>)
{
  v210 = a5;
  v211 = a1;
  v8 = sub_2460917D4();
  v207 = *(v8 - 8);
  v208 = v8;
  v9 = *(v207 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v212 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v214 = &v194 - v12;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](&v194 - v19);
  v205 = &v194 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v194 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v194 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v38 = &v194 - v37;
  if (a2)
  {
    v39 = sub_245FA3174();
    (*(v14 + 16))(v18, v39, v13);
    v40 = sub_2460918D4();
    v41 = sub_246091FB4();
    v42 = v13;
    v43 = v14;
    if (os_log_type_enabled(v40, v41))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v219 = v45;
      *v44 = 136380675;
      *(v44 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
      _os_log_impl(&dword_245F8A000, v40, v41, "ObjectCaptureSession.%{private}s: Plane filtering is not supported in area mode!", v44, 0xCu);
      sub_245F8E6F4(v45);
      MEMORY[0x24C1989D0](v45, -1, -1);
      MEMORY[0x24C1989D0](v44, -1, -1);
    }

    (*(v43 + 8))(v18, v42);
    *v210 = 0;
    return sub_24604EE90();
  }

  v203 = v32;
  v204 = v33;
  v202 = v36;
  v199 = v34;
  v200 = v35;
  v213 = v14;
  v206 = v13;
  v46 = &a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions];
  *v46 = a2 & 0x100;
  v46[1] = a3;
  v209 = v46;
  v47 = *sub_24608FCB8();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v48 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager;
  v49 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager];
  if (v49)
  {
    v50 = *(*v49 + 280);
    v51 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager];

    v50(v52);
  }

  sub_24604F1F0();
  v53 = *&a4[v48];
  *&a4[v48] = 0;

  v54 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager];
  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;

  v55 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent;
  a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  sub_246053240();
  v57 = v56;
  v58 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v201 = v57;
  result = [v58 runWithConfiguration_options_];
  if (*v209 == 2)
  {
    __break(1u);
    goto LABEL_54;
  }

  v60 = sub_245F92B24();
  if ((v60 & 0x100000000) != 0)
  {
    v61 = 0.005;
    v64 = v206;
    v70 = sub_245F92BFC();
    if ((v70 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v198 = v55;
    v61 = *&v60;
    v62 = sub_245FA3174();
    v63 = v213;
    v64 = v206;
    (*(v213 + 16))(v38, v62, v206);
    v65 = sub_2460918D4();
    v66 = sub_246091FC4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v219 = v68;
      *v67 = 136380931;
      *(v67 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
      *(v67 + 12) = 2050;
      *(v67 + 14) = v61;
      _os_log_impl(&dword_245F8A000, v65, v66, "ObjectCaptureSession.%{private}s: Using initial voxel size for mesh refinement set by user default: %{public}f", v67, 0x16u);
      sub_245F8E6F4(v68);
      MEMORY[0x24C1989D0](v68, -1, -1);
      v69 = v67;
      v64 = v206;
      MEMORY[0x24C1989D0](v69, -1, -1);
    }

    (*(v63 + 8))(v38, v64);
    v55 = v198;
    v70 = sub_245F92BFC();
    if ((v70 & 0x100000000) != 0)
    {
LABEL_12:
      v71 = 0.005;
      v72 = v213;
      v73 = sub_245F92CD4();
      if ((v73 & 0x100000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v71 = *&v70;
  v86 = sub_245FA3174();
  v72 = v213;
  (*(v213 + 16))(v31, v86, v64);
  v87 = sub_2460918D4();
  v88 = sub_246091FC4();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v219 = v90;
    *v89 = 136380931;
    *(v89 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
    *(v89 + 12) = 2050;
    *(v89 + 14) = v71;
    _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Using voxel size increment for mesh refinement set by user default: %{public}f", v89, 0x16u);
    sub_245F8E6F4(v90);
    v91 = v90;
    v64 = v206;
    MEMORY[0x24C1989D0](v91, -1, -1);
    MEMORY[0x24C1989D0](v89, -1, -1);
  }

  (*(v72 + 8))(v31, v64);
  v73 = sub_245F92CD4();
  if ((v73 & 0x100000000) != 0)
  {
LABEL_13:
    v74 = 0.015;
    v75 = sub_245F92A20();
    if ((v75 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v97 = *&v75;
    v98 = sub_245FA3174();
    v99 = *(v72 + 16);
    v100 = v72;
    v101 = v64;
    v102 = v204;
    v99(v204, v98, v101);
    v103 = sub_2460918D4();
    v104 = sub_246091FB4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v219 = v106;
      *v105 = 136380931;
      *(v105 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
      *(v105 + 12) = 2048;
      *(v105 + 14) = v97;
      _os_log_impl(&dword_245F8A000, v103, v104, "ObjectCaptureSession.%{private}s: Using voxel size %fm read from ARKit scene reconstruction user defaults. Disabled automatic scan extent switching in area mode mesh\nmanager! Remove com.apple.recon3d.meshing.sdf_config.voxel_size or com.apple.arkit.sceneReconstruction.voxelSize user default to enable automatic scan extent switching.", v105, 0x16u);
      sub_245F8E6F4(v106);
      MEMORY[0x24C1989D0](v106, -1, -1);
      MEMORY[0x24C1989D0](v105, -1, -1);
    }

    (*(v100 + 8))(v102, v101);
    v64 = v101;
    result = OCMetalDevice();
    if (result)
    {
      v107 = result;
      result = sub_245F929D0();
      if (*v209 != 2)
      {
        v72 = v100;
        v108 = *result;
        v79 = v209[1];
        v80 = (*v209 >> 8) & 1;
        v84 = sub_245FB20F8();
        LOBYTE(v219) = 0;
        v82 = LODWORD(v97);
        v83 = v107;
        v85 = v108;
        goto LABEL_29;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_21:
  v74 = *&v73;
  v92 = sub_245FA3174();
  (*(v72 + 16))(v28, v92, v64);
  v93 = sub_2460918D4();
  v94 = sub_246091FC4();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v219 = v96;
    *v95 = 136380931;
    *(v95 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
    *(v95 + 12) = 2050;
    *(v95 + 14) = v71;
    _os_log_impl(&dword_245F8A000, v93, v94, "ObjectCaptureSession.%{private}s: Using mesh refinement voxel size scan extent threshold set by user default: %{public}f", v95, 0x16u);
    sub_245F8E6F4(v96);
    MEMORY[0x24C1989D0](v96, -1, -1);
    MEMORY[0x24C1989D0](v95, -1, -1);
  }

  (*(v72 + 8))(v28, v64);
  v75 = sub_245F92A20();
  if ((v75 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  result = OCMetalDevice();
  if (!result)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v76 = result;
  v77 = a4[v55];
  result = sub_245F929D0();
  if (*v209 == 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v78 = *result;
  v79 = v209[1];
  v80 = (*v209 >> 8) & 1;
  v81 = sub_245FC5DA8();
  v82 = v81 | ((HIDWORD(v81) & 1) << 32);
  v83 = v76;
  v84 = v77;
  v85 = v78;
LABEL_29:
  sub_245FB2100(v83, v82, v84, v85, v80, v79, 1, 400000, v217, v61, v71, v74);
  v224[0] = v217[0];
  v224[1] = v217[1];
  v224[2] = v217[2];
  v225 = v218;
  type metadata accessor for FreeformMeshManager(0);
  sub_245FC4950(v217, &v219);
  v109 = sub_245FB2314(v224);
  v110 = v214;
  if (!v109)
  {
    v141 = sub_245FA3174();
    v142 = v203;
    (*(v72 + 16))(v203, v141, v64);
    v143 = sub_2460918D4();
    v144 = sub_246091FB4();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&v219 = v146;
      *v145 = 136380675;
      *(v145 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
      _os_log_impl(&dword_245F8A000, v143, v144, "ObjectCaptureSession.%{private}s: Failed to initialize MeshManager in area mode!", v145, 0xCu);
      sub_245F8E6F4(v146);
      MEMORY[0x24C1989D0](v146, -1, -1);
      MEMORY[0x24C1989D0](v145, -1, -1);

      sub_245FC4988(v217);
    }

    else
    {
      sub_245FC4988(v217);
    }

    (*(v72 + 8))(v142, v64);
    *v210 = 0;
    return sub_24604EE90();
  }

  v111 = v109;
  v112 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager];
  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = v109;
  swift_retain_n();

  v113 = *(*v111 + 168);
  v114 = swift_unknownObjectRetain();
  v113(v114, &off_2858E1C98);

  v216 = 1;
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v219 = 0u;
  v223 = 1;
  sub_246044B58(&v219);
  sub_246079C60();
  v115 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor];
  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;

  sub_246044C40();
  sub_2460917A4();
  v195 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager;
  v116 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];
  if (v116)
  {
    v117 = *(*v116 + 152);
    v118 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];

    v117(v119);
  }

  v197 = v111;
  v120 = sub_245FA3174();
  v121 = *(v72 + 16);
  v122 = v72;
  v123 = v202;
  v209 = v120;
  v203 = v121;
  v204 = v72 + 16;
  v121(v202);
  v124 = sub_2460918D4();
  v125 = sub_246091FA4();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    *&v219 = v198;
    *v126 = 136380931;
    *(v126 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
    *(v126 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_246096460;
    swift_beginAccess();
    v128 = v212;
    sub_2460917A4();
    sub_2460917B4();
    v130 = v129;
    v131 = v64;
    v132 = v207;
    v133 = *(v207 + 8);
    v196 = v125;
    v134 = v208;
    v133(v128, v208);
    v135 = MEMORY[0x277D83A80];
    *(v127 + 56) = MEMORY[0x277D839F8];
    *(v127 + 64) = v135;
    *(v127 + 32) = v130 * 1000.0;
    v136 = sub_246091C24();
    v138 = sub_245F8D3C0(v136, v137, &v219);

    *(v126 + 14) = v138;
    v110 = v214;
    _os_log_impl(&dword_245F8A000, v124, v196, "ObjectCaptureSession.%{private}s: motion manager init take time = %{public}s ms", v126, 0x16u);
    v139 = v198;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v139, -1, -1);
    MEMORY[0x24C1989D0](v126, -1, -1);

    v140 = v202;
    v202 = *(v213 + 8);
    v202(v140, v131);
  }

  else
  {

    v202 = *(v122 + 8);
    v202(v123, v64);
    v131 = v64;
    v132 = v207;
    v134 = v208;
    v128 = v212;
  }

  sub_2460917A4();
  swift_beginAccess();
  v198 = *(v132 + 40);
  v198(v110, v128, v134);
  sub_24604F680();
  v147 = v200;
  v203(v200, v209, v131);
  v148 = sub_2460918D4();
  v196 = sub_246091FA4();
  if (os_log_type_enabled(v148, v196))
  {
    v149 = v132;
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *&v219 = v151;
    *v150 = 136380931;
    *(v150 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
    *(v150 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_246096460;
    sub_2460917A4();
    v153 = v148;
    sub_2460917B4();
    v155 = v154;
    (*(v149 + 8))(v212, v208);
    v156 = MEMORY[0x277D83A80];
    *(v152 + 56) = MEMORY[0x277D839F8];
    *(v152 + 64) = v156;
    *(v152 + 32) = v155 * 1000.0;
    v157 = sub_246091C24();
    v159 = sub_245F8D3C0(v157, v158, &v219);

    *(v150 + 14) = v159;
    v110 = v214;
    _os_log_impl(&dword_245F8A000, v148, v196, "ObjectCaptureSession.%{private}s: Camera control init takes time = %{public}s ms", v150, 0x16u);
    swift_arrayDestroy();
    v160 = v206;
    MEMORY[0x24C1989D0](v151, -1, -1);
    v161 = v150;
    v128 = v212;
    v134 = v208;
    MEMORY[0x24C1989D0](v161, -1, -1);

    v162 = v147;
    v163 = v160;
    v202(v162, v160);
  }

  else
  {

    v202(v147, v131);
    v163 = v131;
  }

  sub_2460917A4();
  result = (v198)(v110, v128, v134);
  if (a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8])
  {
    v164 = v199;
    v203(v199, v209, v163);
    v165 = sub_2460918D4();
    v166 = sub_246091FB4();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v219 = v168;
      *v167 = 136380675;
      *(v167 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v219);
      _os_log_impl(&dword_245F8A000, v165, v166, "ObjectCaptureSession.%{private}s: Capture manager couldn't initialize because reference timestamp is nil. Will try again after getting reference timestamp.", v167, 0xCu);
      sub_245F8E6F4(v168);
      MEMORY[0x24C1989D0](v168, -1, -1);
      MEMORY[0x24C1989D0](v167, -1, -1);
    }

    v202(v164, v163);
    goto LABEL_46;
  }

  v169 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl];
  if (v169)
  {
    v170 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
    type metadata accessor for CaptureManager();
    LOBYTE(v215[0]) = 1;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 1;
    v171 = *&a4[v195];
    v172 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];

    v173 = v172;

    v174 = sub_245FCBC94(&v219, v169, v171, v173, v170);
    v175 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
    *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = v174;

LABEL_46:
    v176 = v205;
    v203(v205, v209, v163);
    v177 = sub_2460918D4();
    v178 = sub_246091FA4();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v215[0] = v209;
      *v179 = 136380931;
      *(v179 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, v215);
      *(v179 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_246096460;
      v181 = v212;
      sub_2460917A4();
      v182 = v214;
      sub_2460917B4();
      v184 = v183;
      v185 = v207;
      v186 = v181;
      v187 = v208;
      (*(v207 + 8))(v186, v208);
      v188 = MEMORY[0x277D83A80];
      *(v180 + 56) = MEMORY[0x277D839F8];
      *(v180 + 64) = v188;
      *(v180 + 32) = v184 * 1000.0;
      v189 = sub_246091C24();
      v191 = sub_245F8D3C0(v189, v190, v215);

      *(v179 + 14) = v191;
      _os_log_impl(&dword_245F8A000, v177, v178, "ObjectCaptureSession.%{private}s: Init CaptureManager took = %{public}s ms", v179, 0x16u);
      v192 = v209;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v192, -1, -1);
      MEMORY[0x24C1989D0](v179, -1, -1);

      v202(v205, v206);
    }

    else
    {

      v202(v176, v163);
      v185 = v207;
      v187 = v208;
      v182 = v214;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v193 = v215[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v215[0] = 15;
    a4;
    sub_246091994();
    v215[0] = v193;
    sub_246036D70(v215);

    sub_245FC4988(v217);
    sub_246077B30(v193);
    (*(v185 + 8))(v182, v187);
    *v210 = 1;
    return sub_24604EE90();
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_24604EE90()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3174();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: startCapturing in area mode took time = %{public}s ms", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_24604F1F0()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v34 = sub_2460917D4();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v14 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    if (OCProxySurfaceDestroy())
    {
      v16 = sub_245FA3280();
      (*(v3 + 16))(v9, v16, v2);
      v17 = sub_2460918D4();
      v18 = sub_246091FB4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v33 = v10;
        v20 = v19;
        v21 = swift_slowAlloc();
        *&v35[0] = v21;
        *v20 = 136380675;
        *(v20 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, v35);
        _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Failed to destroy proxy surface!", v20, 0xCu);
        sub_245F8E6F4(v21);
        MEMORY[0x24C1989D0](v21, -1, -1);
        v10 = v33;
        MEMORY[0x24C1989D0](v20, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    v22 = sub_245FA3280();
    (*(v3 + 16))(v7, v22, v2);
    v23 = sub_2460918D4();
    v24 = sub_246091FC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v35[0] = v26;
      *v25 = 136380675;
      *(v25 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, v35);
      _os_log_impl(&dword_245F8A000, v23, v24, "ObjectCaptureSession.%{private}s: Successfully stopped voxel integration session.", v25, 0xCu);
      sub_245F8E6F4(v26);
      MEMORY[0x24C1989D0](v26, -1, -1);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    v15 = (*(v3 + 8))(v7, v2);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(&v36, v15);
  if (v36 == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
  }

  else
  {
    sub_246077B30(v36);
    sub_246077B30(0xE);
    v27 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
    swift_beginAccess();
    v28 = v27[3];
    v35[2] = v27[2];
    v35[3] = v28;
    v29 = v27[5];
    v35[4] = v27[4];
    v35[5] = v29;
    v30 = v27[1];
    v35[0] = *v27;
    v35[1] = v30;
    *v27 = 0u;
    v27[1] = 0u;
    v27[2] = 0u;
    v27[3] = 0u;
    v27[4] = 0u;
    v27[5] = 0u;
    sub_245F8E744(v35, &qword_27EE3A978, &qword_246099C08);
  }

  sub_24605C798();
  return (*(v10 + 8))(v13, v34);
}

void sub_24604F680()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v16 = [v15 configuration];
  if (!v16)
  {
    __break(1u);
    goto LABEL_23;
  }

  v71 = v9;
  v74 = v2;

  v17 = [v15 configuration];
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  type metadata accessor for CameraControl();
  v19 = [v18 videoFormat];

  v20 = [v19 device];
  v21 = sub_246032A80(v20);
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
  v23 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl];
  *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = v21;

  (*(*v21 + 280))(v24);

  v25 = sub_245FA3174();
  v26 = v3[2];
  v75 = v25;
  v76 = v26;
  v27 = v74;
  (v26)(v14);
  v28 = sub_2460918D4();
  v29 = sub_246091FA4();
  v30 = os_log_type_enabled(v28, v29);
  v77 = v3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v78 = v32;
    *v31 = 136380675;
    *(v31 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v78);
    _os_log_impl(&dword_245F8A000, v28, v29, "ObjectCaptureSession.%{private}s: Camera auto white balance is locked.", v31, 0xCu);
    sub_245F8E6F4(v32);
    MEMORY[0x24C1989D0](v32, -1, -1);
    MEMORY[0x24C1989D0](v31, -1, -1);

    v33 = v77[1];
  }

  else
  {

    v33 = v3[1];
  }

  v33(v14, v27);
  v34 = *&v1[v22];
  if (!v34)
  {
    goto LABEL_24;
  }

  v35 = *(*v34 + 200);
  v36 = *&v1[v22];

  v35(0);

  v37 = *&v1[v22];
  if (!v37)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v73 = v33;
  v38 = *(*v37 + 208);

  v38(v39);

  v40 = *&v1[v22];
  if (!v40)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = *(*v40 + 304);
  v42 = *&v1[v22];

  v14 = v41(v43);

  v76(v12, v75, v27);
  v44 = sub_2460918D4();
  v45 = sub_246091FC4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v78 = v47;
    *v46 = 136380931;
    *(v46 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v78);
    *(v46 + 12) = 1026;
    *(v46 + 14) = v14 & 1;
    _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: Camera face driven AF and AE disabled = %{BOOL,public}d", v46, 0x12u);
    sub_245F8E6F4(v47);
    MEMORY[0x24C1989D0](v47, -1, -1);
    MEMORY[0x24C1989D0](v46, -1, -1);
  }

  v48 = v73;
  v73(v12, v27);
  v49 = v27;
  v50 = sub_245F92510();
  if (v51)
  {
    goto LABEL_17;
  }

  v52 = *&v1[v22];
  if (v52)
  {
    v53 = *&v50;
    v54 = *(*v52 + 264);
    v55 = *&v1[v22];

    LOBYTE(v54) = v54(v56, v53);

    if (v54)
    {
      v57 = v71;
      v76(v71, v75, v27);
      v14 = v1;
      v58 = sub_2460918D4();
      v59 = sub_246091FC4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v78 = v61;
        *v60 = 136380931;
        *(v60 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v78);
        *(v60 + 12) = 2050;
        v62 = *&v1[v22];
        if (v62)
        {
          v63 = *&v1[v22];

          v64 = (*(*v62 + 184))();

          *(v60 + 14) = v64;
          _os_log_impl(&dword_245F8A000, v58, v59, "ObjectCaptureSession.%{private}s: Camera active max exposure duration successfully set to %{public}f seconds", v60, 0x16u);
          sub_245F8E6F4(v61);
          MEMORY[0x24C1989D0](v61, -1, -1);
          MEMORY[0x24C1989D0](v60, -1, -1);

          v73(v71, v74);
          return;
        }

        goto LABEL_28;
      }

      v70 = v57;
LABEL_20:
      v48(v70, v49);
      return;
    }

LABEL_17:
    v65 = v72;
    v76(v72, v75, v27);
    v66 = sub_2460918D4();
    v67 = sub_246091FC4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v78 = v69;
      *v68 = 136380675;
      *(v68 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v78);
      _os_log_impl(&dword_245F8A000, v66, v67, "ObjectCaptureSession.%{private}s: Camera active max exposure duration un-specified, use auto exposure control.", v68, 0xCu);
      sub_245F8E6F4(v69);
      MEMORY[0x24C1989D0](v69, -1, -1);
      MEMORY[0x24C1989D0](v68, -1, -1);
    }

    v70 = v65;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
}

uint64_t sub_24604FEAC(unsigned __int8 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v56 = a4;
  v57 = a5;
  v54 = a2;
  v55 = a3;
  v58 = sub_2460918F4();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v58);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460917D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 1);
  result = (*((*MEMORY[0x277D85000] & *v5) + 0x4A8))(v14);
  if (result)
  {
    __break(1u);
  }

  else
  {
    v50 = v5;
    v51 = v17;
    v53 = v18;
    v52 = v16;
    sub_2460917A4();
    v21 = sub_245FA3174();
    (*(v7 + 16))(v10, v21, v58);
    v22 = sub_2460918D4();
    v23 = sub_246091FC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = v11;
      v25 = v24;
      v26 = swift_slowAlloc();
      v48 = v12;
      v47 = v26;
      v63[0] = v26;
      *v25 = 136381187;
      *(v25 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, v63);
      *(v25 + 12) = 2082;
      v59 = v54;
      v60 = v55;
      v61 = v56;
      v62 = v57;
      type metadata accessor for simd_float4x4(0);
      v27 = sub_246091C54();
      v28 = v19;
      v30 = sub_245F8D3C0(v27, v29, v63);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2082;
      v31 = v51;
      v59.n128_u8[0] = v51;
      v32 = v53;
      v59.n128_u8[1] = v53;
      v59.n128_u64[1] = v19;
      v33 = sub_246091C54();
      v35 = sub_245F8D3C0(v33, v34, v63);

      *(v25 + 24) = v35;
      v19 = v28;
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Called start capturing in object mode with boundingBox = %{public}s and options = %{public}s", v25, 0x20u);
      v36 = v47;
      swift_arrayDestroy();
      v12 = v48;
      MEMORY[0x24C1989D0](v36, -1, -1);
      v37 = v25;
      v11 = v49;
      MEMORY[0x24C1989D0](v37, -1, -1);

      (*(v7 + 8))(v10, v58);
    }

    else
    {

      (*(v7 + 8))(v10, v58);
      v32 = v53;
      v31 = v51;
    }

    v38 = *sub_24608FCAC();
    OCSignPostsAriadneDbgCode();
    v39 = kdebug_trace();
    v40 = *(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
    MEMORY[0x28223BE20](v39);
    v41 = v52;
    *(&v46 - 12) = v52;
    *(&v46 - 11) = v42;
    *(&v46 - 80) = v31;
    *(&v46 - 79) = v32;
    *(&v46 - 9) = v19;
    v43 = v55;
    *(&v46 - 4) = v54;
    *(&v46 - 3) = v43;
    v44 = v57;
    *(&v46 - 2) = v56;
    *(&v46 - 1) = v44;
    sub_246092044();
    v45 = v59.n128_u8[0];
    (*(v12 + 8))(v41, v11);
    return v45;
  }

  return result;
}

void sub_246050348(uint64_t a1@<X0>, char *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>, __n128 a9@<Q3>)
{
  v362 = a8;
  v363 = a9;
  v360 = a6;
  v361 = a7;
  v357 = a5;
  v358 = a1;
  v12 = sub_2460917D4();
  v365 = *(v12 - 8);
  v366 = v12;
  v13 = *(v365 + 64);
  MEMORY[0x28223BE20](v12);
  v368 = &v338 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v338 - v16;
  v18 = sub_2460918F4();
  v369 = *(v18 - 8);
  v370 = v18;
  v19 = v369[4].i64[0];
  MEMORY[0x28223BE20](v18);
  v348 = &v338 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v343 = &v338 - v22;
  MEMORY[0x28223BE20](v23);
  v342 = &v338 - v24;
  MEMORY[0x28223BE20](v25);
  v345 = &v338 - v26;
  MEMORY[0x28223BE20](v27);
  v349.i64[0] = &v338 - v28;
  MEMORY[0x28223BE20](v29);
  v346.i64[0] = &v338 - v30;
  MEMORY[0x28223BE20](v31);
  v356.i64[0] = &v338 - v32;
  MEMORY[0x28223BE20](v33);
  v351.i64[0] = &v338 - v34;
  MEMORY[0x28223BE20](v35);
  v364 = &v338 - v36;
  MEMORY[0x28223BE20](v37);
  v350.i64[0] = &v338 - v38;
  MEMORY[0x28223BE20](v39);
  v344 = &v338 - v40;
  MEMORY[0x28223BE20](v41);
  v352.i64[0] = &v338 - v42;
  MEMORY[0x28223BE20](v43);
  v353.i64[0] = &v338 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v338 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v338 - v49;
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v338 - v53;
  v55 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v55(&v412, v52);
  v372 = a2;
  if (v412 == 14)
  {
    sub_246077B30(0xE);
    v56 = 14;
  }

  else
  {
    sub_246077B30(v412);
    sub_246077B30(0xE);
    (v55)(&v412);
    if (v412 != 12)
    {
      sub_246077B30(v412);
      sub_246077B30(0xC);
      v239 = sub_245FA3174();
      v240 = v369;
      v241 = v370;
      (v369[1].i64[0])(v54, v239, v370);
      v242 = a2;
      v243 = sub_2460918D4();
      v244 = sub_246091FB4();

      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        *&v412 = v246;
        *v245 = 136380931;
        *(v245 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
        *(v245 + 12) = 2082;
        LODWORD(v374) = v244;
        (v55)(&v407);
        v247 = sub_246091C54();
        v249 = sub_245F8D3C0(v247, v248, &v412);

        *(v245 + 14) = v249;
        _os_log_impl(&dword_245F8A000, v243, v374, "ObjectCaptureSession.%{private}s: Start object-centric capturing expected the state to be .detecting or .ready but got %{public}s.\nNot starting capture!", v245, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v246, -1, -1);
        MEMORY[0x24C1989D0](v245, -1, -1);

        (v240->i64[1])(v54, v370);
      }

      else
      {

        (v240->i64[1])(v54, v241);
      }

      goto LABEL_79;
    }

    sub_246077B30(0xC);
    v56 = 12;
  }

  sub_246077B30(v56);
  (v55)(&v412);
  if (v412 == 12)
  {
    sub_246077B30(0xC);
    sub_246077B30(0xC);
    if (a3)
    {
      v57 = sub_245FA3174();
      v59 = v369;
      v58 = v370;
      (v369[1].i64[0])(v50, v57, v370);
      v60 = sub_2460918D4();
      v61 = sub_246091FB4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v412 = v63;
        *v62 = 136380675;
        *(v62 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
        _os_log_impl(&dword_245F8A000, v60, v61, "ObjectCaptureSession.%{private}s: Plane filtering is not supported when starting object-centric capturing from .ready state!", v62, 0xCu);
        sub_245F8E6F4(v63);
        MEMORY[0x24C1989D0](v63, -1, -1);
        MEMORY[0x24C1989D0](v62, -1, -1);
      }

      (v59->i64[1])(v50, v58);
      goto LABEL_79;
    }
  }

  else
  {
    sub_246077B30(v412);
    sub_246077B30(0xC);
  }

  v64 = v372;
  v65 = &v372[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions];
  *v65 = a3 & 0x101;
  *(v65 + 1) = a4;
  v341 = v65;
  v66 = *sub_24608FCB8();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v67 = sub_2460917A4();
  OCBoundingBox.init(transform:)(&v407, v67);
  v409 = 0;
  v412 = v407;
  v413 = *v408;
  v414 = *&v408[4];
  v415 = *&v408[8];
  LOBYTE(v416) = 0;
  sub_246044B58(&v412);
  v68 = &v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  if ((v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64] & 1) == 0)
  {
    v70 = v68[2];
    v69 = v68[3];
    v71 = v68[1];
    v412 = *v68;
    v413 = v71;
    v414 = v70;
    v415 = v69;
    sub_24608585C(*&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID]);
  }

  v347.i64[0] = v68;
  v340 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager;
  v72 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];
  v73 = v370;
  if (v72)
  {
    v74 = *(*v72 + 152);

    v74(v75);
  }

  v76 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession.BoundingBoxAnchor());
  v77 = [v76 initWithTransform_];
  v78 = v372;
  sub_246079C60();
  v79 = *&v78[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor];
  *&v78[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = v77;
  v80 = v77;

  sub_246044C40();
  v81 = sub_245FA3174();
  v82 = v369;
  v83 = v369[1].i64[0];
  v373 = v81;
  v374 = v83;
  v367 = v369 + 1;
  (v83)(v47);
  v84 = sub_2460918D4();
  v85 = sub_246091FA4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v371 = swift_slowAlloc();
    *&v412 = v371;
    *v86 = 136380931;
    *(v86 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
    *(v86 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_246096460;
    swift_beginAccess();
    v359 = v47;
    v88 = v368;
    sub_2460917A4();
    sub_2460917B4();
    v90 = v89;
    v91 = v365;
    v92 = v366;
    (*(v365 + 8))(v88, v366);
    v93 = MEMORY[0x277D83A80];
    *(v87 + 56) = MEMORY[0x277D839F8];
    *(v87 + 64) = v93;
    *(v87 + 32) = v90 * 1000.0;
    v94 = sub_246091C24();
    v96 = sub_245F8D3C0(v94, v95, &v412);

    *(v86 + 14) = v96;
    _os_log_impl(&dword_245F8A000, v84, v85, "ObjectCaptureSession.%{private}s: BBox and motion manager init take time = %{public}s ms", v86, 0x16u);
    v97 = v371;
    swift_arrayDestroy();
    v98 = v97;
    v99 = v370;
    MEMORY[0x24C1989D0](v98, -1, -1);
    MEMORY[0x24C1989D0](v86, -1, -1);

    v371 = v369->i64[1];
    v371(v359, v99);
  }

  else
  {

    v371 = v82->i64[1];
    v371(v47, v73);
    v91 = v365;
    v92 = v366;
    v88 = v368;
  }

  sub_2460917A4();
  swift_beginAccess();
  v100 = *(v91 + 40);
  v359 = v17;
  v354 = v100;
  v355 = v91 + 40;
  v100(v17, v88, v92);
  v101 = *&v372[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v102 = [v101 configuration];
  if (!v102)
  {
    goto LABEL_85;
  }

  v103 = [v101 configuration];
  v104 = v369;
  v92 = v367;
  v105 = v353.i64[0];
  if (!v103)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v106 = v103;
  type metadata accessor for CameraControl();
  v107 = [v106 videoFormat];

  v108 = [v107 device];
  v109 = sub_246032A80(v108);
  v110 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
  v111 = v372;
  v112 = *&v372[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl];
  *&v372[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = v109;

  (*(*v109 + 280))(v113);

  v114 = v370;
  v374(v105, v373, v370);
  v115 = sub_2460918D4();
  v116 = sub_246091FA4();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v412 = v118;
    *v117 = 136380675;
    *(v117 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
    _os_log_impl(&dword_245F8A000, v115, v116, "ObjectCaptureSession.%{private}s: Camera auto white balance is locked.", v117, 0xCu);
    sub_245F8E6F4(v118);
    v119 = v118;
    v92 = v367;
    MEMORY[0x24C1989D0](v119, -1, -1);
    v120 = v117;
    v114 = v370;
    MEMORY[0x24C1989D0](v120, -1, -1);
  }

  v121 = v104;
  v371(v105, v114);
  v122 = *&v111[v110];
  if (!v122)
  {
    goto LABEL_87;
  }

  v123 = v111;
  v124 = *(*v122 + 200);

  v124(0);

  v125 = *&v123[v110];
  if (!v125)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v126 = *(*v125 + 208);
  v127 = *&v123[v110];

  v126(v128);

  v129 = *&v123[v110];
  if (!v129)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v130 = *(*v129 + 304);
  v131 = *&v123[v110];

  v133 = v130(v132);

  v134 = v352.i64[0];
  v374(v352.i64[0], v373, v114);
  v135 = sub_2460918D4();
  v136 = sub_246091FC4();
  v137 = v121;
  if (os_log_type_enabled(v135, v136))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v412 = v139;
    *v138 = 136380931;
    *(v138 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
    *(v138 + 12) = 1026;
    *(v138 + 14) = v133 & 1;
    _os_log_impl(&dword_245F8A000, v135, v136, "ObjectCaptureSession.%{private}s: Camera face driven AF and AE disabled = %{BOOL,public}d", v138, 0x12u);
    sub_245F8E6F4(v139);
    v140 = v139;
    v92 = v367;
    MEMORY[0x24C1989D0](v140, -1, -1);
    v141 = v138;
    v114 = v370;
    MEMORY[0x24C1989D0](v141, -1, -1);
  }

  v371(v134, v114);
  v142 = v364;
  v143 = sub_245F92510();
  v144 = v368;
  v339 = v110;
  if (v145)
  {
    goto LABEL_33;
  }

  v146 = *&v372[v110];
  if (!v146)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v147 = *&v143;
  v148 = *(*v146 + 264);
  v149 = *&v372[v110];

  LOBYTE(v148) = v148(v150, v147);

  v142 = v364;
  if ((v148 & 1) == 0)
  {
LABEL_33:
    v159 = v350.i64[0];
    v374(v350.i64[0], v373, v114);
    v160 = sub_2460918D4();
    v161 = sub_246091FC4();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v412 = v163;
      *v162 = 136380675;
      *(v162 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
      _os_log_impl(&dword_245F8A000, v160, v161, "ObjectCaptureSession.%{private}s: Camera active max exposure duration un-specified, use auto exposure control.", v162, 0xCu);
      sub_245F8E6F4(v163);
      v164 = v163;
      v114 = v370;
      MEMORY[0x24C1989D0](v164, -1, -1);
      v165 = v162;
      v142 = v364;
      MEMORY[0x24C1989D0](v165, -1, -1);
    }

    v371(v159, v114);
    goto LABEL_36;
  }

  v151 = v344;
  v374(v344, v373, v114);
  v152 = v372;
  v92 = v372;
  v153 = sub_2460918D4();
  v353.i32[0] = sub_246091FC4();
  if (!os_log_type_enabled(v153, v353.i8[0]))
  {

    v371(v151, v114);
    goto LABEL_36;
  }

  v154 = swift_slowAlloc();
  v155 = swift_slowAlloc();
  *&v412 = v155;
  *v154 = 136380931;
  *(v154 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
  *(v154 + 12) = 2050;
  v156 = *&v152[v110];
  if (v156)
  {
    v157 = *&v152[v110];

    v158 = (*(*v156 + 184))();

    *(v154 + 14) = v158;
    _os_log_impl(&dword_245F8A000, v153, v353.i8[0], "ObjectCaptureSession.%{private}s: Camera active max exposure duration successfully set to %{public}f seconds", v154, 0x16u);
    sub_245F8E6F4(v155);
    MEMORY[0x24C1989D0](v155, -1, -1);
    MEMORY[0x24C1989D0](v154, -1, -1);

    v137 = v369;
    v114 = v370;
    v371(v344, v370);
    v144 = v368;
    v142 = v364;
LABEL_36:
    v374(v142, v373, v114);
    v166 = sub_2460918D4();
    v167 = v114;
    v168 = sub_246091FA4();
    if (os_log_type_enabled(v166, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v412 = v170;
      *v169 = 136380931;
      *(v169 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
      *(v169 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_246096460;
      sub_2460917A4();
      v172 = v359;
      sub_2460917B4();
      v174 = v173;
      v175 = v366;
      (*(v365 + 8))(v368, v366);
      v176 = MEMORY[0x277D83A80];
      *(v171 + 56) = MEMORY[0x277D839F8];
      *(v171 + 64) = v176;
      *(v171 + 32) = v174 * 1000.0;
      v177 = sub_246091C24();
      v179 = sub_245F8D3C0(v177, v178, &v412);

      *(v169 + 14) = v179;
      v144 = v368;
      v180 = v369;
      _os_log_impl(&dword_245F8A000, v166, v168, "ObjectCaptureSession.%{private}s: Camera control init takes time = %{public}s ms", v169, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v170, -1, -1);
      MEMORY[0x24C1989D0](v169, -1, -1);

      v92 = v180;
      v371(v364, v167);
      v181 = v372;
      v182 = v167;
    }

    else
    {

      v92 = v137;
      v371(v142, v167);
      v172 = v359;
      v182 = v167;
      v175 = v366;
      v181 = v372;
    }

    sub_2460917A4();
    v354(v172, v144, v175);
    sub_24604F1F0();
    v183 = v181;
    v184 = &v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
    v407 = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
    *v408 = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16];
    v185 = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 24];
    *&v408[19] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 92];
    *&v408[23] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 108];
    *&v408[27] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 124];
    v408[31] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 140];
    *&v408[3] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 28];
    *&v408[7] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 44];
    *&v408[11] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 60];
    *&v408[15] = *&v181[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 76];
    *&v408[2] = v185;
    if (sub_2460818C8(&v407) == 1)
    {
      goto LABEL_90;
    }

    v186 = v351.i64[0];
    v374(v351.i64[0], v373, v182);
    v187 = sub_2460918D4();
    v188 = sub_246091FC4();
    v189 = os_log_type_enabled(v187, v188);
    v190 = v371;
    if (v189)
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v412 = v192;
      *v191 = 136446466;
      *(v191 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v412);
      *(v191 + 12) = 2050;
      *(v191 + 14) = v185;
      _os_log_impl(&dword_245F8A000, v187, v188, "ObjectCaptureSession.%{public}s: Depth confidence threshold scanning mode = %{public}f", v191, 0x16u);
      sub_245F8E6F4(v192);
      v193 = v192;
      v182 = v370;
      MEMORY[0x24C1989D0](v193, -1, -1);
      MEMORY[0x24C1989D0](v191, -1, -1);
    }

    v190(v186, v182);
    if (*(v347.i64[0] + 64))
    {
      __break(1u);
      goto LABEL_83;
    }

    v371 = v190;
    v195 = *(v347.i64[0] + 32);
    v194 = *(v347.i64[0] + 48);
    v196 = *(v347.i64[0] + 16);
    v412 = *v347.i64[0];
    v413 = v196;
    v414 = v195;
    v415 = v194;
    *v197.f32 = OCBoundingBox.extent.getter();
    sub_246076B44(v183[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled], &v389, v197, v185);
    v404 = v395;
    v405 = v396;
    v406 = v397;
    v400 = v391;
    v401 = v392;
    v402 = v393;
    v403 = v394;
    v398 = v389;
    v399 = v390;
    nullsub_1(&v398, v390);
    v198 = v405;
    *(v184 + 6) = v404;
    *(v184 + 7) = v198;
    *(v184 + 8) = v406;
    v199 = v401;
    *(v184 + 2) = v400;
    *(v184 + 3) = v199;
    v200 = v403;
    *(v184 + 4) = v402;
    *(v184 + 5) = v200;
    v201 = v399;
    *v184 = v398;
    *(v184 + 1) = v201;
    v202 = v356.i64[0];
    v92 = v367;
    v374(v356.i64[0], v373, v182);
    v203 = v183;
    v204 = sub_2460918D4();
    v205 = sub_246091FC4();
    v364 = v203;

    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v380 = v92;
      *v206 = 136380931;
      *(v206 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v380);
      *(v206 + 12) = 2050;
      v207 = *(v184 + 7);
      v418 = *(v184 + 6);
      v419 = v207;
      v420 = *(v184 + 8);
      v208 = *(v184 + 3);
      v414 = *(v184 + 2);
      v415 = v208;
      v209 = *(v184 + 5);
      v416 = *(v184 + 4);
      v417 = v209;
      v210 = *(v184 + 1);
      v412 = *v184;
      v413 = v210;
      if (sub_2460818C8(&v412) == 1)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      *(v206 + 14) = *(&v414 + 1);
      _os_log_impl(&dword_245F8A000, v204, v205, "ObjectCaptureSession.%{private}s: Voxel dimension = %{public}f", v206, 0x16u);
      sub_245F8E6F4(v92);
      MEMORY[0x24C1989D0](v92, -1, -1);
      MEMORY[0x24C1989D0](v206, -1, -1);

      v211 = v371;
      v371(v356.i64[0], v182);
      v92 = v367;
    }

    else
    {

      v211 = v371;
      v371(v202, v182);
    }

    v212 = *(v184 + 7);
    v386 = *(v184 + 6);
    v387 = v212;
    v388 = *(v184 + 8);
    v213 = *(v184 + 3);
    v382 = *(v184 + 2);
    v383 = v213;
    v214 = *(v184 + 5);
    v384 = *(v184 + 4);
    v385 = v214;
    v215 = *(v184 + 1);
    v380 = *v184;
    v381 = v215;
    if (sub_2460818C8(&v380) == 1)
    {
      goto LABEL_91;
    }

    v418 = v386;
    v419 = v387;
    v420 = v388;
    v414 = v382;
    v415 = v383;
    v416 = v384;
    v417 = v385;
    v412 = v380;
    v413 = v381;
    if (sub_246052D94(&v412))
    {
      v216 = v349.i64[0];
      v374(v349.i64[0], v373, v182);
      v217 = sub_2460918D4();
      v218 = sub_246091FA4();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        v356.i64[0] = swift_slowAlloc();
        *&v375 = v356.i64[0];
        *v219 = 136380931;
        *(v219 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v375);
        *(v219 + 12) = 2082;
        sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
        v220 = swift_allocObject();
        *(v220 + 16) = xmmword_246096460;
        v221 = v368;
        sub_2460917A4();
        v222 = v359;
        sub_2460917B4();
        v224 = v223;
        v225 = v366;
        (*(v365 + 8))(v221, v366);
        v226 = MEMORY[0x277D83A80];
        *(v220 + 56) = MEMORY[0x277D839F8];
        *(v220 + 64) = v226;
        *(v220 + 32) = v224 * 1000.0;
        v227 = sub_246091C24();
        v229 = sub_245F8D3C0(v227, v228, &v375);

        *(v219 + 14) = v229;
        v211 = v371;
        _os_log_impl(&dword_245F8A000, v217, v218, "ObjectCaptureSession.%{private}s: Voxel integration restart takes time = %{public}s ms", v219, 0x16u);
        v230 = v356.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v230, -1, -1);
        MEMORY[0x24C1989D0](v219, -1, -1);

        v211(v349.i64[0], v370);
      }

      else
      {

        v211(v216, v182);
        v225 = v366;
        v221 = v368;
        v222 = v359;
      }

      sub_2460917A4();
      v354(v222, v221, v225);
      v250 = v364;
      sub_24605A078();
      v251 = *&v250[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
      v92 = MEMORY[0x277D860B8];
      if (v251)
      {
        v252 = *(v184 + 1);
        v375 = *v184;
        v376 = v252;
        LODWORD(v377[0]) = *(v184 + 8);
        v253 = *(v184 + 9);
        *&v377[7] = *(v184 + 88);
        *&v377[9] = *(v184 + 104);
        *&v377[11] = *(v184 + 120);
        v377[13] = *(v184 + 17);
        *&v377[1] = *(v184 + 40);
        *&v377[3] = *(v184 + 56);
        *&v377[5] = *(v184 + 72);
        *(v377 + 1) = v253;
        if (sub_2460818C8(&v375) == 1)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v254 = *(*v251 + 736);

        v254(v255, v253);
        if (*(v347.i64[0] + 64))
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        *v421.columns[0].i64 = sub_24602172C(*v347.i64[0], *(v347.i64[0] + 16), *(v347.i64[0] + 32), *(v347.i64[0] + 48), *v92, v92[1], v92[2], v92[3]);
        v422 = __invert_f4(v421);
        v351 = v422.columns[0];
        v352 = v422.columns[1];
        v353 = v422.columns[2];
        v356 = v422.columns[3];
        v256 = (*(*v251 + 728))();
        sub_2460219BC(v256);
        v346 = v257;
        v347 = v258;
        v349 = v259;
        v350 = v260;

        v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v347.f32[0]), v352, *v347.f32, 1), v353, v347, 2), v356, v347, 3);
        v262 = v350;
        v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v349.f32[0]), v352, *v349.f32, 1), v353, v349, 2), v356, v349, 3);
        v264 = v356;
        v265 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v350.f32[0]), v352, *v350.f32, 1), v353, v350, 2);
        v266 = &v250[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
        *v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v346.f32[0]), v352, *v346.f32, 1), v353, v346, 2), v356, v346, 3);
        v266[1] = v261;
        v266[2] = v263;
        v266[3] = vmlaq_laneq_f32(v265, v264, v262, 3);
      }

      v267 = v345;
      v268 = v370;
      v374(v345, v373, v370);
      v269 = sub_2460918D4();
      v92 = sub_246091FA4();
      if (os_log_type_enabled(v269, v92))
      {
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *&v375 = v271;
        *v270 = 136380931;
        *(v270 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v375);
        *(v270 + 12) = 2082;
        sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
        v272 = swift_allocObject();
        *(v272 + 16) = xmmword_246096460;
        sub_2460917A4();
        v273 = v267;
        v274 = v359;
        sub_2460917B4();
        v276 = v275;
        v277 = v366;
        (*(v365 + 8))(v368, v366);
        v278 = MEMORY[0x277D83A80];
        *(v272 + 56) = MEMORY[0x277D839F8];
        *(v272 + 64) = v278;
        *(v272 + 32) = v276 * 1000.0;
        v279 = sub_246091C24();
        v281 = sub_245F8D3C0(v279, v280, &v375);
        v282 = v277;

        *(v270 + 14) = v281;
        v283 = v370;
        v211 = v371;
        _os_log_impl(&dword_245F8A000, v269, v92, "ObjectCaptureSession.%{private}s: Init PGManager if needed takes time = %{public}s ms", v270, 0x16u);
        swift_arrayDestroy();
        v284 = v271;
        v221 = v368;
        MEMORY[0x24C1989D0](v284, -1, -1);
        MEMORY[0x24C1989D0](v270, -1, -1);

        v211(v273, v283);
        v285 = v372;
      }

      else
      {

        v211(v267, v268);
        v282 = v366;
        v274 = v359;
        v285 = v372;
        v283 = v268;
      }

      sub_2460917A4();
      v354(v274, v221, v282);
      v286 = v364;
      if ((v364[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8] & 1) == 0)
      {
        v287 = *&v285[v339];
        if (!v287)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v288 = *&v364[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
        type metadata accessor for CaptureManager();
        v379 = 0;
        v410[0] = v360;
        v410[1] = v361;
        v410[2] = v362;
        v410[3] = v363;
        v411 = 0;
        v289 = *&v285[v340];
        v290 = *&v286[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];

        v291 = v290;

        v292 = sub_245FCBC94(v410, v287, v289, v291, v288);
        v92 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
        v293 = *&v286[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
        *&v286[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = v292;

        if (*v341 != 2)
        {
          v294 = v283;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_246091984();

          v295 = v375;
          swift_getKeyPath();
          swift_getKeyPath();
          *&v375 = 15;
          v296 = v286;
          sub_246091994();
          *&v375 = v295;
          sub_246036D70(&v375);
          sub_246077B30(v295);
          v297 = *MEMORY[0x277D860B8];
          v298 = *(MEMORY[0x277D860B8] + 16);
          v299 = *(MEMORY[0x277D860B8] + 32);
          v300 = *(MEMORY[0x277D860B8] + 48);
          OCVoxelCloud.init(voxels:transform:)(&v378, MEMORY[0x277D84F90], v301);
          v302 = v378.transform.columns[0];
          v303 = v378.transform.columns[1];
          v304 = v378.transform.columns[2];
          v305 = v378.transform.columns[3];
          v306 = &v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
          v307 = *&v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16];
          v308 = *&v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32];
          v309 = *&v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64];
          *&v377[2] = *&v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48];
          *&v377[4] = v309;
          *v377 = v308;
          v375 = *&v296[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
          v376 = v307;
          v306->i64[0] = v378.voxels._rawValue;
          v306[1] = v302;
          v306[2] = v303;
          v306[3] = v304;
          v306[4] = v305;
          sub_245F8E744(&v375, &qword_27EE3AB10, &qword_246096678);
          v310 = *(v92->i64 + v286);
          if (!v310)
          {
            goto LABEL_71;
          }

          v311 = swift_allocObject();
          *(v311 + 16) = v296;
          v312 = *(*v310 + 488);
          v313 = v296;

          v314 = v312(1, sub_246082E24, v311);

          if (v314)
          {
            v315 = v342;
            v374(v342, v373, v294);
            v316 = sub_2460918D4();
            v317 = sub_246091FC4();
            v318 = os_log_type_enabled(v316, v317);
            v319 = v368;
            if (v318)
            {
              v320 = swift_slowAlloc();
              v321 = swift_slowAlloc();
              v378.voxels._rawValue = v321;
              *v320 = 136380675;
              *(v320 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v378);
              v322 = "ObjectCaptureSession.%{private}s: AutomaticCapture: Take first shot success.";
LABEL_73:
              _os_log_impl(&dword_245F8A000, v316, v317, v322, v320, 0xCu);
              sub_245F8E6F4(v321);
              MEMORY[0x24C1989D0](v321, -1, -1);
              MEMORY[0x24C1989D0](v320, -1, -1);
            }
          }

          else
          {
LABEL_71:
            v315 = v343;
            v374(v343, v373, v294);
            v316 = sub_2460918D4();
            v317 = sub_246091FB4();
            v323 = os_log_type_enabled(v316, v317);
            v319 = v368;
            if (v323)
            {
              v320 = swift_slowAlloc();
              v321 = swift_slowAlloc();
              v378.voxels._rawValue = v321;
              *v320 = 136380675;
              *(v320 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v378);
              v322 = "ObjectCaptureSession.%{private}s: AutomaticCapture: Take first shot fail!";
              goto LABEL_73;
            }
          }

          v211(v315, v294);
          v324 = v348;
          v374(v348, v373, v294);
          v325 = sub_2460918D4();
          v326 = sub_246091FA4();
          if (os_log_type_enabled(v325, v326))
          {
            v327 = swift_slowAlloc();
            v328 = swift_slowAlloc();
            v378.voxels._rawValue = v328;
            *v327 = 136380931;
            *(v327 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v378);
            *(v327 + 12) = 2082;
            sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
            v329 = swift_allocObject();
            *(v329 + 16) = xmmword_246096460;
            sub_2460917A4();
            v330 = v359;
            sub_2460917B4();
            v332 = v331;
            v333 = v366;
            v374 = *(v365 + 8);
            (v374)(v319, v366);
            v334 = MEMORY[0x277D83A80];
            *(v329 + 56) = MEMORY[0x277D839F8];
            *(v329 + 64) = v334;
            *(v329 + 32) = v332 * 1000.0;
            v335 = sub_246091C24();
            v337 = sub_245F8D3C0(v335, v336, &v378);

            *(v327 + 14) = v337;
            _os_log_impl(&dword_245F8A000, v325, v326, "ObjectCaptureSession.%{private}s: Init CaptureManager and takes first shot take time = %{public}s ms", v327, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v328, -1, -1);
            MEMORY[0x24C1989D0](v327, -1, -1);

            v371(v348, v370);
            (v374)(v330, v333);
          }

          else
          {

            v211(v324, v294);
            (*(v365 + 8))(v359, v366);
          }

          *v357 = 1;
          goto LABEL_80;
        }

        goto LABEL_84;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v231 = v346.i64[0];
    v374(v346.i64[0], v373, v182);
    v232 = sub_2460918D4();
    v233 = sub_246091FB4();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      v235 = v182;
      v236 = v365;
      v237 = v234;
      v238 = swift_slowAlloc();
      *&v375 = v238;
      *v237 = 136380675;
      *(v237 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v375);
      _os_log_impl(&dword_245F8A000, v232, v233, "ObjectCaptureSession.%{private}s: Failed to start voxel integration!", v237, 0xCu);
      sub_245F8E6F4(v238);
      MEMORY[0x24C1989D0](v238, -1, -1);
      MEMORY[0x24C1989D0](v237, -1, -1);

      v211(v231, v235);
      (*(v236 + 8))(v359, v366);
    }

    else
    {

      v211(v231, v182);
      (*(v365 + 8))(v359, v366);
    }

LABEL_79:
    *v357 = 0;
LABEL_80:
    sub_246052A34();
    return;
  }

LABEL_97:

  __break(1u);
}

uint64_t sub_246052A34()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3174();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: start object-centric caputring takes time = %{public}s ms", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

BOOL sub_246052D94(__int128 *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = sub_2460917D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v16 = a1[7];
  v17 = a1[8];
  v18 = a1[5];
  v51 = a1[6];
  v52 = v16;
  v53 = v17;
  v19 = a1[3];
  v47 = a1[2];
  v48 = v19;
  v20 = a1[5];
  v49 = a1[4];
  v50 = v20;
  v21 = a1[1];
  v45 = *a1;
  v46 = v21;
  *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin) = v18;
  swift_beginAccess();
  v22 = OCProxySurfaceCreate();
  swift_endAccess();
  if (v22)
  {
    v23 = sub_245FA3280();
    (*(v4 + 16))(v10, v23, v3);
    v24 = sub_2460918D4();
    v25 = sub_246091FB4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = v11;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, v44);
      _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Failed to create proxy surface!", v27, 0xCu);
      sub_245F8E6F4(v28);
      MEMORY[0x24C1989D0](v28, -1, -1);
      v29 = v27;
      v11 = v42;
      MEMORY[0x24C1989D0](v29, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v43 = 1;
    v30 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 64) = 1;
    v31 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 64) = 1;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM) = 0;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection) = 0;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) = 0;
    v32 = sub_245FA3280();
    (*(v4 + 16))(v8, v32, v3);
    v33 = sub_2460918D4();
    v34 = sub_246091FA4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = v11;
      v36 = v35;
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136380675;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, v44);
      _os_log_impl(&dword_245F8A000, v33, v34, "ObjectCaptureSession.%{private}s: Reset voxel integration subsession data.", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      v38 = v36;
      v11 = v42;
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }

  sub_24605C438();
  (*(v12 + 8))(v15, v11);
  v39 = *MEMORY[0x277D85DE8];
  return v22 == 0;
}

void sub_246053240()
{
  v1 = v0;
  v160 = sub_2460918F4();
  v2 = *(v160 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v160);
  v156 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v153 = &v149 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v149 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v152 = &v149 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v155 = &v149 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v149 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v149 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v149 - v21;
  type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  v23 = sub_245FA2EBC();
  [v23 setFrameSemantics_];
  v24 = [swift_getObjCClassFromObject() recommendedVideoFormatForHighResolutionFrameCapturing];
  if (!v24)
  {
    goto LABEL_78;
  }

  v25 = v24;
  v26 = sub_245F92904();
  v159 = v10;
  if ((v27 & 1) == 0)
  {
    v154 = v22;
    v28 = v2;
    v29 = v17;
    v30 = v26;
    ObjectType = swift_getObjectType();
    v32 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
    swift_beginAccess();
    v33 = (*(ObjectType + 80))(v30, &v1[v32]);
    swift_endAccess();
    if (v33)
    {

      v17 = v29;
      v2 = v28;
      v22 = v154;
      v10 = v159;
      v25 = v33;
    }

    else
    {
      v17 = v29;
      v2 = v28;
      v22 = v154;
      v10 = v159;
    }
  }

  [v23 setVideoFormat_];
  v34 = v23;
  [v34 setAlwaysUsePrimaryCameraForTracking_];
  v35 = v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported];
  if (v35 == 2)
  {
    goto LABEL_79;
  }

  v36 = &off_278E99000;
  v157 = v25;
  v158 = v1;
  if (v35)
  {
    v150 = v17;
    [v34 setTimeOfFlightProjectorMode_];
    v37 = sub_245FA3174();
    v38 = v2[2];
    v38(v22, v37, v160);
    v39 = sub_2460918D4();
    v40 = sub_246091FC4();
    v41 = os_log_type_enabled(v39, v40);
    v151 = v2;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v154 = v22;
      v44 = v43;
      v162[0] = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
      _os_log_impl(&dword_245F8A000, v39, v40, "ObjectCaptureSession.%{private}s: Set high quality mode for LiDAR point cloud.", v42, 0xCu);
      sub_245F8E6F4(v44);
      MEMORY[0x24C1989D0](v44, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);

      v45 = v2[1];
      v45(v154, v160);
    }

    else
    {

      v45 = v2[1];
      v45(v22, v160);
    }

    v38(v20, v37, v160);
    v46 = sub_2460918D4();
    v47 = sub_246091FC4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v162[0] = v49;
      *v48 = 136380675;
      *(v48 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
      _os_log_impl(&dword_245F8A000, v46, v47, "ObjectCaptureSession.%{private}s: Set framerate = 120 for LiDAR point cloud.", v48, 0xCu);
      sub_245F8E6F4(v49);
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    v2 = v151;
    v45(v20, v160);
    v25 = v157;
    v1 = v158;
    v10 = v159;
    v17 = v150;
    v36 = &off_278E99000;
    [v34 setJasperFrameRate_];
  }

  if (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] == 1)
  {
    [v34 v36[254]];
    v50 = sub_245FA3174();
    v51 = v2[2];
    v51(v17, v50, v160);
    v52 = sub_2460918D4();
    v53 = v17;
    v54 = sub_246091FC4();
    if (os_log_type_enabled(v52, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v162[0] = v56;
      *v55 = 136380675;
      *(v55 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
      _os_log_impl(&dword_245F8A000, v52, v54, "ObjectCaptureSession.%{private}s: Adjusted framerate = 60 for LiDAR point cloud.", v55, 0xCu);
      sub_245F8E6F4(v56);
      MEMORY[0x24C1989D0](v56, -1, -1);
      MEMORY[0x24C1989D0](v55, -1, -1);
    }

    v57 = v2[1];
    v57(v53, v160);
    [v34 setDepthSensorNumberOfPointsMode_];
    v58 = v155;
    v51(v155, v50, v160);
    v59 = v58;
    v60 = sub_2460918D4();
    v61 = sub_246091FC4();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v157;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v162[0] = v65;
      *v64 = 136380675;
      *(v64 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
      _os_log_impl(&dword_245F8A000, v60, v61, "ObjectCaptureSession.%{private}s: Set number of points = high, for LiDAR point cloud.", v64, 0xCu);
      sub_245F8E6F4(v65);
      MEMORY[0x24C1989D0](v65, -1, -1);
      MEMORY[0x24C1989D0](v64, -1, -1);
    }

    v57(v59, v160);
    v1 = v158;
    v10 = v159;
    v25 = v63;
  }

  [v34 setFocusPixelBlurScoreDeliveryEnabled_];

  v66 = sub_246091BD4();
  [v34 setSlamConfiguration_];

  if ((*((*MEMORY[0x277D85000] & *v1) + 0x4A8))())
  {
    [v34 setPlaneDetection_];
    v67 = sub_245F92A20();
    if ((v67 & 0x100000000) != 0)
    {
      v80 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent;
      v81 = sub_245F9DAE4(v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent]);
      v82 = sub_245FA3174();
      v154 = v2[2];
      v155 = ((v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v152 = v82;
      (v154)(v10);
      v83 = v1;
      v84 = sub_2460918D4();
      v85 = sub_246091FC4();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v162[0] = v150;
        *v86 = 136381187;
        *(v86 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
        *(v86 + 12) = 2080;
        sub_245F9DAC4(v81);
        v87 = sub_246091F04();
        v89 = v81;
        v90 = sub_245F8D3C0(v87, v88, v162);

        *(v86 + 14) = v90;
        *(v86 + 22) = 2082;
        v161 = v158[v80];
        v91 = sub_246091C54();
        v93 = sub_245F8D3C0(v91, v92, v162);

        *(v86 + 24) = v93;
        v81 = v89;
        _os_log_impl(&dword_245F8A000, v84, v85, "ObjectCaptureSession.%{private}s: Computed voxel size %s from scan extent: %{public}s.", v86, 0x20u);
        v94 = v150;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v94, -1, -1);
        MEMORY[0x24C1989D0](v86, -1, -1);

        v78 = v2[1];
        v78(v159, v160);
      }

      else
      {

        v78 = v2[1];
        v78(v10, v160);
      }

      v95 = [v34 sceneReconstructionOptions];
      [v95 setVoxelSize_];

      v96 = v81;
      v97 = v153;
      v71 = v154;
      (v154)(v153, v152, v160);
      v98 = sub_2460918D4();
      v99 = sub_246091FC4();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = v96;
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v162[0] = v102;
        *v101 = 136380931;
        *(v101 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
        *(v101 + 12) = 2082;
        sub_245F9DAC4(v100);
        v103 = sub_246091F04();
        v105 = v78;
        v106 = sub_245F8D3C0(v103, v104, v162);

        *(v101 + 14) = v106;
        v78 = v105;
        _os_log_impl(&dword_245F8A000, v98, v99, "ObjectCaptureSession.%{private}s: Set ARKit scene reconstruction voxel size = %{public}s", v101, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v102, -1, -1);
        MEMORY[0x24C1989D0](v101, -1, -1);

        v105(v153, v160);
      }

      else
      {

        v78(v97, v160);
      }

      v25 = v157;
      v1 = v158;
      v79 = v156;
    }

    else
    {
      v68 = *&v67;
      v69 = v25;
      v70 = sub_245FA3174();
      v71 = v2[2];
      v155 = ((v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v72 = v152;
      (v71)(v152, v70, v160);
      v73 = sub_2460918D4();
      v74 = sub_246091FC4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = v68;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v162[0] = v77;
        *v76 = 136380931;
        *(v76 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
        *(v76 + 12) = 2050;
        *(v76 + 14) = v75;
        _os_log_impl(&dword_245F8A000, v73, v74, "ObjectCaptureSession.%{private}s: Using ARKit scene reconstruction voxel size %{public}f set by user default", v76, 0x16u);
        sub_245F8E6F4(v77);
        MEMORY[0x24C1989D0](v77, -1, -1);
        MEMORY[0x24C1989D0](v76, -1, -1);
      }

      v78 = v2[1];
      v78(v72, v160);
      v79 = v156;
      v25 = v69;
    }

    [v34 setSceneReconstruction_];

    v107 = sub_245FA3174();
    (v71)(v79, v107, v160);
    v108 = v79;
    v109 = sub_2460918D4();
    v110 = sub_246091FC4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = v78;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v162[0] = v113;
      *v112 = 136380675;
      *(v112 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v162);
      _os_log_impl(&dword_245F8A000, v109, v110, "ObjectCaptureSession.%{private}s: Enabled scene reconstruction with object capture preset", v112, 0xCu);
      sub_245F8E6F4(v113);
      MEMORY[0x24C1989D0](v113, -1, -1);
      MEMORY[0x24C1989D0](v112, -1, -1);

      v111(v108, v160);
    }

    else
    {

      v78(v108, v160);
    }
  }

  else
  {
    [v34 setPlaneDetection_];
  }

  v114 = [v34 videoFormat];
  v115 = [v114 isRecommendedForHighResolutionFrameCapturing];

  if (!v115)
  {
    __break(1u);
    goto LABEL_63;
  }

  v116 = [v34 videoFormat];
  v117 = [v116 captureDevicePosition];

  if (v117 != 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v118 = [v34 videoFormat];
  v119 = [v118 captureDeviceType];

  v120 = *MEMORY[0x277CE5878];
  v121 = sub_246091C04();
  v123 = v122;
  if (v121 == sub_246091C04() && v123 == v124)
  {

    goto LABEL_42;
  }

  v125 = sub_2460923E4();

  if ((v125 & 1) == 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_42:
  v126 = &v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  swift_beginAccess();
  if ((v126[8] & 1) == 0)
  {
LABEL_60:

    return;
  }

  v127 = [v34 videoFormat];
  v128 = [v127 framesPerSecond];

  if (v128 != 30)
  {
    goto LABEL_65;
  }

  v129 = [v34 videoFormat];
  [v129 imageResolution];
  v131 = v130;
  v132 = v130;

  if ((*&v132 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v131 <= -1.0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v131 >= 4294967300.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v131 != 1920)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v133 = [v34 videoFormat];
  [v133 imageResolution];
  v135 = v134;
  v136 = v134;

  if ((*&v136 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v135 <= -1.0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v135 >= 4294967300.0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v135 != 1440)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v137 = [v34 videoFormat];
  v138 = [v137 deviceFormat];

  LOBYTE(v137) = [v138 isVideoBinned];
  if (v137)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v139 = [v34 videoFormat];
  v140 = [v139 deviceFormat];

  v141 = sub_246092094();
  if (*(v141 + 16) < 2uLL)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v142 = *(v141 + 40);

  v143 = sub_24601EF58();
  if (v142 < 0 || v142 != *v143)
  {
    goto LABEL_76;
  }

  v144 = [v34 videoFormat];
  v145 = [v144 deviceFormat];

  v146 = sub_246092094();
  if (*(v146 + 16) < 2uLL)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v147 = *(v146 + 44);

  v148 = *sub_24601EF64();

  if (v147 < 0 || v147 != v148)
  {
    __break(1u);
    goto LABEL_60;
  }
}

uint64_t sub_2460544A0(void *a1)
{
  v2 = v1;
  v98 = a1;
  v103[6] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v95 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = &v93 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v97 = &v93 - v12;
  v13 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  v20 = sub_246091704();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v23 = MEMORY[0x28223BE20](v20);
  v96 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - v25;
  v27 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  sub_245F8E7A4(v2 + v27, v19, &qword_27EE3A498, &unk_246097EB8);
  v28 = *(v21 + 6);
  if (v28(v19, 1, v20) == 1)
  {
    v97 = v21;
    sub_245F8E744(v19, &qword_27EE3A498, &unk_246097EB8);
    v29 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
    swift_beginAccess();
    sub_245F8E7A4(v2 + v29, v17, &qword_27EE3A498, &unk_246097EB8);
    if (v28(v17, 1, v20) == 1)
    {
      sub_245F8E744(v17, &qword_27EE3A498, &unk_246097EB8);
      v30 = sub_245FA3174();
      v31 = v99;
      v32 = v100;
      v33 = v95;
      (*(v99 + 16))(v95, v30, v100);
      v34 = sub_2460918D4();
      v35 = sub_246091FC4();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v98;
      if (v36)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v102[0] = v39;
        *v38 = 136380675;
        *(v38 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v102);
        _os_log_impl(&dword_245F8A000, v34, v35, "ObjectCaptureSession.%{private}s: Using ARBaseConfiguration.", v38, 0xCu);
        sub_245F8E6F4(v39);
        MEMORY[0x24C1989D0](v39, -1, -1);
        MEMORY[0x24C1989D0](v38, -1, -1);
      }

      (*(v31 + 8))(v33, v32);
      v40 = v37;
    }

    else
    {
      v67 = v96;
      (*(v97 + 4))(v96, v17, v20);
      v68 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
      swift_beginAccess();
      v69 = v100;
      v70 = v98;
      if (*(v68 + 8) != 1)
      {
        __break(1u);
      }

      v71 = objc_allocWithZone(MEMORY[0x277CE5340]);
      v72 = sub_246091674();
      v37 = [v71 initWithBaseConfiguration:v70 fileURL:v72];

      v73 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
      swift_beginAccess();
      v74 = *(v2 + v73);
      *(v2 + v73) = MEMORY[0x277D84FA0];

      [objc_msgSend(v37 recordingTechnique)];
      swift_unknownObjectRelease();
      [v37 startRecording];
      v75 = sub_245FA3174();
      v76 = v99;
      v77 = v94;
      (*(v99 + 16))(v94, v75, v69);
      v78 = sub_2460918D4();
      v79 = sub_246091FC4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = v20;
        v82 = swift_slowAlloc();
        v101[0] = v82;
        *v80 = 136380675;
        *(v80 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v101);
        _os_log_impl(&dword_245F8A000, v78, v79, "ObjectCaptureSession.%{private}s: Using ARRecordingConfiguration.", v80, 0xCu);
        sub_245F8E6F4(v82);
        MEMORY[0x24C1989D0](v82, -1, -1);
        MEMORY[0x24C1989D0](v80, -1, -1);

        (*(v76 + 8))(v77, v69);
        (*(v97 + 1))(v67, v81);
      }

      else
      {

        (*(v76 + 8))(v77, v69);
        (*(v97 + 1))(v67, v20);
      }
    }

    goto LABEL_22;
  }

  (*(v21 + 4))(v26, v19, v20);
  v41 = sub_246091674();
  v103[0] = 0;
  v42 = ARReplaySensorClassForMovieURL();

  v43 = v103[0];
  v93 = v26;
  if (!v42)
  {
    v83 = v103[0];
    goto LABEL_15;
  }

  swift_getObjCClassMetadata();
  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v45 = v43;
  v46 = sub_246091674();
  v47 = [v44 initWithSequenceURL:v46 replayMode:0];

  if (!v47)
  {
LABEL_15:
    v84 = sub_245FA3174();
    v85 = v99;
    v86 = v100;
    (*(v99 + 16))(v11, v84, v100);
    v87 = sub_2460918D4();
    v88 = sub_246091FB4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = v20;
      v91 = swift_slowAlloc();
      v103[0] = v91;
      *v89 = 136380675;
      *(v89 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v103);
      _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Failed to create replay sensor!", v89, 0xCu);
      sub_245F8E6F4(v91);
      MEMORY[0x24C1989D0](v91, -1, -1);
      MEMORY[0x24C1989D0](v89, -1, -1);

      (*(v85 + 8))(v11, v86);
      (*(v21 + 1))(v93, v90);
    }

    else
    {

      (*(v85 + 8))(v11, v86);
      (*(v21 + 1))(v93, v20);
    }

    v37 = 0;
    goto LABEL_22;
  }

  v95 = v45;
  v96 = v20;
  [v47 setReplaySensorDelegate_];
  sub_245FA30EC(0, &qword_27EE3AD18, 0x277CBEB98);
  sub_245F8E624(&qword_27EE3AD20, &qword_24609ACE0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_246096460;
  v49 = type metadata accessor for ObjectCaptureFrameEvent();
  *(v48 + 56) = sub_245F8E624(&qword_27EE3AD28, &unk_24609ACE8);
  *(v48 + 32) = v49;
  v50 = MEMORY[0x24C196A20](v48);
  v103[0] = 0;
  result = sub_246091F34();
  if (v103[0])
  {

    v52 = sub_246091F24();

    [v47 setCustomDataClasses_];

    v53 = objc_allocWithZone(MEMORY[0x277CE5360]);
    v37 = [v53 initWithBaseConfiguration:v98 replaySensor:v47];
    v54 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
    swift_beginAccess();
    v55 = *(v2 + v54);
    *(v2 + v54) = MEMORY[0x277D84FA0];

    v56 = v93;
    v102[0] = sub_2460916F4();
    v102[1] = v57;
    v58 = sub_2460915F4();
    v101[2] = 46;
    v101[3] = 0xE100000000000000;
    MEMORY[0x24C196640](v58);

    v101[0] = 0xD000000000000012;
    v101[1] = 0x80000002460A41E0;
    sub_245FA2AE4();
    sub_246092134();

    sub_2460550FC();

    v59 = sub_245FA3174();
    v60 = v99;
    v61 = v100;
    v62 = v97;
    (*(v99 + 16))(v97, v59, v100);
    v63 = sub_2460918D4();
    v64 = sub_246091FC4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v102[0] = v66;
      *v65 = 136380675;
      *(v65 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A41B0, v102);
      _os_log_impl(&dword_245F8A000, v63, v64, "ObjectCaptureSession.%{private}s: Using ARReplayConfiguration.", v65, 0xCu);
      sub_245F8E6F4(v66);
      MEMORY[0x24C1989D0](v66, -1, -1);
      MEMORY[0x24C1989D0](v65, -1, -1);
      swift_unknownObjectRelease();

      (*(v60 + 8))(v97, v61);
    }

    else
    {
      swift_unknownObjectRelease();

      (*(v60 + 8))(v62, v61);
    }

    (*(v21 + 1))(v56, v96);

LABEL_22:
    v92 = *MEMORY[0x277D85DE8];
    return v37;
  }

  __break(1u);
  return result;
}

void sub_2460550FC()
{
  v0 = sub_2460918F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_246091C44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_246091BD4();
  v6 = [v4 fileExistsAtPath_];

  if (v6)
  {
    sub_246091C34();
    v18 = sub_246091BC4();
    v19 = v7;
    *&v20[0] = 10;
    v20[1] = -1.7573882e159;
    sub_245FA2AE4();
    v8 = sub_246092114();

    v10 = *(v8 + 16);
    if (v10)
    {
      v17 = v8;
      v11 = (v8 + 40);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v20[0] = 0.0;
        MEMORY[0x28223BE20](v9);
        *(&v17 - 2) = v20;
        if ((v12 & 0x1000000000000000) != 0)
        {
LABEL_19:

          sub_246092274();
          goto LABEL_17;
        }

        if ((v12 & 0x2000000000000000) != 0)
        {
          v18 = v13;
          v19 = v12 & 0xFFFFFFFFFFFFFFLL;

          if (v13 < 0x21u && ((0x100003E01uLL >> v13) & 1) != 0)
          {
            goto LABEL_16;
          }

          v15 = _swift_stdlib_strtod_clocale();
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if ((v13 & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v14 < 0x21 && ((0x100003E01uLL >> v14) & 1) != 0 || (v15 = _swift_stdlib_strtod_clocale()) == 0)
          {
LABEL_16:
            LOBYTE(v21) = 0;
            goto LABEL_17;
          }
        }

        LOBYTE(v21) = *v15 == 0;
LABEL_17:

        if (v21)
        {
          v16 = v20[0];
          swift_beginAccess();
          sub_246075870(v20, v16);
          v9 = swift_endAccess();
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_246055620(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3174();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, aBlock);
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, aBlock);
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Called %{private}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *sub_24608FC7C();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v15 = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v16 = [v15 configuration];
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();

    if (v18)
    {
      goto LABEL_7;
    }
  }

  v19 = [v15 configuration];
  if (v19 && (v20 = v19, objc_opt_self(), v21 = swift_dynamicCastObjCClass(), v20, v21))
  {
LABEL_7:
    ObjectCaptureSession.takeStillImageDuringRecordOrReplay(isAutoCapture:)(a1 & 1);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a1 & 1;
    *(v22 + 24) = v2;
    v23 = v2;
    v24 = OCNonModularSPI_CapturePhotoSettings();
    v25 = &v23[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
    swift_beginAccess();
    if ((v25[8] & 1) == 0)
    {
      v26 = *v25;
      if (v24)
      {
        [v24 setHighResolutionPhotoEnabled_];
      }

      [v24 setMaxPhotoDimensions_];
    }

    aBlock[4] = sub_2460818F8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F8F3E8;
    aBlock[3] = &unk_2858E2990;
    v27 = _Block_copy(aBlock);

    [v15 captureHighResolutionFrameWithPhotoSettings:v24 completion:v27];
    _Block_release(v27);
  }
}

Swift::Void __swiftcall ObjectCaptureSession.takeStillImageDuringRecordOrReplay(isAutoCapture:)(Swift::Bool isAutoCapture)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) currentFrame];
  if (v9)
  {
    v16 = v9;
    sub_246056000(v9, isAutoCapture);
    v10 = v16;
  }

  else
  {
    v11 = sub_245FA3234();
    (*(v4 + 16))(v8, v11, v3);
    v12 = sub_2460918D4();
    v13 = sub_246091FB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136380675;
      *(v14 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A2680, &v17);
      _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: arsession current frame is nil!", v14, 0xCu);
      sub_245F8E6F4(v15);
      MEMORY[0x24C1989D0](v15, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }
}

void sub_246055C28(void *a1, void *a2, char a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if (a1)
  {
    v39 = a1;
    sub_246056000(v39, a3 & 1);
    v14 = v39;
  }

  else
  {
    v15 = sub_245FA3174();
    v16 = v7[2];
    v16(v13, v15, v6);
    v17 = sub_2460918D4();
    v18 = sub_246091FB4();
    v19 = os_log_type_enabled(v17, v18);
    v39 = v7;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v37 = v16;
      v21 = v7;
      v22 = v20;
      v23 = swift_slowAlloc();
      v38 = a2;
      v24 = v23;
      v40 = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, &v40);
      _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Failed to capture high resolution frame!", v22, 0xCu);
      sub_245F8E6F4(v24);
      v25 = v24;
      a2 = v38;
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);

      v26 = v21;
      v16 = v37;
    }

    else
    {

      v26 = v7;
    }

    v27 = v26[1];
    v27(v13, v6);
    if (a2)
    {
      v16(v10, v15, v6);
      v28 = a2;
      v29 = sub_2460918D4();
      v30 = sub_246091FB4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136380931;
        *(v31 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A4180, &v40);
        *(v31 + 12) = 2082;
        swift_getErrorValue();
        v33 = sub_246092484();
        v35 = a2;
        v36 = sub_245F8D3C0(v33, v34, &v40);

        *(v31 + 14) = v36;
        _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Error: %{public}s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v32, -1, -1);
        MEMORY[0x24C1989D0](v31, -1, -1);
      }

      else
      {
      }

      v27(v10, v6);
    }
  }
}

void sub_246056000(void *a1, int a2)
{
  v211 = a1;
  v3 = sub_246091834();
  v199 = *(v3 - 8);
  v200 = v3;
  v4 = *(v199 + 64);
  MEMORY[0x28223BE20](v3);
  v202 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v209.i64[0] = &v191 - v12;
  MEMORY[0x28223BE20](v13);
  v207.i64[0] = &v191 - v14;
  MEMORY[0x28223BE20](v15);
  v206.i64[0] = &v191 - v16;
  MEMORY[0x28223BE20](v17);
  *&v205 = &v191 - v18;
  MEMORY[0x28223BE20](v19);
  *&v204 = &v191 - v20;
  MEMORY[0x28223BE20](v21);
  *&v203 = &v191 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v191 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v191 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v191 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v191 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v191 - v36;
  v38 = sub_245FA3174();
  v213 = v7;
  v39 = *(v7 + 16);
  v210 = v6;
  v201 = a2;
  v198 = v10;
  v212 = v39;
  if (a2)
  {
    v39(v37, v38, v6);
    v40 = sub_2460918D4();
    v41 = sub_246091FC4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v217[0] = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      _os_log_impl(&dword_245F8A000, v40, v41, "ObjectCaptureSession.%{private}s: Received callback for high-res image capture request initiated by automatic capture.", v42, 0xCu);
      sub_245F8E6F4(v43);
      v44 = v43;
      v6 = v210;
      MEMORY[0x24C1989D0](v44, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    v45 = *(v213 + 8);
    v45(v37, v6);
  }

  else
  {
    v39(v34, v38, v6);
    v46 = sub_2460918D4();
    v47 = sub_246091FC4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v217[0] = v49;
      *v48 = 136380675;
      *(v48 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      _os_log_impl(&dword_245F8A000, v46, v47, "ObjectCaptureSession.%{private}s: self.takeStillImageCapturecapture request initiated by manual capture.", v48, 0xCu);
      sub_245F8E6F4(v49);
      MEMORY[0x24C1989D0](v49, -1, -1);
      v50 = v48;
      v6 = v210;
      MEMORY[0x24C1989D0](v50, -1, -1);
    }

    v45 = *(v213 + 8);
    v45(v34, v6);
  }

  v51 = v211;
  v52 = [v211 sceneDepth];
  if (v52 && (v53 = v52, v54 = [v52 depthMap], v53, v54))
  {
  }

  else
  {
    v55 = sub_245FA3174();
    v212(v31, v55, v6);
    v56 = sub_2460918D4();
    v57 = sub_246091FB4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v217[0] = v59;
      *v58 = 136380675;
      *(v58 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      _os_log_impl(&dword_245F8A000, v56, v57, "ObjectCaptureSession.%{private}s: No depth map is available in high-resolution ARFrame!", v58, 0xCu);
      sub_245F8E6F4(v59);
      v60 = v59;
      v6 = v210;
      MEMORY[0x24C1989D0](v60, -1, -1);
      v61 = v58;
      v51 = v211;
      MEMORY[0x24C1989D0](v61, -1, -1);
    }

    v45(v31, v6);
  }

  v62 = [v51 sceneDepth];
  if (v62 && (v63 = v62, v64 = [v62 confidenceMap], v63, v64))
  {
  }

  else
  {
    v65 = sub_245FA3174();
    v212(v28, v65, v6);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v217[0] = v69;
      *v68 = 136380675;
      *(v68 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      _os_log_impl(&dword_245F8A000, v66, v67, "ObjectCaptureSession.%{private}s: No confidence map is available in high-resolution ARFrame!", v68, 0xCu);
      sub_245F8E6F4(v69);
      v70 = v69;
      v51 = v211;
      MEMORY[0x24C1989D0](v70, -1, -1);
      MEMORY[0x24C1989D0](v68, -1, -1);
    }

    v45(v28, v6);
  }

  v71 = [v51 capturedPointCloudData];
  if (v71 && (v72 = v71, v73 = [v71 depthPointCloud], v72, v73))
  {
  }

  else
  {
    v74 = sub_245FA3174();
    v212(v25, v74, v6);
    v75 = sub_2460918D4();
    v76 = sub_246091FB4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_245F8A000, v75, v76, "No point cloud data is available in high-resolution ARFrame!", v77, 2u);
      MEMORY[0x24C1989D0](v77, -1, -1);
    }

    v45(v25, v6);
  }

  v78 = [v51 camera];
  sub_24606656C(v214);

  v79 = v209.i64[0];
  if (v214[0] <= 2u)
  {
    if (v214[0])
    {
      v80 = v210;
      if (v214[0] == 1)
      {
        v81 = sub_245FA3174();
        v82 = v205;
        v212(v205, v81, v80);
        v83 = sub_2460918D4();
        v84 = sub_246091FB4();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v217[0] = v86;
          *v85 = 136380675;
          *(v85 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
          v87 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: excessive motion!";
LABEL_41:
          _os_log_impl(&dword_245F8A000, v83, v84, v87, v85, 0xCu);
          sub_245F8E6F4(v86);
          MEMORY[0x24C1989D0](v86, -1, -1);
          MEMORY[0x24C1989D0](v85, -1, -1);
          goto LABEL_42;
        }
      }

      else
      {
        v91 = sub_245FA3174();
        v82 = v206.i64[0];
        v212(v206.i64[0], v91, v80);
        v83 = sub_2460918D4();
        v84 = sub_246091FB4();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v217[0] = v86;
          *v85 = 136380675;
          *(v85 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
          v87 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: insufficient features!";
          goto LABEL_41;
        }
      }
    }

    else
    {
      v89 = sub_245FA3174();
      v82 = v203;
      v80 = v210;
      v212(v203, v89, v210);
      v83 = sub_2460918D4();
      v84 = sub_246091FB4();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v217[0] = v86;
        *v85 = 136380675;
        *(v85 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
        v87 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: initializing!";
        goto LABEL_41;
      }
    }

    goto LABEL_42;
  }

  if (v214[0] == 3)
  {
    v90 = sub_245FA3174();
    v82 = v204;
    v80 = v210;
    v212(v204, v90, v210);
    v83 = sub_2460918D4();
    v84 = sub_246091FB4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v217[0] = v86;
      *v85 = 136380675;
      *(v85 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      v87 = "ObjectCaptureSession.%{private}s: Camera tracking is limited: relocalizing!";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (v214[0] == 4)
  {
    v88 = sub_245FA3174();
    v82 = v207.i64[0];
    v80 = v210;
    v212(v207.i64[0], v88, v210);
    v83 = sub_2460918D4();
    v84 = sub_246091FB4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v217[0] = v86;
      *v85 = 136380675;
      *(v85 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      v87 = "ObjectCaptureSession.%{private}s: Camera tracking is not available!";
      goto LABEL_41;
    }

LABEL_42:

    v45(v82, v80);
    return;
  }

  [v51 timestamp];
  if (*(v208 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8))
  {
    __break(1u);
    goto LABEL_73;
  }

  v93 = v92 - *(v208 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
  v191 = sub_245FA3174();
  v94 = v210;
  (v212)(v79);
  v95 = sub_2460918D4();
  v96 = sub_246091FC4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v217[0] = v98;
    *v97 = 136380931;
    *(v97 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
    *(v97 + 12) = 2050;
    *(v97 + 14) = v93;
    _os_log_impl(&dword_245F8A000, v95, v96, "ObjectCaptureSession.%{private}s: High-resolution pixel buffer %{public}f is retained.", v97, 0x16u);
    sub_245F8E6F4(v98);
    v99 = v98;
    v51 = v211;
    MEMORY[0x24C1989D0](v99, -1, -1);
    MEMORY[0x24C1989D0](v97, -1, -1);
  }

  v45(v79, v94);
  v100 = [v51 capturedImage];
  v101 = [v51 camera];
  [v101 intrinsics];
  v228[0] = v102;
  v228[1] = v103;
  v228[2] = v104;

  sub_246035724(v100, v228);
  v105 = [v51 capturedPointCloudData];
  if (v105 && (v106 = v105, v107 = [v105 depthPointCloud], v106, v107))
  {
    v108 = sub_245FCCC80();
    sub_2460232B4(v107, v108 & 1, v217);

    v223 = v217[2];
    v224 = v217[3];
    v225 = *&v217[4];
    v222 = v217[1];
    v221 = v217[0];
  }

  else
  {
    v225 = 0;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
  }

  v109 = sub_24607A904([v51 deviceOrientation]);
  v110 = [v51 capturedImage];
  v111 = *MEMORY[0x277CD3410];
  v112 = sub_246092554();
  v192 = v111;
  CVBufferSetAttachment(v110, v111, v112, kCVAttachmentMode_ShouldPropagate);

  v113 = [v51 camera];
  [v113 intrinsics];
  v209 = v114;
  v206 = v116;
  v207 = v115;

  v117 = *(v208 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
  v118 = [v117 configuration];
  if (v118)
  {
    v119 = v118;
    objc_opt_self();
    v120 = swift_dynamicCastObjCClass();

    if (v120)
    {
      goto LABEL_54;
    }
  }

  v121 = [v117 configuration];
  if (v121)
  {
    v122 = v121;
    objc_opt_self();
    v123 = swift_dynamicCastObjCClass();

    if (v123)
    {
LABEL_54:
      v124 = [v211 camera];
      [v124 intrinsics];
      v209 = v125;
      v206 = v127;
      v207 = v126;

      v128 = *sub_24601EF58();
      v129 = sub_24601EF64();
      LODWORD(v130) = 0;
      *&v131 = v128 / 1920.0;
      *(&v130 + 1) = *v129 / 1440.0;
      v209 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v209.f32[0]), v130, *v209.f32, 1), xmmword_246099B80, v209, 2);
      v207 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v207.f32[0]), v130, *v207.f32, 1), xmmword_246099B80, v207, 2);
      v206 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, v206.f32[0]), v130, *v206.f32, 1), xmmword_246099B80, v206, 2);
    }
  }

  v132 = v211;
  v133 = [v211 camera];
  [v133 transform];
  v204 = v135;
  v205 = v134;
  v203 = v136;
  v197 = v137;

  v138 = [v132 camera];
  sub_24606656C(v217);

  v139 = v217[0];
  wideToDepthCameraTransform()(v140);
  v195 = v142;
  v196 = v141;
  v193 = v144;
  v194 = v143;
  v218 = 0;
  v145 = [v132 camera];
  v146 = [v145 calibrationData];

  v219 = 1;
  v220[0] = v209;
  v220[1] = v207;
  v220[2] = v206;
  v220[3] = v205;
  v220[4] = v204;
  v220[5] = v203;
  v220[6] = v197;
  LOBYTE(v220[7]) = v139;
  v220[8] = v196;
  v220[9] = v195;
  v220[10] = v194;
  v220[11] = v193;
  LOBYTE(v220[12]) = v218;
  *(&v220[12] + 1) = v146;
  memset(&v220[13], 0, 64);
  LOBYTE(v220[17]) = 1;
  DWORD1(v220[17]) = v109;
  v147 = [v132 capturedImage];
  v148 = [v117 configuration];
  if (!v148 || (v149 = v148, objc_opt_self(), v150 = swift_dynamicCastObjCClass(), v149, !v150))
  {
    v151 = [v117 configuration];
    if (!v151)
    {
      goto LABEL_62;
    }

    v152 = v151;
    objc_opt_self();
    v153 = swift_dynamicCastObjCClass();

    if (!v153)
    {
      goto LABEL_62;
    }
  }

  v154 = v211;
  v155 = [v211 capturedImage];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v155);

  v157 = *(v208 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);
  if (!v157)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v158 = *(v208 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);

  v159 = [v154 capturedImage];
  memset(v226, 0, sizeof(v226));
  v227 = 1;
  v160 = *sub_24601EF58();
  v161 = sub_24601EF64();
  v162 = (*(*v157 + 184))(v159, v226, v160, *v161, PixelFormatType);

  if (!v162)
  {
    sub_245F8E744(&v221, &qword_27EE3B1B0, &unk_246099D60);
    v185 = v198;
    v186 = v210;
    v212(v198, v191, v210);
    v187 = sub_2460918D4();
    v188 = sub_246091FB4();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v217[0] = v190;
      *v189 = 136380675;
      *(v189 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A47F0, v217);
      _os_log_impl(&dword_245F8A000, v187, v188, "ObjectCaptureSession.%{private}s: failed to crop and scale image!", v189, 0xCu);
      sub_245F8E6F4(v190);
      MEMORY[0x24C1989D0](v190, -1, -1);
      MEMORY[0x24C1989D0](v189, -1, -1);

      sub_24601E950(v220);
    }

    else
    {

      sub_24601E950(v220);
    }

    (*(v213 + 8))(v185, v186);
    return;
  }

  v147 = v162;
  v163 = sub_246092554();
  CVBufferSetAttachment(v147, v192, v163, kCVAttachmentMode_ShouldPropagate);

LABEL_62:
  v164 = *MEMORY[0x277CD3038];
  v165 = v211;
  v166 = [v211 exifData];
  sub_246091B64();

  v167 = sub_246091B34();

  CVBufferSetAttachment(v147, v164, v167, kCVAttachmentMode_ShouldPropagate);

  v168 = [v165 tiffData];
  if (v168)
  {
    v169 = v168;
    sub_246091B64();

    v170 = *MEMORY[0x277CD3490];
    v171 = sub_246091B34();

    CVBufferSetAttachment(v147, v170, v171, kCVAttachmentMode_ShouldPropagate);
  }

  v172 = [v165 sceneDepth];
  if (v172)
  {
    v173 = v172;
    v174 = [v172 depthMap];
  }

  else
  {
    v174 = 0;
  }

  v176 = v199;
  v175 = v200;
  v177 = v211;
  v178 = [v211 sceneDepth];
  v179 = [v178 confidenceMap];

  v215[2] = v223;
  v215[3] = v224;
  v216 = v225;
  v215[0] = v221;
  v215[1] = v222;
  v180 = [v177 capturedPointCloudData];
  v181 = [v180 depthPointCloud];

  memcpy(v214, v220, 0x118uLL);
  sub_24601E8F4(v220, v217);
  v182 = [v177 rawFeaturePoints];
  v183 = v147;
  sub_246086648(v214, v183, v174, v179, v215, v181, v182, v201 & 1, v217, v93);
  v184 = v202;
  sub_246091824();
  memcpy(v214, v217, 0x191uLL);
  sub_24604522C(v214, v184);

  sub_24601E950(v220);
  (*(v176 + 8))(v184, v175);
  sub_245FCFE58(v217);
}

uint64_t sub_246057778()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed))
  {
    v13 = sub_245FA3174();
    (*(v3 + 16))(v7, v13, v2);
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v59 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v59);
      _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: Resources have already been cleaned up!", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed) = 1;
    v18 = sub_245FA3174();
    v58 = *(v3 + 16);
    v58(v12, v18, v2);
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v57 = v2;
      v23 = v10;
      v24 = v18;
      v25 = v22;
      v59 = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v59);
      _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Starting resource clean up.", v21, 0xCu);
      sub_245F8E6F4(v25);
      v26 = v25;
      v18 = v24;
      v10 = v23;
      v2 = v57;
      MEMORY[0x24C1989D0](v26, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    v27 = *(v3 + 8);
    v27(v12, v2);
    result = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) pause];
    v29 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);
    if (!v29)
    {
      __break(1u);
      return result;
    }

    v30 = *(*v29 + 168);
    v31 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler);

    v30(v32);

    v34 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);
    if (v34)
    {
      v35 = *(*v34 + 120);
      v36 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);

      v35(v37);
    }

    if (((*((*MEMORY[0x277D85000] & *v1) + 0x4A8))(v33) & 1) == 0)
    {
      v38 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
      if (v38)
      {
        v39 = *(*v38 + 280);
        v40 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);

        v39(v41);
      }

      sub_24604F1F0();
    }

    v42 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
    if (v42)
    {
      v43 = *(*v42 + 160);
      v44 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);

      v43(v45);
    }

    sub_24605F95C();
    v46 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager) = 0;

    v47 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer);
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer) = 0;

    v48 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
    if (v48)
    {
      v49 = *(*v48 + 640);
      v50 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);

      v49(v51);

      return 0;
    }

    v58(v10, v18, v2);
    v52 = sub_2460918D4();
    v53 = sub_246091FC4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v54 = 136380675;
      *(v54 + 4) = sub_245F8D3C0(0x2870556E61656C63, 0xE900000000000029, &v59);
      _os_log_impl(&dword_245F8A000, v52, v53, "ObjectCaptureSession.%{private}s: Finished resource clean up.", v54, 0xCu);
      sub_245F8E6F4(v55);
      MEMORY[0x24C1989D0](v55, -1, -1);
      MEMORY[0x24C1989D0](v54, -1, -1);
    }

    v27(v10, v2);
  }

  return 1;
}

void sub_246057DD0(void **a1)
{
  v2 = v1;
  v4 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v258 = &v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v264 = (&v242 - v8);
  MEMORY[0x28223BE20](v9);
  v262 = &v242 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v242 - v12);
  v276 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v285 = *(v276 - 8);
  v14 = *(v285 + 64);
  MEMORY[0x28223BE20](v276);
  v246 = &v242 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v250 = &v242 - v17;
  MEMORY[0x28223BE20](v18);
  v267 = &v242 - v19;
  v286 = sub_246091834();
  v280 = *(v286 - 8);
  v20 = *(v280 + 64);
  MEMORY[0x28223BE20](v286);
  v257 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v270 = (&v242 - v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v242 - v25;
  MEMORY[0x28223BE20](v27);
  v281 = &v242 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v242 - v30;
  MEMORY[0x28223BE20](v32);
  v269 = &v242 - v33;
  v34 = sub_245F8E624(&qword_27EE3ACE8, &qword_24609ACC8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v266 = &v242 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v265 = &v242 - v38;
  MEMORY[0x28223BE20](v39);
  v263 = &v242 - v40;
  MEMORY[0x28223BE20](v41);
  v278 = (&v242 - v42);
  v43 = sub_2460918F4();
  v44 = *(v43 - 8);
  v45 = v44[8];
  MEMORY[0x28223BE20](v43);
  v256 = &v242 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v242 - v48;
  v50 = *a1;
  v51 = sub_245FA3174();
  v52 = v44[2];
  v255 = v51;
  v254 = (v44 + 2);
  v253 = v52;
  (v52)(v49);
  sub_2460818E4(v50);
  v53 = sub_2460918D4();
  v54 = sub_246091FC4();
  sub_246077B30(v50);
  v55 = os_log_type_enabled(v53, v54);
  v259 = v43;
  v279 = v31;
  v284 = v2;
  v277 = v44;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v283 = swift_slowAlloc();
    v287 = v283;
    *v56 = 136381187;
    *(v56 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4130, &v287);
    *(v56 + 12) = 2081;
    *(v56 + 14) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4130, &v287);
    *(v56 + 22) = 2082;
    v296 = v50;
    sub_2460818E4(v50);
    v57 = sub_246091C54();
    v59 = v13;
    v60 = sub_245F8D3C0(v57, v58, &v287);

    *(v56 + 24) = v60;
    v13 = v59;
    v31 = v279;
    _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Called %{private}s with state = %{public}s", v56, 0x20u);
    v61 = v283;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v61, -1, -1);
    MEMORY[0x24C1989D0](v56, -1, -1);

    v252 = v277[1];
  }

  else
  {

    v252 = v44[1];
  }

  (v252)(v49, v43);
  v62 = v267;
  if ((v50 - 7) >= 0xA)
  {
    v63 = v50;
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v284;
    sub_246091984();

    v65 = v287;
    swift_getKeyPath();
    swift_getKeyPath();
    v287 = 16;
    v66 = v64;
    sub_246091994();
    v287 = v65;
    sub_246036D70(&v287);
    sub_246077B30(v65);
    v67 = *(v66 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing);
    *(v66 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing) = v63;
    v243 = v63;
    v68 = v63;
    v69 = v66;
    sub_2460818E4(v68);
    sub_246079A74(v67);
    v70 = (*((*MEMORY[0x277D85000] & *v66) + 0x4A8))();
    v71 = &OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
    v284 = v66;
    if (v70)
    {
      v72 = v66 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox;
      if (*(v66 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox + 64))
      {
        goto LABEL_77;
      }

      v73 = *(v72 + 1);
      v264 = *v72;
      v261 = v73;
      v74 = *(v72 + 3);
      v260 = *(v72 + 2);
      v259 = v74;
      v75 = *(v72 + 5);
      v258 = *(v72 + 4);
      v257 = v75;
      v77 = *(v72 + 6);
      v76 = *(v72 + 7);
      v256 = v77;
      v255 = v76;
      v78 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
      swift_beginAccess();
      v283 = v78;
      v79 = *(v66 + v78);
      v80 = *(v79 + 64);
      v249 = (v79 + 64);
      v81 = 1 << *(v79 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v26 = v82 & v80;
      v253 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
      v265 = v62 + 73;
      v248 = (v81 + 63) >> 6;
      v266 = (v280 + 16);
      v270 = (v280 + 32);
      v254 = (v285 + 56);
      v252 = (v285 + 48);
      v277 = (v280 + 8);
      v268 = v79;

      v83 = 0;
      v84 = v278;
      for (i = v13; v26; v83 = v275)
      {
        v85 = v83;
        v86 = v286;
LABEL_18:
        v88 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v89 = v88 | (v85 << 6);
        v90 = v268;
        v91 = v280;
        v92 = v269;
        (*(v280 + 16))(v269, *(v268 + 48) + *(v280 + 72) * v89, v86);
        sub_246081A04(*(v90 + 56) + *(v285 + 72) * v89, v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v93 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
        v94 = *(v93 + 48);
        v95 = *(v91 + 32);
        v96 = v263;
        v95(v263, v92, v86);
        sub_24608199C(v62, &v96[v94], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        (*(*(v93 - 8) + 56))(v96, 0, 1, v93);
        v275 = v85;
        v97 = v96;
        v69 = v284;
        v31 = v279;
        v84 = v278;
LABEL_19:
        sub_245FC5914(v97, v84, &qword_27EE3ACE8, &qword_24609ACC8);
        v98 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
        if ((*(*(v98 - 8) + 48))(v84, 1, v98) == 1)
        {
          goto LABEL_76;
        }

        v99 = v286;
        (*v270)(v31, v84, v286);
        v100 = *&v283[v69];
        if (!*(v100 + 16))
        {
          goto LABEL_85;
        }

        v101 = *&v283[v69];

        v102 = sub_245FC1BDC(v31);
        if ((v103 & 1) == 0)
        {
          goto LABEL_86;
        }

        v104 = *(v100 + 56);
        v282 = *(v285 + 72);
        sub_246081A04(v104 + v282 * v102, v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

        v105 = *(v265 + *(v276 + 32));
        sub_246081A6C(v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        if (v105)
        {
          goto LABEL_87;
        }

        v287 = v264;
        v288 = v261;
        v289 = v260;
        v290 = v259;
        v291 = v258;
        v292 = v257;
        v293 = v256;
        v294 = v255;
        v106 = sub_246090E60();
        *&v107 = OCBoundingBox.scaledTransform(scale:)(*v106);
        v274 = v107;
        v273 = v108;
        v272 = v109;
        v271 = v110;
        v111 = v283;
        swift_beginAccess();
        v112 = *&v111[v69];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v99;
        v71 = isUniquelyReferenced_nonNull_native;
        v115 = v281;
        (*v266)(v281, v31, v114);
        v295 = *&v111[v69];
        v116 = v295;
        *&v111[v69] = 0x8000000000000000;
        v118 = sub_245FC1BDC(v115);
        v119 = *(v116 + 16);
        v120 = (v117 & 1) == 0;
        v121 = v119 + v120;
        if (__OFADD__(v119, v120))
        {
          goto LABEL_88;
        }

        v122 = v117;
        if (*(v116 + 24) >= v121)
        {
          v125 = i;
          if (v71)
          {
            if ((v117 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_246074CB4();
            if ((v122 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          sub_2460727D4(v121, v71);
          v123 = sub_245FC1BDC(v281);
          v125 = i;
          if ((v122 & 1) != (v124 & 1))
          {
            goto LABEL_92;
          }

          v118 = v123;
          if ((v122 & 1) == 0)
          {
LABEL_40:
            (*v254)(v125, 1, 1, v276);
            __break(1u);
            goto LABEL_41;
          }
        }

        v126 = v295;
        v127 = v118 * v282;
        sub_24608199C(*(v295 + 56) + v118 * v282, v125, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v128 = v276;
        (*v254)(v125, 0, 1, v276);
        v129 = v125 + *(v128 + 32);
        if (*(v129 + 73))
        {
          goto LABEL_91;
        }

        v130 = v273;
        *v129 = v274;
        *(v129 + 16) = v130;
        v131 = v271;
        *(v129 + 32) = v272;
        *(v129 + 48) = v131;
        v132 = v125;
        v133 = v125;
        v134 = v262;
        sub_245F8E7A4(v133, v262, &qword_27EE3ACE0, &unk_246098880);
        if ((*v252)(v134, 1, v128) == 1)
        {
          sub_245F8E744(v134, &qword_27EE3ACE0, &unk_246098880);
          v135 = *(v280 + 8);
          v136 = v286;
          v135(*(v126 + 48) + *(v280 + 72) * v118, v286);
          sub_2460739C0(v118, v126);
          v135(v281, v136);
        }

        else
        {
          v137 = v250;
          sub_24608199C(v134, v250, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          sub_24608199C(v137, *(v126 + 56) + v127, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v135 = *v277;
          (*v277)(v281, v286);
        }

        v138 = *(v98 + 48);
        sub_245F8E744(v132, &qword_27EE3ACE0, &unk_246098880);
        v139 = v283;
        *&v283[v69] = v126;
        swift_endAccess();
        v140 = *&v253[v69];
        sub_24606C1B4();
        v141 = *&v139[v69];
        if (!*(v141 + 16))
        {
          goto LABEL_89;
        }

        v142 = *&v139[v69];

        v31 = v279;
        v143 = sub_245FC1BDC(v279);
        if ((v144 & 1) == 0)
        {
          goto LABEL_90;
        }

        sub_246081A04(*(v141 + 56) + v143 * v282, v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

        sub_246091924();

        sub_246081A6C(v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v135(v31, v286);
        v84 = v278;
        sub_246081A6C(v278 + v138, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      if (v248 <= v83 + 1)
      {
        v87 = v83 + 1;
      }

      else
      {
        v87 = v248;
      }

      v86 = v286;
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v85 >= v248)
        {
          v275 = v87 - 1;
          v145 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v146 = v263;
          (*(*(v145 - 8) + 56))(v263, 1, 1, v145);
          v97 = v146;
          v26 = 0;
          goto LABEL_19;
        }

        v26 = v249[v85];
        ++v83;
        if (v26)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_41:
      v147 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
      swift_beginAccess();
      v283 = v147;
      v148 = *(v69 + v147);
      v149 = *(v148 + 64);
      v248 = v148 + 64;
      v150 = 1 << *(v148 + 32);
      v151 = -1;
      if (v150 < 64)
      {
        v151 = ~(-1 << v150);
      }

      v152 = v151 & v149;
      v263 = v71[23];
      v247 = (v150 + 63) >> 6;
      v278 = (v280 + 16);
      v279 = (v280 + 32);
      i = (v285 + 56);
      v250 = v285 + 48;
      v282 = (v280 + 8);
      v249 = v277 + 1;
      v245 = "stopVoxelIntegration()";
      v268 = v148;

      v153 = 0;
      *&v154 = 136380931;
      v244 = v154;
      v277 = v26;
      if (v152)
      {
        while (1)
        {
          v155 = v153;
          v156 = v286;
LABEL_52:
          v159 = __clz(__rbit64(v152));
          v152 &= v152 - 1;
          v160 = v159 | (v155 << 6);
          v161 = v268;
          v162 = v280;
          v163 = v269;
          (*(v280 + 16))(v269, *(v268 + 48) + *(v280 + 72) * v160, v156);
          sub_246081A04(*(v161 + 56) + *(v285 + 72) * v160, v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v164 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v165 = *(v164 + 48);
          v166 = *(v162 + 32);
          v167 = v266;
          v166(v266, v163, v156);
          v168 = v62;
          v169 = v167;
          sub_24608199C(v168, &v167[v165], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          (*(*(v164 - 8) + 56))(v167, 0, 1, v164);
          v158 = v155;
          v69 = v284;
          v26 = v277;
LABEL_53:
          v170 = v265;
          sub_245FC5914(v169, v265, &qword_27EE3ACE8, &qword_24609ACC8);
          v171 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          if ((*(*(v171 - 8) + 48))(v170, 1, v171) == 1)
          {
            break;
          }

          v281 = v158;
          v172 = v170 + *(v171 + 48);
          v173 = v286;
          (*v279)(v26, v170, v286);
          v174 = *(v172 + 320);
          *&v274 = *(v172 + 328);
          v175 = *(v172 + 336);
          *&v273 = *(v172 + 344);
          v176 = *(v172 + 352);
          *&v272 = *(v172 + 360);
          v177 = *(v172 + 376);
          v275 = *(v172 + 368);
          *&v271 = v177;
          v178 = *(v172 + 384);
          sub_246081A6C(v172, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          if ((v178 & 1) == 0)
          {
            v262 = v176;
            v179 = v283;
            swift_beginAccess();
            v180 = *&v179[v69];
            v181 = swift_isUniquelyReferenced_nonNull_native();
            v182 = v173;
            v183 = v181;
            v184 = *v278;
            v185 = v270;
            (*v278)(v270, v26, v182);
            v295 = *&v179[v69];
            v186 = v295;
            *&v179[v69] = 0x8000000000000000;
            v188 = sub_245FC1BDC(v185);
            v189 = *(v186 + 16);
            v190 = (v187 & 1) == 0;
            v191 = v189 + v190;
            if (__OFADD__(v189, v190))
            {
              goto LABEL_84;
            }

            v192 = v187;
            v193 = *(v186 + 24);
            v260 = v184;
            v261 = v175;
            if (v193 >= v191)
            {
              if (v183)
              {
                if ((v187 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                sub_246074CB4();
                if ((v192 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
              sub_2460727D4(v191, v183);
              v194 = sub_245FC1BDC(v270);
              if ((v192 & 1) != (v195 & 1))
              {
                goto LABEL_92;
              }

              v188 = v194;
              if ((v192 & 1) == 0)
              {
LABEL_75:
                (*i)(v264, 1, 1, v276);
                __break(1u);
                break;
              }
            }

            v196 = v174;
            v197 = v295;
            v198 = v285;
            v199 = *(v285 + 72) * v188;
            v200 = v264;
            sub_24608199C(*(v295 + 56) + v199, v264, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v201 = v276;
            (*(v198 + 56))(v200, 0, 1, v276);
            v202 = v274;
            v200[8] = v196;
            v200[9] = v202;
            v203 = v273;
            v200[10] = v261;
            v200[11] = v203;
            v204 = v272;
            v200[12] = v262;
            v200[13] = v204;
            v205 = v271;
            v200[14] = v275;
            v200[15] = v205;
            v206 = v200;
            v207 = v258;
            sub_245F8E7A4(v206, v258, &qword_27EE3ACE0, &unk_246098880);
            if ((*(v198 + 48))(v207, 1, v201) == 1)
            {
              sub_245F8E744(v207, &qword_27EE3ACE0, &unk_246098880);
              v208 = *(v280 + 8);
              v209 = v286;
              v208(*(v197 + 48) + *(v280 + 72) * v188, v286);
              sub_2460739C0(v188, v197);
              v208(v270, v209);
            }

            else
            {
              v210 = v246;
              sub_24608199C(v207, v246, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              sub_24608199C(v210, *(v197 + 56) + v199, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v208 = *v282;
              v209 = v286;
              (*v282)(v270, v286);
            }

            v211 = v257;
            v212 = v260;
            sub_245F8E744(v264, &qword_27EE3ACE0, &unk_246098880);
            *&v283[v284] = v197;
            swift_endAccess();
            v213 = v256;
            v214 = v259;
            (v253)(v256, v255, v259);
            v212(v211, v277, v209);
            v215 = sub_2460918D4();
            v216 = sub_246091FC4();
            if (os_log_type_enabled(v215, v216))
            {
              v217 = swift_slowAlloc();
              v218 = v211;
              v219 = swift_slowAlloc();
              v287 = v219;
              *v217 = v244;
              *(v217 + 4) = sub_245F8D3C0(0xD000000000000022, v245 | 0x8000000000000000, &v287);
              *(v217 + 12) = 2082;
              sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0]);
              v220 = sub_2460923D4();
              v222 = v221;
              v208(v218, v286);
              v223 = sub_245F8D3C0(v220, v222, &v287);

              *(v217 + 14) = v223;
              _os_log_impl(&dword_245F8A000, v215, v216, "ObjectCaptureSession.%{private}s: Updated metadata of the shot %{public}s with the latest mobileSfM transform.", v217, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v219, -1, -1);
              MEMORY[0x24C1989D0](v217, -1, -1);

              v224 = v213;
              v225 = v259;
            }

            else
            {

              v208(v211, v209);
              v224 = v213;
              v225 = v214;
            }

            (v252)(v224, v225);
            v69 = v284;
            v26 = v277;
          }

          v226 = *&v263[v69];
          sub_24606C1B4();
          v227 = *&v283[v69];
          v62 = v267;
          v228 = v281;
          if (!*(v227 + 16))
          {
            goto LABEL_82;
          }

          v229 = *&v283[v69];

          v230 = sub_245FC1BDC(v26);
          if ((v231 & 1) == 0)
          {
            goto LABEL_83;
          }

          sub_246081A04(*(v227 + 56) + *(v285 + 72) * v230, v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

          sub_246091924();

          sub_246081A6C(v62, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          (*v282)(v26, v286);
          v153 = v228;
          if (!v152)
          {
            goto LABEL_45;
          }
        }

LABEL_76:

LABEL_77:
        v233 = sub_2460917F4();
        v235 = v234;
        v236 = *(v69 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage);
        v237 = *(v69 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers);
        sub_24606C3B0();
        v287 = 0x302E342E32;
        v288 = 0xE500000000000000;
        v289 = v233;
        v290 = v235;
        LODWORD(v291) = v236;
        sub_246091924();

        v238 = sub_246057778();
        v239 = v243;
        if (v238)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v240 = v69;
          sub_2460818E4(v239);
          sub_246091984();

          v241 = v287;
          swift_getKeyPath();
          swift_getKeyPath();
          v287 = v239;
          v240;
          sub_246091994();
          v287 = v241;
          sub_246036D70(&v287);
          sub_246077B30(v241);
        }

        return;
      }

LABEL_45:
      if (v247 <= v153 + 1)
      {
        v157 = v153 + 1;
      }

      else
      {
        v157 = v247;
      }

      v158 = v157 - 1;
      v156 = v286;
      while (1)
      {
        v155 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          break;
        }

        if (v155 >= v247)
        {
          v232 = sub_245F8E624(&unk_27EE3ACF0, &qword_24609ACD0);
          v169 = v266;
          (*(*(v232 - 8) + 56))(v266, 1, 1, v232);
          v152 = 0;
          goto LABEL_53;
        }

        v152 = *(v248 + 8 * v155);
        ++v153;
        if (v152)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    sub_246092424();
    __break(1u);
  }
}

void (*sub_2460599F8(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
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
  v5 = sub_246091834();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_246076004(v4, v9);
  return sub_246059B10;
}

void sub_246059B10(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_246059B88()
{
  v1 = v0;
  sub_24604F1F0();
  v2 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 256;
  v3 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = 0;

  v4 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 1;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  LOBYTE(v20) = 1;
  sub_246044B58(&v16);
  sub_246079C60();
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor) = 0;

  sub_246044C40();
  v6 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48);
  v18 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32);
  v19 = v7;
  v20 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64);
  v8 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16);
  v16 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
  v17 = v8;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  sub_245F8E744(&v16, &qword_27EE3AB10, &qword_246096678);
  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer) = 0;

  v10 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment) = MEMORY[0x277D84F90];

  v11 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
  if (v11)
  {
    v12 = *(*v11 + 160);

    v12(v13);
  }

  v14 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer);
  *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer) = 0;
}

uint64_t sub_246059D18()
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v5))
  {
    goto LABEL_8;
  }

  v1 = &v38;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot))
  {
    v8 = 0.75;
  }

  else
  {
    v8 = 0.8;
  }

  if (qword_27EE3DBC0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9.n128_f64[0] = sub_24603532C(&v38, xmmword_27EE3DBD0, 0.01, v8);
    nullsub_1(&v38, v9);
    v10 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v11 = v45;
    v12 = v44;
    v13 = v45;
    v10[6] = v44;
    v10[7] = v11;
    v10[8] = v1[8];
    v14 = v41;
    v15 = v40;
    v16 = v41;
    v10[2] = v40;
    v10[3] = v14;
    v17 = v43;
    v19 = v42;
    v18 = v43;
    v10[4] = v42;
    v10[5] = v17;
    v20 = v39;
    v22 = v38;
    v21 = v39;
    *v10 = v38;
    v10[1] = v20;
    v1[15] = v12;
    v1[16] = v13;
    v1[17] = v1[8];
    v1[11] = v15;
    v1[12] = v16;
    v1[13] = v19;
    v1[14] = v18;
    v1[9] = v22;
    v1[10] = v21;
    result = sub_2460818C8(&v46);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v24 = v1[16];
    v1[24] = v1[15];
    v1[25] = v24;
    v1[26] = v1[17];
    v25 = v1[12];
    v1[20] = v1[11];
    v1[21] = v25;
    v26 = v1[14];
    v1[22] = v1[13];
    v1[23] = v26;
    v27 = v1[10];
    v1[18] = v1[9];
    v1[19] = v27;
    if (!sub_246052D94(v47))
    {
      break;
    }

LABEL_8:
    v28 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID) = v30;
      return 1;
    }

    __break(1u);
LABEL_14:
    *(&v36 + 1) = v8;
    swift_once();
    v8 = *(&v36 + 1);
  }

  v31 = sub_245FA3174();
  (*(v3 + 16))(v7, v31, v2);
  v32 = sub_2460918D4();
  v33 = sub_246091FB4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v34 = 136380675;
    *(v34 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A4070, &v37);
    _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: Failed to start voxel integration!", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t sub_24605A078()
{
  v1 = sub_2460918F4();
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v74 - v6;
  MEMORY[0x28223BE20](v5);
  v80 = &v74 - v8;
  v9 = sub_246091834();
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v74 - v15;
  v83 = sub_246091704();
  v17 = *(v83 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v83);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - v28;
  if ((sub_2460448B0() & 1) != 0 && !*&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager])
  {
    v78 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
    v37 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
    swift_beginAccess();
    v79 = v0;
    sub_245F8E7A4(&v0[v37], v16, &qword_27EE3A498, &unk_246097EB8);
    v38 = v83;
    v77 = *(v17 + 48);
    if (v77(v16, 1, v83) == 1)
    {
      v39 = [objc_opt_self() defaultManager];
      v76 = v17 + 48;
      v40 = v39;
      v41 = [v39 temporaryDirectory];

      sub_2460916D4();
      sub_246091694();
      v75 = v17;
      v74 = *(v17 + 8);
      v74(v24, v83);
      sub_246091824();
      sub_2460917F4();
      (*(v81 + 8))(v12, v9);
      v42 = v29;
      sub_246091694();
      v38 = v83;

      v74(v27, v38);
      v43 = v77(v16, 1, v38);
      v44 = v75;
      if (v43 != 1)
      {
        sub_245F8E744(v16, &qword_27EE3A498, &unk_246097EB8);
      }
    }

    else
    {
      v42 = v29;
      (*(v17 + 32))(v29, v16, v38);
      v44 = v17;
    }

    type metadata accessor for PGManager();
    (*(v44 + 16))(v21, v42, v38);
    v45 = sub_245FD4628();
    if (v45[25])
    {
      v46 = 256;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_245FD55FC(v21, *v45 | (*(v45 + 1) << 32), *(v45 + 2), *(v45 + 2), v46 | v45[24]);
    v48 = v79;
    v49 = v47;
    v50 = v78;
    v51 = *&v79[v78];
    *&v79[v78] = v47;

    (*(*v49 + 608))(v52);
    v53 = v84;

    v54 = *&v48[v50];
    if (v54)
    {
      v55 = *(*v54 + 448);
      v56 = *&v48[v50];

      v57 = v48;
      v55(v48, &off_2858E1C70);

      v58 = *&v48[v78];
      if (v58)
      {
        v59 = *(*v58 + 520);
        v60 = v57;

        v59(v48, &off_2858E1C80);

        v61 = *&v48[v78];
        if (v61)
        {
          v62 = *(*v61 + 544);
          v63 = v78;
          v64 = v60;

          v62(v48, &off_2858E1CB0);

          v65 = *&v48[v63];
          if (v65)
          {
            v66 = *(*v65 + 568);
            v67 = v64;

            v66(v48, &off_2858E1CC0);
          }
        }
      }
    }

    v68 = sub_245FA3174();
    v69 = v80;
    (*(v53 + 16))(v80, v68, v85);
    v70 = sub_2460918D4();
    v71 = sub_246091FC4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v86 = v73;
      *v72 = 136380675;
      *(v72 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4030, &v86);
      _os_log_impl(&dword_245F8A000, v70, v71, "ObjectCaptureSession.%{private}s: Initialized mobileSfM in ObjectCaptureSession.", v72, 0xCu);
      sub_245F8E6F4(v73);
      MEMORY[0x24C1989D0](v73, -1, -1);
      MEMORY[0x24C1989D0](v72, -1, -1);
    }

    (*(v53 + 8))(v69, v85);
    return (*(v44 + 8))(v42, v38);
  }

  else
  {
    v30 = sub_245FA3174();
    v31 = v84;
    (*(v84 + 16))(v7, v30, v85);
    v32 = sub_2460918D4();
    v33 = sub_246091FC4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v87 = v35;
      *v34 = 136380675;
      *(v34 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4030, &v87);
      _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: mobileSfM has not been initialized or it has already been initialized in ObjectCaptureSession!", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    return (*(v31 + 8))(v7, v85);
  }
}

id ObjectCaptureSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ObjectCaptureSession.startRecording(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A26F0, v17);
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A26F0, v17);
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Called %{private}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  v14 = (*(v5 + 8))(v8, v4);
  v15 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v14);
  v17[-2] = v2;
  v17[-1] = a1;
  sub_246092044();
  return LOBYTE(v17[0]);
}

uint64_t sub_24605AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_246091704();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
  swift_beginAccess();
  sub_245F97BAC(v9, a1 + v12, &qword_27EE3A498, &unk_246097EB8);
  result = swift_endAccess();
  *a3 = 1;
  return result;
}

uint64_t ObjectCaptureSession.stopRecording(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245FA3234();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, v24);
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, v24);
    _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: Called %{private}s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v17, -1, -1);
    v18 = v16;
    a2 = v15;
    a1 = v23;
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  v19 = (*(v7 + 8))(v10, v6);
  v20 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v19);
  *(&v22 - 4) = v3;
  *(&v22 - 3) = a1;
  *(&v22 - 2) = a2;
  sub_246092044();
  return LOBYTE(v24[0]);
}

void sub_24605B1E8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v15 = [v14 configuration];
  if (v15)
  {
    v16 = v15;
    v34 = a4;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = a2;
      v20[3] = a3;
      v20[4] = v19;
      v20[5] = v18;
      aBlock[4] = sub_2460823F8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24605BE90;
      aBlock[3] = &unk_2858E2C38;
      v21 = _Block_copy(aBlock);

      v22 = v16;

      [v18 finishRecordingWithHandler_];

      _Block_release(v21);
      v23 = 1;
      a4 = v34;
      goto LABEL_8;
    }

    a4 = v34;
  }

  v24 = sub_245FA3174();
  (*(v9 + 16))(v13, v24, v8);
  v25 = a1;
  v26 = sub_2460918D4();
  v27 = sub_246091FB4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136380931;
    *(v28 + 4) = sub_245F8D3C0(0xD000000000000021, 0x80000002460A2710, aBlock);
    *(v28 + 12) = 2082;
    aBlock[6] = [v14 configuration];
    sub_245F8E624(&qword_27EE3A9F8, &qword_246099CE8);
    v30 = sub_246091C54();
    v32 = a4;
    v33 = sub_245F8D3C0(v30, v31, aBlock);

    *(v28 + 14) = v33;
    a4 = v32;
    _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Invalid ARConfiguration: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v29, -1, -1);
    MEMORY[0x24C1989D0](v28, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  v23 = 0;
LABEL_8:
  *a4 = v23;
}

void sub_24605B580(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  v12 = sub_246091704();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL;
  v20 = Strong;
  swift_beginAccess();
  sub_245F8E7A4(v20 + v19, v11, &qword_27EE3A498, &unk_246097EB8);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    sub_245F8E744(v11, &qword_27EE3A498, &unk_246097EB8);
    goto LABEL_8;
  }

  (*(v13 + 32))(v17, v11, v12);
  v33[5] = sub_2460916F4();
  v33[6] = v21;
  v22 = sub_2460915F4();
  v33[0] = 46;
  v33[1] = 0xE100000000000000;
  MEMORY[0x24C196640](v22);

  v33[3] = 0xD000000000000012;
  v33[4] = 0x80000002460A41E0;
  sub_245FA2AE4();
  v23 = sub_246092134();
  v25 = v24;

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_24605B914(v23, v25);
  }

  (*(v13 + 8))(v17, v12);
LABEL_8:
  v28 = [a5 templateConfiguration];
  if (v28)
  {
    v29 = v28;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = *(v30 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);

      [v32 runWithConfiguration:v29 options:0];
      v29 = v32;
    }
  }
}

uint64_t sub_24605B914(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091C44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091704();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v35 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps;
  result = swift_beginAccess();
  v19 = *(v2 + v17);
  if (*(v19 + 16))
  {
    v31 = v14;
    v32 = v13;
    v30[0] = v7;
    v30[1] = v4;
    v30[2] = v3;
    v38 = 0;
    v39 = 0xE000000000000000;
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 56);
    v23 = (v20 + 63) >> 6;

    for (i = 0; v22; result = )
    {
      v25 = i;
LABEL_10:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = *(*(v19 + 48) + ((v25 << 9) | (8 * v26)));
      v36 = sub_246091EE4();
      v37 = v28;

      MEMORY[0x24C196640](10, 0xE100000000000000);

      MEMORY[0x24C196630](v36, v37);
    }

    while (1)
    {
      v25 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        v29 = v35;
        sub_246091644();
        v36 = v38;
        v37 = v39;

        sub_246091C34();
        sub_245FA2AE4();
        sub_246092144();
        (*(v9 + 8))(v12, v8);

        (*(v31 + 8))(v29, v32);
      }

      v22 = *(v19 + 56 + 8 * v25);
      ++i;
      if (v22)
      {
        i = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24605BE90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t ObjectCaptureSession.setFrameEvent(frameEvent:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24607A6C8;
  *(v5 + 24) = v4;
  v11[4] = sub_245FC5DA4;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_245FB4BFC;
  v11[3] = &unk_2858E0F40;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObjectCaptureSession.getFrameEvent(timestamp:)(double a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v10 = [v9 configuration];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_9:
    v18 = sub_245FA3234();
    (*(v4 + 16))(v8, v18, v3);
    v19 = v1;
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v31[0] = v23;
      *v22 = 136380931;
      *(v22 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2740, v31);
      *(v22 + 12) = 2082;
      *&v29 = [v9 configuration];
      sub_245F8E624(&qword_27EE3A9F8, &qword_246099CE8);
      v24 = sub_246091C54();
      v26 = sub_245F8D3C0(v24, v25, v31);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: Not a replay configuration: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v13 = [v12 replaySensor];
  if (!v13)
  {
LABEL_7:

    return 0;
  }

  v14 = v13;
  v15 = [v13 customDataClasses];
  v16 = sub_246091F44();

  v17 = *(v16 + 16);

  if (!v17 || (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8] & 1) != 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if ([v14 customDataForTimestamp_])
  {
    sub_246092174();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_245F8E744(v31, &unk_27EE3AA00, &qword_246098380);
    return 0;
  }

  type metadata accessor for ObjectCaptureFrameEvent();
  if (swift_dynamicCast())
  {
    return v28[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24605C438()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3280();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "=== ObjectCaptureSession.%{private}s takes time = %{public}s ms ===", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_24605C798()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3280();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "=== ObjectCaptureSession.%{private}s takes time = %{public}s ms ===", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

void sub_24605CAF8(float32x4_t *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v23 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
  {
    v24 = sub_245FA3280();
    (*(v5 + 16))(v8, v24, v4);
    v25 = sub_2460918D4();
    v26 = sub_246091FB4();
    v27 = v4;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v116[0] = v29;
      *v28 = 136380675;
      *(v28 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v116);
      _os_log_impl(&dword_245F8A000, v25, v26, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point, tap point is nil!", v28, 0xCu);
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    (*(v5 + 8))(v8, v27);
    return;
  }

  if ((v23[2].i8[0] & 1) == 0)
  {
    v36 = v23[1];
    v37 = vsubq_f32(v36, *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin));
    v38 = vmulq_f32(v37, v37);
    if (sqrtf(v38.f32[2] + vaddv_f32(*v38.f32)) <= 0.3)
    {
      v53 = sub_245FA3280();
      v54 = v4;
      (*(v5 + 16))(v14, v53, v4);
      v55 = sub_2460918D4();
      v56 = sub_246091FC4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v116[0] = v58;
        *v57 = 136380675;
        *(v57 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v116);
        _os_log_impl(&dword_245F8A000, v55, v56, "ObjectCaptureSession.%{private}s: New tap point is too close to the old tap point, not restarting voxel integration!", v57, 0xCu);
        sub_245F8E6F4(v58);
        MEMORY[0x24C1989D0](v58, -1, -1);
        MEMORY[0x24C1989D0](v57, -1, -1);
      }

      (*(v5 + 8))(v14, v54);
      goto LABEL_41;
    }

    v92 = v20;
    v39 = a1->i64[0];
    v95 = a1[13];
    v96 = v36;
    sub_24604F1F0();
    v40 = vsubq_f32(v95, v96);
    v41 = vmulq_f32(v40, v40);
    v42 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
    v43 = sub_245FA3280();
    v44 = *(v5 + 16);
    v94 = v43;
    v95.i64[0] = v5 + 16;
    v93 = v44;
    (v44)(v22);
    v45 = sub_2460918D4();
    v46 = sub_246091FC4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v91 = v39;
      v49 = v48;
      *&v116[0] = v48;
      *v47 = 136380931;
      *(v47 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v116);
      *(v47 + 12) = 2050;
      *(v47 + 14) = v42;
      _os_log_impl(&dword_245F8A000, v45, v46, "ObjectCaptureSession.%{private}s: Camera to tap point distance = %{public}fm", v47, 0x16u);
      sub_245F8E6F4(v49);
      v50 = v49;
      v39 = v91;
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v47, -1, -1);
    }

    v51 = *(v5 + 8);
    v51(v22, v4);
    if (v42 <= 0.0)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v42 > 0.5)
    {
      if (v42 <= 5.0)
      {
        v59 = (-1.0 / powf(2.5, v42 + 3.8)) + 0.03;
        goto LABEL_22;
      }

      *&v52 = 0.03;
    }

    else
    {
      *&v52 = 0.01;
    }

    v59 = *&v52;
LABEL_22:
    if (v59 >= 0.00999 && v59 <= 0.03001)
    {
      v60 = 0.75;
      if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot))
      {
        goto LABEL_33;
      }

      if (v42 > 0.5)
      {
        if (v42 <= 5.0)
        {
          v62 = v42 + v42;
          v63 = v59;
          v64 = exp2f(v62);
          v59 = v63;
          v60 = (1.0 / (v64 * 3.0)) + 0.8;
          goto LABEL_31;
        }

        *&v61 = 0.8;
      }

      else
      {
        *&v61 = 0.97;
      }

      v60 = *&v61;
LABEL_31:
      if (v60 >= 0.79999 && v60 <= 0.97001)
      {
LABEL_33:
        v65.n128_f64[0] = sub_24603532C(&v98, v96, v59, v60);
        nullsub_1(&v98, v65);
        v66 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
        v67 = v105;
        v68 = v104;
        v69 = v105;
        v66[6] = v104;
        v66[7] = v67;
        v66[8] = v106;
        v70 = v101;
        v71 = v100;
        v72 = v101;
        v66[2] = v100;
        v66[3] = v70;
        v73 = v103;
        v75 = v102;
        v74 = v103;
        v66[4] = v102;
        v66[5] = v73;
        v76 = v99;
        v78 = v98;
        v77 = v99;
        *v66 = v98;
        v66[1] = v76;
        v113 = v68;
        v114 = v69;
        v115 = v106;
        v109 = v71;
        v110 = v72;
        v111 = v75;
        v112 = v74;
        v107 = v78;
        v108 = v77;
        if (sub_2460818C8(&v107) != 1)
        {
          v116[6] = v113;
          v116[7] = v114;
          v116[8] = v115;
          v116[2] = v109;
          v116[3] = v110;
          v116[4] = v111;
          v116[5] = v112;
          v116[0] = v107;
          v116[1] = v108;
          if (!sub_246052D94(v116))
          {
            v93(v18, v94, v4);
            v79 = sub_2460918D4();
            v80 = sub_246091FB4();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v91 = v39;
              v82 = v81;
              v83 = swift_slowAlloc();
              v97 = v83;
              *v82 = 136380675;
              *(v82 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, &v97);
              _os_log_impl(&dword_245F8A000, v79, v80, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point!", v82, 0xCu);
              sub_245F8E6F4(v83);
              MEMORY[0x24C1989D0](v83, -1, -1);
              v84 = v82;
              v39 = v91;
              MEMORY[0x24C1989D0](v84, -1, -1);
            }

            v51(v18, v4);
          }

          v85 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime;
          *v85 = v39;
          *(v85 + 8) = 0;
          v86 = v92;
          v93(v92, v94, v4);
          v87 = sub_2460918D4();
          v88 = sub_246091FC4();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v97 = v90;
            *v89 = 136380675;
            *(v89 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, &v97);
            _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Successfully restarted voxel integration at tap point.", v89, 0xCu);
            sub_245F8E6F4(v90);
            MEMORY[0x24C1989D0](v90, -1, -1);
            MEMORY[0x24C1989D0](v89, -1, -1);
          }

          v51(v86, v4);
LABEL_41:
          *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) = 0;
          return;
        }

LABEL_45:
        __break(1u);
        return;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v30 = sub_245FA3280();
  v31 = v4;
  (*(v5 + 16))(v11, v30, v4);
  v32 = sub_2460918D4();
  v33 = sub_246091FB4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v116[0] = v35;
    *v34 = 136380675;
    *(v34 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A4340, v116);
    _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: Failed to start voxel integration at tap point, tap point in world is nil!", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  (*(v5 + 8))(v11, v31);
}

void sub_24605D558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v181 = v4;
  v182 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v166 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v166 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v166 - v16;
  MEMORY[0x28223BE20](v18);
  v177 = &v166 - v19;
  MEMORY[0x28223BE20](v20);
  *&v176 = &v166 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v166 - v23;
  v25 = *a1;
  v26 = *(a1 + 8);
  v27 = *(a1 + 64);
  v258 = *(a1 + 48);
  v259 = v27;
  v28 = *(a1 + 96);
  v260 = *(a1 + 80);
  v261 = v28;
  v29 = *(a1 + 32);
  v256 = *(a1 + 16);
  v257 = v29;
  v30 = *(a1 + 128);
  v178 = *(a1 + 112);
  v179 = v30;
  v31 = *(a1 + 160);
  v180 = *(a1 + 144);
  v33 = *(a1 + 240);
  v32 = *(a1 + 256);
  v34 = *(a1 + 288);
  v247 = *(a1 + 272);
  v246 = v32;
  v35 = *(a1 + 224);
  v185 = *(a1 + 208);
  v186 = v31;
  v245 = v33;
  v244 = v35;
  v37 = *(a1 + 304);
  v36 = *(a1 + 320);
  v38 = *(a1 + 352);
  v251 = *(a1 + 336);
  v250 = v36;
  v249 = v37;
  v248 = v34;
  v39 = *(a1 + 368);
  v254 = *(a1 + 384);
  v40 = *(a1 + 192);
  v183 = *(a1 + 176);
  v184 = v40;
  v255 = *(a1 + 400);
  v253 = v39;
  v252 = v38;
  CVPixelBufferGetWidth(v26);
  CVPixelBufferGetHeight(v26);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(&v191);
  if (v191.n128_u64[0] != 15)
  {
    sub_246077B30(v191.n128_u64[0]);
    sub_246077B30(0xF);
    v48 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth);
    v191.n128_f64[0] = v25;
    v191.n128_u64[1] = v26;
    v194 = v258;
    v195 = v259;
    v196 = v260;
    v197 = v261;
    v192 = v256;
    v193 = v257;
    v198 = v178;
    v199 = v179;
    v200 = v180;
    v201 = v186;
    v202 = v183;
    v203 = v184;
    v216 = v255;
    v214 = v253;
    v215 = v254;
    v212 = v251;
    v213 = v252;
    v210 = v249;
    v211 = v250;
    v208 = v247;
    v209 = v248;
    v206 = v245;
    v207 = v246;
    v204 = v185;
    v205 = v244;
    v49 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
    v223 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
    v224 = v49;
    v225 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
    v50 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
    v219 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
    v220 = v50;
    v51 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
    v221 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
    v222 = v51;
    v52 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
    v217 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v218 = v52;
    if (sub_2460818C8(&v217) != 1)
    {
      v189 = 1;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 1;
      v190 = 1;
      v236 = 0u;
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v241 = 0u;
      v243 = 1;
      v226.i8[0] = 1;
      v242 = 0u;
      v53 = sub_24607AB30(&v191, v218, &v231, &v231, &v236, 0x100000000);
      v55 = v181;
      v54 = v182;
      if (!v53)
      {
        return;
      }

      v56 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
      swift_beginAccess();
      v57 = *(v2 + v56);
      if (OCProxySurfaceExecutePipeline())
      {
        v58 = sub_245FA3280();
        (*(v54 + 16))(v8, v58, v55);
        v59 = sub_2460918D4();
        v60 = sub_246091FB4();
        if (!os_log_type_enabled(v59, v60))
        {
LABEL_12:

          (*(v54 + 8))(v8, v55);
          OCPointCloudRelease();
          return;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v188 = v62;
        *v61 = 136380675;
        *(v61 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v188);
        v63 = "ObjectCaptureSession.%{private}s: Failed to run voxel integration pipeline in scene mode!";
LABEL_11:
        _os_log_impl(&dword_245F8A000, v59, v60, v63, v61, 0xCu);
        sub_245F8E6F4(v62);
        MEMORY[0x24C1989D0](v62, -1, -1);
        MEMORY[0x24C1989D0](v61, -1, -1);
        goto LABEL_12;
      }

      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM))
  {
    v41 = sub_245FA3280();
    v43 = v181;
    v42 = v182;
    (*(v182 + 16))(v11, v41, v181);
    v44 = sub_2460918D4();
    v45 = sub_246091FC4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v191.n128_u64[0] = v47;
      *v46 = 136380675;
      *(v46 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v191);
      _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: Waiting for corrected pose from mobileSfM!", v46, 0xCu);
      sub_245F8E6F4(v47);
      MEMORY[0x24C1989D0](v47, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    (*(v42 + 8))(v11, v43);
    return;
  }

  v64 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions;
  v65 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions);
  if (v65 == 2)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v65 & 1) != 0 && *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) == 1)
  {
    v66 = sub_245FA3280();
    v68 = v181;
    v67 = v182;
    (*(v182 + 16))(v24, v66, v181);
    v69 = sub_2460918D4();
    v70 = sub_246091FC4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v191.n128_u64[0] = v72;
      *v71 = 136380675;
      *(v71 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v191);
      _os_log_impl(&dword_245F8A000, v69, v70, "ObjectCaptureSession.%{private}s: Waiting for a new plane to be found under the object!", v71, 0xCu);
      sub_245F8E6F4(v72);
      MEMORY[0x24C1989D0](v72, -1, -1);
      MEMORY[0x24C1989D0](v71, -1, -1);
    }

    (*(v67 + 8))(v24, v68);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64))
  {
    v73 = sub_245FA3280();
    v75 = v181;
    v74 = v182;
    (*(v182 + 16))(v14, v73, v181);
    v76 = sub_2460918D4();
    v77 = sub_246091FC4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v191.n128_u64[0] = v79;
      *v78 = 136380675;
      *(v78 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v191);
      _os_log_impl(&dword_245F8A000, v76, v77, "ObjectCaptureSession.%{private}s: Object transform is not available in area mode.", v78, 0xCu);
      sub_245F8E6F4(v79);
      MEMORY[0x24C1989D0](v79, -1, -1);
      MEMORY[0x24C1989D0](v78, -1, -1);
    }

    (*(v74 + 8))(v14, v75);
    return;
  }

  v80 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM);
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM + 64))
  {
    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_24602181C(&v191, v186, v183, v184, v185, *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 16), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 32), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 48), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32), *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48));
    v175 = v191;
    v174 = v192;
    v173 = v193;
    v172 = v194;
    v191.n128_u8[0] = 0;
  }

  else
  {
    v82 = v80[2];
    v81 = v80[3];
    v83 = *v80;
    v84 = v80[1];
    v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v80, v186.f32[0]), v84, *v186.f32, 1), v82, v186, 2), v81, v186, 3);
    v174 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v80, v183.f32[0]), v84, *v183.f32, 1), v82, v183, 2), v81, v183, 3);
    v175 = v85;
    v173 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v184.f32[0]), v84, *v184.f32, 1), v82, v184, 2), v81, v184, 3);
    v172 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v185.f32[0]), v84, *v185.f32, 1), v82, v185, 2), v81, v185, 3);
  }

  v86 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager);
  if (!v86)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v87 = *(*v86 + 176);
  v88 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager);

  LOBYTE(v87) = v87(v89, v175, v174, v173, v172, v25);

  if (v87)
  {
    v90 = sub_245FA3280();
    v92 = v181;
    v91 = v182;
    (*(v182 + 16))(v17, v90, v181);
    v93 = sub_2460918D4();
    v94 = sub_246091FC4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v191.n128_u64[0] = v96;
      *v95 = 136380675;
      *(v95 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v191);
      _os_log_impl(&dword_245F8A000, v93, v94, "ObjectCaptureSession.%{private}s: Camera motion too fast, dropping frame!", v95, 0xCu);
      sub_245F8E6F4(v96);
      MEMORY[0x24C1989D0](v96, -1, -1);
      MEMORY[0x24C1989D0](v95, -1, -1);
    }

    (*(v91 + 8))(v17, v92);
    return;
  }

  v97 = *(v2 + v64);
  if (v97 == 2)
  {
    goto LABEL_57;
  }

  v98 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth);
  v55 = v181;
  if ((v97 & 1) == 0)
  {
    v191.n128_f64[0] = v25;
    v191.n128_u64[1] = v26;
    v137 = *(a1 + 64);
    v194 = *(a1 + 48);
    v195 = v137;
    v138 = *(a1 + 96);
    v196 = *(a1 + 80);
    v197 = v138;
    v139 = *(a1 + 32);
    v192 = *(a1 + 16);
    v193 = v139;
    v198 = v178;
    v199 = v179;
    v200 = v180;
    v201 = v186;
    v202 = v183;
    v203 = v184;
    v216 = *(a1 + 400);
    v140 = *(a1 + 384);
    v214 = *(a1 + 368);
    v215 = v140;
    v141 = *(a1 + 352);
    v212 = *(a1 + 336);
    v213 = v141;
    v142 = *(a1 + 320);
    v210 = *(a1 + 304);
    v211 = v142;
    v143 = *(a1 + 288);
    v208 = *(a1 + 272);
    v209 = v143;
    v144 = *(a1 + 256);
    v145 = *(a1 + 224);
    v206 = *(a1 + 240);
    v207 = v144;
    v204 = v185;
    v205 = v145;
    v146 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
    v223 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
    v224 = v146;
    v225 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
    v147 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
    v219 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
    v220 = v147;
    v148 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
    v221 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
    v222 = v148;
    v149 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
    v217 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
    v218 = v149;
    if (sub_2460818C8(&v217) != 1)
    {
      v150 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
      v54 = v182;
      if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
      {
        v152 = *(v150 + 1);
        v151 = *(v150 + 2);
        v153 = *v150;
        v155 = *(v150 + 6);
        v154 = *(v150 + 7);
        v189 = 0;
        v226 = v186;
        v227 = v183;
        v228 = v184;
        v229 = v185;
        v230 = 0;
        v190 = 0;
        v231 = v153;
        v232 = v152;
        v233 = v151;
        *(&v234 + 1) = v154;
        *&v234 = v155;
        v235 = 0;
        LOBYTE(v188) = 1;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v239 = 0u;
        v238 = 0u;
        v237 = 0u;
        v236 = 0u;
        v187 = 1;
        v243 = 1;
        v136 = sub_24607AB30(&v191, v218, &v226, &v231, &v236, 0x100000000);
LABEL_42:
        if (!v136)
        {
          return;
        }

        v156 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
        swift_beginAccess();
        v157 = *(v2 + v156);
        if (OCProxySurfaceExecutePipeline())
        {
          v158 = sub_245FA3280();
          v8 = v177;
          (*(v54 + 16))(v177, v158, v55);
          v59 = sub_2460918D4();
          v60 = sub_246091FB4();
          if (!os_log_type_enabled(v59, v60))
          {
            goto LABEL_12;
          }

          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v217 = v62;
          *v61 = 136380675;
          *(v61 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v217);
          v63 = "ObjectCaptureSession.%{private}s: Failed to run voxel integration pipeline in scanning mode!";
          goto LABEL_11;
        }

LABEL_46:
        OCPointCloudRelease();
        if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime + 8) & 1) != 0 || v25 - *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime) > 1.0)
        {
          sub_24605F2B0();
        }

        return;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v99 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane;
  v100 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  if (v100)
  {
    v101 = v100;
    getRotatedPlaneTransform(_:)(v102, v101);
    v176 = v103;
    v170 = v105;
    v171 = v104;
    v169 = v106;
    v107 = *(v2 + v99);
    if (v107)
    {
      [v107 center];
      v168 = v108;
      v109 = [(ARPlaneAnchor *)v101 planeExtent];
      [(ARPlaneExtent *)v109 width];
      v167 = v110;

      v111 = [(ARPlaneAnchor *)v101 planeExtent];
      [(ARPlaneExtent *)v111 height];
      v166 = v112;

      v113 = *(a1 + 64);
      v194 = *(a1 + 48);
      v195 = v113;
      v114 = *(a1 + 96);
      v196 = *(a1 + 80);
      v197 = v114;
      v115 = *(a1 + 32);
      v192 = *(a1 + 16);
      v193 = v115;
      v116 = *(a1 + 352);
      v117 = *(a1 + 384);
      v214 = *(a1 + 368);
      v215 = v117;
      v118 = *(a1 + 288);
      v119 = *(a1 + 320);
      v120 = *(a1 + 336);
      v210 = *(a1 + 304);
      v211 = v119;
      v212 = v120;
      v213 = v116;
      v121 = *(a1 + 224);
      v122 = *(a1 + 240);
      v204 = v185;
      v205 = v121;
      v123 = *(a1 + 256);
      v124 = *(a1 + 272);
      v206 = v122;
      v207 = v123;
      v191.n128_f64[0] = v25;
      v191.n128_u64[1] = v26;
      v198 = v178;
      v199 = v179;
      v200 = v180;
      v201 = v186;
      v202 = v183;
      v203 = v184;
      v216 = *(a1 + 400);
      v208 = v124;
      v209 = v118;
      v125 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 112);
      v223 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 96);
      v224 = v125;
      v225 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 128);
      v126 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 48);
      v219 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 32);
      v220 = v126;
      v127 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 80);
      v221 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 64);
      v222 = v127;
      v128 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16);
      v217 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig);
      v218 = v128;
      if (sub_2460818C8(&v217) != 1)
      {
        v129 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
        v54 = v182;
        if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
        {
          *&v130 = v167;
          *(&v130 + 1) = v166;
          v132 = *(v129 + 1);
          v131 = *(v129 + 2);
          v133 = *v129;
          v135 = *(v129 + 6);
          v134 = *(v129 + 7);
          v189 = 0;
          v226 = v186;
          v227 = v183;
          v228 = v184;
          v229 = v185;
          v230 = 0;
          v190 = 0;
          v231 = v133;
          v232 = v132;
          v233 = v131;
          *(&v234 + 1) = v134;
          *&v234 = v135;
          v235 = 0;
          LOBYTE(v188) = 0;
          v236 = v176;
          v237 = v171;
          v238 = v170;
          v239 = v169;
          v240 = v168;
          v241 = v130;
          v242 = 0uLL;
          v243 = 0;
          v187 = 0;
          v136 = sub_24607AB30(&v191, v218, &v226, &v231, &v236, 1014350479);

          goto LABEL_42;
        }

LABEL_62:
        __break(1u);
        return;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v159 = sub_245FA3280();
  v160 = v182;
  v161 = v176;
  (*(v182 + 16))(v176, v159, v55);
  v162 = sub_2460918D4();
  v163 = sub_246091FB4();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v191.n128_u64[0] = v165;
    *v164 = 136380675;
    *(v164 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4390, &v191);
    _os_log_impl(&dword_245F8A000, v162, v163, "ObjectCaptureSession.%{private}s: Voxel integration is paused till a new plane under the object is available", v164, 0xCu);
    sub_245F8E6F4(v165);
    MEMORY[0x24C1989D0](v165, -1, -1);
    MEMORY[0x24C1989D0](v164, -1, -1);
  }

  (*(v160 + 8))(v161, v55);
}

void sub_24605E6CC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v108 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v105 - v8;
  v10 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
  swift_beginAccess();
  v11 = v10[1];
  v138 = *v10;
  v139 = v11;
  v12 = v10[3];
  v140 = v10[2];
  v141 = v12;
  v13 = v10[5];
  v142 = v10[4];
  v143 = v13;
  v14 = v138.n128_u64[0];
  if (v138.n128_u64[0])
  {
    *&v113 = v9;
    v15 = v4;
    v16 = v3;
    v17 = v138.n128_u64[1];
    v111 = v141;
    v112 = v140;
    v109 = v143;
    v110 = v142;
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x410);
    v106 = v139.n128_u64[0];

    v107 = v17;

    v18(v137, v19);
    if (v137[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager) && (sub_2460448B0() & 1) != 0 && (*sub_245F925DC() & 1) != 0)
      {
        sub_245F8E744(&v138, &qword_27EE3A978, &qword_246099C08);
        v3 = v16;
        v4 = v15;
        v9 = v113;
        goto LABEL_29;
      }
    }

    else
    {
      sub_246077B30(v137[0]);
      sub_246077B30(0xF);
    }

    (v18)(v129);
    if (v129[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v20 = v10[3];
      v132 = v10[2];
      v133 = v20;
      v21 = v10[5];
      v134 = v10[4];
      v135 = v21;
      v22 = v10[1];
      v130 = *v10;
      v23 = (v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
      v131 = v22;
      swift_beginAccess();
      memcpy(v137, v23, 0x4F0uLL);
      if (sub_246081984(v137) == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v24 = v23[33];
      v125 = v23[32];
      v126 = v24;
      v25 = v23[35];
      v127 = v23[34];
      v128 = v25;
      v26 = v23[31];
      v123 = v23[30];
      v124 = v26;
      v27 = v133;
      v23[32] = v132;
      v23[33] = v27;
      v28 = v135;
      v23[34] = v134;
      v23[35] = v28;
      v29 = v131;
      v23[30] = v130;
      v23[31] = v29;
      sub_245F8E7A4(&v130, v136, &qword_27EE3A978, &qword_246099C08);
      sub_245F8E744(&v123, &qword_27EE3A978, &qword_246099C08);
    }

    else
    {
      sub_246077B30(v129[0]);
      sub_246077B30(0xF);
    }

    v3 = v16;
    v4 = v15;
    v9 = v113;
    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData) == 1)
    {
      v30 = sub_2460443FC();
      v32 = v31;
      memmove(v137, v31, 0x4F0uLL);
      if (sub_246081984(v137) == 1)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      memmove(v136, &v32[36], 0x2B0uLL);
      if (sub_246081ACC(v136) != 1)
      {
        sub_246022048(v14, 0, &v123);
        v33 = v32[41];
        v131 = v32[42];
        v34 = v32[44];
        v132 = v32[43];
        v133 = v34;
        v134 = v32[45];
        v130 = v33;
        v35 = v126;
        v32[43] = v125;
        v32[44] = v35;
        v32[45] = v127;
        v36 = v124;
        v32[41] = v123;
        v32[42] = v36;
        sub_245F8E744(&v130, &qword_27EE3AB10, &qword_246096678);
      }

      (v30)(v129, 0);
      v37 = sub_2460443FC();
      v39 = v38;
      memmove(&v130, v38, 0x4F0uLL);
      if (sub_246081984(&v130) == 1)
      {
        goto LABEL_57;
      }

      memmove(v129, &v39[36], 0x2B0uLL);
      if (sub_246081ACC(v129) != 1)
      {
        sub_246022454(v14, 0, v121, v112, v111, v110, v109);
        v40 = v39[55];
        v125 = v39[54];
        v126 = v40;
        v127 = v39[56];
        v41 = v39[53];
        v123 = v39[52];
        v124 = v41;
        v42 = v121[3];
        v39[54] = v121[2];
        v39[55] = v42;
        v39[56] = v121[4];
        v43 = v121[1];
        v39[52] = v121[0];
        v39[53] = v43;
        sub_245F8E744(&v123, &qword_27EE3AB18, &qword_246099D70);
      }

      (v37)(&v114, 0);
      v44 = sub_2460443FC();
      v46 = v45;
      memmove(&v123, v45, 0x4F0uLL);
      if (sub_246081984(&v123) == 1)
      {
        goto LABEL_59;
      }

      memmove(v121, &v46[36], 0x2B0uLL);
      if (sub_246081ACC(v121) != 1)
      {
        v114.n128_u64[0] = v14;
        v114.n128_u64[1] = v107;
        v115.n128_u64[0] = v106;
        v116 = v112;
        v117 = v111;
        v118 = v110;
        v119 = v109;
        sub_246022788(&v114, v120);
        v47 = v46[60];
        v116 = v46[59];
        v117 = v47;
        v118 = v46[61];
        v48 = v46[58];
        v114 = v46[57];
        v115 = v48;
        v49 = v120[1];
        v50 = v120[3];
        v51 = v120[4];
        v46[59] = v120[2];
        v46[60] = v50;
        v46[61] = v51;
        v46[57] = v120[0];
        v46[58] = v49;
        sub_245F8E744(&v114, &unk_27EE3AB20, &qword_246099D78);
      }

      (v44)(&v122, 0);
    }

    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled) == 1)
    {
      v52 = sub_2460443FC();
      v54 = v53;
      memmove(v137, v53, 0x4F0uLL);
      if (sub_246081984(v137) == 1)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      memmove(&v130, &v54[36], 0x2B0uLL);
      if (sub_246081ACC(&v130) != 1)
      {
        sub_246022048(v14, 1, v136);
        v55 = v54[66];
        v125 = v54[65];
        v126 = v55;
        v127 = v54[67];
        v56 = v54[64];
        v123 = v54[63];
        v124 = v56;
        v57 = v136[0].transform.columns[0];
        v54[65] = v136[0].transform.columns[1];
        v54[66] = v136[0].transform.columns[2];
        v54[67] = v136[0].transform.columns[3];
        v54[63] = *&v136[0].voxels._rawValue;
        v54[64] = v57;
        sub_245F8E744(&v123, &qword_27EE3AB10, &qword_246096678);
      }

      (v52)(v129, 0);
    }

    sub_245F8E744(&v138, &qword_27EE3A978, &qword_246099C08);
  }

LABEL_29:
  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels) == 1)
  {
    v58 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
    swift_beginAccess();
    v59 = *(v2 + v58);
    DebugVoxelCloud = OCProxySurfaceGetDebugVoxelCloud();
    v61 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud;
    *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud) = DebugVoxelCloud;
    if (DebugVoxelCloud)
    {
      v62 = OCVoxelCloudSize();
      v63 = *(v2 + v61);
      v64 = OCVoxelCloudVoxels();
      if (v62)
      {
        v65 = v64;
        v66 = sub_246072594(v62, 0);
        memcpy(v66 + 4, v65, 48 * v62);
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
      }

      v75 = *(v2 + v61);
      OCVoxelCloudTransformMatrix();
      v112 = v77;
      v113 = v76;
      v110 = v79;
      v111 = v78;
      v80 = sub_2460443FC();
      v82 = v81;
      memmove(v137, v81, 0x4F0uLL);
      if (sub_246081984(v137) == 1)
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      memmove(&v130, &v82[36], 0x2B0uLL);
      if (sub_246081ACC(&v130) == 1)
      {
      }

      else
      {
        OCVoxelCloud.init(voxels:transform:)(v136, v66, v83);
        v84 = v136[0].transform.columns[0];
        v85 = v136[0].transform.columns[1];
        v86 = v136[0].transform.columns[2];
        v87 = v136[0].transform.columns[3];
        v88 = v82[49];
        v125 = v82[48];
        v126 = v88;
        v127 = v82[50];
        v89 = v82[47];
        v123 = v82[46];
        v124 = v89;
        v82[46].n128_u64[0] = v136[0].voxels._rawValue;
        v82[47] = v84;
        v82[48] = v85;
        v82[49] = v86;
        v82[50] = v87;
        sub_245F8E744(&v123, &qword_27EE3AB10, &qword_246096678);
      }

      (v80)(v129, 0);
    }

    else
    {
      v67 = sub_245FA3280();
      (*(v4 + 16))(v9, v67, v3);
      v68 = sub_2460918D4();
      v69 = sub_246091FB4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = v4;
        v72 = swift_slowAlloc();
        v137[0] = v72;
        *v70 = 136380675;
        *(v70 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A4370, v137);
        _os_log_impl(&dword_245F8A000, v68, v69, "ObjectCaptureSession.%{private}s: Failed to get debug voxelcloud from voxel integration pipeline!", v70, 0xCu);
        sub_245F8E6F4(v72);
        v73 = v72;
        v4 = v71;
        MEMORY[0x24C1989D0](v73, -1, -1);
        MEMORY[0x24C1989D0](v70, -1, -1);

        v74 = v71;
      }

      else
      {

        v74 = v4;
      }

      (*(v74 + 8))(v9, v3);
      *(v2 + v61) = 0;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth) != 1)
  {
    return;
  }

  v90 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
  swift_beginAccess();
  v91 = *(v2 + v90);
  DepthImage = OCProxySurfaceCreateDepthImage();
  if (DepthImage)
  {
    v93 = DepthImage;
    v94 = sub_2460443FC();
    v96 = v95;
    memmove(v137, v95, 0x4F0uLL);
    if (sub_246081984(v137) != 1)
    {
      memmove(&v130, v96 + 72, 0x2B0uLL);
      if (sub_246081ACC(&v130) == 1)
      {
        (v94)(&v123, 0);
      }

      else
      {
        v103 = v96[102];
        v96[102] = v93;
        v104 = v93;

        (v94)(&v123, 0);
      }

      return;
    }

    goto LABEL_54;
  }

  v97 = sub_245FA3280();
  v98 = v108;
  (*(v4 + 16))(v108, v97, v3);
  v99 = sub_2460918D4();
  v100 = sub_246091FB4();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v137[0] = v102;
    *v101 = 136380675;
    *(v101 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A4370, v137);
    _os_log_impl(&dword_245F8A000, v99, v100, "ObjectCaptureSession.%{private}s: Failed to get TSDF depth image from voxel integration pipeline!", v101, 0xCu);
    sub_245F8E6F4(v102);
    MEMORY[0x24C1989D0](v102, -1, -1);
    MEMORY[0x24C1989D0](v101, -1, -1);
  }

  (*(v4 + 8))(v98, v3);
}

void sub_24605F2B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
  swift_beginAccess();
  v3 = *(v1 + v2);
  OCProxySurfaceCreateResults();
  v4 = *(&v27 + 1);
  v5 = v28;
  if (v27)
  {
    v6 = DWORD2(v28);
    v24 = v30;
    v25 = v29;
    v22 = v32;
    v23 = v31;
    type metadata accessor for OCDataBuffer();
    v7 = v27;
    v8 = sub_246091194(v7);
    v9 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
    swift_beginAccess();
    v10 = v9[3];
    v29 = v9[2];
    v30 = v10;
    v11 = v9[5];
    v31 = v9[4];
    v32 = v11;
    v12 = v9[1];
    v27 = *v9;
    v28 = v12;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *v9 = v8;
    v9[2] = v25;
    v9[3] = v24;
    v9[4] = v23;
    v9[5] = v22;

    sub_245F8E744(&v27, &qword_27EE3A978, &qword_246099C08);
    if (v4)
    {
      v13 = sub_246091194(v4);
      v15 = sub_246044EC0();
      if (*v14)
      {
        v16 = v14[1];
        v14[1] = v13;
      }

      (v15)(v26, 0);
    }

    if (v5)
    {
      v17 = v5;
      v18 = sub_246091194(v17);
      v20 = sub_246044EC0();
      if (*v19)
      {
        v21 = v19[2];
        v19[2] = v18;
      }

      (v20)(v26, 0);
    }

    else
    {
    }

    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled) == 1)
    {
      *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage) = v6;
    }
  }

  else
  {
  }
}

uint64_t sub_24605F500(void *a1, float64x2_t *a2, uint64_t a3, _OWORD *a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v36 - v15;
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(v36, v14);
  if (v36[0] == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    if ((*(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33) & 1) == 0)
    {
      v17 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EE4F8B588E368F1uLL), vabdq_f64(*(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition), *a2)));
      if (v17.i32[0] & v17.i32[1])
      {
        if (*(a3 + 64))
        {
          v18 = sub_245FA3174();
          (*(v9 + 16))(v16, v18, v8);
          v19 = sub_2460918D4();
          v20 = sub_246091FB4();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v36[0] = v22;
            *v21 = 136380675;
            *(v21 + 4) = sub_245F8D3C0(0xD000000000000059, 0x80000002460A4750, v36);
            _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Failed to set bounding box!", v21, 0xCu);
            sub_245F8E6F4(v22);
            MEMORY[0x24C1989D0](v22, -1, -1);
            MEMORY[0x24C1989D0](v21, -1, -1);
          }

          result = (*(v9 + 8))(v16, v8);
        }

        else
        {
          sub_246044B58(a3);
          v32 = (a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
          v33 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
          v34 = a4[3];
          v32[2] = a4[2];
          v32[3] = v34;
          v32[4] = a4[4];
          v35 = a4[1];
          *v32 = *a4;
          v32[1] = v35;
          sub_245F8E7A4(a4, v36, &qword_27EE3AB10, &qword_246096678);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_246077B30(v36[0]);
    sub_246077B30(0xE);
  }

  v24 = sub_245FA3174();
  (*(v9 + 16))(v12, v24, v8);
  v25 = sub_2460918D4();
  v26 = sub_246091FB4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36[0] = v28;
    *v27 = 136380675;
    *(v27 + 4) = sub_245F8D3C0(0xD000000000000059, 0x80000002460A4750, v36);
    _os_log_impl(&dword_245F8A000, v25, v26, "ObjectCaptureSession.%{private}s: Not running bounding box detection because ObjectCaptureSession is not in detecting state or the tap position has changed!", v27, 0xCu);
    sub_245F8E6F4(v28);
    MEMORY[0x24C1989D0](v28, -1, -1);
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  result = (*(v9 + 8))(v12, v8);
LABEL_12:
  v29 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
  if (v29)
  {
    v30 = *(*v29 + 296);

    v30(v31);
  }

  return result;
}

uint64_t sub_24605F95C()
{
  v51 = sub_246091834();
  v1 = *(v51 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v51);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245F8E624(&qword_27EE3AE88, &qword_24609AE20);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  swift_beginAccess();
  v38 = v11;
  v12 = *(v0 + v11);
  v13 = *(v12 + 64);
  v40 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v49 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession;
  v50 = v0;
  v39 = (v14 + 63) >> 6;
  v41 = v1 + 32;
  v42 = v1 + 16;
  v46 = v1;
  v47 = v12;
  v48 = (v1 + 8);

  v18 = 0;
  v43 = v10;
  v44 = v8;
  v19 = v45;
  if (v16)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v46;
      v25 = v47;
      v27 = v51;
      (*(v46 + 16))(v19, *(v47 + 48) + *(v46 + 72) * v24, v51);
      v28 = *(*(v25 + 56) + 8 * v24);
      v29 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
      v30 = *(v29 + 48);
      v31 = *(v26 + 32);
      v8 = v44;
      v31(v44, v19, v27);
      *&v8[v30] = v28;
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
      v32 = v28;
      v22 = v20;
      v10 = v43;
LABEL_13:
      sub_245FC5914(v8, v10, &qword_27EE3AE88, &qword_24609AE20);
      v33 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        break;
      }

      v34 = *&v10[*(v33 + 48)];
      [*(v50 + v49) removeAnchor_];

      result = (*v48)(v10, v51);
      v18 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v36 = *(v50 + v38);
    *(v50 + v38) = MEMORY[0x277D84F98];
  }

  else
  {
LABEL_5:
    if (v39 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v39;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v39)
      {
        v35 = sub_245F8E624(&unk_27EE3AE90, &unk_24609AE28);
        (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v40 + 8 * v20);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24605FD70(uint64_t a1, char a2)
{
  v3 = v2;
  v40 = a1;
  v5 = sub_2460919F4();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245FA3174();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v5;
    v22 = a2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v36 = v3;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136381187;
    *(v23 + 4) = sub_245F8D3C0(0xD000000000000037, 0x80000002460A2760, aBlock);
    *(v23 + 12) = 1026;
    *(v23 + 14) = v22 & 1;
    *(v23 + 18) = 2050;
    *(v23 + 20) = v40;
    _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Received flippable signal %{BOOL,public}d for sample id %{public}llu", v23, 0x1Cu);
    sub_245F8E6F4(v25);
    v26 = v25;
    v3 = v36;
    MEMORY[0x24C1989D0](v26, -1, -1);
    v27 = v23;
    a2 = v22;
    v5 = v35;
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v28 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 16) = v3;
  *(v29 + 24) = v30;
  *(v29 + 32) = a2 & 1;
  aBlock[4] = sub_24607BE5C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0F90;
  v31 = _Block_copy(aBlock);
  v32 = v3;
  sub_246091A14();
  v41 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v12, v8, v31);
  _Block_release(v31);
  (*(v39 + 8))(v8, v5);
  (*(v37 + 8))(v12, v38);
}

void sub_246060208()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_245FA3174();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136380675;
      *(v10 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A45D0, &v12);
      _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Pose correction timer has expired, using the last consistent pose before pause.", v10, 0xCu);
      sub_245F8E6F4(v11);
      MEMORY[0x24C1989D0](v11, -1, -1);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v6[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  }
}

uint64_t sub_2460603F4@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  v3 = v2;
  v229 = a2;
  v220 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v235 = *(v220 - 8);
  v5 = v235[8];
  MEMORY[0x28223BE20](v220);
  v206 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v203 = &v191 - v8;
  MEMORY[0x28223BE20](v9);
  v202 = &v191 - v10;
  MEMORY[0x28223BE20](v11);
  v213 = &v191 - v12;
  v13 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v211 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v214 = &v191 - v17;
  MEMORY[0x28223BE20](v18);
  v205 = &v191 - v19;
  MEMORY[0x28223BE20](v20);
  v207 = &v191 - v21;
  MEMORY[0x28223BE20](v22);
  v204 = &v191 - v23;
  MEMORY[0x28223BE20](v24);
  v208 = &v191 - v25;
  MEMORY[0x28223BE20](v26);
  v216 = &v191 - v27;
  v223 = sub_246091834();
  v236 = *(v223 - 8);
  v28 = v236[8];
  MEMORY[0x28223BE20](v223);
  v215 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v209 = &v191 - v31;
  MEMORY[0x28223BE20](v32);
  v210 = &v191 - v33;
  MEMORY[0x28223BE20](v34);
  v222 = &v191 - v35;
  v36 = sub_2460918F4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v225 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v191 - v41;
  v43 = MEMORY[0x277D860B8];
  v44 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM;
  v45 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM);
  v228 = v37;
  if (v45 == 1)
  {
    v241 = v3;
    v46 = a1;
    v47 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM;
    v48 = sub_245FA3174();
    (*(v37 + 16))(v42, v48, v36);
    v49 = sub_2460918D4();
    v50 = sub_246091FC4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v246[0] = v52;
      *v51 = 136380675;
      *(v51 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4720, v246);
      _os_log_impl(&dword_245F8A000, v49, v50, "ObjectCaptureSession.%{private}s: Skipping shots before pause.", v51, 0xCu);
      sub_245F8E6F4(v52);
      MEMORY[0x24C1989D0](v52, -1, -1);
      MEMORY[0x24C1989D0](v51, -1, -1);

      v53 = v228;
    }

    else
    {

      v53 = v37;
    }

    (*(v53 + 8))(v42, v36);
    v44 = v47;
    a1 = v46;
    v3 = v241;
  }

  v226 = v36;
  v54 = *v43;
  v232 = v43[1];
  v233 = v54;
  v55 = v43[2];
  v230 = v43[3];
  v231 = v55;
  v56 = a1 + 64;
  v57 = 1 << *(a1 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(a1 + 64);
  v60 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  v224 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
  v61 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  v62 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;

  v241 = v60;
  swift_beginAccess();
  v227 = v61;
  swift_beginAccess();
  v221 = v62;
  swift_beginAccess();
  v234 = 0;
  v63 = 0;
  v64 = (v57 + 63) >> 6;
  v218 = v236 + 2;
  v219 = (v236 + 1);
  v217 = (v235 + 7);
  v212 = (v235 + 6);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v59)
        {
          while (1)
          {
            v66 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            if (v66 >= v64)
            {
              goto LABEL_91;
            }

            v65 = *(v56 + 8 * v66);
            ++v63;
            if (v65)
            {
              v63 = v66;
              goto LABEL_15;
            }
          }

          __break(1u);
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
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v197(v214, 1, 1, v220);
          __break(1u);
LABEL_106:
          v197(v208, 1, 1, v220);
          __break(1u);
LABEL_107:
          result = sub_246092424();
          __break(1u);
          return result;
        }

        v65 = v59;
LABEL_15:
        v59 = (v65 - 1) & v65;
        v67 = *(v3 + v241);
        if (*(v67 + 16))
        {
          v68 = __clz(__rbit64(v65)) | (v63 << 6);
          v69 = *(*(a1 + 48) + 8 * v68);
          v70 = (*(a1 + 56) + (v68 << 6));
          v71 = *v70;
          v239 = v70[1];
          v240 = v71;
          v72 = v70[2];
          v237 = v70[3];
          v238 = v72;
          v73 = sub_245FFF3EC(v69);
          if ((v74 & 1) != 0 && *(*(v67 + 56) + v73) == 1 && (*(v3 + v44) != 1 || v69 >= *(v3 + v224)))
          {
            v75 = *(v3 + v227);
            if (*(v75 + 16))
            {
              v76 = sub_245FFF3EC(v69);
              if (v77)
              {
                break;
              }
            }
          }
        }
      }

      v201 = a1;
      v78 = v44;
      v79 = *(v75 + 56) + v236[9] * v76;
      v80 = v236[2];
      v81 = v222;
      v199 = v236[9];
      v200.i64[0] = v80;
      v80(v222, v79, v223);
      v82 = *(v3 + v221);
      if (*(v82 + 16))
      {
        break;
      }

LABEL_25:
      (*v219)(v81, v223);
      v86 = v216;
      (*v217)(v216, 1, 1, v220);
      sub_245F8E744(v86, &qword_27EE3ACE0, &unk_246098880);
      v44 = v78;
      a1 = v201;
    }

    v83 = *(v3 + v221);

    v84 = sub_245FC1BDC(v81);
    if ((v85 & 1) == 0)
    {

      v81 = v222;
      goto LABEL_25;
    }

    v87 = *(v82 + 56);
    v198.i64[0] = v235[9];
    v88 = v216;
    sub_246081A04(v87 + v198.i64[0] * v84, v216, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    v197 = v235[7];
    v197(v88, 0, 1, v220);
    sub_245F8E744(v88, &qword_27EE3ACE0, &unk_246098880);
    v89 = *(v3 + v221);
    if (!*(v89 + 16))
    {
      goto LABEL_98;
    }

    v90 = *(v3 + v221);

    v91 = sub_245FC1BDC(v222);
    if ((v92 & 1) == 0)
    {
      goto LABEL_99;
    }

    v44 = v78;
    v93 = *(v89 + 56) + v91 * v198.i64[0];
    v196.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v94 = v213;
    sub_246081A04(v93, v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    memcpy(v246, (v94 + 16), 0x188uLL);
    sub_24601E2C0(v246, v245);
    sub_246081A6C(v94, v196.i64[0]);
    a1 = v201;
    if (*(*(&v246[23] + 1) + 16) <= 1uLL && (v246[23] & 1) == 0)
    {
      break;
    }

LABEL_59:
    v142 = v221;
    swift_beginAccess();
    v143 = *(v3 + v142);
    v196.i32[0] = swift_isUniquelyReferenced_nonNull_native();
    (v200.i64[0])(v215, v222, v223);
    v144 = v142;
    v145 = *(v3 + v142);
    v244 = v145;
    *(v3 + v144) = 0x8000000000000000;
    v147 = sub_245FC1BDC(v215);
    v148 = *(v145 + 16);
    v149 = (v146 & 1) == 0;
    v150 = v148 + v149;
    if (__OFADD__(v148, v149))
    {
      goto LABEL_100;
    }

    if (*(v145 + 24) >= v150)
    {
      if (v196.i8[0])
      {
        if ((v146 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v196.i64[0] = v147;
        v200.i32[0] = v146;
        sub_246074CB4();
        v147 = v196.i64[0];
        if ((v200.i8[0] & 1) == 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      v200.i32[0] = v146;
      sub_2460727D4(v150, v196.i32[0]);
      v151 = sub_245FC1BDC(v215);
      if ((v200.i8[0] & 1) != (v152 & 1))
      {
        goto LABEL_107;
      }

      v147 = v151;
      if ((v200.i8[0] & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    v243 = 0;
    v200.i64[0] = v244;
    v153 = *(v244 + 56);
    v195.n128_u64[0] = v147 * v198.i64[0];
    v154 = v214;
    v196.i64[0] = v147;
    sub_24608199C(v153 + v147 * v198.i64[0], v214, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v197(v154, 0, 1, v220);
    v155 = v239;
    *(v154 + 320) = v240;
    *(v154 + 336) = v155;
    v156 = v237;
    *(v154 + 352) = v238;
    *(v154 + 368) = v156;
    *(v154 + 384) = v243;
    v157 = v154;
    v158 = v211;
    sub_245F8E7A4(v157, v211, &qword_27EE3ACE0, &unk_246098880);
    if ((*v212)(v158, 1, v220) == 1)
    {
      sub_245F8E744(v158, &qword_27EE3ACE0, &unk_246098880);
      v159 = *(v200.i64[0] + 48) + v196.i64[0] * v199;
      v199 = *v219;
      (v199)(v159, v223);
      sub_2460739C0(v196.i64[0], v200.i64[0]);
    }

    else
    {
      v199 = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
      v160 = v158;
      v161 = v206;
      sub_24608199C(v160, v206, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      sub_24608199C(v161, *(v200.i64[0] + 56) + v195.n128_u64[0], v199);
      v199 = *v219;
    }

    (v199)(v215, v223);
    sub_245F8E744(v214, &qword_27EE3ACE0, &unk_246098880);
    v162 = v200.i64[0];
    *(v3 + v221) = v200.i64[0];
    swift_endAccess();
    if (!*(v162 + 16))
    {
      goto LABEL_101;
    }

    v163 = sub_245FC1BDC(v222);
    if ((v164 & 1) == 0)
    {
      goto LABEL_102;
    }

    v165 = *(v200.i64[0] + 56) + v163 * v198.i64[0];
    v198.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v166 = v213;
    sub_246081A04(v165, v213, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

    memcpy(v245, (v166 + 16), 0x188uLL);
    sub_24601E2C0(v245, v242);
    sub_246081A6C(v166, v198.i64[0]);
    sub_24601E31C(v246);
    if (v234 >= v69 || *(v245[47] + 16) != 2)
    {
      goto LABEL_81;
    }

    v169 = *(v245[48] + 16);
    if (!v169)
    {
      goto LABEL_97;
    }

    if (*(v245[47] + 32) > 1.0)
    {
      if (v169 == 1)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }

    if (v169 == 1)
    {
      goto LABEL_97;
    }

    if (*(v245[48] + 32) <= 0.005 && *(v245[47] + 36) <= 1.0)
    {
      v168.i32[0] = *(v245[48] + 36);
      v198 = v168;
      v167.i32[0] = 1000593162;
      v200 = v167;
      v170 = vdupq_lane_s32(*&vcgeq_f32(v167, v168), 0);
      v233 = vbslq_s8(v170, v240, v233);
      v232 = vbslq_s8(v170, v239, v232);
      v231 = vbslq_s8(v170, v238, v231);
      v230 = vbslq_s8(v170, v237, v230);
      (v199)(v222, v223);
      sub_24601E31C(v245);
      v171 = v234;
      if (v198.f32[0] <= v200.f32[0])
      {
        v171 = v69;
      }

      v234 = v171;
    }

    else
    {
LABEL_81:
      (v199)(v222, v223);
      sub_24601E31C(v245);
    }
  }

  v195 = v246[21];
  v196 = v246[22];
  v193 = v246[19];
  v194 = v246[20];
  v247.columns[1] = v239;
  v247.columns[0] = v240;
  v247.columns[3] = v237;
  v247.columns[2] = v238;
  v248 = __invert_f4(v247);
  v193 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v248.columns[0], v193.f32[0]), v248.columns[1], *v193.f32, 1), v248.columns[2], v193, 2), v248.columns[3], v193, 3);
  v194 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v248.columns[0], v194.f32[0]), v248.columns[1], *v194.f32, 1), v248.columns[2], v194, 2), v248.columns[3], v194, 3);
  v195 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v248.columns[0], v195.n128_f32[0]), v248.columns[1], v195.n128_u64[0], 1), v248.columns[2], v195, 2), v248.columns[3], v195, 3);
  v196 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v248.columns[0], v196.f32[0]), v248.columns[1], *v196.f32, 1), v248.columns[2], v196, 2), v248.columns[3], v196, 3);
  v95 = sub_246023584(v193.f32[0], *v194.i64, v195);
  v96 = sub_2460235EC(*v193.i64, *v194.i64, v195.n128_f64[0], v196);
  v97 = v221;
  swift_beginAccess();
  v98 = *(v3 + v97);
  v196.i32[0] = swift_isUniquelyReferenced_nonNull_native();
  (v200.i64[0])(v210, v222, v223);
  v99 = v97;
  v100 = *(v3 + v97);
  v242[0] = v100;
  *(v3 + v99) = 0x8000000000000000;
  v102 = sub_245FC1BDC(v210);
  v103 = *(v100 + 16);
  v104 = (v101 & 1) == 0;
  v105 = v103 + v104;
  if (__OFADD__(v103, v104))
  {
    goto LABEL_103;
  }

  if (*(v100 + 24) >= v105)
  {
    if (v196.i8[0])
    {
      if ((v101 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v194.i64[0] = v102;
      v195.n128_u32[0] = v101;
      sub_246074CB4();
      v102 = v194.i64[0];
      if ((v195.n128_u8[0] & 1) == 0)
      {
        goto LABEL_106;
      }
    }
  }

  else
  {
    v195.n128_u32[0] = v101;
    sub_2460727D4(v105, v196.i32[0]);
    v106 = sub_245FC1BDC(v210);
    if ((v195.n128_u8[0] & 1) != (v107 & 1))
    {
      goto LABEL_107;
    }

    v102 = v106;
    if ((v195.n128_u8[0] & 1) == 0)
    {
      goto LABEL_106;
    }
  }

  v196.i64[0] = v242[0];
  v108 = *(v242[0] + 56);
  v194.i64[0] = v102;
  v195.n128_u64[0] = v102 * v198.i64[0];
  v109 = v208;
  sub_24608199C(v108 + v102 * v198.i64[0], v208, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v197(v109, 0, 1, v220);
  v110 = *(v109 + 392);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v110 = sub_245FB1254(0, *(v110 + 2) + 1, 1, v110);
  }

  v112 = *(v110 + 2);
  v111 = *(v110 + 3);
  v113 = v112 + 1;
  if (v112 >= v111 >> 1)
  {
    v193.i64[0] = v112 + 1;
    v172 = v110;
    v173 = v112;
    v174 = sub_245FB1254((v111 > 1), v112 + 1, 1, v172);
    v113 = v193.i64[0];
    v112 = v173;
    v110 = v174;
  }

  *(v110 + 2) = v113;
  *&v110[4 * v112 + 32] = v95;
  v114 = v208;
  *(v208 + 392) = v110;
  v115 = v204;
  sub_245F8E7A4(v114, v204, &qword_27EE3ACE0, &unk_246098880);
  v193.i64[0] = *v212;
  if ((v193.i64[0])(v115, 1, v220) == 1)
  {
    sub_245F8E744(v115, &qword_27EE3ACE0, &unk_246098880);
    v116 = v196.i64[0];
    v117 = *(v196.i64[0] + 48) + v194.i64[0] * v199;
    v195.n128_u64[0] = *v219;
    (v195.n128_u64[0])(v117, v223);
    sub_2460739C0(v194.i64[0], v116);
  }

  else
  {
    v194.i64[0] = type metadata accessor for ObjectCaptureSession.Metadata.Shot;
    v118 = v115;
    v119 = v202;
    sub_24608199C(v118, v202, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    sub_24608199C(v119, *(v196.i64[0] + 56) + v195.n128_u64[0], v194.i64[0]);
    v195.n128_u64[0] = *v219;
  }

  (v195.n128_u64[0])(v210, v223);
  sub_245F8E744(v208, &qword_27EE3ACE0, &unk_246098880);
  v120 = v221;
  *(v3 + v221) = v196.i64[0];
  swift_endAccess();
  swift_beginAccess();
  v121 = *(v3 + v120);
  v196.i32[0] = swift_isUniquelyReferenced_nonNull_native();
  (v200.i64[0])(v209, v222, v223);
  v122 = v120;
  v123 = *(v3 + v120);
  v242[0] = v123;
  *(v3 + v122) = 0x8000000000000000;
  v125 = sub_245FC1BDC(v209);
  v126 = *(v123 + 16);
  v127 = (v124 & 1) == 0;
  v128 = v126 + v127;
  if (__OFADD__(v126, v127))
  {
    goto LABEL_104;
  }

  if (*(v123 + 24) >= v128)
  {
    if (v196.i8[0])
    {
      if ((v124 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v194.i64[0] = v125;
      LODWORD(v192) = v124;
      sub_246074CB4();
      v125 = v194.i64[0];
      if ((v192 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_51;
  }

  LODWORD(v192) = v124;
  sub_2460727D4(v128, v196.i32[0]);
  v129 = sub_245FC1BDC(v209);
  if ((v192 & 1) != (v130 & 1))
  {
    goto LABEL_107;
  }

  v125 = v129;
  if (v192)
  {
LABEL_51:
    v196.i64[0] = v242[0];
    v131 = *(v242[0] + 56);
    v194.i64[0] = v125;
    v192 = v125 * v198.i64[0];
    v132 = v207;
    sub_24608199C(v131 + v125 * v198.i64[0], v207, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v197(v132, 0, 1, v220);
    v133 = *(v132 + 400);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_245FB1254(0, *(v133 + 2) + 1, 1, v133);
    }

    v134 = v205;
    v136 = *(v133 + 2);
    v135 = *(v133 + 3);
    v137 = v136 + 1;
    if (v136 >= v135 >> 1)
    {
      v191 = v136 + 1;
      v175 = v133;
      v176 = v136;
      v177 = sub_245FB1254((v135 > 1), v136 + 1, 1, v175);
      v137 = v191;
      v136 = v176;
      v134 = v205;
      v133 = v177;
    }

    *(v133 + 2) = v137;
    *&v133[4 * v136 + 32] = v96;
    v138 = v207;
    *(v207 + 400) = v133;
    v139 = v134;
    sub_245F8E7A4(v138, v134, &qword_27EE3ACE0, &unk_246098880);
    v140 = (v193.i64[0])(v139, 1, v220);
    v193.i64[0] = v219 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v140 == 1)
    {
      sub_245F8E744(v139, &qword_27EE3ACE0, &unk_246098880);
      v141 = v195.n128_u64[0];
      (v195.n128_u64[0])(*(v196.i64[0] + 48) + v194.i64[0] * v199, v223);
      sub_2460739C0(v194.i64[0], v196.i64[0]);
    }

    else
    {
      sub_24608199C(v139, v203, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      sub_24608199C(v203, *(v196.i64[0] + 56) + v192, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v141 = v195.n128_u64[0];
    }

    v141(v209, v223);
    sub_245F8E744(v207, &qword_27EE3ACE0, &unk_246098880);
    *(v3 + v221) = v196.i64[0];
    swift_endAccess();
    goto LABEL_59;
  }

LABEL_90:
  v197(v207, 1, 1, v220);
  __break(1u);
LABEL_91:

  v179 = v234;
  if (!v234)
  {
    v180 = sub_245FA3174();
    v181 = v228;
    v183 = v225;
    v182 = v226;
    (*(v228 + 16))(v225, v180, v226);
    v184 = sub_2460918D4();
    v185 = sub_246091FB4();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v246[0] = v187;
      *v186 = 136380675;
      *(v186 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4720, v246);
      _os_log_impl(&dword_245F8A000, v184, v185, "ObjectCaptureSession.%{private}s: mobileSfM pose for the new camera shot is not consistent.", v186, 0xCu);
      sub_245F8E6F4(v187);
      MEMORY[0x24C1989D0](v187, -1, -1);
      MEMORY[0x24C1989D0](v186, -1, -1);
    }

    result = (*(v181 + 8))(v183, v182);
  }

  v188 = v229;
  v229->i64[0] = v179;
  v189 = v232;
  v188[1] = v233;
  v188[2] = v189;
  v190 = v230;
  v188[3] = v231;
  v188[4] = v190;
  return result;
}

uint64_t sub_2460619E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_246091A64();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_245FA3174();
  v43 = v10[2];
  v44 = v17;
  v43(v16);
  v18 = sub_2460918D4();
  v19 = sub_246091FC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v13;
    v22 = v10;
    v23 = v2;
    v24 = a1;
    v25 = v21;
    aBlock[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, aBlock);
    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Received mobileSfM pose updates for the camera shots.", v20, 0xCu);
    sub_245F8E6F4(v25);
    v26 = v25;
    a1 = v24;
    v2 = v23;
    v10 = v22;
    v13 = v42;
    MEMORY[0x24C1989D0](v26, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v27 = v10[1];
  v27(v16, v9);
  if (*(a1 + 16))
  {
    v28 = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v29 = swift_allocObject();
    *(v29 + 16) = v2;
    *(v29 + 24) = a1;
    aBlock[4] = sub_24607BFB0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E0FE0;
    v30 = _Block_copy(aBlock);
    v31 = v2;

    v32 = v45;
    sub_246091A14();
    v51 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    v33 = v47;
    v34 = v50;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v32, v33, v30);
    _Block_release(v30);
    (*(v49 + 8))(v33, v34);
    (*(v46 + 8))(v32, v48);
  }

  else
  {
    (v43)(v13, v44, v9);
    v36 = sub_2460918D4();
    v37 = sub_246091FB4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v13;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136380675;
      *(v39 + 4) = sub_245F8D3C0(0xD000000000000032, 0x80000002460A27A0, aBlock);
      _os_log_impl(&dword_245F8A000, v36, v37, "ObjectCaptureSession.%{private}s: Received empty list of mobileSfM pose updates for camera shots!", v39, 0xCu);
      sub_245F8E6F4(v40);
      MEMORY[0x24C1989D0](v40, -1, -1);
      MEMORY[0x24C1989D0](v39, -1, -1);

      v41 = v38;
    }

    else
    {

      v41 = v13;
    }

    return (v27)(v41, v9);
  }
}

uint64_t sub_2460635EC(unint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v88 = *(v91 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v91);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v73 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v73 - v12;
  v13 = sub_246091834();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v85 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  v25 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;

  v98 = v24;
  swift_beginAccess();
  v97 = v25;
  swift_beginAccess();
  v26 = 0;
  v27 = (v21 + 63) >> 6;
  v92 = v14 + 2;
  v90 = (v88 + 56);
  v81 = (v88 + 48);
  v86 = (v14 + 1);
  v89 = a2;
  while (v23)
  {
    v28 = v23;
LABEL_10:
    v23 = (v28 - 1) & v28;
    v30 = *(a2 + v98);
    if (*(v30 + 16))
    {
      v31 = __clz(__rbit64(v28)) | (v26 << 6);
      v32 = *(a1 + 48);
      v33 = (*(a1 + 56) + (v31 << 6));
      v34 = *v33;
      v95 = v33[1];
      v96 = v34;
      v35 = v33[2];
      v93 = v33[3];
      v94 = v35;
      v36 = sub_245FFF3EC(*(v32 + 8 * v31));
      if (v37)
      {
        v38 = *(v30 + 56);
        v83 = v14[9];
        v39 = a2;
        v40 = v14[2];
        v40(v19, v38 + v83 * v36, v13);
        v41 = *(v39 + v97);
        if (!*(v41 + 16))
        {
          goto LABEL_20;
        }

        v42 = sub_245FC1BDC(v19);
        if (v43)
        {
          v77 = a1;
          v75 = v14;
          v44 = *(v41 + 56);
          v45 = v88;
          v73 = *(v88 + 72);
          v80 = v13;
          v46 = v87;
          sub_246081A04(v44 + v73 * v42, v87, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

          v78 = *(v45 + 56);
          v78(v46, 0, 1, v91);
          sub_245F8E744(v46, &qword_27EE3ACE0, &unk_246098880);
          v47 = v89;
          v48 = v97;
          swift_beginAccess();
          v49 = *(v47 + v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v85;
          v74 = v19;
          v40(v85, v19, v80);
          v100 = *(v47 + v48);
          v51 = v100;
          *(v47 + v48) = 0x8000000000000000;
          v53 = sub_245FC1BDC(v50);
          v54 = *(v51 + 16);
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_30;
          }

          v57 = v52;
          if (*(v51 + 24) < v56)
          {
            sub_2460727D4(v56, isUniquelyReferenced_nonNull_native);
            v58 = sub_245FC1BDC(v85);
            a1 = v77;
            if ((v57 & 1) != (v59 & 1))
            {
              goto LABEL_32;
            }

            v53 = v58;
            goto LABEL_18;
          }

          v60 = v82;
          a1 = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_246074CB4();
LABEL_18:
            v60 = v82;
          }

          if ((v57 & 1) == 0)
          {
            goto LABEL_31;
          }

          v99 = 0;
          v62 = v100;
          v63 = *(v100 + 56);
          v77 = v53 * v73;
          v64 = v84;
          sub_24608199C(v63 + v53 * v73, v84, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v65 = v91;
          v78(v64, 0, 1, v91);
          v66 = v95;
          *(v64 + 320) = v96;
          *(v64 + 336) = v66;
          v67 = v93;
          *(v64 + 352) = v94;
          *(v64 + 368) = v67;
          *(v64 + 384) = v99;
          sub_245F8E7A4(v64, v60, &qword_27EE3ACE0, &unk_246098880);
          if ((*v81)(v60, 1, v65) == 1)
          {
            sub_245F8E744(v60, &qword_27EE3ACE0, &unk_246098880);
            v68 = *(v62 + 48) + v53 * v83;
            *&v96 = v62;
            v69 = *v86;
            v13 = v80;
            (*v86)(v68, v80);
            sub_2460739C0(v53, v96);
            v69(v85, v13);
            v62 = v96;
          }

          else
          {
            v70 = v79;
            sub_24608199C(v60, v79, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            sub_24608199C(v70, *(v62 + 56) + v77, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v69 = *v86;
            v13 = v80;
            (*v86)(v85, v80);
          }

          sub_245F8E744(v84, &qword_27EE3ACE0, &unk_246098880);
          v71 = v89;
          *(v89 + v97) = v62;
          swift_endAccess();
          v19 = v74;
          v69(v74, v13);
          a2 = v71;
          v14 = v75;
        }

        else
        {

LABEL_20:
          (*v86)(v19, v13);
          v61 = v87;
          (*v90)(v87, 1, 1, v91);
          sub_245F8E744(v61, &qword_27EE3ACE0, &unk_246098880);
          a2 = v89;
        }
      }
    }
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
    }

    v28 = *(v20 + 8 * v29);
    ++v26;
    if (v28)
    {
      v26 = v29;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  v78(v84, 1, 1, v91);
  __break(1u);
LABEL_32:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_246063E70(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460919F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091A64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v28[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v29 = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = a1;
    aBlock[4] = sub_24607BFB8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1030;
    v20 = _Block_copy(aBlock);
    v21 = v1;

    sub_246091A14();
    v30 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v18, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v18, v29);
  }

  else
  {
    v23 = sub_245FA3174();
    (*(v4 + 16))(v7, v23, v3);
    v24 = sub_2460918D4();
    v25 = sub_246091F94();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136380675;
      *(v26 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, aBlock);
      _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Received empty list of invalid mobileSfM pose for camera shots!", v26, 0xCu);
      sub_245F8E6F4(v27);
      MEMORY[0x24C1989D0](v27, -1, -1);
      MEMORY[0x24C1989D0](v26, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2460642D0(void *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v59 = sub_246091834();
  v63 = *(v59 - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v59);
  v62 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(v66, v16);
  if (v66[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v18 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
    if (v18)
    {
      v19 = *(a2 + 16);
      if (v19)
      {
        v20 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
        v21 = (a2 + 32);
        v22 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);

        v64 = v20;
        swift_beginAccess();
        v23 = v62;
        v60 = (v63 + 8);
        v61 = v63 + 16;
        v57 = (v5 + 8);
        v58 = (v5 + 16);
        v55 = "meraTransformMap:)";
        *&v24 = 136381187;
        v54 = v24;
        v25 = v59;
        v56 = v4;
        do
        {
          v27 = *v21++;
          v26 = v27;
          v28 = *(a1 + v64);
          if (*(v28 + 16))
          {
            v29 = sub_245FFF3EC(v26);
            if (v30)
            {
              (*(v63 + 16))(v23, *(v28 + 56) + *(v63 + 72) * v29, v25);
              if ((*(*v18 + 512))(v23))
              {
                v31 = sub_245FA3174();
                (*v58)(v14, v31, v4);

                v32 = v14;
                v33 = sub_2460918D4();
                v34 = sub_246091FC4();
                if (os_log_type_enabled(v33, v34))
                {
                  v35 = swift_slowAlloc();
                  v36 = swift_slowAlloc();
                  v65 = v36;
                  *v35 = v54;
                  *(v35 + 4) = sub_245F8D3C0(0xD00000000000002BLL, v55 | 0x8000000000000000, &v65);
                  *(v35 + 12) = 2050;
                  *(v35 + 14) = v26;
                  *(v35 + 22) = 2050;
                  *(v35 + 24) = (*(*v18 + 888))();

                  _os_log_impl(&dword_245F8A000, v33, v34, "ObjectCaptureSession.%{private}s: Deleted unknown state pose from AC pose graph: sampleID: %{public}ld, number of invalid AC shots: %{public}ld", v35, 0x20u);
                  sub_245F8E6F4(v36);
                  v37 = v36;
                  v25 = v59;
                  MEMORY[0x24C1989D0](v37, -1, -1);
                  v38 = v35;
                  v4 = v56;
                  MEMORY[0x24C1989D0](v38, -1, -1);
                }

                else
                {
                }

                (*v57)(v32, v4);
                v23 = v62;
                (*v60)(v62, v25);
                v14 = v32;
              }

              else
              {
                (*v60)(v23, v25);
              }
            }
          }

          --v19;
        }

        while (v19);
      }

      else
      {
        v52 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
      }

      v53 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
      sub_24606BCEC();
      v65 = (*(*v18 + 888))();
      sub_246091924();
    }

    else
    {
      v46 = sub_245FA3174();
      (*(v5 + 16))(v11, v46, v4);
      v47 = sub_2460918D4();
      v48 = v4;
      v49 = sub_246091FB4();
      if (os_log_type_enabled(v47, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66[0] = v51;
        *v50 = 136380675;
        *(v50 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, v66);
        _os_log_impl(&dword_245F8A000, v47, v49, "ObjectCaptureSession.%{private}s: Failed to update invalid shot pose - capture manager has not been initialized!", v50, 0xCu);
        sub_245F8E6F4(v51);
        MEMORY[0x24C1989D0](v51, -1, -1);
        MEMORY[0x24C1989D0](v50, -1, -1);
      }

      return (*(v5 + 8))(v11, v48);
    }
  }

  else
  {
    sub_246077B30(v66[0]);
    sub_246077B30(0xF);
    v39 = sub_245FA3174();
    (*(v5 + 16))(v8, v39, v4);
    v40 = sub_2460918D4();
    v41 = v4;
    v42 = sub_246091FB4();
    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v66[0] = v44;
      *v43 = 136380675;
      *(v43 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A27E0, v66);
      _os_log_impl(&dword_245F8A000, v40, v42, "ObjectCaptureSession.%{private}s: Session not in scanning mode!", v43, 0xCu);
      sub_245F8E6F4(v44);
      MEMORY[0x24C1989D0](v44, -1, -1);
      MEMORY[0x24C1989D0](v43, -1, -1);
    }

    return (*(v5 + 8))(v8, v41);
  }
}

uint64_t sub_246064A5C(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246091A64();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24607BFC0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1080;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_246091A14();
  v18 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_246064D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
  sub_24606B918();
  v17 = a2;

  sub_246091924();

  v10 = sub_245FA3174();
  (*(v5 + 16))(v8, v10, v4);

  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136380931;
    *(v13 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A46F0, &v17);
    *(v13 + 12) = 2050;
    *(v13 + 14) = *(a2 + 16);

    _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Published %{public}ld updated mesh anchors", v13, 0x16u);
    sub_245F8E6F4(v14);
    MEMORY[0x24C1989D0](v14, -1, -1);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_246064F60(char a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246091A64();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_24607C000;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E10D0;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_246091A14();
  v18 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_24606523C(char a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = sub_245FA3174();
  v41 = v5[2];
  v42 = v12;
  v41(v11);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v5;
    v16 = v15;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v16 = 136380931;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A46C0, &v44);
    *(v16 + 12) = 2082;
    v39 = a1 & 1;
    v43 = a1 & 1;
    v17 = sub_246091C54();
    v19 = a2;
    v20 = v4;
    v21 = v8;
    v22 = sub_245F8D3C0(v17, v18, &v44);

    *(v16 + 14) = v22;
    v8 = v21;
    v4 = v20;
    a2 = v19;
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Received request from area mode mesh manager\nto update scan extent to: %{public}s.", v16, 0x16u);
    v23 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v23, -1, -1);
    v24 = v16;
    v25 = v40;
    MEMORY[0x24C1989D0](v24, -1, -1);

    v26 = v25[1];
    v26(v11, v4);
    v27 = v39;
  }

  else
  {

    v26 = v5[1];
    v26(v11, v4);
    v27 = a1 & 1;
  }

  *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent) = v27;
  sub_246053240();
  v29 = v28;
  [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v28 options:8];
  (v41)(v8, v42, v4);
  v30 = sub_2460918D4();
  v31 = sub_246091FC4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v8;
    v34 = swift_slowAlloc();
    v44 = v34;
    *v32 = 136380675;
    *(v32 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A46C0, &v44);
    _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Restarted scene reconstruction with updated voxel size.", v32, 0xCu);
    sub_245F8E6F4(v34);
    MEMORY[0x24C1989D0](v34, -1, -1);
    MEMORY[0x24C1989D0](v32, -1, -1);

    v35 = v33;
  }

  else
  {

    v35 = v8;
  }

  return (v26)(v35, v4);
}

uint64_t sub_246065620(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v40 = a3;
  v41 = a1;
  v39 = a2;
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091A64();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2460918F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245FA3174();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2460918D4();
  v21 = sub_246091FC4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v37 = v9;
    v25 = v5;
    v26 = v4;
    v27 = v24;
    aBlock[0] = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, aBlock);
    _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: Received finalize input callback.", v23, 0xCu);
    sub_245F8E6F4(v27);
    v28 = v27;
    v4 = v26;
    v5 = v25;
    v9 = v37;
    MEMORY[0x24C1989D0](v28, -1, -1);
    v29 = v23;
    v6 = v38;
    MEMORY[0x24C1989D0](v29, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v30 = *&v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v31 = swift_allocObject();
  v32 = v39;
  *(v31 + 16) = v4;
  *(v31 + 24) = v32;
  *(v31 + 32) = v40 & 1;
  *(v31 + 33) = v41 & 1;
  aBlock[4] = sub_24607C044;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1120;
  v33 = _Block_copy(aBlock);
  v34 = v4;
  sub_246091A14();
  v44 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v9, v33);
  _Block_release(v33);
  (*(v6 + 8))(v9, v5);
  (*(v42 + 8))(v13, v43);
}

uint64_t sub_246065AA8(char *a1, uint64_t a2, int a3, int a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v44 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-v10];
  v12 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
  v13 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
  if (v13)
  {
    v14 = *(*v13 + 704);
    v15 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];

    v14(v16);
  }

  v17 = sub_245FA3174();
  v18 = v6[2];
  v42 = v17;
  v43 = v6 + 2;
  v41 = v18;
  v18(v11);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  v21 = &off_246096000;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = v23;
    *v22 = 136380675;
    v21 = &off_246096000;
    *(v22 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, &v46);
    _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Mobile sfm has been disabled gracefully.", v22, 0xCu);
    sub_245F8E6F4(v23);
    MEMORY[0x24C1989D0](v23, -1, -1);
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  v24 = v11;
  v25 = v6[1];
  v25(v24, v5);
  v26 = *&a1[v12];
  *&a1[v12] = 0;

  v27 = &a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  swift_beginAccess();
  *v27 = v39;
  v27[8] = v40 & 1;
  sub_2460378FC();
  v28 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing];
  if (v28 != 18)
  {
    if (v38)
    {
      sub_2460818E4(*&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing]);
    }

    else
    {
      if (v28 == 17)
      {
        sub_2460818E4(0x11);
        sub_246077B30(0x11);
        sub_246077B30(0x11);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_246091984();

        v29 = v45;
        swift_getKeyPath();
        swift_getKeyPath();
        v45 = 5;
        a1;
        sub_246091994();
        v45 = v29;
        sub_246036D70(&v45);
        sub_246077B30(v29);
        goto LABEL_12;
      }

      sub_2460818E4(*&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing]);
      sub_2460818E4(v28);
      sub_246077B30(v28);
      sub_246077B30(0x11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2460818E4(v28);
    sub_246091984();

    v30 = v45;
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v28;
    a1;
    sub_246091994();
    v45 = v30;
    sub_246036D70(&v45);
    sub_246079A74(v28);
    sub_246077B30(v30);
  }

LABEL_12:
  v31 = v44;
  v41(v44, v42, v5);
  v32 = sub_2460918D4();
  v33 = sub_246091FC4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = *(v21 + 299);
    *(v34 + 4) = sub_245F8D3C0(0xD000000000000031, 0x80000002460A2810, &v45);
    _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: MobileSfM exited gracefully and the snapshot was written if applicable.", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  return (v25)(v31, v5);
}

uint64_t sub_246066024(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246091A64();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24607C0BC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E1170;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_246091A14();
  v18 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_246066300(void *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *a1) + 0x410))(&v17, v7);
  if (v17 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v10 = sub_245FA3174();
    (*(v5 + 16))(v9, v10, v4);
    v11 = sub_2460918D4();
    v12 = sub_246091FC4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A4690, &v17);
      _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Updated mobileSfM point cloud.", v13, 0xCu);
      sub_245F8E6F4(v14);
      MEMORY[0x24C1989D0](v14, -1, -1);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v15 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer);
    *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer) = a2;
  }

  else
  {
    sub_246077B30(v17);
    sub_246077B30(0xF);
  }
}