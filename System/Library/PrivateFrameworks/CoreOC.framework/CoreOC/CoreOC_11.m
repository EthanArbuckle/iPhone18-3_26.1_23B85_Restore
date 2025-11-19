uint64_t sub_24607BAF8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = sub_2460919F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_246091A64();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v31[2] = a2[2];
  v31[3] = v16;
  v31[4] = a2[4];
  v17 = a2[1];
  v31[0] = *a2;
  v31[1] = v17;
  v27 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  v19 = *(a3 + 16);
  *(v18 + 32) = *a3;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a3 + 32);
  v20 = *(a1 + 48);
  *(v18 + 112) = *(a1 + 32);
  *(v18 + 128) = v20;
  *(v18 + 144) = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v18 + 80) = *a1;
  *(v18 + 96) = v21;
  v22 = a2[4];
  *(v18 + 208) = a2[3];
  *(v18 + 224) = v22;
  v23 = a2[2];
  *(v18 + 176) = a2[1];
  *(v18 + 192) = v23;
  *(v18 + 160) = *a2;
  aBlock[4] = sub_24608239C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2BE8;
  v24 = _Block_copy(aBlock);
  v25 = v3;
  sub_245F8E7A4(v31, v29, &qword_27EE3AB10, &qword_246096678);
  sub_246091A14();
  v29[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v15, v11, v24);
  _Block_release(v24);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v28);
}

void sub_24607BE5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v9);
  if (v9[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
      swift_beginAccess();
      v5 = *(v1 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v1 + v4);
      *(v1 + v4) = 0x8000000000000000;
      sub_2460748A8(v3, v2, isUniquelyReferenced_nonNull_native);
      *(v1 + v4) = v8;
      swift_endAccess();
      if (*(v8 + 16) >= 0xAuLL)
      {
        v7 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
        swift_beginAccess();
        *(v1 + v7) = v3;
        sub_246037CFC();
      }
    }
  }

  else
  {
    sub_246077B30(v9[0]);
    sub_246077B30(0xF);
  }
}

uint64_t sub_24607BFC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24607C00C()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24607C06C(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_24607C0C4(void *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v111 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v111 - v16;
  v18 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) = v20;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v20 + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    *&v125 = v8;
    v126 = v2;
    v21 = sub_245FA3174();
    (*(v5 + 16))(v17, v21, v4);
    v22 = sub_2460918D4();
    v23 = sub_246091FC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *&v124 = v5;
      v25 = v24;
      v26 = swift_slowAlloc();
      *&v130[0] = v26;
      *v25 = 136380675;
      *(v25 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v130);
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: has been called.", v25, 0xCu);
      sub_245F8E6F4(v26);
      MEMORY[0x24C1989D0](v26, -1, -1);
      v27 = v25;
      v5 = v124;
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    (*(v5 + 8))(v17, v4);
    v2 = v126;
    v8 = v125;
  }

  if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos) & 1) == 0)
  {
    v28 = [a1 smoothedSceneDepth];
    v126 = v2;
    if (v28 && (v29 = v28, v30 = [v28 depthMap], v29, v30))
    {
    }

    else
    {
      v31 = sub_245FA3174();
      (*(v5 + 16))(v14, v31, v4);
      v32 = sub_2460918D4();
      v33 = sub_246091FB4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v125 = v8;
        v36 = v5;
        v37 = v35;
        *&v130[0] = v35;
        *v34 = 136380675;
        *(v34 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v130);
        _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: No depth map is available in ARFrame!", v34, 0xCu);
        sub_245F8E6F4(v37);
        v38 = v37;
        v5 = v36;
        v8 = v125;
        MEMORY[0x24C1989D0](v38, -1, -1);
        MEMORY[0x24C1989D0](v34, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
      v2 = v126;
    }

    v39 = [a1 depthConfidenceData];
    if (v39)
    {
    }

    else
    {
      v40 = sub_245FA3174();
      (*(v5 + 16))(v11, v40, v4);
      v41 = sub_2460918D4();
      v42 = sub_246091FB4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v125 = v8;
        v45 = v5;
        v46 = v44;
        *&v130[0] = v44;
        *v43 = 136380675;
        *(v43 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v130);
        _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: No confidence map is available in ARFrame!", v43, 0xCu);
        sub_245F8E6F4(v46);
        v47 = v46;
        v5 = v45;
        v8 = v125;
        MEMORY[0x24C1989D0](v47, -1, -1);
        MEMORY[0x24C1989D0](v43, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
    }

    v48 = &off_278E99000;
    v49 = [a1 capturedPointCloudData];
    if (v49 && (v50 = v49, v51 = [v49 depthPointCloud], v50, v51))
    {
    }

    else
    {
      v52 = sub_245FA3174();
      (*(v5 + 16))(v8, v52, v4);
      v53 = sub_2460918D4();
      v54 = sub_246091FB4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v5;
        v57 = swift_slowAlloc();
        *&v130[0] = v57;
        *v55 = 136380675;
        *(v55 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v130);
        _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: No point cloud data is available in ARFrame!", v55, 0xCu);
        sub_245F8E6F4(v57);
        MEMORY[0x24C1989D0](v57, -1, -1);
        MEMORY[0x24C1989D0](v55, -1, -1);

        (*(v56 + 8))(v8, v4);
        v48 = &off_278E99000;
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }
    }

    v58 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp;
    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8) == 1)
    {
      [a1 timestamp];
      *v58 = v59;
      *(v58 + 8) = 0;
    }

    [a1 timestamp];
    if ((*(v58 + 8) & 1) == 0)
    {
      v61 = v60;
      v62 = *v58;
      v63 = [a1 capturedImage];
      v64 = [a1 camera];
      [v64 intrinsics];
      v134[0] = v65;
      v134[1] = v66;
      v134[2] = v67;

      sub_246035724(v63, v134);
      v68 = [a1 camera];
      [v68 intrinsics];
      v124 = v70;
      v125 = v69;
      v123 = v71;

      v72 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame;
      v73 = v124;
      *v72 = v125;
      *(v72 + 16) = v73;
      *(v72 + 32) = v123;
      *(v72 + 48) = 0;
      v74 = [a1 camera];
      [v74 imageResolution];
      v76 = v75;

      v77 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame;
      *v77 = v76;
      *(v77 + 8) = 0;
      v78 = [a1 v48[267]];
      if (v78 && (v79 = v78, v80 = [v78 depthPointCloud], v79, v80))
      {
        v81 = sub_245FCCC80();
        sub_2460232B4(v80, v81 & 1, v130);

        v124 = v130[1];
        v125 = v130[0];
        v122 = v130[3];
        v123 = v130[2];
        v82 = *&v130[4];
      }

      else
      {
        v82 = 0;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
      }

      v83 = v61 - v62;
      v84 = [a1 camera];
      [v84 intrinsics];
      v120 = v86;
      v121 = v85;
      v119 = v87;

      v88 = [a1 camera];
      [v88 transform];
      v117 = v90;
      v118 = v89;
      v115 = v92;
      v116 = v91;

      v93 = [a1 camera];
      sub_24606656C(v130);

      v94 = v130[0];
      wideToDepthCameraTransform()(v95);
      v113 = v97;
      v114 = v96;
      v111 = v99;
      v112 = v98;
      v131 = 0;
      v100 = [a1 camera];
      v101 = [v100 calibrationData];

      v132 = 1;
      v133[0] = v121;
      v133[1] = v120;
      v133[2] = v119;
      v133[3] = v118;
      v133[4] = v117;
      v133[5] = v116;
      v133[6] = v115;
      LOBYTE(v133[7]) = v94;
      v133[8] = v114;
      v133[9] = v113;
      v133[10] = v112;
      v133[11] = v111;
      LOBYTE(v133[12]) = v131;
      *(&v133[12] + 1) = v101;
      memset(&v133[13], 0, 64);
      LOBYTE(v133[17]) = 1;
      DWORD1(v133[17]) = 1;
      v102 = [a1 capturedImage];
      v103 = [a1 smoothedSceneDepth];
      if (v103)
      {
        v104 = v103;
        v105 = [v103 depthMap];
      }

      else
      {
        v105 = 0;
      }

      v106 = [a1 depthConfidenceData];
      v128[0] = v125;
      v128[1] = v124;
      v128[2] = v123;
      v128[3] = v122;
      v129 = v82;
      v107 = [a1 v48[267]];
      v108 = [v107 depthPointCloud];

      memcpy(v127, v133, 0x118uLL);
      sub_24601E8F4(v133, v130);
      v109 = [a1 rawFeaturePoints];
      v110 = sub_245FCCC80();
      sub_246086648(v127, v102, v105, v106, v128, v108, v109, v110 & 1, v130, v83);
      memcpy(v127, v130, 0x191uLL);
      sub_246044F20(v127);
      sub_24601E950(v133);
      sub_245FCFE58(v130);
      return;
    }

LABEL_37:
    __break(1u);
  }
}

uint64_t sub_24607CBEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24607CC40(void *a1, void *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  if (a1)
  {
    if (a2)
    {
      v40 = a1;
      v12 = a2;
      [v40 center];
      *v39 = v13;
      [v12 center];
      v15 = vsubq_f32(*v39, v14);
      v16 = vmulq_f32(v15, v15);
      if (sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.001)
      {

        v38 = v40;
      }

      else
      {
        v17 = sub_245FA3174();
        (*(v5 + 16))(v11, v17, v4);
        v18 = v40;
        v19 = sub_2460918D4();
        v20 = sub_246091FC4();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v42 = v40;
          *v21 = 136380931;
          *(v21 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4640, &v42);
          *(v21 + 12) = 2080;
          [v18 center];
          v41 = v22;
          v39[0] = v18;
          sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
          sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850);
          v23 = sub_246092404();
          v25 = sub_245F8D3C0(v23, v24, &v42);

          *(v21 + 14) = v25;
          _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Updated plane with center %s", v21, 0x16u);
          v26 = v40;
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v26, -1, -1);
          MEMORY[0x24C1989D0](v21, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v27 = a1;
      v28 = sub_245FA3174();
      (*(v5 + 16))(v8, v28, v4);
      v29 = v27;
      v30 = sub_2460918D4();
      v31 = sub_246091FC4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v32 = 136380931;
        *(v32 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4640, &v42);
        *(v32 + 12) = 2080;
        [v29 center];
        v41 = v33;
        sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
        sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850);
        v34 = sub_246092404();
        v36 = sub_245F8D3C0(v34, v35, &v42);

        *(v32 + 14) = v36;
        _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Updated plane with center %s", v32, 0x16u);
        v37 = v40;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v37, -1, -1);
        MEMORY[0x24C1989D0](v32, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_24607D158(void *a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245FA3174();
  (*(v11 + 16))(v14, v15, v10);
  v16 = a1;
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v10;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136380931;
    *(v19 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, aBlock);
    *(v19 + 12) = 2082;
    sub_24606656C(&v42);
    v22 = sub_246091C54();
    v24 = v2;
    v25 = sub_245F8D3C0(v22, v23, aBlock);

    *(v19 + 14) = v25;
    v2 = v24;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: ARCamera did change tracking state to %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v19, -1, -1);

    (*(v11 + 8))(v14, v35);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v26 = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v16;
  aBlock[4] = sub_246082314;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2B48;
  v28 = _Block_copy(aBlock);
  v29 = v16;
  v30 = v2;
  v31 = v36;
  sub_246091A14();
  v42 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v32 = v39;
  v33 = v41;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v31, v32, v28);
  _Block_release(v28);
  (*(v40 + 8))(v32, v33);
  (*(v37 + 8))(v31, v38);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC21sessionWasInterruptedyySo9ARSessionCF_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245FA3174();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2460918D4();
  v7 = sub_246091FC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136380675;
    *(v8 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4550, &v12);
    _os_log_impl(&dword_245F8A000, v6, v7, "ObjectCaptureSession.%{private}s: ARSession was interrupted!", v8, 0xCu);
    sub_245F8E6F4(v9);
    MEMORY[0x24C1989D0](v9, -1, -1);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC24sessionInterruptionEndedyySo9ARSessionCF_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245FA3174();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2460918D4();
  v7 = sub_246091FC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136380675;
    *(v8 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4530, &v12);
    _os_log_impl(&dword_245F8A000, v6, v7, "ObjectCaptureSession.%{private}s: ARSession interruption ended!", v8, 0xCu);
    sub_245F8E6F4(v9);
    MEMORY[0x24C1989D0](v9, -1, -1);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC34sessionShouldAttemptRelocalizationySbSo9ARSessionCF_0()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245FA3174();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = v2;
    v22 = v1;
    v23 = v21;
    aBlock[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, aBlock);
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: has been called.", v20, 0xCu);
    sub_245F8E6F4(v23);
    v24 = v23;
    v1 = v22;
    v2 = v32;
    MEMORY[0x24C1989D0](v24, -1, -1);
    v25 = v20;
    v3 = v33;
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v26 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  aBlock[4] = sub_24608230C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2AF8;
  v28 = _Block_copy(aBlock);
  v29 = v1;
  sub_246091A14();
  v36 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v10, v6, v28);
  _Block_release(v28);
  (*(v3 + 8))(v6, v2);
  (*(v34 + 8))(v10, v35);

  return 1;
}

void sub_24607DE00(void *a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091A64();
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245FA3174();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A44B0, aBlock);
    _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: has been called.", v18, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  aBlock[0] = a1;
  v20 = a1;
  sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
  type metadata accessor for ARError(0);
  if (swift_dynamicCast())
  {
    v21 = v38;
    v22 = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v2;
    v23[4] = a1;
    aBlock[4] = sub_24608209C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E2AA8;
    v24 = _Block_copy(aBlock);
    v25 = a1;
    v26 = v21;
    v27 = v2;
    sub_246091A14();
    v38 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    v28 = v33;
    v29 = v36;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v9, v28, v24);
    _Block_release(v24);

    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v9, v34);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = a1;
    sub_246091984();

    v31 = aBlock[0];
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = a1;
    v2;
    sub_246091994();
    aBlock[0] = v31;
    sub_246036D70(aBlock);
    sub_246077B30(v31);
  }
}

uint64_t sub_24607E36C(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245FA3174();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4490, &v17);
    *(v10 + 12) = 2082;
    v16 = a1;
    type metadata accessor for ARSessionState(0);
    v12 = sub_246091C54();
    v14 = sub_245F8D3C0(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: has been called. The session state did change to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24607E59C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24607E794()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_24607E7CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_24607E7EC()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24607E8B0()
{
  v1 = *(sub_246091704() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24606FD4C(v2, v3);
}

uint64_t sub_24607E914@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  return sub_245F8E7A4(v3 + v4, a1, &qword_27EE3A498, &unk_246097EB8);
}

double sub_24607EA90@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_245F8E624(&qword_27EE3ADA0, &qword_24609AD48);
  v3 = v2[12];
  sub_245F97058(v15);
  v4 = *v15;
  v14 = *&v15[8];
  v5 = *&v15[24];
  v6 = v16;
  v7 = sub_245F9780C(v15);
  v8 = a1 + v2[16];
  v9 = a1 + v2[20];
  *a1 = v4;
  *(a1 + 8) = v14;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *v8 = v7;
  *(v8 + 8) = v10 & 1;
  *(v9 + 64) = v18;
  v11 = v17;
  *(v9 + 32) = v16;
  *(v9 + 48) = v11;
  result = *v15;
  v13 = *&v15[16];
  *v9 = *v15;
  *(v9 + 16) = v13;
  return result;
}

unint64_t sub_24607EB6C()
{
  result = qword_27EE3AB38;
  if (!qword_27EE3AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB38);
  }

  return result;
}

unint64_t sub_24607EBC8()
{
  result = qword_27EE3B1F0;
  if (!qword_27EE3B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3B1F0);
  }

  return result;
}

unint64_t sub_24607EC20()
{
  result = qword_27EE3AB50;
  if (!qword_27EE3AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB50);
  }

  return result;
}

unint64_t sub_24607EC78()
{
  result = qword_27EE3AB58;
  if (!qword_27EE3AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB58);
  }

  return result;
}

void sub_24607ECD4()
{
  sub_246082B24(319, &qword_27EE3AB68, &type metadata for ObjectCaptureSession.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_246082B24(319, &qword_27EE3AB70, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_246091834();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2460809D4(319, &qword_27EE3A4C8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of ObjectCaptureSession.startCapturing(inside:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x528);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7) & 1;
}

uint64_t dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x530);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7) & 1;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Configuration(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24607F818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24607F874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_24607F8C4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24607F8F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 7;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24607F918(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFED && *(a1 + 8))
  {
    return (*a1 + 2147483630);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 7;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 10;
  if (v5 >= 0xC)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24607F97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEE)
  {
    *result = 0;
    *result = a2 - 2147483630;
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

void *sub_24607F9CC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFF8)
  {
    v2 = -2147483641;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 6;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_24607FA04(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_24607FA28(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24607FA40(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24607FA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1264))
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

uint64_t sub_24607FAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1256) = 0;
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
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1264) = 1;
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

    *(result + 1264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24607FC5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 200);
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

uint64_t sub_24607FCB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 200) = a2;
    }
  }

  return result;
}

__n128 sub_24607FD64(uint64_t a1, uint64_t a2)
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

uint64_t sub_24607FD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_24607FDEC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 sub_24607FE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24607FE90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24607FED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24607FF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_246080034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_246091834();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2460800EC()
{
  sub_246091834();
  if (v0 <= 0x3F)
  {
    sub_245FA30EC(319, &qword_27EE3AB78, 0x277CE52B8);
    if (v1 <= 0x3F)
    {
      sub_246080200(319, &qword_27EE3AB80, &qword_27EE3AB88, 0x277CE52B0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for simd_float4x4(319);
        if (v3 <= 0x3F)
        {
          sub_246080258();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_246080200(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_245FA30EC(255, a3, a4);
    v5 = sub_2460920F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_246080258()
{
  if (!qword_27EE3AB90)
  {
    sub_2460802B4();
    v0 = sub_2460924D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3AB90);
    }
  }
}

unint64_t sub_2460802B4()
{
  result = qword_27EE3AB98;
  if (!qword_27EE3AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB98);
  }

  return result;
}

uint64_t sub_246080308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_246080350(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Metadata(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ObjectCaptureSession.Metadata(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_246080488(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24608049C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_2460804E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_246080538(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_246080544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24608058C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2460805F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 392);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2460806C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 392) = (a2 - 1);
  }

  else
  {
    v7 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_246080770()
{
  sub_2460809D4(319, &qword_27EE3ABA0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_246082B24(319, &qword_27EE3ABA8, &type metadata for ObjectCaptureSession.Metadata.Shot.Object, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_246082B24(319, &qword_27EE3ABB0, &type metadata for ObjectCaptureSession.Metadata.Shot.Scene, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_246082B24(319, &qword_27EE3ABB8, &type metadata for ObjectCaptureSession.Metadata.Shot.CaptureMode, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2460809D4(319, &unk_27EE3ABC0, type metadata accessor for CMAcceleration, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_246080200(319, &qword_27EE39FB8, &qword_27EE3ABD0, 0x277CE5320);
            if (v5 <= 0x3F)
            {
              sub_246082B24(319, &qword_27EE39FD8, &type metadata for ObjectCaptureSession.Frame.Feedback, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2460809D4(319, &unk_27EE3ABE0, type metadata accessor for TemporalDepthPointCloud, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2460809D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_246080A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 376);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_246080A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 376) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_246080B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_246080B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t sub_246080BDC(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

__n128 sub_246080C68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_246080C8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246080CAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.CaptureOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.CaptureOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_246080DC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_246080E10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 225))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246080E30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
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

  *(result + 225) = v3;
  return result;
}

uint64_t sub_24608114C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 680);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_246081194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 680) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2460817B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246081804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2460818C8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_2460818E4(id result)
{
  if (result - 7 >= 0xB)
  {
    return sub_24601EC48(result);
  }

  return result;
}

_BYTE *sub_246081904@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_246081984(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24608199C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_246081A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_246081A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_246081ACC(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_246081AE4()
{
  result = qword_27EE3AD80;
  if (!qword_27EE3AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AD80);
  }

  return result;
}

uint64_t sub_246081C18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_246081C68(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  return result;
}

uint64_t sub_246081C90(uint64_t a1)
{
  if (*(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246081CB4()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 64))
  {

    v5 = *(v0 + 72);

    v6 = *(v0 + 80);

    v7 = *(v0 + 88);

    v8 = *(v0 + 96);

    v9 = *(v0 + 104);

    v10 = *(v0 + 112);

    v11 = *(v0 + 120);

    v12 = *(v0 + 128);
  }

  v13 = (v3 + 433) & ~v3;

  (*(v2 + 8))(v0 + v13, v1);

  return MEMORY[0x2821FE8E8](v0, v13 + v4, v3 | 0xF);
}

void sub_246081DF4()
{
  v1 = *(*(sub_246091834() - 8) + 80);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x410))(&v2);
  if (v2 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    sub_24604A384(v0 + 32);
  }

  else
  {
    sub_246077B30(v2);

    sub_246077B30(0xF);
  }
}

uint64_t sub_246081EFC()
{
  if (*(v0 + 64))
  {

    v1 = *(v0 + 72);

    v2 = *(v0 + 80);

    v3 = *(v0 + 88);

    v4 = *(v0 + 96);

    v5 = *(v0 + 104);

    v6 = *(v0 + 112);

    v7 = *(v0 + 120);

    v8 = *(v0 + 128);
  }

  return MEMORY[0x2821FE8E8](v0, 433, 15);
}

void sub_246081FB0()
{
  v1 = v0 + 32;
  v2 = *(v0 + 16);
  sub_2460458D8(v1);
}

uint64_t sub_246082054()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24608209C()
{
  v1 = v0[3];
  v2 = v0[4];
  v9 = v0[2];
  type metadata accessor for ARError(0);
  sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);
  sub_2460915A4();
  if ((v8 - 101) < 2 || v8 == 200 || v8 == 400)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v3 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v1;
    sub_246091994();
    sub_246036D70(&v9);
    v4 = v3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;
    sub_246091984();

    v6 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v1;
    sub_246091994();
    sub_246036D70(&v7);
    v4 = v6;
  }

  sub_246077B30(v4);
}

uint64_t sub_24608231C()
{
  MEMORY[0x24C198A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24608235C()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 240, 15);
}

uint64_t sub_2460823B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24608242C(_BYTE *a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_246050348(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), *(v1 + 40), a1, *(v1 + 48), *(v1 + 64), *(v1 + 80), *(v1 + 96));
}

char *sub_24608247C@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24604D794(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

void sub_2460824C4(id a1)
{
  if (a1 != 7)
  {
    sub_246077B44(a1);
  }
}

__n128 sub_2460824D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2460824E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246082534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2460825C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246082618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_246082680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2460826D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2460829A0()
{
  result = qword_27EE3AF58;
  if (!qword_27EE3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AF58);
  }

  return result;
}

void sub_246082B24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::String __swiftcall OCGitHash()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_246082E68()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  result = OCImageScalerCreate();
  if (result)
  {

    type metadata accessor for ImageScaler();
    swift_deallocPartialClassInstance();
    v2 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246082F20()
{
  v1 = *(v0 + 16);
  result = OCImageScalerDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

CVPixelBufferRef sub_246082FB0(__CVBuffer *a1, uint64_t *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v21[0] = 0;
  v7 = *(v2 + 48);
  if (v7)
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = v7;
    if (CVPixelBufferPoolCreatePixelBuffer(v10, v11, v21))
    {

      v12 = 0;
      v13 = v21[0];
    }

    else
    {
      CVPixelBufferGetWidth(a1);
      CVPixelBufferGetHeight(a1);
      v14 = *(a2 + 32);
      v15 = *(v2 + 16);
      v16 = v21[0];
      v17 = OCImageScalerResizeImage();

      v13 = v21[0];
      if (v17)
      {
        v12 = 0;
      }

      else
      {
        v18 = v21[0];
        v12 = v13;
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

CVPixelBufferRef sub_246083114(__CVBuffer *a1, uint64_t *a2, size_t width, size_t height, OSType pixelFormatType)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v20[0] = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, pixelFormatType, 0, v20))
  {
    v12 = 0;
    v13 = v20[0];
  }

  else
  {
    CVPixelBufferGetWidth(a1);
    CVPixelBufferGetHeight(a1);
    v14 = *(a2 + 32);
    v15 = *(v5 + 16);
    v16 = OCImageScalerResizeImage();
    v13 = v20[0];
    if (v16)
    {
      v12 = 0;
    }

    else
    {
      v17 = v20[0];
      v12 = v13;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

__n128 initializeBufferWithCopyOfBuffer for ImageScaler.Config(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_246083274()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_2460832AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2460832F4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t sub_24608332C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2460833C8(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v75 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v75 - v19;
  *(v4 + 48) = 0;
  v21 = (v4 + 48);
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  *(v4 + 32) = 512;
  *(v4 + 64) = xmmword_24609B410;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_19:
    v68 = sub_245FA32CC();
    v69 = v86;
    (*(v9 + 16))(v86, v68, v8);
    v70 = sub_2460918D4();
    v71 = sub_246091FC4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v8;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v89[0] = v74;
      *v73 = 136380675;
      *(v73 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v89);
      _os_log_impl(&dword_245F8A000, v70, v71, "MeshBuffer.%{private}s: Initialized MeshBuffer.", v73, 0xCu);
      sub_245F8E6F4(v74);
      MEMORY[0x24C1989D0](v74, -1, -1);
      MEMORY[0x24C1989D0](v73, -1, -1);
      swift_unknownObjectRelease();

      (*(v9 + 8))(v69, v72);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v9 + 8))(v69, v8);
    }

    return v4;
  }

  v77 = (v4 + 56);
  v78 = v18;
  v76 = v17;
  v22 = objc_allocWithZone(MEMORY[0x277CD6E48]);
  v84 = a1;
  swift_unknownObjectRetain();
  v23 = [v22 init];
  [v23 setResourceOptions_];
  result = getpagesize();
  v25 = ceilf(a3 / result) * result;
  if (COERCE_INT(fabs(v25)) > 2139095039)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v25 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v25 < 9.2234e18)
  {
    *(v4 + 40) = v25;
    v26 = sub_245FA32CC();
    v27 = *(v9 + 16);
    v79 = v26;
    v80 = v27;
    v81 = v9 + 16;
    (v27)(v20);

    v28 = sub_2460918D4();
    v29 = sub_246091FC4();
    v30 = os_log_type_enabled(v28, v29);
    v82 = v4;
    v83 = v9;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v75 = v8;
      v32 = v31;
      v33 = swift_slowAlloc();
      v88[0] = v33;
      *v32 = 136380931;
      *(v32 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v88);
      *(v32 + 12) = 2050;
      *(v32 + 14) = *(v4 + 40);

      _os_log_impl(&dword_245F8A000, v28, v29, "MeshBuffer.%{private}s: Computed page-aligned heap size = %{public}ld bytes.", v32, 0x16u);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      v34 = v32;
      v8 = v75;
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    else
    {
    }

    v35 = *(v9 + 8);
    v35(v20, v8);
    v36 = v23;
    [v23 setSize_];
    v37 = v84;
    v38 = [v84 newHeapWithDescriptor_];
    if (v38)
    {
      v39 = v38;
      swift_beginAccess();
      v40 = *v21;
      *v21 = v39;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v41 = [v37 newHeapWithDescriptor_];
      if (v41)
      {
        v42 = v41;
        v43 = v77;
        swift_beginAccess();
        v44 = *v43;
        *v43 = v42;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v45 = v78;
        v80(v78, v79, v8);
        v46 = sub_2460918D4();
        v47 = sub_246091FC4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = v8;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v89[0] = v50;
          *v49 = 136380675;
          *(v49 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v89);
          _os_log_impl(&dword_245F8A000, v46, v47, "MeshBuffer.%{private}s: Created primary and fallback heaps.", v49, 0xCu);
          sub_245F8E6F4(v50);
          MEMORY[0x24C1989D0](v50, -1, -1);
          v51 = v49;
          v8 = v48;
          MEMORY[0x24C1989D0](v51, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v9 = v83;
        v35(v45, v8);
        v4 = v82;
        goto LABEL_19;
      }

      v61 = v76;
      v80(v76, v79, v8);
      v62 = v82;

      v63 = sub_2460918D4();
      v64 = sub_246091FB4();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v75 = v8;
        v66 = v65;
        v67 = swift_slowAlloc();
        v87 = v67;
        *v66 = 136380931;
        *(v66 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, &v87);
        *(v66 + 12) = 2050;
        *(v66 + 14) = *(v62 + 40);

        _os_log_impl(&dword_245F8A000, v63, v64, "MeshBuffer.%{private}s: Failed to create fallback heap of size %{public}ld bytes!", v66, 0x16u);
        sub_245F8E6F4(v67);
        MEMORY[0x24C1989D0](v67, -1, -1);
        MEMORY[0x24C1989D0](v66, -1, -1);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        v59 = v61;
        v60 = v75;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v59 = v61;
    }

    else
    {
      v52 = v85;
      v80(v85, v79, v8);
      v53 = v82;

      v54 = sub_2460918D4();
      v55 = sub_246091FB4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v8;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v88[0] = v58;
        *v57 = 136380931;
        *(v57 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v88);
        *(v57 + 12) = 2050;
        *(v57 + 14) = *(v53 + 40);

        _os_log_impl(&dword_245F8A000, v54, v55, "MeshBuffer.%{private}s: Failed to create heap of size\n%{public}ld bytes!", v57, 0x16u);
        sub_245F8E6F4(v58);
        MEMORY[0x24C1989D0](v58, -1, -1);
        MEMORY[0x24C1989D0](v57, -1, -1);
        swift_unknownObjectRelease();

        v59 = v52;
        v60 = v56;
LABEL_26:
        v35(v59, v60);
        return 0;
      }

      swift_unknownObjectRelease();

      v59 = v52;
    }

    v60 = v8;
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_246083D60(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  if (*(v1 + 24) == 1)
  {
    v12 = *(*v1 + 192);
    result = v12(v9);
    if (result)
    {
      v14 = swift_unknownObjectRelease();
      result = (*(*v1 + 216))(v14);
      if (result)
      {
        v15 = swift_unknownObjectRelease();
        result = (v12)(v15);
        if (result)
        {
          v16 = [result newBufferWithLength:a1 options:0];
          swift_unknownObjectRelease();
          if (v16)
          {
            return v16;
          }

          v22 = sub_245FA32CC();
          (*(v4 + 16))(v11, v22, v3);
          v23 = sub_2460918D4();
          v24 = sub_246091FB4();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v28 = v26;
            *v25 = 136380675;
            *(v25 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A4B90, &v28);
            _os_log_impl(&dword_245F8A000, v23, v24, "MeshBuffer.%{private}s: Failed to allocate buffer on heap!", v25, 0xCu);
            sub_245F8E6F4(v26);
            MEMORY[0x24C1989D0](v26, -1, -1);
            MEMORY[0x24C1989D0](v25, -1, -1);
          }

          (*(v4 + 8))(v11, v3);
          return 0;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  result = [*(v1 + 16) newBufferWithLength:a1 options:{512, v9.n128_f64[0]}];
  if (result)
  {
    return result;
  }

  v17 = sub_245FA32CC();
  (*(v4 + 16))(v7, v17, v3);
  v18 = sub_2460918D4();
  v19 = sub_246091FB4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A4B90, &v28);
    _os_log_impl(&dword_245F8A000, v18, v19, "MeshBuffer.%{private}s: Failed to allocate buffer on device!", v20, 0xCu);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

id sub_246084104(const void *a1, size_t a2)
{
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  if (*(v2 + 24) == 1)
  {
    v14 = *(*v2 + 192);
    result = v14(v11);
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v16 = swift_unknownObjectRelease();
    result = (*(*v2 + 216))(v16);
    if (!result)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v17 = swift_unknownObjectRelease();
    result = (v14)(v17);
    if (!result)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v18 = [result newBufferWithLength:a2 options:0];
    swift_unknownObjectRelease();
    if (v18)
    {
      v19 = [swift_unknownObjectRetain() contents];
      result = v18;
      if ((a2 & 0x8000000000000000) == 0)
      {
        memmove(v19, a1, a2);
        return v18;
      }

      __break(1u);
      goto LABEL_18;
    }

    v25 = sub_245FA32CC();
    (*(v6 + 16))(v13, v25, v5);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136380675;
      *(v28 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4BB0, &v31);
      _os_log_impl(&dword_245F8A000, v26, v27, "MeshBuffer.%{private}s: Failed to allocate buffer on heap!", v28, 0xCu);
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    result = [*(v2 + 16) newBufferWithBytes:a1 length:a2 options:{512, v11.n128_f64[0]}];
    if (result)
    {
      return result;
    }

    v20 = sub_245FA32CC();
    (*(v6 + 16))(v9, v20, v5);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4BB0, &v31);
      _os_log_impl(&dword_245F8A000, v21, v22, "MeshBuffer.%{private}s: Failed to allocate buffer on device!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

id sub_2460844EC(void *a1)
{
  v3 = (*(*v1 + 256))([a1 bytes], objc_msgSend(a1, sel_length));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a1 length] / 12;
  v6 = [objc_allocWithZone(MEMORY[0x277CE52B8]) initWithBuffer:v4 count:v5 format:30 componentsPerVector:3 offset:0 stride:12];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_2460845E8(uint64_t result)
{
  if (0xAAAAAAAAAAAAAAABLL * result + 0x2AAAAAAAAAAAAAAALL > 0x5555555555555554)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = (*(*v1 + 248))();
    if (!v3)
    {
      return 0;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277CE52B8]) initWithBuffer:v3 count:v2 / 12 format:30 componentsPerVector:3 offset:0 stride:12];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t sub_2460846C0(int64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  if (v1[24] != 1)
  {
    return 1;
  }

  v13 = *(*v1 + 192);
  result = v13(v10);
  if (!result)
  {
    goto LABEL_16;
  }

  v15 = [result currentAllocatedSize];
  v16 = swift_unknownObjectRelease();
  result = (v13)(v16);
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = [result usedSize];
  result = swift_unknownObjectRelease();
  v18 = v15 - v17;
  if (__OFSUB__(v15, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 >= a1)
  {
    return 1;
  }

  v19 = sub_245FA32CC();
  v20 = v5 + 2;
  v37 = v5[2];
  v38 = v19;
  v37(v12);
  v21 = sub_2460918D4();
  v22 = sub_246091FA4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v35[1] = v20;
    v26 = v25;
    v40[0] = v25;
    *v24 = 136381187;
    *(v24 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A4BD0, v40);
    *(v24 + 12) = 2050;
    *(v24 + 14) = a1;
    *(v24 + 22) = 2049;
    *(v24 + 24) = v18;
    _os_log_impl(&dword_245F8A000, v21, v22, "MeshBuffer.%{private}s: Cannot allocate %{public}ld bytes on the heap since the heap only has %{private}ld bytes available!", v24, 0x20u);
    sub_245F8E6F4(v26);
    MEMORY[0x24C1989D0](v26, -1, -1);
    v27 = v24;
    v5 = v36;
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  v28 = v5[1];
  v28(v12, v4);
  result = swift_beginAccess();
  if (!*(v2 + 6))
  {
    goto LABEL_18;
  }

  result = swift_beginAccess();
  v29 = *(v2 + 7);
  if (!v29)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v30 = *(v2 + 6);
  *(v2 + 6) = v29;
  *(v2 + 7) = v30;
  (v37)(v8, v38, v4);
  v31 = sub_2460918D4();
  v32 = sub_246091FC4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136380675;
    *(v33 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A4BD0, &v39);
    _os_log_impl(&dword_245F8A000, v31, v32, "MeshBuffer.%{private}s: Swapped heaps!", v33, 0xCu);
    sub_245F8E6F4(v34);
    MEMORY[0x24C1989D0](v34, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  v28(v8, v4);
  return 0;
}

uint64_t sub_246084AC4()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = (*(*v0 + 192))(v7);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 currentAllocatedSize];
    result = [v11 usedSize];
    v14 = 100 * result;
    if ((result * 100) >> 64 == (100 * result) >> 63)
    {
      v15 = sub_245FA32CC();
      (*(v2 + 16))(v9, v15, v1);
      swift_unknownObjectRetain();
      v16 = sub_2460918D4();
      v17 = sub_246091FC4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = v14 / v12;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136381699;
        *(v19 + 4) = sub_245F8D3C0(0x5370616548676F6CLL, 0xEE00292873746174, &v27);
        *(v19 + 12) = 2049;
        *(v19 + 14) = v18;
        *(v19 + 22) = 2049;
        *(v19 + 24) = [v11 size];
        *(v19 + 32) = 2049;
        *(v19 + 34) = [v11 currentAllocatedSize];
        *(v19 + 42) = 2049;
        *(v19 + 44) = [v11 usedSize];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_245F8A000, v16, v17, "MeshBuffer.%{private}s: Heap stats: used = %{private}f%%, size = %{private}ld bytes, allocated size = %{private}ld bytes, used size = %{private}ld bytes", v19, 0x34u);
        sub_245F8E6F4(v20);
        MEMORY[0x24C1989D0](v20, -1, -1);
        MEMORY[0x24C1989D0](v19, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v2 + 8))(v9, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_245FA32CC();
    (*(v2 + 16))(v5, v21, v1);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0x5370616548676F6CLL, 0xEE00292873746174, &v27);
      _os_log_impl(&dword_245F8A000, v22, v23, "MeshBuffer.%{private}s: Not using heap!", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_246084EA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_246084EEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2460850B4(a1);

  *a2 = v3;
  return result;
}

void type metadata accessor for MTLResourceOptions()
{
  if (!qword_27EE3B0B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3B0B8);
    }
  }
}

uint64_t sub_246085070(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTLResourceOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2460850B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void __swiftcall wideToDepthCameraTransform()(simd_float4x4 *__return_ptr retstr)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  if (byte_27EE3B190)
  {
    v9 = *(MEMORY[0x277D860B8] + 16);
    v10 = *(MEMORY[0x277D860B8] + 32);
    v11 = *(MEMORY[0x277D860B8] + 48);
    v28 = *MEMORY[0x277D860B8];
    v29 = v28;
    v26 = v10;
    v27 = v9;
    v30 = v9;
    v31 = v10;
    v25 = v11;
    v32 = v11;
    if (OCNonModularSPI_GetWideToDepthTransform() || (sub_2460233E8(v29, v30, v31, v32) & 1) == 0)
    {
      v19 = sub_245FA3174();
      (*(v2 + 16))(v5, v19, v1);
      v20 = sub_2460918D4();
      v21 = sub_246091FB4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v33[0] = v23;
        *v22 = 136380675;
        *(v22 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4CB0, v33);
        _os_log_impl(&dword_245F8A000, v20, v21, "%{private}s: Failed to obtain wide to depth camera transform, using identity instead.", v22, 0xCu);
        sub_245F8E6F4(v23);
        MEMORY[0x24C1989D0](v23, -1, -1);
        MEMORY[0x24C1989D0](v22, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      LOBYTE(v33[0]) = 0;
      xmmword_27EE3B150 = v28;
      unk_27EE3B160 = v27;
      v18 = v25;
      v17 = v26;
    }

    else
    {
      v12 = sub_245FA3174();
      (*(v2 + 16))(v8, v12, v1);
      v13 = sub_2460918D4();
      v14 = sub_246091FC4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33[0] = v16;
        *v15 = 136380675;
        *(v15 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4CB0, v33);
        _os_log_impl(&dword_245F8A000, v13, v14, "%{private}s: Obtained wide to depth camera transform.", v15, 0xCu);
        sub_245F8E6F4(v16);
        MEMORY[0x24C1989D0](v16, -1, -1);
        MEMORY[0x24C1989D0](v15, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
      v17 = v31;
      v18 = v32;
      LOBYTE(v33[0]) = 0;
      xmmword_27EE3B150 = v29;
      unk_27EE3B160 = v30;
    }

    xmmword_27EE3B170 = v17;
    xmmword_27EE3B180 = v18;
    byte_27EE3B190 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
}

__n128 OCBoundingBox.transform.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

double OCBoundingBox.scaledTransform(scale:)(float32x4_t a1)
{
  v2 = vmulq_lane_f32(*(v1 + 16), *a1.f32, 1);
  v3 = *(v1 + 48);
  v4 = vmulq_laneq_f32(*(v1 + 32), a1, 2);
  *&result = vmulq_n_f32(*v1, a1.f32[0]).u64[0];
  return result;
}

float32x2_t OCBoundingBox.extent.getter()
{
  v1 = vmulq_f32(*v0, *v0);
  v2 = vmulq_f32(v0[1], v0[1]);
  result = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v1, v1, 8uLL), *&vextq_s8(v2, v2, 8uLL)), vadd_f32(vzip1_s32(*v1.i8, *v2.i8), vzip2_s32(*v1.i8, *v2.i8))));
  v4 = vmulq_f32(v0[2], v0[2]);
  return result;
}

float32x4_t OCBoundingBox.rotation.getter@<Q0>(float32x4_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = vmulq_f32(*v1, *v1);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  result = vmulq_n_f32(*v1, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vmulq_f32(v2, v2);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  v7.i32[0] = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).u32[0];
  v9 = vmulq_f32(v3, v3);
  v10 = vaddv_f32(*v9.f32);
  v11 = vmulq_n_f32(v2, v7.f32[0]);
  *v7.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10));
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32)));
  *a1 = result;
  a1[1] = v11;
  a1[2] = vmulq_n_f32(v3, vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  return result;
}

uint64_t OCBoundingBox.dict.getter()
{
  sub_246020FBC(*v0, *(v0 + 16), *(v0 + 32), *(v0 + 48));
  v2 = v1;
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  *(inited + 32) = 0x726F66736E617274;
  *(inited + 40) = 0xE90000000000006DLL;
  v4 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 88) = 0xEA00000000006563;
  *(inited + 96) = 0x3FF0000000000000;
  sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  v5 = sub_246091B34();

  return v5;
}

__n128 OCBoundingBox.init(position:extent:rotation:)@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, __n128 result@<Q0>, float32x4_t a4@<Q1>)
{
  v4 = a1[1];
  v5 = a1[2];
  *&v6 = vmulq_n_f32(*a1, a4.f32[0]).u64[0];
  *(&v6 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(a4.f32[0], *a1, 2));
  *&v7 = vmuls_lane_f32(a4.f32[1], v4, 2);
  v4.i64[0] = vmulq_lane_f32(v4, *a4.f32, 1).u64[0];
  v4.i64[1] = v7;
  v8 = vmulq_f32(v5, a4);
  *&v9 = vmulq_laneq_f32(v5, a4, 2).u64[0];
  *(&v9 + 1) = v8.u32[2];
  result.n128_u32[3] = 1.0;
  *a2 = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = result;
  return result;
}

void __swiftcall OCBoundingBox.init(transform:)(CoreOC::OCBoundingBox *__return_ptr retstr, simd_float4x4 *transform)
{
  retstr->transform.columns[0] = v2;
  retstr->transform.columns[1] = v3;
  retstr->transform.columns[2] = v4;
  retstr->transform.columns[3] = v5;
}

float OCBoundingBox.scale(_:)@<S0>(float32x4_t *a1@<X8>, float32x4_t a2@<Q0>)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = vmulq_f32(*v2, *v2);
  v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
  v7 = sqrtf(v6.f32[0]);
  v8 = vmulq_f32(v3, v3);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = sqrtf(v8.f32[0]);
  v10 = vmulq_f32(v5, v5);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = v6.i32[0];
  *v6.f32 = vrsqrte_f32(v6.u32[0]);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v11, vmul_f32(*v6.f32, *v6.f32)));
  v12 = vmulq_n_f32(*v2, vmul_f32(*v6.f32, vrsqrts_f32(v11, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v6.i32[0] = v8.i32[0];
  *v8.f32 = vrsqrte_f32(v8.u32[0]);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v8.f32, *v8.f32)));
  v13 = vmulq_n_f32(v3, vmul_f32(*v8.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  *v6.f32 = vrsqrte_f32(v10.u32[0]);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v6.f32, *v6.f32)));
  v14 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v6.f32[0] = v7 * a2.f32[0];
  v15 = vmuls_lane_f32(v9, *a2.f32, 1);
  v16 = vmuls_lane_f32(sqrtf(v10.f32[0]), a2, 2);
  *v8.f32 = vmul_n_f32(*v12.f32, v6.f32[0]);
  v8.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v6.f32[0], v12, 2));
  *v12.f32 = vmul_n_f32(*v13.f32, v15);
  v12.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v15, v13, 2));
  *v13.f32 = vmul_n_f32(*v14.f32, v16);
  v13.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v16, v14, 2));
  result = 1.0;
  v4.i32[3] = 1.0;
  *a1 = v8;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v4;
  return result;
}

uint64_t sub_24608585C(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  v23 = *(v1 + 16);
  v24 = v8;
  v9 = *(v1 + 32);
  v21 = *(v1 + 48);
  v22 = v9;
  v10 = sub_245FA3174();
  (*(v4 + 16))(v7, v10, v3);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 134349314;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2082;
    v15 = sub_246020FBC(v24, v23, v22, v21);
    v16 = MEMORY[0x24C196760](v15);
    v18 = v17;

    v19 = sub_245F8D3C0(v16, v18, &v25);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_245F8A000, v11, v12, "Bounding Box: Segment = %{public}ld, Bounding box transform = %{public}s", v13, 0x16u);
    sub_245F8E6F4(v14);
    MEMORY[0x24C1989D0](v14, -1, -1);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t OCDepthPointCloud.bankIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t OCDepthPointCloud.spotIds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t OCDepthPointCloud.echoIds.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t OCDepthPointCloud.euclideanDistances.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t OCDepthPointCloud.confidences.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t OCDepthPointCloud.intensities.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t OCDepthPointCloud.signalToNoiseRatios.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t OCDepthPointCloud.uv.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t OCDepthPointCloud.xyz.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

void OCDepthPointCloud.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
}

uint64_t OCDepthPointCloud.init(bankIds:spotIds:echoIds:euclideanDistances:confidences:intensities:signalToNoiseRatios:uv:xyz:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

__n128 OCDepthPointCloud.append(bankId:spotId:echoId:euclideanDistance:confidence:intensity:signalToNoiseRatio:uv:xyz:)(char a1, char a2, char a3, float a4, float a5, float a6, float a7, double a8, double a9, __n128 a10)
{
  v20 = *v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_245F8D874(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_245F8D874((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v20[v22 + 32] = a1;
  *v10 = v20;
  v23 = v10[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_245F8D874(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_245F8D874((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v23[v25 + 32] = a2;
  v10[1] = v23;
  v26 = v10[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_245F8D874(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_245F8D874((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v26[v28 + 32] = a3;
  v10[2] = v26;
  v29 = v10[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_245FB1254(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_245FB1254((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  *&v29[4 * v31 + 32] = a4;
  v10[3] = v29;
  v32 = v10[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_245FB1254(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_245FB1254((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  *&v32[4 * v34 + 32] = a5;
  v10[4] = v32;
  v35 = v10[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_245FB1254(0, *(v35 + 2) + 1, 1, v35);
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_245FB1254((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  *&v35[4 * v37 + 32] = a6;
  v10[5] = v35;
  v38 = v10[6];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_245FB1254(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_245FB1254((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  *&v38[4 * v40 + 32] = a7;
  v10[6] = v38;
  v41 = v10[7];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_246026288(0, *(v41 + 2) + 1, 1, v41);
  }

  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_246026288((v42 > 1), v43 + 1, 1, v41);
  }

  *(v41 + 2) = v43 + 1;
  v44 = &v41[16 * v43];
  *(v44 + 4) = a8;
  *(v44 + 5) = a9;
  v10[7] = v41;
  v45 = v10[8];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_245FA26DC(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_245FA26DC((v46 > 1), v47 + 1, 1, v45);
  }

  *(v45 + 2) = v47 + 1;
  result = a10;
  *&v45[16 * v47 + 32] = a10;
  v10[8] = v45;
  return result;
}

Swift::Void __swiftcall OCDepthPointCloud.remove(at:)(Swift::Int at)
{
  if (*(*v1 + 16) > at)
  {
    sub_2460862A4(at);
    sub_2460862A4(at);
    sub_2460862A4(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_2460863B0(at);
    sub_24608643C(at);
  }
}

uint64_t sub_2460862A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C0C0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_246086328(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C0AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 4 * a1;
    v8 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_2460863B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C098(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    result = memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_24608643C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C084(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t OCPointCloud.points.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 OCPointCloud.transform.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

void OCPointCloud.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

unint64_t _s6CoreOC12OCVoxelCloudV6voxels9transformACSaySo0C0aG_So13simd_float4x4atcfC_0@<X0>(unint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  a2->n128_u64[0] = result;
  a2[1] = a3;
  a2[2] = a4;
  a2[3] = a5;
  a2[4] = a6;
  return result;
}

uint64_t OCTriangleMesh.indexBuffer.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_246086638@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  a3->n128_u64[0] = result;
  a3->n128_u64[1] = a2;
  a3[1] = a4;
  a3[2] = a5;
  a3[3] = a6;
  a3[4] = a7;
  return result;
}

void *sub_246086648@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *a9 = a10;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v13 = *(a5 + 48);
  *(a9 + 64) = *(a5 + 32);
  *(a9 + 80) = v13;
  v14 = *(a5 + 64);
  v15 = *(a5 + 16);
  *(a9 + 32) = *a5;
  *(a9 + 48) = v15;
  *(a9 + 96) = v14;
  *(a9 + 104) = a6;
  result = memcpy((a9 + 112), __src, 0x118uLL);
  *(a9 + 392) = a7;
  *(a9 + 400) = a8;
  return result;
}

void *sub_2460866B4@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  v4 = *a1;
  *(a3 + 24) = a1[1];
  v5 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a1 + 8);
  *(a3 + 8) = v4;
  return memcpy((a3 + 80), a2, 0x118uLL);
}

__n128 sub_2460866E4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>, __n128 a8@<Q4>, __n128 a9@<Q5>, __n128 a10@<Q6>, __n128 a11@<Q7>, __n128 a12)
{
  *&v24[32] = a7;
  *&v24[48] = a8;
  *v24 = a5;
  *&v24[16] = a6;
  v16 = sub_246091834();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a3, a1, v16);
  v18 = type metadata accessor for OCObjectCentricPoseNode(0);
  *(a3 + v18[5]) = a4;
  v19 = (a3 + v18[6]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  *(a3 + v18[7]) = *v24;
  v28 = __invert_f4(*v24);
  *&v24[32] = v28.columns[1];
  *&v24[48] = v28.columns[0];
  *v24 = v28.columns[3];
  *&v24[16] = v28.columns[2];
  (*(v17 + 8))(a1, v16);
  v21 = (a3 + v18[8]);
  *v21 = *&v24[48];
  v21[1] = *&v24[32];
  v21[2] = *&v24[16];
  v21[3] = *v24;
  v22 = (a3 + v18[9]);
  *v22 = a9;
  v22[1] = a10;
  v22[2] = a11;
  result = a12;
  v22[3] = a12;
  return result;
}

__n128 sub_24608686C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>, __n128 a8@<Q4>)
{
  v12 = sub_246091834();
  (*(*(v12 - 8) + 32))(a3, a1, v12);
  v13 = type metadata accessor for VIOPoseNode(0);
  *(a3 + v13[5]) = a4;
  v14 = (a3 + v13[6]);
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  v16 = (a3 + v13[7]);
  *v16 = a5;
  v16[1] = a6;
  result = a8;
  v16[2] = a7;
  v16[3] = a8;
  return result;
}

Swift::Void __swiftcall GeoDebugData.reset()()
{
  *v0 = 0xBF8000007F800000;
  v0[1] = 0xBFF0000000000000;
  v0[2] = 0xBF8000007F800000;
  v0[3] = 0xBFF0000000000000;
  v0[4] = 0xBF8000007F800000;
  v0[5] = 0xBFF0000000000000;
  v0[6] = 0xBF8000007F800000;
  v0[7] = 0xBFF0000000000000;
}

double sub_246086C34@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xBF8000007F800000;
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = 0xBF8000007F800000;
  *(a1 + 24) = 0xBFF0000000000000;
  *(a1 + 32) = 0xBF8000007F800000;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = 0xBF8000007F800000;
  *(a1 + 56) = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 64) = result;
  *(a1 + 72) = -1082130432;
  return result;
}

uint64_t sub_246086C74(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_246086CB4(a1);
  return v5;
}

uint64_t sub_246086CB4(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 88) = sub_24608DA6C(MEMORY[0x277D84F90]);
  *(v1 + 96) = sub_24608DC88(v3);
  sub_2460917A4();
  *(v1 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_vioClosenessCheckLogIntervalThresh) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) = 0;
  if (*(a1 + 64))
  {
    v4 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v4;
    *(v1 + 80) = *(a1 + 64);
    v5 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v5;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v16.columns[3] = *(a1 + 48);
    v8 = vmulq_f32(*a1, *a1);
    *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
    v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
    v9 = vrsqrte_f32(v8.u32[0]);
    v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
    v16.columns[0] = vmulq_n_f32(*a1, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
    v11 = vmulq_f32(v6, v6);
    *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    v11.i32[0] = vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).u32[0];
    v12 = vrsqrte_f32(v11.u32[0]);
    v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
    v11.i32[0] = vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).u32[0];
    v14 = vmulq_f32(v7, v7);
    *v14.i8 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
    v16.columns[1] = vmulq_n_f32(v6, *v11.i32);
    v11.i32[0] = vadd_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).u32[0];
    *v14.i8 = vrsqrte_f32(v11.u32[0]);
    *v14.i8 = vmul_f32(*v14.i8, vrsqrts_f32(v11.u32[0], vmul_f32(*v14.i8, *v14.i8)));
    v16.columns[2] = vmulq_n_f32(v7, vmul_f32(*v14.i8, vrsqrts_f32(v11.u32[0], vmul_f32(*v14.i8, *v14.i8))).f32[0]);
    *(v1 + 16) = __invert_f4(v16);
    *(v1 + 80) = 0;
  }

  return v1;
}

uint64_t sub_246086E1C(uint64_t a1)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  swift_beginAccess();
  v15 = *(v1 + 88);
  if (*(v15 + 16))
  {

    v16 = sub_245FC1BDC(a1);
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = type metadata accessor for OCObjectCentricPoseNode(0);
      v21 = *(v20 - 8);
      sub_24608DEA4(v19 + *(v21 + 72) * v18, v14, type metadata accessor for OCObjectCentricPoseNode);

      (*(v21 + 56))(v14, 0, 1, v20);
      sub_245F8E744(v14, &qword_27EE3B1B8, &qword_24609B680);
      return 0;
    }
  }

  v23 = type metadata accessor for OCObjectCentricPoseNode(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v14, 1, 1, v23);
  sub_245F8E744(v14, &qword_27EE3B1B8, &qword_24609B680);
  (*(v4 + 16))(v7, a1, v3);
  sub_24608DEA4(a1, v11, type metadata accessor for OCObjectCentricPoseNode);
  v24(v11, 0, 1, v23);
  swift_beginAccess();
  sub_246087138(v11, v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_246087138(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for OCObjectCentricPoseNode(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3B1B8, &qword_24609B680);
    sub_24608C0D4(a2, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode, sub_24608D3D4, v8);
    v15 = sub_246091834();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_245F8E744(v8, &qword_27EE3B1B8, &qword_24609B680);
  }

  else
  {
    sub_24608DF0C(a1, v13, type metadata accessor for OCObjectCentricPoseNode);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_24608CEE8(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_246091834();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_246087398(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for VIOPoseNode(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3B1C0, &qword_24609B688);
    sub_24608C0D4(a2, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode, sub_24608D700, v8);
    v15 = sub_246091834();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_245F8E744(v8, &qword_27EE3B1C0, &qword_24609B688);
  }

  else
  {
    sub_24608DF0C(a1, v13, type metadata accessor for VIOPoseNode);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_24608D0E4(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_246091834();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_2460875F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-v14];
  swift_beginAccess();
  v16 = *(v1 + 96);
  if (*(v16 + 16))
  {

    v17 = sub_245FC1BDC(a1);
    if (v18)
    {
      v19 = v17;
      v20 = *(v16 + 56);
      v21 = type metadata accessor for VIOPoseNode(0);
      v22 = *(v21 - 8);
      sub_24608DEA4(v20 + *(v22 + 72) * v19, v15, type metadata accessor for VIOPoseNode);

      (*(v22 + 56))(v15, 0, 1, v21);
      sub_245F8E744(v15, &qword_27EE3B1C0, &qword_24609B688);
      return 0;
    }
  }

  v24 = type metadata accessor for VIOPoseNode(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v15, 1, 1, v24);
  sub_245F8E744(v15, &qword_27EE3B1C0, &qword_24609B688);
  (*(v5 + 16))(v8, a1, v4);
  sub_24608DEA4(a1, v12, type metadata accessor for VIOPoseNode);
  v25(v12, 0, 1, v24);
  swift_beginAccess();
  sub_246087398(v12, v8);
  swift_endAccess();
  result = 1;
  *(v2 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) = 1;
  return result;
}

uint64_t sub_246087918(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  swift_beginAccess();
  v22 = *(v1 + 88);
  if (!*(v22 + 16))
  {
LABEL_5:
    v34 = type metadata accessor for OCObjectCentricPoseNode(0);
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    sub_245F8E744(v21, &qword_27EE3B1B8, &qword_24609B680);
    swift_beginAccess();
    v35 = *(v2 + 96);
    if (*(v35 + 16))
    {
      v36 = *(v2 + 96);

      v37 = sub_245FC1BDC(a1);
      if (v38)
      {
        v39 = v37;
        v49 = a1;
        v50 = v10;
        v40 = *(v35 + 56);
        v41 = type metadata accessor for VIOPoseNode(0);
        v42 = v14;
        v43 = v11;
        v44 = *(v41 - 8);
        sub_24608DEA4(v40 + *(v44 + 72) * v39, v9, type metadata accessor for VIOPoseNode);

        v45 = *(v44 + 56);
        v32 = 1;
        v45(v9, 0, 1, v41);
        sub_245F8E744(v9, &qword_27EE3B1C0, &qword_24609B688);
        (*(v43 + 16))(v42, v49, v50);
        v46 = v51;
        v45(v51, 1, 1, v41);
        swift_beginAccess();
        sub_246087398(v46, v42);
        swift_endAccess();
        return v32;
      }
    }

    v47 = type metadata accessor for VIOPoseNode(0);
    (*(*(v47 - 8) + 56))(v9, 1, 1, v47);
    sub_245F8E744(v9, &qword_27EE3B1C0, &qword_24609B688);
    return 0;
  }

  v23 = sub_245FC1BDC(a1);
  if ((v24 & 1) == 0)
  {

    goto LABEL_5;
  }

  v25 = v23;
  v26 = *(v22 + 56);
  v27 = type metadata accessor for OCObjectCentricPoseNode(0);
  v50 = v10;
  v51 = v14;
  v28 = v27;
  v29 = a1;
  v30 = *(v27 - 8);
  sub_24608DEA4(v26 + *(v30 + 72) * v25, v21, type metadata accessor for OCObjectCentricPoseNode);

  v31 = *(v30 + 56);
  v32 = 1;
  v31(v21, 0, 1, v28);
  sub_245F8E744(v21, &qword_27EE3B1B8, &qword_24609B680);
  v33 = v51;
  (*(v11 + 16))(v51, v29, v50);
  v31(v18, 1, 1, v28);
  swift_beginAccess();
  sub_246087138(v18, v33);
  swift_endAccess();
  return v32;
}

uint64_t sub_246087E4C(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v117 = a5;
  v116 = a4;
  v115 = a3;
  v114 = a2;
  v8 = type metadata accessor for VIOPoseNode(0);
  v122 = *(v8 - 8);
  v123 = v8;
  v9 = *(v122 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OCObjectCentricPoseNode(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v109 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091834();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v15);
  v118 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v119 = &v108 - v19;
  v20 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v110 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v111 = &v108 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v108 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v108 - v29;
  v31 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v112 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v113 = &v108 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v108 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v108 - v40;
  swift_beginAccess();
  v42 = *(v5 + 88);
  if (*(v42 + 16))
  {

    v43 = sub_245FC1BDC(a1);
    if (v44)
    {
      sub_24608DEA4(*(v42 + 56) + *(v12 + 72) * v43, v41, type metadata accessor for OCObjectCentricPoseNode);

      v45 = *(v12 + 56);
      v45(v41, 0, 1, v11);
      v46 = &qword_27EE3B1B8;
      v47 = &qword_24609B680;
      v48 = v41;
      goto LABEL_8;
    }
  }

  v45 = *(v12 + 56);
  v45(v41, 1, 1, v11);
  sub_245F8E744(v41, &qword_27EE3B1B8, &qword_24609B680);
  swift_beginAccess();
  v49 = *(v6 + 96);
  if (!*(v49 + 16))
  {
LABEL_15:
    (*(v122 + 56))(v30, 1, 1, v123);
    sub_245F8E744(v30, &qword_27EE3B1C0, &qword_24609B688);
    return 0;
  }

  v50 = *(v6 + 96);

  v51 = sub_245FC1BDC(a1);
  if ((v52 & 1) == 0)
  {

    goto LABEL_15;
  }

  v53 = v122;
  sub_24608DEA4(*(v49 + 56) + *(v122 + 72) * v51, v30, type metadata accessor for VIOPoseNode);

  (*(v53 + 56))(v30, 0, 1, v123);
  v46 = &qword_27EE3B1C0;
  v47 = &qword_24609B688;
  v48 = v30;
LABEL_8:
  sub_245F8E744(v48, v46, v47);
  v54 = *(v6 + 88);
  if (*(v54 + 16))
  {
    v55 = *(v6 + 88);

    v56 = sub_245FC1BDC(a1);
    if (v57)
    {
      v30 = *(v12 + 72);
      sub_24608DEA4(*(v54 + 56) + v30 * v56, v38, type metadata accessor for OCObjectCentricPoseNode);

      v123 = v12 + 56;
      v45(v38, 0, 1, v11);
      sub_245F8E744(v38, &qword_27EE3B1B8, &qword_24609B680);
      swift_beginAccess();
      v58 = *(v6 + 88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v119;
      (*(v120 + 16))(v119, a1, v121);
      v125 = *(v6 + 88);
      v60 = v125;
      *(v6 + 88) = 0x8000000000000000;
      v62 = sub_245FC1BDC(v27);
      v63 = *(v60 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (!__OFADD__(v63, v64))
      {
        LOBYTE(v27) = v61;
        if (*(v60 + 24) < v65)
        {
          sub_24608C294(v65, isUniquelyReferenced_nonNull_native);
          v66 = sub_245FC1BDC(v119);
          if ((v27 & 1) != (v67 & 1))
          {
            goto LABEL_47;
          }

          v62 = v66;
LABEL_27:
          v86 = v113;
          if (v27)
          {
            v87 = v125;
            sub_24608DF0C(*(v125 + 56) + v62 * v30, v113, type metadata accessor for OCObjectCentricPoseNode);
            v45(v86, 0, 1, v11);
            v88 = (v86 + *(v11 + 36));
            v89 = v115;
            *v88 = v114;
            v88[1] = v89;
            v90 = v117;
            v88[2] = v116;
            v88[3] = v90;
            v91 = v112;
            sub_245F8E7A4(v86, v112, &qword_27EE3B1B8, &qword_24609B680);
            if ((*(v12 + 48))(v91, 1, v11) == 1)
            {
              sub_245F8E744(v91, &qword_27EE3B1B8, &qword_24609B680);
              v92 = v121;
              v93 = *(v120 + 8);
              v93(*(v87 + 48) + *(v120 + 72) * v62, v121);
              sub_24608CBAC(v62, v87, type metadata accessor for OCObjectCentricPoseNode);
              v93(v119, v92);
            }

            else
            {
              v94 = v109;
              sub_24608DF0C(v91, v109, type metadata accessor for OCObjectCentricPoseNode);
              sub_24608DF0C(v94, *(v87 + 56) + v62 * v30, type metadata accessor for OCObjectCentricPoseNode);
              (*(v120 + 8))(v119, v121);
            }

            sub_245F8E744(v86, &qword_27EE3B1B8, &qword_24609B680);
            *(v6 + 88) = v87;
LABEL_38:
            swift_endAccess();
            return 1;
          }

          v45(v113, 1, 1, v11);
          __break(1u);
LABEL_47:
          result = sub_246092424();
          __break(1u);
          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

LABEL_43:
        sub_24608D3D4();
        goto LABEL_27;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v45(v38, 1, 1, v11);
  sub_245F8E744(v38, &qword_27EE3B1B8, &qword_24609B680);
  swift_beginAccess();
  v69 = *(v6 + 96);
  if (*(v69 + 16))
  {
    v70 = *(v6 + 96);

    v71 = sub_245FC1BDC(a1);
    if ((v72 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v73 = v122;
    v11 = *(v122 + 72);
    sub_24608DEA4(*(v69 + 56) + v11 * v71, v27, type metadata accessor for VIOPoseNode);

    v62 = *(v73 + 56);
    (v62)(v27, 0, 1, v123);
    sub_245F8E744(v27, &qword_27EE3B1C0, &qword_24609B688);
    swift_beginAccess();
    v74 = *(v6 + 96);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v76 = a1;
    v77 = v75;
    v78 = v118;
    (*(v120 + 16))(v118, v76, v121);
    v124 = *(v6 + 96);
    v79 = v124;
    *(v6 + 96) = 0x8000000000000000;
    v12 = sub_245FC1BDC(v78);
    v81 = *(v79 + 16);
    v82 = (v80 & 1) == 0;
    v83 = v81 + v82;
    if (__OFADD__(v81, v82))
    {
      goto LABEL_42;
    }

    v27 = v80;
    if (*(v79 + 24) < v83)
    {
      sub_24608C720(v83, v77);
      v84 = sub_245FC1BDC(v118);
      if ((v27 & 1) != (v85 & 1))
      {
        goto LABEL_47;
      }

      v12 = v84;
      if ((v27 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_34:
      v95 = v124;
      v96 = v12 * v11;
      v97 = *(v124 + 56) + v12 * v11;
      v98 = v111;
      sub_24608DF0C(v97, v111, type metadata accessor for VIOPoseNode);
      v99 = v123;
      (v62)(v98, 0, 1, v123);
      v100 = (v98 + *(v99 + 28));
      v101 = v115;
      *v100 = v114;
      v100[1] = v101;
      v102 = v117;
      v100[2] = v116;
      v100[3] = v102;
      v103 = v110;
      sub_245F8E7A4(v98, v110, &qword_27EE3B1C0, &qword_24609B688);
      if ((*(v122 + 48))(v103, 1, v99) == 1)
      {
        sub_245F8E744(v103, &qword_27EE3B1C0, &qword_24609B688);
        v104 = v121;
        v105 = *(v120 + 8);
        v105(*(v95 + 48) + *(v120 + 72) * v12, v121);
        sub_24608CBAC(v12, v95, type metadata accessor for VIOPoseNode);
        v105(v118, v104);
      }

      else
      {
        v106 = v103;
        v107 = v108;
        sub_24608DF0C(v106, v108, type metadata accessor for VIOPoseNode);
        sub_24608DF0C(v107, *(v95 + 56) + v96, type metadata accessor for VIOPoseNode);
        (*(v120 + 8))(v118, v121);
      }

      sub_245F8E744(v98, &qword_27EE3B1C0, &qword_24609B688);
      *(v6 + 96) = v95;
      goto LABEL_38;
    }

    if (v77)
    {
      if (v80)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_24608D700();
      if (v27)
      {
        goto LABEL_34;
      }
    }

LABEL_23:
    (v62)(v111, 1, 1, v123);
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  (*(v122 + 56))(v27, 1, 1, v123);
  sub_245F8E744(v27, &qword_27EE3B1C0, &qword_24609B688);
  return 1;
}

uint64_t sub_246088AAC()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  *(v0 + 88) = MEMORY[0x277D84F98];
}

uint64_t sub_246088AF0()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  *(v0 + 96) = MEMORY[0x277D84F98];
}

uint64_t sub_246088B34(simd_float4x4 *a1, void (*a2)(char *, uint64_t), uint64_t a3, float *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v9 = v8;
  v201 = a3;
  v202 = a2;
  v197 = a8;
  v196 = a7;
  v195 = a6;
  v194 = a5;
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2460919E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v172 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v177 = &v169 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v169 - v24;
  v190.i64[0] = type metadata accessor for VIOPoseNode(0);
  v186 = *(v190.i64[0] - 8);
  v26 = *(v186 + 64);
  MEMORY[0x28223BE20](v190.i64[0]);
  v189.i64[0] = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v185 = &v169 - v29;
  v30 = sub_245F8E624(&qword_27EE3B1C8, &qword_24609B690);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v198.i64[0] = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v188 = (&v169 - v34);
  v35 = sub_246091AA4();
  v191.i64[0] = *(v35 - 8);
  v36 = *(v191.i64[0] + 64);
  MEMORY[0x28223BE20](v35);
  v176 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v180 = &v169 - v39;
  v193 = type metadata accessor for OCObjectCentricPoseNode(0);
  v183 = *(v193 - 1);
  v40 = *(v183 + 64);
  MEMORY[0x28223BE20](v193);
  v192 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v181 = &v169 - v43;
  v203 = sub_246091834();
  v200 = *(v203 - 8);
  v44 = *(v200 + 64);
  MEMORY[0x28223BE20](v203);
  v199 = &v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_245F8E624(&qword_27EE3B1D0, &qword_24609B698);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v184 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v187 = &v169 - v50;
  *a4 = 0xBF8000007F800000;
  *(a4 + 1) = 0xBFF0000000000000;
  *(a4 + 2) = 0xBF8000007F800000;
  *(a4 + 3) = 0xBFF0000000000000;
  *(a4 + 4) = 0xBF8000007F800000;
  *(a4 + 5) = 0xBFF0000000000000;
  *(a4 + 6) = 0xBF8000007F800000;
  v182 = a4;
  *(a4 + 7) = 0xBFF0000000000000;
  if (a1[1].columns[0].i8[0] & 1) != 0 || (v9[5].i8[0])
  {
    v179 = v35;
    v173 = v25;
    v174 = v16;
    v169 = v18;
    v170 = v17;
    v171 = v13;
    v175 = v12;
    sub_246091A84();
    swift_beginAccess();
    v178 = v9;
    v51 = v9[6].i64[0];
    v52 = v51 + 64;
    v53 = 1 << v51[32];
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v51 + 8);
    v181 = (v53 + 63) >> 6;
    v184 = (v200 + 16);
    v183 = v200 + 32;
    v193 = (v200 + 8);
    v187 = v51;

    v57 = 0;
    v58 = INFINITY;
    v59 = INFINITY;
    v60 = INFINITY;
    v61 = INFINITY;
    v62 = v191.i64[0];
    v63 = v190.i64[0];
    v64 = v189.i64[0];
    v65 = v188;
    v192 = v52;
    while (v55)
    {
      v66 = v57;
LABEL_18:
      v69 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v70 = v69 | (v66 << 6);
      v71 = v187;
      v72 = v200;
      v73 = v199;
      v74 = v203;
      (*(v200 + 16))(v199, *(v187 + 6) + *(v200 + 72) * v70, v203);
      v75 = v185;
      sub_24608DEA4(*(v71 + 7) + *(v186 + 72) * v70, v185, type metadata accessor for VIOPoseNode);
      v76 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
      v77 = *(v76 + 48);
      v78 = *(v72 + 32);
      v79 = v198.i64[0];
      v78(v198.i64[0], v73, v74);
      sub_24608DF0C(v75, v79 + v77, type metadata accessor for VIOPoseNode);
      (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
      v62 = v191.i64[0];
      v63 = v190.i64[0];
      v64 = v189.i64[0];
      v65 = v188;
LABEL_19:
      sub_245FC5914(v79, v65, &qword_27EE3B1C8, &qword_24609B690);
      v80 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
      if ((*(*(v80 - 8) + 48))(v65, 1, v80) == 1)
      {

        v92 = v178;
        if (*(v178 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) == 1)
        {
          v203 = OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming;
          v93 = v176;
          sub_246091A84();
          v94 = v173;
          sub_246091A94();
          v96 = *(v62 + 8);
          v95 = v62 + 8;
          v202 = v96;
          v96(v93, v179);
          v97 = sub_245FA3174();
          v98 = v171;
          (*(v171 + 16))(v174, v97, v175);
          v99 = v169;
          v100 = *(v169 + 16);
          v101 = v177;
          v102 = v94;
          v103 = v170;
          v100(v177, v102, v170);

          v104 = sub_2460918D4();
          v105 = sub_246091F94();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v191.i64[0] = v95;
            v107 = v106;
            v201 = swift_slowAlloc();
            v204 = v201;
            *v107 = 136381187;
            *(v107 + 4) = sub_245F8D3C0(0xD00000000000003DLL, 0x80000002460A4CD0, &v204);
            *(v107 + 12) = 2080;
            LODWORD(v200) = v105;
            v100(v172, v101, v103);
            v108 = sub_246091C54();
            v110 = v109;
            v111 = *(v99 + 8);
            v111(v101, v103);
            v112 = sub_245F8D3C0(v108, v110, &v204);

            *(v107 + 14) = v112;
            *(v107 + 22) = 2080;
            v92 = v178;
            v214 = *(*(v178 + 96) + 16);
            v113 = sub_2460923D4();
            v115 = sub_245F8D3C0(v113, v114, &v204);

            *(v107 + 24) = v115;
            _os_log_impl(&dword_245F8A000, v104, v200, "OCPoseGraph.%{private}s: Pose closeness check took\n%s with %s poses.", v107, 0x20u);
            v116 = v201;
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v116, -1, -1);
            MEMORY[0x24C1989D0](v107, -1, -1);

            (*(v98 + 8))(v174, v175);
            v111(v173, v103);
          }

          else
          {

            v168 = *(v99 + 8);
            v168(v101, v103);
            (*(v98 + 8))(v174, v175);
            v168(v173, v103);
          }

          v202(v180, v179);
          *(v92 + v203) = 0;
        }

        else
        {
          (*(v62 + 8))(v180, v179);
        }

        return 1;
      }

      sub_24608DF0C(v65 + *(v80 + 48), v64, type metadata accessor for VIOPoseNode);
      LOBYTE(v214) = 1;
      v213 = 1;
      v212 = 1;
      v211 = 1;
      LODWORD(v204) = 0;
      BYTE4(v204) = 1;
      v205 = 0.0;
      v206 = 1;
      v207 = 0.0;
      v208 = 1;
      v209 = 0.0;
      v210 = 1;
      if ((v202)(&v204, v194, v195, v196, v197, *(v64 + *(v63 + 28)), *(v64 + *(v63 + 28) + 16), *(v64 + *(v63 + 28) + 32), *(v64 + *(v63 + 28) + 48)))
      {

        sub_245FD01FC(v64, type metadata accessor for VIOPoseNode);
        (*(v62 + 8))(v180, v179);
        (*v193)(v65, v203);
        return 0;
      }

      v81 = *(v64 + *(v63 + 20));
      if ((v204 & 0x100000000) != 0)
      {
        v52 = v192;
      }

      else
      {
        v52 = v192;
        if ((v206 & 1) == 0)
        {
          v82 = v205;
          v83 = *&v204;
          if (*&v204 < v61)
          {
            v84 = v182;
            *v182 = v204;
            v84[1] = v82;
            v61 = v83;
            *(v84 + 1) = v81;
          }

          if (v82 < v60)
          {
            v85 = v182;
            v182[4] = v82;
            v85[5] = v83;
            v60 = v82;
            *(v85 + 3) = v81;
          }
        }
      }

      if (v210 & 1) != 0 || (v208)
      {
        sub_245FD01FC(v64, type metadata accessor for VIOPoseNode);
      }

      else
      {
        v86 = v209;
        v87 = sub_246021418(v207, -1.0, 1.0);
        v88 = acosf(v87);
        sub_245FD01FC(v64, type metadata accessor for VIOPoseNode);
        if (v59 < v88)
        {
          v89 = v182;
          v182[8] = v88;
          v89[9] = v86;
          v59 = v88;
          *(v89 + 5) = v81;
        }

        if (v86 < v58)
        {
          v90 = v182;
          v182[12] = v86;
          v90[13] = v88;
          v58 = v86;
          *(v90 + 7) = v81;
        }
      }

      result = (*v193)(v65, v203);
    }

    if (v181 <= v57 + 1)
    {
      v67 = v57 + 1;
    }

    else
    {
      v67 = v181;
    }

    v68 = v67 - 1;
    while (1)
    {
      v66 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v66 >= v181)
      {
        v91 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
        v79 = v198.i64[0];
        (*(*(v91 - 8) + 56))(v198.i64[0], 1, 1, v91);
        v55 = 0;
        v57 = v68;
        goto LABEL_19;
      }

      v55 = *&v52[8 * v66];
      ++v57;
      if (v55)
      {
        v57 = v66;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v215 = *a1;
    v198 = v9[1];
    v191 = v9[2];
    v190 = v9[3];
    v189 = v9[4];
    v216 = __invert_f4(v215);
    v117 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v216.columns[0].f32[0]), v191, *v216.columns[0].f32, 1), v190, v216.columns[0], 2), v189, v216.columns[0], 3);
    v216.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v216.columns[1].f32[0]), v191, *v216.columns[1].f32, 1), v190, v216.columns[1], 2), v189, v216.columns[1], 3);
    v216.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v216.columns[2].f32[0]), v191, *v216.columns[2].f32, 1), v190, v216.columns[2], 2), v189, v216.columns[2], 3);
    v216.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v216.columns[3].f32[0]), v191, *v216.columns[3].f32, 1), v190, v216.columns[3], 2), v189, v216.columns[3], 3);
    v194 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, v194.f32[0]), v216.columns[0], *v194.f32, 1), v216.columns[1], v194, 2), v216.columns[2], v194, 3);
    v195 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, v195.f32[0]), v216.columns[0], *v195.f32, 1), v216.columns[1], v195, 2), v216.columns[2], v195, 3);
    v196 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, v196.f32[0]), v216.columns[0], *v196.f32, 1), v216.columns[1], v196, 2), v216.columns[2], v196, 3);
    v197 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, v197.f32[0]), v216.columns[0], *v197.f32, 1), v216.columns[1], v197, 2), v216.columns[2], v197, 3);
    swift_beginAccess();
    v118 = v9[5].i64[1];
    v119 = v118 + 64;
    v120 = 1 << *(v118 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v122 = v121 & *(v118 + 64);
    v178 = (v120 + 63) >> 6;
    v180 = (v200 + 16);
    v179 = v200 + 32;
    v188 = (v200 + 8);
    v185 = v118;

    v123 = 0;
    v124 = INFINITY;
    v125 = INFINITY;
    v126 = INFINITY;
    v127 = INFINITY;
    v128 = v193;
    v129 = v192;
    v130 = v187;
    v131 = v184;
    v186 = v119;
    while (v122)
    {
      v132 = v123;
LABEL_54:
      v135 = __clz(__rbit64(v122));
      v122 &= v122 - 1;
      v136 = v135 | (v132 << 6);
      v137 = v185;
      v138 = v200;
      v139 = v199;
      v140 = v203;
      (*(v200 + 16))(v199, *(v185 + 48) + *(v200 + 72) * v136, v203);
      v141 = *(v137 + 56) + *(v183 + 72) * v136;
      v142 = v181;
      sub_24608DEA4(v141, v181, type metadata accessor for OCObjectCentricPoseNode);
      v143 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
      v144 = *(v143 + 48);
      v145 = *(v138 + 32);
      v131 = v184;
      v145(v184, v139, v140);
      sub_24608DF0C(v142, v131 + v144, type metadata accessor for OCObjectCentricPoseNode);
      (*(*(v143 - 8) + 56))(v131, 0, 1, v143);
      v128 = v193;
      v129 = v192;
      v130 = v187;
LABEL_55:
      sub_245FC5914(v131, v130, &qword_27EE3B1D0, &qword_24609B698);
      v146 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
      if ((*(*(v146 - 8) + 48))(v130, 1, v146) == 1)
      {

        return 1;
      }

      sub_24608DF0C(v130 + *(v146 + 48), v129, type metadata accessor for OCObjectCentricPoseNode);
      v147 = v128[9];
      v148 = (v129 + v128[8]);
      v149 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v148->f32)), v191, *v148, 1), v190, *v148->f32, 2), v189, *v148->f32, 3);
      v150 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v148[2].f32)), v191, v148[2], 1), v190, *v148[2].f32, 2), v189, *v148[2].f32, 3);
      v151 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v148[4].f32)), v191, v148[4], 1), v190, *v148[4].f32, 2), v189, *v148[4].f32, 3);
      v152 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*v148[6].f32)), v191, v148[6], 1), v190, *v148[6].f32, 2), v189, *v148[6].f32, 3);
      v153 = *(v129 + v147 + 48);
      v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*(v129 + v147))), v150, *(v129 + v147), 1), v151, *(v129 + v147), 2), v152, *(v129 + v147), 3);
      v155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*(v129 + v147 + 16))), v150, *(v129 + v147 + 16), 1), v151, *(v129 + v147 + 16), 2), v152, *(v129 + v147 + 16), 3);
      v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*(v129 + v147 + 32))), v150, *(v129 + v147 + 32), 1), v151, *(v129 + v147 + 32), 2), v152, *(v129 + v147 + 32), 3);
      LOBYTE(v214) = 1;
      v213 = 1;
      v212 = 1;
      v211 = 1;
      LODWORD(v204) = 0;
      BYTE4(v204) = 1;
      v205 = 0.0;
      v206 = 1;
      v207 = 0.0;
      v208 = 1;
      v209 = 0.0;
      v210 = 1;
      if ((v202)(&v204, v194, v195, v196, v197, v154, v155, v156, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, v153.f32[0]), v150, *v153.f32, 1), v151, v153, 2), v152, v153, 3)))
      {
        sub_245FD01FC(v129, type metadata accessor for OCObjectCentricPoseNode);

        (*v188)(v130, v203);
        return 0;
      }

      v157 = *(v129 + v128[5]);
      if ((v204 & 0x100000000) != 0)
      {
        v119 = v186;
      }

      else
      {
        v119 = v186;
        if ((v206 & 1) == 0)
        {
          v158 = v205;
          v159 = *&v204;
          if (*&v204 < v127)
          {
            v160 = v182;
            *v182 = v204;
            v160[1] = v158;
            v127 = v159;
            *(v160 + 1) = v157;
          }

          if (v158 < v126)
          {
            v161 = v182;
            v182[4] = v158;
            v161[5] = v159;
            v126 = v158;
            *(v161 + 3) = v157;
          }
        }
      }

      if (v210 & 1) != 0 || (v208)
      {
        sub_245FD01FC(v129, type metadata accessor for OCObjectCentricPoseNode);
      }

      else
      {
        v162 = v209;
        v163 = sub_246021418(v207, -1.0, 1.0);
        v164 = acosf(v163);
        sub_245FD01FC(v129, type metadata accessor for OCObjectCentricPoseNode);
        if (v125 < v164)
        {
          v165 = v182;
          v182[8] = v164;
          v165[9] = v162;
          v125 = v164;
          *(v165 + 5) = v157;
        }

        if (v162 < v124)
        {
          v166 = v182;
          v182[12] = v162;
          v166[13] = v164;
          v124 = v162;
          *(v166 + 7) = v157;
        }
      }

      result = (*v188)(v130, v203);
    }

    if (v178 <= v123 + 1)
    {
      v133 = v123 + 1;
    }

    else
    {
      v133 = v178;
    }

    v134 = v133 - 1;
    while (1)
    {
      v132 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v132 >= v178)
      {
        v167 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
        (*(*(v167 - 8) + 56))(v131, 1, 1, v167);
        v122 = 0;
        v123 = v134;
        goto LABEL_55;
      }

      v122 = *(v119 + 8 * v132);
      ++v123;
      if (v122)
      {
        v123 = v132;
        goto LABEL_54;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24608A16C()
{
  v1 = *(v0 + 11);

  v2 = *(v0 + 12);

  v3 = OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_vioClosenessCheckLogTime;
  v4 = sub_2460917D4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24608A26C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 44);
  *(a2 + 44) = v2;
  return sub_24608A2AC(v3);
}

uint64_t sub_24608A29C(char a1)
{
  v2 = *(v1 + 44);
  *(v1 + 44) = a1;
  return sub_24608A2AC(v2);
}

uint64_t sub_24608A2AC(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 44) == 1)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture ON.", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608A428(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 45);
  *(a2 + 45) = v2;
  return sub_24608A468(v3);
}

uint64_t sub_24608A458(char a1)
{
  v2 = *(v1 + 45);
  *(v1 + 45) = a1;
  return sub_24608A468(v2);
}

uint64_t sub_24608A468(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 45) == 1)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture OFF: Object out of FOV!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608A5E4(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 46);
  *(a2 + 46) = v2;
  return sub_24608A624(v3);
}

uint64_t sub_24608A614(char a1)
{
  v2 = *(v1 + 46);
  *(v1 + 46) = a1;
  return sub_24608A624(v2);
}

uint64_t sub_24608A624(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 46) == 1)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture OFF: Too dark!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608A7A0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 47);
  *(a2 + 47) = v2;
  return sub_24608A7E0(v3);
}

uint64_t sub_24608A7D0(char a1)
{
  v2 = *(v1 + 47);
  *(v1 + 47) = a1;
  return sub_24608A7E0(v2);
}

uint64_t sub_24608A7E0(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 47) & 1) == 0)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture OFF: Pose graph proximity check failed!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608A958(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  *(a2 + 48) = v2;
  return sub_24608A998(v3);
}

uint64_t sub_24608A988(char a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  return sub_24608A998(v2);
}

uint64_t sub_24608A998(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 48) & 1) == 0)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture OFF: Camera not in good status!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608AB10(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 49);
  *(a2 + 49) = v2;
  return sub_24608AB50(v3);
}

uint64_t sub_24608AB40(char a1)
{
  v2 = *(v1 + 49);
  *(v1 + 49) = a1;
  return sub_24608AB50(v2);
}

uint64_t sub_24608AB50(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 49) & 1) == 0)
  {
    v9 = sub_245FA3174();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Capture Manager : AutoCapture OFF: IMU detected fast motion!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_24608ACFC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 50) == 1)
  {
    v7 = sub_245FA3174();
    (*(v2 + 16))(v6, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture-Post accepted.", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_24608AEAC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 52) & 1) == 0)
  {
    v7 = sub_245FA3174();
    (*(v2 + 16))(v6, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture-Post rejected: Blur score above threshold!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

Swift::String __swiftcall CaptureFactors.preCaptureFactorsDescription()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 44);
  v5 = *(v0 + 45);
  v6 = *(v0 + 46);
  v31 = *(v0 + 47);
  v32 = *(v0 + 48);
  v33 = *(v0 + 49);
  v35 = 0xD000000000000015;
  v36 = 0x80000002460A4D10;
  v7 = MEMORY[0x277D83B08];
  if (*v0 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_246096460;
    *(v8 + 56) = MEMORY[0x277D83A90];
    *(v8 + 64) = v7;
    *(v8 + 32) = v1;
    v9 = sub_246091C24();
    strcpy(v34, "Exposure = ");
    HIDWORD(v34[1]) = -352321536;
    MEMORY[0x24C196640](v9);

    MEMORY[0x24C196640](2675, 0xE200000000000000);

    MEMORY[0x24C196640](v34[0], v34[1]);
  }

  if (v2 >= 1)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83B88];
    *(v10 + 16) = xmmword_246096460;
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v2;
    v13 = sub_246091C24();
    strcpy(v34, "IspDGain = ");
    HIDWORD(v34[1]) = -352321536;
    MEMORY[0x24C196640](v13);

    MEMORY[0x24C196640](10, 0xE100000000000000);

    MEMORY[0x24C196640](v34[0], v34[1]);
  }

  if (v3 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_246096460;
    *(v14 + 56) = MEMORY[0x277D83A90];
    *(v14 + 64) = v7;
    *(v14 + 32) = (v3 / 3.1416) * 180.0;
    v15 = sub_246091C24();
    MEMORY[0x24C196640](v15);

    MEMORY[0x24C196640](0xA732F7367656420, 0xE800000000000000);

    MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A4D90);
  }

  if (v4)
  {
    v16 = 20047;
  }

  else
  {
    v16 = 4605519;
  }

  strcpy(v34, "AutoCapture: ");
  HIWORD(v34[1]) = -4864;
  if (v4)
  {
    v17 = 0xE200000000000000;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  MEMORY[0x24C196640](v16, v17);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v5)
  {
    v18 = 28494;
  }

  else
  {
    v18 = 7562585;
  }

  if (v5)
  {
    v19 = 0xE200000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  strcpy(v34, "Not outOfFOV: ");
  HIBYTE(v34[1]) = -18;
  MEMORY[0x24C196640](v18, v19);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v6)
  {
    v20 = 28494;
  }

  else
  {
    v20 = 7562585;
  }

  if (v6)
  {
    v21 = 0xE200000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  strcpy(v34, "Not tooDark: ");
  HIWORD(v34[1]) = -4864;
  MEMORY[0x24C196640](v20, v21);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v31)
  {
    v22 = 7562585;
  }

  else
  {
    v22 = 28494;
  }

  if (v31)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v22, v23);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000010, 0x80000002460A4D30);

  if (v32)
  {
    v24 = 7562585;
  }

  else
  {
    v24 = 28494;
  }

  if (v32)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    v25 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v24, v25);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000014, 0x80000002460A4D50);

  if (v33)
  {
    v26 = 7562585;
  }

  else
  {
    v26 = 28494;
  }

  if (v33)
  {
    v27 = 0xE300000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v26, v27);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A4D70);

  v28 = v35;
  v29 = v36;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

Swift::String __swiftcall CaptureFactors.postCaptureFactorsDescription()()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 50);
  v7 = *(v0 + 52);
  v34 = 0xD000000000000016;
  v35 = 0x80000002460A4DB0;
  v8 = MEMORY[0x277D83A90];
  v9 = MEMORY[0x277D83B08];
  if (v5 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_246096460;
    *(v10 + 56) = v8;
    *(v10 + 64) = v9;
    *(v10 + 32) = v5;
    v11 = sub_246091C24();
    MEMORY[0x24C196640](v11);

    MEMORY[0x24C196640](10, 0xE100000000000000);

    MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A4E10);
  }

  if (v1 <= 0.0 || v2 < 1)
  {
    if (v4 > 0.0)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (v3 <= 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_246096460;
  *(v20 + 56) = v8;
  *(v20 + 64) = v9;
  *(v20 + 32) = v1;
  v21 = sub_246091C24();
  strcpy(v33, "Exposure = ");
  HIDWORD(v33[1]) = -352321536;
  MEMORY[0x24C196640](v21);

  MEMORY[0x24C196640](0x3D204F5349202C73, 0xE900000000000020);

  v22 = v33[0];
  v23 = v33[1];
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D83B88];
  *(v24 + 16) = xmmword_246096460;
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  *(v24 + 32) = v2;
  v27 = sub_246091C24();
  v29 = v28;

  MEMORY[0x24C196640](v27, v29);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v22, v23);

  if (v4 <= 0.0)
  {
    goto LABEL_9;
  }

LABEL_22:
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_246096460;
  *(v30 + 56) = v8;
  *(v30 + 64) = v9;
  *(v30 + 32) = (v4 / 3.1416) * 180.0;
  v31 = sub_246091C24();
  MEMORY[0x24C196640](v31);

  MEMORY[0x24C196640](0xA732F7367656420, 0xE800000000000000);

  MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A4D90);

  if (v3 > 0.0)
  {
LABEL_10:
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_246096460;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 32) = v3;
    v14 = sub_246091C24();
    strcpy(v33, "Blur score = ");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x24C196640](v14);

    MEMORY[0x24C196640](0xA736C6578697020, 0xE800000000000000);

    MEMORY[0x24C196640](v33[0], v33[1]);
  }

LABEL_11:
  if (v6)
  {
    v15 = 0x6465747065636341;
  }

  else
  {
    v15 = 0x64657463656A6552;
  }

  MEMORY[0x24C196640](v15, 0xE800000000000000);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000018, 0x80000002460A4DD0);

  if (v7)
  {
    v16 = 7562585;
  }

  else
  {
    v16 = 28494;
  }

  if (v7)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v16, v17);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A4DF0);

  v18 = v34;
  v19 = v35;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

double sub_24608BC2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1082130432;
  *(a1 + 8) = -1;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 16) = _D0;
  *(a1 + 24) = -1;
  *(a1 + 32) = _D0;
  *(a1 + 40) = -1082130432;
  *&result = 0x10101000000;
  *(a1 + 44) = 0x10101000000;
  *(a1 + 52) = 0;
  return result;
}

char *sub_24608BC64()
{
  v1 = *v0;
  v22 = *sub_246035FB0();
  sub_245FCFD24();
  if (sub_246092184())
  {
    v2 = sub_245FF809C(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_245FF809C((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x747361466F6F54;
    *(v5 + 5) = 0xE700000000000000;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v23 = *sub_246035FC8();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245FF809C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_245FF809C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x746867694C776F4CLL;
    *(v8 + 5) = 0xE800000000000000;
  }

  v24 = *sub_246036028();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245FF809C(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_245FF809C((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6B7261446F6F54;
    *(v11 + 5) = 0xE700000000000000;
  }

  v25 = *sub_246035FE0();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245FF809C(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_245FF809C((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x7261466F6F54;
    *(v14 + 5) = 0xE600000000000000;
  }

  v26 = *sub_246035FF8();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245FF809C(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_245FF809C((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x65736F6C436F6F54;
    *(v17 + 5) = 0xE800000000000000;
  }

  v27 = *sub_246036010();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245FF809C(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_245FF809C((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    strcpy(v20 + 32, "ObjectOutOfFOV");
    v20[47] = -18;
  }

  return v2;
}

uint64_t sub_24608C0D4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_245FC1BDC(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_246091834();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_24608DF0C(v23 + *(v31 + 72) * v22, a6, a3);
    sub_24608CBAC(v22, v19, a4);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_24608C294(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for OCObjectCentricPoseNode(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_245F8E624(&unk_27EE3B210, "p&");
  v48 = a2;
  result = sub_246092374();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24608DF0C(v31 + v32 * v28, v52, type metadata accessor for OCObjectCentricPoseNode);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24608DEA4(v33 + v32 * v28, v52, type metadata accessor for OCObjectCentricPoseNode);
      }

      v34 = *(v16 + 40);
      sub_24608E8E8(&qword_27EE3A2D8);
      result = sub_246091B84();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_24608DF0C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for OCObjectCentricPoseNode);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_24608C720(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VIOPoseNode(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
  v48 = a2;
  result = sub_246092374();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24608DF0C(v31 + v32 * v28, v52, type metadata accessor for VIOPoseNode);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24608DEA4(v33 + v32 * v28, v52, type metadata accessor for VIOPoseNode);
      }

      v34 = *(v16 + 40);
      sub_24608E8E8(&qword_27EE3A2D8);
      result = sub_246091B84();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_24608DF0C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for VIOPoseNode);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

void sub_24608CBAC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v44 = a2;
    v13 = ~v11;
    v14 = sub_2460921C4();
    v15 = v13;
    a2 = v44;
    v43 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v41 = v10;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v5);
      v23 = *(a2 + 40);
      sub_24608E8E8(&qword_27EE3A2D8);
      v24 = sub_246091B84();
      (*v40)(v9, v5);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v43)
      {
        if (v25 >= v43 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v44 + 48) + v19 * a1 >= (*(v44 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v28 = *(v44 + 56);
          v29 = *(*(v39(0) - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v12;
          v33 = v28 + v29 * v12 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v35 = v30 == v32;
            v10 = v41;
            v15 = v21;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v43 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v41;
      a2 = v44;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

uint64_t sub_24608CEE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for OCObjectCentricPoseNode(0);
      return sub_24608E880(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for OCObjectCentricPoseNode);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24608D3D4();
    goto LABEL_7;
  }

  sub_24608C294(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_245FC1BDC(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24608D2E0(v15, v12, a1, v21, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode);
}

uint64_t sub_24608D0E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for VIOPoseNode(0);
      return sub_24608E880(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for VIOPoseNode);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24608D700();
    goto LABEL_7;
  }

  sub_24608C720(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_245FC1BDC(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24608D2E0(v15, v12, a1, v21, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode);
}

uint64_t sub_24608D2E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_246091834();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_24608DF0C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_24608D3D4()
{
  v1 = v0;
  v2 = type metadata accessor for OCObjectCentricPoseNode(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_246091834();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3B210, "p&");
  v7 = *v0;
  v8 = sub_246092364();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_24608DEA4(*(v7 + 56) + v28, v37, type metadata accessor for OCObjectCentricPoseNode);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_24608DF0C(v27, *(v29 + 56) + v28, type metadata accessor for OCObjectCentricPoseNode);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

char *sub_24608D700()
{
  v1 = v0;
  v2 = type metadata accessor for VIOPoseNode(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_246091834();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
  v7 = *v0;
  v8 = sub_246092364();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_24608DEA4(*(v7 + 56) + v28, v37, type metadata accessor for VIOPoseNode);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_24608DF0C(v27, *(v29 + 56) + v28, type metadata accessor for VIOPoseNode);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

unint64_t sub_24608DA6C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3B238, &qword_24609BAE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&unk_27EE3B210, "p&");
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3B238, &qword_24609BAE8);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for OCObjectCentricPoseNode(0);
      result = sub_24608DF0C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for OCObjectCentricPoseNode);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24608DC88(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3B230, &qword_24609BAE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3B230, &qword_24609BAE0);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for VIOPoseNode(0);
      result = sub_24608DF0C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for VIOPoseNode);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24608DEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24608DF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_24608DF84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24608DFA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24608DFF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24608E078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24608E0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24608E12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 401))
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

uint64_t sub_24608E174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 400) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 401) = 1;
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

    *(result + 401) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24608E238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_24608E280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24608E35C()
{
  sub_246091834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float3x3(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24608E41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24608E49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24608E50C()
{
  sub_246091834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float3x3(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_24608E5B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_24608E5C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24608E5E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

__n128 sub_24608E628(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24608E64C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24608E66C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 76) = v3;
  return result;
}

uint64_t sub_24608E6E4()
{
  result = sub_2460917D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_24608E7A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24608E7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24608E818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24608E880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24608E8E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_246091834();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24608E964()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24608E9B4(uint64_t a1)
{
  v3 = *(*v1 + 104);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t *sub_24608EA10(uint64_t *result, void *a2)
{
  v3 = *v2;
  v4 = *&v2[*(*v2 + 96)];
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v5 = *(v3 + 80);
      v6 = *(v3 + 88);
      v7 = *(v5 - 8);
      v8 = *result;
      v9 = *(v7 + 24);
      v10 = *(v7 + 72);
      v11 = *&v2[*(*v2 + 96)];
      do
      {
        result = v9(v8, &v2[v6], v5);
        v8 += v10;
        --v11;
      }

      while (v11);
    }

    *a2 = v4;
  }

  return result;
}

uint64_t *sub_24608EAF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_24608EB44(a1, a2);
}

uint64_t *sub_24608EB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2460918F4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  *(v2 + *(v6 + 120)) = 0;
  v9 = *(v6 + 80);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + *(*v2 + 88), a2, v9);
  *(v2 + *(*v2 + 96)) = a1;
  *(v2 + *(*v2 + 112)) = 0;
  *(v2 + *(*v2 + 104)) = 0;

  v11 = sub_24608EEBC();
  (*(v10 + 8))(a2, v9);

  v12 = *(*v2 + 120);
  swift_beginAccess();
  v13 = *(v3 + v12);
  *(v3 + v12) = v11;

  return v3;
}

uint64_t sub_24608EEBC()
{
  sub_246091E24();
  if (!v0)
  {

    v1 = sub_246092294();

    if (!v1)
    {
      sub_246091E54();
      swift_getWitnessTable();
      v1 = sub_2460923F4();
    }
  }

  return v1;
}

uint64_t sub_24608EF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1 < 0 || (*(*v2 + 128))() <= a1)
  {
    v9 = *(*(*(v4 + 80) - 8) + 56);

    return v9(a2, 1, 1);
  }

  else
  {
    sub_24608F62C(a1);
    v6 = *(*v2 + 120);
    result = swift_beginAccess();
    if (*(v2 + v6))
    {
      v8 = *(v4 + 80);

      sub_2460922E4();

      return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24608F114()
{
  v1 = (*(*v0 + 128))();
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 216);

    return v4(result);
  }

  return result;
}

uint64_t sub_24608F198()
{
  v1 = *(*v0 + 104);
  result = swift_beginAccess();
  *(v0 + v1) = 0;
  *(v0 + *(*v0 + 112)) = 0;
  return result;
}

void sub_24608F298(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v29[-v11];
  v14 = *(v13 + 112);
  v15 = *(v2 + v14);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v2 + *(v9 + 96));
  if (!v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  *(v2 + v14) = v17 % v18;
  if ((*(*v2 + 256))(v10))
  {
    v20 = *(v2 + v14);
    v21 = *(*v3 + 120);
    swift_beginAccess();
    if (!*(v3 + v21))
    {
LABEL_26:
      __break(1u);
      return;
    }

    sub_2460922E4();

    (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(a2, 1, 1, v6);
  }

  v22 = *(v3 + v14);
  (*(v7 + 16))(v12, a1, v6);
  v23 = *(*v3 + 120);
  swift_beginAccess();
  if (!*(v3 + v23))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_2460922D4();
  sub_2460922C4();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v24 = *(v3 + v23);
  if (*(v24 + 16) <= v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(v7 + 40))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v12, v6);
  v25 = swift_endAccess();
  v26 = (*(*v3 + 128))(v25);
  if (__OFADD__(v26, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v18 >= v26 + 1)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v18;
  }

  v28 = *(*v3 + 104);
  swift_beginAccess();
  *(v3 + v28) = v27;
}

uint64_t sub_24608F62C(uint64_t result)
{
  v2 = *(v1 + *(*v1 + 112));
  v3 = __OFSUB__(v2, result);
  v4 = v2 - result;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + *(*v1 + 96));
  v3 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 != -1 || v6 != 0x8000000000000000)
  {
    return v6 % v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24608F6B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 120));

  return v0;
}

uint64_t sub_24608F744()
{
  sub_24608F6B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24608F79C()
{
  v1 = *(*v0 + 80);
  v25 = sub_2460920F4();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v24 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_246091E04();
  v27 = v13;
  v14 = *(*v0 + 128);
  v26 = v0;
  result = v14();
  if ((result & 0x8000000000000000) == 0)
  {
    v16 = result;
    if (!result)
    {
      return v13;
    }

    v17 = *v26;
    v22 = (v6 + 16);
    v23 = (v6 + 32);
    v18 = *(v17 + 216);
    v20 = (v2 + 8);
    v21 = (v6 + 8);
    v19 = result;
    while (v16 >= v19)
    {
      v18(--v19);
      if ((*(v6 + 48))(v5, 1, v1) == 1)
      {
        result = (*v20)(v5, v25);
        if (!v19)
        {
          return v27;
        }
      }

      else
      {
        (*v23)(v12, v5, v1);
        (*v22)(v24, v12, v1);
        sub_246091E54();
        sub_246091E44();
        result = (*v21)(v12, v1);
        if (!v19)
        {
          return v27;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24608FA98(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AE80, &qword_246096FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24608FB04(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24608FD48(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24608FD88(a1);
  return v5;
}

char *sub_24608FD88(uint64_t a1)
{
  v12 = *v1;
  v13 = a1;
  v11 = sub_246092034();
  v2 = *(v11 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246092004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_246091A64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_245F90360();
  sub_246091A34();
  v14 = MEMORY[0x277D84F90];
  sub_24608FFF0();
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_246090048();
  sub_2460921A4();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v11);
  *(v1 + 2) = sub_246092074();
  (*(*(*(v12 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v13);
  return v1;
}

unint64_t sub_24608FFF0()
{
  result = qword_27EE3A9D0;
  if (!qword_27EE3A9D0)
  {
    sub_246092004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A9D0);
  }

  return result;
}

unint64_t sub_246090048()
{
  result = qword_27EE3A9E0;
  if (!qword_27EE3A9E0)
  {
    sub_245F9135C(&unk_27EE3A230, &qword_246096660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A9E0);
  }

  return result;
}

uint64_t sub_2460900AC()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v1 + 80);
  return sub_246092044();
}

uint64_t sub_246090110@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2460901B8(uint64_t a1)
{
  v3 = *v1;
  sub_24609030C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

id *sub_246090234()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_2460902B4()
{
  sub_246090234();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24609030C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = aBlock - v5;
  v7 = v1[2];
  (*(v3 + 16))(aBlock - v5);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  (*(v3 + 32))(v9 + v8, v6, v2);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2460906C8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E38F0;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24609053C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_246090554(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_246090610()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2460906C8()
{
  v1 = *(v0 + 24);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, v0 + v2);
  return swift_endAccess();
}

void sub_2460907B0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5)
{
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v5 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 48) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_246090C88(0, v12[1].i64[0] + 1, 1, v12);
    *(v5 + 48) = v12;
  }

  v15 = v12[1].u64[0];
  v14 = v12[1].u64[1];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_246090C88((v14 > 1), v15 + 1, 1, v12);
  }

  v12[1].i64[0] = v15 + 1;
  v16 = &v12[5 * v15];
  v17 = v42;
  v16[2] = v41;
  v16[3] = v17;
  v18 = v44;
  v16[4] = v43;
  v16[5] = v18;
  *v16[6].i64 = a5;
  *(v5 + 48) = v12;
  swift_endAccess();
  v19 = v12[1].u64[0];
  if (v19 >= 3)
  {
    do
    {
      swift_beginAccess();
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 48) = v12;
      if (!v21 || v19 - 1 > v12[1].i64[1] >> 1)
      {
        v12 = sub_246090C88(v21, v19, 1, v12);
        *(v5 + 48) = v12;
      }

      v20 = v12[1].i64[0];
      memmove(&v12[2], &v12[7], 80 * v20 - 80);
      v12[1].i64[0] = v20 - 1;
      *(v5 + 48) = v12;
      swift_endAccess();
      v19 = v12[1].u64[0];
    }

    while (v19 > 2);
  }

  if (v19 == 2)
  {
    v22 = *v12[11].i64;
    v23 = *v12[6].i64;
    v24 = v22 - v23;
    if (v24 <= 0.0)
    {
      v30 = sub_245FA3174();
      (*(v8 + 16))(v11, v30, v7);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v45 = v34;
        *v33 = 136381443;
        *(v33 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A4F60, &v45);
        *(v33 + 12) = 2048;
        *(v33 + 14) = v23;
        *(v33 + 22) = 2048;
        *(v33 + 24) = v22;
        *(v33 + 32) = 2048;
        *(v33 + 34) = v24;
        _os_log_impl(&dword_245F8A000, v31, v32, "%{private}s: Frame time is not proceeding monotonically.  LastTime=%f, CurrentTime=%f dt = %f but is expected strictly  > 0!", v33, 0x2Au);
        sub_245F8E6F4(v34);
        MEMORY[0x24C1989D0](v34, -1, -1);
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v25 = v12[8];
      v41 = v12[7];
      v42 = v25;
      v26 = v12[10];
      v43 = v12[9];
      v44 = v26;
      v46 = __invert_f4(*v12[2].f32);
      v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v46.columns[1].f32[0]), v42, *v46.columns[1].f32, 1), v43, v46.columns[1], 2), v44, v46.columns[1], 3);
      v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v46.columns[0].f32[0]), v42, *v46.columns[0].f32, 1), v43, v46.columns[0], 2), v44, v46.columns[0], 3);
      v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v46.columns[2].f32[0]), v42, *v46.columns[2].f32, 1), v43, v46.columns[2], 2), v44, v46.columns[2], 3);
      v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v46.columns[3].f32[0]), v42, *v46.columns[3].f32, 1), v43, v46.columns[3], 2), v44, v46.columns[3], 3);
      v27 = sub_246023584(v40.f32[0], *v39.i64, v38);
      v28 = sub_2460235EC(*v40.i64, *v39.i64, v38.n128_f64[0], v44) / v24;
      if ((v27 / v24) <= 60.0 && v28 <= 0.5)
      {
        v35 = *(v5 + 40);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v36)
        {
          __break(1u);
        }

        else
        {
          *(v5 + 40) = v37 & ~(v37 >> 63);
        }
      }

      else
      {
        *(v5 + 40) = 15;
      }
    }
  }
}

uint64_t sub_246090C00()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

double sub_246090C38()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  *(v0 + 24) = 0x3F00000042700000;
  *&result = 15;
  *(v0 + 32) = xmmword_24609BBF0;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

char *sub_246090C88(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3B258, "N%");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

__n128 sub_246090DBC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_246090DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246090E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

double sub_246090E4C()
{
  result = 0.12500003;
  xmmword_27EE3F0F0 = xmmword_246097430;
  return result;
}

__int128 *sub_246090E60()
{
  if (qword_27EE3EF38 != -1)
  {
    swift_once();
  }

  return &xmmword_27EE3F0F0;
}

double sub_246090EB0()
{
  result = 0.12500003;
  xmmword_27EE3F100 = xmmword_246097430;
  return result;
}

__int128 *sub_246090EC4()
{
  if (qword_27EE3EF40 != -1)
  {
    swift_once();
  }

  return &xmmword_27EE3F100;
}

id sub_246090F3C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_246091674();
  v6[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2460915D4();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24609102C()
{
  v10 = *MEMORY[0x277D85DE8];
  if ((sub_2460915E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_2460916F4();
  v2 = sub_246091BD4();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v9];

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    sub_2460916F4();
    v4 = [v0 defaultManager];
    v5 = sub_246091BD4();

    v6 = [v4 isWritableFileAtPath_];

    result = v6;
  }

  else
  {
LABEL_5:
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_246091194(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2460911E8()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    if ([v2 supportsBufferWithIOSurface] && (v3 = *(v0 + 16), (IOSurface = OCDataBufferGetIOSurface()) != 0))
    {
      v5 = IOSurface;
      v6 = [v2 newBufferWithIOSurface_];
      swift_unknownObjectRelease();

      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void *sub_2460912A0()
{
  v1 = *(v0 + 16);
  IOSurface = OCDataBufferGetIOSurface();
  if (!IOSurface)
  {
    return 0;
  }

  v3 = IOSurface;
  BaseAddress = IOSurfaceGetBaseAddress(v3);

  return BaseAddress;
}

uint64_t OCDataBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}