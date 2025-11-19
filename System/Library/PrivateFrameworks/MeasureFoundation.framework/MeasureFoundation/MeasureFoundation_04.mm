id *DepthProcessor.deinit()
{

  return v0;
}

uint64_t DepthProcessor.__deallocating_deinit()
{
  DepthProcessor.deinit();

  return swift_deallocClassInstance();
}

id sub_2583B88A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2583B88DC()
{
  v0 = sub_258389474(&unk_28697E3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928980);
  result = swift_arrayDestroy();
  qword_27F92F220 = v0;
  return result;
}

void sub_2583B8938()
{
  if (qword_27F927A50 != -1)
  {
    swift_once();
  }

  v0 = qword_27F92F220;
  v1 = *(qword_27F92F220 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(qword_27F92F220 + 16), 0);
  v3 = sub_2583E9038(&v4, v2 + 4, v1, v0);

  sub_2583980BC();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  qword_27F92F228 = v2;
}

uint64_t sub_2583B8A2C()
{
  if (qword_27F927A50 != -1)
  {
    swift_once();
  }

  v1 = sub_2583E903C(v0);

  qword_27F92F230 = v1;
  return result;
}

uint64_t sub_2583B8AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2583B8B08(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2583B8B08(uint64_t a1)
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

uint64_t sub_2583B8B40@<X0>(uint64_t *a1@<X8>)
{
  result = DepthProcessor.transformer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2583B8B6C(void *a1, uint64_t a2)
{
  *(*a2 + 184) = *a1;
}

unint64_t sub_2583B8BE4()
{
  result = qword_27F928960;
  if (!qword_27F928960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928960);
  }

  return result;
}

unint64_t sub_2583B8C3C()
{
  result = qword_27F928968;
  if (!qword_27F928968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928968);
  }

  return result;
}

unint64_t sub_2583B8C98()
{
  result = qword_27F928970;
  if (!qword_27F928970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928970);
  }

  return result;
}

unint64_t sub_2583B8CF0()
{
  result = qword_27F928978;
  if (!qword_27F928978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928978);
  }

  return result;
}

uint64_t static MeasureUnitDetailed.default.setter(char a1)
{
  result = swift_beginAccess();
  static MeasureUnitDetailed.default = a1;
  return result;
}

unint64_t sub_2583B8E4C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s17MeasureFoundation0A12UnitDetailedO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s17MeasureFoundation0A12UnitDetailedO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_2583B8E8C()
{
  result = qword_27F9289A0[0];
  if (!qword_27F9289A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9289A0);
  }

  return result;
}

void sub_2583B8EF0(void *a1)
{
  v2 = v1;
  v4 = [a1 capturedPointCloudData];
  if (!v4)
  {
    return;
  }

  v115 = v4;
  v5 = *(sub_258428C30() + 16);

  if (v5)
  {
    v6 = *(sub_258428C30() + 16);

    if (v6 <= 0x480)
    {
      v7 = [a1 camera];
      swift_beginAccess();
      if (*(v2 + 184))
      {
        __break(1u);
      }

      else
      {
        [v7 viewMatrixForOrientation_];
        v106 = v8;
        v107 = v9;
        v109 = v10;
        v111 = v11;
        swift_beginAccess();
        v12 = *(v2 + 192);
        if (v12)
        {
          v13 = [swift_unknownObjectRetain() contents];
          v14 = v12;
          if (*(v2 + 272) & 1) != 0 || (v15 = *(v2 + 120), v16 = *(v2 + 128), v17 = *(v2 + 136), v18 = *(v2 + 144), v19 = *(v2 + 152), v20 = swift_unknownObjectUnownedLoadStrong(), type metadata accessor for OverlayMetalView(), [swift_dynamicCastClassUnconditional() frame], v22 = v21, v24 = v23, v26 = v25, v28 = v27, v20, (v19) || (v138.origin.x = v15, v138.origin.y = v16, v138.size.width = v17, v138.size.height = v18, v139.origin.x = v22, v139.origin.y = v24, v139.size.width = v26, v139.size.height = v28, !CGRectEqualToRect(v138, v139)))
          {
            Strong = swift_unknownObjectUnownedLoadStrong();
            type metadata accessor for OverlayMetalView();
            [swift_dynamicCastClassUnconditional() frame];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;

            *(v2 + 120) = v31;
            *(v2 + 128) = v33;
            *(v2 + 136) = v35;
            *(v2 + 144) = v37;
            *(v2 + 152) = 0;
            if (*(v2 + 184))
            {
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            [v7 projectionMatrixForOrientation:*(v2 + 176) viewportSize:v35 zNear:v37 zFar:{0.00100000005, 0.0}];
            *(v2 + 208) = v38;
            *(v2 + 224) = v39;
            *(v2 + 240) = v40;
            *(v2 + 256) = v41;
            *(v2 + 272) = 0;
            v13->columns[0] = v38;
            v13->columns[1] = v39;
            v13->columns[2] = v40;
            v13[1].columns[0] = v41;
            [v7 intrinsics];
            v13[13].columns[0] = v42;
            v13[13].columns[1] = v43;
            v13[13].columns[2] = v44;
            [v7 intrinsics];
            v13[14] = __invert_f3(v137);
            swift_unownedRetainStrong();
            DepthProcessor.transformer.getter();

            DepthTransformer.jasperToARKitCamera.getter();
            v113 = v45;
            v103 = v47;
            v104 = v46;
            v102 = v48;

            v13[6].columns[2] = v113;
            v13[7].columns[0] = v104;
            v13[7].columns[1] = v103;
            v13[7].columns[2] = v102;
            swift_unownedRetainStrong();
            DepthProcessor.transformer.getter();

            Transformer.cameraToClip.getter(&v116);

            v49 = *&v116;
            v50.f32[0] = v49;
            v51 = v117;
            v50.f32[1] = v51;
            *&v52 = v119;
            v50.i64[1] = v52;
            *&v53 = *(&v116 + 1);
            *&v54 = v118;
            *&v55 = v120;
            v56.i64[0] = __PAIR64__(v54, v53);
            v56.i64[1] = v55;
            v13[8].columns[0] = v50;
            v13[8].columns[1] = v56;
            v13[8].columns[2] = xmmword_25842CBC0;
            swift_unownedRetainStrong();
            DepthProcessor.transformer.getter();

            Transformer.clipToCamera.getter(&v121);

            *&v57 = *&v121;
            *&v58 = v122;
            v59.i64[0] = __PAIR64__(v58, v57);
            *&v60 = v124;
            v59.i64[1] = v60;
            v61 = *(&v121 + 1);
            v62.f32[0] = v61;
            v63 = v123;
            v62.f32[1] = v63;
            *&v64 = v125;
            v62.i64[1] = v64;
            v13[9].columns[0] = v59;
            v13[9].columns[1] = v62;
            v13[9].columns[2] = xmmword_25842CBC0;
            swift_unownedRetainStrong();
            DepthProcessor.transformer.getter();

            Transformer.clipToCameraNormalized.getter(&v126);

            *&v65 = *&v126;
            *&v66 = v127;
            v67.i64[0] = __PAIR64__(v66, v65);
            *&v68 = v129;
            v67.i64[1] = v68;
            *&v69 = *(&v126 + 1);
            *&v70 = v128;
            *&v71 = v130;
            v72.i64[0] = __PAIR64__(v70, v69);
            v72.i64[1] = v71;
            v13[10].columns[0] = v67;
            v13[10].columns[1] = v72;
            v13[10].columns[2] = xmmword_25842CBC0;
            if (*(v2 + 152))
            {
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            if (*(v2 + 184))
            {
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            [v7 imageResolution];
            ARViewToCameraImageTransform();
            *&v73 = *&v131;
            *&v74 = v132;
            *&v75 = v134;
            v76.i64[0] = __PAIR64__(v74, v73);
            v76.i64[1] = v75;
            *&v77 = *(&v131 + 1);
            *&v78 = v133;
            *&v79 = v135;
            v80.i64[0] = __PAIR64__(v78, v77);
            v80.i64[1] = v79;
            v13[11].columns[0] = v76;
            v13[11].columns[1] = v80;
            v13[11].columns[2] = xmmword_25842CBC0;
            v13[15].columns[0].i32[3] = 100000;
            if (*(v2 + 152))
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            Width = CGRectGetWidth(*(v2 + 120));
            if (*(v2 + 152))
            {
LABEL_30:
              __break(1u);
              return;
            }

            Height = CGRectGetHeight(*(v2 + 120));
            v82.f64[0] = Width;
            v82.f64[1] = Height;
            *v13[15].columns[0].f32 = vcvt_f32_f64(v82);
            swift_unownedRetainStrong();
            ADProcessor.adConfig.getter();

            v13[15].columns[0].i32[2] = 1065353216;
            swift_unownedRetainStrong();
            ADProcessor.transformer.getter();

            ADTransformer.adToCamera.getter(&v131);

            *&v83 = *&v131;
            *&v84 = v132;
            v85.i64[0] = __PAIR64__(v84, v83);
            *&v86 = v134;
            v85.i64[1] = v86;
            *&v87 = *(&v131 + 1);
            *&v88 = v133;
            v89.i64[0] = __PAIR64__(v88, v87);
            *&v90 = v135;
            v89.i64[1] = v90;
            v13[12].columns[0] = v85;
            v13[12].columns[1] = v89;
            v13[12].columns[2] = xmmword_25842CBC0;
          }

          v13[1].columns[1] = v106;
          v13[1].columns[2] = v107;
          v13[2].columns[0] = v109;
          v13[2].columns[1] = v111;
          if ((*(v2 + 272) & 1) == 0)
          {
            v92 = *(v2 + 240);
            v91 = *(v2 + 256);
            v94 = *(v2 + 208);
            v93 = *(v2 + 224);
            v13[2].columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v106.f32[0]), v93, *v106.f32, 1), v92, v106, 2), v91, v106, 3);
            v13[3].columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v107.f32[0]), v93, *v107.f32, 1), v92, v107, 2), v91, v107, 3);
            v13[3].columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v109.f32[0]), v93, *v109.f32, 1), v92, v109, 2), v91, v109, 3);
            v13[3].columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v111.f32[0]), v93, *v111.f32, 1), v92, v111, 2), v91, v111, 3);
            [v7 transform];
            v13[4].columns[0] = v95;
            v13[4].columns[1] = v96;
            v13[4].columns[2] = v97;
            v13[5].columns[0] = v98;
            v99 = *(v2 + 160);
            swift_unownedRetainStrong();
            swift_beginAccess();
            v112 = v99[8];
            v114 = v99[7];
            v108 = v99[10];
            v110 = v99[9];
            v100 = v99[11].i8[0];

            if ((v100 & 1) == 0)
            {
              v13[5].columns[1] = v114;
              v13[5].columns[2] = v112;
              v13[6].columns[0] = v110;
              v13[6].columns[1] = v108;
              swift_beginAccess();
              v101 = *(**(v2 + 16) + 264);

              v101(a1);

              *(v2 + 72) = 1;
              return;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }
}

unint64_t sub_2583B9678()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for DebugWorldNode();
    swift_allocObject();

    v1 = sub_2583AE638(v2);
    swift_beginAccess();

    MetalNode.addChild(_:at:)(v1, 0, 1);

    *(v0 + 104) = v1;
  }

  return v1;
}

id sub_2583B973C()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    type metadata accessor for DebugLocalNode();
    swift_allocObject();

    v1 = sub_25838AEC8(v2);
    swift_beginAccess();

    MetalNode.addChild(_:at:)(v1, 0, 1);

    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_2583B9800()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_2583B9860(v0);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_2583B9860(uint64_t a1)
{
  type metadata accessor for DebugADNode();
  swift_allocObject();

  v3 = sub_2583ADBF4(v2);
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v8 = v3;
  v7[2] = &v8;

  LOBYTE(a1) = sub_258386A68(sub_258386C18, v7, v5);

  if (a1)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  if (!(*(v4 + 24) >> 62) || (result = sub_258428F10(), (result & 0x8000000000000000) == 0))
  {

    sub_258386D54(0, 0, v3);
    swift_endAccess();

LABEL_4:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2583B9A30()
{

  swift_unownedRelease();
  swift_unownedRelease();

  return swift_unknownObjectRelease();
}

uint64_t OverlayMetalScene.deinit()
{

  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unownedRelease();
  swift_unownedRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OverlayMetalScene.__deallocating_deinit()
{
  OverlayMetalScene.deinit();

  return swift_deallocClassInstance();
}

void *sub_2583B9B58(void *a1, uint64_t a2)
{
  *(v2 + 80) = xmmword_25842E510;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1;
  *(v2 + 192) = 0;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 1;
  *(v2 + 160) = a2;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v5 = *(a2 + 192);
  swift_unownedRetain();

  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 168) = v5;
  swift_unownedRetain();

  [a1 bounds];
  *(v2 + 120) = v7;
  *(v2 + 128) = v8;
  *(v2 + 136) = v9;
  *(v2 + 144) = v10;
  *(v2 + 152) = 0;
  v11 = a1;
  v12 = sub_2583DC6D0(v11, 1);

  v13 = v12[20];
  swift_unownedRetainStrong();
  v14 = *(v13 + 48);
  swift_retain_n();

  swift_beginAccess();
  v12[22] = v14;
  *(v12 + 184) = 0;
  v15 = v12[4];
  swift_unknownObjectRetain();

  result = [v15 newBufferWithLength:752 options:0];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = result;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v12[24] = v16;
  swift_unknownObjectRelease();
  v17 = v12[20];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v18 = *(v17 + 224);

  if ((v18 & 8) != 0 || (v19 = v12[20], swift_unownedRetainStrong(), swift_beginAccess(), v20 = *(v19 + 224), , (v20 & 0x10) != 0) || (v21 = v12[20], swift_unownedRetainStrong(), swift_beginAccess(), v22 = *(v21 + 224), , (v22 & 0x2000) != 0) || (v23 = v12[20], swift_unownedRetainStrong(), swift_beginAccess(), v24 = *(v23 + 224), , (v24 & 0x8000) != 0))
  {
    v25 = sub_2583B9800();
    swift_beginAccess();
    v25[32] = 1;
    swift_beginAccess();
    v25[33] = 1;
    swift_beginAccess();
    v25[34] = 1;
  }

  v26 = v12[20];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v27 = *(v26 + 224);

  if ((v27 & 2) != 0)
  {
    v28 = sub_2583B973C();
    swift_beginAccess();
    v28[32] = 1;
    swift_beginAccess();
    v28[33] = 1;
    swift_beginAccess();
    v28[34] = 1;
  }

  v29 = v12[20];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v30 = *(v29 + 224);

  if ((v30 & 4) != 0)
  {
    v31 = sub_2583B9678();

    swift_beginAccess();
    v31[32] = 1;
    swift_beginAccess();
    v31[33] = 1;
    swift_beginAccess();
    v31[34] = 1;
  }

  else
  {
  }

  return v12;
}

uint64_t ObjectPool.count.getter()
{
  swift_beginAccess();

  v0 = sub_258428A00();

  return v0;
}

uint64_t ObjectPool.__allocating_init(allocator:deallocator:synchronized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  v11 = _s17MeasureFoundation10ObjectPoolC7objects33_8B01F5F47CB49D64DA54EB87E4B4A93DLLShyxGvpfi_0();
  *(v10 + 60) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  return v10;
}

uint64_t ObjectPool.init(allocator:deallocator:synchronized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = _s17MeasureFoundation10ObjectPoolC7objects33_8B01F5F47CB49D64DA54EB87E4B4A93DLLShyxGvpfi_0();
  *(v5 + 60) = 0;
  *(v5 + 16) = v11;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

uint64_t ObjectPool.deinit()
{
  ObjectPool.clear()();

  sub_2583B4A40(*(v0 + 40));
  return v0;
}

uint64_t ObjectPool.__deallocating_deinit()
{
  ObjectPool.deinit();

  return swift_deallocClassInstance();
}

uint64_t ObjectPool.acquire()()
{
  if (*(v0 + 56) == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v0 + 60));
    swift_endAccess();
  }

  swift_beginAccess();

  v1 = sub_258428A00();

  if (v1 < 1)
  {
    (*(v0 + 24))(v2);
  }

  else
  {
    swift_beginAccess();
    sub_258428A40();
    sub_2584289D0();
    swift_endAccess();
  }

  return sub_2583BA5C4(v0);
}

uint64_t ObjectPool.release(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (*(v1 + 56) == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v1 + 60));
    swift_endAccess();
  }

  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  sub_258428A40();
  v11 = sub_258428A10();
  (*(v5 + 8))(v10, v4);
  swift_endAccess();
  sub_2583BA5C4(v2);
  return v11 & 1;
}

Swift::Int __swiftcall ObjectPool.release(_:)(Swift::OpaquePointer a1)
{
  if (*(v1 + 56) == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v1 + 60));
    a1._rawValue = swift_endAccess();
  }

  MEMORY[0x28223BE20](a1._rawValue);
  sub_258428980();
  swift_getWitnessTable();
  sub_258428810();
  sub_2583BA5C4(v1);
  return 0;
}

uint64_t sub_2583BA5C4(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = result;
    swift_beginAccess();
    os_unfair_lock_unlock(v1 + 15);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2583BA620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a2 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  (*(v5 + 16))(v8);
  swift_beginAccess();
  sub_258428A40();
  v11 = sub_258428A10();
  (*(v5 + 8))(v10, v4);
  result = swift_endAccess();
  if (v11)
  {
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  return result;
}

Swift::Void __swiftcall ObjectPool.clear()()
{
  v1 = *(v0 + 56);
  if (v1 == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v0 + 60));
    swift_endAccess();
  }

  v2 = *(v0 + 40);
  if (v2)
  {
    swift_beginAccess();
    sub_2583B4A50(v2);
    sub_258428A40();

    swift_getWitnessTable();
    sub_258428810();

    sub_2583B4A40(v2);
  }

  swift_beginAccess();
  sub_258428A40();
  sub_258428A30();
  swift_endAccess();
  if (v1)
  {
    swift_beginAccess();
    os_unfair_lock_unlock((v0 + 60));
    swift_endAccess();
  }
}

uint64_t sub_2583BAA0C()
{
  v1 = v0;
  v2 = *(v0 + 56);
  if (v2 == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v0 + 60));
    swift_endAccess();
  }

  v3 = swift_beginAccess();
  v4 = *(v0 + 16);
  if (!*(v4 + 16))
  {
    (*(v1 + 24))(v10, v3);
    if (!v2)
    {
      return v10[0];
    }

    goto LABEL_5;
  }

  swift_beginAccess();
  v5 = sub_258428E80();
  v10[0] = sub_2583C4188(v5, *(v4 + 36));
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  swift_endAccess();
  if (v2)
  {
LABEL_5:
    swift_beginAccess();
    os_unfair_lock_unlock((v1 + 60));
    swift_endAccess();
  }

  return v10[0];
}

uint64_t static PatchTracker.DebuggerClass.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  static PatchTracker.DebuggerClass = a1;
  qword_27F92F240 = a2;
  return result;
}

float sub_2583BAC1C()
{
  if ((*(v0 + 20) & 1) == 0)
  {
    return *(v0 + 16);
  }

  sub_2583BAC54(v0);
  *(v0 + 16) = result;
  *(v0 + 20) = 0;
  return result;
}

void sub_2583BAC54(uint64_t a1)
{
  v1 = *(a1 + 808);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  v4 = [v3 currentFrame];

  if (v4)
  {
    v5 = [v4 camera];

    [v5 imageResolution];
  }

  else
  {
    sub_258429100();
    __break(1u);
  }
}

double PatchTracker.viewportSize.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = *(v0 + 808);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  result = v3;
  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = 0;
  return result;
}

void sub_2583BADD4()
{
  v1 = v0;
  if (*(v0 + 88))
  {
    v2 = *(v0 + 808);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    v5 = [v4 currentFrame];

    if (v5)
    {
      v6 = [v5 camera];

      [v6 imageResolution];
      v8 = v7;
      [v6 imageResolution];
      v10 = v9;
      v11 = v9 / v8;
      v12 = PatchTracker.viewportSize.getter();

      v13 = v12 / *(v1 + 40);
      v14 = v13 < v11;
      v15 = v8 * v13;
      v16 = v10 / v13;
      if (v14)
      {
        v17 = v15;
      }

      else
      {
        v17 = v10;
      }

      if (v14)
      {
        v18 = v8;
      }

      else
      {
        v18 = v16;
      }

      *(v1 + 56) = (v8 - v18) * 0.5;
      *(v1 + 64) = (v10 - v17) * 0.5;
      *(v1 + 72) = v18;
      *(v1 + 80) = v17;
      *(v1 + 88) = 0;
    }

    else
    {
      sub_258429100();
      __break(1u);
    }
  }
}

double sub_2583BAF54()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 96);
  }

  sub_2583BADD4();
  result = round(v1);
  *(v0 + 96) = result;
  *(v0 + 104) = round(v3);
  *(v0 + 112) = round(v4);
  *(v0 + 120) = round(v5);
  *(v0 + 128) = 0;
  return result;
}

void sub_2583BAFA0()
{
  if (*(v0 + 152))
  {
    sub_2583BADD4();
    v2 = v1;
    v4 = v3;
    v5 = sub_2583BAC1C();
    *(v0 + 136) = round(v2 * v5);
    *(v0 + 144) = round(v4 * v5);
    *(v0 + 152) = 0;
  }
}

double sub_2583BAFF8()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return *(v0 + 160);
  }

  sub_2583BAFA0();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  result = 0.0;
  *(v0 + 192) = 0;
  return result;
}

uint64_t sub_2583BB044()
{
  if (*(v0 + 208) != 1)
  {
    return *(v0 + 200);
  }

  result = sub_2583BB080(v0);
  *(v0 + 200) = result;
  *(v0 + 208) = 0;
  return result;
}

uint64_t sub_2583BB080(uint64_t a1)
{
  v1 = *(a1 + 808);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  v4 = [v3 currentFrame];

  if (v4)
  {
    v5 = [v4 capturedImage];
    v18[0] = sub_2583BAF54();
    v18[1] = v6;
    v18[2] = v7;
    v18[3] = v8;
    v19 = 0;
    sub_2583FD594(v5, 0, v18, v16);

    v9 = 0;
    if ((v17 & 1) == 0)
    {
      v11 = v16[2];
      v10 = v16[3];
      v13 = v16[0];
      v12 = v16[1];
      v14 = sub_2583BAC1C();
      v9 = _sSo13vImage_BufferV17MeasureFoundationE08makeTempB15ForScalePlanar803srcaB011scaleFactor5flagsSvSgAB_SfSitFZ_0(v13, v12, v11, v10, 0, v14);
    }

    return v9;
  }

  else
  {
    result = sub_258429100();
    __break(1u);
  }

  return result;
}

uint64_t sub_2583BB1E0()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AC8);
    v1 = swift_allocObject();
    v3 = MEMORY[0x277D84FA0];
    *(v1 + 60) = 0;
    *(v1 + 16) = v3;
    *(v1 + 24) = sub_2583C7AE8;
    *(v1 + 32) = v2;
    *(v1 + 40) = sub_2583BB3E4;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v0 + 216) = v1;
  }

  return v1;
}

size_t sub_2583BB2C4@<X0>(size_t *a1@<X8>)
{
  swift_unownedRetainStrong();
  sub_2583BAFA0();
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_unownedRetainStrong();
  sub_2583BAFA0();
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v3;
  if (v3 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v7;
  if (v7 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v10 * v9;
  if ((v10 * v9) >> 64 == (v10 * v9) >> 63)
  {
    result = malloc(result);
    *a1 = result;
    a1[1] = v10;
    a1[2] = v9;
    a1[3] = v9;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_2583BB3E4(void *a1)
{
  if (!*a1)
  {
    __break(1u);
  }

  JUMPOUT(0x259C7FB80);
}

double sub_2583BB414()
{
  if ((*(v0 + 272) & 1) == 0)
  {
    return *(v0 + 256);
  }

  __asm { FMOV            V0.2D, #11.0 }

  *(v0 + 256) = _Q0;
  *(v0 + 272) = 0;
  return 11.0;
}

double sub_2583BB43C()
{
  if ((*(v0 + 296) & 1) == 0)
  {
    return *(v0 + 280);
  }

  __asm { FMOV            V0.2D, #5.0 }

  *(v0 + 280) = _Q0;
  *(v0 + 296) = 0;
  return 5.0;
}

float64_t sub_2583BB468()
{
  if (*(v0 + 320))
  {
    v1.f32[0] = sub_2583BAC1C();
    v1.i32[1] = *(v0 + 16);
    __asm { FMOV            V1.2D, #11.0 }

    v7 = vrndaq_f64(vdivq_f64(_Q1, vcvtq_f64_f32(v1)));
    *(v0 + 304) = v7;
    *(v0 + 320) = 0;
  }

  else
  {
    v7.f64[0] = *(v0 + 304);
  }

  return v7.f64[0];
}

uint64_t sub_2583BB4B8()
{
  v1 = *(v0 + 328);
  if (v1)
  {
  }

  else
  {
    v1 = sub_2584288E0();
    *(v1 + 16) = 121;
    memset_pattern16((v1 + 32), &unk_25842E640, 0xF2uLL);
    *(v0 + 328) = v1;
  }

  return v1;
}

void *sub_2583BB53C()
{
  if (*(v0 + 368) != 1)
  {
    return *(v0 + 336);
  }

  result = malloc(0x79uLL);
  *(v0 + 336) = result;
  *(v0 + 344) = vdupq_n_s64(0xBuLL);
  *(v0 + 360) = 11;
  *(v0 + 368) = 0;
  return result;
}

void *sub_2583BB59C()
{
  if (*(v0 + 384) != 1)
  {
    return *(v0 + 376);
  }

  result = sub_2583BB5D8(v0);
  *(v0 + 376) = result;
  *(v0 + 384) = 0;
  return result;
}

void *sub_2583BB5D8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2583BB1E0();
  v2 = sub_2583BAA0C();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = sub_2583BB4B8();
  divisor = *(*(a1 + 328) + 16);
  if (divisor >> 31)
  {
    __break(1u);
  }

  dest.data = v2;
  dest.height = v4;
  dest.width = v6;
  dest.rowBytes = v8;
  v11 = vImageConvolve_Planar8(&dest, &dest, 0, 0, 0, (v9 + 32), 0xBu, 0xBu, divisor, 0, 0x84u);
  if (v11 < 1)
  {

    v12 = 0;
  }

  else
  {
    v12 = malloc(v11);
  }

  v13 = *(a1 + 216);
  v14 = *(v13 + 56);
  if (v14 == 1)
  {
    swift_beginAccess();

    os_unfair_lock_lock((v13 + 60));
    swift_endAccess();
  }

  else
  {
  }

  swift_beginAccess();
  sub_2583C65DC(&dest, v2, v4, v6, v8);
  swift_endAccess();
  if (v14)
  {
    swift_beginAccess();
    os_unfair_lock_unlock((v13 + 60));
    swift_endAccess();
  }

  return v12;
}

void *sub_2583BB7A4()
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(v0 + 400) != 1)
  {
    return *(v0 + 392);
  }

  dest.data = sub_2583BB53C();
  dest.height = v1;
  dest.width = v2;
  dest.rowBytes = v3;
  v4 = vImageConvolve_Planar8(&dest, &dest, 0, 0, 0, word_28697E3D8, 3u, 3u, 1, 0, 0x84u);
  if (v4 < 1)
  {
    result = 0;
  }

  else
  {
    result = malloc(v4);
  }

  *(v0 + 392) = result;
  *(v0 + 400) = 0;
  return result;
}

uint64_t sub_2583BB864()
{
  if (*(v0 + 512))
  {
    v1 = *(v0 + 512);
  }

  else
  {
    type metadata accessor for MeanShiftPointFilter();
    v1 = swift_allocObject();
    *(v1 + 16) = 3;
    *(v1 + 24) = 953267991;
    *(v1 + 28) = 1;
    *(v0 + 512) = v1;
  }

  return v1;
}

CGAffineTransform *sub_2583BB8D4@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 632);
  if (*(v1 + 680))
  {
    sub_2583BAFA0();
    v5 = v4;
    v7 = v6;
    v8 = PatchTracker.viewportSize.getter();
    CGAffineTransformMakeScale(&t1, 1.0 / v8, 1.0 / *(v1 + 40));
    tx = t1.tx;
    ty = t1.ty;
    v23 = *&t1.c;
    v25 = *&t1.a;
    ARViewToCameraImageTransform();
    v11 = *&t1.a;
    v12 = *&t1.c;
    v13 = *&t1.tx;
    *&t1.a = v25;
    *&t1.c = v23;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v11;
    *&t2.c = v12;
    *&t2.tx = v13;
    CGAffineTransformConcat(&v27, &t1, &t2);
    v14 = v27.tx;
    v15 = v27.ty;
    v24 = *&v27.c;
    v26 = *&v27.a;
    CGAffineTransformMakeScale(&t1, v5, v7);
    v16 = *&t1.a;
    v17 = *&t1.c;
    v18 = *&t1.tx;
    *&t1.a = v26;
    *&t1.c = v24;
    t1.tx = v14;
    t1.ty = v15;
    *&t2.a = v16;
    *&t2.c = v17;
    *&t2.tx = v18;
    result = CGAffineTransformConcat(&v27, &t1, &t2);
    v21 = *&v27.a;
    v20 = *&v27.c;
    v22 = *&v27.tx;
    *v3 = *&v27.a;
    *(v1 + 648) = v20;
    *(v1 + 664) = v22;
    *(v1 + 680) = 0;
  }

  else
  {
    v20 = *(v1 + 648);
    v22 = *(v1 + 664);
    v21 = *v3;
  }

  *a1 = v21;
  a1[1] = v20;
  a1[2] = v22;
  return result;
}

CGAffineTransform *sub_2583BBA1C@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 736))
  {
    sub_2583BAFA0();
    CGAffineTransformMakeScale(&t1, 1.0 / v3, 1.0 / v4);
    tx = t1.tx;
    ty = t1.ty;
    v19 = *&t1.c;
    v21 = *&t1.a;
    PatchTracker.viewportSize.getter();
    ARCameraImageToViewTransform();
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v21;
    *&t1.c = v19;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v23, &t1, &t2);
    v10 = v23.tx;
    v11 = v23.ty;
    v20 = *&v23.c;
    v22 = *&v23.a;
    CGAffineTransformMakeScale(&t1, *(v1 + 32), *(v1 + 40));
    v12 = *&t1.a;
    v13 = *&t1.c;
    v14 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v20;
    t1.tx = v10;
    t1.ty = v11;
    *&t2.a = v12;
    *&t2.c = v13;
    *&t2.tx = v14;
    result = CGAffineTransformConcat(&v23, &t1, &t2);
    v17 = *&v23.a;
    v16 = *&v23.c;
    v18 = *&v23.tx;
    *(v1 + 688) = *&v23.a;
    *(v1 + 704) = v16;
    *(v1 + 720) = v18;
    *(v1 + 736) = 0;
  }

  else
  {
    v16 = *(v1 + 704);
    v18 = *(v1 + 720);
    v17 = *(v1 + 688);
  }

  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  return result;
}

CGAffineTransform *sub_2583BBB50@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 744);
  if (*(v1 + 792))
  {
    sub_2583BAF54();
    v5 = v4;
    v7 = v6;
    v8 = PatchTracker.viewportSize.getter();
    CGAffineTransformMakeScale(&t1, 1.0 / v8, 1.0 / *(v1 + 40));
    tx = t1.tx;
    ty = t1.ty;
    v28 = *&t1.c;
    v31 = *&t1.a;
    ARViewToCameraImageTransform();
    v11 = *&t1.a;
    v12 = *&t1.c;
    v13 = *&t1.tx;
    *&t1.a = v31;
    *&t1.c = v28;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v11;
    *&t2.c = v12;
    *&t2.tx = v13;
    CGAffineTransformConcat(&v34, &t1, &t2);
    v14 = v34.tx;
    v15 = v34.ty;
    v29 = *&v34.c;
    v32 = *&v34.a;
    CGAffineTransformMakeScale(&t1, v5, v7);
    v16 = *&t1.a;
    v17 = *&t1.c;
    v18 = *&t1.tx;
    *&t1.a = v32;
    *&t1.c = v29;
    t1.tx = v14;
    t1.ty = v15;
    *&t2.a = v16;
    *&t2.c = v17;
    *&t2.tx = v18;
    CGAffineTransformConcat(&v34, &t1, &t2);
    v19 = v34.tx;
    v20 = v34.ty;
    v30 = *&v34.c;
    v33 = *&v34.a;
    CGAffineTransformMakeTranslation(&t1, *(v1 + 96), *(v1 + 104));
    v21 = *&t1.a;
    v22 = *&t1.c;
    v23 = *&t1.tx;
    *&t1.a = v33;
    *&t1.c = v30;
    t1.tx = v19;
    t1.ty = v20;
    *&t2.a = v21;
    *&t2.c = v22;
    *&t2.tx = v23;
    result = CGAffineTransformConcat(&v34, &t1, &t2);
    v26 = *&v34.a;
    v25 = *&v34.c;
    v27 = *&v34.tx;
    *v3 = *&v34.a;
    *(v1 + 760) = v25;
    *(v1 + 776) = v27;
    *(v1 + 792) = 0;
  }

  else
  {
    v25 = *(v1 + 760);
    v27 = *(v1 + 776);
    v26 = *v3;
  }

  *a1 = v26;
  a1[1] = v25;
  a1[2] = v27;
  return result;
}

uint64_t *PatchTracker.DebugOptions.default.unsafeMutableAddressor()
{
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  return &static PatchTracker.DebugOptions.default;
}

uint64_t PatchTracker.debugOptions.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 824) = a1;
  return result;
}

uint64_t PatchTracker.__allocating_init(sceneView:motion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PatchTracker.init(sceneView:motion:)(a1, a2, a3);
  return v6;
}

uint64_t PatchTracker.init(sceneView:motion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 20) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 1;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 1;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = xmmword_25842E610;
  *(v4 + 232) = xmmword_25842E620;
  *(v4 + 248) = 256;
  *(v4 + 252) = 1082130432;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 1;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 1;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 1;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0;
  *(v4 + 368) = 1;
  *(v4 + 376) = 0;
  *(v4 + 384) = 1;
  *(v4 + 392) = 0;
  *(v4 + 400) = 1;
  *(v4 + 408) = 20;
  *(v4 + 416) = 0;
  *(v4 + 420) = 953267991;
  *(v4 + 424) = 0x404E000000000000;
  *(v4 + 432) = 0x3F4CCCCD3F7746EALL;
  *(v4 + 440) = 1065185444;
  *(v4 + 448) = 3;
  *(v4 + 456) = xmmword_25842E630;
  *(v4 + 472) = 0x400000003E19999ALL;
  *(v4 + 480) = 1;
  *(v4 + 484) = 0x3D4CCCCDBCCCCCCDLL;
  *(v4 + 492) = 1;
  *(v4 + 496) = 1036831949;
  *(v4 + 500) = 1;
  *(v4 + 504) = 1056964608;
  *(v4 + 512) = 0;
  *(v4 + 520) = 1;
  *(v4 + 524) = 953267991;
  *(v4 + 528) = 0x3F0000003E32B8C2;
  v8 = MEMORY[0x277D84F98];
  *(v4 + 536) = 1;
  *(v4 + 544) = v8;
  *(v4 + 552) = 0x3FD0000000000000;
  *(v4 + 560) = 3;
  *(v4 + 568) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F927B80);
  v9 = swift_allocObject();
  v9[1] = xmmword_25842BFB0;
  v9[2] = xmmword_25842BFC0;
  __asm { FMOV            V1.2D, #15.0 }

  v9[3] = xmmword_25842BFD0;
  v9[4] = _Q1;
  *(v4 + 576) = v9;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v4 + 584) = v15;
  v16 = MEMORY[0x277D84F90];
  *(v4 + 592) = MEMORY[0x277D84F90];
  *(v4 + 600) = 0u;
  *(v4 + 616) = v16;
  *(v4 + 624) = 1;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 1;
  *(v4 + 688) = 0u;
  *(v4 + 704) = 0u;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 1;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 1;
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v4 + 824) = static PatchTracker.DebugOptions.default;
  *(v4 + 832) = 0u;
  *(v4 + 848) = 0u;
  *(v4 + 864) = 0;
  *(v4 + 800) = a1;
  *(v4 + 808) = a2;
  *(v4 + 816) = a3;
  swift_beginAccess();
  v17 = static PatchTracker.DebuggerClass;
  if (static PatchTracker.DebuggerClass)
  {
    v18 = qword_27F92F240;
    v19 = *(qword_27F92F240 + 8);
    v30 = &v27;
    v28 = sub_258428DA0();
    v20 = *(v28 - 8);
    MEMORY[0x28223BE20](v28);
    v22 = &v27 - v21;
    v23 = a1;
    v29 = a3;

    v19(v23, a2, v4, v17, v18);
    v24 = *(v17 - 8);
    if ((*(v24 + 48))(v22, 1, v17) != 1)
    {
      *(&v32 + 1) = v17;
      v33 = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
      (*(v24 + 32))(boxed_opaque_existential_1, v22, v17);

      goto LABEL_8;
    }

    (*(v20 + 8))(v22, v28);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
LABEL_8:
  swift_beginAccess();
  sub_2583C7A24(&v31, v4 + 832, &qword_27F928A30);
  swift_endAccess();
  return v4;
}

void *PatchTracker.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 592);
  if (v2 >> 62)
  {
LABEL_35:
    v3 = sub_258428F10();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v40 = v2 & 0xC000000000000001;
    v37 = v3;
    v38 = v2;
    do
    {
      if (v40)
      {
        v5 = MEMORY[0x259C7E900](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_23;
        }
      }

      v7 = sub_2583BB1E0();
      v8 = v5[4];
      v9 = v5[5];
      v10 = v5[6];
      v11 = v5[7];
      v41 = v6;
      if (*(v7 + 56) == 1)
      {
        swift_beginAccess();
        os_unfair_lock_lock((v7 + 60));
        swift_endAccess();
        swift_beginAccess();
        sub_2583C65DC(v42, v8, v9, v10, v11);
        swift_endAccess();
        swift_beginAccess();
        os_unfair_lock_unlock((v7 + 60));
      }

      else
      {
        swift_beginAccess();
        sub_2583C65DC(v42, v8, v9, v10, v11);
      }

      swift_endAccess();
      v12 = v1;

      sub_2583C2C48(v43);
      if ((v44 & 1) == 0)
      {
        v13 = v43[0];
        v14 = v43[1];
        v16 = v43[2];
        v15 = v43[3];
        v17 = *(v1 + 216);
        v18 = *(v17 + 56);
        if (v18 == 1)
        {
          swift_beginAccess();

          os_unfair_lock_lock((v17 + 60));
          swift_endAccess();
        }

        else
        {
        }

        swift_beginAccess();
        sub_2583C65DC(v42, v13, v14, v16, v15);
        swift_endAccess();
        if (v18)
        {
          swift_beginAccess();
          os_unfair_lock_unlock((v17 + 60));
          swift_endAccess();
        }
      }

      v19 = v5[11];
      if (v19)
      {
        v20 = *(v12 + 808);
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 16);
        v23 = v19;
        v24 = v22(ObjectType, v20);
        [v24 removeAnchor_];
      }

      swift_weakAssign();

      ++v4;
      v2 = v38;
      v1 = v12;
    }

    while (v41 != v37);
  }

  *(v1 + 592) = MEMORY[0x277D84F90];

  if (*(v1 + 600))
  {

    sub_2583BC7C8(v25);

    *(v1 + 600) = 0;
  }

  result = sub_2583BB53C();
  if (result)
  {
    v30 = result;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    MEMORY[0x259C7FB80](result, -1, -1);
    *(v1 + 336) = v30;
    *(v1 + 344) = v31;
    *(v1 + 352) = v32;
    *(v1 + 360) = v33;
    *(v1 + 368) = 0;
    v34 = sub_2583BB044();
    if (v34)
    {
      MEMORY[0x259C7FB80](v34, -1, -1);
    }

    v35 = sub_2583BB59C();
    if (v35)
    {
      MEMORY[0x259C7FB80](v35, -1, -1);
    }

    v36 = sub_2583BB7A4();
    if (v36)
    {
      MEMORY[0x259C7FB80](v36, -1, -1);
    }

    sub_258385E40(v1 + 832, &qword_27F928A30);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PatchTracker.__deallocating_deinit()
{
  PatchTracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2583BC7C8(void *a1)
{
  v3 = sub_2583BB1E0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  if (*(v3 + 56) == 1)
  {
    swift_beginAccess();
    os_unfair_lock_lock((v3 + 60));
    swift_endAccess();
    swift_beginAccess();
    sub_2583C65DC(v22, v4, v5, v6, v7);
    swift_endAccess();
    swift_beginAccess();
    os_unfair_lock_unlock((v3 + 60));
  }

  else
  {
    swift_beginAccess();
    sub_2583C65DC(v22, v4, v5, v6, v7);
  }

  swift_endAccess();

  sub_2583C2C48(v22);
  if ((v23 & 1) == 0)
  {
    v8 = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v22[3];
    v12 = *(v1 + 216);
    v13 = *(v12 + 56);
    if (v13 == 1)
    {
      swift_beginAccess();

      os_unfair_lock_lock((v12 + 60));
      swift_endAccess();
    }

    else
    {
    }

    swift_beginAccess();
    sub_2583C65DC(v21, v8, v9, v10, v11);
    swift_endAccess();
    if (v13)
    {
      swift_beginAccess();
      os_unfair_lock_unlock((v12 + 60));
      swift_endAccess();
    }
  }

  v14 = a1[11];
  if (v14)
  {
    v15 = *(v1 + 808);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    v18 = v14;
    v19 = v17(ObjectType, v15);
    [v19 removeAnchor_];
  }

  return swift_weakAssign();
}

Swift::Void __swiftcall PatchTracker.didUpdate(frame:)(ARFrame frame)
{
  v2 = v1;
  os_unfair_lock_lock(*(v2 + 584));
  v4 = [(objc_class *)frame.super.isa worldTrackingState];
  if (v4 && (v5 = v4, v6 = [v4 vioTrackingState], v5, !v6))
  {
    isa = frame.super.isa;
    v7 = v2;
    sub_2583BF05C(isa);
    v16 = *(v2 + 608);
    v13 = __CFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v13)
    {
      *(v2 + 608) = v17;
      v18 = *(v2 + 584);

      os_unfair_lock_unlock(v18);
      return;
    }

LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = (v2 + 592);
    swift_beginAccess();
    v8 = *(v2 + 592);
    if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v8 = *v7, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v8 >> 62)
      {
        goto LABEL_19;
      }

      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_11;
    }

    if (!(v8 >> 62))
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  v20 = sub_258428F10();
  if (v20 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v10 = v20;
LABEL_8:
  sub_258387370(0, v10);
  while (1)
  {
    swift_endAccess();
    v12 = *(v2 + 608);
    v13 = __CFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      break;
    }

    __break(1u);
LABEL_19:
    v19 = sub_258428F10();
    v20 = sub_258428F10();
    if (v20 < 0)
    {
      goto LABEL_26;
    }

    v21 = sub_258428F10();
    if (v19 < 0 || (v11 = v19, v21 < v19))
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_11:
    *v7 = sub_25838C71C(0, v11);
  }

  *(v2 + 608) = v14;
  os_unfair_lock_unlock(*(v2 + 584));
}

__n128 PatchTracker.hitTest(frame:screenPoint:context:)@<Q0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>, uint64_t a5@<D1>)
{
  v6 = v5;
  os_unfair_lock_lock(*(v5 + 584));

  sub_258428450();

  if (!v140[0] || ([v140[0] userAcceleration], v81 = v12, objc_msgSend(v140[0], sel_userAcceleration), v79 = v13, objc_msgSend(v140[0], sel_userAcceleration), v77 = v14, v140[0], v15.f64[0] = v81, v15.f64[1] = v79, *v15.f64 = sqrt(vmulq_f64(v77, v77).f64[0] + vaddvq_f64(vmulq_f64(v15, v15))), *v15.f64 <= 0.1))
  {
    v17 = sub_2583B26A4(v126);
    v18 = *(v5 + 600);
    if (v18 && (v19 = *(v18 + 80), [a1 timestamp], v19 == v20))
    {
      if (*(v5 + 600))
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v5 + 600) = sub_2583BF8A0(a1, a4, a5, 0);

      if (*(v5 + 600))
      {
LABEL_9:

        sub_2583BDB60(v82, a2, &v128, *&a4, *&a5);
        v112 = v136;
        v113 = v137;
        v108 = v132;
        v109 = v133;
        v111 = v135;
        v110 = v134;
        v104 = v128;
        v105 = v129;
        v107 = v131;
        v106 = v130;
        v148 = v136;
        v149 = v137;
        v144 = v132;
        v145 = v133;
        v147 = v135;
        v146 = v134;
        *v140 = v128;
        v141 = v129;
        v114 = v138;
        v150 = v138;
        v143 = v131;
        v142 = v130;
        if (sub_2583B26C4(v140) == 1)
        {
          if (qword_27F927B28 != -1)
          {
            swift_once();
          }

          v22 = qword_27F92F388;
          v21 = unk_27F92F390;
          sub_258428C50();
          v23 = qword_27F927A30;

          if (v23 != -1)
          {
            swift_once();
          }

          v24 = qword_27F928848;
          os_unfair_lock_lock(qword_27F928848);
          if (qword_27F927A38 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v25 = off_27F928850;
          if (*(off_27F928850 + 2) && (v26 = sub_258384364(v22, v21), (v27 & 1) != 0))
          {
            v28 = *(v25[7] + 8 * v26);
            swift_endAccess();
            v29 = v28;
          }

          else
          {
            swift_endAccess();
            sub_258385DB0(0, &qword_27F927F98);
            if (qword_27F927A28 != -1)
            {
              swift_once();
            }

            v46 = sub_258428D90();
            swift_beginAccess();
            v29 = v46;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91.n128_u64[0] = off_27F928850;
            off_27F928850 = 0x8000000000000000;
            sub_258384C94(v29, v22, v21, isUniquelyReferenced_nonNull_native);

            off_27F928850 = v91.n128_u64[0];
            swift_endAccess();
          }

          os_unfair_lock_unlock(v24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_25842CCB0;
          *(v48 + 56) = MEMORY[0x277D837D0];
          *(v48 + 64) = sub_258385D08();
          *(v48 + 32) = 0xD000000000000023;
          *(v48 + 40) = 0x8000000258436310;
          sub_258428440();

          goto LABEL_42;
        }

        v99 = v148;
        v100 = v149;
        v101 = v150;
        v95 = v144;
        v96 = v145;
        v97 = v146;
        v98 = v147;
        v91 = *v140;
        v92 = v141;
        v93 = v142;
        v94 = v143;
        v102[8] = v112;
        v102[9] = v113;
        v103 = v114;
        v102[4] = v108;
        v102[5] = v109;
        v102[6] = v110;
        v102[7] = v111;
        v102[0] = v104;
        v102[1] = v105;
        v102[2] = v106;
        v102[3] = v107;
        sub_258389808(v102, v89, &qword_27F928340);
        if (qword_27F927B28 != -1)
        {
          swift_once();
        }

        v32 = unk_27F92F390;
        v80 = qword_27F92F388;
        *&v89[0] = 0;
        *(&v89[0] + 1) = 0xE000000000000000;
        sub_258428FC0();
        v83 = v89[0];
        MEMORY[0x259C7DFF0](0xD000000000000028, 0x8000000258436340);
        v76 = v91;
        v89[0] = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A38);
        sub_258398260(&qword_27F928A40, &qword_27F928A38);
        v33 = sub_258429370();
        MEMORY[0x259C7DFF0](v33);

        MEMORY[0x259C7DFF0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
        v73 = v95;
        v74 = v94;
        v34 = v97;
        v71 = v98;
        v72 = v96;
        v70 = v99;
        v36 = *(&v100 + 1);
        v35 = v100;
        v37 = v101;
        sub_2584289C0();
        MEMORY[0x259C7DFF0](0x69686374616D202CLL, 0xEC000000203A676ELL);
        sub_258389808(&v91, v89, &qword_27F928340);
        v75 = v34;

        sub_2584289C0();
        v38 = *(&v83 + 1);
        v78 = v83;
        sub_258428C50();
        v39 = qword_27F927A30;

        if (v39 != -1)
        {
          swift_once();
        }

        v40 = qword_27F928848;
        os_unfair_lock_lock(qword_27F928848);
        if (qword_27F927A38 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v41 = off_27F928850;
        if (*(off_27F928850 + 2) && (v42 = sub_258384364(v80, v32), (v43 & 1) != 0))
        {
          v44 = *(v41[7] + 8 * v42);
          swift_endAccess();
          v45 = v44;
        }

        else
        {
          swift_endAccess();
          sub_258385DB0(0, &qword_27F927F98);
          if (qword_27F927A28 != -1)
          {
            swift_once();
          }

          v49 = sub_258428D90();
          swift_beginAccess();
          v45 = v49;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *&v83 = off_27F928850;
          off_27F928850 = 0x8000000000000000;
          sub_258384C94(v45, v80, v32, v50);

          off_27F928850 = v83;
          swift_endAccess();
        }

        os_unfair_lock_unlock(v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_25842CCB0;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 64) = sub_258385D08();
        *(v51 + 32) = v78;
        *(v51 + 40) = v38;

        sub_258428440();

        swift_beginAccess();
        v52 = *(v6 + 824);
        v53 = a2[7];
        v139[6] = a2[6];
        v139[7] = v53;
        v139[8] = a2[8];
        v54 = a2[3];
        v139[2] = a2[2];
        v139[3] = v54;
        v55 = a2[4];
        v139[5] = a2[5];
        v139[4] = v55;
        v56 = *a2;
        v139[1] = a2[1];
        v139[0] = v56;
        if (sub_2583C77E4(v139) == 1 || (v139[0] & 1) != 0 || (v52 & 2) == 0)
        {

          v57 = &qword_27F928890;
          v58 = &v128;
        }

        else
        {
          swift_beginAccess();
          sub_258389808(v6 + 832, v87, &qword_27F928A30);
          if (v88)
          {
            sub_2583ACFA4(v87, v84);
            sub_258385E40(v87, &qword_27F928A30);
            v64 = v85;
            v65 = v86;
            __swift_project_boxed_opaque_existential_0(v84, v85);
            v66 = v92;
            v67 = v93;
            v68 = *(v65 + 24);
            v89[8] = v112;
            v89[9] = v113;
            v90 = v114;
            v89[4] = v108;
            v89[5] = v109;
            v89[6] = v110;
            v89[7] = v111;
            v89[0] = v104;
            v89[1] = v105;
            v89[2] = v106;
            v89[3] = v107;
            sub_258389808(v89, &v83, &qword_27F928340);
            LODWORD(v69) = v37;
            v68(v66, *(&v66 + 1), v67, v75, v35, v64, v65, v76, v74, v73, v72, v71, v70, *&v36, *(&v36 + 1), v69);
            sub_258385E40(&v128, &qword_27F928890);

            __swift_destroy_boxed_opaque_existential_0(v84);
            goto LABEL_42;
          }

          sub_258385E40(&v128, &qword_27F928890);

          v57 = &qword_27F928A30;
          v58 = v87;
        }

        sub_258385E40(v58, v57);
LABEL_42:
        v123 = v112;
        v124 = v113;
        v125 = v114;
        v119 = v108;
        v120 = v109;
        v122 = v111;
        v121 = v110;
        v115 = v104;
        v116 = v105;
        v30 = v107;
        v31 = v106;
        goto LABEL_43;
      }
    }

    v123 = v126[8];
    v124 = v126[9];
    v125 = v127;
    v119 = v126[4];
    v120 = v126[5];
    v122 = v126[7];
    v121 = v126[6];
    v115 = v126[0];
    v116 = v126[1];
    v30 = v126[3];
    v31 = v126[2];
LABEL_43:
    v118 = v30;
    v117 = v31;
    os_unfair_lock_unlock(*(v6 + 584));
    goto LABEL_44;
  }

  v16 = (v5 + 544);
  swift_beginAccess();
  if (*(*(v5 + 544) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    *&v128 = *v16;
    *v16 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A48);
    sub_2584290F0();
    *v16 = v128;
  }

  swift_endAccess();
  sub_2583B26A4(v140);
  os_unfair_lock_unlock(*(v5 + 584));
  v123 = v148;
  v124 = v149;
  v125 = v150;
  v119 = v144;
  v120 = v145;
  v122 = v147;
  v121 = v146;
  v115 = *v140;
  v116 = v141;
  v118 = v143;
  v117 = v142;
LABEL_44:
  v59 = v124;
  *(a3 + 128) = v123;
  *(a3 + 144) = v59;
  *(a3 + 160) = v125;
  v60 = v120;
  *(a3 + 64) = v119;
  *(a3 + 80) = v60;
  v61 = v122;
  *(a3 + 96) = v121;
  *(a3 + 112) = v61;
  v62 = v116;
  *a3 = v115;
  *(a3 + 16) = v62;
  result = v118;
  *(a3 + 32) = v117;
  *(a3 + 48) = result;
  return result;
}

BOOL PatchTracker.DebugOptions.shouldDo(_:with:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v10[8] = a2[8];
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = a2[5];
  v10[4] = a2[4];
  v10[5] = v7;
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  if (sub_2583C77E4(v10) == 1)
  {
    return 0;
  }

  if (v10[0])
  {
    return 0;
  }

  return (a1 & ~a3) == 0;
}

void sub_2583BDA68(double a1, double a2)
{
  v5 = PatchTracker.viewportSize.getter() / 7.0;
  v6 = *(v2 + 40);
  v7 = floor(v6 / v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = v7;
  if ((v8 & 1) == 0)
  {
    v9 = v9 + 1.0;
  }

  v10 = floor(a1 / v5) + floor(a2 / (v6 / v9)) * 7.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (v10 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_2583BDB60(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v10 = sub_2583BFD08(a1, a2, a4, a5);
  if (!v10)
  {
LABEL_33:
    sub_2583B26A4(&v111);
LABEL_35:
    v80 = v120;
    *(a3 + 128) = v119;
    *(a3 + 144) = v80;
    *(a3 + 160) = v121;
    v81 = v116;
    *(a3 + 64) = v115;
    *(a3 + 80) = v81;
    v82 = v118;
    *(a3 + 96) = v117;
    *(a3 + 112) = v82;
    v83 = v112;
    *a3 = v111;
    *(a3 + 16) = v83;
    v84 = v114;
    *(a3 + 32) = v113;
    *(a3 + 48) = v84;
    return;
  }

  v11 = v10;
  sub_2583C03F4(v10, a2, v158);
  v182[8] = v158[8];
  v182[9] = v158[9];
  v183 = v159;
  v182[4] = v158[4];
  v182[5] = v158[5];
  v182[7] = v158[7];
  v182[6] = v158[6];
  v182[0] = v158[0];
  v182[1] = v158[1];
  v182[3] = v158[3];
  v182[2] = v158[2];
  v12 = sub_2583B26C4(v182);
  sub_2583BE378(v11, v158, &v160);
  v155 = v168;
  v156 = v169;
  v157 = v170;
  v151 = v164;
  v152 = v165;
  v154 = v167;
  v153 = v166;
  v147 = v160;
  v148 = v161;
  v150 = v163;
  v149 = v162;
  sub_258385E40(v158, &qword_27F928890);
  sub_2583BDA68(a4, a5);
  v14 = v13;
  v15 = (v5 + 544);
  swift_beginAccess();
  v16 = *(v5 + 544);
  if (*(v16 + 16) && (v17 = sub_2583844DC(v14), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 192 * v17);
    v21 = v19[2];
    v20 = v19[3];
    v22 = v19[1];
    v123 = *v19;
    v124 = v22;
    v125 = v21;
    v126 = v20;
    v23 = v19[4];
    v24 = v19[5];
    v25 = v19[7];
    v129 = v19[6];
    v130 = v25;
    v127 = v23;
    v128 = v24;
    v26 = v19[8];
    v27 = v19[9];
    v28 = v19[10];
    v134 = *(v19 + 22);
    v132 = v27;
    v133 = v28;
    v131 = v26;
    memmove(&__dst, v19, 0xB8uLL);
    nullsub_1(&__dst);
    sub_258389808(&v123, &v111, &qword_27F927FE0);
  }

  else
  {
    sub_2583C7A8C(&v123);
    v143 = v131;
    v144 = v132;
    v145 = v133;
    v146 = v134;
    v139 = v127;
    v140 = v128;
    v141 = v129;
    v142 = v130;
    __dst = v123;
    v136 = v124;
    v137 = v125;
    v138 = v126;
  }

  v131 = v143;
  v132 = v144;
  v133 = v145;
  v134 = v146;
  v127 = v139;
  v128 = v140;
  v129 = v141;
  v130 = v142;
  v123 = __dst;
  v124 = v136;
  v125 = v137;
  v126 = v138;
  if (sub_2583B26C4(&v123) == 1)
  {
    v119 = v143;
    v120 = v144;
    v121 = v145;
    v122 = v146;
    v115 = v139;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v111 = __dst;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    sub_258385E40(&v111, &qword_27F928AC0);
    v29 = 0;
    if (v12 == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v29 = v146;
    v119 = v143;
    v120 = v144;
    v121 = v145;
    v122 = v146;
    v115 = v139;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v111 = __dst;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    sub_258385E40(&v111, &qword_27F928AC0);
    if (v12 == 1)
    {
LABEL_13:
      v91 = v29;
      v41 = *v15;
      v42 = *v15 + 64;
      v43 = 1 << *(*v15 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(*v15 + 64);
      v46 = (v43 + 63) >> 6;

      v47 = 0;
      while (v45)
      {
        v48 = v45;
LABEL_22:
        v45 = (v48 - 1) & v48;
        v50 = *v15;
        if (*(*v15 + 16))
        {
          v51 = *(*(v41 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v48)))));
          v52 = sub_2583844DC(v51);
          if (v53)
          {
            v54 = *(v50 + 56) + 192 * v52;
            v56 = *(v54 + 32);
            v55 = *(v54 + 48);
            v57 = *(v54 + 16);
            v111 = *v54;
            v112 = v57;
            v113 = v56;
            v114 = v55;
            v58 = *(v54 + 64);
            v59 = *(v54 + 80);
            v60 = *(v54 + 112);
            v117 = *(v54 + 96);
            v118 = v60;
            v115 = v58;
            v116 = v59;
            v61 = *(v54 + 128);
            v62 = *(v54 + 144);
            v63 = *(v54 + 160);
            v122 = *(v54 + 176);
            v120 = v62;
            v121 = v63;
            v119 = v61;
            sub_258389808(&v111, v109, &qword_27F927FE0);
            sub_258428340();
            if (v64 - *(&v121 + 1) > 0.25)
            {
              swift_beginAccess();
              v65 = sub_2583844DC(v51);
              if (v66)
              {
                v67 = v65;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v69 = *v15;
                v107 = *v15;
                *v15 = 0x8000000000000000;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_258395DB4();
                  v69 = v107;
                }

                v70 = *(v69 + 56) + 192 * v67;
                v72 = *(v70 + 32);
                v71 = *(v70 + 48);
                v73 = *(v70 + 16);
                v109[0] = *v70;
                v109[1] = v73;
                v109[2] = v72;
                v109[3] = v71;
                v74 = *(v70 + 64);
                v75 = *(v70 + 80);
                v76 = *(v70 + 112);
                v109[6] = *(v70 + 96);
                v109[7] = v76;
                v109[4] = v74;
                v109[5] = v75;
                v77 = *(v70 + 128);
                v78 = *(v70 + 144);
                v79 = *(v70 + 160);
                v110 = *(v70 + 176);
                v109[9] = v78;
                v109[10] = v79;
                v109[8] = v77;
                sub_258385E40(v109, &qword_27F927FE0);
                sub_258396F3C(v67, v69);
                *v15 = v69;
              }

              swift_endAccess();
            }

            sub_258385E40(&v111, &qword_27F927FE0);
          }
        }
      }

      while (1)
      {
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v49 >= v46)
        {
          break;
        }

        v48 = *(v42 + 8 * v49);
        ++v47;
        if (v48)
        {
          v47 = v49;
          goto LABEL_22;
        }
      }

      if (v91 < 3)
      {
        sub_258385E40(&v160, &qword_27F928890);
        goto LABEL_33;
      }

      v119 = v155;
      v120 = v156;
      LODWORD(v121) = v157;
      v115 = v151;
      v116 = v152;
      v117 = v153;
      v118 = v154;
      v111 = v147;
      v112 = v148;
      v113 = v149;
      v114 = v150;
      goto LABEL_35;
    }
  }

  v179 = v168;
  v180 = v169;
  v181 = v170;
  v175 = v164;
  v176 = v165;
  v178 = v167;
  v177 = v166;
  v171 = v160;
  v172 = v161;
  v174 = v163;
  v173 = v162;
  if (sub_2583B26C4(&v171) == 1)
  {
    goto LABEL_13;
  }

  v30 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    v31 = v181;
    v32 = v180;
    v89 = v178;
    v90 = v179;
    v33 = v177;
    v87 = v175;
    v88 = v176;
    v34 = v173;
    v35 = *(&v172 + 1);
    v36 = v172;
    v85 = v171;
    v86 = v174;
    v119 = v155;
    v120 = v156;
    LODWORD(v121) = v157;
    v115 = v151;
    v116 = v152;
    v117 = v153;
    v118 = v154;
    v111 = v147;
    v112 = v148;
    v113 = v149;
    v114 = v150;
    v37 = *(&v180 + 1);
    sub_258389808(&v160, v109, &qword_27F928890);
    sub_258389808(&v111, v109, &qword_27F928340);
    sub_258428340();
    v39 = v38;
    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *v15;
    *v15 = 0x8000000000000000;
    v92 = v85;
    v93 = v36;
    v94 = v35;
    v95 = v34 & 1;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = v33;
    v100 = v89;
    v101 = v90;
    v102 = v32;
    v103 = v37;
    v104 = v31;
    v105 = v39;
    v106 = v30;
    sub_258385050(&v92, v14, v40);
    *v15 = v108;
    swift_endAccess();
    sub_258385E40(&v160, &qword_27F928890);
    v29 = v30;
    goto LABEL_13;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_2583BE378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 144);
  v165 = *(a2 + 128);
  v166 = v7;
  v167 = *(a2 + 160);
  v8 = *(a2 + 80);
  v161 = *(a2 + 64);
  v162 = v8;
  v9 = *(a2 + 96);
  v164 = *(a2 + 112);
  v163 = v9;
  v10 = *(a2 + 16);
  v157 = *a2;
  v158 = v10;
  v11 = *(a2 + 32);
  v160 = *(a2 + 48);
  v159 = v11;
  sub_2583BDA68(*(a1 + 56), *(a1 + 64));
  v13 = v12;
  swift_beginAccess();
  v14 = *(v3 + 544);
  if (!*(v14 + 16))
  {
    goto LABEL_5;
  }

  v15 = sub_2583844DC(v13);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *(v14 + 56) + 192 * v15;
  v19 = *(v17 + 32);
  v18 = *(v17 + 48);
  v20 = *(v17 + 16);
  v145 = *v17;
  v146 = v20;
  v147 = v19;
  v148 = v18;
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  v23 = *(v17 + 96);
  v152 = *(v17 + 112);
  v151 = v23;
  v150 = v22;
  v149 = v21;
  v24 = *(v17 + 128);
  v25 = *(v17 + 144);
  v26 = *(v17 + 160);
  v156 = *(v17 + 176);
  v155 = v26;
  v154 = v25;
  v153 = v24;
  sub_258389808(&v145, &v137, &qword_27F927FE0);
  sub_258428340();
  if (v27 - *(&v155 + 1) > 0.25)
  {
    sub_258385E40(&v145, &qword_27F927FE0);
LABEL_5:
    result = sub_258389808(a2, &v145, &qword_27F928890);
    *&v143[32] = v165;
    *&v143[48] = v166;
    v144 = v167;
    v141 = v161;
    v142 = v162;
    *&v143[16] = v164;
    *v143 = v163;
    v137 = v157;
    v138 = v158;
    v29 = v160;
    v30 = v159;
LABEL_6:
    v140 = v29;
    v139 = v30;
    v31 = *&v143[48];
    *(a3 + 128) = *&v143[32];
    *(a3 + 144) = v31;
    *(a3 + 160) = v144;
    v32 = v142;
    *(a3 + 64) = v141;
    *(a3 + 80) = v32;
    v33 = *&v143[16];
    *(a3 + 96) = *v143;
    *(a3 + 112) = v33;
    v34 = v138;
    *a3 = v137;
    *(a3 + 16) = v34;
    v35 = v140;
    *(a3 + 32) = v139;
    *(a3 + 48) = v35;
    return result;
  }

  v59 = *a2;
  v36 = *(a2 + 32);
  v37 = *(a2 + 48);
  v127 = *(a2 + 16);
  v128 = v36;
  v61 = *(a2 + 64);
  v62 = *(a2 + 80);
  v63 = v37;
  v38 = *(a2 + 96);
  v39 = *(a2 + 120);
  v124 = *(a2 + 104);
  v125 = v39;
  v126 = *(a2 + 136);
  v40 = *(a2 + 152);
  v41 = *(a2 + 156);
  v42 = *(a2 + 160);
  v55 = *(&v154 + 2);
  sub_258389808(&v145, &v137, &qword_27F927FE0);
  sub_258389808(&v145, &v137, &qword_27F927FE0);
  sub_258389808(a2, &v137, &qword_27F928890);

  v131 = v124;
  v132 = v125;
  v133 = v126;
  v129[1] = v127;
  v129[0] = v59;
  v129[2] = v128;
  v129[3] = v63;
  v129[4] = v61;
  v129[5] = v62;
  v130 = v38;
  v134 = v40;
  v135 = v41;
  v136 = v42;
  if (sub_2583B26C4(v129) != 1)
  {
    v106 = v63;
    v107 = v61;
    v108 = v62;
    *v109 = v38;
    *&v109[40] = v126;
    *&v109[8] = v124;
    *&v109[24] = v125;
    *&v109[56] = v40;
    *&v109[60] = v41;
    *&v109[64] = v42;
    sub_258389808(&v106, &v137, &qword_27F928A90);
    sub_258389808(&v106, &v137, &qword_27F928A90);

    if (fabsf((*&v109[56] / v55) + -1.0) <= 0.5)
    {
      v57 = v108;
      v50 = vmulq_f32(v108, v150);
      v49 = (*&v109[56] - v55) * ((fminf(fabsf(acosf(fminf(v50.f32[2] + vaddv_f32(*v50.f32), 1.0))) / 0.17453, 1.0) * 0.5) + 0.5);
    }

    else
    {
      v49 = (*&v109[56] - v55) * 0.1;
      v57 = v108;
    }

    v54 = v107;
    *&v143[8] = v124;
    *&v143[24] = v125;
    *&v143[40] = v126;
    v138 = v127;
    v137 = v59;
    v139 = v128;
    v140 = v63;
    v141 = v61;
    v142 = v62;
    *v143 = v38;
    *&v143[56] = v40;
    *&v143[60] = v41;
    v144 = v42;
    result = sub_2583B26C4(&v137);
    if (result != 1)
    {
      v60 = v55 + v49;
      *&v51 = vaddq_f32(v54, vmulq_n_f32(v57, v55 + v49)).u64[0];
      *(&v51 + 2) = v54.f32[2] + vmuls_lane_f32(v55 + v49, v57, 2);
      HIDWORD(v51) = 0;
      v118 = v124;
      v119 = v125;
      v120 = v126;
      v112 = v127;
      v58 = v51;
      v111 = v51;
      v113 = v128;
      v114 = v63;
      v115 = v61;
      v116 = v62;
      v117 = v38;
      v121 = v40;
      v122 = v41;
      v123 = v42;
      result = sub_2583B26C4(&v111);
      if (result != 1)
      {
        sub_258385E40(&v145, &qword_27F927FE0);
        sub_258385E40(&v106, &qword_27F928A90);
        sub_258385E40(&v145, &qword_27F927FE0);
        v47 = v63;
        v48 = v58;
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  *&v109[80] = v153;
  *&v109[96] = v154;
  v110 = *&v155;
  *&v109[16] = v149;
  *&v109[32] = v150;
  *&v109[64] = v152;
  *&v109[48] = v151;
  v106 = v145;
  v107 = v146;
  *v109 = v148;
  v108 = v147;
  nullsub_1(&v106);
  v111 = v59;
  v112 = v127;
  v113 = v128;
  v114 = v63;
  v115 = v61;
  v116 = v62;
  v117 = v38;
  v118 = v124;
  v119 = v125;
  v120 = v126;
  v121 = v40;
  v122 = v41;
  v123 = v42;
  v64 = v106;
  v128 = v108;
  v127 = v107;
  v52 = *&v109[32];
  v53 = *&v109[16];
  v43 = *&v109[48];
  v126 = *&v109[88];
  v125 = *&v109[72];
  v124 = *&v109[56];
  v56 = *v109;
  v60 = *&v109[104];
  v41 = *&v109[108];
  v44 = v110;
  sub_258389808(&v145, &v137, &qword_27F927FE0);
  sub_258385E40(&v111, &qword_27F928890);
  v61 = *(a1 + 80);
  v62 = *(a1 + 96);
  *&v143[8] = v124;
  *&v143[24] = v125;
  *&v143[40] = v126;
  v138 = v127;
  v137 = v64;
  v139 = v128;
  v140 = v56;
  v141 = v53;
  v142 = v52;
  *v143 = v43;
  *&v143[56] = v60;
  *&v143[60] = v41;
  v144 = v44;
  result = sub_2583B26C4(&v137);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v45 = vaddq_f32(v61, vmulq_n_f32(v62, v55)).u64[0];
  *(&v45 + 2) = v61.f32[2] + vmuls_lane_f32(v55, v62, 2);
  HIDWORD(v45) = 0;
  v46 = *&v155;
  v100 = v124;
  v101 = v125;
  v102 = v126;
  v98[0] = v45;
  v98[1] = v127;
  v65 = v45;
  v98[2] = v128;
  v98[3] = v56;
  v98[4] = v53;
  v98[5] = v52;
  v99 = v43;
  v103 = v60;
  v104 = v41;
  v105 = v44;
  result = sub_2583B26C4(v98);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = -fabsf(v46);
  v92 = v124;
  v93 = v125;
  v94 = v126;
  v90[0] = v65;
  v90[1] = v127;
  v90[2] = v128;
  v90[3] = v56;
  v90[4] = v53;
  v90[5] = v52;
  v91 = v43;
  v95 = v60;
  v96 = v41;
  v97 = v42;
  result = sub_2583B26C4(v90);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v84 = v124;
  v85 = v125;
  v86 = v126;
  v82[0] = v65;
  v82[1] = v127;
  v82[2] = v128;
  v82[3] = v56;
  v82[4] = v53;
  v82[5] = v52;
  v83 = a1;
  v87 = v60;
  v88 = v41;
  v89 = v42;
  result = sub_2583B26C4(v82);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v76 = v124;
  v77 = v125;
  v78 = v126;
  v74[0] = v65;
  v74[1] = v127;
  v74[2] = v128;
  v74[3] = v56;
  v74[4] = v61;
  v74[5] = v62;
  v75 = a1;
  v79 = v60;
  v80 = v41;
  v81 = v42;
  result = sub_2583B26C4(v74);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v124;
  v69 = v125;
  v70 = v126;
  v66[0] = v65;
  v66[1] = v127;
  v66[2] = v128;
  v66[3] = v56;
  v66[4] = v61;
  v66[5] = v62;
  v67 = a1;
  v71 = v60;
  v72 = v41;
  v73 = v42;
  result = sub_2583B26C4(v66);
  if (result != 1)
  {
    sub_258385E40(&v145, &qword_27F927FE0);
    sub_258385E40(&v145, &qword_27F927FE0);
    v38 = a1;
    v47 = v65;
    v48 = v65;
LABEL_21:
    v106 = v48;
    v107 = v127;
    *&v109[56] = v124;
    *&v109[72] = v125;
    *&v109[88] = v126;
    v111 = v48;
    v112 = v127;
    v108 = v128;
    *v109 = v47;
    v113 = v128;
    v114 = v47;
    *&v109[16] = v61;
    *&v109[32] = v62;
    *&v109[48] = v38;
    *&v109[104] = v60;
    *&v109[108] = v41;
    v110 = v42;
    v115 = v61;
    v116 = v62;
    v117 = v38;
    v120 = v126;
    v119 = v125;
    v118 = v124;
    v121 = v60;
    v122 = v41;
    v123 = v42;
    sub_258389808(&v106, &v137, &qword_27F928890);
    result = sub_258385E40(&v111, &qword_27F928890);
    *&v143[32] = *&v109[80];
    *&v143[48] = *&v109[96];
    v144 = v110;
    v141 = *&v109[16];
    v142 = *&v109[32];
    *&v143[16] = *&v109[64];
    *v143 = *&v109[48];
    v137 = v106;
    v138 = v107;
    v29 = *v109;
    v30 = v108;
    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_2583BEEA4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 592);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_258428F10();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v9 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C7E900](v5, v3);
      if (__OFADD__(v9, 1))
      {
LABEL_14:
        __break(1u);
LABEL_15:

        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v10 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }
    }

    [a1 timestamp];
    if (v11 - *(v10 + 80) <= 0.0166666667)
    {
      goto LABEL_15;
    }

    v12 = [a1 camera];
    [v12 transform];
    v17 = v13;

    v14 = *(v10 + 88);
    if (!v14)
    {
      v14 = *(v10 + 24);
    }

    [v14 transform];
    v16 = v6;

    v7 = vsubq_f32(v17, v16);
    v8 = vmulq_f32(v7, v7);
    v5 = v9 + 1;
  }

  while ((v8.f32[2] + vaddv_f32(*v8.f32)) > 0.0001);

  return v4 == v9;
}

void sub_2583BF05C(void *a1)
{

  sub_258428450();

  if (!v13 || ([v13 userAcceleration], v12 = v3, objc_msgSend(v13, sel_userAcceleration), v11 = v4, objc_msgSend(v13, sel_userAcceleration), v10 = v5, v13, v6.f64[0] = v12, v6.f64[1] = v11, *v6.f64 = sqrt(vmulq_f64(v10, v10).f64[0] + vaddvq_f64(vmulq_f64(v6, v6))), *v6.f64 <= 0.1))
  {
    if (sub_2583BEEA4(a1))
    {
      v7 = sub_2583BF8A0(a1, 0, 0, 1);
      if (v7)
      {
        *(v1 + 600) = v7;

        swift_beginAccess();

        MEMORY[0x259C7E150](v8);
        if (*((*(v1 + 592) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 592) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2584288B0();
        }

        sub_258428900();
        v9 = *(v1 + 592);
        swift_endAccess();
        if (v9 >> 62)
        {
          if (sub_258428F10() < 21)
          {
            goto LABEL_11;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 21)
        {
LABEL_11:

          return;
        }

        swift_beginAccess();
        sub_2583BF244();
        swift_endAccess();

        goto LABEL_11;
      }
    }
  }
}

void sub_2583BF244()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_258428F10())
  {
    if (sub_258428F10())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x259C7E900](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_258428F10();
LABEL_13:
      if (v3)
      {
        sub_258387370(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_2583BF31C(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v70 = *MEMORY[0x277D85DE8];
  sub_2583BB8D4(&v64);
  v67 = v64;
  v71.x = a3;
  v71.y = a4;
  v9 = CGPointApplyAffineTransform(v71, &v67);
  sub_2583BBB50(&v67);
  v72.x = a3;
  v72.y = a4;
  v10 = CGPointApplyAffineTransform(v72, &v67);
  v11 = sub_2583BB468();
  v13 = v12;
  v14 = round(v10.x) + v11 * -0.5;
  v15 = round(v10.y) + v12 * -0.5;
  v63 = round(v9.x - sub_2583BB43C());
  v17 = round(v9.y - v16);
  v18 = sub_2583BB414();
  v20 = v19;
  v73.origin.x = v14;
  v73.origin.y = v15;
  v73.size.width = v11;
  v73.size.height = v13;
  v21 = CGRectGetWidth(v73) * -0.5;
  v74.origin.x = v14;
  v74.origin.y = v15;
  v74.size.width = v11;
  v74.size.height = v13;
  v22 = CGRectGetHeight(v74) * -0.5;
  v56 = v15;
  v57 = v14;
  v75.origin.x = v14;
  v75.origin.y = v15;
  v58 = v13;
  v59 = v11;
  v75.size.width = v11;
  v75.size.height = v13;
  v76 = CGRectInset(v75, v21, v22);
  x = v76.origin.x;
  rect2 = v76.size.height;
  y = v76.origin.y;
  width = v76.size.width;
  v76.origin.x = v63;
  v76.origin.y = v17;
  v76.size.width = v18;
  v76.size.height = v20;
  v25 = CGRectGetWidth(v76) * -0.5;
  v77.origin.x = v63;
  v77.origin.y = v17;
  v77.size.width = v18;
  v77.size.height = v20;
  v26 = CGRectGetHeight(v77) * -0.5;
  v78.origin.x = v63;
  v62 = v17;
  v78.origin.y = v17;
  v53 = v18;
  v54 = v20;
  v78.size.width = v18;
  v78.size.height = v20;
  v79 = CGRectInset(v78, v25, v26);
  v27 = v79.origin.x;
  v55 = v79.origin.y;
  v28 = v79.size.width;
  height = v79.size.height;
  v80.origin.x = sub_2583BAF54();
  v83.origin.x = x;
  v30 = y;
  v83.origin.y = y;
  v31 = width;
  v83.size.width = width;
  v83.size.height = rect2;
  v32 = rect2;
  if (CGRectContainsRect(v80, v83))
  {
    v33 = height;
    v62 = v55;
    v63 = v27;
    v34 = x;
    v35 = v30;
  }

  else
  {
    v35 = v56;
    v34 = v57;
    v84.origin.x = v57;
    v84.origin.y = v56;
    v84.size.height = v58;
    v84.size.width = v59;
    if (!CGRectContainsRect(v4[3], v84))
    {
      goto LABEL_23;
    }

    v28 = v53;
    v33 = v54;
    v32 = v58;
    v31 = v59;
  }

  v36 = [a1 capturedImage];
  v67.a = v34;
  v67.b = v35;
  v67.c = v31;
  v67.d = v32;
  LOBYTE(v67.tx) = 0;
  sub_2583FD594(v36, 0, &v67, &v68);

  if (v69)
  {
    goto LABEL_23;
  }

  sub_2583BB1E0();
  v37 = sub_2583BAA0C();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = sub_2583BB044();
  src = v68;
  dest.rowBytes = v43;
  v81.origin.y = v62;
  v81.origin.x = v63;
  v81.size.width = v28;
  v81.size.height = v33;
  v45 = CGRectGetWidth(v81);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v45 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v45 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  dest.width = v45;
  v82.origin.y = v62;
  v82.origin.x = v63;
  v82.size.width = v28;
  v82.size.height = v33;
  v46 = CGRectGetHeight(v82);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v46 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  dest.height = v46;
  if (v62 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v62 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v62 * v43;
  if ((v62 * v43) >> 64 != v47 >> 63)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v63 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v63 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v48 = __OFADD__(v47, v63);
  v49 = v47 + v63;
  if (v48)
  {
    goto LABEL_38;
  }

  if (v37)
  {
    dest.data = (v37 + v49);
    if (!vImageScale_Planar8(&src, &dest, v44, 8u))
    {
      v52 = 0;
      goto LABEL_24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v51 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v51);

    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 32) = 0xD00000000000001BLL;
    *(v50 + 40) = 0x8000000258436CA0;
    sub_2584293A0();

LABEL_23:
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
    v52 = 1;
LABEL_24:
    *a2 = v37;
    *(a2 + 8) = v39;
    *(a2 + 16) = v41;
    *(a2 + 24) = v43;
    *(a2 + 32) = v52;
    return;
  }

  __break(1u);
}

uint64_t sub_2583BF8A0(id a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    v7 = [a1 capturedImage];
    v55 = sub_2583BAF54();
    v56 = v8;
    v57 = v9;
    v58 = v10;
    v59 = 0;
    sub_2583FD594(v7, 0, &v55, v46);

    if ((v47 & 1) == 0)
    {
      v11 = v46[2];
      v45 = v46[3];
      v13 = v46[0];
      v12 = v46[1];
      sub_2583BB1E0();
      v14 = sub_2583BAA0C();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v53[0] = v14;
      v53[1] = v16;
      v53[2] = v18;
      v53[3] = v20;
      v54 = 0;
      v21 = sub_2583BAC1C();
      v22 = sub_2583BB044();
      v23 = v48;
      sub_2583FD998(v13, v12, v11, v45, v53, 0, v22, v48, v21);
      if ((v52 & 1) == 0)
      {
        v24 = v49;
        v25 = v50;
        v26 = v51;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v23 = &v55;
  sub_2583BF31C(a1, &v55, *&a2, *&a3);
  if (v59)
  {
    return 0;
  }

  v24 = v56;
  v25 = v57;
  v26 = v58;
LABEL_8:
  v28 = *v23;
  v29 = [a1 camera];
  v30 = [objc_opt_self() currentDevice];
  v31 = [v30 orientation];

  [v29 eulerAngles];
  v33 = v32;
  if (v31 > 2)
  {
    if (v31 != 5)
    {
      if (v31 == 3)
      {
        v33 = v32 + 3.1416;
      }

      goto LABEL_18;
    }
  }

  else if (v31 != 1)
  {
    if (v31 == 2)
    {
      v33 = v32 + -1.5708;
    }

    goto LABEL_18;
  }

  v33 = v32 + 1.5708;
LABEL_18:
  v34 = *(v5 + 624);
  v35 = v33 * 57.296;
  [a1 timestamp];
  v37 = v36;
  type metadata accessor for PatchTracker.Keyframe();
  v38 = swift_allocObject();
  swift_weakInit();
  *(v38 + 128) = 0u;
  *(v38 + 144) = 0u;
  *(v38 + 160) = 0u;
  *(v38 + 176) = 0u;
  *(v38 + 192) = 1;
  *(v38 + 200) = 0u;
  *(v38 + 216) = 0u;
  *(v38 + 232) = 256;
  swift_weakAssign();
  *(v38 + 24) = v29;
  *(v38 + 32) = v28;
  *(v38 + 40) = v24;
  *(v38 + 48) = v25;
  *(v38 + 56) = v26;
  *(v38 + 64) = v34;
  *(v38 + 72) = v35;
  *(v38 + 80) = v37;
  *(v38 + 88) = 0;
  v39 = *(v5 + 808);
  ObjectType = swift_getObjectType();
  v41 = (*(v39 + 8))(ObjectType, v39);
  result = v38;
  *(v38 + 96) = v41;
  *(v38 + 104) = v42;
  *(v38 + 112) = v43;
  *(v38 + 120) = v44;
  return result;
}

uint64_t PatchTracker.Keyframe.__allocating_init(_:camera:scaledImage:orientation:gravityOffsetAngle:timestamp:anchor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, float a9, double a10)
{
  v20 = swift_allocObject();
  swift_weakInit();
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 192) = 1;
  *(v20 + 200) = 0u;
  *(v20 + 216) = 0u;
  *(v20 + 232) = 256;
  swift_weakAssign();
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a9;
  *(v20 + 80) = a10;
  *(v20 + 88) = a8;
  v21 = *(a1 + 800);
  v22 = *(a1 + 808);
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 8);
  v25 = a8;
  v26 = v21;
  v27 = a2;
  v28 = v24(ObjectType, v22);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  *(v20 + 96) = v28;
  *(v20 + 104) = v30;
  *(v20 + 112) = v32;
  *(v20 + 120) = v34;
  return v20;
}

uint64_t sub_2583BFD08(uint64_t a1, _OWORD *a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v86 = *MEMORY[0x277D85DE8];
  sub_2583BB8D4(&v72);
  v79 = v72;
  v87.x = a3;
  v87.y = a4;
  v10 = CGPointApplyAffineTransform(v87, &v79);
  v11 = v10.x - sub_2583BB43C();
  v12 = v10.y - *(v4 + 288);
  v88.origin.x = sub_2583BAFF8();
  v89.size.width = 11.0;
  v89.size.height = 11.0;
  v89.origin.x = v11;
  v89.origin.y = v12;
  if (CGRectContainsRect(v88, v89))
  {
    v71 = a2;
    v13 = *(v4 + 800);
    v14 = *(v5 + 808);
    type metadata accessor for PatchTracker.Patch();
    v15 = swift_allocObject();
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    *(v15 + 148) = 1;
    v16 = qword_27F928A28;
    *(v15 + 16) = qword_27F928A28;
    _VF = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!_VF)
    {
      v19 = v15;
      qword_27F928A28 = v18;
      *(v15 + 24) = v11;
      *(v15 + 32) = v12;
      __asm { FMOV            V0.2D, #11.0 }

      *(v15 + 40) = _Q0;
      *(v15 + 56) = a3;
      *(v15 + 64) = a4;
      *(v15 + 128) = a1;
      *(v15 + 120) = 0;
      *(v15 + 112) = 0;

      PatchTracker.Keyframe.getRay(screenPoint:sceneView:)(a3, a4, v13, v14);
      *(v19 + 80) = v24;
      *(v19 + 96) = v25;
      sub_2583FDC64(*(*(v19 + 128) + 32), *(*(v19 + 128) + 56), 1, *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48));
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = v5;
      v35 = sub_2583BB53C();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = sub_2583BB7A4();
      v79.a = v27;
      v79.b = v29;
      v79.c = v31;
      v79.d = v33;
      dest.data = v35;
      dest.height = v37;
      dest.width = v39;
      dest.rowBytes = v41;
      v43 = vImageConvolve_Planar8(&v79, &dest, v42, 0, 0, word_28697E3D8, 3u, 3u, 1, 0, 8u);
      if (v43)
      {
        v45 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_25842CCB0;
        v73 = 0;
        v74 = 0xE000000000000000;
        sub_258428FC0();

        v73 = 0xD00000000000001ELL;
        v74 = 0x80000002584343F0;
        v78 = v45;
        v47 = sub_2584292B0();
        MEMORY[0x259C7DFF0](v47);

        v48 = v73;
        v49 = v74;
        *(v46 + 56) = MEMORY[0x277D837D0];
        *(v46 + 32) = v48;
        *(v46 + 40) = v49;
        sub_2584293A0();

        return v19;
      }

      if (((dest.width | dest.height) & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v57 = dest.width * dest.height;
      if ((dest.width * dest.height) >> 64 != (dest.width * dest.height) >> 63)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (((dest.height - 1) & 0x8000000000000000) != 0)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (((dest.width - 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v58 = v34;
      v59 = 0;
      v60 = 0.0;
      while (1)
      {
        v61 = v59 * dest.width;
        if ((v59 * dest.width) >> 64 != (v59 * dest.width) >> 63)
        {
          break;
        }

        LOBYTE(v44) = *(dest.data + v61);
        v44 = LODWORD(v44);
        v60 = v60 + v44;
        if (dest.width != 1)
        {
          v62 = 1;
          while (!__OFADD__(v61, v62))
          {
            LOBYTE(v44) = *(dest.data + v61 + v62);
            v44 = LODWORD(v44);
            v60 = v60 + v44;
            if (dest.width == ++v62)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_21:
        if (v59 == dest.height - 1)
        {
          goto LABEL_25;
        }

        _VF = __OFADD__(v59++, 1);
        if (_VF)
        {
          __break(1u);
LABEL_25:
          if ((v60 / v57) < 4.0)
          {
            swift_beginAccess();
            v63 = *(v34 + 824);
            v64 = v71[7];
            v83 = v71[6];
            v84 = v64;
            v85 = v71[8];
            v65 = v71[3];
            *&v79.tx = v71[2];
            v80 = v65;
            v66 = v71[5];
            v81 = v71[4];
            v82 = v66;
            v67 = v71[1];
            *&v79.a = *v71;
            *&v79.c = v67;
            if (sub_2583C77E4(&v79) == 1 || (LOBYTE(v79.a) & 1) != 0 || (v63 & 4) == 0)
            {

              return 0;
            }

LABEL_31:
            swift_beginAccess();
            sub_258389808(v58 + 832, &dest, &qword_27F928A30);
            if (dest.rowBytes)
            {
              sub_2583ACFA4(&dest, &v73);
              sub_258385E40(&dest, &qword_27F928A30);
              v68 = v75;
              v69 = v76;
              __swift_project_boxed_opaque_existential_0(&v73, v75);
              (*(v69 + 40))(v19, v68, v69);

              goto LABEL_10;
            }

            goto LABEL_34;
          }

          return v19;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  swift_beginAccess();
  v50 = *(v4 + 824);
  v51 = a2[7];
  v83 = a2[6];
  v84 = v51;
  v85 = a2[8];
  v52 = a2[3];
  *&v79.tx = a2[2];
  v80 = v52;
  v53 = a2[5];
  v81 = a2[4];
  v82 = v53;
  v54 = a2[1];
  *&v79.a = *a2;
  *&v79.c = v54;
  v19 = 0;
  if (sub_2583C77E4(&v79) != 1)
  {
    v19 = 0;
    if ((LOBYTE(v79.a) & 1) == 0 && (v50 & 4) != 0)
    {
      swift_beginAccess();
      sub_258389808(v5 + 832, &dest, &qword_27F928A30);
      if (dest.rowBytes)
      {
        sub_2583ACFA4(&dest, &v73);
        sub_258385E40(&dest, &qword_27F928A30);
        v55 = v75;
        v56 = v76;
        __swift_project_boxed_opaque_existential_0(&v73, v75);
        (*(v56 + 32))(v55, v56);
LABEL_10:
        __swift_destroy_boxed_opaque_existential_0(&v73);
        return 0;
      }

LABEL_34:
      sub_258385E40(&dest, &qword_27F928A30);
      return 0;
    }
  }

  return v19;
}

uint64_t PatchTracker.Patch.__allocating_init(imageRect:keyframe:sceneView:screenPoint:matchingScore:matchingSimilarities:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, float a11)
{
  result = swift_allocObject();
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 148) = 1;
  v23 = qword_27F928A28;
  *(result + 16) = qword_27F928A28;
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    qword_27F928A28 = v25;
    *(result + 24) = a5;
    *(result + 32) = a6;
    *(result + 40) = a7;
    *(result + 48) = a8;
    *(result + 56) = a9;
    *(result + 64) = a10;
    *(result + 128) = a1;
    *(result + 120) = a11;
    *(result + 112) = a4;
    v26 = result;

    PatchTracker.Keyframe.getRay(screenPoint:sceneView:)(a9, a10, a2, a3);
    v29 = v28;
    v30 = v27;

    *(v26 + 80) = v30;
    *(v26 + 96) = v29;
    return v26;
  }

  return result;
}

__n128 sub_2583C03F4@<Q0>(uint64_t a1@<X0>, _OWORD *i@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v70 = MEMORY[0x277D84F90];

  MEMORY[0x259C7E150](v7);
  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_48:
    sub_2584288B0();
  }

  sub_258428900();
  v8 = v70;
  v9 = v4 + 824;
  swift_beginAccess();
  v10 = *(v4 + 824);
  v11 = i[7];
  v72[6] = i[6];
  v72[7] = v11;
  v72[8] = i[8];
  v12 = i[3];
  v72[2] = i[2];
  v72[3] = v12;
  v13 = i[5];
  v72[4] = i[4];
  v72[5] = v13;
  v14 = i[1];
  v72[0] = *i;
  v72[1] = v14;
  v49 = v70;
  v46 = (v4 + 824);
  v47 = i;
  if (sub_2583C77E4(v72) == 1 || (v72[0] & 1) != 0 || (v10 & 4) == 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v69 = v15;
  v16 = (v4 + 592);
  swift_beginAccess();
  v17 = *(v4 + 592);
  if (v17 >> 62)
  {
    v33 = sub_258428F10();
    v19 = (v33 - 1);
    if (!__OFSUB__(v33, 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = (v18 - 1);
    if (!__OFSUB__(v18, 1))
    {
LABEL_9:
      v50 = v4;
      v4 = 0;
      while (1)
      {
        for (i = 0; ; i = (i + 1))
        {
          while (1)
          {
            v20 = v19;
            if (v19 <= 0)
            {
              if ((v19 != 0) | v4 & 1 || i > 2)
              {
                goto LABEL_44;
              }

              v19 = 0;
              v4 = 1;
            }

            else
            {
              if (i > 2)
              {
                goto LABEL_44;
              }

              v19 = (v19 - 1);
            }

            v21 = *v16;
            if ((*v16 & 0xC000000000000001) != 0)
            {

              v22 = MEMORY[0x259C7E900](v20, v21);
            }

            else
            {
              if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_48;
              }

              v22 = *(v21 + 8 * v20 + 32);
            }

            v23 = *(a1 + 128);
            if (*(v22 + 80) != *(v23 + 80))
            {
              v24 = *(v23 + 24);
              v25 = PatchTracker.Keyframe.isCameraAligned(with:)(v24);

              if (!v25)
              {
                break;
              }
            }
          }

          sub_2583C0A04(a1, v22);
          if (v26)
          {
            break;
          }

LABEL_35:
        }

        v27 = v26;
        if (!swift_weakLoadStrong())
        {
          break;
        }

        v28 = *(v27 + 120);

        v29 = v28 < 0.8 || v28 > 0.99;
        if (v29 || *(v27 + 112) > 3)
        {
          break;
        }

        MEMORY[0x259C7E150](v31);
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2584288B0();
        }

        sub_258428900();
        v49 = v70;
        if (v70 >> 62)
        {
          v32 = sub_258428F10();
        }

        else
        {
          v32 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v32 >= 8)
        {
LABEL_44:
          sub_2583B26A4(v67);
          v9 = v49;
          v8 = v50;
          v19 = v46;
          v4 = v47;
          if (v49 >> 62)
          {
            goto LABEL_52;
          }

          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5)
          {
            goto LABEL_46;
          }

LABEL_53:
          sub_2583C1010(v9, v4, &v56);
          goto LABEL_54;
        }
      }

      if (v69)
      {

        MEMORY[0x259C7E150](v30);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2584288B0();
        }

        sub_258428900();
      }

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_52:
  if (sub_258428F10() >= 5)
  {
    goto LABEL_53;
  }

LABEL_46:
  v64 = v67[8];
  v65 = v67[9];
  v66 = v68;
  v60 = v67[4];
  v61 = v67[5];
  v62 = v67[6];
  v63 = v67[7];
  v56 = v67[0];
  v57 = v67[1];
  v58 = v67[2];
  v59 = v67[3];
LABEL_54:
  v73[8] = v64;
  v73[9] = v65;
  v74 = v66;
  v73[4] = v60;
  v73[5] = v61;
  v73[6] = v62;
  v73[7] = v63;
  v73[0] = v56;
  v73[1] = v57;
  v73[2] = v58;
  v73[3] = v59;
  v34 = *v19;
  v35 = *(v4 + 112);
  v71[6] = *(v4 + 96);
  v71[7] = v35;
  v71[8] = *(v4 + 128);
  v36 = *(v4 + 48);
  v71[2] = *(v4 + 32);
  v71[3] = v36;
  v37 = *(v4 + 80);
  v71[4] = *(v4 + 64);
  v71[5] = v37;
  v38 = *(v4 + 16);
  v71[0] = *v4;
  v71[1] = v38;
  if (sub_2583C77E4(v71) == 1 || (v71[0] & 1) != 0 || (v34 & 4) == 0)
  {
  }

  else
  {
    swift_beginAccess();
    sub_258389808(v8 + 832, v54, &qword_27F928A30);
    if (v55)
    {
      sub_2583ACFA4(v54, v51);
      sub_258385E40(v54, &qword_27F928A30);
      v44 = v52;
      v45 = v53;
      __swift_project_boxed_opaque_existential_0(v51, v52);
      (*(v45 + 48))(v9, v69, v73, v44, v45);

      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    else
    {

      sub_258385E40(v54, &qword_27F928A30);
    }
  }

  v39 = v65;
  *(a3 + 128) = v64;
  *(a3 + 144) = v39;
  *(a3 + 160) = v66;
  v40 = v61;
  *(a3 + 64) = v60;
  *(a3 + 80) = v40;
  v41 = v63;
  *(a3 + 96) = v62;
  *(a3 + 112) = v41;
  v42 = v57;
  *a3 = v56;
  *(a3 + 16) = v42;
  result = v59;
  *(a3 + 32) = v58;
  *(a3 + 48) = result;
  return result;
}

void sub_2583C0A04(double *a1, void *a2)
{
  PatchTracker.Keyframe.getEpipolarLine(patch:)(a1, v102);
  if ((v103 & 1) == 0)
  {
    v6 = *&v102[2];
    v5 = *&v102[3];
    v7 = *v102;
    v8 = *&v102[1];
    v9 = sub_2583BB43C();
    v10 = v7 - v9;
    v12 = v8 - v11;
    v13 = v6 - v9;
    v14 = v5 - v11;
    v15 = a2[4];
    v16 = a2[5];
    v17 = v2;
    v18 = a2[6];
    v94 = a2;
    sub_2583C2C48(&v104);
    v19 = *(a1 + 16);
    v20 = a1[3];
    v21 = a1[4];
    v22 = a1[5];
    v23 = a1[6];
    v24 = *(v19 + 32);
    v25 = *(v19 + 48);
    sub_2583C2C48(v107);
    CGRect.ints.getter(v20, v21, v22, v23);
    v99 = v26;
    v100 = v27;
    v29 = v28;
    v31 = v30;
    sub_2583C3838();
    v33 = v32;
    v95 = v17;
    v34 = (v17 + 616);
    swift_beginAccess();
    sub_2583A9780(v108, v10, v12, v13, v14);
    if ((v109 & 1) == 0)
    {
      if ((v18 | v16) < 0)
      {
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
        return;
      }

      v98 = v108[0];
      v96 = v16;
      v97 = v108[1];
      v36 = v108[2];
      v35 = v108[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v34;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_258386F98(0, *(v38 + 16));
      }

      else
      {
        *v34 = sub_25838C544(0, *(v38 + 24) >> 1);
      }

      sub_2583A9984(v98, v97, v36, v35, v34);
      v43 = *(*v34 + 16);
      if (v43)
      {
        v44 = 0;
        v45 = 0;
        v46 = *v34 + 32;
        v47 = v29 / 2;
        v48 = v31 / 2;
        v49 = -1.0;
        v50 = v96;
        do
        {
          v53 = (v46 + 16 * v45);
          v54 = *v53;
          if ((*v53 & 0x8000000000000000) == 0)
          {
            v55 = v54 + v29;
            if (__OFADD__(v54, v29))
            {
              goto LABEL_99;
            }

            if (v55 < v18)
            {
              v56 = v53[1];
              if ((v56 & 0x8000000000000000) == 0)
              {
                v57 = v56 + v31;
                if (__OFADD__(v56, v31))
                {
                  goto LABEL_100;
                }

                if (v57 < v50)
                {
                  if (v25 < 0)
                  {
                    goto LABEL_101;
                  }

                  if (v106)
                  {
                    v58 = __OFSUB__(v55, 1);
                    v59 = v55 - 1;
                    if (v58)
                    {
                      goto LABEL_105;
                    }

                    if (v59 >= v18 - 1)
                    {
                      v59 = v18 - 1;
                    }

                    v58 = __OFSUB__(v57, 1);
                    v60 = v57 - 1;
                    if (v58)
                    {
                      goto LABEL_107;
                    }

                    if (v60 >= v96 - 1)
                    {
                      v60 = v96 - 1;
                    }

                    if ((v29 * v31) >> 64 != (v29 * v31) >> 63)
                    {
                      goto LABEL_109;
                    }

                    if (v59 < v54 || v60 < v56)
                    {
                      goto LABEL_111;
                    }

                    v61 = 0.0;
                    v62 = v56;
                    while (1)
                    {
                      v63 = v62 * v18;
                      if ((v62 * v18) >> 64 != (v62 * v18) >> 63)
                      {
                        goto LABEL_89;
                      }

                      if (__OFADD__(v63, v54))
                      {
                        goto LABEL_90;
                      }

                      LOBYTE(v40) = *(v15 + v63 + v54);
                      v40 = LODWORD(v40);
                      v61 = v61 + v40;
                      if (v59 != v54)
                      {
                        v64 = v54 + 1;
                        v65 = v59 - v54;
                        if (v59 <= v54)
                        {
                          goto LABEL_98;
                        }

                        while (!__OFADD__(v63, v64))
                        {
                          LOBYTE(v40) = *(v15 + v63 + v64);
                          v40 = LODWORD(v40);
                          v61 = v61 + v40;
                          ++v64;
                          if (!--v65)
                          {
                            goto LABEL_40;
                          }
                        }

LABEL_88:
                        __break(1u);
LABEL_89:
                        __break(1u);
LABEL_90:
                        __break(1u);
LABEL_91:
                        __break(1u);
                        goto LABEL_92;
                      }

LABEL_40:
                      if (v62 == v60)
                      {
                        break;
                      }

                      v58 = __OFADD__(v62++, 1);
                      if (v58)
                      {
                        goto LABEL_91;
                      }
                    }

                    v39 = v61 / (v29 * v31);
                    v50 = v96;
                    if (v31 < 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v66 = v54 + v47;
                    if (__OFADD__(v54, v47))
                    {
                      goto LABEL_106;
                    }

                    v67 = v56 + v48;
                    if (__OFADD__(v56, v48))
                    {
                      goto LABEL_108;
                    }

                    if (v105 < 0)
                    {
                      goto LABEL_110;
                    }

                    v68 = v67 * v105;
                    if ((v67 * v105) >> 64 != (v67 * v105) >> 63)
                    {
                      goto LABEL_112;
                    }

                    v58 = __OFADD__(v68, v66);
                    v69 = v68 + v66;
                    if (v58)
                    {
                      goto LABEL_113;
                    }

                    LOBYTE(v39) = *(v104 + v69);
                    v39 = LODWORD(v39);
                    v50 = v96;
                    if (v31 < 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  if (v31)
                  {
                    if (v29 < 0)
                    {
                      goto LABEL_104;
                    }

                    v70 = 0;
                    v40 = 0.0;
                    v71 = 0.0;
                    v72 = 0.0;
                    while (1)
                    {
                      v73 = v100 + v70;
                      if (__OFADD__(v100, v70))
                      {
                        break;
                      }

                      v74 = v73 * v25;
                      if ((v73 * v25) >> 64 != (v73 * v25) >> 63)
                      {
                        goto LABEL_93;
                      }

                      v58 = __OFADD__(v74, v99);
                      v75 = v74 + v99;
                      if (v58)
                      {
                        goto LABEL_94;
                      }

                      v76 = v56 + v70;
                      if (__OFADD__(v56, v70))
                      {
                        goto LABEL_95;
                      }

                      v77 = v76 * v18;
                      if ((v76 * v18) >> 64 != (v76 * v18) >> 63)
                      {
                        goto LABEL_96;
                      }

                      if (v29)
                      {
                        v58 = __OFADD__(v77, v54);
                        v78 = v77 + v54;
                        if (v58)
                        {
                          goto LABEL_97;
                        }

                        v79 = 0;
                        while (1)
                        {
                          v80 = v75 + v79;
                          if (__OFADD__(v75, v79))
                          {
                            break;
                          }

                          v81 = v78 + v79;
                          if (__OFADD__(v78, v79))
                          {
                            goto LABEL_87;
                          }

                          ++v79;
                          LOBYTE(v41) = *(v24 + v80);
                          v82 = LODWORD(v41) - v33;
                          LOBYTE(v42) = *(v15 + v81);
                          v42 = LODWORD(v42) - v39;
                          v72 = v72 + (v82 * v42);
                          v71 = v71 + (v82 * v82);
                          v41 = v42 * v42;
                          v40 = v40 + (v42 * v42);
                          if (v29 == v79)
                          {
                            goto LABEL_55;
                          }
                        }

                        __break(1u);
LABEL_87:
                        __break(1u);
                        goto LABEL_88;
                      }

LABEL_55:
                      if (++v70 == v31)
                      {
                        v50 = v96;
                        if (v72 <= 0.0 || v71 == 0.0 || v40 == 0.0)
                        {
                          goto LABEL_9;
                        }

                        v39 = v72 / sqrtf(v40 * v71);
                        v83 = v97;
                        if (v49 < v39)
                        {
                          v83 = v56;
                        }

                        v84 = v98;
                        if (v49 < v39)
                        {
                          v84 = v54;
                        }

                        v97 = v83;
                        v98 = v84;
                        if (v49 < v39)
                        {
                          v49 = v39;
                        }

                        v40 = 0.8;
                        if (v39 >= 0.8)
                        {
                          v58 = __OFADD__(v44++, 1);
                          if (v58)
                          {
                            __break(1u);
                            goto LABEL_81;
                          }
                        }

                        goto LABEL_15;
                      }
                    }

LABEL_92:
                    __break(1u);
LABEL_93:
                    __break(1u);
LABEL_94:
                    __break(1u);
LABEL_95:
                    __break(1u);
LABEL_96:
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
                    goto LABEL_103;
                  }

LABEL_9:
                  v51 = v97;
                  if (v49 < 0.0)
                  {
                    v51 = v56;
                  }

                  v52 = v98;
                  if (v49 < 0.0)
                  {
                    v52 = v54;
                  }

                  v97 = v51;
                  v98 = v52;
                  if (v49 < 0.0)
                  {
                    v49 = 0.0;
                  }
                }
              }
            }
          }

LABEL_15:
          ++v45;
        }

        while (v45 != v43);
LABEL_81:
        if (v49 <= 0.0)
        {
          goto LABEL_84;
        }

        swift_endAccess();
        sub_2583BBA1C(&v110);
        v101 = v110;
        v111.x = vcvtd_n_f64_s64(v29, 1uLL) + v98;
        v111.y = vcvtd_n_f64_s64(v31, 1uLL) + v97;
        v85 = CGPointApplyAffineTransform(v111, &v101);
        v86 = *(v95 + 800);
        v87 = *(v95 + 808);
        type metadata accessor for PatchTracker.Patch();
        v88 = swift_allocObject();
        *(v88 + 136) = 0;
        *(v88 + 144) = 0;
        *(v88 + 148) = 1;
        v89 = qword_27F928A28;
        *(v88 + 16) = qword_27F928A28;
        v58 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (!v58)
        {
          qword_27F928A28 = v90;
          *(v88 + 24) = v98;
          *(v88 + 32) = v97;
          *(v88 + 40) = v29;
          *(v88 + 48) = v31;
          *(v88 + 56) = v85;
          *(v88 + 128) = v94;
          *(v88 + 120) = v49;
          *(v88 + 112) = v44;
          v91 = v88;

          PatchTracker.Keyframe.getRay(screenPoint:sceneView:)(v85.x, v85.y, v86, v87);
          *(v91 + 80) = v92;
          *(v91 + 96) = v93;
          return;
        }

        goto LABEL_114;
      }
    }

LABEL_84:
    swift_endAccess();
  }
}

uint64_t sub_2583C1010@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, float32x4_t *a3@<X8>)
{
  v4 = v3;
  sub_2583B26A4(v221);
  v172 = v221[7];
  v173 = v221[8];
  v174 = v221[9];
  v168 = v221[3];
  v169 = v221[4];
  v175 = v222;
  v170 = v221[5];
  v171 = v221[6];
  v76 = v221[0];
  v7 = a1 >> 62;
  v166 = v221[1];
  v167 = v221[2];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_258428F10();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  v81 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v9 = *(a1 + 32);

    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_9:
  v9 = MEMORY[0x259C7E900](0, a1);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!v7)
  {
LABEL_6:
    result = *(v10 + 16);
    goto LABEL_11;
  }

LABEL_10:
  result = sub_258428F10();
LABEL_11:
  v11 = result - 1;
  if (result < 1)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v74 = a2;
  if (result != 1)
  {
    if (!v81)
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 < 2 || result > v28)
      {
        goto LABEL_82;
      }
    }

    v77 = MEMORY[0x277D84F90];
    v79 = v4;
    v29 = 0.0;
    v30 = 5;
    while (1)
    {
      if (v81)
      {
        v31 = MEMORY[0x259C7E900](v30 - 4, a1);
      }

      else
      {
        v31 = *(a1 + 8 * v30);
      }

      v32 = v9;
      v33 = sub_2583C37CC();
      result = sub_2583C37CC();
      v34 = *(result + 16);
      v35 = *&v33[1].f64[0];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        break;
      }

      v37 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v36 > *&v33[1].f64[1] >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        result = sub_25839D770(result, v38, 1, v33);
        v33 = result;
      }

      v9 = v32;
      v4 = v79;
      if (*(v37 + 16))
      {
        v39 = v33[1].f64[0];
        if ((*&v33[1].f64[1] >> 1) - *&v39 < v34)
        {
          goto LABEL_78;
        }

        memcpy(&v33[2].f64[*&v39], (v37 + 32), 8 * v34);

        v40 = *&v33[1].f64[0];
        if (v34)
        {
          v41 = __OFADD__(v40, v34);
          v40 += v34;
          if (v41)
          {
            goto LABEL_79;
          }

          *&v33[1].f64[0] = v40;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_77;
        }

        v40 = *&v33[1].f64[0];
      }

      v83 = computeTriangulation(&v33[2], v40);

      sub_2583C280C(v32, v31, &v176, v83);
      v207 = v184;
      v208 = v185;
      v203 = v180;
      v204 = v181;
      v206 = v183;
      v205 = v182;
      v199 = v176;
      v200 = v177;
      v202 = v179;
      v201 = v178;
      v218 = v184;
      v219 = v185;
      v214 = v180;
      v215 = v181;
      v217 = v183;
      v216 = v182;
      v210 = v176;
      v211 = v177;
      LODWORD(v209) = v186;
      v220 = v186;
      v213 = v179;
      v212 = v178;
      if (sub_2583B26C4(&v210) == 1)
      {
      }

      else
      {
        v114 = v218;
        v115 = v219;
        LODWORD(v116) = v220;
        v110 = v214;
        v111 = v215;
        v112 = v216;
        v113 = v217;
        v106 = v210;
        v107 = v211;
        v42 = v219.f32[3] < *(v79 + 464);
        v108 = v212;
        v109 = v213;
        if (v42 || *(v79 + 460) < v219.f32[3])
        {

          sub_258385E40(&v176, &qword_27F928890);
        }

        else
        {
          v43 = *&v116;
          if (v29 < *&v116)
          {
            v144 = v76;
            v151 = v172;
            v152 = v173;
            v153 = v174;
            v154 = v175;
            v147 = v168;
            v148 = v169;
            v149 = v170;
            v150 = v171;
            v145 = v166;
            v146 = v167;
            sub_258385E40(&v144, &qword_27F928890);
            v163 = v207;
            v164 = v208;
            v165 = v209;
            v159 = v203;
            v160 = v204;
            v162 = v206;
            v161 = v205;
            v155 = v199;
            v156 = v200;
            v158 = v202;
            v157 = v201;
            sub_258389808(&v155, &v95, &qword_27F928340);

            v92 = v114;
            v93 = v115;
            v94 = v116;
            v88 = v110;
            v89 = v111;
            v90 = v112;
            v91 = v113;
            v84 = v106;
            v85 = v107;
            v86 = v108;
            v87 = v109;
            nullsub_1(&v84);
            v76 = v84;
            v172 = v91;
            v173 = v92;
            v174 = v93;
            v175 = v94;
            v168 = v87;
            v169 = v88;
            v170 = v89;
            v171 = v90;
            v166 = v85;
            v167 = v86;
            v103 = v207;
            v104 = v208;
            LODWORD(v105) = v209;
            v99 = v203;
            v100 = v204;
            v101 = v205;
            v102 = v206;
            v95 = v199;
            v96 = v200;
            v97 = v201;
            v98 = v202;
            sub_258389808(&v95, &v133, &qword_27F928340);
            v29 = v43;
          }

          sub_258389808(&v106, &v95, &qword_27F928340);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_25839D518(0, v77[1].i64[0] + 1, 1, v77);
          }

          v45 = v77[1].u64[0];
          v44 = v77[1].u64[1];
          if (v45 >= v44 >> 1)
          {
            v77 = sub_25839D518((v44 > 1), v45 + 1, 1, v77);
          }

          sub_258385E40(&v176, &qword_27F928890);
          v77[1].i64[0] = v45 + 1;
          v46 = &v77[11 * v45];
          v48 = v107;
          v47 = v108;
          v46[2] = v106;
          v46[3] = v48;
          v46[4] = v47;
          v49 = v112;
          v51 = v109;
          v50 = v110;
          v46[7] = v111;
          v46[8] = v49;
          v46[5] = v51;
          v46[6] = v50;
          v53 = v114;
          v52 = v115;
          v54 = v113;
          v46[12].i32[0] = v116;
          v46[10] = v53;
          v46[11] = v52;
          v46[9] = v54;
        }
      }

      ++v30;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_14:
  v163 = v173;
  v164 = v174;
  v159 = v169;
  v160 = v170;
  v162 = v172;
  v161 = v171;
  v155 = v76;
  v156 = v166;
  v158 = v168;
  v157 = v167;
  v152 = v173;
  v153 = v174;
  v148 = v169;
  v149 = v170;
  v165 = v175;
  v154 = v175;
  v151 = v172;
  v150 = v171;
  v147 = v168;
  v146 = v167;
  v145 = v166;
  v144 = v76;
  v12 = v77;
  v13 = v77[1].u64[0];
  sub_2583BB864();

  sub_258389808(&v155, &v199, &qword_27F928890);

  v14 = v77;
  if (v13 >= 4)
  {

    sub_2583B1D70(v77, &v187, 0.5, v15);

    v207 = v195;
    v208 = v196;
    v209 = v197;
    v203 = v191;
    v204 = v192;
    v206 = v194;
    v205 = v193;
    v199 = v187;
    v200 = v188;
    v202 = v190;
    v201 = v189;
    v14 = v77;
    if (sub_2583B26C4(&v199) != 1)
    {
      v103 = v207;
      v104 = v208;
      v105 = v209;
      v99 = v203;
      v100 = v204;
      v101 = v205;
      v102 = v206;
      v95 = v199;
      v96 = v200;
      v97 = v201;
      v98 = v202;
      v141 = v152;
      v142 = v153;
      v143 = v154;
      v137 = v148;
      v138 = v149;
      v139 = v150;
      v140 = v151;
      v133 = v144;
      v134 = v145;
      v135 = v146;
      v136 = v147;
      sub_258385E40(&v133, &qword_27F928890);

      v114 = v195;
      v115 = v196;
      v116 = v197;
      v110 = v191;
      v111 = v192;
      v112 = v193;
      v113 = v194;
      v106 = v187;
      v107 = v188;
      v108 = v189;
      v109 = v190;
      sub_258389808(&v106, &v84, &qword_27F928A70);
      sub_258385E40(&v95, &qword_27F928340);
      v14 = *(&v105 + 1);

      v92 = v103;
      v93 = v104;
      v94 = v105;
      v88 = v99;
      v89 = v100;
      v90 = v101;
      v91 = v102;
      v84 = v95;
      v85 = v96;
      v86 = v97;
      v87 = v98;
      nullsub_1(&v84);
      v152 = v92;
      v153 = v93;
      v154 = v94;
      v148 = v88;
      v149 = v89;
      v151 = v91;
      v150 = v90;
      v144 = v84;
      v145 = v85;
      v147 = v87;
      v146 = v86;
    }
  }

  v16 = v14[1].u64[0];
  if (v16 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25842DFB0;
    *(v17 + 32) = v9;
    v84.i64[0] = MEMORY[0x277D84F90];

    sub_258429060();
    v18 = v14 + 2;
    for (i = v16 - 1; ; --i)
    {
      v20 = *v18;
      v21 = v18[2];
      v107 = v18[1];
      v108 = v21;
      v106 = v20;
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[6];
      v111 = v18[5];
      v112 = v24;
      v109 = v22;
      v110 = v23;
      v25 = v18[7];
      v26 = v18[8];
      v27 = v18[9];
      LODWORD(v116) = v18[10].i32[0];
      v114 = v26;
      v115 = v27;
      v113 = v25;
      sub_258389808(&v106, &v95, &qword_27F928340);

      sub_258429030();
      sub_258429070();
      sub_258429080();
      sub_258429040();
      if (!i)
      {
        break;
      }

      v18 += 11;
    }

    v106.i64[0] = v17;
    sub_2583C2500(v84.u64[0]);
    sub_2583C2090(v106.u64[0], &v95);

    v114 = v103;
    v115 = v104;
    LODWORD(v116) = v105;
    v110 = v99;
    v111 = v100;
    v112 = v101;
    v113 = v102;
    v106 = v95;
    v107 = v96;
    v108 = v97;
    v109 = v98;
    v12 = v77;
    if (sub_2583B26C4(&v106) != 1)
    {
      sub_2583C7A24(&v95, &v144, &qword_27F928890);
    }
  }

  v92 = v152;
  v93 = v153;
  v94 = v154;
  v88 = v148;
  v89 = v149;
  v90 = v150;
  v91 = v151;
  v84 = v144;
  v85 = v145;
  v86 = v146;
  v87 = v147;
  swift_beginAccess();
  v55 = *(v4 + 824);
  v56 = v74[7];
  v198[6] = v74[6];
  v198[7] = v56;
  v198[8] = v74[8];
  v57 = v74[3];
  v198[2] = v74[2];
  v198[3] = v57;
  v58 = v74[4];
  v198[5] = v74[5];
  v198[4] = v58;
  v59 = *v74;
  v198[1] = v74[1];
  v198[0] = v59;
  if (sub_2583C77E4(v198) == 1 || (v198[0] & 1) != 0 || (v55 & 1) == 0)
  {
    sub_258389808(&v84, &v133, &qword_27F928890);
  }

  else
  {
    swift_beginAccess();
    sub_258389808(v4 + 832, v120, &qword_27F928A30);
    if (v121)
    {
      sub_2583ACFA4(v120, v117);
      sub_258389808(&v84, &v133, &qword_27F928890);
      sub_258385E40(v120, &qword_27F928A30);
      v82 = v118;
      v65 = v119;
      __swift_project_boxed_opaque_existential_0(v117, v118);
      v141 = v173;
      v142 = v174;
      v137 = v169;
      v138 = v170;
      v139 = v171;
      v140 = v172;
      v135 = v167;
      v136 = v168;
      v143 = v175;
      v133 = v76;
      v134 = v166;
      v66 = sub_2583B26C4(&v133);
      v80 = v66 == 1;
      v67 = v76.i64[0];
      if (v66 == 1)
      {
        v67 = 0;
      }

      v78 = v67;
      if (v66 == 1)
      {
        v68 = 0;
      }

      else
      {
        v68 = v76.i64[1];
      }

      v130 = v152;
      v131 = v153;
      v132 = v154;
      v126 = v148;
      v127 = v149;
      v128 = v150;
      v129 = v151;
      v122 = v144;
      v123 = v145;
      v124 = v146;
      v125 = v147;
      v69 = sub_2583B26C4(&v122);
      v70 = v69 == 1;
      if (v69 == 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = v144.i64[0];
      }

      if (v69 == 1)
      {
        v72 = 0;
      }

      else
      {
        v72 = v144.i64[1];
      }

      v73 = *(v65 + 16);

      v73(v12, v14, v78, v68, v80, v71, v72, v70, v82, v65);
      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    else
    {
      sub_258389808(&v84, &v133, &qword_27F928890);

      sub_258385E40(v120, &qword_27F928A30);
    }
  }

  v130 = v152;
  v131 = v153;
  v132 = v154;
  v126 = v148;
  v127 = v149;
  v128 = v150;
  v129 = v151;
  v122 = v144;
  v123 = v145;
  v124 = v146;
  v125 = v147;
  sub_258385E40(&v122, &qword_27F928890);
  v141 = v173;
  v142 = v174;
  v137 = v169;
  v138 = v170;
  v139 = v171;
  v140 = v172;
  v133 = v76;
  v134 = v166;
  v143 = v175;
  v135 = v167;
  v136 = v168;
  sub_258385E40(&v133, &qword_27F928890);

  v60 = v93;
  a3[8] = v92;
  a3[9] = v60;
  a3[10].i32[0] = v94;
  v61 = v89;
  a3[4] = v88;
  a3[5] = v61;
  v62 = v91;
  a3[6] = v90;
  a3[7] = v62;
  v63 = v85;
  *a3 = v84;
  a3[1] = v63;
  v64 = v87;
  a3[2] = v86;
  a3[3] = v64;
  return result;
}

__n128 PatchTracker.triangulatePatches(sourcePatch:destPatch:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2583C37CC();
  v7 = sub_2583C37CC();
  *&v14[0] = v6;
  sub_2583C2414(v7);
  v13 = computeTriangulation(*&v14[0] + 32, *(*&v14[0] + 16));

  sub_2583C280C(a1, a2, v14, v13);
  v8 = v14[9];
  *(a3 + 128) = v14[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v15;
  v9 = v14[5];
  *(a3 + 64) = v14[4];
  *(a3 + 80) = v9;
  v10 = v14[7];
  *(a3 + 96) = v14[6];
  *(a3 + 112) = v10;
  v11 = v14[1];
  *a3 = v14[0];
  *(a3 + 16) = v11;
  result = v14[3];
  *(a3 + 32) = v14[2];
  *(a3 + 48) = result;
  return result;
}

void sub_2583C2090(unint64_t a1@<X0>, int64_t a2@<X8>)
{
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:
    computeTriangulation(MEMORY[0x277D84F90] + 32, *(MEMORY[0x277D84F90] + 16));
    __break(1u);
    goto LABEL_34;
  }

LABEL_32:
  v4 = sub_258428F10();
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v4 < 1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    v20 = MEMORY[0x259C7E900](0, a1);
    v21 = MEMORY[0x259C7E900](v30, a1);
LABEL_27:

    sub_2583C280C(v20, v21, v31, v27);

    v22 = v31[9];
    *(v29 + 128) = v31[8];
    *(v29 + 144) = v22;
    *(v29 + 160) = v32;
    v23 = v31[5];
    *(v29 + 64) = v31[4];
    *(v29 + 80) = v23;
    v24 = v31[7];
    *(v29 + 96) = v31[6];
    *(v29 + 112) = v24;
    v25 = v31[1];
    *v29 = v31[0];
    *(v29 + 16) = v25;
    v26 = v31[3];
    *(v29 + 32) = v31[2];
    *(v29 + 48) = v26;
    return;
  }

  v29 = a2;
  v30 = v4 - 1;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v28 = (a1 + 32);
  v7 = MEMORY[0x277D84F90];
  do
  {
    if (v6)
    {
      MEMORY[0x259C7E900](v5, a1);
    }

    else
    {
    }

    v8 = sub_2583C37CC();
    v9 = v8[1].f64[0];
    v10 = *(v7 + 2);
    a2 = v10 + *&v9;
    if (__OFADD__(v10, *&v9))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v13 = *(v7 + 3) >> 1, v13 >= a2))
    {
      if (!*&v11[1].f64[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v10 <= a2)
      {
        v14 = v10 + *&v9;
      }

      else
      {
        v14 = v10;
      }

      v7 = sub_25839D770(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v13 = *(v7 + 3) >> 1;
      if (!*&v11[1].f64[0])
      {
LABEL_5:

        if (v9 != 0.0)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      }
    }

    v15 = *(v7 + 2);
    if (v13 - v15 < *&v9)
    {
      goto LABEL_30;
    }

    memcpy(&v7[8 * v15 + 32], &v11[2], 8 * *&v9);

    if (v9 != 0.0)
    {
      v16 = *(v7 + 2);
      v17 = __OFADD__(v16, *&v9);
      v18 = v16 + *&v9;
      if (v17)
      {
        goto LABEL_31;
      }

      *(v7 + 2) = v18;
    }

LABEL_6:
    ++v5;
  }

  while (v4 != v5);
  v27 = computeTriangulation((v7 + 32), *(v7 + 2));
  if (v6)
  {
    goto LABEL_35;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    if (v30 < v19)
    {
      v20 = *v28;
      v21 = v28[v30];

      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2583C2328(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25839D2FC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2583C2414(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25839D770(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2583C2500(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_258428F10();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_258428F10();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2583C40E8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2583C75BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

float sub_2583C25F0(double a1, double a2)
{
  v3 = v2;
  v4 = *(v2 + 472);
  sub_2583BDA68(a1, a2);
  v6 = v5;
  swift_beginAccess();
  v7 = *(v2 + 544);
  if (*(v7 + 16) && (v8 = sub_2583844DC(v6), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 192 * v8);
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    v34 = *v10;
    v35 = v13;
    v36 = v12;
    v37 = v11;
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[7];
    v40 = v10[6];
    v41 = v16;
    v38 = v14;
    v39 = v15;
    v17 = v10[8];
    v18 = v10[9];
    v19 = v10[10];
    v45 = *(v10 + 22);
    v43 = v18;
    v44 = v19;
    v42 = v17;
    memmove(&__dst, v10, 0xB8uLL);
    nullsub_1(&__dst);
    sub_258389808(&v34, &v22, &qword_27F927FE0);
  }

  else
  {
    sub_2583C7A8C(&__dst);
  }

  v42 = v54;
  v43 = v55;
  v44 = v56;
  v45 = v57;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v34 = __dst;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  if (sub_2583B26C4(&v34) == 1)
  {
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v33 = v57;
    v26 = v50;
    v27 = v51;
    v28 = v52;
    v29 = v53;
    v22 = __dst;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    sub_258385E40(&v22, &qword_27F928AC0);
  }

  else
  {
    v20 = *(&v55 + 2);
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v33 = v57;
    v26 = v50;
    v27 = v51;
    v28 = v52;
    v29 = v53;
    v22 = __dst;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    sub_258385E40(&v22, &qword_27F928AC0);
    if (v4 <= (v20 + (v20 * *(v3 + 484))))
    {
      return v20 + (v20 * *(v3 + 484));
    }
  }

  return v4;
}

__n128 sub_2583C280C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q0>)
{
  v6 = *&a4.i32[3];
  v7 = (a4.i32[3] >> 23);
  v8 = a4.i32[3] & 0x7FFFFF;
  v9 = v7 != 255 || v8 == 0;
  v10 = v7 | v8;
  if (!v9 || v10 == 0)
  {
    goto LABEL_20;
  }

  v14 = *&a4.i32[2];
  v15 = vdup_laneq_s32(a4, 3);
  v16 = *(a1 + 128);
  v17 = *(v16 + 88);
  if (!v17)
  {
    v17 = *(v16 + 24);
  }

  [v17 transform];
  *(&v18 + 1) = a4.i64[1];
  *&v18 = vdiv_f32(*a4.i8, v15);
  v67 = v18;
  v19 = *(v16 + 88);
  v63 = v20;
  v65 = v14 / v6;
  if (!v19)
  {
    v19 = *(v16 + 24);
  }

  [v19 transform];
  v21.i64[0] = v67;
  *v23.f32 = vsub_f32(*&v67, v22);
  v23.f32[2] = v65 - v24;
  v25 = vmulq_f32(v23, v23);
  *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
  *v25.f32 = vrsqrte_f32(v26);
  *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
  v27 = vmulq_n_f32(v23, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  v28 = *(a1 + 96);
  v23.f32[0] = vmuls_n_f32(*v28.i32, *v27.i32);
  *v28.i8 = vmul_f32(vext_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL), 4uLL), *&vextq_s8(v27, v27, 4uLL));
  if ((*&v28.i32[1] + (v23.f32[0] + *v28.i32)) < *(v4 + 468))
  {
    goto LABEL_20;
  }

  v21.i64[1] = LODWORD(v65);
  v61 = v27;
  v62 = v21;
  v29 = sub_2583C25F0(*(a1 + 56), *(a1 + 64));
  v31 = v30;
  v32 = *(v16 + 88);
  if (!v32)
  {
    v32 = *(v16 + 24);
  }

  [v32 transform];
  v34 = vsubq_f32(v33, v62);
  v35 = vmulq_f32(v34, v34);
  v36 = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
  if (v36 < v29 || v31 < v36)
  {
LABEL_20:
    sub_2583B26A4(&v80);
  }

  else
  {
    v43 = *(a2 + 128);
    v44 = *(v43 + 88);
    if (!v44)
    {
      v44 = *(v43 + 24);
    }

    [v44 transform];
    v47 = v63;
    HIDWORD(v47) = 0;
    v64 = v47;
    v48 = *(v43 + 88);
    if (!v48)
    {
      v48 = *(v43 + 24);
    }

    [v48 transform];
    v49 = v59;
    HIDWORD(v49) = 0;
    v60 = v49;
    v50.i32[3] = HIDWORD(v67);
    *v50.f32 = vsub_f32(*&v67, v51);
    v50.f32[2] = v65 - v52;
    v53 = vmulq_f32(v50, v50);
    v50.i32[3] = 0;
    *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
    *v53.f32 = vrsqrte_f32(v54);
    *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
    v68 = vmulq_n_f32(v50, vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).f32[0]);
    v55 = vmulq_f32(v61, v68);
    v56 = v55.f32[2] + vaddv_f32(*v55.f32);
    v57 = acosf(v56);
    v58 = *(a2 + 120);
    v69 = v62;
    v70 = 0uLL;
    LOBYTE(v71) = 1;
    v72 = v62;
    v73 = v64;
    v74 = v61;
    *&v75 = a1;
    v76 = v60;
    v77 = v68;
    *&v78 = a2;
    *(&v78 + 1) = __PAIR64__(LODWORD(v56), LODWORD(v36));
    v79 = v58 * fminf(fabsf(v57) / 0.17453, 1.0);
    nullsub_1(&v69);
    v88 = v77;
    v89 = v78;
    v90 = v79;
    v84 = v73;
    v85 = v74;
    v86 = v75;
    v87 = v76;
    v80 = v69;
    v81 = v70;
    v82 = v71;
    v83 = v72;
  }

  v38 = v89;
  *(a3 + 128) = v88;
  *(a3 + 144) = v38;
  *(a3 + 160) = v90;
  v39 = v85;
  *(a3 + 64) = v84;
  *(a3 + 80) = v39;
  v40 = v87;
  *(a3 + 96) = v86;
  *(a3 + 112) = v40;
  v41 = v81;
  *a3 = v80;
  *(a3 + 16) = v41;
  result = v83;
  *(a3 + 32) = v82;
  *(a3 + 48) = result;
  return result;
}

float32x4_t sub_2583C2B4C()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 64);
    [v1 projectionMatrixForOrientation:v2 viewportSize:*(v0 + 112) zNear:*(v0 + 120) zFar:{0.00100000005, 1000.0}];
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    [v1 viewMatrixForOrientation_];
    result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v7.f32[0]), v13, *v7.f32, 1), v14, v7, 2), v15, v7, 3);
    *(v0 + 128) = result;
    *(v0 + 144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v9.f32[0]), v13, *v9.f32, 1), v14, v9, 2), v15, v9, 3);
    *(v0 + 160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v10.f32[0]), v13, *v10.f32, 1), v14, v10, 2), v15, v10, 3);
    *(v0 + 176) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v11.f32[0]), v13, *v11.f32, 1), v14, v11, 2), v15, v11, 3);
    *(v0 + 192) = 0;
  }

  else
  {
    return *(v0 + 128);
  }

  return result;
}

uint64_t sub_2583C2C48@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 233))
  {
    swift_weakLoadStrong();

    v4 = 0uLL;
    *(v1 + 216) = 0u;
    *(v1 + 200) = 0u;
    v5 = 1;
    *(v1 + 232) = 1;
    v6 = 0uLL;
  }

  else
  {
    v6 = *(v1 + 216);
    v4 = *(v1 + 200);
    v5 = *(v1 + 232);
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5 & 1;
  return result;
}

uint64_t PatchTracker.Keyframe.init(_:camera:scaledImage:orientation:gravityOffsetAngle:timestamp:anchor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, float a9, double a10)
{
  v11 = v10;
  swift_weakInit();
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 1;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 256;
  swift_weakAssign();
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a9;
  *(v11 + 80) = a10;
  *(v11 + 88) = a8;
  v22 = *(a1 + 800);
  v23 = *(a1 + 808);
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 8);
  v26 = a8;
  v27 = v22;
  v28 = a2;
  v29 = v25(ObjectType, v23);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  *(v11 + 96) = v29;
  *(v11 + 104) = v31;
  *(v11 + 112) = v33;
  *(v11 + 120) = v35;
  return v11;
}

uint64_t PatchTracker.Keyframe.deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_2583BC7C8(v0);
  }

  swift_weakDestroy();

  return v0;
}

uint64_t PatchTracker.Keyframe.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_2583BC7C8(v0);
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t PatchTracker.Keyframe.getEpipolarLine(patch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = sub_2583C25F0(*(a1 + 56), *(a1 + 64));
  v8 = *(a1 + 80);
  v7 = *(a1 + 96);
  *&v9 = v8.f32[0] + (v6 * v7.f32[0]);
  v62 = *v8.f32;
  v64 = v9;
  v73 = v9;
  LODWORD(v10) = *(a1 + 88);
  v11 = vext_s8(*v7.f32, *&vextq_s8(v7, v7, 8uLL), 4uLL);
  v69 = v7;
  point = vadd_f32(vext_s8(*v8.f32, *&vextq_s8(v8, v8, 8uLL), 4uLL), vmul_n_f32(v11, v6));
  *&v75 = vaddq_f32(v8, vmulq_n_f32(v7, v12)).u64[0];
  v68 = v13;
  v14 = *(v2 + 88);
  if (v14)
  {
    [*(v2 + 88) transform];
  }

  else
  {
    [*(v2 + 24) transform];
  }

  v17 = v73;
  v17.i32[1] = point.i32[0];
  v74 = v17;
  v18 = v68;
  HIDWORD(v19) = 0;
  *&v19 = 0.0 - v16;
  v60 = vsub_f32(0, v15);
  *v17.f32 = v60;
  v17.f32[2] = 0.0 - v16;
  v17.i32[3] = 0;
  v66 = v17;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    [*(v2 + 24) transform];
  }

  v23 = v74;
  v23.i32[2] = point.i32[1];
  v24 = vmulq_f32(v69, v69);
  *&v25 = v24.f32[2] + vaddv_f32(*v24.f32);
  *v24.f32 = vrsqrte_f32(v25);
  *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
  v26 = vmulq_n_f32(v69, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
  v27 = vmulq_f32(v66, v26);
  v27.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
  if (v27.f32[0] != 0.0)
  {
    *v20.f32 = vsub_f32(vadd_f32(vmul_f32(v60, vdup_n_s32(0x3A83126Fu)), v21), v62);
    v20.f32[2] = ((v59 * 0.001) + v22) - v10;
    v28 = vmulq_f32(v66, v20);
    v27.f32[0] = (v28.f32[2] + vaddv_f32(*v28.f32)) / v27.f32[0];
    v28.f32[0] = vmuls_lane_f32(v27.f32[0], v26, 2);
    *v29.i8 = vadd_f32(v62, vmul_n_f32(*v26.f32, v27.f32[0]));
    v28.i64[1] = *(&v64 + 1);
    v30.i32[0] = vdup_lane_s32(*v29.i8, 1).u32[0];
    v29.i64[1] = COERCE_UNSIGNED_INT(v10 + v28.f32[0]);
    v30.f32[1] = v10 + v28.f32[0];
    *v27.f32 = vmul_f32(v11, vsub_f32(v30, point));
    v27.f32[0] = v27.f32[1] + ((*&v69.x * (*v29.i32 - *&v64)) + v27.f32[0]);
    v28.i64[0] = 0;
    v23.i64[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, v28), 0), v29, v23).u64[0];
  }

  v31 = *(v2 + 24);
  v32 = *(v2 + 64);
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  [v31 projectPoint:v32 orientation:*v23.i64 viewportSize:{v33, v34}];
  v36 = v35;
  v38 = v37;
  [v31 projectPoint:v32 orientation:v75 viewportSize:{v33, v34}];
  sub_2583A9988(v77, v36, v38, v39, v40, *(v2 + 96), *(v2 + 104), v33, v34);
  if (v78)
  {

LABEL_12:
    v41 = 1;
    v42 = 0;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0uLL;
    goto LABEL_18;
  }

  pointa = *&v77[3];
  v70 = *&v77[2];
  v47 = *v77;
  v46 = *&v77[1];
  sub_2583BB8D4(&v79);
  v48 = *&v79.a;
  c = v79.c;
  d = v79.d;
  tx = v79.tx;
  ty = v79.ty;
  v76 = v79;
  v80.x = v47;
  v80.y = v46;
  v53 = CGPointApplyAffineTransform(v80, &v76);
  *&v76.a = v48;
  v76.c = c;
  v76.d = d;
  v76.tx = tx;
  v76.ty = ty;
  v81.x = v70;
  v81.y = pointa;
  v56 = CGPointApplyAffineTransform(v81, &v76);
  y = v56.y;
  x = v56.x;
  if (v56.x >= v53.x)
  {
    x = v53.x;
  }

  if (v56.y >= v53.y)
  {
    y = v53.y;
  }

  v57 = vabdd_f64(v53.x, v56.x);
  v58 = vabdd_f64(v53.y, v56.y);
  v82 = CGRectInset(*&x, *(a1 + 40) * -0.5, *(a1 + 48) * -0.5);
  v63 = v82.origin.x;
  v65 = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;

  *&v45 = width;
  *&v44 = v63;
  v42 = v53;
  v41 = 0;
  v43 = v56;
  *(&v44 + 1) = v65;
  *(&v45 + 1) = height;
LABEL_18:
  *a2 = v42;
  *(a2 + 16) = v43;
  *(a2 + 32) = v44;
  *(a2 + 48) = v45;
  *(a2 + 64) = v41;
  return result;
}

float64x2_t *PatchTracker.Keyframe.computeTriangulationMatrix(screenPoint:triangulationWith3Rows:)(char a1, double a2, double a3)
{
  v5 = a2 / *(v3 + 112) + a2 / *(v3 + 112);
  v6 = a3 / *(v3 + 120) + a3 / *(v3 + 120);
  v7 = sub_2583C2B4C();
  v23 = v8;
  v24 = v7;
  v25 = v10;
  v26 = v9;
  if (a1)
  {
    v11 = 12;
  }

  else
  {
    v11 = 8;
  }

  v12 = sub_2584288E0();
  *&v12[1].f64[0] = v11;
  bzero(&v12[2], 8 * v11);
  v13 = v5 + -1.0;
  v14 = 1.0 - v6;
  v15 = vcvtq_f64_f32(vzip1_s32(*v24.i8, *v23.i8));
  v16 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
  v17 = vcvtq_f64_f32(vzip1_s32(*v26.i8, *v25.i8));
  v18 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  v12[2] = vsubq_f64(vmulq_n_f64(v16, v5 + -1.0), v15);
  v12[3] = vsubq_f64(vmulq_n_f64(v18, v5 + -1.0), v17);
  v19 = vcvtq_f64_f32(vzip2_s32(*v24.i8, *v23.i8));
  v20 = vsubq_f64(vmulq_n_f64(v16, 1.0 - v6), v19);
  v21 = vcvtq_f64_f32(vzip2_s32(*v26.i8, *v25.i8));
  v12[4] = v20;
  v12[5] = vsubq_f64(vmulq_n_f64(v18, 1.0 - v6), v21);
  if (a1)
  {
    v12[6] = vsubq_f64(vmulq_n_f64(v19, v13), vmulq_n_f64(v15, v14));
    v12[7] = vsubq_f64(vmulq_n_f64(v21, v13), vmulq_n_f64(v17, v14));
  }

  return v12;
}

void PatchTracker.Keyframe.getRay(screenPoint:sceneView:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v10 = (*(a4 + 24))(ObjectType, a4, a1, a2);
  v12 = v11;
  (*(a4 + 8))(ObjectType, a4);
  [v8 imageResolution];
  ARViewToCameraImageTransform();
  v22.x = v10;
  v22.y = v12;
  CGPointApplyAffineTransform(v22, &v19);
  v13 = *(v4 + 88);
  if (v13)
  {
    [v13 transform];
    v18 = 0;
    LOBYTE(v19.a) = 0;
  }

  else
  {
    v18 = 1;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v19.a = v14;
  *&v19.c = v15;
  *&v19.tx = v16;
  v20 = v17;
  v21 = v18;
  _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v8, &v19);
}

Swift::Bool __swiftcall PatchTracker.Keyframe.isCameraAligned(with:)(ARCamera with)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [(objc_class *)with.super.isa transform];
    v17 = v5;
    v6 = *(v1 + 88);
    if (v6)
    {
      [*(v1 + 88) transform];
    }

    else
    {
      [*(v1 + 24) transform];
    }

    v8 = vsubq_f32(v17, v7);
    if ((vmuls_lane_f32(v8.f32[2], v8, 2) + vaddv_f32(vmul_f32(*v8.f32, *v8.f32))) < 0.0001)
    {
      goto LABEL_10;
    }

    v9 = vmulq_f32(v8, v8);
    v8.i32[3] = 0;
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v18 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      [*(v1 + 24) transform];
    }

    v12 = vmul_f32(*&vextq_s8(v18, v18, 4uLL), *&vextq_s8(v11, v11, 4uLL));
    v13 = *(v4 + 432);
    if (v13 >= fabsf(v12.f32[1] + (vmuls_n_f32(*v18.i32, *v11.i32) + v12.f32[0])))
    {
      [(objc_class *)with.super.isa transform];
      v16 = v14;

      LOBYTE(Strong) = v13 < fabsf(vmuls_lane_f32(*&v18.i32[2], v16, 2) + vaddv_f32(vmul_f32(*v18.i8, *v16.f32)));
    }

    else
    {
LABEL_10:

      LOBYTE(Strong) = 1;
    }
  }

  return Strong;
}

__n128 PatchTracker.Keyframe.getImagePack(rect:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(v2 + 32);
  v17 = *(v2 + 48);
  sub_2583C2C48(&v18);
  v5 = v18;
  v6 = v19;
  v7 = v20;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = v19;
    v15 = v18;
    CGRect.ints.getter(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
    v6 = v14;
    v5 = v15;
  }

  result = v17;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = v8 & 1;
  return result;
}

float64x2_t *sub_2583C37CC()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = PatchTracker.Keyframe.computeTriangulationMatrix(screenPoint:triangulationWith3Rows:)(0, *(v0 + 56), *(v0 + 64));
    *(v0 + 136) = v1;
  }

  return v1;
}

void sub_2583C3838()
{
  v1 = v0;
  if (*(v0 + 148))
  {
    v2 = *(v0 + 128);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[6];
    sub_2583C2C48(v28);
    CGRect.ints.getter(v3, v4, v5, v6);
    if (((v9 | v8) & 0x8000000000000000) == 0)
    {
      v15 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v9 - 1)
      {
        v17 = v9 - 1;
      }

      v18 = v11 + v13;
      if (__OFADD__(v11, v13))
      {
        goto LABEL_36;
      }

      v16 = __OFSUB__(v18, 1);
      v19 = v18 - 1;
      if (v16)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v20 = v8 - 1;
      if (v19 < v8 - 1)
      {
        v20 = v19;
      }

      if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
      {
        goto LABEL_38;
      }

      v21 = v10 & ~(v10 >> 63);
      v22 = v11 & ~(v11 >> 63);
      if (v20 < v22 || v17 < v21)
      {
        goto LABEL_39;
      }

      v24 = 0.0;
      while (1)
      {
        v25 = v22 * v9;
        if ((v22 * v9) >> 64 != (v22 * v9) >> 63)
        {
          break;
        }

        if (__OFADD__(v25, v21))
        {
          goto LABEL_31;
        }

        LOBYTE(v14) = *(v7 + v25 + v21);
        v14 = LODWORD(v14);
        v24 = v24 + v14;
        if (v17 != v21)
        {
          v26 = v21 + 1;
          v27 = v17 - v21;
          if (v17 <= v21)
          {
            goto LABEL_32;
          }

          while (!__OFADD__(v25, v26))
          {
            LOBYTE(v14) = *(v7 + v25 + v26);
            v14 = LODWORD(v14);
            v24 = v24 + v14;
            ++v26;
            if (!--v27)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
          break;
        }

LABEL_23:
        if (v22 == v20)
        {
          *(v1 + 144) = v24 / (v12 * v13);
          *(v1 + 148) = 0;
          return;
        }

        v16 = __OFADD__(v22++, 1);
        if (v16)
        {
          __break(1u);
          return;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }
}

uint64_t PatchTracker.Patch.init(imageRect:keyframe:sceneView:screenPoint:matchingScore:matchingSimilarities:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, float a11)
{
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  *(v11 + 148) = 1;
  v12 = qword_27F928A28;
  *(v11 + 16) = qword_27F928A28;
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    qword_27F928A28 = v14;
    *(v11 + 24) = a5;
    *(v11 + 32) = a6;
    *(v11 + 40) = a7;
    *(v11 + 48) = a8;
    *(v11 + 56) = a9;
    *(v11 + 64) = a10;
    *(v11 + 128) = result;
    *(v11 + 120) = a11;
    *(v11 + 112) = a4;

    PatchTracker.Keyframe.getRay(screenPoint:sceneView:)(a9, a10, a2, a3);
    v21 = v20;
    v22 = v19;

    *(v11 + 80) = v22;
    *(v11 + 96) = v21;
    return v11;
  }

  return result;
}

Swift::Bool __swiftcall PatchTracker.Patch.isGoodMatch()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 120);

    LOBYTE(Strong) = v2 >= 0.8 && v2 <= 0.99 && *(v0 + 112) < 4;
  }

  return Strong;
}

Swift::Bool __swiftcall PatchTracker.Patch.isFalsePositive()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 120);

    LOBYTE(Strong) = v2 > 0.99 || *(v0 + 112) > 3;
  }

  return Strong;
}

__n128 PatchTracker.Patch.getImagePack()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v15 = *(v3 + 48);
  v16 = *(v3 + 32);
  sub_2583C2C48(v17);
  v8 = v18;
  CGRect.ints.getter(v4, v5, v6, v7);
  result = v17[0];
  v10 = v17[1];
  *a1 = v16;
  *(a1 + 16) = v15;
  *(a1 + 32) = result;
  *(a1 + 48) = v10;
  *(a1 + 64) = v8;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = 0;
  return result;
}

uint64_t PatchTracker.Patch.deinit()
{

  return v0;
}

uint64_t PatchTracker.Patch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2583C3CC4()
{
  v0 = sub_2583895A0(&unk_28697E600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AB8);
  result = swift_arrayDestroy();
  static PatchTracker.DebugOptions.keyForFeature = v0;
  return result;
}

uint64_t *PatchTracker.DebugOptions.keyForFeature.unsafeMutableAddressor()
{
  if (qword_27F927A68 != -1)
  {
    swift_once();
  }

  return &static PatchTracker.DebugOptions.keyForFeature;
}

void sub_2583C3D94()
{
  if (qword_27F927A68 != -1)
  {
    swift_once();
  }

  v0 = static PatchTracker.DebugOptions.keyForFeature;
  v1 = *(static PatchTracker.DebugOptions.keyForFeature + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(static PatchTracker.DebugOptions.keyForFeature + 16), 0);
  v3 = sub_2583E9038(&v4, v2 + 4, v1, v0);

  sub_2583980BC();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  static PatchTracker.DebugOptions.keys = v2;
}

uint64_t *PatchTracker.DebugOptions.keys.unsafeMutableAddressor()
{
  if (qword_27F927A70 != -1)
  {
    swift_once();
  }

  return &static PatchTracker.DebugOptions.keys;
}

uint64_t sub_2583C3EFC()
{
  if (qword_27F927A68 != -1)
  {
    swift_once();
  }

  v1 = sub_2583E903C(v0);

  static PatchTracker.DebugOptions.default = v1;
  return result;
}

uint64_t static PatchTracker.DebugOptions.default.getter()
{
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static PatchTracker.DebugOptions.default;
}

uint64_t static PatchTracker.DebugOptions.default.setter(uint64_t a1)
{
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static PatchTracker.DebugOptions.default = a1;
  return result;
}

uint64_t (*static PatchTracker.DebugOptions.default.modify())()
{
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2583C40E8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_258428F10();
LABEL_9:
  result = sub_258429000();
  *v1 = result;
  return result;
}

uint64_t sub_2583C4188(uint64_t a1, int a2)
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
    sub_2583C4270();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 32 * isUniquelyReferenced_nonNull_native);
  sub_2583C58BC(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

void *sub_2583C4270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A88);
  v2 = *v0;
  v3 = sub_258428F80();
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
    for (i = (v9 + 63) >> 6; v11; v19[1] = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = (*(v4 + 48) + v17);
      v20 = v18[1];
      *v19 = *v18;
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

id sub_2583C43D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AB0);
  v2 = *v0;
  v3 = sub_258428F80();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_2583C4520(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_258428F80();
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
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
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

uint64_t sub_2583C4660()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A88);
  result = sub_258428F90();
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
      v16 = (*(v2 + 48) + 32 * (v13 | (v5 << 6)));
      v24 = v16[1];
      v25 = *v16;
      sub_2584293C0();
      sub_2584293E0();
      if (v25)
      {
        MEMORY[0x259C7ECE0](v25);
      }

      result = sub_2584293F0();
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

        goto LABEL_30;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 32 * v11);
      *v12 = v25;
      v12[1] = v24;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2583C48B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A98);
  result = sub_258428F90();
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
      sub_2584293C0();
      MEMORY[0x259C7ECE0](*(v15 + 24));
      result = sub_2584293F0();
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

uint64_t sub_2583C4ADC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AB0);
  result = sub_258428F90();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
      result = sub_258428D60();
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

        v1 = v23;
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

uint64_t sub_2583C4CF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928278);
  result = sub_258428F90();
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
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_2584293C0();
      sub_2584283F0();
      sub_258398064();

      sub_258428590();
      result = sub_2584293F0();
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
        v9 = (v15 - 1) & v15;
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

uint64_t sub_2583C4F48()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A88);
  result = sub_258428F90();
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
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v26 = v17[1];
      v27 = *v17;
      sub_2584293C0();
      sub_2584293E0();
      if (v27)
      {
        MEMORY[0x259C7ECE0](v27);
      }

      result = sub_2584293F0();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v27;
      v13[1] = v26;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_2583C51CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A98);
  result = sub_258428F90();
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
      sub_2584293C0();
      MEMORY[0x259C7ECE0](*(v16 + 24));
      result = sub_2584293F0();
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

uint64_t sub_2583C541C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AB0);
  result = sub_258428F90();
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
      result = sub_258428D60();
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

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2583C5644()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928278);
  result = sub_258428F90();
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
      sub_2584293C0();
      sub_2584283F0();
      sub_258398064();
      sub_258428590();
      result = sub_2584293F0();
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

unint64_t sub_2583C58BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_258428E90();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(*(v3 + 48) + 32 * v6);
        sub_2584293C0();
        sub_2584293E0();
        if (v11)
        {
          MEMORY[0x259C7ECE0](v11);
        }

        v12 = sub_2584293F0() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_13;
        }

        if (v2 >= v12)
        {
LABEL_13:
          v13 = *(v3 + 48);
          v14 = (v13 + 32 * v2);
          v15 = (v13 + 32 * v6);
          if (v2 != v6 || v14 >= v15 + 2)
          {
            v10 = v15[1];
            *v14 = *v15;
            v14[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2583C5A84(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_258428E90();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_2584293C0();
        MEMORY[0x259C7ECE0](*(v10 + 24));
        v11 = sub_2584293F0() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2583C5C2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_258428E90();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_258428D60();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2583C5DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A98);
    v2 = sub_258428FA0();
    v14 = v2;
    sub_258428EC0();
    for (; sub_258428F40(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_2583C51CC();
        v2 = v14;
      }

      sub_2584293C0();
      MEMORY[0x259C7ECE0](*(v13 + 24));
      result = sub_2584293F0();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v9 = 0;
        v10 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v10 && (v9 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v11 = v7 == v10;
          if (v7 == v10)
          {
            v7 = 0;
          }

          v9 |= v11;
          v12 = *(v4 + 8 * v7);
        }

        while (v12 == -1);
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v13;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2583C5FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AB0);
    v2 = sub_258428FA0();
    v14 = v2;
    sub_258428EC0();
    if (sub_258428F40())
    {
      sub_258385DB0(0, &qword_27F928AA8);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2583C541C();
        }

        v2 = v14;
        result = sub_258428D60();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_258428F40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2583C61C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928278);
    v2 = sub_258428FA0();
    v14 = v2;
    sub_258428EC0();
    if (sub_258428F40())
    {
      type metadata accessor for WorldAnchor();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2583C5644();
        }

        v2 = v14;
        sub_2584293C0();
        sub_2584283F0();
        sub_258398064();
        sub_258428590();
        result = sub_2584293F0();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_258428F40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_2583C63EC(uint64_t a1, uint64_t a2)
{
  sub_2584293C0();
  MEMORY[0x259C7ECE0](*(a1 + 24));
  sub_2584293F0();
  result = sub_258428EA0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2583C6490(uint64_t a1, uint64_t a2)
{
  sub_258428D60();
  result = sub_258428EA0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2583C6514(uint64_t a1, uint64_t a2)
{
  sub_2584293C0();
  sub_2584283F0();
  sub_258398064();
  sub_258428590();
  sub_2584293F0();
  result = sub_258428EA0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2583C65DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  sub_2584293C0();
  sub_2584293E0();
  if (a2)
  {
    MEMORY[0x259C7ECE0](a2);
  }

  v12 = sub_2584293F0();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_2583C6EC0(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v21;
    result = 1;
    goto LABEL_11;
  }

  v15 = ~v13;
  v16 = *(v11 + 48);
  while (1)
  {
    v17 = *(v16 + 32 * v14);
    if (v17)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_9;
    }

LABEL_6:
    v14 = (v14 + 1) & v15;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v17 != a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = 0;
  v19 = (v16 + 32 * v14);
  a3 = v19[1];
  a4 = v19[2];
  a5 = v19[3];
  a2 = *v19;
LABEL_11:
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_2583C673C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_258428F20();

    if (v9)
    {

      sub_258385DB0(0, &qword_27F928AA8);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_258428F10();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2583C5FD8(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_2583C541C();
    }

    v18 = v8;
    sub_2583C6490(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_258385DB0(0, &qword_27F928AA8);
  v11 = sub_258428D60();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_2583C705C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_258428D70();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_2583C6974(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    sub_2584293C0();
    MEMORY[0x259C7ECE0](*(a2 + 24));
    v10 = sub_2584293F0();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;

      sub_2583C71CC(v18, v12, isUniquelyReferenced_nonNull_native);
      *v3 = v22;
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    swift_beginAccess();
    while (1)
    {
      v15 = *(*(v6 + 48) + 8 * v12);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_weakLoadStrong())
        {

          v14 = sub_2584283C0();

          if (v14)
          {
            goto LABEL_16;
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

      v16 = *(v15 + 24);

      if (v16 == *(a2 + 24))
      {
LABEL_16:

        *a1 = *(*(v6 + 48) + 8 * v12);

        return 0;
      }

LABEL_10:
      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_258428F20();

  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
    swift_dynamicCast();
    result = 0;
    *a1 = v23;
    return result;
  }

  result = sub_258428F10();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v19 = sub_2583C5DCC(v7, result + 1);
  if (*(v19 + 24) <= *(v19 + 16))
  {
    sub_2583C51CC();
  }

  sub_2583C63EC(v20, v19);

  *v3 = v19;
  *a1 = a2;
  return 1;
}

uint64_t sub_2583C6C58(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_258428F20();

    if (v8)
    {

      type metadata accessor for WorldAnchor();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = sub_258428F10();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2583C61C8(v7, result + 1);
        if (*(v17 + 24) <= *(v17 + 16))
        {
          sub_2583C5644();
        }

        sub_2583C6514(v18, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_2584293C0();
    sub_2584283F0();
    sub_258398064();
    sub_258428590();
    v10 = sub_2584293F0();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_2584283C0();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;

      sub_2583C7400(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v21;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2583C6EC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a6)
  {
    sub_2583C4F48();
  }

  else
  {
    if (v12 > v11)
    {
      v13 = a5;
      result = sub_2583C4270();
      a5 = v13;
      goto LABEL_17;
    }

    sub_2583C4660();
  }

  v14 = *v6;
  sub_2584293C0();
  sub_2584293E0();
  if (v10)
  {
    MEMORY[0x259C7ECE0](v10);
  }

  result = sub_2584293F0();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v17 = *(*(v14 + 48) + 32 * a5);
      if (v17)
      {
        if (v17 == v10)
        {
LABEL_16:
          type metadata accessor for vImage_Buffer(0);
          result = sub_258429380();
          __break(1u);
          break;
        }
      }

      else if (!v10)
      {
        goto LABEL_16;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_17:
  v18 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v19 = (*(v18 + 48) + 32 * a5);
  *v19 = v10;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_2583C705C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2583C541C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_2583C43D0();
      goto LABEL_12;
    }

    sub_2583C4ADC();
  }

  v8 = *v3;
  v9 = sub_258428D60();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_258385DB0(0, &qword_27F928AA8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_258428D70();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_258429380();
  __break(1u);
}

uint64_t sub_2583C71CC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_2583C51CC();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2583C4520(&qword_27F928A98);
      goto LABEL_18;
    }

    sub_2583C48B4();
  }

  v9 = *v3;
  sub_2584293C0();
  MEMORY[0x259C7ECE0](*(v6 + 24));
  result = sub_2584293F0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    swift_beginAccess();
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_weakLoadStrong())
        {

          v12 = sub_2584283C0();

          if (v12)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

      v14 = *(v13 + 24);

      if (v14 == *(v6 + 24))
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        result = sub_258429380();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }

  return result;
}

uint64_t sub_2583C7400(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2583C5644();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2583C4520(&qword_27F928278);
      goto LABEL_12;
    }

    sub_2583C4CF0();
  }

  v9 = *v3;
  sub_2584293C0();
  sub_2584283F0();
  sub_258398064();
  sub_258428590();
  result = sub_2584293F0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for WorldAnchor();
    do
    {

      v12 = sub_2584283C0();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258429380();
  __break(1u);
  return result;
}