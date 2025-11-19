uint64_t sub_1D17BE6B4(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  sub_1D1741C08(v1, &v13 - v10, &qword_1EC642590, qword_1D1E71260);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_1D17BE894(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  sub_1D1741C08(v1, &v13 - v10, &qword_1EC642590, qword_1D1E71260);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v13, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t sub_1D17BEA80()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC643DF8);
  __swift_project_value_buffer(v0, qword_1EC643DF8);
  return sub_1D1E6708C();
}

uint64_t static Logger.posterFrameGenerator.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC643DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC07initialfg5ImageB03for4size10Foundation0B0VAA15ScrubberElementO_So6CGSizeVtYaAC15GenerationErrorOYKFZ(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 48) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 24) = a1;
  v5 = type metadata accessor for SignificantEvent();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v9 = type metadata accessor for ReachabilityEvent();
  *(v4 + 88) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v11 = sub_1D1E669FC();
  *(v4 + 104) = v11;
  v12 = *(v11 - 8);
  *(v4 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  *(v4 + 136) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v16 = type metadata accessor for CameraClip();
  *(v4 + 152) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v18 = type metadata accessor for ScrubberElement(0);
  *(v4 + 168) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v21 = sub_1D1E6680C();
  *(v4 + 296) = v21;
  v22 = *(v21 - 8);
  *(v4 + 304) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17BEF20, 0, 0);
}

uint64_t sub_1D17BEF20()
{
  v1 = *(v0 + 168);
  sub_1D17C07E0(*(v0 + 24), *(v0 + 224), type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 224);
    (*(*(v0 + 304) + 56))(*(v0 + 272), 1, 1, *(v0 + 296));
    v3 = type metadata accessor for ScrubberElement;
    v4 = v2;
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    sub_1D17BA164(*(v0 + 224), v6, type metadata accessor for CameraClip);
    sub_1D1741C08(v6 + *(v7 + 56), v5, &qword_1EC642EA8, &qword_1D1E73C60);
    v3 = type metadata accessor for CameraClip;
    v4 = v6;
  }

  sub_1D17C3CD4(v4, v3);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);
  v10 = *(v0 + 280);
  sub_1D1741A90(*(v0 + 272), v10, &qword_1EC642EA8, &qword_1D1E73C60);
  v11 = *(v9 + 48);
  if (v11(v10, 1, v8) == 1)
  {
    v12 = *(v0 + 168);
    sub_1D17C07E0(*(v0 + 24), *(v0 + 216), type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *(v0 + 216);
      (*(*(v0 + 304) + 56))(*(v0 + 264), 1, 1, *(v0 + 296));
      v14 = type metadata accessor for ScrubberElement;
      v15 = v13;
    }

    else
    {
      v19 = *(v0 + 264);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      sub_1D17BA164(*(v0 + 216), v20, type metadata accessor for CameraClip);
      sub_1D1741C08(v20 + *(v21 + 60), v19, &qword_1EC642EA8, &qword_1D1E73C60);
      v14 = type metadata accessor for CameraClip;
      v15 = v20;
    }

    sub_1D17C3CD4(v15, v14);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    sub_1D1741A90(*(v0 + 264), *(v0 + 288), &qword_1EC642EA8, &qword_1D1E73C60);
    if (v11(v23, 1, v22) != 1)
    {
      sub_1D1741A30(*(v0 + 280), &qword_1EC642EA8, &qword_1D1E73C60);
    }
  }

  else
  {
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = *(v0 + 288);
    (*(v17 + 32))(v18, *(v0 + 280), v16);
    (*(v17 + 56))(v18, 0, 1, v16);
  }

  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  if (v11(v24, 1, v25) == 1)
  {
    v26 = *(v0 + 48);
    sub_1D1741A30(v24, &qword_1EC642EA8, &qword_1D1E73C60);
    *v26 = 0;
    *(v0 + 392) = 0;
    sub_1D17C078C();
    swift_willThrowTypedImpl();
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v146 = *(v0 + 224);
    v147 = *(v0 + 216);
    v148 = *(v0 + 208);
    v149 = *(v0 + 200);
    v150 = *(v0 + 192);
    v151 = *(v0 + 184);
    v152 = *(v0 + 176);
    v153 = *(v0 + 160);
    v154 = *(v0 + 144);
    v155 = *(v0 + 128);
    v157 = *(v0 + 120);
    v158 = *(v0 + 96);
    v160 = *(v0 + 80);
    v163 = *(v0 + 72);

    v37 = *(v0 + 8);

    return v37();
  }

  v161 = v11;
  v39 = *(v0 + 320);
  v40 = *(v0 + 304);
  v41 = *(v0 + 256);
  v42 = *(v0 + 208);
  v44 = *(v0 + 32);
  v43 = *(v0 + 40);
  v45 = *(v0 + 24);
  v159 = *(v0 + 168);
  v156 = *(v40 + 32);
  v156(v39, v24, v25);
  v46 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v47 = sub_1D1E6677C();
  v48 = [v46 initWithURL:v47 options:0];
  *(v0 + 328) = v48;

  v49 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  *(v0 + 336) = v49;
  [v49 setMaximumSize_];
  v50 = MEMORY[0x1E6960CC0];
  v51 = *(MEMORY[0x1E6960CC0] + 16);
  *(v0 + 368) = *MEMORY[0x1E6960CC0];
  *(v0 + 376) = *(v50 + 8);
  *(v0 + 384) = v51;
  [v49 setRequestedTimeToleranceBefore_];
  (*(v40 + 16))(v41, v39, v25);
  v52 = *(v40 + 56);
  v52(v41, 0, 1, v25);
  sub_1D17C07E0(v45, v42, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *(v0 + 208);
    v52(*(v0 + 240), 1, 1, *(v0 + 296));
    v54 = type metadata accessor for ScrubberElement;
    v55 = v53;
  }

  else
  {
    v56 = *(v0 + 240);
    v57 = *(v0 + 152);
    v58 = *(v0 + 160);
    sub_1D17BA164(*(v0 + 208), v58, type metadata accessor for CameraClip);
    sub_1D1741C08(v58 + *(v57 + 56), v56, &qword_1EC642EA8, &qword_1D1E73C60);
    v54 = type metadata accessor for CameraClip;
    v55 = v58;
  }

  sub_1D17C3CD4(v55, v54);
  v59 = *(v0 + 296);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  v62 = *(v0 + 136);
  v63 = *(v0 + 144);
  sub_1D1741A90(*(v0 + 240), v61, &qword_1EC642EA8, &qword_1D1E73C60);
  v64 = *(v62 + 48);
  sub_1D1741C08(v60, v63, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741C08(v61, v63 + v64, &qword_1EC642EA8, &qword_1D1E73C60);
  v65 = v161(v63, 1, v59);
  v66 = *(v0 + 296);
  if (v65 == 1)
  {
    v67 = *(v0 + 256);
    sub_1D1741A30(*(v0 + 248), &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v67, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v161(v63 + v64, 1, v66) == 1)
    {
      sub_1D1741A30(*(v0 + 144), &qword_1EC642EA8, &qword_1D1E73C60);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_1D1741C08(*(v0 + 144), *(v0 + 232), &qword_1EC642EA8, &qword_1D1E73C60);
  if (v161(v63 + v64, 1, v66) == 1)
  {
    v69 = *(v0 + 296);
    v68 = *(v0 + 304);
    v70 = *(v0 + 256);
    v71 = *(v0 + 232);
    sub_1D1741A30(*(v0 + 248), &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v70, &qword_1EC642EA8, &qword_1D1E73C60);
    (*(v68 + 8))(v71, v69);
LABEL_23:
    sub_1D1741A30(*(v0 + 144), &qword_1EC643D18, &unk_1D1E73EA0);
    goto LABEL_29;
  }

  v73 = *(v0 + 304);
  v72 = *(v0 + 312);
  v74 = *(v0 + 296);
  v76 = *(v0 + 248);
  v75 = *(v0 + 256);
  v77 = *(v0 + 232);
  v162 = *(v0 + 144);
  v156(v72, v63 + v64, v74);
  sub_1D17C45BC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
  v78 = sub_1D1E6775C();
  v79 = *(v73 + 8);
  v79(v72, v74);
  sub_1D1741A30(v76, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741A30(v75, &qword_1EC642EA8, &qword_1D1E73C60);
  v79(v77, v74);
  sub_1D1741A30(v162, &qword_1EC642EA8, &qword_1D1E73C60);
  if (v78)
  {
LABEL_25:
    v80 = *(v0 + 168);
    sub_1D17C07E0(*(v0 + 24), *(v0 + 200), type metadata accessor for ScrubberElement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = *(v0 + 200);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D17C3CD4(v82, type metadata accessor for ScrubberElement);
    }

    else
    {
      v83 = *(v0 + 152);
      v84 = *(v0 + 160);
      sub_1D17BA164(v82, v84, type metadata accessor for CameraClip);
      v85 = *(v84 + *(v83 + 52));
      sub_1D17C3CD4(v84, type metadata accessor for CameraClip);
    }
  }

LABEL_29:
  v86 = *(v0 + 168);
  v87 = *(v0 + 112);
  sub_1D17C07E0(*(v0 + 24), *(v0 + 192), type metadata accessor for ScrubberElement);
  v88 = swift_getEnumCaseMultiPayload();
  v89 = (v87 + 16);
  v90 = *(v0 + 192);
  if (v88 == 1)
  {
    v91 = *(v0 + 128);
    v93 = *(v0 + 96);
    v92 = *(v0 + 104);
    v94 = *(v0 + 88);
    sub_1D17BA164(v90, v93, type metadata accessor for ReachabilityEvent);
    v95 = *v89;
    (*v89)(v91, v93 + *(v94 + 24), v92);
    v96 = type metadata accessor for ReachabilityEvent;
    v97 = v93;
  }

  else
  {
    v99 = *(v0 + 152);
    v98 = *(v0 + 160);
    v100 = *(v0 + 128);
    v101 = *(v0 + 104);
    sub_1D17BA164(v90, v98, type metadata accessor for CameraClip);
    v95 = *v89;
    (*v89)(v100, v98 + *(v99 + 24), v101);
    v96 = type metadata accessor for CameraClip;
    v97 = v98;
  }

  sub_1D17C3CD4(v97, v96);
  v102 = *(v0 + 168);
  sub_1D17C07E0(*(v0 + 24), *(v0 + 184), type metadata accessor for ScrubberElement);
  v103 = swift_getEnumCaseMultiPayload();
  v104 = *(v0 + 184);
  if (v103 != 1)
  {
    v113 = *(v0 + 152);
    v114 = *(v0 + 160);
    sub_1D17BA164(v104, v114, type metadata accessor for CameraClip);
    v105 = *(v114 + *(v113 + 40));

    sub_1D17C3CD4(v114, type metadata accessor for CameraClip);
    if (*(v105 + 16))
    {
      goto LABEL_34;
    }

LABEL_36:
    v116 = *(v0 + 168);
    v115 = *(v0 + 176);
    v118 = *(v0 + 104);
    v117 = *(v0 + 112);
    v119 = *(v0 + 80);
    v120 = *(v0 + 24);

    (*(v117 + 56))(v119, 1, 1, v118);
    sub_1D17C07E0(v120, v115, type metadata accessor for ScrubberElement);
    v121 = swift_getEnumCaseMultiPayload();
    v122 = *(v0 + 176);
    if (v121 == 1)
    {
      v123 = *(v0 + 120);
      v125 = *(v0 + 96);
      v124 = *(v0 + 104);
      v126 = *(v0 + 88);
      sub_1D17BA164(v122, v125, type metadata accessor for ReachabilityEvent);
      v95(v123, v125 + *(v126 + 24), v124);
      v127 = type metadata accessor for ReachabilityEvent;
      v128 = v125;
    }

    else
    {
      v130 = *(v0 + 152);
      v129 = *(v0 + 160);
      v131 = *(v0 + 120);
      v132 = *(v0 + 104);
      sub_1D17BA164(v122, v129, type metadata accessor for CameraClip);
      v95(v131, v129 + *(v130 + 24), v132);
      v127 = type metadata accessor for CameraClip;
      v128 = v129;
    }

    sub_1D17C3CD4(v128, v127);
    v133 = *(v0 + 80);
    if ((*(*(v0 + 112) + 48))(v133, 1, *(v0 + 104)) != 1)
    {
      sub_1D1741A30(v133, &qword_1EC642570, &qword_1D1E6C6A0);
    }

    goto LABEL_41;
  }

  sub_1D17C3CD4(v104, type metadata accessor for ScrubberElement);
  v105 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_36;
  }

LABEL_34:
  v106 = *(v0 + 112);
  v107 = *(v0 + 120);
  v108 = *(v0 + 104);
  v110 = *(v0 + 72);
  v109 = *(v0 + 80);
  v111 = *(v0 + 56);
  v112 = *(*(v0 + 64) + 80);
  sub_1D17C07E0(v105 + ((v112 + 32) & ~v112), v110, type metadata accessor for SignificantEvent);

  v95(v109, v110 + *(v111 + 28), v108);
  sub_1D17C3CD4(v110, type metadata accessor for SignificantEvent);
  (*(v106 + 56))(v109, 0, 1, v108);
  (*(v106 + 32))(v107, v109, v108);
LABEL_41:
  v135 = *(v0 + 120);
  v134 = *(v0 + 128);
  v137 = *(v0 + 104);
  v136 = *(v0 + 112);
  sub_1D1E669DC();
  v138 = *(v136 + 8);
  v138(v135, v137);
  v138(v134, v137);
  v139 = sub_1D1E6848C();
  v141 = v140;
  v143 = v142;
  v144 = *(MEMORY[0x1E69E59F8] + 4);
  v145 = swift_task_alloc();
  *(v0 + 344) = v145;
  *v145 = v0;
  v145[1] = sub_1D17BFDF8;

  return MEMORY[0x1EEE68118](v139, v141, v143);
}

uint64_t sub_1D17BFDF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_1D17C0454;
  }

  else
  {
    v5 = sub_1D17BFF0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D17BFF0C()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v2 = Mutable;
  v3 = sub_1D1E677EC();
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  if (!v4)
  {

LABEL_8:
    v16 = *(v0 + 352);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v19 = *(v0 + 320);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    **(v0 + 48) = 1;
    *(v0 + 394) = 1;
    sub_1D17C078C();
    swift_willThrowTypedImpl();

    (*(v21 + 8))(v19, v20);
    goto LABEL_14;
  }

  CGImageDestinationAddImage(v4, *(v0 + 352), 0);
  if (CGImageDestinationFinalize(v4))
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v43 = *(v0 + 312);
    v44 = *(v0 + 288);
    v45 = *(v0 + 280);
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 256);
    v49 = *(v0 + 248);
    v50 = *(v0 + 240);
    v51 = *(v0 + 232);
    v52 = *(v0 + 224);
    v53 = *(v0 + 216);
    v55 = *(v0 + 208);
    v57 = *(v0 + 200);
    v59 = *(v0 + 192);
    v61 = *(v0 + 184);
    v63 = *(v0 + 176);
    v65 = *(v0 + 160);
    v67 = *(v0 + 144);
    v69 = *(v0 + 128);
    v71 = *(v0 + 120);
    v73 = *(v0 + 96);
    v75 = *(v0 + 80);
    v79 = *(v0 + 72);
    v11 = v2;
    v12 = sub_1D1E668BC();
    v77 = v13;

    (*(v10 + 8))(v8, v9);

    v14 = *(v0 + 8);

    return v14(v12, v77);
  }

  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EC643DF8);
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D16EC000, v23, v24, "Failed to output data for image", v25, 2u);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = *(v0 + 352);
  v28 = *(v0 + 328);
  v27 = *(v0 + 336);
  v80 = *(v0 + 320);
  v29 = *(v0 + 296);
  v30 = *(v0 + 304);
  v31 = *(v0 + 48);

  *v31 = 1;
  *(v0 + 395) = 1;
  sub_1D17C078C();
  swift_willThrowTypedImpl();

  (*(v30 + 8))(v80, v29);
LABEL_14:
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v38 = *(v0 + 248);
  v39 = *(v0 + 256);
  v41 = *(v0 + 232);
  v40 = *(v0 + 240);
  v54 = *(v0 + 224);
  v56 = *(v0 + 216);
  v58 = *(v0 + 208);
  v60 = *(v0 + 200);
  v62 = *(v0 + 192);
  v64 = *(v0 + 184);
  v66 = *(v0 + 176);
  v68 = *(v0 + 160);
  v70 = *(v0 + 144);
  v72 = *(v0 + 128);
  v74 = *(v0 + 120);
  v76 = *(v0 + 96);
  v78 = *(v0 + 80);
  v81 = *(v0 + 72);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D17C0454()
{
  v46 = v0;
  if (qword_1EC642140 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC643DF8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E6789C();
    v12 = sub_1D1B1312C(v10, v11, &v45);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v4, v5, "image generation failed with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v13 = *(v0 + 360);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  **(v0 + 48) = 1;
  *(v0 + 393) = 1;
  sub_1D17C078C();
  swift_willThrowTypedImpl();

  (*(v18 + 8))(v16, v17);
  v20 = *(v0 + 312);
  v19 = *(v0 + 320);
  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 256);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v31 = *(v0 + 224);
  v32 = *(v0 + 216);
  v33 = *(v0 + 208);
  v34 = *(v0 + 200);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);
  v38 = *(v0 + 160);
  v39 = *(v0 + 144);
  v40 = *(v0 + 128);
  v41 = *(v0 + 120);
  v42 = *(v0 + 96);
  v43 = *(v0 + 80);
  v44 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

unint64_t sub_1D17C078C()
{
  result = qword_1EC643E10;
  if (!qword_1EC643E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643E10);
  }

  return result;
}

uint64_t sub_1D17C07E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC010compositedF6Frames3for11segmentSize5countSaySo10CGImageRefaGAA15ScrubberElementO_So6CGSizeVSitYaAC15GenerationErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v20 = *MEMORY[0x1E69E9840];
  *(v5 + 240) = a2;
  *(v5 + 248) = a3;
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 216) = a1;
  v6 = *(*(sub_1D1E6842C() - 8) + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E18, &unk_1D1E73FD0) - 8) + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D18, &unk_1D1E73EA0);
  *(v5 + 272) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  v10 = type metadata accessor for CameraClip();
  *(v5 + 288) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  v12 = type metadata accessor for ScrubberElement(0);
  *(v5 + 304) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60) - 8) + 64) + 15;
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v15 = sub_1D1E6680C();
  *(v5 + 424) = v15;
  v16 = *(v15 - 8);
  *(v5 + 432) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  v18 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D17C0B10, 0, 0);
}

uint64_t sub_1D17C0B10()
{
  v1 = v0;
  v156 = *MEMORY[0x1E69E9840];
  v2 = v0[38];
  sub_1D17C07E0(v0[27], v0[44], type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[44];
    (*(v0[54] + 56))(v0[50], 1, 1, v0[53]);
    v4 = type metadata accessor for ScrubberElement;
    v5 = v3;
  }

  else
  {
    v6 = v0[50];
    v7 = v0[44];
    v9 = v0[36];
    v8 = v1[37];
    sub_1D17BA164(v7, v8, type metadata accessor for CameraClip);
    sub_1D1741C08(v8 + *(v9 + 56), v6, &qword_1EC642EA8, &qword_1D1E73C60);
    v4 = type metadata accessor for CameraClip;
    v5 = v8;
  }

  sub_1D17C3CD4(v5, v4);
  v10 = v1[53];
  v11 = v1[54];
  v12 = v1[51];
  sub_1D1741A90(v1[50], v12, &qword_1EC642EA8, &qword_1D1E73C60);
  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v1[38];
    sub_1D17C07E0(v1[27], v1[43], type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = v1[43];
      (*(v1[54] + 56))(v1[49], 1, 1, v1[53]);
      v16 = type metadata accessor for ScrubberElement;
      v17 = v15;
    }

    else
    {
      v21 = v1[49];
      v23 = v1[36];
      v22 = v1[37];
      sub_1D17BA164(v1[43], v22, type metadata accessor for CameraClip);
      sub_1D1741C08(v22 + *(v23 + 60), v21, &qword_1EC642EA8, &qword_1D1E73C60);
      v16 = type metadata accessor for CameraClip;
      v17 = v22;
    }

    sub_1D17C3CD4(v17, v16);
    v24 = v1[53];
    v25 = v1[51];
    sub_1D1741A90(v1[49], v1[52], &qword_1EC642EA8, &qword_1D1E73C60);
    if (v13(v25, 1, v24) != 1)
    {
      sub_1D1741A30(v1[51], &qword_1EC642EA8, &qword_1D1E73C60);
    }
  }

  else
  {
    v18 = v1[53];
    v19 = v1[54];
    v20 = v1[52];
    (*(v19 + 32))(v20, v1[51], v18);
    (*(v19 + 56))(v20, 0, 1, v18);
  }

  v27 = v1[52];
  v26 = v1[53];
  if (v13(v27, 1, v26) == 1)
  {
    sub_1D1741A30(v27, &qword_1EC642EA8, &qword_1D1E73C60);
LABEL_19:
    v51 = v1[55];
    v50 = v1[56];
    v53 = v1[51];
    v52 = v1[52];
    v54 = v1[49];
    v55 = v1[50];
    v56 = v1[47];
    v57 = v1[48];
    v135 = v1[46];
    v136 = v1[45];
    v137 = v1[44];
    v138 = v1[43];
    v139 = v1[42];
    v140 = v1[41];
    v141 = v1[40];
    v143 = v1[39];
    v145 = v1[37];
    v147 = v1[35];
    v150 = v1[33];
    v152 = v1[32];
    *v1[31] = 0;
    *(v1 + 73) = 0;
    sub_1D17C078C();
    swift_willThrowTypedImpl();

    v58 = v1[1];
    v59 = *MEMORY[0x1E69E9840];

    return v58();
  }

  v28 = v1[42];
  v29 = v1[38];
  v30 = v1[27];
  v31 = *(v1[54] + 32);
  v31(v1[56], v27, v26);
  sub_1D17C07E0(v30, v28, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v1[42];
    (*(v1[54] + 8))(v1[56], v1[53]);
    sub_1D17C3CD4(v32, type metadata accessor for ScrubberElement);
    goto LABEL_19;
  }

  v33 = v1[36];
  v34 = v1[37];
  sub_1D17BA164(v1[42], v34, type metadata accessor for CameraClip);
  v35 = *(v34 + *(v33 + 36));
  sub_1D17C3CD4(v34, type metadata accessor for CameraClip);
  v36 = v1[56];
  v38 = v1[53];
  v37 = v1[54];
  if (v35 <= 0.0)
  {
    (*(v37 + 8))(v1[56], v1[53]);
    goto LABEL_19;
  }

  v39 = v1[48];
  v146 = v1[41];
  v151 = v1[38];
  v142 = v31;
  v144 = v1[27];
  v40 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v41 = sub_1D1E6677C();
  v42 = [v40 initWithURL:v41 options:0];
  v1[57] = v42;

  v43 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  v1[58] = v43;
  [v43 setMaximumSize_];
  v44 = MEMORY[0x1E6960CC0];
  v45 = *(MEMORY[0x1E6960CC0] + 16);
  *(v1 + 76) = *MEMORY[0x1E6960CC0];
  *(v1 + 84) = *(v44 + 8);
  *(v1 + 92) = v45;
  [v43 setRequestedTimeToleranceBefore_];
  (*(v37 + 16))(v39, v36, v38);
  v46 = *(v37 + 56);
  v46(v39, 0, 1, v38);
  sub_1D17C07E0(v144, v146, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v1[41];
    v46(v1[46], 1, 1, v1[53]);
    v48 = type metadata accessor for ScrubberElement;
    v49 = v47;
  }

  else
  {
    v61 = v1[46];
    v62 = v1[36];
    v63 = v1[37];
    sub_1D17BA164(v1[41], v63, type metadata accessor for CameraClip);
    sub_1D1741C08(v63 + *(v62 + 56), v61, &qword_1EC642EA8, &qword_1D1E73C60);
    v48 = type metadata accessor for CameraClip;
    v49 = v63;
  }

  sub_1D17C3CD4(v49, v48);
  v148 = v1[53];
  v65 = v1[47];
  v64 = v1[48];
  v67 = v1[34];
  v66 = v1[35];
  sub_1D1741A90(v1[46], v65, &qword_1EC642EA8, &qword_1D1E73C60);
  v68 = *(v67 + 48);
  sub_1D1741C08(v64, v66, &qword_1EC642EA8, &qword_1D1E73C60);
  v153 = v68;
  sub_1D1741C08(v65, v66 + v68, &qword_1EC642EA8, &qword_1D1E73C60);
  v69 = v13(v66, 1, v148);
  v70 = v1[53];
  if (v69 == 1)
  {
    v71 = v1[48];
    sub_1D1741A30(v1[47], &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v71, &qword_1EC642EA8, &qword_1D1E73C60);
    if (v13(v66 + v153, 1, v70) == 1)
    {
      sub_1D1741A30(v1[35], &qword_1EC642EA8, &qword_1D1E73C60);
LABEL_30:
      v85 = v1[38];
      sub_1D17C07E0(v1[27], v1[40], type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v87 = v1[40];
      if (EnumCaseMultiPayload != 1)
      {
        v89 = v1[36];
        v88 = v1[37];
        sub_1D17BA164(v87, v88, type metadata accessor for CameraClip);
        v84 = *(v88 + *(v89 + 52));
        sub_1D17C3CD4(v88, type metadata accessor for CameraClip);
        goto LABEL_34;
      }

      sub_1D17C3CD4(v87, type metadata accessor for ScrubberElement);
      goto LABEL_32;
    }

LABEL_28:
    sub_1D1741A30(v1[35], &qword_1EC643D18, &unk_1D1E73EA0);
LABEL_32:
    v84 = 0.0;
    goto LABEL_34;
  }

  sub_1D1741C08(v1[35], v1[45], &qword_1EC642EA8, &qword_1D1E73C60);
  if (v13(v66 + v153, 1, v70) == 1)
  {
    v72 = v1[53];
    v73 = v1[54];
    v74 = v1[48];
    v75 = v1[45];
    sub_1D1741A30(v1[47], &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1741A30(v74, &qword_1EC642EA8, &qword_1D1E73C60);
    (*(v73 + 8))(v75, v72);
    goto LABEL_28;
  }

  v77 = v1[54];
  v76 = v1[55];
  v78 = v1[53];
  v80 = v1[47];
  v79 = v1[48];
  v81 = v1[45];
  v149 = v1[35];
  v142(v76, v66 + v153, v78);
  sub_1D17C45BC(&qword_1EC643D28, MEMORY[0x1E6968FB0]);
  v82 = sub_1D1E6775C();
  v83 = *(v77 + 8);
  v83(v76, v78);
  sub_1D1741A30(v80, &qword_1EC642EA8, &qword_1D1E73C60);
  sub_1D1741A30(v79, &qword_1EC642EA8, &qword_1D1E73C60);
  v83(v81, v78);
  sub_1D1741A30(v149, &qword_1EC642EA8, &qword_1D1E73C60);
  v84 = 0.0;
  if (v82)
  {
    goto LABEL_30;
  }

LABEL_34:
  v90 = v1[38];
  sub_1D17C07E0(v1[27], v1[39], type metadata accessor for ScrubberElement);
  v91 = swift_getEnumCaseMultiPayload();
  v92 = v1[39];
  if (v91 == 1)
  {
    sub_1D17C3CD4(v92, type metadata accessor for ScrubberElement);
    v93 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v95 = v1[36];
    v94 = v1[37];
    sub_1D17BA164(v92, v94, type metadata accessor for CameraClip);
    v93 = *(v94 + *(v95 + 40));

    sub_1D17C3CD4(v94, type metadata accessor for CameraClip);
  }

  v96 = v1[33];
  if (*(v93 + 16))
  {
    v97 = type metadata accessor for SignificantEvent();
    v98 = *(v97 - 8);
    sub_1D17C07E0(v93 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v96, type metadata accessor for SignificantEvent);

    (*(v98 + 56))(v96, 0, 1, v97);
  }

  else
  {

    v99 = type metadata accessor for SignificantEvent();
    (*(*(v99 - 8) + 56))(v96, 1, 1, v99);
  }

  v100 = v1[33];
  v101 = v1[30];
  v102 = v1[27];
  *(swift_task_alloc() + 16) = v102;
  v103 = sub_1D17BE4C4(sub_1D17C3D34);
  v105 = v104;

  sub_1D1741A30(v100, &qword_1EC643E18, &unk_1D1E73FD0);
  v106 = *&v103;
  if (v105)
  {
    v106 = 0.0;
  }

  v107 = v84 + v106 + 2.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  inited = swift_initStackObject();
  v1[59] = inited;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v107;
  v109 = 1;
  if (v101 >= 2)
  {
    v110 = v35 + v84;
    v111 = v35 + v84 - v107;
    if (v111 > 0.0)
    {
      v112 = v111 / (v1[30] - 1);
      v113 = v110 + -0.1;
      v114 = 5;
      do
      {
        v115 = v114 - 3;
        if (v113 >= v107 + v112 * (v114 - 4))
        {
          v116 = v107 + v112 * (v114 - 4);
        }

        else
        {
          v116 = v113;
        }

        v117 = *(inited + 24);
        if (v114 - 4 >= v117 >> 1)
        {
          inited = sub_1D177D4E8((v117 > 1), v114 - 3, 1, inited);
        }

        v118 = v1[30];
        *(inited + 16) = v115;
        *(inited + 8 * v114++) = v116;
      }

      while (v115 != v118);
      v109 = v114 - 4;
    }
  }

  v1[60] = inited;
  v154 = MEMORY[0x1E69E7CC0];
  sub_1D178D094(0, v109, 0);
  v119 = v154;
  v120 = (inited + 32);
  do
  {
    v121 = *v120;
    v122 = sub_1D1E6848C();
    v155 = v119;
    v126 = *(v119 + 16);
    v125 = *(v119 + 24);
    if (v126 >= v125 >> 1)
    {
      v128 = v122;
      v129 = v123;
      v130 = v124;
      sub_1D178D094((v125 > 1), v126 + 1, 1);
      v122 = v128;
      v123 = v129;
      v124 = v130;
      v119 = v155;
    }

    *(v119 + 16) = v126 + 1;
    v127 = (v119 + 24 * v126);
    v127[4] = v122;
    v127[5] = v123;
    v127[6] = v124;
    ++v120;
    --v109;
  }

  while (v109);
  v131 = v1[32];
  sub_1D1E6843C();

  v132 = swift_task_alloc();
  v1[61] = v132;
  *v132 = v1;
  v132[1] = sub_1D17C1A50;
  v133 = v1[32];
  v134 = *MEMORY[0x1E69E9840];

  return sub_1D17C24C0();
}

void sub_1D17C1A50(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 488);
  v8 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE6DFA0](sub_1D17C1BBC, 0, 0);
  }
}

uint64_t sub_1D17C1BBC()
{
  v73 = v0;
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 496);
  v2 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = 0;
  v5 = *(v0 + 504);
  v6 = v1 + 32;
  v7 = 0x1EC642000uLL;
  v8 = qword_1EC643DF8;
  v65 = *(v0 + 496);
  v58 = v1 + 32;
  do
  {
    v61 = v2;
    v2 = v6 + (v4 << 6);
    v9 = v4;
    while (1)
    {
      if (v9 >= *(v1 + 16))
      {
        __break(1u);
LABEL_29:
        if (!sub_1D1E6873C())
        {
          goto LABEL_30;
        }

LABEL_19:
        v31 = *(v0 + 224);
        if (v31 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v31 < 9.22337204e18)
        {
          v32 = *(v0 + 232);
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v0 + 232) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v32 > -9.22337204e18)
            {
              if (v32 < 9.22337204e18)
              {
                v33 = _s13HomeDataModel30CameraClipPosterFrameGeneratorC15compositedImage4from12segmentWidth0L6HeightSo10CGImageRefaSgSayAIG_S2itFZ_0(v2, v31, v32);

                v34 = *(v0 + 456);
                v35 = *(v0 + 464);
                v36 = *(v0 + 448);
                v38 = *(v0 + 424);
                v37 = *(v0 + 432);
                if (v33)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
                  v39 = swift_allocObject();
                  *(v39 + 16) = xmmword_1D1E73FA0;
                  v62 = v39;
                  *(v39 + 32) = v33;

                  (*(v37 + 8))(v36, v38);
                }

                else
                {

                  (*(v37 + 8))(v36, v38);
                  v62 = MEMORY[0x1E69E7CC0];
                }

                goto LABEL_31;
              }

LABEL_38:
              __break(1u);
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_36;
      }

      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      *(v0 + 57) = *(v2 + 41);
      *(v0 + 32) = v11;
      *(v0 + 48) = v12;
      *(v0 + 16) = v10;
      v4 = v9 + 1;
      sub_1D17C3D54(v0 + 16, v0 + 104);
      sub_1D1E6841C();
      if (!v5)
      {
        break;
      }

      if (*(v7 + 320) != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, v8);
      v14 = v5;
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (os_log_type_enabled(v15, v16))
      {
        v69 = v4;
        v17 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v72[0] = v67;
        *v17 = 136315394;
        *(v17 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9340, v72);
        *(v17 + 12) = 2080;
        *(v0 + 208) = v5;
        v18 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
        v19 = sub_1D1E6789C();
        v21 = v15;
        v22 = v8;
        v23 = sub_1D1B1312C(v19, v20, v72);
        v7 = 0x1EC642000;

        *(v17 + 14) = v23;
        v8 = v22;
        v24 = v16;
        v25 = v21;
        _os_log_impl(&dword_1D16EC000, v21, v24, "%s failed to grab image %s", v17, 0x16u);
        swift_arrayDestroy();
        v1 = v65;
        MEMORY[0x1D3893640](v67, -1, -1);
        v26 = v17;
        v4 = v69;
        MEMORY[0x1D3893640](v26, -1, -1);
      }

      else
      {
      }

      sub_1D17C3DB0(v0 + 16);
      v5 = 0;
      v2 += 64;
      v9 = v4;
      if (v3 == v4)
      {
        v2 = v61;
        goto LABEL_17;
      }
    }

    v27 = sub_1D17C3DB0(v0 + 16);
    MEMORY[0x1D3891220](v27);
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v5 = 0;
    v2 = v71;
    v6 = v58;
  }

  while (v3 - 1 != v9);
LABEL_17:
  v29 = *(v0 + 496);
  v30 = *(v0 + 480);

  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_30:
  v62 = v2;
  v40 = *(v0 + 456);
  v41 = *(v0 + 464);
  (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

LABEL_31:
  v43 = *(v0 + 440);
  v42 = *(v0 + 448);
  v45 = *(v0 + 408);
  v44 = *(v0 + 416);
  v47 = *(v0 + 392);
  v46 = *(v0 + 400);
  v49 = *(v0 + 376);
  v48 = *(v0 + 384);
  v51 = *(v0 + 360);
  v50 = *(v0 + 368);
  v55 = *(v0 + 352);
  v56 = *(v0 + 344);
  v57 = *(v0 + 336);
  v59 = *(v0 + 328);
  v60 = *(v0 + 320);
  v63 = *(v0 + 312);
  v64 = *(v0 + 296);
  v66 = *(v0 + 280);
  v68 = *(v0 + 264);
  v70 = *(v0 + 256);

  v52 = *(v0 + 8);
  v53 = *MEMORY[0x1E69E9840];

  return v52(v62);
}

uint64_t sub_1D17C21DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v28[0] = a2;
  v28[1] = a1;
  v3 = type metadata accessor for ReachabilityEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraClip();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrubberElement(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17C07E0(v28[0], v14, type metadata accessor for ScrubberElement);
  v20 = (v16 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17BA164(v14, v6, type metadata accessor for ReachabilityEvent);
    (*v20)(v19, &v6[*(v3 + 24)], v15);
    v21 = type metadata accessor for ReachabilityEvent;
    v22 = v6;
  }

  else
  {
    sub_1D17BA164(v14, v10, type metadata accessor for CameraClip);
    (*v20)(v19, &v10[*(v7 + 24)], v15);
    v21 = type metadata accessor for CameraClip;
    v22 = v10;
  }

  sub_1D17C3CD4(v22, v21);
  v23 = *(type metadata accessor for SignificantEvent() + 28);
  sub_1D1E669DC();
  v25 = v24;
  result = (*(v16 + 8))(v19, v15);
  v27 = v29;
  *v29 = v25;
  *(v27 + 8) = 0;
  return result;
}

uint64_t sub_1D17C24C0()
{
  v1[26] = v0;
  v2 = sub_1D1E6842C();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C2580, 0, 0);
}

uint64_t sub_1D17C2580()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = MEMORY[0x1E69E5A08];
  sub_1D17C45BC(&qword_1EC643E68, MEMORY[0x1E69E5A08]);
  sub_1D1E6801C();
  v0[30] = MEMORY[0x1E69E7CC0];
  v5 = sub_1D17C45BC(&qword_1EC643E70, v4);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_1D17C26B0;
  v8 = v0[29];
  v9 = v0[27];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v9, v5);
}

uint64_t sub_1D17C26B0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[30];
    (*(v2[28] + 8))(v2[29], v2[27]);

    v5 = sub_1D17C29EC;
  }

  else
  {
    v5 = sub_1D17C27E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D17C27E4()
{
  if (*(v0 + 72) == 255)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v16 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v16;
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 121) = *(v0 + 57);
    sub_1D1741A30(v0 + 80, &qword_1EC643E78, &unk_1D1E74150);

    v17 = *(v0 + 8);
    v18 = *(v0 + 240);

    return v17(v18);
  }

  else
  {
    v1 = *(v0 + 240);
    v2 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v2;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 185) = *(v0 + 57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1D177D3DC(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D177D3DC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[64 * v6];
    v8 = *(v0 + 144);
    v9 = *(v0 + 160);
    v10 = *(v0 + 176);
    *(v7 + 73) = *(v0 + 185);
    *(v7 + 3) = v9;
    *(v7 + 4) = v10;
    *(v7 + 2) = v8;
    *(v0 + 240) = v4;
    v11 = sub_1D17C45BC(&qword_1EC643E70, MEMORY[0x1E69E5A08]);
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1D17C26B0;
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v15, v11);
  }
}

uint64_t sub_1D17C29EC()
{
  v1 = v0[29];

  v2 = v0[1];
  v3 = v0[32];

  return v2();
}

uint64_t sub_1D17C2A50(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E58, &unk_1D1E74140);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C2B1C, 0, 0);
}

uint64_t sub_1D17C2B1C()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
  sub_1D1E67DBC();
  v0[8] = MEMORY[0x1E69E7CC0];
  v3 = sub_1D17C4548(&qword_1EC643E60, &qword_1EC643E58, &unk_1D1E74140);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D17C2C18;
  v6 = v0[7];
  v7 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v3);
}

uint64_t sub_1D17C2C18()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v5 = sub_1D17C2F00;
  }

  else
  {
    v5 = sub_1D17C2D4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D17C2D4C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v2 = *(v0 + 8);
    v3 = *(v0 + 64);

    return v2(v3);
  }

  else
  {
    v17 = *(v0 + 16);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1D177EFB8(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    v10 = v17;
    if (v9 >= v8 >> 1)
    {
      v16 = sub_1D177EFB8((v8 > 1), v9 + 1, 1, v7);
      v10 = v17;
      v7 = v16;
    }

    v7[2] = v9 + 1;
    *&v7[2 * v9 + 4] = v10;
    *(v0 + 64) = v7;
    v11 = sub_1D17C4548(&qword_1EC643E60, &qword_1EC643E58, &unk_1D1E74140);
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1D17C2C18;
    v14 = *(v0 + 56);
    v15 = *(v0 + 40);

    return MEMORY[0x1EEE6D8C8](v0 + 16, v15, v11);
  }
}

uint64_t sub_1D17C2F00()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1D17C2F64(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E40, &unk_1D1E74120) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E48, &qword_1D1E74130);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C30DC, 0, 0);
}

uint64_t sub_1D17C30DC()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];
  sub_1D1E67DBC();
  v0[11] = MEMORY[0x1E69E7CC0];
  v4 = sub_1D17C4548(&qword_1EC643E50, &qword_1EC643E48, &qword_1D1E74130);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D17C31BC;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[3];

  return MEMORY[0x1EEE6D8C8](v9, v8, v4);
}

uint64_t sub_1D17C31BC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[11];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v5 = sub_1D17C4604;
  }

  else
  {
    v5 = sub_1D17C32F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D17C32F0()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[7];
    v3 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1D1741A30(v1, &qword_1EC643E40, &unk_1D1E74120);

    v4 = v0[1];
    v5 = v0[11];

    return v4(v5);
  }

  else
  {
    v7 = v0[11];
    v9 = v0[6];
    v8 = v0[7];
    sub_1D1741A90(v1, v8, &unk_1EC649E20, &unk_1D1E717B0);
    sub_1D1741C08(v8, v9, &unk_1EC649E20, &unk_1D1E717B0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D177F0EC(0, v11[2] + 1, 1, v0[11]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D177F0EC(v12 > 1, v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[5];
    sub_1D1741A30(v0[7], &unk_1EC649E20, &unk_1D1E717B0);
    v11[2] = v13 + 1;
    sub_1D1741A90(v14, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, &unk_1EC649E20, &unk_1D1E717B0);
    v0[11] = v11;
    v16 = sub_1D17C4548(&qword_1EC643E50, &qword_1EC643E48, &qword_1D1E74130);
    v17 = *(MEMORY[0x1E69E85A8] + 4);
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1D17C31BC;
    v19 = v0[10];
    v20 = v0[8];
    v21 = v0[3];

    return MEMORY[0x1EEE6D8C8](v21, v20, v16);
  }
}

uint64_t sub_1D17C3584(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E28, &unk_1D1E740F8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E30, &unk_1D1E74108);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17C36FC, 0, 0);
}

uint64_t sub_1D17C36FC()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];
  sub_1D1E67DBC();
  v0[11] = MEMORY[0x1E69E7CC0];
  v4 = sub_1D17C4548(&qword_1EC643E38, &qword_1EC643E30, &unk_1D1E74108);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D17C37DC;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[3];

  return MEMORY[0x1EEE6D8C8](v9, v8, v4);
}

uint64_t sub_1D17C37DC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[11];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v5 = sub_1D17C3BA4;
  }

  else
  {
    v5 = sub_1D17C3910;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D17C3910()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[7];
    v3 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1D1741A30(v1, &qword_1EC643E28, &unk_1D1E740F8);

    v4 = v0[1];
    v5 = v0[11];

    return v4(v5);
  }

  else
  {
    v7 = v0[11];
    v9 = v0[6];
    v8 = v0[7];
    sub_1D1741A90(v1, v8, &qword_1EC643158, &unk_1D1E715B0);
    sub_1D1741C08(v8, v9, &qword_1EC643158, &unk_1D1E715B0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D17802DC(0, v11[2] + 1, 1, v0[11]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D17802DC(v12 > 1, v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[5];
    sub_1D1741A30(v0[7], &qword_1EC643158, &unk_1D1E715B0);
    v11[2] = v13 + 1;
    sub_1D1741A90(v14, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, &qword_1EC643158, &unk_1D1E715B0);
    v0[11] = v11;
    v16 = sub_1D17C4548(&qword_1EC643E38, &qword_1EC643E30, &unk_1D1E74108);
    v17 = *(MEMORY[0x1E69E85A8] + 4);
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1D17C37DC;
    v19 = v0[10];
    v20 = v0[8];
    v21 = v0[3];

    return MEMORY[0x1EEE6D8C8](v21, v20, v16);
  }
}

uint64_t sub_1D17C3BA4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t CameraClipPosterFrameGenerator.GenerationError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17C3CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeDataModel30CameraClipPosterFrameGeneratorC15compositedImage4from12segmentWidth0L6HeightSo10CGImageRefaSgSayAIG_S2itFZ_0(unint64_t a1, uint64_t a2, int64_t a3)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = result;
  if (result)
  {
    while (1)
    {
      v8 = a2 * result;
      if ((a2 * result) >> 64 != (a2 * result) >> 63)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v9 = __CGBitmapContextCreate(v8, a3, DeviceRGB);
      if (!v9)
      {
        break;
      }

      if (v46 < 1)
      {
        goto LABEL_35;
      }

      v10 = v9;
      v44 = DeviceRGB;
      v45 = a2;
      v11 = a2;
      v12 = a3;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = v6;
          v16 = MEMORY[0x1D3891EF0](v14, v6);
          CGImageGetWidth(v16);
          CGImageGetHeight(v16);
          v47.origin.y = 0.0;
          v47.origin.x = v13;
          v47.size.width = v11;
          v47.size.height = v12;
          CGRectGetWidth(v47);
          v48.origin.y = 0.0;
          v48.origin.x = v13;
          v48.size.width = v11;
          v48.size.height = v12;
          CGRectGetHeight(v48);
          v49.origin.y = 0.0;
          v49.origin.x = v13;
          v49.size.width = v11;
          v49.size.height = v12;
          CGRectGetWidth(v49);
          v50.origin.y = 0.0;
          v50.origin.x = v13;
          v50.size.width = v11;
          v50.size.height = v12;
          CGRectGetHeight(v50);
          CGContextSaveGState(v10);
          v51.origin.y = 0.0;
          v51.origin.x = v13;
          v51.size.width = v11;
          v51.size.height = v12;
          CGContextAddRect(v10, v51);
          v17 = sub_1D1E66D4C();
          v6 = &v43;
          v18 = *(v17 - 8);
          v19 = *(v18 + 64);
          MEMORY[0x1EEE9AC00](v17);
          v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v18 + 104))(v21, *MEMORY[0x1E695EEC0], v17);
          a3 = v10;
          sub_1D1E682FC();
          (*(v18 + 8))(v21, v17);
          a2 = v45;
          sub_1D1E6830C();
          CGContextRestoreGState(v10);
          swift_unknownObjectRelease();
          if (__OFADD__(v13, a2))
          {
            break;
          }

          ++v14;
          v13 += a2;
          v6 = v15;
          if (v46 == v14)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
        v26 = 0;
        v27 = (v6 + 32);
        v28 = MEMORY[0x1E695EEC0];
        while (1)
        {
          v6 = *v27;
          CGImageGetWidth(v6);
          CGImageGetHeight(v6);
          v52.origin.y = 0.0;
          v52.origin.x = v26;
          v52.size.width = v11;
          v52.size.height = v12;
          CGRectGetWidth(v52);
          v53.origin.y = 0.0;
          v53.origin.x = v26;
          v53.size.width = v11;
          v53.size.height = v12;
          CGRectGetHeight(v53);
          v54.origin.y = 0.0;
          v54.origin.x = v26;
          v54.size.width = v11;
          v54.size.height = v12;
          CGRectGetWidth(v54);
          v55.origin.y = 0.0;
          v55.origin.x = v26;
          v55.size.width = v11;
          v55.size.height = v12;
          CGRectGetHeight(v55);
          CGContextSaveGState(v10);
          v56.origin.y = 0.0;
          v56.origin.x = v26;
          v56.size.width = v11;
          v56.size.height = v12;
          CGContextAddRect(v10, v56);
          v29 = sub_1D1E66D4C();
          a2 = &v43;
          v30 = *(v29 - 8);
          v31 = *(v30 + 64);
          MEMORY[0x1EEE9AC00](v29);
          v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 104))(v33, *v28, v29);
          a3 = v10;
          sub_1D1E682FC();
          (*(v30 + 8))(v33, v29);
          v34 = v45;
          sub_1D1E6830C();
          CGContextRestoreGState(v10);

          if (__OFADD__(v26, v34))
          {
            break;
          }

          v26 += v34;
          ++v27;
          if (!--v46)
          {
LABEL_18:
            Image = CGBitmapContextCreateImage(v10);
            if (Image)
            {
              v36 = Image;

              return v36;
            }

            if (qword_1EC642140 != -1)
            {
              swift_once();
            }

            v37 = sub_1D1E6709C();
            __swift_project_value_buffer(v37, qword_1EC643DF8);
            v38 = sub_1D1E6707C();
            v39 = sub_1D1E6833C();
            v40 = os_log_type_enabled(v38, v39);
            v41 = v44;
            if (v40)
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              _os_log_impl(&dword_1D16EC000, v38, v39, "Failed to create composite image from context", v42, 2u);
              MEMORY[0x1D3893640](v42, -1, -1);
            }

            return 0;
          }
        }
      }

      __break(1u);
LABEL_29:
      if (v6 < 0)
      {
        DeviceRGB = v6;
      }

      else
      {
        DeviceRGB = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      result = sub_1D1E6873C();
      v46 = result;
      if (!result)
      {
        return result;
      }

      result = sub_1D1E6873C();
    }

    if (qword_1EC642140 == -1)
    {
      goto LABEL_12;
    }

LABEL_36:
    swift_once();
LABEL_12:
    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EC643DF8);
    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6833C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D16EC000, v23, v24, "Failed to create bitmap context for compositing", v25, 2u);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D17C44A8()
{
  result = qword_1EC643E20;
  if (!qword_1EC643E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643E20);
  }

  return result;
}

uint64_t sub_1D17C4548(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D17C45BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of CameraEventCacheable.prefetchAndLoadInitialEvents(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchOlderEvents(limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchOlderEvents()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchNewerEvents()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CameraEventCacheable.fetchFirstClip(in:limit:ascending:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D17C4BFC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D17C4BFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL sub_1D17C4CF4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1D1E66A7C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1D17CA8FC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  }

  while ((sub_1D1E6775C() & 1) == 0);
  return v4 != v5;
}

BOOL sub_1D17C4E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v12 = *v3;
    v7 = ServiceKind.rawValue.getter();
    v9 = v8;
    if (v7 == ServiceKind.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_1D1E6904C();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1D17C4EDC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_1D17C4F24(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D17C4F54(__int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a2 + 33); !*i; i += 2)
  {
    if (!HIBYTE(a1))
    {
      goto LABEL_4;
    }

LABEL_5:
    if (!--v2)
    {
      return 0;
    }
  }

  if (*i == 1)
  {
    if (HIBYTE(a1) != 1)
    {
      goto LABEL_5;
    }
  }

  else if (HIBYTE(a1) != 2)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*(i - 1) != a1)
  {
    goto LABEL_5;
  }

  return 1;
}

BOOL sub_1D17C4FC0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while ((0xFE060504030201uLL >> (8 * a1)) != (0xFE060504030201uLL >> (8 * v6)));
  return v4 != 0;
}

uint64_t sub_1D17C5014(void *a1, uint64_t a2)
{
  v42 = a1;
  v41 = sub_1D1E66A7C();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v31 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v31 - v10;
  v37 = _s8IntervalVMa(0);
  v12 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v38 = (v3 + 48);
    v40 = *(v13 + 72);
    v32 = (v3 + 32);
    v35 = (v3 + 8);
    v18 = v36;
    do
    {
      sub_1D17CA4EC(v17, v15, _s8IntervalVMa);
      v19 = *v15 == *v42 && v15[1] == v42[1];
      if (!v19 && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_5;
      }

      v20 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
      v21 = *(v39 + 48);
      sub_1D1741C08(v15 + v20, v11, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v42 + v20, &v11[v21], &qword_1EC642590, qword_1D1E71260);
      v22 = *v38;
      if ((*v38)(v11, 1, v41) == 1)
      {
        if (v22(&v11[v21], 1, v41) != 1)
        {
          goto LABEL_4;
        }

        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v11, v18, &qword_1EC642590, qword_1D1E71260);
        if (v22(&v11[v21], 1, v41) == 1)
        {
          (*v35)(v18, v41);
LABEL_4:
          sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_5:
          sub_1D17CA7E4(v15, _s8IntervalVMa);
          goto LABEL_6;
        }

        v23 = v33;
        v24 = v41;
        (*v32)(v33, &v11[v21], v41);
        sub_1D17CA8FC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v34 = sub_1D1E6775C();
        v25 = *v35;
        v26 = v23;
        v18 = v36;
        (*v35)(v26, v24);
        v25(v18, v24);
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
        if ((v34 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v27 = *(v37 + 20);
      if ((sub_1D1E68A0C() & 1) == 0)
      {
        goto LABEL_5;
      }

      v28 = *(v37 + 24);
      v29 = sub_1D1E68A0C();
      sub_1D17CA7E4(v15, _s8IntervalVMa);
      if (v29)
      {
        return 1;
      }

LABEL_6:
      v17 += v40;
      --v16;
    }

    while (v16);
  }

  return 0;
}

uint64_t sub_1D17C5508(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      if (v5 == 53)
      {
        if (a1 == 53)
        {
          return 1;
        }
      }

      else if (a1 != 53)
      {
        v6 = ServiceKind.rawValue.getter();
        v8 = v7;
        if (v6 == ServiceKind.rawValue.getter() && v8 == v9)
        {

          return 1;
        }

        v10 = sub_1D1E6904C();

        if (v10)
        {
          return 1;
        }
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1D17C5604(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 7)
      {
        if (a1 == 7)
        {
          return 1;
        }
      }

      else if (a1 != 7 && (sub_1D179F2F8(v5, a1) & 1) != 0)
      {
        return 1;
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1D17C567C(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v44 = sub_1D1E66A7C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v43 = (&v37 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *(a2 + 16);
  if (!v20)
  {
    return 0;
  }

  v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v45 = *(v17 + 72);
  v42 = (v3 + 8);
  v38 = (v3 + 32);
  v39 = v10;
  while (1)
  {
    sub_1D17CA4EC(v21, v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v22 = &v9[*(v6 + 48)];
    sub_1D17CA4EC(v19, v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D17CA4EC(v46, v22, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17CA4EC(v9, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v6;
        v24 = v40;
        v25 = v22;
        v26 = v44;
        (*v38)(v40, v25, v44);
        v41 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v27 = *v42;
        v28 = v24;
        v6 = v23;
        (*v42)(v28, v26);
        v27(v14, v26);
        sub_1D17CA7E4(v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v41)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      (*v42)(v14, v44);
LABEL_4:
      sub_1D1741A30(v9, &qword_1EC642AA8, &unk_1D1E9F9F0);
      goto LABEL_5;
    }

    v29 = v43;
    sub_1D17CA4EC(v9, v43, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v31 = *v29;
    v30 = v29[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_4;
    }

    v32 = *v22;
    v33 = *(v22 + 1);
    if (v31 == v32 && v30 == v33)
    {
      break;
    }

    v35 = sub_1D1E6904C();

    if (v35)
    {
      goto LABEL_20;
    }

    sub_1D17CA7E4(v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_5:
    sub_1D17CA7E4(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v21 += v45;
    if (!--v20)
    {
      return 0;
    }
  }

LABEL_20:
  sub_1D17CA7E4(v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_21:
  sub_1D17CA7E4(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 1;
}

uint64_t sub_1D17C5B18(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E98, &unk_1D1E74290);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for RoomType(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = *(a2 + 16);
  if (!v18)
  {
    return 0;
  }

  v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v20 = *(v14 + 72);
  v21 = (v4 + 48);
  v32 = v7;
  v33 = (v4 + 8);
  v29 = (v4 + 32);
  v34 = v20;
  v35 = v15;
  while (1)
  {
    sub_1D17CA4EC(v19, v17, type metadata accessor for RoomType);
    v22 = *(v7 + 48);
    sub_1D17CA4EC(v17, v10, type metadata accessor for RoomType);
    sub_1D17CA4EC(v36, &v10[v22], type metadata accessor for RoomType);
    v23 = *v21;
    v24 = (*v21)(v10, 4, v3);
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (v23(&v10[v22], 4, v3) == 2)
        {
          goto LABEL_22;
        }
      }

      else if (v24 == 3)
      {
        if (v23(&v10[v22], 4, v3) == 3)
        {
          goto LABEL_22;
        }
      }

      else if (v23(&v10[v22], 4, v3) == 4)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v24)
    {
      break;
    }

    v25 = v35;
    sub_1D17CA4EC(v10, v35, type metadata accessor for RoomType);
    if (v23(&v10[v22], 4, v3))
    {
      (*v33)(v25, v3);
      v7 = v32;
      v20 = v34;
LABEL_16:
      sub_1D1741A30(v10, &qword_1EC643E98, &unk_1D1E74290);
      goto LABEL_17;
    }

    v26 = v31;
    (*v29)(v31, &v10[v22], v3);
    v30 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v27 = *v33;
    (*v33)(v26, v3);
    v27(v25, v3);
    sub_1D17CA7E4(v10, type metadata accessor for RoomType);
    v7 = v32;
    v20 = v34;
    if (v30)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1D17CA7E4(v17, type metadata accessor for RoomType);
    v19 += v20;
    if (!--v18)
    {
      return 0;
    }
  }

  if (v23(&v10[v22], 4, v3) != 1)
  {
    goto LABEL_16;
  }

LABEL_22:
  sub_1D17CA7E4(v10, type metadata accessor for RoomType);
LABEL_23:
  sub_1D17CA7E4(v17, type metadata accessor for RoomType);
  return 1;
}

BOOL sub_1D17C5F88(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = CategoryKind.description.getter(*v4);
    v9 = v8;
    if (v7 == CategoryKind.description.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_1D1E6904C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t CameraEventPrefetcher.eventCache.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t CameraEventPrefetcher.fetchRequestsCancellationRequested.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  if (a1)
  {
    if (*(v1 + 64))
    {
      v4 = *(v1 + 64);

      sub_1D1E67F5C();
    }

    if (*(v1 + 72))
    {
      v5 = *(v1 + 72);

      sub_1D1E67F5C();
    }

    v6 = *(v1 + 64);
    *(v1 + 64) = 0;

    v7 = *(v1 + 72);
    *(v1 + 72) = 0;
  }

  return result;
}

uint64_t (*CameraEventPrefetcher.fetchRequestsCancellationRequested.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D17C61C8;
}

uint64_t sub_1D17C61C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (*(v5 + 56) == 1)
    {
      v6 = *(a1 + 24);
      if (*(v5 + 64))
      {
        v7 = *(v5 + 64);

        sub_1D1E67F5C();

        v6 = *(a1 + 24);
      }

      if (*(v6 + 72))
      {
        v8 = *(v6 + 72);

        sub_1D1E67F5C();
      }

      v9 = *(v5 + 64);
      *(v5 + 64) = 0;

      v10 = *(v6 + 72);
      *(v6 + 72) = 0;
    }
  }

  return result;
}

uint64_t CameraEventPrefetcher.__allocating_init(eventCache:boundarySize:eventFetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x1E69E7CD0];
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t CameraEventPrefetcher.init(eventCache:boundarySize:eventFetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t CameraEventPrefetcher.fetchOlderEventsIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v48 - v6;
  v7 = type metadata accessor for ReachabilityEvent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraClip();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberElement(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrubberElement.ID(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[3];
  v24 = v1[2];
  ObjectType = swift_getObjectType();
  v26 = (*(v23 + 24))(ObjectType, v23);
  v27 = sub_1D17C680C(v1[5], v26);
  v29 = v28;
  v31 = v30;
  v49 = v32;
  if ((sub_1D17C9708(a1, v28, v32, v30) & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  v48 = v29;
  swift_beginAccess();
  v33 = v2[4];
  sub_1D17CA4EC(a1, v18, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17CA77C(v18, v10, type metadata accessor for ReachabilityEvent);
    v34 = sub_1D1E66A7C();
    (*(*(v34 - 8) + 16))(v22, v10, v34);

    v35 = type metadata accessor for ReachabilityEvent;
    v36 = v10;
  }

  else
  {
    sub_1D17CA77C(v18, v14, type metadata accessor for CameraClip);
    v34 = sub_1D1E66A7C();
    (*(*(v34 - 8) + 16))(v22, v14, v34);

    v35 = type metadata accessor for CameraClip;
    v36 = v14;
  }

  sub_1D17CA7E4(v36, v35);
  v37 = sub_1D1719534(v22, v33);

  sub_1D1E66A7C();
  (*(*(v34 - 8) + 8))(v22, v34);
  if (v37)
  {
    return swift_unknownObjectRelease();
  }

  v39 = sub_1D1E67E7C();
  v40 = v50;
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  sub_1D1E67E1C();
  swift_unknownObjectRetain();

  v41 = sub_1D1E67E0C();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  v42[2] = v41;
  v42[3] = v43;
  v45 = v48;
  v44 = v49;
  v42[4] = v27;
  v42[5] = v45;
  v42[6] = v44;
  v42[7] = v31;
  v42[8] = v2;
  v46 = sub_1D17C6EF0(0, 0, v40, &unk_1D1E741B0, v42);
  swift_unknownObjectRelease();
  v47 = v2[8];
  v2[8] = v46;
}

uint64_t sub_1D17C680C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for ScrubberElement(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1D17C68A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v9 = *(*(type metadata accessor for ReachabilityEvent() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CameraClip() - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ScrubberElement.ID(0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v15 = type metadata accessor for ScrubberElement(0);
  v8[17] = v15;
  v16 = *(v15 - 8);
  v8[18] = v16;
  v17 = *(v16 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[21] = sub_1D1E67E0C();
  v19 = sub_1D1E67D4C();
  v8[22] = v19;
  v8[23] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D17C6A9C, v19, v18);
}

void sub_1D17C6A9C()
{
  v1 = v0[6];
  v2 = v0[7] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v34 = v0[8];
    v32 = (v4 + 16);
    v33 = *(v0[18] + 72);
    v5 = (v4 + 32);
    v6 = (v4 + 8);
    v7 = v1 * v33;
    do
    {
      v8 = v0[19];
      v9 = v0[20];
      v10 = v0[17];
      sub_1D17CA4EC(v0[5] + v7, v9, type metadata accessor for ScrubberElement);
      sub_1D17CA4EC(v9, v8, type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v0[19];
      v13 = v0[13];
      v14 = v0[11];
      v15 = 9;
      if (EnumCaseMultiPayload == 1)
      {
        v16 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v15 = 10;
        v16 = type metadata accessor for CameraClip;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v17 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v17 = type metadata accessor for CameraClip;
      }

      v18 = v0[v15];
      sub_1D17CA77C(v0[19], v18, v16);
      (*v32)(v14, v18, v13);
      sub_1D17CA7E4(v18, v17);
      v19 = v0[20];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[12];
      v23 = v0[13];
      sub_1D17CA77C(v0[11], v22, type metadata accessor for ScrubberElement.ID);
      (*v5)(v21, v22, v23);
      swift_beginAccess();
      sub_1D1762CB8(v20, v21);
      swift_endAccess();
      (*v6)(v20, v23);
      sub_1D17CA7E4(v19, type metadata accessor for ScrubberElement);
      v7 += v33;
      --v3;
    }

    while (v3);
  }

  v24 = v0[8];
  v26 = v24[2];
  v25 = v24[3];
  ObjectType = swift_getObjectType();
  v28 = v24[6];
  v29 = *(v25 + 40);
  v35 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  v0[24] = v31;
  *v31 = v0;
  v31[1] = sub_1D17C6DD0;

  v35(v28, ObjectType, v25);
}

uint64_t sub_1D17C6DD0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D17CA944, v4, v3);
}

uint64_t sub_1D17C6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E88, &qword_1D1E74268);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E88, &qword_1D1E74268);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EB0, &qword_1D1E742E0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EB0, &qword_1D1E742E0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA8, &qword_1D1E742C8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA8, &qword_1D1E742C8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA0, &qword_1D1E742B0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643EA0, &qword_1D1E742B0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C7E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E80, &qword_1D1E74248);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E80, &qword_1D1E74248);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D17C8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1741C08(a3, v27 - v11, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t CameraEventPrefetcher.fetchNewerEventsIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v48 - v6;
  v7 = type metadata accessor for ReachabilityEvent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraClip();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberElement(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrubberElement.ID(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[3];
  v24 = v1[2];
  ObjectType = swift_getObjectType();
  v26 = (*(v23 + 24))(ObjectType, v23);
  v27 = sub_1D17C892C(v1[5], v26);
  v29 = v28;
  v31 = v30;
  v49 = v32;
  if ((sub_1D17C9708(a1, v28, v32, v30) & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  v48 = v29;
  swift_beginAccess();
  v33 = v2[4];
  sub_1D17CA4EC(a1, v18, type metadata accessor for ScrubberElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D17CA77C(v18, v10, type metadata accessor for ReachabilityEvent);
    v34 = sub_1D1E66A7C();
    (*(*(v34 - 8) + 16))(v22, v10, v34);

    v35 = type metadata accessor for ReachabilityEvent;
    v36 = v10;
  }

  else
  {
    sub_1D17CA77C(v18, v14, type metadata accessor for CameraClip);
    v34 = sub_1D1E66A7C();
    (*(*(v34 - 8) + 16))(v22, v14, v34);

    v35 = type metadata accessor for CameraClip;
    v36 = v14;
  }

  sub_1D17CA7E4(v36, v35);
  v37 = sub_1D1719534(v22, v33);

  sub_1D1E66A7C();
  (*(*(v34 - 8) + 8))(v22, v34);
  if (v37)
  {
    return swift_unknownObjectRelease();
  }

  v39 = sub_1D1E67E7C();
  v40 = v50;
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  sub_1D1E67E1C();
  swift_unknownObjectRetain();

  v41 = sub_1D1E67E0C();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  v42[2] = v41;
  v42[3] = v43;
  v45 = v48;
  v44 = v49;
  v42[4] = v27;
  v42[5] = v45;
  v42[6] = v44;
  v42[7] = v31;
  v42[8] = v2;
  v46 = sub_1D17C6EF0(0, 0, v40, &unk_1D1E741C0, v42);
  swift_unknownObjectRelease();
  v47 = v2[9];
  v2[9] = v46;
}

uint64_t sub_1D17C892C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(type metadata accessor for ScrubberElement(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1D17C89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v9 = *(*(type metadata accessor for ReachabilityEvent() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CameraClip() - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ScrubberElement.ID(0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v15 = type metadata accessor for ScrubberElement(0);
  v8[17] = v15;
  v16 = *(v15 - 8);
  v8[18] = v16;
  v17 = *(v16 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[21] = sub_1D1E67E0C();
  v19 = sub_1D1E67D4C();
  v8[22] = v19;
  v8[23] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D17C8BB0, v19, v18);
}

void sub_1D17C8BB0()
{
  v1 = v0[6];
  v2 = v0[7] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v33 = v0[8];
    v31 = (v4 + 16);
    v32 = *(v0[18] + 72);
    v5 = (v4 + 32);
    v6 = (v4 + 8);
    v7 = v1 * v32;
    do
    {
      v8 = v0[19];
      v9 = v0[20];
      v10 = v0[17];
      sub_1D17CA4EC(v0[5] + v7, v9, type metadata accessor for ScrubberElement);
      sub_1D17CA4EC(v9, v8, type metadata accessor for ScrubberElement);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v0[19];
      v13 = v0[13];
      v14 = v0[11];
      v15 = 9;
      if (EnumCaseMultiPayload == 1)
      {
        v16 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v15 = 10;
        v16 = type metadata accessor for CameraClip;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v17 = type metadata accessor for ReachabilityEvent;
      }

      else
      {
        v17 = type metadata accessor for CameraClip;
      }

      v18 = v0[v15];
      sub_1D17CA77C(v0[19], v18, v16);
      (*v31)(v14, v18, v13);
      sub_1D17CA7E4(v18, v17);
      v19 = v0[20];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[12];
      v23 = v0[13];
      sub_1D17CA77C(v0[11], v22, type metadata accessor for ScrubberElement.ID);
      (*v5)(v21, v22, v23);
      swift_beginAccess();
      sub_1D1762CB8(v20, v21);
      swift_endAccess();
      (*v6)(v20, v23);
      sub_1D17CA7E4(v19, type metadata accessor for ScrubberElement);
      v7 += v32;
      --v3;
    }

    while (v3);
  }

  v24 = v0[8];
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  ObjectType = swift_getObjectType();
  v28 = *(v25 + 56);
  v34 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  v0[24] = v30;
  *v30 = v0;
  v30[1] = sub_1D17C8EDC;

  v34(ObjectType, v25);
}

uint64_t sub_1D17C8EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D17C8FFC, v4, v3);
}

uint64_t sub_1D17C8FFC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10();
}

void *CameraEventPrefetcher.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t CameraEventPrefetcher.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_1D17C914C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C9240;

  return v6(v2 + 32);
}

uint64_t sub_1D17C9240()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D17C9354(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C9448;

  return v6(v2 + 16);
}

uint64_t sub_1D17C9448()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D17C9578(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D17CA948;

  return v6(v2 + 16);
}

uint64_t sub_1D17C966C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6791C();

    return sub_1D1E67A0C();
  }

  return result;
}

uint64_t sub_1D17C9708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v75 = a1;
  v76 = a2;
  v67 = sub_1D1E669FC();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v13 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v15 = &v59 - v14;
  v68 = type metadata accessor for ReachabilityEvent();
  v16 = *(*(v68 - 1) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CameraClip();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v69 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D80, &qword_1D1E74300);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v59 - v23;
  v25 = type metadata accessor for ScrubberElement(0);
  v74 = *(v25 - 8);
  v26 = *(v74 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v73 = &v59 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v59 - v32;
  v34 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  v62 = (v6 + 32);
  v63 = (v6 + 8);
  v72 = a4 >> 1;
  v64 = (v6 + 48);
  while (a3 < v34)
  {
    sub_1D17CA4EC(v76 + *(v74 + 72) * a3, v33, type metadata accessor for ScrubberElement);
    v38 = *(v21 + 48);
    sub_1D17CA4EC(v33, v24, type metadata accessor for ScrubberElement);
    sub_1D17CA4EC(v75, &v24[v38], type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17CA4EC(v24, v29, type metadata accessor for ScrubberElement);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v70;
        sub_1D17CA77C(&v24[v38], v70, type metadata accessor for ReachabilityEvent);
        v40 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v41 = v39;
        if ((v40 & 1) != 0 && v29[v68[5]] == *(v39 + v68[5]))
        {
          v42 = v68[6];
          v43 = sub_1D1E669AC();
          v41 = v70;
          if (v43)
          {
            v44 = v68[7];
            v45 = sub_1D1E669AC();
            v41 = v70;
            if (v45)
            {
              v71 = v68[8];
              v46 = *(v66 + 48);
              sub_1D1741C08(&v29[v71], v15, &qword_1EC642570, &qword_1D1E6C6A0);
              v61 = v46;
              sub_1D1741C08(v70 + v71, &v46[v15], &qword_1EC642570, &qword_1D1E6C6A0);
              v47 = *v64;
              v71 = v15;
              v48 = v67;
              v60 = v47;
              if (v47(v15, 1, v67) == 1)
              {
                if (v60(v61 + v71, 1, v48) == 1)
                {
                  goto LABEL_28;
                }

LABEL_24:
                sub_1D1741A30(v71, &qword_1EC642AC0, &qword_1D1E6E810);
                v41 = v70;
              }

              else
              {
                v56 = v71;
                v59 = v12;
                sub_1D1741C08(v71, v12, &qword_1EC642570, &qword_1D1E6C6A0);
                v57 = v61 + v56;
                v58 = v67;
                if (v60(v57, 1, v67) == 1)
                {
                  (*v63)(v59, v58);
                  goto LABEL_24;
                }

                (*v62)(v65, v61 + v71, v58);
                sub_1D17CA8FC(&qword_1EC642AC8, MEMORY[0x1E6969530]);
                LODWORD(v60) = sub_1D1E6775C();
                v61 = *v63;
                v61(v65, v58);
                v61(v59, v58);
                sub_1D1741A30(v71, &qword_1EC642570, &qword_1D1E6C6A0);
                v41 = v70;
                if (v60)
                {
                  goto LABEL_29;
                }
              }
            }
          }
        }

        sub_1D17CA7E4(v41, type metadata accessor for ReachabilityEvent);
        sub_1D17CA7E4(v29, type metadata accessor for ReachabilityEvent);
        sub_1D17CA7E4(v24, type metadata accessor for ScrubberElement);
      }

      else
      {
        v36 = type metadata accessor for ReachabilityEvent;
        v37 = v29;
LABEL_5:
        sub_1D17CA7E4(v37, v36);
        sub_1D1741A30(v24, &qword_1EC643D80, &qword_1D1E74300);
      }

      sub_1D17CA7E4(v33, type metadata accessor for ScrubberElement);
      goto LABEL_7;
    }

    v49 = v73;
    sub_1D17CA4EC(v24, v73, type metadata accessor for ScrubberElement);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = type metadata accessor for CameraClip;
      v37 = v49;
      goto LABEL_5;
    }

    v50 = v33;
    v51 = v25;
    v52 = v29;
    v53 = v21;
    v54 = v69;
    sub_1D17CA77C(&v24[v38], v69, type metadata accessor for CameraClip);
    LODWORD(v71) = _s13HomeDataModel10CameraClipV2eeoiySbAC_ACtFZ_0(v73, v54);
    v55 = v54;
    v21 = v53;
    v29 = v52;
    v25 = v51;
    v33 = v50;
    sub_1D17CA7E4(v55, type metadata accessor for CameraClip);
    sub_1D17CA7E4(v73, type metadata accessor for CameraClip);
    sub_1D17CA7E4(v24, type metadata accessor for ScrubberElement);
    sub_1D17CA7E4(v50, type metadata accessor for ScrubberElement);
    if (v71)
    {
      return 1;
    }

LABEL_7:
    ++a3;
    v34 = v72;
    if (v72 == a3)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_28:
  sub_1D1741A30(v71, &qword_1EC642570, &qword_1D1E6C6A0);
  v41 = v70;
LABEL_29:
  sub_1D17CA7E4(v41, type metadata accessor for ReachabilityEvent);
  sub_1D17CA7E4(v29, type metadata accessor for ReachabilityEvent);
  sub_1D17CA7E4(v24, type metadata accessor for ScrubberElement);
  sub_1D17CA7E4(v33, type metadata accessor for ScrubberElement);
  return 1;
}

uint64_t sub_1D17C9FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17C68A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17CA0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4BFC;

  return sub_1D17C89B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D17CA20C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17C9578(a1, v5);
}

uint64_t sub_1D17CA2C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17C914C(a1, v5);
}

uint64_t sub_1D17CA37C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v5);
}

uint64_t sub_1D17CA434(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D1A08480(a1, v5);
}

uint64_t sub_1D17CA4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17CA554(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17C9354(a1, v5);
}

uint64_t sub_1D17CA60C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v5);
}

uint64_t sub_1D17CA6C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v5);
}

uint64_t sub_1D17CA77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17CA7E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17CA844(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v5);
}

uint64_t sub_1D17CA8FC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1D17CA954(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v86 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v74 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F00, &qword_1D1E744B0);
  v12 = *(v80 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v15 = &v74 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v91 = *(v75 - 8);
  v16 = v91[8];
  v17 = MEMORY[0x1EEE9AC00](v75);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F08, &qword_1D1E744B8);
  v22 = *(v21 - 8);
  v23 = v22;
  v84 = v21;
  v85 = v22;
  v24 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v74 - v28;
  v30 = *(a2 + 8);
  v78 = *a2;
  v77 = v30;
  v76 = *(a2 + 16);
  swift_defaultActor_initialize();
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer] = 0;
  v31 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
  v32 = sub_1D1E669FC();
  (*(*(v32 - 8) + 56))(&v3[v31], 1, 1, v32);
  v33 = &v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution] = 5;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError] = 0;
  v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_wasReset] = 0;
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask] = 0;
  v34 = v80;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8650], v80);
  v83 = v29;
  v35 = v88;
  sub_1D1E67E8C();
  (*(v12 + 8))(v15, v34);
  (*(v23 + 16))(v27, v29, v21);
  v36 = v91[2];
  v37 = v35;
  v38 = v35;
  v39 = v75;
  v36(v19, v37, v75);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F10, &qword_1D1E744C0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_1D1DE3088("Camera", 6, 2, v27, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F18, &qword_1D1E744C8);
  swift_allocObject();
  v44 = sub_1D17D6B88();
  v45 = v81;
  *(v3 + 15) = v81;
  v36(&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_updates], v38, v39);
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager] = v43;
  v79 = v43;
  *&v3[OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider] = v44;
  v92 = v78;
  v93 = v77;
  LOBYTE(v94) = v76;
  v36(v19, v38, v39);
  v46 = type metadata accessor for CameraController.State();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = v45;
  v80 = v44;
  swift_retain_n();
  v50 = v49;
  v81 = v50;

  *(v3 + 14) = sub_1D17DE8C0(v50, &v92, v19, &unk_1D1E744D8, v44);
  v51 = type metadata accessor for CameraController();
  v96.receiver = v3;
  v96.super_class = v51;
  v52 = objc_msgSendSuper2(&v96, sel_init);
  v53 = OBJC_IVAR____TtC13HomeDataModel16CameraController_updates;
  v36(v19, &v52[OBJC_IVAR____TtC13HomeDataModel16CameraController_updates], v39);
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = -126;
  v54 = v52;
  v55 = v82;
  sub_1D1E67ECC();
  v78 = v91[1];
  ++v91;
  v78(v19, v39);
  v56 = *(v90 + 8);
  v90 += 8;
  v56(v55, v89);
  v36(v19, &v52[v53], v39);
  v57 = *(v54 + 14);
  swift_getKeyPath();
  v92 = v57;
  sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State);

  sub_1D1E66CAC();

  v58 = v57 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = *(v58 + 16);

  v92 = v59;
  v93 = v60;
  v94 = v61;
  v95 = 0;
  sub_1D1E67ECC();
  v62 = v39;
  v63 = v39;
  v64 = v78;
  v78(v19, v62);
  v56(v55, v89);
  v65 = sub_1D1E67E7C();
  v66 = v86;
  (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
  sub_1D1E67E1C();
  v67 = v79;

  v68 = sub_1D1E67E0C();
  v69 = swift_allocObject();
  v70 = MEMORY[0x1E69E85E0];
  v69[2] = v68;
  v69[3] = v70;
  v69[4] = v67;
  v69[5] = v54;
  v69[6] = ObjectType;
  v71 = sub_1D17C6EF0(0, 0, v66, &unk_1D1E74510, v69);

  v64(v88, v63);
  (*(v85 + 8))(v83, v84);
  v72 = *&v54[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask];
  *&v54[OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask] = v71;

  return v54;
}

uint64_t sub_1D17CB228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D17CB2C4, v8, v7);
}

uint64_t sub_1D17CB2C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D17CB374, v3, 0);
}

uint64_t sub_1D17CB374()
{
  v1 = v0[2];
  sub_1D1E3945C(&unk_1D1E74520, v0[8]);

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_1D17CB3FC, v2, v3);
}

uint64_t sub_1D17CB3FC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17CB45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17CB480, 0, 0);
}

uint64_t sub_1D17CB480()
{
  v14 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
LABEL_6:
    v6 = *(v0 + 8);

    return v6();
  }

  if (sub_1D1E67F7C())
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = *(v0 + 80);
  v4 = sub_1D17D8FA4(&v12, *(v0 + 64));
  *(v0 + 96) = v4;
  *(v0 + 104) = v12;
  v5 = v13;
  *(v0 + 57) = v13;
  if (sub_1D1E67F7C())
  {

    goto LABEL_5;
  }

  if (*(v4 + 2))
  {
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_1D17CB644;

    return sub_1D17CBA9C(v4, v5 == 255);
  }

  else
  {

    if (sub_1D1E67F7C())
    {
      v9 = *(v0 + 88);
      goto LABEL_5;
    }

    v10 = *(v0 + 88);
    if (*(v0 + 57) == 255)
    {
      sub_1D1E67F7C();
      goto LABEL_5;
    }

    v11 = *(v0 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1D17CB818, v11, 0);
  }
}

uint64_t sub_1D17CB644()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17CB75C, 0, 0);
}

uint64_t sub_1D17CB75C()
{
  if (sub_1D1E67F7C())
  {
    v1 = *(v0 + 88);
LABEL_8:

    v4 = *(v0 + 8);

    return v4();
  }

  v2 = *(v0 + 88);
  if (*(v0 + 57) == 255)
  {
    sub_1D1E67F7C();
    goto LABEL_8;
  }

  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D17CB818, v3, 0);
}

uint64_t sub_1D17CB848()
{
  if (*(v0 + 58))
  {
    v1 = *(v0 + 88);
    sub_1D1E67F7C();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 57);
    *(v0 + 40) = *(v0 + 104);
    *(v0 + 56) = v4;
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_1D17CB938;
    v6 = *(v0 + 88);

    return sub_1D17CD084(v0 + 40);
  }
}

uint64_t sub_1D17CB938()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17CBA34, 0, 0);
}

uint64_t sub_1D17CBA34()
{
  v1 = *(v0 + 88);
  sub_1D1E67F7C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17CBA9C(uint64_t a1, char a2)
{
  *(v3 + 107) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CBAC0, v2, 0);
}

uint64_t sub_1D17CBAC0()
{
  v107 = v0;
  v1 = *(*(v0 + 216) + 120);
  sub_1D17D917C((v0 + 105));
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if (v4 >= 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    v94 = v5;
  }

  else
  {
    v94 = 0;
  }

  v6 = *(v0 + 208);
  v7 = [v1 streamControl];
  v8 = [v7 cameraStream];

  v88 = v1;
  v9 = [v1 snapshotControl];
  v10 = [v9 mostRecentSnapshot];

  v14 = *(v6 + 16);
  if (!v14)
  {
    v15 = 0;
    v92 = 0;
    v17 = 0;
    if (*(*(v0 + 216) + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError))
    {
LABEL_56:
      v17 = 0;
      *(v0 + 105) = 2;
    }

    goto LABEL_60;
  }

  v90 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v95 = *(v0 + 107);
  v91 = *(v0 + 208) + 56;
  v92 = 0;
  v100 = v0;
  v99 = *(v6 + 16);
  while (2)
  {
    v89 = v15;
    LOBYTE(v18) = v94;
    v19 = v10;
LABEL_10:
    v94 = v18;
    v93 = v8;
    v20 = v16;
    v18 = v19;
    v21 = (v91 + 32 * v16);
    while (1)
    {
      if (v20 >= v14)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_64;
      }

      v102 = v18;
      v103 = v20 + 1;
      v104 = v17;
      v18 = *(v21 - 3);
      v8 = *(v21 - 2);
      v22 = *v21;
      v101 = *(v21 - 1);
      sub_1D17D8D68(v18, v8, v101, *v21);
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 208);
      v23 = *(v0 + 216);
      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EC64F3F8);

      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6835C();

      if (os_log_type_enabled(v26, v27))
      {
        v97 = v18;
        v96 = v22;
        v28 = *(v0 + 208);
        v29 = *(v0 + 216);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v98 = v8;
        v32 = swift_slowAlloc();
        v106[0] = v32;
        *v30 = 138413058;
        *(v30 + 4) = v29;
        *v31 = v29;
        *(v30 + 12) = 2080;

        *(v30 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, v106);
        *(v30 + 22) = 2080;
        v33 = MEMORY[0x1D3891260](v28, &_s7ContentON);
        v35 = sub_1D1B1312C(v33, v34, v106);
        v22 = v96;

        *(v30 + 24) = v35;
        v18 = v97;
        *(v30 + 32) = 1024;
        *(v30 + 34) = v95;
        _os_log_impl(&dword_1D16EC000, v26, v27, "%@ %s content: %s, processModeAgain: %{BOOL}d", v30, 0x26u);
        sub_1D1741A30(v31, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v31, -1, -1);
        swift_arrayDestroy();
        v36 = v32;
        v8 = v98;
        v0 = v100;
        MEMORY[0x1D3893640](v36, -1, -1);
        MEMORY[0x1D3893640](v30, -1, -1);
      }

      v17 = v104;
      if (v22 != 1)
      {
        break;
      }

      if (v8)
      {
        swift_getErrorValue();
        v38 = *(v0 + 64);
        v37 = *(v0 + 72);
        v39 = *(v0 + 80);
        v40 = v8;
        v41 = v8;
        v42 = v18;
        v43 = sub_1D17CE2E0(v37);

        if (v104)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v55 = v18;
        v43 = 0;
        if (v104)
        {
LABEL_22:
          swift_getErrorValue();
          v105 = v43;
          v45 = *(v0 + 16);
          v44 = *(v0 + 24);
          v46 = *(v0 + 32);
          v47 = v8;
          v48 = *(v44 - 8);
          v49 = *(v48 + 64) + 15;
          v50 = v17;
          v51 = v18;
          v52 = swift_task_alloc();
          (*(v48 + 16))(v52, v45, v44);
          v53 = sub_1D17CE2E0(v44);
          v54 = v51;
          sub_1D17D8DC4(v51, v47, v101, 1);

          (*(v48 + 8))(v52, v44);

          if (v105 & 1) != 0 || (v53)
          {

            v17 = v47;
            v0 = v100;
            v18 = v54;
          }

          else
          {

            v0 = v100;
            v18 = v51;
            v17 = v50;
          }

          goto LABEL_12;
        }
      }

      sub_1D17D8DC4(v18, v8, v101, 1);
      v17 = v8;
LABEL_12:
      ++v20;
      v21 += 32;
      v14 = v99;
      if (v103 == v99)
      {
        v8 = v93;
        v10 = v18;
        v15 = v89;
        goto LABEL_42;
      }
    }

    if (v22)
    {

      v58 = [v88 accessory];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 name];

        v15 = sub_1D1E6781C();
        v92 = v61;
      }

      else
      {
        v15 = 0;
        v92 = 0;
      }

      sub_1D17D917C((v0 + 105));
      v62 = [v88 streamControl];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 streamState];

        if (v64 >= 4)
        {
          v65 = 0;
        }

        else
        {
          v65 = v64;
        }

        v94 = v65;
      }

      else
      {
        v94 = 0;
      }

      v66 = [v88 streamControl];
      v8 = [v66 cameraStream];

      v67 = [v88 snapshotControl];
      v10 = [v67 mostRecentSnapshot];

      v90 = 1;
      v14 = v99;
      v16 = v103;
      if (v103 != v99)
      {
        continue;
      }

LABEL_42:
      if (!v17)
      {
        goto LABEL_54;
      }

LABEL_43:
      *(v0 + 152) = v17;
      v68 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      type metadata accessor for HMError(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      v69 = *(v0 + 160);
      *(v0 + 168) = v69;
      sub_1D17D8E60(&qword_1EC6428A0, type metadata accessor for HMError);
      sub_1D1E6651C();
      if (*(v0 + 176) == 4)
      {
        v70 = *(v0 + 216);

        *(v0 + 105) = 1;
        *(v70 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;

        goto LABEL_60;
      }

      *(v0 + 184) = v69;
      sub_1D1E6651C();

      if (*(v0 + 192) == 14)
      {
        v71 = *(v0 + 216);
        *(v0 + 105) = 2;
        *(v71 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 1;
      }

      else
      {
LABEL_50:
        v72 = *(v0 + 216);

        *(v72 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;
        v73 = v17;

        v74 = v17;
        v75 = sub_1D1E6707C();
        v76 = sub_1D1E6833C();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = *(v0 + 216);
          v78 = v15;
          v79 = swift_slowAlloc();
          v80 = v8;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v106[0] = v82;
          *v79 = 138412802;
          *(v79 + 4) = v77;
          *v81 = v77;
          *(v79 + 12) = 2080;

          *(v79 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, v106);
          *(v79 + 22) = 2112;
          v83 = _swift_stdlib_bridgeErrorToNSError();
          *(v79 + 24) = v83;
          v81[1] = v83;
          _os_log_impl(&dword_1D16EC000, v75, v76, "%@ %s unhandled error: %@", v79, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
          swift_arrayDestroy();
          v84 = v81;
          v8 = v80;
          v0 = v100;
          MEMORY[0x1D3893640](v84, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x1D3893640](v82, -1, -1);
          v85 = v79;
          v15 = v78;
          MEMORY[0x1D3893640](v85, -1, -1);
        }

        else
        {
        }
      }

      goto LABEL_60;
    }

    break;
  }

  v56 = v8;
  v17 = v101;
  v57 = v101;
  sub_1D17D8DC4(v18, v8, v101, 0);
  v90 = 1;
  v14 = v99;
  v19 = v102;
  v16 = v20 + 1;
  if (v103 != v99)
  {
    goto LABEL_10;
  }

  v94 = v18;
  v10 = v102;
  v15 = v89;
  if (v101)
  {
    goto LABEL_43;
  }

LABEL_54:
  v86 = *(v0 + 216);
  if (*(v86 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError))
  {
    if ((v90 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v90)
  {
LABEL_58:
    v17 = 0;
    *(v86 + OBJC_IVAR____TtC13HomeDataModel16CameraController_lastStreamAttemptResultedInBusyError) = 0;
    goto LABEL_60;
  }

  v17 = 0;
LABEL_60:
  *(v0 + 248) = v10;
  *(v0 + 256) = v17;
  *(v0 + 108) = v94;
  *(v0 + 232) = v15;
  *(v0 + 240) = v92;
  *(v0 + 224) = v8;
  *(v0 + 109) = *(v0 + 105);
  v11 = sub_1D17CC594;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D17CC594()
{
  sub_1D1E67E1C();
  *(v0 + 264) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17CC628, v2, v1);
}

uint64_t sub_1D17CC628()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  v4 = *(v3 + 112);
  if (v2)
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 120) = v4;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66CAC();

    v6 = *(v4 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name);
    v5 = *(v4 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__name + 8);
  }

  v7 = *(v0 + 109);
  sub_1D17DCDF4(v6, v5);
  v8 = OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability;
  v9 = sub_1D17A0574(*(v4 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__availability), v7);
  v10 = *(v0 + 109);
  if (v9)
  {
    *(v4 + v8) = v10;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v4;
    *(v11 + 24) = v10;
    *(v0 + 128) = v4;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }

  v12 = *(v0 + 108);
  if (*(v4 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__streamState) != v12)
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v4;
    *(v13 + 24) = v12;
    *(v0 + 136) = v4;
    sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State);
    sub_1D1E66C9C();
  }

  v14 = *(v0 + 248);
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  v17 = v14;
  sub_1D17DD18C(v14);
  v18 = v16;
  sub_1D17DD324(v16);
  swift_getKeyPath();
  *(v0 + 144) = v4;
  sub_1D17D8E60(&qword_1EC643F20, type metadata accessor for CameraController.State);
  sub_1D1E66CAC();

  v19 = v4 + OBJC_IVAR____TtCC13HomeDataModel16CameraController5State__mode;
  swift_beginAccess();
  *(v0 + 272) = *v19;
  *(v0 + 280) = *(v19 + 8);
  *(v0 + 110) = *(v19 + 16);
  *(v0 + 288) = CameraController.State.description.getter();
  *(v0 + 296) = v20;

  return MEMORY[0x1EEE6DFA0](sub_1D17CC9BC, v15, 0);
}

uint64_t sub_1D17CC9BC()
{
  v26 = v0;
  if (*(v0 + 107) == 1)
  {
    v1 = *(v0 + 110);
    *(v0 + 88) = *(v0 + 272);
    *(v0 + 104) = v1;
    *(v0 + 106) = *(v0 + 105);
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_1D17CCCF0;
    v3 = *(v0 + 256);
    v4 = *(v0 + 216);

    return sub_1D17CE420(v0 + 88, (v0 + 106), v3);
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 296);
    v7 = *(v0 + 216);
    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F3F8);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 296);
    if (v11)
    {
      v21 = *(v0 + 288);
      v22 = *(v0 + 256);
      v13 = *(v0 + 216);
      v23 = *(v0 + 248);
      v24 = *(v0 + 224);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v14 = 138412802;
      *(v14 + 4) = v13;
      *v15 = v13;
      *(v14 + 12) = 2080;

      *(v14 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, &v25);
      *(v14 + 22) = 2080;
      v17 = sub_1D1B1312C(v21, v12, &v25);

      *(v14 + 24) = v17;
      _os_log_impl(&dword_1D16EC000, v9, v10, "%@ %s state: %s", v14, 0x20u);
      sub_1D1741A30(v15, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v15, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    else
    {
      v18 = *(v0 + 248);
      v19 = *(v0 + 224);
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D17CCCF0()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17CCE00, v2, 0);
}

uint64_t sub_1D17CCE00()
{
  v22 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F3F8);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v17 = *(v0 + 288);
    v18 = *(v0 + 256);
    v8 = *(v0 + 216);
    v19 = *(v0 + 248);
    v20 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;

    *(v9 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB97E0, &v21);
    *(v9 + 22) = 2080;
    v12 = sub_1D1B1312C(v17, v7, &v21);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%@ %s state: %s", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 224);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D17CD084(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  *(v2 + 90) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D17CD0B4, v1, 0);
}

uint64_t sub_1D17CD0B4()
{
  v31 = v0;
  v1 = [*(*(v0 + 32) + 120) streamControl];
  if (v1 && (v2 = v1, v3 = [v1 cameraStream], v2, v3))
  {

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (*(v0 + 90))
  {
    if (*(v0 + 90) == 2)
    {
      v28 = xmmword_1D1E74330;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      v28 = *(v0 + 40);
      v4 = 1;
    }
  }

  else
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48) & 1;
    v10 = (*(v0 + 48) >> 1) & 1;
    v28 = xmmword_1D1E74330;
    if (*(v0 + 40))
    {
      v5 = v8 != 1;
      v6 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = 1;
  }

  *(v0 + 96) = v10;
  *(v0 + 95) = v9;
  *(v0 + 94) = v8;
  *(v0 + 93) = v7;
  *(v0 + 92) = v6;
  *(v0 + 91) = v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 32);
  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC64F3F8);

  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  if (os_log_type_enabled(v13, v14))
  {
    v27 = *(v0 + 90);
    v15 = *(v0 + 40);
    v26 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v17 = 138412802;
    *(v17 + 4) = v16;
    *v18 = v16;
    *(v17 + 12) = 2080;

    *(v17 + 14) = sub_1D1B1312C(0x5F28657461647075, 0xEA0000000000293ALL, v29);
    *(v17 + 22) = 2080;
    v29[1] = v15;
    v29[2] = v26;
    v30 = v27;
    v20 = CameraController.Mode.description.getter();
    v22 = sub_1D1B1312C(v20, v21, v29);

    *(v17 + 24) = v22;
    _os_log_impl(&dword_1D16EC000, v13, v14, "%@ %s mode: %s", v17, 0x20u);
    sub_1D1741A30(v18, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  *(v0 + 16) = v28;
  v23 = swift_task_alloc();
  *(v0 + 56) = v23;
  *v23 = v0;
  v23[1] = sub_1D17CD454;
  v24 = *(v0 + 32);

  return sub_1D17CF6F4(v4, (v0 + 16));
}

uint64_t sub_1D17CD454()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 90);
  v4 = *(*v0 + 41);
  v5 = *v0;

  if (v3)
  {
    v6 = 5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 88) = v6;
  v7 = (v1 + 88);
  v8 = swift_task_alloc();
  *(v7 - 3) = v8;
  *v8 = v5;
  v8[1] = sub_1D17CD5AC;
  v9 = *(v7 - 7);
  v10 = v7[5];

  return sub_1D17CFF30(v10, v7);
}

uint64_t sub_1D17CD5AC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 94);
  v10 = *v0;

  *(v1 + 89) = v3;
  v4 = (v1 + 89);
  v5 = swift_task_alloc();
  *(v4 - 17) = v5;
  *v5 = v10;
  v5[1] = sub_1D17CD6EC;
  v6 = v4[3];
  v7 = v4[2];
  v8 = *(v4 - 57);

  return sub_1D17D0928(v4, v6, v7);
}

uint64_t sub_1D17CD6EC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_1D17CD838;
  v5 = *(v1 + 96);
  v6 = *(v1 + 32);
  v7 = *(v1 + 95);

  return sub_1D17D14B0(v7, v5);
}

uint64_t sub_1D17CD838()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D17CD94C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask);

    sub_1D1E67F5C();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 16);
  *(v1 + v2) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  if (*(v5 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {
    v6 = *(v5 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  v7 = *(*(v0 + 16) + 120);
  v8 = [v7 streamControl];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 streamState];

    if ((v10 - 1) <= 1)
    {
      v11 = [v7 streamControl];
      [v11 stopStream];
    }
  }

  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  *(v0 + 24) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D17CDB0C, v12, 0);
}

uint64_t sub_1D17CDB0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D17CDB9C();

  return MEMORY[0x1EEE6DFA0](sub_1D17CDB74, v1, 0);
}

uint64_t sub_1D17CDB9C()
{
  v1 = v0;
  v2 = *(*v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  v3 = v1 + *(*v1 + 128);
  sub_1D1E67EDC();
  v4 = *(*v1 + 144);
  swift_beginAccess();
  v12 = v4;
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = v8 + 1;
      v10 = *(v5 + 32 + 8 * v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();

      v8 = v9;
      if (v6 == v9)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v11 = *(v1 + v12);
    *(v1 + v12) = MEMORY[0x1E69E7CC0];

    *(v1 + *(*v1 + 160)) = 1;
  }

  return result;
}

uint64_t CameraController.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask);

    sub_1D1E67F5C();

    v13 = *(v1 + v11);
  }

  *(v1 + v11) = 0;

  v14 = v7[2];
  v33 = OBJC_IVAR____TtC13HomeDataModel16CameraController_updates;
  v14(v10, v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_updates, v6);
  sub_1D1E67EDC();
  v15 = v7[1];
  v15(v10, v6);
  v16 = OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {
    v17 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  if ((*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_wasReset) & 1) == 0)
  {
    v18 = [*(v1 + 120) streamControl];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 streamState];

      if ((v20 - 1) <= 1)
      {
        v21 = [*(v1 + 120) streamControl];
        [v21 stopStream];
      }
    }
  }

  v22 = sub_1D1E67E7C();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager;
  v24 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;

  sub_1D17C6EF0(0, 0, v5, &unk_1D1E74368, v25);

  v26 = *(v1 + 112);

  v15((v1 + v33), v6);
  v27 = *(v1 + v23);

  v28 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);

  v29 = *(v1 + v16);

  sub_1D1741A30(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime, &qword_1EC642570, &qword_1D1E6C6A0);
  v30 = *(v1 + v11);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D17CE0E4()
{
  v1 = *(v0 + 16);
  sub_1D17CDB9C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17CE144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D17CE0C4(a1, v4, v5, v6);
}

uint64_t CameraController.__deallocating_deinit()
{
  CameraController.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void CameraController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void CameraController.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1D17CE2E0(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HMError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6[1];
    sub_1D17D8E60(&qword_1EC6428A0, type metadata accessor for HMError);
    sub_1D1E6651C();

    return v6[0] == 4;
  }

  return result;
}

uint64_t sub_1D17CE420(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 80) = *a1;
  *(v4 + 33) = *(a1 + 16);
  *(v4 + 34) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CE458, v3, 0);
}

uint64_t sub_1D17CE458()
{
  v84 = v0;
  if (*(v0 + 34) > 2u)
  {
    goto LABEL_2;
  }

  if (*(v0 + 34))
  {
    if (*(v0 + 34) == 1)
    {
LABEL_2:
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 72);
      v2 = sub_1D1E6709C();
      __swift_project_value_buffer(v2, qword_1EC64F3F8);

      v3 = sub_1D1E6707C();
      v4 = sub_1D1E6835C();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 34);
        v6 = *(v0 + 72);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v82 = v9;
        *v7 = 138412802;
        *(v7 + 4) = v6;
        *v8 = v6;
        *(v7 + 12) = 2080;

        v10 = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v82);
        v11 = 0xEC000000656C6261;
        *(v7 + 14) = v10;
        v12 = 0x6863616552746F6ELL;
        *(v7 + 22) = 2080;
        v13 = 0xEE00797469766974;
        v14 = 0x6341746365746564;
        v15 = 0xE700000000000000;
        v16 = 0x646C6F436F6F74;
        if (v5 != 5)
        {
          v16 = 0x746F486F6F74;
          v15 = 0xE600000000000000;
        }

        if (v5 != 4)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = 0xE400000000000000;
        v18 = 2037609826;
        if (v5 != 2)
        {
          v18 = 0xD000000000000012;
          v17 = 0x80000001D1EB5AA0;
        }

        if (v5 != 1)
        {
          v12 = v18;
          v11 = v17;
        }

        if (v5 <= 3)
        {
          v19 = v12;
        }

        else
        {
          v19 = v14;
        }

        if (v5 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = v13;
        }

        v21 = sub_1D1B1312C(v19, v20, &v82);

        *(v7 + 24) = v21;
        _os_log_impl(&dword_1D16EC000, v3, v4, "%@ %s returning due to unavailability: %s", v7, 0x20u);
        sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v8, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v9, -1, -1);
        MEMORY[0x1D3893640](v7, -1, -1);
      }

      goto LABEL_20;
    }

    if (!*(v0 + 33))
    {
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 72);
      v50 = sub_1D1E6709C();
      __swift_project_value_buffer(v50, qword_1EC64F3F8);

      v51 = sub_1D1E6707C();
      v52 = sub_1D1E6835C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 88);
        v54 = *(v0 + 72);
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = v80;
        *v55 = 138412802;
        *(v55 + 4) = v54;
        *v56 = v54;
        *(v55 + 12) = 2080;

        *(v55 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v81);
        *(v55 + 22) = 2080;
        v57 = sub_1D18D4FC0(qword_1F4D5F418);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F58, &unk_1D1E74CE0);
        swift_arrayDestroy();
        v58 = sub_1D17DC554(v57, v53);

        *(v0 + 56) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F60, &qword_1D1E746D0);
        sub_1D17D8EA8(&qword_1EC643F68, &qword_1EC643F60, &qword_1D1E746D0);
        sub_1D17D8EF0();
        v59 = sub_1D1E67B0C();
        v61 = v60;

        v82 = 91;
        v83 = 0xE100000000000000;
        MEMORY[0x1D3890F70](v59, v61);

        MEMORY[0x1D3890F70](93, 0xE100000000000000);
        v62 = sub_1D1B1312C(v82, v83, &v81);

        *(v55 + 24) = v62;
        _os_log_impl(&dword_1D16EC000, v51, v52, "%@ %s returning due to busy availability, options: %s", v55, 0x20u);
        sub_1D1741A30(v56, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v80, -1, -1);
        MEMORY[0x1D3893640](v55, -1, -1);
      }

      v22 = (*(v0 + 88) >> 2) & 1;
      v23 = 3000000000000000000;
      goto LABEL_22;
    }
  }

  v27 = *(v0 + 72);
  if (sub_1D17D1CD4())
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 72);
    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EC64F3F8);

    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6835C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 72);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82 = v35;
      *v33 = 138412546;
      *(v33 + 4) = v32;
      *v34 = v32;
      *(v33 + 12) = 2080;

      *(v33 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v82);
      _os_log_impl(&dword_1D16EC000, v30, v31, "%@ %s returning due to in progress stream update", v33, 0x16u);
      sub_1D1741A30(v34, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1D3893640](v35, -1, -1);
      MEMORY[0x1D3893640](v33, -1, -1);
    }

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v37 = *(v0 + 64);
    if (v37)
    {
      v38 = v37;
      if (qword_1EC642458 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 72);
      v40 = sub_1D1E6709C();
      __swift_project_value_buffer(v40, qword_1EC64F3F8);

      v41 = v37;
      v3 = sub_1D1E6707C();
      v42 = sub_1D1E6835C();

      if (!os_log_type_enabled(v3, v42))
      {

        goto LABEL_21;
      }

      v43 = *(v0 + 72);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v82 = v46;
      *v44 = 138412802;
      *(v44 + 4) = v43;
      *v45 = v43;
      *(v44 + 12) = 2080;

      *(v44 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v82);
      *(v44 + 22) = 2112;
      v47 = v37;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v48;
      v45[1] = v48;
      _os_log_impl(&dword_1D16EC000, v3, v42, "%@ %s returning due to error %@", v44, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D3893640](v46, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);

LABEL_20:
LABEL_21:
      LOBYTE(v22) = 0;
      v23 = 5000000000000000000;
LABEL_22:
      *(v0 + 40) = v23;
      *(v0 + 48) = 0;
      v24 = swift_task_alloc();
      *(v0 + 96) = v24;
      *v24 = v0;
      v24[1] = sub_1D17CEF94;
      v25 = *(v0 + 72);

      return sub_1D17CF6F4(v22, (v0 + 40));
    }

    v63 = *(*(v0 + 72) + 120);
    v64 = [v63 streamControl];
    if (v64 && (v65 = v64, v66 = [v64 streamState], v65, v66 == 2) && (v67 = objc_msgSend(v63, sel_streamControl)) != 0 && (v68 = v67, v69 = objc_msgSend(v67, sel_cameraStream), v68, v69))
    {
      v70 = *(v0 + 72);
      v71 = [v69 audioStreamSetting];

      v72 = 0;
      v73 = 0;
      v74 = v71 == 2;
      if (v71 == 3)
      {
        v74 = 2;
      }

      v75 = v74 | (*(v70 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) << 8);
      v76 = 1;
    }

    else
    {
      v75 = 0;
      v76 = 0;
      v73 = 2;
      v72 = 1;
    }

    *(v0 + 37) = v73;
    *(v0 + 36) = v76;
    *(v0 + 35) = v72;
    *(v0 + 104) = v75;
    v77 = *(v0 + 72);
    v78 = [v63 streamControl];
    *(v0 + 112) = [v78 cameraStream];

    v79 = *(v77 + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 120) = v79;

    return MEMORY[0x1EEE6DFA0](sub_1D17CF088, v79, 0);
  }
}

uint64_t sub_1D17CEF94()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D17CF088()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = *(v1 + 120);
  *(v0 + 38) = *(v1 + 128);
  return MEMORY[0x1EEE6DFA0](sub_1D17CF0B4, v1, 0);
}

uint64_t sub_1D17CF0B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  *(v0 + 136) = *(v1 + 136);
  *(v0 + 39) = *(v1 + 144);
  return MEMORY[0x1EEE6DFA0](sub_1D17CF0E4, v2, 0);
}

uint64_t sub_1D17CF0E4()
{
  v43 = v0;
  v1 = *(v0 + 33);
  if (v1 != 2 && v1 != 1)
  {
    v5 = *(v0 + 88);
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        v6 = *(v0 + 39);
        v7 = *(v0 + 38);
LABEL_29:
        if (*(v0 + 36) != 1)
        {
          goto LABEL_35;
        }

        v12 = *(v0 + 104);
        v38 = *(v0 + 80);
        v39 = 0;
        v40 = v12;
        v41 = 0;
        v42 = 0;
        if ((_s13HomeDataModel16CameraControllerC4ModeO2eeoiySbAE_AEtFZ_0(&v38, &v40) & 1) == 0)
        {
          goto LABEL_35;
        }

        v13 = *(v0 + 72);
        if (*(v13 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
        {
          v14 = *(v13 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

          isCancelled = swift_task_isCancelled();

          if ((isCancelled & v7 & v6 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if ((v7 & v6) != 1)
        {
          goto LABEL_35;
        }

LABEL_8:

        v3 = *(v0 + 8);

        return v3();
      }

      v7 = *(v0 + 38);
      goto LABEL_24;
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 38);
    if (v8)
    {
      v10 = [v8 audioDownlinkToken];
      if ((v9 & 1) == 0)
      {
        v7 = *(v0 + 128) == v10;
        if ((v5 & 2) != 0)
        {
          v11 = *(v0 + 112);
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else if (*(v0 + 38))
    {
      if ((v5 & 2) == 0)
      {
        v6 = *(v0 + 39);
        v7 = 1;
        goto LABEL_29;
      }

      v11 = 0;
      v6 = 1;
      v7 = 1;
      if (*(v0 + 39))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v7 = 0;
    if ((v5 & 2) != 0)
    {
LABEL_24:
      v11 = *(v0 + 112);
      if (v11)
      {
LABEL_25:
        v11 = [v11 audioUplinkToken];
        v6 = 0;
        if (*(v0 + 39))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v6 = 1;
      if (*(v0 + 39))
      {
        goto LABEL_29;
      }

LABEL_28:
      v6 = (*(v0 + 136) == v11) & ~v6;
      goto LABEL_29;
    }

LABEL_23:
    v6 = *(v0 + 39);
    goto LABEL_29;
  }

  v2 = *(v0 + 35) != 1 || *(v0 + 38) == 0;
  if (!v2 && (*(v0 + 39) & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 72);
  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC64F3F8);

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  if (os_log_type_enabled(v18, v19))
  {
    v37 = *(v0 + 37);
    v36 = *(v0 + 104);
    v35 = *(v0 + 33);
    v20 = *(v0 + 80);
    v34 = *(v0 + 88);
    v21 = *(v0 + 72);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v38 = v24;
    *v22 = 138413058;
    *(v22 + 4) = v21;
    *v23 = v21;
    *(v22 + 12) = 2080;

    *(v22 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9800, &v38);
    *(v22 + 22) = 2080;
    v40 = v20;
    v41 = v34;
    v42 = v35;
    v25 = CameraController.Mode.description.getter();
    v27 = sub_1D1B1312C(v25, v26, &v38);

    *(v22 + 24) = v27;
    *(v22 + 32) = 2080;
    v40 = v36;
    v41 = 0;
    v42 = v37;
    v28 = CameraController.Mode.description.getter();
    v30 = sub_1D1B1312C(v28, v29, &v38);

    *(v22 + 34) = v30;
    _os_log_impl(&dword_1D16EC000, v18, v19, "%@ %s mode: %s, derived: %s", v22, 0x2Au);
    sub_1D1741A30(v23, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v31 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v31;
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_1D17CF584;
  v33 = *(v0 + 72);

  return sub_1D17CD084(v0 + 16);
}

uint64_t sub_1D17CF584()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17CF694, v2, 0);
}

uint64_t sub_1D17CF694()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D17CF6F4(char a1, _OWORD *a2)
{
  *(v3 + 40) = v2;
  *(v3 + 152) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v6 = sub_1D1E68A8C();
  *(v3 + 56) = v6;
  v7 = *(v6 - 8);
  *(v3 + 64) = v7;
  *(v3 + 72) = *(v7 + 64);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v8 = sub_1D1E669FC();
  *(v3 + 96) = v8;
  v9 = *(v8 - 8);
  *(v3 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D17CF8B8, v2, 0);
}

uint64_t sub_1D17CF8B8()
{
  v82 = v0;
  if (*(v0 + 152) != 1 || (v1 = [*(*(v0 + 40) + 120) accessory]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_isDemoAccessory), v2, (v3 & 1) != 0))
  {
    v4 = *(v0 + 40);
    if (!*(v4 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
    {
      goto LABEL_21;
    }

    v5 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
    goto LABEL_20;
  }

  v6 = *(v0 + 40);
  v7 = OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer;
  if (!*(v6 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {
LABEL_17:
    v79 = v7;
    v80 = v6;
    v24 = *(v0 + 144);
    v25 = *(v0 + 128);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 40);
    v29 = v28 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval;
    *v29 = *(v0 + 136);
    *(v29 + 8) = v24;
    *(v29 + 16) = 0;
    v30 = sub_1D1E6931C();
    v32 = v31 * 1.0e-18 + v30;
    v33 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
    swift_beginAccess();
    sub_1D1741C08(v28 + v33, v25, &qword_1EC642570, &qword_1D1E6C6A0);
    v34 = (*(v27 + 48))(v25, 1, v26);
    v35 = 0.0;
    if (v34 != 1)
    {
      v36 = *(v0 + 120);
      v38 = *(v0 + 104);
      v37 = *(v0 + 112);
      v39 = *(v0 + 96);
      (*(v38 + 32))(v36, *(v0 + 128), v39);
      _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
      sub_1D1E669DC();
      v41 = v40;
      v42 = *(v38 + 8);
      v42(v37, v39);
      v42(v36, v39);
      v35 = v32 - v41;
    }

    v78 = v34 == 1;
    v44 = *(v0 + 136);
    v43 = *(v0 + 144);
    v72 = v44;
    v73 = v43;
    v45 = *(v0 + 88);
    v46 = *(v0 + 64);
    v74 = *(v0 + 80);
    v75 = *(v0 + 72);
    v48 = *(v0 + 48);
    v47 = *(v0 + 56);
    v49 = *(v0 + 40);
    sub_1D1E68A7C();
    v50 = CameraController.description.getter();
    v76 = v51;
    v77 = v50;
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = v44;
    v53[4] = v43;
    sub_1D1E67E3C();
    v54 = sub_1D1E67E7C();
    (*(*(v54 - 8) + 56))(v48, 0, 1, v54);
    (*(v46 + 16))(v74, v45, v47);
    v55 = (*(v46 + 80) + 56) & ~*(v46 + 80);
    v56 = (v75 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v35;
    *(v58 + 40) = v78;
    *(v58 + 48) = v32;
    (*(v46 + 32))(v58 + v55, v74, v47);
    v59 = (v58 + v56);
    *v59 = v77;
    v59[1] = v76;
    v60 = (v58 + v57);
    *v60 = v72;
    v60[1] = v73;
    v61 = (v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v61 = &unk_1D1E74618;
    v61[1] = v53;
    v62 = sub_1D1B02368(0, 0, v48, &unk_1D1E74628, v58);
    (*(v46 + 8))(v45, v47);
    v63 = *(v80 + v79);
    *(v80 + v79) = v62;
LABEL_20:

    goto LABEL_21;
  }

  v8 = *(v6 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer);

  isCancelled = swift_task_isCancelled();

  if (isCancelled & 1) != 0 || (v10 = *(v0 + 40) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentSnapshotInterval, (*(v10 + 16)) || (v11 = *(v0 + 136), v12 = *(v0 + 144), v13 = *v10, v14 = *(v10 + 8), (sub_1D1E6937C() & 1) == 0))
  {
    if (*(v6 + v7))
    {
      v23 = *(v6 + v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();
    }

    goto LABEL_17;
  }

  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EC64F3F8);

  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 40);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v81 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v19;
    *v21 = v19;
    *(v20 + 12) = 2080;

    *(v20 + 14) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EB9780, &v81);
    _os_log_impl(&dword_1D16EC000, v17, v18, "%@ %s returning early because snapshots are being taken", v20, 0x16u);
    sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D3893640](v22, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

LABEL_21:
  v65 = *(v0 + 120);
  v64 = *(v0 + 128);
  v66 = *(v0 + 112);
  v68 = *(v0 + 80);
  v67 = *(v0 + 88);
  v69 = *(v0 + 48);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_1D17CFF30(char a1, _BYTE *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 50) = a1;
  *(v3 + 51) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17CFF5C, v2, 0);
}

uint64_t sub_1D17CFF5C()
{
  v47 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F3F8);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 50);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;

    *(v7 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EB9710, &v45);
    *(v7 + 22) = 1024;
    *(v7 + 24) = v6;
    _os_log_impl(&dword_1D16EC000, v3, v4, "%@ %s enable: %{BOOL}d", v7, 0x1Cu);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v10 = *(v0 + 16);
  if (*(v0 + 50) == 1)
  {
    if (sub_1D17D1D7C())
    {
      *(v0 + 49) = *(v0 + 51);
      v11 = swift_task_alloc();
      *(v0 + 24) = v11;
      *v11 = v0;
      v11[1] = sub_1D17D064C;
      v12 = *(v0 + 16);

      return sub_1D17D1E34((v0 + 49));
    }

    v16 = *(v0 + 16);
    if (*(v0 + 51) != 5)
    {
      v17 = *(v0 + 16);
      if (sub_1D17D2BD4())
      {
        v18 = *(v0 + 51);
        v19 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution);
        if (v19 == 5 || v18 != v19)
        {
          *(v0 + 48) = v18;
          v20 = swift_task_alloc();
          *(v0 + 32) = v20;
          *v20 = v0;
          v20[1] = sub_1D17D0740;
          v21 = *(v0 + 16);

          return sub_1D17D23D4((v0 + 48));
        }
      }
    }

LABEL_22:

    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6835C();

    if (!os_log_type_enabled(v23, v24))
    {
LABEL_44:

      v42 = *(v0 + 8);

      return v42();
    }

    v25 = 0xED0000676E696D61;
    v26 = 0x6572747320746F6ELL;
    v27 = *(v0 + 16);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v28 = 138413058;
    *(v28 + 4) = v27;
    *v29 = v27;
    *(v28 + 12) = 2080;

    *(v28 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EB9710, &v44);
    *(v28 + 22) = 2080;
    v30 = [*(v27 + 120) streamControl];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 streamState];

      if (v32 == 3)
      {
        v25 = 0xE800000000000000;
        v33 = 0x6970706F7473;
        goto LABEL_30;
      }

      if (v32 == 2)
      {
        v26 = 0x6E696D6165727473;
        v25 = 0xE900000000000067;
      }

      else if (v32 == 1)
      {
        v25 = 0xE800000000000000;
        v33 = 0x697472617473;
LABEL_30:
        v26 = v33 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      }
    }

    v34 = *(v0 + 16);
    v35 = sub_1D1B1312C(v26, v25, &v44);

    *(v28 + 24) = v35;
    *(v28 + 32) = 2080;
    v36 = *(v34 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution);
    if (v36 == 5)
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      if (v36 <= 1)
      {
        v39 = 0xE800000000000000;
        if (v36)
        {
          v40 = 0x6465636E61686E65;
        }

        else
        {
          v40 = 0x647261646E617473;
        }
      }

      else if (v36 == 2)
      {
        v39 = 0xE400000000000000;
        v40 = 1751607656;
      }

      else if (v36 == 3)
      {
        v39 = 0xE900000000000068;
        v40 = 0x676968206C6C7566;
      }

      else
      {
        v39 = 0xEA00000000006867;
        v40 = 0x6968206172746C75;
      }

      MEMORY[0x1D3890F70](v40, v39);

      v38 = v45;
      v37 = v46;
    }

    v41 = sub_1D1B1312C(v38, v37, &v44);

    *(v28 + 34) = v41;
    _os_log_impl(&dword_1D16EC000, v23, v24, "%@ %s no-op,\nstreamState: %s,\ncurrentStreamingResolution: %s", v28, 0x2Au);
    sub_1D1741A30(v29, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
    goto LABEL_44;
  }

  if ((sub_1D17D2BD4() & 1) == 0)
  {
    v22 = *(v0 + 16);
    goto LABEL_22;
  }

  v14 = swift_task_alloc();
  *(v0 + 40) = v14;
  *v14 = v0;
  v14[1] = sub_1D17D0834;
  v15 = *(v0 + 16);

  return sub_1D17D2C88();
}

uint64_t sub_1D17D064C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D17D0740()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D17D0834()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D17D0928(_BYTE *a1, char a2, char a3)
{
  *(v4 + 160) = v3;
  *(v4 + 226) = a3;
  *(v4 + 225) = a2;
  *(v4 + 227) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D0958, v3, 0);
}

uint64_t sub_1D17D0958()
{
  v26 = v0;
  v1 = *(*(v0 + 160) + 120);
  *(v0 + 168) = v1;
  v2 = [v1 streamControl];
  if (!v2 || (v3 = v2, v4 = [v2 cameraStream], *(v0 + 176) = v4, v3, !v4))
  {
LABEL_7:
    v9 = *(v0 + 8);

    return v9();
  }

  v5 = *(v0 + 227);
  if ([v4 audioStreamSetting] == (v5 + 1) || (v6 = objc_msgSend(v1, sel_accessory)) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_isDemoAccessory), v7, (v8 & 1) != 0))
  {

    goto LABEL_7;
  }

  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 160);
  v12 = sub_1D1E6709C();
  *(v0 + 184) = __swift_project_value_buffer(v12, qword_1EC64F3F8);

  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  if (os_log_type_enabled(v13, v14))
  {
    v24 = *(v0 + 227);
    v15 = *(v0 + 160);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v16 = 138412802;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2080;

    *(v16 + 14) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EB96C0, &v25);
    *(v16 + 22) = 2080;
    *(v0 + 224) = v24;
    v19 = sub_1D1E6789C();
    v21 = sub_1D1B1312C(v19, v20, &v25);

    *(v16 + 24) = v21;
    _os_log_impl(&dword_1D16EC000, v13, v14, "%@ %s setting: %s", v16, 0x20u);
    sub_1D1741A30(v17, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  v22 = *(v0 + 227);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D17D0D38;
  v23 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v23;
  [v4 updateAudioStreamSetting:v22 + 1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D17D0D38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_1D17D1258;
  }

  else
  {
    v5 = sub_1D17D0E58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D17D0E58()
{
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + 152);
  if (*(v0 + 225) == 1)
  {
    v2 = [*(v0 + 168) microphoneControl];
    if (v2)
    {
      v3 = v2;
      MEMORY[0x1D3891220]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }
  }

  if (*(v0 + 226) == 1)
  {
    v4 = [*(v0 + 168) speakerControl];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3891220]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }
  }

  v6 = *(v0 + 160);
  sub_1D17D8E60(&qword_1EC643F38, type metadata accessor for CameraController);
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x1E69E88D8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_1D17D10A0;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D17D10A0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 160);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D11F0, v4, 0);
}

uint64_t sub_1D17D11F0()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D1258()
{
  v21 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  swift_willThrow();

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 192);
    v19 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;

    *(v9 + 14) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EB96C0, v20);
    *(v9 + 22) = 2080;
    *(v0 + 144) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v13 = sub_1D1E6789C();
    v15 = sub_1D1B1312C(v13, v14, v20);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%@ %s failed to update %s", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 192);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D17D14B0(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 89) = a2;
  *(v3 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D14D8, v2, 0);
}

uint64_t sub_1D17D14D8()
{
  v25 = v0;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F3F8);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 89);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 138413058;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;

    *(v8 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EB9620, &v24);
    *(v8 + 22) = 1024;
    *(v8 + 24) = v7;
    *(v8 + 28) = 1024;
    *(v8 + 30) = v6;
    _os_log_impl(&dword_1D16EC000, v3, v4, "%@ %s enableIncoming: %{BOOL}d, enableOutgoing: %{BOOL}d", v8, 0x22u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  if (*(v0 + 88) == 1)
  {
    v11 = [*(*(v0 + 16) + 120) streamControl];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 cameraStream];
      *(v0 + 24) = v13;

      if (v13)
      {
        v14 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 32) = v14;
        *(v0 + 40) = [v13 audioDownlinkToken];
        v15 = sub_1D17D188C;
LABEL_13:
        v19 = v15;
        v20 = v14;
LABEL_22:

        return MEMORY[0x1EEE6DFA0](v19, v20, 0);
      }
    }
  }

  if (*(v0 + 89) == 1)
  {
    v16 = [*(*(v0 + 16) + 120) streamControl];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 cameraStream];
      *(v0 + 48) = v18;

      if (v18)
      {
        v14 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 56) = v14;
        *(v0 + 64) = [v18 audioUplinkToken];
        v15 = sub_1D17D1A6C;
        goto LABEL_13;
      }
    }
  }

  if ((*(v0 + 88) & 1) == 0)
  {
    v20 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v20;
    v23 = sub_1D17D1BB8;
LABEL_21:
    v19 = v23;
    goto LABEL_22;
  }

  if ((*(v0 + 89) & 1) == 0)
  {
    v20 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v20;
    v23 = sub_1D17D1C70;
    goto LABEL_21;
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D17D188C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1D17D4858(0, v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1D17D18FC, v2, 0);
}

uint64_t sub_1D17D18FC()
{
  if (*(v0 + 89) == 1)
  {
    v1 = [*(*(v0 + 16) + 120) streamControl];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 cameraStream];
      *(v0 + 48) = v3;

      if (v3)
      {
        v4 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
        *(v0 + 56) = v4;
        *(v0 + 64) = [v3 audioUplinkToken];
        v5 = sub_1D17D1A6C;
        v6 = v4;
LABEL_13:

        return MEMORY[0x1EEE6DFA0](v5, v6, 0);
      }
    }
  }

  if ((*(v0 + 88) & 1) == 0)
  {
    v6 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v6;
    v9 = sub_1D17D1BB8;
LABEL_12:
    v5 = v9;
    goto LABEL_13;
  }

  if ((*(v0 + 89) & 1) == 0)
  {
    v6 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v6;
    v9 = sub_1D17D1C70;
    goto LABEL_12;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D17D1A6C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_1D17D4858(1, v0[8]);

  return MEMORY[0x1EEE6DFA0](sub_1D17D1ADC, v2, 0);
}

uint64_t sub_1D17D1ADC()
{
  if (*(v0 + 88))
  {
    if (*(v0 + 89))
    {
      v1 = *(v0 + 8);

      return v1();
    }

    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 80) = v3;
    v4 = sub_1D17D1C70;
  }

  else
  {
    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
    *(v0 + 72) = v3;
    v4 = sub_1D17D1BB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D17D1BB8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  sub_1D17D4B60(0);

  return MEMORY[0x1EEE6DFA0](sub_1D17D1C28, v2, 0);
}

uint64_t sub_1D17D1C28()
{
  if (*(v0 + 89))
  {
    return (*(v0 + 8))();
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeDataModel16CameraController_waveformDataProvider);
  *(v0 + 80) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D1C70, v2, 0);
}

uint64_t sub_1D17D1C70()
{
  v1 = *(v0 + 80);
  sub_1D17D4B60(1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D1CD4()
{
  v1 = *(v0 + 120);
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if (v4 == 1)
    {
      return 1;
    }
  }

  result = [v1 streamControl];
  if (result)
  {
    v6 = result;
    v7 = [result streamState];

    return v7 == 3;
  }

  return result;
}

uint64_t sub_1D17D1D7C()
{
  if (sub_1D17D1CD4())
  {
    return 0;
  }

  v1 = *(v0 + 120);
  v2 = [v1 streamControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 streamState];

    if ((v4 - 1) < 3)
    {
      return 0;
    }
  }

  v6 = [v1 accessory];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = [v6 isDemoAccessory];

  return v8 ^ 1;
}

uint64_t sub_1D17D1E34(_BYTE *a1)
{
  *(v2 + 48) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  *(v2 + 56) = v4;
  v5 = *(v4 - 8);
  *(v2 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 41) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17D1F0C, v1, 0);
}

uint64_t sub_1D17D1F0C()
{
  v40 = v0;
  v1 = [*(*(v0 + 48) + 120) streamControl];
  if (v1)
  {
    v2 = v1;
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC64F3F8);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 41);
      v8 = *(v0 + 48);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v9 = 138412802;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2080;

      *(v9 + 14) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EB9740, &v37);
      *(v9 + 22) = 2080;
      if (v7 == 5)
      {
        v11 = 0xE300000000000000;
        v12 = 7104878;
      }

      else
      {
        v13 = *(v0 + 41);
        v14 = 0x647261646E617473;
        v38 = 0;
        v39 = 0xE000000000000000;
        v15 = 0xE400000000000000;
        v16 = 1751607656;
        v17 = 0xE900000000000068;
        v18 = 0x676968206C6C7566;
        if (v13 != 3)
        {
          v18 = 0x6968206172746C75;
          v17 = 0xEA00000000006867;
        }

        if (v13 != 2)
        {
          v16 = v18;
          v15 = v17;
        }

        if (v13)
        {
          v14 = 0x6465636E61686E65;
        }

        if (v13 <= 1)
        {
          v19 = v14;
        }

        else
        {
          v19 = v16;
        }

        if (v13 <= 1)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v20 = v15;
        }

        MEMORY[0x1D3890F70](v19, v20);

        v12 = v38;
        v11 = v39;
      }

      v21 = sub_1D1B1312C(v12, v11, &v37);

      *(v9 + 24) = v21;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%@ %s resolution: %s", v9, 0x20u);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v36, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v22 = *(v0 + 41);
    v23 = [objc_allocWithZone(MEMORY[0x1E696CB20]) init];
    v24 = [objc_allocWithZone(MEMORY[0x1E696CB28]) init];
    if (v22 != 5)
    {
      LOBYTE(v38) = *(v0 + 41);
      CameraController.Resolution.videoResolutions.getter();
      sub_1D1784EBC(v25);

      sub_1D17D8AE4();
      sub_1D17D8E60(&qword_1EC643568, sub_1D17D8AE4);
      v26 = sub_1D1E6815C();

      [v24 setResolutions_];
    }

    v27 = *(v0 + 41);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    [v23 setVideoPreferences_];
    [v23 setShouldTakeOwnershipOfExistingStream_];
    *(v30 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = v27;
    [v2 startStreamWithPreferences_];
    v32 = [v2 cameraStream];
    *(v0 + 16) = 1;
    *(v0 + 24) = v32;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0x80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v29 + 8))(v28, v31);
  }

  v33 = *(v0 + 72);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D17D23D4(_BYTE *a1)
{
  *(v2 + 144) = v1;
  *(v2 + 176) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D23FC, v1, 0);
}

uint64_t sub_1D17D23FC()
{
  v26 = v0;
  v1 = [*(*(v0 + 144) + 120) streamControl];
  if (v1 && (v2 = v1, v3 = [v1 cameraStream], *(v0 + 152) = v3, v2, v3))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = sub_1D1E6709C();
    *(v0 + 160) = __swift_project_value_buffer(v5, qword_1EC64F3F8);

    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 176);
      v9 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v10 = 138412802;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;

      *(v10 + 14) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EB9760, &v25);
      v12 = 0x647261646E617473;
      *(v10 + 22) = 2080;
      v13 = 0xE400000000000000;
      v14 = 1751607656;
      v15 = 0xE900000000000068;
      v16 = 0x676968206C6C7566;
      if (v8 != 3)
      {
        v16 = 0x6968206172746C75;
        v15 = 0xEA00000000006867;
      }

      if (v8 != 2)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v8)
      {
        v12 = 0x6465636E61686E65;
      }

      if (v8 <= 1)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v8 <= 1)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = v13;
      }

      v19 = sub_1D1B1312C(v17, v18, &v25);

      *(v10 + 24) = v19;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%@ %s resolution: %s", v10, 0x20u);
      sub_1D1741A30(v11, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    v20 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D17D27F0;
    v21 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_92;
    *(v0 + 112) = v21;
    [v3 updateMaximumVideoResolutionQuality:v20 + 1 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1D17D27F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_1D17D2980;
  }

  else
  {
    v5 = sub_1D17D2910;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D17D2910()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  *(v2 + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17D2980()
{
  v21 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  swift_willThrow();

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v19 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;

    *(v9 + 14) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EB9760, v20);
    *(v9 + 22) = 2080;
    *(v0 + 80) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v13 = sub_1D1E6789C();
    v15 = sub_1D1B1312C(v13, v14, v20);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%@ %s failed to update %s", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 168);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D17D2BD4()
{
  if (sub_1D17D1CD4())
  {
    return 0;
  }

  v1 = *(v0 + 120);
  result = [v1 streamControl];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result streamState];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [v1 accessory];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [v5 isDemoAccessory];

  return v7 ^ 1;
}

uint64_t sub_1D17D2C88()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D2D54, v0, 0);
}

uint64_t sub_1D17D2D54()
{
  v19 = v0;
  v1 = [*(*(v0 + 48) + 120) streamControl];
  if (v1)
  {
    v2 = v1;
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC64F3F8);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v7;
      *v9 = v7;
      *(v8 + 12) = 2080;

      *(v8 + 14) = sub_1D1B1312C(0x65727453706F7473, 0xEC00000029286D61, &v18);
      _os_log_impl(&dword_1D16EC000, v5, v6, "%@ %s", v8, 0x16u);
      sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    *(*(v0 + 48) + OBJC_IVAR____TtC13HomeDataModel16CameraController_currentStreamingResolution) = 5;
    [v2 stopStream];
    v14 = [v2 cameraStream];
    *(v0 + 16) = 3;
    *(v0 + 24) = v14;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0x80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
    sub_1D1E67ECC();

    (*(v12 + 8))(v11, v13);
  }

  v15 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D17D3008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D30B4, 0, 0);
}

void sub_1D17D30B4()
{
  v1 = **(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v27 = **(v0 + 80);
    }

    v28 = **(v0 + 80);
    v29 = sub_1D1E6873C();
    v1 = v28;
    v2 = v29;
    if (!v29)
    {
LABEL_18:
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);

      v26 = *(v0 + 8);

      v26();
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  if (v2 >= 1)
  {
    v31 = **(v0 + 72);
    v30 = v1 & 0xC000000000000001;
    v3 = v1;

    v4 = v3;
    v5 = 0;
    v32 = v2;
    v33 = v3;
    while (1)
    {
      v34 = v5;
      if (v30)
      {
        v8 = MEMORY[0x1D3891EF0](v5, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v5 + 32);
      }

      v9 = v8;
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 88);
      v13 = sub_1D1E67E7C();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v10, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v12;
      v15[5] = v9;
      sub_1D1741C08(v10, v11, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);

      v17 = v9;
      v18 = *(v0 + 96);
      if (v10 == 1)
      {
        sub_1D1741A30(*(v0 + 96), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v14 + 8))(v18, v13);
        if (!*v16)
        {
LABEL_14:
          v20 = 0;
          v22 = 0;
          goto LABEL_15;
        }
      }

      v19 = v15[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_1D1E67D4C();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_15:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_1D1E745B0;
      *(v23 + 24) = v15;

      if (v22 | v20)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v6 = 0;
      }

      v5 = v34 + 1;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
      v4 = v33;
      if (v32 == v34 + 1)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D17D3444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D17D3464, 0, 0);
}

uint64_t sub_1D17D3464()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D17D3554;
    v4 = v0[6];

    return sub_1D17D3664(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D17D3554()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D17D3664(uint64_t a1)
{
  v2[206] = v1;
  v2[205] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v2[207] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v2[208] = v4;
  v5 = *(v4 - 8);
  v2[209] = v5;
  v6 = *(v5 + 64) + 15;
  v2[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D3760, v1, 0);
}

uint64_t sub_1D17D3760()
{
  v1 = v0[205];
  v2 = swift_allocObject();
  v0[211] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  swift_asyncLet_begin();
  v4 = swift_allocObject();
  v0[212] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 218, sub_1D17D3874, v0 + 162);
}

uint64_t sub_1D17D38B8()
{
  v37 = v0;
  v1 = *(v0 + 1745);
  v2 = *(v0 + 1592);
  *(v0 + 1336) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v0 + 1344) = 0;
  *(v0 + 1352) = 2;
  if (v1 == 1)
  {
    v3 = [*(v0 + 1640) mute];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 service];

      if (v5)
      {
        v6 = *(v0 + 1680);
        v7 = *(v0 + 1672);
        v8 = *(v0 + 1664);
        v9 = [v5 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BECA54(0, 84, v6, (v0 + 1336));
        (*(v7 + 8))(v6, v8);
      }
    }
  }

  if (v2 <= 49)
  {
    v10 = [*(v0 + 1640) volume];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 service];

      if (v12)
      {
        v13 = *(v0 + 1680);
        v14 = *(v0 + 1672);
        v15 = *(v0 + 1664);
        v16 = [v12 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BECC0C(50, 170, v13, (v0 + 1336));
        (*(v14 + 8))(v13, v15);
      }
    }
  }

  if (*(*(v0 + 1336) + 16))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 1648);
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);

    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 1648);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34[0] = v24;
      *v22 = 138412802;
      *(v22 + 4) = v21;
      *v23 = v21;
      *(v22 + 12) = 2080;

      *(v22 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EB96F0, v34);
      *(v22 + 22) = 2080;
      swift_beginAccess();
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1352);
      v34[1] = *(v0 + 1336);
      v35 = v25;
      v36 = v26;

      v27 = CharacteristicValueSet.description.getter();
      v29 = v28;

      v30 = sub_1D1B1312C(v27, v29, v34);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%@ %s writing characteristics: %s", v22, 0x20u);
      sub_1D1741A30(v23, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    *(v0 + 1704) = sub_1D1E67E1C();
    *(v0 + 1712) = sub_1D1E67E0C();
    v32 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17D3D94, v32, v31);
  }

  else
  {

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1592, sub_1D17D3D3C, v0 + 1552);
  }
}

uint64_t sub_1D17D3D94()
{
  v1 = *(v0 + 1712);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1648);

  return MEMORY[0x1EEE6DFA0](sub_1D17D3E2C, v2, 0);
}

uint64_t sub_1D17D3E2C()
{
  v1 = *(v0 + 1704);
  *(v0 + 1720) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17D3EB8, v3, v2);
}

uint64_t sub_1D17D3EB8()
{
  v1 = v0[215];
  v2 = v0[206];

  v0[216] = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17D3F30, v2, 0);
}

uint64_t sub_1D17D3F30()
{
  swift_beginAccess();
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1352);
  *(v0 + 1464) = *(v0 + 1336);
  *(v0 + 1472) = v1;
  *(v0 + 1480) = v2;

  v3 = swift_task_alloc();
  *(v0 + 1736) = v3;
  *v3 = v0;
  v3[1] = sub_1D17D4008;
  v4 = *(v0 + 1728);
  v5 = *(v0 + 1656);

  return DataModel.write(characteristicValueSet:home:)(v5, (v0 + 1464), 0);
}

uint64_t sub_1D17D4008()
{
  v1 = *v0;
  v2 = *(*v0 + 1736);
  v3 = *(*v0 + 1656);
  v4 = *(*v0 + 1648);
  v7 = *v0;

  v5 = *(v1 + 1464);

  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D17D4168, v4, 0);
}

uint64_t sub_1D17D4168()
{
  v1 = *(v0 + 1336);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1592, sub_1D17D41D4, v0 + 1424);
}

uint64_t sub_1D17D422C()
{
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[207];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D17D42B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D42D8, 0, 0);
}

uint64_t sub_1D17D42D8()
{
  v1 = [*(v0 + 56) mute];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D17D43CC;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    **(v0 + 48) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D17D43CC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D44C8, 0, 0);
}

uint64_t sub_1D17D44C8()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v1 = 0;
LABEL_6:
  **(v0 + 48) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17D4588(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D17D45A8, 0, 0);
}

uint64_t sub_1D17D45A8()
{
  v1 = [*(v0 + 64) volume];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D17D469C;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    **(v0 + 56) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D17D469C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D4798, 0, 0);
}

uint64_t sub_1D17D4798()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 48);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v1 = 0;
LABEL_6:
  **(v0 + 56) = v1;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D17D4858(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = 120;
  if (a1)
  {
    v6 = 136;
  }

  v7 = 128;
  if (a1)
  {
    v7 = 144;
  }

  if ((*(v2 + v7) & 1) == 0)
  {
    v8 = *(v2 + v6);
    if (v8 == a2)
    {
      return;
    }

    v9 = *(v2 + 112);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D17EB4C0();
      [v11 unregisterPowerSpectrumForStreamToken_];

      swift_beginAccess();
      sub_1D1AE0748(v8);
      swift_endAccess();
    }
  }

  sub_1D17D6C50();
  v12 = *(v3 + 112);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D17EB4C0();
    [v14 registerPowerSpectrumForStreamToken_];

    swift_beginAccess();
    sub_1D1763C3C(&v23, a2);
    swift_endAccess();
  }

  sub_1D17D6DC0(a1 & 1, a2, 0, 0, 0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EC64F3F8);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EB9650, v22);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EB9680, v22);
    *(v18 + 22) = 2080;
    if (a1)
    {
      v20 = 0x676E696F6774756FLL;
    }

    else
    {
      v20 = 0x676E696D6F636E69;
    }

    v21 = sub_1D1B1312C(v20, 0xE800000000000000, v22);

    *(v18 + 24) = v21;
    *(v18 + 32) = 2048;
    *(v18 + 34) = a2;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s-%s source: %s, token: %ld", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }
}

void sub_1D17D4B60(char a1)
{
  v2 = 120;
  if (a1)
  {
    v2 = 136;
  }

  v3 = 128;
  if (a1)
  {
    v3 = 144;
  }

  if ((*(v1 + v3) & 1) == 0)
  {
    v4 = v1;
    v6 = *(v1 + v2);
    v7 = *(v1 + 112);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D17EB4C0();
      [v9 unregisterPowerSpectrumForStreamToken_];

      swift_beginAccess();
      sub_1D1AE0748(v6);
      swift_endAccess();
    }

    sub_1D17D6DC0(a1 & 1, 0, 1, 0, 0);
    if (*(v4 + 128) == 1 && (*(v4 + 144) & 1) != 0)
    {
      v10 = *(v4 + 112);
      *(v4 + 112) = 0;
    }

    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F3F8);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EB9650, v18);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB96A0, v18);
      *(v14 + 22) = 2080;
      if (a1)
      {
        v16 = 0x676E696F6774756FLL;
      }

      else
      {
        v16 = 0x676E696D6F636E69;
      }

      v17 = sub_1D1B1312C(v16, 0xE800000000000000, v18);

      *(v14 + 24) = v17;
      *(v14 + 32) = 2048;
      *(v14 + 34) = v6;
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s-%s source: %s, token: %ld", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }
  }
}

uint64_t CameraController.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 91;
  v16[1] = 0xE100000000000000;
  v6 = *(v0 + 120);
  v7 = [v6 accessory];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 name];

    v10 = sub_1D1E6781C();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v10, v12);

  MEMORY[0x1D3890F70](47, 0xE100000000000000);
  v13 = [v6 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D17D8E60(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v14 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v14);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v16[0];
}

uint64_t sub_1D17D5004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D17D5028, 0, 0);
}

uint64_t sub_1D17D5028()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 40) = *(v0 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1D17D50E8, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D17D50E8()
{
  v1 = *(v0 + 80);
  sub_1D17D51B4((v0 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1D17D5154, 0, 0);
}

uint64_t sub_1D17D5154()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D17D51B4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = OBJC_IVAR____TtC13HomeDataModel16CameraController_previousSnapshotCallTime;
  swift_beginAccess();
  v42 = v20;
  sub_1D1741C08(v2 + v20, v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_10:
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EC64F3F8);

    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6835C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v36 = 138412546;
      *(v36 + 4) = v2;
      *v37 = v2;
      *(v36 + 12) = 2080;

      *(v36 + 14) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB97B0, v44);
      _os_log_impl(&dword_1D16EC000, v34, v35, "%@ %s taking snapshot", v36, 0x16u);
      sub_1D1741A30(v37, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D3893640](v38, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    v39 = v43;
    _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
    (*(v11 + 56))(v39, 0, 1, v10);
    v40 = v42;
    swift_beginAccess();
    sub_1D17B648C(v39, v2 + v40);
    swift_endAccess();
    v41 = [*(v2 + 120) snapshotControl];
    [v41 takeSnapshot];

    return;
  }

  (*(v11 + 32))(v17, v9, v10);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E669DC();
  v22 = v21;
  v23 = *(v11 + 8);
  v23(v15, v10);
  v24 = sub_1D1E6931C();
  if (v25 * 1.0e-18 + v24 <= v22)
  {
    v23(v17, v10);
    goto LABEL_10;
  }

  v43 = v10;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v26 = sub_1D1E6709C();
  __swift_project_value_buffer(v26, qword_1EC64F3F8);

  v27 = sub_1D1E6707C();
  v28 = sub_1D1E6835C();

  v29 = v17;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44[0] = v32;
    *v30 = 138412546;
    *(v30 + 4) = v2;
    *v31 = v2;
    *(v30 + 12) = 2080;

    *(v30 + 14) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB97B0, v44);
    _os_log_impl(&dword_1D16EC000, v27, v28, "%@ %s returning early because enough time hasn't elapsed", v30, 0x16u);
    sub_1D1741A30(v31, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  v23(v29, v43);
}

uint64_t sub_1D17D57A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 72) = v18;
  *(v9 + 80) = v19;
  *(v9 + 56) = v17;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 32) = a7;
  *(v9 + 24) = a1;
  *(v9 + 168) = a6;
  *(v9 + 16) = a5;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F40, &qword_1D1E74630) - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F48, &qword_1D1E74638);
  *(v9 + 96) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F50, &qword_1D1E74640);
  *(v9 + 112) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D58E0, 0, 0);
}

uint64_t sub_1D17D58E0()
{
  v25 = v0;
  if ((*(v0 + 168) & 1) != 0 || *(v0 + 16) >= *(v0 + 24))
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F3F8);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 56);
      v11 = *(v0 + 64);
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1D1B1312C(v14, v13, &v24);
      *(v15 + 12) = 2080;
      v17 = sub_1D1E6932C();
      v19 = sub_1D1B1312C(v17, v18, &v24);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1D16EC000, v9, v10, "%s starting periodic snapshots, interval: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v23 = (*(v0 + 72) + **(v0 + 72));
    v20 = *(*(v0 + 72) + 4);
    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = sub_1D17D6038;
    v22 = *(v0 + 80);

    return v23();
  }

  else
  {
    v1 = sub_1D1E693AC();
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1D17D5C04;
    v5 = *(v0 + 32);

    return sub_1D1A014C4(v1, v3, 0, 0, 1);
  }
}

uint64_t sub_1D17D5C04()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[15];
    v5 = v3[13];
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D17D5D64, 0, 0);
  }
}

uint64_t sub_1D17D5D64()
{
  v25 = v0;
  v1 = v0[17];
  sub_1D1E67F9C();
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[11];

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v7 = v0[6];
    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F3F8);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[7];
      v11 = v0[8];
      v14 = v0[5];
      v13 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1D1B1312C(v14, v13, v24);
      *(v15 + 12) = 2080;
      v17 = sub_1D1E6932C();
      v19 = sub_1D1B1312C(v17, v18, v24);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1D16EC000, v9, v10, "%s starting periodic snapshots, interval: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v23 = (v0[9] + *v0[9]);
    v20 = *(v0[9] + 4);
    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_1D17D6038;
    v22 = v0[10];

    return v23();
  }
}

uint64_t sub_1D17D6038()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D6134, 0, 0);
}

uint64_t sub_1D17D6134()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  v7 = sub_1D1E68A8C();
  (*(*(v7 - 8) + 16))(v2, v6, v7);
  v8 = (v2 + *(v3 + 36));
  *v8 = v5;
  v8[1] = v4;
  v9 = v2 + *(v3 + 40);
  *v9 = xmmword_1D1E74340;
  *(v9 + 16) = 0;
  sub_1D1E66F7C();
  sub_1D1741A30(v2, &qword_1EC643F48, &qword_1D1E74638);
  v10 = *(MEMORY[0x1E698D2D8] + 4);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1D17D6278;
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[11];

  return MEMORY[0x1EEDEE7F8](v14, v12);
}

uint64_t sub_1D17D6278()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D6374, 0, 0);
}

uint64_t sub_1D17D6374()
{
  v1 = v0[11];
  v2 = sub_1D1E68A6C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[15];
    v4 = &qword_1EC643F50;
    v5 = &qword_1D1E74640;
LABEL_5:
    sub_1D1741A30(v3, v4, v5);
    v7 = v0[15];
    v8 = v0[13];
    v9 = v0[11];

    v10 = v0[1];

    return v10();
  }

  if (sub_1D1E67F7C())
  {
    v6 = v0[11];
    sub_1D1741A30(v0[15], &qword_1EC643F50, &qword_1D1E74640);
    v4 = &qword_1EC643F40;
    v5 = &qword_1D1E74630;
    v3 = v6;
    goto LABEL_5;
  }

  v15 = (v0[9] + *v0[9]);
  v12 = *(v0[9] + 4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1D17D6558;
  v14 = v0[10];

  return v15();
}

uint64_t sub_1D17D6558()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17D6654, 0, 0);
}

uint64_t sub_1D17D6654()
{
  sub_1D1741A30(v0[11], &qword_1EC643F40, &qword_1D1E74630);
  v1 = *(MEMORY[0x1E698D2D8] + 4);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1D17D6278;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];

  return MEMORY[0x1EEDEE7F8](v5, v3);
}

void CameraController.id.getter()
{
  v1 = [*(v0 + 120) uniqueIdentifier];
  sub_1D1E66A5C();
}

void sub_1D17D681C()
{
  v1 = [*(*v0 + 120) uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t type metadata accessor for CameraController()
{
  result = qword_1EC643EE8;
  if (!qword_1EC643EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D17D68D4()
{
  sub_1D17D6B38();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D17B77BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CameraController.reset()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D17C4CF0;

  return v6();
}

void sub_1D17D6B38()
{
  if (!qword_1EC643EF8)
  {
    v0 = sub_1D1E67EEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC643EF8);
    }
  }
}

uint64_t sub_1D17D6B88()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D18D7A60(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F90, &unk_1D1E746F0);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v2;
  *(v0 + 160) = v3;
  *(v0 + 168) = 10;
  *(v0 + 176) = 0;
  v4 = sub_1D18D7A60(v1);
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = v4;
  *(v0 + 184) = v5;
  *(v0 + 192) = 10;
  *(v0 + 200) = 0;
  return v0;
}

uint64_t sub_1D17D6C50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - v5;
  if (!*(v0 + 112))
  {
    v7 = objc_allocWithZone(type metadata accessor for PowerSpectrumMeter());
    v8 = sub_1D17EB684(6, 0.0666666667);
    v9 = *(v0 + 112);
    *(v0 + 112) = v8;
    v10 = v8;

    v11 = sub_1D1E67E7C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v12;
    v14 = sub_1D17C6EF0(0, 0, v6, &unk_1D1E74578, v13);
    v15 = *(v1 + 152);
    *(v1 + 152) = v14;
  }

  return result;
}

uint64_t sub_1D17D6DC0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    *(v5 + 136) = a2;
    *(v5 + 144) = a3 & 1;
    v8 = swift_beginAccess();
    v9 = *(v5 + 184);
    v20 = a4;
    v21 = a5;
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v9 + 48));
    sub_1D17D8550((v9 + 16), &v19);
    os_unfair_lock_unlock((v9 + 48));
    v10 = v19;
    MEMORY[0x1EEE9AC00](v11);
    v18 = &v20;
    v12 = sub_1D17D867C;
  }

  else
  {
    *(v5 + 120) = a2;
    *(v5 + 128) = a3 & 1;
    v13 = swift_beginAccess();
    v14 = *(v5 + 160);
    v20 = a4;
    v21 = a5;
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v14 + 48));
    sub_1D17D8F70((v14 + 16), &v19);
    os_unfair_lock_unlock((v14 + 48));
    v10 = v19;
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v20;
    v12 = sub_1D17D8F88;
  }

  sub_1D1D39098(v12, &v17, v10);

  return swift_endAccess();
}

uint64_t sub_1D17D6F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F30, &qword_1D1E74588);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17D7058, 0, 0);
}

uint64_t sub_1D17D7058()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v0[7] = v3;
  type metadata accessor for PowerSpectrumMeter();
  sub_1D17D8E60(&qword_1EC6445C0, type metadata accessor for PowerSpectrumMeter);
  v4 = v3;
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC6445B0, &qword_1EC643F30, &qword_1D1E74588);
  v5 = *(MEMORY[0x1E69E85B0] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1D17D71C4;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6D8D0](v0 + 5, 0, 0);
}

uint64_t sub_1D17D71C4()
{
  v2 = *(*v1 + 104);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D17D72D4, 0, 0);
  }

  return result;
}

uint64_t sub_1D17D72D4()
{
  v1 = v0[6];
  v0[14] = v0[5];
  v0[15] = v1;
  if (v1)
  {
    v2 = v0[9];
    Strong = swift_weakLoadStrong();
    v0[16] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D17D73C8, Strong, 0);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D17D73C8()
{
  v1 = v0[16];
  sub_1D17D7528(v0[14], v0[15]);

  return MEMORY[0x1EEE6DFA0](sub_1D17D7440, 0, 0);
}

uint64_t sub_1D17D7440()
{
  v1 = v0[16];

  sub_1D17D8EA8(&qword_1EC6445B0, &qword_1EC643F30, &qword_1D1E74588);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D17D71C4;
  v4 = v0[12];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8D0](v0 + 5, 0, 0);
}

uint64_t sub_1D17D7528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D178D0B4(0, v4, 0);
    v5 = v29;
    v7 = (a2 + 32);
    v8 = *(v29 + 16);
    do
    {
      v9 = (fmaxf(*v7, -115.0) + 115.0) * 0.011765;
      if (*v7 >= -30.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = v9;
      }

      if ((LODWORD(v10) & 0x7FFFFF) != 0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      if ((~LODWORD(v10) & 0x7F800000) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v29 = v5;
      v13 = *(v5 + 24);
      if (v8 >= v13 >> 1)
      {
        sub_1D178D0B4((v13 > 1), v8 + 1, 1);
        v5 = v29;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + 4 * v8 + 32) = v12;
      ++v7;
      ++v8;
      --v4;
    }

    while (v4);
  }

  if ((*(v2 + 128) & 1) == 0 && *(v2 + 120) == a1)
  {
    v14 = v5;
    v15 = swift_beginAccess();
    v16 = *(v2 + 160);
    v27 = 0;
    v28 = v14;
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v16 + 48));
    sub_1D17D8F70((v16 + 16), &v26);
    os_unfair_lock_unlock((v16 + 48));
    v17 = v26;
    MEMORY[0x1EEE9AC00](v18);
    v25 = &v27;
LABEL_21:
    sub_1D1D39098(sub_1D17D8F88, &v24, v17);

    return swift_endAccess();
  }

  if ((*(v2 + 144) & 1) == 0 && *(v2 + 136) == a1)
  {
    v19 = sub_1D17D7874(v5, &unk_1F4D61830);

    v20 = swift_beginAccess();
    v21 = *(v2 + 184);
    v27 = 1;
    v28 = v19;
    MEMORY[0x1EEE9AC00](v20);
    os_unfair_lock_lock((v21 + 48));
    sub_1D17D8F70((v21 + 16), &v26);
    os_unfair_lock_unlock((v21 + 48));
    v17 = v26;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v27;
    goto LABEL_21;
  }
}